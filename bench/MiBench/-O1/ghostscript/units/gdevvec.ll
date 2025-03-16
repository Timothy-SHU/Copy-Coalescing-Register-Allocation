; ModuleID = 'gdevvec.c'
source_filename = "gdevvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_vector_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, [81 x i8], ptr, ptr, ptr, i32, %struct.gs_imager_state_s, [11 x float], %struct.gx_device_color_s, %struct.gx_device_color_s, i64, i64, %struct.gs_point_s, i32, ptr, i64, i64 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_point_s = type { double, double }
%struct.gdev_vector_image_enum_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_path_enum_s = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.gx_device_vector_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_bbox_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_fixed_rect_s, i64 }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_param_string_s = type { ptr, i32, i32 }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@.str = private unnamed_addr constant [17 x i8] c"gx_device_vector\00", align 1
@st_device_vector = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 1248, ptr @.str, ptr null, ptr null, ptr @device_vector_enum_ptrs, ptr @device_vector_reloc_ptrs, ptr @gx_device_finalize }, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"gdev_vector_image_enum_t\00", align 1
@st_vector_image_enum = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 48, ptr @.str.1, ptr null, ptr null, ptr @vector_image_enum_enum_ptrs, ptr @vector_image_enum_reloc_ptrs, ptr null }, align 8
@gdev_vector_reset.state_initial = internal unnamed_addr constant %struct.gs_imager_state_s { ptr null, %struct.gx_line_params_s { float 0.000000e+00, i32 0, i32 0, float 1.000000e+01, float 0x3FC9FDD380000000, float 0.000000e+00, float 0.000000e+00, %struct.gx_dash_params_s { ptr null, i32 0, float 0.000000e+00, i32 0, float 0.000000e+00, i32 1, i32 0, float 0.000000e+00 } }, %struct.gs_matrix_fixed_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, i64 0, i64 0, i32 0 }, i32 252, i16 -1, i32 0, float 1.000000e+00, %struct.gs_fixed_point_s { i64 2048, i64 2048 }, i32 0, i32 0, ptr null, [2 x %struct.gs_int_point_s] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %union.gx_transfer_s zeroinitializer, %union.gx_transfer_s zeroinitializer, ptr null, ptr null, ptr null }, align 8
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"vector_open(strmbuf)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"vector_open(strm)\00", align 1
@st_device_bbox = external constant %struct.gs_memory_struct_type_s, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"vector_open(bbox_device)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector_close(bbox_device)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"vector_close(strm)\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"vector_close(strmbuf)\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"gdev_vector_end_image(fill)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"pclxl_end_image\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@st_device = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@gx_dc_procs_null = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal ptr @device_vector_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  switch i32 %2, label %5 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %15
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device, i64 0, i32 4), align 8, !tbaa !5
  %7 = add i32 %2, -3
  %8 = tail call ptr %6(ptr noundef %0, i32 noundef %1, i32 noundef %7, ptr noundef %3) #12
  br label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  store ptr %11, ptr %3, align 8, !tbaa !31
  br label %18

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 27
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  store ptr %14, ptr %3, align 8, !tbaa !31
  br label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  store ptr %17, ptr %3, align 8, !tbaa !31
  br label %18

18:                                               ; preds = %5, %9, %12, %15
  %19 = phi ptr [ %8, %5 ], [ @ptr_struct_procs, %15 ], [ @ptr_struct_procs, %12 ], [ @ptr_struct_procs, %9 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define internal void @device_vector_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device, i64 0, i32 5), align 8, !tbaa !34
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12
  %5 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %6, ptr noundef %2) #12
  store ptr %7, ptr %5, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 27
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %9, ptr noundef %2) #12
  store ptr %10, ptr %8, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %12, ptr noundef %2) #12
  store ptr %13, ptr %11, align 8, !tbaa !33
  ret void
}

declare void @gx_device_finalize(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @vector_image_enum_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  switch i32 %2, label %12 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  store ptr %11, ptr %3, align 8, !tbaa !31
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @vector_image_enum_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #12
  store ptr %6, ptr %4, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #12
  store ptr %9, ptr %7, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gdev_vector_setflat(ptr nocapture noundef readnone %0, double noundef %1) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_dopath(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_fixed_rect_s, align 8
  %5 = alloca %struct.gs_path_enum_s, align 8
  %6 = alloca [6 x i64], align 16
  %7 = and i32 %2, 2
  %8 = icmp eq i32 %7, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  %9 = call i32 @gx_path_is_rectangle(ptr noundef %1, ptr noundef nonnull %4) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %13, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = load i64, ptr %4, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !45
  %23 = call i32 %15(ptr noundef %0, i64 noundef %16, i64 noundef %18, i64 noundef %20, i64 noundef %22, i32 noundef %2) #12
  br label %152

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 35
  %26 = load double, ptr %25, align 8, !tbaa.struct !46
  %27 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 35, i32 1
  %28 = load double, ptr %27, align 8, !tbaa.struct !48
  %29 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %30, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = call i32 %32(ptr noundef %0, i32 noundef %2) #12
  %34 = call i32 @gx_path_enum_init(ptr noundef nonnull %5, ptr noundef %1) #12
  %35 = getelementptr inbounds [6 x i64], ptr %6, i64 0, i64 1
  %36 = getelementptr inbounds [6 x i64], ptr %6, i64 0, i64 2
  %37 = getelementptr inbounds [6 x i64], ptr %6, i64 0, i64 3
  %38 = getelementptr inbounds [6 x i64], ptr %6, i64 0, i64 4
  %39 = getelementptr inbounds [6 x i64], ptr %6, i64 0, i64 5
  %40 = getelementptr inbounds [6 x i64], ptr %6, i64 0, i64 1
  %41 = getelementptr inbounds [6 x i64], ptr %6, i64 0, i64 1
  br label %42

42:                                               ; preds = %144, %24
  %43 = phi i32 [ undef, %24 ], [ %145, %144 ]
  %44 = phi double [ 0.000000e+00, %24 ], [ %146, %144 ]
  %45 = phi double [ 0.000000e+00, %24 ], [ %147, %144 ]
  %46 = phi double [ undef, %24 ], [ %148, %144 ]
  %47 = phi double [ undef, %24 ], [ %149, %144 ]
  %48 = phi i32 [ 1, %24 ], [ %150, %144 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #12
  %49 = call i32 @gx_path_enum_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  br label %50

50:                                               ; preds = %124, %42
  %51 = phi i32 [ %49, %42 ], [ %121, %124 ]
  switch i32 %51, label %144 [
    i32 0, label %52
    i32 1, label %57
    i32 2, label %72
    i32 3, label %85
    i32 4, label %114
  ]

52:                                               ; preds = %50
  %53 = load ptr, ptr %29, align 8, !tbaa !38
  %54 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %53, i64 0, i32 17
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  %56 = call i32 %55(ptr noundef %0, i32 noundef %2) #12
  br label %144

57:                                               ; preds = %50
  %58 = load ptr, ptr %29, align 8, !tbaa !38
  %59 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %58, i64 0, i32 13
  %60 = load ptr, ptr %59, align 8, !tbaa !51
  %61 = load i64, ptr %6, align 16, !tbaa !52
  %62 = sitofp i64 %61 to double
  %63 = fmul double %62, 0x3F30000000000000
  %64 = fdiv double %63, %26
  %65 = load i64, ptr %41, align 8, !tbaa !52
  %66 = sitofp i64 %65 to double
  %67 = fmul double %66, 0x3F30000000000000
  %68 = fdiv double %67, %28
  %69 = call i32 %60(ptr noundef %0, double noundef %46, double noundef %47, double noundef %64, double noundef %68, i32 noundef %48) #12
  %70 = icmp eq i32 %48, 0
  br i1 %70, label %133, label %71

71:                                               ; preds = %57
  br label %133

72:                                               ; preds = %50
  %73 = load ptr, ptr %29, align 8, !tbaa !38
  %74 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %73, i64 0, i32 14
  %75 = load ptr, ptr %74, align 8, !tbaa !53
  %76 = load i64, ptr %6, align 16, !tbaa !52
  %77 = sitofp i64 %76 to double
  %78 = fmul double %77, 0x3F30000000000000
  %79 = fdiv double %78, %26
  %80 = load i64, ptr %40, align 8, !tbaa !52
  %81 = sitofp i64 %80 to double
  %82 = fmul double %81, 0x3F30000000000000
  %83 = fdiv double %82, %28
  %84 = call i32 %75(ptr noundef %0, double noundef %46, double noundef %47, double noundef %79, double noundef %83) #12
  br label %133

85:                                               ; preds = %50
  %86 = load ptr, ptr %29, align 8, !tbaa !38
  %87 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %86, i64 0, i32 15
  %88 = load ptr, ptr %87, align 8, !tbaa !54
  %89 = load i64, ptr %6, align 16, !tbaa !52
  %90 = sitofp i64 %89 to double
  %91 = fmul double %90, 0x3F30000000000000
  %92 = fdiv double %91, %26
  %93 = load i64, ptr %35, align 8, !tbaa !52
  %94 = sitofp i64 %93 to double
  %95 = fmul double %94, 0x3F30000000000000
  %96 = fdiv double %95, %28
  %97 = load i64, ptr %36, align 16, !tbaa !52
  %98 = sitofp i64 %97 to double
  %99 = fmul double %98, 0x3F30000000000000
  %100 = fdiv double %99, %26
  %101 = load i64, ptr %37, align 8, !tbaa !52
  %102 = sitofp i64 %101 to double
  %103 = fmul double %102, 0x3F30000000000000
  %104 = fdiv double %103, %28
  %105 = load i64, ptr %38, align 16, !tbaa !52
  %106 = sitofp i64 %105 to double
  %107 = fmul double %106, 0x3F30000000000000
  %108 = fdiv double %107, %26
  %109 = load i64, ptr %39, align 8, !tbaa !52
  %110 = sitofp i64 %109 to double
  %111 = fmul double %110, 0x3F30000000000000
  %112 = fdiv double %111, %28
  %113 = call i32 %88(ptr noundef %0, double noundef %46, double noundef %47, double noundef %92, double noundef %96, double noundef %100, double noundef %104, double noundef %108, double noundef %112) #12
  br label %133

114:                                              ; preds = %50
  br i1 %8, label %120, label %115

115:                                              ; preds = %114
  %116 = load ptr, ptr %29, align 8, !tbaa !38
  %117 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %116, i64 0, i32 16
  %118 = load ptr, ptr %117, align 8, !tbaa !55
  %119 = call i32 %118(ptr noundef %0, double noundef %46, double noundef %47, double noundef %44, double noundef %45) #12
  br label %133

120:                                              ; preds = %114
  %121 = call i32 @gx_path_enum_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %122 = icmp eq i32 %121, 0
  %123 = load ptr, ptr %29, align 8, !tbaa !38
  br i1 %122, label %129, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %123, i64 0, i32 16
  %126 = load ptr, ptr %125, align 8, !tbaa !55
  %127 = call i32 %126(ptr noundef %0, double noundef %46, double noundef %47, double noundef %44, double noundef %45) #12
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %144, label %50

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %123, i64 0, i32 17
  %131 = load ptr, ptr %130, align 8, !tbaa !50
  %132 = call i32 %131(ptr noundef %0, i32 noundef %2) #12
  br label %144

133:                                              ; preds = %57, %71, %115, %85, %72
  %134 = phi double [ %44, %115 ], [ %44, %85 ], [ %44, %72 ], [ %64, %71 ], [ %44, %57 ]
  %135 = phi double [ %45, %115 ], [ %45, %85 ], [ %45, %72 ], [ %68, %71 ], [ %45, %57 ]
  %136 = phi i32 [ %48, %115 ], [ %48, %85 ], [ %48, %72 ], [ 0, %71 ], [ 0, %57 ]
  %137 = phi i32 [ %119, %115 ], [ %113, %85 ], [ %84, %72 ], [ %69, %71 ], [ %69, %57 ]
  %138 = phi double [ %44, %115 ], [ %108, %85 ], [ %79, %72 ], [ %64, %71 ], [ %64, %57 ]
  %139 = phi double [ %45, %115 ], [ %112, %85 ], [ %83, %72 ], [ %68, %71 ], [ %68, %57 ]
  %140 = icmp sgt i32 %137, -1
  %141 = select i1 %140, i32 %43, i32 %137
  %142 = select i1 %140, double %138, double %46
  %143 = select i1 %140, double %139, double %47
  br label %144

144:                                              ; preds = %50, %124, %133, %129, %52
  %145 = phi i32 [ %132, %129 ], [ %56, %52 ], [ %141, %133 ], [ %127, %124 ], [ -1, %50 ]
  %146 = phi double [ %44, %129 ], [ %44, %52 ], [ %134, %133 ], [ %44, %124 ], [ %44, %50 ]
  %147 = phi double [ %45, %129 ], [ %45, %52 ], [ %135, %133 ], [ %45, %124 ], [ %45, %50 ]
  %148 = phi double [ %46, %129 ], [ %46, %52 ], [ %142, %133 ], [ %46, %124 ], [ %46, %50 ]
  %149 = phi double [ %47, %129 ], [ %47, %52 ], [ %143, %133 ], [ %47, %124 ], [ %47, %50 ]
  %150 = phi i32 [ %48, %129 ], [ %48, %52 ], [ %136, %133 ], [ %48, %124 ], [ %48, %50 ]
  %151 = phi i1 [ false, %129 ], [ false, %52 ], [ %140, %133 ], [ false, %124 ], [ false, %50 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #12
  br i1 %151, label %42, label %152, !llvm.loop !56

152:                                              ; preds = %144, %11
  %153 = phi i32 [ %23, %11 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  ret i32 %153
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @gx_path_is_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @gx_path_enum_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_enum_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_dorect(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x %struct.gs_fixed_point_s], align 16
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef %5) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %6
  %15 = lshr i32 %5, 1
  %16 = and i32 %15, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  store i64 %1, ptr %7, align 16, !tbaa !58
  %17 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  store i64 %2, ptr %17, align 8, !tbaa !59
  %18 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %7, i64 0, i64 2
  store i64 %3, ptr %18, align 16, !tbaa !58
  %19 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %7, i64 0, i64 2, i32 1
  store i64 %4, ptr %19, align 8, !tbaa !59
  %20 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %7, i64 0, i64 1
  store i64 %3, ptr %20, align 16, !tbaa !58
  %21 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %7, i64 0, i64 1, i32 1
  store i64 %2, ptr %21, align 8, !tbaa !59
  %22 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %7, i64 0, i64 3
  store i64 %1, ptr %22, align 16, !tbaa !58
  %23 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %7, i64 0, i64 3, i32 1
  store i64 %4, ptr %23, align 8, !tbaa !59
  %24 = call i32 @gdev_vector_write_polygon(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 4, i32 noundef %16, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %14
  %27 = load ptr, ptr %8, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = tail call i32 %29(ptr noundef %0, i32 noundef %5) #12
  br label %31

31:                                               ; preds = %14, %6, %26
  %32 = phi i32 [ %30, %26 ], [ %12, %6 ], [ %24, %14 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_write_rectangle(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [4 x %struct.gs_fixed_point_s], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #12
  store i64 %1, ptr %8, align 16, !tbaa !58
  %9 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  store i64 %2, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %8, i64 0, i64 2
  store i64 %3, ptr %10, align 16, !tbaa !58
  %11 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %8, i64 0, i64 2, i32 1
  store i64 %4, ptr %11, align 8, !tbaa !59
  %12 = icmp eq i32 %6, 0
  %13 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %8, i64 0, i64 1
  %14 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %8, i64 0, i64 1, i32 1
  %15 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %8, i64 0, i64 3
  %16 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %8, i64 0, i64 3, i32 1
  %17 = select i1 %12, i64 %3, i64 %1
  %18 = select i1 %12, i64 %2, i64 %4
  %19 = select i1 %12, i64 %1, i64 %3
  %20 = select i1 %12, i64 %4, i64 %2
  store i64 %17, ptr %13, align 16, !tbaa !58
  store i64 %18, ptr %14, align 8, !tbaa !59
  store i64 %19, ptr %15, align 16, !tbaa !58
  store i64 %20, ptr %16, align 8, !tbaa !59
  %21 = call i32 @gdev_vector_write_polygon(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 4, i32 noundef %5, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @gdev_vector_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %2, ptr noundef nonnull align 8 dereferenceable(320) @gdev_vector_reset.state_initial, i64 320, i1 false), !tbaa.struct !60
  %3 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  store ptr @gx_dc_procs_none, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 32
  store ptr @gx_dc_procs_none, ptr %4, align 8, !tbaa !66
  %5 = tail call i64 @gs_next_ids(i32 noundef 1) #12
  %6 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 33
  store i64 %5, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  store i64 %5, ptr %7, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 35
  %9 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 35, i32 1
  store double 1.000000e+00, ptr %9, align 8, !tbaa !69
  store double 1.000000e+00, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 36
  store i32 0, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 21, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = tail call i64 %12(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #12
  %14 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 38
  store i64 %13, ptr %14, align 8, !tbaa !73
  %15 = load ptr, ptr %11, align 8, !tbaa !72
  %16 = tail call i64 %15(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #12
  %17 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 39
  store i64 %16, ptr %17, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gdev_vector_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %2, ptr noundef nonnull align 8 dereferenceable(320) @gdev_vector_reset.state_initial, i64 320, i1 false), !tbaa.struct !60
  %3 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  store ptr @gx_dc_procs_none, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 32
  store ptr @gx_dc_procs_none, ptr %4, align 8, !tbaa !66
  %5 = tail call i64 @gs_next_ids(i32 noundef 1) #12
  %6 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 33
  store i64 %5, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  store i64 %5, ptr %7, align 8, !tbaa !68
  ret void
}

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gdev_vector_open_file_bbox(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false) #12
  %5 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @gp_fmode_binary_suffix) #12
  %6 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 24
  %7 = call ptr @gp_fopen(ptr noundef nonnull %6, ptr noundef nonnull %4) #12
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 25
  store ptr %7, ptr %8, align 8, !tbaa !75
  %9 = icmp eq ptr %7, null
  br i1 %9, label %84, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = call ptr %13(ptr noundef nonnull %12, i32 noundef %1, ptr noundef nonnull @.str.3) #12
  %15 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !32
  %16 = icmp eq ptr %14, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8, !tbaa !76
  %19 = call ptr @s_alloc(ptr noundef %18, ptr noundef nonnull @.str.4) #12
  %20 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  store ptr %19, ptr %20, align 8, !tbaa !11
  %21 = icmp eq ptr %19, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %11, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = call ptr %27(ptr noundef %25, ptr noundef nonnull @st_device_bbox, ptr noundef nonnull @.str.5) #12
  %29 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  store ptr %28, ptr %29, align 8, !tbaa !33
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %24, %17, %10
  %32 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %33 = load ptr, ptr %32, align 8, !tbaa !33
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %11, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %36, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !81
  call void %38(ptr noundef %36, ptr noundef nonnull %33, ptr noundef nonnull @.str.5) #12
  br label %39

39:                                               ; preds = %35, %31
  store ptr null, ptr %32, align 8, !tbaa !33
  %40 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %11, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !81
  call void %46(ptr noundef %44, ptr noundef nonnull %41, ptr noundef nonnull @.str.4) #12
  br label %47

47:                                               ; preds = %43, %39
  store ptr null, ptr %40, align 8, !tbaa !11
  %48 = load ptr, ptr %15, align 8, !tbaa !32
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %11, align 8, !tbaa !76
  %52 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %51, i64 0, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !81
  call void %53(ptr noundef %51, ptr noundef nonnull %48, ptr noundef nonnull @.str.3) #12
  br label %54

54:                                               ; preds = %50, %47
  store ptr null, ptr %15, align 8, !tbaa !32
  %55 = load ptr, ptr %8, align 8, !tbaa !75
  %56 = call i32 @fclose(ptr noundef %55)
  store ptr null, ptr %8, align 8, !tbaa !75
  br label %84

57:                                               ; preds = %24, %22
  %58 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 28
  store i32 %1, ptr %58, align 8, !tbaa !82
  %59 = load ptr, ptr %20, align 8, !tbaa !11
  %60 = load ptr, ptr %8, align 8, !tbaa !75
  %61 = load ptr, ptr %15, align 8, !tbaa !32
  call void @swrite_file(ptr noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef %1) #12
  %62 = load ptr, ptr %20, align 8, !tbaa !11
  %63 = getelementptr inbounds %struct.stream_s, ptr %62, i64 0, i32 12, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !83
  %65 = getelementptr inbounds %struct.stream_s, ptr %62, i64 0, i32 12, i32 4
  store ptr %64, ptr %65, align 8, !tbaa !87
  %66 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %67 = load ptr, ptr %66, align 8, !tbaa !33
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69

69:                                               ; preds = %57
  call void @gx_device_bbox_init(ptr noundef nonnull %67, ptr noundef null) #12
  %70 = load ptr, ptr %66, align 8, !tbaa !33
  %71 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 13
  %72 = load float, ptr %71, align 4, !tbaa !61
  %73 = fpext float %72 to double
  %74 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 13, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !61
  %76 = fpext float %75 to double
  call void @gx_device_set_resolution(ptr noundef %70, double noundef %73, double noundef %76) #12
  %77 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 21, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !88
  %79 = load ptr, ptr %66, align 8, !tbaa !33
  %80 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %79, i64 0, i32 21, i32 1
  store ptr %78, ptr %80, align 8, !tbaa !89
  %81 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %79, i64 0, i32 21
  %82 = load ptr, ptr %81, align 8, !tbaa !91
  %83 = call i32 %82(ptr noundef %79) #12
  br label %84

84:                                               ; preds = %57, %69, %3, %54
  %85 = phi i32 [ -25, %54 ], [ -9, %3 ], [ 0, %69 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %85
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

declare ptr @gp_fopen(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @s_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

declare void @swrite_file(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gx_device_bbox_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gx_device_set_resolution(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @gdev_vector_stream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 36
  %3 = load i32, ptr %2, align 8, !tbaa !71
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = tail call i32 %8(ptr noundef %0) #12
  store i32 1, ptr %2, align 8, !tbaa !71
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_update_log_op(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = xor i32 %4, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef %1, i32 noundef %5) #12
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 %1, ptr %3, align 8, !tbaa !93
  br label %15

15:                                               ; preds = %2, %14, %7
  %16 = phi i32 [ %12, %7 ], [ 0, %14 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_update_fill_color(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %1, align 8, !tbaa !95
  %5 = icmp eq ptr %4, @gx_dc_procs_pure
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !95
  %8 = icmp eq ptr %7, @gx_dc_procs_pure
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.gx_device_color_s, ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !64
  %14 = icmp eq i64 %11, %13
  br label %20

15:                                               ; preds = %2
  %16 = icmp eq ptr %4, @gx_dc_procs_null
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = load ptr, ptr %3, align 8, !tbaa !95
  %19 = icmp eq ptr %18, @gx_dc_procs_null
  br label %20

20:                                               ; preds = %9, %17
  %21 = phi i1 [ %19, %17 ], [ %14, %9 ]
  br i1 %21, label %30, label %22

22:                                               ; preds = %15, %6, %20
  %23 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %24, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = tail call i32 %26(ptr noundef %0, ptr noundef nonnull %1) #12
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !97
  br label %30

30:                                               ; preds = %20, %29, %22
  %31 = phi i32 [ %27, %22 ], [ 0, %29 ], [ 0, %20 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_prepare_fill(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gx_fill_params_s, ptr %2, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 6
  %8 = load float, ptr %7, align 4, !tbaa !100
  %9 = fcmp une float %6, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = fpext float %6 to double
  %16 = tail call i32 %14(ptr noundef %0, double noundef %15) #12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %66

18:                                               ; preds = %10
  %19 = load float, ptr %5, align 8, !tbaa !98
  store float %19, ptr %7, align 4, !tbaa !100
  br label %20

20:                                               ; preds = %18, %4
  %21 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !102
  %23 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  %24 = load ptr, ptr %3, align 8, !tbaa !95
  %25 = icmp eq ptr %24, @gx_dc_procs_pure
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load ptr, ptr %23, align 8, !tbaa !95
  %28 = icmp eq ptr %27, @gx_dc_procs_pure
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gx_device_color_s, ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !64
  %32 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !64
  %34 = icmp eq i64 %31, %33
  br label %40

35:                                               ; preds = %20
  %36 = icmp eq ptr %24, @gx_dc_procs_null
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load ptr, ptr %23, align 8, !tbaa !95
  %39 = icmp eq ptr %38, @gx_dc_procs_null
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi i1 [ %39, %37 ], [ %34, %29 ]
  br i1 %41, label %50, label %42

42:                                               ; preds = %40, %35, %26
  %43 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %44, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !96
  %47 = tail call i32 %46(ptr noundef %0, ptr noundef nonnull %3) #12
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %23, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false), !tbaa.struct !97
  br label %50

50:                                               ; preds = %49, %42, %40
  %51 = phi i32 [ %47, %42 ], [ 0, %49 ], [ 0, %40 ]
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !93
  %56 = xor i32 %55, %22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %60 = load ptr, ptr %59, align 8, !tbaa !38
  %61 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !94
  %63 = tail call i32 %62(ptr noundef %0, i32 noundef %22, i32 noundef %56) #12
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 %22, ptr %54, align 8, !tbaa !93
  br label %66

66:                                               ; preds = %10, %65, %58, %53, %50
  %67 = phi i32 [ %51, %50 ], [ %63, %58 ], [ 0, %65 ], [ 0, %53 ], [ %16, %10 ]
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_prepare_stroke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca [11 x float], align 16
  %7 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7
  %9 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !103
  %11 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !104
  %13 = fpext float %12 to double
  %14 = fmul double %13, %4
  %15 = fptrunc double %14 to float
  %16 = load float, ptr %7, align 8, !tbaa !105
  %17 = fpext float %16 to double
  %18 = fmul double %17, %4
  %19 = fptrunc double %18 to float
  %20 = icmp sgt i32 %10, 11
  br i1 %20, label %225, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 1
  %23 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 1, i32 7, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !106
  %25 = fcmp une float %24, %15
  br i1 %25, label %53, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 1, i32 7, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !107
  %29 = icmp eq i32 %10, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = icmp eq i32 %10, 0
  br i1 %31, label %81, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 30
  %34 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !108
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %81, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %8, align 8, !tbaa !109
  %39 = zext i32 %35 to i64
  br label %43

40:                                               ; preds = %43
  %41 = add nuw nsw i64 %44, 1
  %42 = icmp eq i64 %41, %39
  br i1 %42, label %81, label %43, !llvm.loop !110

43:                                               ; preds = %40, %37
  %44 = phi i64 [ 0, %37 ], [ %41, %40 ]
  %45 = getelementptr inbounds float, ptr %33, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !61
  %47 = getelementptr inbounds float, ptr %38, i64 %44
  %48 = load float, ptr %47, align 4, !tbaa !61
  %49 = fpext float %48 to double
  %50 = fmul double %49, %4
  %51 = fptrunc double %50 to float
  %52 = fcmp une float %46, %51
  br i1 %52, label %53, label %40

53:                                               ; preds = %43, %26, %21
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #12
  %54 = icmp sgt i32 %10, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %53
  %56 = load ptr, ptr %8, align 8, !tbaa !111
  %57 = zext nneg i32 %10 to i64
  br label %58

58:                                               ; preds = %55, %58
  %59 = phi i64 [ 0, %55 ], [ %66, %58 ]
  %60 = getelementptr inbounds float, ptr %56, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !61
  %62 = fpext float %61 to double
  %63 = fmul double %62, %4
  %64 = fptrunc double %63 to float
  %65 = getelementptr inbounds [11 x float], ptr %6, i64 0, i64 %59
  store float %64, ptr %65, align 4, !tbaa !61
  %66 = add nuw nsw i64 %59, 1
  %67 = icmp eq i64 %66, %57
  br i1 %67, label %68, label %58, !llvm.loop !112

68:                                               ; preds = %58, %53
  %69 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %70 = load ptr, ptr %69, align 8, !tbaa !38
  %71 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %70, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !113
  %73 = fpext float %15 to double
  %74 = call i32 %72(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %10, double noundef %73) #12
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %224

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 30
  %78 = sext i32 %10 to i64
  %79 = shl nsw i64 %78, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %77, ptr nonnull align 16 %6, i64 %79, i1 false)
  %80 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 1, i32 7, i32 1
  store i32 %10, ptr %80, align 8, !tbaa !107
  store float %15, ptr %23, align 4, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #12
  br label %81

81:                                               ; preds = %40, %32, %76, %30
  %82 = phi i32 [ %74, %76 ], [ undef, %30 ], [ undef, %32 ], [ undef, %40 ]
  %83 = load float, ptr %2, align 4, !tbaa !114
  %84 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 6
  %85 = load float, ptr %84, align 4, !tbaa !100
  %86 = fcmp une float %83, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %89 = load ptr, ptr %88, align 8, !tbaa !38
  %90 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %89, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !101
  %92 = fpext float %83 to double
  %93 = call i32 %91(ptr noundef %0, double noundef %92) #12
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load float, ptr %2, align 4, !tbaa !114
  store float %96, ptr %84, align 4, !tbaa !100
  br label %97

97:                                               ; preds = %87, %95
  %98 = phi i32 [ %82, %95 ], [ %93, %87 ]
  br i1 %94, label %99, label %225

99:                                               ; preds = %97, %81
  %100 = phi i32 [ %98, %97 ], [ %82, %81 ]
  %101 = load float, ptr %22, align 8, !tbaa !116
  %102 = fcmp une float %101, %19
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %105 = load ptr, ptr %104, align 8, !tbaa !38
  %106 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !117
  %108 = load float, ptr %7, align 8, !tbaa !105
  %109 = fmul float %108, 2.000000e+00
  %110 = fpext float %109 to double
  %111 = call i32 %107(ptr noundef %0, double noundef %110) #12
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  store float %19, ptr %22, align 8, !tbaa !116
  br label %114

114:                                              ; preds = %103, %113
  %115 = phi i32 [ %100, %113 ], [ %111, %103 ]
  br i1 %112, label %116, label %225

116:                                              ; preds = %114, %99
  %117 = phi i32 [ %115, %114 ], [ %100, %99 ]
  %118 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 3
  %119 = load float, ptr %118, align 4, !tbaa !118
  %120 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 1, i32 3
  %121 = load float, ptr %120, align 4, !tbaa !119
  %122 = fcmp une float %119, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %125 = load ptr, ptr %124, align 8, !tbaa !38
  %126 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %125, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !120
  %128 = fpext float %119 to double
  %129 = call i32 %127(ptr noundef %0, double noundef %128) #12
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load float, ptr %118, align 4, !tbaa !118
  %133 = fpext float %132 to double
  %134 = call i32 @gx_set_miter_limit(ptr noundef nonnull %22, double noundef %133) #12
  br label %135

135:                                              ; preds = %123, %131
  %136 = phi i32 [ %117, %131 ], [ %129, %123 ]
  br i1 %130, label %137, label %225

137:                                              ; preds = %135, %116
  %138 = phi i32 [ %136, %135 ], [ %117, %116 ]
  %139 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !121
  %141 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 1, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !122
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %155, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %146 = load ptr, ptr %145, align 8, !tbaa !38
  %147 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !123
  %149 = call i32 %148(ptr noundef %0, i32 noundef %140) #12
  %150 = icmp sgt i32 %149, -1
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, ptr %139, align 4, !tbaa !121
  store i32 %152, ptr %141, align 4, !tbaa !122
  br label %153

153:                                              ; preds = %144, %151
  %154 = phi i32 [ %138, %151 ], [ %149, %144 ]
  br i1 %150, label %155, label %225

155:                                              ; preds = %153, %137
  %156 = phi i32 [ %154, %153 ], [ %138, %137 ]
  %157 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !124
  %159 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 1, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !125
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %173, label %162

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %164 = load ptr, ptr %163, align 8, !tbaa !38
  %165 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %164, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !126
  %167 = call i32 %166(ptr noundef %0, i32 noundef %158) #12
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = load i32, ptr %157, align 8, !tbaa !124
  store i32 %170, ptr %159, align 8, !tbaa !125
  br label %171

171:                                              ; preds = %162, %169
  %172 = phi i32 [ %156, %169 ], [ %167, %162 ]
  br i1 %168, label %173, label %225

173:                                              ; preds = %171, %155
  %174 = phi i32 [ %172, %171 ], [ %156, %155 ]
  %175 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %176 = load i32, ptr %175, align 8, !tbaa !102
  %177 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 3
  %178 = load i32, ptr %177, align 8, !tbaa !93
  %179 = xor i32 %178, %176
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %183 = load ptr, ptr %182, align 8, !tbaa !38
  %184 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %183, i64 0, i32 7
  %185 = load ptr, ptr %184, align 8, !tbaa !94
  %186 = call i32 %185(ptr noundef %0, i32 noundef %176, i32 noundef %179) #12
  %187 = icmp sgt i32 %186, -1
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  store i32 %176, ptr %177, align 8, !tbaa !93
  br label %189

189:                                              ; preds = %173, %181, %188
  %190 = phi i32 [ %186, %181 ], [ 0, %188 ], [ 0, %173 ]
  %191 = icmp sgt i32 %190, -1
  %192 = select i1 %191, i32 %174, i32 %190
  br i1 %191, label %193, label %225

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 32
  %195 = load ptr, ptr %3, align 8, !tbaa !95
  %196 = icmp eq ptr %195, @gx_dc_procs_pure
  br i1 %196, label %197, label %206

197:                                              ; preds = %193
  %198 = load ptr, ptr %194, align 8, !tbaa !95
  %199 = icmp eq ptr %198, @gx_dc_procs_pure
  br i1 %199, label %200, label %213

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.gx_device_color_s, ptr %3, i64 0, i32 1
  %202 = load i64, ptr %201, align 8, !tbaa !64
  %203 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 32, i32 1
  %204 = load i64, ptr %203, align 8, !tbaa !64
  %205 = icmp eq i64 %202, %204
  br label %211

206:                                              ; preds = %193
  %207 = icmp eq ptr %195, @gx_dc_procs_null
  br i1 %207, label %208, label %213

208:                                              ; preds = %206
  %209 = load ptr, ptr %194, align 8, !tbaa !95
  %210 = icmp eq ptr %209, @gx_dc_procs_null
  br label %211

211:                                              ; preds = %200, %208
  %212 = phi i1 [ %210, %208 ], [ %205, %200 ]
  br i1 %212, label %223, label %213

213:                                              ; preds = %206, %197, %211
  %214 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %215 = load ptr, ptr %214, align 8, !tbaa !38
  %216 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %215, i64 0, i32 9
  %217 = load ptr, ptr %216, align 8, !tbaa !127
  %218 = call i32 %217(ptr noundef %0, ptr noundef nonnull %3) #12
  %219 = icmp sgt i32 %218, -1
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %194, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false), !tbaa.struct !97
  br label %221

221:                                              ; preds = %213, %220
  %222 = phi i32 [ %192, %220 ], [ %218, %213 ]
  br i1 %219, label %223, label %225

223:                                              ; preds = %221, %211
  br label %225

224:                                              ; preds = %68
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #12
  br label %225

225:                                              ; preds = %224, %5, %97, %114, %135, %153, %171, %221, %189, %223
  %226 = phi i32 [ 0, %223 ], [ %222, %221 ], [ %192, %189 ], [ %172, %171 ], [ %154, %153 ], [ %136, %135 ], [ %115, %114 ], [ %98, %97 ], [ -13, %5 ], [ %74, %224 ]
  ret i32 %226
}

declare i32 @gx_set_miter_limit(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_write_polygon(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp ne i32 %4, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef %4) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %87, label %14

14:                                               ; preds = %7, %5
  %15 = phi i32 [ %12, %7 ], [ 0, %5 ]
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %77, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr %1, align 8, !tbaa !58
  %19 = sitofp i64 %18 to double
  %20 = fmul double %19, 0x3F30000000000000
  %21 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 35
  %22 = load double, ptr %21, align 8, !tbaa !70
  %23 = fdiv double %20, %22
  %24 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !59
  %26 = sitofp i64 %25 to double
  %27 = fmul double %26, 0x3F30000000000000
  %28 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 35, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !69
  %30 = fdiv double %27, %29
  %31 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %32, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = tail call i32 %34(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %23, double noundef %30, i32 noundef 1) #12
  %36 = icmp sgt i32 %35, -1
  %37 = icmp ne i32 %2, 1
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %17
  %40 = zext i32 %2 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 1, %39 ], [ %61, %41 ]
  %43 = phi double [ %23, %39 ], [ %53, %41 ]
  %44 = phi double [ %30, %39 ], [ %59, %41 ]
  %45 = load ptr, ptr %31, align 8, !tbaa !38
  %46 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %45, i64 0, i32 14
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 %42
  %49 = load i64, ptr %48, align 8, !tbaa !58
  %50 = sitofp i64 %49 to double
  %51 = fmul double %50, 0x3F30000000000000
  %52 = load double, ptr %21, align 8, !tbaa !70
  %53 = fdiv double %51, %52
  %54 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 %42, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !59
  %56 = sitofp i64 %55 to double
  %57 = fmul double %56, 0x3F30000000000000
  %58 = load double, ptr %28, align 8, !tbaa !69
  %59 = fdiv double %57, %58
  %60 = tail call i32 %47(ptr noundef %0, double noundef %43, double noundef %44, double noundef %53, double noundef %59) #12
  %61 = add nuw nsw i64 %42, 1
  %62 = icmp ult i64 %61, %40
  %63 = icmp sgt i32 %60, -1
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %41, label %65, !llvm.loop !128

65:                                               ; preds = %41, %17
  %66 = phi double [ %30, %17 ], [ %59, %41 ]
  %67 = phi double [ %23, %17 ], [ %53, %41 ]
  %68 = phi i32 [ %35, %17 ], [ %60, %41 ]
  %69 = icmp sgt i32 %68, -1
  %70 = icmp ne i32 %3, 0
  %71 = and i1 %70, %69
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load ptr, ptr %31, align 8, !tbaa !38
  %74 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %73, i64 0, i32 16
  %75 = load ptr, ptr %74, align 8, !tbaa !55
  %76 = tail call i32 %75(ptr noundef %0, double noundef %67, double noundef %66, double noundef %23, double noundef %30) #12
  br label %77

77:                                               ; preds = %65, %72, %14
  %78 = phi i32 [ %15, %14 ], [ %76, %72 ], [ %68, %65 ]
  %79 = icmp sgt i32 %78, -1
  %80 = and i1 %6, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %83 = load ptr, ptr %82, align 8, !tbaa !38
  %84 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %83, i64 0, i32 17
  %85 = load ptr, ptr %84, align 8, !tbaa !50
  %86 = tail call i32 %85(ptr noundef %0, i32 noundef %4) #12
  br label %87

87:                                               ; preds = %81, %77, %7
  %88 = phi i32 [ %12, %7 ], [ %86, %81 ], [ %78, %77 ]
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_write_clip_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x %struct.gs_fixed_point_s], align 16
  %4 = alloca %struct.gx_clip_rect_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %4, i64 0, i32 4
  store i32 0, ptr %8, align 8, !tbaa !131
  %9 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %4, i64 0, i32 5
  store i32 %10, ptr %11, align 4, !tbaa !133
  %12 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !134
  %14 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %4, i64 0, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !135
  store ptr null, ptr %4, align 8, !tbaa !136
  br label %31

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !137
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = tail call i32 %23(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4) #12
  br label %125

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !142
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 4
  %30 = select i1 %28, ptr %29, ptr %27
  br label %31

31:                                               ; preds = %25, %6
  %32 = phi ptr [ %4, %6 ], [ %30, %25 ]
  %33 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %34, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = tail call i32 %36(ptr noundef %0, i32 noundef 4) #12
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %117

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  %41 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 2
  %42 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 2, i32 1
  %43 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 1
  %44 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 1, i32 1
  %45 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 3
  %46 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 3, i32 1
  %47 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 35
  %48 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 35, i32 1
  br label %49

49:                                               ; preds = %39, %111
  %50 = phi i32 [ %37, %39 ], [ %112, %111 ]
  %51 = phi ptr [ %32, %39 ], [ %113, %111 ]
  %52 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %51, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !133
  %54 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %51, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !131
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %111

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %51, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !135
  %60 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %51, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !129
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %63, label %111

63:                                               ; preds = %57
  %64 = sext i32 %55 to i64
  %65 = shl nsw i64 %64, 12
  %66 = sext i32 %61 to i64
  %67 = shl nsw i64 %66, 12
  %68 = sext i32 %53 to i64
  %69 = shl nsw i64 %68, 12
  %70 = sext i32 %59 to i64
  %71 = shl nsw i64 %70, 12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  store i64 %65, ptr %3, align 16, !tbaa !58
  store i64 %67, ptr %40, align 8, !tbaa !59
  store i64 %69, ptr %41, align 16, !tbaa !58
  store i64 %71, ptr %42, align 8, !tbaa !59
  store i64 %69, ptr %43, align 16, !tbaa !58
  store i64 %67, ptr %44, align 8, !tbaa !59
  store i64 %65, ptr %45, align 16, !tbaa !58
  store i64 %71, ptr %46, align 8, !tbaa !59
  %72 = sitofp i64 %65 to double
  %73 = fmul double %72, 0x3F30000000000000
  %74 = load double, ptr %47, align 8, !tbaa !70
  %75 = fdiv double %73, %74
  %76 = sitofp i64 %67 to double
  %77 = fmul double %76, 0x3F30000000000000
  %78 = load double, ptr %48, align 8, !tbaa !69
  %79 = fdiv double %77, %78
  %80 = load ptr, ptr %33, align 8, !tbaa !38
  %81 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %80, i64 0, i32 13
  %82 = load ptr, ptr %81, align 8, !tbaa !51
  %83 = tail call i32 %82(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %75, double noundef %79, i32 noundef 1) #12
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %109

85:                                               ; preds = %63, %85
  %86 = phi i64 [ %105, %85 ], [ 1, %63 ]
  %87 = phi double [ %97, %85 ], [ %75, %63 ]
  %88 = phi double [ %103, %85 ], [ %79, %63 ]
  %89 = load ptr, ptr %33, align 8, !tbaa !38
  %90 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %89, i64 0, i32 14
  %91 = load ptr, ptr %90, align 8, !tbaa !53
  %92 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 %86
  %93 = load i64, ptr %92, align 16, !tbaa !58
  %94 = sitofp i64 %93 to double
  %95 = fmul double %94, 0x3F30000000000000
  %96 = load double, ptr %47, align 8, !tbaa !70
  %97 = fdiv double %95, %96
  %98 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 %86, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !59
  %100 = sitofp i64 %99 to double
  %101 = fmul double %100, 0x3F30000000000000
  %102 = load double, ptr %48, align 8, !tbaa !69
  %103 = fdiv double %101, %102
  %104 = tail call i32 %91(ptr noundef %0, double noundef %87, double noundef %88, double noundef %97, double noundef %103) #12
  %105 = add nuw nsw i64 %86, 1
  %106 = icmp ult i64 %86, 3
  %107 = icmp sgt i32 %104, -1
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %85, label %109, !llvm.loop !128

109:                                              ; preds = %85, %63
  %110 = phi i32 [ %83, %63 ], [ %104, %85 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %111

111:                                              ; preds = %49, %57, %109
  %112 = phi i32 [ %110, %109 ], [ %50, %57 ], [ %50, %49 ]
  %113 = load ptr, ptr %51, align 8, !tbaa !136
  %114 = icmp sgt i32 %112, -1
  %115 = icmp ne ptr %113, null
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %49, label %117, !llvm.loop !143

117:                                              ; preds = %111, %31
  %118 = phi i32 [ %37, %31 ], [ %112, %111 ]
  %119 = phi i1 [ %38, %31 ], [ %114, %111 ]
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load ptr, ptr %33, align 8, !tbaa !38
  %122 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %121, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !50
  %124 = tail call i32 %123(ptr noundef %0, i32 noundef 4) #12
  br label %125

125:                                              ; preds = %117, %120, %19
  %126 = phi i32 [ %24, %19 ], [ %124, %120 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_update_clip_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 7
  %6 = load i64, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  %8 = load i64, ptr %7, align 8, !tbaa !68
  %9 = icmp eq i64 %6, %8
  br i1 %9, label %26, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @gdev_vector_write_clip_path(ptr noundef %0, ptr noundef nonnull %1)
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %22, label %26

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  %15 = load i64, ptr %14, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 33
  %17 = load i64, ptr %16, align 8, !tbaa !67
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @gdev_vector_write_clip_path(ptr noundef %0, ptr noundef null)
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %10
  %23 = phi ptr [ %5, %10 ], [ %16, %19 ]
  %24 = phi ptr [ %7, %10 ], [ %14, %19 ]
  %25 = load i64, ptr %23, align 8, !tbaa !52
  store i64 %25, ptr %24, align 8, !tbaa !68
  br label %26

26:                                               ; preds = %22, %4, %13, %19, %10
  %27 = phi i32 [ %11, %10 ], [ %20, %19 ], [ 0, %13 ], [ 0, %4 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @gdev_vector_close_file(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  tail call void %5(ptr noundef %3, ptr noundef %7, ptr noundef nonnull @.str.6) #12
  store ptr null, ptr %6, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = tail call i32 @sclose(ptr noundef %9) #12
  %11 = load ptr, ptr %2, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = load ptr, ptr %8, align 8, !tbaa !11
  tail call void %13(ptr noundef %11, ptr noundef %14, ptr noundef nonnull @.str.7) #12
  store ptr null, ptr %8, align 8, !tbaa !11
  %15 = load ptr, ptr %2, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  tail call void %17(ptr noundef %15, ptr noundef %19, ptr noundef nonnull @.str.8) #12
  store ptr null, ptr %18, align 8, !tbaa !32
  %20 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 25
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = tail call i32 @fclose(ptr noundef %21)
  store ptr null, ptr %20, align 8, !tbaa !75
  ret void
}

declare i32 @sclose(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !145
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = tail call i32 @gs_color_space_num_components(ptr noundef %15) #12
  %17 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !149
  br label %19

19:                                               ; preds = %9, %13
  %20 = phi i32 [ %16, %13 ], [ 1, %9 ]
  %21 = phi i32 [ %18, %13 ], [ 1, %9 ]
  switch i32 %3, label %157 [
    i32 0, label %22
    i32 1, label %25
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 5
  store i32 1, ptr %23, align 8, !tbaa !150
  %24 = mul nsw i32 %21, %20
  br label %27

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 5
  store i32 %20, ptr %26, align 8, !tbaa !150
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %21, %25 ], [ %24, %22 ]
  %29 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 6
  store i32 %28, ptr %29, align 4, !tbaa !151
  %30 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 1
  %31 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 2
  %32 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %33 = load i32, ptr %32, align 8, !tbaa !102
  %34 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !93
  %36 = xor i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !94
  %43 = tail call i32 %42(ptr noundef %0, i32 noundef %33, i32 noundef %36) #12
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 %33, ptr %34, align 8, !tbaa !93
  br label %46

46:                                               ; preds = %27, %38, %45
  %47 = phi i32 [ %43, %38 ], [ 0, %45 ], [ 0, %27 ]
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %157, label %49

49:                                               ; preds = %46
  %50 = icmp eq ptr %6, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.gx_clip_path_s, ptr %6, i64 0, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !144
  %54 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  %55 = load i64, ptr %54, align 8, !tbaa !68
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %73, label %57

57:                                               ; preds = %51
  %58 = tail call i32 @gdev_vector_write_clip_path(ptr noundef %0, ptr noundef nonnull %6)
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %69, label %73

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  %62 = load i64, ptr %61, align 8, !tbaa !68
  %63 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 33
  %64 = load i64, ptr %63, align 8, !tbaa !67
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = tail call i32 @gdev_vector_write_clip_path(ptr noundef %0, ptr noundef null)
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %66, %57
  %70 = phi ptr [ %52, %57 ], [ %63, %66 ]
  %71 = phi ptr [ %54, %57 ], [ %61, %66 ]
  %72 = load i64, ptr %70, align 8, !tbaa !52
  store i64 %72, ptr %71, align 8, !tbaa !68
  br label %73

73:                                               ; preds = %69, %51, %57, %60, %66
  %74 = phi i32 [ %58, %57 ], [ %67, %66 ], [ 0, %60 ], [ 0, %51 ], [ 0, %69 ]
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %157, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %10, align 4, !tbaa !145
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 9
  %81 = load i32, ptr %80, align 4, !tbaa !152
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %120, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %32, align 8, !tbaa !102
  %85 = shl i32 %84, 4
  %86 = xor i32 %85, %84
  %87 = and i32 %86, 240
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %120, label %89

89:                                               ; preds = %83, %76
  %90 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  %91 = load ptr, ptr %5, align 8, !tbaa !95
  %92 = icmp eq ptr %91, @gx_dc_procs_pure
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load ptr, ptr %90, align 8, !tbaa !95
  %95 = icmp eq ptr %94, @gx_dc_procs_pure
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.gx_device_color_s, ptr %5, i64 0, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !64
  %99 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !64
  %101 = icmp eq i64 %98, %100
  br label %107

102:                                              ; preds = %89
  %103 = icmp eq ptr %91, @gx_dc_procs_null
  br i1 %103, label %104, label %109

104:                                              ; preds = %102
  %105 = load ptr, ptr %90, align 8, !tbaa !95
  %106 = icmp eq ptr %105, @gx_dc_procs_null
  br label %107

107:                                              ; preds = %104, %96
  %108 = phi i1 [ %106, %104 ], [ %101, %96 ]
  br i1 %108, label %117, label %109

109:                                              ; preds = %107, %102, %93
  %110 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %111 = load ptr, ptr %110, align 8, !tbaa !38
  %112 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %111, i64 0, i32 8
  %113 = load ptr, ptr %112, align 8, !tbaa !96
  %114 = tail call i32 %113(ptr noundef %0, ptr noundef nonnull %5) #12
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %90, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false), !tbaa.struct !97
  br label %117

117:                                              ; preds = %107, %109, %116
  %118 = phi i32 [ %114, %109 ], [ 0, %116 ], [ 0, %107 ]
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %157, label %120

120:                                              ; preds = %117, %83, %79
  %121 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %122 = load ptr, ptr %121, align 8, !tbaa !33
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %122, i64 0, i32 21, i32 31
  %126 = load ptr, ptr %125, align 8, !tbaa !153
  %127 = tail call i32 %126(ptr noundef nonnull %122, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %31) #12
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %157, label %129

129:                                              ; preds = %124, %120
  store ptr %7, ptr %8, align 8, !tbaa !154
  %130 = icmp eq ptr %4, null
  br i1 %130, label %142, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !155
  %134 = load i32, ptr %4, align 4, !tbaa !157
  %135 = sub nsw i32 %133, %134
  %136 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 3
  store i32 %135, ptr %136, align 8, !tbaa !158
  %137 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !159
  %139 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !160
  %141 = sub nsw i32 %138, %140
  br label %147

142:                                              ; preds = %129
  %143 = load i32, ptr %2, align 8, !tbaa !161
  %144 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 3
  store i32 %143, ptr %144, align 8, !tbaa !158
  %145 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !162
  br label %147

147:                                              ; preds = %142, %131
  %148 = phi i32 [ %146, %142 ], [ %141, %131 ]
  %149 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 4
  store i32 %148, ptr %149, align 4, !tbaa !163
  %150 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 3
  %151 = load i32, ptr %150, align 8, !tbaa !158
  %152 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 6
  %153 = load i32, ptr %152, align 4, !tbaa !151
  %154 = mul nsw i32 %153, %151
  %155 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 7
  store i32 %154, ptr %155, align 8, !tbaa !164
  %156 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %8, i64 0, i32 8
  store i32 0, ptr %156, align 4, !tbaa !165
  br label %157

157:                                              ; preds = %46, %73, %117, %124, %19, %147
  %158 = phi i32 [ 0, %147 ], [ -15, %19 ], [ %47, %46 ], [ %74, %73 ], [ %118, %117 ], [ %127, %124 ]
  ret i32 %158
}

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_end_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @gx_default_end_image(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %2) #12
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0)
  br label %49

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !165
  %15 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !163
  %17 = icmp slt i32 %14, %16
  %18 = icmp ne i64 %3, -1
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %49

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !164
  %23 = add i32 %22, 7
  %24 = lshr i32 %23, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %25 = load ptr, ptr %1, align 8, !tbaa !154
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = tail call ptr %26(ptr noundef nonnull %25, i32 noundef %24, ptr noundef nonnull @.str.9) #12
  store ptr %27, ptr %5, align 8, !tbaa !31
  %28 = icmp eq ptr %27, null
  br i1 %28, label %67, label %29

29:                                               ; preds = %20
  %30 = trunc i64 %3 to i8
  %31 = zext nneg i32 %24 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %27, i8 %30, i64 %31, i1 false)
  %32 = load i32, ptr %13, align 4, !tbaa !165
  %33 = load i32, ptr %15, align 4, !tbaa !163
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 21, i32 32
  br label %37

37:                                               ; preds = %35, %37
  %38 = load ptr, ptr %36, align 8, !tbaa !166
  %39 = call i32 %38(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %24, i32 noundef 1) #12
  %40 = load i32, ptr %13, align 4, !tbaa !165
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %13, align 4, !tbaa !165
  %42 = load i32, ptr %15, align 4, !tbaa !163
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %37, label %44, !llvm.loop !167

44:                                               ; preds = %37, %29
  %45 = load ptr, ptr %1, align 8, !tbaa !154
  %46 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %45, i64 0, i32 11
  %47 = load ptr, ptr %46, align 8, !tbaa !81
  %48 = load ptr, ptr %5, align 8, !tbaa !31
  call void %47(ptr noundef %45, ptr noundef %48, ptr noundef nonnull @.str.9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %49

49:                                               ; preds = %44, %12, %9
  %50 = phi i32 [ %11, %9 ], [ 1, %44 ], [ 1, %12 ]
  %51 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %52 = load ptr, ptr %51, align 8, !tbaa !33
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %52, i64 0, i32 21, i32 33
  %56 = load ptr, ptr %55, align 8, !tbaa !168
  %57 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !37
  %59 = call i32 %56(ptr noundef nonnull %52, ptr noundef %58, i32 noundef %2) #12
  %60 = icmp slt i32 %59, 0
  %61 = select i1 %60, i32 %59, i32 %50
  br label %62

62:                                               ; preds = %54, %49
  %63 = phi i32 [ %61, %54 ], [ %50, %49 ]
  %64 = load ptr, ptr %1, align 8, !tbaa !154
  %65 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %64, i64 0, i32 11
  %66 = load ptr, ptr %65, align 8, !tbaa !81
  call void %66(ptr noundef %64, ptr noundef nonnull %1, ptr noundef nonnull @.str.10) #12
  br label %68

67:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i32 [ %63, %62 ], [ -25, %67 ]
  ret i32 %69
}

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_get_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_param_string_s, align 8
  %4 = tail call i32 @gx_default_get_params(ptr noundef %0, ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 24
  store ptr %7, ptr %3, align 8, !tbaa !169
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #13
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  store i32 %9, ptr %10, align 8, !tbaa !171
  %11 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !172
  %12 = load ptr, ptr %1, align 8, !tbaa !173
  %13 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !175
  %15 = call i32 %14(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %3) #12
  %16 = icmp slt i32 %15, 0
  %17 = select i1 %16, i32 %15, i32 %4
  br label %18

18:                                               ; preds = %6, %2
  %19 = phi i32 [ %4, %2 ], [ %17, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 %19
}

declare i32 @gx_default_get_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_put_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_param_string_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %4 = load ptr, ptr %1, align 8, !tbaa !173
  %5 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !175
  %7 = call i32 %6(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %3) #12
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %18
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !171
  %11 = icmp ugt i32 %10, 80
  br i1 %11, label %12, label %20

12:                                               ; preds = %2, %8
  %13 = phi i32 [ -13, %8 ], [ %7, %2 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !173
  %15 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %14, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !177
  %17 = call i32 %16(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, i32 noundef %13) #12
  br label %18

18:                                               ; preds = %2, %12
  %19 = phi i32 [ %13, %12 ], [ 0, %2 ]
  store ptr null, ptr %3, align 8, !tbaa !169
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi i32 [ %19, %18 ], [ 0, %8 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !178
  store i32 0, ptr %24, align 8, !tbaa !178
  %26 = call i32 @gx_default_put_params(ptr noundef %0, ptr noundef nonnull %1) #12
  store i32 %25, ptr %24, align 8, !tbaa !178
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %79, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8, !tbaa !169
  %30 = icmp eq ptr %29, null
  br i1 %30, label %71, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !171
  %34 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 24
  %35 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #13
  %36 = trunc i64 %35 to i32
  %37 = call i32 @bytes_compare(ptr noundef nonnull %29, i32 noundef %33, ptr noundef nonnull %34, i32 noundef %36) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %3, align 8, !tbaa !169
  %41 = load i32, ptr %32, align 8, !tbaa !171
  %42 = zext i32 %41 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %34, ptr align 1 %40, i64 %42, i1 false)
  %43 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 24, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !64
  %44 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 25
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  %46 = icmp eq ptr %45, null
  br i1 %46, label %71, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 22
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  %50 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %49, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !81
  %52 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  call void %51(ptr noundef %49, ptr noundef %53, ptr noundef nonnull @.str.6) #12
  store ptr null, ptr %52, align 8, !tbaa !33
  %54 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  %56 = call i32 @sclose(ptr noundef %55) #12
  %57 = load ptr, ptr %48, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %57, i64 0, i32 11
  %59 = load ptr, ptr %58, align 8, !tbaa !81
  %60 = load ptr, ptr %54, align 8, !tbaa !11
  call void %59(ptr noundef %57, ptr noundef %60, ptr noundef nonnull @.str.7) #12
  store ptr null, ptr %54, align 8, !tbaa !11
  %61 = load ptr, ptr %48, align 8, !tbaa !76
  %62 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %61, i64 0, i32 11
  %63 = load ptr, ptr %62, align 8, !tbaa !81
  %64 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 27
  %65 = load ptr, ptr %64, align 8, !tbaa !32
  call void %63(ptr noundef %61, ptr noundef %65, ptr noundef nonnull @.str.8) #12
  store ptr null, ptr %64, align 8, !tbaa !32
  %66 = load ptr, ptr %44, align 8, !tbaa !75
  %67 = call i32 @fclose(ptr noundef %66)
  store ptr null, ptr %44, align 8, !tbaa !75
  %68 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 28
  %69 = load i32, ptr %68, align 8, !tbaa !82
  %70 = call i32 @gdev_vector_open_file_bbox(ptr noundef %0, i32 noundef %69, i32 noundef 0), !range !180
  br label %79

71:                                               ; preds = %39, %31, %28
  %72 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 21, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !72
  %74 = call i64 %73(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #12
  %75 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 38
  store i64 %74, ptr %75, align 8, !tbaa !73
  %76 = load ptr, ptr %72, align 8, !tbaa !72
  %77 = call i64 %76(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #12
  %78 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 39
  store i64 %77, ptr %78, align 8, !tbaa !74
  br label %79

79:                                               ; preds = %23, %20, %71, %47
  %80 = phi i32 [ %70, %47 ], [ 0, %71 ], [ %21, %20 ], [ %26, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 %80
}

declare i32 @gx_default_put_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.gx_device_color_s, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #12
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 36
  %9 = load i32, ptr %8, align 8, !tbaa !71
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 39
  %13 = load i64, ptr %12, align 8, !tbaa !74
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %77, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.gx_device_color_s, ptr %7, i64 0, i32 1
  store i64 %5, ptr %16, align 8, !tbaa !64
  store ptr @gx_dc_procs_pure, ptr %7, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = icmp eq ptr %18, @gx_dc_procs_pure
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !64
  %23 = icmp eq i64 %22, %5
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %26, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !96
  %29 = call i32 %28(ptr noundef %0, ptr noundef nonnull %7) #12
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 8 dereferenceable(96) %7, i64 96, i1 false), !tbaa.struct !97
  br label %32

32:                                               ; preds = %31, %24, %20
  %33 = phi i32 [ %29, %24 ], [ 0, %31 ], [ 0, %20 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !93
  %38 = xor i32 %37, 240
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %42, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !94
  %45 = call i32 %44(ptr noundef %0, i32 noundef 240, i32 noundef %38) #12
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 240, ptr %36, align 8, !tbaa !93
  br label %48

48:                                               ; preds = %32, %35, %40, %47
  %49 = phi i32 [ %33, %32 ], [ %45, %40 ], [ 0, %47 ], [ 0, %35 ]
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %53, i64 0, i32 21, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !181
  %58 = call i32 %57(ptr noundef nonnull %53, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #12
  %59 = icmp sgt i32 %58, -1
  %60 = select i1 %59, i32 %49, i32 %58
  br i1 %59, label %61, label %77

61:                                               ; preds = %55, %51
  %62 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %63, i64 0, i32 11
  %65 = load ptr, ptr %64, align 8, !tbaa !39
  %66 = sext i32 %1 to i64
  %67 = shl nsw i64 %66, 12
  %68 = sext i32 %2 to i64
  %69 = shl nsw i64 %68, 12
  %70 = add nsw i32 %3, %1
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 12
  %73 = add nsw i32 %4, %2
  %74 = sext i32 %73 to i64
  %75 = shl nsw i64 %74, 12
  %76 = call i32 %65(ptr noundef %0, i64 noundef %67, i64 noundef %69, i64 noundef %72, i64 noundef %75, i32 noundef 1) #12
  br label %77

77:                                               ; preds = %11, %55, %48, %61
  %78 = phi i32 [ %76, %61 ], [ %60, %55 ], [ %49, %48 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #12
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_fill_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 2
  %8 = load float, ptr %7, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !100
  %11 = fcmp une float %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = fpext float %8 to double
  %18 = tail call i32 %16(ptr noundef %0, double noundef %17) #12
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %68

20:                                               ; preds = %12
  %21 = load float, ptr %7, align 8, !tbaa !98
  store float %21, ptr %9, align 4, !tbaa !100
  br label %22

22:                                               ; preds = %20, %6
  %23 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !102
  %25 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  %26 = load ptr, ptr %4, align 8, !tbaa !95
  %27 = icmp eq ptr %26, @gx_dc_procs_pure
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load ptr, ptr %25, align 8, !tbaa !95
  %30 = icmp eq ptr %29, @gx_dc_procs_pure
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.gx_device_color_s, ptr %4, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !64
  %34 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !64
  %36 = icmp eq i64 %33, %35
  br label %42

37:                                               ; preds = %22
  %38 = icmp eq ptr %26, @gx_dc_procs_null
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = load ptr, ptr %25, align 8, !tbaa !95
  %41 = icmp eq ptr %40, @gx_dc_procs_null
  br label %42

42:                                               ; preds = %39, %31
  %43 = phi i1 [ %41, %39 ], [ %36, %31 ]
  br i1 %43, label %52, label %44

44:                                               ; preds = %42, %37, %28
  %45 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %46, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !96
  %49 = tail call i32 %48(ptr noundef %0, ptr noundef nonnull %4) #12
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %25, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false), !tbaa.struct !97
  br label %52

52:                                               ; preds = %51, %44, %42
  %53 = phi i32 [ %49, %44 ], [ 0, %51 ], [ 0, %42 ]
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !93
  %58 = xor i32 %57, %24
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  %63 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %62, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !94
  %65 = tail call i32 %64(ptr noundef %0, i32 noundef %24, i32 noundef %58) #12
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 %24, ptr %56, align 8, !tbaa !93
  br label %68

68:                                               ; preds = %12, %52, %55, %60, %67
  %69 = phi i32 [ %53, %52 ], [ %65, %60 ], [ 0, %67 ], [ 0, %55 ], [ %18, %12 ]
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %116, label %71

71:                                               ; preds = %68
  %72 = icmp eq ptr %5, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 7
  %75 = load i64, ptr %74, align 8, !tbaa !144
  %76 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  %77 = load i64, ptr %76, align 8, !tbaa !68
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %95, label %79

79:                                               ; preds = %73
  %80 = tail call i32 @gdev_vector_write_clip_path(ptr noundef %0, ptr noundef nonnull %5)
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %91, label %95

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  %84 = load i64, ptr %83, align 8, !tbaa !68
  %85 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 33
  %86 = load i64, ptr %85, align 8, !tbaa !67
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %82
  %89 = tail call i32 @gdev_vector_write_clip_path(ptr noundef %0, ptr noundef null)
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %79
  %92 = phi ptr [ %74, %79 ], [ %85, %88 ]
  %93 = phi ptr [ %76, %79 ], [ %83, %88 ]
  %94 = load i64, ptr %92, align 8, !tbaa !52
  store i64 %94, ptr %93, align 8, !tbaa !68
  br label %95

95:                                               ; preds = %91, %73, %79, %82, %88
  %96 = phi i32 [ %80, %79 ], [ %89, %88 ], [ 0, %82 ], [ 0, %73 ], [ 0, %91 ]
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %116, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %100 = load ptr, ptr %99, align 8, !tbaa !33
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %100, i64 0, i32 21, i32 24
  %104 = load ptr, ptr %103, align 8, !tbaa !182
  %105 = tail call i32 %104(ptr noundef nonnull %100, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102, %98
  %108 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %109 = load ptr, ptr %108, align 8, !tbaa !38
  %110 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %109, i64 0, i32 10
  %111 = load ptr, ptr %110, align 8, !tbaa !141
  %112 = load i32, ptr %3, align 8, !tbaa !183
  %113 = icmp slt i32 %112, 1
  %114 = select i1 %113, i32 1, i32 9
  %115 = tail call i32 %111(ptr noundef %0, ptr noundef %2, i32 noundef %114) #12
  br label %116

116:                                              ; preds = %102, %95, %68, %107
  %117 = phi i32 [ %115, %107 ], [ %69, %68 ], [ %96, %95 ], [ %105, %102 ]
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = fpext float %8 to double
  %10 = tail call i32 @gdev_vector_prepare_stroke(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, double noundef %9)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %6
  %13 = icmp eq ptr %5, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !144
  %17 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  %18 = load i64, ptr %17, align 8, !tbaa !68
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @gdev_vector_write_clip_path(ptr noundef %0, ptr noundef nonnull %5)
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %32, label %36

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 34
  %25 = load i64, ptr %24, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 33
  %27 = load i64, ptr %26, align 8, !tbaa !67
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = tail call i32 @gdev_vector_write_clip_path(ptr noundef %0, ptr noundef null)
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29, %20
  %33 = phi ptr [ %15, %20 ], [ %26, %29 ]
  %34 = phi ptr [ %17, %20 ], [ %24, %29 ]
  %35 = load i64, ptr %33, align 8, !tbaa !52
  store i64 %35, ptr %34, align 8, !tbaa !68
  br label %36

36:                                               ; preds = %32, %14, %20, %23, %29
  %37 = phi i32 [ %21, %20 ], [ %30, %29 ], [ 0, %23 ], [ 0, %14 ], [ 0, %32 ]
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %41 = load ptr, ptr %40, align 8, !tbaa !33
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %41, i64 0, i32 21, i32 25
  %45 = load ptr, ptr %44, align 8, !tbaa !184
  %46 = tail call i32 %45(ptr noundef nonnull %41, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43, %39
  %49 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %50 = load ptr, ptr %49, align 8, !tbaa !38
  %51 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %50, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !141
  %53 = tail call i32 %52(ptr noundef %0, ptr noundef %2, i32 noundef 2) #12
  br label %54

54:                                               ; preds = %43, %36, %6, %48
  %55 = phi i32 [ %53, %48 ], [ %10, %6 ], [ %37, %36 ], [ %46, %43 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_fill_trapezoid(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca [4 x %struct.gs_fixed_point_s], align 16
  %10 = load i64, ptr %1, align 8, !tbaa !185
  %11 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !187
  %13 = sub nsw i64 %12, %10
  %14 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !188
  %16 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %1, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !189
  %18 = sub nsw i64 %17, %15
  %19 = load i64, ptr %2, align 8, !tbaa !185
  %20 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %2, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !187
  %22 = sub nsw i64 %21, %19
  %23 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !188
  %25 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %2, i64 0, i32 1, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !189
  %27 = sub nsw i64 %26, %24
  %28 = sitofp i64 %13 to double
  %29 = sub nsw i64 %3, %15
  %30 = sitofp i64 %29 to double
  %31 = fmul double %28, %30
  %32 = sitofp i64 %18 to double
  %33 = fdiv double %31, %32
  %34 = tail call double @llvm.floor.f64(double %33)
  %35 = fptosi double %34 to i64
  %36 = add nsw i64 %10, %35
  %37 = sub nsw i64 %4, %15
  %38 = sitofp i64 %37 to double
  %39 = fmul double %28, %38
  %40 = fdiv double %39, %32
  %41 = tail call double @llvm.floor.f64(double %40)
  %42 = fptosi double %41 to i64
  %43 = add nsw i64 %10, %42
  %44 = sitofp i64 %22 to double
  %45 = sub nsw i64 %3, %24
  %46 = sitofp i64 %45 to double
  %47 = fmul double %44, %46
  %48 = sitofp i64 %27 to double
  %49 = fdiv double %47, %48
  %50 = tail call double @llvm.floor.f64(double %49)
  %51 = fptosi double %50 to i64
  %52 = add nsw i64 %19, %51
  %53 = sub nsw i64 %4, %24
  %54 = sitofp i64 %53 to double
  %55 = fmul double %44, %54
  %56 = fdiv double %55, %48
  %57 = tail call double @llvm.floor.f64(double %56)
  %58 = fptosi double %57 to i64
  %59 = add nsw i64 %19, %58
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #12
  %60 = icmp eq i32 %5, 0
  %61 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %9, i64 0, i64 1, i32 1
  %62 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %9, i64 0, i64 2
  %63 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %9, i64 0, i64 3, i32 1
  br i1 %60, label %69, label %64

64:                                               ; preds = %8
  %65 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  store i64 %36, ptr %65, align 8, !tbaa !59
  %66 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %9, i64 0, i64 1
  store i64 %52, ptr %61, align 8, !tbaa !59
  store i64 %3, ptr %66, align 16, !tbaa !58
  store i64 %3, ptr %9, align 16, !tbaa !58
  %67 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %9, i64 0, i64 2, i32 1
  store i64 %59, ptr %67, align 8, !tbaa !59
  %68 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %9, i64 0, i64 3
  store i64 %43, ptr %63, align 8, !tbaa !59
  store i64 %4, ptr %68, align 16, !tbaa !58
  store i64 %4, ptr %62, align 16, !tbaa !58
  br label %74

69:                                               ; preds = %8
  store i64 %36, ptr %9, align 16, !tbaa !58
  %70 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %9, i64 0, i64 1
  store i64 %52, ptr %70, align 16, !tbaa !58
  store i64 %3, ptr %61, align 8, !tbaa !59
  %71 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  store i64 %3, ptr %71, align 8, !tbaa !59
  store i64 %59, ptr %62, align 16, !tbaa !58
  %72 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %9, i64 0, i64 3
  store i64 %43, ptr %72, align 16, !tbaa !58
  store i64 %4, ptr %63, align 8, !tbaa !59
  %73 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %9, i64 0, i64 2, i32 1
  store i64 %4, ptr %73, align 8, !tbaa !59
  br label %74

74:                                               ; preds = %69, %64
  %75 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %76 = load ptr, ptr %75, align 8, !tbaa !33
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %76, i64 0, i32 21, i32 27
  %80 = load ptr, ptr %79, align 8, !tbaa !190
  %81 = tail call i32 %80(ptr noundef nonnull %76, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #12
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %74
  %84 = call i32 @gdev_vector_write_polygon(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 4, i32 noundef 1, i32 noundef 1)
  br label %85

85:                                               ; preds = %78, %83
  %86 = phi i32 [ %84, %83 ], [ %81, %78 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #12
  ret i32 %86
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_fill_parallelogram(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [4 x %struct.gs_fixed_point_s], align 16
  %11 = add nsw i64 %3, %1
  %12 = add nsw i64 %4, %2
  %13 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  %14 = load ptr, ptr %7, align 8, !tbaa !95
  %15 = icmp eq ptr %14, @gx_dc_procs_pure
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load ptr, ptr %13, align 8, !tbaa !95
  %18 = icmp eq ptr %17, @gx_dc_procs_pure
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gx_device_color_s, ptr %7, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !64
  %24 = icmp eq i64 %21, %23
  br label %30

25:                                               ; preds = %9
  %26 = icmp eq ptr %14, @gx_dc_procs_null
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = load ptr, ptr %13, align 8, !tbaa !95
  %29 = icmp eq ptr %28, @gx_dc_procs_null
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi i1 [ %29, %27 ], [ %24, %19 ]
  br i1 %31, label %40, label %32

32:                                               ; preds = %30, %25, %16
  %33 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %34, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !96
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef nonnull %7) #12
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 8 dereferenceable(96) %7, i64 96, i1 false), !tbaa.struct !97
  br label %40

40:                                               ; preds = %39, %32, %30
  %41 = phi i32 [ %37, %32 ], [ 0, %39 ], [ 0, %30 ]
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !93
  %46 = xor i32 %45, %8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %50 = load ptr, ptr %49, align 8, !tbaa !38
  %51 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %50, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !94
  %53 = tail call i32 %52(ptr noundef %0, i32 noundef %8, i32 noundef %46) #12
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 %8, ptr %44, align 8, !tbaa !93
  br label %56

56:                                               ; preds = %40, %43, %48, %55
  %57 = phi i32 [ %41, %40 ], [ %53, %48 ], [ 0, %55 ], [ 0, %43 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #12
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %61 = load ptr, ptr %60, align 8, !tbaa !33
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %61, i64 0, i32 21, i32 28
  %65 = load ptr, ptr %64, align 8, !tbaa !191
  %66 = tail call i32 %65(ptr noundef nonnull %61, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %7, i32 noundef %8) #12
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %63, %59
  store i64 %1, ptr %10, align 16, !tbaa !58
  %69 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  store i64 %2, ptr %69, align 8, !tbaa !59
  %70 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 1
  store i64 %11, ptr %70, align 16, !tbaa !58
  store i64 %12, ptr %69, align 8, !tbaa !59
  %71 = add nsw i64 %11, %5
  %72 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 2
  store i64 %71, ptr %72, align 16, !tbaa !58
  %73 = add nsw i64 %12, %6
  %74 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 2, i32 1
  store i64 %73, ptr %74, align 8, !tbaa !59
  %75 = add nsw i64 %5, %1
  %76 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 3
  store i64 %75, ptr %76, align 16, !tbaa !58
  %77 = add nsw i64 %6, %2
  %78 = getelementptr inbounds [4 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 3, i32 1
  store i64 %77, ptr %78, align 8, !tbaa !59
  %79 = call i32 @gdev_vector_write_polygon(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 4, i32 noundef 1, i32 noundef 1)
  br label %80

80:                                               ; preds = %63, %56, %68
  %81 = phi i32 [ %79, %68 ], [ %57, %56 ], [ %66, %63 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #12
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_vector_fill_triangle(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [3 x %struct.gs_fixed_point_s], align 16
  %11 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %7, align 8, !tbaa !95
  %13 = icmp eq ptr %12, @gx_dc_procs_pure
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load ptr, ptr %11, align 8, !tbaa !95
  %16 = icmp eq ptr %15, @gx_dc_procs_pure
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gx_device_color_s, ptr %7, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !64
  %22 = icmp eq i64 %19, %21
  br label %28

23:                                               ; preds = %9
  %24 = icmp eq ptr %12, @gx_dc_procs_null
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = load ptr, ptr %11, align 8, !tbaa !95
  %27 = icmp eq ptr %26, @gx_dc_procs_null
  br label %28

28:                                               ; preds = %25, %17
  %29 = phi i1 [ %27, %25 ], [ %22, %17 ]
  br i1 %29, label %38, label %30

30:                                               ; preds = %28, %23, %14
  %31 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %32, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  %35 = tail call i32 %34(ptr noundef %0, ptr noundef nonnull %7) #12
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull align 8 dereferenceable(96) %7, i64 96, i1 false), !tbaa.struct !97
  br label %38

38:                                               ; preds = %37, %30, %28
  %39 = phi i32 [ %35, %30 ], [ 0, %37 ], [ 0, %28 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 29, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !93
  %44 = xor i32 %43, %8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  %48 = load ptr, ptr %47, align 8, !tbaa !38
  %49 = getelementptr inbounds %struct.gx_device_vector_procs_s, ptr %48, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  %51 = tail call i32 %50(ptr noundef %0, i32 noundef %8, i32 noundef %44) #12
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 %8, ptr %42, align 8, !tbaa !93
  br label %54

54:                                               ; preds = %38, %41, %46, %53
  %55 = phi i32 [ %39, %38 ], [ %51, %46 ], [ 0, %53 ], [ 0, %41 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %59 = load ptr, ptr %58, align 8, !tbaa !33
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %59, i64 0, i32 21, i32 29
  %63 = load ptr, ptr %62, align 8, !tbaa !192
  %64 = tail call i32 %63(ptr noundef nonnull %59, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %7, i32 noundef %8) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61, %57
  store i64 %1, ptr %10, align 16, !tbaa !58
  %67 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  store i64 %2, ptr %67, align 8, !tbaa !59
  %68 = add nsw i64 %3, %1
  %69 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 1
  store i64 %68, ptr %69, align 16, !tbaa !58
  %70 = add nsw i64 %4, %2
  %71 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 1, i32 1
  store i64 %70, ptr %71, align 8, !tbaa !59
  %72 = add nsw i64 %5, %1
  %73 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 2
  store i64 %72, ptr %73, align 16, !tbaa !58
  %74 = add nsw i64 %6, %2
  %75 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 2, i32 1
  store i64 %74, ptr %75, align 8, !tbaa !59
  %76 = call i32 @gdev_vector_write_polygon(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 3, i32 noundef 1, i32 noundef 1)
  br label %77

77:                                               ; preds = %61, %54, %66
  %78 = phi i32 [ %76, %66 ], [ %55, %54 ], [ %64, %61 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #12
  ret i32 %78
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 32}
!6 = !{!"gs_memory_struct_type_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!12, !10, i64 600}
!12 = !{!"gx_device_vector_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !13, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !7, i64 160, !16, i64 168, !17, i64 192, !10, i64 488, !10, i64 496, !8, i64 504, !10, i64 592, !10, i64 600, !10, i64 608, !7, i64 616, !18, i64 624, !8, i64 944, !24, i64 992, !24, i64 1088, !15, i64 1184, !15, i64 1192, !29, i64 1200, !7, i64 1216, !10, i64 1224, !15, i64 1232, !15, i64 1240}
!13 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14}
!14 = !{!"short", !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!17 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!18 = !{!"gs_imager_state_s", !10, i64 0, !19, i64 8, !22, i64 80, !7, i64 128, !14, i64 132, !7, i64 136, !20, i64 140, !23, i64 144, !7, i64 160, !7, i64 164, !10, i64 168, !8, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !8, i64 232, !8, i64 264, !10, i64 296, !10, i64 304, !10, i64 312}
!19 = !{!"gx_line_params_s", !20, i64 0, !7, i64 4, !7, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !21, i64 32}
!20 = !{!"float", !8, i64 0}
!21 = !{!"gx_dash_params_s", !10, i64 0, !7, i64 8, !20, i64 12, !7, i64 16, !20, i64 20, !7, i64 24, !7, i64 28, !20, i64 32}
!22 = !{!"gs_matrix_fixed_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !15, i64 24, !15, i64 32, !7, i64 40}
!23 = !{!"gs_fixed_point_s", !15, i64 0, !15, i64 8}
!24 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !25, i64 48, !26, i64 56}
!25 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!26 = !{!"_mask", !27, i64 0, !15, i64 24, !10, i64 32}
!27 = !{!"gs_client_color_s", !28, i64 0, !10, i64 16}
!28 = !{!"gs_paint_color_s", !8, i64 0}
!29 = !{!"gs_point_s", !30, i64 0, !30, i64 8}
!30 = !{!"double", !8, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!12, !10, i64 608}
!33 = !{!12, !10, i64 1224}
!34 = !{!6, !10, i64 40}
!35 = !{!36, !10, i64 8}
!36 = !{!"gdev_vector_image_enum_s", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!37 = !{!36, !10, i64 16}
!38 = !{!12, !10, i64 496}
!39 = !{!40, !10, i64 88}
!40 = !{!"gx_device_vector_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136}
!41 = !{!42, !15, i64 0}
!42 = !{!"gs_fixed_rect_s", !23, i64 0, !23, i64 16}
!43 = !{!42, !15, i64 8}
!44 = !{!42, !15, i64 16}
!45 = !{!42, !15, i64 24}
!46 = !{i64 0, i64 8, !47, i64 8, i64 8, !47}
!47 = !{!30, !30, i64 0}
!48 = !{i64 0, i64 8, !47}
!49 = !{!40, !10, i64 96}
!50 = !{!40, !10, i64 136}
!51 = !{!40, !10, i64 104}
!52 = !{!15, !15, i64 0}
!53 = !{!40, !10, i64 112}
!54 = !{!40, !10, i64 120}
!55 = !{!40, !10, i64 128}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!23, !15, i64 0}
!59 = !{!23, !15, i64 8}
!60 = !{i64 0, i64 8, !31, i64 8, i64 4, !61, i64 12, i64 4, !62, i64 16, i64 4, !62, i64 20, i64 4, !61, i64 24, i64 4, !61, i64 28, i64 4, !61, i64 32, i64 4, !61, i64 40, i64 8, !31, i64 48, i64 4, !62, i64 52, i64 4, !61, i64 56, i64 4, !62, i64 60, i64 4, !61, i64 64, i64 4, !62, i64 68, i64 4, !62, i64 72, i64 4, !61, i64 80, i64 4, !61, i64 84, i64 4, !61, i64 88, i64 4, !61, i64 92, i64 4, !61, i64 96, i64 4, !61, i64 100, i64 4, !61, i64 104, i64 8, !52, i64 112, i64 8, !52, i64 120, i64 4, !62, i64 128, i64 4, !62, i64 132, i64 2, !63, i64 136, i64 4, !62, i64 140, i64 4, !61, i64 144, i64 8, !52, i64 152, i64 8, !52, i64 160, i64 4, !62, i64 164, i64 4, !62, i64 168, i64 8, !31, i64 176, i64 16, !64, i64 192, i64 8, !31, i64 200, i64 8, !31, i64 208, i64 8, !31, i64 216, i64 8, !31, i64 224, i64 8, !31, i64 232, i64 32, !64, i64 232, i64 8, !31, i64 240, i64 8, !31, i64 248, i64 8, !31, i64 256, i64 8, !31, i64 264, i64 32, !64, i64 264, i64 8, !31, i64 272, i64 8, !31, i64 280, i64 8, !31, i64 288, i64 8, !31, i64 296, i64 8, !31, i64 304, i64 8, !31, i64 312, i64 8, !31}
!61 = !{!20, !20, i64 0}
!62 = !{!7, !7, i64 0}
!63 = !{!14, !14, i64 0}
!64 = !{!8, !8, i64 0}
!65 = !{!12, !10, i64 992}
!66 = !{!12, !10, i64 1088}
!67 = !{!12, !15, i64 1184}
!68 = !{!12, !15, i64 1192}
!69 = !{!12, !30, i64 1208}
!70 = !{!12, !30, i64 1200}
!71 = !{!12, !7, i64 1216}
!72 = !{!12, !10, i64 232}
!73 = !{!12, !15, i64 1232}
!74 = !{!12, !15, i64 1240}
!75 = !{!12, !10, i64 592}
!76 = !{!12, !10, i64 488}
!77 = !{!78, !10, i64 0}
!78 = !{!"gs_memory_s", !79, i64 0}
!79 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!80 = !{!78, !10, i64 24}
!81 = !{!78, !10, i64 88}
!82 = !{!12, !7, i64 616}
!83 = !{!84, !10, i64 120}
!84 = !{!"stream_s", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !10, i64 48, !7, i64 56, !7, i64 60, !14, i64 64, !8, i64 66, !8, i64 67, !85, i64 72, !15, i64 88, !86, i64 96, !10, i64 152, !7, i64 160, !7, i64 164, !10, i64 168, !14, i64 176, !14, i64 178, !10, i64 184, !10, i64 192, !7, i64 200, !10, i64 208, !7, i64 216, !10, i64 224}
!85 = !{!"gs_string_s", !10, i64 0, !7, i64 8}
!86 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!87 = !{!84, !10, i64 128}
!88 = !{!12, !10, i64 200}
!89 = !{!90, !10, i64 200}
!90 = !{!"gx_device_bbox_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !13, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !7, i64 160, !16, i64 168, !17, i64 192, !10, i64 488, !42, i64 496, !15, i64 528}
!91 = !{!90, !10, i64 192}
!92 = !{!40, !10, i64 0}
!93 = !{!12, !7, i64 752}
!94 = !{!40, !10, i64 56}
!95 = !{!24, !10, i64 0}
!96 = !{!40, !10, i64 64}
!97 = !{i64 0, i64 8, !31, i64 8, i64 8, !52, i64 8, i64 8, !31, i64 16, i64 16, !64, i64 32, i64 4, !62, i64 40, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 4, !64, i64 20, i64 16, !64, i64 36, i64 2, !63, i64 8, i64 8, !31, i64 48, i64 4, !62, i64 52, i64 4, !62, i64 56, i64 16, !64, i64 72, i64 8, !31, i64 80, i64 8, !52, i64 88, i64 8, !31}
!98 = !{!99, !20, i64 24}
!99 = !{!"gx_fill_params_s", !7, i64 0, !23, i64 8, !20, i64 24, !7, i64 28}
!100 = !{!12, !20, i64 764}
!101 = !{!40, !10, i64 48}
!102 = !{!18, !7, i64 128}
!103 = !{!18, !7, i64 48}
!104 = !{!18, !20, i64 52}
!105 = !{!18, !20, i64 8}
!106 = !{!12, !20, i64 676}
!107 = !{!12, !7, i64 672}
!108 = !{!21, !7, i64 8}
!109 = !{!21, !10, i64 0}
!110 = distinct !{!110, !57}
!111 = !{!18, !10, i64 40}
!112 = distinct !{!112, !57}
!113 = !{!40, !10, i64 40}
!114 = !{!115, !20, i64 0}
!115 = !{!"gx_stroke_params_s", !20, i64 0}
!116 = !{!12, !20, i64 632}
!117 = !{!40, !10, i64 8}
!118 = !{!18, !20, i64 20}
!119 = !{!12, !20, i64 644}
!120 = !{!40, !10, i64 32}
!121 = !{!18, !7, i64 12}
!122 = !{!12, !7, i64 636}
!123 = !{!40, !10, i64 16}
!124 = !{!18, !7, i64 16}
!125 = !{!12, !7, i64 640}
!126 = !{!40, !10, i64 24}
!127 = !{!40, !10, i64 72}
!128 = distinct !{!128, !57}
!129 = !{!130, !7, i64 16}
!130 = !{!"gx_clip_rect_s", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!131 = !{!130, !7, i64 24}
!132 = !{!12, !7, i64 64}
!133 = !{!130, !7, i64 28}
!134 = !{!12, !7, i64 68}
!135 = !{!130, !7, i64 20}
!136 = !{!130, !10, i64 0}
!137 = !{!138, !8, i64 264}
!138 = !{!"gx_clip_path_s", !139, i64 0, !7, i64 128, !42, i64 136, !42, i64 168, !140, i64 200, !8, i64 264, !8, i64 265, !15, i64 272}
!139 = !{!"gx_path_s", !10, i64 0, !42, i64 8, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 68, !23, i64 72, !29, i64 88, !29, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!140 = !{!"gx_clip_list_s", !130, i64 0, !10, i64 40, !10, i64 48, !7, i64 56, !7, i64 60}
!141 = !{!40, !10, i64 80}
!142 = !{!138, !10, i64 240}
!143 = distinct !{!143, !57}
!144 = !{!138, !15, i64 272}
!145 = !{!146, !7, i64 84}
!146 = !{!"gs_image_s", !7, i64 0, !7, i64 4, !147, i64 8, !7, i64 32, !10, i64 40, !8, i64 48, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92}
!147 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!148 = !{!146, !10, i64 40}
!149 = !{!146, !7, i64 32}
!150 = !{!36, !7, i64 32}
!151 = !{!36, !7, i64 36}
!152 = !{!146, !7, i64 92}
!153 = !{!90, !10, i64 440}
!154 = !{!36, !10, i64 0}
!155 = !{!156, !7, i64 8}
!156 = !{!"gs_int_rect_s", !25, i64 0, !25, i64 8}
!157 = !{!156, !7, i64 0}
!158 = !{!36, !7, i64 24}
!159 = !{!156, !7, i64 12}
!160 = !{!156, !7, i64 4}
!161 = !{!146, !7, i64 0}
!162 = !{!146, !7, i64 4}
!163 = !{!36, !7, i64 28}
!164 = !{!36, !7, i64 40}
!165 = !{!36, !7, i64 44}
!166 = !{!12, !10, i64 448}
!167 = distinct !{!167, !57}
!168 = !{!90, !10, i64 456}
!169 = !{!170, !10, i64 0}
!170 = !{!"gs_param_string_s", !10, i64 0, !7, i64 8, !7, i64 12}
!171 = !{!170, !7, i64 8}
!172 = !{!170, !7, i64 12}
!173 = !{!174, !10, i64 0}
!174 = !{!"gs_param_list_s", !10, i64 0}
!175 = !{!176, !10, i64 40}
!176 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!177 = !{!176, !10, i64 120}
!178 = !{!179, !7, i64 40}
!179 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !13, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !7, i64 160, !16, i64 168, !17, i64 192}
!180 = !{i32 -25, i32 1}
!181 = !{!90, !10, i64 248}
!182 = !{!90, !10, i64 384}
!183 = !{!99, !7, i64 0}
!184 = !{!90, !10, i64 392}
!185 = !{!186, !15, i64 0}
!186 = !{!"gs_fixed_edge_s", !23, i64 0, !23, i64 16}
!187 = !{!186, !15, i64 16}
!188 = !{!186, !15, i64 8}
!189 = !{!186, !15, i64 24}
!190 = !{!90, !10, i64 408}
!191 = !{!90, !10, i64 416}
!192 = !{!90, !10, i64 424}
