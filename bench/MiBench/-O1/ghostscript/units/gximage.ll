; ModuleID = 'gximage.c'
source_filename = "gximage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gx_image_strategies_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct.gs_int_point_s = type { i32, i32 }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_image_enum_s = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i64, i64, i64, ptr, ptr, ptr, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, [4 x %struct.sample_map_s], [256 x %struct.gx_image_clue_s] }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i64, i32 }
%struct._e = type { i64, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], double, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_point_s = type { double, double }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_device_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_clip_list_s, ptr, %struct.gs_int_point_s }

@st_gx_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 28456, ptr @.str.4, ptr null, ptr null, ptr @image_enum_enum_ptrs, ptr @image_enum_reloc_ptrs, ptr null }, align 8
@.str = private unnamed_addr constant [23 x i8] c"gx_default_begin_image\00", align 1
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@lookup4x1to32_inverted = external local_unnamed_addr constant [16 x i32], align 16
@lookup4x1to32_identity = external local_unnamed_addr constant [16 x i32], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"image buffer\00", align 1
@gx_default_begin_image.procs = internal unnamed_addr constant [4 x ptr] [ptr @sample_unpack_1, ptr @sample_unpack_2, ptr @sample_unpack_4, ptr @sample_unpack_8], align 16
@sample_unpack_12_proc = dso_local local_unnamed_addr global ptr null, align 8
@image_strategies = dso_local local_unnamed_addr global %struct.gx_image_strategies_s zeroinitializer, align 8
@st_device_clip = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"image clipper\00", align 1
@st_device_rop_texture = external constant %struct.gs_memory_struct_type_s, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"image RasterOp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"gx_image_enum\00", align 1
@st_device_color = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@image_init_colors.default_decode = internal unnamed_addr constant [8 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: nounwind uwtable
define dso_local void @gs_image_t_init_mask(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !5
  store i32 0, ptr %0, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 2
  tail call void @gs_make_identity(ptr noundef nonnull %4) #7
  %5 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 3
  store i32 1, ptr %5, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 8
  store i32 1, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 7
  store i32 1, ptr %8, align 4, !tbaa !17
  %9 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %9, align 4, !tbaa !18
  %10 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 4
  store ptr null, ptr %10, align 8, !tbaa !19
  %11 = icmp eq i32 %1, 0
  %12 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5, i64 1
  %14 = select i1 %11, float 0.000000e+00, float 1.000000e+00
  %15 = select i1 %11, float 1.000000e+00, float 0.000000e+00
  store float %14, ptr %12, align 8, !tbaa !20
  store float %15, ptr %13, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_image_t_init_gray(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !5
  store i32 0, ptr %0, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 2
  tail call void @gs_make_identity(ptr noundef nonnull %3) #7
  %4 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 3
  store i32 1, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = tail call ptr @gs_color_space_DeviceGray() #7
  %7 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5
  store float 0.000000e+00, ptr %8, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5, i64 1
  store float 1.000000e+00, ptr %9, align 4, !tbaa !20
  ret void
}

declare ptr @gs_color_space_DeviceGray() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gs_image_t_init_color(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !5
  store i32 0, ptr %0, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 2
  tail call void @gs_make_identity(ptr noundef nonnull %3) #7
  %4 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 3
  store i32 1, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = tail call ptr @gs_color_space_DeviceGray() #7
  %7 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5
  store float 0.000000e+00, ptr %8, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5, i64 1
  store float 1.000000e+00, ptr %9, align 4, !tbaa !20
  %10 = tail call ptr @gs_color_space_DeviceRGB() #7
  store ptr %10, ptr %7, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5, i64 6
  store float 0.000000e+00, ptr %11, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5, i64 4
  store float 0.000000e+00, ptr %12, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5, i64 2
  store float 0.000000e+00, ptr %13, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5, i64 7
  store float 1.000000e+00, ptr %14, align 4, !tbaa !20
  %15 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5, i64 5
  store float 1.000000e+00, ptr %15, align 4, !tbaa !20
  %16 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 5, i64 3
  store float 1.000000e+00, ptr %16, align 4, !tbaa !20
  ret void
}

declare ptr @gs_color_space_DeviceRGB() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca %struct.gs_matrix_s, align 4
  %11 = alloca %struct.gs_fixed_point_s, align 8
  %12 = alloca %struct.gs_fixed_point_s, align 8
  %13 = alloca %struct.gs_fixed_point_s, align 8
  %14 = alloca %struct.gs_fixed_point_s, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gs_fixed_rect_s, align 8
  %17 = alloca %struct.gs_fixed_rect_s, align 8
  %18 = alloca %struct.gx_device_color_s, align 8
  %19 = load i32, ptr %2, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !17
  %26 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5
  %27 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #7
  %31 = icmp sgt i32 %23, 8
  %32 = zext i1 %31 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #7
  %33 = icmp sgt i32 %19, -1
  %34 = icmp sgt i32 %21, -1
  %35 = select i1 %33, i1 %34, i1 false
  %36 = icmp ult i32 %3, 2
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %753

38:                                               ; preds = %9
  switch i32 %23, label %753 [
    i32 1, label %43
    i32 2, label %39
    i32 4, label %40
    i32 8, label %41
    i32 12, label %42
  ]

39:                                               ; preds = %38
  br label %43

40:                                               ; preds = %38
  br label %43

41:                                               ; preds = %38
  br label %43

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %38, %42, %41, %40, %39
  %44 = phi i1 [ true, %42 ], [ false, %41 ], [ false, %40 ], [ false, %39 ], [ false, %38 ]
  %45 = phi i64 [ 4, %42 ], [ 3, %41 ], [ 2, %40 ], [ 1, %39 ], [ 0, %38 ]
  %46 = icmp eq ptr %4, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %4, align 4, !tbaa !29
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %753, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !32
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %753, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !33
  %57 = icmp slt i32 %56, %48
  br i1 %57, label %753, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !34
  %61 = icmp slt i32 %60, %52
  %62 = icmp sgt i32 %56, %19
  %63 = or i1 %62, %61
  %64 = icmp sgt i32 %60, %21
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %753, label %66

66:                                               ; preds = %58, %43
  %67 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2
  %68 = call i32 @gs_matrix_invert(ptr noundef nonnull %67, ptr noundef nonnull %10) #7
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %753, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2
  %72 = call i32 @gs_matrix_multiply(ptr noundef nonnull %10, ptr noundef nonnull %71, ptr noundef nonnull %10) #7
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %753, label %74

74:                                               ; preds = %70
  %75 = sitofp i32 %19 to double
  %76 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %10, double noundef %75, double noundef 0.000000e+00, ptr noundef nonnull %11) #7
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %753, label %78

78:                                               ; preds = %74
  %79 = sitofp i32 %21 to double
  %80 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %10, double noundef 0.000000e+00, double noundef %79, ptr noundef nonnull %12) #7
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %753, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  %85 = call ptr %84(ptr noundef %7, ptr noundef nonnull @st_gx_image_enum, ptr noundef nonnull @.str) #7
  %86 = icmp eq ptr %85, null
  br i1 %86, label %753, label %87

87:                                               ; preds = %82
  br i1 %46, label %114, label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %4, align 4, !tbaa !29
  %90 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9
  store i32 %89, ptr %90, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !32
  %93 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 1
  store i32 %92, ptr %93, align 4, !tbaa !47
  %94 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !33
  %96 = sub nsw i32 %95, %89
  %97 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 2
  store i32 %96, ptr %97, align 8, !tbaa !48
  %98 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !34
  %100 = sub nsw i32 %99, %92
  %101 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 3
  store i32 %100, ptr %101, align 4, !tbaa !49
  %102 = sitofp i32 %96 to double
  %103 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %10, double noundef %102, double noundef 0.000000e+00, ptr noundef nonnull %13) #7
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %88
  %106 = load i32, ptr %101, align 4, !tbaa !49
  %107 = sitofp i32 %106 to double
  %108 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %10, double noundef 0.000000e+00, double noundef %107, ptr noundef nonnull %14) #7
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %105, %88
  %111 = phi i32 [ %103, %88 ], [ %108, %105 ]
  %112 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  %113 = load ptr, ptr %112, align 8, !tbaa !50
  call void %113(ptr noundef %7, ptr noundef %85, ptr noundef nonnull @.str) #7
  br label %753

114:                                              ; preds = %87
  %115 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9
  store i32 0, ptr %115, align 8, !tbaa !38
  %116 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 1
  store i32 0, ptr %116, align 4, !tbaa !47
  %117 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 2
  store i32 %19, ptr %117, align 8, !tbaa !48
  %118 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 3
  store i32 %21, ptr %118, align 4, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !51
  br label %119

119:                                              ; preds = %105, %114
  %120 = trunc i32 %25 to i8
  %121 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 6
  store i8 %120, ptr %121, align 2, !tbaa !53
  %122 = icmp eq i8 %120, 0
  br i1 %122, label %162, label %123

123:                                              ; preds = %119
  %124 = icmp ne i32 %23, 1
  %125 = icmp ne i32 %3, 0
  %126 = or i1 %125, %124
  %127 = icmp ne ptr %28, null
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %142, label %129

129:                                              ; preds = %123
  %130 = load float, ptr %26, align 4, !tbaa !20
  %131 = fcmp oeq float %130, 0.000000e+00
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !20
  %135 = fcmp oeq float %134, 1.000000e+00
  br i1 %135, label %145, label %136

136:                                              ; preds = %132, %129
  %137 = fcmp oeq float %130, 1.000000e+00
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !20
  %141 = fcmp oeq float %140, 0.000000e+00
  br i1 %141, label %145, label %142

142:                                              ; preds = %138, %136, %123
  %143 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  %144 = load ptr, ptr %143, align 8, !tbaa !50
  call void %144(ptr noundef %7, ptr noundef %85, ptr noundef nonnull @.str) #7
  br label %753

145:                                              ; preds = %138, %132
  %146 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 49
  %147 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 49, i64 0, i32 0, i32 1
  store i64 -1, ptr %147, align 8, !tbaa !54
  store ptr @gx_dc_procs_pure, ptr %146, align 8, !tbaa !55
  %148 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 49, i64 255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %148, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false), !tbaa.struct !61
  %149 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 48
  %150 = load float, ptr %26, align 4, !tbaa !20
  %151 = fcmp oeq float %150, 0.000000e+00
  %152 = select i1 %151, ptr @lookup4x1to32_inverted, ptr @lookup4x1to32_identity
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %149, ptr noundef nonnull align 16 dereferenceable(64) %152, i64 64, i1 false)
  %153 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 48, i64 0, i32 3
  store i32 0, ptr %153, align 8, !tbaa !65
  %154 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 8
  %155 = load i32, ptr %154, align 8, !tbaa !16
  %156 = icmp eq i32 %155, 0
  %157 = select i1 %156, i64 0, i64 1024
  %158 = shl i32 %30, 2
  %159 = and i32 %158, 204
  %160 = and i32 %30, -205
  %161 = or disjoint i32 %159, %160
  br label %246

162:                                              ; preds = %119
  %163 = load ptr, ptr %28, align 8, !tbaa !68
  %164 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %163, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !70
  %166 = icmp sgt i32 %165, -1
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  %169 = load ptr, ptr %168, align 8, !tbaa !50
  call void %169(ptr noundef %7, ptr noundef %85, ptr noundef nonnull @.str) #7
  br label %242

170:                                              ; preds = %162
  %171 = icmp eq i32 %165, 1
  %172 = select i1 %171, i32 0, i32 %3
  %173 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %163, i64 0, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !72
  %175 = call ptr %174(ptr noundef nonnull %28, ptr noundef %1) #7
  %176 = icmp eq ptr %175, %28
  %177 = zext i1 %176 to i32
  store i32 %177, ptr %15, align 4, !tbaa !63
  call fastcc void @image_init_colors(ptr noundef %85, i32 noundef %23, i32 noundef %165, i32 noundef %172, ptr noundef nonnull %26, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %28, ptr noundef nonnull %15)
  %178 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 9
  %179 = load i32, ptr %178, align 4, !tbaa !18
  %180 = icmp eq i32 %179, 0
  %181 = shl i32 %30, 4
  br i1 %180, label %182, label %186

182:                                              ; preds = %170
  %183 = and i32 %181, 240
  %184 = and i32 %30, -241
  %185 = or disjoint i32 %183, %184
  br label %201

186:                                              ; preds = %170
  %187 = xor i32 %181, %30
  %188 = and i32 %187, 240
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %186
  %191 = call fastcc i32 @color_draws_b_w(ptr noundef %0, ptr noundef %5)
  switch i32 %191, label %201 [
    i32 0, label %192
    i32 1, label %196
  ]

192:                                              ; preds = %190
  %193 = and i32 %181, 240
  %194 = and i32 %30, -241
  %195 = or disjoint i32 %193, %194
  br label %201

196:                                              ; preds = %190
  %197 = lshr i32 %30, 4
  %198 = and i32 %197, 15
  %199 = and i32 %30, -16
  %200 = or disjoint i32 %198, %199
  br label %201

201:                                              ; preds = %186, %190, %196, %192, %182
  %202 = phi i32 [ %30, %190 ], [ %200, %196 ], [ %195, %192 ], [ %30, %186 ], [ %185, %182 ]
  %203 = icmp eq i32 %202, 204
  br i1 %203, label %242, label %204

204:                                              ; preds = %201
  %205 = shl i32 %202, 4
  %206 = xor i32 %205, %202
  %207 = and i32 %206, 240
  %208 = icmp eq i32 %207, 0
  %209 = icmp eq i32 %23, 1
  %210 = select i1 %208, i1 %209, i1 false
  %211 = and i1 %171, %210
  br i1 %211, label %212, label %242

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 49
  %214 = call fastcc i32 @color_draws_b_w(ptr noundef %0, ptr noundef nonnull %213)
  %215 = icmp sgt i32 %214, -1
  br i1 %215, label %216, label %242

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 49, i64 255
  %218 = call fastcc i32 @color_draws_b_w(ptr noundef %0, ptr noundef nonnull %217)
  %219 = xor i32 %218, %214
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %242

221:                                              ; preds = %216
  %222 = icmp eq i32 %214, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %18, ptr noundef nonnull align 8 dereferenceable(96) %213, i64 96, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %213, ptr noundef nonnull align 8 dereferenceable(96) %217, i64 96, i1 false), !tbaa.struct !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %217, ptr noundef nonnull align 8 dereferenceable(96) %18, i64 96, i1 false), !tbaa.struct !61
  %224 = lshr i32 %202, 2
  %225 = and i32 %224, 51
  %226 = shl i32 %202, 2
  %227 = and i32 %226, 204
  %228 = and i32 %202, -256
  %229 = or disjoint i32 %227, %228
  %230 = or disjoint i32 %229, %225
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %18)
  br label %231

231:                                              ; preds = %223, %221
  %232 = phi i32 [ %230, %223 ], [ %202, %221 ]
  switch i32 %232, label %242 [
    i32 136, label %233
    i32 187, label %234
    i32 34, label %239
    i32 238, label %240
  ]

233:                                              ; preds = %231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %217, ptr noundef nonnull align 8 dereferenceable(96) %213, i64 96, i1 false), !tbaa.struct !61
  br label %234

234:                                              ; preds = %231, %233
  %235 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %235, ptr noundef nonnull align 16 dereferenceable(64) @lookup4x1to32_inverted, i64 64, i1 false)
  br label %236

236:                                              ; preds = %240, %234
  store i8 1, ptr %121, align 2, !tbaa !53
  %237 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 49, i64 0, i32 0, i32 1
  store i64 -1, ptr %237, align 8, !tbaa !54
  store ptr @gx_dc_procs_pure, ptr %213, align 8, !tbaa !55
  %238 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 48, i64 0, i32 3
  store i32 0, ptr %238, align 8, !tbaa !65
  br label %242

239:                                              ; preds = %231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %217, ptr noundef nonnull align 8 dereferenceable(96) %213, i64 96, i1 false), !tbaa.struct !61
  br label %240

240:                                              ; preds = %231, %239
  %241 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %241, ptr noundef nonnull align 16 dereferenceable(64) @lookup4x1to32_identity, i64 64, i1 false)
  br label %236

242:                                              ; preds = %201, %204, %212, %216, %231, %236, %167
  %243 = phi i32 [ %30, %167 ], [ %232, %231 ], [ 240, %236 ], [ %202, %216 ], [ %202, %212 ], [ %202, %204 ], [ 204, %201 ]
  %244 = phi i32 [ %3, %167 ], [ %172, %231 ], [ %172, %236 ], [ %172, %216 ], [ %172, %212 ], [ %172, %204 ], [ %172, %201 ]
  %245 = phi i32 [ %25, %167 ], [ %25, %231 ], [ 1, %236 ], [ %25, %216 ], [ %25, %212 ], [ %25, %204 ], [ %25, %201 ]
  br i1 %166, label %246, label %753

246:                                              ; preds = %242, %145
  %247 = phi i64 [ %157, %145 ], [ 0, %242 ]
  %248 = phi i32 [ 1, %145 ], [ %165, %242 ]
  %249 = phi i32 [ %161, %145 ], [ %243, %242 ]
  %250 = phi i32 [ 0, %145 ], [ %244, %242 ]
  %251 = phi i32 [ %25, %145 ], [ %245, %242 ]
  %252 = load i32, ptr %15, align 4, !tbaa !63
  %253 = trunc i32 %252 to i8
  %254 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 27
  store i8 %253, ptr %254, align 1, !tbaa !73
  %255 = shl nuw nsw i32 %19, %32
  %256 = add nsw i32 %255, 8
  %257 = mul nsw i32 %248, %256
  %258 = load ptr, ptr %7, align 8, !tbaa !74
  %259 = call ptr %258(ptr noundef nonnull %7, i32 noundef %257, ptr noundef nonnull @.str.1) #7
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %246
  %262 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  %263 = load ptr, ptr %262, align 8, !tbaa !50
  call void %263(ptr noundef nonnull %7, ptr noundef %85, ptr noundef nonnull @.str) #7
  br label %753

264:                                              ; preds = %246
  %265 = trunc i32 %23 to i8
  store i8 %265, ptr %85, align 8, !tbaa !75
  %266 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 1
  store i8 %265, ptr %266, align 1, !tbaa !76
  %267 = zext i1 %31 to i8
  %268 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 2
  store i8 %267, ptr %268, align 2, !tbaa !77
  %269 = trunc i32 %248 to i8
  %270 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 3
  store i8 %269, ptr %270, align 1, !tbaa !78
  %271 = icmp eq i32 %250, 0
  %272 = select i1 %271, i32 1, i32 %248
  %273 = trunc i32 %272 to i8
  %274 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 4
  store i8 %273, ptr %274, align 4, !tbaa !79
  %275 = shl nuw i32 %272, %32
  %276 = trunc i32 %275 to i8
  %277 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 5
  store i8 %276, ptr %277, align 1, !tbaa !80
  %278 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %278, ptr noundef nonnull align 4 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !81
  %279 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %279, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !51
  %280 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %280, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !51
  %281 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %13, i64 0, i32 1
  %282 = load i64, ptr %281, align 8, !tbaa !82
  %283 = load i64, ptr %14, align 8, !tbaa !83
  %284 = or i64 %283, %282
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %293, label %286

286:                                              ; preds = %264
  %287 = load i64, ptr %13, align 8, !tbaa !83
  %288 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %14, i64 0, i32 1
  %289 = load i64, ptr %288, align 8, !tbaa !82
  %290 = or i64 %289, %287
  %291 = icmp eq i64 %290, 0
  %292 = select i1 %291, i32 1, i32 2
  br label %293

293:                                              ; preds = %264, %286
  %294 = phi i32 [ %292, %286 ], [ 0, %264 ]
  %295 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 23
  store i32 %294, ptr %295, align 8, !tbaa !84
  %296 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 4
  %297 = load float, ptr %296, align 4, !tbaa !85
  %298 = fmul float %297, 4.096000e+03
  %299 = fptosi float %298 to i64
  %300 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 5
  %301 = load float, ptr %300, align 4, !tbaa !86
  %302 = fmul float %301, 4.096000e+03
  %303 = fptosi float %302 to i64
  %304 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 14
  store ptr %1, ptr %304, align 8, !tbaa !87
  %305 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 15
  store ptr %28, ptr %305, align 8, !tbaa !88
  %306 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 16
  store ptr %7, ptr %306, align 8, !tbaa !89
  %307 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 17
  store ptr %0, ptr %307, align 8, !tbaa !90
  %308 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 18
  store ptr %259, ptr %308, align 8, !tbaa !91
  %309 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 19
  store i32 %257, ptr %309, align 8, !tbaa !92
  %310 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 20
  store ptr null, ptr %310, align 8, !tbaa !93
  %311 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 21
  store i32 0, ptr %311, align 8, !tbaa !94
  %312 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 6
  %313 = load i32, ptr %312, align 8, !tbaa !15
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %293
  %316 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9
  %317 = load i32, ptr %316, align 8, !tbaa !38
  %318 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 1
  %319 = load i32, ptr %318, align 4, !tbaa !47
  %320 = or i32 %319, %317
  %321 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 2
  %322 = load i32, ptr %321, align 8, !tbaa !48
  %323 = sub nsw i32 %19, %322
  %324 = or i32 %320, %323
  %325 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 3
  %326 = load i32, ptr %325, align 4, !tbaa !49
  %327 = sub nsw i32 %21, %326
  %328 = or i32 %324, %327
  %329 = icmp eq i32 %328, 0
  br label %330

330:                                              ; preds = %315, %293
  %331 = phi i1 [ false, %293 ], [ %329, %315 ]
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 7
  store i8 %332, ptr %333, align 1, !tbaa !95
  %334 = icmp eq i32 %251, 0
  %335 = select i1 %334, i32 204, i32 240
  %336 = icmp ne i32 %249, %335
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 24
  store i8 %337, ptr %338, align 4, !tbaa !96
  %339 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 26
  store i8 0, ptr %339, align 2, !tbaa !97
  %340 = icmp eq ptr %6, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %330
  %342 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 36
  %343 = load ptr, ptr %342, align 8, !tbaa !98
  call void %343(ptr noundef %0, ptr noundef nonnull %16) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !tbaa.struct !103
  br label %350

344:                                              ; preds = %330
  %345 = call i32 @gx_cpath_outer_box(ptr noundef nonnull %6, ptr noundef nonnull %16) #7
  %346 = call i32 @gx_cpath_inner_box(ptr noundef nonnull %6, ptr noundef nonnull %17) #7
  %347 = or i32 %346, %345
  %348 = icmp eq i32 %347, 0
  %349 = select i1 %348, i8 16, i8 0
  br label %350

350:                                              ; preds = %344, %341
  %351 = phi i8 [ %349, %344 ], [ 0, %341 ]
  %352 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 25
  store i8 %351, ptr %352, align 1, !tbaa !104
  %353 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %353, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !tbaa.struct !103
  %354 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %354, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false), !tbaa.struct !103
  %355 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 30
  store i32 240, ptr %355, align 8, !tbaa !105
  %356 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 34
  %357 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %356, i8 0, i64 24, i1 false)
  %358 = load i64, ptr %11, align 8
  %359 = call i64 @llvm.smin.i64(i64 %358, i64 0)
  %360 = load i64, ptr %12, align 8
  %361 = call i64 @llvm.smin.i64(i64 %360, i64 0)
  %362 = add nsw i64 %361, %359
  %363 = call i64 @llvm.smax.i64(i64 %358, i64 0)
  %364 = call i64 @llvm.smax.i64(i64 %360, i64 0)
  %365 = add nuw nsw i64 %364, %363
  %366 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %11, i64 0, i32 1
  %367 = load i64, ptr %366, align 8
  %368 = call i64 @llvm.smin.i64(i64 %367, i64 0)
  %369 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %12, i64 0, i32 1
  %370 = load i64, ptr %369, align 8
  %371 = call i64 @llvm.smin.i64(i64 %370, i64 0)
  %372 = add nsw i64 %371, %368
  %373 = call i64 @llvm.smax.i64(i64 %367, i64 0)
  %374 = call i64 @llvm.smax.i64(i64 %370, i64 0)
  %375 = add nuw nsw i64 %374, %373
  %376 = load i32, ptr %295, align 8, !tbaa !84
  switch i32 %376, label %378 [
    i32 0, label %379
    i32 1, label %377
  ]

377:                                              ; preds = %350
  br label %379

378:                                              ; preds = %350
  br label %379

379:                                              ; preds = %350, %378, %377
  %380 = phi i32 [ 0, %378 ], [ %21, %377 ], [ %19, %350 ]
  %381 = phi i32 [ 0, %378 ], [ %19, %377 ], [ %21, %350 ]
  %382 = icmp eq i32 %380, 1
  %383 = sub nsw i64 %365, %362
  %384 = icmp slt i64 %383, 4096
  %385 = select i1 %382, i1 %384, i1 false
  br i1 %385, label %386, label %393

386:                                              ; preds = %379
  %387 = add nsw i64 %360, %358
  %388 = ashr i64 %387, 1
  %389 = add nsw i64 %388, %299
  %390 = and i64 %389, -4096
  %391 = sub i64 %390, %388
  %392 = add i64 %391, 2048
  br label %393

393:                                              ; preds = %386, %379
  %394 = phi i64 [ %392, %386 ], [ %299, %379 ]
  %395 = icmp eq i32 %381, 1
  %396 = sub nsw i64 %375, %372
  %397 = icmp slt i64 %396, 4096
  %398 = select i1 %395, i1 %397, i1 false
  br i1 %398, label %399, label %406

399:                                              ; preds = %393
  %400 = add nsw i64 %370, %367
  %401 = ashr i64 %400, 1
  %402 = add nsw i64 %401, %303
  %403 = and i64 %402, -4096
  %404 = sub i64 %403, %401
  %405 = add i64 %404, 2048
  br label %406

406:                                              ; preds = %399, %393
  %407 = phi i64 [ %405, %399 ], [ %303, %393 ]
  %408 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40
  store i64 %394, ptr %408, align 8, !tbaa !106
  %409 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 0, i32 0, i32 1
  store i32 %21, ptr %409, align 8, !tbaa !107
  %410 = icmp eq i32 %21, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %406
  %412 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 0, i32 1
  store i64 0, ptr %412, align 8, !tbaa !108
  %413 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 0, i32 1, i32 1
  store i32 0, ptr %413, align 8, !tbaa !109
  br label %433

414:                                              ; preds = %406
  %415 = icmp slt i64 %360, 0
  %416 = zext nneg i32 %21 to i64
  %417 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 0, i32 1
  br i1 %415, label %418, label %428

418:                                              ; preds = %414
  %419 = sdiv i64 %360, %416
  store i64 %419, ptr %417, align 8, !tbaa !108
  %420 = srem i64 %360, %416
  %421 = trunc i64 %420 to i32
  %422 = sub i32 0, %421
  %423 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 0, i32 1, i32 1
  store i32 %422, ptr %423, align 8, !tbaa !109
  %424 = icmp eq i32 %421, 0
  br i1 %424, label %433, label %425

425:                                              ; preds = %418
  %426 = add nsw i64 %419, -1
  store i64 %426, ptr %417, align 8, !tbaa !108
  %427 = add i32 %21, %421
  store i32 %427, ptr %423, align 8, !tbaa !109
  br label %433

428:                                              ; preds = %414
  %429 = udiv i64 %360, %416
  store i64 %429, ptr %417, align 8, !tbaa !108
  %430 = urem i64 %360, %416
  %431 = trunc i64 %430 to i32
  %432 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 0, i32 1, i32 1
  store i32 %431, ptr %432, align 8, !tbaa !109
  br label %433

433:                                              ; preds = %428, %425, %418, %411
  %434 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 0, i32 1
  %435 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 0, i32 1, i32 1
  %436 = load i32, ptr %435, align 8, !tbaa !109
  %437 = sub i32 %21, %436
  %438 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 0, i32 1, i32 2
  store i32 %437, ptr %438, align 4, !tbaa !110
  %439 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1
  store i64 %407, ptr %439, align 8, !tbaa !111
  %440 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1, i32 0, i32 1
  store i32 %21, ptr %440, align 8, !tbaa !112
  br i1 %410, label %441, label %444

441:                                              ; preds = %433
  %442 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1, i32 1
  store i64 0, ptr %442, align 8, !tbaa !113
  %443 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1, i32 1, i32 1
  store i32 0, ptr %443, align 8, !tbaa !114
  br label %463

444:                                              ; preds = %433
  %445 = icmp slt i64 %370, 0
  %446 = zext nneg i32 %21 to i64
  %447 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1, i32 1
  br i1 %445, label %448, label %458

448:                                              ; preds = %444
  %449 = sdiv i64 %370, %446
  store i64 %449, ptr %447, align 8, !tbaa !113
  %450 = srem i64 %370, %446
  %451 = trunc i64 %450 to i32
  %452 = sub i32 0, %451
  %453 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1, i32 1, i32 1
  store i32 %452, ptr %453, align 8, !tbaa !114
  %454 = icmp eq i32 %451, 0
  br i1 %454, label %463, label %455

455:                                              ; preds = %448
  %456 = add nsw i64 %449, -1
  store i64 %456, ptr %447, align 8, !tbaa !113
  %457 = add i32 %21, %451
  store i32 %457, ptr %453, align 8, !tbaa !114
  br label %463

458:                                              ; preds = %444
  %459 = udiv i64 %370, %446
  store i64 %459, ptr %447, align 8, !tbaa !113
  %460 = urem i64 %370, %446
  %461 = trunc i64 %460 to i32
  %462 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1, i32 1, i32 1
  store i32 %461, ptr %462, align 8, !tbaa !114
  br label %463

463:                                              ; preds = %458, %455, %448, %441
  %464 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1, i32 1
  %465 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1, i32 1, i32 1
  %466 = load i32, ptr %465, align 8, !tbaa !114
  %467 = sub i32 %21, %466
  %468 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 0, i32 1, i32 1, i32 2
  store i32 %467, ptr %468, align 4, !tbaa !115
  %469 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9
  %470 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 9, i32 1
  %471 = load i32, ptr %470, align 4, !tbaa !47
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %512, label %473

473:                                              ; preds = %463
  %474 = load i64, ptr %434, align 8, !tbaa !108
  %475 = sext i32 %471 to i64
  %476 = mul nsw i64 %474, %475
  %477 = add nsw i64 %476, %394
  store i64 %477, ptr %408, align 8, !tbaa !106
  %478 = load i32, ptr %409, align 8, !tbaa !107
  br label %479

479:                                              ; preds = %473, %490
  %480 = phi i32 [ %471, %473 ], [ %482, %490 ]
  %481 = phi i32 [ %478, %473 ], [ %491, %490 ]
  %482 = add i32 %480, -1
  %483 = icmp ult i32 %481, %436
  br i1 %483, label %486, label %484

484:                                              ; preds = %479
  %485 = sub i32 %481, %436
  store i32 %485, ptr %409, align 8, !tbaa !107
  br label %490

486:                                              ; preds = %479
  %487 = add i32 %481, %437
  store i32 %487, ptr %409, align 8, !tbaa !107
  %488 = load i64, ptr %408, align 8, !tbaa !106
  %489 = add nsw i64 %488, 1
  store i64 %489, ptr %408, align 8, !tbaa !106
  br label %490

490:                                              ; preds = %486, %484
  %491 = phi i32 [ %487, %486 ], [ %485, %484 ]
  %492 = icmp eq i32 %482, 0
  br i1 %492, label %493, label %479, !llvm.loop !116

493:                                              ; preds = %490
  %494 = load i64, ptr %464, align 8, !tbaa !113
  %495 = mul nsw i64 %494, %475
  %496 = add nsw i64 %495, %407
  store i64 %496, ptr %439, align 8, !tbaa !111
  %497 = load i32, ptr %440, align 8, !tbaa !112
  br label %498

498:                                              ; preds = %493, %509
  %499 = phi i32 [ %471, %493 ], [ %501, %509 ]
  %500 = phi i32 [ %497, %493 ], [ %510, %509 ]
  %501 = add i32 %499, -1
  %502 = icmp ult i32 %500, %466
  br i1 %502, label %505, label %503

503:                                              ; preds = %498
  %504 = sub i32 %500, %466
  store i32 %504, ptr %440, align 8, !tbaa !112
  br label %509

505:                                              ; preds = %498
  %506 = add i32 %500, %467
  store i32 %506, ptr %440, align 8, !tbaa !112
  %507 = load i64, ptr %439, align 8, !tbaa !111
  %508 = add nsw i64 %507, 1
  store i64 %508, ptr %439, align 8, !tbaa !111
  br label %509

509:                                              ; preds = %505, %503
  %510 = phi i32 [ %506, %505 ], [ %504, %503 ]
  %511 = icmp eq i32 %501, 0
  br i1 %511, label %512, label %498, !llvm.loop !118

512:                                              ; preds = %509, %463
  %513 = load i64, ptr %408, align 8, !tbaa !106
  %514 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 39
  store i64 %513, ptr %514, align 8, !tbaa !119
  %515 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 38
  store i64 %513, ptr %515, align 8, !tbaa !120
  %516 = load i64, ptr %439, align 8, !tbaa !111
  %517 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 39, i32 1
  store i64 %516, ptr %517, align 8, !tbaa !121
  %518 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 38, i32 1
  store i64 %516, ptr %518, align 8, !tbaa !122
  %519 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1
  store i64 %513, ptr %519, align 8, !tbaa !123
  %520 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 0, i32 0, i32 1
  store i32 %19, ptr %520, align 8, !tbaa !124
  %521 = icmp eq i32 %19, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %512
  %523 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 0, i32 1
  store i64 0, ptr %523, align 8, !tbaa !125
  %524 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 0, i32 1, i32 1
  store i32 0, ptr %524, align 8, !tbaa !126
  br label %544

525:                                              ; preds = %512
  %526 = icmp slt i64 %358, 0
  %527 = zext nneg i32 %19 to i64
  %528 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 0, i32 1
  br i1 %526, label %529, label %539

529:                                              ; preds = %525
  %530 = sdiv i64 %358, %527
  store i64 %530, ptr %528, align 8, !tbaa !125
  %531 = srem i64 %358, %527
  %532 = trunc i64 %531 to i32
  %533 = sub i32 0, %532
  %534 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 0, i32 1, i32 1
  store i32 %533, ptr %534, align 8, !tbaa !126
  %535 = icmp eq i32 %532, 0
  br i1 %535, label %544, label %536

536:                                              ; preds = %529
  %537 = add nsw i64 %530, -1
  store i64 %537, ptr %528, align 8, !tbaa !125
  %538 = add i32 %19, %532
  store i32 %538, ptr %534, align 8, !tbaa !126
  br label %544

539:                                              ; preds = %525
  %540 = udiv i64 %358, %527
  store i64 %540, ptr %528, align 8, !tbaa !125
  %541 = urem i64 %358, %527
  %542 = trunc i64 %541 to i32
  %543 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 0, i32 1, i32 1
  store i32 %542, ptr %543, align 8, !tbaa !126
  br label %544

544:                                              ; preds = %539, %536, %529, %522
  %545 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 0, i32 1
  %546 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 0, i32 1, i32 1
  %547 = load i32, ptr %546, align 8, !tbaa !126
  %548 = sub i32 %19, %547
  %549 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 0, i32 1, i32 2
  store i32 %548, ptr %549, align 4, !tbaa !127
  %550 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1
  store i64 %516, ptr %550, align 8, !tbaa !128
  %551 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1, i32 0, i32 1
  store i32 %19, ptr %551, align 8, !tbaa !129
  br i1 %521, label %552, label %555

552:                                              ; preds = %544
  %553 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1, i32 1
  store i64 0, ptr %553, align 8, !tbaa !130
  %554 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1, i32 1, i32 1
  store i32 0, ptr %554, align 8, !tbaa !131
  br label %575

555:                                              ; preds = %544
  %556 = load i64, ptr %366, align 8, !tbaa !82
  %557 = icmp slt i64 %556, 0
  %558 = zext nneg i32 %19 to i64
  %559 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1, i32 1
  br i1 %557, label %560, label %570

560:                                              ; preds = %555
  %561 = sdiv i64 %556, %558
  store i64 %561, ptr %559, align 8, !tbaa !130
  %562 = srem i64 %556, %558
  %563 = trunc i64 %562 to i32
  %564 = sub i32 0, %563
  %565 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1, i32 1, i32 1
  store i32 %564, ptr %565, align 8, !tbaa !131
  %566 = icmp eq i32 %563, 0
  br i1 %566, label %575, label %567

567:                                              ; preds = %560
  %568 = add nsw i64 %561, -1
  store i64 %568, ptr %559, align 8, !tbaa !130
  %569 = add i32 %19, %563
  store i32 %569, ptr %565, align 8, !tbaa !131
  br label %575

570:                                              ; preds = %555
  %571 = udiv i64 %556, %558
  store i64 %571, ptr %559, align 8, !tbaa !130
  %572 = urem i64 %556, %558
  %573 = trunc i64 %572 to i32
  %574 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1, i32 1, i32 1
  store i32 %573, ptr %574, align 8, !tbaa !131
  br label %575

575:                                              ; preds = %570, %567, %560, %552
  %576 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1, i32 1
  %577 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1, i32 1, i32 1
  %578 = load i32, ptr %577, align 8, !tbaa !131
  %579 = sub i32 %19, %578
  %580 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 40, i32 1, i32 1, i32 1, i32 2
  store i32 %579, ptr %580, align 4, !tbaa !132
  %581 = load i32, ptr %469, align 8, !tbaa !38
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %622, label %583

583:                                              ; preds = %575
  %584 = load i64, ptr %545, align 8, !tbaa !125
  %585 = sext i32 %581 to i64
  %586 = mul nsw i64 %584, %585
  %587 = add nsw i64 %586, %513
  store i64 %587, ptr %519, align 8, !tbaa !123
  %588 = load i32, ptr %520, align 8, !tbaa !124
  br label %589

589:                                              ; preds = %583, %600
  %590 = phi i32 [ %581, %583 ], [ %592, %600 ]
  %591 = phi i32 [ %588, %583 ], [ %601, %600 ]
  %592 = add i32 %590, -1
  %593 = icmp ult i32 %591, %547
  br i1 %593, label %596, label %594

594:                                              ; preds = %589
  %595 = sub i32 %591, %547
  store i32 %595, ptr %520, align 8, !tbaa !124
  br label %600

596:                                              ; preds = %589
  %597 = add i32 %591, %548
  store i32 %597, ptr %520, align 8, !tbaa !124
  %598 = load i64, ptr %519, align 8, !tbaa !123
  %599 = add nsw i64 %598, 1
  store i64 %599, ptr %519, align 8, !tbaa !123
  br label %600

600:                                              ; preds = %596, %594
  %601 = phi i32 [ %597, %596 ], [ %595, %594 ]
  %602 = icmp eq i32 %592, 0
  br i1 %602, label %603, label %589, !llvm.loop !133

603:                                              ; preds = %600
  %604 = load i64, ptr %576, align 8, !tbaa !130
  %605 = mul nsw i64 %604, %585
  %606 = add nsw i64 %605, %516
  store i64 %606, ptr %550, align 8, !tbaa !128
  %607 = load i32, ptr %551, align 8, !tbaa !129
  br label %608

608:                                              ; preds = %603, %619
  %609 = phi i32 [ %581, %603 ], [ %611, %619 ]
  %610 = phi i32 [ %607, %603 ], [ %620, %619 ]
  %611 = add i32 %609, -1
  %612 = icmp ult i32 %610, %578
  br i1 %612, label %615, label %613

613:                                              ; preds = %608
  %614 = sub i32 %610, %578
  store i32 %614, ptr %551, align 8, !tbaa !129
  br label %619

615:                                              ; preds = %608
  %616 = add i32 %610, %579
  store i32 %616, ptr %551, align 8, !tbaa !129
  %617 = load i64, ptr %550, align 8, !tbaa !128
  %618 = add nsw i64 %617, 1
  store i64 %618, ptr %550, align 8, !tbaa !128
  br label %619

619:                                              ; preds = %615, %613
  %620 = phi i32 [ %616, %615 ], [ %614, %613 ]
  %621 = icmp eq i32 %611, 0
  br i1 %621, label %622, label %608, !llvm.loop !134

622:                                              ; preds = %619, %575
  %623 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 25
  %624 = load i8, ptr %623, align 1, !tbaa !104
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %626, label %667

626:                                              ; preds = %622
  %627 = load i64, ptr %550, align 8, !tbaa !128
  %628 = load i64, ptr %519, align 8, !tbaa !123
  %629 = add i64 %362, 2047
  %630 = add i64 %629, %628
  %631 = and i64 %630, -4096
  %632 = load i64, ptr %17, align 8, !tbaa !135
  %633 = add nsw i64 %632, 2047
  %634 = and i64 %633, -4096
  %635 = icmp slt i64 %631, %634
  %636 = zext i1 %635 to i8
  %637 = add nuw i64 %365, 2047
  %638 = add i64 %637, %628
  %639 = and i64 %638, -4096
  %640 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %17, i64 0, i32 1
  %641 = load i64, ptr %640, align 8, !tbaa !136
  %642 = add nsw i64 %641, 2047
  %643 = and i64 %642, -4096
  %644 = icmp slt i64 %639, %643
  %645 = select i1 %644, i8 0, i8 2
  %646 = or disjoint i8 %645, %636
  %647 = add i64 %372, 2047
  %648 = add i64 %647, %627
  %649 = and i64 %648, -4096
  %650 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %17, i64 0, i32 1
  %651 = load i64, ptr %650, align 8, !tbaa !137
  %652 = add nsw i64 %651, 2047
  %653 = and i64 %652, -4096
  %654 = icmp slt i64 %649, %653
  %655 = select i1 %654, i8 4, i8 0
  %656 = or disjoint i8 %646, %655
  %657 = add nuw i64 %375, 2047
  %658 = add i64 %657, %627
  %659 = and i64 %658, -4096
  %660 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %17, i64 0, i32 1, i32 1
  %661 = load i64, ptr %660, align 8, !tbaa !138
  %662 = add nsw i64 %661, 2047
  %663 = and i64 %662, -4096
  %664 = icmp slt i64 %659, %663
  %665 = select i1 %664, i8 0, i8 8
  %666 = or disjoint i8 %656, %665
  store i8 %666, ptr %623, align 1, !tbaa !104
  br label %667

667:                                              ; preds = %626, %622
  %668 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 37
  store i32 0, ptr %668, align 8, !tbaa !139
  %669 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 31
  store i64 %247, ptr %669, align 8, !tbaa !140
  br i1 %44, label %670, label %676

670:                                              ; preds = %667
  %671 = load ptr, ptr @sample_unpack_12_proc, align 8, !tbaa !62
  %672 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 12
  store ptr %671, ptr %672, align 8, !tbaa !141
  %673 = icmp eq ptr %671, null
  br i1 %673, label %674, label %680

674:                                              ; preds = %670
  %675 = call i32 @gx_default_end_image(ptr noundef %0, ptr noundef %85, i32 noundef 0) #7
  br label %753

676:                                              ; preds = %667
  %677 = getelementptr inbounds [4 x ptr], ptr @gx_default_begin_image.procs, i64 0, i64 %45
  %678 = load ptr, ptr %677, align 8, !tbaa !62
  %679 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 12
  store ptr %678, ptr %679, align 8, !tbaa !141
  br label %680

680:                                              ; preds = %670, %676
  %681 = load ptr, ptr @image_strategies, align 8, !tbaa !142
  %682 = icmp eq ptr %681, null
  br i1 %682, label %687, label %683

683:                                              ; preds = %680
  %684 = call ptr %681(ptr noundef %85) #7
  %685 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 13
  store ptr %684, ptr %685, align 8, !tbaa !144
  %686 = icmp eq ptr %684, null
  br i1 %686, label %687, label %717

687:                                              ; preds = %683, %680
  %688 = load ptr, ptr getelementptr inbounds (%struct.gx_image_strategies_s, ptr @image_strategies, i64 0, i32 1), align 8, !tbaa !145
  %689 = icmp eq ptr %688, null
  br i1 %689, label %694, label %690

690:                                              ; preds = %687
  %691 = call ptr %688(ptr noundef %85) #7
  %692 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 13
  store ptr %691, ptr %692, align 8, !tbaa !144
  %693 = icmp eq ptr %691, null
  br i1 %693, label %694, label %717

694:                                              ; preds = %690, %687
  %695 = load ptr, ptr getelementptr inbounds (%struct.gx_image_strategies_s, ptr @image_strategies, i64 0, i32 2), align 8, !tbaa !146
  %696 = icmp eq ptr %695, null
  br i1 %696, label %701, label %697

697:                                              ; preds = %694
  %698 = call ptr %695(ptr noundef %85) #7
  %699 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 13
  store ptr %698, ptr %699, align 8, !tbaa !144
  %700 = icmp eq ptr %698, null
  br i1 %700, label %701, label %717

701:                                              ; preds = %697, %694
  %702 = load ptr, ptr getelementptr inbounds (%struct.gx_image_strategies_s, ptr @image_strategies, i64 0, i32 3), align 8, !tbaa !147
  %703 = icmp eq ptr %702, null
  br i1 %703, label %708, label %704

704:                                              ; preds = %701
  %705 = call ptr %702(ptr noundef %85) #7
  %706 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 13
  store ptr %705, ptr %706, align 8, !tbaa !144
  %707 = icmp eq ptr %705, null
  br i1 %707, label %708, label %717

708:                                              ; preds = %704, %701
  %709 = load ptr, ptr getelementptr inbounds (%struct.gx_image_strategies_s, ptr @image_strategies, i64 0, i32 4), align 8, !tbaa !148
  %710 = icmp eq ptr %709, null
  br i1 %710, label %715, label %711

711:                                              ; preds = %708
  %712 = call ptr %709(ptr noundef %85) #7
  %713 = getelementptr inbounds %struct.gx_image_enum_s, ptr %85, i64 0, i32 13
  store ptr %712, ptr %713, align 8, !tbaa !144
  %714 = icmp eq ptr %712, null
  br i1 %714, label %715, label %717

715:                                              ; preds = %711, %708
  %716 = call i32 @gx_default_end_image(ptr noundef %0, ptr noundef %85, i32 noundef 0) #7
  br label %753

717:                                              ; preds = %711, %704, %697, %690, %683
  %718 = load i8, ptr %623, align 1, !tbaa !104
  %719 = icmp ne i8 %718, 0
  %720 = icmp ne ptr %6, null
  %721 = and i1 %720, %719
  br i1 %721, label %722, label %736

722:                                              ; preds = %717
  %723 = load ptr, ptr %83, align 8, !tbaa !35
  %724 = call ptr %723(ptr noundef nonnull %7, ptr noundef nonnull @st_device_clip, ptr noundef nonnull @.str.2) #7
  %725 = icmp eq ptr %724, null
  br i1 %725, label %726, label %728

726:                                              ; preds = %722
  %727 = call i32 @gx_default_end_image(ptr noundef %0, ptr noundef %85, i32 noundef 0) #7
  br label %734

728:                                              ; preds = %722
  %729 = getelementptr inbounds %struct.gx_clip_path_s, ptr %6, i64 0, i32 4
  call void @gx_make_clip_translate_device(ptr noundef nonnull %724, ptr noundef nonnull %724, ptr noundef nonnull %729, i32 noundef 0, i32 noundef 0) #7
  %730 = getelementptr inbounds %struct.gx_device_clip_s, ptr %724, i64 0, i32 22
  store ptr %0, ptr %730, align 8, !tbaa !149
  %731 = getelementptr inbounds %struct.gx_device_clip_s, ptr %724, i64 0, i32 21
  %732 = load ptr, ptr %731, align 8, !tbaa !153
  %733 = call i32 %732(ptr noundef nonnull %724) #7
  store ptr %724, ptr %356, align 8, !tbaa !154
  br label %734

734:                                              ; preds = %728, %726
  %735 = phi i32 [ -25, %726 ], [ -15, %728 ]
  br i1 %725, label %753, label %736

736:                                              ; preds = %734, %717
  %737 = phi i32 [ %735, %734 ], [ -15, %717 ]
  %738 = load i8, ptr %338, align 4, !tbaa !96
  %739 = icmp eq i8 %738, 0
  br i1 %739, label %752, label %740

740:                                              ; preds = %736
  %741 = load ptr, ptr %83, align 8, !tbaa !35
  %742 = call ptr %741(ptr noundef nonnull %7, ptr noundef nonnull @st_device_rop_texture, ptr noundef nonnull @.str.3) #7
  %743 = icmp eq ptr %742, null
  br i1 %743, label %744, label %746

744:                                              ; preds = %740
  %745 = call i32 @gx_default_end_image(ptr noundef %0, ptr noundef %85, i32 noundef 0) #7
  br label %750

746:                                              ; preds = %740
  %747 = load ptr, ptr %356, align 8, !tbaa !154
  %748 = icmp eq ptr %747, null
  %749 = select i1 %748, ptr %0, ptr %747
  call void @gx_make_rop_texture_device(ptr noundef nonnull %742, ptr noundef %749, i32 noundef %249, ptr noundef %5) #7
  store ptr %742, ptr %357, align 8, !tbaa !155
  br label %750

750:                                              ; preds = %746, %744
  %751 = phi i32 [ -25, %744 ], [ %737, %746 ]
  br i1 %743, label %753, label %752

752:                                              ; preds = %736, %750
  store ptr %85, ptr %8, align 8, !tbaa !62
  br label %753

753:                                              ; preds = %82, %66, %70, %74, %78, %47, %50, %54, %58, %38, %9, %734, %750, %242, %752, %715, %674, %261, %142, %110
  %754 = phi i32 [ %111, %110 ], [ -15, %142 ], [ -25, %261 ], [ -15, %674 ], [ 0, %752 ], [ %751, %750 ], [ %735, %734 ], [ -15, %715 ], [ -15, %242 ], [ -15, %9 ], [ -15, %38 ], [ -15, %58 ], [ -15, %54 ], [ -15, %50 ], [ -15, %47 ], [ %68, %66 ], [ %72, %70 ], [ %76, %74 ], [ %80, %78 ], [ -25, %82 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #7
  ret i32 %754
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_distance_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @image_init_colors(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) unnamed_addr #0 {
  %10 = alloca [4 x i8], align 1
  %11 = alloca %struct.gs_client_color_s, align 8
  %12 = icmp eq i32 %2, 1
  %13 = select i1 %12, i32 %1, i32 8
  switch i32 %13, label %47 [
    i32 8, label %14
    i32 4, label %31
    i32 2, label %44
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 64, %14 ], [ %27, %16 ]
  %18 = phi ptr [ %15, %14 ], [ %26, %16 ]
  %19 = getelementptr inbounds %struct.gx_image_clue_s, ptr %18, i64 3
  store ptr @gx_dc_procs_none, ptr %19, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.gx_image_clue_s, ptr %18, i64 2
  store ptr @gx_dc_procs_none, ptr %20, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.gx_image_clue_s, ptr %18, i64 1
  store ptr @gx_dc_procs_none, ptr %21, align 8, !tbaa !55
  store ptr @gx_dc_procs_none, ptr %18, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.gx_image_clue_s, ptr %18, i64 3, i32 1
  store i32 0, ptr %22, align 8, !tbaa !156
  %23 = getelementptr inbounds %struct.gx_image_clue_s, ptr %18, i64 2, i32 1
  store i32 0, ptr %23, align 8, !tbaa !156
  %24 = getelementptr inbounds %struct.gx_image_clue_s, ptr %18, i64 1, i32 1
  store i32 0, ptr %24, align 8, !tbaa !156
  %25 = getelementptr inbounds %struct.gx_image_clue_s, ptr %18, i64 0, i32 1
  store i32 0, ptr %25, align 8, !tbaa !156
  %26 = getelementptr inbounds %struct.gx_image_clue_s, ptr %18, i64 4
  %27 = add nsw i32 %17, -1
  %28 = icmp ugt i32 %17, 1
  br i1 %28, label %16, label %29, !llvm.loop !157

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 0, i32 1
  store i32 1, ptr %30, align 8, !tbaa !156
  br label %47

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 238
  store ptr @gx_dc_procs_none, ptr %32, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 221
  store ptr @gx_dc_procs_none, ptr %33, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 204
  store ptr @gx_dc_procs_none, ptr %34, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 187
  store ptr @gx_dc_procs_none, ptr %35, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 153
  store ptr @gx_dc_procs_none, ptr %36, align 8, !tbaa !55
  %37 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 136
  store ptr @gx_dc_procs_none, ptr %37, align 8, !tbaa !55
  %38 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 119
  store ptr @gx_dc_procs_none, ptr %38, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 102
  store ptr @gx_dc_procs_none, ptr %39, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 68
  store ptr @gx_dc_procs_none, ptr %40, align 8, !tbaa !55
  %41 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 51
  store ptr @gx_dc_procs_none, ptr %41, align 8, !tbaa !55
  %42 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 34
  store ptr @gx_dc_procs_none, ptr %42, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 17
  store ptr @gx_dc_procs_none, ptr %43, align 8, !tbaa !55
  br label %44

44:                                               ; preds = %9, %31
  %45 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 170
  store ptr @gx_dc_procs_none, ptr %45, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 85
  store ptr @gx_dc_procs_none, ptr %46, align 8, !tbaa !55
  br label %47

47:                                               ; preds = %44, %9, %29
  %48 = icmp sgt i32 %2, 0
  br i1 %48, label %49, label %281

49:                                               ; preds = %47
  %50 = icmp sgt i32 %1, 2
  %51 = icmp ne i32 %3, 0
  %52 = or i1 %50, %51
  %53 = shl nuw nsw i32 1, %1
  %54 = add nsw i32 %53, -1
  %55 = sitofp i32 %54 to float
  %56 = zext nneg i32 %53 to i64
  %57 = zext nneg i32 %53 to i64
  %58 = getelementptr inbounds i8, ptr %10, i64 %57
  %59 = add nsw i32 %53, -1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  %62 = icmp slt i32 %1, 9
  %63 = shl nuw nsw i32 1, %1
  %64 = add nsw i32 %63, -1
  %65 = sitofp i32 %64 to float
  %66 = zext nneg i32 %63 to i64
  %67 = zext nneg i32 %63 to i64
  %68 = add nsw i32 %63, -1
  %69 = sext i32 %68 to i64
  %70 = icmp slt i32 %1, 9
  %71 = select i1 %70, double 2.550000e+02, double 3.276000e+04
  %72 = icmp sgt i32 %1, 4
  %73 = shl nsw i32 -1, %1
  %74 = xor i32 %73, -1
  %75 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49
  %76 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 255
  %77 = zext nneg i32 %2 to i64
  br label %78

78:                                               ; preds = %49, %278
  %79 = phi i64 [ 0, %49 ], [ %279, %278 ]
  %80 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %79
  %81 = shl nuw nsw i64 %79, 1
  %82 = getelementptr inbounds float, ptr %4, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !20
  %84 = fcmp oeq float %83, 0.000000e+00
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = getelementptr inbounds float, ptr %82, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !20
  %88 = fcmp oeq float %87, 1.000000e+00
  br i1 %88, label %96, label %89

89:                                               ; preds = %85, %78
  %90 = fcmp oeq float %83, 1.000000e+00
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = getelementptr inbounds float, ptr %82, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !20
  %94 = fcmp oeq float %93, 0.000000e+00
  br i1 %94, label %96, label %95

95:                                               ; preds = %91, %89
  store i32 0, ptr %8, align 4, !tbaa !63
  br label %96

96:                                               ; preds = %91, %85, %95
  %97 = phi ptr [ @image_init_colors.default_decode, %95 ], [ %82, %85 ], [ %82, %91 ]
  %98 = phi ptr [ %82, %95 ], [ %82, %85 ], [ @image_init_colors.default_decode, %91 ]
  %99 = phi i1 [ false, %95 ], [ true, %85 ], [ true, %91 ]
  br i1 %52, label %100, label %140

100:                                              ; preds = %96
  br i1 %62, label %101, label %234

101:                                              ; preds = %100
  %102 = load float, ptr %97, align 4, !tbaa !20
  %103 = getelementptr inbounds float, ptr %97, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !20
  %105 = fsub float %104, %102
  %106 = fcmp oeq float %105, 1.000000e+00
  %107 = fcmp oeq float %105, -1.000000e+00
  %108 = or i1 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %101
  %110 = getelementptr inbounds i8, ptr %80, i64 %67
  %111 = sdiv i64 65535, %69
  %112 = sitofp i64 %111 to float
  %113 = fmul float %105, %112
  %114 = fptosi float %113 to i32
  %115 = fmul float %102, 6.553500e+04
  %116 = fptoui float %115 to i32
  br label %117

117:                                              ; preds = %117, %109
  %118 = phi ptr [ %122, %117 ], [ %80, %109 ]
  %119 = phi i32 [ %123, %117 ], [ %116, %109 ]
  %120 = lshr i32 %119, 8
  %121 = trunc i32 %120 to i8
  store i8 %121, ptr %118, align 1, !tbaa !54
  %122 = getelementptr inbounds i8, ptr %118, i64 1
  %123 = add i32 %119, %114
  %124 = icmp eq ptr %122, %110
  br i1 %124, label %234, label %117, !llvm.loop !158

125:                                              ; preds = %101, %125
  %126 = phi i64 [ %138, %125 ], [ 0, %101 ]
  %127 = trunc i64 %126 to i32
  %128 = sitofp i32 %127 to float
  %129 = fmul float %105, %128
  %130 = fdiv float %129, %65
  %131 = fadd float %102, %130
  %132 = fmul float %131, 2.550000e+02
  %133 = fptosi float %132 to i32
  %134 = call i32 @llvm.smin.i32(i32 %133, i32 255)
  %135 = call i32 @llvm.smax.i32(i32 %134, i32 0)
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds i8, ptr %80, i64 %126
  store i8 %136, ptr %137, align 1, !tbaa !54
  %138 = add nuw nsw i64 %126, 1
  %139 = icmp eq i64 %138, %66
  br i1 %139, label %234, label %125, !llvm.loop !159

140:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  %141 = load float, ptr %97, align 4, !tbaa !20
  %142 = getelementptr inbounds float, ptr %97, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !20
  %144 = fsub float %143, %141
  %145 = fcmp oeq float %144, 1.000000e+00
  %146 = fcmp oeq float %144, -1.000000e+00
  %147 = or i1 %145, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %140
  %149 = sdiv i64 65535, %60
  %150 = sitofp i64 %149 to float
  %151 = fmul float %144, %150
  %152 = fptosi float %151 to i32
  %153 = fmul float %141, 6.553500e+04
  %154 = fptoui float %153 to i32
  br label %155

155:                                              ; preds = %155, %148
  %156 = phi ptr [ %160, %155 ], [ %10, %148 ]
  %157 = phi i32 [ %161, %155 ], [ %154, %148 ]
  %158 = lshr i32 %157, 8
  %159 = trunc i32 %158 to i8
  store i8 %159, ptr %156, align 1, !tbaa !54
  %160 = getelementptr inbounds i8, ptr %156, i64 1
  %161 = add i32 %157, %152
  %162 = icmp eq ptr %160, %58
  br i1 %162, label %178, label %155, !llvm.loop !158

163:                                              ; preds = %140, %163
  %164 = phi i64 [ %176, %163 ], [ 0, %140 ]
  %165 = trunc i64 %164 to i32
  %166 = sitofp i32 %165 to float
  %167 = fmul float %144, %166
  %168 = fdiv float %167, %55
  %169 = fadd float %141, %168
  %170 = fmul float %169, 2.550000e+02
  %171 = fptosi float %170 to i32
  %172 = call i32 @llvm.smin.i32(i32 %171, i32 255)
  %173 = call i32 @llvm.smax.i32(i32 %172, i32 0)
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds i8, ptr %10, i64 %164
  store i8 %174, ptr %175, align 1, !tbaa !54
  %176 = add nuw nsw i64 %164, 1
  %177 = icmp eq i64 %176, %56
  br i1 %177, label %178, label %163, !llvm.loop !159

178:                                              ; preds = %163, %155
  switch i32 %1, label %233 [
    i32 1, label %179
    i32 2, label %218
  ]

179:                                              ; preds = %178
  %180 = load i8, ptr %10, align 1, !tbaa !54
  %181 = icmp eq i8 %180, 0
  %182 = load i8, ptr %61, align 1
  %183 = icmp eq i8 %182, -1
  %184 = select i1 %181, i1 %183, i1 false
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %80, ptr noundef nonnull align 16 dereferenceable(64) @lookup4x1to32_identity, i64 64, i1 false)
  br label %233

186:                                              ; preds = %179
  %187 = icmp eq i8 %180, -1
  %188 = icmp eq i8 %182, 0
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %80, ptr noundef nonnull align 16 dereferenceable(64) @lookup4x1to32_inverted, i64 64, i1 false)
  br label %233

191:                                              ; preds = %186, %191
  %192 = phi ptr [ %216, %191 ], [ %80, %186 ]
  %193 = phi i32 [ %215, %191 ], [ 0, %186 ]
  %194 = lshr i32 %193, 3
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !54
  store i8 %197, ptr %192, align 1, !tbaa !54
  %198 = lshr i32 %193, 2
  %199 = and i32 %198, 1
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !54
  %203 = getelementptr inbounds i8, ptr %192, i64 1
  store i8 %202, ptr %203, align 1, !tbaa !54
  %204 = lshr i32 %193, 1
  %205 = and i32 %204, 1
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !54
  %209 = getelementptr inbounds i8, ptr %192, i64 2
  store i8 %208, ptr %209, align 1, !tbaa !54
  %210 = and i32 %193, 1
  %211 = zext nneg i32 %210 to i64
  %212 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !54
  %214 = getelementptr inbounds i8, ptr %192, i64 3
  store i8 %213, ptr %214, align 1, !tbaa !54
  %215 = add nuw nsw i32 %193, 1
  %216 = getelementptr inbounds i32, ptr %192, i64 1
  %217 = icmp eq i32 %215, 16
  br i1 %217, label %233, label %191, !llvm.loop !160

218:                                              ; preds = %178, %218
  %219 = phi ptr [ %231, %218 ], [ %80, %178 ]
  %220 = phi i32 [ %230, %218 ], [ 0, %178 ]
  %221 = lshr i32 %220, 2
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !54
  store i8 %224, ptr %219, align 1, !tbaa !54
  %225 = and i32 %220, 3
  %226 = zext nneg i32 %225 to i64
  %227 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !54
  %229 = getelementptr inbounds i8, ptr %219, i64 1
  store i8 %228, ptr %229, align 1, !tbaa !54
  %230 = add nuw nsw i32 %220, 1
  %231 = getelementptr inbounds i16, ptr %219, i64 1
  %232 = icmp eq i32 %230, 16
  br i1 %232, label %233, label %218, !llvm.loop !161

233:                                              ; preds = %218, %191, %185, %190, %178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  br label %234

234:                                              ; preds = %125, %117, %100, %233
  %235 = load float, ptr %98, align 4, !tbaa !20
  %236 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %79, i32 1
  store float %235, ptr %236, align 8, !tbaa !20
  %237 = getelementptr inbounds float, ptr %98, i64 1
  %238 = load float, ptr %237, align 4, !tbaa !20
  %239 = load float, ptr %98, align 4, !tbaa !20
  %240 = fsub float %238, %239
  %241 = fpext float %240 to double
  %242 = fdiv double %241, %71
  %243 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %79, i32 2
  store double %242, ptr %243, align 8, !tbaa !162
  %244 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %79, i32 1, i64 15
  store float %238, ptr %244, align 4, !tbaa !20
  %245 = or i1 %99, %72
  br i1 %245, label %263, label %246

246:                                              ; preds = %234
  %247 = udiv i32 15, %74
  %248 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %79, i32 3
  store i32 1, ptr %248, align 8, !tbaa !65
  %249 = xor i32 %247, 15
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %266, label %251

251:                                              ; preds = %246, %251
  %252 = phi i32 [ %261, %251 ], [ %249, %246 ]
  %253 = load float, ptr %236, align 8, !tbaa !20
  %254 = fpext float %253 to double
  %255 = sitofp i32 %252 to double
  %256 = fmul double %255, 1.700000e+01
  %257 = call double @llvm.fmuladd.f64(double %256, double %242, double %254)
  %258 = fptrunc double %257 to float
  %259 = zext nneg i32 %252 to i64
  %260 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %79, i32 1, i64 %259
  store float %258, ptr %260, align 4, !tbaa !20
  %261 = sub nsw i32 %252, %247
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %251, label %266, !llvm.loop !163

263:                                              ; preds = %234
  %264 = select i1 %99, i32 0, i32 2
  %265 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %79, i32 3
  store i32 %264, ptr %265, align 8, !tbaa !65
  br label %266

266:                                              ; preds = %251, %263, %246
  br i1 %12, label %267, label %278

267:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #7
  %268 = load float, ptr %98, align 4, !tbaa !20
  store float %268, ptr %11, align 8, !tbaa !20
  %269 = load ptr, ptr %7, align 8, !tbaa !68
  %270 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %269, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !164
  %272 = call i32 %271(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %75, ptr noundef %5, ptr noundef %6, i32 noundef 1) #7
  %273 = load float, ptr %237, align 4, !tbaa !20
  store float %273, ptr %11, align 8, !tbaa !20
  %274 = load ptr, ptr %7, align 8, !tbaa !68
  %275 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %274, i64 0, i32 7
  %276 = load ptr, ptr %275, align 8, !tbaa !164
  %277 = call i32 %276(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %76, ptr noundef %5, ptr noundef %6, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #7
  br label %278

278:                                              ; preds = %267, %266
  %279 = add nuw nsw i64 %79, 1
  %280 = icmp eq i64 %279, %77
  br i1 %280, label %281, label %78, !llvm.loop !165

281:                                              ; preds = %278, %47
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @color_draws_b_w(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x i16], align 2
  %4 = load ptr, ptr %1, align 8, !tbaa !166
  %5 = icmp eq ptr %4, @gx_dc_procs_pure
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = getelementptr inbounds %struct.gx_device_color_s, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !54
  %11 = call i32 %8(ptr noundef %0, i64 noundef %10, ptr noundef nonnull %3) #7
  %12 = load i16, ptr %3, align 2, !tbaa !64
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds [3 x i16], ptr %3, i64 0, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !64
  %16 = zext i16 %15 to i32
  %17 = or i32 %16, %13
  %18 = getelementptr inbounds [3 x i16], ptr %3, i64 0, i64 2
  %19 = load i16, ptr %18, align 2, !tbaa !64
  %20 = zext i16 %19 to i32
  %21 = or i32 %17, %20
  %22 = icmp ne i32 %21, 0
  %23 = and i32 %16, %13
  %24 = and i32 %23, %20
  %25 = icmp ne i32 %24, 65535
  %26 = zext i1 %22 to i32
  %27 = and i1 %22, %25
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  br i1 %27, label %28, label %29

28:                                               ; preds = %6, %2
  br label %29

29:                                               ; preds = %6, %28
  %30 = phi i32 [ %26, %6 ], [ -1, %28 ]
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @gx_cpath_outer_box(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_cpath_inner_box(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @sample_unpack_1(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare ptr @sample_unpack_2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare ptr @sample_unpack_4(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare ptr @sample_unpack_8(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gx_make_clip_translate_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @gx_make_rop_texture_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @gs_make_identity(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @image_enum_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #0 {
  switch i32 %2, label %5 [
    i32 0, label %36
    i32 1, label %38
    i32 2, label %40
    i32 3, label %42
    i32 4, label %44
    i32 5, label %46
    i32 6, label %48
    i32 7, label %50
  ]

5:                                                ; preds = %4
  %6 = add i32 %2, -8
  %7 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 1, !tbaa !76
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !78
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = icmp ugt i8 %8, 8
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !141
  %18 = icmp eq ptr %17, @sample_unpack_copy
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %13
  br label %20

20:                                               ; preds = %5, %15, %19
  %21 = phi i32 [ 1, %19 ], [ %9, %15 ], [ 8, %5 ]
  %22 = shl i32 2, %21
  %23 = icmp ult i32 %6, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_color, i64 0, i32 4), align 8, !tbaa !168
  %26 = lshr i32 %6, 1
  %27 = shl nsw i32 -1, %21
  %28 = xor i32 %27, -1
  %29 = udiv i32 255, %28
  %30 = mul i32 %29, %26
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %31
  %33 = and i32 %2, 1
  %34 = tail call ptr %25(ptr noundef nonnull %32, i32 noundef 96, i32 noundef %33, ptr noundef %3) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %57

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 14
  br label %52

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 15
  br label %52

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 17
  br label %52

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 18
  br label %52

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 20
  br label %52

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 34
  br label %52

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 35
  br label %52

50:                                               ; preds = %4
  %51 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 36
  br label %52

52:                                               ; preds = %36, %38, %40, %42, %44, %46, %48, %50
  %53 = phi ptr [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !62
  br label %55

55:                                               ; preds = %52, %24
  %56 = phi ptr [ null, %24 ], [ %54, %52 ]
  store ptr %56, ptr %3, align 8, !tbaa !62
  br label %57

57:                                               ; preds = %55, %20, %24
  %58 = phi ptr [ null, %20 ], [ %34, %24 ], [ @ptr_struct_procs, %55 ]
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define internal void @image_enum_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #7
  store ptr %6, ptr %4, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #7
  store ptr %9, ptr %7, align 8, !tbaa !88
  %10 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #7
  store ptr %12, ptr %10, align 8, !tbaa !90
  %13 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #7
  store ptr %15, ptr %13, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %17, ptr noundef %2) #7
  store ptr %18, ptr %16, align 8, !tbaa !93
  %19 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 34
  %20 = load ptr, ptr %19, align 8, !tbaa !154
  %21 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %20, ptr noundef %2) #7
  store ptr %21, ptr %19, align 8, !tbaa !154
  %22 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 35
  %23 = load ptr, ptr %22, align 8, !tbaa !155
  %24 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %23, ptr noundef %2) #7
  store ptr %24, ptr %22, align 8, !tbaa !155
  %25 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 36
  %26 = load ptr, ptr %25, align 8, !tbaa !170
  %27 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %26, ptr noundef %2) #7
  store ptr %27, ptr %25, align 8, !tbaa !170
  %28 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 1
  %29 = load i8, ptr %28, align 1, !tbaa !76
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 3
  %32 = load i8, ptr %31, align 1, !tbaa !78
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = icmp ugt i8 %29, 8
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !141
  %39 = icmp eq ptr %38, @sample_unpack_copy
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %34
  br label %41

41:                                               ; preds = %3, %36, %40
  %42 = phi i32 [ 1, %40 ], [ %30, %36 ], [ 8, %3 ]
  %43 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_color, i64 0, i32 5), align 8, !tbaa !171
  %44 = shl nsw i32 -1, %42
  %45 = xor i32 %44, -1
  br label %46

46:                                               ; preds = %41, %46
  %47 = phi i32 [ 0, %41 ], [ %51, %46 ]
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %48
  tail call void %43(ptr noundef nonnull %49, i32 noundef 96, ptr noundef %2) #7
  %50 = udiv i32 255, %45
  %51 = add nuw nsw i32 %50, %47
  %52 = icmp ult i32 %51, 256
  br i1 %52, label %46, label %53, !llvm.loop !172

53:                                               ; preds = %46
  ret void
}

declare ptr @sample_unpack_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 4}
!6 = !{!"gs_image_s", !7, i64 0, !7, i64 4, !10, i64 8, !7, i64 32, !12, i64 40, !8, i64 48, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!11 = !{!"float", !8, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!6, !7, i64 0}
!14 = !{!6, !7, i64 32}
!15 = !{!6, !7, i64 80}
!16 = !{!6, !7, i64 88}
!17 = !{!6, !7, i64 84}
!18 = !{!6, !7, i64 92}
!19 = !{!6, !12, i64 40}
!20 = !{!11, !11, i64 0}
!21 = !{!22, !7, i64 128}
!22 = !{!"gs_imager_state_s", !12, i64 0, !23, i64 8, !25, i64 80, !7, i64 128, !27, i64 132, !7, i64 136, !11, i64 140, !28, i64 144, !7, i64 160, !7, i64 164, !12, i64 168, !8, i64 176, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !8, i64 232, !8, i64 264, !12, i64 296, !12, i64 304, !12, i64 312}
!23 = !{!"gx_line_params_s", !11, i64 0, !7, i64 4, !7, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !24, i64 32}
!24 = !{!"gx_dash_params_s", !12, i64 0, !7, i64 8, !11, i64 12, !7, i64 16, !11, i64 20, !7, i64 24, !7, i64 28, !11, i64 32}
!25 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !26, i64 24, !26, i64 32, !7, i64 40}
!26 = !{!"long", !8, i64 0}
!27 = !{!"short", !8, i64 0}
!28 = !{!"gs_fixed_point_s", !26, i64 0, !26, i64 8}
!29 = !{!30, !7, i64 0}
!30 = !{!"gs_int_rect_s", !31, i64 0, !31, i64 8}
!31 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!32 = !{!30, !7, i64 4}
!33 = !{!30, !7, i64 8}
!34 = !{!30, !7, i64 12}
!35 = !{!36, !12, i64 16}
!36 = !{!"gs_memory_s", !37, i64 0}
!37 = !{!"gs_memory_procs_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152}
!38 = !{!39, !7, i64 32}
!39 = !{!"gx_image_enum_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !10, i64 8, !40, i64 32, !28, i64 48, !28, i64 64, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !7, i64 136, !12, i64 144, !7, i64 152, !7, i64 156, !7, i64 160, !8, i64 164, !8, i64 165, !8, i64 166, !8, i64 167, !41, i64 168, !41, i64 200, !7, i64 232, !26, i64 240, !26, i64 248, !26, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !7, i64 288, !28, i64 296, !28, i64 312, !42, i64 328, !7, i64 456, !7, i64 460, !31, i64 464, !7, i64 472, !7, i64 476, !7, i64 480, !7, i64 484, !8, i64 488, !8, i64 1832}
!40 = !{!"r_", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!41 = !{!"gs_fixed_rect_s", !28, i64 0, !28, i64 16}
!42 = !{!"dd_", !43, i64 0, !43, i64 64}
!43 = !{!"gx_dda_fixed_point_s", !44, i64 0, !44, i64 32}
!44 = !{!"gx_dda_fixed_s", !45, i64 0, !46, i64 16}
!45 = !{!"_a", !26, i64 0, !7, i64 8}
!46 = !{!"_e", !26, i64 0, !7, i64 8, !7, i64 12}
!47 = !{!39, !7, i64 36}
!48 = !{!39, !7, i64 40}
!49 = !{!39, !7, i64 44}
!50 = !{!36, !12, i64 88}
!51 = !{i64 0, i64 8, !52, i64 8, i64 8, !52}
!52 = !{!26, !26, i64 0}
!53 = !{!39, !8, i64 6}
!54 = !{!8, !8, i64 0}
!55 = !{!56, !12, i64 0}
!56 = !{!"gx_image_clue_s", !57, i64 0, !7, i64 96}
!57 = !{!"gx_device_color_s", !12, i64 0, !8, i64 8, !31, i64 48, !58, i64 56}
!58 = !{!"_mask", !59, i64 0, !26, i64 24, !12, i64 32}
!59 = !{!"gs_client_color_s", !60, i64 0, !12, i64 16}
!60 = !{!"gs_paint_color_s", !8, i64 0}
!61 = !{i64 0, i64 8, !62, i64 8, i64 8, !52, i64 8, i64 8, !62, i64 16, i64 16, !54, i64 32, i64 4, !63, i64 40, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 4, !54, i64 20, i64 16, !54, i64 36, i64 2, !64, i64 8, i64 8, !62, i64 48, i64 4, !63, i64 52, i64 4, !63, i64 56, i64 16, !54, i64 72, i64 8, !62, i64 80, i64 8, !52, i64 88, i64 8, !62}
!62 = !{!12, !12, i64 0}
!63 = !{!7, !7, i64 0}
!64 = !{!27, !27, i64 0}
!65 = !{!66, !7, i64 328}
!66 = !{!"sample_map_s", !8, i64 0, !8, i64 256, !67, i64 320, !7, i64 328}
!67 = !{!"double", !8, i64 0}
!68 = !{!69, !12, i64 0}
!69 = !{!"gs_color_space_s", !12, i64 0, !8, i64 8}
!70 = !{!71, !7, i64 4}
!71 = !{!"gs_color_space_type_s", !7, i64 0, !7, i64 4, !7, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88}
!72 = !{!71, !12, i64 24}
!73 = !{!39, !8, i64 167}
!74 = !{!36, !12, i64 0}
!75 = !{!39, !8, i64 0}
!76 = !{!39, !8, i64 1}
!77 = !{!39, !8, i64 2}
!78 = !{!39, !8, i64 3}
!79 = !{!39, !8, i64 4}
!80 = !{!39, !8, i64 5}
!81 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !20, i64 12, i64 4, !20, i64 16, i64 4, !20, i64 20, i64 4, !20}
!82 = !{!28, !26, i64 8}
!83 = !{!28, !26, i64 0}
!84 = !{!39, !7, i64 160}
!85 = !{!10, !11, i64 16}
!86 = !{!10, !11, i64 20}
!87 = !{!39, !12, i64 96}
!88 = !{!39, !12, i64 104}
!89 = !{!39, !12, i64 112}
!90 = !{!39, !12, i64 120}
!91 = !{!39, !12, i64 128}
!92 = !{!39, !7, i64 136}
!93 = !{!39, !12, i64 144}
!94 = !{!39, !7, i64 152}
!95 = !{!39, !8, i64 7}
!96 = !{!39, !8, i64 164}
!97 = !{!39, !8, i64 166}
!98 = !{!99, !12, i64 480}
!99 = !{!"gx_device_s", !7, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !7, i64 44, !100, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !26, i64 144, !26, i64 152, !7, i64 160, !101, i64 168, !102, i64 192}
!100 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !27, i64 8, !27, i64 10, !27, i64 12, !27, i64 14}
!101 = !{!"gx_page_device_procs_s", !12, i64 0, !12, i64 8, !12, i64 16}
!102 = !{!"gx_device_procs_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!103 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52, i64 24, i64 8, !52}
!104 = !{!39, !8, i64 165}
!105 = !{!39, !7, i64 232}
!106 = !{!39, !26, i64 328}
!107 = !{!39, !7, i64 336}
!108 = !{!39, !26, i64 344}
!109 = !{!39, !7, i64 352}
!110 = !{!39, !7, i64 356}
!111 = !{!39, !26, i64 360}
!112 = !{!39, !7, i64 368}
!113 = !{!39, !26, i64 376}
!114 = !{!39, !7, i64 384}
!115 = !{!39, !7, i64 388}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = distinct !{!118, !117}
!119 = !{!39, !26, i64 312}
!120 = !{!39, !26, i64 296}
!121 = !{!39, !26, i64 320}
!122 = !{!39, !26, i64 304}
!123 = !{!39, !26, i64 392}
!124 = !{!39, !7, i64 400}
!125 = !{!39, !26, i64 408}
!126 = !{!39, !7, i64 416}
!127 = !{!39, !7, i64 420}
!128 = !{!39, !26, i64 424}
!129 = !{!39, !7, i64 432}
!130 = !{!39, !26, i64 440}
!131 = !{!39, !7, i64 448}
!132 = !{!39, !7, i64 452}
!133 = distinct !{!133, !117}
!134 = distinct !{!134, !117}
!135 = !{!41, !26, i64 0}
!136 = !{!41, !26, i64 16}
!137 = !{!41, !26, i64 8}
!138 = !{!41, !26, i64 24}
!139 = !{!39, !7, i64 288}
!140 = !{!39, !26, i64 240}
!141 = !{!39, !12, i64 80}
!142 = !{!143, !12, i64 0}
!143 = !{!"gx_image_strategies_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!144 = !{!39, !12, i64 88}
!145 = !{!143, !12, i64 8}
!146 = !{!143, !12, i64 16}
!147 = !{!143, !12, i64 24}
!148 = !{!143, !12, i64 32}
!149 = !{!150, !12, i64 488}
!150 = !{!"gx_device_clip_s", !7, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !7, i64 44, !100, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !26, i64 144, !26, i64 152, !7, i64 160, !101, i64 168, !102, i64 192, !12, i64 488, !151, i64 496, !12, i64 560, !31, i64 568}
!151 = !{!"gx_clip_list_s", !152, i64 0, !12, i64 40, !12, i64 48, !7, i64 56, !7, i64 60}
!152 = !{!"gx_clip_rect_s", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!153 = !{!150, !12, i64 192}
!154 = !{!39, !12, i64 264}
!155 = !{!39, !12, i64 272}
!156 = !{!56, !7, i64 96}
!157 = distinct !{!157, !117}
!158 = distinct !{!158, !117}
!159 = distinct !{!159, !117}
!160 = distinct !{!160, !117}
!161 = distinct !{!161, !117}
!162 = !{!66, !67, i64 320}
!163 = distinct !{!163, !117}
!164 = !{!71, !12, i64 48}
!165 = distinct !{!165, !117}
!166 = !{!57, !12, i64 0}
!167 = !{!99, !12, i64 240}
!168 = !{!169, !12, i64 32}
!169 = !{!"gs_memory_struct_type_s", !7, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!170 = !{!39, !12, i64 280}
!171 = !{!169, !12, i64 40}
!172 = distinct !{!172, !117}
