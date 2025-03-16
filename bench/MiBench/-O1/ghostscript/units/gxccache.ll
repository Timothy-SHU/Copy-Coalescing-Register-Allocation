; ModuleID = 'gxccache.c'
source_filename = "gxccache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_dir_s = type { ptr, ptr, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32 }
%struct.fm_pair_cache_s = type { i32, i32, ptr, i32 }
%struct.char_cache_s = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.cached_fm_pair_s = type { ptr, %struct.gs_uid_s, i32, float, float, float, float, i32, i32, ptr, ptr, i32 }
%struct.gs_font_base_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, ptr, i64, i8, ptr, i32, i32, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_xfont_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_clip_list_s, ptr, %struct.gs_int_point_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_show_enum_s = type { ptr, i32, %struct.gs_const_string_s, float, float, i64, float, float, i32, i32, i32, i32, ptr, i32, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, ptr, %struct.gs_log2_scale_point_s, ptr, ptr, ptr, i32, i64, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, %struct.gs_point_s, i32, %struct.gs_log2_scale_point_s, %struct.gx_font_stack_s, ptr }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { ptr, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }

@scale_log2_1 = internal constant %struct.gs_log2_scale_point_s zeroinitializer, align 4
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str = private unnamed_addr constant [23 x i8] c"image_char(image_enum)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"compress_alpha_bits\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_lookup_fm_pair(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_uid_s, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 37
  %5 = load float, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 37, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !20
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 37, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 37, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !22
  %12 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.gs_font_dir_s, ptr %13, i64 0, i32 4, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.gs_font_dir_s, ptr %13, i64 0, i32 4, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !32
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %15, i64 %18
  %20 = getelementptr inbounds %struct.gs_font_dir_s, ptr %13, i64 0, i32 4, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %22 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !34
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  store i64 16777216, ptr %3, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.gs_uid_s, ptr %3, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !37
  br label %32

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.gs_font_base_s, ptr %0, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false), !tbaa.struct !38
  %29 = load i64, ptr %3, align 8, !tbaa !35
  %30 = icmp eq i64 %29, 16777216
  %31 = select i1 %30, ptr %0, ptr null
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi ptr [ %0, %25 ], [ %31, %27 ]
  %34 = icmp eq i32 %21, 0
  br i1 %34, label %79, label %35

35:                                               ; preds = %32
  %36 = icmp eq ptr %33, null
  br label %37

37:                                               ; preds = %35, %77
  %38 = phi i32 [ %21, %35 ], [ %40, %77 ]
  %39 = phi ptr [ %19, %35 ], [ %49, %77 ]
  %40 = add nsw i32 %38, -1
  %41 = load ptr, ptr %14, align 8, !tbaa !28
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, ptr %20, align 4, !tbaa !33
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %39, i64 %45
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi ptr [ %46, %43 ], [ %39, %37 ]
  %49 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %48, i64 -1
  br i1 %36, label %53, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %49, align 8, !tbaa !41
  %52 = icmp eq ptr %51, %33
  br i1 %52, label %57, label %77

53:                                               ; preds = %47
  %54 = getelementptr %struct.cached_fm_pair_s, ptr %48, i64 -1, i32 1
  %55 = call i32 @uid_equal(ptr noundef %54, ptr noundef nonnull %3) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %53, %50
  %58 = getelementptr %struct.cached_fm_pair_s, ptr %48, i64 -1, i32 3
  %59 = load float, ptr %58, align 4, !tbaa !43
  %60 = fcmp oeq float %59, %5
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = getelementptr %struct.cached_fm_pair_s, ptr %48, i64 -1, i32 4
  %63 = load float, ptr %62, align 8, !tbaa !44
  %64 = fcmp oeq float %63, %7
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = getelementptr %struct.cached_fm_pair_s, ptr %48, i64 -1, i32 5
  %67 = load float, ptr %66, align 4, !tbaa !45
  %68 = fcmp oeq float %67, %9
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = getelementptr %struct.cached_fm_pair_s, ptr %48, i64 -1, i32 6
  %71 = load float, ptr %70, align 8, !tbaa !46
  %72 = fcmp oeq float %71, %11
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load ptr, ptr %49, align 8, !tbaa !41
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  store ptr %0, ptr %49, align 8, !tbaa !41
  br label %81

77:                                               ; preds = %57, %61, %65, %69, %50, %53
  %78 = icmp eq i32 %40, 0
  br i1 %78, label %79, label %37, !llvm.loop !47

79:                                               ; preds = %77, %32
  %80 = call ptr @gx_add_fm_pair(ptr noundef %13, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #7
  br label %81

81:                                               ; preds = %76, %73, %79
  %82 = phi ptr [ %80, %79 ], [ %49, %73 ], [ %49, %76 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret ptr %82
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @uid_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gx_add_fm_pair(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gx_lookup_cached_char(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = trunc i64 %2 to i32
  %9 = mul i32 %8, 59
  %10 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = mul i32 %11, 73
  %13 = add i32 %12, %9
  %14 = getelementptr inbounds %struct.gs_font_dir_s, ptr %7, i64 0, i32 5, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.gs_font_dir_s, ptr %7, i64 0, i32 5, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !51
  %18 = and i32 %17, %13
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %15, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %5, %44
  %24 = phi ptr [ %49, %44 ], [ %21, %5 ]
  %25 = phi i32 [ %45, %44 ], [ %13, %5 ]
  %26 = getelementptr inbounds %struct.cached_char_s, ptr %24, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !52
  %28 = icmp eq i64 %27, %2
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.cached_char_s, ptr %24, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.cached_char_s, ptr %24, i64 0, i32 8
  %35 = load i8, ptr %34, align 8, !tbaa !56
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, %3
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %24, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !57
  %41 = icmp eq i32 %40, 1
  %42 = icmp eq i32 %40, %4
  %43 = or i1 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %38, %33, %29, %23
  %45 = add i32 %25, 1
  %46 = and i32 %17, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %15, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !40
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %23, !llvm.loop !58

51:                                               ; preds = %38, %44, %5
  %52 = phi ptr [ null, %5 ], [ %24, %38 ], [ null, %44 ]
  ret ptr %52
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_lookup_xfont_char(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.gs_log2_scale_point_s, align 4
  %8 = alloca %struct.gs_point_s, align 8
  %9 = alloca %struct.gs_int_rect_s, align 4
  %10 = load ptr, ptr %1, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gs_font_s, ptr %10, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gs_font_base_s, ptr %10, i64 0, i32 21
  %18 = load i32, ptr %17, align 4, !tbaa !59
  br label %19

19:                                               ; preds = %12, %16
  %20 = phi i32 [ %18, %16 ], [ -1, %12 ]
  %21 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @gx_lookup_xfont(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %20) #7
  store i32 1, ptr %21, align 8, !tbaa !64
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = icmp eq ptr %27, null
  br i1 %28, label %100, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !66
  %31 = getelementptr inbounds %struct.gx_xfont_procs_s, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = icmp sgt i32 %20, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.gx_xfont_callbacks_s, ptr %4, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = tail call i64 %38(i64 noundef %2, i32 noundef %20) #7
  %40 = icmp eq i64 %39, %3
  %41 = select i1 %40, i32 %20, i32 -1
  br label %42

42:                                               ; preds = %36, %34
  %43 = phi i32 [ %20, %34 ], [ %41, %36 ]
  %44 = getelementptr inbounds %struct.gx_xfont_procs_s, ptr %30, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !72
  %46 = load ptr, ptr %4, align 8, !tbaa !73
  %47 = tail call i64 %45(ptr noundef nonnull %27, i64 noundef %2, i32 noundef %43, i64 noundef %3, ptr noundef %46) #7
  br label %50

48:                                               ; preds = %29
  %49 = tail call i64 %32(ptr noundef nonnull %27, i64 noundef %2, i32 noundef %20, i64 noundef %3, ptr noundef %4) #7
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi i64 [ %47, %42 ], [ %49, %48 ]
  %52 = icmp eq i64 %51, -1
  br i1 %52, label %100, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.gx_xfont_procs_s, ptr %30, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  %56 = call i32 %55(ptr noundef nonnull %27, i64 noundef %51, i32 noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #7
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %100

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %7, i64 0, i32 1
  store i32 1, ptr %59, align 4, !tbaa !75
  store i32 1, ptr %7, align 4, !tbaa !77
  %60 = getelementptr inbounds %struct.gs_font_s, ptr %10, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !23
  %62 = getelementptr inbounds %struct.gs_int_rect_s, ptr %9, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !78
  %64 = load i32, ptr %9, align 4, !tbaa !81
  %65 = sub nsw i32 %63, %64
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds %struct.gs_int_rect_s, ptr %9, i64 0, i32 1, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !82
  %69 = getelementptr inbounds %struct.gs_int_point_s, ptr %9, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !83
  %71 = sub nsw i32 %68, %70
  %72 = trunc i32 %71 to i16
  %73 = call ptr @gx_alloc_char_bits(ptr noundef %61, ptr noundef null, ptr noundef null, i16 noundef zeroext %66, i16 noundef zeroext %72, ptr noundef nonnull %7, i32 noundef 1) #7
  %74 = icmp eq ptr %73, null
  br i1 %74, label %100, label %75

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.cached_char_s, ptr %73, i64 0, i32 7
  store i64 %3, ptr %76, align 8, !tbaa !52
  %77 = trunc i32 %5 to i8
  %78 = getelementptr inbounds %struct.cached_char_s, ptr %73, i64 0, i32 8
  store i8 %77, ptr %78, align 8, !tbaa !56
  %79 = getelementptr inbounds %struct.cached_char_s, ptr %73, i64 0, i32 12
  store i64 %51, ptr %79, align 8, !tbaa !84
  %80 = load double, ptr %8, align 8, !tbaa !85
  %81 = fmul double %80, 4.096000e+03
  %82 = fptosi double %81 to i64
  %83 = getelementptr inbounds %struct.cached_char_s, ptr %73, i64 0, i32 13
  store i64 %82, ptr %83, align 8, !tbaa !86
  %84 = getelementptr inbounds %struct.gs_point_s, ptr %8, i64 0, i32 1
  %85 = load double, ptr %84, align 8, !tbaa !87
  %86 = fmul double %85, 4.096000e+03
  %87 = fptosi double %86 to i64
  %88 = getelementptr inbounds %struct.cached_char_s, ptr %73, i64 0, i32 13, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !88
  %89 = load i32, ptr %9, align 4, !tbaa !81
  %90 = sub nsw i32 0, %89
  %91 = sext i32 %90 to i64
  %92 = shl nsw i64 %91, 12
  %93 = getelementptr inbounds %struct.cached_char_s, ptr %73, i64 0, i32 14
  store i64 %92, ptr %93, align 8, !tbaa !89
  %94 = load i32, ptr %69, align 4, !tbaa !83
  %95 = sub nsw i32 0, %94
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %96, 12
  %98 = getelementptr inbounds %struct.cached_char_s, ptr %73, i64 0, i32 14, i32 1
  store i64 %97, ptr %98, align 8, !tbaa !90
  %99 = load ptr, ptr %60, align 8, !tbaa !23
  call void @gx_add_cached_char(ptr noundef %99, ptr noundef null, ptr noundef nonnull %73, ptr noundef nonnull %1, ptr noundef nonnull @scale_log2_1) #7
  br label %100

100:                                              ; preds = %50, %58, %25, %6, %53, %75
  %101 = phi ptr [ %73, %75 ], [ null, %53 ], [ null, %6 ], [ null, %25 ], [ null, %58 ], [ null, %50 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret ptr %101
}

declare void @gx_lookup_xfont(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gx_alloc_char_bits(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gx_add_cached_char(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_image_cached_char(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gx_device_clip_s, align 8
  %4 = alloca %struct.gx_device_memory_s, align 8
  %5 = alloca %struct.gs_image_s, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #7
  %12 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 12
  %13 = load i64, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 28
  %15 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 14
  %16 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 17
  %17 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 14, i32 1
  %18 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 18
  %19 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 15
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 15, i32 1
  %23 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 15, i32 0, i32 1
  %24 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 15, i32 1, i32 1
  %25 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 16, i32 1
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 16
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 16, i32 1, i32 1
  %28 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 16, i32 0, i32 1
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 29
  %30 = getelementptr inbounds %struct.gx_device_clip_s, ptr %3, i64 0, i32 22
  %31 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21
  %32 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 6
  %33 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 3
  %34 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1
  %35 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 5
  br label %36

36:                                               ; preds = %161, %2
  %37 = phi i64 [ %13, %2 ], [ %162, %161 ]
  %38 = phi ptr [ %11, %2 ], [ %112, %161 ]
  %39 = phi i64 [ undef, %2 ], [ %58, %161 ]
  %40 = phi i64 [ undef, %2 ], [ %65, %161 ]
  %41 = phi i32 [ undef, %2 ], [ %165, %161 ]
  %42 = load ptr, ptr %14, align 8, !tbaa !97
  %43 = getelementptr inbounds %struct.gx_path_s, ptr %42, i64 0, i32 11
  %44 = load i8, ptr %43, align 1, !tbaa !98
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.gx_path_s, ptr %42, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !101
  %50 = getelementptr inbounds %struct.gx_path_s, ptr %42, i64 0, i32 7, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !102
  br label %52

52:                                               ; preds = %36, %47
  %53 = phi i64 [ %49, %47 ], [ %39, %36 ]
  %54 = phi i64 [ %51, %47 ], [ %40, %36 ]
  %55 = phi i32 [ 0, %47 ], [ -14, %36 ]
  br i1 %46, label %290, label %56

56:                                               ; preds = %52
  %57 = load i64, ptr %15, align 8, !tbaa !89
  %58 = sub nsw i64 %53, %57
  %59 = add nsw i64 %58, 2048
  %60 = lshr i64 %59, 12
  %61 = trunc i64 %60 to i32
  %62 = load i32, ptr %16, align 8, !tbaa !103
  %63 = add nsw i32 %62, %61
  %64 = load i64, ptr %17, align 8, !tbaa !90
  %65 = sub nsw i64 %54, %64
  %66 = add nsw i64 %65, 2048
  %67 = lshr i64 %66, 12
  %68 = trunc i64 %67 to i32
  %69 = load i32, ptr %18, align 4, !tbaa !104
  %70 = add nsw i32 %69, %68
  %71 = load i16, ptr %19, align 8, !tbaa !105
  %72 = zext i16 %71 to i32
  %73 = load i16, ptr %20, align 2, !tbaa !106
  %74 = zext i16 %73 to i32
  %75 = load i32, ptr %21, align 8, !tbaa !107
  %76 = icmp slt i32 %63, %75
  br i1 %76, label %90, label %77

77:                                               ; preds = %56
  %78 = add nsw i32 %63, %72
  %79 = load i32, ptr %22, align 8, !tbaa !108
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %23, align 4, !tbaa !109
  %83 = icmp slt i32 %70, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = add nsw i32 %70, %74
  %86 = load i32, ptr %24, align 4, !tbaa !110
  %87 = icmp sgt i32 %85, %86
  %88 = icmp ne ptr %38, %3
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %92, label %111

90:                                               ; preds = %81, %77, %56
  %91 = icmp eq ptr %38, %3
  br i1 %91, label %111, label %92

92:                                               ; preds = %84, %90
  %93 = load i32, ptr %25, align 8, !tbaa !111
  %94 = icmp slt i32 %63, %93
  br i1 %94, label %95, label %290

95:                                               ; preds = %92
  %96 = add nsw i32 %63, %72
  %97 = load i32, ptr %26, align 8, !tbaa !112
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %290

99:                                               ; preds = %95
  %100 = load i32, ptr %27, align 4, !tbaa !113
  %101 = icmp slt i32 %70, %100
  br i1 %101, label %102, label %290

102:                                              ; preds = %99
  %103 = add nsw i32 %70, %74
  %104 = load i32, ptr %28, align 4, !tbaa !114
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %290

106:                                              ; preds = %102
  %107 = load ptr, ptr %29, align 8, !tbaa !115
  %108 = getelementptr inbounds %struct.gx_clip_path_s, ptr %107, i64 0, i32 4
  call void @gx_make_clip_translate_device(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %108, i32 noundef 0, i32 noundef 0) #7
  store ptr %38, ptr %30, align 8, !tbaa !116
  %109 = load ptr, ptr %31, align 8, !tbaa !123
  %110 = call i32 %109(ptr noundef nonnull %3) #7
  br label %111

111:                                              ; preds = %106, %90, %84
  %112 = phi ptr [ %3, %106 ], [ %38, %90 ], [ %38, %84 ]
  %113 = icmp eq i64 %37, -1
  br i1 %113, label %166, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %32, align 8, !tbaa !55
  %116 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %115, i64 0, i32 9
  %117 = load ptr, ptr %116, align 8, !tbaa !65
  %118 = icmp eq ptr %117, null
  br i1 %118, label %166, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %15, align 8, !tbaa !89
  %121 = lshr i64 %120, 12
  %122 = trunc i64 %121 to i32
  %123 = add nsw i32 %63, %122
  %124 = load i64, ptr %17, align 8, !tbaa !90
  %125 = lshr i64 %124, 12
  %126 = trunc i64 %125 to i32
  %127 = add nsw i32 %70, %126
  %128 = load ptr, ptr %8, align 8, !tbaa !95
  %129 = load ptr, ptr %128, align 8, !tbaa !125
  %130 = icmp eq ptr %129, @gx_dc_procs_pure
  br i1 %130, label %131, label %142

131:                                              ; preds = %119
  %132 = load i32, ptr %33, align 8, !tbaa !130
  %133 = and i32 %132, 563
  %134 = icmp eq i32 %133, 48
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load ptr, ptr %117, align 8, !tbaa !66
  %137 = getelementptr inbounds %struct.gx_xfont_procs_s, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !131
  %139 = load i64, ptr %34, align 8, !tbaa !132
  %140 = call i32 %138(ptr noundef nonnull %117, i64 noundef %37, ptr noundef %112, i32 noundef %123, i32 noundef %127, i64 noundef %139, i32 noundef 0) #7
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %135, %131, %119
  %143 = phi i32 [ %140, %135 ], [ 0, %131 ], [ 0, %119 ]
  %144 = load i64, ptr %35, align 8, !tbaa !133
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %4) #7
  call void @gs_make_mem_mono_device(ptr noundef nonnull %4, ptr noundef null, ptr noundef %112) #7
  call void @gx_open_cache_device(ptr noundef nonnull %4, ptr noundef %1) #7
  %147 = load ptr, ptr %117, align 8, !tbaa !66
  %148 = getelementptr inbounds %struct.gx_xfont_procs_s, ptr %147, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !131
  %150 = call i32 %149(ptr noundef nonnull %117, i64 noundef %37, ptr noundef nonnull %4, i32 noundef %122, i32 noundef %126, i64 noundef 1, i32 noundef 1) #7
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load ptr, ptr %32, align 8, !tbaa !55
  %154 = load ptr, ptr %153, align 8, !tbaa !41
  %155 = getelementptr inbounds %struct.gs_font_s, ptr %154, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !23
  call void @gx_add_char_bits(ptr noundef %156, ptr noundef %1, ptr noundef nonnull @scale_log2_1) #7
  br label %157

157:                                              ; preds = %146, %152
  %158 = phi i64 [ -1, %152 ], [ %37, %146 ]
  %159 = phi i32 [ 2, %152 ], [ 1, %146 ]
  %160 = phi i32 [ %41, %152 ], [ 1, %146 ]
  call void @llvm.lifetime.end.p0(i64 632, ptr nonnull %4) #7
  br label %161

161:                                              ; preds = %142, %135, %157
  %162 = phi i64 [ %158, %157 ], [ %37, %135 ], [ %37, %142 ]
  %163 = phi i32 [ %159, %157 ], [ 1, %135 ], [ 0, %142 ]
  %164 = phi i32 [ %150, %157 ], [ 0, %135 ], [ %143, %142 ]
  %165 = phi i32 [ %160, %157 ], [ 0, %135 ], [ %41, %142 ]
  switch i32 %163, label %290 [
    i32 0, label %166
    i32 2, label %36
  ]

166:                                              ; preds = %161, %114, %111
  %167 = phi i32 [ %164, %161 ], [ 0, %114 ], [ 0, %111 ]
  %168 = phi i32 [ %165, %161 ], [ %41, %114 ], [ %41, %111 ]
  %169 = getelementptr inbounds i8, ptr %1, i64 104
  %170 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %1, i64 0, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !57
  %172 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 21, i32 26
  %173 = load ptr, ptr %172, align 8, !tbaa !134
  %174 = icmp eq ptr %173, @gx_default_fill_mask
  br i1 %174, label %187, label %175

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 4
  %177 = load i16, ptr %176, align 2, !tbaa !135
  %178 = zext i16 %177 to i32
  %179 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 5
  %180 = load i64, ptr %179, align 8, !tbaa !133
  %181 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 3
  %182 = load i32, ptr %181, align 8, !tbaa !130
  %183 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 29
  %184 = load ptr, ptr %183, align 8, !tbaa !115
  %185 = call i32 %173(ptr noundef %11, ptr noundef nonnull %169, i32 noundef 0, i32 noundef %178, i64 noundef %180, i32 noundef %63, i32 noundef %70, i32 noundef %72, i32 noundef %74, ptr noundef %9, i32 noundef %171, i32 noundef %182, ptr noundef %184) #7
  %186 = icmp sgt i32 %185, -1
  br i1 %186, label %282, label %229

187:                                              ; preds = %166
  %188 = load ptr, ptr %8, align 8, !tbaa !95
  %189 = load ptr, ptr %188, align 8, !tbaa !125
  %190 = icmp eq ptr %189, @gx_dc_procs_pure
  br i1 %190, label %191, label %229

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 3
  %193 = load i32, ptr %192, align 8, !tbaa !130
  %194 = and i32 %193, 563
  %195 = icmp eq i32 %194, 48
  br i1 %195, label %196, label %229

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1
  %198 = icmp sgt i32 %171, 1
  br i1 %198, label %199, label %213

199:                                              ; preds = %196
  %200 = load i64, ptr %197, align 8, !tbaa !132
  %201 = getelementptr inbounds %struct.gx_device_s, ptr %112, i64 0, i32 21, i32 21
  %202 = load ptr, ptr %201, align 8, !tbaa !136
  %203 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 4
  %204 = load i16, ptr %203, align 2, !tbaa !135
  %205 = zext i16 %204 to i32
  %206 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 5
  %207 = load i64, ptr %206, align 8, !tbaa !133
  %208 = call i32 %202(ptr noundef %112, ptr noundef nonnull %169, i32 noundef 0, i32 noundef %205, i64 noundef %207, i32 noundef %63, i32 noundef %70, i32 noundef %72, i32 noundef %74, i64 noundef %200, i32 noundef %171) #7
  %209 = icmp sgt i32 %208, -1
  br i1 %209, label %224, label %210

210:                                              ; preds = %199
  %211 = call fastcc ptr @compress_alpha_bits(ptr noundef %1)
  %212 = icmp eq ptr %211, null
  br i1 %212, label %224, label %213

213:                                              ; preds = %210, %196
  %214 = phi ptr [ %211, %210 ], [ %169, %196 ]
  %215 = getelementptr inbounds %struct.gx_device_s, ptr %112, i64 0, i32 21, i32 9
  %216 = load ptr, ptr %215, align 8, !tbaa !137
  %217 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 4
  %218 = load i16, ptr %217, align 2, !tbaa !135
  %219 = zext i16 %218 to i32
  %220 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 5
  %221 = load i64, ptr %220, align 8, !tbaa !133
  %222 = load i64, ptr %197, align 8, !tbaa !132
  %223 = call i32 %216(ptr noundef %112, ptr noundef nonnull %214, i32 noundef 0, i32 noundef %219, i64 noundef %221, i32 noundef %63, i32 noundef %70, i32 noundef %72, i32 noundef %74, i64 noundef -1, i64 noundef %222) #7
  br label %224

224:                                              ; preds = %210, %199, %213
  %225 = phi ptr [ %214, %213 ], [ %169, %199 ], [ null, %210 ]
  %226 = phi i1 [ true, %213 ], [ false, %199 ], [ false, %210 ]
  %227 = phi i32 [ %223, %213 ], [ %208, %199 ], [ %208, %210 ]
  %228 = phi i32 [ %168, %213 ], [ 0, %199 ], [ 1, %210 ]
  br i1 %226, label %282, label %290

229:                                              ; preds = %187, %191, %175
  %230 = phi i32 [ %185, %175 ], [ %167, %191 ], [ %167, %187 ]
  %231 = icmp sgt i32 %171, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = call fastcc ptr @compress_alpha_bits(ptr noundef %1)
  %234 = icmp eq ptr %233, null
  br i1 %234, label %290, label %235

235:                                              ; preds = %232, %229
  %236 = phi ptr [ %233, %232 ], [ %169, %229 ]
  %237 = call ptr @gs_image_enum_alloc(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull @.str) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = icmp eq ptr %236, %169
  br i1 %240, label %279, label %241

241:                                              ; preds = %239
  %242 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !138
  call void %242(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %236, ptr noundef nonnull @.str.1) #7
  br label %279

243:                                              ; preds = %235
  call void @gs_image_t_init_mask(ptr noundef nonnull %5, i32 noundef 1) #7
  %244 = sub nsw i32 0, %63
  %245 = sitofp i32 %244 to double
  %246 = sub nsw i32 0, %70
  %247 = sitofp i32 %246 to double
  %248 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 2
  %249 = call i32 @gs_make_translation(double noundef %245, double noundef %247, ptr noundef nonnull %248) #7
  %250 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 2
  %251 = call i32 @gs_matrix_multiply(ptr noundef nonnull %250, ptr noundef nonnull %248, ptr noundef nonnull %248) #7
  store i32 %72, ptr %5, align 8, !tbaa !141
  %252 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 1
  store i32 %74, ptr %252, align 4, !tbaa !143
  %253 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 8
  store i32 0, ptr %253, align 8, !tbaa !144
  %254 = call i32 @gs_image_init(ptr noundef nonnull %237, ptr noundef nonnull %5, i32 noundef 0, ptr noundef %7) #7
  switch i32 %254, label %276 [
    i32 1, label %261
    i32 0, label %255
  ]

255:                                              ; preds = %243
  %256 = icmp eq i16 %73, 0
  br i1 %256, label %274, label %257

257:                                              ; preds = %255
  %258 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 4
  %259 = add nuw nsw i32 %72, 7
  %260 = lshr i32 %259, 3
  br label %262

261:                                              ; preds = %243
  br label %276

262:                                              ; preds = %257, %262
  %263 = phi i32 [ 0, %257 ], [ %270, %262 ]
  %264 = load i16, ptr %258, align 2, !tbaa !135
  %265 = zext i16 %264 to i32
  %266 = mul nuw nsw i32 %263, %265
  %267 = zext nneg i32 %266 to i64
  %268 = getelementptr inbounds i8, ptr %236, i64 %267
  %269 = call i32 @gs_image_next(ptr noundef nonnull %237, ptr noundef nonnull %268, i32 noundef %260, ptr noundef nonnull %6) #7
  %270 = add nuw nsw i32 %263, 1
  %271 = icmp ult i32 %270, %74
  %272 = icmp sgt i32 %269, -1
  %273 = select i1 %271, i1 %272, i1 false
  br i1 %273, label %262, label %274, !llvm.loop !145

274:                                              ; preds = %262, %255
  %275 = phi i32 [ 0, %255 ], [ %269, %262 ]
  call void @gs_image_cleanup(ptr noundef nonnull %237) #7
  br label %276

276:                                              ; preds = %261, %243, %274
  %277 = phi i32 [ %254, %243 ], [ %275, %274 ], [ 0, %261 ]
  %278 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !138
  call void %278(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %237, ptr noundef nonnull @.str) #7
  br label %279

279:                                              ; preds = %239, %241, %276
  %280 = phi i32 [ %277, %276 ], [ %230, %241 ], [ %230, %239 ]
  %281 = phi i32 [ %168, %276 ], [ 1, %241 ], [ 1, %239 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #7
  br i1 %238, label %290, label %282

282:                                              ; preds = %279, %175, %224
  %283 = phi ptr [ %169, %175 ], [ %236, %279 ], [ %225, %224 ]
  %284 = phi i32 [ %185, %175 ], [ %280, %279 ], [ %227, %224 ]
  %285 = icmp eq ptr %283, %169
  br i1 %285, label %288, label %286

286:                                              ; preds = %282
  %287 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !138
  call void %287(ptr noundef nonnull @gs_memory_default, ptr noundef %283, ptr noundef nonnull @.str.1) #7
  br label %288

288:                                              ; preds = %286, %282
  %289 = call i32 @llvm.smin.i32(i32 %284, i32 0)
  br label %290

290:                                              ; preds = %92, %95, %99, %102, %52, %161, %232, %224, %279, %288
  %291 = phi i32 [ %289, %288 ], [ %281, %279 ], [ %228, %224 ], [ 1, %232 ], [ %165, %161 ], [ %55, %52 ], [ 0, %102 ], [ 0, %99 ], [ 0, %95 ], [ 0, %92 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #7
  ret i32 %291
}

declare void @gx_make_clip_translate_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gs_make_mem_mono_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gx_open_cache_device(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gx_add_char_bits(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compress_alpha_bits(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cached_char_s, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !105
  %4 = zext i16 %3 to i32
  %5 = getelementptr inbounds %struct.cached_char_s, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !106
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = getelementptr inbounds %struct.cached_char_s, ptr %0, i64 0, i32 4
  %11 = load i16, ptr %10, align 2, !tbaa !135
  %12 = zext i16 %11 to i32
  %13 = shl i32 %4, %9
  %14 = add i32 %13, 7
  %15 = lshr i32 %14, 3
  %16 = sub nsw i32 %12, %15
  %17 = add nuw nsw i32 %4, 63
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 16376
  %20 = add nuw nsw i32 %4, 7
  %21 = lshr i32 %20, 3
  %22 = load ptr, ptr @gs_memory_default, align 8, !tbaa !146
  %23 = mul nuw nsw i32 %19, %7
  %24 = tail call ptr %22(ptr noundef nonnull @gs_memory_default, i32 noundef %23, ptr noundef nonnull @.str.1) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %85, label %26

26:                                               ; preds = %1
  %27 = icmp eq i16 %6, 0
  br i1 %27, label %85, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, ptr %0, i64 104
  %30 = icmp eq i16 %3, 0
  %31 = icmp eq i32 %19, %21
  %32 = zext i32 %16 to i64
  %33 = xor i32 %21, -1
  %34 = add nsw i32 %19, %33
  %35 = zext i32 %34 to i64
  %36 = add nuw nsw i64 %35, 1
  %37 = zext i32 %34 to i64
  %38 = add nuw nsw i64 %37, 1
  br label %39

39:                                               ; preds = %28, %80
  %40 = phi i32 [ %7, %28 ], [ %83, %80 ]
  %41 = phi ptr [ %24, %28 ], [ %81, %80 ]
  %42 = phi ptr [ %29, %28 ], [ %82, %80 ]
  br i1 %30, label %69, label %43

43:                                               ; preds = %39, %43
  %44 = phi i32 [ %67, %43 ], [ %4, %39 ]
  %45 = phi i8 [ %66, %43 ], [ -128, %39 ]
  %46 = phi i8 [ %65, %43 ], [ 0, %39 ]
  %47 = phi i32 [ %60, %43 ], [ 128, %39 ]
  %48 = phi ptr [ %64, %43 ], [ %41, %39 ]
  %49 = phi ptr [ %59, %43 ], [ %42, %39 ]
  %50 = load i8, ptr %49, align 1, !tbaa !132
  %51 = zext i8 %50 to i32
  %52 = and i32 %47, %51
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i8 0, i8 %45
  %55 = add i8 %54, %46
  %56 = lshr i32 %47, %9
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = getelementptr inbounds i8, ptr %49, i64 %58
  %60 = select i1 %57, i32 128, i32 %56
  %61 = lshr i8 %45, 1
  %62 = icmp ult i8 %45, 2
  %63 = zext i1 %62 to i64
  %64 = getelementptr inbounds i8, ptr %48, i64 %63
  %65 = select i1 %62, i8 0, i8 %55
  %66 = select i1 %62, i8 -128, i8 %61
  %67 = add nsw i32 %44, -1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %43, !llvm.loop !147

69:                                               ; preds = %43, %39
  %70 = phi ptr [ %42, %39 ], [ %59, %43 ]
  %71 = phi ptr [ %41, %39 ], [ %64, %43 ]
  %72 = phi i8 [ 0, %39 ], [ %65, %43 ]
  %73 = phi i1 [ true, %39 ], [ %62, %43 ]
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, ptr %71, i64 1
  store i8 %72, ptr %71, align 1, !tbaa !132
  br label %76

76:                                               ; preds = %74, %69
  %77 = phi ptr [ %75, %74 ], [ %71, %69 ]
  br i1 %31, label %80, label %78

78:                                               ; preds = %76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %77, i8 0, i64 %36, i1 false), !tbaa !132
  %79 = getelementptr i8, ptr %77, i64 %38
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %77, %76 ], [ %79, %78 ]
  %82 = getelementptr inbounds i8, ptr %70, i64 %32
  %83 = add nsw i32 %40, -1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %39, !llvm.loop !148

85:                                               ; preds = %80, %26, %1
  %86 = phi ptr [ null, %1 ], [ %24, %26 ], [ %24, %80 ]
  ret ptr %86
}

declare ptr @gs_image_enum_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_image_t_init_mask(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_make_translation(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_image_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_image_next(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_image_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 456}
!6 = !{!"gs_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !18, i64 336, !12, i64 360, !18, i64 364, !12, i64 388, !7, i64 392, !7, i64 400, !12, i64 408, !12, i64 412, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !14, i64 456, !12, i64 504, !8, i64 508, !12, i64 512, !7, i64 520, !12, i64 528, !7, i64 536, !7, i64 544, !19, i64 552}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gx_line_params_s", !11, i64 0, !12, i64 4, !12, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 32}
!11 = !{!"float", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"gx_dash_params_s", !7, i64 0, !12, i64 8, !11, i64 12, !12, i64 16, !11, i64 20, !12, i64 24, !12, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !15, i64 24, !15, i64 32, !12, i64 40}
!15 = !{!"long", !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!"gs_fixed_point_s", !15, i64 0, !15, i64 8}
!18 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!19 = !{!"gs_state_client_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!20 = !{!6, !11, i64 460}
!21 = !{!6, !11, i64 464}
!22 = !{!6, !11, i64 468}
!23 = !{!24, !7, i64 24}
!24 = !{!"gs_font_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !18, i64 48, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !11, i64 100, !25, i64 104, !27, i64 176, !27, i64 228}
!25 = !{!"gs_font_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !26, i64 32, !7, i64 48, !7, i64 56, !7, i64 64}
!26 = !{!"gx_xfont_callbacks_s", !7, i64 0, !7, i64 8}
!27 = !{!"gs_font_name_s", !8, i64 0, !12, i64 48}
!28 = !{!29, !7, i64 32}
!29 = !{!"gs_font_dir_s", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !30, i64 24, !31, i64 48, !12, i64 128, !12, i64 132}
!30 = !{!"fm_pair_cache_s", !12, i64 0, !12, i64 4, !7, i64 8, !12, i64 16}
!31 = !{!"char_cache_s", !7, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !7, i64 64, !7, i64 72}
!32 = !{!29, !12, i64 40}
!33 = !{!29, !12, i64 28}
!34 = !{!24, !12, i64 72}
!35 = !{!36, !15, i64 0}
!36 = !{!"gs_uid_s", !15, i64 0, !7, i64 8}
!37 = !{!36, !7, i64 8}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !40}
!39 = !{!15, !15, i64 0}
!40 = !{!7, !7, i64 0}
!41 = !{!42, !7, i64 0}
!42 = !{!"cached_fm_pair_s", !7, i64 0, !36, i64 8, !12, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !12, i64 44, !12, i64 48, !7, i64 56, !7, i64 64, !12, i64 72}
!43 = !{!42, !11, i64 28}
!44 = !{!42, !11, i64 32}
!45 = !{!42, !11, i64 36}
!46 = !{!42, !11, i64 40}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!42, !12, i64 24}
!50 = !{!29, !7, i64 80}
!51 = !{!29, !12, i64 88}
!52 = !{!53, !15, i64 32}
!53 = !{!"cached_char_s", !54, i64 0, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14, !15, i64 16, !7, i64 24, !15, i64 32, !8, i64 40, !7, i64 48, !12, i64 56, !12, i64 60, !15, i64 64, !17, i64 72, !17, i64 88}
!54 = !{!"gx_cached_bits_head_s", !12, i64 0, !12, i64 4}
!55 = !{!53, !7, i64 24}
!56 = !{!53, !8, i64 40}
!57 = !{!53, !12, i64 4}
!58 = distinct !{!58, !48}
!59 = !{!60, !12, i64 332}
!60 = !{!"gs_font_base_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !18, i64 48, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !11, i64 100, !25, i64 104, !27, i64 176, !27, i64 228, !61, i64 280, !36, i64 312, !12, i64 328, !12, i64 332}
!61 = !{!"gs_rect_s", !62, i64 0, !62, i64 16}
!62 = !{!"gs_point_s", !63, i64 0, !63, i64 8}
!63 = !{!"double", !8, i64 0}
!64 = !{!42, !12, i64 48}
!65 = !{!42, !7, i64 56}
!66 = !{!67, !7, i64 0}
!67 = !{!"gx_xfont_s", !68, i64 0}
!68 = !{!"gx_xfont_common_s", !7, i64 0}
!69 = !{!70, !7, i64 40}
!70 = !{!"gx_xfont_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!71 = !{!26, !7, i64 8}
!72 = !{!70, !7, i64 8}
!73 = !{!26, !7, i64 0}
!74 = !{!70, !7, i64 16}
!75 = !{!76, !12, i64 4}
!76 = !{!"gs_log2_scale_point_s", !12, i64 0, !12, i64 4}
!77 = !{!76, !12, i64 0}
!78 = !{!79, !12, i64 8}
!79 = !{!"gs_int_rect_s", !80, i64 0, !80, i64 8}
!80 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!81 = !{!79, !12, i64 0}
!82 = !{!79, !12, i64 12}
!83 = !{!79, !12, i64 4}
!84 = !{!53, !15, i64 64}
!85 = !{!62, !63, i64 0}
!86 = !{!53, !15, i64 72}
!87 = !{!62, !63, i64 8}
!88 = !{!53, !15, i64 80}
!89 = !{!53, !15, i64 88}
!90 = !{!53, !15, i64 96}
!91 = !{!92, !7, i64 0}
!92 = !{!"gs_show_enum_s", !7, i64 0, !12, i64 8, !93, i64 16, !11, i64 32, !11, i64 36, !15, i64 40, !11, i64 48, !11, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !7, i64 72, !12, i64 80, !12, i64 84, !79, i64 88, !79, i64 104, !12, i64 120, !12, i64 124, !7, i64 128, !76, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !12, i64 168, !15, i64 176, !15, i64 184, !17, i64 192, !17, i64 208, !7, i64 224, !62, i64 232, !12, i64 248, !76, i64 252, !94, i64 264, !7, i64 368}
!93 = !{!"gs_const_string_s", !7, i64 0, !12, i64 8}
!94 = !{!"gx_font_stack_s", !12, i64 0, !8, i64 8}
!95 = !{!6, !7, i64 432}
!96 = !{!6, !7, i64 536}
!97 = !{!6, !7, i64 392}
!98 = !{!99, !8, i64 121}
!99 = !{!"gx_path_s", !7, i64 0, !100, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !12, i64 64, !12, i64 68, !17, i64 72, !62, i64 88, !62, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!100 = !{!"gs_fixed_rect_s", !17, i64 0, !17, i64 16}
!101 = !{!99, !15, i64 72}
!102 = !{!99, !15, i64 80}
!103 = !{!92, !12, i64 120}
!104 = !{!92, !12, i64 124}
!105 = !{!53, !16, i64 8}
!106 = !{!53, !16, i64 10}
!107 = !{!92, !12, i64 88}
!108 = !{!92, !12, i64 96}
!109 = !{!92, !12, i64 92}
!110 = !{!92, !12, i64 100}
!111 = !{!92, !12, i64 112}
!112 = !{!92, !12, i64 104}
!113 = !{!92, !12, i64 116}
!114 = !{!92, !12, i64 108}
!115 = !{!6, !7, i64 400}
!116 = !{!117, !7, i64 488}
!117 = !{!"gx_device_clip_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !118, i64 48, !12, i64 64, !12, i64 68, !8, i64 72, !8, i64 80, !12, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !12, i64 160, !119, i64 168, !120, i64 192, !7, i64 488, !121, i64 496, !7, i64 560, !80, i64 568}
!118 = !{!"gx_device_color_info_s", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14}
!119 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!120 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!121 = !{!"gx_clip_list_s", !122, i64 0, !7, i64 40, !7, i64 48, !12, i64 56, !12, i64 60}
!122 = !{!"gx_clip_rect_s", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32}
!123 = !{!124, !7, i64 192}
!124 = !{!"gx_device_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !118, i64 48, !12, i64 64, !12, i64 68, !8, i64 72, !8, i64 80, !12, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !12, i64 160, !119, i64 168, !120, i64 192}
!125 = !{!126, !7, i64 0}
!126 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !80, i64 48, !127, i64 56}
!127 = !{!"_mask", !128, i64 0, !15, i64 24, !7, i64 32}
!128 = !{!"gs_client_color_s", !129, i64 0, !7, i64 16}
!129 = !{!"gs_paint_color_s", !8, i64 0}
!130 = !{!6, !12, i64 128}
!131 = !{!70, !7, i64 24}
!132 = !{!8, !8, i64 0}
!133 = !{!53, !15, i64 16}
!134 = !{!124, !7, i64 400}
!135 = !{!53, !16, i64 14}
!136 = !{!124, !7, i64 360}
!137 = !{!124, !7, i64 264}
!138 = !{!139, !7, i64 88}
!139 = !{!"gs_memory_s", !140, i64 0}
!140 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!141 = !{!142, !12, i64 0}
!142 = !{!"gs_image_s", !12, i64 0, !12, i64 4, !18, i64 8, !12, i64 32, !7, i64 40, !8, i64 48, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92}
!143 = !{!142, !12, i64 4}
!144 = !{!142, !12, i64 88}
!145 = distinct !{!145, !48}
!146 = !{!139, !7, i64 0}
!147 = distinct !{!147, !48}
!148 = distinct !{!148, !48}
