; ModuleID = 'gspcolor.c'
source_filename = "gspcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_rop_source_s = type { ptr, i32, i32, i64, [2 x i64], i32 }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_client_pattern_s, ptr, %struct.gs_matrix_s, %struct.gs_rect_s, i32, %struct.gs_int_point_s, i64 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gs_client_pattern_s = type { %struct.gs_uid_s, i32, i32, %struct.gs_rect_s, float, float, ptr, ptr }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_int_point_s = type { i32, i32 }
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
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gx_tile_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gx_device_tile_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_strip_bitmap_s, %struct.gx_device_memory_s, %struct.gs_int_point_s, %union._b }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%union._b = type { [37 x i64] }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_pattern_cache_s = type { ptr, ptr, i32, i32, i32, i64, i64, ptr }

@.str = private unnamed_addr constant [17 x i8] c"pattern instance\00", align 1
@st_pattern_instance = dso_local constant %struct.gs_memory_struct_type_s { i32 192, ptr @.str, ptr null, ptr null, ptr @pattern_instance_enum_ptrs, ptr @pattern_instance_reloc_ptrs, ptr null }, align 8
@gs_color_space_type_Pattern = dso_local constant %struct.gs_color_space_type_s { i32 9, i32 -1, i32 0, ptr @gx_init_Pattern, ptr @gx_no_concrete_space, ptr @gx_no_concretize_color, ptr null, ptr @gx_remap_Pattern, ptr @gx_install_Pattern, ptr @gx_adjust_cspace_Pattern, ptr @gx_adjust_color_Pattern, ptr @gx_enum_ptrs_Pattern, ptr @gx_reloc_ptrs_Pattern }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gs_makepattern\00", align 1
@gx_dc_pattern = dso_local constant %struct.gx_device_color_procs_s { ptr @gx_dc_pattern_load, ptr @gx_dc_pattern_fill_rectangle, ptr @gx_dc_default_fill_masked, ptr @dc_pattern_enum_ptrs, ptr @dc_pattern_reloc_ptrs }, align 8
@gx_dc_pure_masked = dso_local local_unnamed_addr constant %struct.gx_device_color_procs_s { ptr @gx_dc_pure_masked_load, ptr @gx_dc_pure_masked_fill_rect, ptr @gx_dc_default_fill_masked, ptr @dc_masked_enum_ptrs, ptr @dc_masked_reloc_ptrs }, align 8
@gx_dc_binary_masked = dso_local local_unnamed_addr constant %struct.gx_device_color_procs_s { ptr @gx_dc_binary_masked_load, ptr @gx_dc_binary_masked_fill_rect, ptr @gx_dc_default_fill_masked, ptr @dc_binary_masked_enum_ptrs, ptr @dc_binary_masked_reloc_ptrs }, align 8
@gx_dc_colored_masked = dso_local local_unnamed_addr constant %struct.gx_device_color_procs_s { ptr @gx_dc_colored_masked_load, ptr @gx_dc_colored_masked_fill_rect, ptr @gx_dc_default_fill_masked, ptr @dc_masked_enum_ptrs, ptr @dc_masked_reloc_ptrs }, align 8
@gx_dc_type_pattern = dso_local local_unnamed_addr global ptr @gx_dc_pattern, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"bitmap_PaintProc\00", align 1
@st_client_color = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@gx_dc_procs_ht_binary = external local_unnamed_addr constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_pure = external local_unnamed_addr constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_ht_colored = external local_unnamed_addr constant %struct.gx_device_color_procs_s, align 8
@gx_rop_no_source_0 = external constant %struct.gx_rop_source_s, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"gx_adjust_color_Pattern\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @pattern_instance_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %12 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 1, i32 7
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  store ptr %11, ptr %3, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @pattern_instance_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 1, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #9
  store ptr %6, ptr %4, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #9
  store ptr %9, ptr %7, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_init_Pattern(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  tail call void %10(ptr noundef %0, ptr noundef nonnull %7) #9
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

declare ptr @gx_no_concrete_space(ptr noundef, ptr noundef) #2

declare i32 @gx_no_concretize_color(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @gx_remap_Pattern(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_Pattern(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %8, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = tail call i32 %10(ptr noundef nonnull %7, ptr noundef %1) #9
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @gx_adjust_cspace_Pattern(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  tail call void %11(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2) #9
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_adjust_color_Pattern(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.gs_client_color_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = sext i32 %3 to i64
  %10 = load i64, ptr %6, align 8, !tbaa !33
  %11 = add nsw i64 %10, %9
  store i64 %11, ptr %6, align 8, !tbaa !33
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = tail call i32 @gs_state_free(ptr noundef %15) #9
  %17 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  tail call void %18(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.4) #9
  br label %19

19:                                               ; preds = %13, %8, %4
  %20 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %25, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  tail call void %27(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %2, i32 noundef %3) #9
  br label %28

28:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @gx_enum_ptrs_Pattern(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call ptr %12(ptr noundef nonnull %9, i32 noundef 56, i32 noundef %2, ptr noundef %3) #9
  br label %14

14:                                               ; preds = %4, %8
  %15 = phi ptr [ %13, %8 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal void @gx_reloc_ptrs_Pattern(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  tail call void %11(ptr noundef nonnull %8, i32 noundef 56, ptr noundef %2) #9
  br label %12

12:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_makepattern(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.gs_pattern_instance_s, align 8
  %7 = alloca %struct.gs_rect_s, align 8
  %8 = alloca %struct.gs_fixed_rect_s, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  %9 = icmp eq ptr %4, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8, !tbaa !40
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %11, %10 ], [ %4, %5 ]
  %14 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = tail call ptr %15(ptr noundef %13, ptr noundef nonnull @st_pattern_instance, ptr noundef nonnull @.str.1) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %212, label %18

18:                                               ; preds = %12
  store i64 1, ptr %16, align 8, !tbaa !33
  %19 = getelementptr inbounds %struct.rc_header_s, ptr %16, i64 0, i32 1
  store ptr %13, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.rc_header_s, ptr %16, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %20, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !51
  %21 = tail call ptr @gs_state_copy(ptr noundef %3, ptr noundef %13) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %208, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @gs_concat(ptr noundef nonnull %21, ptr noundef %2) #9
  %25 = tail call i32 @gs_newpath(ptr noundef nonnull %21) #9
  tail call void @gs_set_logical_op(ptr noundef nonnull %21, i32 noundef 252) #9
  %26 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %26, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !53
  %27 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 2
  store ptr %21, ptr %27, align 8, !tbaa !18
  %28 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 1, i32 4
  %29 = load float, ptr %28, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.gs_state_s, ptr %21, i64 0, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !58
  %32 = fmul float %29, %31
  %33 = fpext float %32 to double
  %34 = getelementptr inbounds %struct.gs_state_s, ptr %21, i64 0, i32 2, i32 1
  %35 = load float, ptr %34, align 4, !tbaa !59
  %36 = fmul float %29, %35
  %37 = fpext float %36 to double
  %38 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 1, i32 5
  %39 = load float, ptr %38, align 4, !tbaa !60
  %40 = getelementptr inbounds %struct.gs_state_s, ptr %21, i64 0, i32 2, i32 2
  %41 = load float, ptr %40, align 8, !tbaa !61
  %42 = fmul float %39, %41
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds %struct.gs_state_s, ptr %21, i64 0, i32 2, i32 3
  %45 = load float, ptr %44, align 4, !tbaa !62
  %46 = fmul float %39, %45
  %47 = fpext float %46 to double
  %48 = fcmp oeq float %32, 0.000000e+00
  %49 = fcmp oeq float %46, 0.000000e+00
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %23, %51
  %53 = phi double [ %47, %51 ], [ %37, %23 ]
  %54 = phi double [ %33, %51 ], [ %43, %23 ]
  %55 = phi double [ %37, %51 ], [ %47, %23 ]
  %56 = phi double [ %43, %51 ], [ %33, %23 ]
  %57 = fcmp olt double %56, 0.000000e+00
  %58 = fneg double %56
  %59 = fneg double %53
  %60 = select i1 %57, double %59, double %53
  %61 = select i1 %57, double %58, double %56
  %62 = fcmp olt double %55, 0.000000e+00
  %63 = fneg double %54
  %64 = fneg double %55
  %65 = select i1 %62, double %63, double %54
  %66 = select i1 %62, double %64, double %55
  %67 = fptrunc double %61 to float
  %68 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 3
  store float %67, ptr %68, align 8, !tbaa !63
  %69 = fptrunc double %60 to float
  %70 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 3, i32 1
  store float %69, ptr %70, align 4, !tbaa !64
  %71 = fptrunc double %65 to float
  %72 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 3, i32 2
  store float %71, ptr %72, align 8, !tbaa !65
  %73 = fptrunc double %66 to float
  %74 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 3, i32 3
  store float %73, ptr %74, align 4, !tbaa !66
  %75 = getelementptr inbounds %struct.gs_state_s, ptr %21, i64 0, i32 2, i32 4
  %76 = load float, ptr %75, align 8, !tbaa !67
  %77 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 3, i32 4
  store float %76, ptr %77, align 8, !tbaa !68
  %78 = getelementptr inbounds %struct.gs_state_s, ptr %21, i64 0, i32 2, i32 5
  %79 = load float, ptr %78, align 4, !tbaa !69
  %80 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 3, i32 5
  store float %79, ptr %80, align 4, !tbaa !70
  %81 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 1, i32 3
  %82 = call i32 @gs_bbox_transform(ptr noundef nonnull %81, ptr noundef nonnull %30, ptr noundef nonnull %7) #9
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %205, label %84

84:                                               ; preds = %52
  %85 = load float, ptr %68, align 8, !tbaa !63
  %86 = load float, ptr %74, align 4, !tbaa !66
  %87 = load float, ptr %70, align 4, !tbaa !64
  %88 = load float, ptr %72, align 8
  %89 = fneg float %87
  %90 = fmul float %88, %89
  %91 = call float @llvm.fmuladd.f32(float %85, float %86, float %90)
  %92 = call float @llvm.fabs.f32(float %91)
  %93 = fpext float %92 to double
  %94 = fcmp olt double %93, 0x3EB0C6F7A0B5ED8D
  br i1 %94, label %205, label %95

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1
  %97 = load double, ptr %96, align 8, !tbaa !71
  %98 = load double, ptr %7, align 8, !tbaa !72
  %99 = fsub double %97, %98
  %100 = fptrunc double %99 to float
  %101 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1, i32 1
  %102 = load double, ptr %101, align 8, !tbaa !73
  %103 = getelementptr inbounds %struct.gs_point_s, ptr %7, i64 0, i32 1
  %104 = load double, ptr %103, align 8, !tbaa !74
  %105 = fsub double %102, %104
  %106 = fptrunc double %105 to float
  %107 = fpext float %100 to double
  %108 = fadd double %107, 8.000000e-01
  %109 = fptosi double %108 to i32
  %110 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 6
  store i32 %109, ptr %110, align 4, !tbaa !75
  %111 = fpext float %106 to double
  %112 = fadd double %111, 8.000000e-01
  %113 = fptosi double %112 to i32
  %114 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 6, i32 1
  store i32 %113, ptr %114, align 8, !tbaa !76
  %115 = fcmp oeq float %87, 0.000000e+00
  %116 = fcmp oeq float %88, 0.000000e+00
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %118, label %143

118:                                              ; preds = %95
  %119 = call float @llvm.fabs.f32(float %85)
  %120 = fpext float %119 to double
  %121 = fsub double %120, %107
  %122 = call double @llvm.fabs.f64(double %121)
  %123 = fcmp olt double %122, 5.000000e-01
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = call float @llvm.fabs.f32(float %86)
  %126 = fpext float %125 to double
  %127 = fsub double %126, %111
  %128 = call double @llvm.fabs.f64(double %127)
  %129 = fcmp olt double %128, 5.000000e-01
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = sitofp i32 %109 to float
  %132 = fdiv float %131, %85
  %133 = call float @llvm.fabs.f32(float %132)
  %134 = fpext float %133 to double
  %135 = sitofp i32 %113 to float
  %136 = fdiv float %135, %86
  %137 = call float @llvm.fabs.f32(float %136)
  %138 = fpext float %137 to double
  %139 = call i32 @gs_scale(ptr noundef nonnull %21, double noundef %134, double noundef %138) #9
  %140 = call fastcc i32 @compute_inst_matrix(ptr noundef nonnull %6, ptr noundef nonnull %21, ptr noundef nonnull %7)
  %141 = icmp slt i32 %140, 0
  %142 = select i1 %141, i32 5, i32 0
  br label %143

143:                                              ; preds = %130, %95, %118, %124
  %144 = phi i32 [ %82, %124 ], [ %82, %118 ], [ %82, %95 ], [ %140, %130 ]
  %145 = phi i32 [ 0, %124 ], [ 0, %118 ], [ 0, %95 ], [ %142, %130 ]
  switch i32 %145, label %212 [
    i32 0, label %146
    i32 5, label %205
  ]

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 4
  %148 = call i32 @gs_bbox_transform_inverse(ptr noundef nonnull %7, ptr noundef nonnull %68, ptr noundef nonnull %147) #9
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %205, label %150

150:                                              ; preds = %146
  %151 = load float, ptr %68, align 8, !tbaa !63
  %152 = call float @llvm.fabs.f32(float %151)
  %153 = fpext float %152 to double
  %154 = load i32, ptr %110, align 4, !tbaa !75
  %155 = sitofp i32 %154 to double
  %156 = fcmp oeq double %153, %155
  %157 = load float, ptr %70, align 4
  %158 = fcmp oeq float %157, 0.000000e+00
  %159 = select i1 %156, i1 %158, i1 false
  %160 = load float, ptr %72, align 8
  %161 = fcmp oeq float %160, 0.000000e+00
  %162 = select i1 %159, i1 %161, i1 false
  br i1 %162, label %163, label %171

163:                                              ; preds = %150
  %164 = load float, ptr %74, align 4, !tbaa !66
  %165 = call float @llvm.fabs.f32(float %164)
  %166 = fpext float %165 to double
  %167 = load i32, ptr %114, align 8, !tbaa !76
  %168 = sitofp i32 %167 to double
  %169 = fcmp oeq double %166, %168
  %170 = zext i1 %169 to i32
  br label %171

171:                                              ; preds = %163, %150
  %172 = phi i32 [ 0, %150 ], [ %170, %163 ]
  %173 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 5
  store i32 %172, ptr %173, align 8, !tbaa !77
  %174 = load float, ptr %77, align 8, !tbaa !68
  %175 = fpext float %174 to double
  %176 = load double, ptr %7, align 8, !tbaa !72
  %177 = fsub double %175, %176
  %178 = fmul double %177, 4.096000e+03
  %179 = fptosi double %178 to i64
  %180 = load float, ptr %80, align 4, !tbaa !70
  %181 = fpext float %180 to double
  %182 = load double, ptr %103, align 8, !tbaa !74
  %183 = fsub double %181, %182
  %184 = fmul double %183, 4.096000e+03
  %185 = fptosi double %184 to i64
  %186 = call i32 @gx_translate_to_fixed(ptr noundef nonnull %21, i64 noundef %179, i64 noundef %185) #9
  %187 = load double, ptr %7, align 8, !tbaa !72
  %188 = fptrunc double %187 to float
  store float %188, ptr %77, align 8, !tbaa !68
  %189 = load double, ptr %103, align 8, !tbaa !74
  %190 = fptrunc double %189 to float
  store float %190, ptr %80, align 4, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %191 = load i32, ptr %110, align 4, !tbaa !75
  %192 = sext i32 %191 to i64
  %193 = shl nsw i64 %192, 12
  %194 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1
  store i64 %193, ptr %194, align 8, !tbaa !78
  %195 = load i32, ptr %114, align 8, !tbaa !76
  %196 = sext i32 %195 to i64
  %197 = shl nsw i64 %196, 12
  %198 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1, i32 1
  store i64 %197, ptr %198, align 8, !tbaa !80
  %199 = call i32 @gx_clip_to_rectangle(ptr noundef nonnull %21, ptr noundef nonnull %8) #9
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %171
  %202 = call i64 @gs_next_ids(i32 noundef 1) #9
  %203 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 7
  store i64 %202, ptr %203, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %16, ptr noundef nonnull align 8 dereferenceable(192) %6, i64 192, i1 false), !tbaa.struct !82
  %204 = getelementptr inbounds %struct.gs_client_color_s, ptr %0, i64 0, i32 1
  store ptr %16, ptr %204, align 8, !tbaa !30
  br label %212

205:                                              ; preds = %84, %171, %146, %52, %143
  %206 = phi i32 [ %82, %52 ], [ %144, %143 ], [ %148, %146 ], [ %199, %171 ], [ -15, %84 ]
  %207 = call i32 @gs_state_free(ptr noundef nonnull %21) #9
  br label %208

208:                                              ; preds = %18, %205
  %209 = phi i32 [ %206, %205 ], [ -25, %18 ]
  %210 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %13, i64 0, i32 11
  %211 = load ptr, ptr %210, align 8, !tbaa !34
  call void %211(ptr noundef %13, ptr noundef nonnull %16, ptr noundef nonnull @.str.1) #9
  br label %212

212:                                              ; preds = %12, %208, %201, %143
  %213 = phi i32 [ %209, %208 ], [ undef, %143 ], [ 0, %201 ], [ -25, %12 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #9
  ret i32 %213
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @gs_state_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_concat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_newpath(ptr noundef) local_unnamed_addr #2

declare void @gs_set_logical_op(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @compute_inst_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 1, i32 4
  %5 = load float, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2
  %7 = load float, ptr %6, align 8, !tbaa !58
  %8 = fmul float %5, %7
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = fmul float %5, %11
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 1, i32 5
  %15 = load float, ptr %14, align 4, !tbaa !60
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !61
  %18 = fmul float %15, %17
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !62
  %22 = fmul float %15, %21
  %23 = fpext float %22 to double
  %24 = fcmp oeq float %8, 0.000000e+00
  %25 = fcmp oeq float %22, 0.000000e+00
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %3, %27
  %29 = phi double [ %23, %27 ], [ %13, %3 ]
  %30 = phi double [ %9, %27 ], [ %19, %3 ]
  %31 = phi double [ %13, %27 ], [ %23, %3 ]
  %32 = phi double [ %19, %27 ], [ %9, %3 ]
  %33 = fcmp olt double %32, 0.000000e+00
  %34 = fneg double %32
  %35 = fneg double %29
  %36 = select i1 %33, double %35, double %29
  %37 = select i1 %33, double %34, double %32
  %38 = fcmp olt double %31, 0.000000e+00
  %39 = fneg double %30
  %40 = fneg double %31
  %41 = select i1 %38, double %39, double %30
  %42 = select i1 %38, double %40, double %31
  %43 = fptrunc double %37 to float
  %44 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 3
  store float %43, ptr %44, align 8, !tbaa !63
  %45 = fptrunc double %36 to float
  %46 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 3, i32 1
  store float %45, ptr %46, align 4, !tbaa !64
  %47 = fptrunc double %41 to float
  %48 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 3, i32 2
  store float %47, ptr %48, align 8, !tbaa !65
  %49 = fptrunc double %42 to float
  %50 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 3, i32 3
  store float %49, ptr %50, align 4, !tbaa !66
  %51 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2, i32 4
  %52 = load float, ptr %51, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 3, i32 4
  store float %52, ptr %53, align 8, !tbaa !68
  %54 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2, i32 5
  %55 = load float, ptr %54, align 4, !tbaa !69
  %56 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 3, i32 5
  store float %55, ptr %56, align 4, !tbaa !70
  %57 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %0, i64 0, i32 1, i32 3
  %58 = tail call i32 @gs_bbox_transform(ptr noundef nonnull %57, ptr noundef nonnull %6, ptr noundef %2) #9
  ret i32 %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare i32 @gs_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @gs_bbox_transform_inverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_translate_to_fixed(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gx_clip_to_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #2

declare i32 @gs_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setpattern(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.gs_color_space_s, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  %10 = getelementptr inbounds %struct.gs_color_space_s, ptr %3, i64 0, i32 1
  %11 = getelementptr inbounds %struct.gs_color_space_s, ptr %3, i64 0, i32 1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !85
  store i32 1, ptr %10, align 8, !tbaa !23
  store ptr @gs_color_space_type_Pattern, ptr %3, align 8, !tbaa !24
  %12 = call i32 @gs_setcolorspace(ptr noundef %0, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi i32 [ %12, %9 ], [ 0, %2 ]
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 @gs_setcolor(ptr noundef %0, ptr noundef %1) #9
  br label %18

18:                                               ; preds = %13, %16
  %19 = phi i32 [ %17, %16 ], [ %14, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setpatternspace(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.gs_color_space_s, align 8
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load i32, ptr %5, align 8, !tbaa !84
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  %9 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1
  %10 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !85
  store i32 1, ptr %9, align 8, !tbaa !23
  store ptr @gs_color_space_type_Pattern, ptr %2, align 8, !tbaa !24
  %11 = call i32 @gs_setcolorspace(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ 0, %1 ]
  ret i32 %13
}

declare i32 @gs_setcolor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_setcolorspace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @gs_getpattern(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_client_color_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %3, i64 0, i32 1
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_makebitmappattern(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.gs_client_pattern_s, align 8
  %7 = alloca %struct.gs_matrix_s, align 4
  %8 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %9 = getelementptr inbounds %struct.gx_tile_bitmap_s, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.gx_tile_bitmap_s, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !88
  %13 = add nsw i32 %12, 63
  %14 = ashr i32 %13, 3
  %15 = and i32 %14, -8
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %5
  %18 = tail call i64 @gs_next_ids(i32 noundef 1) #9
  store i64 %18, ptr %6, align 8, !tbaa !89
  %19 = getelementptr inbounds %struct.gs_uid_s, ptr %6, i64 0, i32 1
  store ptr null, ptr %19, align 8, !tbaa !90
  %20 = icmp eq i32 %2, 0
  %21 = select i1 %20, i32 1, i32 2
  %22 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %6, i64 0, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !91
  %23 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %6, i64 0, i32 2
  store i32 1, ptr %23, align 4, !tbaa !92
  %24 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %6, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %25 = load i32, ptr %11, align 4, !tbaa !88
  %26 = sitofp i32 %25 to double
  %27 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %6, i64 0, i32 3, i32 1
  store double %26, ptr %27, align 8, !tbaa !93
  %28 = getelementptr inbounds %struct.gx_tile_bitmap_s, ptr %1, i64 0, i32 5
  %29 = load i16, ptr %28, align 2, !tbaa !94
  %30 = uitofp i16 %29 to double
  %31 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %6, i64 0, i32 3, i32 1, i32 1
  store double %30, ptr %31, align 8, !tbaa !95
  %32 = sitofp i32 %25 to float
  %33 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %6, i64 0, i32 4
  store float %32, ptr %33, align 8, !tbaa !96
  %34 = uitofp i16 %29 to float
  %35 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %6, i64 0, i32 5
  store float %34, ptr %35, align 4, !tbaa !97
  %36 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %6, i64 0, i32 6
  store ptr @bitmap_PaintProc, ptr %36, align 8, !tbaa !98
  %37 = load ptr, ptr %1, align 8, !tbaa !99
  %38 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %6, i64 0, i32 7
  store ptr %37, ptr %38, align 8, !tbaa !9
  call void @gs_make_identity(ptr noundef nonnull %7) #9
  %39 = call i32 @gs_currentmatrix(ptr noundef %3, ptr noundef nonnull %8) #9
  %40 = getelementptr inbounds %struct.gs_matrix_s, ptr %8, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !100
  %42 = fcmp ogt float %41, 0.000000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %17
  %44 = getelementptr inbounds %struct.gs_matrix_s, ptr %7, i64 0, i32 3
  store float -1.000000e+00, ptr %44, align 4, !tbaa !100
  br label %45

45:                                               ; preds = %43, %17
  %46 = call i32 @gs_setmatrix(ptr noundef %3, ptr noundef nonnull %7) #9
  %47 = call i32 @gs_makepattern(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4)
  %48 = call i32 @gs_setmatrix(ptr noundef %3, ptr noundef nonnull %8) #9
  br label %49

49:                                               ; preds = %5, %45
  %50 = phi i32 [ 0, %45 ], [ -15, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #9
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @bitmap_PaintProc(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = alloca %struct.gs_image_s, align 8
  %4 = alloca i32, align 4
  %5 = tail call ptr @gs_state_memory(ptr noundef %1) #9
  %6 = tail call ptr @gs_image_enum_alloc(ptr noundef %5, ptr noundef nonnull @.str.3) #9
  %7 = getelementptr inbounds %struct.gs_client_color_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %8, i64 0, i32 1, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %11 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %8, i64 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @gs_image_t_init_mask(ptr noundef nonnull %3, i32 noundef 1) #9
  br label %18

15:                                               ; preds = %2
  call void @gs_image_t_init_gray(ptr noundef nonnull %3) #9
  %16 = getelementptr inbounds %struct.gs_image_s, ptr %3, i64 0, i32 5
  store float 1.000000e+00, ptr %16, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.gs_image_s, ptr %3, i64 0, i32 5, i64 1
  store float 0.000000e+00, ptr %17, align 4, !tbaa !56
  br label %18

18:                                               ; preds = %15, %14
  %19 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %8, i64 0, i32 1, i32 4
  %20 = load float, ptr %19, align 8, !tbaa !96
  %21 = fptosi float %20 to i32
  store i32 %21, ptr %3, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %8, i64 0, i32 1, i32 5
  %23 = load float, ptr %22, align 4, !tbaa !97
  %24 = fptosi float %23 to i32
  %25 = getelementptr inbounds %struct.gs_image_s, ptr %3, i64 0, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !103
  %26 = add nsw i32 %21, 7
  %27 = ashr i32 %26, 3
  %28 = call i32 @gs_image_init(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 0, ptr noundef %1) #9
  %29 = load i32, ptr %25, align 4, !tbaa !103
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %18
  %32 = add nsw i32 %21, 63
  %33 = ashr i32 %32, 3
  %34 = and i32 %33, -8
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %31, %36
  %37 = phi ptr [ %10, %31 ], [ %40, %36 ]
  %38 = phi i32 [ %29, %31 ], [ %41, %36 ]
  %39 = call i32 @gs_image_next(ptr noundef %6, ptr noundef %37, i32 noundef %27, ptr noundef nonnull %4) #9
  %40 = getelementptr inbounds i8, ptr %37, i64 %35
  %41 = add nsw i32 %38, -1
  %42 = icmp sgt i32 %38, 1
  br i1 %42, label %36, label %43, !llvm.loop !104

43:                                               ; preds = %36, %18
  call void @gs_image_cleanup(ptr noundef %6) #9
  %44 = call ptr @gs_state_memory(ptr noundef %1) #9
  %45 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = call ptr @gs_state_memory(ptr noundef %1) #9
  call void %46(ptr noundef %47, ptr noundef %6, ptr noundef nonnull @.str.3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #9
  ret i32 0
}

declare void @gs_make_identity(ptr noundef) local_unnamed_addr #2

declare i32 @gs_currentmatrix(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_setmatrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = tail call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !106
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %13

7:                                                ; preds = %10
  %8 = tail call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !106
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13, !llvm.loop !107

10:                                               ; preds = %4, %7
  %11 = tail call i32 @gx_pattern_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !107

13:                                               ; preds = %7, %10, %4
  %14 = phi i32 [ 0, %4 ], [ %11, %10 ], [ %11, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pattern_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #1 {
  %9 = alloca %struct.gx_rop_source_s, align 8
  %10 = alloca %struct.gx_device_tile_clip_s, align 8
  %11 = alloca %struct.gs_rect_s, align 8
  %12 = alloca %struct.gs_rect_s, align 8
  %13 = alloca %struct.gx_strip_bitmap_s, align 8
  %14 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %300, label %17

17:                                               ; preds = %8
  %18 = icmp eq ptr %7, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  %22 = tail call i64 %21(ptr noundef %5, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #9
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) @gx_rop_no_source_0, i64 48, i1 false), !tbaa.struct !113
  %25 = getelementptr inbounds %struct.gx_rop_source_s, ptr %9, i64 0, i32 4
  %26 = getelementptr inbounds %struct.gx_rop_source_s, ptr %9, i64 0, i32 4, i64 1
  store i64 %22, ptr %26, align 8, !tbaa !52
  store i64 %22, ptr %25, align 8, !tbaa !52
  br label %27

27:                                               ; preds = %24, %19, %17
  %28 = phi ptr [ %7, %17 ], [ %9, %24 ], [ @gx_rop_no_source_0, %19 ]
  %29 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %10) #9
  %30 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !114
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.gx_color_tile_s, ptr %31, i64 0, i32 7
  %35 = call i32 @tile_clip_initialize(ptr noundef nonnull %10, ptr noundef nonnull %34, ptr noundef %5, i32 noundef 0, i32 noundef 0) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %298, label %37

37:                                               ; preds = %33, %27
  %38 = phi i32 [ 0, %27 ], [ %35, %33 ]
  %39 = phi ptr [ undef, %27 ], [ %34, %33 ]
  %40 = phi ptr [ %5, %27 ], [ %10, %33 ]
  %41 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !117
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %88, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 4, i32 4
  %46 = load float, ptr %45, align 4, !tbaa !120
  %47 = fpext float %46 to double
  %48 = fadd double %47, 5.000000e-01
  %49 = fptosi double %48 to i32
  %50 = sub nsw i32 0, %49
  %51 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 6, i32 4
  %52 = load i16, ptr %51, align 8, !tbaa !121
  %53 = zext i16 %52 to i32
  %54 = call i32 @imod(i32 noundef %50, i32 noundef %53) #9
  %55 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 4, i32 5
  %56 = load float, ptr %55, align 4, !tbaa !122
  %57 = fpext float %56 to double
  %58 = fadd double %57, 5.000000e-01
  %59 = fptosi double %58 to i32
  %60 = sub nsw i32 0, %59
  %61 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 6, i32 5
  %62 = load i16, ptr %61, align 2, !tbaa !123
  %63 = zext i16 %62 to i32
  %64 = call i32 @imod(i32 noundef %60, i32 noundef %63) #9
  %65 = and i32 %6, 563
  %66 = icmp eq i32 %65, 48
  %67 = and i1 %18, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %44
  %69 = getelementptr inbounds %struct.gx_device_s, ptr %40, i64 0, i32 21, i32 34
  %70 = load ptr, ptr %69, align 8, !tbaa !124
  %71 = call i32 %70(ptr noundef %40, ptr noundef nonnull %29, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef -1, i64 noundef -1, i32 noundef %54, i32 noundef %64) #9
  br label %298

72:                                               ; preds = %44
  %73 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 35
  %74 = load ptr, ptr %73, align 8, !tbaa !125
  %75 = load ptr, ptr %28, align 8, !tbaa !126
  %76 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !128
  %78 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !129
  %80 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 3
  %81 = load i64, ptr %80, align 8, !tbaa !130
  %82 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !131
  %84 = icmp eq i32 %83, 0
  %85 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 4
  %86 = select i1 %84, ptr null, ptr %85
  %87 = call i32 %74(ptr noundef %5, ptr noundef %75, i32 noundef %77, i32 noundef %79, i64 noundef %81, ptr noundef %86, ptr noundef nonnull %29, ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %54, i32 noundef %64, i32 noundef %6) #9
  br label %298

88:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #9
  %89 = add nsw i32 %3, %1
  %90 = add nsw i32 %4, %2
  %91 = sitofp i32 %1 to double
  store double %91, ptr %11, align 8, !tbaa !72
  %92 = sitofp i32 %2 to double
  %93 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  store double %92, ptr %93, align 8, !tbaa !74
  %94 = sitofp i32 %89 to double
  %95 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1
  store double %94, ptr %95, align 8, !tbaa !71
  %96 = sitofp i32 %90 to double
  %97 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1, i32 1
  store double %96, ptr %97, align 8, !tbaa !73
  %98 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 4
  %99 = call i32 @gs_bbox_transform_inverse(ptr noundef nonnull %11, ptr noundef nonnull %98, ptr noundef nonnull %12) #9
  %100 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 4, i32 4
  %101 = load float, ptr %100, align 4, !tbaa !120
  %102 = fpext float %101 to double
  %103 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 4, i32 5
  %104 = load float, ptr %103, align 4, !tbaa !122
  %105 = fpext float %104 to double
  %106 = load double, ptr %12, align 8, !tbaa !72
  %107 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 5
  %108 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 5, i32 1
  %109 = load double, ptr %108, align 8, !tbaa !132
  %110 = fsub double %106, %109
  %111 = fadd double %110, 0x3EB0C6F7A0B5ED8D
  %112 = call double @llvm.floor.f64(double %111)
  %113 = fptosi double %112 to i32
  %114 = getelementptr inbounds %struct.gs_rect_s, ptr %12, i64 0, i32 1
  %115 = load double, ptr %114, align 8, !tbaa !71
  %116 = load double, ptr %107, align 8, !tbaa !133
  %117 = fsub double %115, %116
  %118 = fadd double %117, 0xBEB0C6F7A0B5ED8D
  %119 = call double @llvm.ceil.f64(double %118)
  %120 = fptosi double %119 to i32
  %121 = getelementptr inbounds %struct.gs_point_s, ptr %12, i64 0, i32 1
  %122 = load double, ptr %121, align 8, !tbaa !74
  %123 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 5, i32 1, i32 1
  %124 = load double, ptr %123, align 8, !tbaa !134
  %125 = fsub double %122, %124
  %126 = fadd double %125, 0x3EB0C6F7A0B5ED8D
  %127 = call double @llvm.floor.f64(double %126)
  %128 = fptosi double %127 to i32
  %129 = getelementptr inbounds %struct.gs_rect_s, ptr %12, i64 0, i32 1, i32 1
  %130 = load double, ptr %129, align 8, !tbaa !73
  %131 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 5, i32 0, i32 1
  %132 = load double, ptr %131, align 8, !tbaa !135
  %133 = fsub double %130, %132
  %134 = fadd double %133, 0xBEB0C6F7A0B5ED8D
  %135 = call double @llvm.ceil.f64(double %134)
  %136 = fptosi double %135 to i32
  %137 = icmp slt i32 %113, %120
  br i1 %137, label %138, label %296

138:                                              ; preds = %88
  %139 = icmp slt i32 %128, %136
  %140 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 4, i32 2
  %141 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 4, i32 1
  %142 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 4, i32 3
  %143 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 6, i32 2
  %144 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 6, i32 2, i32 1
  %145 = icmp eq ptr %40, %10
  %146 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %39, i64 0, i32 4
  %147 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %39, i64 0, i32 5
  %148 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 3
  %149 = and i32 %6, 563
  %150 = icmp eq i32 %149, 48
  %151 = and i1 %18, %150
  %152 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 6, i32 1
  %153 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %13, i64 0, i32 1
  %154 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %13, i64 0, i32 4
  %155 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %13, i64 0, i32 2
  %156 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %13, i64 0, i32 5
  %157 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %13, i64 0, i32 2, i32 1
  %158 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 6, i32 3
  %159 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %13, i64 0, i32 3
  %160 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %13, i64 0, i32 6
  %161 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %13, i64 0, i32 7
  %162 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 35
  %163 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 2
  %164 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 1
  %165 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 5
  %166 = getelementptr inbounds %struct.gx_rop_source_s, ptr %28, i64 0, i32 4
  %167 = getelementptr inbounds %struct.gx_device_s, ptr %40, i64 0, i32 21, i32 10
  %168 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 6, i32 1
  %169 = getelementptr inbounds %struct.gx_color_tile_s, ptr %15, i64 0, i32 6, i32 3
  br label %170

170:                                              ; preds = %138, %291
  %171 = phi i32 [ undef, %138 ], [ %293, %291 ]
  %172 = phi i32 [ %113, %138 ], [ %294, %291 ]
  %173 = phi i32 [ %38, %138 ], [ %292, %291 ]
  br i1 %139, label %174, label %291

174:                                              ; preds = %170
  %175 = sitofp i32 %172 to float
  br label %179

176:                                              ; preds = %287
  %177 = add i32 %181, 1
  %178 = icmp eq i32 %177, %136
  br i1 %178, label %291, label %179, !llvm.loop !136

179:                                              ; preds = %174, %176
  %180 = phi i32 [ %171, %174 ], [ %290, %176 ]
  %181 = phi i32 [ %128, %174 ], [ %177, %176 ]
  %182 = phi i32 [ %173, %174 ], [ %288, %176 ]
  %183 = load float, ptr %98, align 4, !tbaa !137
  %184 = load float, ptr %140, align 4, !tbaa !138
  %185 = sitofp i32 %181 to float
  %186 = fmul float %184, %185
  %187 = call float @llvm.fmuladd.f32(float %183, float %175, float %186)
  %188 = fpext float %187 to double
  %189 = fadd double %102, %188
  %190 = fptosi double %189 to i32
  %191 = load float, ptr %141, align 4, !tbaa !139
  %192 = load float, ptr %142, align 4, !tbaa !140
  %193 = fmul float %192, %185
  %194 = call float @llvm.fmuladd.f32(float %191, float %175, float %193)
  %195 = fpext float %194 to double
  %196 = fadd double %105, %195
  %197 = fptosi double %196 to i32
  %198 = load i32, ptr %143, align 4, !tbaa !141
  %199 = load i32, ptr %144, align 4, !tbaa !142
  %200 = icmp slt i32 %190, %1
  %201 = sub nsw i32 %1, %190
  %202 = select i1 %200, i32 %201, i32 0
  %203 = sub nsw i32 %198, %202
  %204 = select i1 %200, i32 %201, i32 0
  %205 = call i32 @llvm.smax.i32(i32 %190, i32 %1)
  %206 = icmp slt i32 %197, %2
  %207 = sub nsw i32 %2, %197
  %208 = select i1 %206, i32 %207, i32 0
  %209 = sub nsw i32 %199, %208
  %210 = select i1 %206, i32 %207, i32 0
  %211 = call i32 @llvm.smax.i32(i32 %197, i32 %2)
  %212 = add nsw i32 %203, %205
  %213 = icmp sgt i32 %212, %89
  %214 = sub nsw i32 %89, %205
  %215 = select i1 %213, i32 %214, i32 %203
  %216 = add nsw i32 %209, %211
  %217 = icmp sgt i32 %216, %90
  %218 = sub nsw i32 %90, %211
  %219 = select i1 %217, i32 %218, i32 %209
  %220 = icmp sgt i32 %215, 0
  %221 = icmp sgt i32 %219, 0
  %222 = select i1 %220, i1 %221, i1 false
  br i1 %222, label %223, label %287

223:                                              ; preds = %179
  br i1 %145, label %224, label %233

224:                                              ; preds = %223
  %225 = sub nsw i32 %204, %205
  %226 = load i16, ptr %146, align 8, !tbaa !121
  %227 = zext i16 %226 to i32
  %228 = call i32 @imod(i32 noundef %225, i32 noundef %227) #9
  %229 = sub nsw i32 %210, %211
  %230 = load i16, ptr %147, align 2, !tbaa !123
  %231 = zext i16 %230 to i32
  %232 = call i32 @imod(i32 noundef %229, i32 noundef %231) #9
  call void @tile_clip_set_phase(ptr noundef nonnull %10, i32 noundef %228, i32 noundef %232) #9
  br label %233

233:                                              ; preds = %224, %223
  %234 = load ptr, ptr %29, align 8, !tbaa !143
  %235 = icmp eq i32 %215, %3
  %236 = icmp eq i32 %219, %4
  %237 = select i1 %235, i1 %236, i1 false
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i64, ptr %148, align 8, !tbaa !130
  br label %240

240:                                              ; preds = %233, %238
  %241 = phi i64 [ %239, %238 ], [ 0, %233 ]
  br i1 %151, label %242, label %253

242:                                              ; preds = %240
  %243 = load ptr, ptr %167, align 8, !tbaa !144
  %244 = load i32, ptr %168, align 8, !tbaa !145
  %245 = mul nsw i32 %244, %210
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, ptr %234, i64 %246
  br i1 %237, label %248, label %250

248:                                              ; preds = %242
  %249 = load i64, ptr %169, align 8, !tbaa !146
  br label %250

250:                                              ; preds = %242, %248
  %251 = phi i64 [ %249, %248 ], [ 0, %242 ]
  %252 = call i32 %243(ptr noundef %40, ptr noundef %247, i32 noundef %204, i32 noundef %244, i64 noundef %251, i32 noundef %205, i32 noundef %211, i32 noundef %215, i32 noundef %219) #9
  br label %283

253:                                              ; preds = %240
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #9
  store ptr %234, ptr %13, align 8, !tbaa !143
  %254 = load i32, ptr %152, align 8, !tbaa !145
  store i32 %254, ptr %153, align 8, !tbaa !145
  %255 = load i32, ptr %143, align 4, !tbaa !141
  %256 = trunc i32 %255 to i16
  store i16 %256, ptr %154, align 8, !tbaa !121
  %257 = and i32 %255, 65535
  store i32 %257, ptr %155, align 4, !tbaa !147
  %258 = load i32, ptr %144, align 4, !tbaa !142
  %259 = trunc i32 %258 to i16
  store i16 %259, ptr %156, align 2, !tbaa !123
  %260 = and i32 %258, 65535
  store i32 %260, ptr %157, align 8, !tbaa !148
  %261 = load i64, ptr %158, align 8, !tbaa !146
  store i64 %261, ptr %159, align 8, !tbaa !146
  store i16 0, ptr %160, align 4, !tbaa !149
  store i16 0, ptr %161, align 2, !tbaa !150
  %262 = load ptr, ptr %162, align 8, !tbaa !125
  %263 = load ptr, ptr %28, align 8, !tbaa !126
  %264 = sub nsw i32 %211, %2
  %265 = load i32, ptr %163, align 4, !tbaa !129
  %266 = mul i32 %265, %264
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i8, ptr %263, i64 %267
  %269 = load i32, ptr %164, align 8, !tbaa !128
  %270 = sub i32 %205, %1
  %271 = add nsw i32 %270, %269
  %272 = load i32, ptr %165, align 8, !tbaa !131
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, ptr null, ptr %166
  %275 = sub nsw i32 %204, %205
  %276 = and i32 %255, 65535
  %277 = call i32 @imod(i32 noundef %275, i32 noundef %276) #9
  %278 = sub nsw i32 %210, %211
  %279 = load i16, ptr %156, align 2, !tbaa !123
  %280 = zext i16 %279 to i32
  %281 = call i32 @imod(i32 noundef %278, i32 noundef %280) #9
  %282 = call i32 %262(ptr noundef %5, ptr noundef %268, i32 noundef %271, i32 noundef %265, i64 noundef %241, ptr noundef %274, ptr noundef nonnull %13, ptr noundef null, i32 noundef %205, i32 noundef %211, i32 noundef %215, i32 noundef %219, i32 noundef %277, i32 noundef %281, i32 noundef %6) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #9
  br label %283

283:                                              ; preds = %253, %250
  %284 = phi i32 [ %252, %250 ], [ %282, %253 ]
  %285 = icmp sgt i32 %284, -1
  %286 = select i1 %285, i32 %180, i32 %284
  br label %287

287:                                              ; preds = %283, %179
  %288 = phi i32 [ %182, %179 ], [ %284, %283 ]
  %289 = phi i1 [ true, %179 ], [ %285, %283 ]
  %290 = phi i32 [ %180, %179 ], [ %286, %283 ]
  br i1 %289, label %176, label %296

291:                                              ; preds = %176, %170
  %292 = phi i32 [ %173, %170 ], [ %288, %176 ]
  %293 = phi i32 [ %171, %170 ], [ %290, %176 ]
  %294 = add i32 %172, 1
  %295 = icmp eq i32 %294, %120
  br i1 %295, label %296, label %170, !llvm.loop !151

296:                                              ; preds = %291, %287, %88
  %297 = phi i32 [ %38, %88 ], [ %290, %287 ], [ %292, %291 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #9
  br label %298

298:                                              ; preds = %296, %72, %68, %33
  %299 = phi i32 [ %35, %33 ], [ %71, %68 ], [ %87, %72 ], [ %297, %296 ]
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %10) #9
  br label %300

300:                                              ; preds = %8, %298
  %301 = phi i32 [ %299, %298 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #9
  ret i32 %301
}

declare i32 @gx_dc_default_fill_masked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @dc_pattern_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #1 {
  switch i32 %2, label %5 [
    i32 0, label %22
    i32 1, label %10
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_client_color, i64 0, i32 4), align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3
  %8 = add i32 %2, -2
  %9 = tail call ptr %6(ptr noundef nonnull %7, i32 noundef 24, i32 noundef %8, ptr noundef %3) #9
  br label %34

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gx_color_tile_s, ptr %12, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !154
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds %struct.gx_color_tile_s, ptr %12, i64 %18
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi ptr [ %19, %14 ], [ null, %10 ]
  store ptr %21, ptr %3, align 8, !tbaa !5
  br label %34

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gx_color_tile_s, ptr %24, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !154
  %29 = zext i32 %28 to i64
  %30 = sub nsw i64 0, %29
  %31 = getelementptr inbounds %struct.gx_color_tile_s, ptr %24, i64 %30
  br label %32

32:                                               ; preds = %22, %26
  %33 = phi ptr [ %31, %26 ], [ null, %22 ]
  store ptr %33, ptr %3, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %20, %5, %32
  %35 = phi ptr [ @ptr_struct_procs, %32 ], [ @ptr_struct_procs, %20 ], [ %9, %5 ]
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define internal void @dc_pattern_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_color_tile_s, ptr %5, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !154
  %10 = zext i32 %9 to i64
  %11 = sub nsw i64 0, %10
  %12 = getelementptr inbounds %struct.gx_color_tile_s, ptr %5, i64 %11
  %13 = tail call ptr @gs_reloc_struct_ptr(ptr noundef nonnull %12, ptr noundef %2) #9
  %14 = getelementptr inbounds %struct.gx_color_tile_s, ptr %13, i64 %10
  store ptr %14, ptr %4, align 8, !tbaa !23
  br label %15

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_client_color, i64 0, i32 5), align 8, !tbaa !155
  tail call void %19(ptr noundef nonnull %16, i32 noundef 24, ptr noundef %2) #9
  %20 = icmp eq ptr %18, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.gx_color_tile_s, ptr %18, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !154
  %24 = load ptr, ptr %17, align 8, !tbaa !114
  %25 = zext i32 %23 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds %struct.gx_color_tile_s, ptr %24, i64 %26
  %28 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %27, ptr noundef %2) #9
  %29 = getelementptr inbounds %struct.gx_color_tile_s, ptr %28, i64 %25
  store ptr %29, ptr %17, align 8, !tbaa !114
  br label %30

30:                                               ; preds = %15, %21
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_masked_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = load ptr, ptr @gx_dc_procs_pure, align 8, !tbaa !156
  %6 = tail call i32 %5(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !106
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %17

11:                                               ; preds = %14
  %12 = tail call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !106
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !llvm.loop !158

14:                                               ; preds = %8, %11
  %15 = tail call i32 @gx_pattern_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %11, !llvm.loop !158

17:                                               ; preds = %14, %11, %8, %4
  %18 = phi i32 [ %6, %4 ], [ %6, %8 ], [ %15, %11 ], [ %15, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_masked_fill_rect(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #1 {
  %9 = alloca %struct.gx_device_tile_clip_s, align 8
  %10 = alloca %struct.gs_rect_s, align 8
  %11 = alloca %struct.gs_rect_s, align 8
  %12 = alloca %struct.gx_rop_source_s, align 8
  %13 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %9) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 7
  %18 = call i32 @tile_clip_initialize(ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef %5, i32 noundef 0, i32 noundef 0) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %207, label %20

20:                                               ; preds = %16, %8
  %21 = phi i32 [ 0, %8 ], [ %18, %16 ]
  %22 = phi ptr [ undef, %8 ], [ %17, %16 ]
  %23 = phi ptr [ %5, %8 ], [ %9, %16 ]
  br i1 %15, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !117
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %20
  %29 = load ptr, ptr getelementptr inbounds (%struct.gx_device_color_procs_s, ptr @gx_dc_procs_pure, i64 0, i32 1), align 8, !tbaa !159
  %30 = call i32 %29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %23, i32 noundef %6, ptr noundef %7) #9
  br label %207

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #9
  %32 = add nsw i32 %3, %1
  %33 = add nsw i32 %4, %2
  %34 = sitofp i32 %1 to double
  store double %34, ptr %10, align 8, !tbaa !72
  %35 = sitofp i32 %2 to double
  %36 = getelementptr inbounds %struct.gs_point_s, ptr %10, i64 0, i32 1
  store double %35, ptr %36, align 8, !tbaa !74
  %37 = sitofp i32 %32 to double
  %38 = getelementptr inbounds %struct.gs_rect_s, ptr %10, i64 0, i32 1
  store double %37, ptr %38, align 8, !tbaa !71
  %39 = sitofp i32 %33 to double
  %40 = getelementptr inbounds %struct.gs_rect_s, ptr %10, i64 0, i32 1, i32 1
  store double %39, ptr %40, align 8, !tbaa !73
  %41 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4
  %42 = call i32 @gs_bbox_transform_inverse(ptr noundef nonnull %10, ptr noundef nonnull %41, ptr noundef nonnull %11) #9
  %43 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 4
  %44 = load float, ptr %43, align 4, !tbaa !120
  %45 = fpext float %44 to double
  %46 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 5
  %47 = load float, ptr %46, align 4, !tbaa !122
  %48 = fpext float %47 to double
  %49 = load double, ptr %11, align 8, !tbaa !72
  %50 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5
  %51 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5, i32 1
  %52 = load double, ptr %51, align 8, !tbaa !132
  %53 = fsub double %49, %52
  %54 = fadd double %53, 0x3EB0C6F7A0B5ED8D
  %55 = call double @llvm.floor.f64(double %54)
  %56 = fptosi double %55 to i32
  %57 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1
  %58 = load double, ptr %57, align 8, !tbaa !71
  %59 = load double, ptr %50, align 8, !tbaa !133
  %60 = fsub double %58, %59
  %61 = fadd double %60, 0xBEB0C6F7A0B5ED8D
  %62 = call double @llvm.ceil.f64(double %61)
  %63 = fptosi double %62 to i32
  %64 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  %65 = load double, ptr %64, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5, i32 1, i32 1
  %67 = load double, ptr %66, align 8, !tbaa !134
  %68 = fsub double %65, %67
  %69 = fadd double %68, 0x3EB0C6F7A0B5ED8D
  %70 = call double @llvm.floor.f64(double %69)
  %71 = fptosi double %70 to i32
  %72 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1, i32 1
  %73 = load double, ptr %72, align 8, !tbaa !73
  %74 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5, i32 0, i32 1
  %75 = load double, ptr %74, align 8, !tbaa !135
  %76 = fsub double %73, %75
  %77 = fadd double %76, 0xBEB0C6F7A0B5ED8D
  %78 = call double @llvm.ceil.f64(double %77)
  %79 = fptosi double %78 to i32
  %80 = icmp slt i32 %56, %63
  br i1 %80, label %81, label %205

81:                                               ; preds = %31
  %82 = icmp slt i32 %71, %79
  %83 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 2
  %84 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 1
  %85 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 3
  %86 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 7, i32 2
  %87 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 7, i32 2, i32 1
  %88 = icmp eq ptr %23, %9
  %89 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %22, i64 0, i32 4
  %90 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %22, i64 0, i32 5
  %91 = icmp eq ptr %7, null
  %92 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 2
  %93 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 1
  %94 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 1
  %95 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 2
  %96 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 3
  %97 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 3
  %98 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 4
  %99 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 4
  %100 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 4, i64 1
  %101 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 4, i64 1
  %102 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 5
  %103 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 5
  %104 = load ptr, ptr getelementptr inbounds (%struct.gx_device_color_procs_s, ptr @gx_dc_procs_pure, i64 0, i32 1), align 8
  br label %105

105:                                              ; preds = %81, %200
  %106 = phi i32 [ %56, %81 ], [ %203, %200 ]
  %107 = phi i32 [ undef, %81 ], [ %202, %200 ]
  %108 = phi i32 [ %21, %81 ], [ %201, %200 ]
  br i1 %82, label %109, label %200

109:                                              ; preds = %105
  %110 = sitofp i32 %106 to float
  br label %114

111:                                              ; preds = %196
  %112 = add nsw i32 %115, 1
  %113 = icmp eq i32 %112, %79
  br i1 %113, label %200, label %114, !llvm.loop !160

114:                                              ; preds = %109, %111
  %115 = phi i32 [ %71, %109 ], [ %112, %111 ]
  %116 = phi i32 [ %107, %109 ], [ %199, %111 ]
  %117 = phi i32 [ %108, %109 ], [ %198, %111 ]
  %118 = load float, ptr %41, align 4, !tbaa !137
  %119 = load float, ptr %83, align 4, !tbaa !138
  %120 = sitofp i32 %115 to float
  %121 = fmul float %119, %120
  %122 = call float @llvm.fmuladd.f32(float %118, float %110, float %121)
  %123 = fpext float %122 to double
  %124 = fadd double %45, %123
  %125 = fptosi double %124 to i32
  %126 = load float, ptr %84, align 4, !tbaa !139
  %127 = load float, ptr %85, align 4, !tbaa !140
  %128 = fmul float %127, %120
  %129 = call float @llvm.fmuladd.f32(float %126, float %110, float %128)
  %130 = fpext float %129 to double
  %131 = fadd double %48, %130
  %132 = fptosi double %131 to i32
  %133 = load i32, ptr %86, align 4, !tbaa !161
  %134 = load i32, ptr %87, align 4, !tbaa !162
  %135 = icmp slt i32 %125, %1
  %136 = sub nsw i32 %1, %125
  %137 = select i1 %135, i32 %136, i32 0
  %138 = sub nsw i32 %133, %137
  %139 = call i32 @llvm.smax.i32(i32 %125, i32 %1)
  %140 = select i1 %135, i32 %136, i32 0
  %141 = icmp slt i32 %132, %2
  %142 = sub nsw i32 %2, %132
  %143 = select i1 %141, i32 %142, i32 0
  %144 = sub nsw i32 %134, %143
  %145 = call i32 @llvm.smax.i32(i32 %132, i32 %2)
  %146 = select i1 %141, i32 %142, i32 0
  %147 = add nsw i32 %138, %139
  %148 = icmp sgt i32 %147, %32
  %149 = sub nsw i32 %32, %139
  %150 = select i1 %148, i32 %149, i32 %138
  %151 = add nsw i32 %144, %145
  %152 = icmp sgt i32 %151, %33
  %153 = sub nsw i32 %33, %145
  %154 = select i1 %152, i32 %153, i32 %144
  %155 = icmp sgt i32 %150, 0
  %156 = icmp sgt i32 %154, 0
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %196

158:                                              ; preds = %114
  br i1 %88, label %159, label %168

159:                                              ; preds = %158
  %160 = sub nsw i32 %140, %139
  %161 = load i16, ptr %89, align 8, !tbaa !121
  %162 = zext i16 %161 to i32
  %163 = call i32 @imod(i32 noundef %160, i32 noundef %162) #9
  %164 = sub nsw i32 %146, %145
  %165 = load i16, ptr %90, align 2, !tbaa !123
  %166 = zext i16 %165 to i32
  %167 = call i32 @imod(i32 noundef %164, i32 noundef %166) #9
  call void @tile_clip_set_phase(ptr noundef nonnull %9, i32 noundef %163, i32 noundef %167) #9
  br label %168

168:                                              ; preds = %159, %158
  br i1 %91, label %169, label %171

169:                                              ; preds = %168
  %170 = call i32 %104(ptr noundef %0, i32 noundef %139, i32 noundef %145, i32 noundef %150, i32 noundef %154, ptr noundef %23, i32 noundef %6, ptr noundef null) #9
  br label %192

171:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %12) #9
  %172 = load ptr, ptr %7, align 8, !tbaa !126
  %173 = sub nsw i32 %145, %2
  %174 = load i32, ptr %92, align 4, !tbaa !129
  %175 = mul i32 %174, %173
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %172, i64 %176
  store ptr %177, ptr %12, align 8, !tbaa !126
  %178 = load i32, ptr %93, align 8, !tbaa !128
  %179 = sub i32 %139, %1
  %180 = add nsw i32 %179, %178
  store i32 %180, ptr %94, align 8, !tbaa !128
  store i32 %174, ptr %95, align 4, !tbaa !129
  %181 = icmp eq i32 %150, %3
  %182 = icmp eq i32 %154, %4
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %186

184:                                              ; preds = %171
  %185 = load i64, ptr %96, align 8, !tbaa !130
  br label %186

186:                                              ; preds = %171, %184
  %187 = phi i64 [ %185, %184 ], [ 0, %171 ]
  store i64 %187, ptr %97, align 8, !tbaa !130
  %188 = load i64, ptr %98, align 8, !tbaa !52
  store i64 %188, ptr %99, align 8, !tbaa !52
  %189 = load i64, ptr %100, align 8, !tbaa !52
  store i64 %189, ptr %101, align 8, !tbaa !52
  %190 = load i32, ptr %102, align 8, !tbaa !131
  store i32 %190, ptr %103, align 8, !tbaa !131
  %191 = call i32 %104(ptr noundef %0, i32 noundef %139, i32 noundef %145, i32 noundef %150, i32 noundef %154, ptr noundef %23, i32 noundef %6, ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %12) #9
  br label %192

192:                                              ; preds = %186, %169
  %193 = phi i32 [ %170, %169 ], [ %191, %186 ]
  %194 = icmp sgt i32 %193, -1
  %195 = select i1 %194, i32 %116, i32 %193
  br label %196

196:                                              ; preds = %192, %114
  %197 = phi i1 [ true, %114 ], [ %194, %192 ]
  %198 = phi i32 [ %117, %114 ], [ %193, %192 ]
  %199 = phi i32 [ %116, %114 ], [ %195, %192 ]
  br i1 %197, label %111, label %205

200:                                              ; preds = %111, %105
  %201 = phi i32 [ %108, %105 ], [ %198, %111 ]
  %202 = phi i32 [ %107, %105 ], [ %199, %111 ]
  %203 = add i32 %106, 1
  %204 = icmp eq i32 %203, %63
  br i1 %204, label %205, label %105, !llvm.loop !163

205:                                              ; preds = %200, %196, %31
  %206 = phi i32 [ %21, %31 ], [ %199, %196 ], [ %201, %200 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #9
  br label %207

207:                                              ; preds = %205, %28, %16
  %208 = phi i32 [ %18, %16 ], [ %30, %28 ], [ %206, %205 ]
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %9) #9
  ret i32 %208
}

; Function Attrs: nounwind uwtable
define internal ptr @dc_masked_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_client_color, i64 0, i32 4), align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3
  %9 = add i32 %2, -1
  %10 = tail call ptr %7(ptr noundef nonnull %8, i32 noundef 24, i32 noundef %9, ptr noundef %3) #9
  br label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gx_color_tile_s, ptr %13, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !154
  %18 = zext i32 %17 to i64
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds %struct.gx_color_tile_s, ptr %13, i64 %19
  br label %21

21:                                               ; preds = %11, %15
  %22 = phi ptr [ %20, %15 ], [ null, %11 ]
  store ptr %22, ptr %3, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %21, %6
  %24 = phi ptr [ @ptr_struct_procs, %21 ], [ %10, %6 ]
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define internal void @dc_masked_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_client_color, i64 0, i32 5), align 8, !tbaa !155
  tail call void %7(ptr noundef nonnull %4, i32 noundef 24, ptr noundef %2) #9
  %8 = icmp eq ptr %6, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gx_color_tile_s, ptr %6, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !154
  %12 = load ptr, ptr %5, align 8, !tbaa !114
  %13 = zext i32 %11 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds %struct.gx_color_tile_s, ptr %12, i64 %14
  %16 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %15, ptr noundef %2) #9
  %17 = getelementptr inbounds %struct.gx_color_tile_s, ptr %16, i64 %13
  store ptr %17, ptr %5, align 8, !tbaa !114
  br label %18

18:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_binary_masked_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = load ptr, ptr @gx_dc_procs_ht_binary, align 8, !tbaa !156
  %6 = tail call i32 %5(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !106
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %17

11:                                               ; preds = %14
  %12 = tail call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !106
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !llvm.loop !164

14:                                               ; preds = %8, %11
  %15 = tail call i32 @gx_pattern_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %11, !llvm.loop !164

17:                                               ; preds = %14, %11, %8, %4
  %18 = phi i32 [ %6, %4 ], [ %6, %8 ], [ %15, %11 ], [ %15, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_binary_masked_fill_rect(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #1 {
  %9 = alloca %struct.gx_device_tile_clip_s, align 8
  %10 = alloca %struct.gs_rect_s, align 8
  %11 = alloca %struct.gs_rect_s, align 8
  %12 = alloca %struct.gx_rop_source_s, align 8
  %13 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %9) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 7
  %18 = call i32 @tile_clip_initialize(ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef %5, i32 noundef 0, i32 noundef 0) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %207, label %20

20:                                               ; preds = %16, %8
  %21 = phi i32 [ 0, %8 ], [ %18, %16 ]
  %22 = phi ptr [ undef, %8 ], [ %17, %16 ]
  %23 = phi ptr [ %5, %8 ], [ %9, %16 ]
  br i1 %15, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !117
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %20
  %29 = load ptr, ptr getelementptr inbounds (%struct.gx_device_color_procs_s, ptr @gx_dc_procs_ht_binary, i64 0, i32 1), align 8, !tbaa !159
  %30 = call i32 %29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %23, i32 noundef %6, ptr noundef %7) #9
  br label %207

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #9
  %32 = add nsw i32 %3, %1
  %33 = add nsw i32 %4, %2
  %34 = sitofp i32 %1 to double
  store double %34, ptr %10, align 8, !tbaa !72
  %35 = sitofp i32 %2 to double
  %36 = getelementptr inbounds %struct.gs_point_s, ptr %10, i64 0, i32 1
  store double %35, ptr %36, align 8, !tbaa !74
  %37 = sitofp i32 %32 to double
  %38 = getelementptr inbounds %struct.gs_rect_s, ptr %10, i64 0, i32 1
  store double %37, ptr %38, align 8, !tbaa !71
  %39 = sitofp i32 %33 to double
  %40 = getelementptr inbounds %struct.gs_rect_s, ptr %10, i64 0, i32 1, i32 1
  store double %39, ptr %40, align 8, !tbaa !73
  %41 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4
  %42 = call i32 @gs_bbox_transform_inverse(ptr noundef nonnull %10, ptr noundef nonnull %41, ptr noundef nonnull %11) #9
  %43 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 4
  %44 = load float, ptr %43, align 4, !tbaa !120
  %45 = fpext float %44 to double
  %46 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 5
  %47 = load float, ptr %46, align 4, !tbaa !122
  %48 = fpext float %47 to double
  %49 = load double, ptr %11, align 8, !tbaa !72
  %50 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5
  %51 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5, i32 1
  %52 = load double, ptr %51, align 8, !tbaa !132
  %53 = fsub double %49, %52
  %54 = fadd double %53, 0x3EB0C6F7A0B5ED8D
  %55 = call double @llvm.floor.f64(double %54)
  %56 = fptosi double %55 to i32
  %57 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1
  %58 = load double, ptr %57, align 8, !tbaa !71
  %59 = load double, ptr %50, align 8, !tbaa !133
  %60 = fsub double %58, %59
  %61 = fadd double %60, 0xBEB0C6F7A0B5ED8D
  %62 = call double @llvm.ceil.f64(double %61)
  %63 = fptosi double %62 to i32
  %64 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  %65 = load double, ptr %64, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5, i32 1, i32 1
  %67 = load double, ptr %66, align 8, !tbaa !134
  %68 = fsub double %65, %67
  %69 = fadd double %68, 0x3EB0C6F7A0B5ED8D
  %70 = call double @llvm.floor.f64(double %69)
  %71 = fptosi double %70 to i32
  %72 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1, i32 1
  %73 = load double, ptr %72, align 8, !tbaa !73
  %74 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5, i32 0, i32 1
  %75 = load double, ptr %74, align 8, !tbaa !135
  %76 = fsub double %73, %75
  %77 = fadd double %76, 0xBEB0C6F7A0B5ED8D
  %78 = call double @llvm.ceil.f64(double %77)
  %79 = fptosi double %78 to i32
  %80 = icmp slt i32 %56, %63
  br i1 %80, label %81, label %205

81:                                               ; preds = %31
  %82 = icmp slt i32 %71, %79
  %83 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 2
  %84 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 1
  %85 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 3
  %86 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 7, i32 2
  %87 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 7, i32 2, i32 1
  %88 = icmp eq ptr %23, %9
  %89 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %22, i64 0, i32 4
  %90 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %22, i64 0, i32 5
  %91 = icmp eq ptr %7, null
  %92 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 2
  %93 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 1
  %94 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 1
  %95 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 2
  %96 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 3
  %97 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 3
  %98 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 4
  %99 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 4
  %100 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 4, i64 1
  %101 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 4, i64 1
  %102 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 5
  %103 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 5
  %104 = load ptr, ptr getelementptr inbounds (%struct.gx_device_color_procs_s, ptr @gx_dc_procs_ht_binary, i64 0, i32 1), align 8
  br label %105

105:                                              ; preds = %81, %200
  %106 = phi i32 [ %56, %81 ], [ %203, %200 ]
  %107 = phi i32 [ undef, %81 ], [ %202, %200 ]
  %108 = phi i32 [ %21, %81 ], [ %201, %200 ]
  br i1 %82, label %109, label %200

109:                                              ; preds = %105
  %110 = sitofp i32 %106 to float
  br label %114

111:                                              ; preds = %196
  %112 = add nsw i32 %115, 1
  %113 = icmp eq i32 %112, %79
  br i1 %113, label %200, label %114, !llvm.loop !165

114:                                              ; preds = %109, %111
  %115 = phi i32 [ %71, %109 ], [ %112, %111 ]
  %116 = phi i32 [ %107, %109 ], [ %199, %111 ]
  %117 = phi i32 [ %108, %109 ], [ %198, %111 ]
  %118 = load float, ptr %41, align 4, !tbaa !137
  %119 = load float, ptr %83, align 4, !tbaa !138
  %120 = sitofp i32 %115 to float
  %121 = fmul float %119, %120
  %122 = call float @llvm.fmuladd.f32(float %118, float %110, float %121)
  %123 = fpext float %122 to double
  %124 = fadd double %45, %123
  %125 = fptosi double %124 to i32
  %126 = load float, ptr %84, align 4, !tbaa !139
  %127 = load float, ptr %85, align 4, !tbaa !140
  %128 = fmul float %127, %120
  %129 = call float @llvm.fmuladd.f32(float %126, float %110, float %128)
  %130 = fpext float %129 to double
  %131 = fadd double %48, %130
  %132 = fptosi double %131 to i32
  %133 = load i32, ptr %86, align 4, !tbaa !161
  %134 = load i32, ptr %87, align 4, !tbaa !162
  %135 = icmp slt i32 %125, %1
  %136 = sub nsw i32 %1, %125
  %137 = select i1 %135, i32 %136, i32 0
  %138 = sub nsw i32 %133, %137
  %139 = call i32 @llvm.smax.i32(i32 %125, i32 %1)
  %140 = select i1 %135, i32 %136, i32 0
  %141 = icmp slt i32 %132, %2
  %142 = sub nsw i32 %2, %132
  %143 = select i1 %141, i32 %142, i32 0
  %144 = sub nsw i32 %134, %143
  %145 = call i32 @llvm.smax.i32(i32 %132, i32 %2)
  %146 = select i1 %141, i32 %142, i32 0
  %147 = add nsw i32 %138, %139
  %148 = icmp sgt i32 %147, %32
  %149 = sub nsw i32 %32, %139
  %150 = select i1 %148, i32 %149, i32 %138
  %151 = add nsw i32 %144, %145
  %152 = icmp sgt i32 %151, %33
  %153 = sub nsw i32 %33, %145
  %154 = select i1 %152, i32 %153, i32 %144
  %155 = icmp sgt i32 %150, 0
  %156 = icmp sgt i32 %154, 0
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %196

158:                                              ; preds = %114
  br i1 %88, label %159, label %168

159:                                              ; preds = %158
  %160 = sub nsw i32 %140, %139
  %161 = load i16, ptr %89, align 8, !tbaa !121
  %162 = zext i16 %161 to i32
  %163 = call i32 @imod(i32 noundef %160, i32 noundef %162) #9
  %164 = sub nsw i32 %146, %145
  %165 = load i16, ptr %90, align 2, !tbaa !123
  %166 = zext i16 %165 to i32
  %167 = call i32 @imod(i32 noundef %164, i32 noundef %166) #9
  call void @tile_clip_set_phase(ptr noundef nonnull %9, i32 noundef %163, i32 noundef %167) #9
  br label %168

168:                                              ; preds = %159, %158
  br i1 %91, label %169, label %171

169:                                              ; preds = %168
  %170 = call i32 %104(ptr noundef %0, i32 noundef %139, i32 noundef %145, i32 noundef %150, i32 noundef %154, ptr noundef %23, i32 noundef %6, ptr noundef null) #9
  br label %192

171:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %12) #9
  %172 = load ptr, ptr %7, align 8, !tbaa !126
  %173 = sub nsw i32 %145, %2
  %174 = load i32, ptr %92, align 4, !tbaa !129
  %175 = mul i32 %174, %173
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %172, i64 %176
  store ptr %177, ptr %12, align 8, !tbaa !126
  %178 = load i32, ptr %93, align 8, !tbaa !128
  %179 = sub i32 %139, %1
  %180 = add nsw i32 %179, %178
  store i32 %180, ptr %94, align 8, !tbaa !128
  store i32 %174, ptr %95, align 4, !tbaa !129
  %181 = icmp eq i32 %150, %3
  %182 = icmp eq i32 %154, %4
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %186

184:                                              ; preds = %171
  %185 = load i64, ptr %96, align 8, !tbaa !130
  br label %186

186:                                              ; preds = %171, %184
  %187 = phi i64 [ %185, %184 ], [ 0, %171 ]
  store i64 %187, ptr %97, align 8, !tbaa !130
  %188 = load i64, ptr %98, align 8, !tbaa !52
  store i64 %188, ptr %99, align 8, !tbaa !52
  %189 = load i64, ptr %100, align 8, !tbaa !52
  store i64 %189, ptr %101, align 8, !tbaa !52
  %190 = load i32, ptr %102, align 8, !tbaa !131
  store i32 %190, ptr %103, align 8, !tbaa !131
  %191 = call i32 %104(ptr noundef %0, i32 noundef %139, i32 noundef %145, i32 noundef %150, i32 noundef %154, ptr noundef %23, i32 noundef %6, ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %12) #9
  br label %192

192:                                              ; preds = %186, %169
  %193 = phi i32 [ %170, %169 ], [ %191, %186 ]
  %194 = icmp sgt i32 %193, -1
  %195 = select i1 %194, i32 %116, i32 %193
  br label %196

196:                                              ; preds = %192, %114
  %197 = phi i1 [ true, %114 ], [ %194, %192 ]
  %198 = phi i32 [ %117, %114 ], [ %193, %192 ]
  %199 = phi i32 [ %116, %114 ], [ %195, %192 ]
  br i1 %197, label %111, label %205

200:                                              ; preds = %111, %105
  %201 = phi i32 [ %108, %105 ], [ %198, %111 ]
  %202 = phi i32 [ %107, %105 ], [ %199, %111 ]
  %203 = add i32 %106, 1
  %204 = icmp eq i32 %203, %63
  br i1 %204, label %205, label %105, !llvm.loop !166

205:                                              ; preds = %200, %196, %31
  %206 = phi i32 [ %21, %31 ], [ %199, %196 ], [ %201, %200 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #9
  br label %207

207:                                              ; preds = %205, %28, %16
  %208 = phi i32 [ %18, %16 ], [ %30, %28 ], [ %206, %205 ]
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %9) #9
  ret i32 %208
}

; Function Attrs: nounwind uwtable
define internal ptr @dc_binary_masked_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = icmp ult i32 %2, 2
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.gx_device_color_procs_s, ptr @gx_dc_procs_ht_binary, i64 0, i32 3), align 8, !tbaa !167
  %8 = add i32 %2, -2
  %9 = tail call ptr %7(ptr noundef %0, i32 noundef %1, i32 noundef %8, ptr noundef %3) #9
  br label %29

10:                                               ; preds = %4
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_client_color, i64 0, i32 4), align 8, !tbaa !152
  %14 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3
  %15 = add nsw i32 %2, -1
  %16 = tail call ptr %13(ptr noundef nonnull %14, i32 noundef 24, i32 noundef %15, ptr noundef %3) #9
  br label %29

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !114
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gx_color_tile_s, ptr %19, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !154
  %24 = zext i32 %23 to i64
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds %struct.gx_color_tile_s, ptr %19, i64 %25
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi ptr [ %26, %21 ], [ null, %17 ]
  store ptr %28, ptr %3, align 8, !tbaa !5
  br label %29

29:                                               ; preds = %27, %12, %6
  %30 = phi ptr [ %9, %6 ], [ @ptr_struct_procs, %27 ], [ %16, %12 ]
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define internal void @dc_binary_masked_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_client_color, i64 0, i32 5), align 8, !tbaa !155
  tail call void %7(ptr noundef nonnull %4, i32 noundef 24, ptr noundef %2) #9
  %8 = icmp eq ptr %6, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gx_color_tile_s, ptr %6, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !154
  %12 = load ptr, ptr %5, align 8, !tbaa !114
  %13 = zext i32 %11 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds %struct.gx_color_tile_s, ptr %12, i64 %14
  %16 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %15, ptr noundef %2) #9
  %17 = getelementptr inbounds %struct.gx_color_tile_s, ptr %16, i64 %13
  store ptr %17, ptr %5, align 8, !tbaa !114
  br label %18

18:                                               ; preds = %3, %9
  %19 = load ptr, ptr getelementptr inbounds (%struct.gx_device_color_procs_s, ptr @gx_dc_procs_ht_binary, i64 0, i32 4), align 8, !tbaa !168
  tail call void %19(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_colored_masked_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = load ptr, ptr @gx_dc_procs_ht_colored, align 8, !tbaa !156
  %6 = tail call i32 %5(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !106
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %17

11:                                               ; preds = %14
  %12 = tail call i32 @gx_pattern_cache_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !106
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !llvm.loop !169

14:                                               ; preds = %8, %11
  %15 = tail call i32 @gx_pattern_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %11, !llvm.loop !169

17:                                               ; preds = %14, %11, %8, %4
  %18 = phi i32 [ %6, %4 ], [ %6, %8 ], [ %15, %11 ], [ %15, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_colored_masked_fill_rect(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #1 {
  %9 = alloca %struct.gx_device_tile_clip_s, align 8
  %10 = alloca %struct.gs_rect_s, align 8
  %11 = alloca %struct.gs_rect_s, align 8
  %12 = alloca %struct.gx_rop_source_s, align 8
  %13 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %9) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 7
  %18 = call i32 @tile_clip_initialize(ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef %5, i32 noundef 0, i32 noundef 0) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %207, label %20

20:                                               ; preds = %16, %8
  %21 = phi i32 [ 0, %8 ], [ %18, %16 ]
  %22 = phi ptr [ undef, %8 ], [ %17, %16 ]
  %23 = phi ptr [ %5, %8 ], [ %9, %16 ]
  br i1 %15, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !117
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %20
  %29 = load ptr, ptr getelementptr inbounds (%struct.gx_device_color_procs_s, ptr @gx_dc_procs_ht_colored, i64 0, i32 1), align 8, !tbaa !159
  %30 = call i32 %29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %23, i32 noundef %6, ptr noundef %7) #9
  br label %207

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #9
  %32 = add nsw i32 %3, %1
  %33 = add nsw i32 %4, %2
  %34 = sitofp i32 %1 to double
  store double %34, ptr %10, align 8, !tbaa !72
  %35 = sitofp i32 %2 to double
  %36 = getelementptr inbounds %struct.gs_point_s, ptr %10, i64 0, i32 1
  store double %35, ptr %36, align 8, !tbaa !74
  %37 = sitofp i32 %32 to double
  %38 = getelementptr inbounds %struct.gs_rect_s, ptr %10, i64 0, i32 1
  store double %37, ptr %38, align 8, !tbaa !71
  %39 = sitofp i32 %33 to double
  %40 = getelementptr inbounds %struct.gs_rect_s, ptr %10, i64 0, i32 1, i32 1
  store double %39, ptr %40, align 8, !tbaa !73
  %41 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4
  %42 = call i32 @gs_bbox_transform_inverse(ptr noundef nonnull %10, ptr noundef nonnull %41, ptr noundef nonnull %11) #9
  %43 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 4
  %44 = load float, ptr %43, align 4, !tbaa !120
  %45 = fpext float %44 to double
  %46 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 5
  %47 = load float, ptr %46, align 4, !tbaa !122
  %48 = fpext float %47 to double
  %49 = load double, ptr %11, align 8, !tbaa !72
  %50 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5
  %51 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5, i32 1
  %52 = load double, ptr %51, align 8, !tbaa !132
  %53 = fsub double %49, %52
  %54 = fadd double %53, 0x3EB0C6F7A0B5ED8D
  %55 = call double @llvm.floor.f64(double %54)
  %56 = fptosi double %55 to i32
  %57 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1
  %58 = load double, ptr %57, align 8, !tbaa !71
  %59 = load double, ptr %50, align 8, !tbaa !133
  %60 = fsub double %58, %59
  %61 = fadd double %60, 0xBEB0C6F7A0B5ED8D
  %62 = call double @llvm.ceil.f64(double %61)
  %63 = fptosi double %62 to i32
  %64 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  %65 = load double, ptr %64, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5, i32 1, i32 1
  %67 = load double, ptr %66, align 8, !tbaa !134
  %68 = fsub double %65, %67
  %69 = fadd double %68, 0x3EB0C6F7A0B5ED8D
  %70 = call double @llvm.floor.f64(double %69)
  %71 = fptosi double %70 to i32
  %72 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1, i32 1
  %73 = load double, ptr %72, align 8, !tbaa !73
  %74 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 5, i32 0, i32 1
  %75 = load double, ptr %74, align 8, !tbaa !135
  %76 = fsub double %73, %75
  %77 = fadd double %76, 0xBEB0C6F7A0B5ED8D
  %78 = call double @llvm.ceil.f64(double %77)
  %79 = fptosi double %78 to i32
  %80 = icmp slt i32 %56, %63
  br i1 %80, label %81, label %205

81:                                               ; preds = %31
  %82 = icmp slt i32 %71, %79
  %83 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 2
  %84 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 1
  %85 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 4, i32 3
  %86 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 7, i32 2
  %87 = getelementptr inbounds %struct.gx_color_tile_s, ptr %14, i64 0, i32 7, i32 2, i32 1
  %88 = icmp eq ptr %23, %9
  %89 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %22, i64 0, i32 4
  %90 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %22, i64 0, i32 5
  %91 = icmp eq ptr %7, null
  %92 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 2
  %93 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 1
  %94 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 1
  %95 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 2
  %96 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 3
  %97 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 3
  %98 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 4
  %99 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 4
  %100 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 4, i64 1
  %101 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 4, i64 1
  %102 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 5
  %103 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 5
  %104 = load ptr, ptr getelementptr inbounds (%struct.gx_device_color_procs_s, ptr @gx_dc_procs_ht_colored, i64 0, i32 1), align 8
  br label %105

105:                                              ; preds = %81, %200
  %106 = phi i32 [ %56, %81 ], [ %203, %200 ]
  %107 = phi i32 [ undef, %81 ], [ %202, %200 ]
  %108 = phi i32 [ %21, %81 ], [ %201, %200 ]
  br i1 %82, label %109, label %200

109:                                              ; preds = %105
  %110 = sitofp i32 %106 to float
  br label %114

111:                                              ; preds = %196
  %112 = add nsw i32 %115, 1
  %113 = icmp eq i32 %112, %79
  br i1 %113, label %200, label %114, !llvm.loop !170

114:                                              ; preds = %109, %111
  %115 = phi i32 [ %71, %109 ], [ %112, %111 ]
  %116 = phi i32 [ %107, %109 ], [ %199, %111 ]
  %117 = phi i32 [ %108, %109 ], [ %198, %111 ]
  %118 = load float, ptr %41, align 4, !tbaa !137
  %119 = load float, ptr %83, align 4, !tbaa !138
  %120 = sitofp i32 %115 to float
  %121 = fmul float %119, %120
  %122 = call float @llvm.fmuladd.f32(float %118, float %110, float %121)
  %123 = fpext float %122 to double
  %124 = fadd double %45, %123
  %125 = fptosi double %124 to i32
  %126 = load float, ptr %84, align 4, !tbaa !139
  %127 = load float, ptr %85, align 4, !tbaa !140
  %128 = fmul float %127, %120
  %129 = call float @llvm.fmuladd.f32(float %126, float %110, float %128)
  %130 = fpext float %129 to double
  %131 = fadd double %48, %130
  %132 = fptosi double %131 to i32
  %133 = load i32, ptr %86, align 4, !tbaa !161
  %134 = load i32, ptr %87, align 4, !tbaa !162
  %135 = icmp slt i32 %125, %1
  %136 = sub nsw i32 %1, %125
  %137 = select i1 %135, i32 %136, i32 0
  %138 = sub nsw i32 %133, %137
  %139 = call i32 @llvm.smax.i32(i32 %125, i32 %1)
  %140 = select i1 %135, i32 %136, i32 0
  %141 = icmp slt i32 %132, %2
  %142 = sub nsw i32 %2, %132
  %143 = select i1 %141, i32 %142, i32 0
  %144 = sub nsw i32 %134, %143
  %145 = call i32 @llvm.smax.i32(i32 %132, i32 %2)
  %146 = select i1 %141, i32 %142, i32 0
  %147 = add nsw i32 %138, %139
  %148 = icmp sgt i32 %147, %32
  %149 = sub nsw i32 %32, %139
  %150 = select i1 %148, i32 %149, i32 %138
  %151 = add nsw i32 %144, %145
  %152 = icmp sgt i32 %151, %33
  %153 = sub nsw i32 %33, %145
  %154 = select i1 %152, i32 %153, i32 %144
  %155 = icmp sgt i32 %150, 0
  %156 = icmp sgt i32 %154, 0
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %196

158:                                              ; preds = %114
  br i1 %88, label %159, label %168

159:                                              ; preds = %158
  %160 = sub nsw i32 %140, %139
  %161 = load i16, ptr %89, align 8, !tbaa !121
  %162 = zext i16 %161 to i32
  %163 = call i32 @imod(i32 noundef %160, i32 noundef %162) #9
  %164 = sub nsw i32 %146, %145
  %165 = load i16, ptr %90, align 2, !tbaa !123
  %166 = zext i16 %165 to i32
  %167 = call i32 @imod(i32 noundef %164, i32 noundef %166) #9
  call void @tile_clip_set_phase(ptr noundef nonnull %9, i32 noundef %163, i32 noundef %167) #9
  br label %168

168:                                              ; preds = %159, %158
  br i1 %91, label %169, label %171

169:                                              ; preds = %168
  %170 = call i32 %104(ptr noundef %0, i32 noundef %139, i32 noundef %145, i32 noundef %150, i32 noundef %154, ptr noundef %23, i32 noundef %6, ptr noundef null) #9
  br label %192

171:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %12) #9
  %172 = load ptr, ptr %7, align 8, !tbaa !126
  %173 = sub nsw i32 %145, %2
  %174 = load i32, ptr %92, align 4, !tbaa !129
  %175 = mul i32 %174, %173
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %172, i64 %176
  store ptr %177, ptr %12, align 8, !tbaa !126
  %178 = load i32, ptr %93, align 8, !tbaa !128
  %179 = sub i32 %139, %1
  %180 = add nsw i32 %179, %178
  store i32 %180, ptr %94, align 8, !tbaa !128
  store i32 %174, ptr %95, align 4, !tbaa !129
  %181 = icmp eq i32 %150, %3
  %182 = icmp eq i32 %154, %4
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %186

184:                                              ; preds = %171
  %185 = load i64, ptr %96, align 8, !tbaa !130
  br label %186

186:                                              ; preds = %171, %184
  %187 = phi i64 [ %185, %184 ], [ 0, %171 ]
  store i64 %187, ptr %97, align 8, !tbaa !130
  %188 = load i64, ptr %98, align 8, !tbaa !52
  store i64 %188, ptr %99, align 8, !tbaa !52
  %189 = load i64, ptr %100, align 8, !tbaa !52
  store i64 %189, ptr %101, align 8, !tbaa !52
  %190 = load i32, ptr %102, align 8, !tbaa !131
  store i32 %190, ptr %103, align 8, !tbaa !131
  %191 = call i32 %104(ptr noundef %0, i32 noundef %139, i32 noundef %145, i32 noundef %150, i32 noundef %154, ptr noundef %23, i32 noundef %6, ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %12) #9
  br label %192

192:                                              ; preds = %186, %169
  %193 = phi i32 [ %170, %169 ], [ %191, %186 ]
  %194 = icmp sgt i32 %193, -1
  %195 = select i1 %194, i32 %116, i32 %193
  br label %196

196:                                              ; preds = %192, %114
  %197 = phi i1 [ true, %114 ], [ %194, %192 ]
  %198 = phi i32 [ %117, %114 ], [ %193, %192 ]
  %199 = phi i32 [ %116, %114 ], [ %195, %192 ]
  br i1 %197, label %111, label %205

200:                                              ; preds = %111, %105
  %201 = phi i32 [ %108, %105 ], [ %198, %111 ]
  %202 = phi i32 [ %107, %105 ], [ %199, %111 ]
  %203 = add i32 %106, 1
  %204 = icmp eq i32 %203, %63
  br i1 %204, label %205, label %105, !llvm.loop !171

205:                                              ; preds = %200, %196, %31
  %206 = phi i32 [ %21, %31 ], [ %199, %196 ], [ %201, %200 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #9
  br label %207

207:                                              ; preds = %205, %28, %16
  %208 = phi i32 [ %18, %16 ], [ %30, %28 ], [ %206, %205 ]
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %9) #9
  ret i32 %208
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_pattern_cache_lookup(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !174
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr @gx_dc_pattern, ptr %0, align 8, !tbaa !175
  br label %59

12:                                               ; preds = %4
  %13 = icmp eq ptr %6, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %6, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !176
  %17 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %6, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !178
  %19 = zext i32 %18 to i64
  %20 = urem i64 %8, %19
  %21 = getelementptr inbounds %struct.gx_color_tile_s, ptr %16, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !179
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %59

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !175
  %26 = icmp eq ptr %25, @gx_dc_pattern
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gx_color_tile_s, ptr %16, i64 %20, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !180
  %30 = getelementptr inbounds %struct.gx_device_s, ptr %2, i64 0, i32 7, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !181
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  br i1 %26, label %34, label %53

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  store ptr %21, ptr %35, align 8, !tbaa !23
  %36 = sext i32 %3 to i64
  %37 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 11, i64 %36
  %38 = load i32, ptr %37, align 8, !tbaa !182
  %39 = sub nsw i32 0, %38
  %40 = getelementptr inbounds %struct.gx_color_tile_s, ptr %16, i64 %20, i32 6, i32 4
  %41 = load i16, ptr %40, align 8, !tbaa !183
  %42 = zext i16 %41 to i32
  %43 = tail call i32 @imod(i32 noundef %39, i32 noundef %42) #9
  %44 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2
  store i32 %43, ptr %44, align 8, !tbaa !184
  %45 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 11, i64 %36, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !185
  %47 = sub nsw i32 0, %46
  %48 = getelementptr inbounds %struct.gx_color_tile_s, ptr %16, i64 %20, i32 6, i32 5
  %49 = load i16, ptr %48, align 2, !tbaa !186
  %50 = zext i16 %49 to i32
  %51 = tail call i32 @imod(i32 noundef %47, i32 noundef %50) #9
  %52 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %51, ptr %52, align 4, !tbaa !187
  br label %53

53:                                               ; preds = %24, %34, %33
  %54 = getelementptr inbounds %struct.gx_color_tile_s, ptr %16, i64 %20, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !188
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr null, ptr %21
  %58 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 3, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !114
  br label %59

59:                                               ; preds = %12, %14, %27, %53, %10
  %60 = phi i32 [ 1, %10 ], [ 1, %53 ], [ 0, %27 ], [ 0, %14 ], [ 0, %12 ]
  ret i32 %60
}

declare i32 @imod(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_bbox_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gs_image_enum_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gs_state_memory(ptr noundef) local_unnamed_addr #2

declare void @gs_image_t_init_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gs_image_t_init_gray(ptr noundef) local_unnamed_addr #2

declare i32 @gs_image_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_image_next(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_image_cleanup(ptr noundef) local_unnamed_addr #2

declare i32 @gx_pattern_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tile_clip_initialize(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

declare void @tile_clip_set_phase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 72}
!10 = !{!"gs_client_pattern_s", !11, i64 0, !13, i64 16, !13, i64 20, !14, i64 24, !17, i64 56, !17, i64 60, !6, i64 64, !6, i64 72}
!11 = !{!"gs_uid_s", !12, i64 0, !6, i64 8}
!12 = !{!"long", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!"gs_rect_s", !15, i64 0, !15, i64 16}
!15 = !{!"gs_point_s", !16, i64 0, !16, i64 8}
!16 = !{!"double", !7, i64 0}
!17 = !{!"float", !7, i64 0}
!18 = !{!19, !6, i64 104}
!19 = !{!"gs_pattern_instance_s", !20, i64 0, !10, i64 24, !6, i64 104, !21, i64 112, !14, i64 136, !13, i64 168, !22, i64 172, !12, i64 184}
!20 = !{!"rc_header_s", !12, i64 0, !6, i64 8, !6, i64 16}
!21 = !{!"gs_matrix_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!22 = !{!"gs_int_point_s", !13, i64 0, !13, i64 4}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !6, i64 0}
!25 = !{!"gs_color_space_s", !6, i64 0, !7, i64 8}
!26 = !{!27, !6, i64 16}
!27 = !{!"gs_color_space_type_s", !13, i64 0, !13, i64 4, !13, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!28 = !{!27, !6, i64 56}
!29 = !{!27, !6, i64 64}
!30 = !{!31, !6, i64 16}
!31 = !{!"gs_client_color_s", !32, i64 0, !6, i64 16}
!32 = !{!"gs_paint_color_s", !7, i64 0}
!33 = !{!19, !12, i64 0}
!34 = !{!35, !6, i64 88}
!35 = !{!"gs_memory_s", !36, i64 0}
!36 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!37 = !{!27, !6, i64 72}
!38 = !{!27, !6, i64 80}
!39 = !{!27, !6, i64 88}
!40 = !{!41, !6, i64 0}
!41 = !{!"gs_state_s", !6, i64 0, !42, i64 8, !44, i64 80, !13, i64 128, !45, i64 132, !13, i64 136, !17, i64 140, !46, i64 144, !13, i64 160, !13, i64 164, !6, i64 168, !7, i64 176, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !7, i64 232, !7, i64 264, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !21, i64 336, !13, i64 360, !21, i64 364, !13, i64 388, !6, i64 392, !6, i64 400, !13, i64 408, !13, i64 412, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !44, i64 456, !13, i64 504, !7, i64 508, !13, i64 512, !6, i64 520, !13, i64 528, !6, i64 536, !6, i64 544, !47, i64 552}
!42 = !{!"gx_line_params_s", !17, i64 0, !13, i64 4, !13, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !43, i64 32}
!43 = !{!"gx_dash_params_s", !6, i64 0, !13, i64 8, !17, i64 12, !13, i64 16, !17, i64 20, !13, i64 24, !13, i64 28, !17, i64 32}
!44 = !{!"gs_matrix_fixed_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !12, i64 24, !12, i64 32, !13, i64 40}
!45 = !{!"short", !7, i64 0}
!46 = !{!"gs_fixed_point_s", !12, i64 0, !12, i64 8}
!47 = !{!"gs_state_client_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!48 = !{!35, !6, i64 16}
!49 = !{!19, !6, i64 8}
!50 = !{!19, !6, i64 16}
!51 = !{i64 0, i64 8, !52, i64 8, i64 8, !5, i64 16, i64 8, !5}
!52 = !{!12, !12, i64 0}
!53 = !{i64 0, i64 8, !52, i64 8, i64 8, !5, i64 16, i64 4, !54, i64 20, i64 4, !54, i64 24, i64 8, !55, i64 32, i64 8, !55, i64 40, i64 8, !55, i64 48, i64 8, !55, i64 56, i64 4, !56, i64 60, i64 4, !56, i64 64, i64 8, !5, i64 72, i64 8, !5}
!54 = !{!13, !13, i64 0}
!55 = !{!16, !16, i64 0}
!56 = !{!17, !17, i64 0}
!57 = !{!19, !17, i64 80}
!58 = !{!41, !17, i64 80}
!59 = !{!41, !17, i64 84}
!60 = !{!19, !17, i64 84}
!61 = !{!41, !17, i64 88}
!62 = !{!41, !17, i64 92}
!63 = !{!19, !17, i64 112}
!64 = !{!19, !17, i64 116}
!65 = !{!19, !17, i64 120}
!66 = !{!19, !17, i64 124}
!67 = !{!41, !17, i64 96}
!68 = !{!19, !17, i64 128}
!69 = !{!41, !17, i64 100}
!70 = !{!19, !17, i64 132}
!71 = !{!14, !16, i64 16}
!72 = !{!14, !16, i64 0}
!73 = !{!14, !16, i64 24}
!74 = !{!14, !16, i64 8}
!75 = !{!19, !13, i64 172}
!76 = !{!19, !13, i64 176}
!77 = !{!19, !13, i64 168}
!78 = !{!79, !12, i64 16}
!79 = !{!"gs_fixed_rect_s", !46, i64 0, !46, i64 16}
!80 = !{!79, !12, i64 24}
!81 = !{!19, !12, i64 184}
!82 = !{i64 0, i64 8, !52, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !52, i64 32, i64 8, !5, i64 40, i64 4, !54, i64 44, i64 4, !54, i64 48, i64 8, !55, i64 56, i64 8, !55, i64 64, i64 8, !55, i64 72, i64 8, !55, i64 80, i64 4, !56, i64 84, i64 4, !56, i64 88, i64 8, !5, i64 96, i64 8, !5, i64 104, i64 8, !5, i64 112, i64 4, !56, i64 116, i64 4, !56, i64 120, i64 4, !56, i64 124, i64 4, !56, i64 128, i64 4, !56, i64 132, i64 4, !56, i64 136, i64 8, !55, i64 144, i64 8, !55, i64 152, i64 8, !55, i64 160, i64 8, !55, i64 168, i64 4, !54, i64 172, i64 4, !54, i64 176, i64 4, !54, i64 184, i64 8, !52}
!83 = !{!41, !6, i64 416}
!84 = !{!27, !13, i64 0}
!85 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !52, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 16, i64 8, !5, i64 16, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 4, !54, i64 32, i64 8, !5, i64 40, i64 4, !54, i64 32, i64 8, !5, i64 48, i64 4, !54}
!86 = !{!87, !13, i64 8}
!87 = !{!"gx_tile_bitmap_s", !6, i64 0, !13, i64 8, !22, i64 12, !12, i64 24, !45, i64 32, !45, i64 34}
!88 = !{!87, !13, i64 12}
!89 = !{!10, !12, i64 0}
!90 = !{!10, !6, i64 8}
!91 = !{!10, !13, i64 16}
!92 = !{!10, !13, i64 20}
!93 = !{!10, !16, i64 40}
!94 = !{!87, !45, i64 34}
!95 = !{!10, !16, i64 48}
!96 = !{!10, !17, i64 56}
!97 = !{!10, !17, i64 60}
!98 = !{!10, !6, i64 64}
!99 = !{!87, !6, i64 0}
!100 = !{!21, !17, i64 12}
!101 = !{!102, !13, i64 0}
!102 = !{!"gs_image_s", !13, i64 0, !13, i64 4, !21, i64 8, !13, i64 32, !6, i64 40, !7, i64 48, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92}
!103 = !{!102, !13, i64 4}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{i32 0, i32 2}
!107 = distinct !{!107, !105}
!108 = !{!109, !6, i64 232}
!109 = !{!"gx_device_s", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !13, i64 40, !13, i64 44, !110, i64 48, !13, i64 64, !13, i64 68, !7, i64 72, !7, i64 80, !13, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !12, i64 144, !12, i64 152, !13, i64 160, !111, i64 168, !112, i64 192}
!110 = !{!"gx_device_color_info_s", !13, i64 0, !13, i64 4, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14}
!111 = !{!"gx_page_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16}
!112 = !{!"gx_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!113 = !{i64 0, i64 8, !5, i64 8, i64 4, !54, i64 12, i64 4, !54, i64 16, i64 8, !52, i64 24, i64 16, !23, i64 40, i64 4, !54}
!114 = !{!115, !6, i64 88}
!115 = !{!"gx_device_color_s", !6, i64 0, !7, i64 8, !22, i64 48, !116, i64 56}
!116 = !{!"_mask", !31, i64 0, !12, i64 24, !6, i64 32}
!117 = !{!118, !13, i64 176}
!118 = !{!"gx_color_tile_s", !12, i64 0, !13, i64 8, !11, i64 16, !13, i64 32, !21, i64 36, !14, i64 64, !119, i64 96, !119, i64 136, !13, i64 176, !13, i64 180}
!119 = !{!"gx_strip_bitmap_s", !6, i64 0, !13, i64 8, !22, i64 12, !12, i64 24, !45, i64 32, !45, i64 34, !45, i64 36, !45, i64 38}
!120 = !{!118, !17, i64 52}
!121 = !{!119, !45, i64 32}
!122 = !{!118, !17, i64 56}
!123 = !{!119, !45, i64 34}
!124 = !{!109, !6, i64 464}
!125 = !{!109, !6, i64 472}
!126 = !{!127, !6, i64 0}
!127 = !{!"gx_rop_source_s", !6, i64 0, !13, i64 8, !13, i64 12, !12, i64 16, !7, i64 24, !13, i64 40}
!128 = !{!127, !13, i64 8}
!129 = !{!127, !13, i64 12}
!130 = !{!127, !12, i64 16}
!131 = !{!127, !13, i64 40}
!132 = !{!118, !16, i64 80}
!133 = !{!118, !16, i64 64}
!134 = !{!118, !16, i64 88}
!135 = !{!118, !16, i64 72}
!136 = distinct !{!136, !105}
!137 = !{!118, !17, i64 36}
!138 = !{!118, !17, i64 44}
!139 = !{!118, !17, i64 40}
!140 = !{!118, !17, i64 48}
!141 = !{!118, !13, i64 108}
!142 = !{!118, !13, i64 112}
!143 = !{!119, !6, i64 0}
!144 = !{!109, !6, i64 272}
!145 = !{!119, !13, i64 8}
!146 = !{!119, !12, i64 24}
!147 = !{!119, !13, i64 12}
!148 = !{!119, !13, i64 16}
!149 = !{!119, !45, i64 36}
!150 = !{!119, !45, i64 38}
!151 = distinct !{!151, !105}
!152 = !{!153, !6, i64 32}
!153 = !{!"gs_memory_struct_type_s", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!154 = !{!118, !13, i64 180}
!155 = !{!153, !6, i64 40}
!156 = !{!157, !6, i64 0}
!157 = !{!"gx_device_color_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!158 = distinct !{!158, !105}
!159 = !{!157, !6, i64 8}
!160 = distinct !{!160, !105}
!161 = !{!118, !13, i64 148}
!162 = !{!118, !13, i64 152}
!163 = distinct !{!163, !105}
!164 = distinct !{!164, !105}
!165 = distinct !{!165, !105}
!166 = distinct !{!166, !105}
!167 = !{!157, !6, i64 24}
!168 = !{!157, !6, i64 32}
!169 = distinct !{!169, !105}
!170 = distinct !{!170, !105}
!171 = distinct !{!171, !105}
!172 = !{!173, !6, i64 312}
!173 = !{!"gs_imager_state_s", !6, i64 0, !42, i64 8, !44, i64 80, !13, i64 128, !45, i64 132, !13, i64 136, !17, i64 140, !46, i64 144, !13, i64 160, !13, i64 164, !6, i64 168, !7, i64 176, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !7, i64 232, !7, i64 264, !6, i64 296, !6, i64 304, !6, i64 312}
!174 = !{!115, !12, i64 80}
!175 = !{!115, !6, i64 0}
!176 = !{!177, !6, i64 8}
!177 = !{!"gx_pattern_cache_s", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !12, i64 32, !12, i64 40, !6, i64 48}
!178 = !{!177, !13, i64 16}
!179 = !{!118, !12, i64 0}
!180 = !{!118, !13, i64 8}
!181 = !{!109, !13, i64 52}
!182 = !{!22, !13, i64 0}
!183 = !{!118, !45, i64 128}
!184 = !{!115, !13, i64 48}
!185 = !{!22, !13, i64 4}
!186 = !{!118, !45, i64 130}
!187 = !{!115, !13, i64 52}
!188 = !{!118, !6, i64 136}
