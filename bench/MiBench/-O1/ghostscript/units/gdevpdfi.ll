; ModuleID = 'gdevpdfi.c'
source_filename = "gdevpdfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pdf_image_names_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_color_space_s = type { ptr, %union.anon }
%union.anon = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.gs_indexed_params_s }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.1, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.pdf_image_writer_s = type { %struct.pdf_binary_writer_s, ptr, ptr, ptr, i64, i64 }
%struct.pdf_binary_writer_s = type { ptr, %struct.stream_s, [256 x i8], %struct.stream_s, [256 x i8] }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_CFE_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_device_pdf_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, [81 x i8], ptr, ptr, ptr, i32, %struct.gs_imager_state_s, [11 x float], %struct.gx_device_color_s, %struct.gx_device_color_s, i64, i64, %struct.gs_point_s, i32, ptr, i64, i64, %struct.psdf_distiller_params_s, float, i32, i64, i32, [81 x i8], ptr, i64, i64, i64, i64, i64, i32, [300 x i64], i32, i32, i64, i64, i32, float, %struct.gx_line_params_s, ptr, i32, i32, [5 x ptr], ptr, ptr, %struct.gs_string_s, %struct.gs_string_s, %struct.gs_string_s, [8 x %struct.pdf_outline_level_s], i32, i32, i32, ptr, ptr, %struct.pdf_text_state_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
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
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.gs_string_s }
%struct.pdf_text_state_s = type { float, ptr, float, float, float }
%struct.pdf_resource_s = type { ptr, ptr, i64, i64 }
%struct.stream_state_s = type { ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pdf_image_enum_s = type { ptr, ptr, i32, i32, i32, i32, %struct.pdf_image_writer_s }

@.str = private unnamed_addr constant [3 x i8] c"rg\00", align 1
@gs_color_space_type_Indexed = external constant %struct.gs_color_space_type_s, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"<< /K -1 /Columns %d /BlackIs1 true >>\00", align 1
@s_CFE_template = external constant %struct.stream_template_s, align 8
@gs_color_space_type_DeviceRGB = external constant %struct.gs_color_space_type_s, align 8
@gs_color_space_type_DeviceCMYK = external constant %struct.gs_color_space_type_s, align 8
@gs_color_space_type_DeviceGray = external constant %struct.gs_color_space_type_s, align 8
@gx_dc_type_pure = external local_unnamed_addr global ptr, align 8
@st_pdf_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 1056, ptr @.str.64, ptr null, ptr null, ptr @pdf_image_enum_enum_ptrs, ptr @pdf_image_enum_reloc_ptrs, ptr null }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"pdf_begin_image\00", align 1
@image_flip_procs = external local_unnamed_addr global [2 x [13 x ptr]], align 16
@.str.3 = private unnamed_addr constant [14 x i8] c"pdf_end_image\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"BI\0A\00", align 1
@image_names_short = internal constant %struct.pdf_image_names_s { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.23, ptr @.str.24 }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"ID \00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c" /Subtype /Image /Length %ld 0 R\0A\00", align 1
@image_names_full = internal constant %struct.pdf_image_names_s { ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.12, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41 }, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c">>\0Astream\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"/A85\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"/BPC\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"/CC\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"/CG\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"/CalRGB\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"/CCF\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"/CS\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"/D\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"/DP\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"/CMYK\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"/G\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"/RGB\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"/F\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"/H\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"/IM\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"/I\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"/W\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"/ASCII85Decode\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"/BitsPerComponent\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"/CalCMYK\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"/CalGray\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"/CCITTFaxDecode\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"/ColorSpace\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"/Decode\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"/DecodeParms\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"/DeviceCMYK\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"/DeviceGray\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"/DeviceRGB\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"/Filter\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"/Height\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"/ImageMask\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"/Indexed\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"/Interpolate\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"/Width\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"q\0A%g %g %g %g %g %g cm\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"%s true\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"[%s << /WhitePoint [1 1 1] >>]\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c" [%s\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c" %d\0A<\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c">\0A]\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c" %s true\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c" %s [%s]\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c" %s [%s %s]\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c" %s [null %s]\00", align 1
@filter_write_procs = internal constant %struct.stream_procs { ptr @s_std_noavailable, ptr @s_std_noseek, ptr @s_std_write_reset, ptr @s_std_write_flush, ptr @s_filter_close, ptr null, ptr null }, align 8
@s_A85E_template = external constant %struct.stream_template_s, align 8
@.str.59 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"endstream\0A\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"\0AEI\0AQ\0A\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"/R%ld Do\0AQ\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"pdf_image_enum\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_pdf_copy_mono(ptr noundef %0, ptr noundef %1, i32 %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) local_unnamed_addr #0 {
  %12 = alloca %struct.gs_color_space_s, align 8
  %13 = alloca [6 x i8], align 1
  %14 = alloca %struct.gs_image_s, align 8
  %15 = alloca %struct.pdf_image_writer_s, align 8
  %16 = alloca [80 x i8], align 16
  %17 = alloca %struct.stream_CFE_state_s, align 8
  %18 = alloca i32, align 4
  %19 = tail call i32 @pdf_open_page(ptr noundef %0, i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %15) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %272, label %21

21:                                               ; preds = %11
  %22 = icmp slt i32 %7, 1
  %23 = icmp slt i32 %8, 1
  %24 = or i1 %22, %23
  br i1 %24, label %272, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @pdf_put_clip_path(ptr noundef %0, ptr noundef null) #6
  %27 = icmp eq i64 %9, -1
  %28 = icmp eq i64 %10, -1
  br i1 %27, label %29, label %73

29:                                               ; preds = %25
  br i1 %28, label %272, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  %32 = tail call i32 @pdf_set_color(ptr noundef %0, i64 noundef %10, ptr noundef nonnull %31, ptr noundef nonnull @.str) #6
  %33 = icmp eq i64 %4, 0
  br i1 %33, label %72, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @pdf_find_resource_by_gs_id(ptr noundef %0, i32 noundef 4, i64 noundef %4) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  call void @gs_image_t_init_mask(ptr noundef nonnull %14, i32 noundef 1) #6
  store i32 %7, ptr %14, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 1
  store i32 %8, ptr %38, align 4, !tbaa !13
  %39 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2
  %40 = sitofp i32 %7 to float
  store float %40, ptr %39, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 1
  store float 0.000000e+00, ptr %41, align 4, !tbaa !15
  %42 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 2
  store float 0.000000e+00, ptr %42, align 8, !tbaa !16
  %43 = sub nsw i32 0, %8
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 3
  store float %44, ptr %45, align 4, !tbaa !17
  %46 = sitofp i32 %5 to float
  %47 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 4
  store float %46, ptr %47, align 8, !tbaa !18
  %48 = add nsw i32 %8, %6
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 5
  store float %49, ptr %50, align 4, !tbaa !19
  %51 = call fastcc i32 @pdf_begin_write_image(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 0)
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %15, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !20
  %56 = getelementptr inbounds %struct.pdf_resource_s, ptr %55, i64 0, i32 2
  store i64 %4, ptr %56, align 8, !tbaa !28
  br label %182

57:                                               ; preds = %37
  %58 = icmp eq ptr %35, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %34, %57
  %60 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2
  %61 = sitofp i32 %7 to float
  store float %61, ptr %60, align 8, !tbaa !14
  %62 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 1
  store float 0.000000e+00, ptr %62, align 4, !tbaa !15
  %63 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 2
  store float 0.000000e+00, ptr %63, align 8, !tbaa !16
  %64 = sub nsw i32 0, %8
  %65 = sitofp i32 %64 to float
  %66 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 3
  store float %65, ptr %66, align 4, !tbaa !17
  %67 = sitofp i32 %5 to float
  %68 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 4
  store float %67, ptr %68, align 8, !tbaa !18
  %69 = add nsw i32 %8, %6
  %70 = sitofp i32 %69 to float
  %71 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 5
  store float %70, ptr %71, align 4, !tbaa !19
  br label %268

72:                                               ; preds = %57, %30
  call void @gs_image_t_init_mask(ptr noundef nonnull %14, i32 noundef 1) #6
  br label %111

73:                                               ; preds = %25
  br i1 %28, label %74, label %77

74:                                               ; preds = %73
  call void @gs_image_t_init_mask(ptr noundef nonnull %14, i32 noundef 0) #6
  %75 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  %76 = call i32 @pdf_set_color(ptr noundef %0, i64 noundef %9, ptr noundef nonnull %75, ptr noundef nonnull @.str) #6
  br label %111

77:                                               ; preds = %73
  %78 = icmp eq i64 %9, 0
  %79 = icmp eq i64 %10, 16777215
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  call void @gs_image_t_init_gray(ptr noundef nonnull %14) #6
  br label %111

82:                                               ; preds = %77
  %83 = icmp eq i64 %9, 16777215
  %84 = icmp eq i64 %10, 0
  %85 = and i1 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  call void @gs_image_t_init_gray(ptr noundef nonnull %14) #6
  %87 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 5
  store float 1.000000e+00, ptr %87, align 8, !tbaa !30
  %88 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 5, i64 1
  store float 0.000000e+00, ptr %88, align 4, !tbaa !30
  br label %111

89:                                               ; preds = %82
  call void @gs_image_t_init_color(ptr noundef nonnull %14) #6
  store ptr @gs_color_space_type_Indexed, ptr %12, align 8, !tbaa !31
  %90 = getelementptr inbounds %struct.gs_color_space_s, ptr %12, i64 0, i32 1, i32 0, i32 1, i32 1
  store i32 1, ptr %90, align 8, !tbaa !33
  %91 = lshr i64 %9, 16
  %92 = trunc i64 %91 to i8
  store i8 %92, ptr %13, align 1, !tbaa !33
  %93 = lshr i64 %9, 8
  %94 = trunc i64 %93 to i8
  %95 = getelementptr inbounds [6 x i8], ptr %13, i64 0, i64 1
  store i8 %94, ptr %95, align 1, !tbaa !33
  %96 = trunc i64 %9 to i8
  %97 = getelementptr inbounds [6 x i8], ptr %13, i64 0, i64 2
  store i8 %96, ptr %97, align 1, !tbaa !33
  %98 = lshr i64 %10, 16
  %99 = trunc i64 %98 to i8
  %100 = getelementptr inbounds [6 x i8], ptr %13, i64 0, i64 3
  store i8 %99, ptr %100, align 1, !tbaa !33
  %101 = lshr i64 %10, 8
  %102 = trunc i64 %101 to i8
  %103 = getelementptr inbounds [6 x i8], ptr %13, i64 0, i64 4
  store i8 %102, ptr %103, align 1, !tbaa !33
  %104 = trunc i64 %10 to i8
  %105 = getelementptr inbounds [6 x i8], ptr %13, i64 0, i64 5
  store i8 %104, ptr %105, align 1, !tbaa !33
  %106 = getelementptr inbounds %struct.gs_color_space_s, ptr %12, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  store ptr %13, ptr %106, align 8, !tbaa !33
  %107 = getelementptr inbounds %struct.gs_color_space_s, ptr %12, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1
  store i32 6, ptr %107, align 8, !tbaa !33
  %108 = getelementptr inbounds %struct.gs_color_space_s, ptr %12, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  store i32 0, ptr %108, align 8, !tbaa !33
  %109 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 3
  store i32 1, ptr %109, align 8, !tbaa !34
  %110 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 4
  store ptr %12, ptr %110, align 8, !tbaa !35
  br label %111

111:                                              ; preds = %74, %86, %89, %81, %72
  store i32 %7, ptr %14, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 1
  store i32 %8, ptr %112, align 4, !tbaa !13
  %113 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2
  %114 = sitofp i32 %7 to float
  store float %114, ptr %113, align 8, !tbaa !14
  %115 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 1
  store float 0.000000e+00, ptr %115, align 4, !tbaa !15
  %116 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 2
  store float 0.000000e+00, ptr %116, align 8, !tbaa !16
  %117 = sub nsw i32 0, %8
  %118 = sitofp i32 %117 to float
  %119 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 3
  store float %118, ptr %119, align 4, !tbaa !17
  %120 = sitofp i32 %5 to float
  %121 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 4
  store float %120, ptr %121, align 8, !tbaa !18
  %122 = add nsw i32 %8, %6
  %123 = sitofp i32 %122 to float
  %124 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 5
  store float %123, ptr %124, align 4, !tbaa !19
  %125 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %126 = load ptr, ptr %125, align 8, !tbaa !36
  %127 = fpext float %114 to double
  %128 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %129 = load double, ptr %128, align 8, !tbaa !57
  %130 = fdiv double %127, %129
  %131 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 1
  %132 = load float, ptr %131, align 4, !tbaa !15
  %133 = fpext float %132 to double
  %134 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %135 = load double, ptr %134, align 8, !tbaa !58
  %136 = fdiv double %133, %135
  %137 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 2
  %138 = load float, ptr %137, align 8, !tbaa !16
  %139 = fpext float %138 to double
  %140 = fdiv double %139, %129
  %141 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 3
  %142 = load float, ptr %141, align 4, !tbaa !17
  %143 = fpext float %142 to double
  %144 = fdiv double %143, %135
  %145 = call ptr @pprintg4(ptr noundef %126, ptr noundef nonnull @.str.42, double noundef %130, double noundef %136, double noundef %140, double noundef %144) #6
  %146 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 4
  %147 = load float, ptr %146, align 8, !tbaa !18
  %148 = fpext float %147 to double
  %149 = load double, ptr %128, align 8, !tbaa !57
  %150 = fdiv double %148, %149
  %151 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2, i32 5
  %152 = load float, ptr %151, align 4, !tbaa !19
  %153 = fpext float %152 to double
  %154 = load double, ptr %134, align 8, !tbaa !58
  %155 = fdiv double %153, %154
  %156 = call ptr @pprintg2(ptr noundef %126, ptr noundef %145, double noundef %150, double noundef %155) #6
  %157 = add nuw nsw i32 %7, 7
  %158 = ashr i32 %157, 3
  %159 = sext i32 %158 to i64
  %160 = zext nneg i32 %8 to i64
  %161 = mul nsw i64 %159, %160
  %162 = icmp ugt i64 %161, 4000
  %163 = load ptr, ptr %125, align 8, !tbaa !36
  %164 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %15, i64 0, i32 3
  br i1 %162, label %167, label %165

165:                                              ; preds = %111
  store ptr null, ptr %164, align 8, !tbaa !20
  %166 = call i32 @pputs(ptr noundef %163, ptr noundef nonnull @.str.4) #6
  br label %174

167:                                              ; preds = %111
  %168 = call i32 @pdf_begin_resource(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %164) #6
  %169 = icmp sgt i32 %168, -1
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = call i64 @pdf_obj_ref(ptr noundef %0) #6
  %172 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %15, i64 0, i32 4
  store i64 %171, ptr %172, align 8, !tbaa !59
  %173 = call ptr @pprintld1(ptr noundef %163, ptr noundef nonnull @.str.6, i64 noundef %171) #6
  br label %174

174:                                              ; preds = %170, %165
  %175 = phi ptr [ @image_names_short, %165 ], [ @image_names_full, %170 ]
  %176 = phi ptr [ @.str.5, %165 ], [ @.str.7, %170 ]
  %177 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %15, i64 0, i32 1
  store ptr %175, ptr %177, align 8, !tbaa !60
  %178 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %15, i64 0, i32 2
  store ptr %176, ptr %178, align 8, !tbaa !61
  br label %179

179:                                              ; preds = %174, %167
  %180 = phi i32 [ %168, %167 ], [ 0, %174 ]
  %181 = icmp sgt i32 %180, -1
  br i1 %181, label %182, label %272

182:                                              ; preds = %179, %53
  %183 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %15, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %16) #6
  %185 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7) #6
  %186 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %15, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !60
  %188 = getelementptr inbounds %struct.pdf_image_names_s, ptr %187, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !62
  %190 = call fastcc i32 @pdf_begin_image_data(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef %189, ptr noundef nonnull %16), !range !64
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %17) #6
  store ptr @s_CFE_template, ptr %17, align 8, !tbaa !65
  %191 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFE_template, i64 0, i32 6), align 8, !tbaa !67
  call void %191(ptr noundef nonnull %17) #6
  %192 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %17, i64 0, i32 7
  store i32 -1, ptr %192, align 8, !tbaa !69
  %193 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %17, i64 0, i32 10
  store i32 %7, ptr %193, align 4, !tbaa !70
  %194 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %17, i64 0, i32 11
  store i32 %8, ptr %194, align 8, !tbaa !71
  %195 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %17, i64 0, i32 13
  store i32 1, ptr %195, align 8, !tbaa !72
  %196 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %197 = load ptr, ptr %196, align 8, !tbaa !36
  %198 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 44
  %199 = load i32, ptr %198, align 8, !tbaa !73
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %182
  %202 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %15, i64 0, i32 1
  %203 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %15, i64 0, i32 2
  call void @s_std_init(ptr noundef nonnull %202, ptr noundef nonnull %203, i32 noundef 256, ptr noundef nonnull @filter_write_procs, i32 noundef 2) #6
  store ptr @s_A85E_template, ptr %202, align 8, !tbaa !74
  %204 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_A85E_template, i64 0, i32 2), align 8, !tbaa !75
  %205 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %15, i64 0, i32 1, i32 12, i32 5
  store ptr %204, ptr %205, align 8, !tbaa !76
  %206 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %15, i64 0, i32 1, i32 13
  store ptr %197, ptr %206, align 8, !tbaa !77
  br label %207

207:                                              ; preds = %201, %182
  %208 = phi ptr [ %197, %182 ], [ %202, %201 ]
  %209 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %15, i64 0, i32 3
  %210 = load ptr, ptr %17, align 8, !tbaa !78
  %211 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %15, i64 0, i32 4
  call void @s_std_init(ptr noundef nonnull %209, ptr noundef nonnull %211, i32 noundef 256, ptr noundef nonnull @filter_write_procs, i32 noundef 2) #6
  %212 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %213 = load ptr, ptr %212, align 8, !tbaa !80
  %214 = getelementptr inbounds %struct.stream_state_s, ptr %17, i64 0, i32 1
  store ptr %213, ptr %214, align 8, !tbaa !81
  %215 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %15, i64 0, i32 3, i32 16
  store ptr %17, ptr %215, align 8, !tbaa !82
  %216 = getelementptr inbounds %struct.stream_template_s, ptr %210, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !75
  %218 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %15, i64 0, i32 3, i32 12, i32 5
  store ptr %217, ptr %218, align 8, !tbaa !76
  %219 = getelementptr inbounds %struct.stream_template_s, ptr %210, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !83
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %207
  %223 = call i32 %220(ptr noundef nonnull %17) #6
  br label %224

224:                                              ; preds = %207, %222
  %225 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %15, i64 0, i32 3, i32 13
  store ptr %208, ptr %225, align 8, !tbaa !77
  store ptr %209, ptr %15, align 8, !tbaa !84
  %226 = icmp sgt i32 %8, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %224
  %228 = add nuw nsw i32 %7, 7
  %229 = ashr i32 %228, 3
  %230 = sext i32 %3 to i64
  %231 = zext nneg i32 %8 to i64
  br label %232

232:                                              ; preds = %227, %232
  %233 = phi i64 [ 0, %227 ], [ %238, %232 ]
  %234 = mul nsw i64 %233, %230
  %235 = getelementptr inbounds i8, ptr %1, i64 %234
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #6
  %236 = load ptr, ptr %15, align 8, !tbaa !85
  %237 = call i32 @sputs(ptr noundef %236, ptr noundef %235, i32 noundef %229, ptr noundef nonnull %18) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #6
  %238 = add nuw nsw i64 %233, 1
  %239 = icmp eq i64 %238, %231
  br i1 %239, label %240, label %232, !llvm.loop !86

240:                                              ; preds = %232, %224
  %241 = load ptr, ptr %15, align 8, !tbaa !84
  %242 = load ptr, ptr %196, align 8, !tbaa !36
  %243 = icmp eq ptr %241, %242
  br i1 %243, label %261, label %244

244:                                              ; preds = %240, %258
  %245 = phi ptr [ %247, %258 ], [ %241, %240 ]
  %246 = getelementptr inbounds %struct.stream_s, ptr %245, i64 0, i32 13
  %247 = load ptr, ptr %246, align 8, !tbaa !77
  %248 = getelementptr inbounds %struct.stream_s, ptr %245, i64 0, i32 16
  %249 = load ptr, ptr %248, align 8, !tbaa !82
  %250 = load ptr, ptr %249, align 8, !tbaa !78
  %251 = getelementptr inbounds %struct.stream_template_s, ptr %250, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !88
  %253 = getelementptr inbounds %struct.stream_s, ptr %245, i64 0, i32 12, i32 4
  %254 = load ptr, ptr %253, align 8, !tbaa !89
  %255 = call i32 %254(ptr noundef %245) #6
  %256 = icmp eq ptr %252, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %244
  call void %252(ptr noundef nonnull %249) #6
  br label %258

258:                                              ; preds = %257, %244
  %259 = load ptr, ptr %196, align 8, !tbaa !36
  %260 = icmp eq ptr %247, %259
  br i1 %260, label %261, label %244, !llvm.loop !90

261:                                              ; preds = %258, %240
  %262 = phi ptr [ %241, %240 ], [ %247, %258 ]
  %263 = getelementptr inbounds %struct.stream_s, ptr %262, i64 0, i32 12, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !91
  %265 = call i32 %264(ptr noundef %262) #6
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %17) #6
  %266 = call fastcc i32 @pdf_end_write_image(ptr noundef %0, ptr noundef nonnull %15), !range !92
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %261, %59
  %269 = phi ptr [ %184, %261 ], [ %35, %59 ]
  %270 = getelementptr inbounds %struct.gs_image_s, ptr %14, i64 0, i32 2
  %271 = call fastcc i32 @pdf_do_image(ptr noundef %0, ptr noundef %269, ptr noundef nonnull %270), !range !64
  br label %272

272:                                              ; preds = %261, %29, %21, %11, %179, %268
  %273 = phi i32 [ %271, %268 ], [ %180, %179 ], [ %19, %11 ], [ 0, %21 ], [ 0, %29 ], [ 0, %261 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #6
  ret i32 %273
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @pdf_open_page(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pdf_put_clip_path(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pdf_set_color(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pdf_find_resource_by_gs_id(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @gs_image_t_init_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pdf_begin_write_image(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = icmp eq i32 %2, 0
  %7 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 3
  br i1 %6, label %10, label %8

8:                                                ; preds = %3
  store ptr null, ptr %7, align 8, !tbaa !20
  %9 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.4) #6
  br label %17

10:                                               ; preds = %3
  %11 = tail call i32 @pdf_begin_resource(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %7) #6
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = tail call i64 @pdf_obj_ref(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 4
  store i64 %14, ptr %15, align 8, !tbaa !59
  %16 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.6, i64 noundef %14) #6
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi ptr [ @image_names_short, %8 ], [ @image_names_full, %13 ]
  %19 = phi ptr [ @.str.5, %8 ], [ @.str.7, %13 ]
  %20 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 1
  store ptr %18, ptr %20, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 2
  store ptr %19, ptr %21, align 8, !tbaa !61
  br label %22

22:                                               ; preds = %17, %10
  %23 = phi i32 [ %11, %10 ], [ 0, %17 ]
  ret i32 %23
}

declare void @gs_image_t_init_gray(ptr noundef) local_unnamed_addr #2

declare void @gs_image_t_init_color(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pdf_begin_image_data(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [50 x i8], align 16
  %8 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %7) #6
  %14 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !93
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 58
  br i1 %16, label %24, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = tail call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.44, ptr noundef %20) #6
  %22 = load i32, ptr %17, align 8, !tbaa !95
  %23 = or i32 %22, 1
  store i32 %23, ptr %17, align 8, !tbaa !95
  br label %119

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = tail call i32 @pputs(ptr noundef %9, ptr noundef %26) #6
  %28 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 15
  %29 = getelementptr inbounds %struct.gs_color_space_s, ptr %13, i64 0, i32 1
  %30 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %31 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  br label %32

32:                                               ; preds = %68, %24
  %33 = phi ptr [ null, %24 ], [ %6, %68 ]
  %34 = phi ptr [ %13, %24 ], [ %29, %68 ]
  %35 = phi ptr [ null, %24 ], [ %29, %68 ]
  %36 = tail call i32 @gs_color_space_get_index(ptr noundef %34) #6
  switch i32 %36, label %116 [
    i32 0, label %37
    i32 1, label %42
    i32 2, label %47
    i32 6, label %52
    i32 5, label %60
    i32 4, label %60
    i32 3, label %64
    i32 8, label %68
  ]

37:                                               ; preds = %32
  %38 = load i32, ptr %17, align 8, !tbaa !95
  %39 = or i32 %38, 1
  store i32 %39, ptr %17, align 8, !tbaa !95
  %40 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !97
  br label %77

42:                                               ; preds = %32
  %43 = load i32, ptr %17, align 8, !tbaa !95
  %44 = or i32 %43, 2
  store i32 %44, ptr %17, align 8, !tbaa !95
  %45 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !98
  br label %77

47:                                               ; preds = %32
  %48 = load i32, ptr %17, align 8, !tbaa !95
  %49 = or i32 %48, 2
  store i32 %49, ptr %17, align 8, !tbaa !95
  %50 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !99
  br label %77

52:                                               ; preds = %32
  %53 = load i32, ptr %17, align 8, !tbaa !95
  %54 = or i32 %53, 1
  store i32 %54, ptr %17, align 8, !tbaa !95
  %55 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 3
  br label %56

56:                                               ; preds = %64, %60, %52
  %57 = phi ptr [ %67, %64 ], [ %63, %60 ], [ %55, %52 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !100
  %59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef %58) #6
  br label %77

60:                                               ; preds = %32, %32
  %61 = load i32, ptr %17, align 8, !tbaa !95
  %62 = or i32 %61, 2
  store i32 %62, ptr %17, align 8, !tbaa !95
  %63 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 4
  br label %56

64:                                               ; preds = %32
  %65 = load i32, ptr %17, align 8, !tbaa !95
  %66 = or i32 %65, 2
  store i32 %66, ptr %17, align 8, !tbaa !95
  %67 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 2
  br label %56

68:                                               ; preds = %32
  %69 = load i32, ptr %17, align 8, !tbaa !95
  %70 = or i32 %69, 4
  store i32 %70, ptr %17, align 8, !tbaa !95
  %71 = load ptr, ptr %28, align 8, !tbaa !101
  %72 = tail call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.46, ptr noundef %71) #6
  store float 0.000000e+00, ptr %6, align 4, !tbaa !30
  %73 = load i32, ptr %30, align 8, !tbaa !34
  %74 = shl nsw i32 -1, %73
  %75 = xor i32 %74, -1
  %76 = sitofp i32 %75 to float
  store float %76, ptr %31, align 4, !tbaa !30
  br label %32

77:                                               ; preds = %56, %47, %42, %37
  %78 = phi ptr [ %7, %56 ], [ %51, %47 ], [ %46, %42 ], [ %41, %37 ]
  %79 = call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.47, ptr noundef %78) #6
  %80 = call i32 @gs_color_space_num_components(ptr noundef %34) #6
  %81 = icmp eq ptr %35, null
  br i1 %81, label %116, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.gs_indexed_params_s, ptr %35, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !102
  %85 = call ptr @pprintd1(ptr noundef %9, ptr noundef nonnull @.str.49, i32 noundef %84) #6
  %86 = load i32, ptr %83, align 8, !tbaa !102
  %87 = add nsw i32 %86, 1
  %88 = mul nsw i32 %87, %80
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.gs_indexed_params_s, ptr %35, i64 0, i32 2
  br label %92

92:                                               ; preds = %92, %90
  %93 = phi i64 [ 0, %90 ], [ %108, %92 ]
  %94 = load ptr, ptr %91, align 8, !tbaa !33
  %95 = getelementptr inbounds i8, ptr %94, i64 %93
  %96 = load i8, ptr %95, align 1, !tbaa !33
  %97 = zext i8 %96 to i32
  %98 = lshr i32 %97, 4
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr @.str.48, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !33
  %102 = call i32 @spputc(ptr noundef %9, i8 noundef zeroext %101) #6
  %103 = and i32 %97, 15
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr @.str.48, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !33
  %107 = call i32 @spputc(ptr noundef %9, i8 noundef zeroext %106) #6
  %108 = add nuw nsw i64 %93, 1
  %109 = load i32, ptr %83, align 8, !tbaa !102
  %110 = add nsw i32 %109, 1
  %111 = mul nsw i32 %110, %80
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %108, %112
  br i1 %113, label %92, label %114, !llvm.loop !105

114:                                              ; preds = %92, %82
  %115 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.50) #6
  br label %116

116:                                              ; preds = %32, %114, %77
  %117 = phi i32 [ 1, %114 ], [ %80, %77 ], [ 0, %32 ]
  %118 = phi i1 [ true, %114 ], [ true, %77 ], [ false, %32 ]
  br i1 %118, label %119, label %215

119:                                              ; preds = %116, %18
  %120 = phi i32 [ 1, %18 ], [ %117, %116 ]
  %121 = phi ptr [ null, %18 ], [ %33, %116 ]
  %122 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !106
  %124 = call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.47, ptr noundef %123) #6
  %125 = load i32, ptr %2, align 8, !tbaa !5
  %126 = call ptr @pprintd1(ptr noundef %9, ptr noundef nonnull @.str.51, i32 noundef %125) #6
  %127 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 13
  %128 = load ptr, ptr %127, align 8, !tbaa !107
  %129 = call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.47, ptr noundef %128) #6
  %130 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !13
  %132 = call ptr @pprintd1(ptr noundef %9, ptr noundef nonnull @.str.51, i32 noundef %131) #6
  %133 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !108
  %135 = call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.47, ptr noundef %134) #6
  %136 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %137 = load i32, ptr %136, align 8, !tbaa !34
  %138 = call ptr @pprintd1(ptr noundef %9, ptr noundef nonnull @.str.51, i32 noundef %137) #6
  %139 = icmp sgt i32 %120, 0
  br i1 %139, label %140, label %178

140:                                              ; preds = %119
  %141 = shl nuw i32 %120, 1
  %142 = icmp eq ptr %121, null
  %143 = call i32 @llvm.smax.i32(i32 %141, i32 1)
  %144 = zext nneg i32 %143 to i64
  br label %148

145:                                              ; preds = %159
  %146 = add nuw nsw i64 %149, 1
  %147 = icmp eq i64 %146, %144
  br i1 %147, label %178, label %148, !llvm.loop !109

148:                                              ; preds = %145, %140
  %149 = phi i64 [ 0, %140 ], [ %146, %145 ]
  %150 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 %149
  %151 = load float, ptr %150, align 4, !tbaa !30
  br i1 %142, label %155, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds float, ptr %121, i64 %149
  %154 = load float, ptr %153, align 4, !tbaa !30
  br label %159

155:                                              ; preds = %148
  %156 = trunc i64 %149 to i32
  %157 = and i32 %156, 1
  %158 = sitofp i32 %157 to float
  br label %159

159:                                              ; preds = %155, %152
  %160 = phi float [ %154, %152 ], [ %158, %155 ]
  %161 = fcmp une float %151, %160
  br i1 %161, label %162, label %145

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 7
  %164 = load ptr, ptr %163, align 8, !tbaa !110
  %165 = call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.52, ptr noundef %164) #6
  br label %166

166:                                              ; preds = %166, %162
  %167 = phi i64 [ 0, %162 ], [ %174, %166 ]
  %168 = phi i8 [ 91, %162 ], [ 32, %166 ]
  %169 = call i32 @spputc(ptr noundef %9, i8 noundef zeroext %168) #6
  %170 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 %167
  %171 = load float, ptr %170, align 4, !tbaa !30
  %172 = fpext float %171 to double
  %173 = call ptr @pprintg1(ptr noundef %9, ptr noundef nonnull @.str.53, double noundef %172) #6
  %174 = add nuw nsw i64 %167, 1
  %175 = icmp eq i64 %174, %144
  br i1 %175, label %176, label %166, !llvm.loop !111

176:                                              ; preds = %166
  %177 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.54) #6
  br label %178

178:                                              ; preds = %145, %176, %119
  %179 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 6
  %180 = load i32, ptr %179, align 8, !tbaa !112
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 16
  %184 = load ptr, ptr %183, align 8, !tbaa !113
  %185 = call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.55, ptr noundef %184) #6
  br label %186

186:                                              ; preds = %182, %178
  %187 = icmp eq ptr %3, null
  %188 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 44
  %189 = load i32, ptr %188, align 8, !tbaa !73
  %190 = icmp eq i32 %189, 0
  br i1 %187, label %209, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 12
  %193 = load ptr, ptr %192, align 8, !tbaa !114
  br i1 %190, label %196, label %194

194:                                              ; preds = %191
  %195 = call ptr @pprints2(ptr noundef %9, ptr noundef nonnull @.str.56, ptr noundef %193, ptr noundef nonnull %3) #6
  br label %200

196:                                              ; preds = %191
  %197 = call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.57, ptr noundef %193) #6
  %198 = load ptr, ptr %11, align 8, !tbaa !115
  %199 = call ptr @pprints2(ptr noundef %9, ptr noundef %197, ptr noundef %198, ptr noundef nonnull %3) #6
  br label %200

200:                                              ; preds = %196, %194
  %201 = icmp eq ptr %4, null
  br i1 %201, label %215, label %202

202:                                              ; preds = %200
  %203 = load i32, ptr %188, align 8, !tbaa !73
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, ptr @.str.58, ptr @.str.56
  %206 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 8
  %207 = load ptr, ptr %206, align 8, !tbaa !116
  %208 = call ptr @pprints2(ptr noundef %9, ptr noundef nonnull %205, ptr noundef %207, ptr noundef nonnull %4) #6
  br label %215

209:                                              ; preds = %186
  br i1 %190, label %210, label %215

210:                                              ; preds = %209
  %211 = getelementptr inbounds %struct.pdf_image_names_s, ptr %11, i64 0, i32 12
  %212 = load ptr, ptr %211, align 8, !tbaa !114
  %213 = load ptr, ptr %11, align 8, !tbaa !115
  %214 = call ptr @pprints2(ptr noundef %9, ptr noundef nonnull @.str.56, ptr noundef %212, ptr noundef %213) #6
  br label %215

215:                                              ; preds = %116, %200, %202, %209, %210
  %216 = phi i1 [ true, %116 ], [ false, %209 ], [ false, %210 ], [ false, %200 ], [ false, %202 ]
  %217 = phi i32 [ -15, %116 ], [ 0, %209 ], [ 0, %210 ], [ 0, %200 ], [ 0, %202 ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br i1 %216, label %224, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !61
  %221 = call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef %220) #6
  %222 = call i64 @stell(ptr noundef %9) #6
  %223 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 5
  store i64 %222, ptr %223, align 8, !tbaa !117
  br label %224

224:                                              ; preds = %215, %218
  %225 = phi i32 [ 0, %218 ], [ %217, %215 ]
  ret i32 %225
}

declare i32 @sputs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pdf_end_write_image(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.59) #6
  %10 = tail call i64 @stell(ptr noundef %4) #6
  %11 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !117
  %13 = sub nsw i64 %10, %12
  %14 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.60) #6
  %15 = tail call i32 @pdf_end_resource(ptr noundef %0) #6
  %16 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %1, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !59
  %18 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %17) #6
  %19 = tail call ptr @pprintld1(ptr noundef %4, ptr noundef nonnull @.str.61, i64 noundef %13) #6
  %20 = tail call i32 @pdf_end_obj(ptr noundef %0) #6
  br label %23

21:                                               ; preds = %2
  %22 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.62) #6
  br label %23

23:                                               ; preds = %21, %8
  %24 = phi i32 [ 0, %8 ], [ 1, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pdf_do_image(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = tail call i32 @pdf_open_contents(ptr noundef %0, i32 noundef 1) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = load float, ptr %2, align 4, !tbaa !14
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %14 = load double, ptr %13, align 8, !tbaa !57
  %15 = fdiv double %12, %14
  %16 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !15
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %20 = load double, ptr %19, align 8, !tbaa !58
  %21 = fdiv double %18, %20
  %22 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !16
  %24 = fpext float %23 to double
  %25 = fdiv double %24, %14
  %26 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !17
  %28 = fpext float %27 to double
  %29 = fdiv double %28, %20
  %30 = tail call ptr @pprintg4(ptr noundef %10, ptr noundef nonnull @.str.42, double noundef %15, double noundef %21, double noundef %25, double noundef %29) #6
  %31 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  %32 = load float, ptr %31, align 4, !tbaa !18
  %33 = fpext float %32 to double
  %34 = load double, ptr %13, align 8, !tbaa !57
  %35 = fdiv double %33, %34
  %36 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  %37 = load float, ptr %36, align 4, !tbaa !19
  %38 = fpext float %37 to double
  %39 = load double, ptr %19, align 8, !tbaa !58
  %40 = fdiv double %38, %39
  %41 = tail call ptr @pprintg2(ptr noundef %10, ptr noundef %30, double noundef %35, double noundef %40) #6
  br label %42

42:                                               ; preds = %8, %6
  %43 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  %45 = getelementptr inbounds %struct.pdf_resource_s, ptr %1, i64 0, i32 3
  %46 = load i64, ptr %45, align 8, !tbaa !118
  %47 = tail call ptr @pprintld1(ptr noundef %44, ptr noundef nonnull @.str.63, i64 noundef %46) #6
  br label %48

48:                                               ; preds = %3, %42
  %49 = phi i32 [ 0, %42 ], [ %4, %3 ]
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_pdf_copy_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.gs_image_s, align 8
  %11 = alloca %struct.gs_color_space_s, align 8
  %12 = alloca %struct.pdf_image_writer_s, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !119
  %16 = ashr i32 %15, 3
  %17 = tail call i32 @pdf_open_page(ptr noundef %0, i32 noundef 1) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %12) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %165, label %19

19:                                               ; preds = %9
  %20 = icmp slt i32 %7, 1
  %21 = icmp slt i32 %8, 1
  %22 = or i1 %20, %21
  br i1 %22, label %165, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @pdf_put_clip_path(ptr noundef %0, ptr noundef null) #6
  call void @gs_image_t_init_color(ptr noundef nonnull %10) #6
  store i32 %7, ptr %10, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 1
  store i32 %8, ptr %25, align 4, !tbaa !13
  %26 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2
  %27 = sitofp i32 %7 to float
  store float %27, ptr %26, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 1
  store float 0.000000e+00, ptr %28, align 4, !tbaa !15
  %29 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 2
  store float 0.000000e+00, ptr %29, align 8, !tbaa !16
  %30 = sub nsw i32 0, %8
  %31 = sitofp i32 %30 to float
  %32 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 3
  store float %31, ptr %32, align 4, !tbaa !17
  %33 = sitofp i32 %5 to float
  %34 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 4
  store float %33, ptr %34, align 8, !tbaa !18
  %35 = add nsw i32 %8, %6
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 5
  store float %36, ptr %37, align 4, !tbaa !19
  %38 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 3
  store i32 8, ptr %38, align 8, !tbaa !34
  %39 = icmp eq i32 %16, 3
  %40 = icmp eq i32 %16, 4
  %41 = select i1 %40, ptr @gs_color_space_type_DeviceCMYK, ptr @gs_color_space_type_DeviceGray
  %42 = select i1 %39, ptr @gs_color_space_type_DeviceRGB, ptr %41
  store ptr %42, ptr %11, align 8, !tbaa !31
  %43 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 4
  store ptr %11, ptr %43, align 8, !tbaa !35
  %44 = zext nneg i32 %7 to i64
  %45 = sext i32 %16 to i64
  %46 = zext nneg i32 %8 to i64
  %47 = mul nuw nsw i64 %46, %44
  %48 = mul i64 %47, %45
  %49 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %50 = load ptr, ptr %49, align 8, !tbaa !36
  %51 = fpext float %27 to double
  %52 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %53 = load double, ptr %52, align 8, !tbaa !57
  %54 = fdiv double %51, %53
  %55 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !15
  %57 = fpext float %56 to double
  %58 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %59 = load double, ptr %58, align 8, !tbaa !58
  %60 = fdiv double %57, %59
  %61 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 2
  %62 = load float, ptr %61, align 8, !tbaa !16
  %63 = fpext float %62 to double
  %64 = fdiv double %63, %53
  %65 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 3
  %66 = load float, ptr %65, align 4, !tbaa !17
  %67 = fpext float %66 to double
  %68 = fdiv double %67, %59
  %69 = call ptr @pprintg4(ptr noundef %50, ptr noundef nonnull @.str.42, double noundef %54, double noundef %60, double noundef %64, double noundef %68) #6
  %70 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 4
  %71 = load float, ptr %70, align 8, !tbaa !18
  %72 = fpext float %71 to double
  %73 = load double, ptr %52, align 8, !tbaa !57
  %74 = fdiv double %72, %73
  %75 = getelementptr inbounds %struct.gs_image_s, ptr %10, i64 0, i32 2, i32 5
  %76 = load float, ptr %75, align 4, !tbaa !19
  %77 = fpext float %76 to double
  %78 = load double, ptr %58, align 8, !tbaa !58
  %79 = fdiv double %77, %78
  %80 = call ptr @pprintg2(ptr noundef %50, ptr noundef %69, double noundef %74, double noundef %79) #6
  %81 = icmp ugt i64 %48, 4000
  %82 = load ptr, ptr %49, align 8, !tbaa !36
  %83 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %12, i64 0, i32 3
  br i1 %81, label %86, label %84

84:                                               ; preds = %23
  store ptr null, ptr %83, align 8, !tbaa !20
  %85 = call i32 @pputs(ptr noundef %82, ptr noundef nonnull @.str.4) #6
  br label %93

86:                                               ; preds = %23
  %87 = call i32 @pdf_begin_resource(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %83) #6
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = call i64 @pdf_obj_ref(ptr noundef %0) #6
  %91 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %12, i64 0, i32 4
  store i64 %90, ptr %91, align 8, !tbaa !59
  %92 = call ptr @pprintld1(ptr noundef %82, ptr noundef nonnull @.str.6, i64 noundef %90) #6
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi ptr [ @image_names_short, %84 ], [ @image_names_full, %89 ]
  %95 = phi ptr [ @.str.5, %84 ], [ @.str.7, %89 ]
  %96 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %12, i64 0, i32 1
  store ptr %94, ptr %96, align 8, !tbaa !60
  %97 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %12, i64 0, i32 2
  store ptr %95, ptr %97, align 8, !tbaa !61
  br label %98

98:                                               ; preds = %93, %86
  %99 = phi i32 [ %87, %86 ], [ 0, %93 ]
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %165, label %101

101:                                              ; preds = %98
  %102 = call fastcc i32 @pdf_begin_image_data(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef null, ptr noundef null), !range !64
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %165, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %49, align 8, !tbaa !36
  %106 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 44
  %107 = load i32, ptr %106, align 8, !tbaa !73
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %12, i64 0, i32 1
  %111 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %12, i64 0, i32 2
  call void @s_std_init(ptr noundef nonnull %110, ptr noundef nonnull %111, i32 noundef 256, ptr noundef nonnull @filter_write_procs, i32 noundef 2) #6
  store ptr @s_A85E_template, ptr %110, align 8, !tbaa !74
  %112 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_A85E_template, i64 0, i32 2), align 8, !tbaa !75
  %113 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %12, i64 0, i32 1, i32 12, i32 5
  store ptr %112, ptr %113, align 8, !tbaa !76
  %114 = getelementptr inbounds %struct.pdf_binary_writer_s, ptr %12, i64 0, i32 1, i32 13
  store ptr %105, ptr %114, align 8, !tbaa !77
  br label %115

115:                                              ; preds = %104, %109
  %116 = phi ptr [ %105, %104 ], [ %110, %109 ]
  store ptr %116, ptr %12, align 8, !tbaa !84
  %117 = icmp sgt i32 %8, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = mul nsw i32 %16, %2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %1, i64 %120
  %122 = mul nsw i32 %16, %7
  %123 = sext i32 %3 to i64
  %124 = zext nneg i32 %8 to i64
  br label %125

125:                                              ; preds = %118, %125
  %126 = phi i64 [ 0, %118 ], [ %131, %125 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  %127 = load ptr, ptr %12, align 8, !tbaa !85
  %128 = mul nsw i64 %126, %123
  %129 = getelementptr inbounds i8, ptr %121, i64 %128
  %130 = call i32 @sputs(ptr noundef %127, ptr noundef %129, i32 noundef %122, ptr noundef nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  %131 = add nuw nsw i64 %126, 1
  %132 = icmp eq i64 %131, %124
  br i1 %132, label %133, label %125, !llvm.loop !121

133:                                              ; preds = %125, %115
  %134 = load ptr, ptr %12, align 8, !tbaa !84
  %135 = load ptr, ptr %49, align 8, !tbaa !36
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %154, label %137

137:                                              ; preds = %133, %151
  %138 = phi ptr [ %140, %151 ], [ %134, %133 ]
  %139 = getelementptr inbounds %struct.stream_s, ptr %138, i64 0, i32 13
  %140 = load ptr, ptr %139, align 8, !tbaa !77
  %141 = getelementptr inbounds %struct.stream_s, ptr %138, i64 0, i32 16
  %142 = load ptr, ptr %141, align 8, !tbaa !82
  %143 = load ptr, ptr %142, align 8, !tbaa !78
  %144 = getelementptr inbounds %struct.stream_template_s, ptr %143, i64 0, i32 5
  %145 = load ptr, ptr %144, align 8, !tbaa !88
  %146 = getelementptr inbounds %struct.stream_s, ptr %138, i64 0, i32 12, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !89
  %148 = call i32 %147(ptr noundef %138) #6
  %149 = icmp eq ptr %145, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %137
  call void %145(ptr noundef nonnull %142) #6
  br label %151

151:                                              ; preds = %150, %137
  %152 = load ptr, ptr %49, align 8, !tbaa !36
  %153 = icmp eq ptr %140, %152
  br i1 %153, label %154, label %137, !llvm.loop !90

154:                                              ; preds = %151, %133
  %155 = phi ptr [ %134, %133 ], [ %140, %151 ]
  %156 = getelementptr inbounds %struct.stream_s, ptr %155, i64 0, i32 12, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !91
  %158 = call i32 %157(ptr noundef %155) #6
  %159 = call fastcc i32 @pdf_end_write_image(ptr noundef %0, ptr noundef nonnull %12), !range !92
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.pdf_image_writer_s, ptr %12, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !20
  %164 = call fastcc i32 @pdf_do_image(ptr noundef %0, ptr noundef %163, ptr noundef nonnull %26), !range !64
  br label %165

165:                                              ; preds = %154, %101, %98, %19, %9, %161
  %166 = phi i32 [ %164, %161 ], [ %17, %9 ], [ 0, %19 ], [ %99, %98 ], [ %102, %101 ], [ 0, %154 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #6
  ret i32 %166
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_pdf_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) local_unnamed_addr #0 {
  %14 = icmp slt i32 %7, 1
  %15 = icmp slt i32 %8, 1
  %16 = or i1 %14, %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = icmp sgt i32 %10, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %9, align 8, !tbaa !122
  %21 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !100
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %17
  %24 = tail call i32 @gx_default_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #6
  br label %33

25:                                               ; preds = %19
  %26 = tail call i32 @pdf_open_page(ptr noundef %0, i32 noundef 1) #6
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @pdf_put_clip_path(ptr noundef %0, ptr noundef %12) #6
  %30 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !33
  %32 = tail call i32 @gdev_pdf_copy_mono(ptr noundef %0, ptr noundef %1, i32 poison, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef -1, i64 noundef %31)
  br label %33

33:                                               ; preds = %25, %13, %28, %23
  %34 = phi i32 [ %24, %23 ], [ %32, %28 ], [ 0, %13 ], [ %26, %25 ]
  ret i32 %34
}

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_pdf_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca %struct.gs_matrix_s, align 4
  %11 = alloca %struct.gs_matrix_s, align 4
  %12 = tail call i32 @pdf_open_page(ptr noundef %0, i32 noundef 1) #6
  %13 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 4
  %14 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !93
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr %13, align 8, !tbaa !35
  %19 = tail call i32 @gs_color_space_num_components(ptr noundef %18) #6
  br label %20

20:                                               ; preds = %9, %17
  %21 = phi i32 [ %19, %17 ], [ 1, %9 ]
  %22 = icmp slt i32 %12, 0
  br i1 %22, label %228, label %23

23:                                               ; preds = %20
  %24 = icmp ne ptr %4, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = load i32, ptr %4, align 4, !tbaa.struct !123
  %27 = getelementptr inbounds i8, ptr %4, i64 4
  %28 = load i32, ptr %27, align 4, !tbaa.struct !125
  %29 = getelementptr inbounds i8, ptr %4, i64 8
  %30 = getelementptr inbounds i8, ptr %4, i64 12
  br label %33

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %30, %25 ], [ %32, %31 ]
  %35 = phi ptr [ %29, %25 ], [ %2, %31 ]
  %36 = phi i32 [ %28, %25 ], [ 0, %31 ]
  %37 = phi i32 [ %26, %25 ], [ 0, %31 ]
  %38 = load i32, ptr %35, align 4
  %39 = load i32, ptr %34, align 4
  %40 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !126
  %42 = tail call ptr %41(ptr noundef %7, ptr noundef nonnull @st_pdf_image_enum, ptr noundef nonnull @.str.2) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %228, label %44

44:                                               ; preds = %33
  store ptr %7, ptr %42, align 8, !tbaa !129
  store ptr %42, ptr %8, align 8, !tbaa !100
  %45 = load i32, ptr %14, align 4, !tbaa !93
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %5, align 8, !tbaa !122
  %49 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !100
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 9
  %53 = load i32, ptr %52, align 4, !tbaa !131
  %54 = icmp ne i32 %53, 0
  %55 = or i1 %24, %54
  br i1 %55, label %75, label %82

56:                                               ; preds = %44
  %57 = load ptr, ptr %13, align 8, !tbaa !35
  %58 = tail call i32 @gs_color_space_get_index(ptr noundef %57) #6
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.gs_color_space_s, ptr %57, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !33
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = tail call ptr @gs_color_space_indexed_base(ptr noundef %57) #6
  %66 = tail call i32 @gs_color_space_get_index(ptr noundef %65) #6
  br label %67

67:                                               ; preds = %64, %56
  %68 = phi i32 [ %66, %64 ], [ %58, %56 ]
  %69 = icmp eq i32 %68, 7
  %70 = icmp eq i32 %68, 9
  %71 = or i1 %69, %70
  br label %72

72:                                               ; preds = %60, %67
  %73 = phi i1 [ %71, %67 ], [ true, %60 ]
  %74 = or i1 %24, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %51, %72, %47
  %76 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 1
  %77 = tail call i32 @gx_default_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %76) #6
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %228

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  %81 = load ptr, ptr %80, align 8, !tbaa !132
  tail call void %81(ptr noundef %7, ptr noundef nonnull %42, ptr noundef nonnull @.str.2) #6
  br label %228

82:                                               ; preds = %51, %72
  %83 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 1
  store ptr null, ptr %83, align 8, !tbaa !133
  %84 = sub nsw i32 %38, %37
  %85 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 2
  store i32 %84, ptr %85, align 8, !tbaa !134
  switch i32 %3, label %94 [
    i32 0, label %91
    i32 1, label %86
    i32 2, label %87
  ]

86:                                               ; preds = %82
  br label %91

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %89 = load i32, ptr %88, align 8, !tbaa !34
  %90 = mul nsw i32 %89, %21
  br label %91

91:                                               ; preds = %82, %86, %87
  %92 = phi i32 [ %90, %87 ], [ %21, %86 ], [ 1, %82 ]
  %93 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 3
  store i32 %92, ptr %93, align 4, !tbaa !135
  br label %94

94:                                               ; preds = %91, %82
  %95 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !34
  %97 = mul nsw i32 %96, %21
  %98 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !135
  %100 = sdiv i32 %97, %99
  %101 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 4
  store i32 %100, ptr %101, align 8, !tbaa !136
  %102 = sub nsw i32 %39, %36
  %103 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 5
  store i32 %102, ptr %103, align 4, !tbaa !137
  %104 = tail call i32 @pdf_put_clip_path(ptr noundef %0, ptr noundef %6) #6
  %105 = load i32, ptr %14, align 4, !tbaa !93
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %94
  %108 = getelementptr inbounds %struct.gx_device_color_s, ptr %5, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !33
  %110 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  %111 = tail call i32 @pdf_set_color(ptr noundef %0, i64 noundef %109, ptr noundef nonnull %110, ptr noundef nonnull @.str) #6
  br label %112

112:                                              ; preds = %107, %94
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #6
  %113 = sub nsw i32 0, %37
  %114 = load i32, ptr %2, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !13
  %117 = sitofp i32 %114 to float
  store float %117, ptr %11, align 4, !tbaa !14
  %118 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 1
  store float 0.000000e+00, ptr %118, align 4, !tbaa !15
  %119 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 2
  store float 0.000000e+00, ptr %119, align 4, !tbaa !16
  %120 = sub nsw i32 0, %116
  %121 = sitofp i32 %120 to float
  %122 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 3
  store float %121, ptr %122, align 4, !tbaa !17
  %123 = sitofp i32 %113 to float
  %124 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 4
  store float %123, ptr %124, align 4, !tbaa !18
  %125 = sub i32 %116, %36
  %126 = sitofp i32 %125 to float
  %127 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 5
  store float %126, ptr %127, align 4, !tbaa !19
  %128 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2
  %129 = call i32 @gs_matrix_invert(ptr noundef nonnull %128, ptr noundef nonnull %10) #6
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %112
  %132 = call i32 @gs_matrix_multiply(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %10) #6
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2
  %136 = call i32 @gs_matrix_multiply(ptr noundef nonnull %10, ptr noundef nonnull %135, ptr noundef nonnull %10) #6
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134, %131, %112
  %139 = phi i32 [ %129, %112 ], [ %132, %131 ], [ %136, %134 ]
  %140 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  %141 = load ptr, ptr %140, align 8, !tbaa !132
  call void %141(ptr noundef %7, ptr noundef nonnull %42, ptr noundef nonnull @.str.2) #6
  br label %176

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %144 = load ptr, ptr %143, align 8, !tbaa !36
  %145 = load float, ptr %10, align 4, !tbaa !14
  %146 = fpext float %145 to double
  %147 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %148 = load double, ptr %147, align 8, !tbaa !57
  %149 = fdiv double %146, %148
  %150 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 1
  %151 = load float, ptr %150, align 4, !tbaa !15
  %152 = fpext float %151 to double
  %153 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %154 = load double, ptr %153, align 8, !tbaa !58
  %155 = fdiv double %152, %154
  %156 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 2
  %157 = load float, ptr %156, align 4, !tbaa !16
  %158 = fpext float %157 to double
  %159 = fdiv double %158, %148
  %160 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 3
  %161 = load float, ptr %160, align 4, !tbaa !17
  %162 = fpext float %161 to double
  %163 = fdiv double %162, %154
  %164 = call ptr @pprintg4(ptr noundef %144, ptr noundef nonnull @.str.42, double noundef %149, double noundef %155, double noundef %159, double noundef %163) #6
  %165 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 4
  %166 = load float, ptr %165, align 4, !tbaa !18
  %167 = fpext float %166 to double
  %168 = load double, ptr %147, align 8, !tbaa !57
  %169 = fdiv double %167, %168
  %170 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 5
  %171 = load float, ptr %170, align 4, !tbaa !19
  %172 = fpext float %171 to double
  %173 = load double, ptr %153, align 8, !tbaa !58
  %174 = fdiv double %172, %173
  %175 = call ptr @pprintg2(ptr noundef %144, ptr noundef %164, double noundef %169, double noundef %174) #6
  br label %176

176:                                              ; preds = %142, %138
  %177 = phi i1 [ false, %138 ], [ true, %142 ]
  %178 = phi i32 [ %139, %138 ], [ undef, %142 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #6
  br i1 %177, label %179, label %228

179:                                              ; preds = %176
  %180 = load i32, ptr %85, align 8, !tbaa !134
  %181 = sext i32 %180 to i64
  %182 = load i32, ptr %101, align 8, !tbaa !136
  %183 = sext i32 %182 to i64
  %184 = mul nsw i64 %183, %181
  %185 = add nsw i64 %184, 7
  %186 = lshr i64 %185, 3
  %187 = load i32, ptr %103, align 4, !tbaa !137
  %188 = sext i32 %187 to i64
  %189 = mul i64 %186, %188
  %190 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 6
  %191 = icmp ugt i64 %189, 4000
  %192 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %193 = load ptr, ptr %192, align 8, !tbaa !36
  %194 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 6, i32 3
  br i1 %191, label %197, label %195

195:                                              ; preds = %179
  store ptr null, ptr %194, align 8, !tbaa !20
  %196 = call i32 @pputs(ptr noundef %193, ptr noundef nonnull @.str.4) #6
  br label %204

197:                                              ; preds = %179
  %198 = call i32 @pdf_begin_resource(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %194) #6
  %199 = icmp sgt i32 %198, -1
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = call i64 @pdf_obj_ref(ptr noundef %0) #6
  %202 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 6, i32 4
  store i64 %201, ptr %202, align 8, !tbaa !59
  %203 = call ptr @pprintld1(ptr noundef %193, ptr noundef nonnull @.str.6, i64 noundef %201) #6
  br label %204

204:                                              ; preds = %200, %195
  %205 = phi ptr [ @image_names_short, %195 ], [ @image_names_full, %200 ]
  %206 = phi ptr [ @.str.5, %195 ], [ @.str.7, %200 ]
  %207 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 6, i32 1
  store ptr %205, ptr %207, align 8, !tbaa !60
  %208 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 6, i32 2
  store ptr %206, ptr %208, align 8, !tbaa !61
  br label %209

209:                                              ; preds = %204, %197
  %210 = phi i32 [ %198, %197 ], [ 0, %204 ]
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %228, label %212

212:                                              ; preds = %209
  %213 = call fastcc i32 @pdf_begin_image_data(ptr noundef %0, ptr noundef nonnull %190, ptr noundef nonnull %2, ptr noundef null, ptr noundef null), !range !64
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %228, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %192, align 8, !tbaa !36
  %217 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 44
  %218 = load i32, ptr %217, align 8, !tbaa !73
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 6, i32 0, i32 1
  %222 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 6, i32 0, i32 2
  call void @s_std_init(ptr noundef nonnull %221, ptr noundef nonnull %222, i32 noundef 256, ptr noundef nonnull @filter_write_procs, i32 noundef 2) #6
  store ptr @s_A85E_template, ptr %221, align 8, !tbaa !74
  %223 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_A85E_template, i64 0, i32 2), align 8, !tbaa !75
  %224 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 6, i32 0, i32 1, i32 12, i32 5
  store ptr %223, ptr %224, align 8, !tbaa !76
  %225 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %42, i64 0, i32 6, i32 0, i32 1, i32 13
  store ptr %216, ptr %225, align 8, !tbaa !77
  br label %226

226:                                              ; preds = %215, %220
  %227 = phi ptr [ %216, %215 ], [ %221, %220 ]
  store ptr %227, ptr %190, align 8, !tbaa !84
  br label %228

228:                                              ; preds = %212, %209, %75, %79, %33, %20, %176, %226
  %229 = phi i32 [ 0, %226 ], [ %178, %176 ], [ %12, %20 ], [ -25, %33 ], [ %77, %79 ], [ %77, %75 ], [ %210, %209 ], [ %213, %212 ]
  ret i32 %229
}

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #2

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_pdf_image_data(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca [180 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %9 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %8) #6
  %11 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 @gx_default_image_data(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #6
  br label %71

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !137
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %5)
  %20 = sub nsw i32 %18, %19
  store i32 %20, ptr %17, align 4, !tbaa !137
  %21 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !134
  %23 = add nsw i32 %22, %3
  %24 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !136
  %26 = mul nsw i32 %23, %25
  %27 = add nsw i32 %26, 7
  %28 = ashr i32 %27, 3
  %29 = icmp sgt i32 %19, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %16
  %31 = icmp sgt i32 %10, 1
  %32 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 6
  %33 = icmp ult i32 %27, 8
  %34 = add nsw i32 %10, -3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 6
  br label %37

37:                                               ; preds = %30, %63
  %38 = phi i32 [ %19, %30 ], [ %65, %63 ]
  %39 = phi i32 [ 0, %30 ], [ %64, %63 ]
  br i1 %31, label %40, label %57

40:                                               ; preds = %37
  br i1 %33, label %63, label %41

41:                                               ; preds = %40
  %42 = udiv i32 180, %10
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i32 [ %28, %41 ], [ %54, %43 ]
  %45 = phi i32 [ %39, %41 ], [ %55, %43 ]
  %46 = call i32 @llvm.umin.i32(i32 %44, i32 %42)
  %47 = load i32, ptr %24, align 8, !tbaa !136
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x [13 x ptr]], ptr @image_flip_procs, i64 0, i64 %35, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !100
  call void %50(ptr noundef nonnull %8, ptr noundef %2, i32 noundef %45, i32 noundef %46) #6
  %51 = load ptr, ptr %36, align 8, !tbaa !138
  %52 = mul i32 %46, %10
  %53 = call i32 @sputs(ptr noundef %51, ptr noundef nonnull %8, i32 noundef %52, ptr noundef nonnull %7) #6
  %54 = sub i32 %44, %46
  %55 = add i32 %46, %45
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %63, label %43, !llvm.loop !139

57:                                               ; preds = %37
  %58 = load ptr, ptr %32, align 8, !tbaa !138
  %59 = load ptr, ptr %2, align 8, !tbaa !100
  %60 = zext i32 %39 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  %62 = call i32 @sputs(ptr noundef %58, ptr noundef %61, i32 noundef %28, ptr noundef nonnull %7) #6
  br label %63

63:                                               ; preds = %43, %40, %57
  %64 = add i32 %39, %4
  %65 = add nsw i32 %38, -1
  %66 = icmp sgt i32 %38, 1
  br i1 %66, label %37, label %67, !llvm.loop !140

67:                                               ; preds = %63, %16
  %68 = load i32, ptr %17, align 4, !tbaa !137
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  br label %71

71:                                               ; preds = %67, %14
  %72 = phi i32 [ %15, %14 ], [ %70, %67 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret i32 %72
}

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_pdf_end_image(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @gx_default_end_image(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %2) #6
  br label %49

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %32, label %15

15:                                               ; preds = %9, %29
  %16 = phi ptr [ %18, %29 ], [ %11, %9 ]
  %17 = getelementptr inbounds %struct.stream_s, ptr %16, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.stream_s, ptr %16, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  %22 = getelementptr inbounds %struct.stream_template_s, ptr %21, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct.stream_s, ptr %16, i64 0, i32 12, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !89
  %26 = tail call i32 %25(ptr noundef %16) #6
  %27 = icmp eq ptr %23, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  tail call void %23(ptr noundef nonnull %20) #6
  br label %29

29:                                               ; preds = %28, %15
  %30 = load ptr, ptr %12, align 8, !tbaa !36
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %32, label %15, !llvm.loop !90

32:                                               ; preds = %29, %9
  %33 = phi ptr [ %11, %9 ], [ %18, %29 ]
  %34 = getelementptr inbounds %struct.stream_s, ptr %33, i64 0, i32 12, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !91
  %36 = tail call i32 %35(ptr noundef %33) #6
  %37 = tail call fastcc i32 @pdf_end_write_image(ptr noundef %0, ptr noundef nonnull %10), !range !92
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %1, i64 0, i32 6, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !141
  %42 = tail call i32 @pdf_open_contents(ptr noundef %0, i32 noundef 1) #6
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %12, align 8, !tbaa !36
  %46 = getelementptr inbounds %struct.pdf_resource_s, ptr %41, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !118
  %48 = tail call ptr @pprintld1(ptr noundef %45, ptr noundef nonnull @.str.63, i64 noundef %47) #6
  br label %49

49:                                               ; preds = %44, %39, %7
  %50 = phi i32 [ %8, %7 ], [ 0, %44 ], [ %42, %39 ]
  %51 = load ptr, ptr %1, align 8, !tbaa !129
  %52 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %51, i64 0, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !132
  tail call void %53(ptr noundef %51, ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #6
  br label %54

54:                                               ; preds = %32, %49
  %55 = phi i32 [ %50, %49 ], [ 0, %32 ]
  ret i32 %55
}

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pputs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pdf_begin_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @pdf_obj_ref(ptr noundef) local_unnamed_addr #2

declare ptr @pprintld1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @pprintg2(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @pprintg4(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @pprints1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @stell(ptr noundef) local_unnamed_addr #2

declare i32 @gs_color_space_get_index(ptr noundef) local_unnamed_addr #2

declare ptr @pprintd1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @spputc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @pprintg1(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

declare ptr @pprints2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @s_std_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @s_std_noavailable(ptr noundef, ptr noundef) #2

declare i32 @s_std_noseek(ptr noundef, i64 noundef) #2

declare void @s_std_write_reset(ptr noundef) #2

declare i32 @s_std_write_flush(ptr noundef) #2

declare i32 @s_filter_close(ptr noundef) #2

declare i32 @pdf_end_resource(ptr noundef) local_unnamed_addr #2

declare i64 @pdf_open_obj(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @pdf_end_obj(ptr noundef) local_unnamed_addr #2

declare i32 @pdf_open_contents(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @pdf_image_enum_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  store ptr %8, ptr %3, align 8, !tbaa !100
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @pdf_image_enum_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pdf_image_enum_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #6
  store ptr %6, ptr %4, align 8, !tbaa !133
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gs_color_space_indexed_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_image_s", !7, i64 0, !7, i64 4, !10, i64 8, !7, i64 32, !12, i64 40, !8, i64 48, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!11 = !{!"float", !8, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!6, !7, i64 4}
!14 = !{!10, !11, i64 0}
!15 = !{!10, !11, i64 4}
!16 = !{!10, !11, i64 8}
!17 = !{!10, !11, i64 12}
!18 = !{!10, !11, i64 16}
!19 = !{!10, !11, i64 20}
!20 = !{!21, !12, i64 1000}
!21 = !{!"pdf_image_writer_s", !22, i64 0, !12, i64 984, !12, i64 992, !12, i64 1000, !26, i64 1008, !26, i64 1016}
!22 = !{!"pdf_binary_writer_s", !12, i64 0, !23, i64 8, !8, i64 240, !23, i64 496, !8, i64 728}
!23 = !{!"stream_s", !12, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !12, i64 48, !7, i64 56, !7, i64 60, !24, i64 64, !8, i64 66, !8, i64 67, !25, i64 72, !26, i64 88, !27, i64 96, !12, i64 152, !7, i64 160, !7, i64 164, !12, i64 168, !24, i64 176, !24, i64 178, !12, i64 184, !12, i64 192, !7, i64 200, !12, i64 208, !7, i64 216, !12, i64 224}
!24 = !{!"short", !8, i64 0}
!25 = !{!"gs_string_s", !12, i64 0, !7, i64 8}
!26 = !{!"long", !8, i64 0}
!27 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!28 = !{!29, !26, i64 16}
!29 = !{!"pdf_resource_s", !12, i64 0, !12, i64 8, !26, i64 16, !26, i64 24}
!30 = !{!11, !11, i64 0}
!31 = !{!32, !12, i64 0}
!32 = !{!"gs_color_space_s", !12, i64 0, !8, i64 8}
!33 = !{!8, !8, i64 0}
!34 = !{!6, !7, i64 32}
!35 = !{!6, !12, i64 40}
!36 = !{!37, !12, i64 600}
!37 = !{!"gx_device_pdf_s", !7, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !7, i64 44, !38, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !26, i64 144, !26, i64 152, !7, i64 160, !39, i64 168, !40, i64 192, !12, i64 488, !12, i64 496, !8, i64 504, !12, i64 592, !12, i64 600, !12, i64 608, !7, i64 616, !41, i64 624, !8, i64 944, !46, i64 992, !46, i64 1088, !26, i64 1184, !26, i64 1192, !51, i64 1200, !7, i64 1216, !12, i64 1224, !26, i64 1232, !26, i64 1240, !53, i64 1248, !11, i64 1512, !7, i64 1516, !26, i64 1520, !7, i64 1528, !8, i64 1532, !12, i64 1616, !26, i64 1624, !26, i64 1632, !26, i64 1640, !26, i64 1648, !26, i64 1656, !7, i64 1664, !8, i64 1672, !7, i64 4072, !7, i64 4076, !26, i64 4080, !26, i64 4088, !7, i64 4096, !11, i64 4100, !42, i64 4104, !12, i64 4176, !7, i64 4184, !7, i64 4188, !8, i64 4192, !12, i64 4232, !12, i64 4240, !25, i64 4248, !25, i64 4264, !25, i64 4280, !8, i64 4296, !7, i64 5384, !7, i64 5388, !7, i64 5392, !12, i64 5400, !12, i64 5408, !56, i64 5416}
!38 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !24, i64 8, !24, i64 10, !24, i64 12, !24, i64 14}
!39 = !{!"gx_page_device_procs_s", !12, i64 0, !12, i64 8, !12, i64 16}
!40 = !{!"gx_device_procs_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!41 = !{!"gs_imager_state_s", !12, i64 0, !42, i64 8, !44, i64 80, !7, i64 128, !24, i64 132, !7, i64 136, !11, i64 140, !45, i64 144, !7, i64 160, !7, i64 164, !12, i64 168, !8, i64 176, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !8, i64 232, !8, i64 264, !12, i64 296, !12, i64 304, !12, i64 312}
!42 = !{!"gx_line_params_s", !11, i64 0, !7, i64 4, !7, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !43, i64 32}
!43 = !{!"gx_dash_params_s", !12, i64 0, !7, i64 8, !11, i64 12, !7, i64 16, !11, i64 20, !7, i64 24, !7, i64 28, !11, i64 32}
!44 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !26, i64 24, !26, i64 32, !7, i64 40}
!45 = !{!"gs_fixed_point_s", !26, i64 0, !26, i64 8}
!46 = !{!"gx_device_color_s", !12, i64 0, !8, i64 8, !47, i64 48, !48, i64 56}
!47 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!48 = !{!"_mask", !49, i64 0, !26, i64 24, !12, i64 32}
!49 = !{!"gs_client_color_s", !50, i64 0, !12, i64 16}
!50 = !{!"gs_paint_color_s", !8, i64 0}
!51 = !{!"gs_point_s", !52, i64 0, !52, i64 8}
!52 = !{!"double", !8, i64 0}
!53 = !{!"psdf_distiller_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !26, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !54, i64 56, !7, i64 104, !7, i64 108, !7, i64 112, !54, i64 120, !54, i64 168, !55, i64 216, !55, i64 232, !7, i64 248, !7, i64 252, !7, i64 256}
!54 = !{!"psdf_image_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !12, i64 24, !7, i64 32, !12, i64 40}
!55 = !{!"gs_param_string_array_s", !12, i64 0, !7, i64 8, !7, i64 12}
!56 = !{!"pdf_text_state_s", !11, i64 0, !12, i64 8, !11, i64 16, !11, i64 20, !11, i64 24}
!57 = !{!37, !52, i64 1200}
!58 = !{!37, !52, i64 1208}
!59 = !{!21, !26, i64 1008}
!60 = !{!21, !12, i64 984}
!61 = !{!21, !12, i64 992}
!62 = !{!63, !12, i64 40}
!63 = !{!"pdf_image_names_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136}
!64 = !{i32 -2147483648, i32 1}
!65 = !{!66, !12, i64 0}
!66 = !{!"stream_CFE_state_s", !12, i64 0, !12, i64 8, !12, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !12, i64 80, !12, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136}
!67 = !{!68, !12, i64 40}
!68 = !{!"stream_template_s", !12, i64 0, !12, i64 8, !12, i64 16, !7, i64 24, !7, i64 28, !12, i64 32, !12, i64 40, !12, i64 48}
!69 = !{!66, !7, i64 40}
!70 = !{!66, !7, i64 52}
!71 = !{!66, !7, i64 56}
!72 = !{!66, !7, i64 64}
!73 = !{!37, !7, i64 1528}
!74 = !{!23, !12, i64 0}
!75 = !{!68, !12, i64 16}
!76 = !{!23, !12, i64 136}
!77 = !{!23, !12, i64 152}
!78 = !{!79, !12, i64 0}
!79 = !{!"stream_state_s", !12, i64 0, !12, i64 8, !12, i64 16}
!80 = !{!37, !12, i64 488}
!81 = !{!79, !12, i64 8}
!82 = !{!23, !12, i64 168}
!83 = !{!68, !12, i64 8}
!84 = !{!22, !12, i64 0}
!85 = !{!21, !12, i64 0}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!68, !12, i64 32}
!89 = !{!23, !12, i64 128}
!90 = distinct !{!90, !87}
!91 = !{!23, !12, i64 120}
!92 = !{i32 0, i32 2}
!93 = !{!6, !7, i64 84}
!94 = !{!63, !12, i64 112}
!95 = !{!37, !7, i64 4096}
!96 = !{!63, !12, i64 48}
!97 = !{!63, !12, i64 80}
!98 = !{!63, !12, i64 88}
!99 = !{!63, !12, i64 72}
!100 = !{!12, !12, i64 0}
!101 = !{!63, !12, i64 120}
!102 = !{!103, !7, i64 16}
!103 = !{!"gs_indexed_params_s", !104, i64 0, !7, i64 16, !8, i64 24, !7, i64 40}
!104 = !{!"gs_base_color_space_s", !12, i64 0, !8, i64 8}
!105 = distinct !{!105, !87}
!106 = !{!63, !12, i64 136}
!107 = !{!63, !12, i64 104}
!108 = !{!63, !12, i64 8}
!109 = distinct !{!109, !87}
!110 = !{!63, !12, i64 56}
!111 = distinct !{!111, !87}
!112 = !{!6, !7, i64 80}
!113 = !{!63, !12, i64 128}
!114 = !{!63, !12, i64 96}
!115 = !{!63, !12, i64 0}
!116 = !{!63, !12, i64 64}
!117 = !{!21, !26, i64 1016}
!118 = !{!29, !26, i64 24}
!119 = !{!120, !7, i64 52}
!120 = !{!"gx_device_s", !7, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !7, i64 44, !38, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !26, i64 144, !26, i64 152, !7, i64 160, !39, i64 168, !40, i64 192}
!121 = distinct !{!121, !87}
!122 = !{!46, !12, i64 0}
!123 = !{i64 0, i64 4, !124, i64 4, i64 4, !124, i64 8, i64 4, !124, i64 12, i64 4, !124}
!124 = !{!7, !7, i64 0}
!125 = !{i64 0, i64 4, !124, i64 4, i64 4, !124, i64 8, i64 4, !124}
!126 = !{!127, !12, i64 24}
!127 = !{!"gs_memory_s", !128, i64 0}
!128 = !{!"gs_memory_procs_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152}
!129 = !{!130, !12, i64 0}
!130 = !{!"pdf_image_enum_s", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !21, i64 32}
!131 = !{!6, !7, i64 92}
!132 = !{!127, !12, i64 88}
!133 = !{!130, !12, i64 8}
!134 = !{!130, !7, i64 16}
!135 = !{!130, !7, i64 20}
!136 = !{!130, !7, i64 24}
!137 = !{!130, !7, i64 28}
!138 = !{!130, !12, i64 32}
!139 = distinct !{!139, !87}
!140 = distinct !{!140, !87}
!141 = !{!130, !12, i64 1032}
