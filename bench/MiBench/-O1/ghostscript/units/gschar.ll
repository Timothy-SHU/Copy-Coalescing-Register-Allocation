; ModuleID = 'gschar.c'
source_filename = "gschar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_show_enum_s = type { ptr, i32, %struct.gs_const_string_s, float, float, i64, float, float, i32, i32, i32, i32, ptr, i32, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, ptr, %struct.gs_log2_scale_point_s, ptr, ptr, ptr, i32, i64, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, %struct.gs_point_s, i32, %struct.gs_log2_scale_point_s, %struct.gx_font_stack_s, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_point_s = type { double, double }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { ptr, i32 }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gx_device_null_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, ptr, i64, i8, ptr, i32, i32, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_font_base_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_font_type0_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, ptr, i32, ptr, i32, ptr }

@st_gs_show_enum = internal constant %struct.gs_memory_struct_type_s { i32 376, ptr @.str.4, ptr null, ptr null, ptr @show_enum_enum_ptrs, ptr @show_enum_reloc_ptrs, ptr null }, align 8
@.str = private unnamed_addr constant [33 x i8] c"gs_show_enum_release(dev_cache2)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"gs_show_enum_release(dev_cache)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"gs_show_enum_release(dev_null)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"gs_show_enum_release(enum)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"gs_show_enum\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.5 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@st_device_null = external constant %struct.gs_memory_struct_type_s, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"stringwidth_setup(dev_null)\00", align 1
@set_cache_device.max_cdim = internal unnamed_addr constant [3 x i64] [i64 268423168, i64 134211584, i64 67105792], align 16
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"show_cache_setup(dev_cache)\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"show_cache_setup(dev_cache2)\00", align 1
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gs_no_build_char(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gs_no_encode_char(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i64 2147483647
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_show_enum_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr %5(ptr noundef %0, ptr noundef nonnull @st_gs_show_enum, ptr noundef %2) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  store ptr %1, ptr %6, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.gs_show_enum_s, ptr %6, i64 0, i32 2
  store ptr null, ptr %9, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.gs_show_enum_s, ptr %6, i64 0, i32 2, i32 1
  store i32 0, ptr %10, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.gs_show_enum_s, ptr %6, i64 0, i32 21
  %12 = getelementptr inbounds %struct.gs_show_enum_s, ptr %6, i64 0, i32 33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store i32 -1, ptr %12, align 8, !tbaa !26
  br label %13

13:                                               ; preds = %3, %8
  %14 = phi ptr [ %6, %8 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @gs_show_enum_release(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  tail call void %11(ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull @.str) #14
  store ptr null, ptr %6, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  tail call void %18(ptr noundef %4, ptr noundef nonnull %14, ptr noundef nonnull @.str.1) #14
  store ptr null, ptr %13, align 8, !tbaa !38
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  tail call void %25(ptr noundef %4, ptr noundef nonnull %21, ptr noundef nonnull @.str.2) #14
  store ptr null, ptr %20, align 8, !tbaa !39
  br label %26

26:                                               ; preds = %23, %19
  %27 = icmp eq ptr %1, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  tail call void %30(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #14
  br label %31

31:                                               ; preds = %28, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_show_n_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 0, ptr %6, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, @gx_dc_procs_none
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %23, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 40
  %25 = load i32, ptr %24, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %25, ptr %26, align 4, !tbaa !54
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %27, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %29 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %29, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %28, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %30, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.gs_font_s, ptr %16, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = tail call i32 %32(ptr noundef nonnull %0, ptr noundef %16) #14
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %14
  %36 = load i32, ptr %26, align 4, !tbaa !54
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 -1
  %39 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %38, ptr %39, align 4, !tbaa !62
  %40 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = load i32, ptr %24, align 8, !tbaa !53
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi ptr [ %47, %45 ], [ %1, %42 ]
  %50 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %49, ptr %50, align 8, !tbaa !65
  br label %51

51:                                               ; preds = %11, %14, %35, %48
  %52 = phi i32 [ 0, %48 ], [ %12, %11 ], [ %33, %14 ], [ %40, %35 ]
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_show_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 0, ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, @gx_dc_procs_none
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %12, %3
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %19, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %21, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %22, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %23, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %24, align 4, !tbaa !52
  %25 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 40
  %26 = load i32, ptr %25, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %26, ptr %27, align 4, !tbaa !54
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %30, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %29, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %31, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.gs_font_s, ptr %17, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = tail call i32 %33(ptr noundef nonnull %0, ptr noundef %17) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %15
  %37 = load i32, ptr %27, align 4, !tbaa !54
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 1, i32 -1
  %40 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %39, ptr %40, align 4, !tbaa !62
  %41 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %25, align 8, !tbaa !53
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %48, %46 ], [ %1, %43 ]
  %51 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %50, ptr %51, align 8, !tbaa !65
  br label %52

52:                                               ; preds = %12, %15, %36, %49
  %53 = phi i32 [ 0, %49 ], [ %13, %12 ], [ %34, %15 ], [ %41, %36 ]
  ret i32 %53
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_ashow_n_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %5, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, @gx_dc_procs_none
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %12, %6
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %19, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %4, ptr %21, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %22, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %23, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %24, align 4, !tbaa !52
  %25 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 40
  %26 = load i32, ptr %25, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %26, ptr %27, align 4, !tbaa !54
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %30, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %29, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %31, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.gs_font_s, ptr %17, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = tail call i32 %33(ptr noundef nonnull %0, ptr noundef %17) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %15
  %37 = load i32, ptr %27, align 4, !tbaa !54
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 1, i32 -1
  %40 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %39, ptr %40, align 4, !tbaa !62
  %41 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %25, align 8, !tbaa !53
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %48, %46 ], [ %1, %43 ]
  %51 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %50, ptr %51, align 8, !tbaa !65
  br label %52

52:                                               ; preds = %12, %15, %36, %49
  %53 = phi i32 [ 0, %49 ], [ %13, %12 ], [ %34, %15 ], [ %41, %36 ]
  %54 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 1, ptr %54, align 8, !tbaa !51
  %55 = fptrunc double %2 to float
  %56 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 6
  store float %55, ptr %56, align 8, !tbaa !66
  %57 = fptrunc double %3 to float
  %58 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 7
  store float %57, ptr %58, align 4, !tbaa !67
  %59 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %59, align 8, !tbaa !40
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_ashow_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 @gs_ashow_n_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, ptr noundef %4, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_widthshow_n_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %6, ptr %8, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, @gx_dc_procs_none
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13, %7
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %20 = load i32, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %5, ptr %22, align 8, !tbaa !24
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %23, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %25, align 4, !tbaa !52
  %26 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 40
  %27 = load i32, ptr %26, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %27, ptr %28, align 4, !tbaa !54
  %29 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %29, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %31 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %31, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %30, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.gs_font_s, ptr %18, i64 0, i32 15
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = tail call i32 %34(ptr noundef nonnull %0, ptr noundef %18) #14
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %16
  %38 = load i32, ptr %28, align 4, !tbaa !54
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 1, i32 -1
  %41 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %40, ptr %41, align 4, !tbaa !62
  %42 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %37
  %45 = load i32, ptr %26, align 8, !tbaa !53
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi ptr [ %49, %47 ], [ %1, %44 ]
  %52 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %51, ptr %52, align 8, !tbaa !65
  br label %53

53:                                               ; preds = %13, %16, %37, %50
  %54 = phi i32 [ 0, %50 ], [ %14, %13 ], [ %35, %16 ], [ %42, %37 ]
  %55 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 %4, ptr %55, align 8, !tbaa !50
  %56 = fptrunc double %2 to float
  %57 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 3
  store float %56, ptr %57, align 8, !tbaa !68
  %58 = fptrunc double %3 to float
  %59 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 4
  store float %58, ptr %59, align 4, !tbaa !69
  %60 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %60, align 8, !tbaa !40
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_widthshow_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #15
  %8 = trunc i64 %7 to i32
  %9 = tail call i32 @gs_widthshow_n_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_awidthshow_n_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, double noundef %5, double noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %8, ptr %10, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, @gx_dc_procs_none
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %15, %9
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %7, ptr %24, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %25, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %26, align 8, !tbaa !51
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %27, align 4, !tbaa !52
  %28 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 40
  %29 = load i32, ptr %28, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %29, ptr %30, align 4, !tbaa !54
  %31 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %31, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %33 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %33, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %32, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %34, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.gs_font_s, ptr %20, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = tail call i32 %36(ptr noundef nonnull %0, ptr noundef %20) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %18
  %40 = load i32, ptr %30, align 4, !tbaa !54
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 1, i32 -1
  %43 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %42, ptr %43, align 4, !tbaa !62
  %44 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %28, align 8, !tbaa !53
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi ptr [ %51, %49 ], [ %1, %46 ]
  %54 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %53, ptr %54, align 8, !tbaa !65
  br label %55

55:                                               ; preds = %15, %18, %39, %52
  %56 = phi i32 [ 0, %52 ], [ %16, %15 ], [ %37, %18 ], [ %44, %39 ]
  %57 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 1, ptr %57, align 8, !tbaa !51
  %58 = fptrunc double %5 to float
  %59 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 6
  store float %58, ptr %59, align 8, !tbaa !66
  %60 = fptrunc double %6 to float
  %61 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 7
  store float %60, ptr %61, align 4, !tbaa !67
  %62 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %62, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 %4, ptr %63, align 8, !tbaa !50
  %64 = fptrunc double %2 to float
  %65 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 3
  store float %64, ptr %65, align 8, !tbaa !68
  %66 = fptrunc double %3 to float
  %67 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 4
  store float %66, ptr %67, align 4, !tbaa !69
  store i32 1, ptr %62, align 8, !tbaa !40
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_awidthshow_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, double noundef %5, double noundef %6, ptr noundef %7) local_unnamed_addr #1 {
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #15
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 @gs_awidthshow_n_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, double noundef %5, double noundef %6, ptr noundef %7, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_kshow_n_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.gs_font_s, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !70
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %3, ptr %11, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, @gx_dc_procs_none
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16, %10
  %20 = load ptr, ptr %5, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %24, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %25, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %26, align 8, !tbaa !51
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %27, align 4, !tbaa !52
  %28 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 40
  %29 = load i32, ptr %28, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %29, ptr %30, align 4, !tbaa !54
  %31 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %31, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %33 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %33, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %32, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %34, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.gs_font_s, ptr %20, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = tail call i32 %36(ptr noundef nonnull %0, ptr noundef %20) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %19
  %40 = load i32, ptr %30, align 4, !tbaa !54
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 1, i32 -1
  %43 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %42, ptr %43, align 4, !tbaa !62
  %44 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %28, align 8, !tbaa !53
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi ptr [ %51, %49 ], [ %1, %46 ]
  %54 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %53, ptr %54, align 8, !tbaa !65
  br label %55

55:                                               ; preds = %16, %19, %39, %52
  %56 = phi i32 [ 0, %52 ], [ %17, %16 ], [ %37, %19 ], [ %44, %39 ]
  %57 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 1, ptr %57, align 4, !tbaa !52
  %58 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %58, align 8, !tbaa !40
  br label %59

59:                                               ; preds = %4, %55
  %60 = phi i32 [ %56, %55 ], [ -10, %4 ]
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_kshow_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @gs_kshow_n_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_xyshow_n_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, @gx_dc_procs_none
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %19, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %20, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %21, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %22, align 4, !tbaa !52
  %23 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 40
  %24 = load i32, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %24, ptr %25, align 4, !tbaa !54
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %26, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %28, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %27, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %29, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.gs_font_s, ptr %15, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = tail call i32 %31(ptr noundef nonnull %0, ptr noundef %15) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %13
  %35 = load i32, ptr %25, align 4, !tbaa !54
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 1, i32 -1
  %38 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %37, ptr %38, align 4, !tbaa !62
  %39 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = load i32, ptr %23, align 8, !tbaa !53
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi ptr [ %46, %44 ], [ %1, %41 ]
  %49 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %48, ptr %49, align 8, !tbaa !65
  br label %50

50:                                               ; preds = %10, %13, %34, %47
  %51 = phi i32 [ 0, %47 ], [ %11, %10 ], [ %32, %13 ], [ %39, %34 ]
  %52 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 -1, ptr %52, align 4, !tbaa !52
  %53 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %53, align 8, !tbaa !40
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_xyshow_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, @gx_dc_procs_none
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %11, %3
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %23, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 40
  %25 = load i32, ptr %24, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %25, ptr %26, align 4, !tbaa !54
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %27, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %29 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %29, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %28, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %30, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.gs_font_s, ptr %16, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = tail call i32 %32(ptr noundef nonnull %0, ptr noundef %16) #14
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %14
  %36 = load i32, ptr %26, align 4, !tbaa !54
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 -1
  %39 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %38, ptr %39, align 4, !tbaa !62
  %40 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = load i32, ptr %24, align 8, !tbaa !53
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi ptr [ %47, %45 ], [ %1, %42 ]
  %50 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %49, ptr %50, align 8, !tbaa !65
  br label %51

51:                                               ; preds = %11, %14, %35, %48
  %52 = phi i32 [ 0, %48 ], [ %12, %11 ], [ %33, %14 ], [ %40, %35 ]
  %53 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 -1, ptr %53, align 4, !tbaa !52
  %54 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %54, align 8, !tbaa !40
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_glyphshow_init(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc i32 @setup_glyph(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @setup_glyph(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.gs_font_s, ptr %5, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 1, ptr %10, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 0, ptr %11, align 8, !tbaa !40
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, @gx_dc_procs_none
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16, %9
  %20 = load ptr, ptr %4, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr @.str.5, ptr %24, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %25, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %26, align 8, !tbaa !51
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %27, align 4, !tbaa !52
  %28 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 40
  %29 = load i32, ptr %28, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %29, ptr %30, align 4, !tbaa !54
  %31 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %31, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %33 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %33, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %32, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %34, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.gs_font_s, ptr %20, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = tail call i32 %36(ptr noundef nonnull %0, ptr noundef %20) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %19
  %40 = load i32, ptr %30, align 4, !tbaa !54
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 1, i32 -1
  %43 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %42, ptr %43, align 4, !tbaa !62
  %44 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %28, align 8, !tbaa !53
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi ptr [ %51, %49 ], [ %1, %46 ]
  %54 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %53, ptr %54, align 8, !tbaa !65
  br label %55

55:                                               ; preds = %16, %19, %39, %52
  %56 = phi i32 [ 0, %52 ], [ %17, %16 ], [ %37, %19 ], [ %44, %39 ]
  %57 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 26
  store i64 %2, ptr %57, align 8, !tbaa !71
  %58 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 19
  store ptr @gs_glyphshow_encode_char, ptr %58, align 8, !tbaa !72
  br label %59

59:                                               ; preds = %3, %55
  %60 = phi i32 [ %56, %55 ], [ -10, %3 ]
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_glyphpath_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call fastcc i32 @setup_glyph(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i32 1, i32 2
  %8 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %7, ptr %8, align 4, !tbaa !54
  %9 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 -1, ptr %9, align 4, !tbaa !62
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_cshow_n_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, @gx_dc_procs_none
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %19, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %20, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %21, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %22, align 4, !tbaa !52
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %23, align 4, !tbaa !54
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %24, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %26, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %25, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %27, align 8, !tbaa !56
  %28 = getelementptr inbounds %struct.gs_font_s, ptr %15, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = tail call i32 %29(ptr noundef nonnull %0, ptr noundef %15) #14
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %13
  %33 = load i32, ptr %23, align 4, !tbaa !54
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 1, i32 -1
  %36 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %35, ptr %36, align 4, !tbaa !62
  %37 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %1, ptr %40, align 8, !tbaa !65
  br label %41

41:                                               ; preds = %10, %13, %32, %39
  %42 = phi i32 [ 0, %39 ], [ %11, %10 ], [ %30, %13 ], [ %37, %32 ]
  %43 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 -1, ptr %43, align 4, !tbaa !52
  %44 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 -1, ptr %44, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %45, align 8, !tbaa !40
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_cshow_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, @gx_dc_procs_none
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %11, %3
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %23, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %24, align 4, !tbaa !54
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %25, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %27, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %26, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.gs_font_s, ptr %16, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = tail call i32 %30(ptr noundef nonnull %0, ptr noundef %16) #14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %14
  %34 = load i32, ptr %24, align 4, !tbaa !54
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 1, i32 -1
  %37 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %36, ptr %37, align 4, !tbaa !62
  %38 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %1, ptr %41, align 8, !tbaa !65
  br label %42

42:                                               ; preds = %11, %14, %33, %40
  %43 = phi i32 [ 0, %40 ], [ %12, %11 ], [ %31, %14 ], [ %38, %33 ]
  %44 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 -1, ptr %44, align 4, !tbaa !52
  %45 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 -1, ptr %45, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %46, align 8, !tbaa !40
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_stringwidth_n_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  store i32 0, ptr %6, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, @gx_dc_procs_none
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %23, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %24, align 4, !tbaa !54
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %25, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %27, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %26, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.gs_font_s, ptr %16, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = tail call i32 %30(ptr noundef nonnull %0, ptr noundef %16) #14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %14
  %34 = load i32, ptr %24, align 4, !tbaa !54
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 1, i32 -1
  %37 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %36, ptr %37, align 4, !tbaa !62
  %38 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %1, ptr %41, align 8, !tbaa !65
  br label %42

42:                                               ; preds = %40, %33, %14, %11
  %43 = phi i32 [ 0, %40 ], [ %12, %11 ], [ %31, %14 ], [ %38, %33 ]
  %44 = load ptr, ptr %1, align 8, !tbaa !27
  %45 = icmp slt i32 %43, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %44, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = tail call ptr %48(ptr noundef %44, ptr noundef nonnull @st_device_null, ptr noundef nonnull @.str.6) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %69, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 1, ptr %52, align 8, !tbaa !55
  %53 = tail call i32 @gs_gsave(ptr noundef nonnull %1) #14
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %57 = load i32, ptr %56, align 8, !tbaa !48
  %58 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %57, ptr %58, align 8, !tbaa !49
  tail call void @gs_make_null_device(ptr noundef nonnull %49, ptr noundef %44) #14
  %59 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 43
  %60 = load ptr, ptr %59, align 8, !tbaa !73
  %61 = getelementptr inbounds %struct.gx_device_null_s, ptr %49, i64 0, i32 22
  store ptr %60, ptr %61, align 8, !tbaa !74
  store ptr %49, ptr %59, align 8, !tbaa !73
  %62 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 27
  store i32 0, ptr %62, align 4, !tbaa !79
  %63 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 23
  store ptr %49, ptr %63, align 8, !tbaa !39
  %64 = tail call i32 @gs_newpath(ptr noundef nonnull %1) #14
  %65 = tail call i32 @gx_translate_to_fixed(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0) #14
  %66 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 28
  %67 = load ptr, ptr %66, align 8, !tbaa !80
  %68 = tail call i32 @gx_path_add_point(ptr noundef %67, i64 noundef 0, i64 noundef 0) #14
  br label %69

69:                                               ; preds = %42, %46, %51, %55
  %70 = phi i32 [ %68, %55 ], [ %43, %42 ], [ -25, %46 ], [ %53, %51 ]
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_stringwidth_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @gs_stringwidth_n_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_charpath_n_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %3, ptr %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, @gx_dc_procs_none
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %23, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %24, align 4, !tbaa !54
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %25, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %27, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %26, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.gs_font_s, ptr %16, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = tail call i32 %30(ptr noundef nonnull %0, ptr noundef %16) #14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %14
  %34 = load i32, ptr %24, align 4, !tbaa !54
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 1, i32 -1
  %37 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %36, ptr %37, align 4, !tbaa !62
  %38 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %1, ptr %41, align 8, !tbaa !65
  br label %42

42:                                               ; preds = %11, %14, %33, %40
  %43 = phi i32 [ 0, %40 ], [ %12, %11 ], [ %31, %14 ], [ %38, %33 ]
  %44 = icmp eq i32 %4, 0
  %45 = select i1 %44, i32 1, i32 2
  %46 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %45, ptr %46, align 4, !tbaa !54
  %47 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 -1, ptr %47, align 4, !tbaa !62
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_charpath_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, @gx_dc_procs_none
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12, %4
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %19, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %21, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %22, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %23, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %24, align 4, !tbaa !52
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %25, align 4, !tbaa !54
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %26, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %28, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %27, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %29, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.gs_font_s, ptr %17, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = tail call i32 %31(ptr noundef nonnull %0, ptr noundef %17) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %15
  %35 = load i32, ptr %25, align 4, !tbaa !54
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 1, i32 -1
  %38 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %37, ptr %38, align 4, !tbaa !62
  %39 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %1, ptr %42, align 8, !tbaa !65
  br label %43

43:                                               ; preds = %12, %15, %34, %41
  %44 = phi i32 [ 0, %41 ], [ %13, %12 ], [ %32, %15 ], [ %39, %34 ]
  %45 = icmp eq i32 %3, 0
  %46 = select i1 %45, i32 1, i32 2
  %47 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %46, ptr %47, align 4, !tbaa !54
  %48 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 -1, ptr %48, align 4, !tbaa !62
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_charboxpath_n_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %3, ptr %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, @gx_dc_procs_none
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %23, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %24, align 4, !tbaa !54
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %25, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %27, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %26, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.gs_font_s, ptr %16, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = tail call i32 %30(ptr noundef nonnull %0, ptr noundef %16) #14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %14
  %34 = load i32, ptr %24, align 4, !tbaa !54
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 1, i32 -1
  %37 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %36, ptr %37, align 4, !tbaa !62
  %38 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %1, ptr %41, align 8, !tbaa !65
  br label %42

42:                                               ; preds = %11, %14, %33, %40
  %43 = phi i32 [ 0, %40 ], [ %12, %11 ], [ %31, %14 ], [ %38, %33 ]
  %44 = icmp eq i32 %4, 0
  %45 = select i1 %44, i32 3, i32 4
  %46 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %45, ptr %46, align 4, !tbaa !54
  %47 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 0, ptr %47, align 4, !tbaa !62
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_charboxpath_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, @gx_dc_procs_none
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = tail call i32 @gx_remap_color(ptr noundef %1) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12, %4
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  store ptr %1, ptr %0, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 42
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  store i32 %19, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %21, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  store i64 -1, ptr %22, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %23, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %24, align 4, !tbaa !52
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %25, align 4, !tbaa !54
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %26, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %28, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %27, i8 0, i64 28, i1 false)
  store ptr @continue_show, ptr %29, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.gs_font_s, ptr %17, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = tail call i32 %31(ptr noundef nonnull %0, ptr noundef %17) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %15
  %35 = load i32, ptr %25, align 4, !tbaa !54
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 1, i32 -1
  %38 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 %37, ptr %38, align 4, !tbaa !62
  %39 = tail call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  store ptr %1, ptr %42, align 8, !tbaa !65
  br label %43

43:                                               ; preds = %12, %15, %34, %41
  %44 = phi i32 [ 0, %41 ], [ %13, %12 ], [ %32, %15 ], [ %39, %34 ]
  %45 = icmp eq i32 %3, 0
  %46 = select i1 %45, i32 3, i32 4
  %47 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  store i32 %46, ptr %47, align 4, !tbaa !54
  %48 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  store i32 0, ptr %48, align 4, !tbaa !62
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setcachedevice(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 31
  %5 = load i32, ptr %4, align 8, !tbaa !81
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !82
  %10 = fpext float %9 to double
  %11 = load float, ptr %2, align 4, !tbaa !82
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27
  %15 = tail call i32 @gs_distance_transform2fixed(ptr noundef nonnull %13, double noundef %12, double noundef %10, ptr noundef nonnull %14) #14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cached_char_s, ptr %19, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !83
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ 3, %21 ], [ 2, %17 ]
  store i32 %24, ptr %4, align 8, !tbaa !81
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !55
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %3, %7, %23
  %30 = phi i32 [ %28, %23 ], [ -21, %3 ], [ %15, %7 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds float, ptr %2, i64 2
  %34 = tail call fastcc i32 @set_cache_device(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %33)
  br label %35

35:                                               ; preds = %29, %32
  %36 = phi i32 [ %34, %32 ], [ %30, %29 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setcharwidth(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 31
  %6 = load i32, ptr %5, align 8, !tbaa !81
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27
  %11 = tail call i32 @gs_distance_transform2fixed(ptr noundef nonnull %9, double noundef %2, double noundef %3, ptr noundef nonnull %10) #14
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cached_char_s, ptr %15, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !83
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi i32 [ 3, %17 ], [ 2, %13 ]
  store i32 %20, ptr %5, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !55
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %8, %4, %19
  %26 = phi i32 [ %24, %19 ], [ -21, %4 ], [ %11, %8 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @set_cache_device(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca %struct.gs_log2_scale_point_s, align 4
  %5 = alloca %struct.gs_fixed_rect_s, align 8
  %6 = alloca %struct.gs_fixed_point_s, align 8
  %7 = alloca %struct.gs_fixed_point_s, align 8
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = load float, ptr %2, align 4, !tbaa !82
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !82
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !82
  %15 = getelementptr inbounds float, ptr %2, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !82
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 39
  %18 = load i8, ptr %17, align 4, !tbaa !85
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %242

20:                                               ; preds = %3
  store i8 1, ptr %17, align 4, !tbaa !85
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 26
  %22 = load i64, ptr %21, align 8, !tbaa !71
  %23 = icmp eq i64 %22, 2147483647
  br i1 %23, label %242, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %242, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 38
  %30 = load i32, ptr %29, align 8, !tbaa !86
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %242, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 35
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.gs_font_s, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !87
  %37 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 43
  %38 = load ptr, ptr %37, align 8, !tbaa !73
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %38, i64 0, i32 21, i32 20
  %40 = load ptr, ptr %39, align 8, !tbaa !88
  %41 = tail call i32 %40(ptr noundef %38, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2
  %43 = fpext float %10 to double
  %44 = fpext float %12 to double
  %45 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %42, double noundef %43, double noundef %44, ptr noundef nonnull %6) #14
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %237, label %47

47:                                               ; preds = %32
  %48 = fpext float %16 to double
  %49 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %42, double noundef %43, double noundef %48, ptr noundef nonnull %7) #14
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %237, label %51

51:                                               ; preds = %47
  %52 = fpext float %14 to double
  %53 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %42, double noundef %52, double noundef %44, ptr noundef nonnull %8) #14
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %237, label %55

55:                                               ; preds = %51
  %56 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %42, double noundef %52, double noundef %48, ptr noundef nonnull %9) #14
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %237, label %58

58:                                               ; preds = %55
  %59 = load i64, ptr %6, align 8, !tbaa !90
  %60 = load i64, ptr %9, align 8, !tbaa !90
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i64 %60, ptr %6, align 8, !tbaa !90
  store i64 %59, ptr %9, align 8, !tbaa !90
  br label %63

63:                                               ; preds = %62, %58
  %64 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !91
  %66 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !91
  %68 = icmp sgt i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i64 %67, ptr %64, align 8, !tbaa !91
  store i64 %65, ptr %66, align 8, !tbaa !91
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i64, ptr %7, align 8, !tbaa !90
  %72 = load i64, ptr %8, align 8, !tbaa !90
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i64 %72, ptr %7, align 8, !tbaa !90
  store i64 %71, ptr %8, align 8, !tbaa !90
  br label %75

75:                                               ; preds = %74, %70
  %76 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !91
  %78 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !91
  %80 = icmp sgt i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i64 %79, ptr %76, align 8, !tbaa !91
  store i64 %77, ptr %78, align 8, !tbaa !91
  br label %82

82:                                               ; preds = %81, %75
  %83 = load i64, ptr %7, align 8, !tbaa !90
  %84 = load i64, ptr %6, align 8, !tbaa !90
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  store i64 %83, ptr %6, align 8, !tbaa !90
  %87 = load i64, ptr %8, align 8, !tbaa !90
  store i64 %87, ptr %9, align 8, !tbaa !90
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i64, ptr %76, align 8, !tbaa !91
  %90 = load i64, ptr %64, align 8, !tbaa !91
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  store i64 %89, ptr %64, align 8, !tbaa !91
  %93 = load i64, ptr %78, align 8, !tbaa !91
  store i64 %93, ptr %66, align 8, !tbaa !91
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i64, ptr %9, align 8, !tbaa !90
  %96 = load i64, ptr %6, align 8, !tbaa !90
  %97 = sub nsw i64 %95, %96
  %98 = load i64, ptr %66, align 8, !tbaa !91
  %99 = load i64, ptr %64, align 8, !tbaa !91
  %100 = sub nsw i64 %98, %99
  call fastcc void @show_set_scale(ptr noundef %0)
  %101 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 20
  %102 = load i32, ptr %101, align 8, !tbaa !92
  store i32 %102, ptr %4, align 4, !tbaa !93
  %103 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 20, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !94
  %105 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %4, i64 0, i32 1
  store i32 %104, ptr %105, align 4, !tbaa !95
  %106 = icmp sgt i32 %41, 1
  br i1 %106, label %107, label %125

107:                                              ; preds = %94
  %108 = add i32 %102, %104
  %109 = sub i32 %41, %108
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = icmp sgt i32 %102, %104
  br i1 %112, label %119, label %113

113:                                              ; preds = %111
  %114 = add nuw nsw i32 %109, 1
  %115 = lshr i32 %114, 1
  %116 = add nsw i32 %115, %102
  store i32 %116, ptr %4, align 4, !tbaa !93
  %117 = lshr i32 %109, 1
  %118 = add nsw i32 %117, %104
  store i32 %118, ptr %105, align 4, !tbaa !95
  br label %130

119:                                              ; preds = %111
  %120 = lshr i32 %109, 1
  %121 = add nsw i32 %120, %102
  store i32 %121, ptr %4, align 4, !tbaa !93
  %122 = add nuw nsw i32 %109, 1
  %123 = lshr i32 %122, 1
  %124 = add nsw i32 %123, %104
  store i32 %124, ptr %105, align 4, !tbaa !95
  br label %130

125:                                              ; preds = %94
  %126 = getelementptr inbounds %struct.gs_font_s, ptr %34, i64 0, i32 13
  %127 = load i32, ptr %126, align 8, !tbaa !96
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 0, ptr %105, align 4, !tbaa !95
  store i32 0, ptr %4, align 4, !tbaa !93
  br label %130

130:                                              ; preds = %107, %119, %113, %125, %129
  %131 = load i32, ptr %4, align 4, !tbaa !93
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x i64], ptr @set_cache_device.max_cdim, i64 0, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !84
  %135 = icmp sgt i64 %97, %134
  br i1 %135, label %237, label %136

136:                                              ; preds = %130
  %137 = load i32, ptr %105, align 4, !tbaa !95
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i64], ptr @set_cache_device.max_cdim, i64 0, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !84
  %141 = icmp sgt i64 %100, %140
  br i1 %141, label %237, label %142

142:                                              ; preds = %136
  %143 = trunc i64 %97 to i32
  %144 = lshr i32 %143, 12
  %145 = add nuw nsw i32 %144, 2
  %146 = shl i32 %145, %131
  %147 = trunc i32 %146 to i16
  %148 = trunc i64 %100 to i32
  %149 = lshr i32 %148, 12
  %150 = add nuw nsw i32 %149, 2
  %151 = shl i32 %150, %137
  %152 = trunc i32 %151 to i16
  %153 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %154 = load ptr, ptr %153, align 8, !tbaa !38
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = call fastcc i32 @show_cache_setup(ptr noundef %0), !range !97
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %237, label %159

159:                                              ; preds = %156, %142
  %160 = load ptr, ptr %153, align 8, !tbaa !38
  %161 = and i32 %146, 65535
  %162 = and i32 %151, 65535
  %163 = udiv i32 80000, %162
  %164 = icmp ugt i32 %161, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load i32, ptr %4, align 4, !tbaa !93
  %167 = load i32, ptr %105, align 4, !tbaa !95
  %168 = add nsw i32 %167, %166
  %169 = shl nuw i32 1, %168
  %170 = icmp sgt i32 %169, %41
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 22
  %173 = load ptr, ptr %172, align 8, !tbaa !36
  br label %174

174:                                              ; preds = %159, %165, %171
  %175 = phi ptr [ %173, %171 ], [ null, %165 ], [ null, %159 ]
  %176 = call ptr @gx_alloc_char_bits(ptr noundef %36, ptr noundef %160, ptr noundef %175, i16 noundef zeroext %147, i16 noundef zeroext %152, ptr noundef nonnull %4, i32 noundef %41) #14
  %177 = icmp eq ptr %176, null
  br i1 %177, label %237, label %178

178:                                              ; preds = %174
  %179 = load i64, ptr %6, align 8, !tbaa !90
  %180 = sub i64 4095, %179
  %181 = and i64 %180, -4096
  %182 = getelementptr inbounds %struct.cached_char_s, ptr %176, i64 0, i32 14
  store i64 %181, ptr %182, align 8, !tbaa !98
  %183 = load i64, ptr %64, align 8, !tbaa !91
  %184 = sub i64 4095, %183
  %185 = and i64 %184, -4096
  %186 = getelementptr inbounds %struct.cached_char_s, ptr %176, i64 0, i32 14, i32 1
  store i64 %185, ptr %186, align 8, !tbaa !101
  %187 = call i32 @gs_gsave(ptr noundef %1) #14
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %178
  call void @gx_free_cached_char(ptr noundef %36, ptr noundef nonnull %176) #14
  br label %237

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr %176, ptr %191, align 8, !tbaa !35
  %192 = getelementptr inbounds %struct.cached_char_s, ptr %176, i64 0, i32 7
  store i64 %22, ptr %192, align 8, !tbaa !102
  %193 = call ptr @gs_rootfont(ptr noundef %1) #14
  %194 = getelementptr inbounds %struct.gs_font_s, ptr %193, i64 0, i32 12
  %195 = load i32, ptr %194, align 4, !tbaa !103
  %196 = trunc i32 %195 to i8
  %197 = getelementptr inbounds %struct.cached_char_s, ptr %176, i64 0, i32 8
  store i8 %196, ptr %197, align 8, !tbaa !104
  %198 = getelementptr inbounds %struct.cached_char_s, ptr %176, i64 0, i32 13
  %199 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %198, ptr noundef nonnull align 8 dereferenceable(16) %199, i64 16, i1 false), !tbaa.struct !83
  %200 = load ptr, ptr %153, align 8, !tbaa !38
  store ptr %200, ptr %37, align 8, !tbaa !73
  %201 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 27
  store i32 0, ptr %201, align 4, !tbaa !79
  %202 = load i64, ptr %182, align 8, !tbaa !98
  %203 = load i32, ptr %4, align 4, !tbaa !93
  %204 = zext nneg i32 %203 to i64
  %205 = shl i64 %202, %204
  %206 = load i64, ptr %186, align 8, !tbaa !101
  %207 = load i32, ptr %105, align 4, !tbaa !95
  %208 = zext nneg i32 %207 to i64
  %209 = shl i64 %206, %208
  %210 = call i32 @gx_translate_to_fixed(ptr noundef %1, i64 noundef %205, i64 noundef %209) #14
  %211 = load i32, ptr %4, align 4, !tbaa !93
  %212 = load i32, ptr %105, align 4, !tbaa !95
  %213 = or i32 %212, %211
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %190
  %216 = shl nuw i32 1, %211
  %217 = shl nuw i32 1, %212
  %218 = call i32 @gx_scale_char_matrix(ptr noundef %1, i32 noundef %216, i32 noundef %217) #14
  br label %219

219:                                              ; preds = %215, %190
  %220 = load ptr, ptr %153, align 8, !tbaa !38
  %221 = getelementptr inbounds %struct.gx_device_memory_s, ptr %220, i64 0, i32 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %221, ptr noundef nonnull align 8 dereferenceable(24) %42, i64 24, i1 false), !tbaa.struct !105
  %222 = load i32, ptr %4, align 4, !tbaa !93
  %223 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 32
  store i32 %222, ptr %223, align 4, !tbaa !106
  %224 = load i32, ptr %105, align 4, !tbaa !95
  %225 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 32, i32 1
  store i32 %224, ptr %225, align 4, !tbaa !107
  %226 = shl i32 %146, 12
  %227 = and i32 %226, 268431360
  %228 = zext nneg i32 %227 to i64
  %229 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i64 %228, ptr %229, align 8, !tbaa !108
  %230 = shl i32 %151, 12
  %231 = and i32 %230, 268431360
  %232 = zext nneg i32 %231 to i64
  %233 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1, i32 1
  store i64 %232, ptr %233, align 8, !tbaa !110
  %234 = call i32 @gx_clip_to_rectangle(ptr noundef %1, ptr noundef nonnull %5) #14
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %219
  call void @gx_set_device_color_1(ptr noundef %1) #14
  store i8 2, ptr %17, align 4, !tbaa !85
  br label %237

237:                                              ; preds = %219, %174, %156, %130, %136, %32, %47, %51, %55, %236, %189
  %238 = phi i1 [ false, %189 ], [ true, %236 ], [ false, %55 ], [ false, %51 ], [ false, %47 ], [ false, %32 ], [ false, %136 ], [ false, %130 ], [ false, %156 ], [ false, %174 ], [ false, %219 ]
  %239 = phi i32 [ %187, %189 ], [ undef, %236 ], [ %56, %55 ], [ %53, %51 ], [ %49, %47 ], [ %45, %32 ], [ 0, %136 ], [ 0, %130 ], [ %157, %156 ], [ 0, %174 ], [ %234, %219 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br i1 %238, label %240, label %242

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 31
  store i32 1, ptr %241, align 8, !tbaa !81
  br label %242

242:                                              ; preds = %28, %24, %20, %3, %237, %240
  %243 = phi i32 [ 1, %240 ], [ %239, %237 ], [ 0, %3 ], [ 0, %20 ], [ 0, %24 ], [ 0, %28 ]
  ret i32 %243
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setcachedevice2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = tail call ptr @gs_rootfont(ptr noundef %1) #14
  %7 = getelementptr inbounds %struct.gs_font_s, ptr %6, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !103
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %78, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds float, ptr %2, i64 8
  %12 = load float, ptr %11, align 4, !tbaa !82
  %13 = getelementptr inbounds float, ptr %2, i64 9
  %14 = load float, ptr %13, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2
  %16 = fneg float %12
  %17 = fpext float %16 to double
  %18 = fneg float %14
  %19 = fpext float %18 to double
  %20 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %15, double noundef %17, double noundef %19, ptr noundef nonnull %4) #14
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %76, label %22

22:                                               ; preds = %10
  %23 = fpext float %12 to double
  %24 = fpext float %14 to double
  %25 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %15, double noundef %23, double noundef %24, ptr noundef nonnull %5) #14
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %76, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 31
  %29 = load i32, ptr %28, align 8, !tbaa !81
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = getelementptr inbounds float, ptr %2, i64 7
  %33 = load float, ptr %32, align 4, !tbaa !82
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds float, ptr %2, i64 6
  %36 = load float, ptr %35, align 4, !tbaa !82
  %37 = fpext float %36 to double
  %38 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27
  %39 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %15, double noundef %37, double noundef %34, ptr noundef nonnull %38) #14
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cached_char_s, ptr %43, i64 0, i32 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !83
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ 3, %45 ], [ 2, %41 ]
  store i32 %48, ptr %28, align 8, !tbaa !81
  %49 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !55
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  br label %53

53:                                               ; preds = %27, %31, %47
  %54 = phi i32 [ %52, %47 ], [ -21, %27 ], [ %39, %31 ]
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %4, align 8, !tbaa !90
  %58 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !91
  %60 = call i32 @gx_translate_to_fixed(ptr noundef %1, i64 noundef %57, i64 noundef %59) #14
  %61 = getelementptr inbounds float, ptr %2, i64 2
  %62 = call fastcc i32 @set_cache_device(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %61)
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = load i64, ptr %5, align 8, !tbaa !90
  %68 = getelementptr inbounds %struct.cached_char_s, ptr %66, i64 0, i32 14
  %69 = load i64, ptr %68, align 8, !tbaa !98
  %70 = add nsw i64 %69, %67
  store i64 %70, ptr %68, align 8, !tbaa !98
  %71 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !91
  %73 = getelementptr inbounds %struct.cached_char_s, ptr %66, i64 0, i32 14, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !101
  %75 = add nsw i64 %74, %72
  store i64 %75, ptr %73, align 8, !tbaa !101
  br label %76

76:                                               ; preds = %56, %10, %22, %53, %64
  %77 = phi i32 [ 1, %64 ], [ %20, %10 ], [ %25, %22 ], [ %54, %53 ], [ %62, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %110

78:                                               ; preds = %3
  %79 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 31
  %80 = load i32, ptr %79, align 8, !tbaa !81
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = getelementptr inbounds float, ptr %2, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !82
  %85 = fpext float %84 to double
  %86 = load float, ptr %2, align 4, !tbaa !82
  %87 = fpext float %86 to double
  %88 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 2
  %89 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27
  %90 = tail call i32 @gs_distance_transform2fixed(ptr noundef nonnull %88, double noundef %87, double noundef %85, ptr noundef nonnull %89) #14
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.cached_char_s, ptr %94, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(16) %89, i64 16, i1 false), !tbaa.struct !83
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi i32 [ 3, %96 ], [ 2, %92 ]
  store i32 %99, ptr %79, align 8, !tbaa !81
  %100 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %101 = load i32, ptr %100, align 8, !tbaa !55
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  br label %104

104:                                              ; preds = %78, %82, %98
  %105 = phi i32 [ %103, %98 ], [ -21, %78 ], [ %90, %82 ]
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds float, ptr %2, i64 2
  %109 = tail call fastcc i32 @set_cache_device(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %108)
  br label %110

110:                                              ; preds = %76, %107, %104
  %111 = phi i32 [ %105, %104 ], [ %109, %107 ], [ %77, %76 ]
  ret i32 %111
}

declare ptr @gs_rootfont(ptr noundef) local_unnamed_addr #4

declare i32 @gs_point_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gs_distance_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_translate_to_fixed(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_show_next(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = tail call i32 %3(ptr noundef %0) #14
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gs_show_current_char(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 25
  %3 = load i64, ptr %2, align 8, !tbaa !111
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gs_show_current_glyph(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 26
  %3 = load i64, ptr %2, align 8, !tbaa !71
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_show_current_width(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27
  %5 = load i64, ptr %4, align 8, !tbaa !112
  %6 = sitofp i64 %5 to double
  %7 = fmul double %6, 0x3F30000000000000
  %8 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !113
  %10 = sitofp i64 %9 to double
  %11 = fmul double %10, 0x3F30000000000000
  %12 = tail call i32 @gs_idtransform(ptr noundef %3, double noundef %7, double noundef %11, ptr noundef %1) #14
  ret i32 %12
}

declare i32 @gs_idtransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gs_kshow_previous_char(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 25
  %3 = load i64, ptr %2, align 8, !tbaa !111
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @gs_kshow_next_char(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !114
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !115
  %9 = zext i8 %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gs_show_current_font(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33
  %3 = load i32, ptr %2, align 8, !tbaa !26
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 35
  br label %11

8:                                                ; preds = %1
  %9 = zext nneg i32 %3 to i64
  %10 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %9
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %7, %5 ], [ %10, %8 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_show_in_charpath(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !54
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_show_width(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gs_show_width_only(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %10, i64 0, i32 42
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !49
  %15 = add nsw i32 %14, 1
  %16 = icmp eq i32 %12, %15
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i32 [ 0, %5 ], [ %17, %9 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_default_init_fstack(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33
  store i32 -1, ptr %3, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_default_next_char(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !25
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = add i32 %4, 1
  store i32 %11, ptr %3, align 8, !tbaa !114
  %12 = zext i32 %4 to i64
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !115
  %15 = zext i8 %14 to i64
  store i64 %15, ptr %1, align 8, !tbaa !84
  br label %16

16:                                               ; preds = %2, %8
  %17 = phi i32 [ 0, %8 ], [ 2, %2 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_default_next_glyph(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !25
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = add i32 %5, 1
  store i32 %12, ptr %4, align 8, !tbaa !114
  %13 = zext i32 %5 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !115
  %16 = zext i8 %15 to i64
  store i64 %16, ptr %1, align 8, !tbaa !84
  store i64 2147483647, ptr %2, align 8, !tbaa !84
  br label %17

17:                                               ; preds = %3, %9
  %18 = phi i32 [ 0, %9 ], [ 2, %3 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @show_enum_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #8 {
  switch i32 %2, label %5 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
    i32 3, label %22
    i32 4, label %25
    i32 5, label %28
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33
  %7 = load i32, ptr %6, align 8, !tbaa !26
  %8 = add nsw i32 %7, 6
  %9 = icmp ult i32 %8, %2
  br i1 %9, label %34, label %10

10:                                               ; preds = %5
  %11 = add i32 %2, -6
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  br label %31

15:                                               ; preds = %4
  %16 = load ptr, ptr %0, align 8, !tbaa !11
  br label %31

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  br label %31

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  br label %31

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  br label %31

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 22
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  br label %31

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 23
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  br label %31

31:                                               ; preds = %28, %25, %22, %19, %17, %15, %10
  %32 = phi ptr [ %14, %10 ], [ %16, %15 ], [ %18, %17 ], [ %21, %19 ], [ %24, %22 ], [ %27, %25 ], [ %30, %28 ]
  %33 = phi ptr [ @ptr_struct_procs, %10 ], [ @ptr_struct_procs, %15 ], [ @ptr_const_string_procs, %17 ], [ @ptr_struct_procs, %19 ], [ @ptr_struct_procs, %22 ], [ @ptr_struct_procs, %25 ], [ @ptr_struct_procs, %28 ]
  store ptr %32, ptr %3, align 8, !tbaa !116
  br label %34

34:                                               ; preds = %31, %5
  %35 = phi ptr [ null, %5 ], [ %33, %31 ]
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define internal void @show_enum_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #14
  store ptr %5, ptr %0, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  tail call void @gs_reloc_const_string(ptr noundef nonnull %6, ptr noundef %2) #14
  %7 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #14
  store ptr %9, ptr %7, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #14
  store ptr %12, ptr %10, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !36
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #14
  store ptr %15, ptr %13, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %17, ptr noundef %2) #14
  store ptr %18, ptr %16, align 8, !tbaa !39
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33
  %20 = load i32, ptr %19, align 8, !tbaa !26
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %3, %22
  %23 = phi i64 [ %27, %22 ], [ 0, %3 ]
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !119
  %26 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %25, ptr noundef %2) #14
  store ptr %26, ptr %24, align 8, !tbaa !119
  %27 = add nuw nsw i64 %23, 1
  %28 = load i32, ptr %19, align 8, !tbaa !26
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %23, %29
  br i1 %30, label %22, label %31, !llvm.loop !121

31:                                               ; preds = %22, %3
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i64 @gs_glyphshow_encode_char(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) #8 {
  store i64 -1, ptr %2, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 26
  %5 = load i64, ptr %4, align 8, !tbaa !71
  ret i64 %5
}

declare i32 @gs_gsave(ptr noundef) local_unnamed_addr #4

declare void @gs_make_null_device(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gs_newpath(ptr noundef) local_unnamed_addr #4

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @show_set_scale(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.gs_fixed_point_s, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %82

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !55
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %82

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.gx_path_s, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %82

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 37
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 37, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !125
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 37, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !126
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %17
  %27 = load float, ptr %18, align 8, !tbaa !127
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %29, label %82

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 37, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !128
  %32 = fcmp oeq float %31, 0.000000e+00
  br i1 %32, label %33, label %82

33:                                               ; preds = %29, %22
  %34 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 35
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %36 = getelementptr inbounds %struct.gs_font_base_s, ptr %35, i64 0, i32 18
  %37 = getelementptr inbounds %struct.gs_font_base_s, ptr %35, i64 0, i32 18, i32 1
  %38 = load double, ptr %37, align 8, !tbaa !129
  %39 = load double, ptr %36, align 8, !tbaa !133
  %40 = fsub double %38, %39
  %41 = getelementptr inbounds %struct.gs_font_base_s, ptr %35, i64 0, i32 18, i32 1, i32 1
  %42 = load double, ptr %41, align 8, !tbaa !134
  %43 = getelementptr inbounds %struct.gs_font_base_s, ptr %35, i64 0, i32 18, i32 0, i32 1
  %44 = load double, ptr %43, align 8, !tbaa !135
  %45 = fsub double %42, %44
  %46 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %18, double noundef %40, double noundef %45, ptr noundef nonnull %2) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %81, label %48

48:                                               ; preds = %33
  %49 = load i64, ptr %2, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = call i64 @llvm.abs.i64(i64 %49, i1 true)
  %53 = icmp ult i64 %52, 102400
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = icmp ult i64 %52, 245760
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %54, %51, %48
  %58 = phi i32 [ 0, %48 ], [ %56, %54 ], [ 2, %51 ]
  %59 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = call i64 @llvm.abs.i64(i64 %60, i1 true)
  %64 = icmp ult i64 %63, 102400
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = icmp ult i64 %63, 245760
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %65, %62, %57
  %69 = phi i32 [ 0, %57 ], [ %67, %65 ], [ 2, %62 ]
  %70 = icmp eq i32 %58, 0
  %71 = icmp ne i32 %69, 0
  %72 = and i1 %70, %71
  %73 = icmp eq i32 %69, 0
  %74 = icmp ne i32 %58, 0
  %75 = and i1 %74, %73
  %76 = select i1 %75, i32 1, i32 %69
  %77 = select i1 %72, i32 1, i32 %58
  %78 = select i1 %72, i32 %69, i32 %76
  %79 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 20
  store i32 %77, ptr %79, align 8, !tbaa !92
  %80 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 20, i32 1
  store i32 %78, ptr %80, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %85

81:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %82

82:                                               ; preds = %81, %29, %26, %11, %7, %1
  %83 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 20
  %84 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 20, i32 1
  store i32 0, ptr %84, align 4, !tbaa !94
  store i32 0, ptr %83, align 8, !tbaa !92
  br label %85

85:                                               ; preds = %68, %82
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @show_cache_setup(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = load ptr, ptr %2, align 8, !tbaa !27
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr %5(ptr noundef %3, ptr noundef nonnull @st_device_memory, ptr noundef nonnull @.str.7) #14
  %7 = load ptr, ptr %4, align 8, !tbaa !5
  %8 = tail call ptr %7(ptr noundef %3, ptr noundef nonnull @st_device_memory, ptr noundef nonnull @.str.8) #14
  %9 = icmp eq ptr %6, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  tail call void %14(ptr noundef %3, ptr noundef %8, ptr noundef nonnull @.str.8) #14
  %15 = load ptr, ptr %13, align 8, !tbaa !37
  tail call void %15(ptr noundef %3, ptr noundef %6, ptr noundef nonnull @.str.7) #14
  br label %21

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 43
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  tail call void @gs_make_mem_mono_device(ptr noundef %6, ptr noundef %3, ptr noundef %18) #14
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  store ptr %6, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 22
  store ptr %8, ptr %20, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %8, ptr noundef nonnull align 8 dereferenceable(632) %6, i64 632, i1 false), !tbaa.struct !136
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i32 [ -25, %12 ], [ 0, %16 ]
  ret i32 %22
}

declare ptr @gx_alloc_char_bits(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gx_free_cached_char(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_scale_char_matrix(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @gx_clip_to_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gx_set_device_color_1(ptr noundef) local_unnamed_addr #4

declare void @gs_make_mem_mono_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_remap_color(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @continue_show(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @show_proceed(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @show_state_setup(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = alloca %struct.gs_fixed_rect_s, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33
  %6 = load i32, ptr %5, align 8, !tbaa !26
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 35
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = tail call i32 @gs_currentcharmatrix(ptr noundef %4, ptr noundef null, i32 noundef 1) #14
  br label %22

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %13 = zext nneg i32 %6 to i64
  %14 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = getelementptr inbounds %struct.gs_font_s, ptr %15, i64 0, i32 6
  %17 = getelementptr inbounds %struct.gx_font_stack_item_s, ptr %14, i64 -1
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  %19 = getelementptr inbounds %struct.gs_font_s, ptr %18, i64 0, i32 6
  %20 = call i32 @gs_matrix_multiply(ptr noundef nonnull %16, ptr noundef nonnull %19, ptr noundef nonnull %2) #14
  %21 = call i32 @gs_setcharmatrix(ptr noundef %4, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %22

22:                                               ; preds = %12, %8
  %23 = phi ptr [ %10, %8 ], [ %15, %12 ]
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  %25 = load i32, ptr %24, align 4, !tbaa !62
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %121

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %28 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 29
  %29 = load ptr, ptr %28, align 8, !tbaa !139
  %30 = call i32 @gx_cpath_inner_box(ptr noundef %29, ptr noundef nonnull %3) #14
  %31 = load i64, ptr %3, align 8, !tbaa !140
  %32 = lshr i64 %31, 12
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 15
  store i32 %33, ptr %34, align 8, !tbaa !141
  %35 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !142
  %37 = lshr i64 %36, 12
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 15, i32 0, i32 1
  store i32 %38, ptr %39, align 4, !tbaa !143
  %40 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %3, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !108
  %42 = add nsw i64 %41, 4095
  %43 = lshr i64 %42, 12
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 15, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !144
  %46 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %3, i64 0, i32 1, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !110
  %48 = add nsw i64 %47, 4095
  %49 = lshr i64 %48, 12
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 15, i32 1, i32 1
  store i32 %50, ptr %51, align 4, !tbaa !145
  %52 = load ptr, ptr %28, align 8, !tbaa !139
  %53 = call i32 @gx_cpath_outer_box(ptr noundef %52, ptr noundef nonnull %3) #14
  %54 = load i64, ptr %3, align 8, !tbaa !140
  %55 = lshr i64 %54, 12
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 16
  store i32 %56, ptr %57, align 8, !tbaa !146
  %58 = load i64, ptr %35, align 8, !tbaa !142
  %59 = lshr i64 %58, 12
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 16, i32 0, i32 1
  store i32 %60, ptr %61, align 4, !tbaa !147
  %62 = load i64, ptr %40, align 8, !tbaa !108
  %63 = add nsw i64 %62, 4095
  %64 = lshr i64 %63, 12
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 16, i32 1
  store i32 %65, ptr %66, align 8, !tbaa !148
  %67 = load i64, ptr %46, align 8, !tbaa !110
  %68 = add nsw i64 %67, 4095
  %69 = lshr i64 %68, 12
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 16, i32 1, i32 1
  store i32 %70, ptr %71, align 4, !tbaa !149
  %72 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 2, i32 8
  %73 = load i32, ptr %72, align 8, !tbaa !150
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %27
  %76 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 37, i32 8
  %77 = load i32, ptr %76, align 8, !tbaa !151
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 37, i32 6
  %81 = load i64, ptr %80, align 8, !tbaa !152
  %82 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 2, i32 6
  %83 = load i64, ptr %82, align 8, !tbaa !153
  %84 = sub nsw i64 %81, %83
  %85 = lshr i64 %84, 12
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 17
  store i32 %86, ptr %87, align 8, !tbaa !154
  %88 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 37, i32 7
  %89 = load i64, ptr %88, align 8, !tbaa !155
  %90 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 2, i32 7
  %91 = load i64, ptr %90, align 8, !tbaa !156
  %92 = sub nsw i64 %89, %91
  %93 = lshr i64 %92, 12
  %94 = trunc i64 %93 to i32
  br label %117

95:                                               ; preds = %75, %27
  %96 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 37, i32 4
  %97 = load float, ptr %96, align 8, !tbaa !157
  %98 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 2, i32 4
  %99 = load float, ptr %98, align 8, !tbaa !158
  %100 = fsub float %97, %99
  %101 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 37, i32 5
  %102 = load float, ptr %101, align 4, !tbaa !159
  %103 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 2, i32 5
  %104 = load float, ptr %103, align 4, !tbaa !160
  %105 = fsub float %102, %104
  %106 = fcmp oge float %100, 0xC1D0000000000000
  %107 = fcmp olt float %100, 0x41D0000000000000
  %108 = and i1 %106, %107
  %109 = fcmp oge float %105, 0xC1D0000000000000
  %110 = select i1 %108, i1 %109, i1 false
  %111 = fcmp olt float %105, 0x41D0000000000000
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %113, label %120

113:                                              ; preds = %95
  %114 = fptosi float %100 to i32
  %115 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 17
  store i32 %114, ptr %115, align 8, !tbaa !154
  %116 = fptosi float %105 to i32
  br label %117

117:                                              ; preds = %113, %79
  %118 = phi i32 [ %116, %113 ], [ %94, %79 ]
  %119 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 18
  store i32 %118, ptr %119, align 4, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %121

120:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %125

121:                                              ; preds = %117, %22
  %122 = getelementptr inbounds %struct.gs_font_s, ptr %23, i64 0, i32 15, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !162
  %124 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 19
  store ptr %123, ptr %124, align 8, !tbaa !72
  br label %125

125:                                              ; preds = %120, %121
  %126 = phi i32 [ 0, %121 ], [ -13, %120 ]
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @show_proceed(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.gx_path_s, align 8
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = tail call ptr @gs_rootfont(ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.gs_font_s, ptr %7, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !103
  %10 = getelementptr inbounds %struct.gs_font_s, ptr %7, i64 0, i32 15, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !163
  %12 = getelementptr inbounds %struct.gs_font_s, ptr %7, i64 0, i32 15, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 43
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 21, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = tail call i32 %17(ptr noundef %15, i32 noundef 0) #14
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  %20 = load i32, ptr %19, align 4, !tbaa !54
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !55
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 34
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = load ptr, ptr %29, align 8, !tbaa !165
  %31 = load ptr, ptr %14, align 8, !tbaa !73
  %32 = tail call i32 %30(ptr noundef nonnull %28, ptr noundef %6, ptr noundef %31, i32 noundef 0) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %461, label %34

34:                                               ; preds = %26, %22, %1
  %35 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33
  %36 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 35
  %37 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 14
  %38 = icmp eq ptr %11, null
  %39 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 25
  %40 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 19
  %41 = icmp eq ptr %11, null
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 38
  %43 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 25
  %44 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 19
  %45 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 28
  %46 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 17
  %47 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %48 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 18
  %49 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 41
  %50 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %51 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 10
  %52 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27
  %53 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27, i32 1
  %54 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 28
  %55 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 31
  %56 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %57 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 26
  %58 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 39
  %59 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 32
  %60 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 32, i32 1
  %61 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 40
  %62 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 12
  %63 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 22
  %64 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 41
  %65 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 8
  %66 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 28
  %67 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 28
  %68 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 28, i32 1
  %69 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 2, i32 8
  %70 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 37, i32 8
  %71 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 2, i32 6
  %72 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 2, i32 7
  %73 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 2, i32 4
  %74 = getelementptr inbounds %struct.gs_state_s, ptr %6, i64 0, i32 2, i32 5
  %75 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 31
  %76 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  %77 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  br label %78

78:                                               ; preds = %448, %34
  %79 = phi i64 [ undef, %34 ], [ %432, %448 ]
  %80 = phi i64 [ undef, %34 ], [ %433, %448 ]
  %81 = phi ptr [ null, %34 ], [ %338, %448 ]
  %82 = phi i32 [ undef, %34 ], [ %340, %448 ]
  %83 = load i32, ptr %35, align 8, !tbaa !26
  %84 = icmp slt i32 %83, 0
  %85 = zext nneg i32 %83 to i64
  %86 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %85
  %87 = select i1 %84, ptr %36, ptr %86
  %88 = load ptr, ptr %87, align 8, !tbaa !116
  %89 = load i32, ptr %37, align 4, !tbaa !62
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %312

91:                                               ; preds = %78, %306
  %92 = phi ptr [ %157, %306 ], [ %81, %78 ]
  %93 = phi ptr [ %143, %306 ], [ %88, %78 ]
  %94 = phi i32 [ %264, %306 ], [ %82, %78 ]
  br i1 %41, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 %13(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  br label %99

97:                                               ; preds = %91
  store i64 2147483647, ptr %3, align 8, !tbaa !84
  %98 = call i32 %11(ptr noundef nonnull %0, ptr noundef nonnull %2) #14
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  switch i32 %100, label %461 [
    i32 2, label %101
    i32 1, label %135
    i32 0, label %141
  ]

101:                                              ; preds = %99
  %102 = load ptr, ptr %0, align 8, !tbaa !11
  %103 = load ptr, ptr %102, align 8, !tbaa !27
  %104 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %104, align 8, !tbaa !35
  %105 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 22
  %106 = load ptr, ptr %105, align 8, !tbaa !36
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %103, i64 0, i32 11
  %110 = load ptr, ptr %109, align 8, !tbaa !37
  call void %110(ptr noundef %103, ptr noundef nonnull %106, ptr noundef nonnull @.str) #14
  store ptr null, ptr %105, align 8, !tbaa !36
  br label %111

111:                                              ; preds = %108, %101
  %112 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %113 = load ptr, ptr %112, align 8, !tbaa !38
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %103, i64 0, i32 11
  %117 = load ptr, ptr %116, align 8, !tbaa !37
  call void %117(ptr noundef %103, ptr noundef nonnull %113, ptr noundef nonnull @.str.1) #14
  store ptr null, ptr %112, align 8, !tbaa !38
  br label %118

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 23
  %120 = load ptr, ptr %119, align 8, !tbaa !39
  %121 = icmp eq ptr %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %103, i64 0, i32 11
  %124 = load ptr, ptr %123, align 8, !tbaa !37
  call void %124(ptr noundef %103, ptr noundef nonnull %120, ptr noundef nonnull @.str.2) #14
  store ptr null, ptr %119, align 8, !tbaa !39
  br label %125

125:                                              ; preds = %122, %118
  %126 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %127 = load i32, ptr %126, align 8, !tbaa !55
  %128 = icmp slt i32 %127, 1
  br i1 %128, label %461, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 30
  %131 = call i32 @gs_currentpoint(ptr noundef nonnull %102, ptr noundef nonnull %130) #14
  %132 = call i32 @gs_grestore(ptr noundef nonnull %102) #14
  %133 = icmp slt i32 %131, 0
  %134 = select i1 %133, i32 %131, i32 %132
  br label %461

135:                                              ; preds = %99
  %136 = load i32, ptr %35, align 8, !tbaa !26
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !119
  store i32 0, ptr %42, align 8, !tbaa !86
  %140 = call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  br label %141

141:                                              ; preds = %99, %135
  %142 = phi ptr [ %92, %99 ], [ null, %135 ]
  %143 = phi ptr [ %93, %99 ], [ %139, %135 ]
  %144 = load i64, ptr %2, align 8, !tbaa !84
  store i64 %144, ptr %43, align 8, !tbaa !111
  %145 = load i64, ptr %3, align 8, !tbaa !84
  %146 = icmp eq i64 %145, 2147483647
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load ptr, ptr %44, align 8, !tbaa !72
  %149 = call i64 %148(ptr noundef nonnull %0, ptr noundef %143, ptr noundef nonnull %2) #14
  store i64 %149, ptr %3, align 8, !tbaa !84
  %150 = load i64, ptr %2, align 8, !tbaa !84
  store i64 %150, ptr %43, align 8, !tbaa !111
  %151 = icmp eq i64 %149, 2147483647
  br i1 %151, label %336, label %152

152:                                              ; preds = %147, %141
  %153 = icmp eq ptr %142, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %152
  %155 = call ptr @gx_lookup_fm_pair(ptr noundef %143, ptr noundef %6) #14
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi ptr [ %155, %154 ], [ %142, %152 ]
  %158 = load i64, ptr %3, align 8, !tbaa !84
  %159 = call ptr @gx_lookup_cached_char(ptr noundef %143, ptr noundef %157, i64 noundef %158, i32 noundef %9, i32 noundef %18) #14
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %190

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.gs_font_s, ptr %143, i64 0, i32 9
  %163 = load i32, ptr %162, align 8, !tbaa !167
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %336, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.gs_font_s, ptr %143, i64 0, i32 13
  %167 = load i32, ptr %166, align 8, !tbaa !96
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %336, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.gs_font_s, ptr %143, i64 0, i32 8
  %171 = load i32, ptr %170, align 4, !tbaa !168
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %169
  %174 = load i64, ptr %2, align 8, !tbaa !84
  %175 = load i64, ptr %3, align 8, !tbaa !84
  %176 = getelementptr inbounds %struct.gs_font_s, ptr %143, i64 0, i32 15, i32 4
  %177 = call ptr @gx_lookup_xfont_char(ptr noundef %6, ptr noundef %157, i64 noundef %174, i64 noundef %175, ptr noundef nonnull %176, i32 noundef %9) #14
  %178 = icmp eq ptr %177, null
  br i1 %178, label %336, label %190

179:                                              ; preds = %169
  %180 = load i32, ptr %56, align 8, !tbaa !55
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %336

182:                                              ; preds = %179
  %183 = load i32, ptr %19, align 4, !tbaa !54
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %336

185:                                              ; preds = %182
  %186 = load i64, ptr %2, align 8, !tbaa !84
  %187 = load i64, ptr %3, align 8, !tbaa !84
  %188 = getelementptr inbounds %struct.gs_font_s, ptr %143, i64 0, i32 15, i32 4
  %189 = call ptr @gx_lookup_xfont_char(ptr noundef %6, ptr noundef %157, i64 noundef %186, i64 noundef %187, ptr noundef nonnull %188, i32 noundef %9) #14
  br label %336

190:                                              ; preds = %173, %156
  %191 = phi ptr [ %177, %173 ], [ %159, %156 ]
  %192 = load i32, ptr %19, align 4, !tbaa !54
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %255, label %194

194:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %195 = load ptr, ptr %45, align 8, !tbaa !80
  %196 = call i32 @gx_path_current_point(ptr noundef %195, ptr noundef nonnull %5) #14
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %252, label %198

198:                                              ; preds = %194
  %199 = load i64, ptr %5, align 8, !tbaa !90
  %200 = getelementptr inbounds %struct.cached_char_s, ptr %191, i64 0, i32 14
  %201 = load i64, ptr %200, align 8, !tbaa !98
  %202 = add i64 %199, 2048
  %203 = sub i64 %202, %201
  %204 = and i64 %203, -4096
  %205 = load i32, ptr %46, align 8, !tbaa !154
  %206 = sext i32 %205 to i64
  %207 = shl nsw i64 %206, 12
  %208 = add nsw i64 %207, %204
  %209 = load i64, ptr %47, align 8, !tbaa !91
  %210 = getelementptr inbounds %struct.cached_char_s, ptr %191, i64 0, i32 14, i32 1
  %211 = load i64, ptr %210, align 8, !tbaa !101
  %212 = add i64 %209, 2048
  %213 = sub i64 %212, %211
  %214 = and i64 %213, -4096
  %215 = load i32, ptr %48, align 4, !tbaa !161
  %216 = sext i32 %215 to i64
  %217 = shl nsw i64 %216, 12
  %218 = add nsw i64 %217, %214
  %219 = getelementptr inbounds %struct.cached_char_s, ptr %191, i64 0, i32 1
  %220 = load i16, ptr %219, align 8, !tbaa !169
  %221 = zext i16 %220 to i64
  %222 = add nsw i64 %206, %221
  %223 = shl nsw i64 %222, 12
  %224 = add i64 %223, %204
  %225 = getelementptr inbounds %struct.cached_char_s, ptr %191, i64 0, i32 2
  %226 = load i16, ptr %225, align 2, !tbaa !170
  %227 = zext i16 %226 to i64
  %228 = add nsw i64 %216, %227
  %229 = shl nsw i64 %228, 12
  %230 = add i64 %229, %214
  %231 = load ptr, ptr %6, align 8, !tbaa !27
  call void @gx_path_init(ptr noundef nonnull %4, ptr noundef %231) #14
  %232 = call i32 @gx_path_add_rectangle(ptr noundef nonnull %4, i64 noundef %208, i64 noundef %218, i64 noundef %224, i64 noundef %230) #14
  %233 = icmp sgt i32 %232, -1
  br i1 %233, label %234, label %240

234:                                              ; preds = %198
  %235 = load ptr, ptr %49, align 8, !tbaa !64
  %236 = getelementptr inbounds %struct.gs_state_s, ptr %235, i64 0, i32 28
  %237 = load ptr, ptr %236, align 8, !tbaa !80
  %238 = load i32, ptr %19, align 4, !tbaa !54
  %239 = call i32 @gx_path_add_char_path(ptr noundef %237, ptr noundef nonnull %4, i32 noundef %238) #14
  br label %240

240:                                              ; preds = %234, %198
  %241 = phi i32 [ %239, %234 ], [ %232, %198 ]
  %242 = icmp sgt i32 %241, -1
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = load ptr, ptr %45, align 8, !tbaa !80
  %245 = load i64, ptr %5, align 8, !tbaa !90
  %246 = load i64, ptr %47, align 8, !tbaa !91
  %247 = call i32 @gx_path_add_point(ptr noundef %244, i64 noundef %245, i64 noundef %246) #14
  br label %248

248:                                              ; preds = %243, %240
  %249 = phi i32 [ %247, %243 ], [ %241, %240 ]
  call void @gx_path_release(ptr noundef nonnull %4) #14
  %250 = icmp sgt i32 %249, -1
  %251 = select i1 %250, i32 %94, i32 %249
  br label %252

252:                                              ; preds = %248, %194
  %253 = phi i1 [ false, %194 ], [ %250, %248 ]
  %254 = phi i32 [ %196, %194 ], [ %251, %248 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  br i1 %253, label %263, label %461

255:                                              ; preds = %190
  %256 = load i32, ptr %50, align 8, !tbaa !55
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = call i32 @gx_image_cached_char(ptr noundef nonnull %0, ptr noundef nonnull %191) #14
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %461, label %261

261:                                              ; preds = %258
  %262 = icmp eq i32 %259, 0
  br i1 %262, label %263, label %336

263:                                              ; preds = %255, %261, %252
  %264 = phi i32 [ %254, %252 ], [ %94, %255 ], [ %94, %261 ]
  %265 = load i32, ptr %51, align 8, !tbaa !40
  %266 = icmp eq i32 %265, 0
  %267 = getelementptr inbounds %struct.cached_char_s, ptr %191, i64 0, i32 13
  br i1 %266, label %273, label %268

268:                                              ; preds = %263
  %269 = load i64, ptr %267, align 8, !tbaa !171
  store i64 %269, ptr %52, align 8, !tbaa !112
  %270 = getelementptr inbounds %struct.cached_char_s, ptr %191, i64 0, i32 13, i32 1
  %271 = load i64, ptr %270, align 8, !tbaa !172
  store i64 %271, ptr %53, align 8, !tbaa !113
  %272 = call fastcc i32 @show_move(ptr noundef nonnull %0)
  br label %306

273:                                              ; preds = %263
  %274 = load ptr, ptr %54, align 8, !tbaa !80
  %275 = getelementptr inbounds %struct.gx_path_s, ptr %274, i64 0, i32 11
  %276 = load i8, ptr %275, align 1, !tbaa !173
  %277 = and i8 %276, 9
  %278 = icmp eq i8 %277, 1
  br i1 %278, label %279, label %283

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.gx_path_s, ptr %274, i64 0, i32 12
  %281 = load i8, ptr %280, align 2, !tbaa !174
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %279, %273
  %284 = load i64, ptr %267, align 8, !tbaa !90
  %285 = getelementptr inbounds %struct.cached_char_s, ptr %191, i64 0, i32 13, i32 1
  %286 = load i64, ptr %285, align 8, !tbaa !91
  %287 = call i32 @gx_path_add_relative_point(ptr noundef %274, i64 noundef %284, i64 noundef %286) #14
  br label %299

288:                                              ; preds = %279
  %289 = load i64, ptr %267, align 8, !tbaa !90
  %290 = getelementptr inbounds %struct.gx_path_s, ptr %274, i64 0, i32 7
  %291 = load i64, ptr %290, align 8, !tbaa !175
  %292 = add nsw i64 %291, %289
  store i64 %292, ptr %290, align 8, !tbaa !175
  %293 = getelementptr inbounds %struct.cached_char_s, ptr %191, i64 0, i32 13, i32 1
  %294 = load i64, ptr %293, align 8, !tbaa !91
  %295 = getelementptr inbounds %struct.gx_path_s, ptr %274, i64 0, i32 7, i32 1
  %296 = load i64, ptr %295, align 8, !tbaa !176
  %297 = add nsw i64 %296, %294
  store i64 %297, ptr %295, align 8, !tbaa !176
  %298 = getelementptr inbounds %struct.gx_path_s, ptr %274, i64 0, i32 10
  store i8 3, ptr %298, align 8, !tbaa !177
  store i8 3, ptr %275, align 1, !tbaa !173
  br label %299

299:                                              ; preds = %288, %283
  %300 = phi i32 [ %287, %283 ], [ 0, %288 ]
  %301 = icmp eq i32 %300, -13
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load i32, ptr %55, align 4, !tbaa !178
  %304 = icmp eq i32 %303, 0
  %305 = select i1 %304, i32 -13, i32 0
  br label %306

306:                                              ; preds = %302, %299, %268
  %307 = phi i32 [ %272, %268 ], [ %300, %299 ], [ %305, %302 ]
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %91, label %309, !llvm.loop !179

309:                                              ; preds = %306
  %310 = load i64, ptr %3, align 8, !tbaa !84
  %311 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 26
  store i64 %310, ptr %311, align 8, !tbaa !71
  br label %461

312:                                              ; preds = %78
  br i1 %38, label %313, label %315

313:                                              ; preds = %312
  %314 = call i32 %13(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  br label %317

315:                                              ; preds = %312
  store i64 2147483647, ptr %3, align 8, !tbaa !84
  %316 = call i32 %11(ptr noundef nonnull %0, ptr noundef nonnull %2) #14
  br label %317

317:                                              ; preds = %315, %313
  %318 = phi i32 [ %314, %313 ], [ %316, %315 ]
  switch i32 %318, label %461 [
    i32 2, label %319
    i32 1, label %321
    i32 0, label %327
  ]

319:                                              ; preds = %317
  %320 = call fastcc i32 @show_finish(ptr noundef nonnull %0)
  br label %461

321:                                              ; preds = %317
  %322 = load i32, ptr %35, align 8, !tbaa !26
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !119
  %326 = call fastcc i32 @show_state_setup(ptr noundef nonnull %0), !range !63
  br label %327

327:                                              ; preds = %321, %317
  %328 = phi ptr [ %88, %317 ], [ %325, %321 ]
  %329 = load i64, ptr %2, align 8, !tbaa !84
  store i64 %329, ptr %39, align 8, !tbaa !111
  %330 = load i64, ptr %3, align 8, !tbaa !84
  %331 = icmp eq i64 %330, 2147483647
  br i1 %331, label %336, label %332

332:                                              ; preds = %327
  %333 = load ptr, ptr %40, align 8, !tbaa !72
  %334 = call i64 %333(ptr noundef nonnull %0, ptr noundef %328, ptr noundef nonnull %2) #14
  store i64 %334, ptr %3, align 8, !tbaa !84
  %335 = load i64, ptr %2, align 8, !tbaa !84
  store i64 %335, ptr %39, align 8, !tbaa !111
  br label %336

336:                                              ; preds = %261, %147, %173, %161, %165, %327, %332, %179, %182, %185
  %337 = phi ptr [ null, %179 ], [ null, %182 ], [ %189, %185 ], [ null, %332 ], [ null, %327 ], [ null, %165 ], [ null, %161 ], [ null, %173 ], [ null, %147 ], [ null, %261 ]
  %338 = phi ptr [ %157, %179 ], [ %157, %182 ], [ %157, %185 ], [ %81, %332 ], [ %81, %327 ], [ %157, %261 ], [ %142, %147 ], [ %157, %173 ], [ %157, %161 ], [ %157, %165 ]
  %339 = phi ptr [ %143, %179 ], [ %143, %182 ], [ %143, %185 ], [ %328, %332 ], [ %328, %327 ], [ %143, %165 ], [ %143, %161 ], [ %143, %173 ], [ %143, %147 ], [ %143, %261 ]
  %340 = phi i32 [ %94, %179 ], [ %94, %182 ], [ %94, %185 ], [ %82, %332 ], [ %82, %327 ], [ %94, %165 ], [ %94, %161 ], [ %94, %173 ], [ %94, %147 ], [ %94, %261 ]
  %341 = load i64, ptr %3, align 8, !tbaa !84
  store i64 %341, ptr %57, align 8, !tbaa !71
  %342 = call i32 @gs_gsave(ptr noundef %6) #14
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %461, label %344

344:                                              ; preds = %336
  store ptr %339, ptr %36, align 8, !tbaa !47
  store i8 0, ptr %58, align 4, !tbaa !85
  store i32 0, ptr %60, align 4, !tbaa !107
  store i32 0, ptr %59, align 4, !tbaa !106
  %345 = load i32, ptr %19, align 4, !tbaa !54
  store i32 %345, ptr %61, align 8, !tbaa !53
  %346 = load ptr, ptr %62, align 8, !tbaa !65
  %347 = icmp eq ptr %346, %6
  br i1 %347, label %348, label %350

348:                                              ; preds = %344
  %349 = load ptr, ptr %63, align 8, !tbaa !180
  br label %350

350:                                              ; preds = %344, %348
  %351 = phi ptr [ %349, %348 ], [ %346, %344 ]
  store ptr %351, ptr %64, align 8, !tbaa !64
  store i32 0, ptr %65, align 8, !tbaa !181
  %352 = load ptr, ptr %66, align 8, !tbaa !80
  %353 = getelementptr inbounds %struct.gx_path_s, ptr %352, i64 0, i32 11
  %354 = load i8, ptr %353, align 1, !tbaa !173
  %355 = and i8 %354, 1
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %350
  %358 = getelementptr inbounds %struct.gx_path_s, ptr %352, i64 0, i32 7
  %359 = load i64, ptr %358, align 8, !tbaa !175
  %360 = getelementptr inbounds %struct.gx_path_s, ptr %352, i64 0, i32 7, i32 1
  %361 = load i64, ptr %360, align 8, !tbaa !176
  br label %362

362:                                              ; preds = %350, %357
  %363 = phi i64 [ %359, %357 ], [ %79, %350 ]
  %364 = phi i64 [ %361, %357 ], [ %80, %350 ]
  %365 = phi i32 [ 0, %357 ], [ -14, %350 ]
  br i1 %356, label %431, label %366

366:                                              ; preds = %362
  store i64 %363, ptr %67, align 8, !tbaa !182
  store i64 %364, ptr %68, align 8, !tbaa !183
  %367 = call i32 @gs_currentcharmatrix(ptr noundef %6, ptr noundef null, i32 noundef 1) #14
  %368 = load i32, ptr %69, align 8, !tbaa !150
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %383, label %370

370:                                              ; preds = %366
  %371 = load i32, ptr %70, align 8, !tbaa !151
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %383, label %373

373:                                              ; preds = %370
  %374 = load i64, ptr %71, align 8, !tbaa !153
  %375 = load i64, ptr %72, align 8, !tbaa !156
  %376 = call i32 @gs_settocharmatrix(ptr noundef %6) #14
  %377 = load i64, ptr %71, align 8, !tbaa !153
  %378 = sub i64 %363, %374
  %379 = add i64 %378, %377
  %380 = load i64, ptr %72, align 8, !tbaa !156
  %381 = sub i64 %364, %375
  %382 = add i64 %381, %380
  br label %416

383:                                              ; preds = %370, %366
  %384 = load float, ptr %73, align 8, !tbaa !158
  %385 = fpext float %384 to double
  %386 = load float, ptr %74, align 4, !tbaa !160
  %387 = fpext float %386 to double
  %388 = call i32 @gs_settocharmatrix(ptr noundef %6) #14
  %389 = sitofp i64 %363 to double
  %390 = load float, ptr %73, align 8, !tbaa !158
  %391 = fpext float %390 to double
  %392 = fsub double %391, %385
  %393 = call double @llvm.fmuladd.f64(double %389, double 0x3F30000000000000, double %392)
  %394 = sitofp i64 %364 to double
  %395 = load float, ptr %74, align 4, !tbaa !160
  %396 = fpext float %395 to double
  %397 = fsub double %396, %387
  %398 = call double @llvm.fmuladd.f64(double %394, double 0x3F30000000000000, double %397)
  %399 = fcmp oge double %393, 0xC320000000000000
  %400 = fcmp olt double %393, 0x4320000000000000
  %401 = and i1 %399, %400
  %402 = fcmp oge double %398, 0xC320000000000000
  %403 = select i1 %401, i1 %402, i1 false
  %404 = fcmp olt double %398, 0x4320000000000000
  %405 = select i1 %403, i1 %404, i1 false
  br i1 %405, label %406, label %411

406:                                              ; preds = %383
  %407 = fmul double %393, 4.096000e+03
  %408 = fptosi double %407 to i64
  %409 = fmul double %398, 4.096000e+03
  %410 = fptosi double %409 to i64
  br label %411

411:                                              ; preds = %383, %406
  %412 = phi i64 [ %408, %406 ], [ %363, %383 ]
  %413 = phi i64 [ %410, %406 ], [ %364, %383 ]
  %414 = phi i32 [ 0, %406 ], [ 8, %383 ]
  %415 = phi i32 [ 0, %406 ], [ -13, %383 ]
  br i1 %405, label %416, label %431

416:                                              ; preds = %411, %373
  %417 = phi i64 [ %379, %373 ], [ %412, %411 ]
  %418 = phi i64 [ %382, %373 ], [ %413, %411 ]
  %419 = call i32 @gs_newpath(ptr noundef %6) #14
  %420 = load i32, ptr %19, align 4, !tbaa !54
  %421 = icmp eq i32 %420, 0
  %422 = add nsw i64 %417, 2048
  %423 = and i64 %422, -4096
  %424 = add nsw i64 %418, 2048
  %425 = and i64 %424, -4096
  %426 = select i1 %421, i64 %425, i64 %418
  %427 = select i1 %421, i64 %423, i64 %417
  %428 = call i32 @gx_translate_to_fixed(ptr noundef %6, i64 noundef %427, i64 noundef %426) #14
  %429 = lshr i32 %428, 28
  %430 = and i32 %429, 8
  br label %431

431:                                              ; preds = %416, %362, %411
  %432 = phi i64 [ %412, %411 ], [ %363, %362 ], [ %417, %416 ]
  %433 = phi i64 [ %413, %411 ], [ %364, %362 ], [ %418, %416 ]
  %434 = phi i32 [ %414, %411 ], [ 8, %362 ], [ %430, %416 ]
  %435 = phi i32 [ %415, %411 ], [ %365, %362 ], [ %428, %416 ]
  switch i32 %434, label %461 [
    i32 0, label %436
    i32 8, label %458
  ]

436:                                              ; preds = %431
  store i32 0, ptr %75, align 8, !tbaa !81
  store ptr @continue_show_update, ptr %76, align 8, !tbaa !56
  store ptr %337, ptr %77, align 8, !tbaa !35
  %437 = getelementptr inbounds %struct.gs_font_s, ptr %339, i64 0, i32 15, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !184
  %439 = load i64, ptr %2, align 8, !tbaa !84
  %440 = load i64, ptr %3, align 8, !tbaa !84
  %441 = call i32 %438(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %339, i64 noundef %439, i64 noundef %440) #14
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %458, label %443

443:                                              ; preds = %436
  %444 = icmp eq i32 %441, 0
  br i1 %444, label %445, label %451

445:                                              ; preds = %443
  %446 = call fastcc i32 @show_update(ptr noundef nonnull %0)
  %447 = icmp slt i32 %446, 0
  br i1 %447, label %458, label %448

448:                                              ; preds = %445
  %449 = call fastcc i32 @show_move(ptr noundef nonnull %0)
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %78, label %461

451:                                              ; preds = %443
  %452 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %453 = load ptr, ptr %452, align 8, !tbaa !38
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %461

455:                                              ; preds = %451
  %456 = call fastcc i32 @show_cache_setup(ptr noundef nonnull %0), !range !97
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %436, %445, %431, %455
  %459 = phi i32 [ %456, %455 ], [ %435, %431 ], [ %446, %445 ], [ %441, %436 ]
  %460 = call i32 @gs_grestore(ptr noundef %6) #14
  br label %461

461:                                              ; preds = %448, %336, %317, %431, %258, %99, %252, %129, %125, %451, %455, %26, %458, %319, %309
  %462 = phi i32 [ %459, %458 ], [ %307, %309 ], [ %320, %319 ], [ %32, %26 ], [ 1, %455 ], [ 1, %451 ], [ %134, %129 ], [ 0, %125 ], [ %254, %252 ], [ %100, %99 ], [ %259, %258 ], [ %340, %431 ], [ %318, %317 ], [ %342, %336 ], [ %449, %448 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i32 %462
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @show_finish(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = load ptr, ptr %2, align 8, !tbaa !27
  %4 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  store ptr null, ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  tail call void %10(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull @.str) #14
  store ptr null, ptr %5, align 8, !tbaa !36
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  tail call void %17(ptr noundef %3, ptr noundef nonnull %13, ptr noundef nonnull @.str.1) #14
  store ptr null, ptr %12, align 8, !tbaa !38
  br label %18

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 23
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  tail call void %24(ptr noundef %3, ptr noundef nonnull %20, ptr noundef nonnull @.str.2) #14
  store ptr null, ptr %19, align 8, !tbaa !39
  br label %25

25:                                               ; preds = %18, %22
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !55
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 30
  %31 = tail call i32 @gs_currentpoint(ptr noundef nonnull %2, ptr noundef nonnull %30) #14
  %32 = tail call i32 @gs_grestore(ptr noundef nonnull %2) #14
  %33 = icmp slt i32 %31, 0
  %34 = select i1 %33, i32 %31, i32 %32
  br label %35

35:                                               ; preds = %25, %29
  %36 = phi i32 [ %34, %29 ], [ 0, %25 ]
  ret i32 %36
}

declare ptr @gx_lookup_fm_pair(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gx_lookup_cached_char(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gx_lookup_xfont_char(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @gx_path_current_point(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_path_add_rectangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @gx_path_add_char_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gx_path_release(ptr noundef) local_unnamed_addr #4

declare i32 @gx_image_cached_char(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @show_move(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %103, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 6
  %12 = load float, ptr %11, align 8, !tbaa !66
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 4, !tbaa !67
  %16 = fpext float %15 to double
  %17 = tail call i32 @gs_rmoveto(ptr noundef %2, double noundef %13, double noundef %16) #14
  br label %18

18:                                               ; preds = %10, %6
  %19 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !50
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %55, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 25
  %24 = load i64, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33
  %26 = load i32, ptr %25, align 8, !tbaa !26
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %29, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !185
  %32 = add nsw i32 %26, -1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !119
  %36 = getelementptr inbounds %struct.gs_font_type0_s, ptr %35, i64 0, i32 18
  %37 = load i32, ptr %36, align 8, !tbaa !186
  %38 = and i32 %37, -2
  %39 = icmp eq i32 %38, 4
  %40 = select i1 %39, i32 7, i32 8
  %41 = shl i32 %31, %40
  %42 = zext i32 %41 to i64
  %43 = add i64 %24, %42
  br label %44

44:                                               ; preds = %28, %22
  %45 = phi i64 [ %43, %28 ], [ %24, %22 ]
  %46 = icmp eq i64 %45, %20
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 3
  %49 = load float, ptr %48, align 8, !tbaa !68
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 4
  %52 = load float, ptr %51, align 4, !tbaa !69
  %53 = fpext float %52 to double
  %54 = tail call i32 @gs_rmoveto(ptr noundef %2, double noundef %50, double noundef %53) #14
  br label %55

55:                                               ; preds = %44, %47, %18
  %56 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27
  %57 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 28
  %58 = load ptr, ptr %57, align 8, !tbaa !80
  %59 = getelementptr inbounds %struct.gx_path_s, ptr %58, i64 0, i32 11
  %60 = load i8, ptr %59, align 1, !tbaa !173
  %61 = and i8 %60, 9
  %62 = icmp eq i8 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.gx_path_s, ptr %58, i64 0, i32 12
  %65 = load i8, ptr %64, align 2, !tbaa !174
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63, %55
  %68 = load i64, ptr %56, align 8, !tbaa !90
  %69 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !91
  %71 = tail call i32 @gx_path_add_relative_point(ptr noundef %58, i64 noundef %68, i64 noundef %70) #14
  br label %83

72:                                               ; preds = %63
  %73 = load i64, ptr %56, align 8, !tbaa !90
  %74 = getelementptr inbounds %struct.gx_path_s, ptr %58, i64 0, i32 7
  %75 = load i64, ptr %74, align 8, !tbaa !175
  %76 = add nsw i64 %75, %73
  store i64 %76, ptr %74, align 8, !tbaa !175
  %77 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !91
  %79 = getelementptr inbounds %struct.gx_path_s, ptr %58, i64 0, i32 7, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !176
  %81 = add nsw i64 %80, %78
  store i64 %81, ptr %79, align 8, !tbaa !176
  %82 = getelementptr inbounds %struct.gx_path_s, ptr %58, i64 0, i32 10
  store i8 3, ptr %82, align 8, !tbaa !177
  store i8 3, ptr %59, align 1, !tbaa !173
  br label %83

83:                                               ; preds = %72, %67
  %84 = phi i32 [ %71, %67 ], [ 0, %72 ]
  %85 = icmp eq i32 %84, -13
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 31
  %88 = load i32, ptr %87, align 4, !tbaa !178
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 -13, i32 0
  br label %91

91:                                               ; preds = %83, %86
  %92 = phi i32 [ %84, %83 ], [ %90, %86 ]
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i32, ptr %3, align 4, !tbaa !52
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 24
  %99 = load i32, ptr %98, align 8, !tbaa !114
  %100 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !25
  %102 = icmp ult i32 %99, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97, %1
  %104 = phi ptr [ @continue_show, %1 ], [ @continue_kshow, %97 ]
  %105 = phi i32 [ 3, %1 ], [ 2, %97 ]
  %106 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 34
  store ptr %104, ptr %106, align 8, !tbaa !56
  br label %107

107:                                              ; preds = %103, %94, %97, %91
  %108 = phi i32 [ %92, %91 ], [ 0, %97 ], [ 0, %94 ], [ %105, %103 ]
  ret i32 %108
}

declare i32 @gs_currentcharmatrix(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @gs_settocharmatrix(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nounwind uwtable
define internal i32 @continue_show_update(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @show_update(ptr noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @show_move(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @show_proceed(ptr noundef %0)
  br label %9

9:                                                ; preds = %4, %1, %7
  %10 = phi i32 [ %8, %7 ], [ %2, %1 ], [ %5, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @show_update(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 31
  %6 = load i32, ptr %5, align 8, !tbaa !81
  switch i32 %6, label %48 [
    i32 0, label %7
    i32 1, label %9
    i32 3, label %34
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %48

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 42
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !49
  %14 = sub nsw i32 %11, %13
  switch i32 %14, label %65 [
    i32 2, label %15
    i32 1, label %18
  ]

15:                                               ; preds = %9
  %16 = tail call i32 @gs_grestore(ptr noundef %2) #14
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %9, %15
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 35
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.gs_font_s, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = tail call ptr @gx_lookup_fm_pair(ptr noundef %20, ptr noundef %2) #14
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 32
  tail call void @gx_add_cached_char(ptr noundef %22, ptr noundef %24, ptr noundef %4, ptr noundef %25, ptr noundef nonnull %26) #14
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !55
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !54
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30, %1
  %35 = tail call i32 @gs_grestore(ptr noundef %2) #14
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 34
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  %40 = load ptr, ptr %39, align 8, !tbaa !42
  %41 = load ptr, ptr %40, align 8, !tbaa !165
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 43
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = tail call i32 %41(ptr noundef nonnull %39, ptr noundef %2, ptr noundef %43, i32 noundef 0) #14
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %37
  %47 = tail call i32 @gx_image_cached_char(ptr noundef nonnull %0, ptr noundef %4) #14
  br label %65

48:                                               ; preds = %18, %30, %1, %7
  %49 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 11
  %50 = load i32, ptr %49, align 4, !tbaa !54
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 41
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = getelementptr inbounds %struct.gs_state_s, ptr %54, i64 0, i32 28
  %56 = load ptr, ptr %55, align 8, !tbaa !80
  %57 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 28
  %58 = load i64, ptr %57, align 8, !tbaa !182
  %59 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 28, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !183
  %61 = tail call i32 @gx_path_add_point(ptr noundef %56, i64 noundef %58, i64 noundef %60) #14
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52, %48
  %64 = tail call i32 @gs_grestore(ptr noundef %2) #14
  br label %65

65:                                               ; preds = %52, %37, %34, %15, %9, %63, %46
  %66 = phi i32 [ %64, %63 ], [ %47, %46 ], [ -10, %9 ], [ %16, %15 ], [ %35, %34 ], [ %44, %37 ], [ %61, %52 ]
  ret i32 %66
}

declare i32 @gs_grestore(ptr noundef) local_unnamed_addr #4

declare i32 @gs_currentpoint(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gs_rmoveto(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @continue_kshow(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @show_state_setup(ptr noundef %0), !range !63
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @show_proceed(ptr noundef %0)
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

declare i32 @gx_path_add_relative_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @gx_add_cached_char(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gs_setcharmatrix(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_cpath_inner_box(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_cpath_outer_box(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!11 = !{!12, !8, i64 0}
!12 = !{!"gs_show_enum_s", !8, i64 0, !13, i64 8, !14, i64 16, !15, i64 32, !15, i64 36, !16, i64 40, !15, i64 48, !15, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !8, i64 72, !13, i64 80, !13, i64 84, !17, i64 88, !17, i64 104, !13, i64 120, !13, i64 124, !8, i64 128, !19, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !13, i64 168, !16, i64 176, !16, i64 184, !20, i64 192, !20, i64 208, !8, i64 224, !21, i64 232, !13, i64 248, !19, i64 252, !23, i64 264, !8, i64 368}
!13 = !{!"int", !9, i64 0}
!14 = !{!"gs_const_string_s", !8, i64 0, !13, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"gs_int_rect_s", !18, i64 0, !18, i64 8}
!18 = !{!"gs_int_point_s", !13, i64 0, !13, i64 4}
!19 = !{!"gs_log2_scale_point_s", !13, i64 0, !13, i64 4}
!20 = !{!"gs_fixed_point_s", !16, i64 0, !16, i64 8}
!21 = !{!"gs_point_s", !22, i64 0, !22, i64 8}
!22 = !{!"double", !9, i64 0}
!23 = !{!"gx_font_stack_s", !13, i64 0, !9, i64 8}
!24 = !{!12, !8, i64 16}
!25 = !{!12, !13, i64 24}
!26 = !{!12, !13, i64 264}
!27 = !{!28, !8, i64 0}
!28 = !{!"gs_state_s", !8, i64 0, !29, i64 8, !31, i64 80, !13, i64 128, !32, i64 132, !13, i64 136, !15, i64 140, !20, i64 144, !13, i64 160, !13, i64 164, !8, i64 168, !9, i64 176, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !9, i64 232, !9, i64 264, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !33, i64 336, !13, i64 360, !33, i64 364, !13, i64 388, !8, i64 392, !8, i64 400, !13, i64 408, !13, i64 412, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !31, i64 456, !13, i64 504, !9, i64 508, !13, i64 512, !8, i64 520, !13, i64 528, !8, i64 536, !8, i64 544, !34, i64 552}
!29 = !{!"gx_line_params_s", !15, i64 0, !13, i64 4, !13, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !30, i64 32}
!30 = !{!"gx_dash_params_s", !8, i64 0, !13, i64 8, !15, i64 12, !13, i64 16, !15, i64 20, !13, i64 24, !13, i64 28, !15, i64 32}
!31 = !{!"gs_matrix_fixed_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !16, i64 24, !16, i64 32, !13, i64 40}
!32 = !{!"short", !9, i64 0}
!33 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!34 = !{!"gs_state_client_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!35 = !{!12, !8, i64 224}
!36 = !{!12, !8, i64 152}
!37 = !{!6, !8, i64 88}
!38 = !{!12, !8, i64 144}
!39 = !{!12, !8, i64 160}
!40 = !{!12, !13, i64 64}
!41 = !{!28, !8, i64 432}
!42 = !{!43, !8, i64 0}
!43 = !{!"gx_device_color_s", !8, i64 0, !9, i64 8, !18, i64 48, !44, i64 56}
!44 = !{!"_mask", !45, i64 0, !16, i64 24, !8, i64 32}
!45 = !{!"gs_client_color_s", !46, i64 0, !8, i64 16}
!46 = !{!"gs_paint_color_s", !9, i64 0}
!47 = !{!28, !8, i64 440}
!48 = !{!28, !13, i64 528}
!49 = !{!12, !13, i64 8}
!50 = !{!12, !16, i64 40}
!51 = !{!12, !13, i64 56}
!52 = !{!12, !13, i64 60}
!53 = !{!28, !13, i64 512}
!54 = !{!12, !13, i64 68}
!55 = !{!12, !13, i64 80}
!56 = !{!12, !8, i64 368}
!57 = !{!58, !8, i64 104}
!58 = !{!"gs_font_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !33, i64 48, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !15, i64 100, !59, i64 104, !61, i64 176, !61, i64 228}
!59 = !{!"gs_font_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !60, i64 32, !8, i64 48, !8, i64 56, !8, i64 64}
!60 = !{!"gx_xfont_callbacks_s", !8, i64 0, !8, i64 8}
!61 = !{!"gs_font_name_s", !9, i64 0, !13, i64 48}
!62 = !{!12, !13, i64 84}
!63 = !{i32 -13, i32 1}
!64 = !{!28, !8, i64 520}
!65 = !{!12, !8, i64 72}
!66 = !{!12, !15, i64 48}
!67 = !{!12, !15, i64 52}
!68 = !{!12, !15, i64 32}
!69 = !{!12, !15, i64 36}
!70 = !{!58, !13, i64 72}
!71 = !{!12, !16, i64 184}
!72 = !{!12, !8, i64 128}
!73 = !{!28, !8, i64 536}
!74 = !{!75, !8, i64 488}
!75 = !{!"gx_device_null_s", !13, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !13, i64 40, !13, i64 44, !76, i64 48, !13, i64 64, !13, i64 68, !9, i64 72, !9, i64 80, !13, i64 96, !9, i64 100, !9, i64 108, !9, i64 116, !9, i64 124, !16, i64 144, !16, i64 152, !13, i64 160, !77, i64 168, !78, i64 192, !8, i64 488}
!76 = !{!"gx_device_color_info_s", !13, i64 0, !13, i64 4, !32, i64 8, !32, i64 10, !32, i64 12, !32, i64 14}
!77 = !{!"gx_page_device_procs_s", !8, i64 0, !8, i64 8, !8, i64 16}
!78 = !{!"gx_device_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288}
!79 = !{!28, !13, i64 388}
!80 = !{!28, !8, i64 392}
!81 = !{!12, !13, i64 248}
!82 = !{!15, !15, i64 0}
!83 = !{i64 0, i64 8, !84, i64 8, i64 8, !84}
!84 = !{!16, !16, i64 0}
!85 = !{!28, !9, i64 508}
!86 = !{!28, !13, i64 504}
!87 = !{!58, !8, i64 24}
!88 = !{!89, !8, i64 352}
!89 = !{!"gx_device_s", !13, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !13, i64 40, !13, i64 44, !76, i64 48, !13, i64 64, !13, i64 68, !9, i64 72, !9, i64 80, !13, i64 96, !9, i64 100, !9, i64 108, !9, i64 116, !9, i64 124, !16, i64 144, !16, i64 152, !13, i64 160, !77, i64 168, !78, i64 192}
!90 = !{!20, !16, i64 0}
!91 = !{!20, !16, i64 8}
!92 = !{!12, !13, i64 136}
!93 = !{!19, !13, i64 0}
!94 = !{!12, !13, i64 140}
!95 = !{!19, !13, i64 4}
!96 = !{!58, !13, i64 96}
!97 = !{i32 -25, i32 1}
!98 = !{!99, !16, i64 88}
!99 = !{!"cached_char_s", !100, i64 0, !32, i64 8, !32, i64 10, !32, i64 12, !32, i64 14, !16, i64 16, !8, i64 24, !16, i64 32, !9, i64 40, !8, i64 48, !13, i64 56, !13, i64 60, !16, i64 64, !20, i64 72, !20, i64 88}
!100 = !{!"gx_cached_bits_head_s", !13, i64 0, !13, i64 4}
!101 = !{!99, !16, i64 96}
!102 = !{!99, !16, i64 32}
!103 = !{!58, !13, i64 92}
!104 = !{!99, !9, i64 40}
!105 = !{i64 0, i64 4, !82, i64 4, i64 4, !82, i64 8, i64 4, !82, i64 12, i64 4, !82, i64 16, i64 4, !82, i64 20, i64 4, !82}
!106 = !{!12, !13, i64 252}
!107 = !{!12, !13, i64 256}
!108 = !{!109, !16, i64 16}
!109 = !{!"gs_fixed_rect_s", !20, i64 0, !20, i64 16}
!110 = !{!109, !16, i64 24}
!111 = !{!12, !16, i64 176}
!112 = !{!12, !16, i64 192}
!113 = !{!12, !16, i64 200}
!114 = !{!12, !13, i64 168}
!115 = !{!9, !9, i64 0}
!116 = !{!8, !8, i64 0}
!117 = !{i64 0, i64 8, !118, i64 8, i64 8, !118}
!118 = !{!22, !22, i64 0}
!119 = !{!120, !8, i64 0}
!120 = !{!"gx_font_stack_item_s", !8, i64 0, !13, i64 8}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !{!124, !8, i64 48}
!124 = !{!"gx_path_s", !8, i64 0, !109, i64 8, !8, i64 40, !8, i64 48, !8, i64 56, !13, i64 64, !13, i64 68, !20, i64 72, !21, i64 88, !21, i64 104, !9, i64 120, !9, i64 121, !9, i64 122, !9, i64 123}
!125 = !{!28, !15, i64 460}
!126 = !{!28, !15, i64 464}
!127 = !{!28, !15, i64 456}
!128 = !{!28, !15, i64 468}
!129 = !{!130, !22, i64 296}
!130 = !{!"gs_font_base_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !33, i64 48, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !15, i64 100, !59, i64 104, !61, i64 176, !61, i64 228, !131, i64 280, !132, i64 312, !13, i64 328, !13, i64 332}
!131 = !{!"gs_rect_s", !21, i64 0, !21, i64 16}
!132 = !{!"gs_uid_s", !16, i64 0, !8, i64 8}
!133 = !{!130, !22, i64 280}
!134 = !{!130, !22, i64 304}
!135 = !{!130, !22, i64 288}
!136 = !{i64 0, i64 4, !137, i64 8, i64 8, !116, i64 16, i64 8, !116, i64 24, i64 8, !116, i64 32, i64 8, !116, i64 40, i64 4, !137, i64 44, i64 4, !137, i64 48, i64 4, !137, i64 52, i64 4, !137, i64 56, i64 2, !138, i64 58, i64 2, !138, i64 60, i64 2, !138, i64 62, i64 2, !138, i64 64, i64 4, !137, i64 68, i64 4, !137, i64 72, i64 8, !115, i64 80, i64 16, !115, i64 96, i64 4, !137, i64 100, i64 8, !115, i64 108, i64 8, !115, i64 116, i64 8, !115, i64 124, i64 16, !115, i64 144, i64 8, !84, i64 152, i64 8, !84, i64 160, i64 4, !137, i64 168, i64 8, !116, i64 176, i64 8, !116, i64 184, i64 8, !116, i64 192, i64 8, !116, i64 200, i64 8, !116, i64 208, i64 8, !116, i64 216, i64 8, !116, i64 224, i64 8, !116, i64 232, i64 8, !116, i64 240, i64 8, !116, i64 248, i64 8, !116, i64 256, i64 8, !116, i64 264, i64 8, !116, i64 272, i64 8, !116, i64 280, i64 8, !116, i64 288, i64 8, !116, i64 296, i64 8, !116, i64 304, i64 8, !116, i64 312, i64 8, !116, i64 320, i64 8, !116, i64 328, i64 8, !116, i64 336, i64 8, !116, i64 344, i64 8, !116, i64 352, i64 8, !116, i64 360, i64 8, !116, i64 368, i64 8, !116, i64 376, i64 8, !116, i64 384, i64 8, !116, i64 392, i64 8, !116, i64 400, i64 8, !116, i64 408, i64 8, !116, i64 416, i64 8, !116, i64 424, i64 8, !116, i64 432, i64 8, !116, i64 440, i64 8, !116, i64 448, i64 8, !116, i64 456, i64 8, !116, i64 464, i64 8, !116, i64 472, i64 8, !116, i64 480, i64 8, !116, i64 488, i64 8, !116, i64 496, i64 4, !82, i64 500, i64 4, !82, i64 504, i64 4, !82, i64 508, i64 4, !82, i64 512, i64 4, !82, i64 516, i64 4, !82, i64 520, i64 4, !137, i64 524, i64 4, !137, i64 528, i64 8, !116, i64 536, i64 8, !116, i64 544, i64 8, !116, i64 552, i64 8, !116, i64 560, i64 4, !137, i64 568, i64 8, !84, i64 576, i64 4, !137, i64 580, i64 4, !137, i64 584, i64 4, !137, i64 592, i64 4, !137, i64 596, i64 4, !137, i64 600, i64 4, !137, i64 604, i64 4, !137, i64 608, i64 4, !137, i64 612, i64 4, !137, i64 616, i64 4, !137, i64 624, i64 8, !84}
!137 = !{!13, !13, i64 0}
!138 = !{!32, !32, i64 0}
!139 = !{!28, !8, i64 400}
!140 = !{!109, !16, i64 0}
!141 = !{!12, !13, i64 88}
!142 = !{!109, !16, i64 8}
!143 = !{!12, !13, i64 92}
!144 = !{!12, !13, i64 96}
!145 = !{!12, !13, i64 100}
!146 = !{!12, !13, i64 104}
!147 = !{!12, !13, i64 108}
!148 = !{!12, !13, i64 112}
!149 = !{!12, !13, i64 116}
!150 = !{!28, !13, i64 120}
!151 = !{!28, !13, i64 496}
!152 = !{!28, !16, i64 480}
!153 = !{!28, !16, i64 104}
!154 = !{!12, !13, i64 120}
!155 = !{!28, !16, i64 488}
!156 = !{!28, !16, i64 112}
!157 = !{!28, !15, i64 472}
!158 = !{!28, !15, i64 96}
!159 = !{!28, !15, i64 476}
!160 = !{!28, !15, i64 100}
!161 = !{!12, !13, i64 124}
!162 = !{!58, !8, i64 120}
!163 = !{!58, !8, i64 112}
!164 = !{!58, !8, i64 168}
!165 = !{!166, !8, i64 0}
!166 = !{!"gx_device_color_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!167 = !{!58, !13, i64 80}
!168 = !{!58, !13, i64 76}
!169 = !{!99, !32, i64 8}
!170 = !{!99, !32, i64 10}
!171 = !{!99, !16, i64 72}
!172 = !{!99, !16, i64 80}
!173 = !{!124, !9, i64 121}
!174 = !{!124, !9, i64 122}
!175 = !{!124, !16, i64 72}
!176 = !{!124, !16, i64 80}
!177 = !{!124, !9, i64 120}
!178 = !{!28, !13, i64 412}
!179 = distinct !{!179, !122}
!180 = !{!28, !8, i64 320}
!181 = !{!28, !13, i64 160}
!182 = !{!12, !16, i64 208}
!183 = !{!12, !16, i64 216}
!184 = !{!58, !8, i64 128}
!185 = !{!120, !13, i64 8}
!186 = !{!187, !13, i64 280}
!187 = !{!"gs_font_type0_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !33, i64 48, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !15, i64 100, !59, i64 104, !61, i64 176, !61, i64 228, !188, i64 280}
!188 = !{!"gs_type0_data_s", !13, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !14, i64 8, !13, i64 24, !13, i64 28, !8, i64 32, !13, i64 40, !8, i64 48, !13, i64 56, !8, i64 64}
