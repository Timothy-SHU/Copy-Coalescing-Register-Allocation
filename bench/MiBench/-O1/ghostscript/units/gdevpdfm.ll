; ModuleID = 'gdevpdfm.c'
source_filename = "gdevpdfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pdfmark_name_s = type { ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_param_string_s = type { ptr, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_param_string_array_s = type { ptr, i32, i32 }
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
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_string_s = type { ptr, i32 }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.gs_string_s }
%struct.pdf_text_state_s = type { float, ptr, float, float, float }
%struct.pdf_bead_s = type { i64, i64, i64, i64, [80 x i8], %struct.gs_rect_s }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.pdf_article_s = type { ptr, %struct.gs_string_s, i64, %struct.pdf_bead_s, %struct.pdf_bead_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pdf_named_dest_s = type { ptr, %struct.gs_string_s, [80 x i8] }
%struct.pdf_resource_s = type { ptr, ptr, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"[%g %g %g %g %g %g]\00", align 1
@mark_names = internal unnamed_addr constant [11 x %struct.pdfmark_name_s] [%struct.pdfmark_name_s { ptr @.str.5, ptr @pdfmark_ANN }, %struct.pdfmark_name_s { ptr @.str.6, ptr @pdfmark_LNK }, %struct.pdfmark_name_s { ptr @.str.7, ptr @pdfmark_OUT }, %struct.pdfmark_name_s { ptr @.str.8, ptr @pdfmark_ARTICLE }, %struct.pdfmark_name_s { ptr @.str.9, ptr @pdfmark_DEST }, %struct.pdfmark_name_s { ptr @.str.10, ptr @pdfmark_PS }, %struct.pdfmark_name_s { ptr @.str.11, ptr @pdfmark_PAGES }, %struct.pdfmark_name_s { ptr @.str.12, ptr @pdfmark_PAGE }, %struct.pdfmark_name_s { ptr @.str.13, ptr @pdfmark_DOCINFO }, %struct.pdfmark_name_s { ptr @.str.14, ptr @pdfmark_DOCVIEW }, %struct.pdfmark_name_s zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [37 x i8] c"<<\0A/T %ld 0 R\0A/V %ld 0 R\0A/N %ld 0 R\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/Dest %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ANN\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ARTICLE\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DEST\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"PAGES\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"PAGE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"DOCINFO\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"DOCVIEW\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"<< /Type /Annot\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"SrcPg\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Page\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"View\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"/A \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"/Subtype\00", align 1
@scan_char_array = external local_unnamed_addr constant [260 x i8], align 16
@.str.24 = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Rect\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Dest\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"/Subtype /%s \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"[%lg %lg %lg %lg]%d\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"[/XYZ 0 0 1]\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"[null \00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"[%ld 0 R \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"/Next\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"/Prev\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@pdfmark_OUT.skip_out = internal global [2 x ptr] [ptr @.str.38, ptr null], align 16
@.str.39 = private unnamed_addr constant [19 x i8] c"pdfmark_save_pairs\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@st_pdf_article = internal constant %struct.gs_memory_struct_type_s { i32 320, ptr @.str.44, ptr null, ptr null, ptr @pdf_article_enum_ptrs, ptr @pdf_article_reloc_ptrs, ptr null }, align 8
@.str.41 = private unnamed_addr constant [16 x i8] c"pdfmark_ARTICLE\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"article title\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"<< /F %ld 0 R >>\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"pdf_article\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_pdf_named_dest = internal constant %struct.gs_memory_struct_type_s { i32 104, ptr @.str.47, ptr null, ptr null, ptr @pdf_named_dest_enum_ptrs, ptr @pdf_named_dest_reloc_ptrs, ptr null }, align 8
@.str.45 = private unnamed_addr constant [13 x i8] c"pdfmark_DEST\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"named_dest key\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"pdf_named_dest\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"DataSource\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"Level1\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c" PS\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c" /Subtype /PS\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c" /Level1 %ld 0 R\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"/R%ld Do\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c" /Length %ld 0 R >> stream\0A\00", align 1
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str.56 = private unnamed_addr constant [11 x i8] c"gdevpdfm.c\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"bad PS passthrough: %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"endstream\0A\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@no_skip_pairs = internal global [1 x ptr] zeroinitializer, align 8
@.str.61 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"CreationDate\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"Producer\00", align 1
@pdfmark_DOCVIEW.skip_dest = internal global [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr null], align 16
@.str.64 = private unnamed_addr constant [11 x i8] c"OpenAction\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"<< \00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"/Count %d \00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"/Parent %ld 0 R\0A\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"/Prev %ld 0 R\0A\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"/Next %ld 0 R\0A\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"/First %ld 0 R /Last %ld 0 R\0A\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"/%s \00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"[%g %g %g %g]\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pdf_key_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %4 = getelementptr inbounds %struct.gs_param_string_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = zext i32 %5 to i64
  %7 = icmp eq i64 %3, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  %10 = tail call i32 @strncmp(ptr noundef %1, ptr noundef %9, i64 noundef %6) #12
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @pdfmark_process(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.gs_matrix_s, align 4
  %4 = load ptr, ptr %1, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.gs_param_string_array_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 %8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %10 = and i32 %6, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gs_param_string_s, ptr %9, i64 -1
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 1
  %16 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 2
  %17 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 3
  %18 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 4
  %19 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 5
  %20 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #13
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %68

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %24 = load double, ptr %23, align 8, !tbaa !15
  %25 = fdiv double 1.000000e+00, %24
  %26 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !39
  %28 = fdiv double 1.000000e+00, %27
  %29 = call i32 @gs_matrix_scale(ptr noundef nonnull %3, double noundef %25, double noundef %28, ptr noundef nonnull %3) #13
  %30 = load double, ptr %23, align 8, !tbaa !15
  %31 = load float, ptr %18, align 4, !tbaa !40
  %32 = fpext float %31 to double
  %33 = fdiv double %32, %30
  %34 = fptrunc double %33 to float
  store float %34, ptr %18, align 4, !tbaa !40
  %35 = load double, ptr %26, align 8, !tbaa !39
  %36 = load float, ptr %19, align 4, !tbaa !42
  %37 = fpext float %36 to double
  %38 = fdiv double %37, %35
  %39 = fptrunc double %38 to float
  store float %39, ptr %19, align 4, !tbaa !42
  %40 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 %8, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !5
  %42 = zext i32 %41 to i64
  br label %48

43:                                               ; preds = %58
  %44 = add nuw nsw i64 %49, 1
  %45 = getelementptr inbounds [11 x %struct.pdfmark_name_s], ptr @mark_names, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 16, !tbaa !43
  %47 = icmp eq i64 %44, 10
  br i1 %47, label %68, label %48, !llvm.loop !45

48:                                               ; preds = %22, %43
  %49 = phi i64 [ 0, %22 ], [ %44, %43 ]
  %50 = phi ptr [ @.str.5, %22 ], [ %46, %43 ]
  %51 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #12
  %52 = icmp eq i64 %51, %42
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load ptr, ptr %9, align 8, !tbaa !11
  %55 = call i32 @strncmp(ptr noundef nonnull %50, ptr noundef %54, i64 noundef %42) #12
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %48, %53
  %59 = phi i32 [ 0, %48 ], [ %57, %53 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %43, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds [11 x %struct.pdfmark_name_s], ptr @mark_names, i64 0, i64 %49, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  %64 = load ptr, ptr %1, align 8, !tbaa !12
  %65 = load i32, ptr %5, align 8, !tbaa !14
  %66 = add i32 %65, -2
  %67 = call i32 %63(ptr noundef %0, ptr noundef %64, i32 noundef %66, ptr noundef nonnull %3) #13
  br label %68

68:                                               ; preds = %43, %2, %12, %61
  %69 = phi i32 [ %67, %61 ], [ -15, %12 ], [ -15, %2 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret i32 %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i32 @gs_matrix_scale(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pdfmark_close_outline(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 71
  %3 = load i32, ptr %2, align 8, !tbaa !48
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %4
  %6 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %4, i32 1
  tail call fastcc void @pdfmark_write_outline(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 0)
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load i64, ptr %6, align 8, !tbaa !49
  %10 = getelementptr %struct.pdf_outline_level_s, ptr %5, i64 -1, i32 1, i32 4
  store i64 %9, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %4, i32 1, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr %struct.pdf_outline_level_s, ptr %5, i64 -1, i32 1, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp slt i32 %16, 0
  %18 = sub nsw i32 0, %12
  %19 = select i1 %17, i32 %18, i32 %12
  %20 = add i32 %16, %19
  store i32 %20, ptr %15, align 8, !tbaa !53
  br label %21

21:                                               ; preds = %14, %8
  %22 = getelementptr %struct.pdf_outline_level_s, ptr %5, i64 -1, i32 1, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !53
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 72
  %27 = load i32, ptr %26, align 4, !tbaa !54
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4, !tbaa !54
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr %2, align 8, !tbaa !48
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %2, align 8, !tbaa !48
  br label %32

32:                                               ; preds = %1, %29
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pdfmark_write_outline(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = tail call i32 @pdf_close_contents(ptr noundef %0, i32 noundef 0) #13
  %7 = load i64, ptr %1, align 8, !tbaa !56
  %8 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %7) #13
  %9 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.65) #13
  %10 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %1, i64 0, i32 6
  %11 = tail call i32 @pdf_write_saved_string(ptr noundef %0, ptr noundef nonnull %10) #13
  %12 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %1, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !57
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @pprintd1(ptr noundef %5, ptr noundef nonnull @.str.66, i32 noundef %13) #13
  br label %17

17:                                               ; preds = %15, %3
  %18 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !58
  %20 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.67, i64 noundef %19) #13
  %21 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %1, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !59
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.68, i64 noundef %22) #13
  br label %26

26:                                               ; preds = %24, %17
  %27 = icmp eq i64 %2, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.69, i64 noundef %2) #13
  br label %30

30:                                               ; preds = %28, %26
  %31 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %1, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !60
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.70, i64 noundef %32) #13
  %36 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %1, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !61
  %38 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef %35, i64 noundef %37) #13
  br label %39

39:                                               ; preds = %34, %30
  %40 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.4) #13
  %41 = tail call i32 @pdf_end_obj(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pdfmark_write_article(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load i64, ptr %1, align 8, !tbaa !62
  %6 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %5) #13
  %7 = getelementptr inbounds %struct.pdf_bead_s, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @pprintld1(ptr noundef %4, ptr noundef nonnull @.str.1, i64 noundef %8) #13
  %10 = getelementptr inbounds %struct.pdf_bead_s, ptr %1, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !66
  %12 = tail call ptr @pprintld1(ptr noundef %4, ptr noundef %9, i64 noundef %11) #13
  %13 = getelementptr inbounds %struct.pdf_bead_s, ptr %1, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !67
  %15 = tail call ptr @pprintld1(ptr noundef %4, ptr noundef %12, i64 noundef %14) #13
  %16 = getelementptr inbounds %struct.pdf_bead_s, ptr %1, i64 0, i32 4
  %17 = tail call ptr @pprints1(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #13
  %18 = getelementptr inbounds %struct.pdf_bead_s, ptr %1, i64 0, i32 5
  %19 = tail call ptr @pprints1(ptr noundef %4, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.3) #13
  %20 = load double, ptr %18, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.pdf_bead_s, ptr %1, i64 0, i32 5, i32 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.pdf_bead_s, ptr %1, i64 0, i32 5, i32 1
  %24 = load double, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.pdf_bead_s, ptr %1, i64 0, i32 5, i32 1, i32 1
  %26 = load double, ptr %25, align 8, !tbaa !71
  %27 = tail call ptr @pprintg4(ptr noundef %4, ptr noundef nonnull @.str.72, double noundef %20, double noundef %22, double noundef %24, double noundef %26) #13
  %28 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.4) #13
  %29 = tail call i32 @pdf_end_obj(ptr noundef %0) #13
  ret i32 %29
}

declare i64 @pdf_open_obj(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @pprintld1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @pprints1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @pputs(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @pdf_end_obj(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_ANN(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = tail call fastcc i32 @pdfmark_annot(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull @.str.15)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_LNK(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = tail call fastcc i32 @pdfmark_annot(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull @.str.37)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdfmark_OUT(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture readnone %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pdf_outline_node_s, align 8
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 71
  %8 = load i32, ptr %7, align 8, !tbaa !48
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %4, %32
  %13 = phi i32 [ %33, %32 ], [ 0, %4 ]
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %14
  %16 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %14, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !5
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = zext nneg i32 %17 to i64
  %21 = load ptr, ptr %15, align 8, !tbaa !11
  %22 = call i32 @strncmp(ptr noundef nonnull @.str.38, ptr noundef %21, i64 noundef %20) #12
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %12, %19
  %26 = phi i32 [ 0, %12 ], [ %24, %19 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.gs_param_string_s, ptr %15, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %30, ptr noundef nonnull @.str.36, ptr noundef nonnull %5) #13
  br label %32

32:                                               ; preds = %28, %25
  %33 = add i32 %13, 2
  %34 = icmp ult i32 %33, %2
  br i1 %34, label %12, label %35, !llvm.loop !73

35:                                               ; preds = %32, %4
  %36 = load i32, ptr %5, align 4, !tbaa !72
  %37 = icmp ne i32 %36, 0
  %38 = icmp eq i32 %8, 7
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %141, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %6, i64 0, i32 6
  store ptr null, ptr %41, align 8, !tbaa !74
  %42 = call fastcc i32 @pdfmark_save_edited_pairs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @pdfmark_OUT.skip_out, ptr noundef null, i32 noundef 0, ptr noundef nonnull %41), !range !75
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %141, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 51
  %46 = load i64, ptr %45, align 8, !tbaa !76
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i64 @pdf_obj_ref(ptr noundef %0) #13
  store i64 %49, ptr %45, align 8, !tbaa !76
  br label %50

50:                                               ; preds = %48, %44
  %51 = call i64 @pdf_obj_ref(ptr noundef %0) #13
  store i64 %51, ptr %6, align 8, !tbaa !56
  %52 = icmp eq i32 %8, 0
  %53 = getelementptr %struct.pdf_outline_level_s, ptr %10, i64 -1, i32 1
  %54 = select i1 %52, ptr %45, ptr %53
  %55 = load i64, ptr %54, align 8, !tbaa !77
  %56 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %6, i64 0, i32 1
  store i64 %55, ptr %56, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %9, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %6, i64 0, i32 2
  store i64 %58, ptr %59, align 8, !tbaa !59
  %60 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %6, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  %61 = load i32, ptr %5, align 4, !tbaa !72
  %62 = getelementptr inbounds %struct.pdf_outline_node_s, ptr %6, i64 0, i32 5
  store i32 %61, ptr %62, align 8, !tbaa !57
  %63 = load i64, ptr %10, align 8, !tbaa !78
  %64 = icmp eq i64 %63, 0
  %65 = icmp sgt i32 %8, 0
  br i1 %64, label %66, label %70

66:                                               ; preds = %50
  br i1 %65, label %67, label %69

67:                                               ; preds = %66
  %68 = getelementptr %struct.pdf_outline_level_s, ptr %10, i64 -1, i32 1, i32 3
  store i64 %51, ptr %68, align 8, !tbaa !79
  br label %69

69:                                               ; preds = %67, %66
  store i64 0, ptr %59, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !80
  br label %83

70:                                               ; preds = %50
  br i1 %65, label %71, label %82

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %9, i32 1, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !53
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = getelementptr %struct.pdf_outline_level_s, ptr %10, i64 -1, i32 1, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !53
  %78 = icmp slt i32 %77, 0
  %79 = sub nsw i32 0, %73
  %80 = select i1 %78, i32 %79, i32 %73
  %81 = add i32 %77, %80
  store i32 %81, ptr %76, align 8, !tbaa !53
  br label %82

82:                                               ; preds = %75, %71, %70
  call fastcc void @pdfmark_write_outline(ptr noundef %0, ptr noundef nonnull %57, i64 noundef %51)
  br label %83

83:                                               ; preds = %82, %69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %57, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !80
  %84 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %9, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !82
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr %84, align 8, !tbaa !82
  %87 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 72
  %88 = load i32, ptr %87, align 4, !tbaa !54
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 73
  %92 = load i32, ptr %91, align 8, !tbaa !83
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %91, align 8, !tbaa !83
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i32, ptr %5, align 4
  %96 = icmp eq i32 %95, 0
  %97 = load i32, ptr %7, align 8, !tbaa !48
  br i1 %96, label %98, label %100

98:                                               ; preds = %94
  %99 = icmp sgt i32 %97, 0
  br i1 %99, label %108, label %141

100:                                              ; preds = %94
  %101 = add nsw i32 %97, 1
  store i32 %101, ptr %7, align 8, !tbaa !48
  %102 = getelementptr inbounds %struct.pdf_outline_level_s, ptr %10, i64 1
  %103 = call i32 @llvm.abs.i32(i32 %95, i1 true)
  %104 = getelementptr inbounds %struct.pdf_outline_level_s, ptr %10, i64 1, i32 2
  store i32 %103, ptr %104, align 8, !tbaa !82
  store i64 0, ptr %102, align 8, !tbaa !78
  %105 = icmp slt i32 %95, 0
  br i1 %105, label %106, label %141

106:                                              ; preds = %100
  %107 = add nsw i32 %88, 1
  store i32 %107, ptr %87, align 4, !tbaa !54
  br label %141

108:                                              ; preds = %98, %137
  %109 = phi i32 [ %139, %137 ], [ %97, %98 ]
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %110, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !82
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %108
  %115 = zext nneg i32 %109 to i64
  %116 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %115
  %117 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %115, i32 1
  call fastcc void @pdfmark_write_outline(ptr noundef %0, ptr noundef nonnull %117, i64 noundef 0)
  %118 = load i64, ptr %117, align 8, !tbaa !49
  %119 = getelementptr %struct.pdf_outline_level_s, ptr %116, i64 -1, i32 1, i32 4
  store i64 %118, ptr %119, align 8, !tbaa !52
  %120 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 70, i64 %115, i32 1, i32 5
  %121 = load i32, ptr %120, align 8, !tbaa !53
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %114
  %124 = getelementptr %struct.pdf_outline_level_s, ptr %116, i64 -1, i32 1, i32 5
  %125 = load i32, ptr %124, align 8, !tbaa !53
  %126 = icmp slt i32 %125, 0
  %127 = sub nsw i32 0, %121
  %128 = select i1 %126, i32 %127, i32 %121
  %129 = add i32 %125, %128
  store i32 %129, ptr %124, align 8, !tbaa !53
  br label %130

130:                                              ; preds = %123, %114
  %131 = getelementptr %struct.pdf_outline_level_s, ptr %116, i64 -1, i32 1, i32 5
  %132 = load i32, ptr %131, align 8, !tbaa !53
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, ptr %87, align 4, !tbaa !54
  %136 = add nsw i32 %135, -1
  store i32 %136, ptr %87, align 4, !tbaa !54
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32, ptr %7, align 8, !tbaa !48
  %139 = add nsw i32 %138, -1
  store i32 %139, ptr %7, align 8, !tbaa !48
  %140 = icmp sgt i32 %138, 1
  br i1 %140, label %108, label %141, !llvm.loop !84

141:                                              ; preds = %108, %137, %98, %106, %100, %40, %35
  %142 = phi i32 [ -13, %35 ], [ %42, %40 ], [ 0, %100 ], [ 0, %106 ], [ 0, %98 ], [ 0, %137 ], [ 0, %108 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %142
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdfmark_ARTICLE(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca [4 x double], align 16
  %6 = alloca [103 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_rect_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %4, %33
  %11 = phi i32 [ %34, %33 ], [ 0, %4 ]
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %12, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !5
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = zext nneg i32 %14 to i64
  %18 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = tail call i32 @strncmp(ptr noundef nonnull @.str.40, ptr noundef %19, i64 noundef %17) #12
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %16, %10
  %24 = phi i32 [ 0, %10 ], [ %22, %16 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = or disjoint i32 %11, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa.struct !85
  %31 = getelementptr inbounds i8, ptr %29, i64 8
  %32 = load i32, ptr %31, align 8, !tbaa.struct !86
  br label %36

33:                                               ; preds = %23
  %34 = add i32 %11, 2
  %35 = icmp ult i32 %34, %2
  br i1 %35, label %10, label %36, !llvm.loop !87

36:                                               ; preds = %33, %4, %26
  %37 = phi ptr [ %30, %26 ], [ null, %4 ], [ null, %33 ]
  %38 = phi i32 [ %32, %26 ], [ 0, %4 ], [ 0, %33 ]
  %39 = phi i1 [ false, %26 ], [ true, %4 ], [ true, %33 ]
  br i1 %39, label %159, label %40

40:                                               ; preds = %36
  br i1 %9, label %67, label %41

41:                                               ; preds = %40, %64
  %42 = phi i32 [ %65, %64 ], [ 0, %40 ]
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %43, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !5
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %43
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = tail call i32 @strncmp(ptr noundef nonnull @.str.25, ptr noundef %50, i64 noundef %48) #12
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %47, %41
  %55 = phi i32 [ 0, %41 ], [ %53, %47 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = or disjoint i32 %42, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa.struct !85
  %62 = getelementptr inbounds i8, ptr %60, i64 8
  %63 = load i32, ptr %62, align 8, !tbaa.struct !86
  br label %67

64:                                               ; preds = %54
  %65 = add i32 %42, 2
  %66 = icmp ult i32 %65, %2
  br i1 %66, label %41, label %67, !llvm.loop !87

67:                                               ; preds = %64, %40, %57
  %68 = phi i32 [ %63, %57 ], [ 0, %40 ], [ 0, %64 ]
  %69 = phi ptr [ %61, %57 ], [ null, %40 ], [ null, %64 ]
  %70 = phi i1 [ false, %57 ], [ true, %40 ], [ true, %64 ]
  br i1 %70, label %159, label %71

71:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 103, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %72 = icmp ugt i32 %68, 100
  br i1 %72, label %89, label %73

73:                                               ; preds = %71
  %74 = zext nneg i32 %68 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr align 1 %69, i64 %74, i1 false)
  %75 = getelementptr inbounds i8, ptr %6, i64 %74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %75, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, i64 3, i1 false) #13
  %76 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 1
  %77 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 2
  %78 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 3
  %79 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %6, ptr noundef nonnull @.str.30, ptr noundef nonnull %5, ptr noundef nonnull %76, ptr noundef nonnull %77, ptr noundef nonnull %78, ptr noundef nonnull %7) #13
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load double, ptr %5, align 16, !tbaa !88
  %83 = load double, ptr %76, align 8, !tbaa !88
  %84 = call i32 @gs_point_transform(double noundef %82, double noundef %83, ptr noundef %3, ptr noundef nonnull %8) #13
  %85 = load double, ptr %77, align 16, !tbaa !88
  %86 = load double, ptr %78, align 8, !tbaa !88
  %87 = getelementptr inbounds %struct.gs_rect_s, ptr %8, i64 0, i32 1
  %88 = call i32 @gs_point_transform(double noundef %85, double noundef %86, ptr noundef %3, ptr noundef nonnull %87) #13
  br label %89

89:                                               ; preds = %71, %73, %81
  %90 = phi i1 [ false, %81 ], [ true, %71 ], [ true, %73 ]
  %91 = phi i32 [ 0, %81 ], [ -13, %71 ], [ -15, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 103, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br i1 %90, label %159, label %92

92:                                               ; preds = %89
  %93 = call i32 @pdf_close_contents(ptr noundef %0, i32 noundef 0) #13
  %94 = call i64 @pdf_obj_ref(ptr noundef %0) #13
  %95 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 74
  br label %96

96:                                               ; preds = %100, %92
  %97 = phi ptr [ %95, %92 ], [ %98, %100 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !81
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.pdf_article_s, ptr %98, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !89
  %103 = getelementptr inbounds %struct.pdf_article_s, ptr %98, i64 0, i32 1, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !91
  %105 = call i32 @bytes_compare(ptr noundef %102, i32 noundef %104, ptr noundef %37, i32 noundef %38) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %133, label %96, !llvm.loop !92

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %109 = load ptr, ptr %108, align 8, !tbaa !55
  %110 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %111 = load ptr, ptr %110, align 8, !tbaa !93
  %112 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %111, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !94
  %114 = call ptr %113(ptr noundef %111, ptr noundef nonnull @st_pdf_article, ptr noundef nonnull @.str.41) #13
  %115 = load ptr, ptr %110, align 8, !tbaa !93
  %116 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %115, i64 0, i32 12
  %117 = load ptr, ptr %116, align 8, !tbaa !97
  %118 = call ptr %117(ptr noundef %115, i32 noundef %38, ptr noundef nonnull @.str.42) #13
  %119 = icmp ne ptr %114, null
  %120 = icmp ne ptr %118, null
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %159

122:                                              ; preds = %107
  %123 = load ptr, ptr %95, align 8, !tbaa !98
  store ptr %123, ptr %114, align 8, !tbaa !99
  store ptr %114, ptr %95, align 8, !tbaa !98
  %124 = zext i32 %38 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %118, ptr align 1 %37, i64 %124, i1 false)
  %125 = getelementptr inbounds %struct.pdf_article_s, ptr %114, i64 0, i32 1
  store ptr %118, ptr %125, align 8, !tbaa !89
  %126 = getelementptr inbounds %struct.pdf_article_s, ptr %114, i64 0, i32 1, i32 1
  store i32 %38, ptr %126, align 8, !tbaa !91
  %127 = call i64 @pdf_open_obj(ptr noundef %0, i64 noundef 0) #13
  %128 = getelementptr inbounds %struct.pdf_article_s, ptr %114, i64 0, i32 2
  store i64 %127, ptr %128, align 8, !tbaa !100
  %129 = getelementptr inbounds %struct.pdf_article_s, ptr %114, i64 0, i32 4
  store i64 0, ptr %129, align 8, !tbaa !101
  %130 = getelementptr inbounds %struct.pdf_article_s, ptr %114, i64 0, i32 3
  store i64 0, ptr %130, align 8, !tbaa !102
  %131 = call ptr @pprintld1(ptr noundef %109, ptr noundef nonnull @.str.43, i64 noundef %94) #13
  %132 = call i32 @pdf_end_obj(ptr noundef %0) #13
  br label %133

133:                                              ; preds = %100, %122
  %134 = phi ptr [ %114, %122 ], [ %98, %100 ]
  %135 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 4
  %136 = load i64, ptr %135, align 8, !tbaa !101
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 3
  %140 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 3, i32 3
  store i64 %94, ptr %140, align 8, !tbaa !103
  %141 = load i64, ptr %139, align 8, !tbaa !102
  store i64 %141, ptr %135, align 8, !tbaa !101
  br label %145

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 4, i32 3
  store i64 %94, ptr %143, align 8, !tbaa !104
  %144 = call i32 @pdfmark_write_article(ptr noundef %0, ptr noundef nonnull %135)
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i64, ptr %135, align 8, !tbaa !101
  %147 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 4, i32 2
  store i64 %146, ptr %147, align 8, !tbaa !105
  store i64 %94, ptr %135, align 8, !tbaa !101
  %148 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !100
  %150 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 4, i32 1
  store i64 %149, ptr %150, align 8, !tbaa !106
  %151 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 4, i32 3
  store i64 0, ptr %151, align 8, !tbaa !104
  %152 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 4, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %152, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !107
  %153 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 4, i32 4
  %154 = call fastcc i32 @pdfmark_make_dest(ptr noundef nonnull %153, ptr noundef %0, ptr noundef %1, i32 noundef %2), !range !108
  %155 = getelementptr inbounds %struct.pdf_article_s, ptr %134, i64 0, i32 3
  %156 = load i64, ptr %155, align 8, !tbaa !102
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %155, ptr noundef nonnull align 8 dereferenceable(144) %135, i64 144, i1 false), !tbaa.struct !109
  store i64 0, ptr %135, align 8, !tbaa !101
  br label %159

159:                                              ; preds = %107, %145, %158, %89, %36, %67
  %160 = phi i32 [ -15, %67 ], [ -15, %36 ], [ %91, %89 ], [ 0, %158 ], [ 0, %145 ], [ -25, %107 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  ret i32 %160
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdfmark_DEST(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture readnone %3) #2 {
  %5 = alloca [80 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #13
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %4, %30
  %8 = phi i32 [ %31, %30 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %9, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %9
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = tail call i32 @strncmp(ptr noundef nonnull @.str.26, ptr noundef %16, i64 noundef %14) #12
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %13, %7
  %21 = phi i32 [ 0, %7 ], [ %19, %13 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = or disjoint i32 %8, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa.struct !85
  %28 = getelementptr inbounds i8, ptr %26, i64 8
  %29 = load i32, ptr %28, align 8, !tbaa.struct !86
  br label %33

30:                                               ; preds = %20
  %31 = add i32 %8, 2
  %32 = icmp ult i32 %31, %2
  br i1 %32, label %7, label %33, !llvm.loop !87

33:                                               ; preds = %30, %4, %23
  %34 = phi i32 [ %29, %23 ], [ 0, %4 ], [ 0, %30 ]
  %35 = phi ptr [ %27, %23 ], [ null, %4 ], [ null, %30 ]
  %36 = phi i1 [ false, %23 ], [ true, %4 ], [ true, %30 ]
  br i1 %36, label %61, label %37

37:                                               ; preds = %33
  %38 = call fastcc i32 @pdfmark_make_dest(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i32 noundef %2), !range !108
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %42 = load ptr, ptr %41, align 8, !tbaa !93
  %43 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !94
  %45 = tail call ptr %44(ptr noundef %42, ptr noundef nonnull @st_pdf_named_dest, ptr noundef nonnull @.str.45) #13
  %46 = load ptr, ptr %41, align 8, !tbaa !93
  %47 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %46, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !97
  %49 = tail call ptr %48(ptr noundef %46, i32 noundef %34, ptr noundef nonnull @.str.46) #13
  %50 = icmp eq ptr %45, null
  %51 = icmp eq ptr %49, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 75
  %55 = load ptr, ptr %54, align 8, !tbaa !111
  store ptr %55, ptr %45, align 8, !tbaa !112
  %56 = zext i32 %34 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %35, i64 %56, i1 false)
  %57 = getelementptr inbounds %struct.pdf_named_dest_s, ptr %45, i64 0, i32 1
  store ptr %49, ptr %57, align 8, !tbaa !114
  %58 = getelementptr inbounds %struct.pdf_named_dest_s, ptr %45, i64 0, i32 1, i32 1
  store i32 %34, ptr %58, align 8, !tbaa !115
  %59 = getelementptr inbounds %struct.pdf_named_dest_s, ptr %45, i64 0, i32 2
  %60 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) %5) #13
  store ptr %45, ptr %54, align 8, !tbaa !111
  br label %61

61:                                               ; preds = %40, %33, %37, %53
  %62 = phi i32 [ 0, %53 ], [ -15, %37 ], [ -15, %33 ], [ -25, %40 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #13
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @pdfmark_PS(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture readnone %3) #2 {
  %5 = alloca %struct.gs_param_string_s, align 8
  %6 = alloca %struct.gs_param_string_s, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %4, %31
  %12 = phi i32 [ %32, %31 ], [ 0, %4 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %13, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !5
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = tail call i32 @strncmp(ptr noundef nonnull @.str.48, ptr noundef %20, i64 noundef %18) #12
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi i32 [ 0, %11 ], [ %23, %17 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = or disjoint i32 %12, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !85
  br i1 %10, label %59, label %36

31:                                               ; preds = %24
  %32 = add i32 %12, 2
  %33 = icmp ult i32 %32, %2
  br i1 %33, label %11, label %34, !llvm.loop !87

34:                                               ; preds = %31, %4
  store ptr null, ptr %5, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.gs_param_string_s, ptr %5, i64 0, i32 1
  store i32 0, ptr %35, align 8, !tbaa !5
  br label %98

36:                                               ; preds = %27, %56
  %37 = phi i32 [ %57, %56 ], [ 0, %27 ]
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %38, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !5
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = zext nneg i32 %40 to i64
  %44 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %38
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  %46 = tail call i32 @strncmp(ptr noundef nonnull @.str.49, ptr noundef %45, i64 noundef %43) #12
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i32 [ 0, %36 ], [ %48, %42 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = or disjoint i32 %37, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false), !tbaa.struct !85
  br label %61

56:                                               ; preds = %49
  %57 = add i32 %37, 2
  %58 = icmp ult i32 %57, %2
  br i1 %58, label %36, label %59, !llvm.loop !87

59:                                               ; preds = %56, %27
  store ptr null, ptr %6, align 8, !tbaa !11
  %60 = getelementptr inbounds %struct.gs_param_string_s, ptr %6, i64 0, i32 1
  store i32 0, ptr %60, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %52, %59
  %62 = load ptr, ptr %6, align 8, !tbaa !11
  %63 = icmp eq ptr %62, null
  %64 = getelementptr inbounds %struct.gs_param_string_s, ptr %5, i64 0, i32 1
  %65 = load i32, ptr %64, align 8
  %66 = icmp ult i32 %65, 101
  %67 = select i1 %63, i1 %66, i1 false
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = tail call i32 @pdf_open_contents(ptr noundef %0, i32 noundef 1) #13
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load ptr, ptr %5, align 8, !tbaa !11
  %73 = tail call i32 @pwrite(ptr noundef %9, ptr noundef %72, i32 noundef %65) #13
  %74 = tail call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.50) #13
  br label %97

75:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %76 = call i32 @pdf_begin_resource(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %7) #13
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %75
  %79 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.51) #13
  br i1 %63, label %85, label %80

80:                                               ; preds = %78
  %81 = call i64 @pdf_obj_ref(ptr noundef %0) #13
  %82 = call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.52, i64 noundef %81) #13
  call fastcc void @pdfmark_write_ps(ptr noundef %0, ptr noundef nonnull %5)
  %83 = call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %81) #13
  %84 = call i32 @pputs(ptr noundef %9, ptr noundef nonnull @.str.53) #13
  br label %85

85:                                               ; preds = %78, %80
  %86 = phi ptr [ %6, %80 ], [ %5, %78 ]
  call fastcc void @pdfmark_write_ps(ptr noundef %0, ptr noundef nonnull %86)
  %87 = call i32 @pdf_open_contents(ptr noundef %0, i32 noundef 1) #13
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %7, align 8, !tbaa !81
  %91 = getelementptr inbounds %struct.pdf_resource_s, ptr %90, i64 0, i32 3
  %92 = load i64, ptr %91, align 8, !tbaa !116
  %93 = call ptr @pprintld1(ptr noundef %9, ptr noundef nonnull @.str.54, i64 noundef %92) #13
  br label %94

94:                                               ; preds = %85, %75, %89
  %95 = phi i1 [ true, %89 ], [ false, %75 ], [ false, %85 ]
  %96 = phi i32 [ undef, %89 ], [ %76, %75 ], [ %87, %85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br i1 %95, label %97, label %98

97:                                               ; preds = %71, %94
  br label %98

98:                                               ; preds = %34, %68, %94, %97
  %99 = phi i32 [ 0, %97 ], [ %96, %94 ], [ -15, %34 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdfmark_PAGES(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture readnone %3) #2 {
  %5 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 68
  %6 = tail call fastcc i32 @pdfmark_save_edited_pairs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @no_skip_pairs, ptr noundef null, i32 noundef 0, ptr noundef nonnull %5), !range !75
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdfmark_PAGE(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture readnone %3) #2 {
  %5 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 69
  %6 = tail call fastcc i32 @pdfmark_save_edited_pairs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @no_skip_pairs, ptr noundef null, i32 noundef 0, ptr noundef nonnull %5), !range !75
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdfmark_DOCINFO(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture readnone %3) #2 {
  %5 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 55
  %8 = load i32, ptr %7, align 4, !tbaa !118
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 54
  %12 = load i32, ptr %11, align 8, !tbaa !119
  %13 = icmp eq i32 %12, 300
  br i1 %13, label %66, label %14

14:                                               ; preds = %10, %4
  %15 = tail call i32 @pdf_close_contents(ptr noundef %0, i32 noundef 0) #13
  %16 = tail call i32 @pdf_open_page(ptr noundef %0, i32 noundef 0) #13
  %17 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef 0) #13
  %18 = tail call i32 @pputs(ptr noundef %6, ptr noundef nonnull @.str.61) #13
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %14, %58
  %21 = phi i32 [ %59, %58 ], [ 0, %14 ]
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %22
  %24 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %22, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !5
  %26 = zext i32 %25 to i64
  %27 = icmp eq i32 %25, 12
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load ptr, ptr %23, align 8, !tbaa !11
  %30 = tail call i32 @strncmp(ptr noundef nonnull @.str.62, ptr noundef %29, i64 noundef %26) #12
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %20, %28
  %34 = phi i32 [ 0, %20 ], [ %32, %28 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = icmp eq i32 %25, 8
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load ptr, ptr %23, align 8, !tbaa !11
  %40 = tail call i32 @strncmp(ptr noundef nonnull @.str.63, ptr noundef %39, i64 noundef %26) #12
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %36, %38
  %44 = phi i32 [ 0, %36 ], [ %42, %38 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext 47) #13
  %48 = load ptr, ptr %23, align 8, !tbaa !11
  %49 = load i32, ptr %24, align 8, !tbaa !5
  %50 = tail call i32 @pwrite(ptr noundef %6, ptr noundef %48, i32 noundef %49) #13
  %51 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext 32) #13
  %52 = getelementptr inbounds %struct.gs_param_string_s, ptr %23, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.gs_param_string_s, ptr %23, i64 1, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !5
  %56 = tail call i32 @pwrite(ptr noundef %6, ptr noundef %53, i32 noundef %55) #13
  %57 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext 10) #13
  br label %58

58:                                               ; preds = %33, %43, %46
  %59 = add i32 %21, 2
  %60 = icmp ult i32 %59, %2
  br i1 %60, label %20, label %61, !llvm.loop !120

61:                                               ; preds = %58, %14
  %62 = tail call i32 @pdf_write_default_info(ptr noundef %0) #13
  %63 = tail call i32 @pputs(ptr noundef %6, ptr noundef nonnull @.str.4) #13
  %64 = tail call i32 @pdf_end_obj(ptr noundef %0) #13
  %65 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 49
  store i64 %17, ptr %65, align 8, !tbaa !121
  br label %66

66:                                               ; preds = %10, %61
  %67 = phi i32 [ 0, %61 ], [ -13, %10 ]
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pdfmark_DOCVIEW(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture readnone %3) #2 {
  %5 = alloca [80 x i8], align 16
  %6 = alloca [2 x %struct.gs_param_string_s], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #13
  %7 = call fastcc i32 @pdfmark_make_dest(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i32 noundef %2), !range !108
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  store ptr @.str.64, ptr %6, align 16, !tbaa !11
  %10 = getelementptr inbounds %struct.gs_param_string_s, ptr %6, i64 0, i32 1
  store i32 10, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.gs_param_string_s, ptr %6, i64 0, i32 2
  store i32 1, ptr %11, align 4, !tbaa !122
  %12 = getelementptr inbounds [2 x %struct.gs_param_string_s], ptr %6, i64 0, i64 1
  store ptr %5, ptr %12, align 16, !tbaa !11
  %13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #12
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds [2 x %struct.gs_param_string_s], ptr %6, i64 0, i64 1, i32 1
  store i32 %14, ptr %15, align 8, !tbaa !5
  %16 = getelementptr inbounds [2 x %struct.gs_param_string_s], ptr %6, i64 0, i64 1, i32 2
  store i32 1, ptr %16, align 4, !tbaa !122
  %17 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 67
  %18 = call fastcc i32 @pdfmark_save_edited_pairs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @pdfmark_DOCVIEW.skip_dest, ptr noundef nonnull %6, i32 noundef 2, ptr noundef nonnull %17), !range !75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  br label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 67
  %21 = tail call fastcc i32 @pdfmark_save_edited_pairs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @no_skip_pairs, ptr noundef null, i32 noundef 0, ptr noundef nonnull %20), !range !75
  br label %22

22:                                               ; preds = %19, %9
  %23 = phi i32 [ %18, %9 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #13
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pdfmark_annot(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = alloca [4 x double], align 16
  %7 = alloca [103 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gs_rect_s, align 8
  %12 = alloca [80 x i8], align 16
  %13 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %15 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 65
  %16 = call i32 @pdf_begin_aside(ptr noundef %0, ptr noundef nonnull %15, ptr noundef null, ptr noundef nonnull %9) #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %238, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 52
  %20 = load i32, ptr %19, align 8, !tbaa !123
  %21 = sext i32 %20 to i64
  %22 = load ptr, ptr %9, align 8, !tbaa !81
  %23 = getelementptr inbounds %struct.pdf_resource_s, ptr %22, i64 0, i32 2
  store i64 %21, ptr %23, align 8, !tbaa !124
  %24 = call i32 @pputs(ptr noundef %14, ptr noundef nonnull @.str.16) #13
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %223, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds [4 x double], ptr %6, i64 0, i64 1
  %28 = getelementptr inbounds [4 x double], ptr %6, i64 0, i64 2
  %29 = getelementptr inbounds [4 x double], ptr %6, i64 0, i64 3
  %30 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1
  %31 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  %32 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1
  %33 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1, i32 1
  br label %37

34:                                               ; preds = %212
  %35 = add i32 %42, 2
  %36 = icmp ult i32 %35, %2
  br i1 %36, label %37, label %218, !llvm.loop !125

37:                                               ; preds = %26, %34
  %38 = phi i32 [ undef, %26 ], [ %217, %34 ]
  %39 = phi i32 [ 0, %26 ], [ %216, %34 ]
  %40 = phi i32 [ 0, %26 ], [ %215, %34 ]
  %41 = phi i32 [ 0, %26 ], [ %214, %34 ]
  %42 = phi i32 [ 0, %26 ], [ %35, %34 ]
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %45 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %43, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !5
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = zext nneg i32 %46 to i64
  %50 = load ptr, ptr %44, align 8, !tbaa !11
  %51 = call i32 @strncmp(ptr noundef nonnull @.str.17, ptr noundef %50, i64 noundef %49) #12
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %37, %48
  %55 = phi i32 [ 0, %37 ], [ %53, %48 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.gs_param_string_s, ptr %44, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %59, ptr noundef nonnull @.str.18, ptr noundef nonnull %10) #13
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i64, ptr %10, align 8, !tbaa !77
  %64 = add nsw i64 %63, -1
  %65 = load ptr, ptr %9, align 8, !tbaa !81
  %66 = getelementptr inbounds %struct.pdf_resource_s, ptr %65, i64 0, i32 2
  store i64 %64, ptr %66, align 8, !tbaa !124
  br label %212

67:                                               ; preds = %57, %54
  %68 = load i32, ptr %45, align 8, !tbaa !5
  %69 = zext i32 %68 to i64
  %70 = icmp eq i32 %68, 4
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load ptr, ptr %44, align 8, !tbaa !11
  %73 = call i32 @strncmp(ptr noundef nonnull @.str.19, ptr noundef %72, i64 noundef %69) #12
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  br label %76

76:                                               ; preds = %67, %71
  %77 = phi i32 [ 0, %67 ], [ %75, %71 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %212

79:                                               ; preds = %76
  %80 = icmp eq i32 %68, 4
  br i1 %80, label %81, label %86

81:                                               ; preds = %79
  %82 = load ptr, ptr %44, align 8, !tbaa !11
  %83 = call i32 @strncmp(ptr noundef nonnull @.str.20, ptr noundef %82, i64 noundef %69) #12
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %79, %81
  %87 = phi i32 [ 0, %79 ], [ %85, %81 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %212

89:                                               ; preds = %86
  %90 = icmp eq i32 %68, 6
  br i1 %90, label %91, label %96

91:                                               ; preds = %89
  %92 = load ptr, ptr %44, align 8, !tbaa !11
  %93 = call i32 @strncmp(ptr noundef nonnull @.str.21, ptr noundef %92, i64 noundef %69) #12
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  br label %96

96:                                               ; preds = %89, %91
  %97 = phi i32 [ 0, %89 ], [ %95, %91 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %138, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.gs_param_string_s, ptr %44, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !11
  %102 = getelementptr inbounds %struct.gs_param_string_s, ptr %44, i64 1, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !5
  %104 = call i32 @pputs(ptr noundef %14, ptr noundef nonnull @.str.22) #13
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %136, label %106

106:                                              ; preds = %99, %132
  %107 = phi i32 [ %134, %132 ], [ 0, %99 ]
  %108 = sub i32 %103, %107
  %109 = icmp ugt i32 %108, 8
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = zext i32 %107 to i64
  %112 = getelementptr inbounds i8, ptr %101, i64 %111
  %113 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %112, ptr noundef nonnull dereferenceable(8) @.str.23, i64 8)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = add i32 %107, 8
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %101, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !110
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !110
  %123 = icmp ugt i8 %122, 100
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = call i32 @pputs(ptr noundef %14, ptr noundef nonnull @.str.24) #13
  %126 = add i32 %107, 7
  br label %132

127:                                              ; preds = %115, %110, %106
  %128 = zext i32 %107 to i64
  %129 = getelementptr inbounds i8, ptr %101, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !110
  %131 = call i32 @spputc(ptr noundef %14, i8 noundef zeroext %130) #13
  br label %132

132:                                              ; preds = %124, %127
  %133 = phi i32 [ %107, %127 ], [ %126, %124 ]
  %134 = add i32 %133, 1
  %135 = icmp ult i32 %134, %103
  br i1 %135, label %106, label %136, !llvm.loop !126

136:                                              ; preds = %132, %99
  %137 = call i32 @spputc(ptr noundef %14, i8 noundef zeroext 10) #13
  br label %212

138:                                              ; preds = %96
  %139 = icmp eq i32 %68, 4
  br i1 %139, label %140, label %145

140:                                              ; preds = %138
  %141 = load ptr, ptr %44, align 8, !tbaa !11
  %142 = call i32 @strncmp(ptr noundef nonnull @.str.25, ptr noundef %141, i64 noundef %69) #12
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  br label %145

145:                                              ; preds = %138, %140
  %146 = phi i32 [ 0, %138 ], [ %144, %140 ]
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %178, label %148

148:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #13
  %149 = getelementptr inbounds %struct.gs_param_string_s, ptr %44, i64 1, i32 1
  %150 = load i32, ptr %149, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 103, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %151 = icmp ugt i32 %150, 100
  br i1 %151, label %166, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.gs_param_string_s, ptr %44, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !11
  %155 = zext nneg i32 %150 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr align 1 %154, i64 %155, i1 false)
  %156 = getelementptr inbounds i8, ptr %7, i64 %155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %156, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, i64 3, i1 false) #13
  %157 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %7, ptr noundef nonnull @.str.30, ptr noundef nonnull %6, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %8) #13
  %158 = icmp eq i32 %157, 5
  br i1 %158, label %159, label %166

159:                                              ; preds = %152
  %160 = load double, ptr %6, align 16, !tbaa !88
  %161 = load double, ptr %27, align 8, !tbaa !88
  %162 = call i32 @gs_point_transform(double noundef %160, double noundef %161, ptr noundef %3, ptr noundef nonnull %11) #13
  %163 = load double, ptr %28, align 16, !tbaa !88
  %164 = load double, ptr %29, align 8, !tbaa !88
  %165 = call i32 @gs_point_transform(double noundef %163, double noundef %164, ptr noundef %3, ptr noundef nonnull %30) #13
  br label %166

166:                                              ; preds = %148, %152, %159
  %167 = phi i1 [ true, %159 ], [ false, %148 ], [ false, %152 ]
  %168 = phi i32 [ 0, %159 ], [ -13, %148 ], [ -15, %152 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 103, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  br i1 %167, label %169, label %176

169:                                              ; preds = %166
  %170 = call ptr @pprints1(ptr noundef %14, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.25) #13
  %171 = load double, ptr %11, align 8, !tbaa !68
  %172 = load double, ptr %31, align 8, !tbaa !69
  %173 = load double, ptr %32, align 8, !tbaa !70
  %174 = load double, ptr %33, align 8, !tbaa !71
  %175 = call ptr @pprintg4(ptr noundef %14, ptr noundef nonnull @.str.72, double noundef %171, double noundef %172, double noundef %173, double noundef %174) #13
  br label %176

176:                                              ; preds = %166, %169
  %177 = phi i32 [ %38, %169 ], [ %168, %166 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #13
  br label %212

178:                                              ; preds = %145
  %179 = call i32 @spputc(ptr noundef %14, i8 noundef zeroext 47) #13
  %180 = load ptr, ptr %44, align 8, !tbaa !11
  %181 = load i32, ptr %45, align 8, !tbaa !5
  %182 = call i32 @pwrite(ptr noundef %14, ptr noundef %180, i32 noundef %181) #13
  %183 = call i32 @spputc(ptr noundef %14, i8 noundef zeroext 32) #13
  %184 = getelementptr inbounds %struct.gs_param_string_s, ptr %44, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !11
  %186 = getelementptr inbounds %struct.gs_param_string_s, ptr %44, i64 1, i32 1
  %187 = load i32, ptr %186, align 8, !tbaa !5
  %188 = call i32 @pwrite(ptr noundef %14, ptr noundef %185, i32 noundef %187) #13
  %189 = call i32 @spputc(ptr noundef %14, i8 noundef zeroext 10) #13
  %190 = load i32, ptr %45, align 8, !tbaa !5
  %191 = zext i32 %190 to i64
  %192 = icmp eq i32 %190, 4
  br i1 %192, label %193, label %198

193:                                              ; preds = %178
  %194 = load ptr, ptr %44, align 8, !tbaa !11
  %195 = call i32 @strncmp(ptr noundef nonnull @.str.26, ptr noundef %194, i64 noundef %191) #12
  %196 = icmp eq i32 %195, 0
  %197 = zext i1 %196 to i32
  br label %198

198:                                              ; preds = %178, %193
  %199 = phi i32 [ 0, %178 ], [ %197, %193 ]
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %198
  %202 = icmp eq i32 %190, 7
  br i1 %202, label %203, label %208

203:                                              ; preds = %201
  %204 = load ptr, ptr %44, align 8, !tbaa !11
  %205 = call i32 @strncmp(ptr noundef nonnull @.str.27, ptr noundef %204, i64 noundef %191) #12
  %206 = icmp eq i32 %205, 0
  %207 = zext i1 %206 to i32
  br label %208

208:                                              ; preds = %201, %203
  %209 = phi i32 [ 0, %201 ], [ %207, %203 ]
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i32 %39, i32 1
  br label %212

212:                                              ; preds = %176, %208, %62, %136, %86, %76, %198
  %213 = phi i1 [ true, %198 ], [ true, %76 ], [ true, %86 ], [ true, %208 ], [ true, %136 ], [ true, %62 ], [ %167, %176 ]
  %214 = phi i32 [ 1, %198 ], [ %41, %76 ], [ %41, %86 ], [ %41, %208 ], [ %41, %136 ], [ %41, %62 ], [ %41, %176 ]
  %215 = phi i32 [ %40, %198 ], [ 1, %76 ], [ 1, %86 ], [ %40, %208 ], [ %40, %136 ], [ %40, %62 ], [ %40, %176 ]
  %216 = phi i32 [ %39, %198 ], [ %39, %76 ], [ %39, %86 ], [ %211, %208 ], [ %39, %136 ], [ %39, %62 ], [ %39, %176 ]
  %217 = phi i32 [ %38, %198 ], [ %38, %76 ], [ %38, %86 ], [ %38, %208 ], [ %38, %136 ], [ %38, %62 ], [ %177, %176 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br i1 %213, label %34, label %238

218:                                              ; preds = %34
  %219 = icmp eq i32 %215, 0
  %220 = icmp ne i32 %214, 0
  %221 = select i1 %219, i1 true, i1 %220
  %222 = icmp eq i32 %216, 0
  br label %223

223:                                              ; preds = %218, %18
  %224 = phi i1 [ true, %18 ], [ %221, %218 ]
  %225 = phi i1 [ true, %18 ], [ %222, %218 ]
  br i1 %224, label %232, label %226

226:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %12) #13
  %227 = call fastcc i32 @pdfmark_make_dest(ptr noundef nonnull %12, ptr noundef %0, ptr noundef %1, i32 noundef %2), !range !108
  %228 = icmp sgt i32 %227, -1
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = call ptr @pprints1(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #13
  br label %231

231:                                              ; preds = %229, %226
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %12) #13
  br label %232

232:                                              ; preds = %231, %223
  br i1 %225, label %233, label %235

233:                                              ; preds = %232
  %234 = call ptr @pprints1(ptr noundef %14, ptr noundef nonnull @.str.28, ptr noundef %4) #13
  br label %235

235:                                              ; preds = %233, %232
  %236 = call i32 @pputs(ptr noundef %14, ptr noundef nonnull @.str.4) #13
  %237 = call i32 @pdf_end_aside(ptr noundef %0) #13
  br label %238

238:                                              ; preds = %212, %5, %235
  %239 = phi i32 [ 0, %235 ], [ %16, %5 ], [ %217, %212 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  ret i32 %239
}

declare i32 @pdf_begin_aside(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @spputc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pdfmark_make_dest(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %4, %30
  %8 = phi i32 [ %31, %30 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 %9, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 %9
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = tail call i32 @strncmp(ptr noundef nonnull @.str.19, ptr noundef %16, i64 noundef %14) #12
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %13, %7
  %21 = phi i32 [ 0, %7 ], [ %19, %13 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = or disjoint i32 %8, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa.struct !85
  %28 = getelementptr inbounds i8, ptr %26, i64 8
  %29 = load i32, ptr %28, align 8, !tbaa.struct !86
  br label %33

30:                                               ; preds = %20
  %31 = add i32 %8, 2
  %32 = icmp ult i32 %31, %3
  br i1 %32, label %7, label %33, !llvm.loop !87

33:                                               ; preds = %30, %4, %23
  %34 = phi ptr [ %27, %23 ], [ null, %4 ], [ null, %30 ]
  %35 = phi i32 [ %29, %23 ], [ 0, %4 ], [ 0, %30 ]
  %36 = phi i32 [ 1, %23 ], [ 0, %4 ], [ 0, %30 ]
  br i1 %6, label %63, label %37

37:                                               ; preds = %33, %60
  %38 = phi i32 [ %61, %60 ], [ 0, %33 ]
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 %39, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !5
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = zext nneg i32 %41 to i64
  %45 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 %39
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = tail call i32 @strncmp(ptr noundef nonnull @.str.20, ptr noundef %46, i64 noundef %44) #12
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %43, %37
  %51 = phi i32 [ 0, %37 ], [ %49, %43 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = or disjoint i32 %38, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa.struct !85
  %58 = getelementptr inbounds i8, ptr %56, i64 8
  %59 = load i32, ptr %58, align 8, !tbaa.struct !86
  br label %63

60:                                               ; preds = %50
  %61 = add i32 %38, 2
  %62 = icmp ult i32 %61, %3
  br i1 %62, label %37, label %63, !llvm.loop !87

63:                                               ; preds = %60, %33, %53
  %64 = phi i32 [ %59, %53 ], [ 0, %33 ], [ 0, %60 ]
  %65 = phi ptr [ %57, %53 ], [ null, %33 ], [ null, %60 ]
  %66 = phi i32 [ 1, %53 ], [ 0, %33 ], [ 0, %60 ]
  %67 = or i32 %66, %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %68 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %1, i64 0, i32 52
  %69 = load i32, ptr %68, align 8, !tbaa !123
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %5, align 4, !tbaa !72
  %71 = icmp eq ptr %34, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %63
  %73 = zext i32 %35 to i64
  %74 = icmp eq i32 %35, 5
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = tail call i32 @strncmp(ptr noundef nonnull @.str.34, ptr noundef nonnull %34, i64 noundef %73) #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = add nsw i32 %69, 2
  store i32 %79, ptr %5, align 4, !tbaa !72
  br label %88

80:                                               ; preds = %75
  %81 = tail call i32 @strncmp(ptr noundef nonnull @.str.35, ptr noundef nonnull %34, i64 noundef %73) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 %69, ptr %5, align 4, !tbaa !72
  br label %88

84:                                               ; preds = %80, %72
  %85 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %34, ptr noundef nonnull @.str.36, ptr noundef nonnull %5) #13
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i32 0, ptr %5, align 4, !tbaa !72
  br label %88

88:                                               ; preds = %63, %78, %83, %84, %87
  %89 = load i32, ptr %5, align 4, !tbaa !72
  %90 = call i64 @pdf_page_id(ptr noundef %1, i32 noundef %89) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %91 = icmp eq i32 %64, 0
  %92 = select i1 %91, i32 12, i32 %64
  %93 = select i1 %91, ptr @.str.31, ptr %65
  %94 = icmp eq i64 %90, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef nonnull align 1 dereferenceable(7) @.str.32, i64 7, i1 false) #13
  br label %98

96:                                               ; preds = %88
  %97 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.33, i64 noundef %90) #13
  br label %98

98:                                               ; preds = %96, %95
  %99 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %100 = trunc i64 %99 to i32
  %101 = add i32 %92, %100
  %102 = icmp ugt i32 %101, 80
  br i1 %102, label %120, label %103

103:                                              ; preds = %98
  %104 = load i8, ptr %93, align 1, !tbaa !110
  %105 = icmp eq i8 %104, 91
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = add i32 %92, -1
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %93, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !110
  %111 = icmp eq i8 %110, 93
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = shl i64 %99, 32
  %114 = ashr exact i64 %113, 32
  %115 = getelementptr inbounds i8, ptr %0, i64 %114
  %116 = getelementptr inbounds i8, ptr %93, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %115, ptr nonnull align 1 %116, i64 %108, i1 false)
  %117 = add nsw i32 %101, -1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %0, i64 %118
  store i8 0, ptr %119, align 1, !tbaa !110
  br label %120

120:                                              ; preds = %103, %106, %98, %112
  %121 = phi i32 [ %67, %112 ], [ -13, %98 ], [ -15, %106 ], [ -15, %103 ]
  ret i32 %121
}

declare i32 @pdf_end_aside(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

declare i32 @gs_point_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @pwrite(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i64 @pdf_page_id(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pdfmark_save_edited_pairs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #2 {
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %3, align 8, !tbaa !81
  %11 = icmp eq ptr %10, null
  br label %17

12:                                               ; preds = %53, %7
  %13 = phi i32 [ 0, %7 ], [ %54, %53 ]
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %70, label %15

15:                                               ; preds = %12
  %16 = zext i32 %5 to i64
  br label %57

17:                                               ; preds = %9, %53
  %18 = phi i32 [ 0, %9 ], [ %55, %53 ]
  %19 = phi i32 [ 0, %9 ], [ %54, %53 ]
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %20
  br i1 %11, label %43, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %20, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !5
  %25 = zext i32 %24 to i64
  br label %30

26:                                               ; preds = %40
  %27 = getelementptr inbounds ptr, ptr %32, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30, !llvm.loop !127

30:                                               ; preds = %26, %22
  %31 = phi ptr [ %10, %22 ], [ %28, %26 ]
  %32 = phi ptr [ %3, %22 ], [ %27, %26 ]
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #12
  %34 = icmp eq i64 %33, %25
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load ptr, ptr %21, align 8, !tbaa !11
  %37 = tail call i32 @strncmp(ptr noundef nonnull %31, ptr noundef %36, i64 noundef %25) #12
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i32 [ 0, %30 ], [ %39, %35 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %26, label %53

43:                                               ; preds = %26, %17
  %44 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %20, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !5
  %46 = or disjoint i32 %18, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %47, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !5
  %50 = add i32 %19, 3
  %51 = add i32 %50, %45
  %52 = add i32 %51, %49
  br label %53

53:                                               ; preds = %40, %43
  %54 = phi i32 [ %52, %43 ], [ %19, %40 ]
  %55 = add i32 %18, 2
  %56 = icmp ult i32 %55, %2
  br i1 %56, label %17, label %12, !llvm.loop !128

57:                                               ; preds = %15, %57
  %58 = phi i64 [ 0, %15 ], [ %68, %57 ]
  %59 = phi i32 [ %13, %15 ], [ %67, %57 ]
  %60 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 %58, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !5
  %62 = or disjoint i64 %58, 1
  %63 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 %62, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !5
  %65 = add i32 %59, 3
  %66 = add i32 %65, %61
  %67 = add i32 %66, %64
  %68 = add nuw nsw i64 %58, 2
  %69 = icmp ult i64 %68, %16
  br i1 %69, label %57, label %70, !llvm.loop !129

70:                                               ; preds = %57, %12
  %71 = phi i32 [ %13, %12 ], [ %67, %57 ]
  %72 = load ptr, ptr %6, align 8, !tbaa !130
  %73 = icmp eq ptr %72, null
  %74 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 22
  %75 = load ptr, ptr %74, align 8, !tbaa !93
  br i1 %73, label %76, label %80

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %75, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !97
  %79 = tail call ptr %78(ptr noundef %75, i32 noundef %71, ptr noundef nonnull @.str.39) #13
  br label %86

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %75, i64 0, i32 14
  %82 = load ptr, ptr %81, align 8, !tbaa !131
  %83 = getelementptr inbounds %struct.gs_string_s, ptr %6, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !132
  %85 = tail call ptr %82(ptr noundef %75, ptr noundef nonnull %72, i32 noundef %84, i32 noundef %71, ptr noundef nonnull @.str.39) #13
  br label %86

86:                                               ; preds = %80, %76
  %87 = phi ptr [ %79, %76 ], [ %85, %80 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %168, label %89

89:                                               ; preds = %86
  %90 = icmp eq i32 %2, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %141, %89
  %92 = phi ptr [ %87, %89 ], [ %142, %141 ]
  %93 = icmp eq i32 %5, 0
  br i1 %93, label %166, label %94

94:                                               ; preds = %91
  %95 = zext i32 %5 to i64
  br label %145

96:                                               ; preds = %89, %141
  %97 = phi i32 [ %143, %141 ], [ 0, %89 ]
  %98 = phi ptr [ %142, %141 ], [ %87, %89 ]
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %99
  %101 = load ptr, ptr %3, align 8, !tbaa !81
  %102 = icmp eq ptr %101, null
  br i1 %102, label %124, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %99, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !5
  %106 = zext i32 %105 to i64
  br label %111

107:                                              ; preds = %121
  %108 = getelementptr inbounds ptr, ptr %113, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !81
  %110 = icmp eq ptr %109, null
  br i1 %110, label %124, label %111, !llvm.loop !127

111:                                              ; preds = %107, %103
  %112 = phi ptr [ %101, %103 ], [ %109, %107 ]
  %113 = phi ptr [ %3, %103 ], [ %108, %107 ]
  %114 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %112) #12
  %115 = icmp eq i64 %114, %106
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load ptr, ptr %100, align 8, !tbaa !11
  %118 = tail call i32 @strncmp(ptr noundef nonnull %112, ptr noundef %117, i64 noundef %106) #12
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i32 [ 0, %111 ], [ %120, %116 ]
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %107, label %141

124:                                              ; preds = %107, %96
  %125 = getelementptr inbounds i8, ptr %98, i64 1
  store i8 47, ptr %98, align 1, !tbaa !110
  %126 = load ptr, ptr %100, align 8, !tbaa !11
  %127 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %99, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !5
  %129 = zext i32 %128 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %125, ptr align 1 %126, i64 %129, i1 false)
  %130 = getelementptr inbounds i8, ptr %125, i64 %129
  %131 = getelementptr inbounds i8, ptr %130, i64 1
  store i8 32, ptr %130, align 1, !tbaa !110
  %132 = or disjoint i32 %97, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !11
  %136 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 %133, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !5
  %138 = zext i32 %137 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %131, ptr align 1 %135, i64 %138, i1 false)
  %139 = getelementptr inbounds i8, ptr %131, i64 %138
  %140 = getelementptr inbounds i8, ptr %139, i64 1
  store i8 10, ptr %139, align 1, !tbaa !110
  br label %141

141:                                              ; preds = %121, %124
  %142 = phi ptr [ %140, %124 ], [ %98, %121 ]
  %143 = add i32 %97, 2
  %144 = icmp ult i32 %143, %2
  br i1 %144, label %96, label %91, !llvm.loop !133

145:                                              ; preds = %94, %145
  %146 = phi i64 [ 0, %94 ], [ %164, %145 ]
  %147 = phi ptr [ %92, %94 ], [ %163, %145 ]
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  store i8 47, ptr %147, align 1, !tbaa !110
  %149 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 %146
  %150 = load ptr, ptr %149, align 8, !tbaa !11
  %151 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 %146, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !5
  %153 = zext i32 %152 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %148, ptr align 1 %150, i64 %153, i1 false)
  %154 = getelementptr inbounds i8, ptr %148, i64 %153
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  store i8 32, ptr %154, align 1, !tbaa !110
  %156 = or disjoint i64 %146, 1
  %157 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !11
  %159 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 %156, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !5
  %161 = zext i32 %160 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %155, ptr align 1 %158, i64 %161, i1 false)
  %162 = getelementptr inbounds i8, ptr %155, i64 %161
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  store i8 10, ptr %162, align 1, !tbaa !110
  %164 = add nuw nsw i64 %146, 2
  %165 = icmp ult i64 %164, %95
  br i1 %165, label %145, label %166, !llvm.loop !134

166:                                              ; preds = %145, %91
  store ptr %87, ptr %6, align 8, !tbaa !130
  %167 = getelementptr inbounds %struct.gs_string_s, ptr %6, i64 0, i32 1
  store i32 %71, ptr %167, align 8, !tbaa !132
  br label %168

168:                                              ; preds = %86, %166
  %169 = phi i32 [ 0, %166 ], [ -25, %86 ]
  ret i32 %169
}

declare i64 @pdf_obj_ref(ptr noundef) local_unnamed_addr #5

declare i32 @pdf_close_contents(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @pdf_article_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !99
  store ptr %7, ptr %3, align 8, !tbaa !81
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @pdf_article_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !99
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #13
  store ptr %5, ptr %0, align 8, !tbaa !99
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @pdf_named_dest_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !112
  store ptr %7, ptr %3, align 8, !tbaa !81
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @pdf_named_dest_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !112
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #13
  store ptr %5, ptr %0, align 8, !tbaa !112
  ret void
}

declare i32 @pdf_open_contents(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @pdf_begin_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @pdfmark_write_ps(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = tail call i64 @pdf_obj_ref(ptr noundef %0) #13
  %6 = tail call ptr @pprintld1(ptr noundef %4, ptr noundef nonnull @.str.55, i64 noundef %5) #13
  %7 = tail call i64 @stell(ptr noundef %4) #13
  %8 = getelementptr inbounds %struct.gs_param_string_s, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8, !tbaa !11
  %13 = load i8, ptr %12, align 1, !tbaa !110
  %14 = icmp eq i8 %13, 40
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = add i32 %9, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %12, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !110
  %20 = icmp eq i8 %19, 41
  br i1 %20, label %26, label %21

21:                                               ; preds = %15, %11, %2
  %22 = load ptr, ptr @gs_stderr, align 8, !tbaa !81
  tail call void @lprintf_file_and_line(ptr noundef %22, ptr noundef nonnull @.str.56, i32 noundef 618) #13
  %23 = load ptr, ptr @gs_stderr, align 8, !tbaa !81
  %24 = load ptr, ptr %1, align 8, !tbaa !11
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.57, ptr noundef %24)
  br label %30

26:                                               ; preds = %15
  %27 = getelementptr inbounds i8, ptr %12, i64 1
  %28 = add i32 %9, -2
  %29 = tail call i32 @pwrite(ptr noundef %4, ptr noundef nonnull %27, i32 noundef %28) #13
  br label %30

30:                                               ; preds = %26, %21
  %31 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.58) #13
  %32 = tail call i64 @stell(ptr noundef %4) #13
  %33 = sub nsw i64 %32, %7
  %34 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull @.str.59) #13
  %35 = tail call i32 @pdf_end_obj(ptr noundef %0) #13
  %36 = tail call i64 @pdf_open_obj(ptr noundef %0, i64 noundef %5) #13
  %37 = tail call ptr @pprintld1(ptr noundef %4, ptr noundef nonnull @.str.60, i64 noundef %33) #13
  %38 = tail call i32 @pdf_end_obj(ptr noundef %0) #13
  ret void
}

declare i64 @stell(ptr noundef) local_unnamed_addr #5

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i32 @pdf_open_page(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @pdf_write_default_info(ptr noundef) local_unnamed_addr #5

declare i32 @pdf_write_saved_string(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @pprintd1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @pprintg4(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8}
!6 = !{!"gs_param_string_s", !7, i64 0, !10, i64 8, !10, i64 12}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"gs_param_string_array_s", !7, i64 0, !10, i64 8, !10, i64 12}
!14 = !{!13, !10, i64 8}
!15 = !{!16, !34, i64 1200}
!16 = !{!"gx_device_pdf_s", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !17, i64 48, !10, i64 64, !10, i64 68, !8, i64 72, !8, i64 80, !10, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !19, i64 144, !19, i64 152, !10, i64 160, !20, i64 168, !21, i64 192, !7, i64 488, !7, i64 496, !8, i64 504, !7, i64 592, !7, i64 600, !7, i64 608, !10, i64 616, !22, i64 624, !8, i64 944, !28, i64 992, !28, i64 1088, !19, i64 1184, !19, i64 1192, !33, i64 1200, !10, i64 1216, !7, i64 1224, !19, i64 1232, !19, i64 1240, !35, i64 1248, !24, i64 1512, !10, i64 1516, !19, i64 1520, !10, i64 1528, !8, i64 1532, !7, i64 1616, !19, i64 1624, !19, i64 1632, !19, i64 1640, !19, i64 1648, !19, i64 1656, !10, i64 1664, !8, i64 1672, !10, i64 4072, !10, i64 4076, !19, i64 4080, !19, i64 4088, !10, i64 4096, !24, i64 4100, !23, i64 4104, !7, i64 4176, !10, i64 4184, !10, i64 4188, !8, i64 4192, !7, i64 4232, !7, i64 4240, !37, i64 4248, !37, i64 4264, !37, i64 4280, !8, i64 4296, !10, i64 5384, !10, i64 5388, !10, i64 5392, !7, i64 5400, !7, i64 5408, !38, i64 5416}
!17 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !18, i64 8, !18, i64 10, !18, i64 12, !18, i64 14}
!18 = !{!"short", !8, i64 0}
!19 = !{!"long", !8, i64 0}
!20 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!21 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!22 = !{!"gs_imager_state_s", !7, i64 0, !23, i64 8, !26, i64 80, !10, i64 128, !18, i64 132, !10, i64 136, !24, i64 140, !27, i64 144, !10, i64 160, !10, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!23 = !{!"gx_line_params_s", !24, i64 0, !10, i64 4, !10, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !25, i64 32}
!24 = !{!"float", !8, i64 0}
!25 = !{!"gx_dash_params_s", !7, i64 0, !10, i64 8, !24, i64 12, !10, i64 16, !24, i64 20, !10, i64 24, !10, i64 28, !24, i64 32}
!26 = !{!"gs_matrix_fixed_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !19, i64 24, !19, i64 32, !10, i64 40}
!27 = !{!"gs_fixed_point_s", !19, i64 0, !19, i64 8}
!28 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !29, i64 48, !30, i64 56}
!29 = !{!"gs_int_point_s", !10, i64 0, !10, i64 4}
!30 = !{!"_mask", !31, i64 0, !19, i64 24, !7, i64 32}
!31 = !{!"gs_client_color_s", !32, i64 0, !7, i64 16}
!32 = !{!"gs_paint_color_s", !8, i64 0}
!33 = !{!"gs_point_s", !34, i64 0, !34, i64 8}
!34 = !{!"double", !8, i64 0}
!35 = !{!"psdf_distiller_params_s", !10, i64 0, !10, i64 4, !10, i64 8, !19, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !36, i64 56, !10, i64 104, !10, i64 108, !10, i64 112, !36, i64 120, !36, i64 168, !13, i64 216, !13, i64 232, !10, i64 248, !10, i64 252, !10, i64 256}
!36 = !{!"psdf_image_params_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24, !10, i64 32, !7, i64 40}
!37 = !{!"gs_string_s", !7, i64 0, !10, i64 8}
!38 = !{!"pdf_text_state_s", !24, i64 0, !7, i64 8, !24, i64 16, !24, i64 20, !24, i64 24}
!39 = !{!16, !34, i64 1208}
!40 = !{!41, !24, i64 16}
!41 = !{!"gs_matrix_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20}
!42 = !{!41, !24, i64 20}
!43 = !{!44, !7, i64 0}
!44 = !{!"pdfmark_name_s", !7, i64 0, !7, i64 8}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!44, !7, i64 8}
!48 = !{!16, !10, i64 5384}
!49 = !{!50, !19, i64 64}
!50 = !{!"pdf_outline_level_s", !51, i64 0, !51, i64 64, !10, i64 128}
!51 = !{!"pdf_outline_node_s", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !10, i64 40, !37, i64 48}
!52 = !{!50, !19, i64 96}
!53 = !{!50, !10, i64 104}
!54 = !{!16, !10, i64 5388}
!55 = !{!16, !7, i64 600}
!56 = !{!51, !19, i64 0}
!57 = !{!51, !10, i64 40}
!58 = !{!51, !19, i64 8}
!59 = !{!51, !19, i64 16}
!60 = !{!51, !19, i64 24}
!61 = !{!51, !19, i64 32}
!62 = !{!63, !19, i64 0}
!63 = !{!"pdf_bead_s", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !8, i64 32, !64, i64 112}
!64 = !{!"gs_rect_s", !33, i64 0, !33, i64 16}
!65 = !{!63, !19, i64 8}
!66 = !{!63, !19, i64 16}
!67 = !{!63, !19, i64 24}
!68 = !{!64, !34, i64 0}
!69 = !{!64, !34, i64 8}
!70 = !{!64, !34, i64 16}
!71 = !{!64, !34, i64 24}
!72 = !{!10, !10, i64 0}
!73 = distinct !{!73, !46}
!74 = !{!51, !7, i64 48}
!75 = !{i32 -25, i32 1}
!76 = !{!16, !19, i64 1656}
!77 = !{!19, !19, i64 0}
!78 = !{!50, !19, i64 0}
!79 = !{!50, !19, i64 88}
!80 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !77, i64 24, i64 8, !77, i64 32, i64 8, !77, i64 40, i64 4, !72, i64 48, i64 8, !81, i64 56, i64 4, !72}
!81 = !{!7, !7, i64 0}
!82 = !{!50, !10, i64 128}
!83 = !{!16, !10, i64 5392}
!84 = distinct !{!84, !46}
!85 = !{i64 0, i64 8, !81, i64 8, i64 4, !72, i64 12, i64 4, !72}
!86 = !{i64 0, i64 4, !72, i64 4, i64 4, !72}
!87 = distinct !{!87, !46}
!88 = !{!34, !34, i64 0}
!89 = !{!90, !7, i64 8}
!90 = !{!"pdf_article_s", !7, i64 0, !37, i64 8, !19, i64 24, !63, i64 32, !63, i64 176}
!91 = !{!90, !10, i64 16}
!92 = distinct !{!92, !46}
!93 = !{!16, !7, i64 488}
!94 = !{!95, !7, i64 16}
!95 = !{!"gs_memory_s", !96, i64 0}
!96 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!97 = !{!95, !7, i64 96}
!98 = !{!16, !7, i64 5400}
!99 = !{!90, !7, i64 0}
!100 = !{!90, !19, i64 24}
!101 = !{!90, !19, i64 176}
!102 = !{!90, !19, i64 32}
!103 = !{!90, !19, i64 56}
!104 = !{!90, !19, i64 200}
!105 = !{!90, !19, i64 192}
!106 = !{!90, !19, i64 184}
!107 = !{i64 0, i64 8, !88, i64 8, i64 8, !88, i64 16, i64 8, !88, i64 24, i64 8, !88}
!108 = !{i32 -15, i32 2}
!109 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !77, i64 24, i64 8, !77, i64 32, i64 80, !110, i64 112, i64 8, !88, i64 120, i64 8, !88, i64 128, i64 8, !88, i64 136, i64 8, !88}
!110 = !{!8, !8, i64 0}
!111 = !{!16, !7, i64 5408}
!112 = !{!113, !7, i64 0}
!113 = !{!"pdf_named_dest_s", !7, i64 0, !37, i64 8, !8, i64 24}
!114 = !{!113, !7, i64 8}
!115 = !{!113, !10, i64 16}
!116 = !{!117, !19, i64 24}
!117 = !{!"pdf_resource_s", !7, i64 0, !7, i64 8, !19, i64 16, !19, i64 24}
!118 = !{!16, !10, i64 4076}
!119 = !{!16, !10, i64 4072}
!120 = distinct !{!120, !46}
!121 = !{!16, !19, i64 1640}
!122 = !{!6, !10, i64 12}
!123 = !{!16, !10, i64 1664}
!124 = !{!117, !19, i64 16}
!125 = distinct !{!125, !46}
!126 = distinct !{!126, !46}
!127 = distinct !{!127, !46}
!128 = distinct !{!128, !46}
!129 = distinct !{!129, !46}
!130 = !{!37, !7, i64 0}
!131 = !{!95, !7, i64 112}
!132 = !{!37, !10, i64 8}
!133 = distinct !{!133, !46}
!134 = distinct !{!134, !46}
