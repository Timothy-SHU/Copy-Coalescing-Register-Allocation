; ModuleID = 'gxpcmap.c'
source_filename = "gxpcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_pattern_accum_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_pattern_cache_s = type { ptr, ptr, i32, i32, i32, i64, i64, ptr }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_client_pattern_s, ptr, %struct.gs_matrix_s, %struct.gs_rect_s, i32, %struct.gs_int_point_s, i64 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gs_client_pattern_s = type { %struct.gs_uid_s, i32, i32, %struct.gs_rect_s, float, float, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gs_color_space_s = type { ptr, %union.anon }
%union.anon = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.gs_indexed_params_s }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.1, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { %struct.gs_const_string_s }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }

@st_device_pattern_accum = internal constant %struct.gs_memory_struct_type_s { i32 528, ptr @.str.4, ptr null, ptr null, ptr @pattern_accum_enum, ptr @pattern_accum_reloc, ptr null }, align 8
@gs_pattern_accum_device = internal unnamed_addr constant %struct.gx_device_pattern_accum_s { i32 528, ptr null, ptr @.str.4, ptr null, ptr null, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 0 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @pattern_accum_open, ptr null, ptr null, ptr null, ptr @pattern_accum_close, ptr null, ptr null, ptr @pattern_accum_fill_rectangle, ptr null, ptr @pattern_accum_copy_mono, ptr @pattern_accum_copy_color, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr null, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr null, ptr null, ptr @gx_get_largest_clipping_box }, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@st_pattern_cache = internal constant %struct.gs_memory_struct_type_s { i32 56, ptr @.str.9, ptr null, ptr null, ptr @pattern_cache_enum, ptr @pattern_cache_reloc, ptr null }, align 8
@.str = private unnamed_addr constant [28 x i8] c"pattern_cache_alloc(struct)\00", align 1
@st_color_tile_element = internal constant %struct.gs_memory_struct_type_s { i32 184, ptr @.str.10, ptr null, ptr null, ptr @color_tile_elt_enum_ptrs, ptr @color_tile_elt_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"pattern_cache_alloc(tiles)\00", align 1
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"gxpcmap.c\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Pattern cache lookup failed after insertion!\0A\00", align 1
@gx_dc_pattern = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_pure_masked = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_ht_binary = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_binary_masked = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_ht_colored = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_colored_masked = external constant %struct.gx_device_color_procs_s, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"pattern accumulator\00", align 1
@st_device_forward = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"pattern_accum_open(mask)\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"pattern_accum_open(bits)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"pattern_accum_close(bits)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"pattern_accum_close(mask)\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"gx_pattern_cache\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"gx_color_tile[]\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"free_pattern_cache_entry(mask data)\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"free_pattern_cache_entry(bits data)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_pat_cache_default_tiles() local_unnamed_addr #0 {
  ret i32 50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gx_pat_cache_default_bits() local_unnamed_addr #0 {
  ret i64 100000
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_pattern_accum_alloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call ptr %4(ptr noundef %0, ptr noundef nonnull @st_device_pattern_accum, ptr noundef %1) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %5, ptr noundef nonnull align 8 dereferenceable(528) @gs_pattern_accum_device, i64 528, i1 false), !tbaa.struct !11
  %8 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %5, i64 0, i32 3
  store ptr %0, ptr %8, align 8, !tbaa !20
  tail call void @gx_device_forward_fill_in_procs(ptr noundef nonnull %5) #10
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %5, %7 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @gx_device_forward_fill_in_procs(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_pattern_alloc_cache(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr %5(ptr noundef %0, ptr noundef nonnull @st_pattern_cache, ptr noundef nonnull @.str) #10
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = tail call ptr %8(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @st_color_tile_element, ptr noundef nonnull @.str.1) #10
  %10 = icmp eq ptr %6, null
  %11 = icmp eq ptr %9, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  tail call void %15(ptr noundef %0, ptr noundef %9, ptr noundef nonnull @.str.1) #10
  %16 = load ptr, ptr %14, align 8, !tbaa !26
  tail call void %16(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str) #10
  br label %37

17:                                               ; preds = %3
  store ptr %0, ptr %6, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %6, i64 0, i32 1
  store ptr %9, ptr %18, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %6, i64 0, i32 2
  store i32 %1, ptr %19, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %6, i64 0, i32 3
  store i32 0, ptr %20, align 4, !tbaa !31
  %21 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %6, i64 0, i32 4
  store i32 0, ptr %21, align 8, !tbaa !32
  %22 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %6, i64 0, i32 5
  store i64 0, ptr %22, align 8, !tbaa !33
  %23 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %6, i64 0, i32 6
  store i64 %2, ptr %23, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %6, i64 0, i32 7
  store ptr @pattern_cache_free_all, ptr %24, align 8, !tbaa !35
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %17, %26
  %27 = phi i32 [ %35, %26 ], [ 0, %17 ]
  %28 = phi ptr [ %34, %26 ], [ %9, %17 ]
  store i64 0, ptr %28, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct.gx_color_tile_s, ptr %28, i64 0, i32 2
  store i64 16777216, ptr %29, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.gx_color_tile_s, ptr %28, i64 0, i32 2, i32 1
  store ptr null, ptr %30, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.gx_color_tile_s, ptr %28, i64 0, i32 6
  store ptr null, ptr %31, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.gx_color_tile_s, ptr %28, i64 0, i32 7
  store ptr null, ptr %32, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct.gx_color_tile_s, ptr %28, i64 0, i32 9
  store i32 %27, ptr %33, align 4, !tbaa !50
  %34 = getelementptr inbounds %struct.gx_color_tile_s, ptr %28, i64 1
  %35 = add nuw i32 %27, 1
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %26, !llvm.loop !51

37:                                               ; preds = %26, %17, %13
  %38 = phi ptr [ null, %13 ], [ %6, %17 ], [ %6, %26 ]
  ret ptr %38
}

; Function Attrs: nounwind uwtable
define internal void @pattern_cache_free_all(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !30
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %16, %7
  %10 = phi i64 [ 0, %7 ], [ %17, %16 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !29
  %12 = getelementptr inbounds %struct.gx_color_tile_s, ptr %11, i64 %10
  %13 = load i64, ptr %12, align 8, !tbaa !36
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call fastcc void @gx_pattern_cache_free_entry(ptr noundef nonnull %0, ptr noundef nonnull %12)
  br label %16

16:                                               ; preds = %15, %9
  %17 = add nuw nsw i64 %10, 1
  %18 = load i32, ptr %4, align 8, !tbaa !30
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %9, label %21, !llvm.loop !53

21:                                               ; preds = %16, %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gstate_pattern_cache(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gstate_set_pattern_cache(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 21
  store ptr %1, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_pattern_cache_add_entry(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %1, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %1, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %1, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %9, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %53

15:                                               ; preds = %3
  %16 = load ptr, ptr %0, align 8, !tbaa !70
  %17 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = tail call ptr %18(ptr noundef %16, ptr noundef nonnull @st_pattern_cache, ptr noundef nonnull @.str) #10
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %16, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !25
  %22 = tail call ptr %21(ptr noundef %16, i32 noundef 50, ptr noundef nonnull @st_color_tile_element, ptr noundef nonnull @.str.1) #10
  %23 = icmp eq ptr %19, null
  %24 = icmp eq ptr %22, null
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %16, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  tail call void %28(ptr noundef %16, ptr noundef %22, ptr noundef nonnull @.str.1) #10
  %29 = load ptr, ptr %27, align 8, !tbaa !26
  tail call void %29(ptr noundef %16, ptr noundef %19, ptr noundef nonnull @.str) #10
  br label %49

30:                                               ; preds = %15
  store ptr %16, ptr %19, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %19, i64 0, i32 1
  store ptr %22, ptr %31, align 8, !tbaa !29
  %32 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %19, i64 0, i32 2
  store i32 50, ptr %32, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %19, i64 0, i32 3
  store i32 0, ptr %33, align 4, !tbaa !31
  %34 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %19, i64 0, i32 4
  store i32 0, ptr %34, align 8, !tbaa !32
  %35 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %19, i64 0, i32 5
  store i64 0, ptr %35, align 8, !tbaa !33
  %36 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %19, i64 0, i32 6
  store i64 100000, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %19, i64 0, i32 7
  store ptr @pattern_cache_free_all, ptr %37, align 8, !tbaa !35
  br label %38

38:                                               ; preds = %38, %30
  %39 = phi i32 [ %47, %38 ], [ 0, %30 ]
  %40 = phi ptr [ %46, %38 ], [ %22, %30 ]
  store i64 0, ptr %40, align 8, !tbaa !36
  %41 = getelementptr inbounds %struct.gx_color_tile_s, ptr %40, i64 0, i32 2
  store i64 16777216, ptr %41, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.gx_color_tile_s, ptr %40, i64 0, i32 2, i32 1
  store ptr null, ptr %42, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.gx_color_tile_s, ptr %40, i64 0, i32 6
  store ptr null, ptr %43, align 8, !tbaa !48
  %44 = getelementptr inbounds %struct.gx_color_tile_s, ptr %40, i64 0, i32 7
  store ptr null, ptr %44, align 8, !tbaa !49
  %45 = getelementptr inbounds %struct.gx_color_tile_s, ptr %40, i64 0, i32 9
  store i32 %39, ptr %45, align 4, !tbaa !50
  %46 = getelementptr inbounds %struct.gx_color_tile_s, ptr %40, i64 1
  %47 = add nuw nsw i32 %39, 1
  %48 = icmp eq i32 %47, 50
  br i1 %48, label %49, label %38, !llvm.loop !51

49:                                               ; preds = %38, %26
  %50 = phi ptr [ null, %26 ], [ %19, %38 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store ptr %50, ptr %12, align 8, !tbaa !68
  br label %53

53:                                               ; preds = %3, %49, %52
  %54 = phi i1 [ true, %49 ], [ false, %52 ], [ false, %3 ]
  %55 = phi i32 [ -25, %49 ], [ 0, %52 ], [ 0, %3 ]
  br i1 %54, label %213, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %12, align 8, !tbaa !68
  %58 = getelementptr inbounds %struct.gx_device_memory_s, ptr %7, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !71
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.gx_device_memory_s, ptr %7, i64 0, i32 27
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  %64 = getelementptr inbounds %struct.gx_device_memory_s, ptr %7, i64 0, i32 8
  %65 = load i32, ptr %64, align 8, !tbaa !77
  %66 = icmp sgt i32 %65, 8
  %67 = zext nneg i32 %59 to i64
  br label %71

68:                                               ; preds = %84
  %69 = add nuw nsw i64 %72, 1
  %70 = icmp eq i64 %69, %67
  br i1 %70, label %92, label %71, !llvm.loop !78

71:                                               ; preds = %61, %68
  %72 = phi i64 [ 0, %61 ], [ %69, %68 ]
  %73 = getelementptr inbounds ptr, ptr %63, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !14
  br i1 %66, label %75, label %84

75:                                               ; preds = %71, %80
  %76 = phi i32 [ %82, %80 ], [ %65, %71 ]
  %77 = phi ptr [ %81, %80 ], [ %74, %71 ]
  %78 = load i8, ptr %77, align 1, !tbaa !17
  %79 = icmp eq i8 %78, -1
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %77, i64 1
  %82 = add nsw i32 %76, -8
  %83 = icmp sgt i32 %76, 16
  br i1 %83, label %75, label %84, !llvm.loop !79

84:                                               ; preds = %80, %71
  %85 = phi ptr [ %74, %71 ], [ %81, %80 ]
  %86 = phi i32 [ %65, %71 ], [ %82, %80 ]
  %87 = load i8, ptr %85, align 1, !tbaa !17
  %88 = zext i8 %87 to i32
  %89 = lshr i32 255, %86
  %90 = or i32 %89, %88
  %91 = icmp eq i32 %90, 255
  br i1 %91, label %68, label %92

92:                                               ; preds = %84, %68, %75, %56
  %93 = phi ptr [ null, %56 ], [ %7, %75 ], [ null, %68 ], [ %7, %84 ]
  %94 = icmp eq ptr %5, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 8
  %97 = load i32, ptr %96, align 8, !tbaa !77
  %98 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 9
  %99 = load i32, ptr %98, align 4, !tbaa !71
  %100 = tail call i64 @gdev_mem_data_size(ptr noundef nonnull %5, i32 noundef %97, i32 noundef %99) #10
  br label %101

101:                                              ; preds = %95, %92
  %102 = phi i64 [ %100, %95 ], [ 0, %92 ]
  %103 = icmp eq ptr %93, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.gx_device_memory_s, ptr %93, i64 0, i32 8
  %106 = load i32, ptr %105, align 8, !tbaa !77
  %107 = getelementptr inbounds %struct.gx_device_memory_s, ptr %93, i64 0, i32 9
  %108 = load i32, ptr %107, align 4, !tbaa !71
  %109 = tail call i64 @gdev_mem_data_size(ptr noundef nonnull %93, i32 noundef %106, i32 noundef %108) #10
  %110 = add i64 %109, %102
  br label %111

111:                                              ; preds = %104, %101
  %112 = phi i64 [ %110, %104 ], [ %102, %101 ]
  %113 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %57, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !29
  %115 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %57, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !30
  %117 = zext i32 %116 to i64
  %118 = urem i64 %11, %117
  %119 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118
  tail call fastcc void @gx_pattern_cache_free_entry(ptr noundef %57, ptr noundef %119)
  %120 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %57, i64 0, i32 5
  %121 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %57, i64 0, i32 6
  %122 = load i64, ptr %120, align 8, !tbaa !33
  %123 = add i64 %122, %112
  %124 = load i64, ptr %121, align 8, !tbaa !34
  %125 = icmp ule i64 %123, %124
  %126 = icmp eq i64 %122, 0
  %127 = or i1 %126, %125
  br i1 %127, label %144, label %128

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %57, i64 0, i32 4
  br label %130

130:                                              ; preds = %128, %130
  %131 = load i32, ptr %129, align 8, !tbaa !32
  %132 = add i32 %131, 1
  %133 = load i32, ptr %115, align 8, !tbaa !30
  %134 = urem i32 %132, %133
  store i32 %134, ptr %129, align 8, !tbaa !32
  %135 = load ptr, ptr %113, align 8, !tbaa !29
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds %struct.gx_color_tile_s, ptr %135, i64 %136
  tail call fastcc void @gx_pattern_cache_free_entry(ptr noundef %57, ptr noundef %137)
  %138 = load i64, ptr %120, align 8, !tbaa !33
  %139 = add i64 %138, %112
  %140 = load i64, ptr %121, align 8, !tbaa !34
  %141 = icmp ule i64 %139, %140
  %142 = icmp eq i64 %138, 0
  %143 = or i1 %142, %141
  br i1 %143, label %144, label %130, !llvm.loop !80

144:                                              ; preds = %130, %111
  %145 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %57, i64 0, i32 5
  store i64 %11, ptr %119, align 8, !tbaa !36
  %146 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %1, i64 0, i32 7, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !81
  %148 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 1
  store i32 %147, ptr %148, align 8, !tbaa !82
  %149 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 2
  %150 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %9, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %149, ptr noundef nonnull align 8 dereferenceable(16) %150, i64 16, i1 false), !tbaa.struct !83
  %151 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %9, i64 0, i32 1, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !84
  %153 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 3
  store i32 %152, ptr %153, align 8, !tbaa !85
  %154 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 4
  %155 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %9, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %154, ptr noundef nonnull align 8 dereferenceable(24) %155, i64 24, i1 false), !tbaa.struct !86
  %156 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 5
  %157 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %9, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %156, ptr noundef nonnull align 8 dereferenceable(32) %157, i64 32, i1 false), !tbaa.struct !88
  %158 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %9, i64 0, i32 5
  %159 = load i32, ptr %158, align 8, !tbaa !90
  %160 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 8
  store i32 %159, ptr %160, align 8, !tbaa !91
  %161 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 6
  br i1 %94, label %183, label %162

162:                                              ; preds = %144
  %163 = tail call i64 @gs_next_ids(i32 noundef 1) #10
  %164 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 26
  %165 = load ptr, ptr %164, align 8, !tbaa !92
  store ptr %165, ptr %161, align 8, !tbaa !93
  %166 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 24
  %167 = load i32, ptr %166, align 8, !tbaa !94
  %168 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 6, i32 1
  store i32 %167, ptr %168, align 8, !tbaa !95
  %169 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 8
  %170 = load i32, ptr %169, align 8, !tbaa !77
  %171 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 6, i32 2
  store i32 %170, ptr %171, align 4, !tbaa !96
  %172 = trunc i32 %170 to i16
  %173 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 6, i32 4
  store i16 %172, ptr %173, align 8, !tbaa !97
  %174 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 9
  %175 = load i32, ptr %174, align 4, !tbaa !71
  %176 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 6, i32 2, i32 1
  store i32 %175, ptr %176, align 4, !tbaa !98
  %177 = trunc i32 %175 to i16
  %178 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 6, i32 5
  store i16 %177, ptr %178, align 2, !tbaa !99
  %179 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 6, i32 3
  store i64 %163, ptr %179, align 8, !tbaa !100
  %180 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 6, i32 7
  store i16 0, ptr %180, align 2, !tbaa !101
  %181 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 6, i32 6
  store i16 0, ptr %181, align 4, !tbaa !102
  %182 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 28
  br label %183

183:                                              ; preds = %144, %162
  %184 = phi ptr [ %182, %162 ], [ %161, %144 ]
  store ptr null, ptr %184, align 8, !tbaa !14
  %185 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 7
  br i1 %103, label %206, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.gx_device_memory_s, ptr %93, i64 0, i32 26
  %188 = load ptr, ptr %187, align 8, !tbaa !92
  store ptr %188, ptr %185, align 8, !tbaa !93
  %189 = getelementptr inbounds %struct.gx_device_memory_s, ptr %93, i64 0, i32 24
  %190 = load i32, ptr %189, align 8, !tbaa !94
  %191 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 7, i32 1
  store i32 %190, ptr %191, align 8, !tbaa !95
  %192 = getelementptr inbounds %struct.gx_device_memory_s, ptr %93, i64 0, i32 8
  %193 = load i32, ptr %192, align 8, !tbaa !77
  %194 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 7, i32 2
  store i32 %193, ptr %194, align 4, !tbaa !96
  %195 = trunc i32 %193 to i16
  %196 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 7, i32 4
  store i16 %195, ptr %196, align 8, !tbaa !97
  %197 = getelementptr inbounds %struct.gx_device_memory_s, ptr %93, i64 0, i32 9
  %198 = load i32, ptr %197, align 4, !tbaa !71
  %199 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 7, i32 2, i32 1
  store i32 %198, ptr %199, align 4, !tbaa !98
  %200 = trunc i32 %198 to i16
  %201 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 7, i32 5
  store i16 %200, ptr %201, align 2, !tbaa !99
  %202 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 7, i32 3
  store i64 %11, ptr %202, align 8, !tbaa !100
  %203 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 7, i32 7
  store i16 0, ptr %203, align 2, !tbaa !101
  %204 = getelementptr inbounds %struct.gx_color_tile_s, ptr %114, i64 %118, i32 7, i32 6
  store i16 0, ptr %204, align 4, !tbaa !102
  %205 = getelementptr inbounds %struct.gx_device_memory_s, ptr %93, i64 0, i32 28
  br label %206

206:                                              ; preds = %183, %186
  %207 = phi ptr [ %205, %186 ], [ %185, %183 ]
  store ptr null, ptr %207, align 8, !tbaa !14
  %208 = load i64, ptr %145, align 8, !tbaa !33
  %209 = add i64 %208, %112
  store i64 %209, ptr %145, align 8, !tbaa !33
  %210 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %57, i64 0, i32 3
  %211 = load i32, ptr %210, align 4, !tbaa !31
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 4, !tbaa !31
  store ptr %119, ptr %2, align 8, !tbaa !14
  br label %213

213:                                              ; preds = %53, %206
  %214 = phi i32 [ 0, %206 ], [ %55, %53 ]
  ret i32 %214
}

declare i64 @gdev_mem_data_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @gx_pattern_cache_free_entry(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.gx_device_memory_s, align 8
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %3) #10
  %4 = load i64, ptr %1, align 8, !tbaa !36
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_color_tile_s, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_color_tile_s, ptr %1, i64 0, i32 7, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !103
  %13 = getelementptr inbounds %struct.gx_device_memory_s, ptr %3, i64 0, i32 8
  store i32 %12, ptr %13, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.gx_color_tile_s, ptr %1, i64 0, i32 7, i32 2, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !104
  %16 = getelementptr inbounds %struct.gx_device_memory_s, ptr %3, i64 0, i32 9
  store i32 %15, ptr %16, align 4, !tbaa !71
  %17 = getelementptr inbounds %struct.gx_device_memory_s, ptr %3, i64 0, i32 7, i32 1
  store i32 1, ptr %17, align 4, !tbaa !105
  %18 = call i64 @gdev_mem_data_size(ptr noundef nonnull %3, i32 noundef %12, i32 noundef %15) #10
  %19 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %0, i64 0, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !33
  %21 = sub i64 %20, %18
  store i64 %21, ptr %19, align 8, !tbaa !33
  %22 = load ptr, ptr %0, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %22, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !26
  %25 = load ptr, ptr %7, align 8, !tbaa !49
  call void %24(ptr noundef %22, ptr noundef %25, ptr noundef nonnull @.str.12) #10
  store ptr null, ptr %7, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %10, %6
  %27 = getelementptr inbounds %struct.gx_color_tile_s, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gx_color_tile_s, ptr %1, i64 0, i32 6, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !106
  %33 = getelementptr inbounds %struct.gx_device_memory_s, ptr %3, i64 0, i32 8
  store i32 %32, ptr %33, align 8, !tbaa !77
  %34 = getelementptr inbounds %struct.gx_color_tile_s, ptr %1, i64 0, i32 6, i32 2, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !107
  %36 = getelementptr inbounds %struct.gx_device_memory_s, ptr %3, i64 0, i32 9
  store i32 %35, ptr %36, align 4, !tbaa !71
  %37 = getelementptr inbounds %struct.gx_color_tile_s, ptr %1, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !82
  %39 = getelementptr inbounds %struct.gx_device_memory_s, ptr %3, i64 0, i32 7, i32 1
  store i32 %38, ptr %39, align 4, !tbaa !105
  %40 = call i64 @gdev_mem_data_size(ptr noundef nonnull %3, i32 noundef %32, i32 noundef %35) #10
  %41 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %0, i64 0, i32 5
  %42 = load i64, ptr %41, align 8, !tbaa !33
  %43 = sub i64 %42, %40
  store i64 %43, ptr %41, align 8, !tbaa !33
  %44 = load ptr, ptr %0, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !26
  %47 = load ptr, ptr %27, align 8, !tbaa !48
  call void %46(ptr noundef %44, ptr noundef %47, ptr noundef nonnull @.str.13) #10
  store ptr null, ptr %27, align 8, !tbaa !48
  br label %48

48:                                               ; preds = %30, %26
  store i64 0, ptr %1, align 8, !tbaa !36
  %49 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %0, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !31
  %51 = add i32 %50, -1
  store i32 %51, ptr %49, align 4, !tbaa !31
  br label %52

52:                                               ; preds = %48, %2
  call void @llvm.lifetime.end.p0(i64 632, ptr nonnull %3) #10
  ret void
}

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @gx_pattern_cache_winnow(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !30
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !29
  %14 = getelementptr inbounds %struct.gx_color_tile_s, ptr %13, i64 %12
  %15 = load i64, ptr %14, align 8, !tbaa !36
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %1(ptr noundef nonnull %14, ptr noundef %2) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call fastcc void @gx_pattern_cache_free_entry(ptr noundef nonnull %0, ptr noundef nonnull %14)
  br label %21

21:                                               ; preds = %20, %17, %11
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 8, !tbaa !30
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !53

26:                                               ; preds = %21, %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_pattern_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.gx_device_pattern_accum_s, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %5) #10
  %7 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %10 = load ptr, ptr %1, align 8, !tbaa !70
  %11 = tail call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %110

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load ptr, ptr %1, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = tail call ptr %20(ptr noundef %18, ptr noundef nonnull @st_pattern_cache, ptr noundef nonnull @.str) #10
  %22 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %18, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = tail call ptr %23(ptr noundef %18, i32 noundef 50, ptr noundef nonnull @st_color_tile_element, ptr noundef nonnull @.str.1) #10
  %25 = icmp eq ptr %21, null
  %26 = icmp eq ptr %24, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %18, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !26
  tail call void %30(ptr noundef %18, ptr noundef %24, ptr noundef nonnull @.str.1) #10
  %31 = load ptr, ptr %29, align 8, !tbaa !26
  tail call void %31(ptr noundef %18, ptr noundef %21, ptr noundef nonnull @.str) #10
  br label %51

32:                                               ; preds = %17
  store ptr %18, ptr %21, align 8, !tbaa !27
  %33 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %21, i64 0, i32 1
  store ptr %24, ptr %33, align 8, !tbaa !29
  %34 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %21, i64 0, i32 2
  store i32 50, ptr %34, align 8, !tbaa !30
  %35 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %21, i64 0, i32 3
  store i32 0, ptr %35, align 4, !tbaa !31
  %36 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %21, i64 0, i32 4
  store i32 0, ptr %36, align 8, !tbaa !32
  %37 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %21, i64 0, i32 5
  store i64 0, ptr %37, align 8, !tbaa !33
  %38 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %21, i64 0, i32 6
  store i64 100000, ptr %38, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %21, i64 0, i32 7
  store ptr @pattern_cache_free_all, ptr %39, align 8, !tbaa !35
  br label %40

40:                                               ; preds = %40, %32
  %41 = phi i32 [ %49, %40 ], [ 0, %32 ]
  %42 = phi ptr [ %48, %40 ], [ %24, %32 ]
  store i64 0, ptr %42, align 8, !tbaa !36
  %43 = getelementptr inbounds %struct.gx_color_tile_s, ptr %42, i64 0, i32 2
  store i64 16777216, ptr %43, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.gx_color_tile_s, ptr %42, i64 0, i32 2, i32 1
  store ptr null, ptr %44, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.gx_color_tile_s, ptr %42, i64 0, i32 6
  store ptr null, ptr %45, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.gx_color_tile_s, ptr %42, i64 0, i32 7
  store ptr null, ptr %46, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.gx_color_tile_s, ptr %42, i64 0, i32 9
  store i32 %41, ptr %47, align 4, !tbaa !50
  %48 = getelementptr inbounds %struct.gx_color_tile_s, ptr %42, i64 1
  %49 = add nuw nsw i32 %41, 1
  %50 = icmp eq i32 %49, 50
  br i1 %50, label %51, label %40, !llvm.loop !51

51:                                               ; preds = %40, %28
  %52 = phi ptr [ null, %28 ], [ %21, %40 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store ptr %52, ptr %14, align 8, !tbaa !68
  br label %55

55:                                               ; preds = %13, %51, %54
  %56 = phi i1 [ true, %51 ], [ false, %54 ], [ false, %13 ]
  %57 = phi i32 [ -25, %51 ], [ 0, %54 ], [ 0, %13 ]
  br i1 %56, label %110, label %58

58:                                               ; preds = %55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %5, ptr noundef nonnull align 8 dereferenceable(528) @gs_pattern_accum_device, i64 528, i1 false), !tbaa.struct !11
  call void @gx_device_forward_fill_in_procs(ptr noundef nonnull %5) #10
  %59 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %5, i64 0, i32 24
  store ptr %9, ptr %59, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %5, i64 0, i32 23
  store ptr %10, ptr %60, align 8, !tbaa !113
  %61 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %5, i64 0, i32 21
  %62 = load ptr, ptr %61, align 8, !tbaa !114
  %63 = call i32 %62(ptr noundef nonnull %5) #10
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %110, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %9, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !115
  %68 = getelementptr inbounds %struct.gs_state_s, ptr %67, i64 0, i32 28
  %69 = load ptr, ptr %68, align 8, !tbaa !116
  %70 = getelementptr inbounds %struct.gs_state_s, ptr %67, i64 0, i32 29
  %71 = load ptr, ptr %70, align 8, !tbaa !117
  %72 = getelementptr inbounds %struct.gx_path_s, ptr %69, i64 0, i32 13
  %73 = load i8, ptr %72, align 1, !tbaa !118
  %74 = getelementptr inbounds %struct.gx_path_s, ptr %71, i64 0, i32 13
  %75 = load i8, ptr %74, align 1, !tbaa !121
  %76 = getelementptr inbounds %struct.gx_clip_path_s, ptr %71, i64 0, i32 6
  %77 = load i8, ptr %76, align 1, !tbaa !125
  %78 = call ptr @gs_gstate(ptr noundef %67) #10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.gs_state_s, ptr %78, i64 0, i32 21
  %82 = load ptr, ptr %81, align 8, !tbaa !54
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load ptr, ptr %14, align 8, !tbaa !68
  store ptr %85, ptr %81, align 8, !tbaa !54
  br label %86

86:                                               ; preds = %84, %80
  call void @gx_set_device_only(ptr noundef nonnull %78, ptr noundef nonnull %5) #10
  %87 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %9, i64 0, i32 1, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !126
  %89 = call i32 %88(ptr noundef nonnull %7, ptr noundef nonnull %78) #10
  %90 = call i32 @gs_state_free(ptr noundef nonnull %78) #10
  store i8 %73, ptr %72, align 1, !tbaa !118
  store i8 %75, ptr %74, align 1, !tbaa !121
  store i8 %77, ptr %76, align 1, !tbaa !125
  br label %91

91:                                               ; preds = %65, %86
  %92 = phi i32 [ %89, %86 ], [ %63, %65 ]
  br i1 %79, label %110, label %93

93:                                               ; preds = %91
  %94 = icmp slt i32 %92, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %93
  %96 = call i32 @gx_pattern_cache_add_entry(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6), !range !127
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #10
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load ptr, ptr @gs_stderr, align 8, !tbaa !14
  call void @lprintf_file_and_line(ptr noundef %102, ptr noundef nonnull @.str.2, i32 noundef 526) #10
  %103 = load ptr, ptr @gs_stderr, align 8, !tbaa !14
  %104 = call i64 @fwrite(ptr nonnull @.str.3, i64 45, i64 1, ptr %103)
  br label %105

105:                                              ; preds = %95, %101, %98, %93
  %106 = phi i32 [ %92, %93 ], [ %96, %98 ], [ -100, %101 ], [ %96, %95 ]
  %107 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %5, i64 0, i32 21, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !128
  %109 = call i32 %108(ptr noundef nonnull %5) #10
  br label %110

110:                                              ; preds = %105, %58, %55, %4, %91
  %111 = phi i32 [ -25, %91 ], [ 0, %4 ], [ %57, %55 ], [ %63, %58 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %5) #10
  ret i32 %111
}

declare i32 @gx_pattern_cache_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gs_gstate(ptr noundef) local_unnamed_addr #4

declare void @gx_set_device_only(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gs_state_free(ptr noundef) local_unnamed_addr #4

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_remap_Pattern(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.gs_client_color_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !130
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 3, i32 1
  %13 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1
  store ptr null, ptr %13, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store ptr @gx_dc_pattern, ptr %2, align 8, !tbaa !131
  br label %42

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %8, i64 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !132
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !133
  %23 = tail call i32 %22(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #10
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %2, align 8, !tbaa !131
  %27 = icmp eq ptr %26, @gx_dc_procs_pure
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = icmp eq ptr %26, @gx_dc_procs_ht_binary
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = icmp eq ptr %26, @gx_dc_procs_ht_colored
  br i1 %31, label %35, label %42

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 3, i32 1
  %34 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1
  store ptr null, ptr %34, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  br label %35

35:                                               ; preds = %30, %28, %25, %32
  %36 = phi ptr [ @gx_dc_pattern, %32 ], [ @gx_dc_pure_masked, %25 ], [ @gx_dc_binary_masked, %28 ], [ @gx_dc_colored_masked, %30 ]
  store ptr %36, ptr %2, align 8, !tbaa !131
  %37 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %8, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 3, i32 1
  store i64 %38, ptr %39, align 8, !tbaa !135
  %40 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 3, i32 2
  store ptr null, ptr %40, align 8, !tbaa !136
  %41 = tail call i32 @gx_pattern_load(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %42

42:                                               ; preds = %30, %18, %35, %11
  %43 = phi i32 [ 0, %11 ], [ %41, %35 ], [ %23, %18 ], [ -29, %30 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal ptr @pattern_accum_enum(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  switch i32 %2, label %5 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %15
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 4), align 8, !tbaa !137
  %7 = add i32 %2, -3
  %8 = tail call ptr %6(ptr noundef %0, i32 noundef %1, i32 noundef %7, ptr noundef %3) #10
  br label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  store ptr %11, ptr %3, align 8, !tbaa !14
  br label %18

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  store ptr %14, ptr %3, align 8, !tbaa !14
  br label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  store ptr %17, ptr %3, align 8, !tbaa !14
  br label %18

18:                                               ; preds = %5, %9, %12, %15
  %19 = phi ptr [ %8, %5 ], [ @ptr_struct_procs, %15 ], [ @ptr_struct_procs, %12 ], [ @ptr_struct_procs, %9 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define internal void @pattern_accum_reloc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 5), align 8, !tbaa !139
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  %5 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %6, ptr noundef %2) #10
  store ptr %7, ptr %5, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %9, ptr noundef %2) #10
  store ptr %10, ptr %8, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %12, ptr noundef %2) #10
  store ptr %13, ptr %11, align 8, !tbaa !62
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_default_install(ptr noundef, ptr noundef) #4

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #4

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_open(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call ptr %7(ptr noundef %5, ptr noundef nonnull @st_device_memory, ptr noundef nonnull @.str.5) #10
  %9 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = tail call ptr @gs_currentdevice(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !140
  %14 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %3, i64 0, i32 6, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !141
  %16 = icmp eq ptr %8, null
  br i1 %16, label %89, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 8
  store i32 %13, ptr %18, align 8, !tbaa !142
  %19 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 9
  store i32 %15, ptr %19, align 4, !tbaa !143
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 13
  %21 = load float, ptr %20, align 4, !tbaa !87
  %22 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 13
  store float %21, ptr %22, align 4, !tbaa !87
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 13, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !87
  %25 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 13, i64 1
  store float %24, ptr %25, align 4, !tbaa !87
  %26 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !144
  tail call void @gs_make_mem_mono_device(ptr noundef nonnull %8, ptr noundef %5, ptr noundef null) #10
  %28 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 8
  store i32 %13, ptr %28, align 8, !tbaa !77
  %29 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 9
  store i32 %15, ptr %29, align 4, !tbaa !71
  %30 = load float, ptr %20, align 4, !tbaa !87
  %31 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 13
  store float %30, ptr %31, align 4, !tbaa !87
  %32 = load float, ptr %23, align 4, !tbaa !87
  %33 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 13, i64 1
  store float %32, ptr %33, align 4, !tbaa !87
  %34 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 28
  store ptr %5, ptr %34, align 8, !tbaa !145
  %35 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 26
  store ptr null, ptr %35, align 8, !tbaa !92
  %36 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !146
  %38 = tail call i32 %37(ptr noundef nonnull %8) #10
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %71

40:                                               ; preds = %17
  %41 = load ptr, ptr %35, align 8, !tbaa !92
  %42 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 24
  %43 = load i32, ptr %42, align 8, !tbaa !94
  %44 = load i32, ptr %29, align 4, !tbaa !71
  %45 = mul i32 %44, %43
  %46 = zext i32 %45 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %41, i8 0, i64 %46, i1 false)
  %47 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %3, i64 0, i32 1, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !132
  switch i32 %48, label %71 [
    i32 2, label %49
    i32 1, label %51
  ]

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 22
  store ptr %11, ptr %50, align 8, !tbaa !147
  br label %71

51:                                               ; preds = %40
  %52 = load ptr, ptr %6, align 8, !tbaa !5
  %53 = tail call ptr %52(ptr noundef %5, ptr noundef nonnull @st_device_memory, ptr noundef nonnull @.str.6) #10
  %54 = icmp eq ptr %53, null
  br i1 %54, label %89, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 22
  store ptr %53, ptr %56, align 8, !tbaa !147
  %57 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 7, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !148
  %59 = tail call ptr @gdev_mem_device_for_bits(i32 noundef %58) #10
  tail call void @gs_make_mem_device(ptr noundef nonnull %53, ptr noundef %59, ptr noundef %5, i32 noundef -1, ptr noundef %11) #10
  %60 = getelementptr inbounds %struct.gx_device_memory_s, ptr %53, i64 0, i32 8
  store i32 %13, ptr %60, align 8, !tbaa !77
  %61 = getelementptr inbounds %struct.gx_device_memory_s, ptr %53, i64 0, i32 9
  store i32 %15, ptr %61, align 4, !tbaa !71
  %62 = load float, ptr %20, align 4, !tbaa !87
  %63 = getelementptr inbounds %struct.gx_device_memory_s, ptr %53, i64 0, i32 13
  store float %62, ptr %63, align 4, !tbaa !87
  %64 = load float, ptr %23, align 4, !tbaa !87
  %65 = getelementptr inbounds %struct.gx_device_memory_s, ptr %53, i64 0, i32 13, i64 1
  store float %64, ptr %65, align 4, !tbaa !87
  %66 = getelementptr inbounds %struct.gx_device_memory_s, ptr %53, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !144
  %67 = getelementptr inbounds %struct.gx_device_memory_s, ptr %53, i64 0, i32 28
  store ptr %5, ptr %67, align 8, !tbaa !145
  %68 = getelementptr inbounds %struct.gx_device_memory_s, ptr %53, i64 0, i32 21
  %69 = load ptr, ptr %68, align 8, !tbaa !146
  %70 = tail call i32 %69(ptr noundef nonnull %53) #10
  br label %71

71:                                               ; preds = %49, %40, %55, %17
  %72 = phi ptr [ null, %40 ], [ %53, %55 ], [ null, %49 ], [ null, %17 ]
  %73 = phi i32 [ %38, %40 ], [ %70, %55 ], [ %38, %49 ], [ %38, %17 ]
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = icmp eq ptr %72, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 11
  %79 = load ptr, ptr %78, align 8, !tbaa !26
  tail call void %79(ptr noundef %5, ptr noundef nonnull %72, ptr noundef nonnull @.str.6) #10
  br label %80

80:                                               ; preds = %77, %75
  %81 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 21, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !150
  %83 = tail call i32 %82(ptr noundef nonnull %8) #10
  %84 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 11
  %85 = load ptr, ptr %84, align 8, !tbaa !26
  tail call void %85(ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull @.str.5) #10
  br label %89

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 26
  store ptr %8, ptr %87, align 8, !tbaa !62
  %88 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 25
  store ptr %72, ptr %88, align 8, !tbaa !61
  br label %89

89:                                               ; preds = %51, %1, %86, %80
  %90 = phi i32 [ %73, %80 ], [ %73, %86 ], [ -25, %1 ], [ -25, %51 ]
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pattern_accum_close(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 21, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = tail call i32 %9(ptr noundef nonnull %5) #10
  %11 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %12(ptr noundef %3, ptr noundef %13, ptr noundef nonnull @.str.7) #10
  store ptr null, ptr %4, align 8, !tbaa !61
  br label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 26
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = getelementptr inbounds %struct.gx_device_memory_s, ptr %16, i64 0, i32 21, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = tail call i32 %18(ptr noundef %16) #10
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  %22 = load ptr, ptr %15, align 8, !tbaa !62
  tail call void %21(ptr noundef %3, ptr noundef %22, ptr noundef nonnull @.str.8) #10
  store ptr null, ptr %15, align 8, !tbaa !62
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %12, i64 0, i32 21, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !151
  %15 = tail call i32 %14(ptr noundef %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #10
  br label %16

16:                                               ; preds = %10, %6
  %17 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.gx_device_memory_s, ptr %18, i64 0, i32 21, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !152
  %21 = tail call i32 %20(ptr noundef %18, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef 1) #10
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_copy_mono(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
  %12 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !147
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %17, i64 0, i32 21, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  %20 = tail call i32 %19(ptr noundef %17, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #10
  br label %21

21:                                               ; preds = %15, %11
  %22 = icmp ne i64 %9, -1
  %23 = icmp ne i64 %10, -1
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 26
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = getelementptr inbounds %struct.gx_device_memory_s, ptr %27, i64 0, i32 21, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !152
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef 1) #10
  br label %39

31:                                               ; preds = %21
  %32 = select i1 %23, i64 1, i64 -1
  %33 = select i1 %22, i64 1, i64 -1
  %34 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 26
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = getelementptr inbounds %struct.gx_device_memory_s, ptr %35, i64 0, i32 21, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !154
  %38 = tail call i32 %37(ptr noundef %35, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %33, i64 noundef %32) #10
  br label %39

39:                                               ; preds = %31, %25
  %40 = phi i32 [ %30, %25 ], [ %38, %31 ]
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_accum_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
  %10 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 21, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = tail call i32 %17(ptr noundef %15, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #10
  br label %19

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %0, i64 0, i32 26
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 21, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !152
  %24 = tail call i32 %23(ptr noundef %21, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef 1) #10
  ret i32 %24
}

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @gx_default_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #4

declare i32 @gx_default_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #4

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #4

declare i32 @gx_default_draw_thin_line(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #4

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) #4

declare void @gx_get_largest_clipping_box(ptr noundef, ptr noundef) #4

declare ptr @gs_currentdevice(ptr noundef) local_unnamed_addr #4

declare void @gs_make_mem_mono_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @gs_make_mem_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gdev_mem_device_for_bits(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @pattern_cache_enum(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  store ptr %8, ptr %3, align 8, !tbaa !14
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @pattern_cache_reloc(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #10
  store ptr %6, ptr %4, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @color_tile_elt_enum_ptrs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = icmp ult i32 %1, 184
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = udiv i32 %1, 184
  %8 = urem i32 %2, %7
  %9 = zext nneg i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 184
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = udiv i32 %2, %7
  switch i32 %12, label %20 [
    i32 0, label %13
    i32 1, label %15
  ]

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.gx_color_tile_s, ptr %11, i64 0, i32 6
  br label %17

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.gx_color_tile_s, ptr %11, i64 0, i32 7
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  store ptr %19, ptr %3, align 8, !tbaa !14
  br label %20

20:                                               ; preds = %17, %6, %4
  %21 = phi ptr [ null, %4 ], [ null, %6 ], [ @ptr_struct_procs, %17 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal void @color_tile_elt_reloc_ptrs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp ult i32 %1, 184
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = udiv i32 %1, 184
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %16, %7 ], [ %6, %5 ]
  %9 = phi ptr [ %17, %7 ], [ %0, %5 ]
  %10 = getelementptr inbounds %struct.gx_color_tile_s, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #10
  store ptr %12, ptr %10, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.gx_color_tile_s, ptr %9, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #10
  store ptr %15, ptr %13, align 8, !tbaa !49
  %16 = add nsw i32 %8, -1
  %17 = getelementptr inbounds i8, ptr %9, i64 184
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %7, !llvm.loop !156

19:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 16}
!6 = !{!"gs_memory_s", !7, i64 0}
!7 = !{!"gs_memory_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i64 0, i64 4, !12, i64 8, i64 8, !14, i64 16, i64 8, !14, i64 24, i64 8, !14, i64 32, i64 8, !14, i64 40, i64 4, !12, i64 44, i64 4, !12, i64 48, i64 4, !12, i64 52, i64 4, !12, i64 56, i64 2, !15, i64 58, i64 2, !15, i64 60, i64 2, !15, i64 62, i64 2, !15, i64 64, i64 4, !12, i64 68, i64 4, !12, i64 72, i64 8, !17, i64 80, i64 16, !17, i64 96, i64 4, !12, i64 100, i64 8, !17, i64 108, i64 8, !17, i64 116, i64 8, !17, i64 124, i64 16, !17, i64 144, i64 8, !18, i64 152, i64 8, !18, i64 160, i64 4, !12, i64 168, i64 8, !14, i64 176, i64 8, !14, i64 184, i64 8, !14, i64 192, i64 8, !14, i64 200, i64 8, !14, i64 208, i64 8, !14, i64 216, i64 8, !14, i64 224, i64 8, !14, i64 232, i64 8, !14, i64 240, i64 8, !14, i64 248, i64 8, !14, i64 256, i64 8, !14, i64 264, i64 8, !14, i64 272, i64 8, !14, i64 280, i64 8, !14, i64 288, i64 8, !14, i64 296, i64 8, !14, i64 304, i64 8, !14, i64 312, i64 8, !14, i64 320, i64 8, !14, i64 328, i64 8, !14, i64 336, i64 8, !14, i64 344, i64 8, !14, i64 352, i64 8, !14, i64 360, i64 8, !14, i64 368, i64 8, !14, i64 376, i64 8, !14, i64 384, i64 8, !14, i64 392, i64 8, !14, i64 400, i64 8, !14, i64 408, i64 8, !14, i64 416, i64 8, !14, i64 424, i64 8, !14, i64 432, i64 8, !14, i64 440, i64 8, !14, i64 448, i64 8, !14, i64 456, i64 8, !14, i64 464, i64 8, !14, i64 472, i64 8, !14, i64 480, i64 8, !14, i64 488, i64 8, !14, i64 496, i64 8, !14, i64 504, i64 8, !14, i64 512, i64 8, !14, i64 520, i64 8, !14}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !9, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!21, !8, i64 24}
!21 = !{!"gx_device_pattern_accum_s", !13, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !13, i64 40, !13, i64 44, !22, i64 48, !13, i64 64, !13, i64 68, !9, i64 72, !9, i64 80, !13, i64 96, !9, i64 100, !9, i64 108, !9, i64 116, !9, i64 124, !19, i64 144, !19, i64 152, !13, i64 160, !23, i64 168, !24, i64 192, !8, i64 488, !8, i64 496, !8, i64 504, !8, i64 512, !8, i64 520}
!22 = !{!"gx_device_color_info_s", !13, i64 0, !13, i64 4, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14}
!23 = !{!"gx_page_device_procs_s", !8, i64 0, !8, i64 8, !8, i64 16}
!24 = !{!"gx_device_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288}
!25 = !{!6, !8, i64 48}
!26 = !{!6, !8, i64 88}
!27 = !{!28, !8, i64 0}
!28 = !{!"gx_pattern_cache_s", !8, i64 0, !8, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !19, i64 32, !19, i64 40, !8, i64 48}
!29 = !{!28, !8, i64 8}
!30 = !{!28, !13, i64 16}
!31 = !{!28, !13, i64 20}
!32 = !{!28, !13, i64 24}
!33 = !{!28, !19, i64 32}
!34 = !{!28, !19, i64 40}
!35 = !{!28, !8, i64 48}
!36 = !{!37, !19, i64 0}
!37 = !{!"gx_color_tile_s", !19, i64 0, !13, i64 8, !38, i64 16, !13, i64 32, !39, i64 36, !41, i64 64, !44, i64 96, !44, i64 136, !13, i64 176, !13, i64 180}
!38 = !{!"gs_uid_s", !19, i64 0, !8, i64 8}
!39 = !{!"gs_matrix_s", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!40 = !{!"float", !9, i64 0}
!41 = !{!"gs_rect_s", !42, i64 0, !42, i64 16}
!42 = !{!"gs_point_s", !43, i64 0, !43, i64 8}
!43 = !{!"double", !9, i64 0}
!44 = !{!"gx_strip_bitmap_s", !8, i64 0, !13, i64 8, !45, i64 12, !19, i64 24, !16, i64 32, !16, i64 34, !16, i64 36, !16, i64 38}
!45 = !{!"gs_int_point_s", !13, i64 0, !13, i64 4}
!46 = !{!37, !19, i64 16}
!47 = !{!37, !8, i64 24}
!48 = !{!37, !8, i64 96}
!49 = !{!37, !8, i64 136}
!50 = !{!37, !13, i64 180}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !52}
!54 = !{!55, !8, i64 312}
!55 = !{!"gs_state_s", !8, i64 0, !56, i64 8, !58, i64 80, !13, i64 128, !16, i64 132, !13, i64 136, !40, i64 140, !59, i64 144, !13, i64 160, !13, i64 164, !8, i64 168, !9, i64 176, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !9, i64 232, !9, i64 264, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !39, i64 336, !13, i64 360, !39, i64 364, !13, i64 388, !8, i64 392, !8, i64 400, !13, i64 408, !13, i64 412, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !58, i64 456, !13, i64 504, !9, i64 508, !13, i64 512, !8, i64 520, !13, i64 528, !8, i64 536, !8, i64 544, !60, i64 552}
!56 = !{!"gx_line_params_s", !40, i64 0, !13, i64 4, !13, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !57, i64 32}
!57 = !{!"gx_dash_params_s", !8, i64 0, !13, i64 8, !40, i64 12, !13, i64 16, !40, i64 20, !13, i64 24, !13, i64 28, !40, i64 32}
!58 = !{!"gs_matrix_fixed_s", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !19, i64 24, !19, i64 32, !13, i64 40}
!59 = !{!"gs_fixed_point_s", !19, i64 0, !19, i64 8}
!60 = !{!"gs_state_client_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!61 = !{!21, !8, i64 512}
!62 = !{!21, !8, i64 520}
!63 = !{!21, !8, i64 504}
!64 = !{!65, !19, i64 184}
!65 = !{!"gs_pattern_instance_s", !66, i64 0, !67, i64 24, !8, i64 104, !39, i64 112, !41, i64 136, !13, i64 168, !45, i64 172, !19, i64 184}
!66 = !{!"rc_header_s", !19, i64 0, !8, i64 8, !8, i64 16}
!67 = !{!"gs_client_pattern_s", !38, i64 0, !13, i64 16, !13, i64 20, !41, i64 24, !40, i64 56, !40, i64 60, !8, i64 64, !8, i64 72}
!68 = !{!69, !8, i64 312}
!69 = !{!"gs_imager_state_s", !8, i64 0, !56, i64 8, !58, i64 80, !13, i64 128, !16, i64 132, !13, i64 136, !40, i64 140, !59, i64 144, !13, i64 160, !13, i64 164, !8, i64 168, !9, i64 176, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !9, i64 232, !9, i64 264, !8, i64 296, !8, i64 304, !8, i64 312}
!70 = !{!69, !8, i64 0}
!71 = !{!72, !13, i64 68}
!72 = !{!"gx_device_memory_s", !13, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !13, i64 40, !13, i64 44, !22, i64 48, !13, i64 64, !13, i64 68, !9, i64 72, !9, i64 80, !13, i64 96, !9, i64 100, !9, i64 108, !9, i64 116, !9, i64 124, !19, i64 144, !19, i64 152, !13, i64 160, !23, i64 168, !24, i64 192, !8, i64 488, !39, i64 496, !13, i64 520, !13, i64 524, !8, i64 528, !8, i64 536, !8, i64 544, !73, i64 552, !74, i64 568, !75, i64 592, !13, i64 600, !13, i64 604, !13, i64 608, !13, i64 612, !13, i64 616, !19, i64 624}
!73 = !{!"gs_const_string_s", !8, i64 0, !13, i64 8}
!74 = !{!"_c24", !19, i64 0, !13, i64 8, !13, i64 12, !13, i64 16}
!75 = !{!"gs_log2_scale_point_s", !13, i64 0, !13, i64 4}
!76 = !{!72, !8, i64 536}
!77 = !{!72, !13, i64 64}
!78 = distinct !{!78, !52}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !52}
!81 = !{!21, !13, i64 52}
!82 = !{!37, !13, i64 8}
!83 = !{i64 0, i64 8, !18, i64 8, i64 8, !14}
!84 = !{!65, !13, i64 44}
!85 = !{!37, !13, i64 32}
!86 = !{i64 0, i64 4, !87, i64 4, i64 4, !87, i64 8, i64 4, !87, i64 12, i64 4, !87, i64 16, i64 4, !87, i64 20, i64 4, !87}
!87 = !{!40, !40, i64 0}
!88 = !{i64 0, i64 8, !89, i64 8, i64 8, !89, i64 16, i64 8, !89, i64 24, i64 8, !89}
!89 = !{!43, !43, i64 0}
!90 = !{!65, !13, i64 168}
!91 = !{!37, !13, i64 176}
!92 = !{!72, !8, i64 528}
!93 = !{!44, !8, i64 0}
!94 = !{!72, !13, i64 520}
!95 = !{!44, !13, i64 8}
!96 = !{!44, !13, i64 12}
!97 = !{!44, !16, i64 32}
!98 = !{!44, !13, i64 16}
!99 = !{!44, !16, i64 34}
!100 = !{!44, !19, i64 24}
!101 = !{!44, !16, i64 38}
!102 = !{!44, !16, i64 36}
!103 = !{!37, !13, i64 148}
!104 = !{!37, !13, i64 152}
!105 = !{!72, !13, i64 52}
!106 = !{!37, !13, i64 108}
!107 = !{!37, !13, i64 112}
!108 = !{!109, !8, i64 72}
!109 = !{!"gx_device_color_s", !8, i64 0, !9, i64 8, !45, i64 48, !110, i64 56}
!110 = !{!"_mask", !111, i64 0, !19, i64 24, !8, i64 32}
!111 = !{!"gs_client_color_s", !112, i64 0, !8, i64 16}
!112 = !{!"gs_paint_color_s", !9, i64 0}
!113 = !{!21, !8, i64 496}
!114 = !{!21, !8, i64 192}
!115 = !{!65, !8, i64 104}
!116 = !{!55, !8, i64 392}
!117 = !{!55, !8, i64 400}
!118 = !{!119, !9, i64 123}
!119 = !{!"gx_path_s", !8, i64 0, !120, i64 8, !8, i64 40, !8, i64 48, !8, i64 56, !13, i64 64, !13, i64 68, !59, i64 72, !42, i64 88, !42, i64 104, !9, i64 120, !9, i64 121, !9, i64 122, !9, i64 123}
!120 = !{!"gs_fixed_rect_s", !59, i64 0, !59, i64 16}
!121 = !{!122, !9, i64 123}
!122 = !{!"gx_clip_path_s", !119, i64 0, !13, i64 128, !120, i64 136, !120, i64 168, !123, i64 200, !9, i64 264, !9, i64 265, !19, i64 272}
!123 = !{!"gx_clip_list_s", !124, i64 0, !8, i64 40, !8, i64 48, !13, i64 56, !13, i64 60}
!124 = !{!"gx_clip_rect_s", !8, i64 0, !8, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32}
!125 = !{!122, !9, i64 265}
!126 = !{!65, !8, i64 88}
!127 = !{i32 -25, i32 1}
!128 = !{!21, !8, i64 224}
!129 = !{!111, !8, i64 16}
!130 = !{i64 0, i64 16, !17, i64 16, i64 8, !14}
!131 = !{!109, !8, i64 0}
!132 = !{!65, !13, i64 40}
!133 = !{!134, !8, i64 48}
!134 = !{!"gs_color_space_type_s", !13, i64 0, !13, i64 4, !13, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88}
!135 = !{!109, !19, i64 80}
!136 = !{!109, !8, i64 88}
!137 = !{!138, !8, i64 32}
!138 = !{!"gs_memory_struct_type_s", !13, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!139 = !{!138, !8, i64 40}
!140 = !{!65, !13, i64 172}
!141 = !{!65, !13, i64 176}
!142 = !{!21, !13, i64 64}
!143 = !{!21, !13, i64 68}
!144 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 2, !15, i64 10, i64 2, !15, i64 12, i64 2, !15, i64 14, i64 2, !15}
!145 = !{!72, !8, i64 544}
!146 = !{!72, !8, i64 192}
!147 = !{!21, !8, i64 488}
!148 = !{!149, !13, i64 52}
!149 = !{!"gx_device_s", !13, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !13, i64 40, !13, i64 44, !22, i64 48, !13, i64 64, !13, i64 68, !9, i64 72, !9, i64 80, !13, i64 96, !9, i64 100, !9, i64 108, !9, i64 116, !9, i64 124, !19, i64 144, !19, i64 152, !13, i64 160, !23, i64 168, !24, i64 192}
!150 = !{!72, !8, i64 224}
!151 = !{!149, !8, i64 248}
!152 = !{!72, !8, i64 248}
!153 = !{!149, !8, i64 264}
!154 = !{!72, !8, i64 264}
!155 = !{!149, !8, i64 272}
!156 = distinct !{!156, !52}
