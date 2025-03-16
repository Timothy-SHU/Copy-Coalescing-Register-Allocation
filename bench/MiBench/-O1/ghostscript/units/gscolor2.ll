; ModuleID = 'gscolor2.c'
source_filename = "gscolor2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_indexed_map_s = type { %struct.rc_header_s, %union.anon.3, i32, ptr }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon.3 = type { ptr }
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
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"gs_indexed_map\00", align 1
@st_indexed_map = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 48, ptr @.str, ptr null, ptr null, ptr @indexed_map_enum_ptrs, ptr @indexed_map_reloc_ptrs, ptr null }, align 8
@gs_color_space_type_Indexed = dso_local local_unnamed_addr constant %struct.gs_color_space_type_s { i32 8, i32 1, i32 0, ptr @gx_init_paint_1, ptr @gx_concrete_space_Indexed, ptr @gx_concretize_Indexed, ptr null, ptr @gx_default_remap_color, ptr @gx_install_Indexed, ptr @gx_adjust_cspace_Indexed, ptr @gx_no_adjust_color_count, ptr @gx_enum_ptrs_Indexed, ptr @gx_reloc_ptrs_Indexed }, align 8
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"gx_adjust_Indexed\00", align 1
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @indexed_map_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  store ptr %8, ptr %3, align 8, !tbaa !13
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @indexed_map_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #6
  store ptr %6, ptr %4, align 8, !tbaa !5
  ret void
}

declare void @gx_init_paint_1(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @gx_concrete_space_Indexed(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = tail call ptr %6(ptr noundef nonnull %3, ptr noundef %1) #6
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_concretize_Indexed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.gs_client_color_s, align 8
  %6 = load float, ptr %0, align 8, !tbaa !18
  %7 = fcmp olt float %6, 0.000000e+00
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !20
  %11 = sitofp i32 %10 to float
  %12 = fcmp ult float %6, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = fptosi float %6 to i32
  br label %15

15:                                               ; preds = %8, %13, %4
  %16 = phi i32 [ 0, %4 ], [ %14, %13 ], [ %10, %8 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %17 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1
  %18 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !20
  %26 = call i32 %25(ptr noundef nonnull %17, i32 noundef %16, ptr noundef nonnull %5) #6
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %62, label %67

28:                                               ; preds = %15
  %29 = load ptr, ptr %17, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !21
  %32 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !20
  %34 = mul nsw i32 %31, %16
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  switch i32 %31, label %67 [
    i32 4, label %37
    i32 3, label %44
    i32 1, label %57
  ]

37:                                               ; preds = %28
  %38 = getelementptr inbounds i8, ptr %36, i64 3
  %39 = load i8, ptr %38, align 1, !tbaa !20
  %40 = uitofp i8 %39 to double
  %41 = fmul double %40, 0x3F70101010101010
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float %42, ptr %43, align 4, !tbaa !18
  br label %44

44:                                               ; preds = %28, %37
  %45 = getelementptr inbounds i8, ptr %36, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !20
  %47 = uitofp i8 %46 to double
  %48 = fmul double %47, 0x3F70101010101010
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  store float %49, ptr %50, align 8, !tbaa !18
  %51 = getelementptr inbounds i8, ptr %36, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !20
  %53 = uitofp i8 %52 to double
  %54 = fmul double %53, 0x3F70101010101010
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  store float %55, ptr %56, align 4, !tbaa !18
  br label %57

57:                                               ; preds = %28, %44
  %58 = load i8, ptr %36, align 1, !tbaa !20
  %59 = uitofp i8 %58 to double
  %60 = fmul double %59, 0x3F70101010101010
  %61 = fptrunc double %60 to float
  store float %61, ptr %5, align 8, !tbaa !18
  br label %62

62:                                               ; preds = %57, %21
  %63 = load ptr, ptr %17, align 8, !tbaa !14
  %64 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %63, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !22
  %66 = call i32 %65(ptr noundef nonnull %5, ptr noundef nonnull %17, ptr noundef %2, ptr noundef %3) #6
  br label %67

67:                                               ; preds = %28, %21, %62
  %68 = phi i32 [ %66, %62 ], [ %26, %21 ], [ -15, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  ret i32 %68
}

declare i32 @gx_default_remap_color(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_Indexed(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = tail call i32 %6(ptr noundef nonnull %3, ptr noundef %1) #6
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @gx_adjust_cspace_Indexed(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = sext i32 %2 to i64
  %13 = load i64, ptr %9, align 8, !tbaa !24
  %14 = add nsw i64 %13, %12
  store i64 %14, ptr %9, align 8, !tbaa !24
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load ptr, ptr %8, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.rc_header_s, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.rc_header_s, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  tail call void %19(ptr noundef %21, ptr noundef %17, ptr noundef nonnull @.str.1) #6
  br label %22

22:                                               ; preds = %16, %11, %7, %3
  %23 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !27
  tail call void %26(ptr noundef nonnull %23, ptr noundef %1, i32 noundef %2) #6
  ret void
}

declare void @gx_no_adjust_color_count(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @gx_enum_ptrs_Indexed(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = add i32 %2, -1
  %12 = tail call ptr %10(ptr noundef nonnull %7, i32 noundef 16, i32 noundef %11, ptr noundef %3) #6
  br label %31

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  store ptr %19, ptr %3, align 8, !tbaa !13
  br label %31

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !20
  %24 = add nsw i32 %23, 1
  %25 = load ptr, ptr %21, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !21
  %28 = mul nsw i32 %27, %24
  %29 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %30 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1
  store i32 %28, ptr %30, align 8, !tbaa !20
  store ptr %29, ptr %3, align 8, !tbaa !13
  br label %31

31:                                               ; preds = %6, %17, %20
  %32 = phi ptr [ @ptr_struct_procs, %17 ], [ @ptr_const_string_procs, %20 ], [ %12, %6 ]
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define internal void @gx_reloc_ptrs_Indexed(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  tail call void %7(ptr noundef nonnull %4, i32 noundef 16, ptr noundef %2) #6
  %8 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !20
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  br i1 %10, label %15, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %11, align 8, !tbaa !20
  %14 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %13, ptr noundef %2) #6
  store ptr %14, ptr %11, align 8, !tbaa !20
  br label %16

15:                                               ; preds = %3
  tail call void @gs_reloc_const_string(ptr noundef nonnull %11, ptr noundef %2) #6
  br label %16

16:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setcolorspace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.gs_color_space_s, align 8
  %4 = alloca %struct.gs_client_color_s, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 39
  %7 = load i8, ptr %6, align 4, !tbaa !39
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %11, i64 72, i1 false), !tbaa.struct !41
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !45
  %14 = load ptr, ptr %1, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %14, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  tail call void %16(ptr noundef nonnull %1, ptr noundef %5, i32 noundef 1) #6
  %17 = load ptr, ptr %10, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !41
  %18 = load ptr, ptr %1, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = tail call i32 %20(ptr noundef nonnull %1, ptr noundef nonnull %0) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %9
  %24 = load ptr, ptr %12, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.gs_client_color_s, ptr %24, i64 0, i32 1
  store ptr null, ptr %25, align 8, !tbaa !46
  %26 = load ptr, ptr %1, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  tail call void %28(ptr noundef %24, ptr noundef nonnull %1) #6
  %29 = load ptr, ptr %3, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %29, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  call void %31(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %5, i32 noundef -1) #6
  %32 = load ptr, ptr %3, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %32, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !27
  call void %34(ptr noundef nonnull %3, ptr noundef %5, i32 noundef -1) #6
  %35 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  store ptr @gx_dc_procs_none, ptr %36, align 8, !tbaa !52
  br label %42

37:                                               ; preds = %9
  %38 = load ptr, ptr %10, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %38, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !41
  %39 = load ptr, ptr %1, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %39, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !27
  tail call void %41(ptr noundef nonnull %1, ptr noundef %5, i32 noundef -1) #6
  br label %42

42:                                               ; preds = %2, %37, %23
  %43 = phi i32 [ %21, %37 ], [ %21, %23 ], [ -21, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  ret i32 %43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_currentcolorspace(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setcolor(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 39
  %4 = load i8, ptr %3, align 4, !tbaa !39
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = load ptr, ptr %0, align 8, !tbaa !30
  %10 = load ptr, ptr %8, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  tail call void %12(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %9, i32 noundef 1) #6
  %13 = load ptr, ptr %8, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  tail call void %15(ptr noundef %17, ptr noundef nonnull %8, ptr noundef %9, i32 noundef -1) #6
  %18 = load ptr, ptr %16, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !45
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  store ptr @gx_dc_procs_none, ptr %20, align 8, !tbaa !52
  br label %21

21:                                               ; preds = %2, %6
  %22 = phi i32 [ 0, %6 ], [ -21, %2 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_currentcolor(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 40}
!6 = !{!"gs_indexed_map_s", !7, i64 0, !9, i64 24, !12, i64 32, !11, i64 40}
!7 = !{!"rc_header_s", !8, i64 0, !11, i64 8, !11, i64 16}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !11, i64 0}
!15 = !{!"gs_color_space_s", !11, i64 0, !9, i64 8}
!16 = !{!17, !11, i64 24}
!17 = !{!"gs_color_space_type_s", !12, i64 0, !12, i64 4, !12, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !9, i64 0}
!20 = !{!9, !9, i64 0}
!21 = !{!17, !12, i64 4}
!22 = !{!17, !11, i64 32}
!23 = !{!17, !11, i64 56}
!24 = !{!6, !8, i64 0}
!25 = !{!6, !11, i64 16}
!26 = !{!6, !11, i64 8}
!27 = !{!17, !11, i64 64}
!28 = !{!17, !11, i64 80}
!29 = !{!17, !11, i64 88}
!30 = !{!31, !11, i64 0}
!31 = !{!"gs_state_s", !11, i64 0, !32, i64 8, !34, i64 80, !12, i64 128, !35, i64 132, !12, i64 136, !19, i64 140, !36, i64 144, !12, i64 160, !12, i64 164, !11, i64 168, !9, i64 176, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !9, i64 232, !9, i64 264, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !37, i64 336, !12, i64 360, !37, i64 364, !12, i64 388, !11, i64 392, !11, i64 400, !12, i64 408, !12, i64 412, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !34, i64 456, !12, i64 504, !9, i64 508, !12, i64 512, !11, i64 520, !12, i64 528, !11, i64 536, !11, i64 544, !38, i64 552}
!32 = !{!"gx_line_params_s", !19, i64 0, !12, i64 4, !12, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !33, i64 32}
!33 = !{!"gx_dash_params_s", !11, i64 0, !12, i64 8, !19, i64 12, !12, i64 16, !19, i64 20, !12, i64 24, !12, i64 28, !19, i64 32}
!34 = !{!"gs_matrix_fixed_s", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !8, i64 24, !8, i64 32, !12, i64 40}
!35 = !{!"short", !9, i64 0}
!36 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 8}
!37 = !{!"gs_matrix_s", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20}
!38 = !{!"gs_state_client_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!39 = !{!31, !9, i64 508}
!40 = !{!31, !11, i64 416}
!41 = !{i64 0, i64 8, !13, i64 8, i64 8, !13, i64 8, i64 8, !13, i64 8, i64 8, !13, i64 8, i64 8, !13, i64 8, i64 8, !42, i64 16, i64 8, !13, i64 24, i64 8, !13, i64 24, i64 8, !13, i64 24, i64 8, !13, i64 24, i64 8, !13, i64 32, i64 8, !13, i64 8, i64 8, !13, i64 16, i64 8, !13, i64 16, i64 8, !13, i64 16, i64 8, !13, i64 16, i64 8, !13, i64 24, i64 4, !43, i64 32, i64 8, !13, i64 40, i64 4, !43, i64 32, i64 8, !13, i64 48, i64 4, !43, i64 8, i64 4, !43, i64 16, i64 8, !13, i64 24, i64 8, !13, i64 24, i64 8, !13, i64 24, i64 8, !13, i64 24, i64 8, !13, i64 24, i64 8, !42, i64 32, i64 8, !13, i64 40, i64 8, !13, i64 40, i64 8, !13, i64 40, i64 8, !13, i64 40, i64 8, !13, i64 48, i64 8, !13, i64 24, i64 8, !13, i64 32, i64 8, !13, i64 32, i64 8, !13, i64 32, i64 8, !13, i64 32, i64 8, !13, i64 40, i64 4, !43, i64 48, i64 8, !13, i64 56, i64 4, !43, i64 48, i64 8, !13, i64 64, i64 4, !43}
!42 = !{!8, !8, i64 0}
!43 = !{!12, !12, i64 0}
!44 = !{!31, !11, i64 424}
!45 = !{i64 0, i64 16, !20, i64 16, i64 8, !13}
!46 = !{!47, !11, i64 16}
!47 = !{!"gs_client_color_s", !48, i64 0, !11, i64 16}
!48 = !{!"gs_paint_color_s", !9, i64 0}
!49 = !{!17, !11, i64 16}
!50 = !{!17, !11, i64 72}
!51 = !{!31, !11, i64 432}
!52 = !{!53, !11, i64 0}
!53 = !{!"gx_device_color_s", !11, i64 0, !9, i64 8, !54, i64 48, !55, i64 56}
!54 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!55 = !{!"_mask", !47, i64 0, !8, i64 24, !11, i64 32}
