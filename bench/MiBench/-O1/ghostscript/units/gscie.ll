; ModuleID = 'gscie.c'
source_filename = "gscie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gs_range4_s = type { [4 x %struct.gs_range_s] }
%struct.gs_cie_defg_proc4_s = type { [4 x ptr] }
%struct.gs_cie_def_proc3_s = type { [3 x ptr] }
%struct.gs_cie_abc_proc3_s = type { [3 x ptr] }
%struct.gs_cie_common_proc3_s = type { [3 x ptr] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.gs_cie_render_proc3_s = type { [3 x ptr] }
%struct.gs_cie_transform_proc3_s = type { [3 x ptr] }
%struct.gs_cie_render_table_procs_s = type { [4 x ptr] }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_cie_render_s = type { %struct.rc_header_s, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.anon.2, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.3 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.anon.2 = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, ptr }
%struct.anon.3 = type { [3 x %union.gx_cie_vector_cache_s], [3 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%union.gx_cie_vector_cache_s = type { %struct.cie_cache_vectors_s }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { i32, float, float, float }
%struct.cie_cached_vector3_s = type { float, float, float }
%union.gx_cie_scalar_cache_s = type { %struct.gx_cie_cache_s }
%struct.gx_cie_cache_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, float, float }
%struct.gs_color_space_s = type { ptr, %union.anon }
%union.anon = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.7 }
%union.anon.7 = type { %struct.gs_indexed_params_s }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.6, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_cie_defg_s = type { %struct.gs_cie_abc_s, %struct.rc_header_s, %struct.gs_range4_s, %struct.gs_cie_defg_proc4_s, %struct.gs_range4_s, %struct.gx_color_lookup_table_s, %struct.anon.8 }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.0 }
%struct.gs_cie_common_s = type { %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon }
%struct.anon = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.anon.0 = type { i32, [3 x %union.gx_cie_vector_cache_s] }
%struct.anon.8 = type { [4 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_def_s = type { %struct.gs_cie_abc_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_def_proc3_s, %struct.gs_range3_s, %struct.gx_color_lookup_table_s, %struct.anon.9 }
%struct.anon.9 = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gx_color_map_procs_s = type { ptr, ptr, ptr }
%struct.gs_for_loop_params_s = type { float, float, float }
%struct.gs_cie_a_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range_s, ptr, %struct.gs_vector3_s, %struct.anon.1 }
%struct.anon.1 = type { %union.gx_cie_vector_cache_s }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_cie_joint_caches_s = type { %struct.rc_header_s, i32, [3 x %union.gx_cie_vector_cache_s], %struct.gs_cie_wbsd_s, %struct.gs_matrix3_s, i32, [3 x %union.gx_cie_vector_cache_s] }
%struct.gs_cie_wbsd_s = type { %struct.anon.4, %struct.anon.4, %struct.anon.4, %struct.anon.4 }
%struct.anon.4 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }

@.str = private unnamed_addr constant [18 x i8] c"gs_const_string[]\00", align 1
@st_const_string_element = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 16, ptr @.str, ptr null, ptr null, ptr @const_string_elt_enum_ptrs, ptr @const_string_elt_reloc_ptrs, ptr null }, align 8
@gs_color_space_type_CIEDEFG = dso_local local_unnamed_addr constant %struct.gs_color_space_type_s { i32 3, i32 3, i32 1, ptr @gx_init_paint_3, ptr @gx_concrete_space_CIE, ptr @gx_concretize_CIEDEFG, ptr null, ptr @gx_default_remap_color, ptr @gx_install_CIEDEFG, ptr @gx_adjust_cspace_CIEDEFG, ptr @gx_no_adjust_color_count, ptr @gx_enum_ptrs_CIEDEFG, ptr @gx_reloc_ptrs_CIEDEFG }, align 8
@gs_color_space_type_CIEDEF = dso_local local_unnamed_addr constant %struct.gs_color_space_type_s { i32 4, i32 3, i32 1, ptr @gx_init_paint_3, ptr @gx_concrete_space_CIE, ptr @gx_concretize_CIEDEF, ptr null, ptr @gx_default_remap_color, ptr @gx_install_CIEDEF, ptr @gx_adjust_cspace_CIEDEF, ptr @gx_no_adjust_color_count, ptr @gx_enum_ptrs_CIEDEF, ptr @gx_reloc_ptrs_CIEDEF }, align 8
@gs_color_space_type_CIEABC = dso_local local_unnamed_addr constant %struct.gs_color_space_type_s { i32 5, i32 3, i32 1, ptr @gx_init_paint_3, ptr @gx_concrete_space_CIE, ptr @gx_concretize_CIEABC, ptr null, ptr @gx_remap_CIEABC, ptr @gx_install_CIEABC, ptr @gx_adjust_cspace_CIEABC, ptr @gx_no_adjust_color_count, ptr @gx_enum_ptrs_CIEABC, ptr @gx_reloc_ptrs_CIEABC }, align 8
@gs_color_space_type_CIEA = dso_local local_unnamed_addr constant %struct.gs_color_space_type_s { i32 6, i32 1, i32 1, ptr @gx_init_paint_1, ptr @gx_concrete_space_CIE, ptr @gx_concretize_CIEA, ptr null, ptr @gx_default_remap_color, ptr @gx_install_CIEA, ptr @gx_adjust_cspace_CIEA, ptr @gx_no_adjust_color_count, ptr @gx_enum_ptrs_CIEA, ptr @gx_reloc_ptrs_CIEA }, align 8
@Range3_default = dso_local local_unnamed_addr constant %struct.gs_range3_s { [3 x %struct.gs_range_s] [%struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }] }, align 4
@Range4_default = dso_local local_unnamed_addr constant %struct.gs_range4_s { [4 x %struct.gs_range_s] [%struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }] }, align 4
@DecodeDEFG_default = dso_local local_unnamed_addr constant %struct.gs_cie_defg_proc4_s { [4 x ptr] [ptr @defg_identity, ptr @defg_identity, ptr @defg_identity, ptr @defg_identity] }, align 8
@DecodeDEF_default = dso_local local_unnamed_addr constant %struct.gs_cie_def_proc3_s { [3 x ptr] [ptr @def_identity, ptr @def_identity, ptr @def_identity] }, align 8
@DecodeABC_default = dso_local local_unnamed_addr constant %struct.gs_cie_abc_proc3_s { [3 x ptr] [ptr @abc_identity, ptr @abc_identity, ptr @abc_identity] }, align 8
@DecodeLMN_default = dso_local local_unnamed_addr constant %struct.gs_cie_common_proc3_s { [3 x ptr] [ptr @common_identity, ptr @common_identity, ptr @common_identity] }, align 8
@Matrix3_default = dso_local local_unnamed_addr constant %struct.gs_matrix3_s { %struct.gs_vector3_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.gs_vector3_s { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, %struct.gs_vector3_s { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, i32 1 }, align 4
@RangeA_default = dso_local local_unnamed_addr constant %struct.gs_range_s { float 0.000000e+00, float 1.000000e+00 }, align 4
@DecodeA_default = dso_local local_unnamed_addr constant ptr @a_identity, align 8
@MatrixA_default = dso_local local_unnamed_addr constant %struct.gs_vector3_s { float 1.000000e+00, float 1.000000e+00, float 1.000000e+00 }, align 4
@BlackPoint_default = dso_local local_unnamed_addr constant %struct.gs_vector3_s zeroinitializer, align 4
@Encode_default = dso_local local_unnamed_addr constant %struct.gs_cie_render_proc3_s { [3 x ptr] [ptr @render_identity, ptr @render_identity, ptr @render_identity] }, align 8
@TransformPQR_default = dso_local local_unnamed_addr constant %struct.gs_cie_transform_proc3_s { [3 x ptr] [ptr @tpqr_identity, ptr @tpqr_identity, ptr @tpqr_identity] }, align 8
@RenderTableT_default = dso_local local_unnamed_addr constant %struct.gs_cie_render_table_procs_s { [4 x ptr] [ptr @render_table_identity, ptr @render_table_identity, ptr @render_table_identity, ptr @render_table_identity] }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"gs_setcolorrendering\00", align 1
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@st_joint_caches = internal constant %struct.gs_memory_struct_type_s { i32 37128, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"gx_currentciecaches\00", align 1
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"gx_adjust_cspace_CIEDEFG\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"gx_adjust_cspace_CIEDEF\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"gx_adjust_cspace_CIEABC\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"gx_adjust_cspace_CIEA\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"gx_cie_joint_caches\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef ptr @const_string_elt_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ugt i32 %1, 15
  %6 = lshr i32 %1, 4
  %7 = icmp ugt i32 %6, %2
  %8 = and i1 %5, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = shl nuw i32 %2, 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi ptr [ null, %4 ], [ @ptr_const_string_procs, %9 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @const_string_elt_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp ult i32 %1, 16
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %1, 4
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %10, %7 ], [ %6, %5 ]
  %9 = phi ptr [ %11, %7 ], [ %0, %5 ]
  tail call void @gs_reloc_const_string(ptr noundef %9, ptr noundef %2) #11
  %10 = add nsw i32 %8, -1
  %11 = getelementptr inbounds i8, ptr %9, i64 16
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %7, !llvm.loop !9

13:                                               ; preds = %7, %3
  ret void
}

declare void @gx_init_paint_3(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @gx_concrete_space_CIE(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_cie_render_s, ptr %4, i64 0, i32 11, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gs_cie_render_s, ptr %4, i64 0, i32 11, i32 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %6, %2
  %15 = tail call ptr @gs_color_space_DeviceRGB() #11
  br label %18

16:                                               ; preds = %10
  %17 = tail call ptr @gs_color_space_DeviceCMYK() #11
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gx_concretize_CIEDEFG(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret i32 -21
}

declare i32 @gx_default_remap_color(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gx_install_CIEDEFG(ptr nocapture readnone %0, ptr nocapture readnone %1) #3 {
  ret i32 -21
}

; Function Attrs: nounwind uwtable
define internal void @gx_adjust_cspace_CIEDEFG(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.gs_cie_defg_s, ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !36
  %11 = add nsw i64 %10, %8
  store i64 %11, ptr %9, align 8, !tbaa !36
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.gs_cie_defg_s, ptr %14, i64 0, i32 1, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.gs_cie_defg_s, ptr %14, i64 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  tail call void %16(ptr noundef %18, ptr noundef %14, ptr noundef nonnull @.str.7) #11
  br label %19

19:                                               ; preds = %3, %7, %13
  ret void
}

declare void @gx_no_adjust_color_count(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @gx_enum_ptrs_CIEDEFG(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  store ptr %8, ptr %3, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @gx_reloc_ptrs_CIEDEFG(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #11
  store ptr %6, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gx_concretize_CIEDEF(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret i32 -21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gx_install_CIEDEF(ptr nocapture readnone %0, ptr nocapture readnone %1) #3 {
  ret i32 -21
}

; Function Attrs: nounwind uwtable
define internal void @gx_adjust_cspace_CIEDEF(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.gs_cie_def_s, ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !48
  %11 = add nsw i64 %10, %8
  store i64 %11, ptr %9, align 8, !tbaa !48
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.gs_cie_def_s, ptr %14, i64 0, i32 1, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.gs_cie_def_s, ptr %14, i64 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  tail call void %16(ptr noundef %18, ptr noundef %14, ptr noundef nonnull @.str.8) #11
  br label %19

19:                                               ; preds = %3, %7, %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @gx_enum_ptrs_CIEDEF(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  store ptr %8, ptr %3, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @gx_reloc_ptrs_CIEDEF(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #11
  store ptr %6, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gx_concretize_CIEABC(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = alloca %struct.cie_cached_vector3_s, align 4
  %6 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %8 = load float, ptr %0, align 8, !tbaa !53
  store float %8, ptr %5, align 4, !tbaa !54
  %9 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = getelementptr inbounds %struct.cie_cached_vector3_s, ptr %5, i64 0, i32 1
  store float %10, ptr %11, align 4, !tbaa !56
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.cie_cached_vector3_s, ptr %5, i64 0, i32 2
  store float %13, ptr %14, align 4, !tbaa !57
  %15 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %7, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !58
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %7, i64 0, i32 5, i32 1
  call fastcc void @cie_lookup_mult3(ptr noundef nonnull %5, ptr noundef nonnull %19)
  br label %20

20:                                               ; preds = %18, %4
  %21 = call fastcc i32 @cie_remap_finish(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gx_remap_CIEABC(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #1 {
  %7 = alloca [4 x i16], align 2
  %8 = alloca %struct.cie_cached_vector3_s, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %9 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %11 = load float, ptr %0, align 8, !tbaa !53
  store float %11, ptr %8, align 4, !tbaa !54
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !53
  %14 = getelementptr inbounds %struct.cie_cached_vector3_s, ptr %8, i64 0, i32 1
  store float %13, ptr %14, align 4, !tbaa !56
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %16 = load float, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.cie_cached_vector3_s, ptr %8, i64 0, i32 2
  store float %16, ptr %17, align 4, !tbaa !57
  %18 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %10, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !58
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %10, i64 0, i32 5, i32 1
  call fastcc void @cie_lookup_mult3(ptr noundef nonnull %8, ptr noundef nonnull %22)
  br label %23

23:                                               ; preds = %21, %6
  %24 = call fastcc i32 @cie_remap_finish(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %3)
  switch i32 %24, label %47 [
    i32 3, label %25
    i32 4, label %35
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = load i16, ptr %7, align 2, !tbaa !62
  %31 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !62
  %33 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 2
  %34 = load i16, ptr %33, align 2, !tbaa !62
  call void %29(i16 noundef signext %30, i16 noundef signext %32, i16 noundef signext %34, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #11
  br label %47

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 20
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = load i16, ptr %7, align 2, !tbaa !62
  %41 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !62
  %43 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 2
  %44 = load i16, ptr %43, align 2, !tbaa !62
  %45 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 3
  %46 = load i16, ptr %45, align 2, !tbaa !62
  call void %39(i16 noundef signext %40, i16 noundef signext %42, i16 noundef signext %44, i16 noundef signext %46, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #11
  br label %47

47:                                               ; preds = %23, %35, %25
  %48 = phi i32 [ 0, %35 ], [ 0, %25 ], [ -1, %23 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gx_install_CIEABC(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = alloca [3 x %struct.gs_for_loop_params_s], align 16
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !64
  %8 = fcmp oeq float %7, 1.000000e+00
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4, i32 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !65
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4, i32 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !66
  %16 = fcmp oeq float %15, 0.000000e+00
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4, i32 1, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !67
  %20 = fcmp oeq float %19, 1.000000e+00
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !68
  %24 = fcmp oeq float %23, 0.000000e+00
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4, i32 1, i32 2
  %27 = load float, ptr %26, align 4, !tbaa !69
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4, i32 2, i32 2
  %31 = load float, ptr %30, align 4, !tbaa !70
  %32 = fcmp oeq float %31, 1.000000e+00
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !71
  %36 = fcmp oeq float %35, 0.000000e+00
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4, i32 2, i32 1
  %39 = load float, ptr %38, align 4, !tbaa !72
  %40 = fcmp oeq float %39, 0.000000e+00
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %2, %9, %13, %17, %21, %25, %29, %33, %37
  %43 = phi i32 [ 0, %29 ], [ 0, %25 ], [ 0, %21 ], [ 0, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %2 ], [ 0, %33 ], [ %41, %37 ]
  %44 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 4, i32 3
  store i32 %43, ptr %44, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  %45 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !74
  %47 = fpext float %46 to double
  %48 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 2, i32 0, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !76
  %50 = fpext float %49 to double
  %51 = fsub double %50, %47
  %52 = fcmp olt float %46, 0.000000e+00
  %53 = fcmp oge float %49, 0.000000e+00
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %78

55:                                               ; preds = %42
  %56 = fmul double %47, -5.110000e+02
  %57 = fdiv double %56, %51
  %58 = tail call double @llvm.floor.f64(double %57)
  %59 = tail call double @llvm.ceil.f64(double %57)
  %60 = fadd double %59, -5.110000e+02
  %61 = fcmp oeq double %58, 0.000000e+00
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = fcmp une double %60, 0.000000e+00
  br i1 %63, label %64, label %75

64:                                               ; preds = %62
  %65 = fneg double %50
  %66 = fdiv double %65, %60
  %67 = fneg double %47
  %68 = fdiv double %67, %58
  %69 = fcmp olt double %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64, %55
  %71 = fmul double %50, -5.110000e+02
  %72 = fdiv double %71, %60
  %73 = fsub double %50, %72
  %74 = fptrunc double %73 to float
  br label %78

75:                                               ; preds = %64, %62
  %76 = fdiv double %56, %58
  %77 = fadd double %76, %47
  br label %78

78:                                               ; preds = %42, %70, %75
  %79 = phi double [ %51, %42 ], [ %72, %70 ], [ %76, %75 ]
  %80 = phi double [ %50, %42 ], [ %50, %70 ], [ %77, %75 ]
  %81 = phi float [ %46, %42 ], [ %74, %70 ], [ %46, %75 ]
  %82 = fdiv double %79, 5.110000e+02
  %83 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 5, i32 1, i64 0, i32 0, i32 0, i32 1
  store float %81, ptr %83, align 4, !tbaa !77
  %84 = fcmp oeq double %82, 0.000000e+00
  %85 = fdiv double 5.110000e+02, %79
  %86 = select i1 %84, double 0.000000e+00, double %85
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 5, i32 1, i64 0, i32 0, i32 0, i32 2
  store float %87, ptr %88, align 4, !tbaa !79
  store float %81, ptr %3, align 16, !tbaa !80
  %89 = fptrunc double %82 to float
  %90 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %3, i64 0, i32 1
  store float %89, ptr %90, align 4, !tbaa !82
  %91 = fmul double %82, 5.000000e-01
  %92 = fadd double %80, %91
  %93 = fptrunc double %92 to float
  %94 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %3, i64 0, i32 2
  store float %93, ptr %94, align 8, !tbaa !83
  %95 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 1
  %96 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 2, i32 0, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !74
  %98 = fpext float %97 to double
  %99 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 2, i32 0, i64 1, i32 1
  %100 = load float, ptr %99, align 4, !tbaa !76
  %101 = fpext float %100 to double
  %102 = fsub double %101, %98
  %103 = fcmp olt float %97, 0.000000e+00
  %104 = fcmp oge float %100, 0.000000e+00
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %129

106:                                              ; preds = %78
  %107 = fmul double %98, -5.110000e+02
  %108 = fdiv double %107, %102
  %109 = tail call double @llvm.floor.f64(double %108)
  %110 = tail call double @llvm.ceil.f64(double %108)
  %111 = fadd double %110, -5.110000e+02
  %112 = fcmp oeq double %109, 0.000000e+00
  br i1 %112, label %121, label %113

113:                                              ; preds = %106
  %114 = fcmp une double %111, 0.000000e+00
  br i1 %114, label %115, label %126

115:                                              ; preds = %113
  %116 = fneg double %101
  %117 = fdiv double %116, %111
  %118 = fneg double %98
  %119 = fdiv double %118, %109
  %120 = fcmp olt double %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115, %106
  %122 = fmul double %101, -5.110000e+02
  %123 = fdiv double %122, %111
  %124 = fsub double %101, %123
  %125 = fptrunc double %124 to float
  br label %129

126:                                              ; preds = %115, %113
  %127 = fdiv double %107, %109
  %128 = fadd double %127, %98
  br label %129

129:                                              ; preds = %78, %121, %126
  %130 = phi double [ %102, %78 ], [ %123, %121 ], [ %127, %126 ]
  %131 = phi double [ %101, %78 ], [ %101, %121 ], [ %128, %126 ]
  %132 = phi float [ %97, %78 ], [ %125, %121 ], [ %97, %126 ]
  %133 = fdiv double %130, 5.110000e+02
  %134 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 5, i32 1, i64 1, i32 0, i32 0, i32 1
  store float %132, ptr %134, align 4, !tbaa !77
  %135 = fcmp oeq double %133, 0.000000e+00
  %136 = fdiv double 5.110000e+02, %130
  %137 = select i1 %135, double 0.000000e+00, double %136
  %138 = fptrunc double %137 to float
  %139 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 5, i32 1, i64 1, i32 0, i32 0, i32 2
  store float %138, ptr %139, align 4, !tbaa !79
  store float %132, ptr %95, align 4, !tbaa !80
  %140 = fptrunc double %133 to float
  %141 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 1, i32 1
  store float %140, ptr %141, align 16, !tbaa !82
  %142 = fmul double %133, 5.000000e-01
  %143 = fadd double %131, %142
  %144 = fptrunc double %143 to float
  %145 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 1, i32 2
  store float %144, ptr %145, align 4, !tbaa !83
  %146 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 2
  %147 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 2, i32 0, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !74
  %149 = fpext float %148 to double
  %150 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 2, i32 0, i64 2, i32 1
  %151 = load float, ptr %150, align 4, !tbaa !76
  %152 = fpext float %151 to double
  %153 = fsub double %152, %149
  %154 = fcmp olt float %148, 0.000000e+00
  %155 = fcmp oge float %151, 0.000000e+00
  %156 = select i1 %154, i1 %155, i1 false
  br i1 %156, label %157, label %180

157:                                              ; preds = %129
  %158 = fmul double %149, -5.110000e+02
  %159 = fdiv double %158, %153
  %160 = tail call double @llvm.floor.f64(double %159)
  %161 = tail call double @llvm.ceil.f64(double %159)
  %162 = fadd double %161, -5.110000e+02
  %163 = fcmp oeq double %160, 0.000000e+00
  br i1 %163, label %172, label %164

164:                                              ; preds = %157
  %165 = fcmp une double %162, 0.000000e+00
  br i1 %165, label %166, label %177

166:                                              ; preds = %164
  %167 = fneg double %152
  %168 = fdiv double %167, %162
  %169 = fneg double %149
  %170 = fdiv double %169, %160
  %171 = fcmp olt double %168, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166, %157
  %173 = fmul double %152, -5.110000e+02
  %174 = fdiv double %173, %162
  %175 = fsub double %152, %174
  %176 = fptrunc double %175 to float
  br label %180

177:                                              ; preds = %166, %164
  %178 = fdiv double %158, %160
  %179 = fadd double %178, %149
  br label %180

180:                                              ; preds = %129, %172, %177
  %181 = phi double [ %153, %129 ], [ %174, %172 ], [ %178, %177 ]
  %182 = phi double [ %152, %129 ], [ %152, %172 ], [ %179, %177 ]
  %183 = phi float [ %148, %129 ], [ %176, %172 ], [ %148, %177 ]
  %184 = fdiv double %181, 5.110000e+02
  %185 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 5, i32 1, i64 2, i32 0, i32 0, i32 1
  store float %183, ptr %185, align 4, !tbaa !77
  %186 = fcmp oeq double %184, 0.000000e+00
  %187 = fdiv double 5.110000e+02, %181
  %188 = select i1 %186, double 0.000000e+00, double %187
  %189 = fptrunc double %188 to float
  %190 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 5, i32 1, i64 2, i32 0, i32 0, i32 2
  store float %189, ptr %190, align 4, !tbaa !79
  store float %183, ptr %146, align 8, !tbaa !80
  %191 = fptrunc double %184 to float
  %192 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 2, i32 1
  store float %191, ptr %192, align 4, !tbaa !82
  %193 = fmul double %184, 5.000000e-01
  %194 = fadd double %182, %193
  %195 = fptrunc double %194 to float
  %196 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 2, i32 2
  store float %195, ptr %196, align 16, !tbaa !83
  %197 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 3
  br label %198

198:                                              ; preds = %180, %215
  %199 = phi i64 [ 0, %180 ], [ %216, %215 ]
  %200 = getelementptr inbounds [512 x float], ptr %5, i64 0, i64 %199
  br label %201

201:                                              ; preds = %198, %201
  %202 = phi i64 [ 0, %198 ], [ %213, %201 ]
  %203 = getelementptr inbounds [3 x ptr], ptr %197, i64 0, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  %205 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 %202
  %206 = load float, ptr %205, align 4, !tbaa !80
  %207 = fpext float %206 to double
  %208 = tail call float %204(double noundef %207, ptr noundef %5) #11
  %209 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %200, i64 0, i32 5, i32 1, i64 %202, i32 0, i32 0, i32 3
  store float %208, ptr %209, align 4, !tbaa !35
  %210 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 %202, i32 1
  %211 = load float, ptr %210, align 4, !tbaa !82
  %212 = fadd float %206, %211
  store float %212, ptr %205, align 4, !tbaa !80
  %213 = add nuw nsw i64 %202, 1
  %214 = icmp eq i64 %213, 3
  br i1 %214, label %215, label %201, !llvm.loop !84

215:                                              ; preds = %201
  %216 = add nuw nsw i64 %199, 1
  %217 = icmp eq i64 %216, 512
  br i1 %217, label %218, label %198, !llvm.loop !85

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 5, i32 1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  %220 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 5
  %221 = tail call fastcc i32 @cie_cache_mult3(ptr noundef nonnull %219, ptr noundef nonnull %6)
  store i32 %221, ptr %220, align 8, !tbaa !58
  %222 = tail call fastcc i32 @cie_load_common_cache(ptr noundef %5, ptr noundef %1)
  ret i32 %222
}

; Function Attrs: nounwind uwtable
define internal void @gx_adjust_cspace_CIEABC(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !86
  %11 = add nsw i64 %10, %8
  store i64 %11, ptr %9, align 8, !tbaa !86
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %14, i64 0, i32 1, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %14, i64 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  tail call void %16(ptr noundef %18, ptr noundef %14, ptr noundef nonnull @.str.9) #11
  br label %19

19:                                               ; preds = %3, %7, %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @gx_enum_ptrs_CIEABC(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  store ptr %8, ptr %3, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @gx_reloc_ptrs_CIEABC(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #11
  store ptr %6, ptr %4, align 8, !tbaa !35
  ret void
}

declare void @gx_init_paint_1(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_concretize_CIEA(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = alloca %struct.cie_cached_vector3_s, align 4
  %6 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = load float, ptr %0, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %9 = getelementptr inbounds %struct.gs_cie_a_s, ptr %7, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !35
  %11 = fcmp ugt float %8, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gs_cie_a_s, ptr %7, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !35
  %15 = fcmp ult float %8, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = fsub float %8, %10
  %18 = getelementptr inbounds %struct.gs_cie_a_s, ptr %7, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !35
  %20 = fmul float %17, %19
  %21 = fptosi float %20 to i32
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %16, %12, %4
  %24 = phi i64 [ 0, %4 ], [ %22, %16 ], [ 511, %12 ]
  %25 = getelementptr inbounds %struct.gs_cie_a_s, ptr %7, i64 0, i32 5, i32 0, i32 0, i32 1, i64 %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %25, i64 12, i1 false), !tbaa.struct !89
  %26 = call fastcc i32 @cie_remap_finish(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @gx_install_CIEA(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 5
  %6 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !74
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 2, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !76
  %11 = fpext float %10 to double
  %12 = fsub double %11, %8
  %13 = fcmp olt float %7, 0.000000e+00
  %14 = fcmp oge float %10, 0.000000e+00
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = fmul double %8, -5.110000e+02
  %18 = fdiv double %17, %12
  %19 = tail call double @llvm.floor.f64(double %18)
  %20 = tail call double @llvm.ceil.f64(double %18)
  %21 = fadd double %20, -5.110000e+02
  %22 = fcmp oeq double %19, 0.000000e+00
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = fcmp une double %21, 0.000000e+00
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  %26 = fneg double %11
  %27 = fdiv double %26, %21
  %28 = fneg double %8
  %29 = fdiv double %28, %19
  %30 = fcmp olt double %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %16
  %32 = fmul double %11, -5.110000e+02
  %33 = fdiv double %32, %21
  %34 = fsub double %11, %33
  %35 = fptrunc double %34 to float
  br label %38

36:                                               ; preds = %25, %23
  %37 = fdiv double %17, %19
  br label %38

38:                                               ; preds = %2, %31, %36
  %39 = phi double [ %12, %2 ], [ %33, %31 ], [ %37, %36 ]
  %40 = phi float [ %7, %2 ], [ %35, %31 ], [ %7, %36 ]
  %41 = fdiv double %39, 5.110000e+02
  %42 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  store float %40, ptr %42, align 4, !tbaa !77
  %43 = fcmp oeq double %41, 0.000000e+00
  %44 = fdiv double 5.110000e+02, %39
  %45 = select i1 %43, double 0.000000e+00, double %44
  %46 = fptrunc double %45 to float
  %47 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  store float %46, ptr %47, align 4, !tbaa !79
  %48 = fptrunc double %41 to float
  %49 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 3
  %50 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3
  br label %51

51:                                               ; preds = %38, %51
  %52 = phi i64 [ 0, %38 ], [ %59, %51 ]
  %53 = phi float [ %40, %38 ], [ %58, %51 ]
  %54 = load ptr, ptr %49, align 8, !tbaa !90
  %55 = fpext float %53 to double
  %56 = tail call float %54(double noundef %55, ptr noundef %4) #11
  %57 = getelementptr inbounds [512 x float], ptr %50, i64 0, i64 %52
  store float %56, ptr %57, align 4, !tbaa !35
  %58 = fadd float %53, %48
  %59 = add nuw nsw i64 %52, 1
  %60 = icmp eq i64 %59, 512
  br i1 %60, label %61, label %51, !llvm.loop !92

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 4
  %63 = load i32, ptr %5, align 4, !tbaa !93
  %64 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !95
  %66 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %67 = load float, ptr %66, align 4, !tbaa !96
  %68 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 4, i32 1
  %69 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 4, i32 2
  br label %70

70:                                               ; preds = %70, %61
  %71 = phi i64 [ 512, %61 ], [ %72, %70 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %5, i64 0, i32 1, i64 %72
  %74 = load float, ptr %73, align 4, !tbaa !53
  %75 = load float, ptr %62, align 4, !tbaa !97
  %76 = fmul float %74, %75
  %77 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %5, i64 0, i32 1, i64 %72
  store float %76, ptr %77, align 4, !tbaa !35
  %78 = load float, ptr %68, align 4, !tbaa !98
  %79 = fmul float %74, %78
  %80 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %5, i64 0, i32 1, i64 %72, i32 1
  store float %79, ptr %80, align 4, !tbaa !35
  %81 = load float, ptr %69, align 4, !tbaa !99
  %82 = fmul float %74, %81
  %83 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %5, i64 0, i32 1, i64 %72, i32 2
  store float %82, ptr %83, align 4, !tbaa !35
  %84 = icmp ugt i64 %71, 1
  br i1 %84, label %70, label %85, !llvm.loop !100

85:                                               ; preds = %70
  %86 = fdiv float 5.110000e+02, %67
  %87 = fadd float %65, %86
  store i32 %63, ptr %5, align 4, !tbaa.struct !101
  store float %65, ptr %64, align 4, !tbaa.struct !89
  store float %67, ptr %66, align 4, !tbaa.struct !103
  %88 = getelementptr inbounds %struct.gs_cie_a_s, ptr %4, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3
  store float %87, ptr %88, align 4, !tbaa.struct !104
  %89 = tail call fastcc i32 @cie_load_common_cache(ptr noundef %4, ptr noundef %1)
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define internal void @gx_adjust_cspace_CIEA(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.gs_cie_a_s, ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !105
  %11 = add nsw i64 %10, %8
  store i64 %11, ptr %9, align 8, !tbaa !105
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.gs_cie_a_s, ptr %14, i64 0, i32 1, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.gs_cie_a_s, ptr %14, i64 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  tail call void %16(ptr noundef %18, ptr noundef %14, ptr noundef nonnull @.str.10) #11
  br label %19

19:                                               ; preds = %3, %7, %13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @gx_enum_ptrs_CIEA(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  store ptr %8, ptr %3, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @gx_reloc_ptrs_CIEA(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #11
  store ptr %6, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @defg_identity(double noundef %0, ptr nocapture readnone %1) #3 {
  %3 = fptrunc double %0 to float
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @def_identity(double noundef %0, ptr nocapture readnone %1) #3 {
  %3 = fptrunc double %0 to float
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @abc_identity(double noundef %0, ptr nocapture readnone %1) #3 {
  %3 = fptrunc double %0 to float
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @common_identity(double noundef %0, ptr nocapture readnone %1) #3 {
  %3 = fptrunc double %0 to float
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @a_identity(double noundef %0, ptr nocapture readnone %1) #3 {
  %3 = fptrunc double %0 to float
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @render_identity(double noundef %0, ptr nocapture readnone %1) #3 {
  %3 = fptrunc double %0 to float
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @tpqr_identity(double noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #3 {
  %4 = fptrunc double %0 to float
  ret float %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal signext i16 @render_table_identity(i8 noundef zeroext %0, ptr nocapture readnone %1) #3 {
  %3 = zext i8 %0 to i32
  %4 = shl nuw nsw i32 %3, 7
  %5 = lshr i32 %3, 1
  %6 = or disjoint i32 %4, %5
  %7 = lshr i32 %3, 5
  %8 = sub nsw i32 %6, %7
  %9 = trunc i32 %8 to i16
  ret i16 %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gs_cie_abc_complete(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %0, i64 0, i32 5, i32 1
  %4 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %0, i64 0, i32 4
  %5 = tail call fastcc i32 @cie_cache_mult3(ptr noundef nonnull %3, ptr noundef nonnull %4)
  store i32 %5, ptr %2, align 8, !tbaa !58
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @cie_cache_mult3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !93
  %4 = getelementptr inbounds %struct.cie_cache_params_s, ptr %0, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !95
  %6 = getelementptr inbounds %struct.cie_cache_params_s, ptr %0, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !96
  %8 = getelementptr inbounds %struct.gs_vector3_s, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.gs_vector3_s, ptr %1, i64 0, i32 2
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi i64 [ 512, %2 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %0, i64 0, i32 1, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = load float, ptr %1, align 4, !tbaa !97
  %16 = fmul float %14, %15
  %17 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %0, i64 0, i32 1, i64 %12
  store float %16, ptr %17, align 4, !tbaa !35
  %18 = load float, ptr %8, align 4, !tbaa !98
  %19 = fmul float %14, %18
  %20 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %0, i64 0, i32 1, i64 %12, i32 1
  store float %19, ptr %20, align 4, !tbaa !35
  %21 = load float, ptr %9, align 4, !tbaa !99
  %22 = fmul float %14, %21
  %23 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %0, i64 0, i32 1, i64 %12, i32 2
  store float %22, ptr %23, align 4, !tbaa !35
  %24 = icmp ugt i64 %11, 1
  br i1 %24, label %10, label %25, !llvm.loop !100

25:                                               ; preds = %10
  %26 = fdiv float 5.110000e+02, %7
  %27 = fadd float %5, %26
  store i32 %3, ptr %0, align 4, !tbaa.struct !101
  store float %5, ptr %4, align 4, !tbaa.struct !89
  store float %7, ptr %6, align 4, !tbaa.struct !103
  %28 = getelementptr inbounds i8, ptr %0, i64 12
  store float %27, ptr %28, align 4, !tbaa.struct !104
  %29 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %0, i64 1
  %30 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 1
  %31 = load i32, ptr %29, align 4, !tbaa !93
  %32 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %0, i64 1, i32 0, i32 0, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !95
  %34 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %0, i64 1, i32 0, i32 0, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !96
  %36 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 1, i32 1
  %37 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 1, i32 2
  br label %38

38:                                               ; preds = %38, %25
  %39 = phi i64 [ 512, %25 ], [ %40, %38 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %29, i64 0, i32 1, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !53
  %43 = load float, ptr %30, align 4, !tbaa !97
  %44 = fmul float %42, %43
  %45 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %29, i64 0, i32 1, i64 %40
  store float %44, ptr %45, align 4, !tbaa !35
  %46 = load float, ptr %36, align 4, !tbaa !98
  %47 = fmul float %42, %46
  %48 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %29, i64 0, i32 1, i64 %40, i32 1
  store float %47, ptr %48, align 4, !tbaa !35
  %49 = load float, ptr %37, align 4, !tbaa !99
  %50 = fmul float %42, %49
  %51 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %29, i64 0, i32 1, i64 %40, i32 2
  store float %50, ptr %51, align 4, !tbaa !35
  %52 = icmp ugt i64 %39, 1
  br i1 %52, label %38, label %53, !llvm.loop !100

53:                                               ; preds = %38
  %54 = fdiv float 5.110000e+02, %35
  %55 = fadd float %33, %54
  store i32 %31, ptr %29, align 4, !tbaa.struct !101
  store float %33, ptr %32, align 4, !tbaa.struct !89
  store float %35, ptr %34, align 4, !tbaa.struct !103
  %56 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %0, i64 1, i32 0, i32 0, i32 3
  store float %55, ptr %56, align 4, !tbaa.struct !104
  %57 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %0, i64 2
  %58 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 2
  %59 = load i32, ptr %57, align 4, !tbaa !93
  %60 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %0, i64 2, i32 0, i32 0, i32 1
  %61 = load float, ptr %60, align 4, !tbaa !95
  %62 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %0, i64 2, i32 0, i32 0, i32 2
  %63 = load float, ptr %62, align 4, !tbaa !96
  %64 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 2, i32 1
  %65 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 2, i32 2
  br label %66

66:                                               ; preds = %66, %53
  %67 = phi i64 [ 512, %53 ], [ %68, %66 ]
  %68 = add nsw i64 %67, -1
  %69 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %57, i64 0, i32 1, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !53
  %71 = load float, ptr %58, align 4, !tbaa !97
  %72 = fmul float %70, %71
  %73 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %57, i64 0, i32 1, i64 %68
  store float %72, ptr %73, align 4, !tbaa !35
  %74 = load float, ptr %64, align 4, !tbaa !98
  %75 = fmul float %70, %74
  %76 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %57, i64 0, i32 1, i64 %68, i32 1
  store float %75, ptr %76, align 4, !tbaa !35
  %77 = load float, ptr %65, align 4, !tbaa !99
  %78 = fmul float %70, %77
  %79 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %57, i64 0, i32 1, i64 %68, i32 2
  store float %78, ptr %79, align 4, !tbaa !35
  %80 = icmp ugt i64 %67, 1
  br i1 %80, label %66, label %81, !llvm.loop !100

81:                                               ; preds = %66
  %82 = fdiv float 5.110000e+02, %63
  %83 = fadd float %61, %82
  store i32 %59, ptr %57, align 4, !tbaa.struct !101
  store float %61, ptr %60, align 4, !tbaa.struct !89
  store float %63, ptr %62, align 4, !tbaa.struct !103
  %84 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %0, i64 2, i32 0, i32 0, i32 3
  store float %83, ptr %84, align 4, !tbaa.struct !104
  %85 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !73
  %87 = load i32, ptr %0, align 4, !tbaa !35
  %88 = load i32, ptr %29, align 4, !tbaa !35
  %89 = and i32 %86, %87
  %90 = and i32 %89, %88
  %91 = and i32 %90, %59
  ret i32 %91
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gs_cie_a_complete(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gs_cie_a_s, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.gs_cie_a_s, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %2, align 4, !tbaa !93
  %5 = getelementptr inbounds %struct.gs_cie_a_s, ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !95
  %7 = getelementptr inbounds %struct.gs_cie_a_s, ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !96
  %9 = getelementptr inbounds %struct.gs_cie_a_s, ptr %0, i64 0, i32 4, i32 1
  %10 = getelementptr inbounds %struct.gs_cie_a_s, ptr %0, i64 0, i32 4, i32 2
  br label %11

11:                                               ; preds = %11, %1
  %12 = phi i64 [ 512, %1 ], [ %13, %11 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %2, i64 0, i32 1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !53
  %16 = load float, ptr %3, align 4, !tbaa !97
  %17 = fmul float %15, %16
  %18 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %2, i64 0, i32 1, i64 %13
  store float %17, ptr %18, align 4, !tbaa !35
  %19 = load float, ptr %9, align 4, !tbaa !98
  %20 = fmul float %15, %19
  %21 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %2, i64 0, i32 1, i64 %13, i32 1
  store float %20, ptr %21, align 4, !tbaa !35
  %22 = load float, ptr %10, align 4, !tbaa !99
  %23 = fmul float %15, %22
  %24 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %2, i64 0, i32 1, i64 %13, i32 2
  store float %23, ptr %24, align 4, !tbaa !35
  %25 = icmp ugt i64 %12, 1
  br i1 %25, label %11, label %26, !llvm.loop !100

26:                                               ; preds = %11
  %27 = fdiv float 5.110000e+02, %8
  %28 = fadd float %6, %27
  store i32 %4, ptr %2, align 4, !tbaa.struct !101
  store float %6, ptr %5, align 4, !tbaa.struct !89
  store float %8, ptr %7, align 4, !tbaa.struct !103
  %29 = getelementptr inbounds %struct.gs_cie_a_s, ptr %0, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3
  store float %28, ptr %29, align 4, !tbaa.struct !104
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setcolorrendering(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [3 x %struct.gs_for_loop_params_s], align 16
  %4 = alloca [3 x %struct.gs_for_loop_params_s], align 16
  %5 = tail call i32 @gs_cie_render_init(ptr noundef %1)
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = load i64, ptr %7, align 8, !tbaa !112
  %13 = add nsw i64 %12, -1
  store i64 %13, ptr %7, align 8, !tbaa !112
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rc_header_s, ptr %7, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct.rc_header_s, ptr %7, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !114
  tail call void %17(ptr noundef %19, ptr noundef nonnull %7, ptr noundef nonnull @.str.1) #11
  br label %20

20:                                               ; preds = %15, %11, %9
  store ptr %1, ptr %6, align 8, !tbaa !108
  %21 = icmp eq ptr %1, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = load i64, ptr %1, align 8, !tbaa !112
  %24 = add nsw i64 %23, 1
  store i64 %24, ptr %1, align 8, !tbaa !112
  br label %25

25:                                               ; preds = %20, %22, %2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  %26 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19
  %27 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 12
  %28 = load float, ptr %27, align 4, !tbaa !74
  %29 = fpext float %28 to double
  %30 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 12, i32 0, i64 0, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !76
  %32 = fpext float %31 to double
  %33 = fsub double %32, %29
  %34 = fcmp olt float %28, 0.000000e+00
  %35 = fcmp oge float %31, 0.000000e+00
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %60

37:                                               ; preds = %25
  %38 = fmul double %29, -5.110000e+02
  %39 = fdiv double %38, %33
  %40 = tail call double @llvm.floor.f64(double %39)
  %41 = tail call double @llvm.ceil.f64(double %39)
  %42 = fadd double %41, -5.110000e+02
  %43 = fcmp oeq double %40, 0.000000e+00
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = fcmp une double %42, 0.000000e+00
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = fneg double %32
  %48 = fdiv double %47, %42
  %49 = fneg double %29
  %50 = fdiv double %49, %40
  %51 = fcmp olt double %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46, %37
  %53 = fmul double %32, -5.110000e+02
  %54 = fdiv double %53, %42
  %55 = fsub double %32, %54
  %56 = fptrunc double %55 to float
  br label %60

57:                                               ; preds = %46, %44
  %58 = fdiv double %38, %40
  %59 = fadd double %58, %29
  br label %60

60:                                               ; preds = %25, %52, %57
  %61 = phi double [ %33, %25 ], [ %54, %52 ], [ %58, %57 ]
  %62 = phi double [ %32, %25 ], [ %32, %52 ], [ %59, %57 ]
  %63 = phi float [ %28, %25 ], [ %56, %52 ], [ %28, %57 ]
  %64 = fdiv double %61, 5.110000e+02
  %65 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 0, i64 0, i32 0, i32 0, i32 1
  store float %63, ptr %65, align 4, !tbaa !77
  %66 = fcmp oeq double %64, 0.000000e+00
  %67 = fdiv double 5.110000e+02, %61
  %68 = select i1 %66, double 0.000000e+00, double %67
  %69 = fptrunc double %68 to float
  %70 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 0, i64 0, i32 0, i32 0, i32 2
  store float %69, ptr %70, align 4, !tbaa !79
  store float %63, ptr %3, align 16, !tbaa !80
  %71 = fptrunc double %64 to float
  %72 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %3, i64 0, i32 1
  store float %71, ptr %72, align 4, !tbaa !82
  %73 = fmul double %64, 5.000000e-01
  %74 = fadd double %62, %73
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %3, i64 0, i32 2
  store float %75, ptr %76, align 8, !tbaa !83
  %77 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 1
  %78 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 12, i32 0, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !74
  %80 = fpext float %79 to double
  %81 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 12, i32 0, i64 1, i32 1
  %82 = load float, ptr %81, align 4, !tbaa !76
  %83 = fpext float %82 to double
  %84 = fsub double %83, %80
  %85 = fcmp olt float %79, 0.000000e+00
  %86 = fcmp oge float %82, 0.000000e+00
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %111

88:                                               ; preds = %60
  %89 = fmul double %80, -5.110000e+02
  %90 = fdiv double %89, %84
  %91 = tail call double @llvm.floor.f64(double %90)
  %92 = tail call double @llvm.ceil.f64(double %90)
  %93 = fadd double %92, -5.110000e+02
  %94 = fcmp oeq double %91, 0.000000e+00
  br i1 %94, label %103, label %95

95:                                               ; preds = %88
  %96 = fcmp une double %93, 0.000000e+00
  br i1 %96, label %97, label %108

97:                                               ; preds = %95
  %98 = fneg double %83
  %99 = fdiv double %98, %93
  %100 = fneg double %80
  %101 = fdiv double %100, %91
  %102 = fcmp olt double %99, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97, %88
  %104 = fmul double %83, -5.110000e+02
  %105 = fdiv double %104, %93
  %106 = fsub double %83, %105
  %107 = fptrunc double %106 to float
  br label %111

108:                                              ; preds = %97, %95
  %109 = fdiv double %89, %91
  %110 = fadd double %109, %80
  br label %111

111:                                              ; preds = %60, %103, %108
  %112 = phi double [ %84, %60 ], [ %105, %103 ], [ %109, %108 ]
  %113 = phi double [ %83, %60 ], [ %83, %103 ], [ %110, %108 ]
  %114 = phi float [ %79, %60 ], [ %107, %103 ], [ %79, %108 ]
  %115 = fdiv double %112, 5.110000e+02
  %116 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 0, i64 1, i32 0, i32 0, i32 1
  store float %114, ptr %116, align 4, !tbaa !77
  %117 = fcmp oeq double %115, 0.000000e+00
  %118 = fdiv double 5.110000e+02, %112
  %119 = select i1 %117, double 0.000000e+00, double %118
  %120 = fptrunc double %119 to float
  %121 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 0, i64 1, i32 0, i32 0, i32 2
  store float %120, ptr %121, align 4, !tbaa !79
  store float %114, ptr %77, align 4, !tbaa !80
  %122 = fptrunc double %115 to float
  %123 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 1, i32 1
  store float %122, ptr %123, align 16, !tbaa !82
  %124 = fmul double %115, 5.000000e-01
  %125 = fadd double %113, %124
  %126 = fptrunc double %125 to float
  %127 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 1, i32 2
  store float %126, ptr %127, align 4, !tbaa !83
  %128 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 2
  %129 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 12, i32 0, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !74
  %131 = fpext float %130 to double
  %132 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 12, i32 0, i64 2, i32 1
  %133 = load float, ptr %132, align 4, !tbaa !76
  %134 = fpext float %133 to double
  %135 = fsub double %134, %131
  %136 = fcmp olt float %130, 0.000000e+00
  %137 = fcmp oge float %133, 0.000000e+00
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %162

139:                                              ; preds = %111
  %140 = fmul double %131, -5.110000e+02
  %141 = fdiv double %140, %135
  %142 = tail call double @llvm.floor.f64(double %141)
  %143 = tail call double @llvm.ceil.f64(double %141)
  %144 = fadd double %143, -5.110000e+02
  %145 = fcmp oeq double %142, 0.000000e+00
  br i1 %145, label %154, label %146

146:                                              ; preds = %139
  %147 = fcmp une double %144, 0.000000e+00
  br i1 %147, label %148, label %159

148:                                              ; preds = %146
  %149 = fneg double %134
  %150 = fdiv double %149, %144
  %151 = fneg double %131
  %152 = fdiv double %151, %142
  %153 = fcmp olt double %150, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %148, %139
  %155 = fmul double %134, -5.110000e+02
  %156 = fdiv double %155, %144
  %157 = fsub double %134, %156
  %158 = fptrunc double %157 to float
  br label %162

159:                                              ; preds = %148, %146
  %160 = fdiv double %140, %142
  %161 = fadd double %160, %131
  br label %162

162:                                              ; preds = %111, %154, %159
  %163 = phi double [ %135, %111 ], [ %156, %154 ], [ %160, %159 ]
  %164 = phi double [ %134, %111 ], [ %134, %154 ], [ %161, %159 ]
  %165 = phi float [ %130, %111 ], [ %158, %154 ], [ %130, %159 ]
  %166 = fdiv double %163, 5.110000e+02
  %167 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 0, i64 2, i32 0, i32 0, i32 1
  store float %165, ptr %167, align 4, !tbaa !77
  %168 = fcmp oeq double %166, 0.000000e+00
  %169 = fdiv double 5.110000e+02, %163
  %170 = select i1 %168, double 0.000000e+00, double %169
  %171 = fptrunc double %170 to float
  %172 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 0, i64 2, i32 0, i32 0, i32 2
  store float %171, ptr %172, align 4, !tbaa !79
  store float %165, ptr %128, align 8, !tbaa !80
  %173 = fptrunc double %166 to float
  %174 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 2, i32 1
  store float %173, ptr %174, align 4, !tbaa !82
  %175 = fmul double %166, 5.000000e-01
  %176 = fadd double %164, %175
  %177 = fptrunc double %176 to float
  %178 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 2, i32 2
  store float %177, ptr %178, align 16, !tbaa !83
  %179 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 6
  br label %180

180:                                              ; preds = %162, %197
  %181 = phi i64 [ 0, %162 ], [ %198, %197 ]
  %182 = getelementptr inbounds [512 x float], ptr %26, i64 0, i64 %181
  br label %183

183:                                              ; preds = %180, %183
  %184 = phi i64 [ 0, %180 ], [ %195, %183 ]
  %185 = getelementptr inbounds [3 x ptr], ptr %179, i64 0, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !5
  %187 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 %184
  %188 = load float, ptr %187, align 4, !tbaa !80
  %189 = fpext float %188 to double
  %190 = tail call float %186(double noundef %189, ptr noundef %1) #11
  %191 = getelementptr inbounds [3 x %union.gx_cie_vector_cache_s], ptr %182, i64 0, i64 %184, i32 0, i32 0, i32 3
  store float %190, ptr %191, align 4, !tbaa !35
  %192 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 %184, i32 1
  %193 = load float, ptr %192, align 4, !tbaa !82
  %194 = fadd float %188, %193
  store float %194, ptr %187, align 4, !tbaa !80
  %195 = add nuw nsw i64 %184, 1
  %196 = icmp eq i64 %195, 3
  br i1 %196, label %197, label %183, !llvm.loop !115

197:                                              ; preds = %183
  %198 = add nuw nsw i64 %181, 1
  %199 = icmp eq i64 %198, 512
  br i1 %199, label %200, label %180, !llvm.loop !116

200:                                              ; preds = %197
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  %201 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 13
  %202 = load float, ptr %201, align 4, !tbaa !74
  %203 = fpext float %202 to double
  %204 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 13, i32 0, i64 0, i32 1
  %205 = load float, ptr %204, align 4, !tbaa !76
  %206 = fpext float %205 to double
  %207 = fsub double %206, %203
  %208 = fcmp olt float %202, 0.000000e+00
  %209 = fcmp oge float %205, 0.000000e+00
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %211, label %234

211:                                              ; preds = %200
  %212 = fmul double %203, -5.110000e+02
  %213 = fdiv double %212, %207
  %214 = tail call double @llvm.floor.f64(double %213)
  %215 = tail call double @llvm.ceil.f64(double %213)
  %216 = fadd double %215, -5.110000e+02
  %217 = fcmp oeq double %214, 0.000000e+00
  br i1 %217, label %226, label %218

218:                                              ; preds = %211
  %219 = fcmp une double %216, 0.000000e+00
  br i1 %219, label %220, label %231

220:                                              ; preds = %218
  %221 = fneg double %206
  %222 = fdiv double %221, %216
  %223 = fneg double %203
  %224 = fdiv double %223, %214
  %225 = fcmp olt double %222, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %220, %211
  %227 = fmul double %206, -5.110000e+02
  %228 = fdiv double %227, %216
  %229 = fsub double %206, %228
  %230 = fptrunc double %229 to float
  br label %234

231:                                              ; preds = %220, %218
  %232 = fdiv double %212, %214
  %233 = fadd double %232, %203
  br label %234

234:                                              ; preds = %200, %226, %231
  %235 = phi double [ %207, %200 ], [ %228, %226 ], [ %232, %231 ]
  %236 = phi double [ %206, %200 ], [ %206, %226 ], [ %233, %231 ]
  %237 = phi float [ %202, %200 ], [ %230, %226 ], [ %202, %231 ]
  %238 = fdiv double %235, 5.110000e+02
  %239 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 1, i64 0, i32 0, i32 0, i32 1
  store float %237, ptr %239, align 4, !tbaa !77
  %240 = fcmp oeq double %238, 0.000000e+00
  %241 = fdiv double 5.110000e+02, %235
  %242 = select i1 %240, double 0.000000e+00, double %241
  %243 = fptrunc double %242 to float
  %244 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 1, i64 0, i32 0, i32 0, i32 2
  store float %243, ptr %244, align 4, !tbaa !79
  store float %237, ptr %4, align 16, !tbaa !80
  %245 = fptrunc double %238 to float
  %246 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %4, i64 0, i32 1
  store float %245, ptr %246, align 4, !tbaa !82
  %247 = fmul double %238, 5.000000e-01
  %248 = fadd double %236, %247
  %249 = fptrunc double %248 to float
  %250 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %4, i64 0, i32 2
  store float %249, ptr %250, align 8, !tbaa !83
  %251 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 1
  %252 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 13, i32 0, i64 1
  %253 = load float, ptr %252, align 4, !tbaa !74
  %254 = fpext float %253 to double
  %255 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 13, i32 0, i64 1, i32 1
  %256 = load float, ptr %255, align 4, !tbaa !76
  %257 = fpext float %256 to double
  %258 = fsub double %257, %254
  %259 = fcmp olt float %253, 0.000000e+00
  %260 = fcmp oge float %256, 0.000000e+00
  %261 = select i1 %259, i1 %260, i1 false
  br i1 %261, label %262, label %285

262:                                              ; preds = %234
  %263 = fmul double %254, -5.110000e+02
  %264 = fdiv double %263, %258
  %265 = tail call double @llvm.floor.f64(double %264)
  %266 = tail call double @llvm.ceil.f64(double %264)
  %267 = fadd double %266, -5.110000e+02
  %268 = fcmp oeq double %265, 0.000000e+00
  br i1 %268, label %277, label %269

269:                                              ; preds = %262
  %270 = fcmp une double %267, 0.000000e+00
  br i1 %270, label %271, label %282

271:                                              ; preds = %269
  %272 = fneg double %257
  %273 = fdiv double %272, %267
  %274 = fneg double %254
  %275 = fdiv double %274, %265
  %276 = fcmp olt double %273, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %271, %262
  %278 = fmul double %257, -5.110000e+02
  %279 = fdiv double %278, %267
  %280 = fsub double %257, %279
  %281 = fptrunc double %280 to float
  br label %285

282:                                              ; preds = %271, %269
  %283 = fdiv double %263, %265
  %284 = fadd double %283, %254
  br label %285

285:                                              ; preds = %234, %277, %282
  %286 = phi double [ %258, %234 ], [ %279, %277 ], [ %283, %282 ]
  %287 = phi double [ %257, %234 ], [ %257, %277 ], [ %284, %282 ]
  %288 = phi float [ %253, %234 ], [ %281, %277 ], [ %253, %282 ]
  %289 = fdiv double %286, 5.110000e+02
  %290 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 1, i64 1, i32 0, i32 0, i32 1
  store float %288, ptr %290, align 4, !tbaa !77
  %291 = fcmp oeq double %289, 0.000000e+00
  %292 = fdiv double 5.110000e+02, %286
  %293 = select i1 %291, double 0.000000e+00, double %292
  %294 = fptrunc double %293 to float
  %295 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 1, i64 1, i32 0, i32 0, i32 2
  store float %294, ptr %295, align 4, !tbaa !79
  store float %288, ptr %251, align 4, !tbaa !80
  %296 = fptrunc double %289 to float
  %297 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 1, i32 1
  store float %296, ptr %297, align 16, !tbaa !82
  %298 = fmul double %289, 5.000000e-01
  %299 = fadd double %287, %298
  %300 = fptrunc double %299 to float
  %301 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 1, i32 2
  store float %300, ptr %301, align 4, !tbaa !83
  %302 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 2
  %303 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 13, i32 0, i64 2
  %304 = load float, ptr %303, align 4, !tbaa !74
  %305 = fpext float %304 to double
  %306 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 13, i32 0, i64 2, i32 1
  %307 = load float, ptr %306, align 4, !tbaa !76
  %308 = fpext float %307 to double
  %309 = fsub double %308, %305
  %310 = fcmp olt float %304, 0.000000e+00
  %311 = fcmp oge float %307, 0.000000e+00
  %312 = select i1 %310, i1 %311, i1 false
  br i1 %312, label %313, label %336

313:                                              ; preds = %285
  %314 = fmul double %305, -5.110000e+02
  %315 = fdiv double %314, %309
  %316 = tail call double @llvm.floor.f64(double %315)
  %317 = tail call double @llvm.ceil.f64(double %315)
  %318 = fadd double %317, -5.110000e+02
  %319 = fcmp oeq double %316, 0.000000e+00
  br i1 %319, label %328, label %320

320:                                              ; preds = %313
  %321 = fcmp une double %318, 0.000000e+00
  br i1 %321, label %322, label %333

322:                                              ; preds = %320
  %323 = fneg double %308
  %324 = fdiv double %323, %318
  %325 = fneg double %305
  %326 = fdiv double %325, %316
  %327 = fcmp olt double %324, %326
  br i1 %327, label %328, label %333

328:                                              ; preds = %322, %313
  %329 = fmul double %308, -5.110000e+02
  %330 = fdiv double %329, %318
  %331 = fsub double %308, %330
  %332 = fptrunc double %331 to float
  br label %336

333:                                              ; preds = %322, %320
  %334 = fdiv double %314, %316
  %335 = fadd double %334, %305
  br label %336

336:                                              ; preds = %285, %328, %333
  %337 = phi double [ %309, %285 ], [ %330, %328 ], [ %334, %333 ]
  %338 = phi double [ %308, %285 ], [ %308, %328 ], [ %335, %333 ]
  %339 = phi float [ %304, %285 ], [ %332, %328 ], [ %304, %333 ]
  %340 = fdiv double %337, 5.110000e+02
  %341 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 1, i64 2, i32 0, i32 0, i32 1
  store float %339, ptr %341, align 4, !tbaa !77
  %342 = fcmp oeq double %340, 0.000000e+00
  %343 = fdiv double 5.110000e+02, %337
  %344 = select i1 %342, double 0.000000e+00, double %343
  %345 = fptrunc double %344 to float
  %346 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 1, i64 2, i32 0, i32 0, i32 2
  store float %345, ptr %346, align 4, !tbaa !79
  store float %339, ptr %302, align 8, !tbaa !80
  %347 = fptrunc double %340 to float
  %348 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 2, i32 1
  store float %347, ptr %348, align 4, !tbaa !82
  %349 = fmul double %340, 5.000000e-01
  %350 = fadd double %338, %349
  %351 = fptrunc double %350 to float
  %352 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 2, i32 2
  store float %351, ptr %352, align 16, !tbaa !83
  %353 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 9
  br label %354

354:                                              ; preds = %336, %370
  %355 = phi i64 [ 0, %336 ], [ %371, %370 ]
  br label %356

356:                                              ; preds = %354, %356
  %357 = phi i64 [ 0, %354 ], [ %368, %356 ]
  %358 = getelementptr inbounds [3 x ptr], ptr %353, i64 0, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !5
  %360 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 %357
  %361 = load float, ptr %360, align 4, !tbaa !80
  %362 = fpext float %361 to double
  %363 = tail call float %359(double noundef %362, ptr noundef %1) #11
  %364 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 1, i64 %357, i32 0, i32 1, i64 %355
  store float %363, ptr %364, align 4, !tbaa !35
  %365 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 %357, i32 1
  %366 = load float, ptr %365, align 4, !tbaa !82
  %367 = fadd float %361, %366
  store float %367, ptr %360, align 4, !tbaa !80
  %368 = add nuw nsw i64 %357, 1
  %369 = icmp eq i64 %368, 3
  br i1 %369, label %370, label %356, !llvm.loop !117

370:                                              ; preds = %356
  %371 = add nuw nsw i64 %355, 1
  %372 = icmp eq i64 %371, 512
  br i1 %372, label %373, label %354, !llvm.loop !118

373:                                              ; preds = %370
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  %374 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 11, i32 0, i32 3
  %375 = load ptr, ptr %374, align 8, !tbaa !21
  %376 = icmp eq ptr %375, null
  br i1 %376, label %410, label %377

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 11, i32 0, i32 2
  %379 = load i32, ptr %378, align 4, !tbaa !34
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = zext nneg i32 %379 to i64
  br label %387

383:                                              ; preds = %387, %377
  %384 = icmp sgt i32 %379, 0
  %385 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 11, i32 1
  %386 = zext nneg i32 %379 to i64
  br label %394

387:                                              ; preds = %381, %387
  %388 = phi i64 [ 0, %381 ], [ %392, %387 ]
  %389 = getelementptr inbounds %struct.gs_cie_render_s, ptr %1, i64 0, i32 19, i32 2, i64 %388
  %390 = getelementptr inbounds %struct.cie_cache_params_s, ptr %389, i64 0, i32 1
  store float 0.000000e+00, ptr %390, align 4, !tbaa !77
  %391 = getelementptr inbounds %struct.cie_cache_params_s, ptr %389, i64 0, i32 2
  store float 5.110000e+02, ptr %391, align 4, !tbaa !79
  %392 = add nuw nsw i64 %388, 1
  %393 = icmp eq i64 %392, %382
  br i1 %393, label %383, label %387, !llvm.loop !119

394:                                              ; preds = %383, %407
  %395 = phi i64 [ 0, %383 ], [ %408, %407 ]
  br i1 %384, label %396, label %407

396:                                              ; preds = %394
  %397 = trunc i64 %395 to i8
  %398 = getelementptr inbounds [512 x i16], ptr %1, i64 0, i64 %395
  br label %399

399:                                              ; preds = %396, %399
  %400 = phi i64 [ 0, %396 ], [ %405, %399 ]
  %401 = getelementptr inbounds [4 x ptr], ptr %385, i64 0, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !5
  %403 = tail call signext i16 %402(i8 noundef zeroext %397, ptr noundef %1) #11
  %404 = getelementptr inbounds %struct.gs_cie_render_s, ptr %398, i64 0, i32 19, i32 2, i64 %400, i32 0, i32 1
  store i16 %403, ptr %404, align 2, !tbaa !35
  %405 = add nuw nsw i64 %400, 1
  %406 = icmp eq i64 %405, %386
  br i1 %406, label %407, label %399, !llvm.loop !120

407:                                              ; preds = %399, %394
  %408 = add nuw nsw i64 %395, 1
  %409 = icmp eq i64 %408, 256
  br i1 %409, label %410, label %394, !llvm.loop !121

410:                                              ; preds = %407, %373
  %411 = tail call i32 @gs_cie_render_complete(ptr noundef %1)
  %412 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %413 = load ptr, ptr %412, align 8, !tbaa !122
  br label %414

414:                                              ; preds = %422, %410
  %415 = phi ptr [ %413, %410 ], [ %423, %422 ]
  %416 = load ptr, ptr %415, align 8, !tbaa !123
  %417 = load i32, ptr %416, align 8, !tbaa !125
  switch i32 %417, label %427 [
    i32 5, label %424
    i32 6, label %424
    i32 7, label %418
    i32 8, label %420
  ]

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.gs_color_space_s, ptr %415, i64 0, i32 1, i32 0, i32 1
  br label %422

420:                                              ; preds = %414
  %421 = tail call ptr @gs_color_space_indexed_base(ptr noundef nonnull %415) #11
  br label %422

422:                                              ; preds = %420, %418
  %423 = phi ptr [ %421, %420 ], [ %419, %418 ]
  br label %414

424:                                              ; preds = %414, %414
  %425 = getelementptr inbounds %struct.gs_color_space_s, ptr %415, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !35
  br label %427

427:                                              ; preds = %414, %424
  %428 = phi ptr [ %426, %424 ], [ null, %414 ]
  %429 = icmp eq ptr %428, null
  br i1 %429, label %436, label %430

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 19
  %432 = load ptr, ptr %431, align 8, !tbaa !127
  %433 = load ptr, ptr %6, align 8, !tbaa !108
  tail call fastcc void @cie_joint_caches_init(ptr noundef %432, ptr noundef nonnull %428, ptr noundef %433)
  %434 = load ptr, ptr %431, align 8, !tbaa !127
  %435 = load ptr, ptr %6, align 8, !tbaa !108
  tail call fastcc void @cie_joint_caches_complete(ptr noundef %434, ptr noundef nonnull %428, ptr noundef %435)
  br label %436

436:                                              ; preds = %427, %430
  %437 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %438 = load ptr, ptr %437, align 8, !tbaa !128
  store ptr @gx_dc_procs_none, ptr %438, align 8, !tbaa !129
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_cie_render_init(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca %struct.gs_matrix3_s, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5
  %4 = load float, ptr %3, align 4, !tbaa !64
  %5 = fcmp oeq float %4, 1.000000e+00
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5, i32 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = fcmp oeq float %8, 0.000000e+00
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5, i32 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !66
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5, i32 1, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = fcmp oeq float %16, 1.000000e+00
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !68
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5, i32 1, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !69
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5, i32 2, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !70
  %29 = fcmp oeq float %28, 1.000000e+00
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !71
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5, i32 2, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !72
  %37 = fcmp oeq float %36, 0.000000e+00
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %1, %6, %10, %14, %18, %22, %26, %30, %34
  %40 = phi i32 [ 0, %26 ], [ 0, %22 ], [ 0, %18 ], [ 0, %14 ], [ 0, %10 ], [ 0, %6 ], [ 0, %1 ], [ 0, %30 ], [ %38, %34 ]
  %41 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 5, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !73
  %42 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8
  %43 = load float, ptr %42, align 4, !tbaa !64
  %44 = fcmp oeq float %43, 1.000000e+00
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8, i32 0, i32 1
  %47 = load float, ptr %46, align 4, !tbaa !65
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8, i32 0, i32 2
  %51 = load float, ptr %50, align 4, !tbaa !66
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8, i32 1, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !67
  %56 = fcmp oeq float %55, 1.000000e+00
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8, i32 1
  %59 = load float, ptr %58, align 4, !tbaa !68
  %60 = fcmp oeq float %59, 0.000000e+00
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8, i32 1, i32 2
  %63 = load float, ptr %62, align 4, !tbaa !69
  %64 = fcmp oeq float %63, 0.000000e+00
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8, i32 2, i32 2
  %67 = load float, ptr %66, align 4, !tbaa !70
  %68 = fcmp oeq float %67, 1.000000e+00
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8, i32 2
  %71 = load float, ptr %70, align 4, !tbaa !71
  %72 = fcmp oeq float %71, 0.000000e+00
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8, i32 2, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !72
  %76 = fcmp oeq float %75, 0.000000e+00
  %77 = zext i1 %76 to i32
  br label %78

78:                                               ; preds = %39, %45, %49, %53, %57, %61, %65, %69, %73
  %79 = phi i32 [ 0, %65 ], [ 0, %61 ], [ 0, %57 ], [ 0, %53 ], [ 0, %49 ], [ 0, %45 ], [ 0, %39 ], [ 0, %69 ], [ %77, %73 ]
  %80 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8, i32 3
  store i32 %79, ptr %80, align 4, !tbaa !73
  %81 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2
  %82 = load float, ptr %81, align 4, !tbaa !64
  %83 = fcmp oeq float %82, 1.000000e+00
  br i1 %83, label %84, label %117

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 0, i32 1
  %86 = load float, ptr %85, align 4, !tbaa !65
  %87 = fcmp oeq float %86, 0.000000e+00
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 0, i32 2
  %90 = load float, ptr %89, align 4, !tbaa !66
  %91 = fcmp oeq float %90, 0.000000e+00
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 1, i32 1
  %94 = load float, ptr %93, align 4, !tbaa !67
  %95 = fcmp oeq float %94, 1.000000e+00
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 1
  %98 = load float, ptr %97, align 4, !tbaa !68
  %99 = fcmp oeq float %98, 0.000000e+00
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 1, i32 2
  %102 = load float, ptr %101, align 4, !tbaa !69
  %103 = fcmp oeq float %102, 0.000000e+00
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 2, i32 2
  %106 = load float, ptr %105, align 4, !tbaa !70
  %107 = fcmp oeq float %106, 1.000000e+00
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 2
  %110 = load float, ptr %109, align 4, !tbaa !71
  %111 = fcmp oeq float %110, 0.000000e+00
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 2, i32 1
  %114 = load float, ptr %113, align 4, !tbaa !72
  %115 = fcmp oeq float %114, 0.000000e+00
  %116 = zext i1 %115 to i32
  br label %117

117:                                              ; preds = %78, %84, %88, %92, %96, %100, %104, %108, %112
  %118 = phi i32 [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %78 ], [ 0, %108 ], [ %116, %112 ]
  %119 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 3
  store i32 %118, ptr %119, align 4, !tbaa !73
  %120 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 1
  %121 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 1, i32 1
  %122 = load float, ptr %121, align 4, !tbaa !67
  %123 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 2
  %124 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 2, i32 2
  %125 = load float, ptr %124, align 4, !tbaa !70
  %126 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 2, i32 1
  %127 = load float, ptr %126, align 4, !tbaa !72
  %128 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 1, i32 2
  %129 = load float, ptr %128, align 4, !tbaa !69
  %130 = fneg float %127
  %131 = fmul float %129, %130
  %132 = tail call float @llvm.fmuladd.f32(float %122, float %125, float %131)
  %133 = fpext float %132 to double
  %134 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 0, i32 2
  %135 = load float, ptr %134, align 4, !tbaa !66
  %136 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 2, i32 0, i32 1
  %137 = load float, ptr %136, align 4, !tbaa !65
  %138 = fneg float %137
  %139 = fmul float %125, %138
  %140 = tail call float @llvm.fmuladd.f32(float %127, float %135, float %139)
  %141 = fpext float %140 to double
  %142 = fneg float %122
  %143 = fmul float %135, %142
  %144 = tail call float @llvm.fmuladd.f32(float %137, float %129, float %143)
  %145 = fpext float %144 to double
  %146 = fpext float %82 to double
  %147 = load float, ptr %120, align 4, !tbaa !68
  %148 = fpext float %147 to double
  %149 = fmul double %148, %141
  %150 = tail call double @llvm.fmuladd.f64(double %146, double %133, double %149)
  %151 = load float, ptr %123, align 4, !tbaa !71
  %152 = fpext float %151 to double
  %153 = tail call double @llvm.fmuladd.f64(double %152, double %145, double %150)
  %154 = fdiv double %133, %153
  %155 = fptrunc double %154 to float
  store float %155, ptr %2, align 4, !tbaa !64
  %156 = fdiv double %141, %153
  %157 = fptrunc double %156 to float
  %158 = getelementptr inbounds %struct.gs_vector3_s, ptr %2, i64 0, i32 1
  store float %157, ptr %158, align 4, !tbaa !65
  %159 = fdiv double %145, %153
  %160 = fptrunc double %159 to float
  %161 = getelementptr inbounds %struct.gs_vector3_s, ptr %2, i64 0, i32 2
  store float %160, ptr %161, align 4, !tbaa !66
  %162 = fneg float %147
  %163 = fmul float %125, %162
  %164 = tail call float @llvm.fmuladd.f32(float %151, float %129, float %163)
  %165 = fpext float %164 to double
  %166 = fdiv double %165, %153
  %167 = fptrunc double %166 to float
  %168 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 1
  store float %167, ptr %168, align 4, !tbaa !68
  %169 = fneg float %151
  %170 = fmul float %135, %169
  %171 = tail call float @llvm.fmuladd.f32(float %82, float %125, float %170)
  %172 = fpext float %171 to double
  %173 = fdiv double %172, %153
  %174 = fptrunc double %173 to float
  %175 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 1, i32 1
  store float %174, ptr %175, align 4, !tbaa !67
  %176 = fneg float %82
  %177 = fmul float %129, %176
  %178 = tail call float @llvm.fmuladd.f32(float %147, float %135, float %177)
  %179 = fpext float %178 to double
  %180 = fdiv double %179, %153
  %181 = fptrunc double %180 to float
  %182 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 1, i32 2
  store float %181, ptr %182, align 4, !tbaa !69
  %183 = fmul float %122, %169
  %184 = tail call float @llvm.fmuladd.f32(float %147, float %127, float %183)
  %185 = fpext float %184 to double
  %186 = fdiv double %185, %153
  %187 = fptrunc double %186 to float
  %188 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 2
  store float %187, ptr %188, align 4, !tbaa !71
  %189 = fmul float %127, %176
  %190 = tail call float @llvm.fmuladd.f32(float %151, float %137, float %189)
  %191 = fpext float %190 to double
  %192 = fdiv double %191, %153
  %193 = fptrunc double %192 to float
  %194 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 2, i32 1
  store float %193, ptr %194, align 4, !tbaa !72
  %195 = fmul float %137, %162
  %196 = tail call float @llvm.fmuladd.f32(float %82, float %122, float %195)
  %197 = fpext float %196 to double
  %198 = fdiv double %197, %153
  %199 = fptrunc double %198 to float
  %200 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 2, i32 2
  store float %199, ptr %200, align 4, !tbaa !70
  %201 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 3
  store i32 %118, ptr %201, align 4, !tbaa !73
  %202 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 16
  call fastcc void @cie_matrix_mult3(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %202)
  %203 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 3
  %204 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 12
  tail call fastcc void @cie_transform_range3(ptr noundef nonnull %203, ptr noundef nonnull %202, ptr noundef nonnull %204)
  %205 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 7
  %206 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 13
  tail call fastcc void @cie_transform_range3(ptr noundef nonnull %205, ptr noundef nonnull %42, ptr noundef nonnull %206)
  %207 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 1
  %208 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 17
  %209 = load float, ptr %207, align 4, !tbaa !97
  %210 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %211 = load float, ptr %210, align 4, !tbaa !98
  %212 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 1, i32 0, i32 2
  %213 = load float, ptr %212, align 4, !tbaa !99
  %214 = load float, ptr %81, align 4, !tbaa !64
  %215 = load float, ptr %120, align 4, !tbaa !68
  %216 = fmul float %211, %215
  %217 = tail call float @llvm.fmuladd.f32(float %209, float %214, float %216)
  %218 = load float, ptr %123, align 4, !tbaa !71
  %219 = tail call float @llvm.fmuladd.f32(float %213, float %218, float %217)
  store float %219, ptr %208, align 4, !tbaa !97
  %220 = load float, ptr %136, align 4, !tbaa !65
  %221 = load float, ptr %121, align 4, !tbaa !67
  %222 = fmul float %211, %221
  %223 = tail call float @llvm.fmuladd.f32(float %209, float %220, float %222)
  %224 = load float, ptr %126, align 4, !tbaa !72
  %225 = tail call float @llvm.fmuladd.f32(float %213, float %224, float %223)
  %226 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 17, i32 1
  store float %225, ptr %226, align 4, !tbaa !98
  %227 = load float, ptr %134, align 4, !tbaa !66
  %228 = load float, ptr %128, align 4, !tbaa !69
  %229 = fmul float %211, %228
  %230 = tail call float @llvm.fmuladd.f32(float %209, float %227, float %229)
  %231 = load float, ptr %124, align 4, !tbaa !70
  %232 = tail call float @llvm.fmuladd.f32(float %213, float %231, float %230)
  %233 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 17, i32 2
  store float %232, ptr %233, align 4, !tbaa !99
  %234 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 1, i32 1
  %235 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 18
  %236 = load float, ptr %234, align 4, !tbaa !97
  %237 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %238 = load float, ptr %237, align 4, !tbaa !98
  %239 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 1, i32 1, i32 2
  %240 = load float, ptr %239, align 4, !tbaa !99
  %241 = fmul float %215, %238
  %242 = tail call float @llvm.fmuladd.f32(float %236, float %214, float %241)
  %243 = tail call float @llvm.fmuladd.f32(float %240, float %218, float %242)
  store float %243, ptr %235, align 4, !tbaa !97
  %244 = fmul float %221, %238
  %245 = tail call float @llvm.fmuladd.f32(float %236, float %220, float %244)
  %246 = tail call float @llvm.fmuladd.f32(float %240, float %224, float %245)
  %247 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 18, i32 1
  store float %246, ptr %247, align 4, !tbaa !98
  %248 = fmul float %228, %238
  %249 = tail call float @llvm.fmuladd.f32(float %236, float %227, float %248)
  %250 = tail call float @llvm.fmuladd.f32(float %240, float %231, float %249)
  %251 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 18, i32 2
  store float %250, ptr %251, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_cie_cache_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #4 {
  %5 = load float, ptr %2, align 4, !tbaa !74
  %6 = fpext float %5 to double
  %7 = getelementptr inbounds %struct.gs_range_s, ptr %2, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !76
  %9 = fpext float %8 to double
  %10 = fsub double %9, %6
  %11 = fcmp olt float %5, 0.000000e+00
  %12 = fcmp oge float %8, 0.000000e+00
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %37

14:                                               ; preds = %4
  %15 = fmul double %6, -5.110000e+02
  %16 = fdiv double %15, %10
  %17 = tail call double @llvm.floor.f64(double %16)
  %18 = tail call double @llvm.ceil.f64(double %16)
  %19 = fadd double %18, -5.110000e+02
  %20 = fcmp oeq double %17, 0.000000e+00
  br i1 %20, label %29, label %21

21:                                               ; preds = %14
  %22 = fcmp une double %19, 0.000000e+00
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = fneg double %9
  %25 = fdiv double %24, %19
  %26 = fneg double %6
  %27 = fdiv double %26, %17
  %28 = fcmp olt double %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23, %14
  %30 = fmul double %9, -5.110000e+02
  %31 = fdiv double %30, %19
  %32 = fsub double %9, %31
  %33 = fptrunc double %32 to float
  br label %37

34:                                               ; preds = %23, %21
  %35 = fdiv double %15, %17
  %36 = fadd double %35, %6
  br label %37

37:                                               ; preds = %29, %34, %4
  %38 = phi double [ %10, %4 ], [ %31, %29 ], [ %35, %34 ]
  %39 = phi double [ %9, %4 ], [ %9, %29 ], [ %36, %34 ]
  %40 = phi float [ %5, %4 ], [ %33, %29 ], [ %5, %34 ]
  %41 = fdiv double %38, 5.110000e+02
  %42 = getelementptr inbounds %struct.cie_cache_params_s, ptr %0, i64 0, i32 1
  store float %40, ptr %42, align 4, !tbaa !77
  %43 = fcmp oeq double %41, 0.000000e+00
  %44 = fdiv double 5.110000e+02, %38
  %45 = select i1 %43, double 0.000000e+00, double %44
  %46 = fptrunc double %45 to float
  %47 = getelementptr inbounds %struct.cie_cache_params_s, ptr %0, i64 0, i32 2
  store float %46, ptr %47, align 4, !tbaa !79
  store float %40, ptr %1, align 4, !tbaa !80
  %48 = fptrunc double %41 to float
  %49 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %1, i64 0, i32 1
  store float %48, ptr %49, align 4, !tbaa !82
  %50 = fmul double %41, 5.000000e-01
  %51 = fadd double %39, %50
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %1, i64 0, i32 2
  store float %52, ptr %53, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_cie_render_complete(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 7
  %4 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 7, i32 0, i64 0, i32 1
  %5 = load float, ptr %3, align 4, !tbaa !74
  br label %6

6:                                                ; preds = %16, %1
  %7 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %8 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %2, i64 0, i32 1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = fcmp olt float %9, %5
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load float, ptr %4, align 4, !tbaa !76
  %13 = fcmp ogt float %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %6
  %15 = phi float [ %5, %6 ], [ %12, %11 ]
  store float %15, ptr %8, align 4, !tbaa !53
  br label %16

16:                                               ; preds = %14, %11
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 512
  br i1 %18, label %19, label %6, !llvm.loop !135

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 0, i64 1
  %21 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 7, i32 0, i64 1
  %22 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 7, i32 0, i64 1, i32 1
  %23 = load float, ptr %21, align 4, !tbaa !74
  br label %24

24:                                               ; preds = %34, %19
  %25 = phi i64 [ 0, %19 ], [ %35, %34 ]
  %26 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %20, i64 0, i32 1, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !53
  %28 = fcmp olt float %27, %23
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load float, ptr %22, align 4, !tbaa !76
  %31 = fcmp ogt float %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %24
  %33 = phi float [ %23, %24 ], [ %30, %29 ]
  store float %33, ptr %26, align 4, !tbaa !53
  br label %34

34:                                               ; preds = %32, %29
  %35 = add nuw nsw i64 %25, 1
  %36 = icmp eq i64 %35, 512
  br i1 %36, label %37, label %24, !llvm.loop !135

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 0, i64 2
  %39 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 7, i32 0, i64 2
  %40 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 7, i32 0, i64 2, i32 1
  %41 = load float, ptr %39, align 4, !tbaa !74
  br label %42

42:                                               ; preds = %52, %37
  %43 = phi i64 [ 0, %37 ], [ %53, %52 ]
  %44 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %38, i64 0, i32 1, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !53
  %46 = fcmp olt float %45, %41
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load float, ptr %40, align 4, !tbaa !76
  %49 = fcmp ogt float %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %42
  %51 = phi float [ %41, %42 ], [ %48, %47 ]
  store float %51, ptr %44, align 4, !tbaa !53
  br label %52

52:                                               ; preds = %50, %47
  %53 = add nuw nsw i64 %43, 1
  %54 = icmp eq i64 %53, 512
  br i1 %54, label %55, label %42, !llvm.loop !135

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1
  %57 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 10
  %58 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 10, i32 0, i64 0, i32 1
  %59 = load float, ptr %57, align 4, !tbaa !74
  br label %60

60:                                               ; preds = %70, %55
  %61 = phi i64 [ 0, %55 ], [ %71, %70 ]
  %62 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %56, i64 0, i32 1, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !53
  %64 = fcmp olt float %63, %59
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load float, ptr %58, align 4, !tbaa !76
  %67 = fcmp ogt float %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %60
  %69 = phi float [ %59, %60 ], [ %66, %65 ]
  store float %69, ptr %62, align 4, !tbaa !53
  br label %70

70:                                               ; preds = %68, %65
  %71 = add nuw nsw i64 %61, 1
  %72 = icmp eq i64 %71, 512
  br i1 %72, label %73, label %60, !llvm.loop !135

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1, i64 1
  %75 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 10, i32 0, i64 1
  %76 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 10, i32 0, i64 1, i32 1
  %77 = load float, ptr %75, align 4, !tbaa !74
  br label %78

78:                                               ; preds = %88, %73
  %79 = phi i64 [ 0, %73 ], [ %89, %88 ]
  %80 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %74, i64 0, i32 1, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !53
  %82 = fcmp olt float %81, %77
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load float, ptr %76, align 4, !tbaa !76
  %85 = fcmp ogt float %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %83, %78
  %87 = phi float [ %77, %78 ], [ %84, %83 ]
  store float %87, ptr %80, align 4, !tbaa !53
  br label %88

88:                                               ; preds = %86, %83
  %89 = add nuw nsw i64 %79, 1
  %90 = icmp eq i64 %89, 512
  br i1 %90, label %91, label %78, !llvm.loop !135

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1, i64 2
  %93 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 10, i32 0, i64 2
  %94 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 10, i32 0, i64 2, i32 1
  %95 = load float, ptr %93, align 4, !tbaa !74
  br label %96

96:                                               ; preds = %106, %91
  %97 = phi i64 [ 0, %91 ], [ %107, %106 ]
  %98 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %92, i64 0, i32 1, i64 %97
  %99 = load float, ptr %98, align 4, !tbaa !53
  %100 = fcmp olt float %99, %95
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load float, ptr %94, align 4, !tbaa !76
  %103 = fcmp ogt float %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %101, %96
  %105 = phi float [ %95, %96 ], [ %102, %101 ]
  store float %105, ptr %98, align 4, !tbaa !53
  br label %106

106:                                              ; preds = %104, %101
  %107 = add nuw nsw i64 %97, 1
  %108 = icmp eq i64 %107, 512
  br i1 %108, label %109, label %96, !llvm.loop !135

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14
  %111 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %110, ptr noundef nonnull align 8 dereferenceable(40) %111, i64 40, i1 false), !tbaa.struct !136
  %112 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 11, i32 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !21
  %114 = icmp eq ptr %113, null
  br label %115

115:                                              ; preds = %109, %172
  %116 = phi i64 [ 0, %109 ], [ %173, %172 ]
  %117 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1, i64 %116
  br i1 %114, label %118, label %143

118:                                              ; preds = %115, %127
  %119 = phi i64 [ %128, %127 ], [ 0, %115 ]
  %120 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %117, i64 0, i32 1, i64 %119
  %121 = load float, ptr %120, align 4, !tbaa !53
  %122 = fcmp olt float %121, 0.000000e+00
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = fcmp ogt float %121, 1.000000e+00
  br i1 %124, label %125, label %127

125:                                              ; preds = %123, %118
  %126 = phi float [ 0.000000e+00, %118 ], [ 1.000000e+00, %123 ]
  store float %126, ptr %120, align 4, !tbaa !53
  br label %127

127:                                              ; preds = %125, %123
  %128 = add nuw nsw i64 %119, 1
  %129 = icmp eq i64 %128, 512
  br i1 %129, label %130, label %118, !llvm.loop !135

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %117, i64 0, i32 1
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i64 [ 0, %130 ], [ %141, %132 ]
  %134 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %117, i64 0, i32 1, i64 %133
  %135 = load float, ptr %134, align 4, !tbaa !35
  %136 = fpext float %135 to double
  %137 = fadd double %136, 0x3EF0010010010010
  %138 = fmul double %137, 3.276000e+04
  %139 = fptosi double %138 to i16
  %140 = getelementptr inbounds [512 x i16], ptr %131, i64 0, i64 %133
  store i16 %139, ptr %140, align 2, !tbaa !35
  %141 = add nuw nsw i64 %133, 1
  %142 = icmp eq i64 %141, 512
  br i1 %142, label %172, label %132, !llvm.loop !137

143:                                              ; preds = %115
  %144 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 11, i32 0, i32 1, i64 %116
  %145 = load i32, ptr %144, align 4, !tbaa !102
  %146 = getelementptr inbounds %struct.gs_range_s, ptr %57, i64 %116
  %147 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %117, i64 0, i32 1
  %148 = add nsw i32 %145, -1
  %149 = sitofp i32 %148 to float
  %150 = getelementptr inbounds %struct.gs_range_s, ptr %57, i64 %116, i32 1
  %151 = shl i32 %145, 10
  %152 = add nsw i32 %151, -1
  br label %153

153:                                              ; preds = %143, %153
  %154 = phi i64 [ 512, %143 ], [ %155, %153 ]
  %155 = add nsw i64 %154, -1
  %156 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %117, i64 0, i32 1, i64 %155
  %157 = load float, ptr %156, align 4, !tbaa !35
  %158 = load float, ptr %146, align 4, !tbaa !74
  %159 = fsub float %157, %158
  %160 = fmul float %159, %149
  %161 = load float, ptr %150, align 4, !tbaa !76
  %162 = fsub float %161, %158
  %163 = fdiv float %160, %162
  %164 = fmul float %163, 1.024000e+03
  %165 = fptosi float %164 to i32
  %166 = icmp ugt i32 %151, %165
  %167 = icmp slt i32 %165, 0
  %168 = select i1 %167, i32 0, i32 %152
  %169 = select i1 %166, i32 %165, i32 %168
  %170 = getelementptr inbounds [512 x i32], ptr %147, i64 0, i64 %155
  store i32 %169, ptr %170, align 4, !tbaa !35
  %171 = icmp ugt i64 %154, 1
  br i1 %171, label %153, label %172, !llvm.loop !138

172:                                              ; preds = %153, %132
  store i32 0, ptr %117, align 4, !tbaa !35
  %173 = add nuw nsw i64 %116, 1
  %174 = icmp eq i64 %173, 3
  br i1 %174, label %175, label %115, !llvm.loop !139

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1, i64 0, i32 0, i32 0, i32 2
  %177 = load float, ptr %176, align 4, !tbaa !35
  %178 = load float, ptr %110, align 8, !tbaa !140
  %179 = fmul float %177, %178
  store float %179, ptr %110, align 8, !tbaa !140
  %180 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14, i32 1
  %181 = load float, ptr %180, align 4, !tbaa !141
  %182 = fmul float %177, %181
  store float %182, ptr %180, align 4, !tbaa !141
  %183 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14, i32 2
  %184 = load float, ptr %183, align 8, !tbaa !142
  %185 = fmul float %177, %184
  store float %185, ptr %183, align 8, !tbaa !142
  %186 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1, i64 0, i32 0, i32 0, i32 1
  %187 = load float, ptr %186, align 4, !tbaa !35
  %188 = fmul float %177, %187
  %189 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 15
  store float %188, ptr %189, align 8, !tbaa !53
  %190 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1, i64 1, i32 0, i32 0, i32 2
  %191 = load float, ptr %190, align 4, !tbaa !35
  %192 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14, i32 0, i32 1
  %193 = load float, ptr %192, align 4, !tbaa !143
  %194 = fmul float %191, %193
  store float %194, ptr %192, align 4, !tbaa !143
  %195 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14, i32 1, i32 1
  %196 = load float, ptr %195, align 4, !tbaa !144
  %197 = fmul float %191, %196
  store float %197, ptr %195, align 4, !tbaa !144
  %198 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14, i32 2, i32 1
  %199 = load float, ptr %198, align 4, !tbaa !145
  %200 = fmul float %191, %199
  store float %200, ptr %198, align 4, !tbaa !145
  %201 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1, i64 1, i32 0, i32 0, i32 1
  %202 = load float, ptr %201, align 4, !tbaa !35
  %203 = fmul float %191, %202
  %204 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 15, i64 1
  store float %203, ptr %204, align 4, !tbaa !53
  %205 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1, i64 2, i32 0, i32 0, i32 2
  %206 = load float, ptr %205, align 4, !tbaa !35
  %207 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14, i32 0, i32 2
  %208 = load float, ptr %207, align 8, !tbaa !146
  %209 = fmul float %206, %208
  store float %209, ptr %207, align 8, !tbaa !146
  %210 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14, i32 1, i32 2
  %211 = load float, ptr %210, align 4, !tbaa !147
  %212 = fmul float %206, %211
  store float %212, ptr %210, align 4, !tbaa !147
  %213 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14, i32 2, i32 2
  %214 = load float, ptr %213, align 8, !tbaa !148
  %215 = fmul float %206, %214
  store float %215, ptr %213, align 8, !tbaa !148
  %216 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 19, i32 1, i64 2, i32 0, i32 0, i32 1
  %217 = load float, ptr %216, align 4, !tbaa !35
  %218 = fmul float %206, %217
  %219 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 15, i64 2
  store float %218, ptr %219, align 8, !tbaa !53
  %220 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 14, i32 3
  store i32 0, ptr %220, align 4, !tbaa !149
  %221 = tail call fastcc i32 @cie_cache_mult3(ptr noundef nonnull %2, ptr noundef nonnull %110)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_cie_cs_complete(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  br label %5

5:                                                ; preds = %13, %2
  %6 = phi ptr [ %4, %2 ], [ %14, %13 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = load i32, ptr %7, align 8, !tbaa !125
  switch i32 %8, label %18 [
    i32 5, label %15
    i32 6, label %15
    i32 7, label %9
    i32 8, label %11
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_color_space_s, ptr %6, i64 0, i32 1, i32 0, i32 1
  br label %13

11:                                               ; preds = %5
  %12 = tail call ptr @gs_color_space_indexed_base(ptr noundef nonnull %6) #11
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ]
  br label %5

15:                                               ; preds = %5, %5
  %16 = getelementptr inbounds %struct.gs_color_space_s, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi ptr [ %17, %15 ], [ null, %5 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !127
  %26 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 14
  %27 = load ptr, ptr %26, align 8, !tbaa !108
  tail call fastcc void @cie_joint_caches_init(ptr noundef %25, ptr noundef nonnull %19, ptr noundef %27)
  br label %28

28:                                               ; preds = %23, %21
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 14
  %32 = load ptr, ptr %31, align 8, !tbaa !108
  tail call fastcc void @cie_joint_caches_complete(ptr noundef %30, ptr noundef nonnull %19, ptr noundef %32)
  br label %33

33:                                               ; preds = %28, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_currentcolorrendering(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_currentciecaches(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8, !tbaa !150
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rc_header_s, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  %11 = load ptr, ptr %0, align 8, !tbaa !155
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %29, label %13

13:                                               ; preds = %8, %5, %1
  %14 = load ptr, ptr %0, align 8, !tbaa !155
  %15 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = tail call ptr %16(ptr noundef %14, ptr noundef nonnull @st_joint_caches, ptr noundef nonnull @.str.5) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  store i64 1, ptr %17, align 8, !tbaa !150
  %20 = load ptr, ptr %0, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.rc_header_s, ptr %17, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !154
  %22 = getelementptr inbounds %struct.rc_header_s, ptr %17, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %22, align 8, !tbaa !159
  %23 = load ptr, ptr %2, align 8, !tbaa !127
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i64, ptr %23, align 8, !tbaa !150
  %27 = add nsw i64 %26, -1
  store i64 %27, ptr %23, align 8, !tbaa !150
  br label %28

28:                                               ; preds = %25, %19
  store ptr %17, ptr %2, align 8, !tbaa !127
  br i1 %18, label %31, label %29

29:                                               ; preds = %28, %8
  %30 = load ptr, ptr %2, align 8, !tbaa !127
  br label %31

31:                                               ; preds = %13, %28, %29
  %32 = phi ptr [ null, %28 ], [ %30, %29 ], [ null, %13 ]
  ret ptr %32
}

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cie_matrix_mult3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !97
  %5 = getelementptr inbounds %struct.gs_vector3_s, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !98
  %7 = getelementptr inbounds %struct.gs_vector3_s, ptr %1, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = load float, ptr %0, align 4, !tbaa !64
  %10 = getelementptr inbounds %struct.gs_matrix3_s, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !68
  %12 = fmul float %6, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %12)
  %14 = getelementptr inbounds %struct.gs_matrix3_s, ptr %0, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !71
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %15, float %13)
  store float %16, ptr %2, align 4, !tbaa !97
  %17 = getelementptr inbounds %struct.gs_vector3_s, ptr %0, i64 0, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct.gs_matrix3_s, ptr %0, i64 0, i32 1, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !67
  %21 = fmul float %6, %20
  %22 = tail call float @llvm.fmuladd.f32(float %4, float %18, float %21)
  %23 = getelementptr inbounds %struct.gs_matrix3_s, ptr %0, i64 0, i32 2, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !72
  %25 = tail call float @llvm.fmuladd.f32(float %8, float %24, float %22)
  %26 = getelementptr inbounds %struct.gs_vector3_s, ptr %2, i64 0, i32 1
  store float %25, ptr %26, align 4, !tbaa !98
  %27 = getelementptr inbounds %struct.gs_vector3_s, ptr %0, i64 0, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !66
  %29 = getelementptr inbounds %struct.gs_matrix3_s, ptr %0, i64 0, i32 1, i32 2
  %30 = load float, ptr %29, align 4, !tbaa !69
  %31 = fmul float %6, %30
  %32 = tail call float @llvm.fmuladd.f32(float %4, float %28, float %31)
  %33 = getelementptr inbounds %struct.gs_matrix3_s, ptr %0, i64 0, i32 2, i32 2
  %34 = load float, ptr %33, align 4, !tbaa !70
  %35 = tail call float @llvm.fmuladd.f32(float %8, float %34, float %32)
  %36 = getelementptr inbounds %struct.gs_vector3_s, ptr %2, i64 0, i32 2
  store float %35, ptr %36, align 4, !tbaa !99
  %37 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 1
  %38 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 1
  %39 = load float, ptr %37, align 4, !tbaa !97
  %40 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 1, i32 1
  %41 = load float, ptr %40, align 4, !tbaa !98
  %42 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 1, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !99
  %44 = load float, ptr %0, align 4, !tbaa !64
  %45 = load float, ptr %10, align 4, !tbaa !68
  %46 = fmul float %41, %45
  %47 = tail call float @llvm.fmuladd.f32(float %39, float %44, float %46)
  %48 = load float, ptr %14, align 4, !tbaa !71
  %49 = tail call float @llvm.fmuladd.f32(float %43, float %48, float %47)
  store float %49, ptr %38, align 4, !tbaa !97
  %50 = load float, ptr %17, align 4, !tbaa !65
  %51 = load float, ptr %19, align 4, !tbaa !67
  %52 = fmul float %41, %51
  %53 = tail call float @llvm.fmuladd.f32(float %39, float %50, float %52)
  %54 = load float, ptr %23, align 4, !tbaa !72
  %55 = tail call float @llvm.fmuladd.f32(float %43, float %54, float %53)
  %56 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 1, i32 1
  store float %55, ptr %56, align 4, !tbaa !98
  %57 = load float, ptr %27, align 4, !tbaa !66
  %58 = load float, ptr %29, align 4, !tbaa !69
  %59 = fmul float %41, %58
  %60 = tail call float @llvm.fmuladd.f32(float %39, float %57, float %59)
  %61 = load float, ptr %33, align 4, !tbaa !70
  %62 = tail call float @llvm.fmuladd.f32(float %43, float %61, float %60)
  %63 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 1, i32 2
  store float %62, ptr %63, align 4, !tbaa !99
  %64 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 2
  %65 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 2
  %66 = load float, ptr %64, align 4, !tbaa !97
  %67 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 2, i32 1
  %68 = load float, ptr %67, align 4, !tbaa !98
  %69 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 2, i32 2
  %70 = load float, ptr %69, align 4, !tbaa !99
  %71 = load float, ptr %0, align 4, !tbaa !64
  %72 = load float, ptr %10, align 4, !tbaa !68
  %73 = fmul float %68, %72
  %74 = tail call float @llvm.fmuladd.f32(float %66, float %71, float %73)
  %75 = load float, ptr %14, align 4, !tbaa !71
  %76 = tail call float @llvm.fmuladd.f32(float %70, float %75, float %74)
  store float %76, ptr %65, align 4, !tbaa !97
  %77 = load float, ptr %17, align 4, !tbaa !65
  %78 = load float, ptr %19, align 4, !tbaa !67
  %79 = fmul float %68, %78
  %80 = tail call float @llvm.fmuladd.f32(float %66, float %77, float %79)
  %81 = load float, ptr %23, align 4, !tbaa !72
  %82 = tail call float @llvm.fmuladd.f32(float %70, float %81, float %80)
  %83 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 2, i32 1
  store float %82, ptr %83, align 4, !tbaa !98
  %84 = load float, ptr %27, align 4, !tbaa !66
  %85 = load float, ptr %29, align 4, !tbaa !69
  %86 = fmul float %68, %85
  %87 = tail call float @llvm.fmuladd.f32(float %66, float %84, float %86)
  %88 = load float, ptr %33, align 4, !tbaa !70
  %89 = tail call float @llvm.fmuladd.f32(float %70, float %88, float %87)
  %90 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 2, i32 2
  store float %89, ptr %90, align 4, !tbaa !99
  %91 = fcmp oeq float %16, 1.000000e+00
  %92 = fcmp oeq float %25, 0.000000e+00
  %93 = select i1 %91, i1 %92, i1 false
  %94 = fcmp oeq float %35, 0.000000e+00
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %96, label %117

96:                                               ; preds = %3
  %97 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 1, i32 1
  %98 = load float, ptr %97, align 4, !tbaa !67
  %99 = fcmp oeq float %98, 1.000000e+00
  %100 = fcmp oeq float %49, 0.000000e+00
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %117

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 1, i32 2
  %104 = load float, ptr %103, align 4, !tbaa !69
  %105 = fcmp oeq float %104, 0.000000e+00
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 2, i32 2
  %108 = load float, ptr %107, align 4, !tbaa !70
  %109 = fcmp oeq float %108, 1.000000e+00
  %110 = fcmp oeq float %76, 0.000000e+00
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 2, i32 1
  %114 = load float, ptr %113, align 4, !tbaa !72
  %115 = fcmp oeq float %114, 0.000000e+00
  %116 = zext i1 %115 to i32
  br label %117

117:                                              ; preds = %3, %96, %102, %106, %112
  %118 = phi i32 [ 0, %106 ], [ 0, %102 ], [ 0, %96 ], [ 0, %3 ], [ %116, %112 ]
  %119 = getelementptr inbounds %struct.gs_matrix3_s, ptr %2, i64 0, i32 3
  store i32 %118, ptr %119, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cie_transform_range3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !64
  %5 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !68
  %7 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !71
  %9 = load float, ptr %0, align 4, !tbaa !74
  %10 = fmul float %4, %9
  %11 = getelementptr inbounds %struct.gs_range_s, ptr %0, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !76
  %13 = fmul float %4, %12
  %14 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %0, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !74
  %16 = fmul float %6, %15
  %17 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %0, i64 0, i64 1, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !76
  %19 = fmul float %6, %18
  %20 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %0, i64 0, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !74
  %22 = fmul float %8, %21
  %23 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %0, i64 0, i64 2, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !76
  %25 = fmul float %8, %24
  %26 = fcmp ogt float %10, %13
  %27 = select i1 %26, float %13, float %10
  %28 = select i1 %26, float %10, float %13
  %29 = fcmp ogt float %16, %19
  %30 = select i1 %29, float %19, float %16
  %31 = select i1 %29, float %16, float %19
  %32 = fcmp ogt float %22, %25
  %33 = select i1 %32, float %25, float %22
  %34 = select i1 %32, float %22, float %25
  %35 = fadd float %27, %30
  %36 = fadd float %35, %33
  store float %36, ptr %2, align 4, !tbaa !74
  %37 = fadd float %28, %31
  %38 = fadd float %37, %34
  %39 = getelementptr inbounds %struct.gs_range_s, ptr %2, i64 0, i32 1
  store float %38, ptr %39, align 4, !tbaa !76
  %40 = getelementptr inbounds %struct.gs_vector3_s, ptr %1, i64 0, i32 1
  %41 = load float, ptr %40, align 4, !tbaa !65
  %42 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 1, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !67
  %44 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 2, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !72
  %46 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %2, i64 0, i64 1
  %47 = load float, ptr %0, align 4, !tbaa !74
  %48 = fmul float %41, %47
  %49 = load float, ptr %11, align 4, !tbaa !76
  %50 = fmul float %41, %49
  %51 = load float, ptr %14, align 4, !tbaa !74
  %52 = fmul float %43, %51
  %53 = load float, ptr %17, align 4, !tbaa !76
  %54 = fmul float %43, %53
  %55 = load float, ptr %20, align 4, !tbaa !74
  %56 = fmul float %45, %55
  %57 = load float, ptr %23, align 4, !tbaa !76
  %58 = fmul float %45, %57
  %59 = fcmp ogt float %48, %50
  %60 = select i1 %59, float %50, float %48
  %61 = select i1 %59, float %48, float %50
  %62 = fcmp ogt float %52, %54
  %63 = select i1 %62, float %54, float %52
  %64 = select i1 %62, float %52, float %54
  %65 = fcmp ogt float %56, %58
  %66 = select i1 %65, float %58, float %56
  %67 = select i1 %65, float %56, float %58
  %68 = fadd float %60, %63
  %69 = fadd float %68, %66
  store float %69, ptr %46, align 4, !tbaa !74
  %70 = fadd float %61, %64
  %71 = fadd float %70, %67
  %72 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %2, i64 0, i64 1, i32 1
  store float %71, ptr %72, align 4, !tbaa !76
  %73 = getelementptr inbounds %struct.gs_vector3_s, ptr %1, i64 0, i32 2
  %74 = load float, ptr %73, align 4, !tbaa !66
  %75 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 1, i32 2
  %76 = load float, ptr %75, align 4, !tbaa !69
  %77 = getelementptr inbounds %struct.gs_matrix3_s, ptr %1, i64 0, i32 2, i32 2
  %78 = load float, ptr %77, align 4, !tbaa !70
  %79 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %2, i64 0, i64 2
  %80 = load float, ptr %0, align 4, !tbaa !74
  %81 = fmul float %74, %80
  %82 = load float, ptr %11, align 4, !tbaa !76
  %83 = fmul float %74, %82
  %84 = load float, ptr %14, align 4, !tbaa !74
  %85 = fmul float %76, %84
  %86 = load float, ptr %17, align 4, !tbaa !76
  %87 = fmul float %76, %86
  %88 = load float, ptr %20, align 4, !tbaa !74
  %89 = fmul float %78, %88
  %90 = load float, ptr %23, align 4, !tbaa !76
  %91 = fmul float %78, %90
  %92 = fcmp ogt float %81, %83
  %93 = select i1 %92, float %83, float %81
  %94 = select i1 %92, float %81, float %83
  %95 = fcmp ogt float %85, %87
  %96 = select i1 %95, float %87, float %85
  %97 = select i1 %95, float %85, float %87
  %98 = fcmp ogt float %89, %91
  %99 = select i1 %98, float %91, float %89
  %100 = select i1 %98, float %89, float %91
  %101 = fadd float %93, %96
  %102 = fadd float %101, %99
  store float %102, ptr %79, align 4, !tbaa !74
  %103 = fadd float %94, %97
  %104 = fadd float %103, %100
  %105 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %2, i64 0, i64 2, i32 1
  store float %104, ptr %105, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gs_cie_cache_to_fracs(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %12, %3 ]
  %5 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %0, i64 0, i32 1, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !35
  %7 = fpext float %6 to double
  %8 = fadd double %7, 0x3EF0010010010010
  %9 = fmul double %8, 3.276000e+04
  %10 = fptosi double %9 to i16
  %11 = getelementptr inbounds [512 x i16], ptr %2, i64 0, i64 %4
  store i16 %10, ptr %11, align 2, !tbaa !35
  %12 = add nuw nsw i64 %4, 1
  %13 = icmp eq i64 %12, 512
  br i1 %13, label %14, label %3, !llvm.loop !137

14:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_cie_cs_common(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %3, %1 ], [ %11, %10 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = load i32, ptr %6, align 8, !tbaa !125
  switch i32 %7, label %17 [
    i32 5, label %14
    i32 6, label %14
    i32 7, label %8
    i32 8, label %12
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_color_space_s, ptr %5, i64 0, i32 1, i32 0, i32 1
  br label %10

10:                                               ; preds = %8, %12
  %11 = phi ptr [ %13, %12 ], [ %9, %8 ]
  br label %4

12:                                               ; preds = %4
  %13 = tail call ptr @gs_color_space_indexed_base(ptr noundef nonnull %5) #11
  br label %10

14:                                               ; preds = %4, %4
  %15 = getelementptr inbounds %struct.gs_color_space_s, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  br label %17

17:                                               ; preds = %4, %14
  %18 = phi ptr [ %16, %14 ], [ null, %4 ]
  ret ptr %18
}

declare ptr @gs_color_space_indexed_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cie_joint_caches_init(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca [3 x %struct.gs_for_loop_params_s], align 16
  %5 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !89
  %7 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %9 = load float, ptr %5, align 4, !tbaa !97
  %10 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !98
  %12 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 0, i32 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !99
  %14 = load float, ptr %7, align 4, !tbaa !64
  %15 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 2, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !68
  %17 = fmul float %11, %16
  %18 = tail call float @llvm.fmuladd.f32(float %9, float %14, float %17)
  %19 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 2, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !71
  %21 = tail call float @llvm.fmuladd.f32(float %13, float %20, float %18)
  store float %21, ptr %8, align 4, !tbaa !97
  %22 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 2, i32 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 2, i32 1, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !67
  %26 = fmul float %11, %25
  %27 = tail call float @llvm.fmuladd.f32(float %9, float %23, float %26)
  %28 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 2, i32 2, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !72
  %30 = tail call float @llvm.fmuladd.f32(float %13, float %29, float %27)
  %31 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 0, i32 1, i32 1
  store float %30, ptr %31, align 4, !tbaa !98
  %32 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 2, i32 0, i32 2
  %33 = load float, ptr %32, align 4, !tbaa !66
  %34 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 2, i32 1, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !69
  %36 = fmul float %11, %35
  %37 = tail call float @llvm.fmuladd.f32(float %9, float %33, float %36)
  %38 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 2, i32 2, i32 2
  %39 = load float, ptr %38, align 4, !tbaa !70
  %40 = tail call float @llvm.fmuladd.f32(float %13, float %39, float %37)
  %41 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 0, i32 1, i32 2
  store float %40, ptr %41, align 4, !tbaa !99
  %42 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 1
  %43 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 3, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %42, ptr noundef nonnull align 4 dereferenceable(12) %43, i64 12, i1 false), !tbaa.struct !89
  %44 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 1, i32 1
  %45 = load float, ptr %42, align 4, !tbaa !97
  %46 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 1, i32 0, i32 1
  %47 = load float, ptr %46, align 4, !tbaa !98
  %48 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 1, i32 0, i32 2
  %49 = load float, ptr %48, align 4, !tbaa !99
  %50 = load float, ptr %7, align 4, !tbaa !64
  %51 = load float, ptr %15, align 4, !tbaa !68
  %52 = fmul float %47, %51
  %53 = tail call float @llvm.fmuladd.f32(float %45, float %50, float %52)
  %54 = load float, ptr %19, align 4, !tbaa !71
  %55 = tail call float @llvm.fmuladd.f32(float %49, float %54, float %53)
  store float %55, ptr %44, align 4, !tbaa !97
  %56 = load float, ptr %22, align 4, !tbaa !65
  %57 = load float, ptr %24, align 4, !tbaa !67
  %58 = fmul float %47, %57
  %59 = tail call float @llvm.fmuladd.f32(float %45, float %56, float %58)
  %60 = load float, ptr %28, align 4, !tbaa !72
  %61 = tail call float @llvm.fmuladd.f32(float %49, float %60, float %59)
  %62 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 1, i32 1, i32 1
  store float %61, ptr %62, align 4, !tbaa !98
  %63 = load float, ptr %32, align 4, !tbaa !66
  %64 = load float, ptr %34, align 4, !tbaa !69
  %65 = fmul float %47, %64
  %66 = tail call float @llvm.fmuladd.f32(float %45, float %63, float %65)
  %67 = load float, ptr %38, align 4, !tbaa !70
  %68 = tail call float @llvm.fmuladd.f32(float %49, float %67, float %66)
  %69 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 1, i32 1, i32 2
  store float %68, ptr %69, align 4, !tbaa !99
  %70 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 2
  %71 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %70, ptr noundef nonnull align 8 dereferenceable(12) %71, i64 12, i1 false), !tbaa.struct !89
  %72 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 2, i32 1
  %73 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %72, ptr noundef nonnull align 4 dereferenceable(12) %73, i64 12, i1 false), !tbaa.struct !89
  %74 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 3
  %75 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %74, ptr noundef nonnull align 4 dereferenceable(12) %75, i64 12, i1 false), !tbaa.struct !89
  %76 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 3, i32 3, i32 1
  %77 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %76, ptr noundef nonnull align 8 dereferenceable(12) %77, i64 12, i1 false), !tbaa.struct !89
  %78 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 2
  %79 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 4
  tail call fastcc void @cie_matrix_mult3(ptr noundef nonnull %7, ptr noundef nonnull %78, ptr noundef nonnull %79)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  %80 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3
  %81 = load float, ptr %80, align 4, !tbaa !74
  %82 = fpext float %81 to double
  %83 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 0, i32 1
  %84 = load float, ptr %83, align 4, !tbaa !76
  %85 = fpext float %84 to double
  %86 = fsub double %85, %82
  %87 = fcmp olt float %81, 0.000000e+00
  %88 = fcmp oge float %84, 0.000000e+00
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %113

90:                                               ; preds = %3
  %91 = fmul double %82, -5.110000e+02
  %92 = fdiv double %91, %86
  %93 = tail call double @llvm.floor.f64(double %92)
  %94 = tail call double @llvm.ceil.f64(double %92)
  %95 = fadd double %94, -5.110000e+02
  %96 = fcmp oeq double %93, 0.000000e+00
  br i1 %96, label %105, label %97

97:                                               ; preds = %90
  %98 = fcmp une double %95, 0.000000e+00
  br i1 %98, label %99, label %110

99:                                               ; preds = %97
  %100 = fneg double %85
  %101 = fdiv double %100, %95
  %102 = fneg double %82
  %103 = fdiv double %102, %93
  %104 = fcmp olt double %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99, %90
  %106 = fmul double %85, -5.110000e+02
  %107 = fdiv double %106, %95
  %108 = fsub double %85, %107
  %109 = fptrunc double %108 to float
  br label %113

110:                                              ; preds = %99, %97
  %111 = fdiv double %91, %93
  %112 = fadd double %111, %82
  br label %113

113:                                              ; preds = %3, %105, %110
  %114 = phi double [ %86, %3 ], [ %107, %105 ], [ %111, %110 ]
  %115 = phi double [ %85, %3 ], [ %85, %105 ], [ %112, %110 ]
  %116 = phi float [ %81, %3 ], [ %109, %105 ], [ %81, %110 ]
  %117 = fdiv double %114, 5.110000e+02
  %118 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 6, i64 0, i32 0, i32 0, i32 1
  store float %116, ptr %118, align 4, !tbaa !77
  %119 = fcmp oeq double %117, 0.000000e+00
  %120 = fdiv double 5.110000e+02, %114
  %121 = select i1 %119, double 0.000000e+00, double %120
  %122 = fptrunc double %121 to float
  %123 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 6, i64 0, i32 0, i32 0, i32 2
  store float %122, ptr %123, align 4, !tbaa !79
  store float %116, ptr %4, align 16, !tbaa !80
  %124 = fptrunc double %117 to float
  %125 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %4, i64 0, i32 1
  store float %124, ptr %125, align 4, !tbaa !82
  %126 = fmul double %117, 5.000000e-01
  %127 = fadd double %115, %126
  %128 = fptrunc double %127 to float
  %129 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %4, i64 0, i32 2
  store float %128, ptr %129, align 8, !tbaa !83
  %130 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 1
  %131 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !74
  %133 = fpext float %132 to double
  %134 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 1, i32 1
  %135 = load float, ptr %134, align 4, !tbaa !76
  %136 = fpext float %135 to double
  %137 = fsub double %136, %133
  %138 = fcmp olt float %132, 0.000000e+00
  %139 = fcmp oge float %135, 0.000000e+00
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %164

141:                                              ; preds = %113
  %142 = fmul double %133, -5.110000e+02
  %143 = fdiv double %142, %137
  %144 = tail call double @llvm.floor.f64(double %143)
  %145 = tail call double @llvm.ceil.f64(double %143)
  %146 = fadd double %145, -5.110000e+02
  %147 = fcmp oeq double %144, 0.000000e+00
  br i1 %147, label %156, label %148

148:                                              ; preds = %141
  %149 = fcmp une double %146, 0.000000e+00
  br i1 %149, label %150, label %161

150:                                              ; preds = %148
  %151 = fneg double %136
  %152 = fdiv double %151, %146
  %153 = fneg double %133
  %154 = fdiv double %153, %144
  %155 = fcmp olt double %152, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %150, %141
  %157 = fmul double %136, -5.110000e+02
  %158 = fdiv double %157, %146
  %159 = fsub double %136, %158
  %160 = fptrunc double %159 to float
  br label %164

161:                                              ; preds = %150, %148
  %162 = fdiv double %142, %144
  %163 = fadd double %162, %133
  br label %164

164:                                              ; preds = %113, %156, %161
  %165 = phi double [ %137, %113 ], [ %158, %156 ], [ %162, %161 ]
  %166 = phi double [ %136, %113 ], [ %136, %156 ], [ %163, %161 ]
  %167 = phi float [ %132, %113 ], [ %160, %156 ], [ %132, %161 ]
  %168 = fdiv double %165, 5.110000e+02
  %169 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 6, i64 1, i32 0, i32 0, i32 1
  store float %167, ptr %169, align 4, !tbaa !77
  %170 = fcmp oeq double %168, 0.000000e+00
  %171 = fdiv double 5.110000e+02, %165
  %172 = select i1 %170, double 0.000000e+00, double %171
  %173 = fptrunc double %172 to float
  %174 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 6, i64 1, i32 0, i32 0, i32 2
  store float %173, ptr %174, align 4, !tbaa !79
  store float %167, ptr %130, align 4, !tbaa !80
  %175 = fptrunc double %168 to float
  %176 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 1, i32 1
  store float %175, ptr %176, align 16, !tbaa !82
  %177 = fmul double %168, 5.000000e-01
  %178 = fadd double %166, %177
  %179 = fptrunc double %178 to float
  %180 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 1, i32 2
  store float %179, ptr %180, align 4, !tbaa !83
  %181 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 2
  %182 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 2
  %183 = load float, ptr %182, align 4, !tbaa !74
  %184 = fpext float %183 to double
  %185 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 2, i32 1
  %186 = load float, ptr %185, align 4, !tbaa !76
  %187 = fpext float %186 to double
  %188 = fsub double %187, %184
  %189 = fcmp olt float %183, 0.000000e+00
  %190 = fcmp oge float %186, 0.000000e+00
  %191 = select i1 %189, i1 %190, i1 false
  br i1 %191, label %192, label %215

192:                                              ; preds = %164
  %193 = fmul double %184, -5.110000e+02
  %194 = fdiv double %193, %188
  %195 = tail call double @llvm.floor.f64(double %194)
  %196 = tail call double @llvm.ceil.f64(double %194)
  %197 = fadd double %196, -5.110000e+02
  %198 = fcmp oeq double %195, 0.000000e+00
  br i1 %198, label %207, label %199

199:                                              ; preds = %192
  %200 = fcmp une double %197, 0.000000e+00
  br i1 %200, label %201, label %212

201:                                              ; preds = %199
  %202 = fneg double %187
  %203 = fdiv double %202, %197
  %204 = fneg double %184
  %205 = fdiv double %204, %195
  %206 = fcmp olt double %203, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %201, %192
  %208 = fmul double %187, -5.110000e+02
  %209 = fdiv double %208, %197
  %210 = fsub double %187, %209
  %211 = fptrunc double %210 to float
  br label %215

212:                                              ; preds = %201, %199
  %213 = fdiv double %193, %195
  %214 = fadd double %213, %184
  br label %215

215:                                              ; preds = %164, %207, %212
  %216 = phi double [ %188, %164 ], [ %209, %207 ], [ %213, %212 ]
  %217 = phi double [ %187, %164 ], [ %187, %207 ], [ %214, %212 ]
  %218 = phi float [ %183, %164 ], [ %211, %207 ], [ %183, %212 ]
  %219 = fdiv double %216, 5.110000e+02
  %220 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 6, i64 2, i32 0, i32 0, i32 1
  store float %218, ptr %220, align 4, !tbaa !77
  %221 = fcmp oeq double %219, 0.000000e+00
  %222 = fdiv double 5.110000e+02, %216
  %223 = select i1 %221, double 0.000000e+00, double %222
  %224 = fptrunc double %223 to float
  %225 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 6, i64 2, i32 0, i32 0, i32 2
  store float %224, ptr %225, align 4, !tbaa !79
  store float %218, ptr %181, align 8, !tbaa !80
  %226 = fptrunc double %219 to float
  %227 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 2, i32 1
  store float %226, ptr %227, align 4, !tbaa !82
  %228 = fmul double %219, 5.000000e-01
  %229 = fadd double %217, %228
  %230 = fptrunc double %229 to float
  %231 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 2, i32 2
  store float %230, ptr %231, align 16, !tbaa !83
  %232 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 4
  br label %233

233:                                              ; preds = %215, %250
  %234 = phi i64 [ 0, %215 ], [ %251, %250 ]
  %235 = getelementptr inbounds [512 x float], ptr %0, i64 0, i64 %234
  br label %236

236:                                              ; preds = %233, %236
  %237 = phi i64 [ 0, %233 ], [ %248, %236 ]
  %238 = getelementptr inbounds [3 x ptr], ptr %232, i64 0, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !5
  %240 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 %237
  %241 = load float, ptr %240, align 4, !tbaa !80
  %242 = fpext float %241 to double
  %243 = tail call float %239(double noundef %242, ptr noundef nonnull %5, ptr noundef %2) #11
  %244 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %235, i64 0, i32 6, i64 %237, i32 0, i32 0, i32 3
  store float %243, ptr %244, align 4, !tbaa !35
  %245 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %4, i64 0, i64 %237, i32 1
  %246 = load float, ptr %245, align 4, !tbaa !82
  %247 = fadd float %241, %246
  store float %247, ptr %240, align 4, !tbaa !80
  %248 = add nuw nsw i64 %237, 1
  %249 = icmp eq i64 %248, 3
  br i1 %249, label %250, label %236, !llvm.loop !160

250:                                              ; preds = %236
  %251 = add nuw nsw i64 %234, 1
  %252 = icmp eq i64 %251, 512
  br i1 %252, label %253, label %233, !llvm.loop !161

253:                                              ; preds = %250
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cie_joint_caches_complete(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3
  %6 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 0, i32 1
  br label %7

7:                                                ; preds = %18, %3
  %8 = phi i64 [ 0, %3 ], [ %19, %18 ]
  %9 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %4, i64 0, i32 1, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = load float, ptr %5, align 4, !tbaa !74
  %12 = fcmp olt float %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = load float, ptr %6, align 4, !tbaa !76
  %15 = fcmp ogt float %10, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %7
  %17 = phi float [ %11, %7 ], [ %14, %13 ]
  store float %17, ptr %9, align 4, !tbaa !53
  br label %18

18:                                               ; preds = %16, %13
  %19 = add nuw nsw i64 %8, 1
  %20 = icmp eq i64 %19, 512
  br i1 %20, label %21, label %7, !llvm.loop !135

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 6, i64 1
  %23 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 1
  %24 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 1, i32 1
  br label %25

25:                                               ; preds = %36, %21
  %26 = phi i64 [ 0, %21 ], [ %37, %36 ]
  %27 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %22, i64 0, i32 1, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !53
  %29 = load float, ptr %23, align 4, !tbaa !74
  %30 = fcmp olt float %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load float, ptr %24, align 4, !tbaa !76
  %33 = fcmp ogt float %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %25
  %35 = phi float [ %29, %25 ], [ %32, %31 ]
  store float %35, ptr %27, align 4, !tbaa !53
  br label %36

36:                                               ; preds = %34, %31
  %37 = add nuw nsw i64 %26, 1
  %38 = icmp eq i64 %37, 512
  br i1 %38, label %39, label %25, !llvm.loop !135

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 6, i64 2
  %41 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 2
  %42 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 3, i32 0, i64 2, i32 1
  br label %43

43:                                               ; preds = %54, %39
  %44 = phi i64 [ 0, %39 ], [ %55, %54 ]
  %45 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %40, i64 0, i32 1, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !53
  %47 = load float, ptr %41, align 4, !tbaa !74
  %48 = fcmp olt float %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load float, ptr %42, align 4, !tbaa !76
  %51 = fcmp ogt float %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %43
  %53 = phi float [ %47, %43 ], [ %50, %49 ]
  store float %53, ptr %45, align 4, !tbaa !53
  br label %54

54:                                               ; preds = %52, %49
  %55 = add nuw nsw i64 %44, 1
  %56 = icmp eq i64 %55, 512
  br i1 %56, label %57, label %43, !llvm.loop !135

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 4
  %59 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 4
  br label %60

60:                                               ; preds = %57, %87
  %61 = phi i64 [ 0, %57 ], [ %93, %87 ]
  %62 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 2, i64 %61
  %63 = getelementptr inbounds %struct.gs_vector3_s, ptr %58, i64 %61
  %64 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], ptr %59, i64 0, i64 %61
  %65 = load i32, ptr %64, align 4, !tbaa !93
  %66 = getelementptr inbounds %struct.cie_cache_params_s, ptr %64, i64 0, i32 1
  %67 = load float, ptr %66, align 4, !tbaa !95
  %68 = getelementptr inbounds %struct.cie_cache_params_s, ptr %64, i64 0, i32 2
  %69 = load float, ptr %68, align 4, !tbaa !96
  %70 = getelementptr inbounds %struct.gs_vector3_s, ptr %58, i64 %61, i32 1
  %71 = getelementptr inbounds %struct.gs_vector3_s, ptr %58, i64 %61, i32 2
  br label %72

72:                                               ; preds = %72, %60
  %73 = phi i64 [ 512, %60 ], [ %74, %72 ]
  %74 = add nsw i64 %73, -1
  %75 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %64, i64 0, i32 1, i64 %74
  %76 = load float, ptr %75, align 4, !tbaa !53
  %77 = load float, ptr %63, align 4, !tbaa !97
  %78 = fmul float %76, %77
  %79 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %62, i64 0, i32 1, i64 %74
  store float %78, ptr %79, align 4, !tbaa !35
  %80 = load float, ptr %70, align 4, !tbaa !98
  %81 = fmul float %76, %80
  %82 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %62, i64 0, i32 1, i64 %74, i32 1
  store float %81, ptr %82, align 4, !tbaa !35
  %83 = load float, ptr %71, align 4, !tbaa !99
  %84 = fmul float %76, %83
  %85 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %62, i64 0, i32 1, i64 %74, i32 2
  store float %84, ptr %85, align 4, !tbaa !35
  %86 = icmp ugt i64 %73, 1
  br i1 %86, label %72, label %87, !llvm.loop !100

87:                                               ; preds = %72
  %88 = fdiv float 5.110000e+02, %69
  %89 = fadd float %67, %88
  store i32 %65, ptr %62, align 4, !tbaa.struct !101
  %90 = getelementptr inbounds i8, ptr %62, i64 4
  store float %67, ptr %90, align 4, !tbaa.struct !89
  %91 = getelementptr inbounds i8, ptr %62, i64 8
  store float %69, ptr %91, align 4, !tbaa.struct !103
  %92 = getelementptr inbounds i8, ptr %62, i64 12
  store float %89, ptr %92, align 4, !tbaa.struct !104
  %93 = add nuw nsw i64 %61, 1
  %94 = icmp eq i64 %93, 3
  br i1 %94, label %95, label %60, !llvm.loop !162

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 4, i32 3
  %97 = load i32, ptr %96, align 4, !tbaa !163
  %98 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !35
  %100 = and i32 %99, %97
  %101 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 2, i64 1
  %102 = load i32, ptr %101, align 4, !tbaa !35
  %103 = and i32 %100, %102
  %104 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 2, i64 2
  %105 = load i32, ptr %104, align 4, !tbaa !35
  %106 = and i32 %103, %105
  %107 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 1
  store i32 %106, ptr %107, align 8, !tbaa !164
  %108 = getelementptr inbounds %struct.gs_cie_render_s, ptr %2, i64 0, i32 16
  %109 = tail call fastcc i32 @cie_cache_mult3(ptr noundef nonnull %4, ptr noundef nonnull %108)
  %110 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %0, i64 0, i32 5
  store i32 %109, ptr %110, align 4, !tbaa !165
  ret void
}

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @cie_load_common_cache(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca [3 x %struct.gs_for_loop_params_s], align 16
  %4 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !64
  %6 = fcmp oeq float %5, 1.000000e+00
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2, i32 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2, i32 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !66
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2, i32 1, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !67
  %18 = fcmp oeq float %17, 1.000000e+00
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !68
  %22 = fcmp oeq float %21, 0.000000e+00
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2, i32 1, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !69
  %26 = fcmp oeq float %25, 0.000000e+00
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2, i32 2, i32 2
  %29 = load float, ptr %28, align 4, !tbaa !70
  %30 = fcmp oeq float %29, 1.000000e+00
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2, i32 2
  %33 = load float, ptr %32, align 4, !tbaa !71
  %34 = fcmp oeq float %33, 0.000000e+00
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2, i32 2, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !72
  %38 = fcmp oeq float %37, 0.000000e+00
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %2, %7, %11, %15, %19, %23, %27, %31, %35
  %41 = phi i32 [ 0, %27 ], [ 0, %23 ], [ 0, %19 ], [ 0, %15 ], [ 0, %11 ], [ 0, %7 ], [ 0, %2 ], [ 0, %31 ], [ %39, %35 ]
  %42 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 2, i32 3
  store i32 %41, ptr %42, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  %43 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 4
  %44 = load float, ptr %0, align 4, !tbaa !74
  %45 = fpext float %44 to double
  %46 = getelementptr inbounds %struct.gs_range_s, ptr %0, i64 0, i32 1
  %47 = load float, ptr %46, align 4, !tbaa !76
  %48 = fpext float %47 to double
  %49 = fsub double %48, %45
  %50 = fcmp olt float %44, 0.000000e+00
  %51 = fcmp oge float %47, 0.000000e+00
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %76

53:                                               ; preds = %40
  %54 = fmul double %45, -5.110000e+02
  %55 = fdiv double %54, %49
  %56 = tail call double @llvm.floor.f64(double %55)
  %57 = tail call double @llvm.ceil.f64(double %55)
  %58 = fadd double %57, -5.110000e+02
  %59 = fcmp oeq double %56, 0.000000e+00
  br i1 %59, label %68, label %60

60:                                               ; preds = %53
  %61 = fcmp une double %58, 0.000000e+00
  br i1 %61, label %62, label %73

62:                                               ; preds = %60
  %63 = fneg double %48
  %64 = fdiv double %63, %58
  %65 = fneg double %45
  %66 = fdiv double %65, %56
  %67 = fcmp olt double %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62, %53
  %69 = fmul double %48, -5.110000e+02
  %70 = fdiv double %69, %58
  %71 = fsub double %48, %70
  %72 = fptrunc double %71 to float
  br label %76

73:                                               ; preds = %62, %60
  %74 = fdiv double %54, %56
  %75 = fadd double %74, %45
  br label %76

76:                                               ; preds = %40, %68, %73
  %77 = phi double [ %49, %40 ], [ %70, %68 ], [ %74, %73 ]
  %78 = phi double [ %48, %40 ], [ %48, %68 ], [ %75, %73 ]
  %79 = phi float [ %44, %40 ], [ %72, %68 ], [ %44, %73 ]
  %80 = fdiv double %77, 5.110000e+02
  %81 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 4, i32 0, i64 0, i32 0, i32 0, i32 1
  store float %79, ptr %81, align 4, !tbaa !77
  %82 = fcmp oeq double %80, 0.000000e+00
  %83 = fdiv double 5.110000e+02, %77
  %84 = select i1 %82, double 0.000000e+00, double %83
  %85 = fptrunc double %84 to float
  %86 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 4, i32 0, i64 0, i32 0, i32 0, i32 2
  store float %85, ptr %86, align 4, !tbaa !79
  store float %79, ptr %3, align 16, !tbaa !80
  %87 = fptrunc double %80 to float
  %88 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %3, i64 0, i32 1
  store float %87, ptr %88, align 4, !tbaa !82
  %89 = fmul double %80, 5.000000e-01
  %90 = fadd double %78, %89
  %91 = fptrunc double %90 to float
  %92 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %3, i64 0, i32 2
  store float %91, ptr %92, align 8, !tbaa !83
  %93 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 1
  %94 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %0, i64 0, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !74
  %96 = fpext float %95 to double
  %97 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %0, i64 0, i64 1, i32 1
  %98 = load float, ptr %97, align 4, !tbaa !76
  %99 = fpext float %98 to double
  %100 = fsub double %99, %96
  %101 = fcmp olt float %95, 0.000000e+00
  %102 = fcmp oge float %98, 0.000000e+00
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %127

104:                                              ; preds = %76
  %105 = fmul double %96, -5.110000e+02
  %106 = fdiv double %105, %100
  %107 = tail call double @llvm.floor.f64(double %106)
  %108 = tail call double @llvm.ceil.f64(double %106)
  %109 = fadd double %108, -5.110000e+02
  %110 = fcmp oeq double %107, 0.000000e+00
  br i1 %110, label %119, label %111

111:                                              ; preds = %104
  %112 = fcmp une double %109, 0.000000e+00
  br i1 %112, label %113, label %124

113:                                              ; preds = %111
  %114 = fneg double %99
  %115 = fdiv double %114, %109
  %116 = fneg double %96
  %117 = fdiv double %116, %107
  %118 = fcmp olt double %115, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113, %104
  %120 = fmul double %99, -5.110000e+02
  %121 = fdiv double %120, %109
  %122 = fsub double %99, %121
  %123 = fptrunc double %122 to float
  br label %127

124:                                              ; preds = %113, %111
  %125 = fdiv double %105, %107
  %126 = fadd double %125, %96
  br label %127

127:                                              ; preds = %76, %119, %124
  %128 = phi double [ %100, %76 ], [ %121, %119 ], [ %125, %124 ]
  %129 = phi double [ %99, %76 ], [ %99, %119 ], [ %126, %124 ]
  %130 = phi float [ %95, %76 ], [ %123, %119 ], [ %95, %124 ]
  %131 = fdiv double %128, 5.110000e+02
  %132 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 4, i32 0, i64 1, i32 0, i32 0, i32 1
  store float %130, ptr %132, align 4, !tbaa !77
  %133 = fcmp oeq double %131, 0.000000e+00
  %134 = fdiv double 5.110000e+02, %128
  %135 = select i1 %133, double 0.000000e+00, double %134
  %136 = fptrunc double %135 to float
  %137 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 4, i32 0, i64 1, i32 0, i32 0, i32 2
  store float %136, ptr %137, align 4, !tbaa !79
  store float %130, ptr %93, align 4, !tbaa !80
  %138 = fptrunc double %131 to float
  %139 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 1, i32 1
  store float %138, ptr %139, align 16, !tbaa !82
  %140 = fmul double %131, 5.000000e-01
  %141 = fadd double %129, %140
  %142 = fptrunc double %141 to float
  %143 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 1, i32 2
  store float %142, ptr %143, align 4, !tbaa !83
  %144 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 2
  %145 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %0, i64 0, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !74
  %147 = fpext float %146 to double
  %148 = getelementptr inbounds [3 x %struct.gs_range_s], ptr %0, i64 0, i64 2, i32 1
  %149 = load float, ptr %148, align 4, !tbaa !76
  %150 = fpext float %149 to double
  %151 = fsub double %150, %147
  %152 = fcmp olt float %146, 0.000000e+00
  %153 = fcmp oge float %149, 0.000000e+00
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %155, label %178

155:                                              ; preds = %127
  %156 = fmul double %147, -5.110000e+02
  %157 = fdiv double %156, %151
  %158 = tail call double @llvm.floor.f64(double %157)
  %159 = tail call double @llvm.ceil.f64(double %157)
  %160 = fadd double %159, -5.110000e+02
  %161 = fcmp oeq double %158, 0.000000e+00
  br i1 %161, label %170, label %162

162:                                              ; preds = %155
  %163 = fcmp une double %160, 0.000000e+00
  br i1 %163, label %164, label %175

164:                                              ; preds = %162
  %165 = fneg double %150
  %166 = fdiv double %165, %160
  %167 = fneg double %147
  %168 = fdiv double %167, %158
  %169 = fcmp olt double %166, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %164, %155
  %171 = fmul double %150, -5.110000e+02
  %172 = fdiv double %171, %160
  %173 = fsub double %150, %172
  %174 = fptrunc double %173 to float
  br label %178

175:                                              ; preds = %164, %162
  %176 = fdiv double %156, %158
  %177 = fadd double %176, %147
  br label %178

178:                                              ; preds = %127, %170, %175
  %179 = phi double [ %151, %127 ], [ %172, %170 ], [ %176, %175 ]
  %180 = phi double [ %150, %127 ], [ %150, %170 ], [ %177, %175 ]
  %181 = phi float [ %146, %127 ], [ %174, %170 ], [ %146, %175 ]
  %182 = fdiv double %179, 5.110000e+02
  %183 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 4, i32 0, i64 2, i32 0, i32 0, i32 1
  store float %181, ptr %183, align 4, !tbaa !77
  %184 = fcmp oeq double %182, 0.000000e+00
  %185 = fdiv double 5.110000e+02, %179
  %186 = select i1 %184, double 0.000000e+00, double %185
  %187 = fptrunc double %186 to float
  %188 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 4, i32 0, i64 2, i32 0, i32 0, i32 2
  store float %187, ptr %188, align 4, !tbaa !79
  store float %181, ptr %144, align 8, !tbaa !80
  %189 = fptrunc double %182 to float
  %190 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 2, i32 1
  store float %189, ptr %190, align 4, !tbaa !82
  %191 = fmul double %182, 5.000000e-01
  %192 = fadd double %180, %191
  %193 = fptrunc double %192 to float
  %194 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 2, i32 2
  store float %193, ptr %194, align 16, !tbaa !83
  %195 = getelementptr inbounds %struct.gs_cie_common_s, ptr %0, i64 0, i32 1
  br label %196

196:                                              ; preds = %178, %212
  %197 = phi i64 [ 0, %178 ], [ %213, %212 ]
  br label %198

198:                                              ; preds = %196, %198
  %199 = phi i64 [ 0, %196 ], [ %210, %198 ]
  %200 = getelementptr inbounds [3 x ptr], ptr %195, i64 0, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !5
  %202 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 %199
  %203 = load float, ptr %202, align 4, !tbaa !80
  %204 = fpext float %203 to double
  %205 = tail call float %201(double noundef %204, ptr noundef nonnull %0) #11
  %206 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], ptr %43, i64 0, i64 %199, i32 0, i32 1, i64 %197
  store float %205, ptr %206, align 4, !tbaa !35
  %207 = getelementptr inbounds [3 x %struct.gs_for_loop_params_s], ptr %3, i64 0, i64 %199, i32 1
  %208 = load float, ptr %207, align 4, !tbaa !82
  %209 = fadd float %203, %208
  store float %209, ptr %202, align 4, !tbaa !80
  %210 = add nuw nsw i64 %199, 1
  %211 = icmp eq i64 %210, 3
  br i1 %211, label %212, label %198, !llvm.loop !166

212:                                              ; preds = %198
  %213 = add nuw nsw i64 %197, 1
  %214 = icmp eq i64 %213, 512
  br i1 %214, label %215, label %196, !llvm.loop !167

215:                                              ; preds = %212
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  %216 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 14
  %217 = load ptr, ptr %216, align 8, !tbaa !108
  %218 = icmp eq ptr %217, null
  br i1 %218, label %255, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 19
  %221 = load ptr, ptr %220, align 8, !tbaa !127
  %222 = icmp eq ptr %221, null
  br i1 %222, label %231, label %223

223:                                              ; preds = %219
  %224 = load i64, ptr %221, align 8, !tbaa !150
  %225 = icmp sgt i64 %224, 1
  br i1 %225, label %231, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.rc_header_s, ptr %221, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !154
  %229 = load ptr, ptr %1, align 8, !tbaa !155
  %230 = icmp eq ptr %228, %229
  br i1 %230, label %247, label %231

231:                                              ; preds = %226, %223, %219
  %232 = load ptr, ptr %1, align 8, !tbaa !155
  %233 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %232, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !156
  %235 = tail call ptr %234(ptr noundef %232, ptr noundef nonnull @st_joint_caches, ptr noundef nonnull @.str.5) #11
  %236 = icmp eq ptr %235, null
  br i1 %236, label %249, label %237

237:                                              ; preds = %231
  store i64 1, ptr %235, align 8, !tbaa !150
  %238 = load ptr, ptr %1, align 8, !tbaa !155
  %239 = getelementptr inbounds %struct.rc_header_s, ptr %235, i64 0, i32 1
  store ptr %238, ptr %239, align 8, !tbaa !154
  %240 = getelementptr inbounds %struct.rc_header_s, ptr %235, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %240, align 8, !tbaa !159
  %241 = load ptr, ptr %220, align 8, !tbaa !127
  %242 = icmp eq ptr %241, null
  br i1 %242, label %246, label %243

243:                                              ; preds = %237
  %244 = load i64, ptr %241, align 8, !tbaa !150
  %245 = add nsw i64 %244, -1
  store i64 %245, ptr %241, align 8, !tbaa !150
  br label %246

246:                                              ; preds = %243, %237
  store ptr %235, ptr %220, align 8, !tbaa !127
  br label %247

247:                                              ; preds = %246, %226
  %248 = load ptr, ptr %220, align 8, !tbaa !127
  br label %249

249:                                              ; preds = %231, %247
  %250 = phi ptr [ %248, %247 ], [ null, %231 ]
  %251 = icmp eq ptr %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr %216, align 8, !tbaa !108
  tail call fastcc void @cie_joint_caches_init(ptr noundef nonnull %250, ptr noundef nonnull %0, ptr noundef %253)
  %254 = load ptr, ptr %216, align 8, !tbaa !108
  tail call fastcc void @cie_joint_caches_complete(ptr noundef nonnull %250, ptr noundef nonnull %0, ptr noundef %254)
  br label %255

255:                                              ; preds = %249, %215, %252
  %256 = phi i32 [ 0, %252 ], [ 0, %215 ], [ -25, %249 ]
  ret i32 %256
}

declare ptr @gs_color_space_DeviceRGB() local_unnamed_addr #2

declare ptr @gs_color_space_DeviceCMYK() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cie_lookup_mult3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds %struct.cie_vector_cache_params_s, ptr %1, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !35
  %6 = fcmp ugt float %3, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cie_vector_cache_params_s, ptr %1, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !35
  %10 = fcmp ult float %3, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = fsub float %3, %5
  %13 = getelementptr inbounds %struct.cie_vector_cache_params_s, ptr %1, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !35
  %15 = fmul float %12, %14
  %16 = fptosi float %15 to i32
  %17 = sext i32 %16 to i64
  br label %18

18:                                               ; preds = %11, %7, %2
  %19 = phi i64 [ 0, %2 ], [ %17, %11 ], [ 511, %7 ]
  %20 = getelementptr inbounds %struct.cie_cached_vector3_s, ptr %0, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !56
  %22 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 1, i32 0, i32 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !35
  %24 = fcmp ugt float %21, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 1, i32 0, i32 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !35
  %28 = fcmp ult float %21, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = fsub float %21, %23
  %31 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 1, i32 0, i32 0, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !35
  %33 = fmul float %30, %32
  %34 = fptosi float %33 to i32
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %29, %25, %18
  %37 = phi i64 [ 0, %18 ], [ %35, %29 ], [ 511, %25 ]
  %38 = getelementptr inbounds %struct.cie_cached_vector3_s, ptr %0, i64 0, i32 2
  %39 = load float, ptr %38, align 4, !tbaa !57
  %40 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 2, i32 0, i32 0, i32 1
  %41 = load float, ptr %40, align 4, !tbaa !35
  %42 = fcmp ugt float %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 2, i32 0, i32 0, i32 3
  %45 = load float, ptr %44, align 4, !tbaa !35
  %46 = fcmp ult float %39, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = fsub float %39, %41
  %49 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 2, i32 0, i32 0, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !35
  %51 = fmul float %48, %50
  %52 = fptosi float %51 to i32
  %53 = sext i32 %52 to i64
  br label %54

54:                                               ; preds = %47, %43, %36
  %55 = phi i64 [ 0, %36 ], [ %53, %47 ], [ 511, %43 ]
  %56 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 1, i32 0, i32 1, i64 %37
  %57 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %1, i64 0, i32 1, i64 %19
  %58 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 2, i32 0, i32 1, i64 %55
  %59 = load float, ptr %57, align 4, !tbaa !54
  %60 = load float, ptr %56, align 4, !tbaa !54
  %61 = fadd float %59, %60
  %62 = load float, ptr %58, align 4, !tbaa !54
  %63 = fadd float %61, %62
  store float %63, ptr %0, align 4, !tbaa !54
  %64 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %1, i64 0, i32 1, i64 %19, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !56
  %66 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 1, i32 0, i32 1, i64 %37, i32 1
  %67 = load float, ptr %66, align 4, !tbaa !56
  %68 = fadd float %65, %67
  %69 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 2, i32 0, i32 1, i64 %55, i32 1
  %70 = load float, ptr %69, align 4, !tbaa !56
  %71 = fadd float %68, %70
  store float %71, ptr %20, align 4, !tbaa !56
  %72 = getelementptr inbounds %struct.cie_cache_vectors_s, ptr %1, i64 0, i32 1, i64 %19, i32 2
  %73 = load float, ptr %72, align 4, !tbaa !57
  %74 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 1, i32 0, i32 1, i64 %37, i32 2
  %75 = load float, ptr %74, align 4, !tbaa !57
  %76 = fadd float %73, %75
  %77 = getelementptr inbounds %union.gx_cie_vector_cache_s, ptr %1, i64 2, i32 0, i32 1, i64 %55, i32 2
  %78 = load float, ptr %77, align 4, !tbaa !57
  %79 = fadd float %76, %78
  store float %79, ptr %38, align 4, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cie_remap_finish(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca %struct.cie_cached_vector3_s, align 4
  %5 = alloca [3 x i64], align 16
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %10 = icmp eq ptr %7, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds i16, ptr %1, i64 2
  store i16 0, ptr %12, align 2, !tbaa !62
  %13 = getelementptr inbounds i16, ptr %1, i64 1
  store i16 0, ptr %13, align 2, !tbaa !62
  store i16 0, ptr %1, align 2, !tbaa !62
  br label %214

14:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !89
  %15 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %9, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !164
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %9, i64 0, i32 2
  call fastcc void @cie_lookup_mult3(ptr noundef nonnull %4, ptr noundef nonnull %19)
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %9, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !165
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %9, i64 0, i32 6
  call fastcc void @cie_lookup_mult3(ptr noundef nonnull %4, ptr noundef nonnull %25)
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19
  call fastcc void @cie_lookup_mult3(ptr noundef nonnull %4, ptr noundef nonnull %27)
  %28 = load float, ptr %4, align 4, !tbaa !54
  %29 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 15
  %30 = load float, ptr %29, align 8, !tbaa !53
  %31 = fsub float %28, %30
  %32 = fmul float %31, 1.024000e+03
  %33 = fptosi float %32 to i32
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 524287)
  %36 = getelementptr inbounds %struct.cie_cached_vector3_s, ptr %4, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !56
  %38 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 15, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !53
  %40 = fsub float %37, %39
  %41 = fmul float %40, 1.024000e+03
  %42 = fptosi float %41 to i32
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 0)
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 524287)
  %45 = getelementptr inbounds %struct.cie_cached_vector3_s, ptr %4, i64 0, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 15, i64 2
  %48 = load float, ptr %47, align 8, !tbaa !53
  %49 = fsub float %46, %48
  %50 = fmul float %49, 1.024000e+03
  %51 = fptosi float %50 to i32
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 0)
  %53 = tail call i32 @llvm.smin.i32(i32 %52, i32 524287)
  %54 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 11, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %111

57:                                               ; preds = %26
  %58 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 1, i64 0, i32 0, i32 1
  %59 = lshr i32 %35, 10
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [512 x i16], ptr %58, i64 0, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !35
  %63 = sext i16 %62 to i32
  %64 = add nuw nsw i32 %59, 1
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [512 x i16], ptr %58, i64 0, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !35
  %68 = sext i16 %67 to i32
  %69 = sub nsw i32 %68, %63
  %70 = and i32 %35, 1023
  %71 = mul nsw i32 %69, %70
  %72 = lshr i32 %71, 10
  %73 = trunc i32 %72 to i16
  %74 = add i16 %62, %73
  store i16 %74, ptr %1, align 2, !tbaa !62
  %75 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 1, i64 1, i32 0, i32 1
  %76 = lshr i32 %44, 10
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [512 x i16], ptr %75, i64 0, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !35
  %80 = sext i16 %79 to i32
  %81 = add nuw nsw i32 %76, 1
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [512 x i16], ptr %75, i64 0, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !35
  %85 = sext i16 %84 to i32
  %86 = sub nsw i32 %85, %80
  %87 = and i32 %44, 1023
  %88 = mul nsw i32 %86, %87
  %89 = lshr i32 %88, 10
  %90 = trunc i32 %89 to i16
  %91 = add i16 %79, %90
  %92 = getelementptr inbounds i16, ptr %1, i64 1
  store i16 %91, ptr %92, align 2, !tbaa !62
  %93 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 1, i64 2, i32 0, i32 1
  %94 = lshr i32 %53, 10
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds [512 x i16], ptr %93, i64 0, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !35
  %98 = sext i16 %97 to i32
  %99 = add nuw nsw i32 %94, 1
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds [512 x i16], ptr %93, i64 0, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !35
  %103 = sext i16 %102 to i32
  %104 = sub nsw i32 %103, %98
  %105 = and i32 %53, 1023
  %106 = mul nsw i32 %104, %105
  %107 = lshr i32 %106, 10
  %108 = trunc i32 %107 to i16
  %109 = add i16 %97, %108
  %110 = getelementptr inbounds i16, ptr %1, i64 2
  store i16 %109, ptr %110, align 2, !tbaa !62
  br label %214

111:                                              ; preds = %26
  %112 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 11
  %113 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 11, i32 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %115 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 1, i64 0, i32 0, i32 1
  %116 = lshr i32 %35, 10
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [512 x i32], ptr %115, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !35
  %120 = add nuw nsw i32 %116, 1
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [512 x i32], ptr %115, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !35
  %124 = sub nsw i32 %123, %119
  %125 = shl nuw nsw i32 %35, 6
  %126 = and i32 %125, 65472
  %127 = mul i32 %126, %124
  %128 = ashr i32 %127, 16
  %129 = add nsw i32 %128, %119
  %130 = shl i32 %129, 2
  %131 = sext i32 %130 to i64
  store i64 %131, ptr %5, align 16, !tbaa !169
  %132 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 1, i64 1, i32 0, i32 1
  %133 = lshr i32 %44, 10
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds [512 x i32], ptr %132, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !35
  %137 = add nuw nsw i32 %133, 1
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds [512 x i32], ptr %132, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !35
  %141 = sub nsw i32 %140, %136
  %142 = shl nuw nsw i32 %44, 6
  %143 = and i32 %142, 65472
  %144 = mul i32 %143, %141
  %145 = ashr i32 %144, 16
  %146 = add nsw i32 %145, %136
  %147 = shl i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x i64], ptr %5, i64 0, i64 1
  store i64 %148, ptr %149, align 8, !tbaa !169
  %150 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 1, i64 2, i32 0, i32 1
  %151 = lshr i32 %53, 10
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds [512 x i32], ptr %150, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !35
  %155 = add nuw nsw i32 %151, 1
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds [512 x i32], ptr %150, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !35
  %159 = sub nsw i32 %158, %154
  %160 = shl nuw nsw i32 %53, 6
  %161 = and i32 %160, 65472
  %162 = mul i32 %161, %159
  %163 = ashr i32 %162, 16
  %164 = add nsw i32 %163, %154
  %165 = shl i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [3 x i64], ptr %5, i64 0, i64 2
  store i64 %166, ptr %167, align 16, !tbaa !169
  call void @gx_color_interpolate_linear(ptr noundef nonnull %5, ptr noundef nonnull %112, ptr noundef %1) #11
  %168 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 3
  %169 = load i32, ptr %168, align 4, !tbaa !170
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %213

171:                                              ; preds = %111
  %172 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 2, i64 0, i32 0, i32 1
  %173 = load i16, ptr %1, align 2, !tbaa !62
  %174 = sext i16 %173 to i32
  %175 = ashr i32 %174, 12
  %176 = add nsw i32 %175, %174
  %177 = ashr i32 %176, 6
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [512 x i16], ptr %172, i64 0, i64 %178
  %180 = load i16, ptr %179, align 2, !tbaa !35
  store i16 %180, ptr %1, align 2, !tbaa !62
  %181 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 2, i64 1, i32 0, i32 1
  %182 = getelementptr inbounds i16, ptr %1, i64 1
  %183 = load i16, ptr %182, align 2, !tbaa !62
  %184 = sext i16 %183 to i32
  %185 = ashr i32 %184, 12
  %186 = add nsw i32 %185, %184
  %187 = ashr i32 %186, 6
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [512 x i16], ptr %181, i64 0, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !35
  store i16 %190, ptr %182, align 2, !tbaa !62
  %191 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 2, i64 2, i32 0, i32 1
  %192 = getelementptr inbounds i16, ptr %1, i64 2
  %193 = load i16, ptr %192, align 2, !tbaa !62
  %194 = sext i16 %193 to i32
  %195 = ashr i32 %194, 12
  %196 = add nsw i32 %195, %194
  %197 = ashr i32 %196, 6
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [512 x i16], ptr %191, i64 0, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !35
  store i16 %200, ptr %192, align 2, !tbaa !62
  %201 = icmp sgt i32 %114, 3
  br i1 %201, label %202, label %213

202:                                              ; preds = %171
  %203 = getelementptr inbounds %struct.gs_cie_render_s, ptr %7, i64 0, i32 19, i32 2, i64 3, i32 0, i32 1
  %204 = getelementptr inbounds i16, ptr %1, i64 3
  %205 = load i16, ptr %204, align 2, !tbaa !62
  %206 = sext i16 %205 to i32
  %207 = ashr i32 %206, 12
  %208 = add nsw i32 %207, %206
  %209 = ashr i32 %208, 6
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [512 x i16], ptr %203, i64 0, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !35
  store i16 %212, ptr %204, align 2, !tbaa !62
  br label %213

213:                                              ; preds = %171, %202, %111
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %214

214:                                              ; preds = %213, %57, %11
  %215 = phi i32 [ 3, %11 ], [ 3, %57 ], [ %114, %213 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret i32 %215
}

declare void @gx_color_interpolate_linear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !6, i64 208}
!12 = !{!"gs_imager_state_s", !6, i64 0, !13, i64 8, !17, i64 80, !15, i64 128, !19, i64 132, !15, i64 136, !14, i64 140, !20, i64 144, !15, i64 160, !15, i64 164, !6, i64 168, !7, i64 176, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !7, i64 232, !7, i64 264, !6, i64 296, !6, i64 304, !6, i64 312}
!13 = !{!"gx_line_params_s", !14, i64 0, !15, i64 4, !15, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !16, i64 32}
!14 = !{!"float", !7, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!"gx_dash_params_s", !6, i64 0, !15, i64 8, !14, i64 12, !15, i64 16, !14, i64 20, !15, i64 24, !15, i64 28, !14, i64 32}
!17 = !{!"gs_matrix_fixed_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !18, i64 24, !18, i64 32, !15, i64 40}
!18 = !{!"long", !7, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = !{!"gs_fixed_point_s", !18, i64 0, !18, i64 8}
!21 = !{!22, !6, i64 336}
!22 = !{!"gs_cie_render_s", !23, i64 0, !24, i64 24, !26, i64 48, !27, i64 88, !28, i64 112, !26, i64 136, !29, i64 176, !27, i64 200, !26, i64 224, !29, i64 264, !27, i64 288, !30, i64 312, !27, i64 376, !27, i64 400, !26, i64 424, !7, i64 464, !26, i64 476, !25, i64 516, !25, i64 528, !33, i64 540}
!23 = !{!"rc_header_s", !18, i64 0, !6, i64 8, !6, i64 16}
!24 = !{!"gs_cie_wb_s", !25, i64 0, !25, i64 12}
!25 = !{!"gs_vector3_s", !14, i64 0, !14, i64 4, !14, i64 8}
!26 = !{!"gs_matrix3_s", !25, i64 0, !25, i64 12, !25, i64 24, !15, i64 36}
!27 = !{!"gs_range3_s", !7, i64 0}
!28 = !{!"gs_cie_transform_proc3_s", !7, i64 0}
!29 = !{!"gs_cie_render_proc3_s", !7, i64 0}
!30 = !{!"", !31, i64 0, !32, i64 32}
!31 = !{!"gx_color_lookup_table_s", !15, i64 0, !7, i64 4, !15, i64 20, !6, i64 24}
!32 = !{!"gs_cie_render_table_procs_s", !7, i64 0}
!33 = !{!"", !7, i64 0, !7, i64 18480, !7, i64 24660, !15, i64 32900}
!34 = !{!22, !15, i64 332}
!35 = !{!7, !7, i64 0}
!36 = !{!37, !18, i64 24896}
!37 = !{!"gs_cie_defg_s", !38, i64 0, !23, i64 24896, !44, i64 24920, !45, i64 24952, !44, i64 24984, !31, i64 25016, !41, i64 25048}
!38 = !{!"gs_cie_abc_s", !39, i64 0, !23, i64 6296, !27, i64 6320, !42, i64 6344, !26, i64 6368, !43, i64 6408}
!39 = !{!"gs_cie_common_s", !27, i64 0, !40, i64 24, !26, i64 48, !24, i64 88, !41, i64 112}
!40 = !{!"gs_cie_common_proc3_s", !7, i64 0}
!41 = !{!"", !7, i64 0}
!42 = !{!"gs_cie_abc_proc3_s", !7, i64 0}
!43 = !{!"", !15, i64 0, !7, i64 4}
!44 = !{!"gs_range4_s", !7, i64 0}
!45 = !{!"gs_cie_defg_proc4_s", !7, i64 0}
!46 = !{!37, !6, i64 24912}
!47 = !{!37, !6, i64 24904}
!48 = !{!49, !18, i64 24896}
!49 = !{!"gs_cie_def_s", !38, i64 0, !23, i64 24896, !27, i64 24920, !50, i64 24944, !27, i64 24968, !31, i64 24992, !41, i64 25024}
!50 = !{!"gs_cie_def_proc3_s", !7, i64 0}
!51 = !{!49, !6, i64 24912}
!52 = !{!49, !6, i64 24904}
!53 = !{!14, !14, i64 0}
!54 = !{!55, !14, i64 0}
!55 = !{!"cie_cached_vector3_s", !14, i64 0, !14, i64 4, !14, i64 8}
!56 = !{!55, !14, i64 4}
!57 = !{!55, !14, i64 8}
!58 = !{!38, !15, i64 6408}
!59 = !{!12, !6, i64 304}
!60 = !{!61, !6, i64 8}
!61 = !{!"gx_color_map_procs_s", !6, i64 0, !6, i64 8, !6, i64 16}
!62 = !{!19, !19, i64 0}
!63 = !{!61, !6, i64 16}
!64 = !{!26, !14, i64 0}
!65 = !{!26, !14, i64 4}
!66 = !{!26, !14, i64 8}
!67 = !{!26, !14, i64 16}
!68 = !{!26, !14, i64 12}
!69 = !{!26, !14, i64 20}
!70 = !{!26, !14, i64 32}
!71 = !{!26, !14, i64 24}
!72 = !{!26, !14, i64 28}
!73 = !{!26, !15, i64 36}
!74 = !{!75, !14, i64 0}
!75 = !{!"gs_range_s", !14, i64 0, !14, i64 4}
!76 = !{!75, !14, i64 4}
!77 = !{!78, !14, i64 4}
!78 = !{!"cie_cache_params_s", !15, i64 0, !14, i64 4, !14, i64 8}
!79 = !{!78, !14, i64 8}
!80 = !{!81, !14, i64 0}
!81 = !{!"gs_for_loop_params_s", !14, i64 0, !14, i64 4, !14, i64 8}
!82 = !{!81, !14, i64 4}
!83 = !{!81, !14, i64 8}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
!86 = !{!38, !18, i64 6296}
!87 = !{!38, !6, i64 6312}
!88 = !{!38, !6, i64 6304}
!89 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53}
!90 = !{!91, !6, i64 6328}
!91 = !{!"gs_cie_a_s", !39, i64 0, !23, i64 6296, !75, i64 6320, !6, i64 6328, !25, i64 6336, !41, i64 6348}
!92 = distinct !{!92, !10}
!93 = !{!94, !15, i64 0}
!94 = !{!"gx_cie_cache_s", !78, i64 0, !7, i64 12}
!95 = !{!94, !14, i64 4}
!96 = !{!94, !14, i64 8}
!97 = !{!25, !14, i64 0}
!98 = !{!25, !14, i64 4}
!99 = !{!25, !14, i64 8}
!100 = distinct !{!100, !10}
!101 = !{i64 0, i64 4, !102, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53}
!102 = !{!15, !15, i64 0}
!103 = !{i64 0, i64 4, !53, i64 4, i64 4, !53}
!104 = !{i64 0, i64 4, !53}
!105 = !{!91, !18, i64 6296}
!106 = !{!91, !6, i64 6312}
!107 = !{!91, !6, i64 6304}
!108 = !{!109, !6, i64 208}
!109 = !{!"gs_state_s", !6, i64 0, !13, i64 8, !17, i64 80, !15, i64 128, !19, i64 132, !15, i64 136, !14, i64 140, !20, i64 144, !15, i64 160, !15, i64 164, !6, i64 168, !7, i64 176, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !7, i64 232, !7, i64 264, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !110, i64 336, !15, i64 360, !110, i64 364, !15, i64 388, !6, i64 392, !6, i64 400, !15, i64 408, !15, i64 412, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !17, i64 456, !15, i64 504, !7, i64 508, !15, i64 512, !6, i64 520, !15, i64 528, !6, i64 536, !6, i64 544, !111, i64 552}
!110 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!111 = !{!"gs_state_client_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!112 = !{!22, !18, i64 0}
!113 = !{!22, !6, i64 16}
!114 = !{!22, !6, i64 8}
!115 = distinct !{!115, !10}
!116 = distinct !{!116, !10}
!117 = distinct !{!117, !10}
!118 = distinct !{!118, !10}
!119 = distinct !{!119, !10}
!120 = distinct !{!120, !10}
!121 = distinct !{!121, !10}
!122 = !{!109, !6, i64 416}
!123 = !{!124, !6, i64 0}
!124 = !{!"gs_color_space_s", !6, i64 0, !7, i64 8}
!125 = !{!126, !15, i64 0}
!126 = !{!"gs_color_space_type_s", !15, i64 0, !15, i64 4, !15, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!127 = !{!109, !6, i64 296}
!128 = !{!109, !6, i64 432}
!129 = !{!130, !6, i64 0}
!130 = !{!"gx_device_color_s", !6, i64 0, !7, i64 8, !131, i64 48, !132, i64 56}
!131 = !{!"gs_int_point_s", !15, i64 0, !15, i64 4}
!132 = !{!"_mask", !133, i64 0, !18, i64 24, !6, i64 32}
!133 = !{!"gs_client_color_s", !134, i64 0, !6, i64 16}
!134 = !{!"gs_paint_color_s", !7, i64 0}
!135 = distinct !{!135, !10}
!136 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53, i64 16, i64 4, !53, i64 20, i64 4, !53, i64 24, i64 4, !53, i64 28, i64 4, !53, i64 32, i64 4, !53, i64 36, i64 4, !102}
!137 = distinct !{!137, !10}
!138 = distinct !{!138, !10}
!139 = distinct !{!139, !10}
!140 = !{!22, !14, i64 424}
!141 = !{!22, !14, i64 436}
!142 = !{!22, !14, i64 448}
!143 = !{!22, !14, i64 428}
!144 = !{!22, !14, i64 440}
!145 = !{!22, !14, i64 452}
!146 = !{!22, !14, i64 432}
!147 = !{!22, !14, i64 444}
!148 = !{!22, !14, i64 456}
!149 = !{!22, !15, i64 460}
!150 = !{!151, !18, i64 0}
!151 = !{!"gx_cie_joint_caches_s", !23, i64 0, !15, i64 24, !7, i64 28, !152, i64 18508, !26, i64 18604, !15, i64 18644, !7, i64 18648}
!152 = !{!"gs_cie_wbsd_s", !153, i64 0, !153, i64 24, !153, i64 48, !153, i64 72}
!153 = !{!"", !25, i64 0, !25, i64 12}
!154 = !{!151, !6, i64 8}
!155 = !{!109, !6, i64 0}
!156 = !{!157, !6, i64 16}
!157 = !{!"gs_memory_s", !158, i64 0}
!158 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!159 = !{!151, !6, i64 16}
!160 = distinct !{!160, !10}
!161 = distinct !{!161, !10}
!162 = distinct !{!162, !10}
!163 = !{!151, !15, i64 18640}
!164 = !{!151, !15, i64 24}
!165 = !{!151, !15, i64 18644}
!166 = distinct !{!166, !10}
!167 = distinct !{!167, !10}
!168 = !{!12, !6, i64 296}
!169 = !{!18, !18, i64 0}
!170 = !{!22, !15, i64 33440}
