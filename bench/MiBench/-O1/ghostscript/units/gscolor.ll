; ModuleID = 'gscolor.c'
source_filename = "gscolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }

@gs_color_space_type_DeviceGray = dso_local constant %struct.gs_color_space_type_s { i32 0, i32 1, i32 1, ptr @gx_init_paint_1, ptr @gx_same_concrete_space, ptr @gx_concretize_DeviceGray, ptr @gx_remap_concrete_DGray, ptr @gx_remap_DeviceGray, ptr @gx_no_install_cspace, ptr @gx_no_adjust_cspace_count, ptr @gx_no_adjust_color_count, ptr @gs_no_struct_enum_ptrs, ptr @gs_no_struct_reloc_ptrs }, align 8
@gs_color_space_type_DeviceRGB = dso_local constant %struct.gs_color_space_type_s { i32 1, i32 3, i32 1, ptr @gx_init_paint_3, ptr @gx_same_concrete_space, ptr @gx_concretize_DeviceRGB, ptr @gx_remap_concrete_DRGB, ptr @gx_remap_DeviceRGB, ptr @gx_no_install_cspace, ptr @gx_no_adjust_cspace_count, ptr @gx_no_adjust_color_count, ptr @gs_no_struct_enum_ptrs, ptr @gs_no_struct_reloc_ptrs }, align 8
@.str = private unnamed_addr constant [15 x i8] c"gs_color_space\00", align 1
@st_color_space = dso_local constant %struct.gs_memory_struct_type_s { i32 72, ptr @.str, ptr null, ptr null, ptr @color_space_enum_ptrs, ptr @color_space_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"gs_client_color\00", align 1
@st_client_color = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 24, ptr @.str.1, ptr null, ptr null, ptr @client_color_enum_ptrs, ptr @client_color_reloc_ptrs, ptr null }, align 8
@gs_cs_static_DeviceCMYK = dso_local global ptr null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"gs_cs_static_DeviceGray\00", align 1
@gs_cs_static_DeviceGray = dso_local global ptr null, align 8
@cs_gray_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"gs_cs_static_DeviceRGB\00", align 1
@gs_cs_static_DeviceRGB = dso_local global ptr null, align 8
@cs_rgb_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@cs_cmyk_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"gs_cs_static_DeviceCMYK\00", align 1
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_null = external constant %struct.gx_device_color_procs_s, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"gs_settransfer\00", align 1
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_init_paint_1(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1) #0 {
  store float 0.000000e+00, ptr %0, align 8, !tbaa !5
  ret void
}

declare ptr @gx_same_concrete_space(ptr noundef, ptr noundef) #1

declare i32 @gx_concretize_DeviceGray(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @gx_remap_concrete_DGray(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @gx_remap_DeviceGray(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_no_install_cspace(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gx_no_adjust_cspace_count(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gx_no_adjust_color_count(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3) #2 {
  ret void
}

declare ptr @gs_no_struct_enum_ptrs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare void @gs_no_struct_reloc_ptrs(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_init_paint_3(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float 0.000000e+00, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !5
  store float 0.000000e+00, ptr %0, align 8, !tbaa !5
  ret void
}

declare i32 @gx_concretize_DeviceRGB(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @gx_remap_concrete_DRGB(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @gx_remap_DeviceRGB(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @color_space_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = load ptr, ptr %0, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = tail call ptr %7(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #10
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal void @color_space_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  tail call void %6(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @client_color_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_client_color_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  store ptr %8, ptr %3, align 8, !tbaa !19
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @client_color_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.gs_client_color_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #10
  store ptr %6, ptr %4, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_gscolor_init(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = tail call ptr %3(ptr noundef %0, ptr noundef nonnull @st_color_space, ptr noundef nonnull @.str.2) #10
  store ptr @gs_color_space_type_DeviceGray, ptr %4, align 8, !tbaa !9
  store ptr %4, ptr @gs_cs_static_DeviceGray, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  tail call void %6(ptr noundef %0, ptr noundef nonnull @cs_gray_root, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull @gs_cs_static_DeviceGray, ptr noundef nonnull @.str.2) #10
  %7 = load ptr, ptr %2, align 8, !tbaa !20
  %8 = tail call ptr %7(ptr noundef %0, ptr noundef nonnull @st_color_space, ptr noundef nonnull @.str.3) #10
  store ptr @gs_color_space_type_DeviceRGB, ptr %8, align 8, !tbaa !9
  store ptr %8, ptr @gs_cs_static_DeviceRGB, align 8, !tbaa !19
  %9 = load ptr, ptr %5, align 8, !tbaa !23
  tail call void %9(ptr noundef %0, ptr noundef nonnull @cs_rgb_root, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull @gs_cs_static_DeviceRGB, ptr noundef nonnull @.str.3) #10
  %10 = load ptr, ptr %5, align 8, !tbaa !23
  tail call void %10(ptr noundef %0, ptr noundef nonnull @cs_cmyk_root, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull @gs_cs_static_DeviceCMYK, ptr noundef nonnull @.str.4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @gs_color_space_DeviceGray() local_unnamed_addr #6 {
  %1 = load ptr, ptr @gs_cs_static_DeviceGray, align 8, !tbaa !19
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @gs_color_space_DeviceRGB() local_unnamed_addr #6 {
  %1 = load ptr, ptr @gs_cs_static_DeviceRGB, align 8, !tbaa !19
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @gs_color_space_DeviceCMYK() local_unnamed_addr #6 {
  %1 = load ptr, ptr @gs_cs_static_DeviceCMYK, align 8, !tbaa !19
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gs_color_space_get_index(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = load i32, ptr %2, align 8, !tbaa !24
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gs_color_space_num_components(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !25
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @gs_color_space_indexed_base(ptr noundef readnone %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_init_paint_4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 1.000000e+00, ptr %3, align 4, !tbaa !5
  %4 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  store float 0.000000e+00, ptr %4, align 8, !tbaa !5
  %5 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !5
  store float 0.000000e+00, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setgray(ptr nocapture noundef readonly %0, double noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 39
  %4 = load i8, ptr %3, align 4, !tbaa !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void %11(ptr noundef %13, ptr noundef nonnull %8, ptr noundef %14, i32 noundef -1) #10
  %15 = load ptr, ptr %7, align 8, !tbaa !36
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void %18(ptr noundef nonnull %15, ptr noundef %19, i32 noundef -1) #10
  %20 = fptrunc double %1 to float
  %21 = load ptr, ptr %12, align 8, !tbaa !38
  store float %20, ptr %21, align 8, !tbaa !5
  %22 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr @gs_color_space_type_DeviceGray, ptr %22, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  store ptr @gx_dc_procs_none, ptr %24, align 8, !tbaa !42
  br label %25

25:                                               ; preds = %2, %6
  %26 = phi i32 [ 0, %6 ], [ -21, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local float @gs_currentgray(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = load i32, ptr %6, align 8, !tbaa !24
  switch i32 %7, label %58 [
    i32 0, label %8
    i32 1, label %10
    i32 2, label %31
  ]

8:                                                ; preds = %1
  %9 = load float, ptr %3, align 8, !tbaa !5
  br label %58

10:                                               ; preds = %1
  %11 = load float, ptr %3, align 8, !tbaa !5
  %12 = fpext float %11 to double
  %13 = fadd double %12, 0x3EF0010010010010
  %14 = fmul double %13, 3.276000e+04
  %15 = fptosi double %14 to i16
  %16 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = fpext float %17 to double
  %19 = fadd double %18, 0x3EF0010010010010
  %20 = fmul double %19, 3.276000e+04
  %21 = fptosi double %20 to i16
  %22 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %23 = load float, ptr %22, align 8, !tbaa !5
  %24 = fpext float %23 to double
  %25 = fadd double %24, 0x3EF0010010010010
  %26 = fmul double %25, 3.276000e+04
  %27 = fptosi double %26 to i16
  %28 = tail call signext i16 @color_rgb_to_gray(i16 noundef signext %15, i16 noundef signext %21, i16 noundef signext %27, ptr noundef %0) #10
  %29 = sitofp i16 %28 to float
  %30 = fdiv float %29, 3.276000e+04
  br label %58

31:                                               ; preds = %1
  %32 = load float, ptr %3, align 8, !tbaa !5
  %33 = fpext float %32 to double
  %34 = fadd double %33, 0x3EF0010010010010
  %35 = fmul double %34, 3.276000e+04
  %36 = fptosi double %35 to i16
  %37 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !5
  %39 = fpext float %38 to double
  %40 = fadd double %39, 0x3EF0010010010010
  %41 = fmul double %40, 3.276000e+04
  %42 = fptosi double %41 to i16
  %43 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %44 = load float, ptr %43, align 8, !tbaa !5
  %45 = fpext float %44 to double
  %46 = fadd double %45, 0x3EF0010010010010
  %47 = fmul double %46, 3.276000e+04
  %48 = fptosi double %47 to i16
  %49 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !5
  %51 = fpext float %50 to double
  %52 = fadd double %51, 0x3EF0010010010010
  %53 = fmul double %52, 3.276000e+04
  %54 = fptosi double %53 to i16
  %55 = tail call signext i16 @color_cmyk_to_gray(i16 noundef signext %36, i16 noundef signext %42, i16 noundef signext %48, i16 noundef signext %54, ptr noundef %0) #10
  %56 = sitofp i16 %55 to float
  %57 = fdiv float %56, 3.276000e+04
  br label %58

58:                                               ; preds = %1, %31, %10, %8
  %59 = phi float [ %57, %31 ], [ %30, %10 ], [ %9, %8 ], [ 0.000000e+00, %1 ]
  ret float %59
}

declare signext i16 @color_rgb_to_gray(i16 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare signext i16 @color_cmyk_to_gray(i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setrgbcolor(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 39
  %6 = load i8, ptr %5, align 4, !tbaa !26
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  %16 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void %15(ptr noundef %10, ptr noundef nonnull %12, ptr noundef %16, i32 noundef -1) #10
  %17 = load ptr, ptr %11, align 8, !tbaa !36
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %18, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void %20(ptr noundef nonnull %17, ptr noundef %21, i32 noundef -1) #10
  %22 = fptrunc double %1 to float
  store float %22, ptr %10, align 8, !tbaa !5
  %23 = fptrunc double %2 to float
  %24 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  store float %23, ptr %24, align 4, !tbaa !5
  %25 = fptrunc double %3 to float
  %26 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  store float %25, ptr %26, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.gs_client_color_s, ptr %10, i64 0, i32 1
  store ptr null, ptr %27, align 8, !tbaa !16
  %28 = load ptr, ptr %11, align 8, !tbaa !36
  store ptr @gs_color_space_type_DeviceRGB, ptr %28, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  store ptr @gx_dc_procs_none, ptr %30, align 8, !tbaa !42
  br label %31

31:                                               ; preds = %4, %8
  %32 = phi i32 [ 0, %8 ], [ -21, %4 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_currentrgbcolor(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = alloca [3 x i16], align 2
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = load i32, ptr %8, align 8, !tbaa !24
  switch i32 %9, label %59 [
    i32 0, label %10
    i32 1, label %14
    i32 2, label %22
  ]

10:                                               ; preds = %2
  %11 = load float, ptr %5, align 8, !tbaa !5
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 1
  store float %11, ptr %13, align 4, !tbaa !5
  store float %11, ptr %1, align 4, !tbaa !5
  br label %62

14:                                               ; preds = %2
  %15 = load float, ptr %5, align 8, !tbaa !5
  store float %15, ptr %1, align 4, !tbaa !5
  %16 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = getelementptr inbounds float, ptr %1, i64 1
  store float %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds float, ptr %1, i64 2
  store float %20, ptr %21, align 4, !tbaa !5
  br label %62

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  %23 = load float, ptr %5, align 8, !tbaa !5
  %24 = fpext float %23 to double
  %25 = fadd double %24, 0x3EF0010010010010
  %26 = fmul double %25, 3.276000e+04
  %27 = fptosi double %26 to i16
  %28 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !5
  %30 = fpext float %29 to double
  %31 = fadd double %30, 0x3EF0010010010010
  %32 = fmul double %31, 3.276000e+04
  %33 = fptosi double %32 to i16
  %34 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %35 = load float, ptr %34, align 8, !tbaa !5
  %36 = fpext float %35 to double
  %37 = fadd double %36, 0x3EF0010010010010
  %38 = fmul double %37, 3.276000e+04
  %39 = fptosi double %38 to i16
  %40 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %41 = load float, ptr %40, align 4, !tbaa !5
  %42 = fpext float %41 to double
  %43 = fadd double %42, 0x3EF0010010010010
  %44 = fmul double %43, 3.276000e+04
  %45 = fptosi double %44 to i16
  call void @color_cmyk_to_rgb(i16 noundef signext %27, i16 noundef signext %33, i16 noundef signext %39, i16 noundef signext %45, ptr noundef %0, ptr noundef nonnull %3) #10
  %46 = load i16, ptr %3, align 2, !tbaa !46
  %47 = sitofp i16 %46 to float
  %48 = fdiv float %47, 3.276000e+04
  store float %48, ptr %1, align 4, !tbaa !5
  %49 = getelementptr inbounds [3 x i16], ptr %3, i64 0, i64 1
  %50 = load i16, ptr %49, align 2, !tbaa !46
  %51 = sitofp i16 %50 to float
  %52 = fdiv float %51, 3.276000e+04
  %53 = getelementptr inbounds float, ptr %1, i64 1
  store float %52, ptr %53, align 4, !tbaa !5
  %54 = getelementptr inbounds [3 x i16], ptr %3, i64 0, i64 2
  %55 = load i16, ptr %54, align 2, !tbaa !46
  %56 = sitofp i16 %55 to float
  %57 = fdiv float %56, 3.276000e+04
  %58 = getelementptr inbounds float, ptr %1, i64 2
  store float %57, ptr %58, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  br label %62

59:                                               ; preds = %2
  %60 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %60, align 4, !tbaa !5
  %61 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %61, align 4, !tbaa !5
  store float 0.000000e+00, ptr %1, align 4, !tbaa !5
  br label %62

62:                                               ; preds = %59, %22, %14, %10
  ret i32 0
}

declare void @color_cmyk_to_rgb(i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_setalpha(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #8 {
  %3 = fcmp olt double %1, 0.000000e+00
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = fcmp ogt double %1, 1.000000e+00
  %6 = select i1 %5, double 1.000000e+00, double %1
  %7 = fmul double %6, 6.553500e+04
  %8 = fptoui double %7 to i16
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi i16 [ %8, %4 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 4
  store i16 %10, ptr %11, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  store ptr @gx_dc_procs_none, ptr %13, align 8, !tbaa !42
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @gs_currentalpha(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 4, !tbaa !47
  %4 = uitofp i16 %3 to float
  %5 = fdiv float %4, 6.553500e+04
  ret float %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setnullcolor(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 39
  %3 = load i8, ptr %2, align 4, !tbaa !26
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %8, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void %10(ptr noundef %12, ptr noundef nonnull %7, ptr noundef %13, i32 noundef -1) #10
  %14 = load ptr, ptr %6, align 8, !tbaa !36
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %15, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void %17(ptr noundef nonnull %14, ptr noundef %18, i32 noundef -1) #10
  %19 = load ptr, ptr %11, align 8, !tbaa !38
  store float 0.000000e+00, ptr %19, align 8, !tbaa !5
  %20 = load ptr, ptr %6, align 8, !tbaa !36
  store ptr @gs_color_space_type_DeviceGray, ptr %20, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  store ptr @gx_dc_procs_null, ptr %22, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %1, %5
  %24 = phi i32 [ 0, %5 ], [ -21, %1 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_settransfer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @gs_settransfer_remap(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_settransfer_remap(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8, !tbaa !50
  %9 = add nsw i64 %8, -1
  store i64 %9, ptr %5, align 8, !tbaa !50
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rc_header_s, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rc_header_s, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  tail call void %13(ptr noundef %15, ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #10
  store ptr null, ptr %4, align 8, !tbaa !48
  br label %16

16:                                               ; preds = %3, %7, %11
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %18, align 8, !tbaa !50
  %22 = add nsw i64 %21, -1
  store i64 %22, ptr %18, align 8, !tbaa !50
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rc_header_s, ptr %18, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.rc_header_s, ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  tail call void %26(ptr noundef %28, ptr noundef nonnull %18, ptr noundef nonnull @.str.5) #10
  store ptr null, ptr %17, align 8, !tbaa !55
  br label %29

29:                                               ; preds = %16, %20, %24
  %30 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %31, align 8, !tbaa !50
  %35 = add nsw i64 %34, -1
  store i64 %35, ptr %31, align 8, !tbaa !50
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rc_header_s, ptr %31, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.rc_header_s, ptr %31, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  tail call void %39(ptr noundef %41, ptr noundef nonnull %31, ptr noundef nonnull @.str.5) #10
  store ptr null, ptr %30, align 8, !tbaa !56
  br label %42

42:                                               ; preds = %29, %33, %37
  %43 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i64, ptr %44, align 8, !tbaa !50
  %48 = icmp sgt i64 %47, 1
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.rc_header_s, ptr %44, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  %52 = load ptr, ptr %0, align 8, !tbaa !39
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %72, label %54

54:                                               ; preds = %49, %46, %42
  %55 = load ptr, ptr %0, align 8, !tbaa !39
  %56 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !20
  %58 = tail call ptr %57(ptr noundef %55, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.5) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  store i64 1, ptr %58, align 8, !tbaa !50
  %61 = load ptr, ptr %0, align 8, !tbaa !39
  %62 = getelementptr inbounds %struct.rc_header_s, ptr %58, i64 0, i32 1
  store ptr %61, ptr %62, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct.rc_header_s, ptr %58, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %63, align 8, !tbaa !53
  %64 = load ptr, ptr %43, align 8, !tbaa !57
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i64, ptr %64, align 8, !tbaa !50
  %68 = add nsw i64 %67, -1
  store i64 %68, ptr %64, align 8, !tbaa !50
  br label %69

69:                                               ; preds = %66, %60
  store ptr %58, ptr %43, align 8, !tbaa !57
  br label %70

70:                                               ; preds = %54, %69
  %71 = phi i32 [ 0, %69 ], [ 12, %54 ]
  switch i32 %71, label %126 [
    i32 0, label %72
    i32 12, label %108
  ]

72:                                               ; preds = %70, %49
  %73 = load ptr, ptr %43, align 8, !tbaa !57
  %74 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %73, i64 0, i32 1
  store ptr %1, ptr %74, align 8, !tbaa !58
  %75 = tail call i64 @gs_next_ids(i32 noundef 1) #10
  %76 = load ptr, ptr %43, align 8, !tbaa !57
  %77 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %76, i64 0, i32 2
  store i64 %75, ptr %77, align 8, !tbaa !59
  store ptr %76, ptr %4, align 8, !tbaa !48
  store ptr %76, ptr %17, align 8, !tbaa !55
  store ptr %76, ptr %30, align 8, !tbaa !56
  %78 = load i64, ptr %76, align 8, !tbaa !50
  %79 = add nsw i64 %78, 3
  store i64 %79, ptr %76, align 8, !tbaa !50
  %80 = icmp eq i32 %2, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %76, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !58
  %84 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %76, i64 0, i32 3
  br label %85

85:                                               ; preds = %100, %81
  %86 = phi i64 [ 0, %81 ], [ %103, %100 ]
  %87 = trunc i64 %86 to i32
  %88 = sitofp i32 %87 to float
  %89 = fdiv float %88, 2.550000e+02
  %90 = fpext float %89 to double
  %91 = tail call float %83(double noundef %90, ptr noundef nonnull %76) #10
  %92 = fpext float %91 to double
  %93 = fcmp olt float %91, 0.000000e+00
  br i1 %93, label %100, label %94

94:                                               ; preds = %85
  %95 = fcmp ult float %91, 1.000000e+00
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = fadd double %92, 0x3EF0010010010010
  %98 = fmul double %97, 3.276000e+04
  %99 = fptosi double %98 to i16
  br label %100

100:                                              ; preds = %96, %94, %85
  %101 = phi i16 [ %99, %96 ], [ 32760, %94 ], [ 0, %85 ]
  %102 = getelementptr inbounds i16, ptr %84, i64 %86
  store i16 %101, ptr %102, align 2, !tbaa !46
  %103 = add nuw nsw i64 %86, 1
  %104 = icmp eq i64 %103, 256
  br i1 %104, label %105, label %85, !llvm.loop !60

105:                                              ; preds = %100
  tail call void @gx_set_effective_transfer(ptr noundef %0) #10
  %106 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %107 = load ptr, ptr %106, align 8, !tbaa !41
  store ptr @gx_dc_procs_none, ptr %107, align 8, !tbaa !42
  br label %126

108:                                              ; preds = %70
  %109 = load ptr, ptr %4, align 8, !tbaa !48
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i64, ptr %109, align 8, !tbaa !50
  %113 = add nsw i64 %112, 1
  store i64 %113, ptr %109, align 8, !tbaa !50
  br label %114

114:                                              ; preds = %108, %111
  %115 = load ptr, ptr %17, align 8, !tbaa !55
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i64, ptr %115, align 8, !tbaa !50
  %119 = add nsw i64 %118, 1
  store i64 %119, ptr %115, align 8, !tbaa !50
  br label %120

120:                                              ; preds = %114, %117
  %121 = load ptr, ptr %30, align 8, !tbaa !56
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i64, ptr %121, align 8, !tbaa !50
  %125 = add nsw i64 %124, 1
  store i64 %125, ptr %121, align 8, !tbaa !50
  br label %126

126:                                              ; preds = %120, %123, %72, %105, %70
  %127 = phi i32 [ undef, %70 ], [ 0, %105 ], [ 0, %72 ], [ -25, %123 ], [ -25, %120 ]
  ret i32 %127
}

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @load_transfer_map(ptr nocapture noundef readnone %0, ptr noundef %1, double noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %1, i64 0, i32 3
  %7 = fadd double %2, 0x3EF0010010010010
  %8 = fmul double %7, 3.276000e+04
  %9 = fptosi double %8 to i16
  br label %10

10:                                               ; preds = %3, %25
  %11 = phi i64 [ 0, %3 ], [ %28, %25 ]
  %12 = trunc i64 %11 to i32
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %13, 2.550000e+02
  %15 = fpext float %14 to double
  %16 = tail call float %5(double noundef %15, ptr noundef %1) #10
  %17 = fpext float %16 to double
  %18 = fcmp olt double %17, %2
  br i1 %18, label %25, label %19

19:                                               ; preds = %10
  %20 = fcmp ult float %16, 1.000000e+00
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = fadd double %17, 0x3EF0010010010010
  %23 = fmul double %22, 3.276000e+04
  %24 = fptosi double %23 to i16
  br label %25

25:                                               ; preds = %10, %21, %19
  %26 = phi i16 [ %24, %21 ], [ 32760, %19 ], [ %9, %10 ]
  %27 = getelementptr inbounds i16, ptr %6, i64 %11
  store i16 %26, ptr %27, align 2, !tbaa !46
  %28 = add nuw nsw i64 %11, 1
  %29 = icmp eq i64 %28, 256
  br i1 %29, label %30, label %10, !llvm.loop !60

30:                                               ; preds = %25
  ret void
}

declare void @gx_set_effective_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gs_currenttransfer(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_set_device_color_1(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %8, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void %10(ptr noundef %5, ptr noundef nonnull %7, ptr noundef %11, i32 noundef -1) #10
  %12 = load ptr, ptr %6, align 8, !tbaa !36
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %13, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void %15(ptr noundef nonnull %12, ptr noundef %16, i32 noundef -1) #10
  store float 0.000000e+00, ptr %5, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.gs_client_color_s, ptr %5, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !16
  %18 = load ptr, ptr %6, align 8, !tbaa !36
  store ptr @gs_color_space_type_DeviceGray, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.gx_device_color_s, ptr %3, i64 0, i32 1
  store i64 1, ptr %19, align 8, !tbaa !62
  store ptr @gx_dc_procs_pure, ptr %3, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 3
  store i32 252, ptr %20, align 8, !tbaa !63
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"gs_color_space_s", !11, i64 0, !7, i64 8}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !11, i64 80}
!13 = !{!"gs_color_space_type_s", !14, i64 0, !14, i64 4, !14, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!14 = !{!"int", !7, i64 0}
!15 = !{!13, !11, i64 88}
!16 = !{!17, !11, i64 16}
!17 = !{!"gs_client_color_s", !18, i64 0, !11, i64 16}
!18 = !{!"gs_paint_color_s", !7, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !11, i64 16}
!21 = !{!"gs_memory_s", !22, i64 0}
!22 = !{!"gs_memory_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!23 = !{!21, !11, i64 128}
!24 = !{!13, !14, i64 0}
!25 = !{!13, !14, i64 4}
!26 = !{!27, !7, i64 508}
!27 = !{!"gs_state_s", !11, i64 0, !28, i64 8, !30, i64 80, !14, i64 128, !32, i64 132, !14, i64 136, !6, i64 140, !33, i64 144, !14, i64 160, !14, i64 164, !11, i64 168, !7, i64 176, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !7, i64 232, !7, i64 264, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !34, i64 336, !14, i64 360, !34, i64 364, !14, i64 388, !11, i64 392, !11, i64 400, !14, i64 408, !14, i64 412, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !30, i64 456, !14, i64 504, !7, i64 508, !14, i64 512, !11, i64 520, !14, i64 528, !11, i64 536, !11, i64 544, !35, i64 552}
!28 = !{!"gx_line_params_s", !6, i64 0, !14, i64 4, !14, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !29, i64 32}
!29 = !{!"gx_dash_params_s", !11, i64 0, !14, i64 8, !6, i64 12, !14, i64 16, !6, i64 20, !14, i64 24, !14, i64 28, !6, i64 32}
!30 = !{!"gs_matrix_fixed_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !31, i64 24, !31, i64 32, !14, i64 40}
!31 = !{!"long", !7, i64 0}
!32 = !{!"short", !7, i64 0}
!33 = !{!"gs_fixed_point_s", !31, i64 0, !31, i64 8}
!34 = !{!"gs_matrix_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!35 = !{!"gs_state_client_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!36 = !{!27, !11, i64 416}
!37 = !{!13, !11, i64 72}
!38 = !{!27, !11, i64 424}
!39 = !{!27, !11, i64 0}
!40 = !{!13, !11, i64 64}
!41 = !{!27, !11, i64 432}
!42 = !{!43, !11, i64 0}
!43 = !{!"gx_device_color_s", !11, i64 0, !7, i64 8, !44, i64 48, !45, i64 56}
!44 = !{!"gs_int_point_s", !14, i64 0, !14, i64 4}
!45 = !{!"_mask", !17, i64 0, !31, i64 24, !11, i64 32}
!46 = !{!32, !32, i64 0}
!47 = !{!27, !32, i64 132}
!48 = !{!49, !11, i64 0}
!49 = !{!"gx_transfer_colored_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!50 = !{!51, !31, i64 0}
!51 = !{!"gx_transfer_map_s", !52, i64 0, !11, i64 24, !31, i64 32, !7, i64 40}
!52 = !{!"rc_header_s", !31, i64 0, !11, i64 8, !11, i64 16}
!53 = !{!51, !11, i64 16}
!54 = !{!51, !11, i64 8}
!55 = !{!49, !11, i64 8}
!56 = !{!49, !11, i64 16}
!57 = !{!49, !11, i64 24}
!58 = !{!51, !11, i64 24}
!59 = !{!51, !31, i64 32}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!7, !7, i64 0}
!63 = !{!27, !14, i64 128}
