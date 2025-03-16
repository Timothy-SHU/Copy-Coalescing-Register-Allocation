; ModuleID = 'gdevdflt.c'
source_filename = "gdevdflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_device_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_clip_list_s, ptr, %struct.gs_int_point_s }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }

@gx_default_copy_rop_proc = dso_local local_unnamed_addr global ptr @gx_no_copy_rop, align 8
@gx_forward_copy_rop_proc = dso_local local_unnamed_addr global ptr @gx_no_copy_rop, align 8
@gx_default_strip_copy_rop_proc = dso_local local_unnamed_addr global ptr @gx_no_strip_copy_rop, align 8
@gx_forward_strip_copy_rop_proc = dso_local local_unnamed_addr global ptr @gx_no_strip_copy_rop, align 8
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str = private unnamed_addr constant [16 x i8] c"copy_alpha(lin)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"copy_alpha(lout)\00", align 1
@gx_dc_procs_ht_binary = external constant %struct.gx_device_color_procs_s, align 8
@byte_bit_run_length = external local_unnamed_addr global [8 x ptr], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_no_copy_rop(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, i64 %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr nocapture readnone %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_no_strip_copy_rop(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, i64 %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr nocapture readnone %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_device_fill_in_procs(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @gx_device_set_procs(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store ptr @gx_default_open_device, ptr %2, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store ptr @gx_default_get_initial_matrix, ptr %7, align 8, !tbaa !16
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store ptr @gx_default_sync_output, ptr %12, align 8, !tbaa !17
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store ptr @gx_default_output_page, ptr %17, align 8, !tbaa !18
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store ptr @gx_default_close_device, ptr %22, align 8, !tbaa !19
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr @gx_default_w_b_map_rgb_color, ptr %27, align 8, !tbaa !20
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store ptr @gx_default_w_b_map_color_rgb, ptr %32, align 8, !tbaa !21
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr @gx_default_tile_rectangle, ptr %37, align 8, !tbaa !22
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !23
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store ptr @gx_default_copy_mono, ptr %42, align 8, !tbaa !23
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !24
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store ptr @gx_default_copy_color, ptr %47, align 8, !tbaa !24
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !25
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store ptr @gx_default_draw_line, ptr %52, align 8, !tbaa !25
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 12
  %58 = load ptr, ptr %57, align 8, !tbaa !26
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store ptr @gx_default_get_bits, ptr %57, align 8, !tbaa !26
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !27
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store ptr @gx_default_get_params, ptr %62, align 8, !tbaa !27
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 14
  %68 = load ptr, ptr %67, align 8, !tbaa !28
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store ptr @gx_default_put_params, ptr %67, align 8, !tbaa !28
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 15
  %73 = load ptr, ptr %72, align 8, !tbaa !29
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store ptr @gx_default_map_cmyk_color, ptr %72, align 8, !tbaa !29
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 16
  %78 = load ptr, ptr %77, align 8, !tbaa !30
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store ptr @gx_default_get_xfont_procs, ptr %77, align 8, !tbaa !30
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 17
  %83 = load ptr, ptr %82, align 8, !tbaa !31
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store ptr @gx_default_get_xfont_device, ptr %82, align 8, !tbaa !31
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 18
  %88 = load ptr, ptr %87, align 8, !tbaa !32
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store ptr @gx_default_map_rgb_alpha_color, ptr %87, align 8, !tbaa !32
  br label %91

91:                                               ; preds = %90, %86
  %92 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 19
  %93 = load ptr, ptr %92, align 8, !tbaa !33
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store ptr @gx_default_get_page_device, ptr %92, align 8, !tbaa !33
  br label %96

96:                                               ; preds = %95, %91
  %97 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 20
  %98 = load ptr, ptr %97, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store ptr @gx_default_get_alpha_bits, ptr %97, align 8, !tbaa !34
  br label %101

101:                                              ; preds = %100, %96
  %102 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 21
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store ptr @gx_default_copy_alpha, ptr %102, align 8, !tbaa !35
  br label %106

106:                                              ; preds = %105, %101
  %107 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 22
  %108 = load ptr, ptr %107, align 8, !tbaa !36
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store ptr @gx_default_get_band, ptr %107, align 8, !tbaa !36
  br label %111

111:                                              ; preds = %110, %106
  %112 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 23
  %113 = load ptr, ptr %112, align 8, !tbaa !37
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load ptr, ptr @gx_default_copy_rop_proc, align 8, !tbaa !38
  store ptr %116, ptr %112, align 8, !tbaa !37
  br label %117

117:                                              ; preds = %115, %111
  %118 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 24
  %119 = load ptr, ptr %118, align 8, !tbaa !39
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store ptr @gx_default_fill_path, ptr %118, align 8, !tbaa !39
  br label %122

122:                                              ; preds = %121, %117
  %123 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 25
  %124 = load ptr, ptr %123, align 8, !tbaa !40
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store ptr @gx_default_stroke_path, ptr %123, align 8, !tbaa !40
  br label %127

127:                                              ; preds = %126, %122
  %128 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 26
  %129 = load ptr, ptr %128, align 8, !tbaa !41
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store ptr @gx_default_fill_mask, ptr %128, align 8, !tbaa !41
  br label %132

132:                                              ; preds = %131, %127
  %133 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 27
  %134 = load ptr, ptr %133, align 8, !tbaa !42
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store ptr @gx_default_fill_trapezoid, ptr %133, align 8, !tbaa !42
  br label %137

137:                                              ; preds = %136, %132
  %138 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 28
  %139 = load ptr, ptr %138, align 8, !tbaa !43
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  store ptr @gx_default_fill_parallelogram, ptr %138, align 8, !tbaa !43
  br label %142

142:                                              ; preds = %141, %137
  %143 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 29
  %144 = load ptr, ptr %143, align 8, !tbaa !44
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store ptr @gx_default_fill_triangle, ptr %143, align 8, !tbaa !44
  br label %147

147:                                              ; preds = %146, %142
  %148 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 30
  %149 = load ptr, ptr %148, align 8, !tbaa !45
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store ptr @gx_default_draw_thin_line, ptr %148, align 8, !tbaa !45
  br label %152

152:                                              ; preds = %151, %147
  %153 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 31
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store ptr @gx_default_begin_image, ptr %153, align 8, !tbaa !46
  br label %157

157:                                              ; preds = %156, %152
  %158 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 32
  %159 = load ptr, ptr %158, align 8, !tbaa !47
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store ptr @gx_default_image_data, ptr %158, align 8, !tbaa !47
  br label %162

162:                                              ; preds = %161, %157
  %163 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 33
  %164 = load ptr, ptr %163, align 8, !tbaa !48
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store ptr @gx_default_end_image, ptr %163, align 8, !tbaa !48
  br label %167

167:                                              ; preds = %166, %162
  %168 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 34
  %169 = load ptr, ptr %168, align 8, !tbaa !49
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store ptr @gx_default_strip_tile_rectangle, ptr %168, align 8, !tbaa !49
  br label %172

172:                                              ; preds = %171, %167
  %173 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 35
  %174 = load ptr, ptr %173, align 8, !tbaa !50
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load ptr, ptr @gx_default_strip_copy_rop_proc, align 8, !tbaa !38
  store ptr %177, ptr %173, align 8, !tbaa !50
  br label %178

178:                                              ; preds = %176, %172
  %179 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 36
  %180 = load ptr, ptr %179, align 8, !tbaa !51
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store ptr @gx_default_get_clipping_box, ptr %179, align 8, !tbaa !51
  br label %183

183:                                              ; preds = %182, %178
  ret void
}

declare void @gx_device_set_procs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_open_device(ptr nocapture readnone %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_default_get_initial_matrix(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %4 = load float, ptr %3, align 4, !tbaa !52
  %5 = fdiv float %4, 7.200000e+01
  store float %5, ptr %1, align 4, !tbaa !54
  %6 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  store float 0.000000e+00, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !57
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !52
  %10 = fdiv float %9, -7.200000e+01
  %11 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  store float %10, ptr %11, align 4, !tbaa !58
  %12 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  store float 0.000000e+00, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !60
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  store float %15, ptr %16, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_sync_output(ptr nocapture readnone %0) #0 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_output_page(ptr noundef %0, i32 %1, i32 %2) #1 {
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = tail call i32 %5(ptr noundef %0) #9
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_close_device(ptr nocapture readnone %0) #0 {
  ret i32 0
}

declare i64 @gx_default_w_b_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #2

declare i32 @gx_default_w_b_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_tile_rectangle(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #1 {
  %11 = alloca %struct.gx_strip_bitmap_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !62
  %12 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 6
  store i16 0, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 7
  store i16 0, ptr %13, align 2, !tbaa !69
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 34
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = call i32 %15(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #9
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
  %12 = alloca %struct.gx_device_color_s, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #9
  %13 = or i32 %6, %5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %17 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %18 = add nsw i32 %17, %7
  %19 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %20 = sub nsw i32 %2, %19
  %21 = icmp slt i32 %6, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = add nsw i32 %8, %6
  %24 = mul nsw i32 %6, %3
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  br label %28

28:                                               ; preds = %15, %22, %11
  %29 = phi i64 [ 0, %22 ], [ %4, %15 ], [ %4, %11 ]
  %30 = phi i32 [ %16, %22 ], [ %16, %15 ], [ %5, %11 ]
  %31 = phi i32 [ 0, %22 ], [ %6, %15 ], [ %6, %11 ]
  %32 = phi i32 [ %18, %22 ], [ %18, %15 ], [ %7, %11 ]
  %33 = phi i32 [ %23, %22 ], [ %8, %15 ], [ %8, %11 ]
  %34 = phi i32 [ %20, %22 ], [ %20, %15 ], [ %2, %11 ]
  %35 = phi ptr [ %27, %22 ], [ %1, %15 ], [ %1, %11 ]
  %36 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !70
  %38 = sub nsw i32 %37, %32
  %39 = icmp sgt i32 %30, %38
  %40 = sub nsw i32 %37, %30
  %41 = select i1 %39, i32 %40, i32 %32
  %42 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %43 = load i32, ptr %42, align 4, !tbaa !60
  %44 = sub nsw i32 %43, %33
  %45 = icmp sgt i32 %31, %44
  %46 = sub nsw i32 %43, %31
  %47 = select i1 %45, i32 %46, i32 %33
  %48 = icmp slt i32 %41, 1
  %49 = icmp slt i32 %47, 1
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %28
  %52 = icmp eq i64 %10, -1
  br i1 %52, label %60, label %53

53:                                               ; preds = %51
  %54 = icmp eq i64 %9, -1
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = tail call i32 %57(ptr noundef %0, i32 noundef %30, i32 noundef %31, i32 noundef %41, i32 noundef %47, i64 noundef %9) #9
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %65

60:                                               ; preds = %51, %53, %55
  %61 = phi i32 [ 0, %55 ], [ 0, %53 ], [ 1, %51 ]
  %62 = phi i64 [ %10, %55 ], [ %10, %53 ], [ %9, %51 ]
  %63 = getelementptr inbounds %struct.gx_device_color_s, ptr %12, i64 0, i32 1
  store i64 %62, ptr %63, align 8, !tbaa !72
  store ptr @gx_dc_procs_pure, ptr %12, align 8, !tbaa !73
  %64 = call i32 @gx_dc_default_fill_masked(ptr noundef nonnull %12, ptr noundef %35, i32 noundef %34, i32 noundef %3, i64 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %41, i32 noundef %47, ptr noundef %0, i32 noundef 240, i32 noundef %61) #9
  br label %65

65:                                               ; preds = %28, %55, %60
  %66 = phi i32 [ %64, %60 ], [ %58, %55 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #9
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_copy_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !78
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef 0, i64 noundef 1) #9
  br label %154

17:                                               ; preds = %9
  %18 = or i32 %6, %5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %22 = add nsw i32 %21, %7
  %23 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %24 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %25 = sub nsw i32 %2, %24
  %26 = icmp slt i32 %6, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = add nsw i32 %8, %6
  %29 = mul nsw i32 %6, %3
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  br label %33

33:                                               ; preds = %20, %27, %17
  %34 = phi i32 [ %22, %27 ], [ %22, %20 ], [ %7, %17 ]
  %35 = phi i32 [ %28, %27 ], [ %8, %20 ], [ %8, %17 ]
  %36 = phi i32 [ 0, %27 ], [ %6, %20 ], [ %6, %17 ]
  %37 = phi i32 [ %23, %27 ], [ %23, %20 ], [ %5, %17 ]
  %38 = phi i32 [ %25, %27 ], [ %25, %20 ], [ %2, %17 ]
  %39 = phi ptr [ %32, %27 ], [ %1, %20 ], [ %1, %17 ]
  %40 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %41 = load i32, ptr %40, align 8, !tbaa !70
  %42 = sub nsw i32 %41, %34
  %43 = icmp sgt i32 %37, %42
  %44 = sub nsw i32 %41, %37
  %45 = select i1 %43, i32 %44, i32 %34
  %46 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !60
  %48 = sub nsw i32 %47, %35
  %49 = icmp sgt i32 %36, %48
  %50 = sub nsw i32 %47, %36
  %51 = select i1 %49, i32 %50, i32 %35
  %52 = icmp slt i32 %45, 1
  %53 = icmp slt i32 %51, 1
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %154, label %55

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = shl nsw i32 -1, %11
  %59 = mul nsw i32 %38, %11
  %60 = ashr i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = icmp sgt i32 %11, 7
  %63 = and i32 %58, 255
  %64 = xor i32 %63, 255
  %65 = sext i32 %3 to i64
  br label %66

66:                                               ; preds = %55, %150
  %67 = phi i32 [ undef, %55 ], [ %149, %150 ]
  %68 = phi i32 [ 0, %55 ], [ %152, %150 ]
  %69 = phi ptr [ %39, %55 ], [ %151, %150 ]
  %70 = getelementptr inbounds i8, ptr %69, i64 %61
  %71 = add nsw i32 %68, %36
  br label %72

72:                                               ; preds = %66, %135
  %73 = phi i32 [ %67, %66 ], [ %134, %135 ]
  %74 = phi i32 [ 0, %66 ], [ %133, %135 ]
  %75 = phi ptr [ %70, %66 ], [ %118, %135 ]
  %76 = phi i64 [ -1, %66 ], [ %132, %135 ]
  %77 = phi i32 [ 0, %66 ], [ %136, %135 ]
  br i1 %62, label %78, label %104

78:                                               ; preds = %72
  %79 = getelementptr inbounds i8, ptr %75, i64 1
  %80 = load i8, ptr %75, align 1, !tbaa !72
  %81 = zext i8 %80 to i64
  switch i32 %11, label %117 [
    i32 32, label %82
    i32 24, label %88
    i32 16, label %96
  ]

82:                                               ; preds = %78
  %83 = shl nuw nsw i64 %81, 8
  %84 = getelementptr inbounds i8, ptr %75, i64 2
  %85 = load i8, ptr %79, align 1, !tbaa !72
  %86 = zext i8 %85 to i64
  %87 = or disjoint i64 %83, %86
  br label %88

88:                                               ; preds = %78, %82
  %89 = phi ptr [ %79, %78 ], [ %84, %82 ]
  %90 = phi i64 [ %81, %78 ], [ %87, %82 ]
  %91 = shl nuw nsw i64 %90, 8
  %92 = getelementptr inbounds i8, ptr %89, i64 1
  %93 = load i8, ptr %89, align 1, !tbaa !72
  %94 = zext i8 %93 to i64
  %95 = or disjoint i64 %91, %94
  br label %96

96:                                               ; preds = %78, %88
  %97 = phi ptr [ %79, %78 ], [ %92, %88 ]
  %98 = phi i64 [ %81, %78 ], [ %95, %88 ]
  %99 = shl nuw nsw i64 %98, 8
  %100 = getelementptr inbounds i8, ptr %97, i64 1
  %101 = load i8, ptr %97, align 1, !tbaa !72
  %102 = zext i8 %101 to i64
  %103 = or disjoint i64 %99, %102
  br label %117

104:                                              ; preds = %72
  %105 = add nsw i32 %77, %38
  %106 = xor i32 %105, -1
  %107 = mul nsw i32 %11, %106
  %108 = and i32 %107, 7
  %109 = load i8, ptr %75, align 1, !tbaa !72
  %110 = zext i8 %109 to i32
  %111 = lshr i32 %110, %108
  %112 = and i32 %111, %64
  %113 = zext nneg i32 %112 to i64
  %114 = icmp eq i32 %108, 0
  %115 = zext i1 %114 to i64
  %116 = getelementptr inbounds i8, ptr %75, i64 %115
  br label %117

117:                                              ; preds = %78, %96, %104
  %118 = phi ptr [ %79, %78 ], [ %100, %96 ], [ %116, %104 ]
  %119 = phi i64 [ %81, %78 ], [ %103, %96 ], [ %113, %104 ]
  %120 = icmp eq i64 %119, %76
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = icmp sgt i32 %77, %74
  br i1 %122, label %123, label %130

123:                                              ; preds = %121
  %124 = add nsw i32 %74, %37
  %125 = sub nsw i32 %77, %74
  %126 = tail call i32 %57(ptr noundef %0, i32 noundef %124, i32 noundef %71, i32 noundef %125, i32 noundef 1, i64 noundef %76) #9
  %127 = icmp sgt i32 %126, -1
  %128 = select i1 %127, i32 %73, i32 %126
  br i1 %127, label %129, label %130

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %117, %121, %123, %129
  %131 = phi i1 [ false, %123 ], [ true, %121 ], [ true, %117 ], [ true, %129 ]
  %132 = phi i64 [ %76, %123 ], [ %119, %121 ], [ %76, %117 ], [ %119, %129 ]
  %133 = phi i32 [ %74, %123 ], [ %77, %121 ], [ %74, %117 ], [ %77, %129 ]
  %134 = phi i32 [ %128, %123 ], [ %73, %121 ], [ %73, %117 ], [ %128, %129 ]
  br i1 %131, label %135, label %147

135:                                              ; preds = %130
  %136 = add nuw nsw i32 %77, 1
  %137 = icmp slt i32 %136, %45
  br i1 %137, label %72, label %138, !llvm.loop !79

138:                                              ; preds = %135
  %139 = icmp slt i32 %77, %133
  br i1 %139, label %147, label %140

140:                                              ; preds = %138
  %141 = add nsw i32 %133, %37
  %142 = add nsw i32 %68, %36
  %143 = sub nsw i32 %136, %133
  %144 = tail call i32 %57(ptr noundef %0, i32 noundef %141, i32 noundef %142, i32 noundef %143, i32 noundef 1, i64 noundef %132) #9
  %145 = icmp sgt i32 %144, -1
  %146 = select i1 %145, i32 %134, i32 %144
  br label %147

147:                                              ; preds = %130, %140, %138
  %148 = phi i1 [ true, %138 ], [ %145, %140 ], [ false, %130 ]
  %149 = phi i32 [ %134, %138 ], [ %146, %140 ], [ %134, %130 ]
  br i1 %148, label %150, label %154

150:                                              ; preds = %147
  %151 = getelementptr inbounds i8, ptr %69, i64 %65
  %152 = add nuw nsw i32 %68, 1
  %153 = icmp slt i32 %152, %51
  br i1 %153, label %66, label %154, !llvm.loop !81

154:                                              ; preds = %150, %147, %33, %13
  %155 = phi i32 [ %16, %13 ], [ 0, %33 ], [ %149, %147 ], [ 0, %150 ]
  ret i32 %155
}

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_get_bits(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 {
  ret i32 -1
}

declare i32 @gx_default_get_params(ptr noundef, ptr noundef) #2

declare i32 @gx_default_put_params(ptr noundef, ptr noundef) #2

declare i64 @gx_default_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @gx_default_get_xfont_procs(ptr nocapture readnone %0) #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @gx_default_get_xfont_device(ptr noundef readnone returned %0) #0 {
  ret ptr %0
}

declare i64 @gx_default_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @gx_default_get_page_device(ptr nocapture readnone %0) #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_get_alpha_bits(ptr nocapture readnone %0, i32 %1) #0 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_copy_alpha(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) #1 {
  %12 = alloca [3 x i16], align 2
  %13 = alloca ptr, align 8
  %14 = alloca [3 x i16], align 2
  %15 = icmp eq i32 %10, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = tail call i32 %18(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef -1, i64 noundef %9) #9
  br label %304

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !78
  %23 = tail call i32 @gx_device_raster(ptr noundef %0, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #9
  %24 = or i32 %6, %5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %28 = add nsw i32 %27, %7
  %29 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %30 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %31 = sub nsw i32 %2, %30
  %32 = icmp slt i32 %6, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = add nsw i32 %8, %6
  %35 = mul nsw i32 %6, %3
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 0, %36
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  br label %39

39:                                               ; preds = %26, %33, %20
  %40 = phi i32 [ %34, %33 ], [ %8, %26 ], [ %8, %20 ]
  %41 = phi i32 [ %28, %33 ], [ %28, %26 ], [ %7, %20 ]
  %42 = phi i32 [ 0, %33 ], [ %6, %26 ], [ %6, %20 ]
  %43 = phi i32 [ %29, %33 ], [ %29, %26 ], [ %5, %20 ]
  %44 = phi i32 [ %31, %33 ], [ %31, %26 ], [ %2, %20 ]
  %45 = phi ptr [ %38, %33 ], [ %1, %26 ], [ %1, %20 ]
  %46 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %47 = load i32, ptr %46, align 8, !tbaa !70
  %48 = sub nsw i32 %47, %41
  %49 = icmp sgt i32 %43, %48
  %50 = sub nsw i32 %47, %43
  %51 = select i1 %49, i32 %50, i32 %41
  %52 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %53 = load i32, ptr %52, align 4, !tbaa !60
  %54 = sub nsw i32 %53, %40
  %55 = icmp sgt i32 %42, %54
  %56 = sub nsw i32 %53, %42
  %57 = select i1 %55, i32 %56, i32 %40
  %58 = icmp slt i32 %51, 1
  %59 = icmp slt i32 %57, 1
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %302, label %61

61:                                               ; preds = %39
  %62 = mul nsw i32 %51, %22
  %63 = add nsw i32 %62, 63
  %64 = ashr i32 %63, 3
  %65 = and i32 %64, -8
  %66 = load ptr, ptr @gs_memory_default, align 8, !tbaa !82
  %67 = tail call ptr %66(ptr noundef nonnull @gs_memory_default, i32 noundef %23, ptr noundef nonnull @.str) #9
  %68 = load ptr, ptr @gs_memory_default, align 8, !tbaa !82
  %69 = tail call ptr %68(ptr noundef nonnull @gs_memory_default, i32 noundef %65, ptr noundef nonnull @.str.1) #9
  %70 = icmp eq ptr %67, null
  %71 = icmp eq ptr %69, null
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %298, label %73

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !21
  %76 = call i32 %75(ptr noundef %0, i64 noundef %9, ptr noundef nonnull %12) #9
  %77 = add nsw i32 %57, %42
  %78 = icmp sgt i32 %57, 0
  br i1 %78, label %79, label %298

79:                                               ; preds = %73
  %80 = sub nsw i32 8, %22
  %81 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 12
  %82 = add nsw i32 %51, %44
  %83 = icmp sgt i32 %51, 0
  %84 = icmp eq i32 %10, 2
  %85 = icmp slt i32 %22, 8
  %86 = lshr i32 %22, 3
  %87 = shl nsw i32 -1, %22
  %88 = xor i32 %87, -1
  %89 = getelementptr inbounds [3 x i16], ptr %14, i64 0, i64 1
  %90 = getelementptr inbounds [3 x i16], ptr %12, i64 0, i64 1
  %91 = getelementptr inbounds [3 x i16], ptr %14, i64 0, i64 2
  %92 = getelementptr inbounds [3 x i16], ptr %12, i64 0, i64 2
  %93 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 5
  %94 = ashr i32 %22, 3
  %95 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 10
  %96 = sext i32 %3 to i64
  %97 = sext i32 %43 to i64
  %98 = zext nneg i32 %86 to i64
  %99 = zext i32 %22 to i64
  br label %100

100:                                              ; preds = %79, %294
  %101 = phi i32 [ undef, %79 ], [ %293, %294 ]
  %102 = phi i32 [ %42, %79 ], [ %296, %294 ]
  %103 = phi ptr [ %45, %79 ], [ %295, %294 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  %104 = load ptr, ptr %81, align 8, !tbaa !26
  %105 = call i32 %104(ptr noundef %0, i32 noundef %102, ptr noundef %67, ptr noundef nonnull %13) #9
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %291, label %107

107:                                              ; preds = %100
  br i1 %83, label %108, label %274

108:                                              ; preds = %107, %265
  %109 = phi i64 [ %270, %265 ], [ %97, %107 ]
  %110 = phi i32 [ %268, %265 ], [ %80, %107 ]
  %111 = phi i32 [ %267, %265 ], [ 0, %107 ]
  %112 = phi ptr [ %266, %265 ], [ %69, %107 ]
  %113 = phi i32 [ %269, %265 ], [ %44, %107 ]
  br i1 %84, label %114, label %126

114:                                              ; preds = %108
  %115 = ashr i32 %113, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %103, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !72
  %119 = zext i8 %118 to i32
  %120 = shl i32 %113, 1
  %121 = and i32 %120, 6
  %122 = xor i32 %121, 6
  %123 = lshr i32 %119, %122
  %124 = and i32 %123, 3
  %125 = mul nuw nsw i32 %124, 5
  br label %137

126:                                              ; preds = %108
  %127 = ashr i32 %113, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %103, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !72
  %131 = zext i8 %130 to i32
  %132 = and i32 %113, 1
  %133 = icmp eq i32 %132, 0
  %134 = and i32 %131, 15
  %135 = lshr i32 %131, 4
  %136 = select i1 %133, i32 %135, i32 %134
  br label %137

137:                                              ; preds = %126, %114
  %138 = phi i32 [ %125, %114 ], [ %136, %126 ]
  %139 = mul nsw i64 %109, %98
  %140 = mul i64 %109, %99
  %141 = lshr i64 %140, 3
  %142 = and i64 %141, 536870911
  %143 = trunc i64 %140 to i32
  %144 = add i32 %22, %143
  %145 = sub i32 8, %144
  br label %146

146:                                              ; preds = %232, %137
  %147 = phi i64 [ -1, %137 ], [ %191, %232 ]
  %148 = phi i32 [ %138, %137 ], [ %233, %232 ]
  %149 = icmp eq i32 %148, 15
  br i1 %149, label %234, label %150

150:                                              ; preds = %146
  %151 = icmp eq i64 %147, -1
  br i1 %151, label %152, label %190

152:                                              ; preds = %150
  %153 = load ptr, ptr %13, align 8, !tbaa !38
  br i1 %85, label %154, label %161

154:                                              ; preds = %152
  %155 = getelementptr inbounds i8, ptr %153, i64 %142
  %156 = load i8, ptr %155, align 1, !tbaa !72
  %157 = zext i8 %156 to i32
  %158 = lshr i32 %157, %145
  %159 = and i32 %158, %88
  %160 = zext nneg i32 %159 to i64
  br label %190

161:                                              ; preds = %152
  %162 = getelementptr inbounds i8, ptr %153, i64 %139
  switch i32 %86, label %190 [
    i32 4, label %163
    i32 3, label %168
    i32 2, label %176
    i32 1, label %184
  ]

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %162, i64 1
  %165 = load i8, ptr %162, align 1, !tbaa !72
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 24
  br label %168

168:                                              ; preds = %161, %163
  %169 = phi i64 [ 0, %161 ], [ %167, %163 ]
  %170 = phi ptr [ %162, %161 ], [ %164, %163 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 1
  %172 = load i8, ptr %170, align 1, !tbaa !72
  %173 = zext i8 %172 to i64
  %174 = shl nuw nsw i64 %173, 16
  %175 = or disjoint i64 %174, %169
  br label %176

176:                                              ; preds = %161, %168
  %177 = phi i64 [ 0, %161 ], [ %175, %168 ]
  %178 = phi ptr [ %162, %161 ], [ %171, %168 ]
  %179 = getelementptr inbounds i8, ptr %178, i64 1
  %180 = load i8, ptr %178, align 1, !tbaa !72
  %181 = zext i8 %180 to i64
  %182 = shl nuw nsw i64 %181, 8
  %183 = add nuw nsw i64 %182, %177
  br label %184

184:                                              ; preds = %161, %176
  %185 = phi i64 [ 0, %161 ], [ %183, %176 ]
  %186 = phi ptr [ %162, %161 ], [ %179, %176 ]
  %187 = load i8, ptr %186, align 1, !tbaa !72
  %188 = zext i8 %187 to i64
  %189 = add nuw nsw i64 %185, %188
  br label %190

190:                                              ; preds = %161, %184, %154, %150
  %191 = phi i64 [ %160, %154 ], [ %147, %150 ], [ 0, %161 ], [ %189, %184 ]
  %192 = icmp eq i32 %148, 0
  br i1 %192, label %234, label %193

193:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #9
  %194 = load ptr, ptr %74, align 8, !tbaa !21
  %195 = call i32 %194(ptr noundef %0, i64 noundef %191, ptr noundef nonnull %14) #9
  %196 = load i16, ptr %14, align 2, !tbaa !65
  %197 = zext i16 %196 to i32
  %198 = load i16, ptr %12, align 2, !tbaa !65
  %199 = zext i16 %198 to i32
  %200 = sub nsw i32 %199, %197
  %201 = mul nsw i32 %200, %148
  %202 = sdiv i32 %201, 15
  %203 = trunc i32 %202 to i16
  %204 = add i16 %196, %203
  store i16 %204, ptr %14, align 2, !tbaa !65
  %205 = load i16, ptr %89, align 2, !tbaa !65
  %206 = zext i16 %205 to i32
  %207 = load i16, ptr %90, align 2, !tbaa !65
  %208 = zext i16 %207 to i32
  %209 = sub nsw i32 %208, %206
  %210 = mul nsw i32 %209, %148
  %211 = sdiv i32 %210, 15
  %212 = trunc i32 %211 to i16
  %213 = add i16 %205, %212
  store i16 %213, ptr %89, align 2, !tbaa !65
  %214 = load i16, ptr %91, align 2, !tbaa !65
  %215 = zext i16 %214 to i32
  %216 = load i16, ptr %92, align 2, !tbaa !65
  %217 = zext i16 %216 to i32
  %218 = sub nsw i32 %217, %215
  %219 = mul nsw i32 %218, %148
  %220 = sdiv i32 %219, 15
  %221 = trunc i32 %220 to i16
  %222 = add i16 %214, %221
  store i16 %222, ptr %91, align 2, !tbaa !65
  %223 = load ptr, ptr %93, align 8, !tbaa !20
  %224 = call i64 %223(ptr noundef %0, i16 noundef zeroext %204, i16 noundef zeroext %213, i16 noundef zeroext %222) #9
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %226, label %232

226:                                              ; preds = %193
  %227 = icmp eq i32 %148, 7
  %228 = select i1 %227, i32 8, i32 %148
  %229 = and i32 %228, 8
  %230 = lshr i32 %228, 1
  %231 = or i32 %229, %230
  br label %232

232:                                              ; preds = %193, %226
  %233 = phi i32 [ %231, %226 ], [ %148, %193 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #9
  br i1 %225, label %146, label %234

234:                                              ; preds = %232, %190, %146
  %235 = phi i64 [ %224, %232 ], [ %9, %146 ], [ %191, %190 ]
  switch i32 %94, label %265 [
    i32 0, label %236
    i32 4, label %247
    i32 3, label %251
    i32 2, label %256
    i32 1, label %261
  ]

236:                                              ; preds = %234
  %237 = zext nneg i32 %110 to i64
  %238 = shl i64 %235, %237
  %239 = trunc i64 %238 to i32
  %240 = add i32 %111, %239
  %241 = sub nsw i32 %110, %22
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %265

243:                                              ; preds = %236
  %244 = trunc i32 %240 to i8
  %245 = getelementptr inbounds i8, ptr %112, i64 1
  store i8 %244, ptr %112, align 1, !tbaa !72
  %246 = add nsw i32 %241, 8
  br label %265

247:                                              ; preds = %234
  %248 = lshr i64 %235, 24
  %249 = trunc i64 %248 to i8
  %250 = getelementptr inbounds i8, ptr %112, i64 1
  store i8 %249, ptr %112, align 1, !tbaa !72
  br label %251

251:                                              ; preds = %234, %247
  %252 = phi ptr [ %112, %234 ], [ %250, %247 ]
  %253 = lshr i64 %235, 16
  %254 = trunc i64 %253 to i8
  %255 = getelementptr inbounds i8, ptr %252, i64 1
  store i8 %254, ptr %252, align 1, !tbaa !72
  br label %256

256:                                              ; preds = %234, %251
  %257 = phi ptr [ %112, %234 ], [ %255, %251 ]
  %258 = lshr i64 %235, 8
  %259 = trunc i64 %258 to i8
  %260 = getelementptr inbounds i8, ptr %257, i64 1
  store i8 %259, ptr %257, align 1, !tbaa !72
  br label %261

261:                                              ; preds = %234, %256
  %262 = phi ptr [ %112, %234 ], [ %260, %256 ]
  %263 = trunc i64 %235 to i8
  %264 = getelementptr inbounds i8, ptr %262, i64 1
  store i8 %263, ptr %262, align 1, !tbaa !72
  br label %265

265:                                              ; preds = %236, %243, %261, %234
  %266 = phi ptr [ %112, %234 ], [ %264, %261 ], [ %245, %243 ], [ %112, %236 ]
  %267 = phi i32 [ %111, %234 ], [ %111, %261 ], [ 0, %243 ], [ %240, %236 ]
  %268 = phi i32 [ %110, %234 ], [ %110, %261 ], [ %246, %243 ], [ %241, %236 ]
  %269 = add nsw i32 %113, 1
  %270 = add nsw i64 %109, 1
  %271 = icmp slt i32 %269, %82
  br i1 %271, label %108, label %272, !llvm.loop !85

272:                                              ; preds = %265
  %273 = trunc i64 %270 to i32
  br label %274

274:                                              ; preds = %272, %107
  %275 = phi i32 [ %43, %107 ], [ %273, %272 ]
  %276 = phi ptr [ %69, %107 ], [ %266, %272 ]
  %277 = phi i32 [ 0, %107 ], [ %267, %272 ]
  %278 = phi i32 [ %80, %107 ], [ %268, %272 ]
  %279 = icmp sgt i32 %275, %43
  br i1 %279, label %280, label %291

280:                                              ; preds = %274
  %281 = icmp eq i32 %278, %80
  br i1 %281, label %284, label %282

282:                                              ; preds = %280
  %283 = trunc i32 %277 to i8
  store i8 %283, ptr %276, align 1, !tbaa !72
  br label %284

284:                                              ; preds = %282, %280
  %285 = load ptr, ptr %95, align 8, !tbaa !24
  %286 = sub nsw i32 %275, %43
  %287 = call i32 %285(ptr noundef %0, ptr noundef %69, i32 noundef 0, i32 noundef %3, i64 noundef 0, i32 noundef %43, i32 noundef %102, i32 noundef %286, i32 noundef 1) #9
  %288 = icmp slt i32 %287, 0
  %289 = select i1 %288, i32 %287, i32 %101
  %290 = lshr i32 %287, 31
  br label %291

291:                                              ; preds = %284, %274, %100
  %292 = phi i32 [ 3, %100 ], [ 0, %274 ], [ %290, %284 ]
  %293 = phi i32 [ %101, %100 ], [ %101, %274 ], [ %289, %284 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  switch i32 %292, label %302 [
    i32 0, label %294
    i32 3, label %298
  ]

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, ptr %103, i64 %96
  %296 = add nsw i32 %102, 1
  %297 = icmp slt i32 %296, %77
  br i1 %297, label %100, label %298, !llvm.loop !86

298:                                              ; preds = %291, %294, %73, %61
  %299 = phi i32 [ -25, %61 ], [ 0, %73 ], [ %105, %294 ], [ %105, %291 ]
  %300 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !87
  call void %300(ptr noundef nonnull @gs_memory_default, ptr noundef %69, ptr noundef nonnull @.str.1) #9
  %301 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !87
  call void %301(ptr noundef nonnull @gs_memory_default, ptr noundef %67, ptr noundef nonnull @.str) #9
  br label %302

302:                                              ; preds = %291, %39, %298
  %303 = phi i32 [ %299, %298 ], [ 0, %39 ], [ %293, %291 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #9
  br label %304

304:                                              ; preds = %302, %16
  %305 = phi i32 [ %19, %16 ], [ %303, %302 ]
  ret i32 %305
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_get_band(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2) #0 {
  ret i32 0
}

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #1 {
  %14 = alloca %struct.gx_device_clip_s, align 8
  %15 = alloca [2 x i64], align 16
  %16 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #9
  %17 = load ptr, ptr %9, align 8, !tbaa !73
  %18 = icmp eq ptr %17, @gx_dc_procs_pure
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  store i64 -1, ptr %15, align 16, !tbaa !64
  %20 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1
  br label %29

21:                                               ; preds = %13
  %22 = icmp eq ptr %17, @gx_dc_procs_ht_binary
  br i1 %22, label %23, label %202

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1, i32 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !72
  store i64 %27, ptr %15, align 16, !tbaa !64
  %28 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1, i32 0, i32 1, i64 1
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi ptr [ %28, %23 ], [ %20, %19 ]
  %31 = phi ptr [ %25, %23 ], [ null, %19 ]
  %32 = load i64, ptr %30, align 8, !tbaa !72
  %33 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  store i64 %32, ptr %33, align 8, !tbaa !64
  %34 = icmp eq ptr %12, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  call void @gx_make_clip_path_device(ptr noundef nonnull %14, ptr noundef nonnull %12) #9
  %36 = getelementptr inbounds %struct.gx_device_clip_s, ptr %14, i64 0, i32 22
  store ptr %0, ptr %36, align 8, !tbaa !88
  %37 = getelementptr inbounds %struct.gx_device_s, ptr %14, i64 0, i32 21
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = call i32 %38(ptr noundef nonnull %14) #9
  br label %40

40:                                               ; preds = %29, %35
  %41 = phi ptr [ %14, %35 ], [ %0, %29 ]
  %42 = icmp sgt i32 %10, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.gx_device_s, ptr %41, i64 0, i32 21, i32 21
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  %47 = load i64, ptr %46, align 8, !tbaa !64
  %48 = call i32 %45(ptr noundef %41, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %47, i32 noundef %10) #9
  br label %202

49:                                               ; preds = %40
  %50 = icmp eq i32 %11, 252
  br i1 %50, label %71, label %51

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #9
  %52 = getelementptr inbounds %struct.gx_device_s, ptr %41, i64 0, i32 21, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !20
  %54 = call i64 %53(ptr noundef %41, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #9
  store i64 %54, ptr %16, align 16, !tbaa !64
  %55 = load ptr, ptr %52, align 8, !tbaa !20
  %56 = call i64 %55(ptr noundef %41, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #9
  %57 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 %56, ptr %57, align 8, !tbaa !64
  %58 = icmp eq ptr %31, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  %61 = load i64, ptr %60, align 8, !tbaa !64
  store i64 %61, ptr %15, align 16, !tbaa !64
  br label %62

62:                                               ; preds = %59, %51
  %63 = getelementptr inbounds %struct.gx_device_s, ptr %41, i64 0, i32 21, i32 35
  %64 = load ptr, ptr %63, align 8, !tbaa !50
  %65 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !92
  %67 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 2, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !93
  %69 = or i32 %11, 256
  %70 = call i32 %64(ptr noundef %41, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull %16, ptr noundef %31, ptr noundef nonnull %15, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %66, i32 noundef %68, i32 noundef %69) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #9
  br label %202

71:                                               ; preds = %49
  %72 = icmp eq ptr %31, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.gx_device_s, ptr %41, i64 0, i32 21, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !23
  %76 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  %77 = load i64, ptr %76, align 8, !tbaa !64
  %78 = call i32 %75(ptr noundef %41, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef -1, i64 noundef %77) #9
  br label %202

79:                                               ; preds = %71
  %80 = or i32 %6, %5
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = call i32 @llvm.smin.i32(i32 %5, i32 0)
  %84 = add nsw i32 %83, %7
  %85 = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %86 = call i32 @llvm.smin.i32(i32 %5, i32 0)
  %87 = sub nsw i32 %2, %86
  %88 = icmp slt i32 %6, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = add nsw i32 %8, %6
  %91 = mul nsw i32 %6, %3
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, ptr %1, i64 %93
  br label %95

95:                                               ; preds = %82, %89, %79
  %96 = phi i32 [ %90, %89 ], [ %8, %82 ], [ %8, %79 ]
  %97 = phi i32 [ %84, %89 ], [ %84, %82 ], [ %7, %79 ]
  %98 = phi i32 [ 0, %89 ], [ %6, %82 ], [ %6, %79 ]
  %99 = phi i32 [ %85, %89 ], [ %85, %82 ], [ %5, %79 ]
  %100 = phi i32 [ %87, %89 ], [ %87, %82 ], [ %2, %79 ]
  %101 = phi ptr [ %94, %89 ], [ %1, %82 ], [ %1, %79 ]
  %102 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %103 = load i32, ptr %102, align 8, !tbaa !70
  %104 = sub nsw i32 %103, %97
  %105 = icmp sgt i32 %99, %104
  %106 = sub nsw i32 %103, %99
  %107 = select i1 %105, i32 %106, i32 %97
  %108 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %109 = load i32, ptr %108, align 4, !tbaa !60
  %110 = sub nsw i32 %109, %96
  %111 = icmp sgt i32 %98, %110
  %112 = sub nsw i32 %109, %98
  %113 = select i1 %111, i32 %112, i32 %96
  %114 = icmp slt i32 %107, 1
  %115 = icmp slt i32 %113, 1
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %202, label %117

117:                                              ; preds = %95
  %118 = getelementptr inbounds %struct.gx_device_s, ptr %41, i64 0, i32 21, i32 34
  %119 = load ptr, ptr %118, align 8, !tbaa !49
  %120 = and i32 %100, 7
  %121 = add nuw nsw i32 %107, %120
  %122 = sub i32 %99, %120
  %123 = getelementptr inbounds [2 x i64], ptr %15, i64 0, i64 1
  %124 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 2
  %125 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 2, i32 1
  %126 = sext i32 %3 to i64
  br label %127

127:                                              ; preds = %117, %198
  %128 = phi i32 [ undef, %117 ], [ %192, %198 ]
  %129 = phi i32 [ 0, %117 ], [ %200, %198 ]
  %130 = phi ptr [ %101, %117 ], [ %199, %198 ]
  %131 = add nsw i32 %129, %98
  br label %132

132:                                              ; preds = %127, %193
  %133 = phi i32 [ %128, %127 ], [ %192, %193 ]
  %134 = phi i32 [ %120, %127 ], [ %191, %193 ]
  %135 = ashr i32 %134, 3
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %130, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !72
  %139 = and i32 %134, 7
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !38
  %143 = xor i8 %138, -1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds i8, ptr %142, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !72
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %132
  %149 = add i8 %146, 7
  %150 = and i8 %149, 7
  %151 = add nuw nsw i8 %150, 1
  %152 = zext nneg i8 %151 to i32
  %153 = add i32 %134, %152
  br label %189, !llvm.loop !94

154:                                              ; preds = %132, %175
  %155 = phi i32 [ %173, %175 ], [ %134, %132 ]
  %156 = ashr i32 %155, 3
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %130, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !72
  %160 = and i32 %155, 7
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [8 x ptr], ptr @byte_bit_run_length, i64 0, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !38
  %164 = zext i8 %159 to i64
  %165 = getelementptr inbounds i8, ptr %163, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !72
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %154
  %169 = add i8 %166, 7
  %170 = and i8 %169, 7
  %171 = add nuw nsw i8 %170, 1
  %172 = zext nneg i8 %171 to i32
  %173 = add i32 %155, %172
  %174 = icmp slt i32 %173, %121
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = icmp ult i8 %166, 8
  br i1 %176, label %177, label %154, !llvm.loop !95

177:                                              ; preds = %168, %175, %154
  %178 = phi i32 [ %173, %175 ], [ %155, %154 ], [ %121, %168 ]
  %179 = add i32 %122, %134
  %180 = sub nsw i32 %178, %134
  %181 = load i64, ptr %15, align 16, !tbaa !64
  %182 = load i64, ptr %123, align 8, !tbaa !64
  %183 = load i32, ptr %124, align 8, !tbaa !92
  %184 = load i32, ptr %125, align 4, !tbaa !93
  %185 = call i32 %119(ptr noundef %41, ptr noundef nonnull %31, i32 noundef %179, i32 noundef %131, i32 noundef %180, i32 noundef 1, i64 noundef %181, i64 noundef %182, i32 noundef %183, i32 noundef %184) #9
  %186 = icmp slt i32 %185, 0
  %187 = lshr i32 %185, 31
  %188 = select i1 %186, i32 %185, i32 %133
  br label %189

189:                                              ; preds = %177, %148
  %190 = phi i32 [ 6, %148 ], [ %187, %177 ]
  %191 = phi i32 [ %153, %148 ], [ %178, %177 ]
  %192 = phi i32 [ %133, %148 ], [ %188, %177 ]
  switch i32 %190, label %195 [
    i32 0, label %193
    i32 6, label %193
  ]

193:                                              ; preds = %189, %189
  %194 = icmp slt i32 %191, %121
  br i1 %194, label %132, label %195, !llvm.loop !94

195:                                              ; preds = %189, %193
  %196 = phi i32 [ %190, %189 ], [ 0, %193 ]
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = getelementptr inbounds i8, ptr %130, i64 %126
  %200 = add nuw nsw i32 %129, 1
  %201 = icmp slt i32 %200, %113
  br i1 %201, label %127, label %202, !llvm.loop !96

202:                                              ; preds = %195, %198, %95, %21, %73, %62, %43
  %203 = phi i32 [ %48, %43 ], [ %70, %62 ], [ %78, %73 ], [ -1, %21 ], [ 0, %95 ], [ %192, %195 ], [ 0, %198 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %14) #9
  ret i32 %203
}

declare i32 @gx_default_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @gx_default_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @gx_default_draw_thin_line(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_strip_tile_rectangle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #1 {
  %11 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !97
  %13 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !98
  %15 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !99
  %17 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 4
  %18 = load i16, ptr %17, align 8, !tbaa !100
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 5
  %21 = load i16, ptr %20, align 2, !tbaa !101
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 7
  %24 = load i16, ptr %23, align 2, !tbaa !69
  %25 = zext i16 %24 to i32
  %26 = icmp eq i16 %24, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %10
  %28 = add nsw i32 %9, %3
  %29 = sdiv i32 %28, %22
  %30 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 6
  %31 = load i16, ptr %30, align 4, !tbaa !66
  %32 = zext i16 %31 to i32
  %33 = mul nsw i32 %29, %32
  %34 = add nsw i32 %33, %8
  br label %35

35:                                               ; preds = %10, %27
  %36 = phi i32 [ %34, %27 ], [ %8, %10 ]
  %37 = tail call i32 @llvm.ctpop.i32(i32 %19), !range !102
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = add nsw i32 %19, -1
  %41 = add nsw i32 %36, %2
  %42 = and i32 %41, %40
  br label %46

43:                                               ; preds = %35
  %44 = add nsw i32 %36, %2
  %45 = srem i32 %44, %19
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %42, %39 ], [ %45, %43 ]
  %48 = tail call i32 @llvm.ctpop.i32(i32 %22), !range !102
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = add nsw i32 %22, -1
  %52 = add nsw i32 %9, %3
  %53 = and i32 %51, %52
  br label %57

54:                                               ; preds = %46
  %55 = add nsw i32 %9, %3
  %56 = srem i32 %55, %22
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i32 [ %53, %50 ], [ %56, %54 ]
  %59 = sub nsw i32 %12, %47
  %60 = sub nsw i32 %14, %58
  %61 = load ptr, ptr %1, align 8, !tbaa !103
  %62 = mul nsw i32 %58, %16
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  %65 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !22
  %67 = icmp ne ptr %66, @gx_default_tile_rectangle
  %68 = and i1 %26, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  store ptr @gx_default_tile_rectangle, ptr %65, align 8, !tbaa !22
  %70 = tail call i32 %66(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  store ptr %66, ptr %65, align 8, !tbaa !22
  br label %246

71:                                               ; preds = %57
  %72 = and i64 %7, %6
  %73 = icmp eq i64 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !24
  br label %80

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !23
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi ptr [ %76, %74 ], [ null, %77 ]
  %82 = phi ptr [ undef, %74 ], [ %79, %77 ]
  %83 = icmp slt i32 %60, %5
  br i1 %83, label %137, label %84

84:                                               ; preds = %80
  %85 = icmp slt i32 %59, %4
  br i1 %85, label %95, label %86

86:                                               ; preds = %84
  %87 = icmp eq ptr %81, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = tail call i32 %81(ptr noundef %0, ptr noundef %64, i32 noundef %47, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  br label %92

90:                                               ; preds = %86
  %91 = tail call i32 %82(ptr noundef %0, ptr noundef %64, i32 noundef %47, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7) #9
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %246, label %245

95:                                               ; preds = %84
  %96 = add nsw i32 %4, %2
  %97 = sub nsw i32 %96, %12
  %98 = add nsw i32 %59, %2
  %99 = icmp eq ptr %81, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = tail call i32 %81(ptr noundef %0, ptr noundef %64, i32 noundef %47, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %59, i32 noundef %5) #9
  br label %104

102:                                              ; preds = %95
  %103 = tail call i32 %82(ptr noundef %0, ptr noundef %64, i32 noundef %47, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %59, i32 noundef %5, i64 noundef %6, i64 noundef %7) #9
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %134, label %107

107:                                              ; preds = %104
  %108 = icmp sgt i32 %98, %97
  br i1 %108, label %121, label %109

109:                                              ; preds = %107, %118
  %110 = phi i32 [ %119, %118 ], [ %98, %107 ]
  br i1 %99, label %113, label %111

111:                                              ; preds = %109
  %112 = tail call i32 %81(ptr noundef %0, ptr noundef %64, i32 noundef 0, i32 noundef %16, i64 noundef 0, i32 noundef %110, i32 noundef %3, i32 noundef %12, i32 noundef %5) #9
  br label %115

113:                                              ; preds = %109
  %114 = tail call i32 %82(ptr noundef %0, ptr noundef %64, i32 noundef 0, i32 noundef %16, i64 noundef 0, i32 noundef %110, i32 noundef %3, i32 noundef %12, i32 noundef %5, i64 noundef %6, i64 noundef %7) #9
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %115
  %119 = add nsw i32 %110, %12
  %120 = icmp sgt i32 %119, %97
  br i1 %120, label %121, label %109, !llvm.loop !104

121:                                              ; preds = %118, %107
  %122 = phi i32 [ %98, %107 ], [ %119, %118 ]
  %123 = icmp slt i32 %122, %96
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = sub nsw i32 %96, %122
  br i1 %99, label %128, label %126

126:                                              ; preds = %124
  %127 = tail call i32 %81(ptr noundef %0, ptr noundef %64, i32 noundef 0, i32 noundef %16, i64 noundef 0, i32 noundef %122, i32 noundef %3, i32 noundef %125, i32 noundef %5) #9
  br label %130

128:                                              ; preds = %124
  %129 = tail call i32 %82(ptr noundef %0, ptr noundef %64, i32 noundef 0, i32 noundef %16, i64 noundef 0, i32 noundef %122, i32 noundef %3, i32 noundef %125, i32 noundef %5, i64 noundef %6, i64 noundef %7) #9
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130, %121
  br label %134

134:                                              ; preds = %115, %130, %104, %133
  %135 = phi i1 [ true, %133 ], [ false, %104 ], [ false, %130 ], [ false, %115 ]
  %136 = phi i32 [ undef, %133 ], [ %105, %104 ], [ %131, %130 ], [ %116, %115 ]
  br i1 %135, label %245, label %246

137:                                              ; preds = %80
  %138 = icmp sge i32 %59, %4
  %139 = and i1 %26, %138
  br i1 %139, label %140, label %172

140:                                              ; preds = %137
  %141 = add nsw i32 %5, %3
  %142 = sub nsw i32 %141, %14
  %143 = add nsw i32 %60, %3
  %144 = icmp eq ptr %81, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %140
  %146 = tail call i32 %81(ptr noundef %0, ptr noundef %64, i32 noundef %47, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %60) #9
  br label %149

147:                                              ; preds = %140
  %148 = tail call i32 %82(ptr noundef %0, ptr noundef %64, i32 noundef %47, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %60, i64 noundef %6, i64 noundef %7) #9
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %169, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %1, align 8, !tbaa !103
  br label %154

154:                                              ; preds = %163, %152
  %155 = phi i32 [ %143, %152 ], [ %166, %163 ]
  %156 = icmp sgt i32 %155, %142
  %157 = sub nsw i32 %141, %155
  %158 = select i1 %156, i32 %157, i32 %14
  br i1 %144, label %161, label %159

159:                                              ; preds = %154
  %160 = tail call i32 %81(ptr noundef %0, ptr noundef %153, i32 noundef %47, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %155, i32 noundef %4, i32 noundef %158) #9
  br label %163

161:                                              ; preds = %154
  %162 = tail call i32 %82(ptr noundef %0, ptr noundef %153, i32 noundef %47, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %155, i32 noundef %4, i32 noundef %158, i64 noundef %6, i64 noundef %7) #9
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = icmp sgt i32 %164, -1
  %166 = add nsw i32 %158, %155
  %167 = icmp slt i32 %166, %141
  %168 = select i1 %165, i1 %167, i1 false
  br i1 %168, label %154, label %169, !llvm.loop !105

169:                                              ; preds = %163, %149
  %170 = phi i1 [ false, %149 ], [ %165, %163 ]
  %171 = phi i32 [ %150, %149 ], [ %164, %163 ]
  br i1 %170, label %245, label %246

172:                                              ; preds = %137
  %173 = add nsw i32 %4, %2
  %174 = add nsw i32 %5, %3
  %175 = sub nsw i32 %173, %12
  %176 = sub nsw i32 %174, %14
  %177 = icmp eq ptr %81, null
  %178 = icmp eq ptr %81, null
  br label %179

179:                                              ; preds = %232, %172
  %180 = phi ptr [ %64, %172 ], [ %241, %232 ]
  %181 = phi i32 [ %60, %172 ], [ %235, %232 ]
  %182 = phi i32 [ %59, %172 ], [ %240, %232 ]
  %183 = phi i32 [ %47, %172 ], [ %239, %232 ]
  %184 = phi i32 [ %3, %172 ], [ %230, %232 ]
  %185 = icmp slt i32 %182, %4
  br i1 %185, label %194, label %186

186:                                              ; preds = %179
  br i1 %177, label %189, label %187

187:                                              ; preds = %186
  %188 = tail call i32 %81(ptr noundef %0, ptr noundef %180, i32 noundef %183, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %184, i32 noundef %4, i32 noundef %181) #9
  br label %191

189:                                              ; preds = %186
  %190 = tail call i32 %82(ptr noundef %0, ptr noundef %180, i32 noundef %183, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %184, i32 noundef %4, i32 noundef %181, i64 noundef %6, i64 noundef %7) #9
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %242, label %229

194:                                              ; preds = %179
  br i1 %178, label %197, label %195

195:                                              ; preds = %194
  %196 = tail call i32 %81(ptr noundef %0, ptr noundef %180, i32 noundef %183, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %184, i32 noundef %182, i32 noundef %181) #9
  br label %199

197:                                              ; preds = %194
  %198 = tail call i32 %82(ptr noundef %0, ptr noundef %180, i32 noundef %183, i32 noundef %16, i64 noundef 0, i32 noundef %2, i32 noundef %184, i32 noundef %182, i32 noundef %181, i64 noundef %6, i64 noundef %7) #9
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %242, label %202

202:                                              ; preds = %199
  %203 = add nsw i32 %182, %2
  %204 = icmp sgt i32 %203, %175
  br i1 %204, label %217, label %205

205:                                              ; preds = %202, %214
  %206 = phi i32 [ %215, %214 ], [ %203, %202 ]
  br i1 %178, label %209, label %207

207:                                              ; preds = %205
  %208 = tail call i32 %81(ptr noundef %0, ptr noundef %180, i32 noundef 0, i32 noundef %16, i64 noundef 0, i32 noundef %206, i32 noundef %184, i32 noundef %12, i32 noundef %181) #9
  br label %211

209:                                              ; preds = %205
  %210 = tail call i32 %82(ptr noundef %0, ptr noundef %180, i32 noundef 0, i32 noundef %16, i64 noundef 0, i32 noundef %206, i32 noundef %184, i32 noundef %12, i32 noundef %181, i64 noundef %6, i64 noundef %7) #9
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %242, label %214

214:                                              ; preds = %211
  %215 = add nsw i32 %206, %12
  %216 = icmp sgt i32 %215, %175
  br i1 %216, label %217, label %205, !llvm.loop !106

217:                                              ; preds = %214, %202
  %218 = phi i32 [ %203, %202 ], [ %215, %214 ]
  %219 = icmp slt i32 %218, %173
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = sub nsw i32 %173, %218
  br i1 %178, label %224, label %222

222:                                              ; preds = %220
  %223 = tail call i32 %81(ptr noundef %0, ptr noundef %180, i32 noundef 0, i32 noundef %16, i64 noundef 0, i32 noundef %218, i32 noundef %184, i32 noundef %221, i32 noundef %181) #9
  br label %226

224:                                              ; preds = %220
  %225 = tail call i32 %82(ptr noundef %0, ptr noundef %180, i32 noundef 0, i32 noundef %16, i64 noundef 0, i32 noundef %218, i32 noundef %184, i32 noundef %221, i32 noundef %181, i64 noundef %6, i64 noundef %7) #9
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i32 [ %223, %222 ], [ %225, %224 ]
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %242, label %229

229:                                              ; preds = %217, %226, %191
  %230 = add nsw i32 %184, %181
  %231 = icmp slt i32 %230, %174
  br i1 %231, label %232, label %242

232:                                              ; preds = %229
  %233 = icmp sgt i32 %230, %176
  %234 = sub nsw i32 %174, %230
  %235 = select i1 %233, i32 %234, i32 %14
  %236 = add nsw i32 %183, %25
  %237 = icmp slt i32 %236, %19
  %238 = select i1 %237, i32 0, i32 %19
  %239 = sub nsw i32 %236, %238
  %240 = sub nsw i32 %12, %239
  %241 = load ptr, ptr %1, align 8, !tbaa !103
  br label %179, !llvm.loop !107

242:                                              ; preds = %229, %226, %199, %191, %211
  %243 = phi i1 [ false, %211 ], [ false, %191 ], [ false, %199 ], [ false, %226 ], [ true, %229 ]
  %244 = phi i32 [ %212, %211 ], [ %192, %191 ], [ %200, %199 ], [ %227, %226 ], [ undef, %229 ]
  br i1 %243, label %245, label %246

245:                                              ; preds = %169, %242, %92, %134
  br label %246

246:                                              ; preds = %92, %134, %169, %242, %245, %69
  %247 = phi i32 [ %70, %69 ], [ 0, %245 ], [ %136, %134 ], [ %171, %169 ], [ %244, %242 ], [ %93, %92 ]
  ret i32 %247
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_default_get_clipping_box(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 12
  %7 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1
  store i64 %6, ptr %7, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !60
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 12
  %12 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1, i32 1
  store i64 %11, ptr %12, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_upright_get_initial_matrix(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %4 = load float, ptr %3, align 4, !tbaa !52
  %5 = fdiv float %4, 7.200000e+01
  store float %5, ptr %1, align 4, !tbaa !54
  %6 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  store float 0.000000e+00, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !57
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !52
  %10 = fdiv float %9, 7.200000e+01
  %11 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  store float %10, ptr %11, align 4, !tbaa !58
  %12 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  store float 0.000000e+00, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  store float 0.000000e+00, ptr %13, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare i32 @gx_dc_default_fill_masked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @gx_page_device_get_page_device(ptr noundef readnone returned %0) local_unnamed_addr #0 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_no_copy_alpha(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  ret i32 -1
}

declare i32 @gx_device_raster(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #1 {
  %16 = load ptr, ptr @gx_default_copy_rop_proc, align 8, !tbaa !38
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  ret i32 %17
}

declare void @gx_make_clip_path_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_strip_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #1 {
  %16 = load ptr, ptr @gx_default_strip_copy_rop_proc, align 8, !tbaa !38
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_get_largest_clipping_box(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  store i64 -9223372036854775808, ptr %1, align 8, !tbaa !112
  %3 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  store i64 -9223372036854775808, ptr %3, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1
  store i64 9223372036854775807, ptr %4, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1, i32 1
  store i64 9223372036854775807, ptr %5, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_default_make_buffer_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 7, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !78
  %7 = tail call ptr @gdev_mem_device_for_bits(i32 noundef %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %1, %0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21
  %13 = getelementptr inbounds %struct.gx_device_memory_s, ptr %7, i64 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %12, ptr noundef nonnull align 8 dereferenceable(296) %13, i64 296, i1 false), !tbaa.struct !114
  br label %17

14:                                               ; preds = %9
  %15 = icmp ne i32 %3, 0
  %16 = zext i1 %15 to i32
  tail call void @gs_make_mem_device(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, i32 noundef %16, ptr noundef %1) #9
  br label %17

17:                                               ; preds = %11, %14, %4
  %18 = phi i32 [ -15, %4 ], [ 0, %14 ], [ 0, %11 ]
  ret i32 %18
}

declare ptr @gdev_mem_device_for_bits(i32 noundef) local_unnamed_addr #2

declare void @gs_make_mem_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_install(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_begin_page(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_default_end_page(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %1, 2
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_copy_mono_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) local_unnamed_addr #1 {
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = ptrtoint ptr %1 to i64
  %15 = trunc i64 %14 to i32
  %16 = and i32 %3, 7
  %17 = and i64 %14, 7
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = shl i32 %15, 3
  %21 = and i32 %20, 56
  %22 = add i32 %21, %2
  %23 = icmp eq i32 %16, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %11
  %25 = icmp sgt i32 %8, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %24
  %27 = and i32 %3, -8
  %28 = sext i32 %27 to i64
  %29 = shl nuw nsw i32 %16, 3
  br label %32

30:                                               ; preds = %11
  %31 = tail call i32 %13(ptr noundef %0, ptr noundef %19, i32 noundef %22, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #9
  br label %44

32:                                               ; preds = %26, %32
  %33 = phi i32 [ 0, %26 ], [ %38, %32 ]
  %34 = phi i32 [ %22, %26 ], [ %40, %32 ]
  %35 = phi ptr [ %19, %26 ], [ %39, %32 ]
  %36 = add nsw i32 %33, %6
  %37 = tail call i32 %13(ptr noundef %0, ptr noundef %35, i32 noundef %34, i32 noundef %3, i64 noundef 0, i32 noundef %5, i32 noundef %36, i32 noundef %7, i32 noundef 1, i64 noundef %9, i64 noundef %10) #9
  %38 = add nuw nsw i32 %33, 1
  %39 = getelementptr inbounds i8, ptr %35, i64 %28
  %40 = add nsw i32 %34, %29
  %41 = icmp slt i32 %38, %8
  %42 = icmp sgt i32 %37, -1
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %32, label %44, !llvm.loop !115

44:                                               ; preds = %32, %24, %30
  %45 = phi i32 [ %31, %30 ], [ 0, %24 ], [ %37, %32 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_copy_color_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !78
  %14 = ptrtoint ptr %1 to i64
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 7
  %17 = and i32 %3, 7
  %18 = icmp eq i32 %13, 24
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = urem i32 %16, 3
  %21 = shl nuw nsw i32 %20, 3
  %22 = or disjoint i32 %21, %16
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi i32 [ %22, %19 ], [ %16, %9 ]
  %25 = zext nneg i32 %24 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = shl nuw nsw i32 %24, 3
  %29 = udiv i32 %28, %13
  %30 = add i32 %29, %2
  %31 = icmp eq i32 %17, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = tail call i32 %11(ptr noundef %0, ptr noundef %27, i32 noundef %30, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9
  br label %53

34:                                               ; preds = %23
  %35 = shl nuw nsw i32 %17, 3
  %36 = sdiv i32 %35, %13
  %37 = icmp sgt i32 %8, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = and i32 %3, -8
  %40 = sext i32 %39 to i64
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i32 [ 0, %38 ], [ %47, %41 ]
  %43 = phi i32 [ %30, %38 ], [ %49, %41 ]
  %44 = phi ptr [ %27, %38 ], [ %48, %41 ]
  %45 = add nsw i32 %42, %6
  %46 = tail call i32 %11(ptr noundef %0, ptr noundef %44, i32 noundef %43, i32 noundef %3, i64 noundef 0, i32 noundef %5, i32 noundef %45, i32 noundef %7, i32 noundef 1) #9
  %47 = add nuw nsw i32 %42, 1
  %48 = getelementptr inbounds i8, ptr %44, i64 %40
  %49 = add nsw i32 %43, %36
  %50 = icmp slt i32 %47, %8
  %51 = icmp sgt i32 %46, -1
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %41, label %53, !llvm.loop !116

53:                                               ; preds = %41, %34, %32
  %54 = phi i32 [ %33, %32 ], [ 0, %34 ], [ %46, %41 ]
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_copy_alpha_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) local_unnamed_addr #1 {
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = ptrtoint ptr %1 to i64
  %15 = trunc i64 %14 to i32
  %16 = and i32 %3, 7
  %17 = and i64 %14, 7
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = shl i32 %15, 3
  %21 = and i32 %20, 56
  %22 = udiv i32 %21, %10
  %23 = add i32 %22, %2
  %24 = icmp eq i32 %16, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = tail call i32 %13(ptr noundef %0, ptr noundef %19, i32 noundef %23, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) #9
  br label %46

27:                                               ; preds = %11
  %28 = shl nuw nsw i32 %16, 3
  %29 = sdiv i32 %28, %10
  %30 = icmp sgt i32 %8, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = and i32 %3, -8
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i32 [ 0, %31 ], [ %40, %34 ]
  %36 = phi i32 [ %23, %31 ], [ %42, %34 ]
  %37 = phi ptr [ %19, %31 ], [ %41, %34 ]
  %38 = add nsw i32 %35, %6
  %39 = tail call i32 %13(ptr noundef %0, ptr noundef %37, i32 noundef %36, i32 noundef %3, i64 noundef 0, i32 noundef %5, i32 noundef %38, i32 noundef %7, i32 noundef 1, i64 noundef %9, i32 noundef %10) #9
  %40 = add nuw nsw i32 %35, 1
  %41 = getelementptr inbounds i8, ptr %37, i64 %33
  %42 = add nsw i32 %36, %29
  %43 = icmp slt i32 %40, %8
  %44 = icmp sgt i32 %39, -1
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %34, label %46, !llvm.loop !117

46:                                               ; preds = %34, %27, %25
  %47 = phi i32 [ %26, %25 ], [ 0, %27 ], [ %39, %34 ]
  ret i32 %47
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 192}
!6 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!6, !10, i64 200}
!17 = !{!6, !10, i64 208}
!18 = !{!6, !10, i64 216}
!19 = !{!6, !10, i64 224}
!20 = !{!6, !10, i64 232}
!21 = !{!6, !10, i64 240}
!22 = !{!6, !10, i64 256}
!23 = !{!6, !10, i64 264}
!24 = !{!6, !10, i64 272}
!25 = !{!6, !10, i64 280}
!26 = !{!6, !10, i64 288}
!27 = !{!6, !10, i64 296}
!28 = !{!6, !10, i64 304}
!29 = !{!6, !10, i64 312}
!30 = !{!6, !10, i64 320}
!31 = !{!6, !10, i64 328}
!32 = !{!6, !10, i64 336}
!33 = !{!6, !10, i64 344}
!34 = !{!6, !10, i64 352}
!35 = !{!6, !10, i64 360}
!36 = !{!6, !10, i64 368}
!37 = !{!6, !10, i64 376}
!38 = !{!10, !10, i64 0}
!39 = !{!6, !10, i64 384}
!40 = !{!6, !10, i64 392}
!41 = !{!6, !10, i64 400}
!42 = !{!6, !10, i64 408}
!43 = !{!6, !10, i64 416}
!44 = !{!6, !10, i64 424}
!45 = !{!6, !10, i64 432}
!46 = !{!6, !10, i64 440}
!47 = !{!6, !10, i64 448}
!48 = !{!6, !10, i64 456}
!49 = !{!6, !10, i64 464}
!50 = !{!6, !10, i64 472}
!51 = !{!6, !10, i64 480}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !8, i64 0}
!54 = !{!55, !53, i64 0}
!55 = !{!"gs_matrix_s", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20}
!56 = !{!55, !53, i64 4}
!57 = !{!55, !53, i64 8}
!58 = !{!55, !53, i64 12}
!59 = !{!55, !53, i64 16}
!60 = !{!6, !7, i64 68}
!61 = !{!55, !53, i64 20}
!62 = !{i64 0, i64 8, !38, i64 8, i64 4, !63, i64 12, i64 4, !63, i64 16, i64 4, !63, i64 24, i64 8, !64, i64 32, i64 2, !65, i64 34, i64 2, !65}
!63 = !{!7, !7, i64 0}
!64 = !{!13, !13, i64 0}
!65 = !{!12, !12, i64 0}
!66 = !{!67, !12, i64 36}
!67 = !{!"gx_strip_bitmap_s", !10, i64 0, !7, i64 8, !68, i64 12, !13, i64 24, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38}
!68 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!69 = !{!67, !12, i64 38}
!70 = !{!6, !7, i64 64}
!71 = !{!6, !10, i64 248}
!72 = !{!8, !8, i64 0}
!73 = !{!74, !10, i64 0}
!74 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !68, i64 48, !75, i64 56}
!75 = !{!"_mask", !76, i64 0, !13, i64 24, !10, i64 32}
!76 = !{!"gs_client_color_s", !77, i64 0, !10, i64 16}
!77 = !{!"gs_paint_color_s", !8, i64 0}
!78 = !{!6, !7, i64 52}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !80}
!82 = !{!83, !10, i64 0}
!83 = !{!"gs_memory_s", !84, i64 0}
!84 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !80}
!87 = !{!83, !10, i64 88}
!88 = !{!89, !10, i64 488}
!89 = !{!"gx_device_clip_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !90, i64 496, !10, i64 560, !68, i64 568}
!90 = !{!"gx_clip_list_s", !91, i64 0, !10, i64 40, !10, i64 48, !7, i64 56, !7, i64 60}
!91 = !{!"gx_clip_rect_s", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!92 = !{!74, !7, i64 48}
!93 = !{!74, !7, i64 52}
!94 = distinct !{!94, !80}
!95 = distinct !{!95, !80}
!96 = distinct !{!96, !80}
!97 = !{!67, !7, i64 12}
!98 = !{!67, !7, i64 16}
!99 = !{!67, !7, i64 8}
!100 = !{!67, !12, i64 32}
!101 = !{!67, !12, i64 34}
!102 = !{i32 0, i32 17}
!103 = !{!67, !10, i64 0}
!104 = distinct !{!104, !80}
!105 = distinct !{!105, !80}
!106 = distinct !{!106, !80}
!107 = distinct !{!107, !80}
!108 = !{!109, !13, i64 16}
!109 = !{!"gs_fixed_rect_s", !110, i64 0, !110, i64 16}
!110 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!111 = !{!109, !13, i64 24}
!112 = !{!109, !13, i64 0}
!113 = !{!109, !13, i64 8}
!114 = !{i64 0, i64 8, !38, i64 8, i64 8, !38, i64 16, i64 8, !38, i64 24, i64 8, !38, i64 32, i64 8, !38, i64 40, i64 8, !38, i64 48, i64 8, !38, i64 56, i64 8, !38, i64 64, i64 8, !38, i64 72, i64 8, !38, i64 80, i64 8, !38, i64 88, i64 8, !38, i64 96, i64 8, !38, i64 104, i64 8, !38, i64 112, i64 8, !38, i64 120, i64 8, !38, i64 128, i64 8, !38, i64 136, i64 8, !38, i64 144, i64 8, !38, i64 152, i64 8, !38, i64 160, i64 8, !38, i64 168, i64 8, !38, i64 176, i64 8, !38, i64 184, i64 8, !38, i64 192, i64 8, !38, i64 200, i64 8, !38, i64 208, i64 8, !38, i64 216, i64 8, !38, i64 224, i64 8, !38, i64 232, i64 8, !38, i64 240, i64 8, !38, i64 248, i64 8, !38, i64 256, i64 8, !38, i64 264, i64 8, !38, i64 272, i64 8, !38, i64 280, i64 8, !38, i64 288, i64 8, !38}
!115 = distinct !{!115, !80}
!116 = distinct !{!116, !80}
!117 = distinct !{!117, !80}
