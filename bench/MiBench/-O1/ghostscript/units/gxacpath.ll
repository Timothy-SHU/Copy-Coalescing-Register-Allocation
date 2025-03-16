; ModuleID = 'gxacpath.c'
source_filename = "gxacpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_cpath_accum_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_int_rect_s, %struct.gs_int_rect_s, %struct.gx_clip_list_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_point_s = type { double, double }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gs_cpath_accum_device = internal unnamed_addr constant %struct.gx_device_cpath_accum_s { i32 592, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 0 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @accum_open, ptr null, ptr null, ptr null, ptr @accum_close, ptr null, ptr null, ptr @accum_fill_rectangle, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr null, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr null, ptr null, ptr @gx_get_largest_clipping_box }, ptr null, %struct.gs_int_rect_s zeroinitializer, %struct.gs_int_rect_s zeroinitializer, %struct.gx_clip_list_s zeroinitializer }, align 8
@gx_dc_type_pure = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"clip list accumulator\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"accum_rect\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"accum_free_rect(single)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"accum_free_rect(tail)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"accum_free_rect(head)\00", align 1
@st_clip_rect = external constant %struct.gs_memory_struct_type_s, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"accum_alloc_rect\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"accum_alloc_rect(tail)\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"accum_alloc_rect(single)\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"accum_alloc_rect(head)\00", align 1
@clip_head_rect = internal unnamed_addr constant %struct.gx_clip_rect_s { ptr null, ptr null, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648, i8 0 }, align 8
@clip_tail_rect = internal unnamed_addr constant %struct.gx_clip_rect_s { ptr null, ptr null, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i8 0 }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @gx_cpath_accum_begin(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(592) @gs_cpath_accum_device, i64 592, i1 false), !tbaa.struct !5
  %3 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 22
  store ptr %1, ptr %3, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call i32 %5(ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_cpath_accum_set_cbox(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i64, ptr %1, align 8, !tbaa !27
  %4 = lshr i64 %3, 12
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23
  store i32 %5, ptr %6, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !31
  %9 = lshr i64 %8, 12
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !32
  %12 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !33
  %14 = add nsw i64 %13, 4095
  %15 = lshr i64 %14, 12
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23, i32 1
  store i32 %16, ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !35
  %20 = add nsw i64 %19, 4095
  %21 = lshr i64 %20, 12
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_cpath_accum_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 21, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = tail call i32 %4(ptr noundef %0) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  tail call void @gx_cpath_release(ptr noundef %1) #8
  %8 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %9, i64 64, i1 false), !tbaa.struct !38
  %10 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24
  %11 = load i32, ptr %10, align 8, !tbaa !39
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 12
  %14 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24, i32 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !45
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 12
  %19 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1, i32 0, i32 1
  store i64 %18, ptr %19, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !47
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 12
  %24 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1, i32 1
  store i64 %23, ptr %24, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24, i32 1, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !49
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 12
  %29 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1, i32 1, i32 1
  store i64 %28, ptr %29, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 12
  store i8 1, ptr %30, align 2, !tbaa !51
  %31 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !52
  %33 = icmp slt i32 %32, 2
  %34 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 2
  br i1 %33, label %35, label %36

35:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !53
  br label %37

36:                                               ; preds = %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, i8 0, i64 32, i1 false)
  br label %37

37:                                               ; preds = %36, %35
  tail call void @gx_cpath_set_outer_box(ptr noundef %1) #8
  %38 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 5
  store i8 0, ptr %38, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 6
  store i8 0, ptr %39, align 1, !tbaa !55
  %40 = tail call i64 @gs_next_ids(i32 noundef 1) #8
  %41 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 7
  store i64 %40, ptr %41, align 8, !tbaa !56
  br label %42

42:                                               ; preds = %2, %37
  %43 = phi i32 [ 0, %37 ], [ %5, %2 ]
  ret i32 %43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @gx_cpath_release(ptr noundef) local_unnamed_addr #4

declare void @gx_cpath_set_outer_box(ptr noundef) local_unnamed_addr #4

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @gx_cpath_accum_discard(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25
  %3 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  tail call void @gx_clip_list_free(ptr noundef nonnull %2, ptr noundef %4) #8
  ret void
}

declare void @gx_clip_list_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_cpath_intersect_slow(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.gx_device_cpath_accum_s, align 8
  %6 = alloca %struct.gx_device_color_s, align 8
  %7 = alloca %struct.gx_fill_params_s, align 8
  %8 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = tail call i32 @gs_current_logical_op(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  %11 = load ptr, ptr %1, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %5, ptr noundef nonnull align 8 dereferenceable(592) @gs_cpath_accum_device, i64 592, i1 false), !tbaa.struct !5
  %12 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 22
  store ptr %11, ptr %12, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  %15 = call i32 %14(ptr noundef nonnull %5) #8
  %16 = getelementptr inbounds %struct.gx_device_color_s, ptr %6, i64 0, i32 1
  store i64 0, ptr %16, align 8, !tbaa !14
  %17 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !10
  store ptr %17, ptr %6, align 8, !tbaa !59
  call void @gs_set_logical_op(ptr noundef %0, i32 noundef 252) #8
  store i32 %3, ptr %7, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.gx_fill_params_s, ptr %7, i64 0, i32 1
  %19 = getelementptr inbounds %struct.gx_fill_params_s, ptr %7, i64 0, i32 1, i32 1
  store i64 2048, ptr %19, align 8, !tbaa !67
  store i64 2048, ptr %18, align 8, !tbaa !68
  %20 = call float @gs_currentflat(ptr noundef %0) #8
  %21 = getelementptr inbounds %struct.gx_fill_params_s, ptr %7, i64 0, i32 2
  store float %20, ptr %21, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.gx_fill_params_s, ptr %7, i64 0, i32 3
  store i32 1, ptr %22, align 4, !tbaa !70
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 24
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = call i32 %24(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %1) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %70, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 21, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !37
  %30 = call i32 %29(ptr noundef nonnull %5) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %27
  call void @gx_cpath_release(ptr noundef nonnull %1) #8
  %33 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4
  %34 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %33, ptr noundef nonnull align 8 dereferenceable(64) %34, i64 64, i1 false), !tbaa.struct !38
  %35 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 24
  %36 = load i32, ptr %35, align 8, !tbaa !39
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 12
  %39 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1
  store i64 %38, ptr %39, align 8, !tbaa !40
  %40 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 24, i32 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !45
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 12
  %44 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1, i32 0, i32 1
  store i64 %43, ptr %44, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 24, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !47
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 12
  %49 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1, i32 1
  store i64 %48, ptr %49, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 24, i32 1, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !49
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 12
  %54 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1, i32 1, i32 1
  store i64 %53, ptr %54, align 8, !tbaa !50
  %55 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 12
  store i8 1, ptr %55, align 2, !tbaa !51
  %56 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 25, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !52
  %58 = icmp slt i32 %57, 2
  %59 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 2
  br i1 %58, label %60, label %61

60:                                               ; preds = %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(32) %39, i64 32, i1 false), !tbaa.struct !53
  br label %62

61:                                               ; preds = %32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %59, i8 0, i64 32, i1 false)
  br label %62

62:                                               ; preds = %61, %60
  call void @gx_cpath_set_outer_box(ptr noundef nonnull %1) #8
  %63 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 5
  store i8 0, ptr %63, align 8, !tbaa !54
  %64 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 6
  store i8 0, ptr %64, align 1, !tbaa !55
  %65 = call i64 @gs_next_ids(i32 noundef 1) #8
  %66 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 7
  store i64 %65, ptr %66, align 8, !tbaa !56
  br label %67

67:                                               ; preds = %27, %62
  %68 = phi i32 [ 0, %62 ], [ %30, %27 ]
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %4
  %71 = phi i32 [ %25, %4 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %5, i64 0, i32 25
  %73 = load ptr, ptr %12, align 8, !tbaa !17
  call void @gx_clip_list_free(ptr noundef nonnull %72, ptr noundef %73) #8
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i32 [ %71, %70 ], [ 0, %67 ]
  store i32 %9, ptr %8, align 4, !tbaa !57
  call void @gs_set_logical_op(ptr noundef %0, i32 noundef %10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %5) #8
  ret i32 %75
}

declare i32 @gs_current_logical_op(ptr noundef) local_unnamed_addr #4

declare void @gs_set_logical_op(ptr noundef, i32 noundef) local_unnamed_addr #4

declare float @gs_currentflat(ptr noundef) local_unnamed_addr #4

declare i32 @gx_default_install(ptr noundef, ptr noundef) #4

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #4

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @accum_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25
  tail call void @gx_clip_list_init(ptr noundef nonnull %2) #8
  %3 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24
  %4 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24, i32 0, i32 1
  store i32 2147483647, ptr %4, align 4, !tbaa !45
  store i32 2147483647, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24, i32 1
  %6 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24, i32 1, i32 1
  store i32 -2147483648, ptr %6, align 4, !tbaa !49
  store i32 -2147483648, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23
  %8 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  store i32 -2147483648, ptr %8, align 4, !tbaa !32
  store i32 -2147483648, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23, i32 1
  %10 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  store i32 2147483647, ptr %10, align 4, !tbaa !36
  store i32 2147483647, ptr %9, align 8, !tbaa !34
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @accum_close(ptr nocapture readnone %0) #5 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @accum_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %5) #0 {
  %7 = add nsw i32 %4, %2
  %8 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23, i32 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !32
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 %2)
  %11 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23, i32 1, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !36
  %13 = tail call i32 @llvm.smin.i32(i32 %7, i32 %12)
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %291

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23, i32 1
  %17 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 23
  %18 = add nsw i32 %3, %1
  %19 = load i32, ptr %17, align 8, !tbaa !30
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 %1)
  %21 = load i32, ptr %16, align 8, !tbaa !34
  %22 = tail call i32 @llvm.smin.i32(i32 %18, i32 %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %291

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24
  %26 = load i32, ptr %25, align 8, !tbaa !39
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 %20, ptr %25, align 8, !tbaa !39
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24, i32 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !45
  %32 = icmp slt i32 %10, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 %10, ptr %30, align 4, !tbaa !45
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !47
  %37 = icmp sgt i32 %22, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 %22, ptr %35, align 8, !tbaa !47
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 24, i32 1, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !49
  %42 = icmp sgt i32 %13, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 %13, ptr %40, align 4, !tbaa !49
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25
  %46 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 3
  %47 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 0, i32 4
  %48 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 0, i32 5
  %49 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 0, i32 3
  %50 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 0, i32 2
  %51 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 2
  %52 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 22
  %53 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 22
  %54 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 1
  br label %55

55:                                               ; preds = %289, %44
  %56 = phi i32 [ %13, %44 ], [ %222, %289 ]
  %57 = load i32, ptr %46, align 8, !tbaa !52
  switch i32 %57, label %79 [
    i32 0, label %58
    i32 1, label %63
  ]

58:                                               ; preds = %55
  store i32 1, ptr %46, align 8, !tbaa !52
  %59 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 0, i32 4
  store i32 %20, ptr %59, align 8, !tbaa !73
  %60 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 0, i32 2
  store i32 %10, ptr %60, align 8, !tbaa !74
  %61 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 0, i32 5
  store i32 %22, ptr %61, align 4, !tbaa !75
  %62 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 0, i32 3
  store i32 %56, ptr %62, align 4, !tbaa !76
  br label %291

63:                                               ; preds = %55
  %64 = load i32, ptr %47, align 8, !tbaa !73
  %65 = icmp eq i32 %20, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load i32, ptr %48, align 4, !tbaa !75
  %68 = icmp eq i32 %22, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, ptr %49, align 4, !tbaa !76
  %71 = icmp sgt i32 %10, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %50, align 8, !tbaa !74
  %74 = icmp slt i32 %10, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = icmp sgt i32 %56, %70
  br i1 %76, label %77, label %291

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 0, i32 3
  store i32 %56, ptr %78, align 4, !tbaa !76
  br label %291

79:                                               ; preds = %55, %63, %66, %69, %72
  %80 = add nsw i32 %57, 1
  store i32 %80, ptr %46, align 8, !tbaa !52
  %81 = icmp eq i32 %57, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = tail call fastcc ptr @accum_alloc_rect(ptr noundef %0)
  %84 = icmp eq ptr %83, null
  br i1 %84, label %291, label %85

85:                                               ; preds = %79, %82
  %86 = phi ptr [ %83, %82 ], [ %45, %79 ]
  %87 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %86, i64 0, i32 4
  store i32 %20, ptr %87, align 8, !tbaa !77
  %88 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %86, i64 0, i32 2
  store i32 %10, ptr %88, align 8, !tbaa !78
  %89 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %86, i64 0, i32 5
  store i32 %22, ptr %89, align 4, !tbaa !79
  %90 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %86, i64 0, i32 3
  store i32 %56, ptr %90, align 4, !tbaa !80
  %91 = load ptr, ptr %51, align 8, !tbaa !81
  %92 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !82
  %94 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %93, i64 0, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !80
  %96 = icmp slt i32 %10, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %93, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !78
  %100 = icmp eq i32 %10, %99
  %101 = icmp eq i32 %56, %95
  %102 = and i1 %101, %100
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %93, i64 0, i32 5
  %105 = load i32, ptr %104, align 4, !tbaa !79
  %106 = icmp slt i32 %20, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %103, %85
  %108 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %91, i64 0, i32 1
  %109 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %86, i64 0, i32 1
  store ptr %93, ptr %109, align 8, !tbaa !82
  store ptr %86, ptr %93, align 8, !tbaa !83
  store ptr %91, ptr %86, align 8, !tbaa !83
  store ptr %86, ptr %108, align 8, !tbaa !82
  br label %291

110:                                              ; preds = %103, %97
  %111 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %93, i64 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !78
  %113 = icmp sgt i32 %56, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %110, %114
  %115 = phi ptr [ %117, %114 ], [ %93, %110 ]
  %116 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !82
  %118 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %117, i64 0, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !78
  %120 = icmp sgt i32 %56, %119
  br i1 %120, label %121, label %114, !llvm.loop !84

121:                                              ; preds = %114, %110
  %122 = phi ptr [ %93, %110 ], [ %117, %114 ]
  %123 = phi i32 [ %112, %110 ], [ %119, %114 ]
  %124 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %122, i64 0, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !80
  %126 = icmp sgt i32 %56, %125
  br i1 %126, label %127, label %149

127:                                              ; preds = %121
  %128 = icmp slt i32 %10, %125
  br i1 %128, label %133, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %86, i64 0, i32 1
  store ptr %122, ptr %130, align 8, !tbaa !82
  %131 = load ptr, ptr %122, align 8, !tbaa !83
  store ptr %131, ptr %86, align 8, !tbaa !83
  %132 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %131, i64 0, i32 1
  store ptr %86, ptr %132, align 8, !tbaa !82
  store ptr %86, ptr %122, align 8, !tbaa !83
  br label %291

133:                                              ; preds = %127
  %134 = load i32, ptr %46, align 8, !tbaa !52
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %46, align 8, !tbaa !52
  %136 = icmp eq i32 %134, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = tail call fastcc ptr @accum_alloc_rect(ptr noundef %0)
  %139 = icmp eq ptr %138, null
  br i1 %139, label %291, label %140

140:                                              ; preds = %133, %137
  %141 = phi ptr [ %138, %137 ], [ %45, %133 ]
  %142 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %141, i64 0, i32 4
  store i32 %20, ptr %142, align 8, !tbaa !77
  %143 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %141, i64 0, i32 2
  store i32 %125, ptr %143, align 8, !tbaa !78
  %144 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %141, i64 0, i32 5
  store i32 %22, ptr %144, align 4, !tbaa !79
  %145 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %141, i64 0, i32 3
  store i32 %56, ptr %145, align 4, !tbaa !80
  %146 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %141, i64 0, i32 1
  store ptr %122, ptr %146, align 8, !tbaa !82
  %147 = load ptr, ptr %122, align 8, !tbaa !83
  store ptr %147, ptr %141, align 8, !tbaa !83
  %148 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %147, i64 0, i32 1
  store ptr %141, ptr %148, align 8, !tbaa !82
  store ptr %141, ptr %122, align 8, !tbaa !83
  store i32 %125, ptr %90, align 4, !tbaa !80
  br label %149

149:                                              ; preds = %140, %121
  %150 = phi i32 [ %125, %140 ], [ %56, %121 ]
  %151 = icmp slt i32 %150, %125
  br i1 %151, label %152, label %183

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %122, i64 0, i32 3
  %154 = load i32, ptr %153, align 4, !tbaa !80
  %155 = icmp eq i32 %154, %125
  br i1 %155, label %156, label %183

156:                                              ; preds = %152, %165
  %157 = phi ptr [ %180, %165 ], [ %153, %152 ]
  %158 = phi ptr [ %179, %165 ], [ %122, %152 ]
  %159 = load i32, ptr %46, align 8, !tbaa !52
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %46, align 8, !tbaa !52
  %161 = icmp eq i32 %159, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %156
  %163 = tail call fastcc ptr @accum_alloc_rect(ptr noundef %0)
  %164 = icmp eq ptr %163, null
  br i1 %164, label %291, label %165

165:                                              ; preds = %156, %162
  %166 = phi ptr [ %163, %162 ], [ %45, %156 ]
  %167 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %158, i64 0, i32 4
  %168 = load i32, ptr %167, align 8, !tbaa !77
  %169 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %166, i64 0, i32 4
  store i32 %168, ptr %169, align 8, !tbaa !77
  %170 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %166, i64 0, i32 2
  store i32 %150, ptr %170, align 8, !tbaa !78
  %171 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %158, i64 0, i32 5
  %172 = load i32, ptr %171, align 4, !tbaa !79
  %173 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %166, i64 0, i32 5
  store i32 %172, ptr %173, align 4, !tbaa !79
  %174 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %166, i64 0, i32 3
  store i32 %125, ptr %174, align 4, !tbaa !80
  %175 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %166, i64 0, i32 1
  store ptr %122, ptr %175, align 8, !tbaa !82
  %176 = load ptr, ptr %122, align 8, !tbaa !83
  store ptr %176, ptr %166, align 8, !tbaa !83
  %177 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 1
  store ptr %166, ptr %177, align 8, !tbaa !82
  store ptr %166, ptr %122, align 8, !tbaa !83
  store i32 %150, ptr %157, align 4, !tbaa !80
  %178 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %158, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !82
  %180 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %179, i64 0, i32 3
  %181 = load i32, ptr %180, align 4, !tbaa !80
  %182 = icmp eq i32 %181, %125
  br i1 %182, label %156, label %183, !llvm.loop !86

183:                                              ; preds = %165, %152, %149
  %184 = icmp sgt i32 %10, %123
  br i1 %184, label %185, label %221

185:                                              ; preds = %183, %185
  %186 = phi ptr [ %188, %185 ], [ %122, %183 ]
  %187 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !82
  %189 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %188, i64 0, i32 2
  %190 = load i32, ptr %189, align 8, !tbaa !78
  %191 = icmp eq i32 %190, %123
  br i1 %191, label %185, label %192, !llvm.loop !87

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %186, i64 0, i32 1
  br label %194

194:                                              ; preds = %192, %216
  %195 = phi ptr [ %217, %216 ], [ %186, %192 ]
  %196 = load i32, ptr %46, align 8, !tbaa !52
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %46, align 8, !tbaa !52
  %198 = icmp eq i32 %196, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %194
  %200 = tail call fastcc ptr @accum_alloc_rect(ptr noundef %0)
  %201 = icmp eq ptr %200, null
  br i1 %201, label %218, label %202

202:                                              ; preds = %194, %199
  %203 = phi ptr [ %200, %199 ], [ %45, %194 ]
  %204 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %195, i64 0, i32 4
  %205 = load i32, ptr %204, align 8, !tbaa !77
  %206 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %203, i64 0, i32 4
  store i32 %205, ptr %206, align 8, !tbaa !77
  %207 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %203, i64 0, i32 2
  store i32 %123, ptr %207, align 8, !tbaa !78
  %208 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %195, i64 0, i32 5
  %209 = load i32, ptr %208, align 4, !tbaa !79
  %210 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %203, i64 0, i32 5
  store i32 %209, ptr %210, align 4, !tbaa !79
  %211 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %203, i64 0, i32 3
  store i32 %10, ptr %211, align 4, !tbaa !80
  %212 = load ptr, ptr %193, align 8, !tbaa !82
  %213 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %203, i64 0, i32 1
  store ptr %212, ptr %213, align 8, !tbaa !82
  store ptr %203, ptr %212, align 8, !tbaa !83
  store ptr %186, ptr %203, align 8, !tbaa !83
  store ptr %203, ptr %193, align 8, !tbaa !82
  %214 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %195, i64 0, i32 2
  store i32 %10, ptr %214, align 8, !tbaa !78
  %215 = icmp eq ptr %195, %122
  br i1 %215, label %218, label %216

216:                                              ; preds = %202
  %217 = load ptr, ptr %195, align 8, !tbaa !83
  br label %194, !llvm.loop !88

218:                                              ; preds = %202, %199
  %219 = phi i32 [ %123, %199 ], [ %10, %202 ]
  %220 = phi i1 [ false, %199 ], [ true, %202 ]
  br i1 %220, label %221, label %291

221:                                              ; preds = %218, %183
  %222 = phi i32 [ %219, %218 ], [ %123, %183 ]
  store i32 %222, ptr %88, align 8, !tbaa !78
  %223 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %122, i64 0, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !78
  %225 = icmp eq i32 %224, %222
  br i1 %225, label %226, label %265

226:                                              ; preds = %221, %258
  %227 = phi ptr [ %261, %258 ], [ %122, %221 ]
  %228 = phi ptr [ %259, %258 ], [ %86, %221 ]
  %229 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %227, i64 0, i32 4
  %230 = load i32, ptr %229, align 8, !tbaa !77
  %231 = icmp slt i32 %22, %230
  br i1 %231, label %258, label %232

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %227, i64 0, i32 5
  %234 = load i32, ptr %233, align 4, !tbaa !79
  %235 = icmp sgt i32 %20, %234
  br i1 %235, label %265, label %236

236:                                              ; preds = %232
  %237 = icmp sgt i32 %22, %234
  br i1 %237, label %238, label %241

238:                                              ; preds = %236
  %239 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %228, i64 0, i32 5
  %240 = load i32, ptr %239, align 4, !tbaa !79
  store i32 %240, ptr %233, align 4, !tbaa !79
  br label %241

241:                                              ; preds = %238, %236
  %242 = load i32, ptr %46, align 8, !tbaa !52
  %243 = add nsw i32 %242, -1
  store i32 %243, ptr %46, align 8, !tbaa !52
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %241
  %246 = load ptr, ptr %52, align 8, !tbaa !17
  %247 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %246, i64 0, i32 11
  %248 = load ptr, ptr %247, align 8, !tbaa !89
  tail call void %248(ptr noundef %246, ptr noundef %228, ptr noundef nonnull @.str.1) #8
  br label %249

249:                                              ; preds = %245, %241
  %250 = load i32, ptr %229, align 8, !tbaa !77
  %251 = icmp slt i32 %20, %250
  br i1 %251, label %252, label %271

252:                                              ; preds = %249
  store i32 %20, ptr %229, align 8, !tbaa !77
  %253 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %227, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !82
  %255 = load ptr, ptr %227, align 8, !tbaa !83
  %256 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %255, i64 0, i32 1
  store ptr %254, ptr %256, align 8, !tbaa !82
  %257 = load ptr, ptr %253, align 8, !tbaa !82
  store ptr %255, ptr %257, align 8, !tbaa !83
  br label %258

258:                                              ; preds = %226, %252
  %259 = phi ptr [ %228, %226 ], [ %227, %252 ]
  %260 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %227, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !82
  %262 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %261, i64 0, i32 2
  %263 = load i32, ptr %262, align 8, !tbaa !78
  %264 = icmp eq i32 %263, %222
  br i1 %264, label %226, label %265, !llvm.loop !92

265:                                              ; preds = %258, %232, %221
  %266 = phi ptr [ %86, %221 ], [ %259, %258 ], [ %228, %232 ]
  %267 = phi ptr [ %122, %221 ], [ %261, %258 ], [ %227, %232 ]
  %268 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %266, i64 0, i32 1
  store ptr %267, ptr %268, align 8, !tbaa !82
  %269 = load ptr, ptr %267, align 8, !tbaa !83
  store ptr %269, ptr %266, align 8, !tbaa !83
  %270 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %269, i64 0, i32 1
  store ptr %266, ptr %270, align 8, !tbaa !82
  store ptr %266, ptr %267, align 8, !tbaa !83
  br label %271

271:                                              ; preds = %249, %265
  %272 = load i32, ptr %46, align 8, !tbaa !52
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %274, label %289

274:                                              ; preds = %271
  %275 = load ptr, ptr %53, align 8, !tbaa !17
  %276 = load ptr, ptr %54, align 8, !tbaa !93
  %277 = load ptr, ptr %276, align 8, !tbaa !83
  %278 = load ptr, ptr %51, align 8, !tbaa !81
  %279 = icmp eq ptr %277, %278
  br i1 %279, label %283, label %280

280:                                              ; preds = %274
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull align 8 dereferenceable(40) %277, i64 40, i1 false), !tbaa.struct !94
  %281 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %275, i64 0, i32 11
  %282 = load ptr, ptr %281, align 8, !tbaa !89
  tail call void %282(ptr noundef %275, ptr noundef %277, ptr noundef nonnull @.str.2) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  br label %283

283:                                              ; preds = %280, %274
  %284 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %275, i64 0, i32 11
  %285 = load ptr, ptr %284, align 8, !tbaa !89
  %286 = load ptr, ptr %51, align 8, !tbaa !81
  tail call void %285(ptr noundef %275, ptr noundef %286, ptr noundef nonnull @.str.3) #8
  %287 = load ptr, ptr %284, align 8, !tbaa !89
  %288 = load ptr, ptr %54, align 8, !tbaa !93
  tail call void %287(ptr noundef %275, ptr noundef %288, ptr noundef nonnull @.str.4) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  br label %289

289:                                              ; preds = %283, %271
  %290 = icmp slt i32 %10, %222
  br i1 %290, label %55, label %291

291:                                              ; preds = %289, %137, %82, %218, %162, %75, %77, %15, %6, %129, %107, %58
  %292 = phi i32 [ 0, %58 ], [ 0, %107 ], [ 0, %129 ], [ 0, %6 ], [ 0, %15 ], [ 0, %77 ], [ 0, %75 ], [ -25, %162 ], [ -25, %218 ], [ -25, %82 ], [ -25, %137 ], [ 0, %289 ]
  ret i32 %292
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

declare void @gx_clip_list_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @accum_alloc_rect(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = tail call ptr %5(ptr noundef %3, ptr noundef nonnull @st_clip_rect, ptr noundef nonnull @.str.5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25
  %10 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8, !tbaa !95
  %15 = tail call ptr %14(ptr noundef %3, ptr noundef nonnull @st_clip_rect, ptr noundef nonnull @.str.6) #8
  %16 = load ptr, ptr %4, align 8, !tbaa !95
  %17 = tail call ptr %16(ptr noundef %3, ptr noundef nonnull @st_clip_rect, ptr noundef nonnull @.str.7) #8
  %18 = load ptr, ptr %4, align 8, !tbaa !95
  %19 = tail call ptr %18(ptr noundef %3, ptr noundef nonnull @st_clip_rect, ptr noundef nonnull @.str.8) #8
  %20 = icmp eq ptr %15, null
  %21 = icmp eq ptr %17, null
  %22 = select i1 %20, i1 true, i1 %21
  %23 = icmp eq ptr %19, null
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  tail call void %27(ptr noundef %3, ptr noundef %19, ptr noundef nonnull @.str.5) #8
  %28 = load ptr, ptr %26, align 8, !tbaa !89
  tail call void %28(ptr noundef %3, ptr noundef %17, ptr noundef nonnull @.str.7) #8
  %29 = load ptr, ptr %26, align 8, !tbaa !89
  tail call void %29(ptr noundef %3, ptr noundef %15, ptr noundef nonnull @.str.6) #8
  %30 = load ptr, ptr %26, align 8, !tbaa !89
  tail call void %30(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull @.str.8) #8
  br label %36

31:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) @clip_head_rect, i64 40, i1 false), !tbaa.struct !94
  store ptr %17, ptr %6, align 8, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !94
  %32 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %17, i64 0, i32 1
  store ptr %6, ptr %32, align 8, !tbaa !82
  store ptr %15, ptr %17, align 8, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) @clip_tail_rect, i64 40, i1 false), !tbaa.struct !94
  %33 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %15, i64 0, i32 1
  store ptr %17, ptr %33, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 1
  store ptr %6, ptr %34, align 8, !tbaa !93
  %35 = getelementptr inbounds %struct.gx_device_cpath_accum_s, ptr %0, i64 0, i32 25, i32 2
  store ptr %15, ptr %35, align 8, !tbaa !81
  br label %36

36:                                               ; preds = %25, %31, %8, %1
  %37 = phi ptr [ null, %1 ], [ %6, %8 ], [ %19, %31 ], [ null, %25 ]
  ret ptr %37
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i64 0, i64 4, !6, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 4, !6, i64 44, i64 4, !6, i64 48, i64 4, !6, i64 52, i64 4, !6, i64 56, i64 2, !12, i64 58, i64 2, !12, i64 60, i64 2, !12, i64 62, i64 2, !12, i64 64, i64 4, !6, i64 68, i64 4, !6, i64 72, i64 8, !14, i64 80, i64 16, !14, i64 96, i64 4, !6, i64 100, i64 8, !14, i64 108, i64 8, !14, i64 116, i64 8, !14, i64 124, i64 16, !14, i64 144, i64 8, !15, i64 152, i64 8, !15, i64 160, i64 4, !6, i64 168, i64 8, !10, i64 176, i64 8, !10, i64 184, i64 8, !10, i64 192, i64 8, !10, i64 200, i64 8, !10, i64 208, i64 8, !10, i64 216, i64 8, !10, i64 224, i64 8, !10, i64 232, i64 8, !10, i64 240, i64 8, !10, i64 248, i64 8, !10, i64 256, i64 8, !10, i64 264, i64 8, !10, i64 272, i64 8, !10, i64 280, i64 8, !10, i64 288, i64 8, !10, i64 296, i64 8, !10, i64 304, i64 8, !10, i64 312, i64 8, !10, i64 320, i64 8, !10, i64 328, i64 8, !10, i64 336, i64 8, !10, i64 344, i64 8, !10, i64 352, i64 8, !10, i64 360, i64 8, !10, i64 368, i64 8, !10, i64 376, i64 8, !10, i64 384, i64 8, !10, i64 392, i64 8, !10, i64 400, i64 8, !10, i64 408, i64 8, !10, i64 416, i64 8, !10, i64 424, i64 8, !10, i64 432, i64 8, !10, i64 440, i64 8, !10, i64 448, i64 8, !10, i64 456, i64 8, !10, i64 464, i64 8, !10, i64 472, i64 8, !10, i64 480, i64 8, !10, i64 488, i64 8, !10, i64 496, i64 4, !6, i64 500, i64 4, !6, i64 504, i64 4, !6, i64 508, i64 4, !6, i64 512, i64 4, !6, i64 516, i64 4, !6, i64 520, i64 4, !6, i64 524, i64 4, !6, i64 528, i64 8, !10, i64 536, i64 8, !10, i64 544, i64 4, !6, i64 548, i64 4, !6, i64 552, i64 4, !6, i64 556, i64 4, !6, i64 560, i64 1, !14, i64 568, i64 8, !10, i64 576, i64 8, !10, i64 584, i64 4, !6, i64 588, i64 4, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!18, !11, i64 488}
!18 = !{!"gx_device_cpath_accum_s", !7, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !19, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !16, i64 144, !16, i64 152, !7, i64 160, !20, i64 168, !21, i64 192, !11, i64 488, !22, i64 496, !22, i64 512, !24, i64 528}
!19 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!20 = !{!"gx_page_device_procs_s", !11, i64 0, !11, i64 8, !11, i64 16}
!21 = !{!"gx_device_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!22 = !{!"gs_int_rect_s", !23, i64 0, !23, i64 8}
!23 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!24 = !{!"gx_clip_list_s", !25, i64 0, !11, i64 40, !11, i64 48, !7, i64 56, !7, i64 60}
!25 = !{!"gx_clip_rect_s", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!26 = !{!18, !11, i64 192}
!27 = !{!28, !16, i64 0}
!28 = !{!"gs_fixed_rect_s", !29, i64 0, !29, i64 16}
!29 = !{!"gs_fixed_point_s", !16, i64 0, !16, i64 8}
!30 = !{!18, !7, i64 496}
!31 = !{!28, !16, i64 8}
!32 = !{!18, !7, i64 500}
!33 = !{!28, !16, i64 16}
!34 = !{!18, !7, i64 504}
!35 = !{!28, !16, i64 24}
!36 = !{!18, !7, i64 508}
!37 = !{!18, !11, i64 224}
!38 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 4, !6, i64 20, i64 4, !6, i64 24, i64 4, !6, i64 28, i64 4, !6, i64 32, i64 1, !14, i64 40, i64 8, !10, i64 48, i64 8, !10, i64 56, i64 4, !6, i64 60, i64 4, !6}
!39 = !{!18, !7, i64 512}
!40 = !{!41, !16, i64 8}
!41 = !{!"gx_clip_path_s", !42, i64 0, !7, i64 128, !28, i64 136, !28, i64 168, !24, i64 200, !8, i64 264, !8, i64 265, !16, i64 272}
!42 = !{!"gx_path_s", !11, i64 0, !28, i64 8, !11, i64 40, !11, i64 48, !11, i64 56, !7, i64 64, !7, i64 68, !29, i64 72, !43, i64 88, !43, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!43 = !{!"gs_point_s", !44, i64 0, !44, i64 8}
!44 = !{!"double", !8, i64 0}
!45 = !{!18, !7, i64 516}
!46 = !{!41, !16, i64 16}
!47 = !{!18, !7, i64 520}
!48 = !{!41, !16, i64 24}
!49 = !{!18, !7, i64 524}
!50 = !{!41, !16, i64 32}
!51 = !{!41, !8, i64 122}
!52 = !{!18, !7, i64 584}
!53 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !15}
!54 = !{!41, !8, i64 264}
!55 = !{!41, !8, i64 265}
!56 = !{!41, !16, i64 272}
!57 = !{!41, !7, i64 260}
!58 = !{!41, !11, i64 0}
!59 = !{!60, !11, i64 0}
!60 = !{!"gx_device_color_s", !11, i64 0, !8, i64 8, !23, i64 48, !61, i64 56}
!61 = !{!"_mask", !62, i64 0, !16, i64 24, !11, i64 32}
!62 = !{!"gs_client_color_s", !63, i64 0, !11, i64 16}
!63 = !{!"gs_paint_color_s", !8, i64 0}
!64 = !{!65, !7, i64 0}
!65 = !{!"gx_fill_params_s", !7, i64 0, !29, i64 8, !66, i64 24, !7, i64 28}
!66 = !{!"float", !8, i64 0}
!67 = !{!65, !16, i64 16}
!68 = !{!65, !16, i64 8}
!69 = !{!65, !66, i64 24}
!70 = !{!65, !7, i64 28}
!71 = !{!72, !11, i64 384}
!72 = !{!"gx_device_s", !7, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !19, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !16, i64 144, !16, i64 152, !7, i64 160, !20, i64 168, !21, i64 192}
!73 = !{!18, !7, i64 552}
!74 = !{!18, !7, i64 544}
!75 = !{!18, !7, i64 556}
!76 = !{!18, !7, i64 548}
!77 = !{!25, !7, i64 24}
!78 = !{!25, !7, i64 16}
!79 = !{!25, !7, i64 28}
!80 = !{!25, !7, i64 20}
!81 = !{!18, !11, i64 576}
!82 = !{!25, !11, i64 8}
!83 = !{!25, !11, i64 0}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !85}
!89 = !{!90, !11, i64 88}
!90 = !{!"gs_memory_s", !91, i64 0}
!91 = !{!"gs_memory_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!92 = distinct !{!92, !85}
!93 = !{!18, !11, i64 568}
!94 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 4, !6, i64 20, i64 4, !6, i64 24, i64 4, !6, i64 28, i64 4, !6, i64 32, i64 1, !14}
!95 = !{!90, !11, i64 16}
