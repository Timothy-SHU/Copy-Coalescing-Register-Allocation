; ModuleID = 'gdevnfwd.c'
source_filename = "gdevnfwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_null_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_forward_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }

@gx_forward_copy_rop_proc = external local_unnamed_addr global ptr, align 8
@gx_forward_strip_copy_rop_proc = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@gs_null_device = dso_local local_unnamed_addr global %struct.gx_device_null_s { i32 496, ptr null, ptr @.str, ptr null, ptr null, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 0 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @gx_default_open_device, ptr @gx_forward_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @gx_default_close_device, ptr @gx_forward_map_rgb_color, ptr @gx_forward_map_color_rgb, ptr @null_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @null_copy_mono, ptr @null_copy_color, ptr @gx_default_draw_line, ptr @gx_default_get_bits, ptr @gx_forward_get_params, ptr @null_put_params, ptr @gx_forward_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_forward_map_rgb_alpha_color, ptr @gx_default_get_page_device, ptr @gx_forward_get_alpha_bits, ptr @null_copy_alpha, ptr @gx_forward_get_band, ptr @null_copy_rop, ptr @null_fill_path, ptr @null_stroke_path, ptr @gx_default_fill_mask, ptr @null_fill_trapezoid, ptr @null_fill_parallelogram, ptr @null_fill_triangle, ptr @null_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @null_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"nullpage\00", align 1
@gs_nullpage_device = dso_local local_unnamed_addr global %struct.gx_device_null_s { i32 496, ptr null, ptr @.str.1, ptr null, ptr null, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 0 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @gx_default_open_device, ptr @gx_forward_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @gx_default_close_device, ptr @gx_forward_map_rgb_color, ptr @gx_forward_map_color_rgb, ptr @null_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @null_copy_mono, ptr @null_copy_color, ptr @gx_default_draw_line, ptr @gx_default_get_bits, ptr @gx_forward_get_params, ptr @null_put_params, ptr @gx_forward_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_forward_map_rgb_alpha_color, ptr @gx_page_device_get_page_device, ptr @gx_forward_get_alpha_bits, ptr @null_copy_alpha, ptr @gx_forward_get_band, ptr @null_copy_rop, ptr @null_fill_path, ptr @null_stroke_path, ptr @gx_default_fill_mask, ptr @null_fill_trapezoid, ptr @null_fill_parallelogram, ptr @null_fill_triangle, ptr @null_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @null_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @gx_device_forward_fill_in_procs(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @gx_device_set_procs(ptr noundef %0) #4
  %2 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store ptr @gx_forward_get_initial_matrix, ptr %2, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store ptr @gx_forward_sync_output, ptr %7, align 8, !tbaa !16
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store ptr @gx_forward_output_page, ptr %12, align 8, !tbaa !17
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store ptr @gx_forward_map_rgb_color, ptr %17, align 8, !tbaa !18
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store ptr @gx_forward_map_color_rgb, ptr %22, align 8, !tbaa !19
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr @gx_forward_get_bits, ptr %27, align 8, !tbaa !20
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store ptr @gx_forward_get_params, ptr %32, align 8, !tbaa !21
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 14
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr @gx_forward_put_params, ptr %37, align 8, !tbaa !22
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 15
  %43 = load ptr, ptr %42, align 8, !tbaa !23
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store ptr @gx_forward_map_cmyk_color, ptr %42, align 8, !tbaa !23
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 16
  %48 = load ptr, ptr %47, align 8, !tbaa !24
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store ptr @gx_forward_get_xfont_procs, ptr %47, align 8, !tbaa !24
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !25
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store ptr @gx_forward_get_xfont_device, ptr %52, align 8, !tbaa !25
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 18
  %58 = load ptr, ptr %57, align 8, !tbaa !26
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store ptr @gx_forward_map_rgb_alpha_color, ptr %57, align 8, !tbaa !26
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !27
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store ptr @gx_forward_get_page_device, ptr %62, align 8, !tbaa !27
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 20
  %68 = load ptr, ptr %67, align 8, !tbaa !28
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store ptr @gx_forward_get_alpha_bits, ptr %67, align 8, !tbaa !28
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 22
  %73 = load ptr, ptr %72, align 8, !tbaa !29
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store ptr @gx_forward_get_band, ptr %72, align 8, !tbaa !29
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 23
  %78 = load ptr, ptr %77, align 8, !tbaa !30
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr @gx_forward_copy_rop_proc, align 8, !tbaa !31
  store ptr %81, ptr %77, align 8, !tbaa !30
  br label %82

82:                                               ; preds = %80, %76
  %83 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 24
  %84 = load ptr, ptr %83, align 8, !tbaa !32
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store ptr @gx_forward_fill_path, ptr %83, align 8, !tbaa !32
  br label %87

87:                                               ; preds = %86, %82
  %88 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 25
  %89 = load ptr, ptr %88, align 8, !tbaa !33
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store ptr @gx_forward_stroke_path, ptr %88, align 8, !tbaa !33
  br label %92

92:                                               ; preds = %91, %87
  %93 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 26
  %94 = load ptr, ptr %93, align 8, !tbaa !34
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store ptr @gx_forward_fill_mask, ptr %93, align 8, !tbaa !34
  br label %97

97:                                               ; preds = %96, %92
  %98 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 27
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store ptr @gx_forward_fill_trapezoid, ptr %98, align 8, !tbaa !35
  br label %102

102:                                              ; preds = %101, %97
  %103 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 28
  %104 = load ptr, ptr %103, align 8, !tbaa !36
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store ptr @gx_forward_fill_parallelogram, ptr %103, align 8, !tbaa !36
  br label %107

107:                                              ; preds = %106, %102
  %108 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 29
  %109 = load ptr, ptr %108, align 8, !tbaa !37
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store ptr @gx_forward_fill_triangle, ptr %108, align 8, !tbaa !37
  br label %112

112:                                              ; preds = %111, %107
  %113 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 30
  %114 = load ptr, ptr %113, align 8, !tbaa !38
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store ptr @gx_forward_draw_thin_line, ptr %113, align 8, !tbaa !38
  br label %117

117:                                              ; preds = %116, %112
  %118 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 31
  %119 = load ptr, ptr %118, align 8, !tbaa !39
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store ptr @gx_forward_begin_image, ptr %118, align 8, !tbaa !39
  br label %122

122:                                              ; preds = %121, %117
  %123 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 32
  %124 = load ptr, ptr %123, align 8, !tbaa !40
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store ptr @gx_forward_image_data, ptr %123, align 8, !tbaa !40
  br label %127

127:                                              ; preds = %126, %122
  %128 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 33
  %129 = load ptr, ptr %128, align 8, !tbaa !41
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store ptr @gx_forward_end_image, ptr %128, align 8, !tbaa !41
  br label %132

132:                                              ; preds = %131, %127
  %133 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 35
  %134 = load ptr, ptr %133, align 8, !tbaa !42
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load ptr, ptr @gx_forward_strip_copy_rop_proc, align 8, !tbaa !31
  store ptr %137, ptr %133, align 8, !tbaa !42
  br label %138

138:                                              ; preds = %136, %132
  %139 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 36
  %140 = load ptr, ptr %139, align 8, !tbaa !43
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store ptr @gx_forward_get_clipping_box, ptr %139, align 8, !tbaa !43
  br label %143

143:                                              ; preds = %142, %138
  tail call void @gx_device_fill_in_procs(ptr noundef %0) #4
  ret void
}

declare void @gx_device_set_procs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gx_forward_get_initial_matrix(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @gx_default_get_initial_matrix(ptr noundef %0, ptr noundef %1) #4
  br label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %4, i64 0, i32 21, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  tail call void %9(ptr noundef nonnull %4, ptr noundef %1) #4
  br label %10

10:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_sync_output(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @gx_default_sync_output(ptr noundef %0) #4
  br label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call i32 %9(ptr noundef nonnull %3) #4
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_output_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @gx_default_output_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call i32 %11(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2) #4
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gx_forward_map_rgb_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i64 @gx_default_w_b_map_rgb_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #4
  br label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 21, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = tail call i64 %12(ptr noundef nonnull %6, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #4
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i64 [ %9, %8 ], [ %13, %10 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_map_color_rgb(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @gx_default_w_b_map_color_rgb(ptr noundef %0, i64 noundef %1, ptr noundef %2) #4
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call i32 %11(ptr noundef nonnull %5, i64 noundef %1, ptr noundef %2) #4
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_get_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @gx_default_get_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #4
  br label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 21, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call i32 %12(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3) #4
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_get_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @gx_default_get_params(ptr noundef %0, ptr noundef %1) #4
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %4, i64 0, i32 21, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = tail call i32 %10(ptr noundef nonnull %4, ptr noundef %1) #4
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_put_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @gx_default_put_params(ptr noundef %0, ptr noundef %1) #4
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %4, i64 0, i32 21, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = tail call i32 %10(ptr noundef nonnull %4, ptr noundef %1) #4
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gx_forward_map_cmyk_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i64 @gx_default_map_cmyk_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4
  br label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = tail call i64 %13(ptr noundef nonnull %7, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i64 [ %10, %9 ], [ %14, %11 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_forward_get_xfont_procs(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @gx_default_get_xfont_procs(ptr noundef %0) #4
  br label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = tail call ptr %9(ptr noundef nonnull %3) #4
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %6, %5 ], [ %10, %7 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_forward_get_xfont_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @gx_default_get_xfont_device(ptr noundef %0) #4
  br label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = tail call ptr %9(ptr noundef nonnull %3) #4
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %6, %5 ], [ %10, %7 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gx_forward_map_rgb_alpha_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i64 @gx_default_map_rgb_alpha_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4
  br label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = tail call i64 %13(ptr noundef nonnull %7, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #4
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i64 [ %10, %9 ], [ %14, %11 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_forward_get_page_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @gx_default_get_page_device(ptr noundef %0) #4
  br label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = tail call ptr %9(ptr noundef nonnull %3) #4
  %11 = icmp eq ptr %10, %3
  %12 = select i1 %11, ptr %0, ptr %10
  br label %13

13:                                               ; preds = %7, %5
  %14 = phi ptr [ %6, %5 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_get_alpha_bits(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @gx_default_get_alpha_bits(ptr noundef %0, i32 noundef %1) #4
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %4, i64 0, i32 21, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = tail call i32 %10(ptr noundef nonnull %4, i32 noundef %1) #4
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_get_band(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @gx_default_get_band(ptr noundef %0, i32 noundef %1, ptr noundef %2) #4
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = tail call i32 %11(ptr noundef nonnull %5, i32 noundef %1, ptr noundef %2) #4
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_fill_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %8, i64 0, i32 21, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %8, %10 ], [ %0, %6 ]
  %15 = phi ptr [ %12, %10 ], [ @gx_default_fill_path, %6 ]
  %16 = tail call i32 %15(ptr noundef %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %8, i64 0, i32 21, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %8, %10 ], [ %0, %6 ]
  %15 = phi ptr [ %12, %10 ], [ @gx_default_stroke_path, %6 ]
  %16 = tail call i32 %15(ptr noundef %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #0 {
  %14 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 21, i32 26
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  br label %20

20:                                               ; preds = %13, %17
  %21 = phi ptr [ %19, %17 ], [ @gx_default_fill_mask, %13 ]
  %22 = tail call i32 %21(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_fill_trapezoid(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %10, %12 ], [ %0, %8 ]
  %17 = phi ptr [ %14, %12 ], [ @gx_default_fill_trapezoid, %8 ]
  %18 = tail call i32 %17(ptr noundef %16, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_fill_parallelogram(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
  %10 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 21, i32 28
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %11, %13 ], [ %0, %9 ]
  %18 = phi ptr [ %15, %13 ], [ @gx_default_fill_parallelogram, %9 ]
  %19 = tail call i32 %18(ptr noundef %17, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) #4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_fill_triangle(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
  %10 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 21, i32 29
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %11, %13 ], [ %0, %9 ]
  %18 = phi ptr [ %15, %13 ], [ @gx_default_fill_triangle, %9 ]
  %19 = tail call i32 %18(ptr noundef %17, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) #4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_draw_thin_line(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %9, i64 0, i32 21, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %9, %11 ], [ %0, %7 ]
  %16 = phi ptr [ %13, %11 ], [ @gx_default_draw_thin_line, %7 ]
  %17 = tail call i32 %16(ptr noundef %15, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) #4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 21, i32 31
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %11, %13 ], [ %0, %9 ]
  %18 = phi ptr [ %15, %13 ], [ @gx_default_begin_image, %9 ]
  %19 = tail call i32 %18(ptr noundef %17, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_image_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %8, i64 0, i32 21, i32 32
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %8, %10 ], [ %0, %6 ]
  %15 = phi ptr [ %12, %10 ], [ @gx_default_image_data, %6 ]
  %16 = tail call i32 %15(ptr noundef %14, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_end_image(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 33
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %7 ], [ %0, %3 ]
  %12 = phi ptr [ %9, %7 ], [ @gx_default_end_image, %3 ]
  %13 = tail call i32 %12(ptr noundef %11, ptr noundef %1, i32 noundef %2) #4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_forward_get_clipping_box(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @gx_default_get_clipping_box(ptr noundef %0, ptr noundef %1) #4
  br label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %4, i64 0, i32 21, i32 36
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  tail call void %9(ptr noundef %0, ptr noundef %1) #4
  br label %10

10:                                               ; preds = %7, %6
  ret void
}

declare void @gx_device_fill_in_procs(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_device_forward_color_procs(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 5
  store ptr @gx_forward_map_rgb_color, ptr %2, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 6
  store ptr @gx_forward_map_color_rgb, ptr %3, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 15
  store ptr @gx_forward_map_cmyk_color, ptr %4, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 21, i32 18
  store ptr @gx_forward_map_rgb_alpha_color, ptr %5, align 8, !tbaa !26
  ret void
}

declare void @gx_default_get_initial_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_sync_output(ptr noundef) #1

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #1

declare i64 @gx_default_w_b_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @gx_default_w_b_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_tile_rectangle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %12, i64 0, i32 21, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %12, %14 ], [ %0, %10 ]
  %19 = phi ptr [ %16, %14 ], [ @gx_default_tile_rectangle, %10 ]
  %20 = tail call i32 %19(ptr noundef %18, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #4
  ret i32 %20
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @gx_default_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @gx_default_get_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_put_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @gx_default_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

declare ptr @gx_default_get_xfont_procs(ptr noundef) local_unnamed_addr #1

declare ptr @gx_default_get_xfont_device(ptr noundef) local_unnamed_addr #1

declare i64 @gx_default_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

declare ptr @gx_default_get_page_device(ptr noundef) #1

declare i32 @gx_default_get_alpha_bits(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_default_get_band(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare i32 @gx_default_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_default_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_default_draw_thin_line(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_strip_tile_rectangle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %12, i64 0, i32 21, i32 34
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %12, %14 ], [ %0, %10 ]
  %19 = phi ptr [ %16, %14 ], [ @gx_default_strip_tile_rectangle, %10 ]
  %20 = tail call i32 %19(ptr noundef %18, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #4
  ret i32 %20
}

declare i32 @gx_default_strip_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare void @gx_default_get_clipping_box(ptr noundef, ptr noundef) #1

declare i32 @gx_default_install(ptr noundef, ptr noundef) #1

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #1

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @gx_default_open_device(ptr noundef) #1

declare i32 @gx_default_close_device(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_fill_rectangle(ptr nocapture readnone %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_copy_mono(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %9, i64 %10) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_copy_color(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8) #3 {
  ret i32 0
}

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @null_put_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %4, i64 0, i32 21, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = tail call i32 %8(ptr noundef nonnull %4, ptr noundef %1) #4
  br label %16

10:                                               ; preds = %2
  %11 = tail call i32 @gx_default_put_params(ptr noundef %0, ptr noundef %1) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %14, align 4, !tbaa !74
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %15, align 8, !tbaa !75
  br label %16

16:                                               ; preds = %10, %13, %6
  %17 = phi i32 [ %9, %6 ], [ %11, %13 ], [ %11, %10 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_copy_alpha(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %9, i32 %10) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_copy_rop(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, i64 %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr nocapture readnone %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_fill_path(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr nocapture readnone %5) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_stroke_path(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr nocapture readnone %5) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_fill_trapezoid(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i64 %3, i64 %4, i32 %5, ptr nocapture readnone %6, i32 %7) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_fill_parallelogram(ptr nocapture readnone %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr nocapture readnone %7, i32 %8) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_fill_triangle(ptr nocapture readnone %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr nocapture readnone %7, i32 %8) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_draw_thin_line(ptr nocapture readnone %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nocapture readnone %5, i32 %6) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @null_strip_copy_rop(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, i64 %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr nocapture readnone %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #3 {
  ret i32 0
}

declare ptr @gx_page_device_get_page_device(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 200}
!6 = !{!"gx_device_forward_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!6, !10, i64 208}
!17 = !{!6, !10, i64 216}
!18 = !{!6, !10, i64 232}
!19 = !{!6, !10, i64 240}
!20 = !{!6, !10, i64 288}
!21 = !{!6, !10, i64 296}
!22 = !{!6, !10, i64 304}
!23 = !{!6, !10, i64 312}
!24 = !{!6, !10, i64 320}
!25 = !{!6, !10, i64 328}
!26 = !{!6, !10, i64 336}
!27 = !{!6, !10, i64 344}
!28 = !{!6, !10, i64 352}
!29 = !{!6, !10, i64 368}
!30 = !{!6, !10, i64 376}
!31 = !{!10, !10, i64 0}
!32 = !{!6, !10, i64 384}
!33 = !{!6, !10, i64 392}
!34 = !{!6, !10, i64 400}
!35 = !{!6, !10, i64 408}
!36 = !{!6, !10, i64 416}
!37 = !{!6, !10, i64 424}
!38 = !{!6, !10, i64 432}
!39 = !{!6, !10, i64 440}
!40 = !{!6, !10, i64 448}
!41 = !{!6, !10, i64 456}
!42 = !{!6, !10, i64 472}
!43 = !{!6, !10, i64 480}
!44 = !{!6, !10, i64 488}
!45 = !{!46, !10, i64 200}
!46 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192}
!47 = !{!46, !10, i64 208}
!48 = !{!46, !10, i64 216}
!49 = !{!46, !10, i64 232}
!50 = !{!46, !10, i64 240}
!51 = !{!46, !10, i64 288}
!52 = !{!46, !10, i64 296}
!53 = !{!46, !10, i64 304}
!54 = !{!46, !10, i64 312}
!55 = !{!46, !10, i64 320}
!56 = !{!46, !10, i64 328}
!57 = !{!46, !10, i64 336}
!58 = !{!46, !10, i64 344}
!59 = !{!46, !10, i64 352}
!60 = !{!46, !10, i64 368}
!61 = !{!46, !10, i64 384}
!62 = !{!46, !10, i64 392}
!63 = !{!46, !10, i64 400}
!64 = !{!46, !10, i64 408}
!65 = !{!46, !10, i64 416}
!66 = !{!46, !10, i64 424}
!67 = !{!46, !10, i64 432}
!68 = !{!46, !10, i64 440}
!69 = !{!46, !10, i64 448}
!70 = !{!46, !10, i64 456}
!71 = !{!46, !10, i64 480}
!72 = !{!46, !10, i64 256}
!73 = !{!46, !10, i64 464}
!74 = !{!46, !7, i64 68}
!75 = !{!46, !7, i64 64}
