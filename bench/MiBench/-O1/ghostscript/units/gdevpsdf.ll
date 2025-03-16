; ModuleID = 'gdevpsdf.c'
source_filename = "gdevpsdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psdf_image_param_names_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psdf_image_filter_name_s = type { ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_param_string_s = type { ptr, i32, i32 }
%struct.gx_device_psdf_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, [81 x i8], ptr, ptr, ptr, i32, %struct.gs_imager_state_s, [11 x float], %struct.gx_device_color_s, %struct.gx_device_color_s, i64, i64, %struct.gs_point_s, i32, ptr, i64, i64, %struct.psdf_distiller_params_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_point_s = type { double, double }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32 }
%struct.psdf_image_params_s = type { i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.gs_param_string_array_s = type { ptr, i32, i32 }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_vector_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, [81 x i8], ptr, ptr, ptr, i32, %struct.gs_imager_state_s, [11 x float], %struct.gx_device_color_s, %struct.gx_device_color_s, i64, i64, %struct.gs_point_s, i32, ptr, i64, i64 }
%struct.gx_device_vector_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"gx_device_psdf\00", align 1
@st_device_psdf = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 1512, ptr @.str, ptr null, ptr null, ptr @device_psdf_enum_ptrs, ptr @device_psdf_reloc_ptrs, ptr @gx_device_finalize }, align 8
@AutoRotatePages_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr null], align 16
@ColorConversionStrategy_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr null], align 16
@TransferFunctionInfo_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr null], align 16
@UCRandBGInfo_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.48, ptr @.str.50, ptr null], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"ASCII85EncodePages\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"AutoRotatePages\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"CompressPages\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ImageMemory\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"LZWEncodePages\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"PreserveHalftoneInfo\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"PreserveOPIComments\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"PreserveOverprintSettings\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"TransferFunctionInfo\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"UCRandBGInfo\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"UseFlateCompression\00", align 1
@Color_names = internal constant %struct.psdf_image_param_names_s { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62 }, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"ColorConversionStrategy\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"ConvertCMYKImagesToRGB\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"ConvertImagesToIndexed\00", align 1
@Gray_names = internal constant %struct.psdf_image_param_names_s { ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72 }, align 8
@Mono_names = internal constant %struct.psdf_image_param_names_s { ptr null, ptr @.str.73, ptr null, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80 }, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"AlwaysEmbed\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"NeverEmbed\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"EmbedAllFonts\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"SubsetFonts\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"MaxSubsetPct\00", align 1
@Poly_filters = internal constant [2 x %struct.psdf_image_filter_name_s] [%struct.psdf_image_filter_name_s { ptr @.str.81, ptr @s_LZWE_template }, %struct.psdf_image_filter_name_s zeroinitializer], align 16
@Mono_filters = internal constant [4 x %struct.psdf_image_filter_name_s] [%struct.psdf_image_filter_name_s { ptr @.str.82, ptr @s_CFE_template }, %struct.psdf_image_filter_name_s { ptr @.str.81, ptr @s_LZWE_template }, %struct.psdf_image_filter_name_s { ptr @.str.83, ptr @s_RLE_template }, %struct.psdf_image_filter_name_s zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [13 x i8] c"~AlwaysEmbed\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"~NeverEmbed\00", align 1
@gx_dc_type_pure = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%g %g %g\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%g w\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%d J\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%d j\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%g M\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"] %g d\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%g i\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"rg\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"%g %g %g %g re\0A\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"%g %g %g %g v\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"%g %g %g %g y\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"%g %g %g %g %g %g c\0A\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"h\0A\00", align 1
@st_device = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@.str.42 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"PageByPage\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"LeaveColorUnchanged\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"UseDeviceDependentColor\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"UseDeviceIndependentColor\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Preserve\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Apply\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"Remove\00", align 1
@DownsampleType_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.51, ptr @.str.52, ptr null], align 16
@.str.51 = private unnamed_addr constant [8 x i8] c"Average\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"Subsample\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"ColorACSImageDict\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"AntiAliasColorImages\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"AutoFilterColorImages\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"ColorImageDepth\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"ColorImageDict\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"DownsampleColorImages\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"ColorImageDownsampleType\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"EncodeColorImages\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"ColorImageFilter\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"ColorImageResolution\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"GrayACSImageDict\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"AntiAliasGrayImages\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"AutoFilterGrayImages\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"GrayImageDepth\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"GrayImageDict\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"DownsampleGrayImages\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"GrayImageDownsampleType\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"EncodeGrayImages\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"GrayImageFilter\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"GrayImageResolution\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"AntiAliasMonoImages\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"MonoImageDepth\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"MonoImageDict\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"DownsampleMonoImages\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"MonoImageDownsampleType\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"EncodeMonoImages\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"MonoImageFilter\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"MonoImageResolution\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"LZWEncode\00", align 1
@s_LZWE_template = external constant %struct.stream_template_s, align 8
@.str.82 = private unnamed_addr constant [15 x i8] c"CCITTFaxEncode\00", align 1
@s_CFE_template = external constant %struct.stream_template_s, align 8
@.str.83 = private unnamed_addr constant [16 x i8] c"RunLengthEncode\00", align 1
@s_RLE_template = external constant %struct.stream_template_s, align 8

; Function Attrs: nounwind uwtable
define internal ptr @device_psdf_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device, i64 0, i32 4), align 8, !tbaa !5
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @device_psdf_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device, i64 0, i32 5), align 8, !tbaa !11
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #7
  ret void
}

declare void @gx_device_finalize(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_psdf_get_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_param_string_s, align 8
  %4 = alloca %struct.gs_param_string_s, align 8
  %5 = alloca %struct.gs_param_string_s, align 8
  %6 = alloca %struct.gs_param_string_s, align 8
  %7 = tail call i32 @gdev_vector_get_params(ptr noundef %0, ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %185, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40
  %11 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x ptr], ptr @AutoRotatePages_names, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  store ptr %15, ptr %3, align 8, !tbaa !36
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #8
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 2
  store i32 1, ptr %19, align 4, !tbaa !39
  %20 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !40
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x ptr], ptr @ColorConversionStrategy_names, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  store ptr %24, ptr %4, align 8, !tbaa !36
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 2
  store i32 1, ptr %28, align 4, !tbaa !39
  %29 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !41
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x ptr], ptr @TransferFunctionInfo_names, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  store ptr %33, ptr %5, align 8, !tbaa !36
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.gs_param_string_s, ptr %5, i64 0, i32 1
  store i32 %35, ptr %36, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct.gs_param_string_s, ptr %5, i64 0, i32 2
  store i32 1, ptr %37, align 4, !tbaa !39
  %38 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !42
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x ptr], ptr @UCRandBGInfo_names, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  store ptr %42, ptr %6, align 8, !tbaa !36
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #8
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.gs_param_string_s, ptr %6, i64 0, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !38
  %46 = getelementptr inbounds %struct.gs_param_string_s, ptr %6, i64 0, i32 2
  store i32 1, ptr %46, align 4, !tbaa !39
  %47 = load ptr, ptr %1, align 8, !tbaa !43
  %48 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = tail call i32 %49(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %10) #7
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %185, label %52

52:                                               ; preds = %9
  %53 = load ptr, ptr %1, align 8, !tbaa !43
  %54 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  %56 = call i32 %55(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #7
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %185, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %1, align 8, !tbaa !43
  %60 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 2
  %63 = call i32 %61(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %62) #7
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %185, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr %1, align 8, !tbaa !43
  %67 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  %69 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 3
  %70 = call i32 %68(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %69) #7
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %185, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %1, align 8, !tbaa !43
  %74 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !45
  %76 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 4
  %77 = call i32 %75(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %76) #7
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %185, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %1, align 8, !tbaa !43
  %81 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !45
  %83 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 5
  %84 = call i32 %82(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %83) #7
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %185, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %1, align 8, !tbaa !43
  %88 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 6
  %91 = call i32 %89(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %90) #7
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %185, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %1, align 8, !tbaa !43
  %95 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !45
  %97 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 7
  %98 = call i32 %96(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %97) #7
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %185, label %100

100:                                              ; preds = %93
  %101 = load ptr, ptr %1, align 8, !tbaa !43
  %102 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %101, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !47
  %104 = call i32 %103(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #7
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %185, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %1, align 8, !tbaa !43
  %108 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %107, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !47
  %110 = call i32 %109(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %6) #7
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %185, label %112

112:                                              ; preds = %106
  %113 = load ptr, ptr %1, align 8, !tbaa !43
  %114 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !45
  %116 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 10
  %117 = call i32 %115(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %116) #7
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %185, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 11
  %121 = call fastcc i32 @psdf_get_image_params(ptr noundef nonnull %1, ptr noundef nonnull @Color_names, ptr noundef nonnull %120)
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %185, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %1, align 8, !tbaa !43
  %125 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %124, i64 0, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !47
  %127 = call i32 %126(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %4) #7
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %185, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr %1, align 8, !tbaa !43
  %131 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !45
  %133 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 13
  %134 = call i32 %132(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %133) #7
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %185, label %136

136:                                              ; preds = %129
  %137 = load ptr, ptr %1, align 8, !tbaa !43
  %138 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !45
  %140 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 14
  %141 = call i32 %139(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %140) #7
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %185, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 15
  %145 = call fastcc i32 @psdf_get_image_params(ptr noundef nonnull %1, ptr noundef nonnull @Gray_names, ptr noundef nonnull %144)
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %185, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 16
  %149 = call fastcc i32 @psdf_get_image_params(ptr noundef nonnull %1, ptr noundef nonnull @Mono_names, ptr noundef nonnull %148)
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %185, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %1, align 8, !tbaa !43
  %153 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %152, i64 0, i32 10
  %154 = load ptr, ptr %153, align 8, !tbaa !49
  %155 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 17
  %156 = call i32 %154(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %155) #7
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %185, label %158

158:                                              ; preds = %151
  %159 = load ptr, ptr %1, align 8, !tbaa !43
  %160 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %159, i64 0, i32 10
  %161 = load ptr, ptr %160, align 8, !tbaa !49
  %162 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 18
  %163 = call i32 %161(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %162) #7
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %185, label %165

165:                                              ; preds = %158
  %166 = load ptr, ptr %1, align 8, !tbaa !43
  %167 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !45
  %169 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 19
  %170 = call i32 %168(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %169) #7
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %165
  %173 = load ptr, ptr %1, align 8, !tbaa !43
  %174 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !45
  %176 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 20
  %177 = call i32 %175(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %176) #7
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %172
  %180 = load ptr, ptr %1, align 8, !tbaa !43
  %181 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !50
  %183 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40, i32 21
  %184 = call i32 %182(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %183) #7
  br label %185

185:                                              ; preds = %172, %165, %158, %151, %147, %143, %136, %129, %123, %119, %112, %106, %100, %93, %86, %79, %72, %65, %58, %52, %9, %179, %2
  %186 = phi i32 [ %7, %2 ], [ %50, %9 ], [ %56, %52 ], [ %63, %58 ], [ %70, %65 ], [ %77, %72 ], [ %84, %79 ], [ %91, %86 ], [ %98, %93 ], [ %104, %100 ], [ %110, %106 ], [ %117, %112 ], [ %121, %119 ], [ %127, %123 ], [ %134, %129 ], [ %141, %136 ], [ %145, %143 ], [ %149, %147 ], [ %156, %151 ], [ %163, %158 ], [ %170, %165 ], [ %177, %172 ], [ %184, %179 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %186
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gdev_vector_get_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psdf_get_image_params(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gs_param_string_s, align 8
  %5 = alloca %struct.gs_param_string_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.psdf_image_params_s, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [3 x ptr], ptr @DownsampleType_names, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  store ptr %10, ptr %4, align 8, !tbaa !36
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #8
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  store i32 %12, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 2
  store i32 1, ptr %14, align 4, !tbaa !39
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = tail call i32 %17(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %2) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %94, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.psdf_image_params_s, ptr %2, i64 0, i32 1
  %31 = tail call i32 %29(ptr noundef nonnull %0, ptr noundef nonnull %24, ptr noundef nonnull %30) #7
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %94, label %33

33:                                               ; preds = %26, %22
  %34 = load ptr, ptr %0, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.psdf_image_params_s, ptr %2, i64 0, i32 2
  %40 = tail call i32 %36(ptr noundef nonnull %0, ptr noundef %38, ptr noundef nonnull %39) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %94, label %42

42:                                               ; preds = %33
  %43 = load ptr, ptr %0, align 8, !tbaa !43
  %44 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.psdf_image_params_s, ptr %2, i64 0, i32 3
  %49 = tail call i32 %45(ptr noundef nonnull %0, ptr noundef %47, ptr noundef nonnull %48) #7
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %94, label %51

51:                                               ; preds = %42
  %52 = load ptr, ptr %0, align 8, !tbaa !43
  %53 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %52, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  %55 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = call i32 %54(ptr noundef nonnull %0, ptr noundef %56, ptr noundef nonnull %4) #7
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %0, align 8, !tbaa !43
  %61 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  %65 = getelementptr inbounds %struct.psdf_image_params_s, ptr %2, i64 0, i32 5
  %66 = call i32 %62(ptr noundef nonnull %0, ptr noundef %64, ptr noundef nonnull %65) #7
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.psdf_image_params_s, ptr %2, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !59
  %71 = icmp eq ptr %70, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  store ptr %70, ptr %5, align 8, !tbaa !36
  %73 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %70) #8
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.gs_param_string_s, ptr %5, i64 0, i32 1
  store i32 %74, ptr %75, align 8, !tbaa !38
  %76 = getelementptr inbounds %struct.gs_param_string_s, ptr %5, i64 0, i32 2
  store i32 1, ptr %76, align 4, !tbaa !39
  %77 = load ptr, ptr %0, align 8, !tbaa !43
  %78 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %77, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !47
  %80 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  %82 = call i32 %79(ptr noundef nonnull %0, ptr noundef %81, ptr noundef nonnull %5) #7
  br label %83

83:                                               ; preds = %68, %72
  %84 = phi i32 [ %82, %72 ], [ 0, %68 ]
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %0, align 8, !tbaa !43
  %88 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !50
  %90 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !61
  %92 = getelementptr inbounds %struct.psdf_image_params_s, ptr %2, i64 0, i32 7
  %93 = call i32 %89(ptr noundef nonnull %0, ptr noundef %91, ptr noundef nonnull %92) #7
  br label %94

94:                                               ; preds = %86, %3, %26, %33, %42, %51, %59, %83
  %95 = phi i32 [ %20, %3 ], [ %31, %26 ], [ %40, %33 ], [ %49, %42 ], [ %57, %51 ], [ %66, %59 ], [ %84, %83 ], [ %93, %86 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  ret i32 %95
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @psdf_key_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %4 = getelementptr inbounds %struct.gs_param_string_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = zext i32 %5 to i64
  %7 = icmp eq i64 %3, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !36
  %10 = tail call i32 @strncmp(ptr noundef %1, ptr noundef %9, i64 noundef %6) #8
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @psdf_put_bool_param(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call i32 %7(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #7
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %11, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = tail call i32 %13(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %8) #7
  br label %15

15:                                               ; preds = %4, %10
  %16 = phi i32 [ %8, %10 ], [ %3, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @psdf_put_int_param(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call i32 %7(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #7
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %11, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = tail call i32 %13(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %8) #7
  br label %15

15:                                               ; preds = %4, %10
  %16 = phi i32 [ %8, %10 ], [ %3, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_psdf_put_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_param_string_array_s, align 8
  %4 = alloca %struct.gs_param_string_array_s, align 8
  %5 = alloca %struct.gs_param_string_s, align 8
  %6 = alloca %struct.gs_param_string_s, align 8
  %7 = alloca %struct.gs_param_string_s, align 8
  %8 = alloca %struct.gs_param_string_s, align 8
  %9 = alloca %struct.psdf_distiller_params_s, align 8
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %9) #7
  %10 = getelementptr inbounds %struct.gx_device_psdf_s, ptr %0, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %9, ptr noundef nonnull align 8 dereferenceable(264) %10, i64 264, i1 false), !tbaa.struct !63
  %11 = load ptr, ptr %1, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = call i32 %13(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %9) #7
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %1, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %17, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = call i32 %19(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef %14) #7
  br label %21

21:                                               ; preds = %2, %16
  %22 = phi i32 [ %14, %16 ], [ 0, %2 ]
  %23 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %25 = load ptr, ptr %1, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = call i32 %27(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #7
  switch i32 %28, label %53 [
    i32 1, label %59
    i32 0, label %29
  ]

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.gs_param_string_s, ptr %8, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !38
  %32 = zext i32 %31 to i64
  %33 = load ptr, ptr %8, align 8
  br label %34

34:                                               ; preds = %48, %29
  %35 = phi i64 [ 0, %29 ], [ %49, %48 ]
  %36 = phi ptr [ @.str.42, %29 ], [ %51, %48 ]
  %37 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %36) #8
  %38 = icmp eq i64 %37, %32
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i32 @strncmp(ptr noundef nonnull %36, ptr noundef %33, i64 noundef %32) #8
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i32 [ 0, %34 ], [ %42, %39 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = trunc i64 %35 to i32
  br label %59

48:                                               ; preds = %43
  %49 = add nuw i64 %35, 1
  %50 = getelementptr inbounds ptr, ptr @AutoRotatePages_names, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %34, !llvm.loop !67

53:                                               ; preds = %48, %21
  %54 = phi i32 [ %28, %21 ], [ -15, %48 ]
  %55 = load ptr, ptr %1, align 8, !tbaa !43
  %56 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %55, i64 0, i32 15
  %57 = load ptr, ptr %56, align 8, !tbaa !62
  %58 = call i32 %57(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef %54) #7
  br label %59

59:                                               ; preds = %21, %46, %53
  %60 = phi i32 [ %24, %53 ], [ %47, %46 ], [ %24, %21 ]
  %61 = phi i32 [ %54, %53 ], [ 0, %46 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  store i32 %60, ptr %23, align 4, !tbaa !66
  %62 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 2
  %63 = load ptr, ptr %1, align 8, !tbaa !43
  %64 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = call i32 %65(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %62) #7
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %73, label %68

68:                                               ; preds = %59
  %69 = load ptr, ptr %1, align 8, !tbaa !43
  %70 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %69, i64 0, i32 15
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = call i32 %71(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i32 noundef %66) #7
  br label %73

73:                                               ; preds = %59, %68
  %74 = phi i32 [ %66, %68 ], [ %61, %59 ]
  %75 = load ptr, ptr %1, align 8, !tbaa !43
  %76 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !48
  %78 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 3
  %79 = call i32 %77(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %78) #7
  %80 = icmp ult i32 %79, 2
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = load ptr, ptr %1, align 8, !tbaa !43
  %83 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %82, i64 0, i32 15
  %84 = load ptr, ptr %83, align 8, !tbaa !62
  %85 = call i32 %84(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, i32 noundef %79) #7
  br label %86

86:                                               ; preds = %73, %81
  %87 = phi i32 [ %79, %81 ], [ %74, %73 ]
  %88 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 4
  %89 = load ptr, ptr %1, align 8, !tbaa !43
  %90 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !45
  %92 = call i32 %91(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %88) #7
  %93 = icmp ult i32 %92, 2
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = load ptr, ptr %1, align 8, !tbaa !43
  %96 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %95, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = call i32 %97(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i32 noundef %92) #7
  br label %99

99:                                               ; preds = %86, %94
  %100 = phi i32 [ %92, %94 ], [ %87, %86 ]
  %101 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 5
  %102 = load ptr, ptr %1, align 8, !tbaa !43
  %103 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !45
  %105 = call i32 %104(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %101) #7
  %106 = icmp ult i32 %105, 2
  br i1 %106, label %112, label %107

107:                                              ; preds = %99
  %108 = load ptr, ptr %1, align 8, !tbaa !43
  %109 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %108, i64 0, i32 15
  %110 = load ptr, ptr %109, align 8, !tbaa !62
  %111 = call i32 %110(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, i32 noundef %105) #7
  br label %112

112:                                              ; preds = %99, %107
  %113 = phi i32 [ %105, %107 ], [ %100, %99 ]
  %114 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 6
  %115 = load ptr, ptr %1, align 8, !tbaa !43
  %116 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !45
  %118 = call i32 %117(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %114) #7
  %119 = icmp ult i32 %118, 2
  br i1 %119, label %125, label %120

120:                                              ; preds = %112
  %121 = load ptr, ptr %1, align 8, !tbaa !43
  %122 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %121, i64 0, i32 15
  %123 = load ptr, ptr %122, align 8, !tbaa !62
  %124 = call i32 %123(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, i32 noundef %118) #7
  br label %125

125:                                              ; preds = %112, %120
  %126 = phi i32 [ %118, %120 ], [ %113, %112 ]
  %127 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 7
  %128 = load ptr, ptr %1, align 8, !tbaa !43
  %129 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !45
  %131 = call i32 %130(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %127) #7
  %132 = icmp ult i32 %131, 2
  br i1 %132, label %138, label %133

133:                                              ; preds = %125
  %134 = load ptr, ptr %1, align 8, !tbaa !43
  %135 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %134, i64 0, i32 15
  %136 = load ptr, ptr %135, align 8, !tbaa !62
  %137 = call i32 %136(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, i32 noundef %131) #7
  br label %138

138:                                              ; preds = %125, %133
  %139 = phi i32 [ %131, %133 ], [ %126, %125 ]
  %140 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 8
  %141 = load i32, ptr %140, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %142 = load ptr, ptr %1, align 8, !tbaa !43
  %143 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %142, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !47
  %145 = call i32 %144(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %7) #7
  switch i32 %145, label %170 [
    i32 1, label %176
    i32 0, label %146
  ]

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.gs_param_string_s, ptr %7, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !38
  %149 = zext i32 %148 to i64
  %150 = load ptr, ptr %7, align 8
  br label %151

151:                                              ; preds = %165, %146
  %152 = phi i64 [ 0, %146 ], [ %166, %165 ]
  %153 = phi ptr [ @.str.48, %146 ], [ %168, %165 ]
  %154 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %153) #8
  %155 = icmp eq i64 %154, %149
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = call i32 @strncmp(ptr noundef nonnull %153, ptr noundef %150, i64 noundef %149) #8
  %158 = icmp eq i32 %157, 0
  %159 = zext i1 %158 to i32
  br label %160

160:                                              ; preds = %156, %151
  %161 = phi i32 [ 0, %151 ], [ %159, %156 ]
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = trunc i64 %152 to i32
  br label %176

165:                                              ; preds = %160
  %166 = add nuw i64 %152, 1
  %167 = getelementptr inbounds ptr, ptr @TransferFunctionInfo_names, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %151, !llvm.loop !67

170:                                              ; preds = %165, %138
  %171 = phi i32 [ %145, %138 ], [ -15, %165 ]
  %172 = load ptr, ptr %1, align 8, !tbaa !43
  %173 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %172, i64 0, i32 15
  %174 = load ptr, ptr %173, align 8, !tbaa !62
  %175 = call i32 %174(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i32 noundef %171) #7
  br label %176

176:                                              ; preds = %138, %163, %170
  %177 = phi i32 [ %141, %170 ], [ %164, %163 ], [ %141, %138 ]
  %178 = phi i32 [ %171, %170 ], [ 0, %163 ], [ %139, %138 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  store i32 %177, ptr %140, align 8, !tbaa !69
  %179 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 9
  %180 = load i32, ptr %179, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %181 = load ptr, ptr %1, align 8, !tbaa !43
  %182 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %181, i64 0, i32 6
  %183 = load ptr, ptr %182, align 8, !tbaa !47
  %184 = call i32 %183(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %6) #7
  switch i32 %184, label %209 [
    i32 1, label %215
    i32 0, label %185
  ]

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.gs_param_string_s, ptr %6, i64 0, i32 1
  %187 = load i32, ptr %186, align 8, !tbaa !38
  %188 = zext i32 %187 to i64
  %189 = load ptr, ptr %6, align 8
  br label %190

190:                                              ; preds = %204, %185
  %191 = phi i64 [ 0, %185 ], [ %205, %204 ]
  %192 = phi ptr [ @.str.48, %185 ], [ %207, %204 ]
  %193 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %192) #8
  %194 = icmp eq i64 %193, %188
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = call i32 @strncmp(ptr noundef nonnull %192, ptr noundef %189, i64 noundef %188) #8
  %197 = icmp eq i32 %196, 0
  %198 = zext i1 %197 to i32
  br label %199

199:                                              ; preds = %195, %190
  %200 = phi i32 [ 0, %190 ], [ %198, %195 ]
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = trunc i64 %191 to i32
  br label %215

204:                                              ; preds = %199
  %205 = add nuw i64 %191, 1
  %206 = getelementptr inbounds ptr, ptr @UCRandBGInfo_names, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !35
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %190, !llvm.loop !67

209:                                              ; preds = %204, %176
  %210 = phi i32 [ %184, %176 ], [ -15, %204 ]
  %211 = load ptr, ptr %1, align 8, !tbaa !43
  %212 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %211, i64 0, i32 15
  %213 = load ptr, ptr %212, align 8, !tbaa !62
  %214 = call i32 %213(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i32 noundef %210) #7
  br label %215

215:                                              ; preds = %176, %202, %209
  %216 = phi i32 [ %180, %209 ], [ %203, %202 ], [ %180, %176 ]
  %217 = phi i32 [ %210, %209 ], [ 0, %202 ], [ %178, %176 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  store i32 %216, ptr %179, align 4, !tbaa !70
  %218 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 10
  %219 = load ptr, ptr %1, align 8, !tbaa !43
  %220 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !45
  %222 = call i32 %221(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %218) #7
  %223 = icmp ult i32 %222, 2
  br i1 %223, label %229, label %224

224:                                              ; preds = %215
  %225 = load ptr, ptr %1, align 8, !tbaa !43
  %226 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %225, i64 0, i32 15
  %227 = load ptr, ptr %226, align 8, !tbaa !62
  %228 = call i32 %227(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, i32 noundef %222) #7
  br label %229

229:                                              ; preds = %215, %224
  %230 = phi i32 [ %222, %224 ], [ %217, %215 ]
  %231 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 11
  %232 = call fastcc i32 @psdf_put_image_params(ptr noundef nonnull %1, ptr noundef nonnull @Color_names, ptr noundef nonnull @Poly_filters, ptr noundef nonnull %231, i32 noundef %230)
  %233 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 12
  %234 = load i32, ptr %233, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %235 = load ptr, ptr %1, align 8, !tbaa !43
  %236 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %235, i64 0, i32 6
  %237 = load ptr, ptr %236, align 8, !tbaa !47
  %238 = call i32 %237(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %5) #7
  switch i32 %238, label %263 [
    i32 1, label %269
    i32 0, label %239
  ]

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.gs_param_string_s, ptr %5, i64 0, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !38
  %242 = zext i32 %241 to i64
  %243 = load ptr, ptr %5, align 8
  br label %244

244:                                              ; preds = %258, %239
  %245 = phi i64 [ 0, %239 ], [ %259, %258 ]
  %246 = phi ptr [ @.str.45, %239 ], [ %261, %258 ]
  %247 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %246) #8
  %248 = icmp eq i64 %247, %242
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = call i32 @strncmp(ptr noundef nonnull %246, ptr noundef %243, i64 noundef %242) #8
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i32
  br label %253

253:                                              ; preds = %249, %244
  %254 = phi i32 [ 0, %244 ], [ %252, %249 ]
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %253
  %257 = trunc i64 %245 to i32
  br label %269

258:                                              ; preds = %253
  %259 = add nuw i64 %245, 1
  %260 = getelementptr inbounds ptr, ptr @ColorConversionStrategy_names, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !35
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %244, !llvm.loop !67

263:                                              ; preds = %258, %229
  %264 = phi i32 [ %238, %229 ], [ -15, %258 ]
  %265 = load ptr, ptr %1, align 8, !tbaa !43
  %266 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %265, i64 0, i32 15
  %267 = load ptr, ptr %266, align 8, !tbaa !62
  %268 = call i32 %267(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, i32 noundef %264) #7
  br label %269

269:                                              ; preds = %229, %256, %263
  %270 = phi i32 [ %234, %263 ], [ %257, %256 ], [ %234, %229 ]
  %271 = phi i32 [ %264, %263 ], [ 0, %256 ], [ %232, %229 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  store i32 %270, ptr %233, align 8, !tbaa !71
  %272 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 13
  %273 = load ptr, ptr %1, align 8, !tbaa !43
  %274 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %273, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !45
  %276 = call i32 %275(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %272) #7
  %277 = icmp ult i32 %276, 2
  br i1 %277, label %283, label %278

278:                                              ; preds = %269
  %279 = load ptr, ptr %1, align 8, !tbaa !43
  %280 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %279, i64 0, i32 15
  %281 = load ptr, ptr %280, align 8, !tbaa !62
  %282 = call i32 %281(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, i32 noundef %276) #7
  br label %283

283:                                              ; preds = %269, %278
  %284 = phi i32 [ %276, %278 ], [ %271, %269 ]
  %285 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 14
  %286 = load ptr, ptr %1, align 8, !tbaa !43
  %287 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !45
  %289 = call i32 %288(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %285) #7
  %290 = icmp ult i32 %289, 2
  br i1 %290, label %296, label %291

291:                                              ; preds = %283
  %292 = load ptr, ptr %1, align 8, !tbaa !43
  %293 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %292, i64 0, i32 15
  %294 = load ptr, ptr %293, align 8, !tbaa !62
  %295 = call i32 %294(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, i32 noundef %289) #7
  br label %296

296:                                              ; preds = %283, %291
  %297 = phi i32 [ %289, %291 ], [ %284, %283 ]
  %298 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 15
  %299 = call fastcc i32 @psdf_put_image_params(ptr noundef nonnull %1, ptr noundef nonnull @Gray_names, ptr noundef nonnull @Poly_filters, ptr noundef nonnull %298, i32 noundef %297)
  %300 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 16
  %301 = call fastcc i32 @psdf_put_image_params(ptr noundef nonnull %1, ptr noundef nonnull @Mono_names, ptr noundef nonnull @Mono_filters, ptr noundef nonnull %300, i32 noundef %299)
  %302 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %303 = load ptr, ptr %1, align 8, !tbaa !43
  %304 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %303, i64 0, i32 10
  %305 = load ptr, ptr %304, align 8, !tbaa !49
  %306 = call i32 %305(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds ([13 x i8], ptr @.str.20, i64 0, i64 1), ptr noundef nonnull %302) #7
  %307 = icmp ult i32 %306, 2
  br i1 %307, label %313, label %308

308:                                              ; preds = %296
  %309 = load ptr, ptr %1, align 8, !tbaa !43
  %310 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %309, i64 0, i32 15
  %311 = load ptr, ptr %310, align 8, !tbaa !62
  %312 = call i32 %311(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds ([13 x i8], ptr @.str.20, i64 0, i64 1), i32 noundef %306) #7
  br label %313

313:                                              ; preds = %308, %296
  %314 = phi i32 [ %306, %308 ], [ %301, %296 ]
  %315 = load ptr, ptr %1, align 8, !tbaa !43
  %316 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %315, i64 0, i32 10
  %317 = load ptr, ptr %316, align 8, !tbaa !49
  %318 = call i32 %317(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %4) #7
  %319 = icmp ult i32 %318, 2
  br i1 %319, label %325, label %320

320:                                              ; preds = %313
  %321 = load ptr, ptr %1, align 8, !tbaa !43
  %322 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %321, i64 0, i32 15
  %323 = load ptr, ptr %322, align 8, !tbaa !62
  %324 = call i32 %323(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, i32 noundef %318) #7
  br label %325

325:                                              ; preds = %313, %320
  %326 = phi i32 [ %318, %320 ], [ %314, %313 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  %327 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %328 = load ptr, ptr %1, align 8, !tbaa !43
  %329 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %328, i64 0, i32 10
  %330 = load ptr, ptr %329, align 8, !tbaa !49
  %331 = call i32 %330(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds ([12 x i8], ptr @.str.21, i64 0, i64 1), ptr noundef nonnull %327) #7
  %332 = icmp ult i32 %331, 2
  br i1 %332, label %338, label %333

333:                                              ; preds = %325
  %334 = load ptr, ptr %1, align 8, !tbaa !43
  %335 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %334, i64 0, i32 15
  %336 = load ptr, ptr %335, align 8, !tbaa !62
  %337 = call i32 %336(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds ([12 x i8], ptr @.str.21, i64 0, i64 1), i32 noundef %331) #7
  br label %338

338:                                              ; preds = %333, %325
  %339 = phi i32 [ %331, %333 ], [ %326, %325 ]
  %340 = load ptr, ptr %1, align 8, !tbaa !43
  %341 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %340, i64 0, i32 10
  %342 = load ptr, ptr %341, align 8, !tbaa !49
  %343 = call i32 %342(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #7
  %344 = icmp ult i32 %343, 2
  br i1 %344, label %350, label %345

345:                                              ; preds = %338
  %346 = load ptr, ptr %1, align 8, !tbaa !43
  %347 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %346, i64 0, i32 15
  %348 = load ptr, ptr %347, align 8, !tbaa !62
  %349 = call i32 %348(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, i32 noundef %343) #7
  br label %350

350:                                              ; preds = %338, %345
  %351 = phi i32 [ %343, %345 ], [ %339, %338 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  %352 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 19
  %353 = load ptr, ptr %1, align 8, !tbaa !43
  %354 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %353, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !45
  %356 = call i32 %355(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %352) #7
  %357 = icmp ult i32 %356, 2
  br i1 %357, label %363, label %358

358:                                              ; preds = %350
  %359 = load ptr, ptr %1, align 8, !tbaa !43
  %360 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %359, i64 0, i32 15
  %361 = load ptr, ptr %360, align 8, !tbaa !62
  %362 = call i32 %361(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, i32 noundef %356) #7
  br label %363

363:                                              ; preds = %350, %358
  %364 = phi i32 [ %356, %358 ], [ %351, %350 ]
  %365 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 20
  %366 = load ptr, ptr %1, align 8, !tbaa !43
  %367 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %366, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !45
  %369 = call i32 %368(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %365) #7
  %370 = icmp ult i32 %369, 2
  br i1 %370, label %376, label %371

371:                                              ; preds = %363
  %372 = load ptr, ptr %1, align 8, !tbaa !43
  %373 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %372, i64 0, i32 15
  %374 = load ptr, ptr %373, align 8, !tbaa !62
  %375 = call i32 %374(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, i32 noundef %369) #7
  br label %376

376:                                              ; preds = %363, %371
  %377 = phi i32 [ %369, %371 ], [ %364, %363 ]
  %378 = getelementptr inbounds %struct.psdf_distiller_params_s, ptr %9, i64 0, i32 21
  %379 = load ptr, ptr %1, align 8, !tbaa !43
  %380 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %379, i64 0, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !50
  %382 = call i32 %381(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %378) #7
  %383 = icmp ult i32 %382, 2
  br i1 %383, label %389, label %384

384:                                              ; preds = %376
  %385 = load ptr, ptr %1, align 8, !tbaa !43
  %386 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %385, i64 0, i32 15
  %387 = load ptr, ptr %386, align 8, !tbaa !62
  %388 = call i32 %387(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, i32 noundef %382) #7
  br label %389

389:                                              ; preds = %376, %384
  %390 = phi i32 [ %382, %384 ], [ %377, %376 ]
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %396, label %392

392:                                              ; preds = %389
  %393 = call i32 @gdev_vector_put_params(ptr noundef %0, ptr noundef nonnull %1) #7
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %10, ptr noundef nonnull align 8 dereferenceable(264) %9, i64 264, i1 false), !tbaa.struct !63
  br label %396

396:                                              ; preds = %392, %389, %395
  %397 = phi i32 [ 0, %395 ], [ %390, %389 ], [ %393, %392 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %9) #7
  ret i32 %397
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psdf_put_image_params(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.gs_param_string_s, align 8
  %7 = alloca %struct.gs_param_string_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %8 = getelementptr inbounds %struct.psdf_image_params_s, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = load ptr, ptr %0, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = tail call i32 %14(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %3) #7
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr %0, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %18, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = tail call i32 %20(ptr noundef nonnull %0, ptr noundef %11, i32 noundef %15) #7
  br label %22

22:                                               ; preds = %5, %17
  %23 = phi i32 [ %15, %17 ], [ %4, %5 ]
  %24 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.psdf_image_params_s, ptr %3, i64 0, i32 1
  %29 = load ptr, ptr %0, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = tail call i32 %31(ptr noundef nonnull %0, ptr noundef nonnull %25, ptr noundef nonnull %28) #7
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %0, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %35, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = tail call i32 %37(ptr noundef nonnull %0, ptr noundef nonnull %25, i32 noundef %32) #7
  br label %39

39:                                               ; preds = %34, %27, %22
  %40 = phi i32 [ %23, %22 ], [ %32, %34 ], [ %23, %27 ]
  %41 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.psdf_image_params_s, ptr %3, i64 0, i32 2
  %44 = load ptr, ptr %0, align 8, !tbaa !43
  %45 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = tail call i32 %46(ptr noundef nonnull %0, ptr noundef %42, ptr noundef nonnull %43) #7
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %54, label %49

49:                                               ; preds = %39
  %50 = load ptr, ptr %0, align 8, !tbaa !43
  %51 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %50, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = tail call i32 %52(ptr noundef nonnull %0, ptr noundef %42, i32 noundef %47) #7
  br label %54

54:                                               ; preds = %39, %49
  %55 = phi i32 [ %47, %49 ], [ %40, %39 ]
  %56 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  %58 = getelementptr inbounds %struct.psdf_image_params_s, ptr %3, i64 0, i32 3
  %59 = load ptr, ptr %0, align 8, !tbaa !43
  %60 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = tail call i32 %61(ptr noundef nonnull %0, ptr noundef %57, ptr noundef nonnull %58) #7
  %63 = icmp ult i32 %62, 2
  br i1 %63, label %69, label %64

64:                                               ; preds = %54
  %65 = load ptr, ptr %0, align 8, !tbaa !43
  %66 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %65, i64 0, i32 15
  %67 = load ptr, ptr %66, align 8, !tbaa !62
  %68 = tail call i32 %67(ptr noundef nonnull %0, ptr noundef %57, i32 noundef %62) #7
  br label %69

69:                                               ; preds = %54, %64
  %70 = phi i32 [ %62, %64 ], [ %55, %54 ]
  %71 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %73 = load ptr, ptr %0, align 8, !tbaa !43
  %74 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %73, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = call i32 %75(ptr noundef nonnull %0, ptr noundef %72, ptr noundef nonnull %6) #7
  switch i32 %76, label %101 [
    i32 1, label %107
    i32 0, label %77
  ]

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.gs_param_string_s, ptr %6, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !38
  %80 = zext i32 %79 to i64
  %81 = load ptr, ptr %6, align 8
  br label %82

82:                                               ; preds = %96, %77
  %83 = phi i64 [ 0, %77 ], [ %97, %96 ]
  %84 = phi ptr [ @.str.51, %77 ], [ %99, %96 ]
  %85 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %84) #8
  %86 = icmp eq i64 %85, %80
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = call i32 @strncmp(ptr noundef nonnull %84, ptr noundef %81, i64 noundef %80) #8
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  br label %91

91:                                               ; preds = %87, %82
  %92 = phi i32 [ 0, %82 ], [ %90, %87 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = trunc i64 %83 to i32
  br label %107

96:                                               ; preds = %91
  %97 = add nuw i64 %83, 1
  %98 = getelementptr inbounds ptr, ptr @DownsampleType_names, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %82, !llvm.loop !67

101:                                              ; preds = %96, %69
  %102 = phi i32 [ %76, %69 ], [ -15, %96 ]
  %103 = load ptr, ptr %0, align 8, !tbaa !43
  %104 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %103, i64 0, i32 15
  %105 = load ptr, ptr %104, align 8, !tbaa !62
  %106 = call i32 %105(ptr noundef nonnull %0, ptr noundef %72, i32 noundef %102) #7
  br label %107

107:                                              ; preds = %69, %94, %101
  %108 = phi i32 [ %9, %101 ], [ %95, %94 ], [ %9, %69 ]
  %109 = phi i32 [ %102, %101 ], [ 0, %94 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 %108, ptr %8, align 8, !tbaa !51
  br label %112

112:                                              ; preds = %111, %107
  %113 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 7
  %114 = load ptr, ptr %113, align 8, !tbaa !58
  %115 = getelementptr inbounds %struct.psdf_image_params_s, ptr %3, i64 0, i32 5
  %116 = load ptr, ptr %0, align 8, !tbaa !43
  %117 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !45
  %119 = call i32 %118(ptr noundef nonnull %0, ptr noundef %114, ptr noundef nonnull %115) #7
  %120 = icmp ult i32 %119, 2
  br i1 %120, label %126, label %121

121:                                              ; preds = %112
  %122 = load ptr, ptr %0, align 8, !tbaa !43
  %123 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %122, i64 0, i32 15
  %124 = load ptr, ptr %123, align 8, !tbaa !62
  %125 = call i32 %124(ptr noundef nonnull %0, ptr noundef %114, i32 noundef %119) #7
  br label %126

126:                                              ; preds = %112, %121
  %127 = phi i32 [ %119, %121 ], [ %109, %112 ]
  %128 = load ptr, ptr %0, align 8, !tbaa !43
  %129 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %128, i64 0, i32 5
  %130 = load ptr, ptr %129, align 8, !tbaa !72
  %131 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !60
  %133 = call i32 %130(ptr noundef nonnull %0, ptr noundef %132, ptr noundef nonnull %7) #7
  switch i32 %133, label %168 [
    i32 0, label %134
    i32 1, label %175
  ]

134:                                              ; preds = %126
  %135 = load ptr, ptr %2, align 8, !tbaa !73
  %136 = icmp eq ptr %135, null
  br i1 %136, label %165, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.gs_param_string_s, ptr %7, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !38
  %140 = zext i32 %139 to i64
  %141 = load ptr, ptr %7, align 8
  br label %142

142:                                              ; preds = %137, %155
  %143 = phi i1 [ %136, %137 ], [ %158, %155 ]
  %144 = phi ptr [ %135, %137 ], [ %157, %155 ]
  %145 = phi ptr [ %2, %137 ], [ %156, %155 ]
  %146 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %144) #8
  %147 = icmp eq i64 %146, %140
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = call i32 @strncmp(ptr noundef nonnull %144, ptr noundef %141, i64 noundef %140) #8
  %150 = icmp eq i32 %149, 0
  %151 = zext i1 %150 to i32
  br label %152

152:                                              ; preds = %142, %148
  %153 = phi i32 [ 0, %142 ], [ %151, %148 ]
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.psdf_image_filter_name_s, ptr %145, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !73
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %142, !llvm.loop !75

159:                                              ; preds = %152
  br i1 %143, label %165, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.psdf_image_params_s, ptr %3, i64 0, i32 6
  store ptr %144, ptr %161, align 8, !tbaa !59
  %162 = getelementptr inbounds %struct.psdf_image_filter_name_s, ptr %145, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !76
  %164 = getelementptr inbounds %struct.psdf_image_params_s, ptr %3, i64 0, i32 8
  store ptr %163, ptr %164, align 8, !tbaa !77
  br label %165

165:                                              ; preds = %155, %134, %159, %160
  %166 = phi i32 [ %127, %160 ], [ -15, %159 ], [ -15, %134 ], [ -15, %155 ]
  %167 = phi i32 [ 2, %160 ], [ 5, %159 ], [ 5, %134 ], [ 5, %155 ]
  switch i32 %167, label %200 [
    i32 2, label %175
    i32 5, label %168
  ]

168:                                              ; preds = %126, %165
  %169 = phi i32 [ %166, %165 ], [ %133, %126 ]
  %170 = load ptr, ptr %0, align 8, !tbaa !43
  %171 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %170, i64 0, i32 15
  %172 = load ptr, ptr %171, align 8, !tbaa !62
  %173 = load ptr, ptr %131, align 8, !tbaa !60
  %174 = call i32 %172(ptr noundef nonnull %0, ptr noundef %173, i32 noundef %169) #7
  br label %175

175:                                              ; preds = %168, %126, %165
  %176 = phi i32 [ %169, %168 ], [ %127, %126 ], [ %166, %165 ]
  %177 = getelementptr inbounds %struct.psdf_image_param_names_s, ptr %1, i64 0, i32 9
  %178 = load ptr, ptr %177, align 8, !tbaa !61
  %179 = getelementptr inbounds %struct.psdf_image_params_s, ptr %3, i64 0, i32 7
  %180 = load ptr, ptr %0, align 8, !tbaa !43
  %181 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !50
  %183 = call i32 %182(ptr noundef nonnull %0, ptr noundef %178, ptr noundef nonnull %179) #7
  %184 = icmp ult i32 %183, 2
  br i1 %184, label %190, label %185

185:                                              ; preds = %175
  %186 = load ptr, ptr %0, align 8, !tbaa !43
  %187 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %186, i64 0, i32 15
  %188 = load ptr, ptr %187, align 8, !tbaa !62
  %189 = call i32 %188(ptr noundef nonnull %0, ptr noundef %178, i32 noundef %183) #7
  br label %190

190:                                              ; preds = %175, %185
  %191 = phi i32 [ %183, %185 ], [ %176, %175 ]
  %192 = icmp sgt i32 %191, -1
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load i32, ptr %179, align 8, !tbaa !78
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 1, ptr %179, align 8, !tbaa !78
  br label %197

197:                                              ; preds = %196, %193
  %198 = load i32, ptr %43, align 8, !tbaa !79
  switch i32 %198, label %199 [
    i32 1, label %200
    i32 2, label %200
    i32 4, label %200
    i32 8, label %200
    i32 -1, label %200
  ]

199:                                              ; preds = %197
  store i32 -1, ptr %43, align 8, !tbaa !79
  br label %200

200:                                              ; preds = %190, %199, %197, %197, %197, %197, %197, %165
  %201 = phi i32 [ undef, %165 ], [ %191, %197 ], [ %191, %197 ], [ %191, %197 ], [ %191, %197 ], [ %191, %197 ], [ %191, %199 ], [ %191, %190 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret i32 %201
}

declare i32 @gdev_vector_put_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_set_color(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !80
  %5 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !35
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.gx_device_color_s, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !81
  %11 = lshr i64 %10, 16
  %12 = uitofp i64 %11 to double
  %13 = fdiv double %12, 2.550000e+02
  %14 = fptrunc double %13 to float
  %15 = lshr i64 %10, 8
  %16 = and i64 %15, 255
  %17 = uitofp i64 %16 to double
  %18 = fdiv double %17, 2.550000e+02
  %19 = fptrunc double %18 to float
  %20 = and i64 %10, 255
  %21 = uitofp i64 %20 to double
  %22 = fdiv double %21, 2.550000e+02
  %23 = fptrunc double %22 to float
  %24 = fcmp oeq float %14, %19
  %25 = fcmp oeq float %19, %23
  %26 = and i1 %24, %25
  %27 = fpext float %14 to double
  br i1 %26, label %28, label %32

28:                                               ; preds = %7
  %29 = tail call ptr @pprintg1(ptr noundef %8, ptr noundef nonnull @.str.22, double noundef %27) #7
  %30 = getelementptr inbounds i8, ptr %2, i64 1
  %31 = tail call ptr @pprints1(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef nonnull %30) #7
  br label %38

32:                                               ; preds = %7
  %33 = tail call ptr @pprintg1(ptr noundef %8, ptr noundef nonnull @.str.24, double noundef %27) #7
  %34 = fpext float %19 to double
  %35 = fpext float %23 to double
  %36 = tail call ptr @pprintg2(ptr noundef %8, ptr noundef %33, double noundef %34, double noundef %35) #7
  %37 = tail call ptr @pprints1(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef %2) #7
  br label %38

38:                                               ; preds = %28, %32, %3
  %39 = phi i32 [ -15, %3 ], [ 0, %32 ], [ 0, %28 ]
  ret i32 %39
}

declare ptr @gdev_vector_stream(ptr noundef) local_unnamed_addr #1

declare ptr @pprintg1(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #1

declare ptr @pprints1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @pprintg2(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_setlinewidth(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %4 = tail call ptr @pprintg1(ptr noundef %3, ptr noundef nonnull @.str.25, double noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_setlinecap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %4 = tail call ptr @pprintd1(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %1) #7
  ret i32 0
}

declare ptr @pprintd1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_setlinejoin(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %4 = tail call ptr @pprintd1(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_setmiterlimit(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %4 = tail call ptr @pprintg1(ptr noundef %3, ptr noundef nonnull @.str.28, double noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_setdash(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %6 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.29) #7
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %16, %10 ]
  %12 = getelementptr inbounds float, ptr %1, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !82
  %14 = fpext float %13 to double
  %15 = tail call ptr @pprintg1(ptr noundef %5, ptr noundef nonnull @.str.30, double noundef %14) #7
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %10, !llvm.loop !83

18:                                               ; preds = %10, %4
  %19 = tail call ptr @pprintg1(ptr noundef %5, ptr noundef nonnull @.str.31, double noundef %3) #7
  ret i32 0
}

declare i32 @pputs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_setflat(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %4 = tail call ptr @pprintg1(ptr noundef %3, ptr noundef nonnull @.str.32, double noundef %1) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @psdf_setlogop(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_setfillcolor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @psdf_set_color(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.33), !range !84
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_setstrokecolor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @psdf_set_color(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.34), !range !84
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @psdf_dorect(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %8, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef %5) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %15 = sitofp i64 %1 to double
  %16 = fmul double %15, 0x3F30000000000000
  %17 = sitofp i64 %2 to double
  %18 = fmul double %17, 0x3F30000000000000
  %19 = sub nsw i64 %3, %1
  %20 = sitofp i64 %19 to double
  %21 = fmul double %20, 0x3F30000000000000
  %22 = sub nsw i64 %4, %2
  %23 = sitofp i64 %22 to double
  %24 = fmul double %23, 0x3F30000000000000
  %25 = tail call ptr @pprintg4(ptr noundef %14, ptr noundef nonnull @.str.35, double noundef %16, double noundef %18, double noundef %21, double noundef %24) #7
  %26 = load ptr, ptr %7, align 8, !tbaa !85
  %27 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %26, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = tail call i32 %28(ptr noundef %0, i32 noundef %5) #7
  br label %30

30:                                               ; preds = %6, %13
  %31 = phi i32 [ %29, %13 ], [ %11, %6 ]
  ret i32 %31
}

declare ptr @pprintg4(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @psdf_beginpath(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_moveto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %8 = tail call ptr @pprintg2(ptr noundef %7, ptr noundef nonnull @.str.36, double noundef %3, double noundef %4) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_lineto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %7 = tail call ptr @pprintg2(ptr noundef %6, ptr noundef nonnull @.str.37, double noundef %3, double noundef %4) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_curveto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) local_unnamed_addr #0 {
  %10 = fcmp oeq double %3, %1
  %11 = fcmp oeq double %4, %2
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %15 = tail call ptr @pprintg4(ptr noundef %14, ptr noundef nonnull @.str.38, double noundef %5, double noundef %6, double noundef %7, double noundef %8) #7
  br label %27

16:                                               ; preds = %9
  %17 = fcmp oeq double %7, %5
  %18 = fcmp oeq double %8, %6
  %19 = and i1 %17, %18
  %20 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  br i1 %19, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call ptr @pprintg4(ptr noundef %20, ptr noundef nonnull @.str.39, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #7
  br label %27

23:                                               ; preds = %16
  %24 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %25 = tail call ptr @pprintg4(ptr noundef %24, ptr noundef nonnull @.str.40, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #7
  %26 = tail call ptr @pprintg2(ptr noundef %20, ptr noundef %25, double noundef %7, double noundef %8) #7
  br label %27

27:                                               ; preds = %21, %23, %13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @psdf_closepath(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @gdev_vector_stream(ptr noundef %0) #7
  %7 = tail call i32 @pputs(ptr noundef %6, ptr noundef nonnull @.str.41) #7
  ret i32 0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!12 = !{!13, !7, i64 1252}
!13 = !{!"gx_device_psdf_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !14, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !16, i64 144, !16, i64 152, !7, i64 160, !17, i64 168, !18, i64 192, !10, i64 488, !10, i64 496, !8, i64 504, !10, i64 592, !10, i64 600, !10, i64 608, !7, i64 616, !19, i64 624, !8, i64 944, !25, i64 992, !25, i64 1088, !16, i64 1184, !16, i64 1192, !30, i64 1200, !7, i64 1216, !10, i64 1224, !16, i64 1232, !16, i64 1240, !32, i64 1248}
!14 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14}
!15 = !{!"short", !8, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!18 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!19 = !{!"gs_imager_state_s", !10, i64 0, !20, i64 8, !23, i64 80, !7, i64 128, !15, i64 132, !7, i64 136, !21, i64 140, !24, i64 144, !7, i64 160, !7, i64 164, !10, i64 168, !8, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !8, i64 232, !8, i64 264, !10, i64 296, !10, i64 304, !10, i64 312}
!20 = !{!"gx_line_params_s", !21, i64 0, !7, i64 4, !7, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !22, i64 32}
!21 = !{!"float", !8, i64 0}
!22 = !{!"gx_dash_params_s", !10, i64 0, !7, i64 8, !21, i64 12, !7, i64 16, !21, i64 20, !7, i64 24, !7, i64 28, !21, i64 32}
!23 = !{!"gs_matrix_fixed_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !16, i64 24, !16, i64 32, !7, i64 40}
!24 = !{!"gs_fixed_point_s", !16, i64 0, !16, i64 8}
!25 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !26, i64 48, !27, i64 56}
!26 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!27 = !{!"_mask", !28, i64 0, !16, i64 24, !10, i64 32}
!28 = !{!"gs_client_color_s", !29, i64 0, !10, i64 16}
!29 = !{!"gs_paint_color_s", !8, i64 0}
!30 = !{!"gs_point_s", !31, i64 0, !31, i64 8}
!31 = !{!"double", !8, i64 0}
!32 = !{!"psdf_distiller_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !16, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !33, i64 56, !7, i64 104, !7, i64 108, !7, i64 112, !33, i64 120, !33, i64 168, !34, i64 216, !34, i64 232, !7, i64 248, !7, i64 252, !7, i64 256}
!33 = !{!"psdf_image_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !10, i64 24, !7, i64 32, !10, i64 40}
!34 = !{!"gs_param_string_array_s", !10, i64 0, !7, i64 8, !7, i64 12}
!35 = !{!10, !10, i64 0}
!36 = !{!37, !10, i64 0}
!37 = !{!"gs_param_string_s", !10, i64 0, !7, i64 8, !7, i64 12}
!38 = !{!37, !7, i64 8}
!39 = !{!37, !7, i64 12}
!40 = !{!13, !7, i64 1352}
!41 = !{!13, !7, i64 1288}
!42 = !{!13, !7, i64 1292}
!43 = !{!44, !10, i64 0}
!44 = !{!"gs_param_list_s", !10, i64 0}
!45 = !{!46, !10, i64 8}
!46 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!47 = !{!46, !10, i64 48}
!48 = !{!46, !10, i64 24}
!49 = !{!46, !10, i64 80}
!50 = !{!46, !10, i64 16}
!51 = !{!33, !7, i64 16}
!52 = !{!53, !10, i64 8}
!53 = !{!"psdf_image_param_names_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!54 = !{!53, !10, i64 16}
!55 = !{!53, !10, i64 24}
!56 = !{!53, !10, i64 40}
!57 = !{!53, !10, i64 48}
!58 = !{!53, !10, i64 56}
!59 = !{!33, !10, i64 24}
!60 = !{!53, !10, i64 64}
!61 = !{!53, !10, i64 72}
!62 = !{!46, !10, i64 120}
!63 = !{i64 0, i64 4, !64, i64 4, i64 4, !64, i64 8, i64 4, !64, i64 16, i64 8, !65, i64 24, i64 4, !64, i64 28, i64 4, !64, i64 32, i64 4, !64, i64 36, i64 4, !64, i64 40, i64 4, !64, i64 44, i64 4, !64, i64 48, i64 4, !64, i64 56, i64 4, !64, i64 60, i64 4, !64, i64 64, i64 4, !64, i64 68, i64 4, !64, i64 72, i64 4, !64, i64 76, i64 4, !64, i64 80, i64 8, !35, i64 88, i64 4, !64, i64 96, i64 8, !35, i64 104, i64 4, !64, i64 108, i64 4, !64, i64 112, i64 4, !64, i64 120, i64 4, !64, i64 124, i64 4, !64, i64 128, i64 4, !64, i64 132, i64 4, !64, i64 136, i64 4, !64, i64 140, i64 4, !64, i64 144, i64 8, !35, i64 152, i64 4, !64, i64 160, i64 8, !35, i64 168, i64 4, !64, i64 172, i64 4, !64, i64 176, i64 4, !64, i64 180, i64 4, !64, i64 184, i64 4, !64, i64 188, i64 4, !64, i64 192, i64 8, !35, i64 200, i64 4, !64, i64 208, i64 8, !35, i64 216, i64 8, !35, i64 224, i64 4, !64, i64 228, i64 4, !64, i64 232, i64 8, !35, i64 240, i64 4, !64, i64 244, i64 4, !64, i64 248, i64 4, !64, i64 252, i64 4, !64, i64 256, i64 4, !64}
!64 = !{!7, !7, i64 0}
!65 = !{!16, !16, i64 0}
!66 = !{!32, !7, i64 4}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!32, !7, i64 40}
!70 = !{!32, !7, i64 44}
!71 = !{!32, !7, i64 104}
!72 = !{!46, !10, i64 40}
!73 = !{!74, !10, i64 0}
!74 = !{!"psdf_image_filter_name_s", !10, i64 0, !10, i64 8}
!75 = distinct !{!75, !68}
!76 = !{!74, !10, i64 8}
!77 = !{!33, !10, i64 40}
!78 = !{!33, !7, i64 32}
!79 = !{!33, !7, i64 8}
!80 = !{!25, !10, i64 0}
!81 = !{!8, !8, i64 0}
!82 = !{!21, !21, i64 0}
!83 = distinct !{!83, !68}
!84 = !{i32 -15, i32 1}
!85 = !{!86, !10, i64 496}
!86 = !{!"gx_device_vector_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !14, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !16, i64 144, !16, i64 152, !7, i64 160, !17, i64 168, !18, i64 192, !10, i64 488, !10, i64 496, !8, i64 504, !10, i64 592, !10, i64 600, !10, i64 608, !7, i64 616, !19, i64 624, !8, i64 944, !25, i64 992, !25, i64 1088, !16, i64 1184, !16, i64 1192, !30, i64 1200, !7, i64 1216, !10, i64 1224, !16, i64 1232, !16, i64 1240}
!87 = !{!88, !10, i64 96}
!88 = !{!"gx_device_vector_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136}
!89 = !{!88, !10, i64 136}
