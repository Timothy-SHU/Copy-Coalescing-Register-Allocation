; ModuleID = 'gsstate.c'
source_filename = "gsstate.c"
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
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, ptr, float, float }
%struct.gs_state_contents_s = type { %struct.gx_path_s, %struct.gx_clip_path_s, %struct.gs_client_color_s, %struct.gx_device_color_s }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_point_s = type { double, double }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_cache_s = type { ptr, i32, ptr, i32, %struct.gx_ht_order_s, i32, i32, i64 }
%struct.gx_pattern_cache_s = type { ptr, ptr, i32, i32, i32, i64, i64, ptr }

@.str = private unnamed_addr constant [16 x i8] c"gx_transfer_map\00", align 1
@st_transfer_map = dso_local constant %struct.gs_memory_struct_type_s { i32 552, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"gs_imager_state_init(transfer)\00", align 1
@cmap_procs_default = external local_unnamed_addr global ptr, align 8
@gs_imager_state_release.cname = internal constant [24 x i8] c"gs_imager_state_release\00", align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"gs_state_alloc\00", align 1
@gs_state_alloc.gstate_initial = internal unnamed_addr constant %struct.gs_imager_state_s { ptr null, %struct.gx_line_params_s { float 0.000000e+00, i32 0, i32 0, float 1.000000e+01, float 0x3FC9FDD380000000, float 0.000000e+00, float 0.000000e+00, %struct.gx_dash_params_s { ptr null, i32 0, float 0.000000e+00, i32 0, float 0.000000e+00, i32 1, i32 0, float 0.000000e+00 } }, %struct.gs_matrix_fixed_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, i64 0, i64 0, i32 0 }, i32 252, i16 -1, i32 0, float 1.000000e+00, %struct.gs_fixed_point_s { i64 2048, i64 2048 }, i32 0, i32 0, ptr null, [2 x %struct.gs_int_point_s] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %union.gx_transfer_s zeroinitializer, %union.gx_transfer_s zeroinitializer, ptr null, ptr null, ptr null }, align 8
@st_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"gs_state_alloc(halftone)\00", align 1
@gs_color_space_type_DeviceGray = external constant %struct.gs_color_space_type_s, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"gs_state_free\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"gs_gsave\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"gs_grestore\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gs_gstate\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"gs_copygstate\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"gs_currentgstate\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"gs_setgstate\00", align 1
@st_gs_state = internal constant %struct.gs_memory_struct_type_s { i32 584, ptr @.str.11, ptr null, ptr null, ptr @gs_state_enum_ptrs, ptr @gs_state_reloc_ptrs, ptr null }, align 8
@st_gs_state_contents = internal constant %struct.gs_memory_struct_type_s { i32 528, ptr @.str.14, ptr null, ptr null, ptr @state_contents_enum_ptrs, ptr @state_contents_reloc_ptrs, ptr null }, align 8
@st_color_space = external constant %struct.gs_memory_struct_type_s, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"gs_state\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"gs_state_contents\00", align 1
@st_path = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@st_clip_path = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@st_client_color = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@st_device_color = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@gstate_free_contents.cname = internal constant [21 x i8] c"gstate_free_contents\00", align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_imager_state_initialize(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store ptr %1, ptr %0, align 8, !tbaa !5
  %3 = getelementptr i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !tbaa !18
  %4 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 14
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = tail call ptr %6(ptr noundef %1, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.1) #8
  %8 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  store ptr %7, ptr %8, align 8, !tbaa !22
  %9 = icmp eq ptr %7, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17
  store i64 4, ptr %7, align 8, !tbaa !23
  %12 = load ptr, ptr %8, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.rc_header_s, ptr %12, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !26
  %14 = load ptr, ptr %8, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.rc_header_s, ptr %14, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %15, align 8, !tbaa !27
  %16 = load ptr, ptr %8, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %16, i64 0, i32 1
  store ptr @null_transfer, ptr %17, align 8, !tbaa !28
  %18 = tail call i64 @gs_next_ids(i32 noundef 1) #8
  %19 = load ptr, ptr %8, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %19, i64 0, i32 2
  store i64 %18, ptr %20, align 8, !tbaa !29
  %21 = load ptr, ptr %8, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %21, i64 0, i32 3
  store i16 0, ptr %22, align 8, !tbaa !30
  %23 = load ptr, ptr %8, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 2
  store ptr %23, ptr %24, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 1
  store ptr %23, ptr %25, align 8, !tbaa !22
  store ptr %23, ptr %11, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !31
  %27 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 19
  store ptr null, ptr %27, align 8, !tbaa !33
  %28 = load ptr, ptr @cmap_procs_default, align 8, !tbaa !32
  %29 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 20
  store ptr %28, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 21
  store ptr null, ptr %30, align 8, !tbaa !35
  br label %31

31:                                               ; preds = %2, %10
  %32 = phi i32 [ 0, %10 ], [ -25, %2 ]
  ret i32 %32
}

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @null_transfer(double noundef %0, ptr nocapture readnone %1) #2 {
  %3 = fptrunc double %0 to float
  ret float %3
}

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @gs_imager_state_release(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8, !tbaa !36
  %7 = add nsw i64 %6, -1
  store i64 %7, ptr %3, align 8, !tbaa !36
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rc_header_s, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.rc_header_s, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  tail call void %11(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull @gs_imager_state_release.cname) #8
  store ptr null, ptr %2, align 8, !tbaa !33
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17
  %16 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load i64, ptr %17, align 8, !tbaa !23
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr %17, align 8, !tbaa !23
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load ptr, ptr %16, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.rc_header_s, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !27
  %27 = getelementptr inbounds %struct.rc_header_s, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  tail call void %26(ptr noundef %28, ptr noundef %24, ptr noundef nonnull @gs_imager_state_release.cname) #8
  store ptr null, ptr %16, align 8, !tbaa !22
  br label %29

29:                                               ; preds = %23, %19, %14
  %30 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %31, align 8, !tbaa !23
  %35 = add nsw i64 %34, -1
  store i64 %35, ptr %31, align 8, !tbaa !23
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load ptr, ptr %30, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.rc_header_s, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !27
  %41 = getelementptr inbounds %struct.rc_header_s, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !26
  tail call void %40(ptr noundef %42, ptr noundef %38, ptr noundef nonnull @gs_imager_state_release.cname) #8
  store ptr null, ptr %30, align 8, !tbaa !22
  br label %43

43:                                               ; preds = %37, %33, %29
  %44 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %45, align 8, !tbaa !23
  %49 = add nsw i64 %48, -1
  store i64 %49, ptr %45, align 8, !tbaa !23
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load ptr, ptr %44, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.rc_header_s, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !27
  %55 = getelementptr inbounds %struct.rc_header_s, ptr %52, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !26
  tail call void %54(ptr noundef %56, ptr noundef %52, ptr noundef nonnull @gs_imager_state_release.cname) #8
  store ptr null, ptr %44, align 8, !tbaa !22
  br label %57

57:                                               ; preds = %51, %47, %43
  %58 = load ptr, ptr %15, align 8, !tbaa !22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = load i64, ptr %58, align 8, !tbaa !23
  %62 = add nsw i64 %61, -1
  store i64 %62, ptr %58, align 8, !tbaa !23
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load ptr, ptr %15, align 8, !tbaa !22
  %66 = getelementptr inbounds %struct.rc_header_s, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !27
  %68 = getelementptr inbounds %struct.rc_header_s, ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !26
  tail call void %67(ptr noundef %69, ptr noundef %65, ptr noundef nonnull @gs_imager_state_release.cname) #8
  store ptr null, ptr %15, align 8, !tbaa !22
  br label %70

70:                                               ; preds = %64, %60, %57
  %71 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !44
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load i64, ptr %72, align 8, !tbaa !23
  %76 = add nsw i64 %75, -1
  store i64 %76, ptr %72, align 8, !tbaa !23
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rc_header_s, ptr %72, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !27
  %81 = getelementptr inbounds %struct.rc_header_s, ptr %72, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !26
  tail call void %80(ptr noundef %82, ptr noundef nonnull %72, ptr noundef nonnull @gs_imager_state_release.cname) #8
  store ptr null, ptr %71, align 8, !tbaa !44
  br label %83

83:                                               ; preds = %78, %74, %70
  %84 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 15
  %85 = load ptr, ptr %84, align 8, !tbaa !45
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load i64, ptr %85, align 8, !tbaa !23
  %89 = add nsw i64 %88, -1
  store i64 %89, ptr %85, align 8, !tbaa !23
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.rc_header_s, ptr %85, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !27
  %94 = getelementptr inbounds %struct.rc_header_s, ptr %85, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !26
  tail call void %93(ptr noundef %95, ptr noundef nonnull %85, ptr noundef nonnull @gs_imager_state_release.cname) #8
  store ptr null, ptr %84, align 8, !tbaa !45
  br label %96

96:                                               ; preds = %91, %87, %83
  %97 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 14
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = icmp eq ptr %98, null
  br i1 %99, label %109, label %100

100:                                              ; preds = %96
  %101 = load i64, ptr %98, align 8, !tbaa !47
  %102 = add nsw i64 %101, -1
  store i64 %102, ptr %98, align 8, !tbaa !47
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.rc_header_s, ptr %98, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !57
  %107 = getelementptr inbounds %struct.rc_header_s, ptr %98, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !58
  tail call void %106(ptr noundef %108, ptr noundef nonnull %98, ptr noundef nonnull @gs_imager_state_release.cname) #8
  store ptr null, ptr %97, align 8, !tbaa !46
  br label %109

109:                                              ; preds = %96, %100, %104
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_state_alloc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = tail call ptr %3(ptr noundef %0, ptr noundef nonnull @st_gs_state, ptr noundef nonnull @.str.2) #8
  %5 = load ptr, ptr %2, align 8, !tbaa !19
  %6 = tail call ptr %5(ptr noundef %0, ptr noundef nonnull @st_gs_state_contents, ptr noundef nonnull @.str.2) #8
  %7 = load ptr, ptr %2, align 8, !tbaa !19
  %8 = tail call ptr %7(ptr noundef %0, ptr noundef nonnull @st_color_space, ptr noundef nonnull @.str.2) #8
  %9 = icmp eq ptr %4, null
  %10 = icmp eq ptr %6, null
  %11 = select i1 %9, i1 true, i1 %10
  %12 = icmp eq ptr %8, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  tail call void %16(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @.str.2) #8
  %17 = load ptr, ptr %15, align 8, !tbaa !59
  tail call void %17(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.2) #8
  %18 = load ptr, ptr %15, align 8, !tbaa !59
  tail call void %18(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @.str.2) #8
  br label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 1, i32 7
  store ptr null, ptr %20, align 8, !tbaa !60
  store ptr %0, ptr %4, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 23
  store ptr %6, ptr %21, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.gs_state_s, ptr %4, i64 0, i32 32
  store ptr %8, ptr %22, align 8, !tbaa !66
  br label %23

23:                                               ; preds = %14, %19
  %24 = phi ptr [ null, %14 ], [ %4, %19 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %104, label %26

26:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %24, ptr noundef nonnull align 8 dereferenceable(320) @gs_state_alloc.gstate_initial, i64 320, i1 false), !tbaa.struct !67
  %27 = load ptr, ptr %2, align 8, !tbaa !19
  %28 = tail call ptr %27(ptr noundef %0, ptr noundef nonnull @st_halftone, ptr noundef nonnull @.str.3) #8
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 10
  store ptr %28, ptr %29, align 8, !tbaa !70
  %30 = icmp eq ptr %28, null
  br i1 %30, label %100, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.gs_halftone_s, ptr %28, i64 0, i32 1
  store i64 1, ptr %32, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.gs_halftone_s, ptr %28, i64 0, i32 1, i32 1
  store ptr %0, ptr %33, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct.gs_halftone_s, ptr %28, i64 0, i32 1, i32 2
  store ptr @rc_free_struct_only, ptr %34, align 8, !tbaa !74
  %35 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 22
  store ptr null, ptr %35, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 23
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 28
  store ptr %37, ptr %38, align 8, !tbaa !76
  %39 = getelementptr inbounds %struct.gs_state_contents_s, ptr %37, i64 0, i32 1
  %40 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 29
  store ptr %39, ptr %40, align 8, !tbaa !77
  %41 = getelementptr inbounds %struct.gs_state_contents_s, ptr %37, i64 0, i32 2
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 33
  store ptr %41, ptr %42, align 8, !tbaa !78
  %43 = getelementptr inbounds %struct.gs_state_contents_s, ptr %37, i64 0, i32 3
  %44 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 34
  store ptr %43, ptr %44, align 8, !tbaa !79
  store i32 0, ptr %28, align 8, !tbaa !80
  %45 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 12
  store ptr null, ptr %45, align 8, !tbaa !81
  %46 = tail call i32 @gx_ht_cache_default_tiles() #8
  %47 = tail call i32 @gx_ht_cache_default_bits() #8
  %48 = tail call ptr @gx_ht_alloc_cache(ptr noundef %0, i32 noundef %46, i32 noundef %47) #8
  %49 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 13
  store ptr %48, ptr %49, align 8, !tbaa !82
  store ptr %0, ptr %24, align 8, !tbaa !5
  %50 = getelementptr i8, ptr %24, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false), !tbaa !18
  %51 = getelementptr inbounds %struct.gs_imager_state_s, ptr %24, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %52 = load ptr, ptr %2, align 8, !tbaa !19
  %53 = tail call ptr %52(ptr noundef %0, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.1) #8
  %54 = getelementptr inbounds %struct.gs_imager_state_s, ptr %24, i64 0, i32 17, i32 0, i64 3
  store ptr %53, ptr %54, align 8, !tbaa !22
  %55 = icmp eq ptr %53, null
  br i1 %55, label %77, label %56

56:                                               ; preds = %31
  %57 = getelementptr inbounds %struct.gs_imager_state_s, ptr %24, i64 0, i32 17
  store i64 4, ptr %53, align 8, !tbaa !23
  %58 = load ptr, ptr %54, align 8, !tbaa !22
  %59 = getelementptr inbounds %struct.rc_header_s, ptr %58, i64 0, i32 1
  store ptr %0, ptr %59, align 8, !tbaa !26
  %60 = load ptr, ptr %54, align 8, !tbaa !22
  %61 = getelementptr inbounds %struct.rc_header_s, ptr %60, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %61, align 8, !tbaa !27
  %62 = load ptr, ptr %54, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %62, i64 0, i32 1
  store ptr @null_transfer, ptr %63, align 8, !tbaa !28
  %64 = tail call i64 @gs_next_ids(i32 noundef 1) #8
  %65 = load ptr, ptr %54, align 8, !tbaa !22
  %66 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %65, i64 0, i32 2
  store i64 %64, ptr %66, align 8, !tbaa !29
  %67 = load ptr, ptr %54, align 8, !tbaa !22
  %68 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %67, i64 0, i32 3
  store i16 0, ptr %68, align 8, !tbaa !30
  %69 = load ptr, ptr %54, align 8, !tbaa !22
  %70 = getelementptr inbounds %struct.gs_imager_state_s, ptr %24, i64 0, i32 17, i32 0, i64 2
  store ptr %69, ptr %70, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.gs_imager_state_s, ptr %24, i64 0, i32 17, i32 0, i64 1
  store ptr %69, ptr %71, align 8, !tbaa !22
  store ptr %69, ptr %57, align 8, !tbaa !22
  %72 = getelementptr inbounds %struct.gs_imager_state_s, ptr %24, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull align 8 dereferenceable(32) %57, i64 32, i1 false), !tbaa.struct !31
  %73 = getelementptr inbounds %struct.gs_imager_state_s, ptr %24, i64 0, i32 19
  store ptr null, ptr %73, align 8, !tbaa !33
  %74 = load ptr, ptr @cmap_procs_default, align 8, !tbaa !32
  %75 = getelementptr inbounds %struct.gs_imager_state_s, ptr %24, i64 0, i32 20
  store ptr %74, ptr %75, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.gs_imager_state_s, ptr %24, i64 0, i32 21
  store ptr null, ptr %76, align 8, !tbaa !35
  br label %77

77:                                               ; preds = %31, %56
  %78 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 44
  store ptr null, ptr %78, align 8, !tbaa !83
  %79 = load ptr, ptr %38, align 8, !tbaa !76
  tail call void @gx_path_init(ptr noundef %79, ptr noundef %0) #8
  %80 = load ptr, ptr %40, align 8, !tbaa !77
  %81 = tail call i32 @gx_cpath_init(ptr noundef %80, ptr noundef %0) #8
  %82 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 32
  %83 = load ptr, ptr %82, align 8, !tbaa !66
  store ptr @gs_color_space_type_DeviceGray, ptr %83, align 8, !tbaa !84
  tail call void @gx_set_device_color_1(ptr noundef nonnull %24) #8
  %84 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 5
  store i32 0, ptr %84, align 8, !tbaa !86
  tail call void @gs_nulldevice(ptr noundef nonnull %24) #8
  %85 = tail call i32 @gs_setalpha(ptr noundef nonnull %24, double noundef 1.000000e+00) #8
  %86 = tail call i32 @gs_settransfer(ptr noundef nonnull %24, ptr noundef nonnull @null_transfer) #8
  %87 = tail call i32 @gs_setflat(ptr noundef nonnull %24, double noundef 1.000000e+00) #8
  %88 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 7
  store i64 1024, ptr %88, align 8, !tbaa !87
  %89 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 7, i32 1
  store i64 1024, ptr %89, align 8, !tbaa !88
  %90 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 31
  store i32 0, ptr %90, align 4, !tbaa !89
  %91 = tail call i32 @gs_setstrokeadjust(ptr noundef nonnull %24, i32 noundef 1) #8
  %92 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 35
  %93 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 39
  store i8 0, ptr %93, align 4, !tbaa !90
  %94 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 40
  store i32 0, ptr %94, align 8, !tbaa !91
  %95 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 41
  store ptr null, ptr %95, align 8, !tbaa !92
  %96 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 42
  store i32 0, ptr %96, align 8, !tbaa !93
  store ptr null, ptr %78, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %92, i8 0, i64 16, i1 false)
  %97 = tail call i32 @gs_initgraphics(ptr noundef nonnull %24), !range !94
  %98 = icmp slt i32 %97, 0
  %99 = select i1 %98, ptr null, ptr %24
  br label %104

100:                                              ; preds = %26
  tail call fastcc void @gstate_free_contents(ptr noundef %24)
  %101 = load ptr, ptr %24, align 8, !tbaa !64
  %102 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %101, i64 0, i32 11
  %103 = load ptr, ptr %102, align 8, !tbaa !59
  tail call void %103(ptr noundef %101, ptr noundef nonnull %24, ptr noundef nonnull @.str.4) #8
  br label %104

104:                                              ; preds = %77, %23, %100
  %105 = phi ptr [ null, %100 ], [ null, %23 ], [ %99, %77 ]
  ret ptr %105
}

declare ptr @gx_ht_alloc_cache(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_ht_cache_default_tiles() local_unnamed_addr #1

declare i32 @gx_ht_cache_default_bits() local_unnamed_addr #1

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_cpath_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gx_set_device_color_1(ptr noundef) local_unnamed_addr #1

declare void @gs_nulldevice(ptr noundef) local_unnamed_addr #1

declare i32 @gs_setalpha(ptr noundef, double noundef) local_unnamed_addr #1

declare i32 @gs_settransfer(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_setflat(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setfilladjust(ptr nocapture noundef writeonly %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
  %4 = fcmp olt double %1, 0.000000e+00
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = fcmp ogt double %1, 5.000000e-01
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %3, %5, %7
  %9 = phi double [ 5.000000e-01, %7 ], [ %1, %5 ], [ 0.000000e+00, %3 ]
  %10 = fmul double %9, 4.096000e+03
  %11 = fptosi double %10 to i64
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7
  store i64 %11, ptr %12, align 8, !tbaa !87
  %13 = fcmp olt double %2, 0.000000e+00
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = fcmp ogt double %2, 5.000000e-01
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %8, %14, %16
  %18 = phi double [ 5.000000e-01, %16 ], [ %2, %14 ], [ 0.000000e+00, %8 ]
  %19 = fmul double %18, 4.096000e+03
  %20 = fptosi double %19 to i64
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !88
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gs_setlimitclamp(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 31
  store i32 %1, ptr %3, align 4, !tbaa !89
  ret void
}

declare i32 @gs_setstrokeadjust(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_initgraphics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gs_initmatrix(ptr noundef %0) #8
  %3 = tail call i32 @gs_newpath(ptr noundef %0) #8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @gs_initclip(ptr noundef %0) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @gs_setlinewidth(ptr noundef %0, double noundef 1.000000e+00) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @gs_setlinecap(ptr noundef %0, i32 noundef 0) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @gs_setlinejoin(ptr noundef %0, i32 noundef 0) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @gs_setdash(ptr noundef %0, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  tail call void @gs_setdashadapt(ptr noundef %0, i32 noundef 0) #8
  %21 = tail call i32 @gs_setdotlength(ptr noundef %0, double noundef 0.000000e+00, i32 noundef 0) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @gs_setgray(ptr noundef %0, double noundef 0.000000e+00) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @gs_setmiterlimit(ptr noundef %0, double noundef 1.000000e+01) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 3
  store i32 252, ptr %30, align 8, !tbaa !95
  br label %31

31:                                               ; preds = %1, %5, %8, %11, %14, %17, %20, %23, %26, %29
  %32 = phi i32 [ 0, %29 ], [ %3, %1 ], [ %6, %5 ], [ %9, %8 ], [ %12, %11 ], [ %15, %14 ], [ %18, %17 ], [ %21, %20 ], [ %24, %23 ], [ %27, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_state_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @gstate_free_contents(ptr noundef %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  tail call void %4(ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_state_set_client(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 44
  store ptr %1, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !96
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_state_client_data(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gstate_free_contents(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  tail call void @gx_path_release(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  tail call void @gx_cpath_release(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load i64, ptr %10, align 8, !tbaa !36
  %14 = add nsw i64 %13, -1
  store i64 %14, ptr %10, align 8, !tbaa !36
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rc_header_s, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.rc_header_s, ptr %10, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  tail call void %18(ptr noundef %20, ptr noundef nonnull %10, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %9, align 8, !tbaa !97
  br label %21

21:                                               ; preds = %1, %12, %16
  %22 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17
  %23 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i64, ptr %24, align 8, !tbaa !23
  %28 = add nsw i64 %27, -1
  store i64 %28, ptr %24, align 8, !tbaa !23
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load ptr, ptr %23, align 8, !tbaa !22
  %32 = getelementptr inbounds %struct.rc_header_s, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct.rc_header_s, ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !26
  tail call void %33(ptr noundef %35, ptr noundef %31, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %23, align 8, !tbaa !22
  br label %36

36:                                               ; preds = %21, %26, %30
  %37 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load i64, ptr %38, align 8, !tbaa !23
  %42 = add nsw i64 %41, -1
  store i64 %42, ptr %38, align 8, !tbaa !23
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load ptr, ptr %37, align 8, !tbaa !22
  %46 = getelementptr inbounds %struct.rc_header_s, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !27
  %48 = getelementptr inbounds %struct.rc_header_s, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !26
  tail call void %47(ptr noundef %49, ptr noundef %45, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %37, align 8, !tbaa !22
  br label %50

50:                                               ; preds = %36, %40, %44
  %51 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = load i64, ptr %52, align 8, !tbaa !23
  %56 = add nsw i64 %55, -1
  store i64 %56, ptr %52, align 8, !tbaa !23
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load ptr, ptr %51, align 8, !tbaa !22
  %60 = getelementptr inbounds %struct.rc_header_s, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !27
  %62 = getelementptr inbounds %struct.rc_header_s, ptr %59, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !26
  tail call void %61(ptr noundef %63, ptr noundef %59, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %51, align 8, !tbaa !22
  br label %64

64:                                               ; preds = %50, %54, %58
  %65 = load ptr, ptr %22, align 8, !tbaa !22
  %66 = icmp eq ptr %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = load i64, ptr %65, align 8, !tbaa !23
  %69 = add nsw i64 %68, -1
  store i64 %69, ptr %65, align 8, !tbaa !23
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load ptr, ptr %22, align 8, !tbaa !22
  %73 = getelementptr inbounds %struct.rc_header_s, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !27
  %75 = getelementptr inbounds %struct.rc_header_s, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !26
  tail call void %74(ptr noundef %76, ptr noundef %72, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %22, align 8, !tbaa !22
  br label %77

77:                                               ; preds = %64, %67, %71
  %78 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 16
  %79 = load ptr, ptr %78, align 8, !tbaa !98
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = load i64, ptr %79, align 8, !tbaa !23
  %83 = add nsw i64 %82, -1
  store i64 %83, ptr %79, align 8, !tbaa !23
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.rc_header_s, ptr %79, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !27
  %88 = getelementptr inbounds %struct.rc_header_s, ptr %79, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !26
  tail call void %87(ptr noundef %89, ptr noundef nonnull %79, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %78, align 8, !tbaa !98
  br label %90

90:                                               ; preds = %77, %81, %85
  %91 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 15
  %92 = load ptr, ptr %91, align 8, !tbaa !99
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = load i64, ptr %92, align 8, !tbaa !23
  %96 = add nsw i64 %95, -1
  store i64 %96, ptr %92, align 8, !tbaa !23
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.rc_header_s, ptr %92, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !27
  %101 = getelementptr inbounds %struct.rc_header_s, ptr %92, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !26
  tail call void %100(ptr noundef %102, ptr noundef nonnull %92, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %91, align 8, !tbaa !99
  br label %103

103:                                              ; preds = %90, %94, %98
  %104 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 14
  %105 = load ptr, ptr %104, align 8, !tbaa !100
  %106 = icmp eq ptr %105, null
  br i1 %106, label %116, label %107

107:                                              ; preds = %103
  %108 = load i64, ptr %105, align 8, !tbaa !47
  %109 = add nsw i64 %108, -1
  store i64 %109, ptr %105, align 8, !tbaa !47
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.rc_header_s, ptr %105, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !57
  %114 = getelementptr inbounds %struct.rc_header_s, ptr %105, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !58
  tail call void %113(ptr noundef %115, ptr noundef nonnull %105, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %104, align 8, !tbaa !100
  br label %116

116:                                              ; preds = %111, %107, %103
  %117 = icmp eq ptr %4, null
  br i1 %117, label %143, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %4, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !101
  %121 = icmp eq i64 %120, 1
  br i1 %121, label %122, label %143

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 13
  %124 = load ptr, ptr %123, align 8, !tbaa !82
  %125 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %124, i64 0, i32 4, i32 11
  %126 = load ptr, ptr %125, align 8, !tbaa !105
  %127 = getelementptr inbounds %struct.gx_ht_order_s, ptr %4, i64 0, i32 11
  %128 = load ptr, ptr %127, align 8, !tbaa !107
  %129 = icmp eq ptr %126, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %124, i64 0, i32 4, i32 10
  %132 = load ptr, ptr %131, align 8, !tbaa !108
  %133 = getelementptr inbounds %struct.gx_ht_order_s, ptr %4, i64 0, i32 10
  %134 = load ptr, ptr %133, align 8, !tbaa !109
  %135 = icmp eq ptr %132, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130, %122
  %137 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %124, i64 0, i32 4, i32 10
  %138 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %124, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %137, i8 0, i64 16, i1 false)
  %139 = load ptr, ptr %138, align 8, !tbaa !110
  store ptr null, ptr %139, align 8, !tbaa !111
  br label %140

140:                                              ; preds = %136, %130
  %141 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %4, i64 0, i32 1, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !115
  tail call void @gx_device_halftone_release(ptr noundef nonnull %4, ptr noundef %142) #8
  br label %143

143:                                              ; preds = %116, %118, %140
  %144 = load ptr, ptr %3, align 8, !tbaa !81
  %145 = icmp eq ptr %144, null
  br i1 %145, label %156, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %144, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !101
  %149 = add nsw i64 %148, -1
  store i64 %149, ptr %147, align 8, !tbaa !101
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %144, i64 0, i32 1, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !116
  %154 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %144, i64 0, i32 1, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !115
  tail call void %153(ptr noundef %155, ptr noundef nonnull %144, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %3, align 8, !tbaa !81
  br label %156

156:                                              ; preds = %143, %146, %151
  %157 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 10
  %158 = load ptr, ptr %157, align 8, !tbaa !70
  %159 = icmp eq ptr %158, null
  br i1 %159, label %170, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.gs_halftone_s, ptr %158, i64 0, i32 1
  %162 = load i64, ptr %161, align 8, !tbaa !71
  %163 = add nsw i64 %162, -1
  store i64 %163, ptr %161, align 8, !tbaa !71
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.gs_halftone_s, ptr %158, i64 0, i32 1, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !74
  %168 = getelementptr inbounds %struct.gs_halftone_s, ptr %158, i64 0, i32 1, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !73
  tail call void %167(ptr noundef %169, ptr noundef nonnull %158, ptr noundef nonnull @gstate_free_contents.cname) #8
  store ptr null, ptr %157, align 8, !tbaa !70
  br label %170

170:                                              ; preds = %165, %160, %156
  %171 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %172 = load ptr, ptr %171, align 8, !tbaa !66
  %173 = load ptr, ptr %172, align 8, !tbaa !84
  %174 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %173, i64 0, i32 10
  %175 = load ptr, ptr %174, align 8, !tbaa !117
  %176 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %177 = load ptr, ptr %176, align 8, !tbaa !78
  %178 = load ptr, ptr %0, align 8, !tbaa !64
  tail call void %175(ptr noundef %177, ptr noundef nonnull %172, ptr noundef %178, i32 noundef -1) #8
  %179 = load ptr, ptr %171, align 8, !tbaa !66
  %180 = load ptr, ptr %179, align 8, !tbaa !84
  %181 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %180, i64 0, i32 9
  %182 = load ptr, ptr %181, align 8, !tbaa !119
  %183 = load ptr, ptr %0, align 8, !tbaa !64
  tail call void %182(ptr noundef nonnull %179, ptr noundef %183, i32 noundef -1) #8
  %184 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 44
  %185 = load ptr, ptr %184, align 8, !tbaa !83
  %186 = icmp eq ptr %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %170
  %188 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 45, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !120
  tail call void %189(ptr noundef nonnull %185, ptr noundef %2) #8
  br label %190

190:                                              ; preds = %187, %170
  %191 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 11
  %192 = load ptr, ptr %191, align 8, !tbaa !59
  %193 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7
  %194 = load ptr, ptr %193, align 8, !tbaa !60
  tail call void %192(ptr noundef %2, ptr noundef %194, ptr noundef nonnull @gstate_free_contents.cname) #8
  %195 = load ptr, ptr %191, align 8, !tbaa !59
  %196 = load ptr, ptr %171, align 8, !tbaa !66
  tail call void %195(ptr noundef %2, ptr noundef %196, ptr noundef nonnull @gstate_free_contents.cname) #8
  %197 = load ptr, ptr %191, align 8, !tbaa !59
  %198 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 23
  %199 = load ptr, ptr %198, align 8, !tbaa !65
  tail call void %197(ptr noundef %2, ptr noundef %199, ptr noundef nonnull @gstate_free_contents.cname) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_gsave(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = tail call fastcc ptr @gstate_clone(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  tail call void @gx_path_share(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  tail call void @gx_cpath_share(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 22
  store ptr %3, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 41
  store ptr %3, ptr %15, align 8, !tbaa !92
  store ptr %3, ptr %11, align 8, !tbaa !92
  br label %16

16:                                               ; preds = %14, %5
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 42
  %18 = load i32, ptr %17, align 8, !tbaa !93
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !93
  br label %20

20:                                               ; preds = %1, %16
  %21 = phi i32 [ 0, %16 ], [ -25, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gstate_clone(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = tail call ptr %10(ptr noundef %1, ptr noundef nonnull @st_gs_state, ptr noundef %2) #8
  %12 = load ptr, ptr %9, align 8, !tbaa !19
  %13 = tail call ptr %12(ptr noundef %1, ptr noundef nonnull @st_gs_state_contents, ptr noundef %2) #8
  %14 = load ptr, ptr %9, align 8, !tbaa !19
  %15 = tail call ptr %14(ptr noundef %1, ptr noundef nonnull @st_color_space, ptr noundef %2) #8
  %16 = icmp eq ptr %11, null
  %17 = icmp eq ptr %13, null
  %18 = select i1 %16, i1 true, i1 %17
  %19 = icmp eq ptr %15, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  tail call void %23(ptr noundef %1, ptr noundef %15, ptr noundef %2) #8
  %24 = load ptr, ptr %22, align 8, !tbaa !59
  tail call void %24(ptr noundef %1, ptr noundef %13, ptr noundef %2) #8
  %25 = load ptr, ptr %22, align 8, !tbaa !59
  tail call void %25(ptr noundef %1, ptr noundef %11, ptr noundef %2) #8
  br label %30

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.gs_state_s, ptr %11, i64 0, i32 1, i32 7
  store ptr null, ptr %27, align 8, !tbaa !60
  store ptr %1, ptr %11, align 8, !tbaa !64
  %28 = getelementptr inbounds %struct.gs_state_s, ptr %11, i64 0, i32 23
  store ptr %13, ptr %28, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %11, i64 0, i32 32
  store ptr %15, ptr %29, align 8, !tbaa !66
  br label %30

30:                                               ; preds = %21, %26
  %31 = phi ptr [ null, %21 ], [ %11, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %189, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 32
  %37 = load ptr, ptr %36, align 8, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %31, ptr noundef nonnull align 8 dereferenceable(584) %0, i64 584, i1 false), !tbaa.struct !121
  %38 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 1, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  store ptr null, ptr %38, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  %44 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !122
  %46 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7, i32 2
  %47 = load float, ptr %46, align 4, !tbaa !123
  %48 = fpext float %47 to double
  %49 = tail call i32 @gs_setdash(ptr noundef nonnull %31, ptr noundef %43, i32 noundef %45, double noundef %48) #8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %182, label %51

51:                                               ; preds = %41, %33
  %52 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 44
  %53 = load ptr, ptr %52, align 8, !tbaa !83
  %54 = icmp eq ptr %53, null
  br i1 %54, label %75, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 45
  %57 = load ptr, ptr %56, align 8, !tbaa !124
  %58 = tail call ptr %57(ptr noundef %1) #8
  store ptr %58, ptr %52, align 8, !tbaa !83
  %59 = icmp eq ptr %58, null
  br i1 %59, label %182, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 44
  %62 = load ptr, ptr %61, align 8, !tbaa !83
  %63 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 45, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !125
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = tail call i32 %64(ptr noundef nonnull %58, ptr noundef %62, i32 noundef %3) #8
  br label %72

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 45, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !126
  %71 = tail call i32 %70(ptr noundef nonnull %58, ptr noundef %62) #8
  br label %72

72:                                               ; preds = %66, %68
  %73 = phi i32 [ %67, %66 ], [ %71, %68 ]
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %182

75:                                               ; preds = %72, %51
  %76 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 17
  %77 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 17, i32 0, i64 3
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i64, ptr %78, align 8, !tbaa !23
  %82 = add nsw i64 %81, 1
  store i64 %82, ptr %78, align 8, !tbaa !23
  br label %83

83:                                               ; preds = %75, %80
  %84 = load ptr, ptr %76, align 8, !tbaa !22
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, ptr %84, align 8, !tbaa !23
  %88 = add nsw i64 %87, 1
  store i64 %88, ptr %84, align 8, !tbaa !23
  br label %89

89:                                               ; preds = %83, %86
  %90 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 17, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !22
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i64, ptr %91, align 8, !tbaa !23
  %95 = add nsw i64 %94, 1
  store i64 %95, ptr %91, align 8, !tbaa !23
  br label %96

96:                                               ; preds = %89, %93
  %97 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 17, i32 0, i64 2
  %98 = load ptr, ptr %97, align 8, !tbaa !22
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i64, ptr %98, align 8, !tbaa !23
  %102 = add nsw i64 %101, 1
  store i64 %102, ptr %98, align 8, !tbaa !23
  br label %103

103:                                              ; preds = %96, %100
  %104 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 10
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.gs_halftone_s, ptr %105, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !71
  %110 = add nsw i64 %109, 1
  store i64 %110, ptr %108, align 8, !tbaa !71
  br label %111

111:                                              ; preds = %103, %107
  %112 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 12
  %113 = load ptr, ptr %112, align 8, !tbaa !81
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %113, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !101
  %118 = add nsw i64 %117, 1
  store i64 %118, ptr %116, align 8, !tbaa !101
  br label %119

119:                                              ; preds = %111, %115
  %120 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 14
  %121 = load ptr, ptr %120, align 8, !tbaa !100
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i64, ptr %121, align 8, !tbaa !47
  %125 = add nsw i64 %124, 1
  store i64 %125, ptr %121, align 8, !tbaa !47
  br label %126

126:                                              ; preds = %119, %123
  %127 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 15
  %128 = load ptr, ptr %127, align 8, !tbaa !99
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load i64, ptr %128, align 8, !tbaa !23
  %132 = add nsw i64 %131, 1
  store i64 %132, ptr %128, align 8, !tbaa !23
  br label %133

133:                                              ; preds = %126, %130
  %134 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 16
  %135 = load ptr, ptr %134, align 8, !tbaa !98
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = load i64, ptr %135, align 8, !tbaa !23
  %139 = add nsw i64 %138, 1
  store i64 %139, ptr %135, align 8, !tbaa !23
  br label %140

140:                                              ; preds = %133, %137
  %141 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 19
  %142 = load ptr, ptr %141, align 8, !tbaa !97
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load i64, ptr %142, align 8, !tbaa !36
  %146 = add nsw i64 %145, 1
  store i64 %146, ptr %142, align 8, !tbaa !36
  br label %147

147:                                              ; preds = %144, %140
  %148 = icmp eq i32 %3, 0
  %149 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 28
  %150 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 29
  %151 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 33
  %152 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 34
  br i1 %148, label %153, label %164

153:                                              ; preds = %147
  store ptr %6, ptr %34, align 8, !tbaa !65
  store ptr %6, ptr %149, align 8, !tbaa !76
  %154 = getelementptr inbounds %struct.gs_state_contents_s, ptr %6, i64 0, i32 1
  store ptr %154, ptr %150, align 8, !tbaa !77
  %155 = getelementptr inbounds %struct.gs_state_contents_s, ptr %6, i64 0, i32 2
  store ptr %155, ptr %151, align 8, !tbaa !78
  %156 = getelementptr inbounds %struct.gs_state_contents_s, ptr %6, i64 0, i32 3
  store ptr %156, ptr %152, align 8, !tbaa !79
  store ptr %8, ptr %36, align 8, !tbaa !66
  store ptr %35, ptr %5, align 8, !tbaa !65
  %157 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  store ptr %35, ptr %157, align 8, !tbaa !76
  %158 = getelementptr inbounds %struct.gs_state_contents_s, ptr %35, i64 0, i32 1
  %159 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  store ptr %158, ptr %159, align 8, !tbaa !77
  %160 = getelementptr inbounds %struct.gs_state_contents_s, ptr %35, i64 0, i32 2
  %161 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  store ptr %160, ptr %161, align 8, !tbaa !78
  %162 = getelementptr inbounds %struct.gs_state_contents_s, ptr %35, i64 0, i32 3
  %163 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  store ptr %162, ptr %163, align 8, !tbaa !79
  br label %168

164:                                              ; preds = %147
  store ptr %35, ptr %34, align 8, !tbaa !65
  store ptr %35, ptr %149, align 8, !tbaa !76
  %165 = getelementptr inbounds %struct.gs_state_contents_s, ptr %35, i64 0, i32 1
  store ptr %165, ptr %150, align 8, !tbaa !77
  %166 = getelementptr inbounds %struct.gs_state_contents_s, ptr %35, i64 0, i32 2
  store ptr %166, ptr %151, align 8, !tbaa !78
  %167 = getelementptr inbounds %struct.gs_state_contents_s, ptr %35, i64 0, i32 3
  store ptr %167, ptr %152, align 8, !tbaa !79
  br label %168

168:                                              ; preds = %164, %153
  %169 = phi ptr [ %36, %164 ], [ %7, %153 ]
  store ptr %37, ptr %169, align 8, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %35, ptr noundef nonnull align 8 dereferenceable(528) %6, i64 528, i1 false), !tbaa.struct !127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false), !tbaa.struct !130
  %170 = load ptr, ptr %36, align 8, !tbaa !66
  %171 = load ptr, ptr %170, align 8, !tbaa !84
  %172 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %171, i64 0, i32 10
  %173 = load ptr, ptr %172, align 8, !tbaa !117
  %174 = getelementptr inbounds %struct.gs_state_s, ptr %31, i64 0, i32 33
  %175 = load ptr, ptr %174, align 8, !tbaa !78
  %176 = load ptr, ptr %31, align 8, !tbaa !64
  tail call void %173(ptr noundef %175, ptr noundef nonnull %170, ptr noundef %176, i32 noundef 1) #8
  %177 = load ptr, ptr %36, align 8, !tbaa !66
  %178 = load ptr, ptr %177, align 8, !tbaa !84
  %179 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %178, i64 0, i32 9
  %180 = load ptr, ptr %179, align 8, !tbaa !119
  %181 = load ptr, ptr %31, align 8, !tbaa !64
  tail call void %180(ptr noundef nonnull %177, ptr noundef %181, i32 noundef 1) #8
  br label %189

182:                                              ; preds = %55, %41, %72
  %183 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  %184 = load ptr, ptr %183, align 8, !tbaa !59
  %185 = load ptr, ptr %38, align 8, !tbaa !60
  tail call void %184(ptr noundef %1, ptr noundef %185, ptr noundef %2) #8
  %186 = load ptr, ptr %183, align 8, !tbaa !59
  tail call void %186(ptr noundef %1, ptr noundef %37, ptr noundef %2) #8
  %187 = load ptr, ptr %183, align 8, !tbaa !59
  tail call void %187(ptr noundef %1, ptr noundef %35, ptr noundef %2) #8
  %188 = load ptr, ptr %183, align 8, !tbaa !59
  tail call void %188(ptr noundef %1, ptr noundef nonnull %31, ptr noundef %2) #8
  br label %189

189:                                              ; preds = %30, %182, %168
  %190 = phi ptr [ null, %182 ], [ %31, %168 ], [ null, %30 ]
  ret ptr %190
}

declare void @gx_path_share(ptr noundef) local_unnamed_addr #1

declare void @gx_cpath_share(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_grestore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 44
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = icmp eq ptr %3, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !64
  %9 = tail call fastcc ptr @gstate_clone(ptr noundef nonnull %0, ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef 0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  tail call void @gx_path_share(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  tail call void @gx_cpath_share(ptr noundef %15) #8
  store ptr %9, ptr %2, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %68

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.gs_state_s, ptr %9, i64 0, i32 41
  store ptr %9, ptr %20, align 8, !tbaa !92
  store ptr %9, ptr %16, align 8, !tbaa !92
  br label %68

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 44
  %23 = load ptr, ptr %22, align 8, !tbaa !83
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 21
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 21
  %29 = load ptr, ptr %28, align 8, !tbaa !131
  store ptr %29, ptr %24, align 8, !tbaa !131
  br label %30

30:                                               ; preds = %27, %21
  store ptr %23, ptr %4, align 8, !tbaa !83
  store ptr %5, ptr %22, align 8, !tbaa !83
  %31 = icmp ne ptr %5, null
  %32 = icmp ne ptr %23, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 45, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !125
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i32 %36(ptr noundef nonnull %5, ptr noundef nonnull %23, i32 noundef 1) #8
  br label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 45, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !126
  %43 = tail call i32 %42(ptr noundef nonnull %5, ptr noundef nonnull %23) #8
  br label %44

44:                                               ; preds = %40, %38, %30
  tail call fastcc void @gstate_free_contents(ptr noundef %0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(584) %3, i64 584, i1 false), !tbaa.struct !121
  %45 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %46 = load ptr, ptr %45, align 8, !tbaa !92
  %47 = icmp eq ptr %46, %3
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store ptr %0, ptr %45, align 8, !tbaa !92
  br label %49

49:                                               ; preds = %48, %44
  %50 = load ptr, ptr %0, align 8, !tbaa !64
  %51 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %50, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  tail call void %52(ptr noundef %50, ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #8
  %53 = load ptr, ptr %2, align 8, !tbaa !75
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load ptr, ptr %0, align 8, !tbaa !64
  %57 = tail call fastcc ptr @gstate_clone(ptr noundef nonnull %0, ptr noundef %56, ptr noundef nonnull @.str.5, i32 noundef 0)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %61 = load ptr, ptr %60, align 8, !tbaa !76
  tail call void @gx_path_share(ptr noundef %61) #8
  %62 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %63 = load ptr, ptr %62, align 8, !tbaa !77
  tail call void @gx_cpath_share(ptr noundef %63) #8
  store ptr %57, ptr %2, align 8, !tbaa !75
  %64 = load ptr, ptr %45, align 8, !tbaa !92
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.gs_state_s, ptr %57, i64 0, i32 41
  store ptr %57, ptr %67, align 8, !tbaa !92
  store ptr %57, ptr %45, align 8, !tbaa !92
  br label %68

68:                                               ; preds = %59, %66, %11, %19
  %69 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 42
  %70 = load i32, ptr %69, align 8, !tbaa !93
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !93
  br label %72

72:                                               ; preds = %68, %55, %7, %49
  %73 = phi i32 [ 0, %49 ], [ -25, %7 ], [ -25, %55 ], [ 0, %68 ]
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_grestoreall(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !64
  %7 = tail call fastcc ptr @gstate_clone(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef 0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  tail call void @gx_path_share(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  tail call void @gx_cpath_share(ptr noundef %13) #8
  store ptr %7, ptr %2, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 41
  store ptr %7, ptr %18, align 8, !tbaa !92
  store ptr %7, ptr %14, align 8, !tbaa !92
  br label %19

19:                                               ; preds = %17, %9
  %20 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 42
  %21 = load i32, ptr %20, align 8, !tbaa !93
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !93
  br label %47

23:                                               ; preds = %1, %30
  %24 = phi i32 [ %32, %30 ], [ undef, %1 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.gs_state_s, ptr %25, i64 0, i32 22
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = icmp eq ptr %27, null
  %29 = tail call i32 @gs_grestore(ptr noundef %0), !range !132
  br i1 %28, label %33, label %30

30:                                               ; preds = %23
  %31 = icmp sgt i32 %29, -1
  %32 = select i1 %31, i32 %24, i32 %29
  br i1 %31, label %23, label %47, !llvm.loop !133

33:                                               ; preds = %23
  %34 = icmp slt i32 %29, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !82
  %38 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %37, i64 0, i32 4, i32 10
  %39 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %37, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  %40 = load ptr, ptr %39, align 8, !tbaa !110
  store ptr null, ptr %40, align 8, !tbaa !111
  %41 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 21
  %42 = load ptr, ptr %41, align 8, !tbaa !131
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.gx_pattern_cache_s, ptr %42, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !135
  tail call void %46(ptr noundef nonnull %42) #8
  br label %47

47:                                               ; preds = %30, %19, %5, %35, %44, %33
  %48 = phi i32 [ %29, %33 ], [ %29, %44 ], [ %29, %35 ], [ 0, %19 ], [ -25, %5 ], [ %32, %30 ]
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_gstate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  tail call fastcc void @gstate_share_paths(ptr noundef nonnull %0)
  %3 = tail call fastcc ptr @gstate_clone(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 22
  store ptr null, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = icmp eq ptr %8, %0
  %10 = select i1 %9, ptr %3, ptr null
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 41
  store ptr %10, ptr %11, align 8, !tbaa !92
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi ptr [ %3, %5 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_state_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @gstate_share_paths(ptr noundef %0)
  %3 = tail call fastcc ptr @gstate_clone(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef 2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 22
  store ptr null, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = icmp eq ptr %8, %0
  %10 = select i1 %9, ptr %3, ptr null
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 41
  store ptr %10, ptr %11, align 8, !tbaa !92
  br label %12

12:                                               ; preds = %2, %5
  %13 = phi ptr [ %3, %5 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gstate_share_paths(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %3, i64 0, i32 13
  %7 = load i8, ptr %6, align 1, !tbaa !137
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  br label %12

12:                                               ; preds = %23, %9
  %13 = phi ptr [ %0, %9 ], [ %15, %23 ]
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %13, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %15, i64 0, i32 28
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.gx_path_s, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !141
  %22 = icmp eq ptr %21, %11
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.gx_path_s, ptr %19, i64 0, i32 13
  %25 = load i8, ptr %24, align 1, !tbaa !137
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %12, !llvm.loop !142

27:                                               ; preds = %23, %1
  %28 = phi ptr [ %3, %1 ], [ %19, %23 ]
  tail call void @gx_path_share(ptr noundef %28) #8
  br label %29

29:                                               ; preds = %17, %12, %27
  %30 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 4, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !143
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 5
  %35 = load i8, ptr %34, align 8, !tbaa !147
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gx_path_release(ptr noundef %5) #8
  store i8 0, ptr %34, align 8, !tbaa !147
  br label %38

38:                                               ; preds = %37, %33, %29
  %39 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 13
  %40 = load i8, ptr %39, align 1, !tbaa !148
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !149
  br label %45

45:                                               ; preds = %56, %42
  %46 = phi ptr [ %0, %42 ], [ %48, %56 ]
  %47 = getelementptr inbounds %struct.gs_state_s, ptr %46, i64 0, i32 22
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  %49 = icmp eq ptr %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.gs_state_s, ptr %48, i64 0, i32 29
  %52 = load ptr, ptr %51, align 8, !tbaa !77
  %53 = getelementptr inbounds %struct.gx_path_s, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !149
  %55 = icmp eq ptr %54, %44
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.gx_path_s, ptr %52, i64 0, i32 13
  %58 = load i8, ptr %57, align 1, !tbaa !148
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %45, !llvm.loop !150

60:                                               ; preds = %56
  tail call void @gx_cpath_share(ptr noundef %52) #8
  br label %61

61:                                               ; preds = %50, %45, %60, %38
  %62 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 6
  %63 = load i8, ptr %62, align 1, !tbaa !151
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 4, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !152
  br label %68

68:                                               ; preds = %79, %65
  %69 = phi ptr [ %0, %65 ], [ %71, %79 ]
  %70 = getelementptr inbounds %struct.gs_state_s, ptr %69, i64 0, i32 22
  %71 = load ptr, ptr %70, align 8, !tbaa !75
  %72 = icmp eq ptr %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.gs_state_s, ptr %71, i64 0, i32 29
  %75 = load ptr, ptr %74, align 8, !tbaa !77
  %76 = getelementptr inbounds %struct.gx_clip_path_s, ptr %75, i64 0, i32 4, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !152
  %78 = icmp eq ptr %77, %67
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.gx_clip_path_s, ptr %75, i64 0, i32 6
  %81 = load i8, ptr %80, align 1, !tbaa !151
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %68, !llvm.loop !153

83:                                               ; preds = %79
  tail call void @gx_cpath_share(ptr noundef %75) #8
  br label %84

84:                                               ; preds = %73, %68, %83, %61
  tail call void @gx_cpath_share(ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_copygstate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @gstate_copy(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.8)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gstate_copy(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 1, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12, %4
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 1, i32 7, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !122
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 1, i32 7, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !123
  %21 = fpext float %20 to double
  %22 = tail call i32 @gs_setdash(ptr noundef %0, ptr noundef %10, i32 noundef %18, double noundef %21) #8
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %332

24:                                               ; preds = %16, %12
  %25 = load ptr, ptr %7, align 8, !tbaa !66
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %26, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = load ptr, ptr %0, align 8, !tbaa !64
  tail call void %28(ptr noundef %30, ptr noundef nonnull %25, ptr noundef %31, i32 noundef -1) #8
  %32 = load ptr, ptr %7, align 8, !tbaa !66
  %33 = load ptr, ptr %32, align 8, !tbaa !84
  %34 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %33, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !119
  %36 = load ptr, ptr %0, align 8, !tbaa !64
  tail call void %35(ptr noundef nonnull %32, ptr noundef %36, i32 noundef -1) #8
  %37 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  tail call void @gx_path_release(ptr noundef %38) #8
  %39 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  tail call void @gx_cpath_release(ptr noundef %40) #8
  %41 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 23
  %42 = load ptr, ptr %41, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %6, ptr noundef nonnull align 8 dereferenceable(528) %42, i64 528, i1 false), !tbaa.struct !127
  %43 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 32
  %44 = load ptr, ptr %43, align 8, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %44, i64 72, i1 false), !tbaa.struct !130
  %45 = load ptr, ptr %7, align 8, !tbaa !66
  %46 = load ptr, ptr %45, align 8, !tbaa !84
  %47 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %46, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !117
  %49 = load ptr, ptr %29, align 8, !tbaa !78
  %50 = load ptr, ptr %0, align 8, !tbaa !64
  tail call void %48(ptr noundef %49, ptr noundef nonnull %45, ptr noundef %50, i32 noundef 1) #8
  %51 = load ptr, ptr %7, align 8, !tbaa !66
  %52 = load ptr, ptr %51, align 8, !tbaa !84
  %53 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %52, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !119
  %55 = load ptr, ptr %0, align 8, !tbaa !64
  tail call void %54(ptr noundef nonnull %51, ptr noundef %55, i32 noundef 1) #8
  %56 = load ptr, ptr %37, align 8, !tbaa !76
  tail call void @gx_path_share(ptr noundef %56) #8
  %57 = load ptr, ptr %39, align 8, !tbaa !77
  tail call void @gx_cpath_share(ptr noundef %57) #8
  %58 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !97
  %60 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !97
  %62 = icmp eq ptr %59, %61
  br i1 %62, label %80, label %63

63:                                               ; preds = %24
  %64 = icmp eq ptr %59, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %63
  %66 = load i64, ptr %59, align 8, !tbaa !36
  %67 = add nsw i64 %66, -1
  store i64 %67, ptr %59, align 8, !tbaa !36
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rc_header_s, ptr %59, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  %72 = getelementptr inbounds %struct.rc_header_s, ptr %59, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !43
  tail call void %71(ptr noundef %73, ptr noundef nonnull %59, ptr noundef %3) #8
  br label %74

74:                                               ; preds = %63, %65, %69
  %75 = load ptr, ptr %60, align 8, !tbaa !97
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i64, ptr %75, align 8, !tbaa !36
  %79 = add nsw i64 %78, 1
  store i64 %79, ptr %75, align 8, !tbaa !36
  br label %80

80:                                               ; preds = %24, %77, %74
  %81 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17
  %82 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  %83 = load ptr, ptr %82, align 8, !tbaa !22
  %84 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 17
  %85 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 17, i32 0, i64 3
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = icmp eq ptr %83, %86
  br i1 %87, label %106, label %88

88:                                               ; preds = %80
  %89 = icmp eq ptr %83, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %88
  %91 = load i64, ptr %83, align 8, !tbaa !23
  %92 = add nsw i64 %91, -1
  store i64 %92, ptr %83, align 8, !tbaa !23
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load ptr, ptr %82, align 8, !tbaa !22
  %96 = getelementptr inbounds %struct.rc_header_s, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !27
  %98 = getelementptr inbounds %struct.rc_header_s, ptr %95, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !26
  tail call void %97(ptr noundef %99, ptr noundef %95, ptr noundef %3) #8
  br label %100

100:                                              ; preds = %88, %90, %94
  %101 = load ptr, ptr %85, align 8, !tbaa !22
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i64, ptr %101, align 8, !tbaa !23
  %105 = add nsw i64 %104, 1
  store i64 %105, ptr %101, align 8, !tbaa !23
  br label %106

106:                                              ; preds = %80, %103, %100
  %107 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 2
  %108 = load ptr, ptr %107, align 8, !tbaa !22
  %109 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 17, i32 0, i64 2
  %110 = load ptr, ptr %109, align 8, !tbaa !22
  %111 = icmp eq ptr %108, %110
  br i1 %111, label %130, label %112

112:                                              ; preds = %106
  %113 = icmp eq ptr %108, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %112
  %115 = load i64, ptr %108, align 8, !tbaa !23
  %116 = add nsw i64 %115, -1
  store i64 %116, ptr %108, align 8, !tbaa !23
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load ptr, ptr %107, align 8, !tbaa !22
  %120 = getelementptr inbounds %struct.rc_header_s, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !27
  %122 = getelementptr inbounds %struct.rc_header_s, ptr %119, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !26
  tail call void %121(ptr noundef %123, ptr noundef %119, ptr noundef %3) #8
  br label %124

124:                                              ; preds = %112, %114, %118
  %125 = load ptr, ptr %109, align 8, !tbaa !22
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i64, ptr %125, align 8, !tbaa !23
  %129 = add nsw i64 %128, 1
  store i64 %129, ptr %125, align 8, !tbaa !23
  br label %130

130:                                              ; preds = %106, %127, %124
  %131 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !22
  %133 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 17, i32 0, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !22
  %135 = icmp eq ptr %132, %134
  br i1 %135, label %154, label %136

136:                                              ; preds = %130
  %137 = icmp eq ptr %132, null
  br i1 %137, label %148, label %138

138:                                              ; preds = %136
  %139 = load i64, ptr %132, align 8, !tbaa !23
  %140 = add nsw i64 %139, -1
  store i64 %140, ptr %132, align 8, !tbaa !23
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load ptr, ptr %131, align 8, !tbaa !22
  %144 = getelementptr inbounds %struct.rc_header_s, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !27
  %146 = getelementptr inbounds %struct.rc_header_s, ptr %143, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !26
  tail call void %145(ptr noundef %147, ptr noundef %143, ptr noundef %3) #8
  br label %148

148:                                              ; preds = %136, %138, %142
  %149 = load ptr, ptr %133, align 8, !tbaa !22
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i64, ptr %149, align 8, !tbaa !23
  %153 = add nsw i64 %152, 1
  store i64 %153, ptr %149, align 8, !tbaa !23
  br label %154

154:                                              ; preds = %130, %151, %148
  %155 = load ptr, ptr %81, align 8, !tbaa !22
  %156 = load ptr, ptr %84, align 8, !tbaa !22
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %176, label %158

158:                                              ; preds = %154
  %159 = icmp eq ptr %155, null
  br i1 %159, label %170, label %160

160:                                              ; preds = %158
  %161 = load i64, ptr %155, align 8, !tbaa !23
  %162 = add nsw i64 %161, -1
  store i64 %162, ptr %155, align 8, !tbaa !23
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load ptr, ptr %81, align 8, !tbaa !22
  %166 = getelementptr inbounds %struct.rc_header_s, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !27
  %168 = getelementptr inbounds %struct.rc_header_s, ptr %165, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !26
  tail call void %167(ptr noundef %169, ptr noundef %165, ptr noundef %3) #8
  br label %170

170:                                              ; preds = %158, %160, %164
  %171 = load ptr, ptr %84, align 8, !tbaa !22
  %172 = icmp eq ptr %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i64, ptr %171, align 8, !tbaa !23
  %175 = add nsw i64 %174, 1
  store i64 %175, ptr %171, align 8, !tbaa !23
  br label %176

176:                                              ; preds = %154, %173, %170
  %177 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 16
  %178 = load ptr, ptr %177, align 8, !tbaa !98
  %179 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 16
  %180 = load ptr, ptr %179, align 8, !tbaa !98
  %181 = icmp eq ptr %178, %180
  br i1 %181, label %199, label %182

182:                                              ; preds = %176
  %183 = icmp eq ptr %178, null
  br i1 %183, label %193, label %184

184:                                              ; preds = %182
  %185 = load i64, ptr %178, align 8, !tbaa !23
  %186 = add nsw i64 %185, -1
  store i64 %186, ptr %178, align 8, !tbaa !23
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.rc_header_s, ptr %178, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !27
  %191 = getelementptr inbounds %struct.rc_header_s, ptr %178, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !26
  tail call void %190(ptr noundef %192, ptr noundef nonnull %178, ptr noundef %3) #8
  br label %193

193:                                              ; preds = %182, %184, %188
  %194 = load ptr, ptr %179, align 8, !tbaa !98
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i64, ptr %194, align 8, !tbaa !23
  %198 = add nsw i64 %197, 1
  store i64 %198, ptr %194, align 8, !tbaa !23
  br label %199

199:                                              ; preds = %176, %196, %193
  %200 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 15
  %201 = load ptr, ptr %200, align 8, !tbaa !99
  %202 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 15
  %203 = load ptr, ptr %202, align 8, !tbaa !99
  %204 = icmp eq ptr %201, %203
  br i1 %204, label %222, label %205

205:                                              ; preds = %199
  %206 = icmp eq ptr %201, null
  br i1 %206, label %216, label %207

207:                                              ; preds = %205
  %208 = load i64, ptr %201, align 8, !tbaa !23
  %209 = add nsw i64 %208, -1
  store i64 %209, ptr %201, align 8, !tbaa !23
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.rc_header_s, ptr %201, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !27
  %214 = getelementptr inbounds %struct.rc_header_s, ptr %201, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !26
  tail call void %213(ptr noundef %215, ptr noundef nonnull %201, ptr noundef %3) #8
  br label %216

216:                                              ; preds = %205, %207, %211
  %217 = load ptr, ptr %202, align 8, !tbaa !99
  %218 = icmp eq ptr %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i64, ptr %217, align 8, !tbaa !23
  %221 = add nsw i64 %220, 1
  store i64 %221, ptr %217, align 8, !tbaa !23
  br label %222

222:                                              ; preds = %199, %219, %216
  %223 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 14
  %224 = load ptr, ptr %223, align 8, !tbaa !100
  %225 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 14
  %226 = load ptr, ptr %225, align 8, !tbaa !100
  %227 = icmp eq ptr %224, %226
  br i1 %227, label %245, label %228

228:                                              ; preds = %222
  %229 = icmp eq ptr %224, null
  br i1 %229, label %239, label %230

230:                                              ; preds = %228
  %231 = load i64, ptr %224, align 8, !tbaa !47
  %232 = add nsw i64 %231, -1
  store i64 %232, ptr %224, align 8, !tbaa !47
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.rc_header_s, ptr %224, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !57
  %237 = getelementptr inbounds %struct.rc_header_s, ptr %224, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !58
  tail call void %236(ptr noundef %238, ptr noundef nonnull %224, ptr noundef %3) #8
  br label %239

239:                                              ; preds = %228, %230, %234
  %240 = load ptr, ptr %225, align 8, !tbaa !100
  %241 = icmp eq ptr %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load i64, ptr %240, align 8, !tbaa !47
  %244 = add nsw i64 %243, 1
  store i64 %244, ptr %240, align 8, !tbaa !47
  br label %245

245:                                              ; preds = %222, %242, %239
  %246 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 12
  %247 = load ptr, ptr %246, align 8, !tbaa !81
  %248 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 12
  %249 = load ptr, ptr %248, align 8, !tbaa !81
  %250 = icmp eq ptr %247, %249
  br i1 %250, label %270, label %251

251:                                              ; preds = %245
  %252 = icmp eq ptr %247, null
  br i1 %252, label %263, label %253

253:                                              ; preds = %251
  %254 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %247, i64 0, i32 1
  %255 = load i64, ptr %254, align 8, !tbaa !101
  %256 = add nsw i64 %255, -1
  store i64 %256, ptr %254, align 8, !tbaa !101
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %247, i64 0, i32 1, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !116
  %261 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %247, i64 0, i32 1, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !115
  tail call void %260(ptr noundef %262, ptr noundef nonnull %247, ptr noundef %3) #8
  br label %263

263:                                              ; preds = %251, %253, %258
  %264 = load ptr, ptr %248, align 8, !tbaa !81
  %265 = icmp eq ptr %264, null
  br i1 %265, label %270, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %264, i64 0, i32 1
  %268 = load i64, ptr %267, align 8, !tbaa !101
  %269 = add nsw i64 %268, 1
  store i64 %269, ptr %267, align 8, !tbaa !101
  br label %270

270:                                              ; preds = %245, %266, %263
  %271 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 10
  %272 = load ptr, ptr %271, align 8, !tbaa !70
  %273 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 10
  %274 = load ptr, ptr %273, align 8, !tbaa !70
  %275 = icmp eq ptr %272, %274
  br i1 %275, label %295, label %276

276:                                              ; preds = %270
  %277 = icmp eq ptr %272, null
  br i1 %277, label %288, label %278

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct.gs_halftone_s, ptr %272, i64 0, i32 1
  %280 = load i64, ptr %279, align 8, !tbaa !71
  %281 = add nsw i64 %280, -1
  store i64 %281, ptr %279, align 8, !tbaa !71
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.gs_halftone_s, ptr %272, i64 0, i32 1, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !74
  %286 = getelementptr inbounds %struct.gs_halftone_s, ptr %272, i64 0, i32 1, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !73
  tail call void %285(ptr noundef %287, ptr noundef nonnull %272, ptr noundef %3) #8
  br label %288

288:                                              ; preds = %276, %278, %283
  %289 = load ptr, ptr %273, align 8, !tbaa !70
  %290 = icmp eq ptr %289, null
  br i1 %290, label %295, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.gs_halftone_s, ptr %289, i64 0, i32 1
  %293 = load i64, ptr %292, align 8, !tbaa !71
  %294 = add nsw i64 %293, 1
  store i64 %294, ptr %292, align 8, !tbaa !71
  br label %295

295:                                              ; preds = %288, %291, %270
  %296 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 21
  %297 = load ptr, ptr %296, align 8, !tbaa !131
  %298 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 44
  %299 = load ptr, ptr %298, align 8, !tbaa !83
  %300 = load ptr, ptr %0, align 8, !tbaa !64
  %301 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 22
  %302 = load ptr, ptr %301, align 8, !tbaa !75
  %303 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7
  %304 = load ptr, ptr %303, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(584) %1, i64 584, i1 false), !tbaa.struct !121
  store ptr %299, ptr %298, align 8, !tbaa !83
  store ptr %300, ptr %0, align 8, !tbaa !64
  store ptr %302, ptr %301, align 8, !tbaa !75
  store ptr %304, ptr %303, align 8, !tbaa !60
  %305 = load ptr, ptr %296, align 8, !tbaa !131
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %308

307:                                              ; preds = %295
  store ptr %297, ptr %296, align 8, !tbaa !131
  br label %308

308:                                              ; preds = %307, %295
  %309 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 44
  %310 = load ptr, ptr %309, align 8, !tbaa !83
  %311 = icmp eq ptr %310, null
  br i1 %311, label %322, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 45, i32 3
  %314 = load ptr, ptr %313, align 8, !tbaa !125
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %312
  %317 = tail call i32 %314(ptr noundef %299, ptr noundef nonnull %310, i32 noundef %2) #8
  br label %322

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 45, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !126
  %321 = tail call i32 %320(ptr noundef %299, ptr noundef nonnull %310) #8
  br label %322

322:                                              ; preds = %318, %316, %308
  store ptr %6, ptr %5, align 8, !tbaa !65
  store ptr %6, ptr %37, align 8, !tbaa !76
  %323 = getelementptr inbounds %struct.gs_state_contents_s, ptr %6, i64 0, i32 1
  store ptr %323, ptr %39, align 8, !tbaa !77
  %324 = getelementptr inbounds %struct.gs_state_contents_s, ptr %6, i64 0, i32 2
  store ptr %324, ptr %29, align 8, !tbaa !78
  %325 = getelementptr inbounds %struct.gs_state_contents_s, ptr %6, i64 0, i32 3
  %326 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  store ptr %325, ptr %326, align 8, !tbaa !79
  store ptr %8, ptr %7, align 8, !tbaa !66
  %327 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 41
  %328 = load ptr, ptr %327, align 8, !tbaa !92
  %329 = icmp eq ptr %328, %1
  %330 = select i1 %329, ptr %0, ptr null
  %331 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  store ptr %330, ptr %331, align 8, !tbaa !92
  br label %332

332:                                              ; preds = %16, %322
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_currentgstate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @gstate_share_paths(ptr noundef %1)
  tail call fastcc void @gstate_copy(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.9)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setgstate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 42
  %6 = load i32, ptr %5, align 8, !tbaa !93
  tail call fastcc void @gstate_copy(ptr noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.10)
  store i32 %6, ptr %5, align 8, !tbaa !93
  %7 = load ptr, ptr %3, align 8, !tbaa !92
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %0, ptr %4
  store ptr %9, ptr %3, align 8, !tbaa !92
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_state_memory(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_state_saved(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @gs_state_swap_saved(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  store ptr %1, ptr %3, align 8, !tbaa !75
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @gs_state_swap_memory(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !64
  store ptr %1, ptr %0, align 8, !tbaa !64
  ret ptr %3
}

declare i32 @gs_initmatrix(ptr noundef) local_unnamed_addr #1

declare i32 @gs_newpath(ptr noundef) local_unnamed_addr #1

declare i32 @gs_initclip(ptr noundef) local_unnamed_addr #1

declare i32 @gs_setlinewidth(ptr noundef, double noundef) local_unnamed_addr #1

declare i32 @gs_setlinecap(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_setlinejoin(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_setdash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare void @gs_setdashadapt(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_setdotlength(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_setgray(ptr noundef, double noundef) local_unnamed_addr #1

declare i32 @gs_setmiterlimit(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_currentfilladjust(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !87
  %5 = sitofp i64 %4 to double
  %6 = fmul double %5, 0x3F30000000000000
  store double %6, ptr %1, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !88
  %9 = sitofp i64 %8 to double
  %10 = fmul double %9, 0x3F30000000000000
  %11 = getelementptr inbounds %struct.gs_point_s, ptr %1, i64 0, i32 1
  store double %10, ptr %11, align 8, !tbaa !155
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentlimitclamp(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 31
  %3 = load i32, ptr %2, align 4, !tbaa !89
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @gs_state_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %83 [
    i32 0, label %56
    i32 1, label %59
    i32 2, label %62
    i32 3, label %65
    i32 4, label %68
    i32 5, label %71
    i32 6, label %74
    i32 7, label %77
    i32 8, label %8
    i32 9, label %11
    i32 10, label %14
    i32 11, label %17
    i32 12, label %20
    i32 13, label %23
    i32 14, label %26
    i32 15, label %29
    i32 16, label %32
    i32 17, label %35
    i32 18, label %38
    i32 19, label %41
    i32 20, label %44
    i32 21, label %47
    i32 22, label %50
    i32 23, label %53
    i32 24, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 1, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  br label %81

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  br label %81

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !158
  br label %81

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  br label %81

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  br label %81

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  br label %81

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  br label %81

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  br label %81

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  br label %81

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  br label %81

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  br label %81

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  br label %81

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  br label %81

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !22
  br label %81

47:                                               ; preds = %4
  %48 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 3
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  br label %81

50:                                               ; preds = %4
  %51 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !33
  br label %81

53:                                               ; preds = %4
  %54 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 21
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  br label %81

56:                                               ; preds = %4
  %57 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 22
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  br label %81

59:                                               ; preds = %4
  %60 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 23
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  br label %81

62:                                               ; preds = %4
  %63 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %64 = load ptr, ptr %63, align 8, !tbaa !66
  br label %81

65:                                               ; preds = %4
  %66 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 35
  %67 = load ptr, ptr %66, align 8, !tbaa !160
  br label %81

68:                                               ; preds = %4
  %69 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 36
  %70 = load ptr, ptr %69, align 8, !tbaa !161
  br label %81

71:                                               ; preds = %4
  %72 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %73 = load ptr, ptr %72, align 8, !tbaa !92
  br label %81

74:                                               ; preds = %4
  %75 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 44
  %76 = load ptr, ptr %75, align 8, !tbaa !83
  br label %81

77:                                               ; preds = %4
  %78 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %79 = load ptr, ptr %78, align 8, !tbaa !162
  %80 = tail call ptr @gx_device_enum_ptr(ptr noundef %79) #8
  br label %81

81:                                               ; preds = %77, %74, %71, %68, %65, %62, %59, %56, %5, %8, %11, %14, %17, %20, %23, %26, %29, %32, %35, %38, %41, %44, %47, %50, %53
  %82 = phi ptr [ %55, %53 ], [ %52, %50 ], [ %49, %47 ], [ %46, %44 ], [ %43, %41 ], [ %40, %38 ], [ %37, %35 ], [ %34, %32 ], [ %31, %29 ], [ %28, %26 ], [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ], [ %7, %5 ], [ %58, %56 ], [ %61, %59 ], [ %64, %62 ], [ %67, %65 ], [ %70, %68 ], [ %73, %71 ], [ %76, %74 ], [ %80, %77 ]
  store ptr %82, ptr %3, align 8, !tbaa !32
  br label %83

83:                                               ; preds = %81, %4
  %84 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %81 ]
  ret ptr %84
}

; Function Attrs: nounwind uwtable
define internal void @gs_state_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 1, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #8
  store ptr %6, ptr %4, align 8, !tbaa !156
  %7 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #8
  store ptr %9, ptr %7, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #8
  store ptr %12, ptr %10, align 8, !tbaa !158
  %13 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #8
  store ptr %15, ptr %13, align 8, !tbaa !159
  %16 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %17, ptr noundef %2) #8
  store ptr %18, ptr %16, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %20, ptr noundef %2) #8
  store ptr %21, ptr %19, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %23, ptr noundef %2) #8
  store ptr %24, ptr %22, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %26, ptr noundef %2) #8
  store ptr %27, ptr %25, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %29, ptr noundef %2) #8
  store ptr %30, ptr %28, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %32, ptr noundef %2) #8
  store ptr %33, ptr %31, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %35, ptr noundef %2) #8
  store ptr %36, ptr %34, align 8, !tbaa !22
  %37 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %38, ptr noundef %2) #8
  store ptr %39, ptr %37, align 8, !tbaa !22
  %40 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %41, ptr noundef %2) #8
  store ptr %42, ptr %40, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %44, ptr noundef %2) #8
  store ptr %45, ptr %43, align 8, !tbaa !22
  %46 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 3
  %47 = load ptr, ptr %46, align 8, !tbaa !22
  %48 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %47, ptr noundef %2) #8
  store ptr %48, ptr %46, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !33
  %51 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %50, ptr noundef %2) #8
  store ptr %51, ptr %49, align 8, !tbaa !33
  %52 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 21
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %53, ptr noundef %2) #8
  store ptr %54, ptr %52, align 8, !tbaa !35
  %55 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 23
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 22
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  %59 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %58, ptr noundef %2) #8
  store ptr %59, ptr %57, align 8, !tbaa !75
  %60 = load ptr, ptr %55, align 8, !tbaa !65
  %61 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %60, ptr noundef %2) #8
  store ptr %61, ptr %55, align 8, !tbaa !65
  %62 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  %64 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %63, ptr noundef %2) #8
  store ptr %64, ptr %62, align 8, !tbaa !66
  %65 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 35
  %66 = load ptr, ptr %65, align 8, !tbaa !160
  %67 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %66, ptr noundef %2) #8
  store ptr %67, ptr %65, align 8, !tbaa !160
  %68 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 36
  %69 = load ptr, ptr %68, align 8, !tbaa !161
  %70 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %69, ptr noundef %2) #8
  store ptr %70, ptr %68, align 8, !tbaa !161
  %71 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %72 = load ptr, ptr %71, align 8, !tbaa !92
  %73 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %72, ptr noundef %2) #8
  store ptr %73, ptr %71, align 8, !tbaa !92
  %74 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 44
  %75 = load ptr, ptr %74, align 8, !tbaa !83
  %76 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %75, ptr noundef %2) #8
  store ptr %76, ptr %74, align 8, !tbaa !83
  %77 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %78 = load ptr, ptr %77, align 8, !tbaa !162
  %79 = tail call ptr @gx_device_reloc_ptr(ptr noundef %78, ptr noundef %2) #8
  store ptr %79, ptr %77, align 8, !tbaa !162
  %80 = load ptr, ptr %55, align 8, !tbaa !65
  %81 = ptrtoint ptr %56 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %82, %81
  %84 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %85 = load ptr, ptr %84, align 8, !tbaa !76
  %86 = getelementptr inbounds i8, ptr %85, i64 %83
  store ptr %86, ptr %84, align 8, !tbaa !76
  %87 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %88 = load ptr, ptr %87, align 8, !tbaa !77
  %89 = getelementptr inbounds i8, ptr %88, i64 %83
  store ptr %89, ptr %87, align 8, !tbaa !77
  %90 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %91 = load ptr, ptr %90, align 8, !tbaa !78
  %92 = getelementptr inbounds i8, ptr %91, i64 %83
  store ptr %92, ptr %90, align 8, !tbaa !78
  %93 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %94 = load ptr, ptr %93, align 8, !tbaa !79
  %95 = getelementptr inbounds i8, ptr %94, i64 %83
  store ptr %95, ptr %93, align 8, !tbaa !79
  ret void
}

declare ptr @gx_device_enum_ptr(ptr noundef) local_unnamed_addr #1

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gx_device_reloc_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @state_contents_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp ult i32 %2, 3
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_path, i64 0, i32 4), align 8, !tbaa !163
  %8 = tail call ptr %7(ptr noundef %0, i32 noundef 128, i32 noundef %2, ptr noundef %3) #8
  br label %27

9:                                                ; preds = %4
  %10 = add i32 %2, -3
  %11 = icmp ult i32 %10, 5
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_clip_path, i64 0, i32 4), align 8, !tbaa !163
  %14 = getelementptr inbounds %struct.gs_state_contents_s, ptr %0, i64 0, i32 1
  %15 = tail call ptr %13(ptr noundef nonnull %14, i32 noundef 280, i32 noundef %10, ptr noundef %3) #8
  br label %27

16:                                               ; preds = %9
  %17 = icmp eq i32 %2, 8
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_client_color, i64 0, i32 4), align 8, !tbaa !163
  %20 = getelementptr inbounds %struct.gs_state_contents_s, ptr %0, i64 0, i32 2
  %21 = tail call ptr %19(ptr noundef nonnull %20, i32 noundef 24, i32 noundef 0, ptr noundef %3) #8
  br label %27

22:                                               ; preds = %16
  %23 = add i32 %2, -9
  %24 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_color, i64 0, i32 4), align 8, !tbaa !163
  %25 = getelementptr inbounds %struct.gs_state_contents_s, ptr %0, i64 0, i32 3
  %26 = tail call ptr %24(ptr noundef nonnull %25, i32 noundef 96, i32 noundef %23, ptr noundef %3) #8
  br label %31

27:                                               ; preds = %18, %12, %6
  %28 = phi ptr [ %8, %6 ], [ %15, %12 ], [ %21, %18 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store ptr null, ptr %3, align 8, !tbaa !32
  br label %31

31:                                               ; preds = %27, %30, %22
  %32 = phi ptr [ @ptr_struct_procs, %30 ], [ %26, %22 ], [ %28, %27 ]
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define internal void @state_contents_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_path, i64 0, i32 5), align 8, !tbaa !165
  tail call void %4(ptr noundef %0, i32 noundef 128, ptr noundef %2) #8
  %5 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_clip_path, i64 0, i32 5), align 8, !tbaa !165
  %6 = getelementptr inbounds %struct.gs_state_contents_s, ptr %0, i64 0, i32 1
  tail call void %5(ptr noundef nonnull %6, i32 noundef 280, ptr noundef %2) #8
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_client_color, i64 0, i32 5), align 8, !tbaa !165
  %8 = getelementptr inbounds %struct.gs_state_contents_s, ptr %0, i64 0, i32 2
  tail call void %7(ptr noundef nonnull %8, i32 noundef 24, ptr noundef %2) #8
  %9 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_color, i64 0, i32 5), align 8, !tbaa !165
  %10 = getelementptr inbounds %struct.gs_state_contents_s, ptr %0, i64 0, i32 3
  tail call void %9(ptr noundef nonnull %10, i32 noundef 96, ptr noundef %2) #8
  ret void
}

declare void @gx_path_release(ptr noundef) local_unnamed_addr #1

declare void @gx_cpath_release(ptr noundef) local_unnamed_addr #1

declare void @gx_device_halftone_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_imager_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
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
!18 = !{!12, !12, i64 0}
!19 = !{!20, !7, i64 16}
!20 = !{!"gs_memory_s", !21, i64 0}
!21 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!22 = !{!8, !8, i64 0}
!23 = !{!24, !15, i64 0}
!24 = !{!"gx_transfer_map_s", !25, i64 0, !7, i64 24, !15, i64 32, !8, i64 40}
!25 = !{!"rc_header_s", !15, i64 0, !7, i64 8, !7, i64 16}
!26 = !{!24, !7, i64 8}
!27 = !{!24, !7, i64 16}
!28 = !{!24, !7, i64 24}
!29 = !{!24, !15, i64 32}
!30 = !{!16, !16, i64 0}
!31 = !{i64 0, i64 32, !22, i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32, i64 24, i64 8, !32}
!32 = !{!7, !7, i64 0}
!33 = !{!6, !7, i64 296}
!34 = !{!6, !7, i64 304}
!35 = !{!6, !7, i64 312}
!36 = !{!37, !15, i64 0}
!37 = !{!"gx_cie_joint_caches_s", !25, i64 0, !12, i64 24, !8, i64 28, !38, i64 18508, !41, i64 18604, !12, i64 18644, !8, i64 18648}
!38 = !{!"gs_cie_wbsd_s", !39, i64 0, !39, i64 24, !39, i64 48, !39, i64 72}
!39 = !{!"", !40, i64 0, !40, i64 12}
!40 = !{!"gs_vector3_s", !11, i64 0, !11, i64 4, !11, i64 8}
!41 = !{!"gs_matrix3_s", !40, i64 0, !40, i64 12, !40, i64 24, !12, i64 36}
!42 = !{!37, !7, i64 16}
!43 = !{!37, !7, i64 8}
!44 = !{!6, !7, i64 224}
!45 = !{!6, !7, i64 216}
!46 = !{!6, !7, i64 208}
!47 = !{!48, !15, i64 0}
!48 = !{!"gs_cie_render_s", !25, i64 0, !49, i64 24, !41, i64 48, !50, i64 88, !51, i64 112, !41, i64 136, !52, i64 176, !50, i64 200, !41, i64 224, !52, i64 264, !50, i64 288, !53, i64 312, !50, i64 376, !50, i64 400, !41, i64 424, !8, i64 464, !41, i64 476, !40, i64 516, !40, i64 528, !56, i64 540}
!49 = !{!"gs_cie_wb_s", !40, i64 0, !40, i64 12}
!50 = !{!"gs_range3_s", !8, i64 0}
!51 = !{!"gs_cie_transform_proc3_s", !8, i64 0}
!52 = !{!"gs_cie_render_proc3_s", !8, i64 0}
!53 = !{!"", !54, i64 0, !55, i64 32}
!54 = !{!"gx_color_lookup_table_s", !12, i64 0, !8, i64 4, !12, i64 20, !7, i64 24}
!55 = !{!"gs_cie_render_table_procs_s", !8, i64 0}
!56 = !{!"", !8, i64 0, !8, i64 18480, !8, i64 24660, !12, i64 32900}
!57 = !{!48, !7, i64 16}
!58 = !{!48, !7, i64 8}
!59 = !{!20, !7, i64 88}
!60 = !{!61, !7, i64 40}
!61 = !{!"gs_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !62, i64 336, !12, i64 360, !62, i64 364, !12, i64 388, !7, i64 392, !7, i64 400, !12, i64 408, !12, i64 412, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !14, i64 456, !12, i64 504, !8, i64 508, !12, i64 512, !7, i64 520, !12, i64 528, !7, i64 536, !7, i64 544, !63, i64 552}
!62 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!63 = !{!"gs_state_client_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!64 = !{!61, !7, i64 0}
!65 = !{!61, !7, i64 328}
!66 = !{!61, !7, i64 416}
!67 = !{i64 0, i64 8, !32, i64 8, i64 4, !68, i64 12, i64 4, !18, i64 16, i64 4, !18, i64 20, i64 4, !68, i64 24, i64 4, !68, i64 28, i64 4, !68, i64 32, i64 4, !68, i64 40, i64 8, !32, i64 48, i64 4, !18, i64 52, i64 4, !68, i64 56, i64 4, !18, i64 60, i64 4, !68, i64 64, i64 4, !18, i64 68, i64 4, !18, i64 72, i64 4, !68, i64 80, i64 4, !68, i64 84, i64 4, !68, i64 88, i64 4, !68, i64 92, i64 4, !68, i64 96, i64 4, !68, i64 100, i64 4, !68, i64 104, i64 8, !69, i64 112, i64 8, !69, i64 120, i64 4, !18, i64 128, i64 4, !18, i64 132, i64 2, !30, i64 136, i64 4, !18, i64 140, i64 4, !68, i64 144, i64 8, !69, i64 152, i64 8, !69, i64 160, i64 4, !18, i64 164, i64 4, !18, i64 168, i64 8, !32, i64 176, i64 16, !22, i64 192, i64 8, !32, i64 200, i64 8, !32, i64 208, i64 8, !32, i64 216, i64 8, !32, i64 224, i64 8, !32, i64 232, i64 32, !22, i64 232, i64 8, !32, i64 240, i64 8, !32, i64 248, i64 8, !32, i64 256, i64 8, !32, i64 264, i64 32, !22, i64 264, i64 8, !32, i64 272, i64 8, !32, i64 280, i64 8, !32, i64 288, i64 8, !32, i64 296, i64 8, !32, i64 304, i64 8, !32, i64 312, i64 8, !32}
!68 = !{!11, !11, i64 0}
!69 = !{!15, !15, i64 0}
!70 = !{!61, !7, i64 168}
!71 = !{!72, !15, i64 8}
!72 = !{!"gs_halftone_s", !12, i64 0, !25, i64 8, !8, i64 32}
!73 = !{!72, !7, i64 16}
!74 = !{!72, !7, i64 24}
!75 = !{!61, !7, i64 320}
!76 = !{!61, !7, i64 392}
!77 = !{!61, !7, i64 400}
!78 = !{!61, !7, i64 424}
!79 = !{!61, !7, i64 432}
!80 = !{!72, !12, i64 0}
!81 = !{!61, !7, i64 192}
!82 = !{!61, !7, i64 200}
!83 = !{!61, !7, i64 544}
!84 = !{!85, !7, i64 0}
!85 = !{!"gs_color_space_s", !7, i64 0, !8, i64 8}
!86 = !{!61, !12, i64 136}
!87 = !{!61, !15, i64 144}
!88 = !{!61, !15, i64 152}
!89 = !{!61, !12, i64 412}
!90 = !{!61, !8, i64 508}
!91 = !{!61, !12, i64 512}
!92 = !{!61, !7, i64 520}
!93 = !{!61, !12, i64 528}
!94 = !{i32 -2147483648, i32 1}
!95 = !{!61, !12, i64 128}
!96 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32, i64 24, i64 8, !32}
!97 = !{!61, !7, i64 296}
!98 = !{!61, !7, i64 224}
!99 = !{!61, !7, i64 216}
!100 = !{!61, !7, i64 208}
!101 = !{!102, !15, i64 96}
!102 = !{!"gx_device_halftone_s", !103, i64 0, !25, i64 96, !15, i64 120, !7, i64 128, !12, i64 136, !8, i64 140, !12, i64 156, !12, i64 160}
!103 = !{!"gx_ht_order_s", !104, i64 0, !16, i64 40, !16, i64 42, !16, i64 44, !16, i64 46, !16, i64 48, !16, i64 50, !12, i64 52, !12, i64 56, !12, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!104 = !{!"gx_ht_cell_params_s", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8, !16, i64 10, !15, i64 16, !16, i64 24, !16, i64 26, !12, i64 28, !12, i64 32, !12, i64 36}
!105 = !{!106, !7, i64 104}
!106 = !{!"gx_ht_cache_s", !7, i64 0, !12, i64 8, !7, i64 16, !12, i64 24, !103, i64 32, !12, i64 128, !12, i64 132, !15, i64 136}
!107 = !{!102, !7, i64 72}
!108 = !{!106, !7, i64 96}
!109 = !{!102, !7, i64 64}
!110 = !{!106, !7, i64 16}
!111 = !{!112, !7, i64 0}
!112 = !{!"gx_ht_tile_s", !113, i64 0, !12, i64 40, !12, i64 44}
!113 = !{!"gx_strip_bitmap_s", !7, i64 0, !12, i64 8, !114, i64 12, !15, i64 24, !16, i64 32, !16, i64 34, !16, i64 36, !16, i64 38}
!114 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!115 = !{!102, !7, i64 104}
!116 = !{!102, !7, i64 112}
!117 = !{!118, !7, i64 72}
!118 = !{!"gs_color_space_type_s", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!119 = !{!118, !7, i64 64}
!120 = !{!61, !7, i64 568}
!121 = !{i64 0, i64 8, !32, i64 8, i64 4, !68, i64 12, i64 4, !18, i64 16, i64 4, !18, i64 20, i64 4, !68, i64 24, i64 4, !68, i64 28, i64 4, !68, i64 32, i64 4, !68, i64 40, i64 8, !32, i64 48, i64 4, !18, i64 52, i64 4, !68, i64 56, i64 4, !18, i64 60, i64 4, !68, i64 64, i64 4, !18, i64 68, i64 4, !18, i64 72, i64 4, !68, i64 80, i64 4, !68, i64 84, i64 4, !68, i64 88, i64 4, !68, i64 92, i64 4, !68, i64 96, i64 4, !68, i64 100, i64 4, !68, i64 104, i64 8, !69, i64 112, i64 8, !69, i64 120, i64 4, !18, i64 128, i64 4, !18, i64 132, i64 2, !30, i64 136, i64 4, !18, i64 140, i64 4, !68, i64 144, i64 8, !69, i64 152, i64 8, !69, i64 160, i64 4, !18, i64 164, i64 4, !18, i64 168, i64 8, !32, i64 176, i64 16, !22, i64 192, i64 8, !32, i64 200, i64 8, !32, i64 208, i64 8, !32, i64 216, i64 8, !32, i64 224, i64 8, !32, i64 232, i64 32, !22, i64 232, i64 8, !32, i64 240, i64 8, !32, i64 248, i64 8, !32, i64 256, i64 8, !32, i64 264, i64 32, !22, i64 264, i64 8, !32, i64 272, i64 8, !32, i64 280, i64 8, !32, i64 288, i64 8, !32, i64 296, i64 8, !32, i64 304, i64 8, !32, i64 312, i64 8, !32, i64 320, i64 8, !32, i64 328, i64 8, !32, i64 336, i64 4, !68, i64 340, i64 4, !68, i64 344, i64 4, !68, i64 348, i64 4, !68, i64 352, i64 4, !68, i64 356, i64 4, !68, i64 360, i64 4, !18, i64 364, i64 4, !68, i64 368, i64 4, !68, i64 372, i64 4, !68, i64 376, i64 4, !68, i64 380, i64 4, !68, i64 384, i64 4, !68, i64 388, i64 4, !18, i64 392, i64 8, !32, i64 400, i64 8, !32, i64 408, i64 4, !18, i64 412, i64 4, !18, i64 416, i64 8, !32, i64 424, i64 8, !32, i64 432, i64 8, !32, i64 440, i64 8, !32, i64 448, i64 8, !32, i64 456, i64 4, !68, i64 460, i64 4, !68, i64 464, i64 4, !68, i64 468, i64 4, !68, i64 472, i64 4, !68, i64 476, i64 4, !68, i64 480, i64 8, !69, i64 488, i64 8, !69, i64 496, i64 4, !18, i64 504, i64 4, !18, i64 508, i64 1, !22, i64 512, i64 4, !18, i64 520, i64 8, !32, i64 528, i64 4, !18, i64 536, i64 8, !32, i64 544, i64 8, !32, i64 552, i64 8, !32, i64 560, i64 8, !32, i64 568, i64 8, !32, i64 576, i64 8, !32}
!122 = !{!61, !12, i64 48}
!123 = !{!61, !11, i64 52}
!124 = !{!61, !7, i64 552}
!125 = !{!61, !7, i64 576}
!126 = !{!61, !7, i64 560}
!127 = !{i64 0, i64 8, !32, i64 8, i64 8, !69, i64 16, i64 8, !69, i64 24, i64 8, !69, i64 32, i64 8, !69, i64 40, i64 8, !32, i64 48, i64 8, !32, i64 56, i64 8, !32, i64 64, i64 4, !18, i64 68, i64 4, !18, i64 72, i64 8, !69, i64 80, i64 8, !69, i64 88, i64 8, !128, i64 96, i64 8, !128, i64 104, i64 8, !128, i64 112, i64 8, !128, i64 120, i64 1, !22, i64 121, i64 1, !22, i64 122, i64 1, !22, i64 123, i64 1, !22, i64 128, i64 8, !32, i64 136, i64 8, !69, i64 144, i64 8, !69, i64 152, i64 8, !69, i64 160, i64 8, !69, i64 168, i64 8, !32, i64 176, i64 8, !32, i64 184, i64 8, !32, i64 192, i64 4, !18, i64 196, i64 4, !18, i64 200, i64 8, !69, i64 208, i64 8, !69, i64 216, i64 8, !128, i64 224, i64 8, !128, i64 232, i64 8, !128, i64 240, i64 8, !128, i64 248, i64 1, !22, i64 249, i64 1, !22, i64 250, i64 1, !22, i64 251, i64 1, !22, i64 256, i64 4, !18, i64 264, i64 8, !69, i64 272, i64 8, !69, i64 280, i64 8, !69, i64 288, i64 8, !69, i64 296, i64 8, !69, i64 304, i64 8, !69, i64 312, i64 8, !69, i64 320, i64 8, !69, i64 328, i64 8, !32, i64 336, i64 8, !32, i64 344, i64 4, !18, i64 348, i64 4, !18, i64 352, i64 4, !18, i64 356, i64 4, !18, i64 360, i64 1, !22, i64 368, i64 8, !32, i64 376, i64 8, !32, i64 384, i64 4, !18, i64 388, i64 4, !18, i64 392, i64 1, !22, i64 393, i64 1, !22, i64 400, i64 8, !69, i64 408, i64 16, !22, i64 424, i64 8, !32, i64 432, i64 8, !32, i64 440, i64 8, !69, i64 440, i64 8, !32, i64 448, i64 16, !22, i64 464, i64 4, !18, i64 472, i64 8, !32, i64 440, i64 8, !32, i64 448, i64 4, !22, i64 452, i64 16, !22, i64 468, i64 2, !30, i64 440, i64 8, !32, i64 480, i64 4, !18, i64 484, i64 4, !18, i64 488, i64 16, !22, i64 504, i64 8, !32, i64 512, i64 8, !69, i64 520, i64 8, !32}
!128 = !{!129, !129, i64 0}
!129 = !{!"double", !8, i64 0}
!130 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 8, i64 8, !32, i64 8, i64 8, !32, i64 8, i64 8, !32, i64 8, i64 8, !69, i64 16, i64 8, !32, i64 24, i64 8, !32, i64 24, i64 8, !32, i64 24, i64 8, !32, i64 24, i64 8, !32, i64 32, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32, i64 16, i64 8, !32, i64 16, i64 8, !32, i64 16, i64 8, !32, i64 24, i64 4, !18, i64 32, i64 8, !32, i64 40, i64 4, !18, i64 32, i64 8, !32, i64 48, i64 4, !18, i64 8, i64 4, !18, i64 16, i64 8, !32, i64 24, i64 8, !32, i64 24, i64 8, !32, i64 24, i64 8, !32, i64 24, i64 8, !32, i64 24, i64 8, !69, i64 32, i64 8, !32, i64 40, i64 8, !32, i64 40, i64 8, !32, i64 40, i64 8, !32, i64 40, i64 8, !32, i64 48, i64 8, !32, i64 24, i64 8, !32, i64 32, i64 8, !32, i64 32, i64 8, !32, i64 32, i64 8, !32, i64 32, i64 8, !32, i64 40, i64 4, !18, i64 48, i64 8, !32, i64 56, i64 4, !18, i64 48, i64 8, !32, i64 64, i64 4, !18}
!131 = !{!61, !7, i64 312}
!132 = !{i32 -25, i32 1}
!133 = distinct !{!133, !134}
!134 = !{!"llvm.loop.unroll.disable"}
!135 = !{!136, !7, i64 48}
!136 = !{!"gx_pattern_cache_s", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !15, i64 32, !15, i64 40, !7, i64 48}
!137 = !{!138, !8, i64 123}
!138 = !{!"gx_path_s", !7, i64 0, !139, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !12, i64 64, !12, i64 68, !17, i64 72, !140, i64 88, !140, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!139 = !{!"gs_fixed_rect_s", !17, i64 0, !17, i64 16}
!140 = !{!"gs_point_s", !129, i64 0, !129, i64 8}
!141 = !{!138, !7, i64 48}
!142 = distinct !{!142, !134}
!143 = !{!144, !12, i64 256}
!144 = !{!"gx_clip_path_s", !138, i64 0, !12, i64 128, !139, i64 136, !139, i64 168, !145, i64 200, !8, i64 264, !8, i64 265, !15, i64 272}
!145 = !{!"gx_clip_list_s", !146, i64 0, !7, i64 40, !7, i64 48, !12, i64 56, !12, i64 60}
!146 = !{!"gx_clip_rect_s", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32}
!147 = !{!144, !8, i64 264}
!148 = !{!144, !8, i64 123}
!149 = !{!144, !7, i64 48}
!150 = distinct !{!150, !134}
!151 = !{!144, !8, i64 265}
!152 = !{!144, !7, i64 240}
!153 = distinct !{!153, !134}
!154 = !{!140, !129, i64 0}
!155 = !{!140, !129, i64 8}
!156 = !{!10, !7, i64 32}
!157 = !{!6, !7, i64 168}
!158 = !{!6, !7, i64 192}
!159 = !{!6, !7, i64 200}
!160 = !{!61, !7, i64 440}
!161 = !{!61, !7, i64 448}
!162 = !{!61, !7, i64 536}
!163 = !{!164, !7, i64 32}
!164 = !{!"gs_memory_struct_type_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!165 = !{!164, !7, i64 40}
