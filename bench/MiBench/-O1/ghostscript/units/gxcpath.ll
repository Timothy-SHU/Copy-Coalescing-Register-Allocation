; ModuleID = 'gxcpath.c'
source_filename = "gxcpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_device_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_clip_list_s, ptr, %struct.gs_int_point_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_point_s = type { double, double }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.segment_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }

@.str = private unnamed_addr constant [10 x i8] c"clip_rect\00", align 1
@st_clip_rect = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 40, ptr @.str, ptr null, ptr null, ptr @clip_rect_enum_ptrs, ptr @clip_rect_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"clip_path\00", align 1
@st_clip_path = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 280, ptr @.str.1, ptr null, ptr null, ptr @clip_path_enum_ptrs, ptr @clip_path_reloc_ptrs, ptr null }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"gx_device_clip\00", align 1
@st_device_clip = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 576, ptr @.str.2, ptr null, ptr null, ptr @device_clip_enum_ptrs, ptr @device_clip_reloc_ptrs, ptr null }, align 8
@gx_cpath_init.null_rect = internal global %struct.gs_fixed_rect_s zeroinitializer, align 8
@clip_list_empty = internal unnamed_addr constant %struct.gx_clip_list_s { %struct.gx_clip_rect_s { ptr null, ptr null, i32 -2147483648, i32 2147483647, i32 0, i32 0, i8 0 }, ptr null, ptr null, i32 0, i32 0 }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"gx_clip_list_free\00", align 1
@gs_clip_device = internal unnamed_addr constant %struct.gx_device_clip_s { i32 576, ptr null, ptr @.str.4, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 0 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @clip_open, ptr @gx_forward_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @gx_default_close_device, ptr @gx_forward_map_rgb_color, ptr @gx_forward_map_color_rgb, ptr @clip_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @clip_copy_mono, ptr @clip_copy_color, ptr @gx_default_draw_line, ptr @clip_get_bits, ptr @gx_forward_get_params, ptr @gx_forward_put_params, ptr @gx_forward_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_forward_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_forward_get_alpha_bits, ptr @clip_copy_alpha, ptr @gx_forward_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @clip_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @clip_strip_tile_rectangle, ptr @clip_strip_copy_rop, ptr @clip_get_clipping_box }, ptr null, %struct.gx_clip_list_s zeroinitializer, ptr null, %struct.gs_int_point_s zeroinitializer }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_path = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@st_device_forward = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"clipper\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @clip_rect_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %10 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  store ptr %9, ptr %3, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %7 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal void @clip_rect_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #9
  store ptr %5, ptr %0, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #9
  store ptr %8, ptr %6, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @clip_path_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = icmp ult i32 %2, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 0
  %8 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 2
  %9 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 1
  %10 = select i1 %7, ptr %9, ptr %8
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  store ptr %11, ptr %3, align 8, !tbaa !5
  br label %16

12:                                               ; preds = %4
  %13 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_path, i64 0, i32 4), align 8, !tbaa !13
  %14 = add i32 %2, -2
  %15 = tail call ptr %13(ptr noundef %0, i32 noundef 128, i32 noundef %14, ptr noundef %3) #9
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi ptr [ @ptr_struct_procs, %6 ], [ %15, %12 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define internal void @clip_path_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #9
  store ptr %6, ptr %4, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #9
  store ptr %9, ptr %7, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_path, i64 0, i32 5), align 8, !tbaa !18
  tail call void %10(ptr noundef %0, i32 noundef 128, ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @device_clip_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = icmp ult i32 %2, 3
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = icmp eq i32 %2, 1
  %10 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %11 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %12 = select i1 %9, ptr %11, ptr %10
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  store ptr %13, ptr %3, align 8, !tbaa !5
  br label %24

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 4), align 8, !tbaa !13
  %16 = add i32 %2, -3
  %17 = tail call ptr %15(ptr noundef %0, i32 noundef 496, i32 noundef %16, ptr noundef %3) #9
  br label %24

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23
  %22 = icmp eq ptr %20, %21
  %23 = select i1 %22, ptr null, ptr %20
  store ptr %23, ptr %3, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %8, %14, %18
  %25 = phi ptr [ @ptr_struct_procs, %18 ], [ @ptr_struct_procs, %8 ], [ %17, %14 ]
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define internal void @device_clip_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %0, ptr noundef %2) #9
  %10 = getelementptr inbounds %struct.gx_device_clip_s, ptr %9, i64 0, i32 23
  br label %13

11:                                               ; preds = %3
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #9
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ %10, %8 ]
  store ptr %14, ptr %4, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %16, ptr noundef %2) #9
  store ptr %17, ptr %15, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %19, ptr noundef %2) #9
  store ptr %20, ptr %18, align 8, !tbaa !17
  %21 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 5), align 8, !tbaa !18
  tail call void %21(ptr noundef %0, i32 noundef 496, ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_cpath_path(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %300

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %13, %11 ], [ %7, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %291, label %17

17:                                               ; preds = %14, %32
  %18 = phi ptr [ %33, %32 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %18, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !36
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !37
  %27 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %18, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !38
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %18, i64 0, i32 6
  store i8 3, ptr %31, align 8, !tbaa !39
  br label %32

32:                                               ; preds = %30, %24, %17
  %33 = load ptr, ptr %18, align 8, !tbaa !9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %17, !llvm.loop !40

35:                                               ; preds = %32, %286
  %36 = phi i32 [ %288, %286 ], [ undef, %32 ]
  %37 = phi ptr [ %289, %286 ], [ %15, %32 ]
  %38 = phi i32 [ %287, %286 ], [ -1, %32 ]
  %39 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %37, i64 0, i32 6
  %40 = load i8, ptr %39, align 8, !tbaa !39
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %286, label %42

42:                                               ; preds = %35
  %43 = and i8 %40, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %37, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !35
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 12
  %50 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %37, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !38
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 12
  %54 = tail call i32 @gx_path_add_point(ptr noundef %0, i64 noundef %49, i64 noundef %53) #9
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %296, label %67

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %37, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !36
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 12
  %61 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %37, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !37
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 12
  %65 = tail call i32 @gx_path_add_point(ptr noundef %0, i64 noundef %60, i64 noundef %64) #9
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %296, label %174

67:                                               ; preds = %160, %45
  %68 = phi i32 [ %161, %160 ], [ 1, %45 ]
  %69 = phi ptr [ %162, %160 ], [ %37, %45 ]
  %70 = phi i32 [ %163, %160 ], [ %36, %45 ]
  %71 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %69, i64 0, i32 6
  %72 = load i8, ptr %71, align 8, !tbaa !39
  %73 = and i8 %72, -2
  store i8 %73, ptr %71, align 8, !tbaa !39
  %74 = load ptr, ptr %69, align 8, !tbaa !9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %106, label %76

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %69, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !37
  %79 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %69, i64 0, i32 3
  %80 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %69, i64 0, i32 4
  br label %81

81:                                               ; preds = %94, %76
  %82 = phi ptr [ %74, %76 ], [ %95, %94 ]
  %83 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !37
  %85 = icmp eq i32 %84, %78
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load i32, ptr %79, align 4, !tbaa !38
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %82, i64 0, i32 5
  %91 = load i32, ptr %90, align 4, !tbaa !36
  %92 = load i32, ptr %80, align 8, !tbaa !35
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %89, %81
  %95 = load ptr, ptr %82, align 8, !tbaa !9
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %81, !llvm.loop !42

97:                                               ; preds = %89, %86
  %98 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %82, i64 0, i32 2
  %99 = icmp sgt i32 %84, %87
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %82, i64 0, i32 4
  %102 = load i32, ptr %101, align 8, !tbaa !35
  %103 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %69, i64 0, i32 5
  %104 = load i32, ptr %103, align 4, !tbaa !36
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %121, label %106

106:                                              ; preds = %94, %100, %97, %67
  %107 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %69, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !36
  %109 = sext i32 %108 to i64
  %110 = shl nsw i64 %109, 12
  %111 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %69, i64 0, i32 3
  %112 = load i32, ptr %111, align 4, !tbaa !38
  %113 = sext i32 %112 to i64
  %114 = shl nsw i64 %113, 12
  %115 = tail call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %110, i64 noundef %114, i32 noundef 0) #9
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %296, label %117

117:                                              ; preds = %106
  %118 = icmp eq ptr %69, %37
  %119 = icmp eq i32 %68, 2
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %282, label %268

121:                                              ; preds = %100
  %122 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %69, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !12
  %124 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %123, i64 0, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !38
  %126 = icmp eq i32 %125, %87
  br i1 %126, label %127, label %143

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %123, i64 0, i32 5
  %129 = load i32, ptr %128, align 4, !tbaa !36
  %130 = icmp slt i32 %102, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %127
  %132 = sext i32 %129 to i64
  %133 = shl nsw i64 %132, 12
  %134 = sext i32 %87 to i64
  %135 = shl nsw i64 %134, 12
  %136 = tail call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %133, i64 noundef %135, i32 noundef 0) #9
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %131
  %139 = icmp eq ptr %123, %37
  %140 = icmp eq i32 %68, 2
  %141 = select i1 %139, i1 %140, i1 false
  %142 = select i1 %141, i32 12, i32 13
  br label %143

143:                                              ; preds = %138, %131, %127, %121
  %144 = phi i32 [ 1, %131 ], [ %142, %138 ], [ 0, %127 ], [ 0, %121 ]
  %145 = phi ptr [ %69, %131 ], [ %123, %138 ], [ %69, %127 ], [ %69, %121 ]
  %146 = phi i32 [ %136, %131 ], [ %70, %138 ], [ %70, %127 ], [ %70, %121 ]
  switch i32 %144, label %296 [
    i32 0, label %147
    i32 13, label %268
    i32 12, label %282
  ]

147:                                              ; preds = %143
  %148 = load i32, ptr %101, align 8, !tbaa !35
  %149 = sext i32 %148 to i64
  %150 = shl nsw i64 %149, 12
  %151 = load i32, ptr %98, align 8, !tbaa !37
  %152 = sext i32 %151 to i64
  %153 = shl nsw i64 %152, 12
  %154 = tail call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %150, i64 noundef %153, i32 noundef 0) #9
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %296, label %156

156:                                              ; preds = %147
  %157 = icmp eq ptr %82, %37
  %158 = icmp eq i32 %68, 1
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %282, label %160

160:                                              ; preds = %251, %226, %156
  %161 = phi i32 [ %175, %226 ], [ %175, %251 ], [ %68, %156 ]
  %162 = phi ptr [ %176, %226 ], [ %253, %251 ], [ %82, %156 ]
  %163 = phi i32 [ %177, %226 ], [ %254, %251 ], [ %146, %156 ]
  %164 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %162, i64 0, i32 4
  %165 = load i32, ptr %164, align 8, !tbaa !35
  %166 = sext i32 %165 to i64
  %167 = shl nsw i64 %166, 12
  %168 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %162, i64 0, i32 3
  %169 = load i32, ptr %168, align 4, !tbaa !38
  %170 = sext i32 %169 to i64
  %171 = shl nsw i64 %170, 12
  %172 = tail call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %167, i64 noundef %171, i32 noundef 0) #9
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %296, label %67

174:                                              ; preds = %268, %56
  %175 = phi i32 [ %269, %268 ], [ 2, %56 ]
  %176 = phi ptr [ %270, %268 ], [ %37, %56 ]
  %177 = phi i32 [ %271, %268 ], [ %36, %56 ]
  %178 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 6
  %179 = load i8, ptr %178, align 8, !tbaa !39
  %180 = and i8 %179, -3
  store i8 %180, ptr %178, align 8, !tbaa !39
  %181 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !12
  %183 = icmp eq ptr %182, null
  br i1 %183, label %215, label %184

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 3
  %186 = load i32, ptr %185, align 4, !tbaa !38
  %187 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 2
  %188 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 5
  br label %189

189:                                              ; preds = %202, %184
  %190 = phi ptr [ %182, %184 ], [ %204, %202 ]
  %191 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %190, i64 0, i32 3
  %192 = load i32, ptr %191, align 4, !tbaa !38
  %193 = icmp eq i32 %192, %186
  br i1 %193, label %202, label %194

194:                                              ; preds = %189
  %195 = load i32, ptr %187, align 8, !tbaa !37
  %196 = icmp eq i32 %192, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %190, i64 0, i32 4
  %199 = load i32, ptr %198, align 8, !tbaa !35
  %200 = load i32, ptr %188, align 4, !tbaa !36
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %197, %189
  %203 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %190, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !12
  %205 = icmp eq ptr %204, null
  br i1 %205, label %215, label %189, !llvm.loop !43

206:                                              ; preds = %197, %194
  %207 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %190, i64 0, i32 3
  %208 = icmp slt i32 %192, %195
  br i1 %208, label %215, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %190, i64 0, i32 5
  %211 = load i32, ptr %210, align 4, !tbaa !36
  %212 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 4
  %213 = load i32, ptr %212, align 8, !tbaa !35
  %214 = icmp sgt i32 %211, %213
  br i1 %214, label %230, label %215

215:                                              ; preds = %202, %209, %206, %174
  %216 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 4
  %217 = load i32, ptr %216, align 8, !tbaa !35
  %218 = sext i32 %217 to i64
  %219 = shl nsw i64 %218, 12
  %220 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 2
  %221 = load i32, ptr %220, align 8, !tbaa !37
  %222 = sext i32 %221 to i64
  %223 = shl nsw i64 %222, 12
  %224 = tail call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %219, i64 noundef %223, i32 noundef 0) #9
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %296, label %226

226:                                              ; preds = %215
  %227 = icmp eq ptr %176, %37
  %228 = icmp eq i32 %175, 1
  %229 = select i1 %227, i1 %228, i1 false
  br i1 %229, label %282, label %160

230:                                              ; preds = %209
  %231 = load ptr, ptr %176, align 8, !tbaa !9
  %232 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %231, i64 0, i32 2
  %233 = load i32, ptr %232, align 8, !tbaa !37
  %234 = icmp eq i32 %233, %195
  br i1 %234, label %235, label %251

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %231, i64 0, i32 4
  %237 = load i32, ptr %236, align 8, !tbaa !35
  %238 = icmp sgt i32 %211, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %235
  %240 = sext i32 %237 to i64
  %241 = shl nsw i64 %240, 12
  %242 = sext i32 %195 to i64
  %243 = shl nsw i64 %242, 12
  %244 = tail call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %241, i64 noundef %243, i32 noundef 0) #9
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %239
  %247 = icmp eq ptr %231, %37
  %248 = icmp eq i32 %175, 1
  %249 = select i1 %247, i1 %248, i1 false
  %250 = select i1 %249, i32 12, i32 14
  br label %251

251:                                              ; preds = %246, %239, %235, %230
  %252 = phi i32 [ 1, %239 ], [ %250, %246 ], [ 0, %235 ], [ 0, %230 ]
  %253 = phi ptr [ %176, %239 ], [ %231, %246 ], [ %176, %235 ], [ %176, %230 ]
  %254 = phi i32 [ %244, %239 ], [ %177, %246 ], [ %177, %235 ], [ %177, %230 ]
  switch i32 %252, label %296 [
    i32 0, label %255
    i32 14, label %160
    i32 12, label %282
  ]

255:                                              ; preds = %251
  %256 = load i32, ptr %210, align 4, !tbaa !36
  %257 = sext i32 %256 to i64
  %258 = shl nsw i64 %257, 12
  %259 = load i32, ptr %207, align 4, !tbaa !38
  %260 = sext i32 %259 to i64
  %261 = shl nsw i64 %260, 12
  %262 = tail call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %258, i64 noundef %261, i32 noundef 0) #9
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %296, label %264

264:                                              ; preds = %255
  %265 = icmp eq ptr %190, %37
  %266 = icmp eq i32 %175, 2
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %282, label %268

268:                                              ; preds = %264, %143, %117
  %269 = phi i32 [ %68, %117 ], [ %175, %264 ], [ %68, %143 ]
  %270 = phi ptr [ %69, %117 ], [ %190, %264 ], [ %145, %143 ]
  %271 = phi i32 [ %70, %117 ], [ %254, %264 ], [ %146, %143 ]
  %272 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %270, i64 0, i32 5
  %273 = load i32, ptr %272, align 4, !tbaa !36
  %274 = sext i32 %273 to i64
  %275 = shl nsw i64 %274, 12
  %276 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %270, i64 0, i32 2
  %277 = load i32, ptr %276, align 8, !tbaa !37
  %278 = sext i32 %277 to i64
  %279 = shl nsw i64 %278, 12
  %280 = tail call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %275, i64 noundef %279, i32 noundef 0) #9
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %296, label %174

282:                                              ; preds = %264, %251, %226, %156, %143, %117
  %283 = phi i32 [ %70, %117 ], [ %177, %226 ], [ %254, %251 ], [ %254, %264 ], [ %146, %143 ], [ %146, %156 ]
  %284 = tail call i32 @gx_path_close_subpath_notes(ptr noundef %0, i32 noundef 0) #9
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %282, %35
  %287 = phi i32 [ %284, %282 ], [ %38, %35 ]
  %288 = phi i32 [ %283, %282 ], [ %36, %35 ]
  %289 = load ptr, ptr %37, align 8, !tbaa !9
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %35, !llvm.loop !44

291:                                              ; preds = %286, %14
  %292 = phi i32 [ -1, %14 ], [ %287, %286 ]
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = tail call i32 @gx_path_add_point(ptr noundef %0, i64 noundef 0, i64 noundef 0) #9
  br label %296

296:                                              ; preds = %45, %56, %106, %143, %147, %160, %215, %251, %255, %268, %282, %291, %294
  %297 = phi i32 [ %295, %294 ], [ %292, %291 ], [ %254, %251 ], [ %146, %143 ], [ %54, %45 ], [ %65, %56 ], [ %115, %106 ], [ %154, %147 ], [ %172, %160 ], [ %224, %215 ], [ %262, %255 ], [ %280, %268 ], [ %284, %282 ]
  %298 = icmp sgt i32 %297, -1
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  store i8 1, ptr %3, align 8, !tbaa !27
  br label %300

300:                                              ; preds = %299, %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !tbaa.struct !45
  br label %301

301:                                              ; preds = %296, %300
  %302 = phi i32 [ 0, %300 ], [ %297, %296 ]
  ret i32 %302
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @gx_cpath_inner_box(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !51
  %9 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !52
  %11 = icmp slt i32 %10, 2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi i32 [ 0, %6 ], [ %12, %7 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @gx_cpath_outer_box(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  store i64 -9223372036854775808, ptr %7, align 8, !tbaa !53
  store i64 -9223372036854775808, ptr %1, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1, i32 1
  store i64 9223372036854775807, ptr %9, align 8, !tbaa !55
  store i64 9223372036854775807, ptr %8, align 8, !tbaa !56
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !51
  %12 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !52
  %14 = icmp slt i32 %13, 2
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %10, %6
  %17 = phi i32 [ 0, %6 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gx_cpath_includes_rectangle(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = icmp sgt i64 %1, %3
  %7 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !57
  br i1 %6, label %15, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i64 %8, %1
  br i1 %10, label %35, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 2, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !58
  %14 = icmp slt i64 %13, %3
  br i1 %14, label %35, label %21

15:                                               ; preds = %5
  %16 = icmp sgt i64 %8, %3
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 2, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !58
  %20 = icmp slt i64 %19, %1
  br i1 %20, label %35, label %21

21:                                               ; preds = %17, %11
  %22 = icmp sgt i64 %2, %4
  %23 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 2, i32 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !59
  br i1 %22, label %27, label %25

25:                                               ; preds = %21
  %26 = icmp sgt i64 %24, %2
  br i1 %26, label %35, label %29

27:                                               ; preds = %21
  %28 = icmp sgt i64 %24, %4
  br i1 %28, label %35, label %29

29:                                               ; preds = %27, %25
  %30 = phi i64 [ %4, %25 ], [ %2, %27 ]
  %31 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 2, i32 1, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !60
  %33 = icmp sge i64 %32, %30
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %25, %27, %29, %17, %15, %11, %9
  %36 = phi i32 [ 0, %17 ], [ 0, %15 ], [ 0, %11 ], [ 0, %9 ], [ 0, %25 ], [ 0, %27 ], [ %34, %29 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_cpath_set_outside(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @gs_next_ids(i32 noundef 1) #9
  %8 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 7
  store i64 %7, ptr %8, align 8, !tbaa !61
  store i32 %1, ptr %3, align 4, !tbaa !50
  br label %9

9:                                                ; preds = %6, %2
  ret i32 0
}

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gx_cpath_is_outside(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !50
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_cpath_release(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !62
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %0, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %9, %11 ], [ %16, %13 ]
  %15 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  %17 = load ptr, ptr %12, align 8, !tbaa !64
  tail call void %17(ptr noundef %7, ptr noundef nonnull %14, ptr noundef nonnull @.str.3) #9
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %13, !llvm.loop !67

19:                                               ; preds = %13, %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) @clip_list_empty, i64 64, i1 false), !tbaa.struct !68
  br label %20

20:                                               ; preds = %19, %1
  tail call void @gx_path_release(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_clip_list_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_clip_list_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %4, %6 ], [ %11, %8 ]
  %10 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = load ptr, ptr %7, align 8, !tbaa !64
  tail call void %12(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull @.str.3) #9
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %8, !llvm.loop !67

14:                                               ; preds = %8, %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) @clip_list_empty, i64 64, i1 false), !tbaa.struct !68
  ret void
}

declare void @gx_path_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @gx_cpath_share(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @gx_path_share(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 6
  store i8 1, ptr %2, align 1, !tbaa !62
  ret void
}

declare void @gx_path_share(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_cpath_set_outer_box(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !69
  %4 = and i64 %3, -4096
  %5 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3
  store i64 %4, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !71
  %8 = and i64 %7, -4096
  %9 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  store i64 %8, ptr %9, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !73
  %12 = add nsw i64 %11, 4095
  %13 = and i64 %12, -4096
  %14 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !75
  %17 = add nsw i64 %16, 4095
  %18 = and i64 %17, -4096
  %19 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3, i32 1, i32 1
  store i64 %18, ptr %19, align 8, !tbaa !76
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_cpath_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @gx_cpath_from_rectangle(ptr noundef %0, ptr noundef nonnull @gx_cpath_init.null_rect, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_cpath_from_rectangle(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) @clip_list_empty, i64 64, i1 false), !tbaa.struct !68
  %5 = load i64, ptr %1, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !56
  %8 = icmp sgt i64 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i64 %7, ptr %1, align 8, !tbaa !54
  store i64 %5, ptr %6, align 8, !tbaa !56
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %1, i64 0, i32 1, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !55
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i64 %14, ptr %11, align 8, !tbaa !53
  store i64 %12, ptr %13, align 8, !tbaa !55
  br label %17

17:                                               ; preds = %10, %16
  %18 = load i64, ptr %1, align 8, !tbaa !54
  %19 = lshr i64 %18, 12
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 0, i32 4
  store i32 %20, ptr %21, align 8, !tbaa !77
  %22 = load i64, ptr %11, align 8, !tbaa !53
  %23 = lshr i64 %22, 12
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i32 %24, ptr %25, align 8, !tbaa !78
  %26 = load i64, ptr %6, align 8, !tbaa !56
  %27 = add nsw i64 %26, 4095
  %28 = lshr i64 %27, 12
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 0, i32 5
  store i32 %29, ptr %30, align 4, !tbaa !79
  %31 = load i64, ptr %13, align 8, !tbaa !55
  %32 = add nsw i64 %31, 4095
  %33 = lshr i64 %32, 12
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 0, i32 3
  store i32 %34, ptr %35, align 4, !tbaa !80
  %36 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 3
  store i32 1, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 4
  store i32 0, ptr %37, align 4, !tbaa !81
  %38 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !51
  %39 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 5
  store i8 0, ptr %39, align 8, !tbaa !27
  %40 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 6
  store i8 0, ptr %40, align 1, !tbaa !62
  tail call void @gx_path_init(ptr noundef %0, ptr noundef %2) #9
  %41 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !51
  %42 = load i64, ptr %41, align 8, !tbaa !69
  %43 = and i64 %42, -4096
  %44 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3
  store i64 %43, ptr %44, align 8, !tbaa !70
  %45 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !71
  %47 = and i64 %46, -4096
  %48 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  store i64 %47, ptr %48, align 8, !tbaa !72
  %49 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !73
  %51 = add nsw i64 %50, 4095
  %52 = and i64 %51, -4096
  %53 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3, i32 1
  store i64 %52, ptr %53, align 8, !tbaa !74
  %54 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !75
  %56 = add nsw i64 %55, 4095
  %57 = and i64 %56, -4096
  %58 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3, i32 1, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !76
  %59 = tail call i64 @gs_next_ids(i32 noundef 1) #9
  %60 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 7
  store i64 %59, ptr %60, align 8, !tbaa !61
  ret i32 0
}

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_cpath_intersect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.gs_fixed_rect_s, align 8
  %6 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %7 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa.struct !51
  %13 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 2, i32 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa.struct !82
  %15 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 2, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa.struct !83
  %17 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 2, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa.struct !84
  %19 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = icmp slt i32 %20, 2
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %4, %10
  %24 = phi i64 [ %12, %10 ], [ 0, %4 ]
  %25 = phi i64 [ %14, %10 ], [ 0, %4 ]
  %26 = phi i64 [ %16, %10 ], [ 0, %4 ]
  %27 = phi i64 [ %18, %10 ], [ 0, %4 ]
  %28 = phi i32 [ %22, %10 ], [ 0, %4 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %189, label %30

30:                                               ; preds = %23
  %31 = call i32 @gx_path_is_rectangle(ptr noundef %2, ptr noundef nonnull %5) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i32 @gx_path_is_void(ptr noundef %2) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %189, label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4
  %38 = load i32, ptr %7, align 4, !tbaa !50
  br i1 %32, label %39, label %55

39:                                               ; preds = %36
  %40 = call i32 @gx_path_current_point(ptr noundef %2, ptr noundef nonnull %5) #9
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %43 = call i32 @gs_transform(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noundef nonnull %6) #9
  %44 = load double, ptr %6, align 8, !tbaa !85
  %45 = fmul double %44, 4.096000e+03
  %46 = fptosi double %45 to i64
  store i64 %46, ptr %5, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.gs_point_s, ptr %6, i64 0, i32 1
  %48 = load double, ptr %47, align 8, !tbaa !86
  %49 = fmul double %48, 4.096000e+03
  %50 = fptosi double %49 to i64
  %51 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !53
  %52 = call i32 @gx_path_add_point(ptr noundef %2, i64 noundef %46, i64 noundef %50) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %53

53:                                               ; preds = %42, %39
  %54 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !83
  br label %115

55:                                               ; preds = %36
  %56 = load i64, ptr %5, align 8, !tbaa !54
  %57 = icmp sgt i64 %24, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 %24, ptr %5, align 8, !tbaa !54
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ 1, %58 ], [ 0, %55 ]
  %61 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !53
  %63 = icmp sgt i64 %25, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i64 %25, ptr %61, align 8, !tbaa !53
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i32 [ 1, %64 ], [ %60, %59 ]
  %67 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !56
  %69 = icmp slt i64 %26, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i64 %26, ptr %67, align 8, !tbaa !56
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi i32 [ 1, %70 ], [ %66, %65 ]
  %73 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !55
  %75 = icmp slt i64 %27, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i64 %27, ptr %73, align 8, !tbaa !55
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i32 [ 1, %76 ], [ %72, %71 ]
  %79 = load i64, ptr %67, align 8, !tbaa !56
  %80 = load i64, ptr %5, align 8, !tbaa !54
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i64 %80, ptr %67, align 8, !tbaa !56
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i64, ptr %73, align 8, !tbaa !55
  %85 = load i64, ptr %61, align 8, !tbaa !53
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i64 %85, ptr %73, align 8, !tbaa !55
  br label %88

88:                                               ; preds = %87, %83
  %89 = icmp eq i32 %78, 0
  br i1 %89, label %115, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.gx_path_s, ptr %2, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !87
  %93 = getelementptr inbounds %struct.segment_s, ptr %92, i64 0, i32 4
  store i64 %80, ptr %93, align 8, !tbaa !88
  %94 = getelementptr inbounds %struct.segment_s, ptr %92, i64 0, i32 4, i32 1
  store i64 %85, ptr %94, align 8, !tbaa !90
  %95 = getelementptr inbounds %struct.segment_s, ptr %92, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !91
  %97 = load i64, ptr %67, align 8, !tbaa !56
  %98 = getelementptr inbounds %struct.segment_s, ptr %96, i64 0, i32 4
  store i64 %97, ptr %98, align 8, !tbaa !88
  %99 = getelementptr inbounds %struct.segment_s, ptr %96, i64 0, i32 4, i32 1
  store i64 %85, ptr %99, align 8, !tbaa !90
  %100 = getelementptr inbounds %struct.segment_s, ptr %96, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !91
  %102 = getelementptr inbounds %struct.segment_s, ptr %101, i64 0, i32 4
  store i64 %97, ptr %102, align 8, !tbaa !88
  %103 = load i64, ptr %73, align 8, !tbaa !55
  %104 = getelementptr inbounds %struct.segment_s, ptr %101, i64 0, i32 4, i32 1
  store i64 %103, ptr %104, align 8, !tbaa !90
  %105 = getelementptr inbounds %struct.segment_s, ptr %101, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !91
  %107 = getelementptr inbounds %struct.segment_s, ptr %106, i64 0, i32 4
  store i64 %80, ptr %107, align 8, !tbaa !88
  %108 = getelementptr inbounds %struct.segment_s, ptr %106, i64 0, i32 4, i32 1
  store i64 %103, ptr %108, align 8, !tbaa !90
  %109 = getelementptr inbounds %struct.segment_s, ptr %106, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !91
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %90
  %113 = getelementptr inbounds %struct.segment_s, ptr %110, i64 0, i32 4
  store i64 %80, ptr %113, align 8, !tbaa !88
  %114 = getelementptr inbounds %struct.segment_s, ptr %110, i64 0, i32 4, i32 1
  store i64 %85, ptr %114, align 8, !tbaa !90
  br label %115

115:                                              ; preds = %90, %112, %88, %53
  %116 = getelementptr inbounds %struct.gx_path_s, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %116, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !51
  %117 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 6
  %118 = load i8, ptr %117, align 1, !tbaa !62
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load ptr, ptr %1, align 8, !tbaa !63
  %122 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !17
  %124 = icmp eq ptr %123, null
  br i1 %124, label %133, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %121, i64 0, i32 11
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi ptr [ %123, %125 ], [ %130, %127 ]
  %129 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !12
  %131 = load ptr, ptr %126, align 8, !tbaa !64
  call void %131(ptr noundef %121, ptr noundef nonnull %128, ptr noundef nonnull @.str.3) #9
  %132 = icmp eq ptr %130, null
  br i1 %132, label %133, label %127, !llvm.loop !67

133:                                              ; preds = %127, %120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %37, ptr noundef nonnull align 8 dereferenceable(64) @clip_list_empty, i64 64, i1 false), !tbaa.struct !68
  br label %134

134:                                              ; preds = %115, %133
  call void @gx_path_release(ptr noundef %1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %37, ptr noundef nonnull align 8 dereferenceable(64) @clip_list_empty, i64 64, i1 false), !tbaa.struct !68
  %135 = load i64, ptr %5, align 8, !tbaa !54
  %136 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !56
  %138 = icmp sgt i64 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i64 %137, ptr %5, align 8, !tbaa !54
  store i64 %135, ptr %136, align 8, !tbaa !56
  br label %140

140:                                              ; preds = %139, %134
  %141 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !53
  %143 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !55
  %145 = icmp sgt i64 %142, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i64 %144, ptr %141, align 8, !tbaa !53
  store i64 %142, ptr %143, align 8, !tbaa !55
  br label %147

147:                                              ; preds = %140, %146
  %148 = load i64, ptr %5, align 8, !tbaa !54
  %149 = lshr i64 %148, 12
  %150 = trunc i64 %149 to i32
  %151 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 0, i32 4
  store i32 %150, ptr %151, align 8, !tbaa !77
  %152 = load i64, ptr %141, align 8, !tbaa !53
  %153 = lshr i64 %152, 12
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 0, i32 2
  store i32 %154, ptr %155, align 8, !tbaa !78
  %156 = load i64, ptr %136, align 8, !tbaa !56
  %157 = add nsw i64 %156, 4095
  %158 = lshr i64 %157, 12
  %159 = trunc i64 %158 to i32
  %160 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 0, i32 5
  store i32 %159, ptr %160, align 4, !tbaa !79
  %161 = load i64, ptr %143, align 8, !tbaa !55
  %162 = add nsw i64 %161, 4095
  %163 = lshr i64 %162, 12
  %164 = trunc i64 %163 to i32
  %165 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 0, i32 3
  store i32 %164, ptr %165, align 4, !tbaa !80
  %166 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 3
  store i32 1, ptr %166, align 8, !tbaa !34
  store i32 %38, ptr %7, align 4, !tbaa !50
  %167 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %167, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !45
  %168 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !69
  %170 = and i64 %169, -4096
  %171 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 3
  store i64 %170, ptr %171, align 8, !tbaa !70
  %172 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1, i32 0, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !71
  %174 = and i64 %173, -4096
  %175 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 3, i32 0, i32 1
  store i64 %174, ptr %175, align 8, !tbaa !72
  %176 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1, i32 1
  %177 = load i64, ptr %176, align 8, !tbaa !73
  %178 = add nsw i64 %177, 4095
  %179 = and i64 %178, -4096
  %180 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 3, i32 1
  store i64 %179, ptr %180, align 8, !tbaa !74
  %181 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 1, i32 1, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !75
  %183 = add nsw i64 %182, 4095
  %184 = and i64 %183, -4096
  %185 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 3, i32 1, i32 1
  store i64 %184, ptr %185, align 8, !tbaa !76
  %186 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 5
  store i8 1, ptr %186, align 8, !tbaa !27
  store i8 0, ptr %117, align 1, !tbaa !62
  %187 = call i64 @gs_next_ids(i32 noundef 1) #9
  %188 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 7
  store i64 %187, ptr %188, align 8, !tbaa !61
  br label %191

189:                                              ; preds = %33, %23
  %190 = call i32 @gx_cpath_intersect_slow(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  br label %191

191:                                              ; preds = %189, %147
  %192 = phi i32 [ 1, %147 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret i32 %192
}

declare i32 @gx_path_is_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @gx_path_is_void(ptr noundef) local_unnamed_addr #5

declare i32 @gx_path_current_point(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @gs_transform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #5

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @gx_cpath_intersect_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_cpath_scale_exp2(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @gx_path_scale_exp2(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %71, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 2
  tail call void @gx_rect_scale_exp2(ptr noundef nonnull %7, i32 noundef %1, i32 noundef %2) #9
  %8 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 3
  tail call void @gx_rect_scale_exp2(ptr noundef nonnull %8, i32 noundef %1, i32 noundef %2) #9
  %9 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4
  %13 = select i1 %11, ptr %12, ptr %10
  %14 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 4, i32 2
  %15 = sub nsw i32 0, %1
  %16 = icmp slt i32 %1, 0
  %17 = sub nsw i32 0, %1
  %18 = icmp slt i32 %1, 0
  %19 = sub nsw i32 0, %2
  %20 = icmp slt i32 %2, 0
  %21 = sub nsw i32 0, %2
  %22 = icmp slt i32 %2, 0
  br label %23

23:                                               ; preds = %6, %65
  %24 = phi ptr [ %13, %6 ], [ %66, %65 ]
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %65, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %14, align 8, !tbaa !93
  %28 = icmp eq ptr %24, %27
  br i1 %28, label %65, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %24, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !35
  %32 = add i32 %31, -2147483647
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = shl i32 %31, %1
  %36 = ashr i32 %31, %15
  %37 = select i1 %16, i32 %36, i32 %35
  store i32 %37, ptr %30, align 8, !tbaa !35
  br label %38

38:                                               ; preds = %29, %34
  %39 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %24, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !36
  %41 = add i32 %40, -2147483647
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = shl i32 %40, %1
  %45 = ashr i32 %40, %17
  %46 = select i1 %18, i32 %45, i32 %44
  store i32 %46, ptr %39, align 4, !tbaa !36
  br label %47

47:                                               ; preds = %38, %43
  %48 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %24, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !37
  %50 = add i32 %49, -2147483647
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = shl i32 %49, %2
  %54 = ashr i32 %49, %19
  %55 = select i1 %20, i32 %54, i32 %53
  store i32 %55, ptr %48, align 8, !tbaa !37
  br label %56

56:                                               ; preds = %47, %52
  %57 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %24, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !38
  %59 = add i32 %58, -2147483647
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = shl i32 %58, %2
  %63 = ashr i32 %58, %21
  %64 = select i1 %22, i32 %63, i32 %62
  store i32 %64, ptr %57, align 4, !tbaa !38
  br label %65

65:                                               ; preds = %56, %23, %26, %61
  %66 = load ptr, ptr %24, align 8, !tbaa !9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %23, !llvm.loop !94

68:                                               ; preds = %65
  %69 = tail call i64 @gs_next_ids(i32 noundef 1) #9
  %70 = getelementptr inbounds %struct.gx_clip_path_s, ptr %0, i64 0, i32 7
  store i64 %69, ptr %70, align 8, !tbaa !61
  br label %71

71:                                               ; preds = %3, %68
  %72 = phi i32 [ 0, %68 ], [ %4, %3 ]
  ret i32 %72
}

declare i32 @gx_path_scale_exp2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @gx_rect_scale_exp2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_clip_list_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) @clip_list_empty, i64 64, i1 false), !tbaa.struct !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_make_clip_translate_device(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(576) @gs_clip_device, i64 576, i1 false), !tbaa.struct !95
  %6 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !68
  %7 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  store i32 %3, ptr %7, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  store i32 %4, ptr %8, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_make_clip_path_device(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(576) @gs_clip_device, i64 576, i1 false), !tbaa.struct !95
  %4 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !68
  %5 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  store i32 0, ptr %6, align 4, !tbaa !98
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @gx_path_close_subpath_notes(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @gx_default_install(ptr noundef, ptr noundef) #5

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #5

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @clip_open(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23
  %8 = select i1 %6, ptr %7, ptr %5
  %9 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  store ptr %8, ptr %9, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !101
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 8
  store i32 %13, ptr %14, align 8, !tbaa !104
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !105
  %17 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 9
  store i32 %16, ptr %17, align 4, !tbaa !106
  ret i32 0
}

declare void @gx_forward_get_initial_matrix(ptr noundef, ptr noundef) #5

declare i32 @gx_default_sync_output(ptr noundef) #5

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #5

declare i32 @gx_default_close_device(ptr noundef) #5

declare i64 @gx_forward_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #5

declare i32 @gx_forward_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @clip_fill_rectangle(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !107
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  %16 = load i32, ptr %15, align 8, !tbaa !97
  %17 = add nsw i32 %16, %1
  %18 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !98
  %20 = add nsw i32 %19, %2
  %21 = icmp eq i32 %12, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %8, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !37
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = add nsw i32 %20, %4
  %28 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %8, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !38
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %8, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !35
  %34 = icmp slt i32 %17, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %17, %3
  %37 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %8, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !36
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call i32 %14(ptr noundef %10, i32 noundef %17, i32 noundef %20, i32 noundef %3, i32 noundef %4, i64 noundef %5) #9
  br label %245

42:                                               ; preds = %35, %31, %26, %22, %6
  %43 = icmp slt i32 %3, 1
  %44 = icmp slt i32 %4, 1
  %45 = or i1 %43, %44
  br i1 %45, label %245, label %46

46:                                               ; preds = %42
  %47 = add nsw i32 %17, %3
  %48 = add nsw i32 %20, %4
  %49 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %8, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !38
  %51 = icmp slt i32 %20, %50
  br i1 %51, label %65, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %8, align 8, !tbaa !9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %74, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %53, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !38
  %58 = icmp slt i32 %20, %57
  br i1 %58, label %74, label %59

59:                                               ; preds = %55, %59
  %60 = phi ptr [ %61, %59 ], [ %53, %55 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !9
  %62 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !38
  %64 = icmp slt i32 %20, %63
  br i1 %64, label %74, label %59, !llvm.loop !109

65:                                               ; preds = %46, %70
  %66 = phi ptr [ %68, %70 ], [ %8, %46 ]
  %67 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %68, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !38
  %73 = icmp slt i32 %20, %72
  br i1 %73, label %65, label %74, !llvm.loop !110

74:                                               ; preds = %59, %70, %65, %55, %52
  %75 = phi ptr [ null, %52 ], [ %53, %55 ], [ %66, %65 ], [ %66, %70 ], [ %61, %59 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %75, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !37
  %80 = icmp slt i32 %79, %48
  br i1 %80, label %96, label %81

81:                                               ; preds = %77, %74
  %82 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !111
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  br i1 %76, label %86, label %91

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %88 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %89 = select i1 %51, ptr %88, ptr %87
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  br label %91

91:                                               ; preds = %86, %85
  %92 = phi ptr [ %75, %85 ], [ %90, %86 ]
  store ptr %92, ptr %7, align 8, !tbaa !19
  br label %93

93:                                               ; preds = %91, %81
  br i1 %21, label %240, label %94

94:                                               ; preds = %93
  %95 = tail call i32 %14(ptr noundef %10, i32 noundef %17, i32 noundef %20, i32 noundef %3, i32 noundef %4, i64 noundef %5) #9
  br label %240

96:                                               ; preds = %77
  store ptr %75, ptr %7, align 8, !tbaa !19
  %97 = tail call i32 @llvm.smax.i32(i32 %79, i32 %20)
  br i1 %21, label %168, label %98

98:                                               ; preds = %96, %154
  %99 = phi ptr [ %156, %154 ], [ %75, %96 ]
  %100 = phi i32 [ %157, %154 ], [ %97, %96 ]
  %101 = phi i32 [ %158, %154 ], [ %20, %96 ]
  %102 = phi i32 [ %159, %154 ], [ undef, %96 ]
  %103 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %99, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !38
  %105 = icmp sgt i32 %100, %101
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = sub nsw i32 %100, %101
  %108 = tail call i32 %14(ptr noundef %10, i32 noundef %17, i32 noundef %101, i32 noundef %3, i32 noundef %107, i64 noundef %5) #9
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %154, label %110

110:                                              ; preds = %106, %98
  %111 = tail call i32 @llvm.smin.i32(i32 %104, i32 %48)
  %112 = sub nsw i32 %111, %100
  br label %113

113:                                              ; preds = %137, %110
  %114 = phi ptr [ %99, %110 ], [ %135, %137 ]
  %115 = phi i32 [ %17, %110 ], [ %134, %137 ]
  %116 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %114, i64 0, i32 4
  %117 = load i32, ptr %116, align 8, !tbaa !35
  %118 = icmp sgt i32 %117, %115
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = tail call i32 @llvm.smin.i32(i32 %117, i32 %47)
  %121 = sub nsw i32 %120, %115
  %122 = tail call i32 %14(ptr noundef %10, i32 noundef %115, i32 noundef %100, i32 noundef %121, i32 noundef %112, i64 noundef %5) #9
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %154, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %114, i64 0, i32 5
  %126 = load i32, ptr %125, align 4, !tbaa !36
  %127 = icmp slt i32 %126, %47
  %128 = select i1 %127, i32 %126, i32 2147483647
  br label %133

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %114, i64 0, i32 5
  %131 = load i32, ptr %130, align 4, !tbaa !36
  %132 = tail call i32 @llvm.smax.i32(i32 %131, i32 %115)
  br label %133

133:                                              ; preds = %129, %124
  %134 = phi i32 [ %128, %124 ], [ %132, %129 ]
  %135 = load ptr, ptr %114, align 8, !tbaa !9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %135, i64 0, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !38
  %140 = icmp eq i32 %139, %104
  br i1 %140, label %113, label %141, !llvm.loop !112

141:                                              ; preds = %133, %137
  %142 = icmp slt i32 %134, %47
  br i1 %142, label %143, label %148

143:                                              ; preds = %141
  %144 = sub nsw i32 %47, %134
  %145 = sub nsw i32 %111, %100
  %146 = tail call i32 %14(ptr noundef %10, i32 noundef %134, i32 noundef %100, i32 noundef %144, i32 noundef %145, i64 noundef %5) #9
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %143, %141
  br i1 %136, label %154, label %149

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %135, i64 0, i32 2
  %151 = load i32, ptr %150, align 8, !tbaa !37
  %152 = icmp slt i32 %151, %48
  %153 = select i1 %152, i32 0, i32 8
  br label %154

154:                                              ; preds = %119, %149, %148, %143, %106
  %155 = phi i32 [ 1, %106 ], [ 1, %143 ], [ 8, %148 ], [ %153, %149 ], [ 1, %119 ]
  %156 = phi ptr [ %99, %106 ], [ %135, %143 ], [ %135, %148 ], [ %135, %149 ], [ %114, %119 ]
  %157 = phi i32 [ %101, %106 ], [ %100, %143 ], [ %100, %148 ], [ %151, %149 ], [ %100, %119 ]
  %158 = phi i32 [ %101, %106 ], [ %101, %143 ], [ %111, %148 ], [ %111, %149 ], [ %101, %119 ]
  %159 = phi i32 [ %108, %106 ], [ %146, %143 ], [ %102, %148 ], [ %102, %149 ], [ %122, %119 ]
  switch i32 %155, label %240 [
    i32 0, label %98
    i32 8, label %160
  ], !llvm.loop !113

160:                                              ; preds = %154
  %161 = icmp slt i32 %158, %48
  br i1 %161, label %162, label %240

162:                                              ; preds = %160
  %163 = sub nsw i32 %48, %158
  %164 = tail call i32 %14(ptr noundef %10, i32 noundef %17, i32 noundef %158, i32 noundef %3, i32 noundef %163, i64 noundef %5) #9
  %165 = icmp slt i32 %164, 0
  %166 = lshr i32 %164, 31
  %167 = select i1 %165, i32 %164, i32 %159
  br label %240

168:                                              ; preds = %96, %234
  %169 = phi ptr [ %236, %234 ], [ %75, %96 ]
  %170 = phi i32 [ %237, %234 ], [ %97, %96 ]
  %171 = phi i32 [ %238, %234 ], [ undef, %96 ]
  %172 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %169, i64 0, i32 3
  %173 = load i32, ptr %172, align 4, !tbaa !38
  %174 = tail call i32 @llvm.smin.i32(i32 %173, i32 %48)
  br label %175

175:                                              ; preds = %224, %168
  %176 = phi ptr [ %169, %168 ], [ %222, %224 ]
  %177 = phi i32 [ %174, %168 ], [ %221, %224 ]
  %178 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 4
  %179 = load i32, ptr %178, align 8, !tbaa !35
  %180 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %176, i64 0, i32 5
  %181 = load i32, ptr %180, align 4, !tbaa !36
  %182 = tail call i32 @llvm.smax.i32(i32 %179, i32 %17)
  %183 = tail call i32 @llvm.smin.i32(i32 %181, i32 %47)
  %184 = icmp sgt i32 %183, %182
  br i1 %184, label %185, label %218

185:                                              ; preds = %175
  %186 = sub nsw i32 %183, %182
  %187 = icmp eq i32 %186, %3
  br i1 %187, label %188, label %209

188:                                              ; preds = %185, %205
  %189 = phi ptr [ %191, %205 ], [ %176, %185 ]
  %190 = phi i32 [ %199, %205 ], [ %177, %185 ]
  %191 = load ptr, ptr %189, align 8, !tbaa !9
  %192 = icmp eq ptr %191, null
  br i1 %192, label %211, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %191, i64 0, i32 2
  %195 = load i32, ptr %194, align 8, !tbaa !37
  %196 = icmp eq i32 %195, %190
  br i1 %196, label %197, label %211

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %191, i64 0, i32 3
  %199 = load i32, ptr %198, align 4, !tbaa !38
  %200 = icmp sgt i32 %199, %48
  br i1 %200, label %211, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %191, i64 0, i32 4
  %203 = load i32, ptr %202, align 8, !tbaa !35
  %204 = icmp sgt i32 %203, %17
  br i1 %204, label %211, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %191, i64 0, i32 5
  %207 = load i32, ptr %206, align 4, !tbaa !36
  %208 = icmp slt i32 %207, %47
  br i1 %208, label %211, label %188, !llvm.loop !114

209:                                              ; preds = %185
  %210 = load ptr, ptr %176, align 8, !tbaa !9
  br label %211

211:                                              ; preds = %205, %188, %193, %197, %201, %209
  %212 = phi ptr [ %176, %209 ], [ %189, %201 ], [ %189, %197 ], [ %189, %193 ], [ %189, %188 ], [ %189, %205 ]
  %213 = phi i32 [ %177, %209 ], [ %190, %201 ], [ %190, %197 ], [ %190, %193 ], [ %190, %188 ], [ %190, %205 ]
  %214 = phi ptr [ %210, %209 ], [ %191, %205 ], [ null, %188 ], [ %191, %193 ], [ %191, %197 ], [ %191, %201 ]
  %215 = sub nsw i32 %213, %170
  %216 = tail call i32 %14(ptr noundef %10, i32 noundef %182, i32 noundef %170, i32 noundef %186, i32 noundef %215, i64 noundef %5) #9
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %234, label %220

218:                                              ; preds = %175
  %219 = load ptr, ptr %176, align 8, !tbaa !9
  br label %220

220:                                              ; preds = %218, %211
  %221 = phi i32 [ %213, %211 ], [ %177, %218 ]
  %222 = phi ptr [ %214, %211 ], [ %219, %218 ]
  %223 = icmp eq ptr %222, null
  br i1 %223, label %234, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %222, i64 0, i32 3
  %226 = load i32, ptr %225, align 4, !tbaa !38
  %227 = icmp eq i32 %226, %173
  br i1 %227, label %175, label %228, !llvm.loop !115

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %222, i64 0, i32 2
  %230 = load i32, ptr %229, align 8, !tbaa !37
  %231 = icmp slt i32 %230, %48
  %232 = select i1 %231, i32 0, i32 16
  %233 = select i1 %231, i32 %230, i32 %170
  br label %234

234:                                              ; preds = %220, %211, %228
  %235 = phi i32 [ %232, %228 ], [ 1, %211 ], [ 16, %220 ]
  %236 = phi ptr [ %222, %228 ], [ %212, %211 ], [ %222, %220 ]
  %237 = phi i32 [ %233, %228 ], [ %170, %211 ], [ %170, %220 ]
  %238 = phi i32 [ %171, %228 ], [ %216, %211 ], [ %171, %220 ]
  switch i32 %235, label %240 [
    i32 0, label %168
    i32 16, label %239
  ], !llvm.loop !116

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %154, %234, %239, %162, %160, %94, %93
  %241 = phi i32 [ 1, %93 ], [ 1, %94 ], [ 0, %160 ], [ %166, %162 ], [ 0, %239 ], [ %235, %234 ], [ %155, %154 ]
  %242 = phi i32 [ 0, %93 ], [ %95, %94 ], [ %159, %160 ], [ %167, %162 ], [ %238, %239 ], [ %238, %234 ], [ %159, %154 ]
  %243 = icmp eq i32 %241, 0
  %244 = select i1 %243, i32 0, i32 %242
  br label %245

245:                                              ; preds = %240, %42, %40
  %246 = phi i32 [ %41, %40 ], [ 0, %42 ], [ %244, %240 ]
  ret i32 %246
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @clip_copy_mono(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
  %12 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !107
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 21, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !117
  %20 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  %21 = load i32, ptr %20, align 8, !tbaa !97
  %22 = add nsw i32 %21, %5
  %23 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !98
  %25 = add nsw i32 %24, %6
  %26 = icmp eq i32 %17, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !37
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = add nsw i32 %25, %8
  %33 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !35
  %39 = icmp slt i32 %22, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = add nsw i32 %22, %7
  %42 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !36
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 %19(ptr noundef %15, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %22, i32 noundef %25, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #9
  br label %278

47:                                               ; preds = %40, %36, %31, %27, %11
  %48 = icmp slt i32 %7, 1
  %49 = icmp slt i32 %8, 1
  %50 = or i1 %48, %49
  br i1 %50, label %278, label %51

51:                                               ; preds = %47
  %52 = add nsw i32 %22, %7
  %53 = add nsw i32 %25, %8
  %54 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !38
  %56 = icmp slt i32 %25, %55
  br i1 %56, label %70, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %13, align 8, !tbaa !9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %79, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %58, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !38
  %63 = icmp slt i32 %25, %62
  br i1 %63, label %79, label %64

64:                                               ; preds = %60, %64
  %65 = phi ptr [ %66, %64 ], [ %58, %60 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  %67 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %66, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !38
  %69 = icmp slt i32 %25, %68
  br i1 %69, label %79, label %64, !llvm.loop !118

70:                                               ; preds = %51, %75
  %71 = phi ptr [ %73, %75 ], [ %13, %51 ]
  %72 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %73, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !38
  %78 = icmp slt i32 %25, %77
  br i1 %78, label %70, label %79, !llvm.loop !119

79:                                               ; preds = %64, %75, %70, %60, %57
  %80 = phi ptr [ null, %57 ], [ %58, %60 ], [ %71, %70 ], [ %71, %75 ], [ %66, %64 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %80, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !37
  %85 = icmp slt i32 %84, %53
  br i1 %85, label %101, label %86

86:                                               ; preds = %82, %79
  %87 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !111
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  br i1 %81, label %91, label %96

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %93 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %94 = select i1 %56, ptr %93, ptr %92
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  br label %96

96:                                               ; preds = %91, %90
  %97 = phi ptr [ %80, %90 ], [ %95, %91 ]
  store ptr %97, ptr %12, align 8, !tbaa !19
  br label %98

98:                                               ; preds = %96, %86
  br i1 %26, label %273, label %99

99:                                               ; preds = %98
  %100 = tail call i32 %19(ptr noundef %15, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %22, i32 noundef %25, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #9
  br label %273

101:                                              ; preds = %82
  store ptr %80, ptr %12, align 8, !tbaa !19
  %102 = tail call i32 @llvm.smax.i32(i32 %84, i32 %25)
  %103 = sub i32 %2, %22
  br i1 %26, label %192, label %104

104:                                              ; preds = %101
  %105 = sub i32 %2, %22
  br label %106

106:                                              ; preds = %104, %176
  %107 = phi ptr [ %177, %176 ], [ %80, %104 ]
  %108 = phi i32 [ %179, %176 ], [ %102, %104 ]
  %109 = phi i32 [ %180, %176 ], [ %25, %104 ]
  %110 = phi i32 [ %181, %176 ], [ %25, %104 ]
  %111 = phi ptr [ %182, %176 ], [ %1, %104 ]
  %112 = phi i32 [ %183, %176 ], [ undef, %104 ]
  %113 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %107, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !38
  %115 = icmp sgt i32 %108, %110
  br i1 %115, label %116, label %128

116:                                              ; preds = %106
  %117 = sub nsw i32 %110, %109
  %118 = mul nsw i32 %117, %3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %111, i64 %119
  %121 = sub nsw i32 %108, %110
  %122 = tail call i32 %19(ptr noundef %15, ptr noundef %120, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %22, i32 noundef %110, i32 noundef %7, i32 noundef %121, i64 noundef %9, i64 noundef %10) #9
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %176, label %124

124:                                              ; preds = %116
  %125 = mul nsw i32 %121, %3
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %120, i64 %126
  br label %128

128:                                              ; preds = %124, %106
  %129 = phi i32 [ %110, %124 ], [ %109, %106 ]
  %130 = phi ptr [ %127, %124 ], [ %111, %106 ]
  %131 = tail call i32 @llvm.smin.i32(i32 %114, i32 %53)
  %132 = sub nsw i32 %131, %108
  br label %133

133:                                              ; preds = %158, %128
  %134 = phi ptr [ %107, %128 ], [ %156, %158 ]
  %135 = phi i32 [ %22, %128 ], [ %155, %158 ]
  %136 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %134, i64 0, i32 4
  %137 = load i32, ptr %136, align 8, !tbaa !35
  %138 = icmp sgt i32 %137, %135
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = tail call i32 @llvm.smin.i32(i32 %137, i32 %52)
  %141 = add i32 %103, %135
  %142 = sub nsw i32 %140, %135
  %143 = tail call i32 %19(ptr noundef %15, ptr noundef %130, i32 noundef %141, i32 noundef %3, i64 noundef 0, i32 noundef %135, i32 noundef %108, i32 noundef %142, i32 noundef %132, i64 noundef %9, i64 noundef %10) #9
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %176, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %134, i64 0, i32 5
  %147 = load i32, ptr %146, align 4, !tbaa !36
  %148 = icmp slt i32 %147, %52
  %149 = select i1 %148, i32 %147, i32 2147483647
  br label %154

150:                                              ; preds = %133
  %151 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %134, i64 0, i32 5
  %152 = load i32, ptr %151, align 4, !tbaa !36
  %153 = tail call i32 @llvm.smax.i32(i32 %152, i32 %135)
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i32 [ %149, %145 ], [ %153, %150 ]
  %156 = load ptr, ptr %134, align 8, !tbaa !9
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %156, i64 0, i32 3
  %160 = load i32, ptr %159, align 4, !tbaa !38
  %161 = icmp eq i32 %160, %114
  br i1 %161, label %133, label %162, !llvm.loop !120

162:                                              ; preds = %154, %158
  %163 = icmp slt i32 %155, %52
  br i1 %163, label %164, label %170

164:                                              ; preds = %162
  %165 = add i32 %105, %155
  %166 = sub nsw i32 %52, %155
  %167 = sub nsw i32 %131, %108
  %168 = tail call i32 %19(ptr noundef %15, ptr noundef %130, i32 noundef %165, i32 noundef %3, i64 noundef 0, i32 noundef %155, i32 noundef %108, i32 noundef %166, i32 noundef %167, i64 noundef %9, i64 noundef %10) #9
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %164, %162
  br i1 %157, label %176, label %171

171:                                              ; preds = %170
  %172 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %156, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !37
  %174 = icmp slt i32 %173, %53
  %175 = select i1 %174, i32 0, i32 8
  br label %176

176:                                              ; preds = %139, %171, %170, %164, %116
  %177 = phi ptr [ %107, %116 ], [ %156, %164 ], [ %156, %170 ], [ %156, %171 ], [ %134, %139 ]
  %178 = phi i32 [ 1, %116 ], [ 1, %164 ], [ 8, %170 ], [ %175, %171 ], [ 1, %139 ]
  %179 = phi i32 [ %110, %116 ], [ %108, %164 ], [ %108, %170 ], [ %173, %171 ], [ %108, %139 ]
  %180 = phi i32 [ %109, %116 ], [ %129, %164 ], [ %108, %170 ], [ %108, %171 ], [ %129, %139 ]
  %181 = phi i32 [ %110, %116 ], [ %110, %164 ], [ %131, %170 ], [ %131, %171 ], [ %110, %139 ]
  %182 = phi ptr [ %120, %116 ], [ %130, %164 ], [ %130, %170 ], [ %130, %171 ], [ %130, %139 ]
  %183 = phi i32 [ %122, %116 ], [ %168, %164 ], [ %112, %170 ], [ %112, %171 ], [ %143, %139 ]
  switch i32 %178, label %273 [
    i32 0, label %106
    i32 8, label %184
  ], !llvm.loop !121

184:                                              ; preds = %176
  %185 = icmp slt i32 %181, %53
  br i1 %185, label %186, label %273

186:                                              ; preds = %184
  %187 = sub nsw i32 %53, %181
  %188 = tail call i32 %19(ptr noundef %15, ptr noundef %182, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %22, i32 noundef %181, i32 noundef %7, i32 noundef %187, i64 noundef %9, i64 noundef %10) #9
  %189 = icmp slt i32 %188, 0
  %190 = lshr i32 %188, 31
  %191 = select i1 %189, i32 %188, i32 %183
  br label %273

192:                                              ; preds = %101, %266
  %193 = phi ptr [ %267, %266 ], [ %80, %101 ]
  %194 = phi i32 [ %269, %266 ], [ %102, %101 ]
  %195 = phi i32 [ %270, %266 ], [ %25, %101 ]
  %196 = phi ptr [ %206, %266 ], [ %1, %101 ]
  %197 = phi i32 [ %271, %266 ], [ undef, %101 ]
  %198 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %193, i64 0, i32 3
  %199 = load i32, ptr %198, align 4, !tbaa !38
  %200 = tail call i32 @llvm.smin.i32(i32 %199, i32 %53)
  %201 = icmp sgt i32 %194, %195
  %202 = sub nsw i32 %194, %195
  %203 = mul nsw i32 %202, %3
  %204 = select i1 %201, i32 %203, i32 0
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %196, i64 %205
  br label %207

207:                                              ; preds = %257, %192
  %208 = phi ptr [ %193, %192 ], [ %255, %257 ]
  %209 = phi i32 [ %200, %192 ], [ %254, %257 ]
  %210 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %208, i64 0, i32 4
  %211 = load i32, ptr %210, align 8, !tbaa !35
  %212 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %208, i64 0, i32 5
  %213 = load i32, ptr %212, align 4, !tbaa !36
  %214 = tail call i32 @llvm.smax.i32(i32 %211, i32 %22)
  %215 = tail call i32 @llvm.smin.i32(i32 %213, i32 %52)
  %216 = icmp sgt i32 %215, %214
  br i1 %216, label %217, label %251

217:                                              ; preds = %207
  %218 = sub nsw i32 %215, %214
  %219 = icmp eq i32 %218, %7
  br i1 %219, label %220, label %241

220:                                              ; preds = %217, %237
  %221 = phi ptr [ %223, %237 ], [ %208, %217 ]
  %222 = phi i32 [ %231, %237 ], [ %209, %217 ]
  %223 = load ptr, ptr %221, align 8, !tbaa !9
  %224 = icmp eq ptr %223, null
  br i1 %224, label %243, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %223, i64 0, i32 2
  %227 = load i32, ptr %226, align 8, !tbaa !37
  %228 = icmp eq i32 %227, %222
  br i1 %228, label %229, label %243

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %223, i64 0, i32 3
  %231 = load i32, ptr %230, align 4, !tbaa !38
  %232 = icmp sgt i32 %231, %53
  br i1 %232, label %243, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %223, i64 0, i32 4
  %235 = load i32, ptr %234, align 8, !tbaa !35
  %236 = icmp sgt i32 %235, %22
  br i1 %236, label %243, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %223, i64 0, i32 5
  %239 = load i32, ptr %238, align 4, !tbaa !36
  %240 = icmp slt i32 %239, %52
  br i1 %240, label %243, label %220, !llvm.loop !122

241:                                              ; preds = %217
  %242 = load ptr, ptr %208, align 8, !tbaa !9
  br label %243

243:                                              ; preds = %237, %220, %225, %229, %233, %241
  %244 = phi ptr [ %208, %241 ], [ %221, %233 ], [ %221, %229 ], [ %221, %225 ], [ %221, %220 ], [ %221, %237 ]
  %245 = phi i32 [ %209, %241 ], [ %222, %233 ], [ %222, %229 ], [ %222, %225 ], [ %222, %220 ], [ %222, %237 ]
  %246 = phi ptr [ %242, %241 ], [ %223, %237 ], [ null, %220 ], [ %223, %225 ], [ %223, %229 ], [ %223, %233 ]
  %247 = add i32 %103, %214
  %248 = sub nsw i32 %245, %194
  %249 = tail call i32 %19(ptr noundef %15, ptr noundef %206, i32 noundef %247, i32 noundef %3, i64 noundef 0, i32 noundef %214, i32 noundef %194, i32 noundef %218, i32 noundef %248, i64 noundef %9, i64 noundef %10) #9
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %266, label %253

251:                                              ; preds = %207
  %252 = load ptr, ptr %208, align 8, !tbaa !9
  br label %253

253:                                              ; preds = %251, %243
  %254 = phi i32 [ %245, %243 ], [ %209, %251 ]
  %255 = phi ptr [ %246, %243 ], [ %252, %251 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %266, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %255, i64 0, i32 3
  %259 = load i32, ptr %258, align 4, !tbaa !38
  %260 = icmp eq i32 %259, %199
  br i1 %260, label %207, label %261, !llvm.loop !123

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %255, i64 0, i32 2
  %263 = load i32, ptr %262, align 8, !tbaa !37
  %264 = icmp slt i32 %263, %53
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %266

266:                                              ; preds = %253, %243, %261, %265
  %267 = phi ptr [ %255, %265 ], [ %255, %261 ], [ %244, %243 ], [ %255, %253 ]
  %268 = phi i32 [ 0, %265 ], [ 12, %261 ], [ 1, %243 ], [ 12, %253 ]
  %269 = phi i32 [ %263, %265 ], [ %194, %261 ], [ %194, %243 ], [ %194, %253 ]
  %270 = phi i32 [ %194, %265 ], [ %195, %261 ], [ %195, %243 ], [ %195, %253 ]
  %271 = phi i32 [ %197, %265 ], [ %197, %261 ], [ %249, %243 ], [ %197, %253 ]
  switch i32 %268, label %273 [
    i32 0, label %192
    i32 12, label %272
  ], !llvm.loop !124

272:                                              ; preds = %266
  br label %273

273:                                              ; preds = %176, %266, %272, %186, %184, %99, %98
  %274 = phi i32 [ 1, %98 ], [ 1, %99 ], [ 0, %184 ], [ %190, %186 ], [ 0, %272 ], [ %268, %266 ], [ %178, %176 ]
  %275 = phi i32 [ 0, %98 ], [ %100, %99 ], [ %183, %184 ], [ %191, %186 ], [ %271, %272 ], [ %271, %266 ], [ %183, %176 ]
  %276 = icmp eq i32 %274, 0
  %277 = select i1 %276, i32 0, i32 %275
  br label %278

278:                                              ; preds = %273, %47, %45
  %279 = phi i32 [ %46, %45 ], [ 0, %47 ], [ %277, %273 ]
  ret i32 %279
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_copy_color(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
  %10 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %13, i64 0, i32 21, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !125
  %18 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  %19 = load i32, ptr %18, align 8, !tbaa !97
  %20 = add nsw i32 %19, %5
  %21 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !98
  %23 = add nsw i32 %22, %6
  %24 = icmp eq i32 %15, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %11, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !37
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = add nsw i32 %23, %8
  %31 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %11, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !38
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %11, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !35
  %37 = icmp slt i32 %20, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = add nsw i32 %20, %7
  %40 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %11, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !36
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call i32 %17(ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %20, i32 noundef %23, i32 noundef %7, i32 noundef %8) #9
  br label %276

45:                                               ; preds = %38, %34, %29, %25, %9
  %46 = icmp slt i32 %7, 1
  %47 = icmp slt i32 %8, 1
  %48 = or i1 %46, %47
  br i1 %48, label %276, label %49

49:                                               ; preds = %45
  %50 = add nsw i32 %20, %7
  %51 = add nsw i32 %23, %8
  %52 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %11, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !38
  %54 = icmp slt i32 %23, %53
  br i1 %54, label %68, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %11, align 8, !tbaa !9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %77, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %56, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !38
  %61 = icmp slt i32 %23, %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %58, %62
  %63 = phi ptr [ %64, %62 ], [ %56, %58 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !9
  %65 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %64, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !38
  %67 = icmp slt i32 %23, %66
  br i1 %67, label %77, label %62, !llvm.loop !126

68:                                               ; preds = %49, %73
  %69 = phi ptr [ %71, %73 ], [ %11, %49 ]
  %70 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %71, i64 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !38
  %76 = icmp slt i32 %23, %75
  br i1 %76, label %68, label %77, !llvm.loop !127

77:                                               ; preds = %62, %73, %68, %58, %55
  %78 = phi ptr [ null, %55 ], [ %56, %58 ], [ %69, %68 ], [ %69, %73 ], [ %64, %62 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %78, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !37
  %83 = icmp slt i32 %82, %51
  br i1 %83, label %99, label %84

84:                                               ; preds = %80, %77
  %85 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !111
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  br i1 %79, label %89, label %94

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %91 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %92 = select i1 %54, ptr %91, ptr %90
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  br label %94

94:                                               ; preds = %89, %88
  %95 = phi ptr [ %78, %88 ], [ %93, %89 ]
  store ptr %95, ptr %10, align 8, !tbaa !19
  br label %96

96:                                               ; preds = %94, %84
  br i1 %24, label %271, label %97

97:                                               ; preds = %96
  %98 = tail call i32 %17(ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %20, i32 noundef %23, i32 noundef %7, i32 noundef %8) #9
  br label %271

99:                                               ; preds = %80
  store ptr %78, ptr %10, align 8, !tbaa !19
  %100 = tail call i32 @llvm.smax.i32(i32 %82, i32 %23)
  %101 = sub i32 %2, %20
  br i1 %24, label %190, label %102

102:                                              ; preds = %99
  %103 = sub i32 %2, %20
  br label %104

104:                                              ; preds = %102, %174
  %105 = phi ptr [ %175, %174 ], [ %78, %102 ]
  %106 = phi i32 [ %177, %174 ], [ %100, %102 ]
  %107 = phi i32 [ %178, %174 ], [ %23, %102 ]
  %108 = phi i32 [ %179, %174 ], [ %23, %102 ]
  %109 = phi ptr [ %180, %174 ], [ %1, %102 ]
  %110 = phi i32 [ %181, %174 ], [ undef, %102 ]
  %111 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %105, i64 0, i32 3
  %112 = load i32, ptr %111, align 4, !tbaa !38
  %113 = icmp sgt i32 %106, %108
  br i1 %113, label %114, label %126

114:                                              ; preds = %104
  %115 = sub nsw i32 %108, %107
  %116 = mul nsw i32 %115, %3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %109, i64 %117
  %119 = sub nsw i32 %106, %108
  %120 = tail call i32 %17(ptr noundef %13, ptr noundef %118, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %20, i32 noundef %108, i32 noundef %7, i32 noundef %119) #9
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %174, label %122

122:                                              ; preds = %114
  %123 = mul nsw i32 %119, %3
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %118, i64 %124
  br label %126

126:                                              ; preds = %122, %104
  %127 = phi i32 [ %108, %122 ], [ %107, %104 ]
  %128 = phi ptr [ %125, %122 ], [ %109, %104 ]
  %129 = tail call i32 @llvm.smin.i32(i32 %112, i32 %51)
  %130 = sub nsw i32 %129, %106
  br label %131

131:                                              ; preds = %156, %126
  %132 = phi ptr [ %105, %126 ], [ %154, %156 ]
  %133 = phi i32 [ %20, %126 ], [ %153, %156 ]
  %134 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %132, i64 0, i32 4
  %135 = load i32, ptr %134, align 8, !tbaa !35
  %136 = icmp sgt i32 %135, %133
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = tail call i32 @llvm.smin.i32(i32 %135, i32 %50)
  %139 = add i32 %101, %133
  %140 = sub nsw i32 %138, %133
  %141 = tail call i32 %17(ptr noundef %13, ptr noundef %128, i32 noundef %139, i32 noundef %3, i64 noundef 0, i32 noundef %133, i32 noundef %106, i32 noundef %140, i32 noundef %130) #9
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %174, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %132, i64 0, i32 5
  %145 = load i32, ptr %144, align 4, !tbaa !36
  %146 = icmp slt i32 %145, %50
  %147 = select i1 %146, i32 %145, i32 2147483647
  br label %152

148:                                              ; preds = %131
  %149 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %132, i64 0, i32 5
  %150 = load i32, ptr %149, align 4, !tbaa !36
  %151 = tail call i32 @llvm.smax.i32(i32 %150, i32 %133)
  br label %152

152:                                              ; preds = %148, %143
  %153 = phi i32 [ %147, %143 ], [ %151, %148 ]
  %154 = load ptr, ptr %132, align 8, !tbaa !9
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %154, i64 0, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !38
  %159 = icmp eq i32 %158, %112
  br i1 %159, label %131, label %160, !llvm.loop !128

160:                                              ; preds = %152, %156
  %161 = icmp slt i32 %153, %50
  br i1 %161, label %162, label %168

162:                                              ; preds = %160
  %163 = add i32 %103, %153
  %164 = sub nsw i32 %50, %153
  %165 = sub nsw i32 %129, %106
  %166 = tail call i32 %17(ptr noundef %13, ptr noundef %128, i32 noundef %163, i32 noundef %3, i64 noundef 0, i32 noundef %153, i32 noundef %106, i32 noundef %164, i32 noundef %165) #9
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %162, %160
  br i1 %155, label %174, label %169

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %154, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !37
  %172 = icmp slt i32 %171, %51
  %173 = select i1 %172, i32 0, i32 8
  br label %174

174:                                              ; preds = %137, %169, %168, %162, %114
  %175 = phi ptr [ %105, %114 ], [ %154, %162 ], [ %154, %168 ], [ %154, %169 ], [ %132, %137 ]
  %176 = phi i32 [ 1, %114 ], [ 1, %162 ], [ 8, %168 ], [ %173, %169 ], [ 1, %137 ]
  %177 = phi i32 [ %108, %114 ], [ %106, %162 ], [ %106, %168 ], [ %171, %169 ], [ %106, %137 ]
  %178 = phi i32 [ %107, %114 ], [ %127, %162 ], [ %106, %168 ], [ %106, %169 ], [ %127, %137 ]
  %179 = phi i32 [ %108, %114 ], [ %108, %162 ], [ %129, %168 ], [ %129, %169 ], [ %108, %137 ]
  %180 = phi ptr [ %118, %114 ], [ %128, %162 ], [ %128, %168 ], [ %128, %169 ], [ %128, %137 ]
  %181 = phi i32 [ %120, %114 ], [ %166, %162 ], [ %110, %168 ], [ %110, %169 ], [ %141, %137 ]
  switch i32 %176, label %271 [
    i32 0, label %104
    i32 8, label %182
  ], !llvm.loop !129

182:                                              ; preds = %174
  %183 = icmp slt i32 %179, %51
  br i1 %183, label %184, label %271

184:                                              ; preds = %182
  %185 = sub nsw i32 %51, %179
  %186 = tail call i32 %17(ptr noundef %13, ptr noundef %180, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %20, i32 noundef %179, i32 noundef %7, i32 noundef %185) #9
  %187 = icmp slt i32 %186, 0
  %188 = lshr i32 %186, 31
  %189 = select i1 %187, i32 %186, i32 %181
  br label %271

190:                                              ; preds = %99, %264
  %191 = phi ptr [ %265, %264 ], [ %78, %99 ]
  %192 = phi i32 [ %267, %264 ], [ %100, %99 ]
  %193 = phi i32 [ %268, %264 ], [ %23, %99 ]
  %194 = phi ptr [ %204, %264 ], [ %1, %99 ]
  %195 = phi i32 [ %269, %264 ], [ undef, %99 ]
  %196 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %191, i64 0, i32 3
  %197 = load i32, ptr %196, align 4, !tbaa !38
  %198 = tail call i32 @llvm.smin.i32(i32 %197, i32 %51)
  %199 = icmp sgt i32 %192, %193
  %200 = sub nsw i32 %192, %193
  %201 = mul nsw i32 %200, %3
  %202 = select i1 %199, i32 %201, i32 0
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, ptr %194, i64 %203
  br label %205

205:                                              ; preds = %255, %190
  %206 = phi ptr [ %191, %190 ], [ %253, %255 ]
  %207 = phi i32 [ %198, %190 ], [ %252, %255 ]
  %208 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %206, i64 0, i32 4
  %209 = load i32, ptr %208, align 8, !tbaa !35
  %210 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %206, i64 0, i32 5
  %211 = load i32, ptr %210, align 4, !tbaa !36
  %212 = tail call i32 @llvm.smax.i32(i32 %209, i32 %20)
  %213 = tail call i32 @llvm.smin.i32(i32 %211, i32 %50)
  %214 = icmp sgt i32 %213, %212
  br i1 %214, label %215, label %249

215:                                              ; preds = %205
  %216 = sub nsw i32 %213, %212
  %217 = icmp eq i32 %216, %7
  br i1 %217, label %218, label %239

218:                                              ; preds = %215, %235
  %219 = phi ptr [ %221, %235 ], [ %206, %215 ]
  %220 = phi i32 [ %229, %235 ], [ %207, %215 ]
  %221 = load ptr, ptr %219, align 8, !tbaa !9
  %222 = icmp eq ptr %221, null
  br i1 %222, label %241, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %221, i64 0, i32 2
  %225 = load i32, ptr %224, align 8, !tbaa !37
  %226 = icmp eq i32 %225, %220
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %221, i64 0, i32 3
  %229 = load i32, ptr %228, align 4, !tbaa !38
  %230 = icmp sgt i32 %229, %51
  br i1 %230, label %241, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %221, i64 0, i32 4
  %233 = load i32, ptr %232, align 8, !tbaa !35
  %234 = icmp sgt i32 %233, %20
  br i1 %234, label %241, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %221, i64 0, i32 5
  %237 = load i32, ptr %236, align 4, !tbaa !36
  %238 = icmp slt i32 %237, %50
  br i1 %238, label %241, label %218, !llvm.loop !130

239:                                              ; preds = %215
  %240 = load ptr, ptr %206, align 8, !tbaa !9
  br label %241

241:                                              ; preds = %235, %218, %223, %227, %231, %239
  %242 = phi ptr [ %206, %239 ], [ %219, %231 ], [ %219, %227 ], [ %219, %223 ], [ %219, %218 ], [ %219, %235 ]
  %243 = phi i32 [ %207, %239 ], [ %220, %231 ], [ %220, %227 ], [ %220, %223 ], [ %220, %218 ], [ %220, %235 ]
  %244 = phi ptr [ %240, %239 ], [ %221, %235 ], [ null, %218 ], [ %221, %223 ], [ %221, %227 ], [ %221, %231 ]
  %245 = add i32 %101, %212
  %246 = sub nsw i32 %243, %192
  %247 = tail call i32 %17(ptr noundef %13, ptr noundef %204, i32 noundef %245, i32 noundef %3, i64 noundef 0, i32 noundef %212, i32 noundef %192, i32 noundef %216, i32 noundef %246) #9
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %264, label %251

249:                                              ; preds = %205
  %250 = load ptr, ptr %206, align 8, !tbaa !9
  br label %251

251:                                              ; preds = %249, %241
  %252 = phi i32 [ %243, %241 ], [ %207, %249 ]
  %253 = phi ptr [ %244, %241 ], [ %250, %249 ]
  %254 = icmp eq ptr %253, null
  br i1 %254, label %264, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %253, i64 0, i32 3
  %257 = load i32, ptr %256, align 4, !tbaa !38
  %258 = icmp eq i32 %257, %197
  br i1 %258, label %205, label %259, !llvm.loop !131

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %253, i64 0, i32 2
  %261 = load i32, ptr %260, align 8, !tbaa !37
  %262 = icmp slt i32 %261, %51
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  br label %264

264:                                              ; preds = %251, %241, %259, %263
  %265 = phi ptr [ %253, %263 ], [ %253, %259 ], [ %242, %241 ], [ %253, %251 ]
  %266 = phi i32 [ 0, %263 ], [ 12, %259 ], [ 1, %241 ], [ 12, %251 ]
  %267 = phi i32 [ %261, %263 ], [ %192, %259 ], [ %192, %241 ], [ %192, %251 ]
  %268 = phi i32 [ %192, %263 ], [ %193, %259 ], [ %193, %241 ], [ %193, %251 ]
  %269 = phi i32 [ %195, %263 ], [ %195, %259 ], [ %247, %241 ], [ %195, %251 ]
  switch i32 %266, label %271 [
    i32 0, label %190
    i32 12, label %270
  ], !llvm.loop !132

270:                                              ; preds = %264
  br label %271

271:                                              ; preds = %174, %264, %270, %184, %182, %97, %96
  %272 = phi i32 [ 1, %96 ], [ 1, %97 ], [ 0, %182 ], [ %188, %184 ], [ 0, %270 ], [ %266, %264 ], [ %176, %174 ]
  %273 = phi i32 [ 0, %96 ], [ %98, %97 ], [ %181, %182 ], [ %189, %184 ], [ %269, %270 ], [ %269, %264 ], [ %181, %174 ]
  %274 = icmp eq i32 %272, 0
  %275 = select i1 %274, i32 0, i32 %273
  br label %276

276:                                              ; preds = %271, %45, %43
  %277 = phi i32 [ %44, %43 ], [ 0, %45 ], [ %275, %271 ]
  ret i32 %277
}

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @clip_get_bits(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 21, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !98
  %11 = sub nsw i32 %1, %10
  %12 = tail call i32 %8(ptr noundef %6, i32 noundef %11, ptr noundef %2, ptr noundef %3) #9
  ret i32 %12
}

declare i32 @gx_forward_get_params(ptr noundef, ptr noundef) #5

declare i32 @gx_forward_put_params(ptr noundef, ptr noundef) #5

declare i64 @gx_forward_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #5

declare ptr @gx_forward_get_xfont_procs(ptr noundef) #5

declare ptr @gx_forward_get_xfont_device(ptr noundef) #5

declare i64 @gx_forward_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #5

declare ptr @gx_forward_get_page_device(ptr noundef) #5

declare i32 @gx_forward_get_alpha_bits(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @clip_copy_alpha(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) #1 {
  %12 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !107
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %15, i64 0, i32 21, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !134
  %20 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  %21 = load i32, ptr %20, align 8, !tbaa !97
  %22 = add nsw i32 %21, %5
  %23 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !98
  %25 = add nsw i32 %24, %6
  %26 = icmp eq i32 %17, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !37
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = add nsw i32 %25, %8
  %33 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !35
  %39 = icmp slt i32 %22, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = add nsw i32 %22, %7
  %42 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !36
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 %19(ptr noundef %15, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %22, i32 noundef %25, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) #9
  br label %278

47:                                               ; preds = %40, %36, %31, %27, %11
  %48 = icmp slt i32 %7, 1
  %49 = icmp slt i32 %8, 1
  %50 = or i1 %48, %49
  br i1 %50, label %278, label %51

51:                                               ; preds = %47
  %52 = add nsw i32 %22, %7
  %53 = add nsw i32 %25, %8
  %54 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %13, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !38
  %56 = icmp slt i32 %25, %55
  br i1 %56, label %70, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %13, align 8, !tbaa !9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %79, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %58, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !38
  %63 = icmp slt i32 %25, %62
  br i1 %63, label %79, label %64

64:                                               ; preds = %60, %64
  %65 = phi ptr [ %66, %64 ], [ %58, %60 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  %67 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %66, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !38
  %69 = icmp slt i32 %25, %68
  br i1 %69, label %79, label %64, !llvm.loop !135

70:                                               ; preds = %51, %75
  %71 = phi ptr [ %73, %75 ], [ %13, %51 ]
  %72 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %73, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !38
  %78 = icmp slt i32 %25, %77
  br i1 %78, label %70, label %79, !llvm.loop !136

79:                                               ; preds = %64, %75, %70, %60, %57
  %80 = phi ptr [ null, %57 ], [ %58, %60 ], [ %71, %70 ], [ %71, %75 ], [ %66, %64 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %80, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !37
  %85 = icmp slt i32 %84, %53
  br i1 %85, label %101, label %86

86:                                               ; preds = %82, %79
  %87 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !111
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  br i1 %81, label %91, label %96

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %93 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %94 = select i1 %56, ptr %93, ptr %92
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  br label %96

96:                                               ; preds = %91, %90
  %97 = phi ptr [ %80, %90 ], [ %95, %91 ]
  store ptr %97, ptr %12, align 8, !tbaa !19
  br label %98

98:                                               ; preds = %96, %86
  br i1 %26, label %273, label %99

99:                                               ; preds = %98
  %100 = tail call i32 %19(ptr noundef %15, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %22, i32 noundef %25, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) #9
  br label %273

101:                                              ; preds = %82
  store ptr %80, ptr %12, align 8, !tbaa !19
  %102 = tail call i32 @llvm.smax.i32(i32 %84, i32 %25)
  %103 = sub i32 %2, %22
  br i1 %26, label %192, label %104

104:                                              ; preds = %101
  %105 = sub i32 %2, %22
  br label %106

106:                                              ; preds = %104, %176
  %107 = phi ptr [ %177, %176 ], [ %80, %104 ]
  %108 = phi i32 [ %179, %176 ], [ %102, %104 ]
  %109 = phi i32 [ %180, %176 ], [ %25, %104 ]
  %110 = phi i32 [ %181, %176 ], [ %25, %104 ]
  %111 = phi ptr [ %182, %176 ], [ %1, %104 ]
  %112 = phi i32 [ %183, %176 ], [ undef, %104 ]
  %113 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %107, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !38
  %115 = icmp sgt i32 %108, %110
  br i1 %115, label %116, label %128

116:                                              ; preds = %106
  %117 = sub nsw i32 %110, %109
  %118 = mul nsw i32 %117, %3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %111, i64 %119
  %121 = sub nsw i32 %108, %110
  %122 = tail call i32 %19(ptr noundef %15, ptr noundef %120, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %22, i32 noundef %110, i32 noundef %7, i32 noundef %121, i64 noundef %9, i32 noundef %10) #9
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %176, label %124

124:                                              ; preds = %116
  %125 = mul nsw i32 %121, %3
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %120, i64 %126
  br label %128

128:                                              ; preds = %124, %106
  %129 = phi i32 [ %110, %124 ], [ %109, %106 ]
  %130 = phi ptr [ %127, %124 ], [ %111, %106 ]
  %131 = tail call i32 @llvm.smin.i32(i32 %114, i32 %53)
  %132 = sub nsw i32 %131, %108
  br label %133

133:                                              ; preds = %158, %128
  %134 = phi ptr [ %107, %128 ], [ %156, %158 ]
  %135 = phi i32 [ %22, %128 ], [ %155, %158 ]
  %136 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %134, i64 0, i32 4
  %137 = load i32, ptr %136, align 8, !tbaa !35
  %138 = icmp sgt i32 %137, %135
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = tail call i32 @llvm.smin.i32(i32 %137, i32 %52)
  %141 = add i32 %103, %135
  %142 = sub nsw i32 %140, %135
  %143 = tail call i32 %19(ptr noundef %15, ptr noundef %130, i32 noundef %141, i32 noundef %3, i64 noundef 0, i32 noundef %135, i32 noundef %108, i32 noundef %142, i32 noundef %132, i64 noundef %9, i32 noundef %10) #9
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %176, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %134, i64 0, i32 5
  %147 = load i32, ptr %146, align 4, !tbaa !36
  %148 = icmp slt i32 %147, %52
  %149 = select i1 %148, i32 %147, i32 2147483647
  br label %154

150:                                              ; preds = %133
  %151 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %134, i64 0, i32 5
  %152 = load i32, ptr %151, align 4, !tbaa !36
  %153 = tail call i32 @llvm.smax.i32(i32 %152, i32 %135)
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i32 [ %149, %145 ], [ %153, %150 ]
  %156 = load ptr, ptr %134, align 8, !tbaa !9
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %156, i64 0, i32 3
  %160 = load i32, ptr %159, align 4, !tbaa !38
  %161 = icmp eq i32 %160, %114
  br i1 %161, label %133, label %162, !llvm.loop !137

162:                                              ; preds = %154, %158
  %163 = icmp slt i32 %155, %52
  br i1 %163, label %164, label %170

164:                                              ; preds = %162
  %165 = add i32 %105, %155
  %166 = sub nsw i32 %52, %155
  %167 = sub nsw i32 %131, %108
  %168 = tail call i32 %19(ptr noundef %15, ptr noundef %130, i32 noundef %165, i32 noundef %3, i64 noundef 0, i32 noundef %155, i32 noundef %108, i32 noundef %166, i32 noundef %167, i64 noundef %9, i32 noundef %10) #9
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %164, %162
  br i1 %157, label %176, label %171

171:                                              ; preds = %170
  %172 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %156, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !37
  %174 = icmp slt i32 %173, %53
  %175 = select i1 %174, i32 0, i32 8
  br label %176

176:                                              ; preds = %139, %171, %170, %164, %116
  %177 = phi ptr [ %107, %116 ], [ %156, %164 ], [ %156, %170 ], [ %156, %171 ], [ %134, %139 ]
  %178 = phi i32 [ 1, %116 ], [ 1, %164 ], [ 8, %170 ], [ %175, %171 ], [ 1, %139 ]
  %179 = phi i32 [ %110, %116 ], [ %108, %164 ], [ %108, %170 ], [ %173, %171 ], [ %108, %139 ]
  %180 = phi i32 [ %109, %116 ], [ %129, %164 ], [ %108, %170 ], [ %108, %171 ], [ %129, %139 ]
  %181 = phi i32 [ %110, %116 ], [ %110, %164 ], [ %131, %170 ], [ %131, %171 ], [ %110, %139 ]
  %182 = phi ptr [ %120, %116 ], [ %130, %164 ], [ %130, %170 ], [ %130, %171 ], [ %130, %139 ]
  %183 = phi i32 [ %122, %116 ], [ %168, %164 ], [ %112, %170 ], [ %112, %171 ], [ %143, %139 ]
  switch i32 %178, label %273 [
    i32 0, label %106
    i32 8, label %184
  ], !llvm.loop !138

184:                                              ; preds = %176
  %185 = icmp slt i32 %181, %53
  br i1 %185, label %186, label %273

186:                                              ; preds = %184
  %187 = sub nsw i32 %53, %181
  %188 = tail call i32 %19(ptr noundef %15, ptr noundef %182, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %22, i32 noundef %181, i32 noundef %7, i32 noundef %187, i64 noundef %9, i32 noundef %10) #9
  %189 = icmp slt i32 %188, 0
  %190 = lshr i32 %188, 31
  %191 = select i1 %189, i32 %188, i32 %183
  br label %273

192:                                              ; preds = %101, %266
  %193 = phi ptr [ %267, %266 ], [ %80, %101 ]
  %194 = phi i32 [ %269, %266 ], [ %102, %101 ]
  %195 = phi i32 [ %270, %266 ], [ %25, %101 ]
  %196 = phi ptr [ %206, %266 ], [ %1, %101 ]
  %197 = phi i32 [ %271, %266 ], [ undef, %101 ]
  %198 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %193, i64 0, i32 3
  %199 = load i32, ptr %198, align 4, !tbaa !38
  %200 = tail call i32 @llvm.smin.i32(i32 %199, i32 %53)
  %201 = icmp sgt i32 %194, %195
  %202 = sub nsw i32 %194, %195
  %203 = mul nsw i32 %202, %3
  %204 = select i1 %201, i32 %203, i32 0
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %196, i64 %205
  br label %207

207:                                              ; preds = %257, %192
  %208 = phi ptr [ %193, %192 ], [ %255, %257 ]
  %209 = phi i32 [ %200, %192 ], [ %254, %257 ]
  %210 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %208, i64 0, i32 4
  %211 = load i32, ptr %210, align 8, !tbaa !35
  %212 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %208, i64 0, i32 5
  %213 = load i32, ptr %212, align 4, !tbaa !36
  %214 = tail call i32 @llvm.smax.i32(i32 %211, i32 %22)
  %215 = tail call i32 @llvm.smin.i32(i32 %213, i32 %52)
  %216 = icmp sgt i32 %215, %214
  br i1 %216, label %217, label %251

217:                                              ; preds = %207
  %218 = sub nsw i32 %215, %214
  %219 = icmp eq i32 %218, %7
  br i1 %219, label %220, label %241

220:                                              ; preds = %217, %237
  %221 = phi ptr [ %223, %237 ], [ %208, %217 ]
  %222 = phi i32 [ %231, %237 ], [ %209, %217 ]
  %223 = load ptr, ptr %221, align 8, !tbaa !9
  %224 = icmp eq ptr %223, null
  br i1 %224, label %243, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %223, i64 0, i32 2
  %227 = load i32, ptr %226, align 8, !tbaa !37
  %228 = icmp eq i32 %227, %222
  br i1 %228, label %229, label %243

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %223, i64 0, i32 3
  %231 = load i32, ptr %230, align 4, !tbaa !38
  %232 = icmp sgt i32 %231, %53
  br i1 %232, label %243, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %223, i64 0, i32 4
  %235 = load i32, ptr %234, align 8, !tbaa !35
  %236 = icmp sgt i32 %235, %22
  br i1 %236, label %243, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %223, i64 0, i32 5
  %239 = load i32, ptr %238, align 4, !tbaa !36
  %240 = icmp slt i32 %239, %52
  br i1 %240, label %243, label %220, !llvm.loop !139

241:                                              ; preds = %217
  %242 = load ptr, ptr %208, align 8, !tbaa !9
  br label %243

243:                                              ; preds = %237, %220, %225, %229, %233, %241
  %244 = phi ptr [ %208, %241 ], [ %221, %233 ], [ %221, %229 ], [ %221, %225 ], [ %221, %220 ], [ %221, %237 ]
  %245 = phi i32 [ %209, %241 ], [ %222, %233 ], [ %222, %229 ], [ %222, %225 ], [ %222, %220 ], [ %222, %237 ]
  %246 = phi ptr [ %242, %241 ], [ %223, %237 ], [ null, %220 ], [ %223, %225 ], [ %223, %229 ], [ %223, %233 ]
  %247 = add i32 %103, %214
  %248 = sub nsw i32 %245, %194
  %249 = tail call i32 %19(ptr noundef %15, ptr noundef %206, i32 noundef %247, i32 noundef %3, i64 noundef 0, i32 noundef %214, i32 noundef %194, i32 noundef %218, i32 noundef %248, i64 noundef %9, i32 noundef %10) #9
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %266, label %253

251:                                              ; preds = %207
  %252 = load ptr, ptr %208, align 8, !tbaa !9
  br label %253

253:                                              ; preds = %251, %243
  %254 = phi i32 [ %245, %243 ], [ %209, %251 ]
  %255 = phi ptr [ %246, %243 ], [ %252, %251 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %266, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %255, i64 0, i32 3
  %259 = load i32, ptr %258, align 4, !tbaa !38
  %260 = icmp eq i32 %259, %199
  br i1 %260, label %207, label %261, !llvm.loop !140

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %255, i64 0, i32 2
  %263 = load i32, ptr %262, align 8, !tbaa !37
  %264 = icmp slt i32 %263, %53
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %266

266:                                              ; preds = %253, %243, %261, %265
  %267 = phi ptr [ %255, %265 ], [ %255, %261 ], [ %244, %243 ], [ %255, %253 ]
  %268 = phi i32 [ 0, %265 ], [ 12, %261 ], [ 1, %243 ], [ 12, %253 ]
  %269 = phi i32 [ %263, %265 ], [ %194, %261 ], [ %194, %243 ], [ %194, %253 ]
  %270 = phi i32 [ %194, %265 ], [ %195, %261 ], [ %195, %243 ], [ %195, %253 ]
  %271 = phi i32 [ %197, %265 ], [ %197, %261 ], [ %249, %243 ], [ %197, %253 ]
  switch i32 %268, label %273 [
    i32 0, label %192
    i32 12, label %272
  ], !llvm.loop !141

272:                                              ; preds = %266
  br label %273

273:                                              ; preds = %176, %266, %272, %186, %184, %99, %98
  %274 = phi i32 [ 1, %98 ], [ 1, %99 ], [ 0, %184 ], [ %190, %186 ], [ 0, %272 ], [ %268, %266 ], [ %178, %176 ]
  %275 = phi i32 [ 0, %98 ], [ %100, %99 ], [ %183, %184 ], [ %191, %186 ], [ %271, %272 ], [ %271, %266 ], [ %183, %176 ]
  %276 = icmp eq i32 %274, 0
  %277 = select i1 %276, i32 0, i32 %275
  br label %278

278:                                              ; preds = %273, %47, %45
  %279 = phi i32 [ %46, %45 ], [ 0, %47 ], [ %277, %273 ]
  ret i32 %279
}

declare i32 @gx_forward_get_band(ptr noundef, i32 noundef, ptr noundef) #5

declare i32 @gx_default_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #5

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @clip_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #1 {
  %14 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %17, i64 0, i32 21, i32 26
  %19 = load ptr, ptr %18, align 8, !tbaa !142
  %20 = icmp eq ptr %12, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = tail call i32 @gx_default_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull %12) #9
  br label %284

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !107
  %26 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  %27 = load i32, ptr %26, align 8, !tbaa !97
  %28 = add nsw i32 %27, %5
  %29 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !98
  %31 = add nsw i32 %30, %6
  %32 = icmp eq i32 %25, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %15, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !37
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = add nsw i32 %31, %8
  %39 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %15, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !38
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %15, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !35
  %45 = icmp slt i32 %28, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = add nsw i32 %28, %7
  %48 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %15, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !36
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = tail call i32 %19(ptr noundef %17, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %28, i32 noundef %31, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef null) #9
  br label %284

53:                                               ; preds = %46, %42, %37, %33, %23
  %54 = icmp slt i32 %7, 1
  %55 = icmp slt i32 %8, 1
  %56 = or i1 %54, %55
  br i1 %56, label %284, label %57

57:                                               ; preds = %53
  %58 = add nsw i32 %28, %7
  %59 = add nsw i32 %31, %8
  %60 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %15, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !38
  %62 = icmp slt i32 %31, %61
  br i1 %62, label %76, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %15, align 8, !tbaa !9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %64, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !38
  %69 = icmp slt i32 %31, %68
  br i1 %69, label %85, label %70

70:                                               ; preds = %66, %70
  %71 = phi ptr [ %72, %70 ], [ %64, %66 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %72, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !38
  %75 = icmp slt i32 %31, %74
  br i1 %75, label %85, label %70, !llvm.loop !143

76:                                               ; preds = %57, %81
  %77 = phi ptr [ %79, %81 ], [ %15, %57 ]
  %78 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !12
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %79, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !38
  %84 = icmp slt i32 %31, %83
  br i1 %84, label %76, label %85, !llvm.loop !144

85:                                               ; preds = %70, %81, %76, %66, %63
  %86 = phi ptr [ null, %63 ], [ %64, %66 ], [ %77, %76 ], [ %77, %81 ], [ %72, %70 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %86, i64 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !37
  %91 = icmp slt i32 %90, %59
  br i1 %91, label %107, label %92

92:                                               ; preds = %88, %85
  %93 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !111
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  br i1 %87, label %97, label %102

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %99 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %100 = select i1 %62, ptr %99, ptr %98
  %101 = load ptr, ptr %100, align 8, !tbaa !5
  br label %102

102:                                              ; preds = %97, %96
  %103 = phi ptr [ %86, %96 ], [ %101, %97 ]
  store ptr %103, ptr %14, align 8, !tbaa !19
  br label %104

104:                                              ; preds = %102, %92
  br i1 %32, label %279, label %105

105:                                              ; preds = %104
  %106 = tail call i32 %19(ptr noundef %17, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %28, i32 noundef %31, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef null) #9
  br label %279

107:                                              ; preds = %88
  store ptr %86, ptr %14, align 8, !tbaa !19
  %108 = tail call i32 @llvm.smax.i32(i32 %90, i32 %31)
  %109 = sub i32 %2, %28
  br i1 %32, label %198, label %110

110:                                              ; preds = %107
  %111 = sub i32 %2, %28
  br label %112

112:                                              ; preds = %110, %182
  %113 = phi ptr [ %183, %182 ], [ %86, %110 ]
  %114 = phi i32 [ %185, %182 ], [ %108, %110 ]
  %115 = phi i32 [ %186, %182 ], [ %31, %110 ]
  %116 = phi i32 [ %187, %182 ], [ %31, %110 ]
  %117 = phi ptr [ %188, %182 ], [ %1, %110 ]
  %118 = phi i32 [ %189, %182 ], [ undef, %110 ]
  %119 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %113, i64 0, i32 3
  %120 = load i32, ptr %119, align 4, !tbaa !38
  %121 = icmp sgt i32 %114, %116
  br i1 %121, label %122, label %134

122:                                              ; preds = %112
  %123 = sub nsw i32 %116, %115
  %124 = mul nsw i32 %123, %3
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %117, i64 %125
  %127 = sub nsw i32 %114, %116
  %128 = tail call i32 %19(ptr noundef %17, ptr noundef %126, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %28, i32 noundef %116, i32 noundef %7, i32 noundef %127, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef null) #9
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %182, label %130

130:                                              ; preds = %122
  %131 = mul nsw i32 %127, %3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %126, i64 %132
  br label %134

134:                                              ; preds = %130, %112
  %135 = phi i32 [ %116, %130 ], [ %115, %112 ]
  %136 = phi ptr [ %133, %130 ], [ %117, %112 ]
  %137 = tail call i32 @llvm.smin.i32(i32 %120, i32 %59)
  %138 = sub nsw i32 %137, %114
  br label %139

139:                                              ; preds = %164, %134
  %140 = phi ptr [ %113, %134 ], [ %162, %164 ]
  %141 = phi i32 [ %28, %134 ], [ %161, %164 ]
  %142 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %140, i64 0, i32 4
  %143 = load i32, ptr %142, align 8, !tbaa !35
  %144 = icmp sgt i32 %143, %141
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = tail call i32 @llvm.smin.i32(i32 %143, i32 %58)
  %147 = add i32 %109, %141
  %148 = sub nsw i32 %146, %141
  %149 = tail call i32 %19(ptr noundef %17, ptr noundef %136, i32 noundef %147, i32 noundef %3, i64 noundef 0, i32 noundef %141, i32 noundef %114, i32 noundef %148, i32 noundef %138, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef null) #9
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %182, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %140, i64 0, i32 5
  %153 = load i32, ptr %152, align 4, !tbaa !36
  %154 = icmp slt i32 %153, %58
  %155 = select i1 %154, i32 %153, i32 2147483647
  br label %160

156:                                              ; preds = %139
  %157 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %140, i64 0, i32 5
  %158 = load i32, ptr %157, align 4, !tbaa !36
  %159 = tail call i32 @llvm.smax.i32(i32 %158, i32 %141)
  br label %160

160:                                              ; preds = %156, %151
  %161 = phi i32 [ %155, %151 ], [ %159, %156 ]
  %162 = load ptr, ptr %140, align 8, !tbaa !9
  %163 = icmp eq ptr %162, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %162, i64 0, i32 3
  %166 = load i32, ptr %165, align 4, !tbaa !38
  %167 = icmp eq i32 %166, %120
  br i1 %167, label %139, label %168, !llvm.loop !145

168:                                              ; preds = %160, %164
  %169 = icmp slt i32 %161, %58
  br i1 %169, label %170, label %176

170:                                              ; preds = %168
  %171 = add i32 %111, %161
  %172 = sub nsw i32 %58, %161
  %173 = sub nsw i32 %137, %114
  %174 = tail call i32 %19(ptr noundef %17, ptr noundef %136, i32 noundef %171, i32 noundef %3, i64 noundef 0, i32 noundef %161, i32 noundef %114, i32 noundef %172, i32 noundef %173, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef null) #9
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %170, %168
  br i1 %163, label %182, label %177

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %162, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !37
  %180 = icmp slt i32 %179, %59
  %181 = select i1 %180, i32 0, i32 8
  br label %182

182:                                              ; preds = %145, %177, %176, %170, %122
  %183 = phi ptr [ %113, %122 ], [ %162, %170 ], [ %162, %176 ], [ %162, %177 ], [ %140, %145 ]
  %184 = phi i32 [ 1, %122 ], [ 1, %170 ], [ 8, %176 ], [ %181, %177 ], [ 1, %145 ]
  %185 = phi i32 [ %116, %122 ], [ %114, %170 ], [ %114, %176 ], [ %179, %177 ], [ %114, %145 ]
  %186 = phi i32 [ %115, %122 ], [ %135, %170 ], [ %114, %176 ], [ %114, %177 ], [ %135, %145 ]
  %187 = phi i32 [ %116, %122 ], [ %116, %170 ], [ %137, %176 ], [ %137, %177 ], [ %116, %145 ]
  %188 = phi ptr [ %126, %122 ], [ %136, %170 ], [ %136, %176 ], [ %136, %177 ], [ %136, %145 ]
  %189 = phi i32 [ %128, %122 ], [ %174, %170 ], [ %118, %176 ], [ %118, %177 ], [ %149, %145 ]
  switch i32 %184, label %279 [
    i32 0, label %112
    i32 8, label %190
  ], !llvm.loop !146

190:                                              ; preds = %182
  %191 = icmp slt i32 %187, %59
  br i1 %191, label %192, label %279

192:                                              ; preds = %190
  %193 = sub nsw i32 %59, %187
  %194 = tail call i32 %19(ptr noundef %17, ptr noundef %188, i32 noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %28, i32 noundef %187, i32 noundef %7, i32 noundef %193, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef null) #9
  %195 = icmp slt i32 %194, 0
  %196 = lshr i32 %194, 31
  %197 = select i1 %195, i32 %194, i32 %189
  br label %279

198:                                              ; preds = %107, %272
  %199 = phi ptr [ %273, %272 ], [ %86, %107 ]
  %200 = phi i32 [ %275, %272 ], [ %108, %107 ]
  %201 = phi i32 [ %276, %272 ], [ %31, %107 ]
  %202 = phi ptr [ %212, %272 ], [ %1, %107 ]
  %203 = phi i32 [ %277, %272 ], [ undef, %107 ]
  %204 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %199, i64 0, i32 3
  %205 = load i32, ptr %204, align 4, !tbaa !38
  %206 = tail call i32 @llvm.smin.i32(i32 %205, i32 %59)
  %207 = icmp sgt i32 %200, %201
  %208 = sub nsw i32 %200, %201
  %209 = mul nsw i32 %208, %3
  %210 = select i1 %207, i32 %209, i32 0
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %202, i64 %211
  br label %213

213:                                              ; preds = %263, %198
  %214 = phi ptr [ %199, %198 ], [ %261, %263 ]
  %215 = phi i32 [ %206, %198 ], [ %260, %263 ]
  %216 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %214, i64 0, i32 4
  %217 = load i32, ptr %216, align 8, !tbaa !35
  %218 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %214, i64 0, i32 5
  %219 = load i32, ptr %218, align 4, !tbaa !36
  %220 = tail call i32 @llvm.smax.i32(i32 %217, i32 %28)
  %221 = tail call i32 @llvm.smin.i32(i32 %219, i32 %58)
  %222 = icmp sgt i32 %221, %220
  br i1 %222, label %223, label %257

223:                                              ; preds = %213
  %224 = sub nsw i32 %221, %220
  %225 = icmp eq i32 %224, %7
  br i1 %225, label %226, label %247

226:                                              ; preds = %223, %243
  %227 = phi ptr [ %229, %243 ], [ %214, %223 ]
  %228 = phi i32 [ %237, %243 ], [ %215, %223 ]
  %229 = load ptr, ptr %227, align 8, !tbaa !9
  %230 = icmp eq ptr %229, null
  br i1 %230, label %249, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %229, i64 0, i32 2
  %233 = load i32, ptr %232, align 8, !tbaa !37
  %234 = icmp eq i32 %233, %228
  br i1 %234, label %235, label %249

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %229, i64 0, i32 3
  %237 = load i32, ptr %236, align 4, !tbaa !38
  %238 = icmp sgt i32 %237, %59
  br i1 %238, label %249, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %229, i64 0, i32 4
  %241 = load i32, ptr %240, align 8, !tbaa !35
  %242 = icmp sgt i32 %241, %28
  br i1 %242, label %249, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %229, i64 0, i32 5
  %245 = load i32, ptr %244, align 4, !tbaa !36
  %246 = icmp slt i32 %245, %58
  br i1 %246, label %249, label %226, !llvm.loop !147

247:                                              ; preds = %223
  %248 = load ptr, ptr %214, align 8, !tbaa !9
  br label %249

249:                                              ; preds = %243, %226, %231, %235, %239, %247
  %250 = phi ptr [ %214, %247 ], [ %227, %239 ], [ %227, %235 ], [ %227, %231 ], [ %227, %226 ], [ %227, %243 ]
  %251 = phi i32 [ %215, %247 ], [ %228, %239 ], [ %228, %235 ], [ %228, %231 ], [ %228, %226 ], [ %228, %243 ]
  %252 = phi ptr [ %248, %247 ], [ %229, %243 ], [ null, %226 ], [ %229, %231 ], [ %229, %235 ], [ %229, %239 ]
  %253 = add i32 %109, %220
  %254 = sub nsw i32 %251, %200
  %255 = tail call i32 %19(ptr noundef %17, ptr noundef %212, i32 noundef %253, i32 noundef %3, i64 noundef 0, i32 noundef %220, i32 noundef %200, i32 noundef %224, i32 noundef %254, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef null) #9
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %272, label %259

257:                                              ; preds = %213
  %258 = load ptr, ptr %214, align 8, !tbaa !9
  br label %259

259:                                              ; preds = %257, %249
  %260 = phi i32 [ %251, %249 ], [ %215, %257 ]
  %261 = phi ptr [ %252, %249 ], [ %258, %257 ]
  %262 = icmp eq ptr %261, null
  br i1 %262, label %272, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %261, i64 0, i32 3
  %265 = load i32, ptr %264, align 4, !tbaa !38
  %266 = icmp eq i32 %265, %205
  br i1 %266, label %213, label %267, !llvm.loop !148

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %261, i64 0, i32 2
  %269 = load i32, ptr %268, align 8, !tbaa !37
  %270 = icmp slt i32 %269, %59
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  br label %272

272:                                              ; preds = %259, %249, %267, %271
  %273 = phi ptr [ %261, %271 ], [ %261, %267 ], [ %250, %249 ], [ %261, %259 ]
  %274 = phi i32 [ 0, %271 ], [ 12, %267 ], [ 1, %249 ], [ 12, %259 ]
  %275 = phi i32 [ %269, %271 ], [ %200, %267 ], [ %200, %249 ], [ %200, %259 ]
  %276 = phi i32 [ %200, %271 ], [ %201, %267 ], [ %201, %249 ], [ %201, %259 ]
  %277 = phi i32 [ %203, %271 ], [ %203, %267 ], [ %255, %249 ], [ %203, %259 ]
  switch i32 %274, label %279 [
    i32 0, label %198
    i32 12, label %278
  ], !llvm.loop !149

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %182, %272, %278, %192, %190, %105, %104
  %280 = phi i32 [ 1, %104 ], [ 1, %105 ], [ 0, %190 ], [ %196, %192 ], [ 0, %278 ], [ %274, %272 ], [ %184, %182 ]
  %281 = phi i32 [ 0, %104 ], [ %106, %105 ], [ %189, %190 ], [ %197, %192 ], [ %277, %278 ], [ %277, %272 ], [ %189, %182 ]
  %282 = icmp eq i32 %280, 0
  %283 = select i1 %282, i32 0, i32 %281
  br label %284

284:                                              ; preds = %279, %53, %51, %21
  %285 = phi i32 [ %22, %21 ], [ %52, %51 ], [ 0, %53 ], [ %283, %279 ]
  ret i32 %285
}

declare i32 @gx_default_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #5

declare i32 @gx_default_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #5

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #5

declare i32 @gx_default_draw_thin_line(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #5

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @clip_strip_tile_rectangle(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #1 {
  %11 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !107
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %14, i64 0, i32 21, i32 34
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  %20 = load i32, ptr %19, align 8, !tbaa !97
  %21 = add nsw i32 %20, %2
  %22 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !98
  %24 = add nsw i32 %23, %3
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %12, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !37
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %24, %5
  %32 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %12, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !38
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %12, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !35
  %38 = icmp slt i32 %21, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = add nsw i32 %21, %4
  %41 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %12, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !36
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call i32 %18(ptr noundef %14, ptr noundef %1, i32 noundef %21, i32 noundef %24, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  br label %249

46:                                               ; preds = %39, %35, %30, %26, %10
  %47 = icmp slt i32 %4, 1
  %48 = icmp slt i32 %5, 1
  %49 = or i1 %47, %48
  br i1 %49, label %249, label %50

50:                                               ; preds = %46
  %51 = add nsw i32 %21, %4
  %52 = add nsw i32 %24, %5
  %53 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %12, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !38
  %55 = icmp slt i32 %24, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %12, align 8, !tbaa !9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %78, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %57, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !38
  %62 = icmp slt i32 %24, %61
  br i1 %62, label %78, label %63

63:                                               ; preds = %59, %63
  %64 = phi ptr [ %65, %63 ], [ %57, %59 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %65, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !38
  %68 = icmp slt i32 %24, %67
  br i1 %68, label %78, label %63, !llvm.loop !151

69:                                               ; preds = %50, %74
  %70 = phi ptr [ %72, %74 ], [ %12, %50 ]
  %71 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !12
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %72, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !38
  %77 = icmp slt i32 %24, %76
  br i1 %77, label %69, label %78, !llvm.loop !152

78:                                               ; preds = %63, %74, %69, %59, %56
  %79 = phi ptr [ null, %56 ], [ %57, %59 ], [ %70, %69 ], [ %70, %74 ], [ %65, %63 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %79, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !37
  %84 = icmp slt i32 %83, %52
  br i1 %84, label %100, label %85

85:                                               ; preds = %81, %78
  %86 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !111
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  br i1 %80, label %90, label %95

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %92 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %93 = select i1 %55, ptr %92, ptr %91
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  br label %95

95:                                               ; preds = %90, %89
  %96 = phi ptr [ %79, %89 ], [ %94, %90 ]
  store ptr %96, ptr %11, align 8, !tbaa !19
  br label %97

97:                                               ; preds = %95, %85
  br i1 %25, label %244, label %98

98:                                               ; preds = %97
  %99 = tail call i32 %18(ptr noundef %14, ptr noundef %1, i32 noundef %21, i32 noundef %24, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  br label %244

100:                                              ; preds = %81
  store ptr %79, ptr %11, align 8, !tbaa !19
  %101 = tail call i32 @llvm.smax.i32(i32 %83, i32 %24)
  br i1 %25, label %172, label %102

102:                                              ; preds = %100, %158
  %103 = phi ptr [ %160, %158 ], [ %79, %100 ]
  %104 = phi i32 [ %161, %158 ], [ %101, %100 ]
  %105 = phi i32 [ %162, %158 ], [ %24, %100 ]
  %106 = phi i32 [ %163, %158 ], [ undef, %100 ]
  %107 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %103, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !38
  %109 = icmp sgt i32 %104, %105
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = sub nsw i32 %104, %105
  %112 = tail call i32 %18(ptr noundef %14, ptr noundef %1, i32 noundef %21, i32 noundef %105, i32 noundef %4, i32 noundef %111, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %158, label %114

114:                                              ; preds = %110, %102
  %115 = tail call i32 @llvm.smin.i32(i32 %108, i32 %52)
  %116 = sub nsw i32 %115, %104
  br label %117

117:                                              ; preds = %141, %114
  %118 = phi ptr [ %103, %114 ], [ %139, %141 ]
  %119 = phi i32 [ %21, %114 ], [ %138, %141 ]
  %120 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %118, i64 0, i32 4
  %121 = load i32, ptr %120, align 8, !tbaa !35
  %122 = icmp sgt i32 %121, %119
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = tail call i32 @llvm.smin.i32(i32 %121, i32 %51)
  %125 = sub nsw i32 %124, %119
  %126 = tail call i32 %18(ptr noundef %14, ptr noundef %1, i32 noundef %119, i32 noundef %104, i32 noundef %125, i32 noundef %116, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %158, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %118, i64 0, i32 5
  %130 = load i32, ptr %129, align 4, !tbaa !36
  %131 = icmp slt i32 %130, %51
  %132 = select i1 %131, i32 %130, i32 2147483647
  br label %137

133:                                              ; preds = %117
  %134 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %118, i64 0, i32 5
  %135 = load i32, ptr %134, align 4, !tbaa !36
  %136 = tail call i32 @llvm.smax.i32(i32 %135, i32 %119)
  br label %137

137:                                              ; preds = %133, %128
  %138 = phi i32 [ %132, %128 ], [ %136, %133 ]
  %139 = load ptr, ptr %118, align 8, !tbaa !9
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %139, i64 0, i32 3
  %143 = load i32, ptr %142, align 4, !tbaa !38
  %144 = icmp eq i32 %143, %108
  br i1 %144, label %117, label %145, !llvm.loop !153

145:                                              ; preds = %137, %141
  %146 = icmp slt i32 %138, %51
  br i1 %146, label %147, label %152

147:                                              ; preds = %145
  %148 = sub nsw i32 %51, %138
  %149 = sub nsw i32 %115, %104
  %150 = tail call i32 %18(ptr noundef %14, ptr noundef %1, i32 noundef %138, i32 noundef %104, i32 noundef %148, i32 noundef %149, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %147, %145
  br i1 %140, label %158, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %139, i64 0, i32 2
  %155 = load i32, ptr %154, align 8, !tbaa !37
  %156 = icmp slt i32 %155, %52
  %157 = select i1 %156, i32 0, i32 8
  br label %158

158:                                              ; preds = %123, %153, %152, %147, %110
  %159 = phi i32 [ 1, %110 ], [ 1, %147 ], [ 8, %152 ], [ %157, %153 ], [ 1, %123 ]
  %160 = phi ptr [ %103, %110 ], [ %139, %147 ], [ %139, %152 ], [ %139, %153 ], [ %118, %123 ]
  %161 = phi i32 [ %105, %110 ], [ %104, %147 ], [ %104, %152 ], [ %155, %153 ], [ %104, %123 ]
  %162 = phi i32 [ %105, %110 ], [ %105, %147 ], [ %115, %152 ], [ %115, %153 ], [ %105, %123 ]
  %163 = phi i32 [ %112, %110 ], [ %150, %147 ], [ %106, %152 ], [ %106, %153 ], [ %126, %123 ]
  switch i32 %159, label %244 [
    i32 0, label %102
    i32 8, label %164
  ], !llvm.loop !154

164:                                              ; preds = %158
  %165 = icmp slt i32 %162, %52
  br i1 %165, label %166, label %244

166:                                              ; preds = %164
  %167 = sub nsw i32 %52, %162
  %168 = tail call i32 %18(ptr noundef %14, ptr noundef %1, i32 noundef %21, i32 noundef %162, i32 noundef %4, i32 noundef %167, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  %169 = icmp slt i32 %168, 0
  %170 = lshr i32 %168, 31
  %171 = select i1 %169, i32 %168, i32 %163
  br label %244

172:                                              ; preds = %100, %238
  %173 = phi ptr [ %240, %238 ], [ %79, %100 ]
  %174 = phi i32 [ %241, %238 ], [ %101, %100 ]
  %175 = phi i32 [ %242, %238 ], [ undef, %100 ]
  %176 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %173, i64 0, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !38
  %178 = tail call i32 @llvm.smin.i32(i32 %177, i32 %52)
  br label %179

179:                                              ; preds = %228, %172
  %180 = phi ptr [ %173, %172 ], [ %226, %228 ]
  %181 = phi i32 [ %178, %172 ], [ %225, %228 ]
  %182 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %180, i64 0, i32 4
  %183 = load i32, ptr %182, align 8, !tbaa !35
  %184 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %180, i64 0, i32 5
  %185 = load i32, ptr %184, align 4, !tbaa !36
  %186 = tail call i32 @llvm.smax.i32(i32 %183, i32 %21)
  %187 = tail call i32 @llvm.smin.i32(i32 %185, i32 %51)
  %188 = icmp sgt i32 %187, %186
  br i1 %188, label %189, label %222

189:                                              ; preds = %179
  %190 = sub nsw i32 %187, %186
  %191 = icmp eq i32 %190, %4
  br i1 %191, label %192, label %213

192:                                              ; preds = %189, %209
  %193 = phi ptr [ %195, %209 ], [ %180, %189 ]
  %194 = phi i32 [ %203, %209 ], [ %181, %189 ]
  %195 = load ptr, ptr %193, align 8, !tbaa !9
  %196 = icmp eq ptr %195, null
  br i1 %196, label %215, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %195, i64 0, i32 2
  %199 = load i32, ptr %198, align 8, !tbaa !37
  %200 = icmp eq i32 %199, %194
  br i1 %200, label %201, label %215

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %195, i64 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !38
  %204 = icmp sgt i32 %203, %52
  br i1 %204, label %215, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %195, i64 0, i32 4
  %207 = load i32, ptr %206, align 8, !tbaa !35
  %208 = icmp sgt i32 %207, %21
  br i1 %208, label %215, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %195, i64 0, i32 5
  %211 = load i32, ptr %210, align 4, !tbaa !36
  %212 = icmp slt i32 %211, %51
  br i1 %212, label %215, label %192, !llvm.loop !155

213:                                              ; preds = %189
  %214 = load ptr, ptr %180, align 8, !tbaa !9
  br label %215

215:                                              ; preds = %209, %192, %197, %201, %205, %213
  %216 = phi ptr [ %180, %213 ], [ %193, %205 ], [ %193, %201 ], [ %193, %197 ], [ %193, %192 ], [ %193, %209 ]
  %217 = phi i32 [ %181, %213 ], [ %194, %205 ], [ %194, %201 ], [ %194, %197 ], [ %194, %192 ], [ %194, %209 ]
  %218 = phi ptr [ %214, %213 ], [ %195, %209 ], [ null, %192 ], [ %195, %197 ], [ %195, %201 ], [ %195, %205 ]
  %219 = sub nsw i32 %217, %174
  %220 = tail call i32 %18(ptr noundef %14, ptr noundef %1, i32 noundef %186, i32 noundef %174, i32 noundef %190, i32 noundef %219, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %238, label %224

222:                                              ; preds = %179
  %223 = load ptr, ptr %180, align 8, !tbaa !9
  br label %224

224:                                              ; preds = %222, %215
  %225 = phi i32 [ %217, %215 ], [ %181, %222 ]
  %226 = phi ptr [ %218, %215 ], [ %223, %222 ]
  %227 = icmp eq ptr %226, null
  br i1 %227, label %238, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %226, i64 0, i32 3
  %230 = load i32, ptr %229, align 4, !tbaa !38
  %231 = icmp eq i32 %230, %177
  br i1 %231, label %179, label %232, !llvm.loop !156

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %226, i64 0, i32 2
  %234 = load i32, ptr %233, align 8, !tbaa !37
  %235 = icmp slt i32 %234, %52
  %236 = select i1 %235, i32 0, i32 16
  %237 = select i1 %235, i32 %234, i32 %174
  br label %238

238:                                              ; preds = %224, %215, %232
  %239 = phi i32 [ %236, %232 ], [ 1, %215 ], [ 16, %224 ]
  %240 = phi ptr [ %226, %232 ], [ %216, %215 ], [ %226, %224 ]
  %241 = phi i32 [ %237, %232 ], [ %174, %215 ], [ %174, %224 ]
  %242 = phi i32 [ %175, %232 ], [ %220, %215 ], [ %175, %224 ]
  switch i32 %239, label %244 [
    i32 0, label %172
    i32 16, label %243
  ], !llvm.loop !157

243:                                              ; preds = %238
  br label %244

244:                                              ; preds = %158, %238, %243, %166, %164, %98, %97
  %245 = phi i32 [ 1, %97 ], [ 1, %98 ], [ 0, %164 ], [ %170, %166 ], [ 0, %243 ], [ %239, %238 ], [ %159, %158 ]
  %246 = phi i32 [ 0, %97 ], [ %99, %98 ], [ %163, %164 ], [ %171, %166 ], [ %242, %243 ], [ %242, %238 ], [ %163, %158 ]
  %247 = icmp eq i32 %245, 0
  %248 = select i1 %247, i32 0, i32 %246
  br label %249

249:                                              ; preds = %244, %46, %44
  %250 = phi i32 [ %45, %44 ], [ 0, %46 ], [ %248, %244 ]
  ret i32 %250
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_strip_copy_rop(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #1 {
  %16 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 24
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !107
  %22 = getelementptr inbounds %struct.gx_device_s, ptr %19, i64 0, i32 21, i32 35
  %23 = load ptr, ptr %22, align 8, !tbaa !158
  %24 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  %25 = load i32, ptr %24, align 8, !tbaa !97
  %26 = add nsw i32 %25, %8
  %27 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !98
  %29 = add nsw i32 %28, %9
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %17, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !37
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %29, %11
  %37 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %17, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !38
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %17, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !35
  %43 = icmp slt i32 %26, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = add nsw i32 %26, %10
  %46 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %17, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !36
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call i32 %23(ptr noundef %19, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %26, i32 noundef %29, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  br label %282

51:                                               ; preds = %44, %40, %35, %31, %15
  %52 = icmp slt i32 %10, 1
  %53 = icmp slt i32 %11, 1
  %54 = or i1 %52, %53
  br i1 %54, label %282, label %55

55:                                               ; preds = %51
  %56 = add nsw i32 %26, %10
  %57 = add nsw i32 %29, %11
  %58 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %17, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !38
  %60 = icmp slt i32 %29, %59
  br i1 %60, label %74, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %17, align 8, !tbaa !9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %83, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %62, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !38
  %67 = icmp slt i32 %29, %66
  br i1 %67, label %83, label %68

68:                                               ; preds = %64, %68
  %69 = phi ptr [ %70, %68 ], [ %62, %64 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !9
  %71 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !38
  %73 = icmp slt i32 %29, %72
  br i1 %73, label %83, label %68, !llvm.loop !159

74:                                               ; preds = %55, %79
  %75 = phi ptr [ %77, %79 ], [ %17, %55 ]
  %76 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %77, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !38
  %82 = icmp slt i32 %29, %81
  br i1 %82, label %74, label %83, !llvm.loop !160

83:                                               ; preds = %68, %79, %74, %64, %61
  %84 = phi ptr [ null, %61 ], [ %62, %64 ], [ %75, %74 ], [ %75, %79 ], [ %70, %68 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %84, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !37
  %89 = icmp slt i32 %88, %57
  br i1 %89, label %105, label %90

90:                                               ; preds = %86, %83
  %91 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !111
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  br i1 %85, label %95, label %100

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %97 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %98 = select i1 %60, ptr %97, ptr %96
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  br label %100

100:                                              ; preds = %95, %94
  %101 = phi ptr [ %84, %94 ], [ %99, %95 ]
  store ptr %101, ptr %16, align 8, !tbaa !19
  br label %102

102:                                              ; preds = %100, %90
  br i1 %30, label %277, label %103

103:                                              ; preds = %102
  %104 = tail call i32 %23(ptr noundef %19, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %26, i32 noundef %29, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  br label %277

105:                                              ; preds = %86
  store ptr %84, ptr %16, align 8, !tbaa !19
  %106 = tail call i32 @llvm.smax.i32(i32 %88, i32 %29)
  %107 = sub i32 %2, %26
  br i1 %30, label %196, label %108

108:                                              ; preds = %105
  %109 = sub i32 %2, %26
  br label %110

110:                                              ; preds = %108, %180
  %111 = phi ptr [ %181, %180 ], [ %84, %108 ]
  %112 = phi i32 [ %183, %180 ], [ %106, %108 ]
  %113 = phi i32 [ %184, %180 ], [ %29, %108 ]
  %114 = phi i32 [ %185, %180 ], [ %29, %108 ]
  %115 = phi ptr [ %186, %180 ], [ %1, %108 ]
  %116 = phi i32 [ %187, %180 ], [ undef, %108 ]
  %117 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %111, i64 0, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !38
  %119 = icmp sgt i32 %112, %114
  br i1 %119, label %120, label %132

120:                                              ; preds = %110
  %121 = sub nsw i32 %114, %113
  %122 = mul i32 %121, %3
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %115, i64 %123
  %125 = sub nsw i32 %112, %114
  %126 = tail call i32 %23(ptr noundef %19, ptr noundef %124, i32 noundef %2, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %26, i32 noundef %114, i32 noundef %10, i32 noundef %125, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %180, label %128

128:                                              ; preds = %120
  %129 = mul i32 %125, %3
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %124, i64 %130
  br label %132

132:                                              ; preds = %128, %110
  %133 = phi i32 [ %114, %128 ], [ %113, %110 ]
  %134 = phi ptr [ %131, %128 ], [ %115, %110 ]
  %135 = tail call i32 @llvm.smin.i32(i32 %118, i32 %57)
  %136 = sub nsw i32 %135, %112
  br label %137

137:                                              ; preds = %162, %132
  %138 = phi ptr [ %111, %132 ], [ %160, %162 ]
  %139 = phi i32 [ %26, %132 ], [ %159, %162 ]
  %140 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %138, i64 0, i32 4
  %141 = load i32, ptr %140, align 8, !tbaa !35
  %142 = icmp sgt i32 %141, %139
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = tail call i32 @llvm.smin.i32(i32 %141, i32 %56)
  %145 = add i32 %107, %139
  %146 = sub nsw i32 %144, %139
  %147 = tail call i32 %23(ptr noundef %19, ptr noundef %134, i32 noundef %145, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %139, i32 noundef %112, i32 noundef %146, i32 noundef %136, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %180, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %138, i64 0, i32 5
  %151 = load i32, ptr %150, align 4, !tbaa !36
  %152 = icmp slt i32 %151, %56
  %153 = select i1 %152, i32 %151, i32 2147483647
  br label %158

154:                                              ; preds = %137
  %155 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %138, i64 0, i32 5
  %156 = load i32, ptr %155, align 4, !tbaa !36
  %157 = tail call i32 @llvm.smax.i32(i32 %156, i32 %139)
  br label %158

158:                                              ; preds = %154, %149
  %159 = phi i32 [ %153, %149 ], [ %157, %154 ]
  %160 = load ptr, ptr %138, align 8, !tbaa !9
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %160, i64 0, i32 3
  %164 = load i32, ptr %163, align 4, !tbaa !38
  %165 = icmp eq i32 %164, %118
  br i1 %165, label %137, label %166, !llvm.loop !161

166:                                              ; preds = %158, %162
  %167 = icmp slt i32 %159, %56
  br i1 %167, label %168, label %174

168:                                              ; preds = %166
  %169 = add i32 %109, %159
  %170 = sub nsw i32 %56, %159
  %171 = sub nsw i32 %135, %112
  %172 = tail call i32 %23(ptr noundef %19, ptr noundef %134, i32 noundef %169, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %159, i32 noundef %112, i32 noundef %170, i32 noundef %171, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %168, %166
  br i1 %161, label %180, label %175

175:                                              ; preds = %174
  %176 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %160, i64 0, i32 2
  %177 = load i32, ptr %176, align 8, !tbaa !37
  %178 = icmp slt i32 %177, %57
  %179 = select i1 %178, i32 0, i32 8
  br label %180

180:                                              ; preds = %143, %175, %174, %168, %120
  %181 = phi ptr [ %111, %120 ], [ %160, %168 ], [ %160, %174 ], [ %160, %175 ], [ %138, %143 ]
  %182 = phi i32 [ 1, %120 ], [ 1, %168 ], [ 8, %174 ], [ %179, %175 ], [ 1, %143 ]
  %183 = phi i32 [ %114, %120 ], [ %112, %168 ], [ %112, %174 ], [ %177, %175 ], [ %112, %143 ]
  %184 = phi i32 [ %113, %120 ], [ %133, %168 ], [ %112, %174 ], [ %112, %175 ], [ %133, %143 ]
  %185 = phi i32 [ %114, %120 ], [ %114, %168 ], [ %135, %174 ], [ %135, %175 ], [ %114, %143 ]
  %186 = phi ptr [ %124, %120 ], [ %134, %168 ], [ %134, %174 ], [ %134, %175 ], [ %134, %143 ]
  %187 = phi i32 [ %126, %120 ], [ %172, %168 ], [ %116, %174 ], [ %116, %175 ], [ %147, %143 ]
  switch i32 %182, label %277 [
    i32 0, label %110
    i32 8, label %188
  ], !llvm.loop !162

188:                                              ; preds = %180
  %189 = icmp slt i32 %185, %57
  br i1 %189, label %190, label %277

190:                                              ; preds = %188
  %191 = sub nsw i32 %57, %185
  %192 = tail call i32 %23(ptr noundef %19, ptr noundef %186, i32 noundef %2, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %26, i32 noundef %185, i32 noundef %10, i32 noundef %191, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  %193 = icmp slt i32 %192, 0
  %194 = lshr i32 %192, 31
  %195 = select i1 %193, i32 %192, i32 %187
  br label %277

196:                                              ; preds = %105, %270
  %197 = phi ptr [ %271, %270 ], [ %84, %105 ]
  %198 = phi i32 [ %273, %270 ], [ %106, %105 ]
  %199 = phi i32 [ %274, %270 ], [ %29, %105 ]
  %200 = phi ptr [ %210, %270 ], [ %1, %105 ]
  %201 = phi i32 [ %275, %270 ], [ undef, %105 ]
  %202 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %197, i64 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !38
  %204 = tail call i32 @llvm.smin.i32(i32 %203, i32 %57)
  %205 = icmp sgt i32 %198, %199
  %206 = sub nsw i32 %198, %199
  %207 = mul i32 %206, %3
  %208 = select i1 %205, i32 %207, i32 0
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i8, ptr %200, i64 %209
  br label %211

211:                                              ; preds = %261, %196
  %212 = phi ptr [ %197, %196 ], [ %259, %261 ]
  %213 = phi i32 [ %204, %196 ], [ %258, %261 ]
  %214 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %212, i64 0, i32 4
  %215 = load i32, ptr %214, align 8, !tbaa !35
  %216 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %212, i64 0, i32 5
  %217 = load i32, ptr %216, align 4, !tbaa !36
  %218 = tail call i32 @llvm.smax.i32(i32 %215, i32 %26)
  %219 = tail call i32 @llvm.smin.i32(i32 %217, i32 %56)
  %220 = icmp sgt i32 %219, %218
  br i1 %220, label %221, label %255

221:                                              ; preds = %211
  %222 = sub nsw i32 %219, %218
  %223 = icmp eq i32 %222, %10
  br i1 %223, label %224, label %245

224:                                              ; preds = %221, %241
  %225 = phi ptr [ %227, %241 ], [ %212, %221 ]
  %226 = phi i32 [ %235, %241 ], [ %213, %221 ]
  %227 = load ptr, ptr %225, align 8, !tbaa !9
  %228 = icmp eq ptr %227, null
  br i1 %228, label %247, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %227, i64 0, i32 2
  %231 = load i32, ptr %230, align 8, !tbaa !37
  %232 = icmp eq i32 %231, %226
  br i1 %232, label %233, label %247

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %227, i64 0, i32 3
  %235 = load i32, ptr %234, align 4, !tbaa !38
  %236 = icmp sgt i32 %235, %57
  br i1 %236, label %247, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %227, i64 0, i32 4
  %239 = load i32, ptr %238, align 8, !tbaa !35
  %240 = icmp sgt i32 %239, %26
  br i1 %240, label %247, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %227, i64 0, i32 5
  %243 = load i32, ptr %242, align 4, !tbaa !36
  %244 = icmp slt i32 %243, %56
  br i1 %244, label %247, label %224, !llvm.loop !163

245:                                              ; preds = %221
  %246 = load ptr, ptr %212, align 8, !tbaa !9
  br label %247

247:                                              ; preds = %241, %224, %229, %233, %237, %245
  %248 = phi ptr [ %212, %245 ], [ %225, %237 ], [ %225, %233 ], [ %225, %229 ], [ %225, %224 ], [ %225, %241 ]
  %249 = phi i32 [ %213, %245 ], [ %226, %237 ], [ %226, %233 ], [ %226, %229 ], [ %226, %224 ], [ %226, %241 ]
  %250 = phi ptr [ %246, %245 ], [ %227, %241 ], [ null, %224 ], [ %227, %229 ], [ %227, %233 ], [ %227, %237 ]
  %251 = add i32 %107, %218
  %252 = sub nsw i32 %249, %198
  %253 = tail call i32 %23(ptr noundef %19, ptr noundef %210, i32 noundef %251, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %218, i32 noundef %198, i32 noundef %222, i32 noundef %252, i32 noundef %12, i32 noundef %13, i32 noundef %14) #9
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %270, label %257

255:                                              ; preds = %211
  %256 = load ptr, ptr %212, align 8, !tbaa !9
  br label %257

257:                                              ; preds = %255, %247
  %258 = phi i32 [ %249, %247 ], [ %213, %255 ]
  %259 = phi ptr [ %250, %247 ], [ %256, %255 ]
  %260 = icmp eq ptr %259, null
  br i1 %260, label %270, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %259, i64 0, i32 3
  %263 = load i32, ptr %262, align 4, !tbaa !38
  %264 = icmp eq i32 %263, %203
  br i1 %264, label %211, label %265, !llvm.loop !164

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %259, i64 0, i32 2
  %267 = load i32, ptr %266, align 8, !tbaa !37
  %268 = icmp slt i32 %267, %57
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  br label %270

270:                                              ; preds = %257, %247, %265, %269
  %271 = phi ptr [ %259, %269 ], [ %259, %265 ], [ %248, %247 ], [ %259, %257 ]
  %272 = phi i32 [ 0, %269 ], [ 12, %265 ], [ 1, %247 ], [ 12, %257 ]
  %273 = phi i32 [ %267, %269 ], [ %198, %265 ], [ %198, %247 ], [ %198, %257 ]
  %274 = phi i32 [ %198, %269 ], [ %199, %265 ], [ %199, %247 ], [ %199, %257 ]
  %275 = phi i32 [ %201, %269 ], [ %201, %265 ], [ %253, %247 ], [ %201, %257 ]
  switch i32 %272, label %277 [
    i32 0, label %196
    i32 12, label %276
  ], !llvm.loop !165

276:                                              ; preds = %270
  br label %277

277:                                              ; preds = %180, %270, %276, %190, %188, %103, %102
  %278 = phi i32 [ 1, %102 ], [ 1, %103 ], [ 0, %188 ], [ %194, %190 ], [ 0, %276 ], [ %272, %270 ], [ %182, %180 ]
  %279 = phi i32 [ 0, %102 ], [ %104, %103 ], [ %187, %188 ], [ %195, %190 ], [ %275, %276 ], [ %275, %270 ], [ %187, %180 ]
  %280 = icmp eq i32 %278, 0
  %281 = select i1 %280, i32 0, i32 %279
  br label %282

282:                                              ; preds = %277, %51, %49
  %283 = phi i32 [ %50, %49 ], [ 0, %51 ], [ %281, %277 ]
  ret i32 %283
}

; Function Attrs: nounwind uwtable
define internal void @clip_get_clipping_box(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.gs_fixed_rect_s, align 8
  %4 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %6 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25
  %7 = load i32, ptr %6, align 8, !tbaa !97
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 12
  %10 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 25, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !98
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 12
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 36
  %15 = load ptr, ptr %14, align 8, !tbaa !166
  call void %15(ptr noundef %5, ptr noundef nonnull %3) #9
  %16 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !107
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !111
  switch i32 %21, label %47 [
    i32 0, label %22
    i32 1, label %30
  ]

22:                                               ; preds = %19, %2
  %23 = load i64, ptr %3, align 8, !tbaa.struct !51
  %24 = getelementptr inbounds i8, ptr %3, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa.struct !82
  %26 = getelementptr inbounds i8, ptr %3, i64 16
  %27 = load i64, ptr %26, align 8, !tbaa.struct !83
  %28 = getelementptr inbounds i8, ptr %3, i64 24
  %29 = load i64, ptr %28, align 8, !tbaa.struct !84
  br label %66

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !167
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 12
  %35 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !168
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 12
  %39 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !169
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 12
  %43 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !170
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 12
  br label %66

47:                                               ; preds = %19
  %48 = load i64, ptr %3, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !100
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !37
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 12
  %56 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %3, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !56
  %58 = getelementptr inbounds %struct.gx_device_clip_s, ptr %0, i64 0, i32 23, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !171
  %60 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !12
  %62 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !38
  %64 = sext i32 %63 to i64
  %65 = shl nsw i64 %64, 12
  br label %66

66:                                               ; preds = %30, %47, %22
  %67 = phi i64 [ %25, %22 ], [ %38, %30 ], [ %55, %47 ]
  %68 = phi i64 [ %23, %22 ], [ %34, %30 ], [ %48, %47 ]
  %69 = phi i64 [ %27, %22 ], [ %42, %30 ], [ %57, %47 ]
  %70 = phi i64 [ %29, %22 ], [ %46, %30 ], [ %65, %47 ]
  %71 = load i64, ptr %3, align 8, !tbaa !54
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i64 %68, ptr %3, align 8, !tbaa !54
  br label %74

74:                                               ; preds = %73, %66
  %75 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %3, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !56
  %77 = icmp slt i64 %69, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i64 %69, ptr %75, align 8, !tbaa !56
  br label %79

79:                                               ; preds = %78, %74
  %80 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !53
  %82 = icmp sgt i64 %67, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i64 %67, ptr %80, align 8, !tbaa !53
  br label %84

84:                                               ; preds = %83, %79
  %85 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %3, i64 0, i32 1, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !55
  %87 = icmp slt i64 %70, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i64 %70, ptr %85, align 8, !tbaa !55
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i64, ptr %3, align 8, !tbaa !54
  %91 = icmp eq i64 %90, -9223372036854775808
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = sub nsw i64 %90, %9
  store i64 %93, ptr %3, align 8, !tbaa !54
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i64, ptr %80, align 8, !tbaa !53
  %96 = icmp eq i64 %95, -9223372036854775808
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = sub nsw i64 %95, %13
  store i64 %98, ptr %80, align 8, !tbaa !53
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i64, ptr %75, align 8, !tbaa !56
  %101 = icmp eq i64 %100, 9223372036854775807
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = sub nsw i64 %100, %9
  store i64 %103, ptr %75, align 8, !tbaa !56
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i64, ptr %85, align 8, !tbaa !55
  %106 = icmp eq i64 %105, 9223372036854775807
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = sub nsw i64 %105, %13
  store i64 %108, ptr %85, align 8, !tbaa !55
  br label %109

109:                                              ; preds = %107, %104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret void
}

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !6, i64 0}
!10 = !{!"gx_clip_rect_s", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !7, i64 32}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 8}
!13 = !{!14, !6, i64 32}
!14 = !{!"gs_memory_struct_type_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!15 = !{!16, !6, i64 40}
!16 = !{!"gx_clip_list_s", !10, i64 0, !6, i64 40, !6, i64 48, !11, i64 56, !11, i64 60}
!17 = !{!16, !6, i64 48}
!18 = !{!14, !6, i64 40}
!19 = !{!20, !6, i64 560}
!20 = !{!"gx_device_clip_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !21, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !7, i64 80, !11, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !23, i64 144, !23, i64 152, !11, i64 160, !24, i64 168, !25, i64 192, !6, i64 488, !16, i64 496, !6, i64 560, !26, i64 568}
!21 = !{!"gx_device_color_info_s", !11, i64 0, !11, i64 4, !22, i64 8, !22, i64 10, !22, i64 12, !22, i64 14}
!22 = !{!"short", !7, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"gx_page_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16}
!25 = !{!"gx_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!26 = !{!"gs_int_point_s", !11, i64 0, !11, i64 4}
!27 = !{!28, !7, i64 264}
!28 = !{!"gx_clip_path_s", !29, i64 0, !11, i64 128, !30, i64 136, !30, i64 168, !16, i64 200, !7, i64 264, !7, i64 265, !23, i64 272}
!29 = !{!"gx_path_s", !6, i64 0, !30, i64 8, !6, i64 40, !6, i64 48, !6, i64 56, !11, i64 64, !11, i64 68, !31, i64 72, !32, i64 88, !32, i64 104, !7, i64 120, !7, i64 121, !7, i64 122, !7, i64 123}
!30 = !{!"gs_fixed_rect_s", !31, i64 0, !31, i64 16}
!31 = !{!"gs_fixed_point_s", !23, i64 0, !23, i64 8}
!32 = !{!"gs_point_s", !33, i64 0, !33, i64 8}
!33 = !{!"double", !7, i64 0}
!34 = !{!16, !11, i64 56}
!35 = !{!10, !11, i64 24}
!36 = !{!10, !11, i64 28}
!37 = !{!10, !11, i64 16}
!38 = !{!10, !11, i64 20}
!39 = !{!10, !7, i64 32}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = !{i64 0, i64 8, !5, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !46, i64 32, i64 8, !46, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 4, !47, i64 68, i64 4, !47, i64 72, i64 8, !46, i64 80, i64 8, !46, i64 88, i64 8, !48, i64 96, i64 8, !48, i64 104, i64 8, !48, i64 112, i64 8, !48, i64 120, i64 1, !49, i64 121, i64 1, !49, i64 122, i64 1, !49, i64 123, i64 1, !49}
!46 = !{!23, !23, i64 0}
!47 = !{!11, !11, i64 0}
!48 = !{!33, !33, i64 0}
!49 = !{!7, !7, i64 0}
!50 = !{!28, !11, i64 260}
!51 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !46}
!52 = !{!28, !11, i64 256}
!53 = !{!30, !23, i64 8}
!54 = !{!30, !23, i64 0}
!55 = !{!30, !23, i64 24}
!56 = !{!30, !23, i64 16}
!57 = !{!28, !23, i64 136}
!58 = !{!28, !23, i64 152}
!59 = !{!28, !23, i64 144}
!60 = !{!28, !23, i64 160}
!61 = !{!28, !23, i64 272}
!62 = !{!28, !7, i64 265}
!63 = !{!28, !6, i64 0}
!64 = !{!65, !6, i64 88}
!65 = !{!"gs_memory_s", !66, i64 0}
!66 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!67 = distinct !{!67, !41}
!68 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 4, !47, i64 20, i64 4, !47, i64 24, i64 4, !47, i64 28, i64 4, !47, i64 32, i64 1, !49, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 4, !47, i64 60, i64 4, !47}
!69 = !{!28, !23, i64 8}
!70 = !{!28, !23, i64 168}
!71 = !{!28, !23, i64 16}
!72 = !{!28, !23, i64 176}
!73 = !{!28, !23, i64 24}
!74 = !{!28, !23, i64 184}
!75 = !{!28, !23, i64 32}
!76 = !{!28, !23, i64 192}
!77 = !{!16, !11, i64 24}
!78 = !{!16, !11, i64 16}
!79 = !{!16, !11, i64 28}
!80 = !{!16, !11, i64 20}
!81 = !{!16, !11, i64 60}
!82 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46}
!83 = !{i64 0, i64 8, !46, i64 8, i64 8, !46}
!84 = !{i64 0, i64 8, !46}
!85 = !{!32, !33, i64 0}
!86 = !{!32, !33, i64 8}
!87 = !{!29, !6, i64 48}
!88 = !{!89, !23, i64 24}
!89 = !{!"segment_s", !6, i64 0, !6, i64 8, !22, i64 16, !22, i64 18, !31, i64 24}
!90 = !{!89, !23, i64 32}
!91 = !{!89, !6, i64 8}
!92 = !{!28, !6, i64 240}
!93 = !{!28, !6, i64 248}
!94 = distinct !{!94, !41}
!95 = !{i64 0, i64 4, !47, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 4, !47, i64 44, i64 4, !47, i64 48, i64 4, !47, i64 52, i64 4, !47, i64 56, i64 2, !96, i64 58, i64 2, !96, i64 60, i64 2, !96, i64 62, i64 2, !96, i64 64, i64 4, !47, i64 68, i64 4, !47, i64 72, i64 8, !49, i64 80, i64 16, !49, i64 96, i64 4, !47, i64 100, i64 8, !49, i64 108, i64 8, !49, i64 116, i64 8, !49, i64 124, i64 16, !49, i64 144, i64 8, !46, i64 152, i64 8, !46, i64 160, i64 4, !47, i64 168, i64 8, !5, i64 176, i64 8, !5, i64 184, i64 8, !5, i64 192, i64 8, !5, i64 200, i64 8, !5, i64 208, i64 8, !5, i64 216, i64 8, !5, i64 224, i64 8, !5, i64 232, i64 8, !5, i64 240, i64 8, !5, i64 248, i64 8, !5, i64 256, i64 8, !5, i64 264, i64 8, !5, i64 272, i64 8, !5, i64 280, i64 8, !5, i64 288, i64 8, !5, i64 296, i64 8, !5, i64 304, i64 8, !5, i64 312, i64 8, !5, i64 320, i64 8, !5, i64 328, i64 8, !5, i64 336, i64 8, !5, i64 344, i64 8, !5, i64 352, i64 8, !5, i64 360, i64 8, !5, i64 368, i64 8, !5, i64 376, i64 8, !5, i64 384, i64 8, !5, i64 392, i64 8, !5, i64 400, i64 8, !5, i64 408, i64 8, !5, i64 416, i64 8, !5, i64 424, i64 8, !5, i64 432, i64 8, !5, i64 440, i64 8, !5, i64 448, i64 8, !5, i64 456, i64 8, !5, i64 464, i64 8, !5, i64 472, i64 8, !5, i64 480, i64 8, !5, i64 488, i64 8, !5, i64 496, i64 8, !5, i64 504, i64 8, !5, i64 512, i64 4, !47, i64 516, i64 4, !47, i64 520, i64 4, !47, i64 524, i64 4, !47, i64 528, i64 1, !49, i64 536, i64 8, !5, i64 544, i64 8, !5, i64 552, i64 4, !47, i64 556, i64 4, !47, i64 560, i64 8, !5, i64 568, i64 4, !47, i64 572, i64 4, !47}
!96 = !{!22, !22, i64 0}
!97 = !{!20, !11, i64 568}
!98 = !{!20, !11, i64 572}
!99 = !{!20, !6, i64 488}
!100 = !{!20, !6, i64 536}
!101 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 2, !96, i64 10, i64 2, !96, i64 12, i64 2, !96, i64 14, i64 2, !96}
!102 = !{!103, !11, i64 64}
!103 = !{!"gx_device_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !21, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !7, i64 80, !11, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !23, i64 144, !23, i64 152, !11, i64 160, !24, i64 168, !25, i64 192}
!104 = !{!20, !11, i64 64}
!105 = !{!103, !11, i64 68}
!106 = !{!20, !11, i64 68}
!107 = !{!20, !11, i64 556}
!108 = !{!103, !6, i64 248}
!109 = distinct !{!109, !41}
!110 = distinct !{!110, !41}
!111 = !{!20, !11, i64 552}
!112 = distinct !{!112, !41}
!113 = distinct !{!113, !41}
!114 = distinct !{!114, !41}
!115 = distinct !{!115, !41}
!116 = distinct !{!116, !41}
!117 = !{!103, !6, i64 264}
!118 = distinct !{!118, !41}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !41}
!121 = distinct !{!121, !41}
!122 = distinct !{!122, !41}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41}
!125 = !{!103, !6, i64 272}
!126 = distinct !{!126, !41}
!127 = distinct !{!127, !41}
!128 = distinct !{!128, !41}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = !{!103, !6, i64 288}
!134 = !{!103, !6, i64 360}
!135 = distinct !{!135, !41}
!136 = distinct !{!136, !41}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !41}
!139 = distinct !{!139, !41}
!140 = distinct !{!140, !41}
!141 = distinct !{!141, !41}
!142 = !{!103, !6, i64 400}
!143 = distinct !{!143, !41}
!144 = distinct !{!144, !41}
!145 = distinct !{!145, !41}
!146 = distinct !{!146, !41}
!147 = distinct !{!147, !41}
!148 = distinct !{!148, !41}
!149 = distinct !{!149, !41}
!150 = !{!103, !6, i64 464}
!151 = distinct !{!151, !41}
!152 = distinct !{!152, !41}
!153 = distinct !{!153, !41}
!154 = distinct !{!154, !41}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !41}
!157 = distinct !{!157, !41}
!158 = !{!103, !6, i64 472}
!159 = distinct !{!159, !41}
!160 = distinct !{!160, !41}
!161 = distinct !{!161, !41}
!162 = distinct !{!162, !41}
!163 = distinct !{!163, !41}
!164 = distinct !{!164, !41}
!165 = distinct !{!165, !41}
!166 = !{!103, !6, i64 480}
!167 = !{!20, !11, i64 520}
!168 = !{!20, !11, i64 512}
!169 = !{!20, !11, i64 524}
!170 = !{!20, !11, i64 516}
!171 = !{!20, !6, i64 544}
