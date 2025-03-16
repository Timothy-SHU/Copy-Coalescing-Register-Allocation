; ModuleID = 'gdevpdf.c'
source_filename = "gdevpdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.gs_string_s = type { ptr, i32 }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.gs_string_s }
%struct.pdf_text_state_s = type { float, ptr, float, float, float }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pdf_resource_s = type { ptr, ptr, i64, i64 }
%struct.pdf_article_s = type { ptr, %struct.gs_string_s, i64, %struct.pdf_bead_s, %struct.pdf_bead_s }
%struct.pdf_bead_s = type { i64, i64, i64, i64, [80 x i8], %struct.gs_rect_s }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.pdf_named_dest_s = type { ptr, %struct.gs_string_s, [80 x i8] }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float, i32 }
%struct.gs_path_enum_s = type { ptr, ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"pdfwrite\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"CCITTFaxEncode\00", align 1
@s_CFE_template = external constant %struct.stream_template_s, align 8
@gs_pdfwrite_device = dso_local local_unnamed_addr global %struct.gx_device_pdf_s { i32 5448, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 255, i16 255 }, i32 6120, i32 7920, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @pdf_open, ptr @gx_upright_get_initial_matrix, ptr null, ptr @pdf_output_page, ptr @pdf_close, ptr @gx_default_rgb_map_rgb_color, ptr @gx_default_rgb_map_color_rgb, ptr @pdf_fill_rectangle, ptr null, ptr @gdev_pdf_copy_mono, ptr @gdev_pdf_copy_color, ptr null, ptr null, ptr @gdev_pdf_get_params, ptr @gdev_pdf_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr null, ptr null, ptr null, ptr null, ptr @pdf_fill_path, ptr @pdf_stroke_path, ptr @gdev_pdf_fill_mask, ptr null, ptr null, ptr null, ptr null, ptr @gdev_pdf_begin_image, ptr @gdev_pdf_image_data, ptr @gdev_pdf_end_image, ptr null, ptr null, ptr null }, ptr null, ptr null, [81 x i8] zeroinitializer, ptr null, ptr null, ptr null, i32 0, %struct.gs_imager_state_s zeroinitializer, [11 x float] zeroinitializer, %struct.gx_device_color_s zeroinitializer, %struct.gx_device_color_s zeroinitializer, i64 0, i64 0, %struct.gs_point_s { double 1.000000e+01, double 1.000000e+01 }, i32 0, ptr null, i64 -1, i64 -1, %struct.psdf_distiller_params_s { i32 0, i32 0, i32 1, i64 250000, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, %struct.psdf_image_params_s { i32 0, i32 0, i32 -1, i32 0, i32 1, i32 1, ptr null, i32 72, ptr null }, i32 0, i32 1, i32 0, %struct.psdf_image_params_s { i32 0, i32 0, i32 -1, i32 0, i32 1, i32 1, ptr null, i32 72, ptr null }, %struct.psdf_image_params_s { i32 0, i32 0, i32 -1, i32 0, i32 1, i32 1, ptr @.str.1, i32 72, ptr @s_CFE_template }, %struct.gs_param_string_array_s { ptr null, i32 0, i32 1 }, %struct.gs_param_string_array_s { ptr null, i32 0, i32 1 }, i32 1, i32 1, i32 20 }, float 0x3FF3333340000000, i32 0, i64 1, i32 0, [81 x i8] zeroinitializer, ptr null, i64 0, i64 0, i64 0, i64 0, i64 0, i32 0, [300 x i64] zeroinitializer, i32 0, i32 0, i64 0, i64 0, i32 0, float -1.000000e+00, %struct.gx_line_params_s { float 0.000000e+00, i32 0, i32 0, float 1.000000e+01, float 0x3FC9FDD380000000, float 0.000000e+00, float 0.000000e+00, %struct.gx_dash_params_s { ptr null, i32 0, float 0.000000e+00, i32 0, float 0.000000e+00, i32 1, i32 0, float 0.000000e+00 } }, ptr null, i32 0, i32 0, [5 x ptr] zeroinitializer, ptr null, ptr null, %struct.gs_string_s zeroinitializer, %struct.gs_string_s zeroinitializer, %struct.gs_string_s zeroinitializer, [8 x %struct.pdf_outline_level_s] zeroinitializer, i32 0, i32 0, i32 0, ptr null, ptr null, %struct.pdf_text_state_s { float 0.000000e+00, ptr null, float 0.000000e+00, float 0.000000e+00, float 1.000000e+02 } }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"%PDF-1.1\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%\C7\EC\8F\A2\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%ld 0 obj\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"endobj\0A\00", align 1
@gx_dc_type_pure = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"<< /Length %ld 0 R >>\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"stream\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"q\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"BT\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ET\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"Q\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"endstream\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@st_pdf_resource = internal constant %struct.gs_memory_struct_type_s { i32 32, ptr @.str.27, ptr null, ptr null, ptr @pdf_resource_enum_ptrs, ptr @pdf_resource_reloc_ptrs, ptr null }, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"begin_aside\00", align 1
@reltable.pdf_begin_resource = internal unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @st_pdf_font to i64), i64 ptrtoint (ptr @reltable.pdf_begin_resource to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @st_pdf_resource to i64), i64 ptrtoint (ptr @reltable.pdf_begin_resource to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @st_pdf_resource to i64), i64 ptrtoint (ptr @reltable.pdf_begin_resource to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @st_pdf_resource to i64), i64 ptrtoint (ptr @reltable.pdf_begin_resource to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @st_pdf_resource to i64), i64 ptrtoint (ptr @reltable.pdf_begin_resource to i64)) to i32)], align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"<< /Type /%s\00", align 1
@resource_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 16
@.str.16 = private unnamed_addr constant [13 x i8] c" /Name /R%ld\00", align 1
@pdf_reset_page.text_default = internal unnamed_addr constant %struct.pdf_text_state_s { float 0.000000e+00, ptr null, float 0.000000e+00, float 0.000000e+00, float 1.000000e+02 }, align 8
@.str.17 = private unnamed_addr constant [29 x i8] c"pdf_page_id(resize page_ids)\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"pdf_write_saved_string\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"%04d%02d%02d%02d%02d%02d\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"/CreationDate (D:%s)\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%1.2f\00", align 1
@gs_revision = external local_unnamed_addr global i64, align 8
@.str.22 = private unnamed_addr constant [19 x i8] c"/Producer (%s %s)\0A\00", align 1
@gs_product = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"Q\0Aq\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Q\0Aq\0AW\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"%g %g %g %g re\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"n\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"pdf_resource\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_pdf_font = internal constant %struct.gs_memory_struct_type_s { i32 48, ptr @.str.28, ptr null, ptr null, ptr @pdf_font_enum_ptrs, ptr @pdf_font_reloc_ptrs, ptr null }, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"pdf_font\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"FontDescriptor\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@pdf_reset_graphics.lp_initial = internal unnamed_addr constant %struct.gx_line_params_s { float 0.000000e+00, i32 0, i32 0, float 1.000000e+01, float 0x3FC9FDD380000000, float 0.000000e+00, float 0.000000e+00, %struct.gx_dash_params_s { ptr null, i32 0, float 0.000000e+00, i32 0, float 0.000000e+00, i32 1, i32 0, float 0.000000e+00 } }, align 8
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str.34 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1
@gp_scratch_file_name_prefix = external constant [0 x i8], align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"pdf_open(page_ids)\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"<<\0A/Type /Page\0A/MediaBox [0 0 %d %d]\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"/Parent %ld 0 R\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"/Resources << /ProcSet [/PDF\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c" /ImageB\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c" /ImageC\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c" /ImageI\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c" /Text\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"/%s <<\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"/R%ld %ld 0 R\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"/Contents %ld 0 R\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"/Contents [\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"%ld 0 R\0A\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"/Annots [\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"<< /Type /Pages /Kids [\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"] /Count %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"<< /Count %d\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c" /First %ld 0 R /Last %ld 0 R >>\0A\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"pdf_close(named_dest key)\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"pdf_close(named_dest)\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"<< /Type /Catalog /Pages %ld 0 R\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"/Outlines %ld 0 R\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"/Threads [ \00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"pdf_close(article title)\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"pdf_close(article)\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"/Dests %ld 0 R\0A\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"<< \00", align 1
@.str.66 = private unnamed_addr constant [32 x i8] c"xref\0A0 %ld\0A0000000000 65535 f \0A\00", align 1
@.str.67 = private unnamed_addr constant [38 x i8] c"xref\0A0 1\0A0000000000 65535 f \0A%ld %ld\0A\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"%010ld 00000 n \0A\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"trailer\0A\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"<< /Size %ld /Root %ld 0 R /Info %ld 0 R\0A\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"startxref\0A%ld\0A%%%%EOF\0A\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"page_ids\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"rg\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"%g %g %g %g re\0Af\0A\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"%g %g %g %g %g %g c\0A\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"h\0A\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"%g i\0A\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"f\0A\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"f*\0A\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"] %g d\0A\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"%g w\0A\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"%g M\0A\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%d J\0A\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"%d j\0A\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"s\0A\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"S\0A\00", align 1

declare i32 @gx_default_install(ptr noundef, ptr noundef) #0

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #0

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @pdf_open(ptr noundef %0) #1 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  store ptr @gs_memory_default, ptr %5, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @.str.34, i64 3, i1 false) #15
  %6 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @gp_fmode_binary_suffix) #15
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 45
  %8 = call ptr @gp_open_scratch_file(ptr noundef nonnull @gp_scratch_file_name_prefix, ptr noundef nonnull %7, ptr noundef nonnull %4) #15
  %9 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  store ptr %8, ptr %9, align 8, !tbaa !34
  %10 = icmp eq ptr %8, null
  br i1 %10, label %79, label %11

11:                                               ; preds = %1
  %12 = call i32 @gdev_vector_open_file_bbox(ptr noundef %0, i32 noundef 512, i32 noundef 0) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %74, label %14

14:                                               ; preds = %11
  call void @gdev_vector_init(ptr noundef %0) #15
  %15 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 36
  store i32 1, ptr %15, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 13
  %17 = load float, ptr %16, align 4, !tbaa !36
  %18 = fpext float %17 to double
  %19 = fdiv double %18, 7.200000e+01
  %20 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  store double %19, ptr %20, align 8, !tbaa !37
  %21 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 13, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !36
  %23 = fpext float %22 to double
  %24 = fdiv double %23, 7.200000e+01
  %25 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  store double %24, ptr %25, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 43
  %27 = load i64, ptr %26, align 8, !tbaa !39
  %28 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %29 = add nsw i64 %27, 1
  store i64 %29, ptr %28, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %32 = call i64 @stell(ptr noundef %31) #15
  store i64 %32, ptr %3, align 8, !tbaa !42
  %33 = load ptr, ptr %9, align 8, !tbaa !34
  %34 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %35 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 48
  store i64 %27, ptr %35, align 8, !tbaa !43
  %36 = load i64, ptr %28, align 8, !tbaa !40
  %37 = add nsw i64 %36, 1
  store i64 %37, ptr %28, align 8, !tbaa !40
  %38 = load ptr, ptr %30, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %39 = call i64 @stell(ptr noundef %38) #15
  store i64 %39, ptr %2, align 8, !tbaa !42
  %40 = load ptr, ptr %9, align 8, !tbaa !34
  %41 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 8, i64 noundef 1, ptr noundef %40)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %42 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 50
  store i64 %36, ptr %42, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 51
  store i64 0, ptr %43, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 52
  store i32 0, ptr %44, align 8, !tbaa !46
  %45 = load ptr, ptr %5, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = call ptr %47(ptr noundef %45, i32 noundef 50, i32 noundef 8, ptr noundef nonnull @.str.35) #15
  %49 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 61
  store ptr %48, ptr %49, align 8, !tbaa !50
  %50 = icmp eq ptr %48, null
  br i1 %50, label %74, label %51

51:                                               ; preds = %14
  %52 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 62
  store i32 50, ptr %52, align 8, !tbaa !51
  %53 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 63
  store i32 0, ptr %53, align 4, !tbaa !52
  %54 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 67
  store ptr null, ptr %54, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 68
  store ptr null, ptr %55, align 8, !tbaa !54
  %56 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70
  store i64 0, ptr %56, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 0, i32 2
  store i32 2147483647, ptr %57, align 8, !tbaa !58
  %58 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 71
  store i32 0, ptr %58, align 8, !tbaa !59
  %59 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 72
  store i32 0, ptr %59, align 4, !tbaa !60
  %60 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 73
  store i32 0, ptr %60, align 8, !tbaa !61
  %61 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 74
  %62 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  store i32 0, ptr %62, align 8, !tbaa !62
  %63 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  %64 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31, i32 1
  store i64 0, ptr %64, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  %65 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  store ptr %65, ptr %63, align 8, !tbaa !65
  %66 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32
  %67 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32, i32 1
  store i64 0, ptr %67, align 8, !tbaa !63
  store ptr %65, ptr %66, align 8, !tbaa !66
  %68 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 59
  store float -1.000000e+00, ptr %68, align 4, !tbaa !67
  %69 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %69, ptr noundef nonnull align 8 dereferenceable(72) @pdf_reset_graphics.lp_initial, i64 72, i1 false), !tbaa.struct !68
  %70 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 58
  store i32 0, ptr %70, align 8, !tbaa !70
  %71 = getelementptr i8, ptr %0, i64 4192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %71, i8 0, i64 40, i1 false), !tbaa !64
  %72 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 69
  store ptr null, ptr %72, align 8, !tbaa !71
  %73 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) @pdf_reset_page.text_default, i64 32, i1 false), !tbaa.struct !72
  br label %79

74:                                               ; preds = %14, %11
  %75 = phi i32 [ %12, %11 ], [ -25, %14 ]
  %76 = load ptr, ptr %9, align 8, !tbaa !34
  %77 = call i32 @fclose(ptr noundef %76)
  %78 = call i32 @unlink(ptr noundef nonnull %7)
  store ptr null, ptr %9, align 8, !tbaa !34
  br label %79

79:                                               ; preds = %1, %74, %51
  %80 = phi i32 [ %75, %74 ], [ 0, %51 ], [ -9, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %80
}

declare void @gx_upright_get_initial_matrix(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdf_output_page(ptr nocapture noundef %0, i32 %1, i32 %2) #1 {
  %4 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 52
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  %10 = load i32, ptr %9, align 8, !tbaa !62
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 66
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = tail call i64 @stell(ptr noundef %5) #15
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.2) #15
  %21 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 40
  %22 = load i32, ptr %21, align 8, !tbaa !74
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 44
  store i32 %24, ptr %25, align 8, !tbaa !75
  br i1 %23, label %26, label %28

26:                                               ; preds = %19
  %27 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.3) #15
  br label %28

28:                                               ; preds = %26, %19, %16, %12, %3
  %29 = tail call i32 @pdf_close_contents(ptr noundef %0, i32 noundef 1)
  %30 = tail call i64 @pdf_page_id(ptr noundef %0, i32 noundef %8)
  %31 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %30)
  %32 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 10
  %33 = load float, ptr %32, align 8, !tbaa !36
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 10, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !36
  %37 = fptosi float %36 to i32
  %38 = tail call ptr @pprintd2(ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef %34, i32 noundef %37) #15
  %39 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 50
  %40 = load i64, ptr %39, align 8, !tbaa !44
  %41 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.37, i64 noundef %40) #15
  %42 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.38) #15
  %43 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 58
  %44 = load i32, ptr %43, align 8, !tbaa !70
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %28
  %48 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.39) #15
  br label %49

49:                                               ; preds = %47, %28
  %50 = load i32, ptr %43, align 8, !tbaa !70
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.40) #15
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, ptr %43, align 8, !tbaa !70
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.41) #15
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, ptr %43, align 8, !tbaa !70
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.42) #15
  br label %67

67:                                               ; preds = %65, %61
  %68 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.43) #15
  br label %69

69:                                               ; preds = %89, %67
  %70 = phi i64 [ 0, %67 ], [ %90, %89 ]
  %71 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 64, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !64
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds [5 x ptr], ptr @resource_names, i64 0, i64 %70
  %76 = load ptr, ptr %75, align 8, !tbaa !64
  %77 = tail call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.44, ptr noundef %76) #15
  br label %78

78:                                               ; preds = %78, %74
  %79 = phi ptr [ %72, %74 ], [ %85, %78 ]
  %80 = getelementptr inbounds %struct.pdf_resource_s, ptr %79, i64 0, i32 3
  %81 = load i64, ptr %80, align 8, !tbaa !76
  %82 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.45, i64 noundef %81) #15
  %83 = load i64, ptr %80, align 8, !tbaa !76
  %84 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef %82, i64 noundef %83) #15
  %85 = load ptr, ptr %79, align 8, !tbaa !78
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %78, !llvm.loop !79

87:                                               ; preds = %78
  %88 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.46) #15
  br label %89

89:                                               ; preds = %87, %69
  store ptr null, ptr %71, align 8, !tbaa !64
  %90 = add nuw nsw i64 %70, 1
  %91 = icmp eq i64 %90, 5
  br i1 %91, label %92, label %69, !llvm.loop !81

92:                                               ; preds = %89
  %93 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.46) #15
  %94 = load i32, ptr %9, align 8, !tbaa !62
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 53
  %98 = load i64, ptr %97, align 8, !tbaa !42
  %99 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.47, i64 noundef %98) #15
  br label %115

100:                                              ; preds = %92
  %101 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.48) #15
  %102 = load i32, ptr %9, align 8, !tbaa !62
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %100, %104
  %105 = phi i64 [ %109, %104 ], [ 0, %100 ]
  %106 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 53, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !42
  %108 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.49, i64 noundef %107) #15
  %109 = add nuw nsw i64 %105, 1
  %110 = load i32, ptr %9, align 8, !tbaa !62
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %104, label %113, !llvm.loop !82

113:                                              ; preds = %104, %100
  %114 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.43) #15
  br label %115

115:                                              ; preds = %113, %96
  %116 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 69
  %117 = load ptr, ptr %116, align 8, !tbaa !83
  %118 = icmp eq ptr %117, null
  br i1 %118, label %130, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %4, align 8, !tbaa !41
  %121 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 69, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !84
  %123 = tail call i32 @pwrite(ptr noundef %120, ptr noundef nonnull %117, i32 noundef %122) #15
  %124 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %125, i64 0, i32 15
  %127 = load ptr, ptr %126, align 8, !tbaa !85
  %128 = load ptr, ptr %116, align 8, !tbaa !83
  %129 = load i32, ptr %121, align 8, !tbaa !84
  tail call void %127(ptr noundef %125, ptr noundef %128, i32 noundef %129, ptr noundef nonnull @.str.18) #15
  store ptr null, ptr %116, align 8, !tbaa !83
  br label %130

130:                                              ; preds = %119, %115
  %131 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 65
  %132 = load ptr, ptr %131, align 8, !tbaa !64
  %133 = icmp eq ptr %132, null
  br i1 %133, label %158, label %134

134:                                              ; preds = %130
  %135 = sext i32 %7 to i64
  br label %136

136:                                              ; preds = %150, %134
  %137 = phi ptr [ %132, %134 ], [ %152, %150 ]
  %138 = phi i32 [ 0, %134 ], [ %151, %150 ]
  %139 = getelementptr inbounds %struct.pdf_resource_s, ptr %137, i64 0, i32 2
  %140 = load i64, ptr %139, align 8, !tbaa !86
  %141 = icmp eq i64 %140, %135
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = icmp eq i32 %138, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  %145 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.50) #15
  br label %146

146:                                              ; preds = %144, %142
  %147 = getelementptr inbounds %struct.pdf_resource_s, ptr %137, i64 0, i32 3
  %148 = load i64, ptr %147, align 8, !tbaa !76
  %149 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.49, i64 noundef %148) #15
  br label %150

150:                                              ; preds = %146, %136
  %151 = phi i32 [ 1, %146 ], [ %138, %136 ]
  %152 = load ptr, ptr %137, align 8, !tbaa !64
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %136, !llvm.loop !87

154:                                              ; preds = %150
  %155 = icmp eq i32 %151, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %154
  %157 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.43) #15
  br label %158

158:                                              ; preds = %130, %154, %156
  %159 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.46) #15
  %160 = load ptr, ptr %4, align 8, !tbaa !41
  %161 = tail call i32 @pputs(ptr noundef %160, ptr noundef nonnull @.str.5) #15
  store i32 0, ptr %9, align 8, !tbaa !62
  %162 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  %163 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31, i32 1
  store i64 0, ptr %163, align 8, !tbaa !63
  %164 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  store ptr %164, ptr %162, align 8, !tbaa !65
  %165 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32
  %166 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32, i32 1
  store i64 0, ptr %166, align 8, !tbaa !63
  store ptr %164, ptr %165, align 8, !tbaa !66
  %167 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 59
  store float -1.000000e+00, ptr %167, align 4, !tbaa !67
  %168 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %168, ptr noundef nonnull align 8 dereferenceable(72) @pdf_reset_graphics.lp_initial, i64 72, i1 false), !tbaa.struct !68
  store i32 0, ptr %43, align 8, !tbaa !70
  %169 = getelementptr i8, ptr %0, i64 4192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %169, i8 0, i64 40, i1 false), !tbaa !64
  store ptr null, ptr %116, align 8, !tbaa !71
  %170 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %170, ptr noundef nonnull align 8 dereferenceable(32) @pdf_reset_page.text_default, i64 32, i1 false), !tbaa.struct !72
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdf_close(ptr noundef %0) #1 {
  %2 = alloca [2 x i64], align 16
  %3 = alloca [20 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [21 x i8], align 16
  %8 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call i32 @pdf_close_contents(ptr noundef %0, i32 noundef 1)
  %13 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 50
  %14 = load i64, ptr %13, align 8, !tbaa !44
  %15 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %14)
  %16 = tail call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.51) #15
  %17 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 52
  %18 = load i32, ptr %17, align 8, !tbaa !46
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 61
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %28, %22 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !50
  %25 = getelementptr inbounds i64, ptr %24, i64 %23
  %26 = load i64, ptr %25, align 8, !tbaa !42
  %27 = tail call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.49, i64 noundef %26) #15
  %28 = add nuw nsw i64 %23, 1
  %29 = load i32, ptr %17, align 8, !tbaa !46
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %22, label %32, !llvm.loop !88

32:                                               ; preds = %22, %1
  %33 = phi i32 [ %18, %1 ], [ %29, %22 ]
  %34 = tail call ptr @pprintd1(ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef %33) #15
  %35 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 68
  %36 = load ptr, ptr %35, align 8, !tbaa !83
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !41
  %40 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 68, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !84
  %42 = tail call i32 @pwrite(ptr noundef %39, ptr noundef nonnull %36, i32 noundef %41) #15
  %43 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %44, i64 0, i32 15
  %46 = load ptr, ptr %45, align 8, !tbaa !85
  %47 = load ptr, ptr %35, align 8, !tbaa !83
  %48 = load i32, ptr %40, align 8, !tbaa !84
  tail call void %46(ptr noundef %44, ptr noundef %47, i32 noundef %48, ptr noundef nonnull @.str.18) #15
  store ptr null, ptr %35, align 8, !tbaa !83
  br label %49

49:                                               ; preds = %32, %38
  %50 = tail call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.46) #15
  %51 = load ptr, ptr %8, align 8, !tbaa !41
  %52 = tail call i32 @pputs(ptr noundef %51, ptr noundef nonnull @.str.5) #15
  %53 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 51
  %54 = load i64, ptr %53, align 8, !tbaa !45
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %49
  %57 = tail call i32 @pdfmark_close_outline(ptr noundef %0) #15
  %58 = load i64, ptr %53, align 8, !tbaa !45
  %59 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %58)
  %60 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 73
  %61 = load i32, ptr %60, align 8, !tbaa !61
  %62 = tail call ptr @pprintd1(ptr noundef %9, ptr noundef nonnull @.str.53, i32 noundef %61) #15
  %63 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70
  %64 = load i64, ptr %63, align 8, !tbaa !55
  %65 = tail call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.54, i64 noundef %64) #15
  %66 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !89
  %68 = tail call ptr @pprintld1(ptr noundef %9, ptr noundef %65, i64 noundef %67) #15
  %69 = load ptr, ptr %8, align 8, !tbaa !41
  %70 = tail call i32 @pputs(ptr noundef %69, ptr noundef nonnull @.str.5) #15
  br label %71

71:                                               ; preds = %56, %49
  %72 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 74
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = icmp eq ptr %73, null
  br i1 %74, label %95, label %75

75:                                               ; preds = %71, %90
  %76 = phi ptr [ %93, %90 ], [ %73, %71 ]
  %77 = getelementptr inbounds %struct.pdf_article_s, ptr %76, i64 0, i32 4
  %78 = load i64, ptr %77, align 8, !tbaa !91
  %79 = icmp eq i64 %78, 0
  %80 = getelementptr inbounds %struct.pdf_article_s, ptr %76, i64 0, i32 3
  br i1 %79, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, ptr %80, align 8, !tbaa !95
  %83 = getelementptr inbounds %struct.pdf_article_s, ptr %76, i64 0, i32 3, i32 3
  store i64 %82, ptr %83, align 8, !tbaa !96
  %84 = getelementptr inbounds %struct.pdf_article_s, ptr %76, i64 0, i32 3, i32 2
  store i64 %82, ptr %84, align 8, !tbaa !97
  br label %90

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.pdf_article_s, ptr %76, i64 0, i32 3, i32 2
  store i64 %78, ptr %86, align 8, !tbaa !97
  %87 = load i64, ptr %80, align 8, !tbaa !95
  %88 = getelementptr inbounds %struct.pdf_article_s, ptr %76, i64 0, i32 4, i32 3
  store i64 %87, ptr %88, align 8, !tbaa !98
  %89 = tail call i32 @pdfmark_write_article(ptr noundef %0, ptr noundef nonnull %77) #15
  br label %90

90:                                               ; preds = %85, %81
  %91 = getelementptr inbounds %struct.pdf_article_s, ptr %76, i64 0, i32 3
  %92 = tail call i32 @pdfmark_write_article(ptr noundef %0, ptr noundef nonnull %91) #15
  %93 = load ptr, ptr %76, align 8, !tbaa !99
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %75, !llvm.loop !100

95:                                               ; preds = %90, %71
  %96 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 75
  %97 = load ptr, ptr %96, align 8, !tbaa !101
  %98 = icmp eq ptr %97, null
  br i1 %98, label %137, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %8, align 8, !tbaa !41
  %101 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %102 = load i64, ptr %101, align 8, !tbaa !40
  %103 = add nsw i64 %102, 1
  store i64 %103, ptr %101, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %104 = tail call i64 @stell(ptr noundef %100) #15
  store i64 %104, ptr %5, align 8, !tbaa !42
  %105 = load ptr, ptr %10, align 8, !tbaa !34
  %106 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef %105)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %107 = tail call ptr @pprintld1(ptr noundef %100, ptr noundef nonnull @.str.4, i64 noundef %102) #15
  %108 = tail call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.55) #15
  %109 = load ptr, ptr %96, align 8, !tbaa !101
  %110 = icmp eq ptr %109, null
  br i1 %110, label %133, label %111

111:                                              ; preds = %99
  %112 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  br label %113

113:                                              ; preds = %111, %113
  %114 = phi ptr [ %109, %111 ], [ %131, %113 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !102
  store ptr %115, ptr %96, align 8, !tbaa !101
  %116 = getelementptr inbounds %struct.pdf_named_dest_s, ptr %114, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !104
  %118 = getelementptr inbounds %struct.pdf_named_dest_s, ptr %114, i64 0, i32 1, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !105
  %120 = tail call i32 @pwrite(ptr noundef %9, ptr noundef %117, i32 noundef %119) #15
  %121 = getelementptr inbounds %struct.pdf_named_dest_s, ptr %114, i64 0, i32 2
  %122 = tail call ptr @pprints1(ptr noundef %9, ptr noundef nonnull @.str.56, ptr noundef nonnull %121) #15
  %123 = load ptr, ptr %112, align 8, !tbaa !5
  %124 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %123, i64 0, i32 15
  %125 = load ptr, ptr %124, align 8, !tbaa !85
  %126 = load ptr, ptr %116, align 8, !tbaa !104
  %127 = load i32, ptr %118, align 8, !tbaa !105
  tail call void %125(ptr noundef %123, ptr noundef %126, i32 noundef %127, ptr noundef nonnull @.str.57) #15
  %128 = load ptr, ptr %112, align 8, !tbaa !5
  %129 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %128, i64 0, i32 11
  %130 = load ptr, ptr %129, align 8, !tbaa !106
  tail call void %130(ptr noundef %128, ptr noundef nonnull %114, ptr noundef nonnull @.str.58) #15
  %131 = load ptr, ptr %96, align 8, !tbaa !101
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %113, !llvm.loop !107

133:                                              ; preds = %113, %99
  %134 = tail call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.46) #15
  %135 = load ptr, ptr %8, align 8, !tbaa !41
  %136 = tail call i32 @pputs(ptr noundef %135, ptr noundef nonnull @.str.5) #15
  br label %137

137:                                              ; preds = %133, %95
  %138 = phi i64 [ %102, %133 ], [ 0, %95 ]
  %139 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 48
  %140 = load i64, ptr %139, align 8, !tbaa !43
  %141 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %140)
  %142 = load i64, ptr %13, align 8, !tbaa !44
  %143 = tail call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.59, i64 noundef %142) #15
  %144 = load i64, ptr %53, align 8, !tbaa !45
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %137
  %147 = tail call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.60, i64 noundef %144) #15
  br label %148

148:                                              ; preds = %146, %137
  %149 = load ptr, ptr %72, align 8, !tbaa !90
  %150 = icmp eq ptr %149, null
  br i1 %150, label %177, label %151

151:                                              ; preds = %148
  %152 = tail call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.61) #15
  %153 = load ptr, ptr %72, align 8, !tbaa !90
  %154 = icmp eq ptr %153, null
  br i1 %154, label %175, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  br label %157

157:                                              ; preds = %155, %157
  %158 = phi ptr [ %153, %155 ], [ %173, %157 ]
  %159 = load ptr, ptr %158, align 8, !tbaa !99
  store ptr %159, ptr %72, align 8, !tbaa !90
  %160 = getelementptr inbounds %struct.pdf_article_s, ptr %158, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !108
  %162 = tail call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.49, i64 noundef %161) #15
  %163 = load ptr, ptr %156, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %163, i64 0, i32 15
  %165 = load ptr, ptr %164, align 8, !tbaa !85
  %166 = getelementptr inbounds %struct.pdf_article_s, ptr %158, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !109
  %168 = getelementptr inbounds %struct.pdf_article_s, ptr %158, i64 0, i32 1, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !110
  tail call void %165(ptr noundef %163, ptr noundef %167, i32 noundef %169, ptr noundef nonnull @.str.62) #15
  %170 = load ptr, ptr %156, align 8, !tbaa !5
  %171 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %170, i64 0, i32 11
  %172 = load ptr, ptr %171, align 8, !tbaa !106
  tail call void %172(ptr noundef %170, ptr noundef nonnull %158, ptr noundef nonnull @.str.63) #15
  %173 = load ptr, ptr %72, align 8, !tbaa !90
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %157, !llvm.loop !111

175:                                              ; preds = %157, %151
  %176 = tail call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.43) #15
  br label %177

177:                                              ; preds = %175, %148
  %178 = icmp eq i64 %138, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %177
  %180 = tail call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.64, i64 noundef %138) #15
  br label %181

181:                                              ; preds = %179, %177
  %182 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 67
  %183 = load ptr, ptr %182, align 8, !tbaa !83
  %184 = icmp eq ptr %183, null
  br i1 %184, label %196, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr %8, align 8, !tbaa !41
  %187 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 67, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !84
  %189 = tail call i32 @pwrite(ptr noundef %186, ptr noundef nonnull %183, i32 noundef %188) #15
  %190 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %191 = load ptr, ptr %190, align 8, !tbaa !5
  %192 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %191, i64 0, i32 15
  %193 = load ptr, ptr %192, align 8, !tbaa !85
  %194 = load ptr, ptr %182, align 8, !tbaa !83
  %195 = load i32, ptr %187, align 8, !tbaa !84
  tail call void %193(ptr noundef %191, ptr noundef %194, i32 noundef %195, ptr noundef nonnull @.str.18) #15
  store ptr null, ptr %182, align 8, !tbaa !83
  br label %196

196:                                              ; preds = %181, %185
  %197 = tail call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.46) #15
  %198 = load ptr, ptr %8, align 8, !tbaa !41
  %199 = tail call i32 @pputs(ptr noundef %198, ptr noundef nonnull @.str.5) #15
  %200 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 49
  %201 = load i64, ptr %200, align 8, !tbaa !112
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %240

203:                                              ; preds = %196
  %204 = load ptr, ptr %8, align 8, !tbaa !41
  %205 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %206 = load i64, ptr %205, align 8, !tbaa !40
  %207 = add nsw i64 %206, 1
  store i64 %207, ptr %205, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %208 = tail call i64 @stell(ptr noundef %204) #15
  store i64 %208, ptr %4, align 8, !tbaa !42
  %209 = load ptr, ptr %10, align 8, !tbaa !34
  %210 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %209)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %211 = tail call ptr @pprintld1(ptr noundef %204, ptr noundef nonnull @.str.4, i64 noundef %206) #15
  store i64 %206, ptr %200, align 8, !tbaa !112
  %212 = tail call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.65) #15
  %213 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  %214 = call i64 @time(ptr noundef nonnull %2) #15
  %215 = call ptr @localtime(ptr noundef nonnull %2) #15
  %216 = load i32, ptr %215, align 8, !tbaa.struct !113
  %217 = getelementptr inbounds i8, ptr %215, i64 4
  %218 = load i32, ptr %217, align 4, !tbaa.struct !114
  %219 = getelementptr inbounds i8, ptr %215, i64 8
  %220 = load i32, ptr %219, align 8, !tbaa.struct !115
  %221 = getelementptr inbounds i8, ptr %215, i64 12
  %222 = load i32, ptr %221, align 4, !tbaa.struct !116
  %223 = getelementptr inbounds i8, ptr %215, i64 16
  %224 = load i32, ptr %223, align 8, !tbaa.struct !117
  %225 = getelementptr inbounds i8, ptr %215, i64 20
  %226 = load i32, ptr %225, align 4, !tbaa.struct !118
  %227 = add nsw i32 %226, 1900
  %228 = add nsw i32 %224, 1
  %229 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %227, i32 noundef %228, i32 noundef %222, i32 noundef %220, i32 noundef %218, i32 noundef %216) #15
  %230 = call ptr @pprints1(ptr noundef %213, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #15
  %231 = load i64, ptr @gs_revision, align 8, !tbaa !42
  %232 = sitofp i64 %231 to double
  %233 = fdiv double %232, 1.000000e+02
  %234 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %233) #15
  %235 = load ptr, ptr @gs_product, align 8, !tbaa !64
  %236 = call ptr @pprints2(ptr noundef %213, ptr noundef nonnull @.str.22, ptr noundef %235, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %237 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.46) #15
  %238 = load ptr, ptr %8, align 8, !tbaa !41
  %239 = call i32 @pputs(ptr noundef %238, ptr noundef nonnull @.str.5) #15
  br label %240

240:                                              ; preds = %203, %196
  %241 = call i64 @stell(ptr noundef %9) #15
  %242 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 43
  %243 = load i64, ptr %242, align 8, !tbaa !39
  %244 = icmp eq i64 %243, 1
  br i1 %244, label %245, label %249

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %247 = load i64, ptr %246, align 8, !tbaa !40
  %248 = call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.66, i64 noundef %247) #15
  br label %256

249:                                              ; preds = %240
  %250 = call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.67, i64 noundef %243) #15
  %251 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %252 = load i64, ptr %251, align 8, !tbaa !40
  %253 = load i64, ptr %242, align 8, !tbaa !39
  %254 = sub nsw i64 %252, %253
  %255 = call ptr @pprintld1(ptr noundef %9, ptr noundef %250, i64 noundef %254) #15
  br label %256

256:                                              ; preds = %249, %245
  %257 = call i32 @fseek(ptr noundef %11, i64 noundef 0, i32 noundef 0)
  %258 = load i64, ptr %242, align 8, !tbaa !39
  %259 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %260 = load i64, ptr %259, align 8, !tbaa !40
  %261 = icmp slt i64 %258, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %256, %262
  %263 = phi i64 [ %268, %262 ], [ %258, %256 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %7) #15
  %264 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 8, i64 noundef 1, ptr noundef %11)
  %265 = load i64, ptr %6, align 8, !tbaa !42
  %266 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.68, i64 noundef %265) #15
  %267 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %268 = add nsw i64 %263, 1
  %269 = load i64, ptr %259, align 8, !tbaa !40
  %270 = icmp slt i64 %268, %269
  br i1 %270, label %262, label %271, !llvm.loop !119

271:                                              ; preds = %262, %256
  %272 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %273 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.69) #15
  %274 = load i64, ptr %272, align 8, !tbaa !40
  %275 = call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.70, i64 noundef %274) #15
  %276 = load i64, ptr %139, align 8, !tbaa !43
  %277 = call ptr @pprintld1(ptr noundef %9, ptr noundef %275, i64 noundef %276) #15
  %278 = load i64, ptr %200, align 8, !tbaa !112
  %279 = call ptr @pprintld1(ptr noundef %9, ptr noundef %277, i64 noundef %278) #15
  %280 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.46) #15
  %281 = call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.71, i64 noundef %241) #15
  %282 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 66
  %283 = load ptr, ptr %282, align 8, !tbaa !73
  %284 = icmp eq ptr %283, null
  br i1 %284, label %295, label %285

285:                                              ; preds = %271
  %286 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  br label %287

287:                                              ; preds = %285, %287
  %288 = phi ptr [ %283, %285 ], [ %290, %287 ]
  %289 = getelementptr inbounds %struct.pdf_resource_s, ptr %288, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !120
  %291 = load ptr, ptr %286, align 8, !tbaa !5
  %292 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %291, i64 0, i32 11
  %293 = load ptr, ptr %292, align 8, !tbaa !106
  call void %293(ptr noundef %291, ptr noundef nonnull %288, ptr noundef nonnull @.str.27) #15
  %294 = icmp eq ptr %290, null
  br i1 %294, label %295, label %287, !llvm.loop !121

295:                                              ; preds = %287, %271
  store ptr null, ptr %282, align 8, !tbaa !73
  %296 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %297 = load ptr, ptr %296, align 8, !tbaa !5
  %298 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %297, i64 0, i32 11
  %299 = load ptr, ptr %298, align 8, !tbaa !106
  %300 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 61
  %301 = load ptr, ptr %300, align 8, !tbaa !50
  call void %299(ptr noundef %297, ptr noundef %301, ptr noundef nonnull @.str.72) #15
  store ptr null, ptr %300, align 8, !tbaa !50
  %302 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 62
  store i32 0, ptr %302, align 8, !tbaa !51
  call void @gdev_vector_close_file(ptr noundef %0) #15
  %303 = load ptr, ptr %10, align 8, !tbaa !34
  %304 = call i32 @fclose(ptr noundef %303)
  store ptr null, ptr %10, align 8, !tbaa !34
  %305 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 45
  %306 = call i32 @unlink(ptr noundef nonnull %305)
  ret i32 0
}

declare i64 @gx_default_rgb_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare i32 @gx_default_rgb_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdf_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq i64 %5, 16777215
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %10, %6
  %15 = tail call i32 @pdf_open_page(ptr noundef %0, i32 noundef 1), !range !122
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 34
  %19 = load i64, ptr %18, align 8, !tbaa !123
  %20 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 33
  %21 = load i64, ptr %20, align 8, !tbaa !124
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !tbaa !41
  %25 = tail call i32 @pputs(ptr noundef %24, ptr noundef nonnull @.str.23) #15
  %26 = load i64, ptr %20, align 8, !tbaa !124
  store i64 %26, ptr %18, align 8, !tbaa !123
  %27 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76, i32 1
  store ptr null, ptr %27, align 8, !tbaa !125
  %28 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 55
  %29 = load i32, ptr %28, align 4, !tbaa !126
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, ptr %28, align 4, !tbaa !126
  br label %32

32:                                               ; preds = %31, %23
  %33 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  %34 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31, i32 1
  store i64 0, ptr %34, align 8, !tbaa !63
  %35 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  store ptr %35, ptr %33, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32
  %37 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32, i32 1
  store i64 0, ptr %37, align 8, !tbaa !63
  store ptr %35, ptr %36, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 59
  store float -1.000000e+00, ptr %38, align 4, !tbaa !67
  %39 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %39, ptr noundef nonnull align 8 dereferenceable(72) @pdf_reset_graphics.lp_initial, i64 72, i1 false), !tbaa.struct !68
  br label %40

40:                                               ; preds = %17, %32
  %41 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !63
  %43 = icmp eq i64 %42, %5
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  store i64 %5, ptr %41, align 8, !tbaa !63
  %46 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  store ptr %46, ptr %45, align 8, !tbaa !127
  %47 = tail call i32 @psdf_set_color(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull @.str.73) #15
  br label %48

48:                                               ; preds = %40, %44
  %49 = sitofp i32 %1 to double
  %50 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %51 = load double, ptr %50, align 8, !tbaa !37
  %52 = fdiv double %49, %51
  %53 = sitofp i32 %2 to double
  %54 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %55 = load double, ptr %54, align 8, !tbaa !38
  %56 = fdiv double %53, %55
  %57 = sitofp i32 %3 to double
  %58 = fdiv double %57, %51
  %59 = sitofp i32 %4 to double
  %60 = fdiv double %59, %55
  %61 = tail call ptr @pprintg4(ptr noundef %8, ptr noundef nonnull @.str.74, double noundef %52, double noundef %56, double noundef %58, double noundef %60) #15
  br label %62

62:                                               ; preds = %14, %10, %48
  %63 = phi i32 [ 0, %48 ], [ 0, %10 ], [ %15, %14 ]
  ret i32 %63
}

declare i32 @gdev_pdf_copy_mono(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) #0

declare i32 @gdev_pdf_copy_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare i32 @gdev_pdf_get_params(ptr noundef, ptr noundef) #0

declare i32 @gdev_pdf_put_params(ptr noundef, ptr noundef) #0

declare ptr @gx_page_device_get_page_device(ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @pdf_fill_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = tail call i32 @gx_path_is_void(ptr noundef %2) #15
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %4, align 8, !tbaa !127
  %12 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 @gx_default_fill_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #15
  br label %85

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.gx_device_color_s, ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !63
  %19 = icmp eq i64 %18, 16777215
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  %22 = load i32, ptr %21, align 8, !tbaa !62
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %85, label %24

24:                                               ; preds = %20, %16
  br i1 %10, label %55, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 55
  %27 = load i32, ptr %26, align 4, !tbaa !126
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %25
  %30 = icmp eq ptr %5, null
  %31 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 34
  %32 = load i64, ptr %31, align 8, !tbaa !123
  br i1 %30, label %50, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !128
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %58, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 8
  %39 = load i32, ptr %38, align 8, !tbaa !134
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 12
  %42 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 9
  %43 = load i32, ptr %42, align 4, !tbaa !135
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 12
  %46 = tail call i32 @gx_cpath_includes_rectangle(ptr noundef nonnull %5, i64 noundef 0, i64 noundef 0, i64 noundef %41, i64 noundef %45) #15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %37
  %49 = load i64, ptr %31, align 8, !tbaa !123
  br label %50

50:                                               ; preds = %29, %48
  %51 = phi i64 [ %49, %48 ], [ %32, %29 ]
  %52 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 33
  %53 = load i64, ptr %52, align 8, !tbaa !124
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %37, %50, %25, %24
  %56 = tail call i32 @pdf_open_page(ptr noundef %0, i32 noundef 1), !range !122
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %33, %55, %50
  %59 = tail call i32 @pdf_put_clip_path(ptr noundef %0, ptr noundef %5)
  %60 = load i64, ptr %17, align 8, !tbaa !63
  %61 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !63
  %63 = icmp eq i64 %62, %60
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  store i64 %60, ptr %61, align 8, !tbaa !63
  %66 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  store ptr %66, ptr %65, align 8, !tbaa !127
  %67 = tail call i32 @psdf_set_color(ptr noundef %0, ptr noundef nonnull %65, ptr noundef nonnull @.str.73) #15
  br label %68

68:                                               ; preds = %58, %64
  br i1 %10, label %69, label %85

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 2
  %71 = load float, ptr %70, align 8, !tbaa !136
  %72 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 59
  %73 = load float, ptr %72, align 4, !tbaa !67
  %74 = fcmp une float %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = fpext float %71 to double
  %77 = tail call ptr @pprintg1(ptr noundef %8, ptr noundef nonnull @.str.79, double noundef %76) #15
  %78 = load float, ptr %70, align 8, !tbaa !136
  store float %78, ptr %72, align 4, !tbaa !67
  br label %79

79:                                               ; preds = %75, %69
  %80 = tail call fastcc i32 @pdf_put_path(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  %81 = load i32, ptr %3, align 8, !tbaa !138
  %82 = icmp slt i32 %81, 0
  %83 = select i1 %82, ptr @.str.80, ptr @.str.81
  %84 = tail call i32 @pputs(ptr noundef %8, ptr noundef nonnull %83) #15
  br label %85

85:                                               ; preds = %68, %79, %55, %20, %14
  %86 = phi i32 [ %15, %14 ], [ 0, %20 ], [ %56, %55 ], [ 0, %79 ], [ 0, %68 ]
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7
  %11 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !139
  %13 = load ptr, ptr %4, align 8, !tbaa !127
  %14 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = tail call i32 @gx_default_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #15
  br label %223

18:                                               ; preds = %6
  %19 = tail call i32 @pdf_open_page(ptr noundef %0, i32 noundef 1), !range !122
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %223, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %23 = load double, ptr %22, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fcmp une double %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = tail call i32 @gx_default_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #15
  br label %223

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2
  %31 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !140
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !141
  %37 = fcmp oeq float %36, 0.000000e+00
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load float, ptr %30, align 8, !tbaa !142
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = fpext float %40 to double
  %42 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !143
  %44 = tail call float @llvm.fabs.f32(float %43)
  %45 = fcmp une float %44, %40
  br i1 %45, label %46, label %87

46:                                               ; preds = %38
  %47 = tail call i32 @gx_default_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #15
  br label %223

48:                                               ; preds = %34, %29
  %49 = load float, ptr %30, align 8, !tbaa !142
  %50 = fcmp oeq float %49, 0.000000e+00
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 3
  %53 = load float, ptr %52, align 4, !tbaa !143
  %54 = fcmp oeq float %53, 0.000000e+00
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = tail call float @llvm.fabs.f32(float %32)
  %57 = fpext float %56 to double
  %58 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 2
  %59 = load float, ptr %58, align 8, !tbaa !141
  %60 = tail call float @llvm.fabs.f32(float %59)
  %61 = fcmp une float %60, %56
  br i1 %61, label %62, label %87

62:                                               ; preds = %55
  %63 = tail call i32 @gx_default_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #15
  br label %223

64:                                               ; preds = %51, %48
  %65 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 3
  %66 = load float, ptr %65, align 4, !tbaa !143
  %67 = fcmp oeq float %49, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 2
  %70 = load float, ptr %69, align 8, !tbaa !141
  %71 = fneg float %70
  %72 = fcmp oeq float %32, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %68, %64
  %74 = fneg float %66
  %75 = fcmp oeq float %49, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 2
  %78 = load float, ptr %77, align 8, !tbaa !141
  %79 = fcmp oeq float %32, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76, %68
  %81 = fmul float %32, %32
  %82 = tail call float @llvm.fmuladd.f32(float %49, float %49, float %81)
  %83 = fpext float %82 to double
  %84 = tail call double @sqrt(double noundef %83) #15
  br label %87

85:                                               ; preds = %76, %73
  %86 = tail call i32 @gx_default_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #15
  br label %223

87:                                               ; preds = %80, %55, %38
  %88 = phi double [ %41, %38 ], [ %57, %55 ], [ %84, %80 ]
  %89 = load double, ptr %22, align 8, !tbaa !37
  %90 = fdiv double %88, %89
  %91 = tail call i32 @pdf_put_clip_path(ptr noundef %0, ptr noundef %5)
  %92 = getelementptr inbounds %struct.gx_device_color_s, ptr %4, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !63
  %94 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !63
  %96 = icmp eq i64 %95, %93
  br i1 %96, label %101, label %97

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32
  store i64 %93, ptr %94, align 8, !tbaa !63
  %99 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  store ptr %99, ptr %98, align 8, !tbaa !127
  %100 = tail call i32 @psdf_set_color(ptr noundef %0, ptr noundef nonnull %98, ptr noundef nonnull @.str.82) #15
  br label %101

101:                                              ; preds = %87, %97
  %102 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 2
  %103 = load float, ptr %102, align 4, !tbaa !144
  %104 = fpext float %103 to double
  %105 = fmul double %90, %104
  %106 = fptrunc double %105 to float
  %107 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60
  %108 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60, i32 7, i32 2
  %109 = load float, ptr %108, align 4, !tbaa !145
  %110 = fcmp une float %109, %106
  br i1 %110, label %139, label %111

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60, i32 7, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !146
  %114 = icmp ne i32 %12, %113
  %115 = icmp sgt i32 %12, 11
  %116 = or i1 %115, %114
  br i1 %116, label %139, label %117

117:                                              ; preds = %111
  %118 = icmp eq i32 %12, 0
  br i1 %118, label %168, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 30
  %121 = fptrunc double %90 to float
  %122 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !147
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %168, label %125

125:                                              ; preds = %119
  %126 = load ptr, ptr %10, align 8, !tbaa !148
  %127 = zext i32 %123 to i64
  br label %131

128:                                              ; preds = %131
  %129 = add nuw nsw i64 %132, 1
  %130 = icmp eq i64 %129, %127
  br i1 %130, label %168, label %131, !llvm.loop !149

131:                                              ; preds = %128, %125
  %132 = phi i64 [ 0, %125 ], [ %129, %128 ]
  %133 = getelementptr inbounds float, ptr %120, i64 %132
  %134 = load float, ptr %133, align 4, !tbaa !36
  %135 = getelementptr inbounds float, ptr %126, i64 %132
  %136 = load float, ptr %135, align 4, !tbaa !36
  %137 = fmul float %136, %121
  %138 = fcmp une float %134, %137
  br i1 %138, label %139, label %128

139:                                              ; preds = %131, %111, %101
  %140 = tail call i32 @pputs(ptr noundef %8, ptr noundef nonnull @.str.83) #15
  %141 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60, i32 7, i32 1
  store i32 %12, ptr %141, align 8, !tbaa !146
  %142 = icmp sgt i32 %12, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %139
  %144 = zext nneg i32 %12 to i64
  br label %145

145:                                              ; preds = %143, %156
  %146 = phi i64 [ 0, %143 ], [ %159, %156 ]
  %147 = load ptr, ptr %10, align 8, !tbaa !150
  %148 = getelementptr inbounds float, ptr %147, i64 %146
  %149 = load float, ptr %148, align 4, !tbaa !36
  %150 = fpext float %149 to double
  %151 = fmul double %90, %150
  %152 = fptrunc double %151 to float
  %153 = icmp ult i64 %146, 11
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 30, i64 %146
  store float %152, ptr %155, align 4, !tbaa !36
  br label %156

156:                                              ; preds = %154, %145
  %157 = fpext float %152 to double
  %158 = tail call ptr @pprintg1(ptr noundef %8, ptr noundef nonnull @.str.84, double noundef %157) #15
  %159 = add nuw nsw i64 %146, 1
  %160 = icmp eq i64 %159, %144
  br i1 %160, label %161, label %145, !llvm.loop !151

161:                                              ; preds = %156, %139
  %162 = load float, ptr %102, align 4, !tbaa !144
  %163 = fpext float %162 to double
  %164 = fmul double %90, %163
  %165 = fptrunc double %164 to float
  store float %165, ptr %108, align 4, !tbaa !145
  %166 = fpext float %165 to double
  %167 = tail call ptr @pprintg1(ptr noundef %8, ptr noundef nonnull @.str.85, double noundef %166) #15
  br label %168

168:                                              ; preds = %128, %119, %161, %117
  %169 = load float, ptr %3, align 4, !tbaa !152
  %170 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 59
  %171 = load float, ptr %170, align 4, !tbaa !67
  %172 = fcmp une float %169, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = fpext float %169 to double
  %175 = tail call ptr @pprintg1(ptr noundef %8, ptr noundef nonnull @.str.79, double noundef %174) #15
  %176 = load float, ptr %3, align 4, !tbaa !152
  store float %176, ptr %170, align 4, !tbaa !67
  br label %177

177:                                              ; preds = %173, %168
  %178 = load float, ptr %9, align 8, !tbaa !154
  %179 = fpext float %178 to double
  %180 = fmul double %90, %179
  %181 = fptrunc double %180 to float
  %182 = load float, ptr %107, align 8, !tbaa !155
  %183 = fcmp une float %182, %181
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  store float %181, ptr %107, align 8, !tbaa !155
  %185 = fmul float %181, 2.000000e+00
  %186 = fpext float %185 to double
  %187 = tail call ptr @pprintg1(ptr noundef %8, ptr noundef nonnull @.str.86, double noundef %186) #15
  br label %188

188:                                              ; preds = %184, %177
  %189 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 3
  %190 = load float, ptr %189, align 4, !tbaa !156
  %191 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60, i32 3
  %192 = load float, ptr %191, align 4, !tbaa !157
  %193 = fcmp une float %190, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = fpext float %190 to double
  %196 = tail call ptr @pprintg1(ptr noundef %8, ptr noundef nonnull @.str.87, double noundef %195) #15
  %197 = load float, ptr %189, align 4, !tbaa !156
  %198 = fpext float %197 to double
  %199 = tail call i32 @gx_set_miter_limit(ptr noundef nonnull %107, double noundef %198) #15
  br label %200

200:                                              ; preds = %194, %188
  %201 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !158
  %203 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !159
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %209, label %206

206:                                              ; preds = %200
  %207 = tail call ptr @pprintd1(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef %202) #15
  %208 = load i32, ptr %201, align 4, !tbaa !158
  store i32 %208, ptr %203, align 4, !tbaa !159
  br label %209

209:                                              ; preds = %206, %200
  %210 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 2
  %211 = load i32, ptr %210, align 8, !tbaa !160
  %212 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !161
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %218, label %215

215:                                              ; preds = %209
  %216 = tail call ptr @pprintd1(ptr noundef %8, ptr noundef nonnull @.str.89, i32 noundef %211) #15
  %217 = load i32, ptr %210, align 8, !tbaa !160
  store i32 %217, ptr %212, align 8, !tbaa !161
  br label %218

218:                                              ; preds = %215, %209
  %219 = tail call fastcc i32 @pdf_put_path(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, ptr @.str.91, ptr @.str.90
  %222 = tail call i32 @pputs(ptr noundef %8, ptr noundef nonnull %221) #15
  br label %223

223:                                              ; preds = %18, %218, %85, %62, %46, %27, %16
  %224 = phi i32 [ %28, %27 ], [ %47, %46 ], [ 0, %218 ], [ %63, %62 ], [ %86, %85 ], [ %17, %16 ], [ %19, %18 ]
  ret i32 %224
}

declare i32 @gdev_pdf_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

declare i32 @gdev_pdf_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @gdev_pdf_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare i32 @gdev_pdf_end_image(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @pdf_initialize_ids(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 43
  %5 = load i64, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %7 = add nsw i64 %5, 1
  store i64 %7, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %10 = tail call i64 @stell(ptr noundef %9) #15
  store i64 %10, ptr %3, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %12)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %14 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 48
  store i64 %5, ptr %14, align 8, !tbaa !43
  %15 = load i64, ptr %6, align 8, !tbaa !40
  %16 = add nsw i64 %15, 1
  store i64 %16, ptr %6, align 8, !tbaa !40
  %17 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %18 = tail call i64 @stell(ptr noundef %17) #15
  store i64 %18, ptr %2, align 8, !tbaa !42
  %19 = load ptr, ptr %11, align 8, !tbaa !34
  %20 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 8, i64 noundef 1, ptr noundef %19)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %21 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 50
  store i64 %15, ptr %21, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pdf_obj_ref(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %4 = load i64, ptr %3, align 8, !tbaa !40
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %8 = tail call i64 @stell(ptr noundef %7) #15
  store i64 %8, ptr %2, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 8, i64 noundef 1, ptr noundef %10)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @pdf_open_document(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 66
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = tail call i64 @stell(ptr noundef %3) #15
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = tail call i32 @pputs(ptr noundef %3, ptr noundef nonnull @.str.2) #15
  %16 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 40
  %17 = load i32, ptr %16, align 8, !tbaa !74
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 44
  store i32 %19, ptr %20, align 8, !tbaa !75
  br i1 %18, label %21, label %23

21:                                               ; preds = %14
  %22 = tail call i32 @pputs(ptr noundef %3, ptr noundef nonnull @.str.3) #15
  br label %23

23:                                               ; preds = %14, %21, %11, %7, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i64 @stell(ptr noundef) local_unnamed_addr #0

declare i32 @pputs(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @pdf_open_obj(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp slt i64 %1, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %10 = load i64, ptr %9, align 8, !tbaa !40
  %11 = add nsw i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %12 = tail call i64 @stell(ptr noundef %6) #15
  store i64 %12, ptr %3, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %19 = tail call i64 @stell(ptr noundef %6) #15
  store i64 %19, ptr %4, align 8, !tbaa !42
  %20 = tail call i64 @ftell(ptr noundef %18)
  %21 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 43
  %22 = load i64, ptr %21, align 8, !tbaa !39
  %23 = sub nsw i64 %1, %22
  %24 = shl i64 %23, 3
  %25 = tail call i32 @fseek(ptr noundef %18, i64 noundef %24, i32 noundef 0)
  %26 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %18)
  %27 = tail call i32 @fseek(ptr noundef %18, i64 noundef %20, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %28

28:                                               ; preds = %16, %8
  %29 = phi i64 [ %10, %8 ], [ %1, %16 ]
  %30 = tail call ptr @pprintld1(ptr noundef %6, ptr noundef nonnull @.str.4, i64 noundef %29) #15
  ret i64 %29
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pprintld1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_end_obj(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = tail call i32 @pputs(ptr noundef %3, ptr noundef nonnull @.str.5) #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_set_color(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !63
  %7 = icmp eq i64 %6, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  store i64 %1, ptr %5, align 8, !tbaa !63
  %9 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  store ptr %9, ptr %2, align 8, !tbaa !127
  %10 = tail call i32 @psdf_set_color(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #15
  br label %11

11:                                               ; preds = %8, %4
  ret i32 0
}

declare i32 @psdf_set_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @pdf_set_scale(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 13
  %3 = load float, ptr %2, align 4, !tbaa !36
  %4 = fpext float %3 to double
  %5 = fdiv double %4, 7.200000e+01
  %6 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  store double %5, ptr %6, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 13, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !36
  %9 = fpext float %8 to double
  %10 = fdiv double %9, 7.200000e+01
  %11 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  store double %10, ptr %11, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_open_contents(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 55
  %8 = load i32, ptr %7, align 4, !tbaa !126
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = icmp eq i32 %12, 300
  br i1 %13, label %52, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %16 = load i64, ptr %15, align 8, !tbaa !40
  %17 = add nsw i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %18 = tail call i64 @stell(ptr noundef %6) #15
  store i64 %18, ptr %4, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %20)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %22 = tail call ptr @pprintld1(ptr noundef %6, ptr noundef nonnull @.str.4, i64 noundef %16) #15
  %23 = sext i32 %12 to i64
  %24 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 53, i64 %23
  store i64 %16, ptr %24, align 8, !tbaa !42
  %25 = add nsw i32 %12, 1
  store i32 %25, ptr %11, align 8, !tbaa !62
  %26 = load i64, ptr %15, align 8, !tbaa !40
  %27 = add nsw i64 %26, 1
  store i64 %27, ptr %15, align 8, !tbaa !40
  %28 = load ptr, ptr %5, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %29 = tail call i64 @stell(ptr noundef %28) #15
  store i64 %29, ptr %3, align 8, !tbaa !42
  %30 = load ptr, ptr %19, align 8, !tbaa !34
  %31 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %30)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %32 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 56
  store i64 %26, ptr %32, align 8, !tbaa !162
  %33 = tail call ptr @pprintld1(ptr noundef %6, ptr noundef nonnull @.str.6, i64 noundef %26) #15
  %34 = tail call i32 @pputs(ptr noundef %6, ptr noundef nonnull @.str.7) #15
  store i32 1, ptr %7, align 4, !tbaa !126
  %35 = tail call i64 @stell(ptr noundef %6) #15
  %36 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 57
  store i64 %35, ptr %36, align 8, !tbaa !163
  %37 = icmp eq i32 %12, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %14
  %39 = tail call i32 @pputs(ptr noundef %6, ptr noundef nonnull @.str.8) #15
  br label %40

40:                                               ; preds = %38, %14, %2
  %41 = load i32, ptr %7, align 4, !tbaa !126
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  switch i32 %1, label %51 [
    i32 2, label %44
    i32 1, label %49
  ]

44:                                               ; preds = %43
  %45 = tail call i32 @pputs(ptr noundef %6, ptr noundef nonnull @.str.9) #15
  %46 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 58
  %47 = load i32, ptr %46, align 8, !tbaa !70
  %48 = or i32 %47, 8
  store i32 %48, ptr %46, align 8, !tbaa !70
  br label %51

49:                                               ; preds = %43
  %50 = tail call i32 @pputs(ptr noundef %6, ptr noundef nonnull @.str.10) #15
  br label %51

51:                                               ; preds = %43, %49, %44
  store i32 %1, ptr %7, align 4, !tbaa !126
  br label %52

52:                                               ; preds = %10, %40, %51
  %53 = phi i32 [ 0, %51 ], [ 0, %40 ], [ -13, %10 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_close_contents(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 55
  %6 = load i32, ptr %5, align 4, !tbaa !126
  switch i32 %6, label %9 [
    i32 0, label %28
    i32 2, label %7
  ]

7:                                                ; preds = %2
  %8 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.10) #15
  br label %9

9:                                                ; preds = %7, %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.11) #15
  %13 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76, i32 1
  store ptr null, ptr %13, align 8, !tbaa !125
  br label %14

14:                                               ; preds = %11, %9
  %15 = tail call i64 @stell(ptr noundef %4) #15
  %16 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 57
  %17 = load i64, ptr %16, align 8, !tbaa !163
  %18 = sub nsw i64 %15, %17
  %19 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.12) #15
  %20 = load ptr, ptr %3, align 8, !tbaa !41
  %21 = tail call i32 @pputs(ptr noundef %20, ptr noundef nonnull @.str.5) #15
  %22 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 56
  %23 = load i64, ptr %22, align 8, !tbaa !162
  %24 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %23)
  %25 = tail call ptr @pprintld1(ptr noundef %4, ptr noundef nonnull @.str.13, i64 noundef %18) #15
  %26 = load ptr, ptr %3, align 8, !tbaa !41
  %27 = tail call i32 @pputs(ptr noundef %26, ptr noundef nonnull @.str.5) #15
  store i32 0, ptr %5, align 4, !tbaa !126
  br label %28

28:                                               ; preds = %2, %14
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @pdf_find_resource_by_gs_id(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 64, i64 %4
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pdf_resource_s, ptr %8, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !86
  %13 = icmp eq i64 %12, %2
  br i1 %13, label %14, label %6, !llvm.loop !164

14:                                               ; preds = %10
  %15 = load ptr, ptr %8, align 8, !tbaa !78
  store ptr %15, ptr %7, align 8, !tbaa !64
  %16 = load ptr, ptr %5, align 8, !tbaa !64
  store ptr %16, ptr %8, align 8, !tbaa !78
  store ptr %8, ptr %5, align 8, !tbaa !64
  br label %17

17:                                               ; preds = %6, %14
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_begin_aside(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 55
  %7 = load i32, ptr %6, align 4, !tbaa !126
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  %11 = load i32, ptr %10, align 8, !tbaa !62
  %12 = icmp eq i32 %11, 300
  br i1 %12, label %60, label %13

13:                                               ; preds = %9, %4
  %14 = icmp eq ptr %2, null
  %15 = select i1 %14, ptr @st_pdf_resource, ptr %2
  %16 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !165
  %20 = tail call ptr %19(ptr noundef %17, ptr noundef nonnull %15, ptr noundef nonnull @.str.14) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %60, label %22

22:                                               ; preds = %13
  %23 = tail call i32 @pdf_close_contents(ptr noundef %0, i32 noundef 0)
  %24 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  %27 = load i32, ptr %26, align 8, !tbaa !62
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 66
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = tail call i64 @stell(ptr noundef %25) #15
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = tail call i32 @pputs(ptr noundef %25, ptr noundef nonnull @.str.2) #15
  %38 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 40
  %39 = load i32, ptr %38, align 8, !tbaa !74
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 44
  store i32 %41, ptr %42, align 8, !tbaa !75
  br i1 %40, label %43, label %45

43:                                               ; preds = %36
  %44 = tail call i32 @pputs(ptr noundef %25, ptr noundef nonnull @.str.3) #15
  br label %45

45:                                               ; preds = %22, %29, %33, %36, %43
  %46 = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %46, ptr %20, align 8, !tbaa !78
  store ptr %20, ptr %1, align 8, !tbaa !64
  %47 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 66
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct.pdf_resource_s, ptr %20, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !120
  store ptr %20, ptr %47, align 8, !tbaa !73
  %50 = load ptr, ptr %24, align 8, !tbaa !41
  %51 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %52 = load i64, ptr %51, align 8, !tbaa !40
  %53 = add nsw i64 %52, 1
  store i64 %53, ptr %51, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %54 = tail call i64 @stell(ptr noundef %50) #15
  store i64 %54, ptr %5, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef %56)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %58 = tail call ptr @pprintld1(ptr noundef %50, ptr noundef nonnull @.str.4, i64 noundef %52) #15
  %59 = getelementptr inbounds %struct.pdf_resource_s, ptr %20, i64 0, i32 3
  store i64 %52, ptr %59, align 8, !tbaa !76
  store ptr %20, ptr %3, align 8, !tbaa !64
  br label %60

60:                                               ; preds = %13, %9, %45
  %61 = phi i32 [ 0, %45 ], [ -13, %9 ], [ -25, %13 ]
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_begin_resource(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 64, i64 %6
  %8 = shl i64 %6, 2
  %9 = call ptr @llvm.load.relative.i64(ptr @reltable.pdf_begin_resource, i64 %8)
  %10 = tail call i32 @pdf_begin_aside(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %9, ptr noundef %2), !range !122
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds [5 x ptr], ptr @resource_names, i64 0, i64 %6
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = tail call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef %14) #15
  %16 = load ptr, ptr %2, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.pdf_resource_s, ptr %16, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !76
  %19 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.16, i64 noundef %18) #15
  br label %20

20:                                               ; preds = %3, %12
  ret i32 %10
}

declare ptr @pprints1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_end_aside(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = tail call i32 @pputs(ptr noundef %3, ptr noundef nonnull @.str.5) #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_end_resource(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = tail call i32 @pputs(ptr noundef %3, ptr noundef nonnull @.str.5) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @pdf_reset_page(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  store i32 0, ptr %2, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  %4 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31, i32 1
  store i64 0, ptr %4, align 8, !tbaa !63
  %5 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  store ptr %5, ptr %3, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32, i32 1
  store i64 0, ptr %7, align 8, !tbaa !63
  store ptr %5, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 59
  store float -1.000000e+00, ptr %8, align 4, !tbaa !67
  %9 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) @pdf_reset_graphics.lp_initial, i64 72, i1 false), !tbaa.struct !68
  %10 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 58
  store i32 0, ptr %10, align 8, !tbaa !70
  %11 = getelementptr i8, ptr %0, i64 4192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false), !tbaa !64
  %12 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 69
  store ptr null, ptr %12, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) @pdf_reset_page.text_default, i64 32, i1 false), !tbaa.struct !72
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local i64 @pdf_page_id(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 62
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = add nsw i32 %1, 10
  %9 = shl i32 %5, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %8, i32 %9)
  %11 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !166
  %15 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 61
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = shl i32 %10, 3
  %18 = tail call ptr %14(ptr noundef %12, ptr noundef %16, i32 noundef %17, ptr noundef nonnull @.str.17) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %66, label %20

20:                                               ; preds = %7
  store ptr %18, ptr %15, align 8, !tbaa !50
  store i32 %10, ptr %4, align 8, !tbaa !51
  br label %21

21:                                               ; preds = %20, %2
  %22 = icmp slt i32 %1, 1
  br i1 %22, label %66, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 63
  %25 = load i32, ptr %24, align 4, !tbaa !52
  %26 = icmp slt i32 %25, %1
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 61
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = sext i32 %25 to i64
  %31 = shl nsw i64 %30, 3
  %32 = getelementptr i8, ptr %29, i64 %31
  %33 = xor i32 %25, -1
  %34 = add i32 %33, %1
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 3
  %37 = add nuw nsw i64 %36, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %32, i8 0, i64 %37, i1 false), !tbaa !42
  %38 = sext i32 %25 to i64
  %39 = zext nneg i32 %1 to i64
  br label %40

40:                                               ; preds = %27, %40
  %41 = phi i64 [ %38, %27 ], [ %42, %40 ]
  %42 = add nsw i64 %41, 1
  %43 = icmp eq i64 %42, %39
  br i1 %43, label %44, label %40, !llvm.loop !167

44:                                               ; preds = %40
  %45 = trunc i64 %42 to i32
  store i32 %45, ptr %24, align 4, !tbaa !52
  br label %46

46:                                               ; preds = %44, %23
  %47 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 61
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  %49 = add nsw i32 %1, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, ptr %48, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !42
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %56 = load i64, ptr %55, align 8, !tbaa !40
  %57 = add nsw i64 %56, 1
  store i64 %57, ptr %55, align 8, !tbaa !40
  %58 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %60 = tail call i64 @stell(ptr noundef %59) #15
  store i64 %60, ptr %3, align 8, !tbaa !42
  %61 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %62)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %64 = load ptr, ptr %47, align 8, !tbaa !50
  %65 = getelementptr inbounds i64, ptr %64, i64 %50
  store i64 %56, ptr %65, align 8, !tbaa !42
  br label %66

66:                                               ; preds = %7, %46, %54, %21
  %67 = phi i64 [ 0, %21 ], [ %56, %54 ], [ %52, %46 ], [ 0, %7 ]
  ret i64 %67
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_write_saved_string(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.gs_string_s, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !84
  %10 = tail call i32 @pwrite(ptr noundef %7, ptr noundef nonnull %3, i32 noundef %9) #15
  %11 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = load ptr, ptr %1, align 8, !tbaa !83
  %16 = load i32, ptr %8, align 8, !tbaa !84
  tail call void %14(ptr noundef %12, ptr noundef %15, i32 noundef %16, ptr noundef nonnull @.str.18) #15
  store ptr null, ptr %1, align 8, !tbaa !83
  br label %17

17:                                               ; preds = %5, %2
  ret i32 0
}

declare i32 @pwrite(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_open_page(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 52
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = add nsw i32 %8, 1
  %10 = tail call i64 @pdf_page_id(ptr noundef %0, i32 noundef %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = load i32, ptr %3, align 8, !tbaa !62
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 66
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = tail call i64 @stell(ptr noundef %14) #15
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = tail call i32 @pputs(ptr noundef %14, ptr noundef nonnull @.str.2) #15
  %26 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 40
  %27 = load i32, ptr %26, align 8, !tbaa !74
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 44
  store i32 %29, ptr %30, align 8, !tbaa !75
  br i1 %28, label %31, label %33

31:                                               ; preds = %24
  %32 = tail call i32 @pputs(ptr noundef %14, ptr noundef nonnull @.str.3) #15
  br label %33

33:                                               ; preds = %31, %24, %21, %17, %12, %2
  %34 = icmp eq i32 %1, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = tail call i32 @pdf_open_contents(ptr noundef %0, i32 noundef %1), !range !168
  br label %39

37:                                               ; preds = %33
  %38 = tail call i32 @pdf_close_contents(ptr noundef %0, i32 noundef 0)
  br label %39

39:                                               ; preds = %35, %37, %6
  %40 = phi i32 [ -25, %6 ], [ %36, %35 ], [ 0, %37 ]
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_write_default_info(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca [2 x i64], align 16
  %3 = alloca [20 x i8], align 16
  %4 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  %6 = call i64 @time(ptr noundef nonnull %2) #15
  %7 = call ptr @localtime(ptr noundef nonnull %2) #15
  %8 = load i32, ptr %7, align 8, !tbaa.struct !113
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa.struct !114
  %11 = getelementptr inbounds i8, ptr %7, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa.struct !115
  %13 = getelementptr inbounds i8, ptr %7, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa.struct !116
  %15 = getelementptr inbounds i8, ptr %7, i64 16
  %16 = load i32, ptr %15, align 8, !tbaa.struct !117
  %17 = getelementptr inbounds i8, ptr %7, i64 20
  %18 = load i32, ptr %17, align 4, !tbaa.struct !118
  %19 = add nsw i32 %18, 1900
  %20 = add nsw i32 %16, 1
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %19, i32 noundef %20, i32 noundef %14, i32 noundef %12, i32 noundef %10, i32 noundef %8) #15
  %22 = call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #15
  %23 = load i64, ptr @gs_revision, align 8, !tbaa !42
  %24 = sitofp i64 %23 to double
  %25 = fdiv double %24, 1.000000e+02
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %25) #15
  %27 = load ptr, ptr @gs_product, align 8, !tbaa !64
  %28 = call ptr @pprints2(ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef %27, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @pprints2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdf_put_clip_path(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 34
  %7 = load i64, ptr %6, align 8, !tbaa !123
  br i1 %5, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 33
  %10 = load i64, ptr %9, align 8, !tbaa !124
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %95, label %77

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !128
  %15 = icmp eq i64 %7, %14
  br i1 %15, label %95, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !134
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 12
  %21 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !135
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 12
  %25 = tail call i32 @gx_cpath_includes_rectangle(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i64 noundef %20, i64 noundef %24) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = load i64, ptr %6, align 8, !tbaa !123
  %29 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 33
  %30 = load i64, ptr %29, align 8, !tbaa !124
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %95, label %77

32:                                               ; preds = %16
  %33 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.24) #15
  %34 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 5
  %35 = load i8, ptr %34, align 8, !tbaa !169
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call fastcc i32 @pdf_put_path(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  br label %77

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !170
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4
  %44 = select i1 %42, ptr %43, ptr %41
  %45 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %46 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  br label %47

47:                                               ; preds = %39, %74
  %48 = phi ptr [ %44, %39 ], [ %75, %74 ]
  %49 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !171
  %51 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %48, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !172
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %48, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !173
  %57 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %48, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !174
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = sitofp i32 %52 to double
  %62 = load double, ptr %45, align 8, !tbaa !37
  %63 = fdiv double %61, %62
  %64 = sitofp i32 %58 to double
  %65 = load double, ptr %46, align 8, !tbaa !38
  %66 = fdiv double %64, %65
  %67 = sub nsw i32 %50, %52
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %68, %62
  %70 = sub nsw i32 %56, %58
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %71, %65
  %73 = tail call ptr @pprintg4(ptr noundef %4, ptr noundef nonnull @.str.25, double noundef %63, double noundef %66, double noundef %69, double noundef %72) #15
  br label %74

74:                                               ; preds = %47, %54, %60
  %75 = load ptr, ptr %48, align 8, !tbaa !175
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %47, !llvm.loop !176

77:                                               ; preds = %74, %37, %27, %8
  %78 = phi ptr [ @.str.23, %8 ], [ @.str.23, %27 ], [ @.str.26, %37 ], [ @.str.26, %74 ]
  %79 = phi ptr [ %9, %8 ], [ %29, %27 ], [ %13, %37 ], [ %13, %74 ]
  %80 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull %78) #15
  %81 = load i64, ptr %79, align 8, !tbaa !42
  store i64 %81, ptr %6, align 8, !tbaa !123
  %82 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76, i32 1
  store ptr null, ptr %82, align 8, !tbaa !125
  %83 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 55
  %84 = load i32, ptr %83, align 4, !tbaa !126
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 1, ptr %83, align 4, !tbaa !126
  br label %87

87:                                               ; preds = %86, %77
  %88 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31
  %89 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 31, i32 1
  store i64 0, ptr %89, align 8, !tbaa !63
  %90 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !64
  store ptr %90, ptr %88, align 8, !tbaa !65
  %91 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32
  %92 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 32, i32 1
  store i64 0, ptr %92, align 8, !tbaa !63
  store ptr %90, ptr %91, align 8, !tbaa !66
  %93 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 59
  store float -1.000000e+00, ptr %93, align 4, !tbaa !67
  %94 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %94, ptr noundef nonnull align 8 dereferenceable(72) @pdf_reset_graphics.lp_initial, i64 72, i1 false), !tbaa.struct !68
  br label %95

95:                                               ; preds = %27, %12, %8, %87
  ret i32 0
}

declare i32 @gx_cpath_includes_rectangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pdf_put_path(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.gs_fixed_rect_s, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gs_path_enum_s, align 8
  %7 = alloca [6 x i64], align 16
  %8 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #15
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !177
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !178
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !179
  %22 = call i32 @gx_subpath_is_rectangle(ptr noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %19
  %25 = load i64, ptr %4, align 8, !tbaa !180
  %26 = sitofp i64 %25 to double
  %27 = fmul double %26, 0x3F30000000000000
  %28 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !181
  %30 = sitofp i64 %29 to double
  %31 = fmul double %30, 0x3F30000000000000
  %32 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !182
  %34 = sitofp i64 %33 to double
  %35 = fmul double %34, 0x3F30000000000000
  %36 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !183
  %38 = sitofp i64 %37 to double
  %39 = fmul double %38, 0x3F30000000000000
  %40 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %41 = load double, ptr %40, align 8, !tbaa !37
  %42 = fdiv double %27, %41
  %43 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %44 = load double, ptr %43, align 8, !tbaa !38
  %45 = fdiv double %31, %44
  %46 = fsub double %35, %27
  %47 = fdiv double %46, %41
  %48 = fsub double %39, %31
  %49 = fdiv double %48, %44
  %50 = call ptr @pprintg4(ptr noundef %9, ptr noundef nonnull @.str.25, double noundef %42, double noundef %45, double noundef %47, double noundef %49) #15
  br label %125

51:                                               ; preds = %19, %15, %11, %3
  %52 = call i32 @gx_path_enum_init(ptr noundef nonnull %6, ptr noundef %1) #15
  %53 = getelementptr inbounds [6 x i64], ptr %7, i64 0, i64 1
  %54 = getelementptr inbounds [6 x i64], ptr %7, i64 0, i64 2
  %55 = getelementptr inbounds [6 x i64], ptr %7, i64 0, i64 3
  %56 = getelementptr inbounds [6 x i64], ptr %7, i64 0, i64 4
  %57 = getelementptr inbounds [6 x i64], ptr %7, i64 0, i64 5
  %58 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %59 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %60 = getelementptr inbounds [6 x i64], ptr %7, i64 0, i64 1
  %61 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %62 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  br label %63

63:                                               ; preds = %122, %51
  %64 = phi i32 [ undef, %51 ], [ %123, %122 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #15
  %65 = call i32 @gx_path_enum_next(ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  br label %66

66:                                               ; preds = %119, %63
  %67 = phi i32 [ %65, %63 ], [ %117, %119 ]
  switch i32 %67, label %121 [
    i32 0, label %122
    i32 1, label %69
    i32 2, label %68
    i32 3, label %82
    i32 4, label %113
  ]

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %66, %68
  %70 = phi ptr [ @.str.76, %68 ], [ @.str.75, %66 ]
  %71 = load i64, ptr %7, align 16, !tbaa !42
  %72 = sitofp i64 %71 to double
  %73 = fmul double %72, 0x3F30000000000000
  %74 = load i64, ptr %60, align 8, !tbaa !42
  %75 = sitofp i64 %74 to double
  %76 = fmul double %75, 0x3F30000000000000
  %77 = load double, ptr %61, align 8, !tbaa !37
  %78 = fdiv double %73, %77
  %79 = load double, ptr %62, align 8, !tbaa !38
  %80 = fdiv double %76, %79
  %81 = call ptr @pprintg2(ptr noundef %9, ptr noundef nonnull %70, double noundef %78, double noundef %80) #15
  br label %122

82:                                               ; preds = %66
  %83 = load i64, ptr %7, align 16, !tbaa !42
  %84 = sitofp i64 %83 to double
  %85 = fmul double %84, 0x3F30000000000000
  %86 = load i64, ptr %53, align 8, !tbaa !42
  %87 = sitofp i64 %86 to double
  %88 = fmul double %87, 0x3F30000000000000
  %89 = load i64, ptr %54, align 16, !tbaa !42
  %90 = sitofp i64 %89 to double
  %91 = fmul double %90, 0x3F30000000000000
  %92 = load i64, ptr %55, align 8, !tbaa !42
  %93 = sitofp i64 %92 to double
  %94 = fmul double %93, 0x3F30000000000000
  %95 = load i64, ptr %56, align 16, !tbaa !42
  %96 = sitofp i64 %95 to double
  %97 = fmul double %96, 0x3F30000000000000
  %98 = load i64, ptr %57, align 8, !tbaa !42
  %99 = sitofp i64 %98 to double
  %100 = fmul double %99, 0x3F30000000000000
  %101 = load double, ptr %58, align 8, !tbaa !37
  %102 = fdiv double %85, %101
  %103 = load double, ptr %59, align 8, !tbaa !38
  %104 = fdiv double %88, %103
  %105 = fdiv double %91, %101
  %106 = fdiv double %94, %103
  %107 = call ptr @pprintg4(ptr noundef %9, ptr noundef nonnull @.str.77, double noundef %102, double noundef %104, double noundef %105, double noundef %106) #15
  %108 = load double, ptr %58, align 8, !tbaa !37
  %109 = fdiv double %97, %108
  %110 = load double, ptr %59, align 8, !tbaa !38
  %111 = fdiv double %100, %110
  %112 = call ptr @pprintg2(ptr noundef %9, ptr noundef %107, double noundef %109, double noundef %111) #15
  br label %122

113:                                              ; preds = %66
  br i1 %10, label %116, label %114

114:                                              ; preds = %113
  %115 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.78) #15
  br label %122

116:                                              ; preds = %113
  %117 = call i32 @gx_path_enum_next(ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.78) #15
  br label %66

121:                                              ; preds = %66
  br label %122

122:                                              ; preds = %116, %66, %121, %69, %82, %114
  %123 = phi i32 [ %64, %114 ], [ %64, %82 ], [ %64, %69 ], [ %67, %66 ], [ 1, %116 ], [ %64, %121 ]
  %124 = phi i1 [ true, %114 ], [ true, %82 ], [ true, %69 ], [ false, %66 ], [ false, %116 ], [ true, %121 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #15
  br i1 %124, label %63, label %125, !llvm.loop !184

125:                                              ; preds = %122, %24
  %126 = phi i32 [ 0, %24 ], [ %123, %122 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  ret i32 %126
}

declare ptr @pprintg4(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @pdf_resource_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  switch i32 %2, label %10 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.pdf_resource_s, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  store ptr %9, ptr %3, align 8, !tbaa !64
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %7 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal void @pdf_resource_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !78
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #15
  store ptr %5, ptr %0, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.pdf_resource_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #15
  store ptr %8, ptr %6, align 8, !tbaa !120
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @pdf_font_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  switch i32 %2, label %10 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.pdf_resource_s, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  store ptr %9, ptr %3, align 8, !tbaa !64
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %7 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal void @pdf_font_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !78
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #15
  store ptr %5, ptr %0, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.pdf_resource_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #15
  store ptr %8, ptr %6, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

declare ptr @gp_open_scratch_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gdev_vector_open_file_bbox(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @gdev_vector_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #3

declare ptr @pprintd2(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare ptr @pprintd1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @pdfmark_close_outline(ptr noundef) local_unnamed_addr #0

declare i32 @pdfmark_write_article(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare void @gdev_vector_close_file(ptr noundef) local_unnamed_addr #0

declare i32 @gx_subpath_is_rectangle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gx_path_enum_init(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gx_path_enum_next(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @pprintg2(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #0

declare i32 @gx_path_is_void(ptr noundef) local_unnamed_addr #0

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @pprintg1(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #0

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare i32 @gx_set_miter_limit(ptr noundef, double noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 488}
!6 = !{!"gx_device_pdf_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !10, i64 496, !8, i64 504, !10, i64 592, !10, i64 600, !10, i64 608, !7, i64 616, !16, i64 624, !8, i64 944, !22, i64 992, !22, i64 1088, !13, i64 1184, !13, i64 1192, !27, i64 1200, !7, i64 1216, !10, i64 1224, !13, i64 1232, !13, i64 1240, !29, i64 1248, !18, i64 1512, !7, i64 1516, !13, i64 1520, !7, i64 1528, !8, i64 1532, !10, i64 1616, !13, i64 1624, !13, i64 1632, !13, i64 1640, !13, i64 1648, !13, i64 1656, !7, i64 1664, !8, i64 1672, !7, i64 4072, !7, i64 4076, !13, i64 4080, !13, i64 4088, !7, i64 4096, !18, i64 4100, !17, i64 4104, !10, i64 4176, !7, i64 4184, !7, i64 4188, !8, i64 4192, !10, i64 4232, !10, i64 4240, !32, i64 4248, !32, i64 4264, !32, i64 4280, !8, i64 4296, !7, i64 5384, !7, i64 5388, !7, i64 5392, !10, i64 5400, !10, i64 5408, !33, i64 5416}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!"gs_imager_state_s", !10, i64 0, !17, i64 8, !20, i64 80, !7, i64 128, !12, i64 132, !7, i64 136, !18, i64 140, !21, i64 144, !7, i64 160, !7, i64 164, !10, i64 168, !8, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !8, i64 232, !8, i64 264, !10, i64 296, !10, i64 304, !10, i64 312}
!17 = !{!"gx_line_params_s", !18, i64 0, !7, i64 4, !7, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !19, i64 32}
!18 = !{!"float", !8, i64 0}
!19 = !{!"gx_dash_params_s", !10, i64 0, !7, i64 8, !18, i64 12, !7, i64 16, !18, i64 20, !7, i64 24, !7, i64 28, !18, i64 32}
!20 = !{!"gs_matrix_fixed_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !13, i64 24, !13, i64 32, !7, i64 40}
!21 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!22 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !23, i64 48, !24, i64 56}
!23 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!24 = !{!"_mask", !25, i64 0, !13, i64 24, !10, i64 32}
!25 = !{!"gs_client_color_s", !26, i64 0, !10, i64 16}
!26 = !{!"gs_paint_color_s", !8, i64 0}
!27 = !{!"gs_point_s", !28, i64 0, !28, i64 8}
!28 = !{!"double", !8, i64 0}
!29 = !{!"psdf_distiller_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !30, i64 56, !7, i64 104, !7, i64 108, !7, i64 112, !30, i64 120, !30, i64 168, !31, i64 216, !31, i64 232, !7, i64 248, !7, i64 252, !7, i64 256}
!30 = !{!"psdf_image_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !10, i64 24, !7, i64 32, !10, i64 40}
!31 = !{!"gs_param_string_array_s", !10, i64 0, !7, i64 8, !7, i64 12}
!32 = !{!"gs_string_s", !10, i64 0, !7, i64 8}
!33 = !{!"pdf_text_state_s", !18, i64 0, !10, i64 8, !18, i64 16, !18, i64 20, !18, i64 24}
!34 = !{!6, !10, i64 1616}
!35 = !{!6, !7, i64 1216}
!36 = !{!18, !18, i64 0}
!37 = !{!6, !28, i64 1200}
!38 = !{!6, !28, i64 1208}
!39 = !{!6, !13, i64 1520}
!40 = !{!6, !13, i64 1624}
!41 = !{!6, !10, i64 600}
!42 = !{!13, !13, i64 0}
!43 = !{!6, !13, i64 1632}
!44 = !{!6, !13, i64 1648}
!45 = !{!6, !13, i64 1656}
!46 = !{!6, !7, i64 1664}
!47 = !{!48, !10, i64 32}
!48 = !{!"gs_memory_s", !49, i64 0}
!49 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!50 = !{!6, !10, i64 4176}
!51 = !{!6, !7, i64 4184}
!52 = !{!6, !7, i64 4188}
!53 = !{!6, !10, i64 4248}
!54 = !{!6, !10, i64 4264}
!55 = !{!56, !13, i64 0}
!56 = !{!"pdf_outline_level_s", !57, i64 0, !57, i64 64, !7, i64 128}
!57 = !{!"pdf_outline_node_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !7, i64 40, !32, i64 48}
!58 = !{!56, !7, i64 128}
!59 = !{!6, !7, i64 5384}
!60 = !{!6, !7, i64 5388}
!61 = !{!6, !7, i64 5392}
!62 = !{!6, !7, i64 4072}
!63 = !{!8, !8, i64 0}
!64 = !{!10, !10, i64 0}
!65 = !{!6, !10, i64 992}
!66 = !{!6, !10, i64 1088}
!67 = !{!6, !18, i64 4100}
!68 = !{i64 0, i64 4, !36, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !36, i64 16, i64 4, !36, i64 20, i64 4, !36, i64 24, i64 4, !36, i64 32, i64 8, !64, i64 40, i64 4, !69, i64 44, i64 4, !36, i64 48, i64 4, !69, i64 52, i64 4, !36, i64 56, i64 4, !69, i64 60, i64 4, !69, i64 64, i64 4, !36}
!69 = !{!7, !7, i64 0}
!70 = !{!6, !7, i64 4096}
!71 = !{!6, !10, i64 4280}
!72 = !{i64 0, i64 4, !36, i64 8, i64 8, !64, i64 16, i64 4, !36, i64 20, i64 4, !36, i64 24, i64 4, !36}
!73 = !{!6, !10, i64 4240}
!74 = !{!6, !7, i64 1248}
!75 = !{!6, !7, i64 1528}
!76 = !{!77, !13, i64 24}
!77 = !{!"pdf_resource_s", !10, i64 0, !10, i64 8, !13, i64 16, !13, i64 24}
!78 = !{!77, !10, i64 0}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = !{!32, !10, i64 0}
!84 = !{!32, !7, i64 8}
!85 = !{!48, !10, i64 120}
!86 = !{!77, !13, i64 16}
!87 = distinct !{!87, !80}
!88 = distinct !{!88, !80}
!89 = !{!56, !13, i64 64}
!90 = !{!6, !10, i64 5400}
!91 = !{!92, !13, i64 176}
!92 = !{!"pdf_article_s", !10, i64 0, !32, i64 8, !13, i64 24, !93, i64 32, !93, i64 176}
!93 = !{!"pdf_bead_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !94, i64 112}
!94 = !{!"gs_rect_s", !27, i64 0, !27, i64 16}
!95 = !{!92, !13, i64 32}
!96 = !{!92, !13, i64 56}
!97 = !{!92, !13, i64 48}
!98 = !{!92, !13, i64 200}
!99 = !{!92, !10, i64 0}
!100 = distinct !{!100, !80}
!101 = !{!6, !10, i64 5408}
!102 = !{!103, !10, i64 0}
!103 = !{!"pdf_named_dest_s", !10, i64 0, !32, i64 8, !8, i64 24}
!104 = !{!103, !10, i64 8}
!105 = !{!103, !7, i64 16}
!106 = !{!48, !10, i64 88}
!107 = distinct !{!107, !80}
!108 = !{!92, !13, i64 24}
!109 = !{!92, !10, i64 8}
!110 = !{!92, !7, i64 16}
!111 = distinct !{!111, !80}
!112 = !{!6, !13, i64 1640}
!113 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 32, i64 4, !69, i64 40, i64 8, !42, i64 48, i64 8, !64}
!114 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 28, i64 4, !69, i64 36, i64 8, !42, i64 44, i64 8, !64}
!115 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 24, i64 4, !69, i64 32, i64 8, !42, i64 40, i64 8, !64}
!116 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 20, i64 4, !69, i64 28, i64 8, !42, i64 36, i64 8, !64}
!117 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 16, i64 4, !69, i64 24, i64 8, !42, i64 32, i64 8, !64}
!118 = !{i64 0, i64 4, !69, i64 4, i64 4, !69, i64 8, i64 4, !69, i64 12, i64 4, !69, i64 20, i64 8, !42, i64 28, i64 8, !64}
!119 = distinct !{!119, !80}
!120 = !{!77, !10, i64 8}
!121 = distinct !{!121, !80}
!122 = !{i32 -25, i32 1}
!123 = !{!6, !13, i64 1192}
!124 = !{!6, !13, i64 1184}
!125 = !{!6, !10, i64 5424}
!126 = !{!6, !7, i64 4076}
!127 = !{!22, !10, i64 0}
!128 = !{!129, !13, i64 272}
!129 = !{!"gx_clip_path_s", !130, i64 0, !7, i64 128, !131, i64 136, !131, i64 168, !132, i64 200, !8, i64 264, !8, i64 265, !13, i64 272}
!130 = !{!"gx_path_s", !10, i64 0, !131, i64 8, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 68, !21, i64 72, !27, i64 88, !27, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!131 = !{!"gs_fixed_rect_s", !21, i64 0, !21, i64 16}
!132 = !{!"gx_clip_list_s", !133, i64 0, !10, i64 40, !10, i64 48, !7, i64 56, !7, i64 60}
!133 = !{!"gx_clip_rect_s", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!134 = !{!6, !7, i64 64}
!135 = !{!6, !7, i64 68}
!136 = !{!137, !18, i64 24}
!137 = !{!"gx_fill_params_s", !7, i64 0, !21, i64 8, !18, i64 24, !7, i64 28}
!138 = !{!137, !7, i64 0}
!139 = !{!16, !7, i64 48}
!140 = !{!16, !18, i64 84}
!141 = !{!16, !18, i64 88}
!142 = !{!16, !18, i64 80}
!143 = !{!16, !18, i64 92}
!144 = !{!16, !18, i64 52}
!145 = !{!6, !18, i64 4148}
!146 = !{!6, !7, i64 4144}
!147 = !{!19, !7, i64 8}
!148 = !{!19, !10, i64 0}
!149 = distinct !{!149, !80}
!150 = !{!16, !10, i64 40}
!151 = distinct !{!151, !80}
!152 = !{!153, !18, i64 0}
!153 = !{!"gx_stroke_params_s", !18, i64 0}
!154 = !{!16, !18, i64 8}
!155 = !{!6, !18, i64 4104}
!156 = !{!16, !18, i64 20}
!157 = !{!6, !18, i64 4116}
!158 = !{!16, !7, i64 12}
!159 = !{!6, !7, i64 4108}
!160 = !{!16, !7, i64 16}
!161 = !{!6, !7, i64 4112}
!162 = !{!6, !13, i64 4080}
!163 = !{!6, !13, i64 4088}
!164 = distinct !{!164, !80}
!165 = !{!48, !10, i64 16}
!166 = !{!48, !10, i64 64}
!167 = distinct !{!167, !80}
!168 = !{i32 -13, i32 1}
!169 = !{!129, !8, i64 264}
!170 = !{!129, !10, i64 240}
!171 = !{!133, !7, i64 28}
!172 = !{!133, !7, i64 24}
!173 = !{!133, !7, i64 20}
!174 = !{!133, !7, i64 16}
!175 = !{!133, !10, i64 0}
!176 = distinct !{!176, !80}
!177 = !{!130, !7, i64 64}
!178 = !{!130, !7, i64 68}
!179 = !{!130, !10, i64 48}
!180 = !{!131, !13, i64 0}
!181 = !{!131, !13, i64 8}
!182 = !{!131, !13, i64 16}
!183 = !{!131, !13, i64 24}
!184 = distinct !{!184, !80}
