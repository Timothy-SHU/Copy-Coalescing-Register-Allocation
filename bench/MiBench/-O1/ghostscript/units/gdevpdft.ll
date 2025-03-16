; ModuleID = 'gdevpdft.c'
source_filename = "gdevpdft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_param_string_s = type { ptr, i32, i32 }
%struct.gs_param_float_array_s = type { ptr, i32, i32 }
%struct.gs_param_string_array_s = type { ptr, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_point_s = type { double, double }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
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
%struct.psdf_distiller_params_s = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32 }
%struct.psdf_image_params_s = type { i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_string_s = type { ptr, i32 }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.gs_string_s }
%struct.pdf_text_state_s = type { float, ptr, float, float, float }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pdf_font_s = type { ptr, ptr, i64, i64, %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }

@.str = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Values\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"BaseEncoding\00", align 1
@standard_font_names = internal unnamed_addr constant [15 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr null], align 16
@.str.6 = private unnamed_addr constant [35 x i8] c" /Subtype /Type1 /BaseFont /%s >>\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"/R%ld \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%g Tf\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%g %g %g %g %g %g Tm\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%g Tc\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%g Tw\0A\00", align 1
@s_PSSE_template = external local_unnamed_addr constant %struct.stream_template_s, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c" Tj\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Courier-Bold\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Courier-Oblique\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Courier-BoldOblique\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Helvetica-Bold\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Helvetica-Oblique\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Helvetica-BoldOblique\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Times-Roman\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"Times-Bold\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Times-Italic\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Times-BoldItalic\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"ZapfDingbats\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @pdfshow_process(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_param_string_s, align 8
  %4 = alloca %struct.gs_param_string_s, align 8
  %5 = alloca %struct.gs_param_float_array_s, align 8
  %6 = alloca %struct.gs_param_float_array_s, align 8
  %7 = alloca %struct.gs_param_string_array_s, align 8
  %8 = alloca %struct.gs_param_string_array_s, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [200 x i8], align 16
  %11 = alloca %struct.gs_matrix_s, align 4
  %12 = alloca %struct.gs_point_s, align 8
  %13 = alloca [100 x i8], align 16
  %14 = alloca %struct.stream_cursor_read_s, align 8
  %15 = alloca %struct.stream_cursor_write_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %16 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 35, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %10) #5
  %22 = load ptr, ptr %1, align 8, !tbaa !36
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = call i32 %25(ptr noundef nonnull %22, ptr noundef nonnull @.str, ptr noundef nonnull %3) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %357

28:                                               ; preds = %2
  %29 = load ptr, ptr %1, align 8, !tbaa !36
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %30, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = call i32 %32(ptr noundef nonnull %29, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #5
  %34 = icmp ne i32 %33, 0
  %35 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %5, i64 0, i32 1
  %36 = load i32, ptr %35, align 8
  %37 = icmp ne i32 %36, 7
  %38 = select i1 %34, i1 true, i1 %37
  br i1 %38, label %357, label %39

39:                                               ; preds = %28
  %40 = load ptr, ptr %1, align 8, !tbaa !36
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %41, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !42
  %44 = call i32 %43(ptr noundef nonnull %40, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #5
  %45 = icmp ne i32 %44, 0
  %46 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %6, i64 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = icmp ne i32 %47, 6
  %49 = select i1 %45, i1 true, i1 %48
  br i1 %49, label %357, label %50

50:                                               ; preds = %39
  %51 = load ptr, ptr %1, align 8, !tbaa !36
  %52 = load ptr, ptr %51, align 8, !tbaa !38
  %53 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !40
  %55 = call i32 %54(ptr noundef nonnull %51, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #5
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %357

57:                                               ; preds = %50
  %58 = load ptr, ptr %1, align 8, !tbaa !36
  %59 = load ptr, ptr %58, align 8, !tbaa !38
  %60 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %59, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  %62 = call i32 %61(ptr noundef nonnull %58, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #5
  %63 = icmp ne i32 %62, 0
  %64 = getelementptr inbounds %struct.gs_param_string_array_s, ptr %7, i64 0, i32 1
  %65 = load i32, ptr %64, align 8
  %66 = icmp ne i32 %65, 256
  %67 = select i1 %63, i1 true, i1 %66
  br i1 %67, label %357, label %68

68:                                               ; preds = %57
  %69 = load ptr, ptr %1, align 8, !tbaa !36
  %70 = load ptr, ptr %69, align 8, !tbaa !38
  %71 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %70, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !43
  %73 = call i32 %72(ptr noundef nonnull %69, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #5
  %74 = icmp ne i32 %73, 0
  %75 = getelementptr inbounds %struct.gs_param_string_array_s, ptr %8, i64 0, i32 1
  %76 = load i32, ptr %75, align 8
  %77 = icmp ne i32 %76, 256
  %78 = select i1 %74, i1 true, i1 %77
  br i1 %78, label %357, label %79

79:                                               ; preds = %68
  %80 = load ptr, ptr %5, align 8, !tbaa !44
  %81 = getelementptr inbounds float, ptr %80, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !46
  %83 = fcmp une float %82, 0.000000e+00
  br i1 %83, label %357, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds float, ptr %80, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !46
  %87 = fptosi float %86 to i32
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load float, ptr %80, align 4, !tbaa !46
  %91 = fcmp une float %90, 0.000000e+00
  br i1 %91, label %357, label %92

92:                                               ; preds = %89, %84
  %93 = getelementptr inbounds float, ptr %80, i64 4
  %94 = load float, ptr %93, align 4, !tbaa !46
  %95 = fcmp une float %94, 0.000000e+00
  br i1 %95, label %357, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !47
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %152

100:                                              ; preds = %96
  %101 = load ptr, ptr %3, align 8, !tbaa !49
  %102 = load ptr, ptr %7, align 8, !tbaa !50
  %103 = load ptr, ptr %8, align 8, !tbaa !50
  %104 = icmp ugt i32 %98, 200
  %105 = zext nneg i32 %98 to i64
  %106 = zext i32 %98 to i64
  %107 = zext i32 %98 to i64
  br label %112

108:                                              ; preds = %145
  %109 = add nuw nsw i64 %113, 1
  %110 = icmp ult i64 %109, %106
  %111 = icmp eq i64 %109, %107
  br i1 %111, label %149, label %112, !llvm.loop !51

112:                                              ; preds = %100, %108
  %113 = phi i64 [ 0, %100 ], [ %109, %108 ]
  %114 = phi i1 [ %99, %100 ], [ %110, %108 ]
  %115 = phi i32 [ undef, %100 ], [ %148, %108 ]
  %116 = phi i32 [ 0, %100 ], [ %146, %108 ]
  %117 = getelementptr inbounds i8, ptr %101, i64 %113
  %118 = load i8, ptr %117, align 1, !tbaa !53
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds %struct.gs_param_string_s, ptr %102, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !49
  %122 = getelementptr inbounds %struct.gs_param_string_s, ptr %103, i64 %119
  %123 = load ptr, ptr %122, align 8, !tbaa !49
  %124 = icmp eq ptr %121, %123
  br i1 %124, label %145, label %125

125:                                              ; preds = %112, %130
  %126 = phi i64 [ %131, %130 ], [ 0, %112 ]
  %127 = getelementptr inbounds %struct.gs_param_string_s, ptr %103, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !49
  %129 = icmp eq ptr %121, %128
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = add nuw nsw i64 %126, 1
  %132 = icmp eq i64 %131, 256
  br i1 %132, label %135, label %125, !llvm.loop !54

133:                                              ; preds = %125
  %134 = trunc i64 %126 to i32
  br label %135

135:                                              ; preds = %130, %133
  %136 = phi i32 [ %134, %133 ], [ 256, %130 ]
  %137 = icmp eq i32 %136, 256
  br i1 %137, label %145, label %138

138:                                              ; preds = %135
  %139 = icmp eq i32 %116, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  br i1 %104, label %145, label %141

141:                                              ; preds = %140
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %101, i64 %105, i1 false)
  br label %142

142:                                              ; preds = %141, %138
  %143 = trunc i32 %136 to i8
  %144 = getelementptr inbounds [200 x i8], ptr %10, i64 0, i64 %113
  store i8 %143, ptr %144, align 1, !tbaa !53
  br label %145

145:                                              ; preds = %142, %135, %140, %112
  %146 = phi i32 [ %116, %112 ], [ 1, %142 ], [ %116, %135 ], [ 0, %140 ]
  %147 = phi i1 [ true, %112 ], [ true, %142 ], [ false, %135 ], [ false, %140 ]
  %148 = phi i32 [ %115, %112 ], [ %115, %142 ], [ -21, %135 ], [ -13, %140 ]
  br i1 %147, label %108, label %149

149:                                              ; preds = %108, %145
  %150 = phi i1 [ %114, %145 ], [ %110, %108 ]
  %151 = icmp eq i32 %146, 0
  br label %152

152:                                              ; preds = %149, %96
  %153 = phi i1 [ %99, %96 ], [ %150, %149 ]
  %154 = phi i1 [ true, %96 ], [ %151, %149 ]
  %155 = phi i32 [ undef, %96 ], [ %148, %149 ]
  %156 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  br i1 %153, label %357, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 64
  %159 = load ptr, ptr %158, align 8, !tbaa !55
  store ptr %159, ptr %9, align 8, !tbaa !55
  %160 = icmp eq ptr %159, null
  br i1 %160, label %177, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  br label %163

163:                                              ; preds = %161, %173
  %164 = phi ptr [ %159, %161 ], [ %175, %173 ]
  %165 = getelementptr inbounds %struct.pdf_font_s, ptr %164, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !56
  %167 = getelementptr inbounds %struct.pdf_font_s, ptr %164, i64 0, i32 4, i32 1
  %168 = load i32, ptr %167, align 8, !tbaa !59
  %169 = load ptr, ptr %4, align 8, !tbaa !49
  %170 = load i32, ptr %162, align 8, !tbaa !47
  %171 = call i32 @bytes_compare(ptr noundef %166, i32 noundef %168, ptr noundef %169, i32 noundef %170) #5
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %163
  %174 = load ptr, ptr %9, align 8, !tbaa !55
  %175 = load ptr, ptr %174, align 8, !tbaa !55
  store ptr %175, ptr %9, align 8, !tbaa !55
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %163, !llvm.loop !60

177:                                              ; preds = %173, %163, %157
  %178 = load ptr, ptr %6, align 8, !tbaa !44
  %179 = load float, ptr %178, align 4, !tbaa !61
  %180 = fcmp une float %179, 0.000000e+00
  %181 = fpext float %179 to double
  %182 = fdiv double %181, %19
  %183 = fptrunc double %182 to float
  %184 = select i1 %180, float %183, float 1.000000e+00
  %185 = load ptr, ptr %9, align 8, !tbaa !55
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %221

187:                                              ; preds = %177
  %188 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !47
  %190 = zext i32 %189 to i64
  %191 = load ptr, ptr %4, align 8
  br label %192

192:                                              ; preds = %187, %201
  %193 = phi i1 [ false, %187 ], [ %204, %201 ]
  %194 = phi ptr [ @.str.13, %187 ], [ %203, %201 ]
  %195 = phi ptr [ @standard_font_names, %187 ], [ %202, %201 ]
  %196 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %194) #6
  %197 = icmp eq i64 %196, %190
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = call i32 @strncmp(ptr noundef nonnull %194, ptr noundef %191, i64 noundef %190) #6
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %192, %198
  %202 = getelementptr inbounds ptr, ptr %195, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !55
  %204 = icmp eq ptr %203, null
  br i1 %204, label %218, label %192, !llvm.loop !63

205:                                              ; preds = %198
  br i1 %193, label %218, label %206

206:                                              ; preds = %205
  %207 = call i32 @pdf_begin_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %9) #5
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %206
  %210 = call ptr @pprints1(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef nonnull %194) #5
  %211 = load ptr, ptr %4, align 8, !tbaa !49
  %212 = load ptr, ptr %9, align 8, !tbaa !55
  %213 = getelementptr inbounds %struct.pdf_font_s, ptr %212, i64 0, i32 4
  store ptr %211, ptr %213, align 8, !tbaa !56
  %214 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !47
  %216 = getelementptr inbounds %struct.pdf_font_s, ptr %212, i64 0, i32 4, i32 1
  store i32 %215, ptr %216, align 8, !tbaa !59
  %217 = call i32 @pdf_end_resource(ptr noundef %0) #5
  br label %218

218:                                              ; preds = %201, %206, %205, %209
  %219 = phi i1 [ true, %209 ], [ false, %205 ], [ false, %206 ], [ false, %201 ]
  %220 = phi i32 [ %155, %209 ], [ -21, %205 ], [ -21, %206 ], [ -21, %201 ]
  br i1 %219, label %221, label %357

221:                                              ; preds = %218, %177
  %222 = call i32 @pdf_open_contents(ptr noundef %0, i32 noundef 2) #5
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %357, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %9, align 8, !tbaa !55
  %226 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76
  %227 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !64
  %229 = icmp eq ptr %225, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76, i32 2
  %232 = load float, ptr %231, align 8, !tbaa !65
  %233 = fcmp une float %184, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %230, %224
  %235 = getelementptr inbounds %struct.pdf_font_s, ptr %225, i64 0, i32 3
  %236 = load i64, ptr %235, align 8, !tbaa !66
  %237 = call ptr @pprintld1(ptr noundef %17, ptr noundef nonnull @.str.7, i64 noundef %236) #5
  %238 = fpext float %184 to double
  %239 = call ptr @pprintg1(ptr noundef %17, ptr noundef nonnull @.str.8, double noundef %238) #5
  %240 = load ptr, ptr %9, align 8, !tbaa !55
  store ptr %240, ptr %227, align 8, !tbaa !64
  %241 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76, i32 2
  store float %184, ptr %241, align 8, !tbaa !65
  br label %242

242:                                              ; preds = %234, %230
  %243 = fpext float %184 to double
  %244 = fmul double %19, %243
  %245 = fmul double %21, %243
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #5
  %246 = load ptr, ptr %6, align 8, !tbaa !44
  %247 = load float, ptr %246, align 4, !tbaa !61
  %248 = fpext float %247 to double
  %249 = fdiv double %248, %244
  %250 = fptrunc double %249 to float
  store float %250, ptr %11, align 4, !tbaa !61
  %251 = getelementptr inbounds %struct.gs_matrix_s, ptr %246, i64 0, i32 1
  %252 = load float, ptr %251, align 4, !tbaa !67
  %253 = fpext float %252 to double
  %254 = fdiv double %253, %245
  %255 = fptrunc double %254 to float
  %256 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 1
  store float %255, ptr %256, align 4, !tbaa !67
  %257 = getelementptr inbounds %struct.gs_matrix_s, ptr %246, i64 0, i32 2
  %258 = load float, ptr %257, align 4, !tbaa !68
  %259 = fpext float %258 to double
  %260 = fdiv double %259, %244
  %261 = fptrunc double %260 to float
  %262 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 2
  store float %261, ptr %262, align 4, !tbaa !68
  %263 = getelementptr inbounds %struct.gs_matrix_s, ptr %246, i64 0, i32 3
  %264 = load float, ptr %263, align 4, !tbaa !69
  %265 = fpext float %264 to double
  %266 = fdiv double %265, %245
  %267 = fptrunc double %266 to float
  %268 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 3
  store float %267, ptr %268, align 4, !tbaa !69
  %269 = load ptr, ptr %5, align 8, !tbaa !44
  %270 = getelementptr inbounds float, ptr %269, i64 5
  %271 = load float, ptr %270, align 4, !tbaa !46
  %272 = getelementptr inbounds %struct.gs_matrix_s, ptr %246, i64 0, i32 4
  %273 = load float, ptr %272, align 4, !tbaa !70
  %274 = fadd float %271, %273
  %275 = fpext float %274 to double
  %276 = load double, ptr %18, align 8, !tbaa !34
  %277 = fdiv double %275, %276
  %278 = fptrunc double %277 to float
  %279 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 4
  store float %278, ptr %279, align 4, !tbaa !70
  %280 = getelementptr inbounds float, ptr %269, i64 6
  %281 = load float, ptr %280, align 4, !tbaa !46
  %282 = getelementptr inbounds %struct.gs_matrix_s, ptr %246, i64 0, i32 5
  %283 = load float, ptr %282, align 4, !tbaa !71
  %284 = fadd float %281, %283
  %285 = fpext float %284 to double
  %286 = load double, ptr %20, align 8, !tbaa !35
  %287 = fdiv double %285, %286
  %288 = fptrunc double %287 to float
  %289 = getelementptr inbounds %struct.gs_matrix_s, ptr %11, i64 0, i32 5
  store float %288, ptr %289, align 4, !tbaa !71
  %290 = fpext float %250 to double
  %291 = fpext float %255 to double
  %292 = fpext float %261 to double
  %293 = fpext float %267 to double
  %294 = call ptr @pprintg4(ptr noundef %17, ptr noundef nonnull @.str.9, double noundef %290, double noundef %291, double noundef %292, double noundef %293) #5
  %295 = load float, ptr %279, align 4, !tbaa !70
  %296 = fpext float %295 to double
  %297 = load float, ptr %289, align 4, !tbaa !71
  %298 = fpext float %297 to double
  %299 = call ptr @pprintg2(ptr noundef %17, ptr noundef %294, double noundef %296, double noundef %298) #5
  %300 = load ptr, ptr %5, align 8, !tbaa !44
  %301 = getelementptr inbounds float, ptr %300, i64 3
  %302 = load float, ptr %301, align 4, !tbaa !46
  %303 = fpext float %302 to double
  %304 = getelementptr inbounds float, ptr %300, i64 4
  %305 = load float, ptr %304, align 4, !tbaa !46
  %306 = fpext float %305 to double
  %307 = call i32 @gs_distance_transform_inverse(double noundef %303, double noundef %306, ptr noundef nonnull %11, ptr noundef nonnull %12) #5
  %308 = load double, ptr %12, align 8, !tbaa !72
  %309 = fptrunc double %308 to float
  %310 = load float, ptr %226, align 8, !tbaa !73
  %311 = fcmp une float %310, %309
  br i1 %311, label %312, label %315

312:                                              ; preds = %242
  %313 = fpext float %309 to double
  %314 = call ptr @pprintg1(ptr noundef %17, ptr noundef nonnull @.str.10, double noundef %313) #5
  store float %309, ptr %226, align 8, !tbaa !73
  br label %315

315:                                              ; preds = %312, %242
  %316 = load ptr, ptr %5, align 8, !tbaa !44
  %317 = load float, ptr %316, align 4, !tbaa !46
  %318 = fpext float %317 to double
  %319 = getelementptr inbounds float, ptr %316, i64 1
  %320 = load float, ptr %319, align 4, !tbaa !46
  %321 = fpext float %320 to double
  %322 = call i32 @gs_distance_transform_inverse(double noundef %318, double noundef %321, ptr noundef nonnull %11, ptr noundef nonnull %12) #5
  %323 = load double, ptr %12, align 8, !tbaa !72
  %324 = fptrunc double %323 to float
  %325 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 76, i32 3
  %326 = load float, ptr %325, align 4, !tbaa !74
  %327 = fcmp une float %326, %324
  br i1 %327, label %328, label %331

328:                                              ; preds = %315
  %329 = fpext float %324 to double
  %330 = call ptr @pprintg1(ptr noundef %17, ptr noundef nonnull @.str.11, double noundef %329) #5
  store float %324, ptr %325, align 4, !tbaa !74
  br label %331

331:                                              ; preds = %328, %315
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #5
  %332 = call i32 @spputc(ptr noundef %17, i8 noundef zeroext 40) #5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #5
  %333 = load ptr, ptr %3, align 8
  %334 = select i1 %154, ptr %333, ptr %10
  %335 = getelementptr inbounds i8, ptr %334, i64 -1
  store ptr %335, ptr %14, align 8, !tbaa !75
  %336 = load i32, ptr %156, align 8, !tbaa !47
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds i8, ptr %335, i64 %337
  %339 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %14, i64 0, i32 1
  store ptr %338, ptr %339, align 8, !tbaa !77
  %340 = getelementptr inbounds i8, ptr %13, i64 99
  %341 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %15, i64 0, i32 2
  store ptr %340, ptr %341, align 8, !tbaa !78
  %342 = getelementptr inbounds i8, ptr %13, i64 -1
  %343 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %15, i64 0, i32 1
  %344 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_PSSE_template, i64 0, i32 2), align 8, !tbaa !80
  %345 = ptrtoint ptr %13 to i64
  br label %346

346:                                              ; preds = %346, %331
  store ptr %342, ptr %343, align 8, !tbaa !82
  %347 = call i32 %344(ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef 1) #5
  %348 = load ptr, ptr %343, align 8, !tbaa !82
  %349 = getelementptr inbounds i8, ptr %348, i64 1
  %350 = ptrtoint ptr %349 to i64
  %351 = sub i64 %350, %345
  %352 = trunc i64 %351 to i32
  %353 = call i32 @pwrite(ptr noundef %17, ptr noundef nonnull %13, i32 noundef %352) #5
  %354 = icmp eq i32 %347, 1
  br i1 %354, label %346, label %355, !llvm.loop !83

355:                                              ; preds = %346
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %13) #5
  %356 = call i32 @pputs(ptr noundef %17, ptr noundef nonnull @.str.12) #5
  br label %357

357:                                              ; preds = %221, %79, %89, %92, %2, %28, %39, %50, %57, %68, %218, %152, %355
  %358 = phi i32 [ 0, %355 ], [ %220, %218 ], [ %155, %152 ], [ -15, %68 ], [ -15, %57 ], [ -15, %50 ], [ -15, %39 ], [ -15, %28 ], [ -15, %2 ], [ -21, %92 ], [ -21, %89 ], [ -21, %79 ], [ %222, %221 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %358
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

declare i32 @pdf_begin_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pprints1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pdf_end_resource(ptr noundef) local_unnamed_addr #3

declare i32 @pdf_open_contents(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pprintld1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pprintg1(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @pprintg2(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare ptr @pprintg4(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @gs_distance_transform_inverse(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @spputc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @pwrite(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pputs(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 600}
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
!34 = !{!6, !28, i64 1200}
!35 = !{!6, !28, i64 1208}
!36 = !{!37, !10, i64 0}
!37 = !{!"gs_param_collection_s", !10, i64 0, !7, i64 8}
!38 = !{!39, !10, i64 0}
!39 = !{!"gs_param_list_s", !10, i64 0}
!40 = !{!41, !10, i64 40}
!41 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!42 = !{!41, !10, i64 64}
!43 = !{!41, !10, i64 80}
!44 = !{!45, !10, i64 0}
!45 = !{!"gs_param_float_array_s", !10, i64 0, !7, i64 8, !7, i64 12}
!46 = !{!18, !18, i64 0}
!47 = !{!48, !7, i64 8}
!48 = !{!"gs_param_string_s", !10, i64 0, !7, i64 8, !7, i64 12}
!49 = !{!48, !10, i64 0}
!50 = !{!31, !10, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!8, !8, i64 0}
!54 = distinct !{!54, !52}
!55 = !{!10, !10, i64 0}
!56 = !{!57, !10, i64 32}
!57 = !{!"pdf_font_s", !10, i64 0, !10, i64 8, !13, i64 16, !13, i64 24, !58, i64 32}
!58 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!59 = !{!57, !7, i64 40}
!60 = distinct !{!60, !52}
!61 = !{!62, !18, i64 0}
!62 = !{!"gs_matrix_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20}
!63 = distinct !{!63, !52}
!64 = !{!6, !10, i64 5424}
!65 = !{!6, !18, i64 5432}
!66 = !{!57, !13, i64 24}
!67 = !{!62, !18, i64 4}
!68 = !{!62, !18, i64 8}
!69 = !{!62, !18, i64 12}
!70 = !{!62, !18, i64 16}
!71 = !{!62, !18, i64 20}
!72 = !{!27, !28, i64 0}
!73 = !{!6, !18, i64 5416}
!74 = !{!6, !18, i64 5436}
!75 = !{!76, !10, i64 0}
!76 = !{!"stream_cursor_read_s", !10, i64 0, !10, i64 8, !10, i64 16}
!77 = !{!76, !10, i64 8}
!78 = !{!79, !10, i64 16}
!79 = !{!"stream_cursor_write_s", !10, i64 0, !10, i64 8, !10, i64 16}
!80 = !{!81, !10, i64 16}
!81 = !{!"stream_template_s", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !10, i64 40, !10, i64 48}
!82 = !{!79, !10, i64 8}
!83 = distinct !{!83, !52}
