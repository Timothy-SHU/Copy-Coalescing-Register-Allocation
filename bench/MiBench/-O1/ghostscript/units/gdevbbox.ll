; ModuleID = 'gdevbbox.c'
source_filename = "gdevbbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_bbox_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_fixed_rect_s, i64 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_param_float_array_s = type { ptr, i32, i32 }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct.gs_int_point_s = type { i32, i32 }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bbox_image_enum_s = type { ptr, %struct.gs_matrix_s, ptr, ptr, i32, i32, i32, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_device_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_clip_list_s, ptr, %struct.gs_int_point_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [15 x i8] c"gx_device_bbox\00", align 1
@st_device_bbox = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 536, ptr @.str, ptr null, ptr null, ptr @device_bbox_enum_ptrs, ptr @device_bbox_reloc_ptrs, ptr @gx_device_finalize }, align 8
@gs_bbox_device = internal unnamed_addr constant %struct.gx_device_bbox_s { i32 536, ptr null, ptr @.str.1, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 0 }, i32 0, i32 0, [2 x float] [float 0xBF72734F80000000, float 0xBF72734F80000000], [4 x float] zeroinitializer, i32 0, [2 x float] [float 4.000000e+03, float 4.000000e+03], [2 x float] [float 4.000000e+03, float 4.000000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @bbox_open_device, ptr null, ptr null, ptr @gx_forward_output_page, ptr @gx_forward_close_device, ptr null, ptr null, ptr @bbox_fill_rectangle, ptr null, ptr @bbox_copy_mono, ptr @bbox_copy_color, ptr @bbox_draw_line, ptr null, ptr @bbox_get_params, ptr @bbox_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr null, ptr @bbox_copy_alpha, ptr null, ptr null, ptr @bbox_fill_path, ptr @bbox_stroke_path, ptr @bbox_fill_mask, ptr @bbox_fill_trapezoid, ptr @bbox_fill_parallelogram, ptr @bbox_fill_triangle, ptr @bbox_draw_thin_line, ptr @bbox_begin_image, ptr @bbox_image_data, ptr @bbox_end_image, ptr @bbox_strip_tile_rectangle, ptr @bbox_strip_copy_rop, ptr null }, ptr null, %struct.gs_fixed_rect_s zeroinitializer, i64 0 }, align 8
@st_device_forward = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bbox\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PageBoundingBox\00", align 1
@gx_dc_type_pure = external local_unnamed_addr global ptr, align 8
@st_bbox_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 64, ptr @.str.4, ptr null, ptr null, ptr @bbox_image_enum_enum_ptrs, ptr @bbox_image_enum_reloc_ptrs, ptr null }, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"bbox_begin_image\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bbox_image_enum\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"bbox_end_image\00", align 1

; Function Attrs: nounwind uwtable
define internal ptr @device_bbox_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 4), align 8, !tbaa !5
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @device_bbox_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 5), align 8, !tbaa !11
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #7
  ret void
}

declare void @gx_device_finalize(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @gx_device_bbox_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(536) @gs_bbox_device, i64 536, i1 false), !tbaa.struct !12
  tail call void @gx_device_forward_fill_in_procs(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  store ptr %1, ptr %3, align 8, !tbaa !20
  %4 = icmp eq ptr %1, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 8
  store i32 %7, ptr %8, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !30
  %11 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 9
  store i32 %10, ptr %11, align 4, !tbaa !31
  %12 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 10
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 10
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 11
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 12
  %18 = load i32, ptr %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 12
  store i32 %18, ptr %19, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 13
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 13
  %22 = load i64, ptr %21, align 4
  store i64 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 14
  %24 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 14
  %25 = load i64, ptr %24, align 4
  store i64 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 15
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 15
  %28 = load i64, ptr %27, align 4
  store i64 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 16
  %30 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %30, i64 16, i1 false)
  %31 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 7
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !34
  br label %33

33:                                               ; preds = %5, %2
  %34 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 21, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call i64 %35(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #7
  %39 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  store i64 %38, ptr %39, align 8, !tbaa !36
  br label %40

40:                                               ; preds = %33, %37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @gx_device_forward_fill_in_procs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gx_device_bbox_bbox(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_matrix_s, align 4
  %4 = alloca %struct.gs_rect_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @gs_deviceinitialmatrix(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %6 = load i64, ptr %5, align 8, !tbaa !37
  %7 = sitofp i64 %6 to double
  %8 = fmul double %7, 0x3F30000000000000
  store double %8, ptr %4, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !42
  %11 = sitofp i64 %10 to double
  %12 = fmul double %11, 0x3F30000000000000
  %13 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 0, i32 1
  store double %12, ptr %13, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !44
  %16 = sitofp i64 %15 to double
  %17 = fmul double %16, 0x3F30000000000000
  %18 = getelementptr inbounds %struct.gs_rect_s, ptr %4, i64 0, i32 1
  store double %17, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !46
  %21 = sitofp i64 %20 to double
  %22 = fmul double %21, 0x3F30000000000000
  %23 = getelementptr inbounds %struct.gs_rect_s, ptr %4, i64 0, i32 1, i32 1
  store double %22, ptr %23, align 8, !tbaa !47
  %24 = call i32 @gs_bbox_transform_inverse(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @gs_deviceinitialmatrix(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_bbox_transform_inverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @gx_default_install(ptr noundef, ptr noundef) #1

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #1

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @bbox_open_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %3 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  store i64 9223372036854775807, ptr %3, align 8, !tbaa !48
  store i64 9223372036854775807, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %5 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  store i64 -9223372036854775808, ptr %5, align 8, !tbaa !50
  store i64 -9223372036854775808, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = tail call i32 %11(ptr noundef nonnull %7) #7
  br label %13

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ 0, %1 ]
  %15 = load ptr, ptr %6, align 8, !tbaa !20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 8
  store i32 %19, ptr %20, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !30
  %23 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 9
  store i32 %22, ptr %23, align 4, !tbaa !31
  %24 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 10
  %25 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 10
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %24, align 8
  %27 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 11
  %28 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false)
  %29 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 12
  %30 = load i32, ptr %29, align 8, !tbaa !32
  %31 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 12
  store i32 %30, ptr %31, align 8, !tbaa !33
  %32 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 13
  %33 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 13
  %34 = load i64, ptr %33, align 4
  store i64 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 14
  %36 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 14
  %37 = load i64, ptr %36, align 4
  store i64 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 15
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 15
  %40 = load i64, ptr %39, align 4
  store i64 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 16
  %42 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %41, ptr noundef nonnull align 4 dereferenceable(16) %42, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 7
  %44 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, i64 16, i1 false), !tbaa.struct !34
  br label %45

45:                                               ; preds = %17, %13
  %46 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 21, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = tail call i64 %47(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #7
  %51 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  store i64 %50, ptr %51, align 8, !tbaa !36
  br label %52

52:                                               ; preds = %45, %49
  ret i32 %14
}

declare i32 @gx_forward_output_page(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_forward_close_device(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = tail call i32 %7(ptr noundef nonnull %3) #7
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_rectangle(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
  %7 = icmp slt i32 %1, 1
  %8 = icmp slt i32 %2, 1
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !27
  %13 = add nsw i32 %12, %1
  %14 = icmp sgt i32 %13, %3
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !30
  %18 = add nsw i32 %17, %2
  %19 = icmp sgt i32 %18, %4
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %22 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  store i64 9223372036854775807, ptr %22, align 8, !tbaa !48
  store i64 9223372036854775807, ptr %21, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %24 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  store i64 -9223372036854775808, ptr %24, align 8, !tbaa !50
  store i64 -9223372036854775808, ptr %23, align 8, !tbaa !51
  br label %59

25:                                               ; preds = %15, %10, %6
  %26 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %27 = load i64, ptr %26, align 8, !tbaa !36
  %28 = icmp eq i64 %27, %5
  br i1 %28, label %59, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %31 = add nsw i32 %3, %1
  %32 = add nsw i32 %4, %2
  %33 = sext i32 %1 to i64
  %34 = shl nsw i64 %33, 12
  %35 = sext i32 %2 to i64
  %36 = shl nsw i64 %35, 12
  %37 = sext i32 %31 to i64
  %38 = shl nsw i64 %37, 12
  %39 = sext i32 %32 to i64
  %40 = shl nsw i64 %39, 12
  %41 = load i64, ptr %30, align 8, !tbaa !49
  %42 = icmp sgt i64 %41, %34
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i64 %34, ptr %30, align 8, !tbaa !49
  br label %44

44:                                               ; preds = %43, %29
  %45 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !48
  %47 = icmp sgt i64 %46, %36
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i64 %36, ptr %45, align 8, !tbaa !48
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !51
  %52 = icmp slt i64 %51, %38
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i64 %38, ptr %50, align 8, !tbaa !51
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !50
  %57 = icmp slt i64 %56, %40
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i64 %40, ptr %55, align 8, !tbaa !50
  br label %59

59:                                               ; preds = %58, %54, %25, %20
  %60 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %61 = load ptr, ptr %60, align 8, !tbaa !20
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gx_device_s, ptr %61, i64 0, i32 21, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !54
  %66 = tail call i32 %65(ptr noundef nonnull %61, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #7
  br label %67

67:                                               ; preds = %59, %63
  %68 = phi i32 [ %66, %63 ], [ 0, %59 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_copy_mono(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #0 {
  %12 = icmp eq i64 %10, -1
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %15 = load i64, ptr %14, align 8, !tbaa !36
  %16 = icmp eq i64 %15, %10
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %11
  %18 = icmp eq i64 %9, -1
  br i1 %18, label %53, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %21 = load i64, ptr %20, align 8, !tbaa !36
  %22 = icmp eq i64 %21, %9
  br i1 %22, label %53, label %23

23:                                               ; preds = %19, %13
  %24 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %25 = add nsw i32 %7, %5
  %26 = add nsw i32 %8, %6
  %27 = sext i32 %5 to i64
  %28 = shl nsw i64 %27, 12
  %29 = sext i32 %6 to i64
  %30 = shl nsw i64 %29, 12
  %31 = sext i32 %25 to i64
  %32 = shl nsw i64 %31, 12
  %33 = sext i32 %26 to i64
  %34 = shl nsw i64 %33, 12
  %35 = load i64, ptr %24, align 8, !tbaa !49
  %36 = icmp sgt i64 %35, %28
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i64 %28, ptr %24, align 8, !tbaa !49
  br label %38

38:                                               ; preds = %37, %23
  %39 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !48
  %41 = icmp sgt i64 %40, %30
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 %30, ptr %39, align 8, !tbaa !48
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !51
  %46 = icmp slt i64 %45, %32
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 %32, ptr %44, align 8, !tbaa !51
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !50
  %51 = icmp slt i64 %50, %34
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64 %34, ptr %49, align 8, !tbaa !50
  br label %53

53:                                               ; preds = %52, %48, %19, %17
  %54 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %55 = load ptr, ptr %54, align 8, !tbaa !20
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.gx_device_s, ptr %55, i64 0, i32 21, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !55
  %60 = tail call i32 %59(ptr noundef nonnull %55, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #7
  br label %61

61:                                               ; preds = %53, %57
  %62 = phi i32 [ %60, %57 ], [ 0, %53 ]
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_copy_color(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %11 = add nsw i32 %7, %5
  %12 = add nsw i32 %8, %6
  %13 = sext i32 %5 to i64
  %14 = shl nsw i64 %13, 12
  %15 = sext i32 %6 to i64
  %16 = shl nsw i64 %15, 12
  %17 = sext i32 %11 to i64
  %18 = shl nsw i64 %17, 12
  %19 = sext i32 %12 to i64
  %20 = shl nsw i64 %19, 12
  %21 = load i64, ptr %10, align 8, !tbaa !49
  %22 = icmp sgt i64 %21, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  store i64 %14, ptr %10, align 8, !tbaa !49
  br label %24

24:                                               ; preds = %23, %9
  %25 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !48
  %27 = icmp sgt i64 %26, %16
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 %16, ptr %25, align 8, !tbaa !48
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !51
  %32 = icmp slt i64 %31, %18
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64 %18, ptr %30, align 8, !tbaa !51
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !50
  %37 = icmp slt i64 %36, %20
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 %20, ptr %35, align 8, !tbaa !50
  br label %39

39:                                               ; preds = %34, %38
  %40 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %41 = load ptr, ptr %40, align 8, !tbaa !20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gx_device_s, ptr %41, i64 0, i32 21, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = tail call i32 %45(ptr noundef nonnull %41, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #7
  br label %47

47:                                               ; preds = %39, %43
  %48 = phi i32 [ %46, %43 ], [ 0, %39 ]
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_draw_line(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %8 = load i64, ptr %7, align 8, !tbaa !36
  %9 = icmp eq i64 %8, %5
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @llvm.smax.i32(i32 %2, i32 %4)
  %12 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %13 = tail call i32 @llvm.smax.i32(i32 %1, i32 %3)
  %14 = add nsw i32 %13, 1
  %15 = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  %16 = add nsw i32 %11, 1
  %17 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %18 = sext i32 %15 to i64
  %19 = shl nsw i64 %18, 12
  %20 = sext i32 %12 to i64
  %21 = shl nsw i64 %20, 12
  %22 = sext i32 %14 to i64
  %23 = shl nsw i64 %22, 12
  %24 = sext i32 %16 to i64
  %25 = shl nsw i64 %24, 12
  %26 = load i64, ptr %17, align 8, !tbaa !49
  %27 = icmp sgt i64 %26, %19
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  store i64 %19, ptr %17, align 8, !tbaa !49
  br label %29

29:                                               ; preds = %28, %10
  %30 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !48
  %32 = icmp sgt i64 %31, %21
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64 %21, ptr %30, align 8, !tbaa !48
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !51
  %37 = icmp slt i64 %36, %23
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 %23, ptr %35, align 8, !tbaa !51
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !50
  %42 = icmp slt i64 %41, %25
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 %25, ptr %40, align 8, !tbaa !50
  br label %44

44:                                               ; preds = %43, %39, %6
  %45 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %46 = load ptr, ptr %45, align 8, !tbaa !20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.gx_device_s, ptr %46, i64 0, i32 21, i32 11
  %50 = load ptr, ptr %49, align 8, !tbaa !57
  %51 = tail call i32 %50(ptr noundef nonnull %46, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #7
  br label %52

52:                                               ; preds = %44, %48
  %53 = phi i32 [ %51, %48 ], [ 0, %44 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_get_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gs_param_float_array_s, align 8
  %4 = alloca [4 x float], align 16
  %5 = tail call i32 @gx_forward_get_params(ptr noundef %0, ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %9 = load i64, ptr %8, align 8, !tbaa !37
  %10 = sitofp i64 %9 to double
  %11 = fmul double %10, 0x3F30000000000000
  %12 = fptrunc double %11 to float
  store float %12, ptr %4, align 16, !tbaa !58
  %13 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = sitofp i64 %14 to double
  %16 = fmul double %15, 0x3F30000000000000
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  store float %17, ptr %18, align 4, !tbaa !58
  %19 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !44
  %21 = sitofp i64 %20 to double
  %22 = fmul double %21, 0x3F30000000000000
  %23 = fptrunc double %22 to float
  %24 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float %23, ptr %24, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !46
  %27 = sitofp i64 %26 to double
  %28 = fmul double %27, 0x3F30000000000000
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %29, ptr %30, align 4, !tbaa !58
  store ptr %4, ptr %3, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %3, i64 0, i32 1
  store i32 4, ptr %31, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %3, i64 0, i32 2
  store i32 0, ptr %32, align 4, !tbaa !63
  %33 = load ptr, ptr %1, align 8, !tbaa !64
  %34 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !66
  %36 = call i32 %35(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #7
  br label %37

37:                                               ; preds = %2, %7
  %38 = phi i32 [ %36, %7 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_put_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @gx_forward_put_params(ptr noundef %0, ptr noundef %1) #7
  %4 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 8
  store i32 %9, ptr %10, align 8, !tbaa !29
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !30
  %13 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 9
  store i32 %12, ptr %13, align 4, !tbaa !31
  %14 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 10
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 10
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 11
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 12
  %20 = load i32, ptr %19, align 8, !tbaa !32
  %21 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 12
  store i32 %20, ptr %21, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 13
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 13
  %24 = load i64, ptr %23, align 4
  store i64 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 14
  %26 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 14
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 15
  %29 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 15
  %30 = load i64, ptr %29, align 4
  store i64 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 16
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %32, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 7
  %34 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !34
  br label %35

35:                                               ; preds = %7, %2
  %36 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 21, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = tail call i64 %37(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #7
  %41 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  store i64 %40, ptr %41, align 8, !tbaa !36
  br label %42

42:                                               ; preds = %35, %39
  ret i32 %3
}

declare ptr @gx_page_device_get_page_device(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @bbox_copy_alpha(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) #0 {
  %12 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %13 = add nsw i32 %7, %5
  %14 = add nsw i32 %8, %6
  %15 = sext i32 %5 to i64
  %16 = shl nsw i64 %15, 12
  %17 = sext i32 %6 to i64
  %18 = shl nsw i64 %17, 12
  %19 = sext i32 %13 to i64
  %20 = shl nsw i64 %19, 12
  %21 = sext i32 %14 to i64
  %22 = shl nsw i64 %21, 12
  %23 = load i64, ptr %12, align 8, !tbaa !49
  %24 = icmp sgt i64 %23, %16
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  store i64 %16, ptr %12, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %25, %11
  %27 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !48
  %29 = icmp sgt i64 %28, %18
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 %18, ptr %27, align 8, !tbaa !48
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !51
  %34 = icmp slt i64 %33, %20
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 %20, ptr %32, align 8, !tbaa !51
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !50
  %39 = icmp slt i64 %38, %22
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i64 %22, ptr %37, align 8, !tbaa !50
  br label %41

41:                                               ; preds = %36, %40
  %42 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %43 = load ptr, ptr %42, align 8, !tbaa !20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.gx_device_s, ptr %43, i64 0, i32 21, i32 21
  %47 = load ptr, ptr %46, align 8, !tbaa !68
  %48 = tail call i32 %47(ptr noundef nonnull %43, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) #7
  br label %49

49:                                               ; preds = %41, %45
  %50 = phi i32 [ %48, %45 ], [ 0, %41 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.gs_fixed_rect_s, align 8
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = load ptr, ptr %4, align 8, !tbaa !69
  %12 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !14
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.gx_device_color_s, ptr %4, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %18 = load i64, ptr %17, align 8, !tbaa !36
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %76, label %20

20:                                               ; preds = %14, %6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %21 = call i32 @gx_path_bbox(ptr noundef %2, ptr noundef nonnull %7) #7
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %82

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !75
  %25 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !76
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  call void @gx_adjust_if_empty(ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i64, ptr %8, align 8, !tbaa !78
  %31 = load i64, ptr %7, align 8, !tbaa !49
  %32 = sub nsw i64 %31, %30
  store i64 %32, ptr %7, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !79
  %35 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !48
  %37 = sub nsw i64 %36, %34
  store i64 %37, ptr %35, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !51
  %40 = add nsw i64 %39, %30
  store i64 %40, ptr %38, align 8, !tbaa !51
  %41 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !50
  %43 = add nsw i64 %42, %34
  store i64 %43, ptr %41, align 8, !tbaa !50
  %44 = icmp eq ptr %5, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %29
  %46 = call i32 @gx_cpath_includes_rectangle(ptr noundef nonnull %5, i64 noundef %32, i64 noundef %37, i64 noundef %40, i64 noundef %43) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  store ptr null, ptr %9, align 8, !tbaa !20
  %49 = call i32 @gx_default_fill_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  store ptr %10, ptr %9, align 8, !tbaa !20
  br label %74

50:                                               ; preds = %45, %29
  %51 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %52 = load i64, ptr %7, align 8, !tbaa !49
  %53 = load i64, ptr %35, align 8, !tbaa !48
  %54 = load i64, ptr %38, align 8, !tbaa !51
  %55 = load i64, ptr %41, align 8, !tbaa !50
  %56 = load i64, ptr %51, align 8, !tbaa !49
  %57 = icmp sgt i64 %56, %52
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i64 %52, ptr %51, align 8, !tbaa !49
  br label %59

59:                                               ; preds = %58, %50
  %60 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !48
  %62 = icmp sgt i64 %61, %53
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i64 %53, ptr %60, align 8, !tbaa !48
  br label %64

64:                                               ; preds = %63, %59
  %65 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !51
  %67 = icmp slt i64 %66, %54
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i64 %54, ptr %65, align 8, !tbaa !51
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !50
  %72 = icmp slt i64 %71, %55
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i64 %55, ptr %70, align 8, !tbaa !50
  br label %74

74:                                               ; preds = %73, %69, %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  %75 = icmp eq ptr %10, null
  br i1 %75, label %83, label %78

76:                                               ; preds = %14
  %77 = icmp eq ptr %10, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74, %76
  %79 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 24
  %80 = load ptr, ptr %79, align 8, !tbaa !80
  %81 = call i32 %80(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #7
  br label %83

82:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  br label %83

83:                                               ; preds = %78, %76, %82, %74
  %84 = phi i32 [ 0, %74 ], [ 0, %82 ], [ %81, %78 ], [ 0, %76 ]
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.gs_fixed_rect_s, align 8
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = load ptr, ptr %4, align 8, !tbaa !69
  %12 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !14
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.gx_device_color_s, ptr %4, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %18 = load i64, ptr %17, align 8, !tbaa !36
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %88, label %20

20:                                               ; preds = %14, %6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %21 = call i32 @gx_path_bbox(ptr noundef %2, ptr noundef nonnull %7) #7
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %94

23:                                               ; preds = %20
  %24 = call i32 @gx_stroke_path_expansion(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  store i64 -9223372036854775808, ptr %27, align 8, !tbaa !48
  store i64 -9223372036854775808, ptr %7, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1
  %29 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1, i32 1
  store i64 9223372036854775807, ptr %29, align 8, !tbaa !50
  store i64 9223372036854775807, ptr %28, align 8, !tbaa !51
  br label %45

30:                                               ; preds = %23
  %31 = load i64, ptr %8, align 8, !tbaa !78
  %32 = load i64, ptr %7, align 8, !tbaa !49
  %33 = sub nsw i64 %32, %31
  store i64 %33, ptr %7, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !79
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !48
  %38 = sub nsw i64 %37, %35
  store i64 %38, ptr %36, align 8, !tbaa !48
  %39 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !51
  %41 = add nsw i64 %40, %31
  store i64 %41, ptr %39, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !50
  %44 = add nsw i64 %43, %35
  store i64 %44, ptr %42, align 8, !tbaa !50
  br label %45

45:                                               ; preds = %30, %26
  %46 = icmp eq ptr %5, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %45
  %48 = load i64, ptr %7, align 8, !tbaa !49
  %49 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !48
  %51 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !51
  %53 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !50
  %55 = call i32 @gx_cpath_includes_rectangle(ptr noundef nonnull %5, i64 noundef %48, i64 noundef %50, i64 noundef %52, i64 noundef %54) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  store ptr null, ptr %9, align 8, !tbaa !20
  %58 = call i32 @gx_default_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  store ptr %10, ptr %9, align 8, !tbaa !20
  br label %86

59:                                               ; preds = %47, %45
  %60 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %61 = load i64, ptr %7, align 8, !tbaa !49
  %62 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !51
  %66 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !50
  %68 = load i64, ptr %60, align 8, !tbaa !49
  %69 = icmp sgt i64 %68, %61
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i64 %61, ptr %60, align 8, !tbaa !49
  br label %71

71:                                               ; preds = %70, %59
  %72 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !48
  %74 = icmp sgt i64 %73, %63
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i64 %63, ptr %72, align 8, !tbaa !48
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !51
  %79 = icmp slt i64 %78, %65
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i64 %65, ptr %77, align 8, !tbaa !51
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !50
  %84 = icmp slt i64 %83, %67
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i64 %67, ptr %82, align 8, !tbaa !50
  br label %86

86:                                               ; preds = %85, %81, %57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  %87 = icmp eq ptr %10, null
  br i1 %87, label %95, label %90

88:                                               ; preds = %14
  %89 = icmp eq ptr %10, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86, %88
  %91 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 25
  %92 = load ptr, ptr %91, align 8, !tbaa !81
  %93 = call i32 %92(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #7
  br label %95

94:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  br label %95

95:                                               ; preds = %90, %88, %94, %86
  %96 = phi i32 [ 0, %86 ], [ 0, %94 ], [ %93, %90 ], [ 0, %88 ]
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #0 {
  %14 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = icmp eq ptr %12, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = sext i32 %5 to i64
  %19 = shl nsw i64 %18, 12
  %20 = sext i32 %6 to i64
  %21 = shl nsw i64 %20, 12
  %22 = add nsw i32 %7, %5
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 12
  %25 = add nsw i32 %8, %6
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 12
  %28 = tail call i32 @gx_cpath_includes_rectangle(ptr noundef nonnull %12, i64 noundef %19, i64 noundef %21, i64 noundef %24, i64 noundef %27) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  store ptr null, ptr %14, align 8, !tbaa !20
  %31 = tail call i32 @gx_default_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull %12) #7
  store ptr %15, ptr %14, align 8, !tbaa !20
  br label %62

32:                                               ; preds = %17, %13
  %33 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %34 = add nsw i32 %7, %5
  %35 = add nsw i32 %8, %6
  %36 = sext i32 %5 to i64
  %37 = shl nsw i64 %36, 12
  %38 = sext i32 %6 to i64
  %39 = shl nsw i64 %38, 12
  %40 = sext i32 %34 to i64
  %41 = shl nsw i64 %40, 12
  %42 = sext i32 %35 to i64
  %43 = shl nsw i64 %42, 12
  %44 = load i64, ptr %33, align 8, !tbaa !49
  %45 = icmp sgt i64 %44, %37
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i64 %37, ptr %33, align 8, !tbaa !49
  br label %47

47:                                               ; preds = %46, %32
  %48 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !48
  %50 = icmp sgt i64 %49, %39
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 %39, ptr %48, align 8, !tbaa !48
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !51
  %55 = icmp slt i64 %54, %41
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i64 %41, ptr %53, align 8, !tbaa !51
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !50
  %60 = icmp slt i64 %59, %43
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i64 %43, ptr %58, align 8, !tbaa !50
  br label %62

62:                                               ; preds = %61, %57, %30
  %63 = icmp eq ptr %15, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 21, i32 26
  %66 = load ptr, ptr %65, align 8, !tbaa !82
  %67 = tail call i32 %66(ptr noundef nonnull %15, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #7
  br label %68

68:                                               ; preds = %62, %64
  %69 = phi i32 [ %67, %64 ], [ 0, %62 ]
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_trapezoid(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = load ptr, ptr %6, align 8, !tbaa !69
  %10 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !14
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %16 = load i64, ptr %15, align 8, !tbaa !36
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %152, label %18

18:                                               ; preds = %12, %8
  %19 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !83
  %21 = icmp eq i64 %20, %3
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, ptr %1, align 8, !tbaa !85
  br label %41

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %1, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !86
  %27 = load i64, ptr %1, align 8, !tbaa !85
  %28 = sub nsw i64 %26, %27
  %29 = sitofp i64 %28 to double
  %30 = sub nsw i64 %3, %20
  %31 = sitofp i64 %30 to double
  %32 = fmul double %31, %29
  %33 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %1, i64 0, i32 1, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !87
  %35 = sub nsw i64 %34, %20
  %36 = sitofp i64 %35 to double
  %37 = fdiv double %32, %36
  %38 = tail call double @llvm.floor.f64(double %37)
  %39 = fptosi double %38 to i64
  %40 = add nsw i64 %27, %39
  br label %41

41:                                               ; preds = %24, %22
  %42 = phi i64 [ %23, %22 ], [ %40, %24 ]
  %43 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %1, i64 0, i32 1, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !87
  %45 = icmp eq i64 %44, %4
  %46 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %1, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !86
  br i1 %45, label %61, label %48

48:                                               ; preds = %41
  %49 = load i64, ptr %1, align 8, !tbaa !85
  %50 = sub nsw i64 %47, %49
  %51 = sitofp i64 %50 to double
  %52 = sub nsw i64 %4, %20
  %53 = sitofp i64 %52 to double
  %54 = fmul double %53, %51
  %55 = sub nsw i64 %44, %20
  %56 = sitofp i64 %55 to double
  %57 = fdiv double %54, %56
  %58 = tail call double @llvm.floor.f64(double %57)
  %59 = fptosi double %58 to i64
  %60 = add nsw i64 %49, %59
  br label %61

61:                                               ; preds = %41, %48
  %62 = phi i64 [ %60, %48 ], [ %47, %41 ]
  %63 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !83
  %65 = icmp eq i64 %64, %3
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i64, ptr %2, align 8, !tbaa !85
  br label %85

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %2, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !86
  %71 = load i64, ptr %2, align 8, !tbaa !85
  %72 = sub nsw i64 %70, %71
  %73 = sitofp i64 %72 to double
  %74 = sub nsw i64 %3, %64
  %75 = sitofp i64 %74 to double
  %76 = fmul double %75, %73
  %77 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %2, i64 0, i32 1, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !87
  %79 = sub nsw i64 %78, %64
  %80 = sitofp i64 %79 to double
  %81 = fdiv double %76, %80
  %82 = tail call double @llvm.floor.f64(double %81)
  %83 = fptosi double %82 to i64
  %84 = add nsw i64 %71, %83
  br label %85

85:                                               ; preds = %68, %66
  %86 = phi i64 [ %67, %66 ], [ %84, %68 ]
  %87 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %2, i64 0, i32 1, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !87
  %89 = icmp eq i64 %88, %4
  %90 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %2, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !86
  br i1 %89, label %105, label %92

92:                                               ; preds = %85
  %93 = load i64, ptr %2, align 8, !tbaa !85
  %94 = sub nsw i64 %91, %93
  %95 = sitofp i64 %94 to double
  %96 = sub nsw i64 %4, %64
  %97 = sitofp i64 %96 to double
  %98 = fmul double %97, %95
  %99 = sub nsw i64 %88, %64
  %100 = sitofp i64 %99 to double
  %101 = fdiv double %98, %100
  %102 = tail call double @llvm.floor.f64(double %101)
  %103 = fptosi double %102 to i64
  %104 = add nsw i64 %93, %103
  br label %105

105:                                              ; preds = %85, %92
  %106 = phi i64 [ %104, %92 ], [ %91, %85 ]
  %107 = tail call i64 @llvm.smin.i64(i64 %42, i64 %62)
  %108 = tail call i64 @llvm.smax.i64(i64 %42, i64 %62)
  %109 = tail call i64 @llvm.smin.i64(i64 %86, i64 %106)
  %110 = tail call i64 @llvm.smax.i64(i64 %86, i64 %106)
  %111 = tail call i64 @llvm.smin.i64(i64 %107, i64 %109)
  %112 = tail call i64 @llvm.smax.i64(i64 %108, i64 %110)
  %113 = icmp eq i32 %5, 0
  %114 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %115 = load i64, ptr %114, align 8, !tbaa !49
  br i1 %113, label %134, label %116

116:                                              ; preds = %105
  %117 = icmp sgt i64 %115, %3
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  store i64 %3, ptr %114, align 8, !tbaa !49
  br label %119

119:                                              ; preds = %118, %116
  %120 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !48
  %122 = icmp sgt i64 %121, %111
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i64 %111, ptr %120, align 8, !tbaa !48
  br label %124

124:                                              ; preds = %123, %119
  %125 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !51
  %127 = icmp slt i64 %126, %4
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i64 %4, ptr %125, align 8, !tbaa !51
  br label %129

129:                                              ; preds = %128, %124
  %130 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !50
  %132 = icmp slt i64 %131, %112
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  store i64 %112, ptr %130, align 8, !tbaa !50
  br label %152

134:                                              ; preds = %105
  %135 = icmp sgt i64 %115, %111
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  store i64 %111, ptr %114, align 8, !tbaa !49
  br label %137

137:                                              ; preds = %136, %134
  %138 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %139 = load i64, ptr %138, align 8, !tbaa !48
  %140 = icmp sgt i64 %139, %3
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  store i64 %3, ptr %138, align 8, !tbaa !48
  br label %142

142:                                              ; preds = %141, %137
  %143 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !51
  %145 = icmp slt i64 %144, %112
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i64 %112, ptr %143, align 8, !tbaa !51
  br label %147

147:                                              ; preds = %146, %142
  %148 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %149 = load i64, ptr %148, align 8, !tbaa !50
  %150 = icmp slt i64 %149, %4
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i64 %4, ptr %148, align 8, !tbaa !50
  br label %152

152:                                              ; preds = %151, %147, %133, %129, %12
  %153 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %154 = load ptr, ptr %153, align 8, !tbaa !20
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.gx_device_s, ptr %154, i64 0, i32 21, i32 27
  %158 = load ptr, ptr %157, align 8, !tbaa !88
  %159 = tail call i32 %158(ptr noundef nonnull %154, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef nonnull %6, i32 noundef %7) #7
  br label %160

160:                                              ; preds = %152, %156
  %161 = phi i32 [ %159, %156 ], [ 0, %152 ]
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_parallelogram(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
  %10 = load ptr, ptr %7, align 8, !tbaa !69
  %11 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !14
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_device_color_s, ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %17 = load i64, ptr %16, align 8, !tbaa !36
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %61, label %19

19:                                               ; preds = %13, %9
  %20 = add nsw i64 %3, %1
  %21 = add nsw i64 %4, %2
  %22 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %23 = add nsw i64 %5, %1
  %24 = add nsw i64 %6, %2
  %25 = load i64, ptr %22, align 8, !tbaa !49
  %26 = icmp sgt i64 %25, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i64 %1, ptr %22, align 8, !tbaa !49
  br label %28

28:                                               ; preds = %27, %19
  %29 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !48
  %31 = icmp sgt i64 %30, %2
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i64 %2, ptr %29, align 8, !tbaa !48
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !51
  %36 = icmp slt i64 %35, %23
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i64 %23, ptr %34, align 8, !tbaa !51
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !50
  %41 = icmp slt i64 %40, %24
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 %24, ptr %39, align 8, !tbaa !50
  br label %43

43:                                               ; preds = %38, %42
  %44 = add nsw i64 %20, %5
  %45 = add nsw i64 %21, %6
  %46 = load i64, ptr %22, align 8, !tbaa !49
  %47 = icmp sgt i64 %46, %20
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i64 %20, ptr %22, align 8, !tbaa !49
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i64, ptr %29, align 8, !tbaa !48
  %51 = icmp sgt i64 %50, %21
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i64 %21, ptr %29, align 8, !tbaa !48
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i64, ptr %34, align 8, !tbaa !51
  %55 = icmp slt i64 %54, %44
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i64 %44, ptr %34, align 8, !tbaa !51
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i64, ptr %39, align 8, !tbaa !50
  %59 = icmp slt i64 %58, %45
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i64 %45, ptr %39, align 8, !tbaa !50
  br label %61

61:                                               ; preds = %60, %57, %13
  %62 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %63 = load ptr, ptr %62, align 8, !tbaa !20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.gx_device_s, ptr %63, i64 0, i32 21, i32 28
  %67 = load ptr, ptr %66, align 8, !tbaa !89
  %68 = tail call i32 %67(ptr noundef nonnull %63, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %7, i32 noundef %8) #7
  br label %69

69:                                               ; preds = %61, %65
  %70 = phi i32 [ %68, %65 ], [ 0, %61 ]
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill_triangle(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
  %10 = load ptr, ptr %7, align 8, !tbaa !69
  %11 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !14
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_device_color_s, ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %17 = load i64, ptr %16, align 8, !tbaa !36
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %59, label %19

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %21 = add nsw i64 %5, %1
  %22 = add nsw i64 %6, %2
  %23 = load i64, ptr %20, align 8, !tbaa !49
  %24 = icmp sgt i64 %23, %1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i64 %1, ptr %20, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %25, %19
  %27 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !48
  %29 = icmp sgt i64 %28, %2
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 %2, ptr %27, align 8, !tbaa !48
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !51
  %34 = icmp slt i64 %33, %21
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 %21, ptr %32, align 8, !tbaa !51
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !50
  %39 = icmp slt i64 %38, %22
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i64 %22, ptr %37, align 8, !tbaa !50
  br label %41

41:                                               ; preds = %36, %40
  %42 = add nsw i64 %3, %1
  %43 = add nsw i64 %4, %2
  %44 = load i64, ptr %20, align 8, !tbaa !49
  %45 = icmp sgt i64 %44, %42
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i64 %42, ptr %20, align 8, !tbaa !49
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i64, ptr %27, align 8, !tbaa !48
  %49 = icmp sgt i64 %48, %43
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i64 %43, ptr %27, align 8, !tbaa !48
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i64, ptr %32, align 8, !tbaa !51
  %53 = icmp slt i64 %52, %42
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i64 %42, ptr %32, align 8, !tbaa !51
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i64, ptr %37, align 8, !tbaa !50
  %57 = icmp slt i64 %56, %43
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 %43, ptr %37, align 8, !tbaa !50
  br label %59

59:                                               ; preds = %58, %55, %13
  %60 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %61 = load ptr, ptr %60, align 8, !tbaa !20
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gx_device_s, ptr %61, i64 0, i32 21, i32 29
  %65 = load ptr, ptr %64, align 8, !tbaa !90
  %66 = tail call i32 %65(ptr noundef nonnull %61, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %7, i32 noundef %8) #7
  br label %67

67:                                               ; preds = %59, %63
  %68 = phi i32 [ %66, %63 ], [ 0, %59 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_draw_thin_line(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = load ptr, ptr %5, align 8, !tbaa !69
  %9 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !14
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gx_device_color_s, ptr %5, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 24
  %15 = load i64, ptr %14, align 8, !tbaa !36
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %19 = load i64, ptr %18, align 8, !tbaa !49
  %20 = icmp sgt i64 %19, %1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 %1, ptr %18, align 8, !tbaa !49
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !48
  %25 = icmp sgt i64 %24, %2
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 %2, ptr %23, align 8, !tbaa !48
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !51
  %30 = icmp slt i64 %29, %3
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i64 %3, ptr %28, align 8, !tbaa !51
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !50
  %35 = icmp slt i64 %34, %4
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i64 %4, ptr %33, align 8, !tbaa !50
  br label %37

37:                                               ; preds = %36, %32, %11
  %38 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %39 = load ptr, ptr %38, align 8, !tbaa !20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.gx_device_s, ptr %39, i64 0, i32 21, i32 30
  %43 = load ptr, ptr %42, align 8, !tbaa !91
  %44 = tail call i32 %43(ptr noundef nonnull %39, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %2, ptr noundef nonnull %5, i32 noundef %6) #7
  br label %45

45:                                               ; preds = %37, %41
  %46 = phi i32 [ %44, %41 ], [ 0, %37 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_begin_image(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) #0 {
  %10 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #7
  %11 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2
  %12 = call i32 @gs_matrix_invert(ptr noundef nonnull %11, ptr noundef nonnull %10) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %57, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2
  %16 = call i32 @gs_matrix_multiply(ptr noundef nonnull %10, ptr noundef nonnull %15, ptr noundef nonnull %10) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = call ptr %20(ptr noundef %7, ptr noundef nonnull @st_bbox_image_enum, ptr noundef nonnull @.str.3) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %18
  store ptr %7, ptr %21, align 8, !tbaa !95
  %24 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 4 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !98
  %25 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 2
  store ptr %6, ptr %25, align 8, !tbaa !99
  %26 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !100
  %27 = icmp eq ptr %4, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %4, align 4, !tbaa !101
  %30 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 4
  store i32 %29, ptr %30, align 8, !tbaa !103
  %31 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !104
  %33 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 5
  store i32 %32, ptr %33, align 4, !tbaa !105
  %34 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !106
  %36 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 6
  store i32 %35, ptr %36, align 8, !tbaa !107
  %37 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !108
  %39 = sub nsw i32 %38, %35
  br label %47

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 4
  store i32 0, ptr %41, align 8, !tbaa !103
  %42 = load i32, ptr %2, align 8, !tbaa !109
  %43 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 5
  store i32 %42, ptr %43, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 6
  store i32 0, ptr %44, align 8, !tbaa !107
  %45 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !111
  br label %47

47:                                               ; preds = %40, %28
  %48 = phi i32 [ %46, %40 ], [ %39, %28 ]
  %49 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %21, i64 0, i32 7
  store i32 %48, ptr %49, align 4, !tbaa !112
  store ptr %21, ptr %8, align 8, !tbaa !14
  %50 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %51 = load ptr, ptr %50, align 8, !tbaa !20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.gx_device_s, ptr %51, i64 0, i32 21, i32 31
  %55 = load ptr, ptr %54, align 8, !tbaa !113
  %56 = call i32 %55(ptr noundef nonnull %51, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %26) #7
  br label %57

57:                                               ; preds = %53, %47, %18, %9, %14
  %58 = phi i32 [ -15, %14 ], [ -15, %9 ], [ -25, %18 ], [ %56, %53 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #7
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_image_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.gs_rect_s, align 8
  %8 = alloca %struct.gs_rect_s, align 8
  %9 = alloca [4 x %struct.gs_point_s], align 16
  %10 = alloca %struct.gx_device_clip_s, align 8
  %11 = alloca %struct.gx_device_color_s, align 8
  %12 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #7
  %16 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !103
  %18 = sitofp i32 %17 to double
  store double %18, ptr %7, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !107
  %21 = sitofp i32 %20 to double
  %22 = getelementptr inbounds %struct.gs_point_s, ptr %7, i64 0, i32 1
  store double %21, ptr %22, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %1, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !105
  %25 = sitofp i32 %24 to double
  %26 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1
  store double %25, ptr %26, align 8, !tbaa !45
  %27 = add nsw i32 %20, %5
  store i32 %27, ptr %19, align 8, !tbaa !107
  %28 = sitofp i32 %27 to double
  %29 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1, i32 1
  store double %28, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %1, i64 0, i32 1
  %31 = call i32 @gs_bbox_transform_only(ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %9) #7
  %32 = call i32 @gs_points_bbox(ptr noundef nonnull %9, ptr noundef nonnull %8) #7
  %33 = load double, ptr %8, align 8, !tbaa !38
  %34 = fmul double %33, 4.096000e+03
  %35 = fptosi double %34 to i64
  %36 = getelementptr inbounds %struct.gs_point_s, ptr %8, i64 0, i32 1
  %37 = load double, ptr %36, align 8, !tbaa !43
  %38 = fmul double %37, 4.096000e+03
  %39 = fptosi double %38 to i64
  %40 = getelementptr inbounds %struct.gs_rect_s, ptr %8, i64 0, i32 1
  %41 = load double, ptr %40, align 8, !tbaa !45
  %42 = fmul double %41, 4.096000e+03
  %43 = fptosi double %42 to i64
  %44 = getelementptr inbounds %struct.gs_rect_s, ptr %8, i64 0, i32 1, i32 1
  %45 = load double, ptr %44, align 8, !tbaa !47
  %46 = fmul double %45, 4.096000e+03
  %47 = fptosi double %46 to i64
  %48 = icmp eq ptr %15, null
  br i1 %48, label %98, label %49

49:                                               ; preds = %6
  %50 = call i32 @gx_cpath_includes_rectangle(ptr noundef nonnull %15, i64 noundef %35, i64 noundef %39, i64 noundef %43, i64 noundef %47) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %11) #7
  %53 = load double, ptr %9, align 16, !tbaa !114
  %54 = fmul double %53, 4.096000e+03
  %55 = fptosi double %54 to i64
  %56 = getelementptr inbounds %struct.gs_point_s, ptr %9, i64 0, i32 1
  %57 = load double, ptr %56, align 8, !tbaa !115
  %58 = fmul double %57, 4.096000e+03
  %59 = fptosi double %58 to i64
  %60 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 2
  %61 = load double, ptr %60, align 16, !tbaa !114
  %62 = fmul double %61, 4.096000e+03
  %63 = fptosi double %62 to i64
  %64 = sub nsw i64 %63, %55
  %65 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 2, i32 1
  %66 = load double, ptr %65, align 8, !tbaa !115
  %67 = fmul double %66, 4.096000e+03
  %68 = fptosi double %67 to i64
  %69 = sub nsw i64 %68, %59
  call void @gx_make_clip_path_device(ptr noundef nonnull %10, ptr noundef nonnull %15) #7
  %70 = getelementptr inbounds %struct.gx_device_clip_s, ptr %10, i64 0, i32 22
  store ptr %0, ptr %70, align 8, !tbaa !116
  %71 = getelementptr inbounds %struct.gx_device_clip_s, ptr %10, i64 0, i32 21
  %72 = load ptr, ptr %71, align 8, !tbaa !120
  %73 = call i32 %72(ptr noundef nonnull %10) #7
  %74 = getelementptr inbounds %struct.gx_device_color_s, ptr %11, i64 0, i32 1
  store i64 0, ptr %74, align 8, !tbaa !17
  %75 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !14
  store ptr %75, ptr %11, align 8, !tbaa !69
  store ptr null, ptr %12, align 8, !tbaa !20
  %76 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 1
  %77 = load double, ptr %76, align 16, !tbaa !114
  %78 = fmul double %77, 4.096000e+03
  %79 = fptosi double %78 to i64
  %80 = sub nsw i64 %79, %55
  %81 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 1, i32 1
  %82 = load double, ptr %81, align 8, !tbaa !115
  %83 = fmul double %82, 4.096000e+03
  %84 = fptosi double %83 to i64
  %85 = sub nsw i64 %84, %59
  %86 = call i32 @gx_default_fill_triangle(ptr noundef nonnull %10, i64 noundef %55, i64 noundef %59, i64 noundef %80, i64 noundef %85, i64 noundef %64, i64 noundef %69, ptr noundef nonnull %11, i32 noundef 252) #7
  %87 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 3
  %88 = load double, ptr %87, align 16, !tbaa !114
  %89 = fmul double %88, 4.096000e+03
  %90 = fptosi double %89 to i64
  %91 = sub nsw i64 %90, %55
  %92 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 3, i32 1
  %93 = load double, ptr %92, align 8, !tbaa !115
  %94 = fmul double %93, 4.096000e+03
  %95 = fptosi double %94 to i64
  %96 = sub nsw i64 %95, %59
  %97 = call i32 @gx_default_fill_triangle(ptr noundef nonnull %10, i64 noundef %55, i64 noundef %59, i64 noundef %91, i64 noundef %96, i64 noundef %64, i64 noundef %69, ptr noundef nonnull %11, i32 noundef 252) #7
  store ptr %13, ptr %12, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %10) #7
  br label %118

98:                                               ; preds = %49, %6
  %99 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %100 = load i64, ptr %99, align 8, !tbaa !49
  %101 = icmp sgt i64 %100, %35
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i64 %35, ptr %99, align 8, !tbaa !49
  br label %103

103:                                              ; preds = %102, %98
  %104 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !48
  %106 = icmp sgt i64 %105, %39
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i64 %39, ptr %104, align 8, !tbaa !48
  br label %108

108:                                              ; preds = %107, %103
  %109 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !51
  %111 = icmp slt i64 %110, %43
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i64 %43, ptr %109, align 8, !tbaa !51
  br label %113

113:                                              ; preds = %112, %108
  %114 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !50
  %116 = icmp slt i64 %115, %47
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i64 %47, ptr %114, align 8, !tbaa !50
  br label %118

118:                                              ; preds = %117, %113, %52
  %119 = icmp eq ptr %13, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  %121 = load i32, ptr %19, align 8, !tbaa !107
  %122 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %1, i64 0, i32 7
  %123 = load i32, ptr %122, align 4, !tbaa !112
  %124 = icmp sge i32 %121, %123
  %125 = zext i1 %124 to i32
  br label %132

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.gx_device_s, ptr %13, i64 0, i32 21, i32 32
  %128 = load ptr, ptr %127, align 8, !tbaa !121
  %129 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %1, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !100
  %131 = call i32 %128(ptr noundef nonnull %13, ptr noundef %130, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7
  br label %132

132:                                              ; preds = %126, %120
  %133 = phi i32 [ %125, %120 ], [ %131, %126 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_end_image(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 33
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = tail call i32 %11(ptr noundef nonnull %5, ptr noundef %9, i32 noundef %2) #7
  br label %13

13:                                               ; preds = %3, %7
  %14 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %15 = load ptr, ptr %1, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !123
  tail call void %17(ptr noundef %15, ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #7
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_strip_tile_rectangle(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = icmp slt i32 %2, 1
  %12 = icmp slt i32 %3, 1
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !27
  %17 = add nsw i32 %16, %2
  %18 = icmp sgt i32 %17, %4
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !30
  %22 = add nsw i32 %21, %3
  %23 = icmp sgt i32 %22, %5
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %26 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  store i64 9223372036854775807, ptr %26, align 8, !tbaa !48
  store i64 9223372036854775807, ptr %25, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %28 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  store i64 -9223372036854775808, ptr %28, align 8, !tbaa !50
  store i64 -9223372036854775808, ptr %27, align 8, !tbaa !51
  br label %59

29:                                               ; preds = %19, %14, %10
  %30 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %31 = add nsw i32 %4, %2
  %32 = add nsw i32 %5, %3
  %33 = sext i32 %2 to i64
  %34 = shl nsw i64 %33, 12
  %35 = sext i32 %3 to i64
  %36 = shl nsw i64 %35, 12
  %37 = sext i32 %31 to i64
  %38 = shl nsw i64 %37, 12
  %39 = sext i32 %32 to i64
  %40 = shl nsw i64 %39, 12
  %41 = load i64, ptr %30, align 8, !tbaa !49
  %42 = icmp sgt i64 %41, %34
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i64 %34, ptr %30, align 8, !tbaa !49
  br label %44

44:                                               ; preds = %43, %29
  %45 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !48
  %47 = icmp sgt i64 %46, %36
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i64 %36, ptr %45, align 8, !tbaa !48
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !51
  %52 = icmp slt i64 %51, %38
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i64 %38, ptr %50, align 8, !tbaa !51
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !50
  %57 = icmp slt i64 %56, %40
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i64 %40, ptr %55, align 8, !tbaa !50
  br label %59

59:                                               ; preds = %58, %54, %24
  %60 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %61 = load ptr, ptr %60, align 8, !tbaa !20
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gx_device_s, ptr %61, i64 0, i32 21, i32 34
  %65 = load ptr, ptr %64, align 8, !tbaa !124
  %66 = tail call i32 %65(ptr noundef nonnull %61, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #7
  br label %67

67:                                               ; preds = %59, %63
  %68 = phi i32 [ %66, %63 ], [ 0, %59 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_strip_copy_rop(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #0 {
  %16 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23
  %17 = add nsw i32 %10, %8
  %18 = add nsw i32 %11, %9
  %19 = sext i32 %8 to i64
  %20 = shl nsw i64 %19, 12
  %21 = sext i32 %9 to i64
  %22 = shl nsw i64 %21, 12
  %23 = sext i32 %17 to i64
  %24 = shl nsw i64 %23, 12
  %25 = sext i32 %18 to i64
  %26 = shl nsw i64 %25, 12
  %27 = load i64, ptr %16, align 8, !tbaa !49
  %28 = icmp sgt i64 %27, %20
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i64 %20, ptr %16, align 8, !tbaa !49
  br label %30

30:                                               ; preds = %29, %15
  %31 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !48
  %33 = icmp sgt i64 %32, %22
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i64 %22, ptr %31, align 8, !tbaa !48
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !51
  %38 = icmp slt i64 %37, %24
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i64 %24, ptr %36, align 8, !tbaa !51
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !50
  %43 = icmp slt i64 %42, %26
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i64 %26, ptr %41, align 8, !tbaa !50
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %0, i64 0, i32 22
  %47 = load ptr, ptr %46, align 8, !tbaa !20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gx_device_s, ptr %47, i64 0, i32 21, i32 35
  %51 = load ptr, ptr %50, align 8, !tbaa !125
  %52 = tail call i32 %51(ptr noundef nonnull %47, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #7
  br label %53

53:                                               ; preds = %45, %49
  %54 = phi i32 [ %52, %49 ], [ 0, %45 ]
  ret i32 %54
}

declare i32 @gx_forward_get_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_forward_put_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gx_adjust_if_empty(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_cpath_includes_rectangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_stroke_path_expansion(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @bbox_image_enum_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #5 {
  switch i32 %2, label %12 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %0, i64 0, i32 2
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  store ptr %11, ptr %3, align 8, !tbaa !14
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @bbox_image_enum_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #7
  store ptr %6, ptr %4, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.bbox_image_enum_s, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #7
  store ptr %9, ptr %7, align 8, !tbaa !100
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_bbox_transform_only(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_points_bbox(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gx_make_clip_path_device(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 32}
!6 = !{!"gs_memory_struct_type_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 40}
!12 = !{i64 0, i64 4, !13, i64 8, i64 8, !14, i64 16, i64 8, !14, i64 24, i64 8, !14, i64 32, i64 8, !14, i64 40, i64 4, !13, i64 44, i64 4, !13, i64 48, i64 4, !13, i64 52, i64 4, !13, i64 56, i64 2, !15, i64 58, i64 2, !15, i64 60, i64 2, !15, i64 62, i64 2, !15, i64 64, i64 4, !13, i64 68, i64 4, !13, i64 72, i64 8, !17, i64 80, i64 16, !17, i64 96, i64 4, !13, i64 100, i64 8, !17, i64 108, i64 8, !17, i64 116, i64 8, !17, i64 124, i64 16, !17, i64 144, i64 8, !18, i64 152, i64 8, !18, i64 160, i64 4, !13, i64 168, i64 8, !14, i64 176, i64 8, !14, i64 184, i64 8, !14, i64 192, i64 8, !14, i64 200, i64 8, !14, i64 208, i64 8, !14, i64 216, i64 8, !14, i64 224, i64 8, !14, i64 232, i64 8, !14, i64 240, i64 8, !14, i64 248, i64 8, !14, i64 256, i64 8, !14, i64 264, i64 8, !14, i64 272, i64 8, !14, i64 280, i64 8, !14, i64 288, i64 8, !14, i64 296, i64 8, !14, i64 304, i64 8, !14, i64 312, i64 8, !14, i64 320, i64 8, !14, i64 328, i64 8, !14, i64 336, i64 8, !14, i64 344, i64 8, !14, i64 352, i64 8, !14, i64 360, i64 8, !14, i64 368, i64 8, !14, i64 376, i64 8, !14, i64 384, i64 8, !14, i64 392, i64 8, !14, i64 400, i64 8, !14, i64 408, i64 8, !14, i64 416, i64 8, !14, i64 424, i64 8, !14, i64 432, i64 8, !14, i64 440, i64 8, !14, i64 448, i64 8, !14, i64 456, i64 8, !14, i64 464, i64 8, !14, i64 472, i64 8, !14, i64 480, i64 8, !14, i64 488, i64 8, !14, i64 496, i64 8, !18, i64 504, i64 8, !18, i64 512, i64 8, !18, i64 520, i64 8, !18, i64 528, i64 8, !18}
!13 = !{!7, !7, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !8, i64 0}
!20 = !{!21, !10, i64 488}
!21 = !{!"gx_device_bbox_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !22, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !19, i64 144, !19, i64 152, !7, i64 160, !23, i64 168, !24, i64 192, !10, i64 488, !25, i64 496, !19, i64 528}
!22 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14}
!23 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!24 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!25 = !{!"gs_fixed_rect_s", !26, i64 0, !26, i64 16}
!26 = !{!"gs_fixed_point_s", !19, i64 0, !19, i64 8}
!27 = !{!28, !7, i64 64}
!28 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !22, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !19, i64 144, !19, i64 152, !7, i64 160, !23, i64 168, !24, i64 192}
!29 = !{!21, !7, i64 64}
!30 = !{!28, !7, i64 68}
!31 = !{!21, !7, i64 68}
!32 = !{!28, !7, i64 96}
!33 = !{!21, !7, i64 96}
!34 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 2, !15, i64 10, i64 2, !15, i64 12, i64 2, !15, i64 14, i64 2, !15}
!35 = !{!21, !10, i64 232}
!36 = !{!21, !19, i64 528}
!37 = !{!21, !19, i64 496}
!38 = !{!39, !41, i64 0}
!39 = !{!"gs_rect_s", !40, i64 0, !40, i64 16}
!40 = !{!"gs_point_s", !41, i64 0, !41, i64 8}
!41 = !{!"double", !8, i64 0}
!42 = !{!21, !19, i64 504}
!43 = !{!39, !41, i64 8}
!44 = !{!21, !19, i64 512}
!45 = !{!39, !41, i64 16}
!46 = !{!21, !19, i64 520}
!47 = !{!39, !41, i64 24}
!48 = !{!25, !19, i64 8}
!49 = !{!25, !19, i64 0}
!50 = !{!25, !19, i64 24}
!51 = !{!25, !19, i64 16}
!52 = !{!28, !10, i64 192}
!53 = !{!28, !10, i64 224}
!54 = !{!28, !10, i64 248}
!55 = !{!28, !10, i64 264}
!56 = !{!28, !10, i64 272}
!57 = !{!28, !10, i64 280}
!58 = !{!59, !59, i64 0}
!59 = !{!"float", !8, i64 0}
!60 = !{!61, !10, i64 0}
!61 = !{!"gs_param_float_array_s", !10, i64 0, !7, i64 8, !7, i64 12}
!62 = !{!61, !7, i64 8}
!63 = !{!61, !7, i64 12}
!64 = !{!65, !10, i64 0}
!65 = !{!"gs_param_list_s", !10, i64 0}
!66 = !{!67, !10, i64 64}
!67 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!68 = !{!28, !10, i64 360}
!69 = !{!70, !10, i64 0}
!70 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !71, i64 48, !72, i64 56}
!71 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!72 = !{!"_mask", !73, i64 0, !19, i64 24, !10, i64 32}
!73 = !{!"gs_client_color_s", !74, i64 0, !10, i64 16}
!74 = !{!"gs_paint_color_s", !8, i64 0}
!75 = !{i64 0, i64 8, !18, i64 8, i64 8, !18}
!76 = !{!77, !7, i64 28}
!77 = !{!"gx_fill_params_s", !7, i64 0, !26, i64 8, !59, i64 24, !7, i64 28}
!78 = !{!26, !19, i64 0}
!79 = !{!26, !19, i64 8}
!80 = !{!28, !10, i64 384}
!81 = !{!28, !10, i64 392}
!82 = !{!28, !10, i64 400}
!83 = !{!84, !19, i64 8}
!84 = !{!"gs_fixed_edge_s", !26, i64 0, !26, i64 16}
!85 = !{!84, !19, i64 0}
!86 = !{!84, !19, i64 16}
!87 = !{!84, !19, i64 24}
!88 = !{!28, !10, i64 408}
!89 = !{!28, !10, i64 416}
!90 = !{!28, !10, i64 424}
!91 = !{!28, !10, i64 432}
!92 = !{!93, !10, i64 16}
!93 = !{!"gs_memory_s", !94, i64 0}
!94 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!95 = !{!96, !10, i64 0}
!96 = !{!"bbox_image_enum_s", !10, i64 0, !97, i64 8, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60}
!97 = !{!"gs_matrix_s", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20}
!98 = !{i64 0, i64 4, !58, i64 4, i64 4, !58, i64 8, i64 4, !58, i64 12, i64 4, !58, i64 16, i64 4, !58, i64 20, i64 4, !58}
!99 = !{!96, !10, i64 32}
!100 = !{!96, !10, i64 40}
!101 = !{!102, !7, i64 0}
!102 = !{!"gs_int_rect_s", !71, i64 0, !71, i64 8}
!103 = !{!96, !7, i64 48}
!104 = !{!102, !7, i64 8}
!105 = !{!96, !7, i64 52}
!106 = !{!102, !7, i64 4}
!107 = !{!96, !7, i64 56}
!108 = !{!102, !7, i64 12}
!109 = !{!110, !7, i64 0}
!110 = !{!"gs_image_s", !7, i64 0, !7, i64 4, !97, i64 8, !7, i64 32, !10, i64 40, !8, i64 48, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92}
!111 = !{!110, !7, i64 4}
!112 = !{!96, !7, i64 60}
!113 = !{!28, !10, i64 440}
!114 = !{!40, !41, i64 0}
!115 = !{!40, !41, i64 8}
!116 = !{!117, !10, i64 488}
!117 = !{!"gx_device_clip_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !22, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !19, i64 144, !19, i64 152, !7, i64 160, !23, i64 168, !24, i64 192, !10, i64 488, !118, i64 496, !10, i64 560, !71, i64 568}
!118 = !{!"gx_clip_list_s", !119, i64 0, !10, i64 40, !10, i64 48, !7, i64 56, !7, i64 60}
!119 = !{!"gx_clip_rect_s", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!120 = !{!117, !10, i64 192}
!121 = !{!28, !10, i64 448}
!122 = !{!28, !10, i64 456}
!123 = !{!93, !10, i64 88}
!124 = !{!28, !10, i64 464}
!125 = !{!28, !10, i64 472}
