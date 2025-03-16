; ModuleID = 'gscolor1.c'
source_filename = "gscolor1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }

@gs_color_space_type_DeviceCMYK = dso_local constant %struct.gs_color_space_type_s { i32 2, i32 4, i32 1, ptr @gx_init_paint_4, ptr @gx_same_concrete_space, ptr @gx_concretize_DeviceCMYK, ptr @gx_remap_concrete_DCMYK, ptr @gx_remap_DeviceCMYK, ptr @gx_no_install_cspace, ptr @gx_no_adjust_cspace_count, ptr @gx_no_adjust_color_count, ptr @gs_no_struct_enum_ptrs, ptr @gs_no_struct_reloc_ptrs }, align 8
@st_color_space = external constant %struct.gs_memory_struct_type_s, align 8
@.str = private unnamed_addr constant [24 x i8] c"gs_cs_static_DeviceCMYK\00", align 1
@gs_cs_static_DeviceCMYK = external local_unnamed_addr global ptr, align 8
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"gs_setblackgeneration\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gs_setundercolorremoval\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"gs_setcolortransfer\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"setcolortransfer\00", align 1

declare void @gx_init_paint_4(ptr noundef, ptr noundef) #0

declare ptr @gx_same_concrete_space(ptr noundef, ptr noundef) #0

declare i32 @gx_concretize_DeviceCMYK(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_remap_concrete_DCMYK(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_remap_DeviceCMYK(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_no_install_cspace(ptr noundef, ptr noundef) #0

declare void @gx_no_adjust_cspace_count(ptr noundef, ptr noundef, i32 noundef) #0

declare void @gx_no_adjust_color_count(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

declare ptr @gs_no_struct_enum_ptrs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

declare void @gs_no_struct_reloc_ptrs(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @gs_gscolor1_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = tail call ptr %3(ptr noundef %0, ptr noundef nonnull @st_color_space, ptr noundef nonnull @.str) #5
  store ptr @gs_color_space_type_DeviceCMYK, ptr %4, align 8, !tbaa !11
  store ptr %4, ptr @gs_cs_static_DeviceCMYK, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setcmykcolor(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 39
  %7 = load i8, ptr %6, align 4, !tbaa !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  %17 = load ptr, ptr %0, align 8, !tbaa !30
  tail call void %16(ptr noundef %11, ptr noundef nonnull %13, ptr noundef %17, i32 noundef -1) #5
  %18 = load ptr, ptr %12, align 8, !tbaa !27
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %19, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = load ptr, ptr %0, align 8, !tbaa !30
  tail call void %21(ptr noundef nonnull %18, ptr noundef %22, i32 noundef -1) #5
  %23 = fptrunc double %1 to float
  store float %23, ptr %11, align 8, !tbaa !32
  %24 = fptrunc double %2 to float
  %25 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  store float %24, ptr %25, align 4, !tbaa !32
  %26 = fptrunc double %3 to float
  %27 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  store float %26, ptr %27, align 8, !tbaa !32
  %28 = fptrunc double %4 to float
  %29 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  store float %28, ptr %29, align 4, !tbaa !32
  %30 = getelementptr inbounds %struct.gs_client_color_s, ptr %11, i64 0, i32 1
  store ptr null, ptr %30, align 8, !tbaa !33
  %31 = load ptr, ptr %12, align 8, !tbaa !27
  store ptr @gs_color_space_type_DeviceCMYK, ptr %31, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  store ptr @gx_dc_procs_none, ptr %33, align 8, !tbaa !37
  br label %34

34:                                               ; preds = %5, %9
  %35 = phi i32 [ 0, %9 ], [ -21, %5 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_currentcmykcolor(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = alloca [4 x i16], align 2
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = load i32, ptr %8, align 8, !tbaa !41
  switch i32 %9, label %63 [
    i32 0, label %10
    i32 1, label %16
    i32 2, label %52
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %11, align 4, !tbaa !32
  %12 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %12, align 4, !tbaa !32
  store float 0.000000e+00, ptr %1, align 4, !tbaa !32
  %13 = load float, ptr %5, align 8, !tbaa !32
  %14 = fsub float 1.000000e+00, %13
  %15 = getelementptr inbounds float, ptr %1, i64 3
  store float %14, ptr %15, align 4, !tbaa !32
  br label %67

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %17 = load float, ptr %5, align 8, !tbaa !32
  %18 = fpext float %17 to double
  %19 = fadd double %18, 0x3EF0010010010010
  %20 = fmul double %19, 3.276000e+04
  %21 = fptosi double %20 to i16
  %22 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !32
  %24 = fpext float %23 to double
  %25 = fadd double %24, 0x3EF0010010010010
  %26 = fmul double %25, 3.276000e+04
  %27 = fptosi double %26 to i16
  %28 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %29 = load float, ptr %28, align 8, !tbaa !32
  %30 = fpext float %29 to double
  %31 = fadd double %30, 0x3EF0010010010010
  %32 = fmul double %31, 3.276000e+04
  %33 = fptosi double %32 to i16
  call void @color_rgb_to_cmyk(i16 noundef signext %21, i16 noundef signext %27, i16 noundef signext %33, ptr noundef %0, ptr noundef nonnull %3) #5
  %34 = load i16, ptr %3, align 2, !tbaa !42
  %35 = sitofp i16 %34 to float
  %36 = fdiv float %35, 3.276000e+04
  store float %36, ptr %1, align 4, !tbaa !32
  %37 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 1
  %38 = load i16, ptr %37, align 2, !tbaa !42
  %39 = sitofp i16 %38 to float
  %40 = fdiv float %39, 3.276000e+04
  %41 = getelementptr inbounds float, ptr %1, i64 1
  store float %40, ptr %41, align 4, !tbaa !32
  %42 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 2
  %43 = load i16, ptr %42, align 2, !tbaa !42
  %44 = sitofp i16 %43 to float
  %45 = fdiv float %44, 3.276000e+04
  %46 = getelementptr inbounds float, ptr %1, i64 2
  store float %45, ptr %46, align 4, !tbaa !32
  %47 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 3
  %48 = load i16, ptr %47, align 2, !tbaa !42
  %49 = sitofp i16 %48 to float
  %50 = fdiv float %49, 3.276000e+04
  %51 = getelementptr inbounds float, ptr %1, i64 3
  store float %50, ptr %51, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  br label %67

52:                                               ; preds = %2
  %53 = load float, ptr %5, align 8, !tbaa !32
  store float %53, ptr %1, align 4, !tbaa !32
  %54 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !32
  %56 = getelementptr inbounds float, ptr %1, i64 1
  store float %55, ptr %56, align 4, !tbaa !32
  %57 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %58 = load float, ptr %57, align 8, !tbaa !32
  %59 = getelementptr inbounds float, ptr %1, i64 2
  store float %58, ptr %59, align 4, !tbaa !32
  %60 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %61 = load float, ptr %60, align 4, !tbaa !32
  %62 = getelementptr inbounds float, ptr %1, i64 3
  store float %61, ptr %62, align 4, !tbaa !32
  br label %67

63:                                               ; preds = %2
  %64 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %64, align 4, !tbaa !32
  %65 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %65, align 4, !tbaa !32
  store float 0.000000e+00, ptr %1, align 4, !tbaa !32
  %66 = getelementptr inbounds float, ptr %1, i64 3
  store float 1.000000e+00, ptr %66, align 4, !tbaa !32
  br label %67

67:                                               ; preds = %63, %52, %16, %10
  ret i32 0
}

declare void @color_rgb_to_cmyk(i16 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setblackgeneration(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8, !tbaa !44
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rc_header_s, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = load ptr, ptr %0, align 8, !tbaa !30
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %9, %6, %2
  %15 = load ptr, ptr %0, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = tail call ptr %17(ptr noundef %15, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.1) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  store i64 1, ptr %18, align 8, !tbaa !44
  %21 = load ptr, ptr %0, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.rc_header_s, ptr %18, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.rc_header_s, ptr %18, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %23, align 8, !tbaa !48
  %24 = load ptr, ptr %3, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i64, ptr %24, align 8, !tbaa !44
  %28 = add nsw i64 %27, -1
  store i64 %28, ptr %24, align 8, !tbaa !44
  br label %29

29:                                               ; preds = %26, %20
  store ptr %18, ptr %3, align 8, !tbaa !43
  br label %30

30:                                               ; preds = %29, %9
  %31 = load ptr, ptr %3, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %31, i64 0, i32 1
  store ptr %1, ptr %32, align 8, !tbaa !49
  %33 = tail call i64 @gs_next_ids(i32 noundef 1) #5
  %34 = load ptr, ptr %3, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %34, i64 0, i32 2
  store i64 %33, ptr %35, align 8, !tbaa !50
  tail call void @load_transfer_map(ptr noundef %0, ptr noundef %34, double noundef 0.000000e+00) #5
  %36 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  store ptr @gx_dc_procs_none, ptr %37, align 8, !tbaa !37
  br label %38

38:                                               ; preds = %14, %30
  %39 = phi i32 [ 0, %30 ], [ -25, %14 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setblackgeneration_remap(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8, !tbaa !44
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rc_header_s, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = load ptr, ptr %0, align 8, !tbaa !30
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %31, label %15

15:                                               ; preds = %10, %7, %3
  %16 = load ptr, ptr %0, align 8, !tbaa !30
  %17 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = tail call ptr %18(ptr noundef %16, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.1) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %15
  store i64 1, ptr %19, align 8, !tbaa !44
  %22 = load ptr, ptr %0, align 8, !tbaa !30
  %23 = getelementptr inbounds %struct.rc_header_s, ptr %19, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.rc_header_s, ptr %19, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %24, align 8, !tbaa !48
  %25 = load ptr, ptr %4, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i64, ptr %25, align 8, !tbaa !44
  %29 = add nsw i64 %28, -1
  store i64 %29, ptr %25, align 8, !tbaa !44
  br label %30

30:                                               ; preds = %27, %21
  store ptr %19, ptr %4, align 8, !tbaa !43
  br i1 %20, label %41, label %31

31:                                               ; preds = %30, %10
  %32 = load ptr, ptr %4, align 8, !tbaa !43
  %33 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %32, i64 0, i32 1
  store ptr %1, ptr %33, align 8, !tbaa !49
  %34 = tail call i64 @gs_next_ids(i32 noundef 1) #5
  %35 = load ptr, ptr %4, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %35, i64 0, i32 2
  store i64 %34, ptr %36, align 8, !tbaa !50
  %37 = icmp eq i32 %2, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  tail call void @load_transfer_map(ptr noundef %0, ptr noundef %35, double noundef 0.000000e+00) #5
  %39 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %40 = load ptr, ptr %39, align 8, !tbaa !36
  store ptr @gx_dc_procs_none, ptr %40, align 8, !tbaa !37
  br label %41

41:                                               ; preds = %15, %31, %38, %30
  %42 = phi i32 [ -25, %30 ], [ 0, %38 ], [ 0, %31 ], [ -25, %15 ]
  ret i32 %42
}

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #0

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #0

declare void @load_transfer_map(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gs_currentblackgeneration(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setundercolorremoval(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8, !tbaa !44
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rc_header_s, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = load ptr, ptr %0, align 8, !tbaa !30
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %9, %6, %2
  %15 = load ptr, ptr %0, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = tail call ptr %17(ptr noundef %15, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.2) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  store i64 1, ptr %18, align 8, !tbaa !44
  %21 = load ptr, ptr %0, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.rc_header_s, ptr %18, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.rc_header_s, ptr %18, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %23, align 8, !tbaa !48
  %24 = load ptr, ptr %3, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i64, ptr %24, align 8, !tbaa !44
  %28 = add nsw i64 %27, -1
  store i64 %28, ptr %24, align 8, !tbaa !44
  br label %29

29:                                               ; preds = %26, %20
  store ptr %18, ptr %3, align 8, !tbaa !51
  br label %30

30:                                               ; preds = %29, %9
  %31 = load ptr, ptr %3, align 8, !tbaa !51
  %32 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %31, i64 0, i32 1
  store ptr %1, ptr %32, align 8, !tbaa !49
  %33 = tail call i64 @gs_next_ids(i32 noundef 1) #5
  %34 = load ptr, ptr %3, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %34, i64 0, i32 2
  store i64 %33, ptr %35, align 8, !tbaa !50
  tail call void @load_transfer_map(ptr noundef %0, ptr noundef %34, double noundef -1.000000e+00) #5
  %36 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  store ptr @gx_dc_procs_none, ptr %37, align 8, !tbaa !37
  br label %38

38:                                               ; preds = %14, %30
  %39 = phi i32 [ 0, %30 ], [ -25, %14 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setundercolorremoval_remap(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8, !tbaa !44
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rc_header_s, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = load ptr, ptr %0, align 8, !tbaa !30
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %31, label %15

15:                                               ; preds = %10, %7, %3
  %16 = load ptr, ptr %0, align 8, !tbaa !30
  %17 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = tail call ptr %18(ptr noundef %16, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.2) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %15
  store i64 1, ptr %19, align 8, !tbaa !44
  %22 = load ptr, ptr %0, align 8, !tbaa !30
  %23 = getelementptr inbounds %struct.rc_header_s, ptr %19, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.rc_header_s, ptr %19, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %24, align 8, !tbaa !48
  %25 = load ptr, ptr %4, align 8, !tbaa !51
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i64, ptr %25, align 8, !tbaa !44
  %29 = add nsw i64 %28, -1
  store i64 %29, ptr %25, align 8, !tbaa !44
  br label %30

30:                                               ; preds = %27, %21
  store ptr %19, ptr %4, align 8, !tbaa !51
  br i1 %20, label %41, label %31

31:                                               ; preds = %30, %10
  %32 = load ptr, ptr %4, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %32, i64 0, i32 1
  store ptr %1, ptr %33, align 8, !tbaa !49
  %34 = tail call i64 @gs_next_ids(i32 noundef 1) #5
  %35 = load ptr, ptr %4, align 8, !tbaa !51
  %36 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %35, i64 0, i32 2
  store i64 %34, ptr %36, align 8, !tbaa !50
  %37 = icmp eq i32 %2, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  tail call void @load_transfer_map(ptr noundef %0, ptr noundef %35, double noundef -1.000000e+00) #5
  %39 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %40 = load ptr, ptr %39, align 8, !tbaa !36
  store ptr @gx_dc_procs_none, ptr %40, align 8, !tbaa !37
  br label %41

41:                                               ; preds = %15, %31, %38, %30
  %42 = phi i32 [ -25, %30 ], [ 0, %38 ], [ 0, %31 ], [ -25, %15 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gs_currentundercolorremoval(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setcolortransfer_remap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17
  %8 = tail call i64 @gs_next_ids(i32 noundef 4) #5
  %9 = load ptr, ptr %7, align 8, !tbaa.struct !52
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa.struct !53
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 2
  %13 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %6
  %17 = load i64, ptr %14, align 8, !tbaa !44
  %18 = icmp sgt i64 %17, 1
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rc_header_s, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = load ptr, ptr %0, align 8, !tbaa !30
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %19, %16, %6
  %25 = load ptr, ptr %0, align 8, !tbaa !30
  %26 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = tail call ptr %27(ptr noundef %25, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.3) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %204, label %30

30:                                               ; preds = %24
  store i64 1, ptr %28, align 8, !tbaa !44
  %31 = load ptr, ptr %0, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.rc_header_s, ptr %28, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.rc_header_s, ptr %28, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %33, align 8, !tbaa !48
  %34 = load ptr, ptr %13, align 8, !tbaa !54
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i64, ptr %34, align 8, !tbaa !44
  %38 = add nsw i64 %37, -1
  store i64 %38, ptr %34, align 8, !tbaa !44
  br label %39

39:                                               ; preds = %36, %30
  store ptr %28, ptr %13, align 8, !tbaa !54
  br i1 %29, label %204, label %40

40:                                               ; preds = %39, %19
  %41 = load ptr, ptr %7, align 8, !tbaa !56
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %41, align 8, !tbaa !44
  %45 = icmp sgt i64 %44, 1
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rc_header_s, ptr %41, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !47
  %49 = load ptr, ptr %0, align 8, !tbaa !30
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %69, label %51

51:                                               ; preds = %46, %43, %40
  %52 = load ptr, ptr %0, align 8, !tbaa !30
  %53 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = tail call ptr %54(ptr noundef %52, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.3) #5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %51
  store i64 1, ptr %55, align 8, !tbaa !44
  %58 = load ptr, ptr %0, align 8, !tbaa !30
  %59 = getelementptr inbounds %struct.rc_header_s, ptr %55, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !47
  %60 = getelementptr inbounds %struct.rc_header_s, ptr %55, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %60, align 8, !tbaa !48
  %61 = load ptr, ptr %7, align 8, !tbaa !56
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i64, ptr %61, align 8, !tbaa !44
  %65 = add nsw i64 %64, -1
  store i64 %65, ptr %61, align 8, !tbaa !44
  br label %66

66:                                               ; preds = %63, %57
  store ptr %55, ptr %7, align 8, !tbaa !56
  br label %67

67:                                               ; preds = %51, %66
  %68 = phi i32 [ 0, %66 ], [ 11, %51 ]
  switch i32 %68, label %204 [
    i32 0, label %69
    i32 11, label %186
  ]

69:                                               ; preds = %46, %67
  %70 = load ptr, ptr %10, align 8, !tbaa !57
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load i64, ptr %70, align 8, !tbaa !44
  %74 = icmp sgt i64 %73, 1
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.rc_header_s, ptr %70, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !47
  %78 = load ptr, ptr %0, align 8, !tbaa !30
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %75, %72, %69
  %81 = load ptr, ptr %0, align 8, !tbaa !30
  %82 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = tail call ptr %83(ptr noundef %81, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.3) #5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %167, label %86

86:                                               ; preds = %80
  store i64 1, ptr %84, align 8, !tbaa !44
  %87 = load ptr, ptr %0, align 8, !tbaa !30
  %88 = getelementptr inbounds %struct.rc_header_s, ptr %84, i64 0, i32 1
  store ptr %87, ptr %88, align 8, !tbaa !47
  %89 = getelementptr inbounds %struct.rc_header_s, ptr %84, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %89, align 8, !tbaa !48
  %90 = load ptr, ptr %10, align 8, !tbaa !57
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = load i64, ptr %90, align 8, !tbaa !44
  %94 = add nsw i64 %93, -1
  store i64 %94, ptr %90, align 8, !tbaa !44
  br label %95

95:                                               ; preds = %92, %86
  store ptr %84, ptr %10, align 8, !tbaa !57
  br i1 %85, label %167, label %96

96:                                               ; preds = %95, %75
  %97 = load ptr, ptr %12, align 8, !tbaa !58
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = load i64, ptr %97, align 8, !tbaa !44
  %101 = icmp sgt i64 %100, 1
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.rc_header_s, ptr %97, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !47
  %105 = load ptr, ptr %0, align 8, !tbaa !30
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %125, label %107

107:                                              ; preds = %102, %99, %96
  %108 = load ptr, ptr %0, align 8, !tbaa !30
  %109 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = tail call ptr %110(ptr noundef %108, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.3) #5
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %107
  store i64 1, ptr %111, align 8, !tbaa !44
  %114 = load ptr, ptr %0, align 8, !tbaa !30
  %115 = getelementptr inbounds %struct.rc_header_s, ptr %111, i64 0, i32 1
  store ptr %114, ptr %115, align 8, !tbaa !47
  %116 = getelementptr inbounds %struct.rc_header_s, ptr %111, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %116, align 8, !tbaa !48
  %117 = load ptr, ptr %12, align 8, !tbaa !58
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = load i64, ptr %117, align 8, !tbaa !44
  %121 = add nsw i64 %120, -1
  store i64 %121, ptr %117, align 8, !tbaa !44
  br label %122

122:                                              ; preds = %119, %113
  store ptr %111, ptr %12, align 8, !tbaa !58
  br label %123

123:                                              ; preds = %107, %122
  %124 = phi i32 [ 0, %122 ], [ 21, %107 ]
  switch i32 %124, label %204 [
    i32 0, label %125
    i32 21, label %148
  ]

125:                                              ; preds = %123, %102
  %126 = load ptr, ptr %13, align 8, !tbaa !54
  %127 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %126, i64 0, i32 1
  store ptr %4, ptr %127, align 8, !tbaa !49
  %128 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %126, i64 0, i32 2
  store i64 %8, ptr %128, align 8, !tbaa !50
  %129 = load ptr, ptr %7, align 8, !tbaa !56
  %130 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %129, i64 0, i32 1
  store ptr %1, ptr %130, align 8, !tbaa !49
  %131 = add i64 %8, 1
  %132 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %129, i64 0, i32 2
  store i64 %131, ptr %132, align 8, !tbaa !50
  %133 = load ptr, ptr %10, align 8, !tbaa !57
  %134 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %133, i64 0, i32 1
  store ptr %2, ptr %134, align 8, !tbaa !49
  %135 = add i64 %8, 2
  %136 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %133, i64 0, i32 2
  store i64 %135, ptr %136, align 8, !tbaa !50
  %137 = load ptr, ptr %12, align 8, !tbaa !58
  %138 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %137, i64 0, i32 1
  store ptr %3, ptr %138, align 8, !tbaa !49
  %139 = add i64 %8, 3
  %140 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %137, i64 0, i32 2
  store i64 %139, ptr %140, align 8, !tbaa !50
  %141 = icmp eq i32 %5, 0
  br i1 %141, label %204, label %142

142:                                              ; preds = %125
  tail call void @load_transfer_map(ptr noundef %0, ptr noundef %129, double noundef 0.000000e+00) #5
  %143 = load ptr, ptr %10, align 8, !tbaa !57
  tail call void @load_transfer_map(ptr noundef %0, ptr noundef %143, double noundef 0.000000e+00) #5
  %144 = load ptr, ptr %12, align 8, !tbaa !58
  tail call void @load_transfer_map(ptr noundef %0, ptr noundef %144, double noundef 0.000000e+00) #5
  %145 = load ptr, ptr %13, align 8, !tbaa !54
  tail call void @load_transfer_map(ptr noundef %0, ptr noundef %145, double noundef 0.000000e+00) #5
  tail call void @gx_set_effective_transfer(ptr noundef %0) #5
  %146 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %147 = load ptr, ptr %146, align 8, !tbaa !36
  store ptr @gx_dc_procs_none, ptr %147, align 8, !tbaa !37
  br label %204

148:                                              ; preds = %123
  %149 = load ptr, ptr %10, align 8, !tbaa !57
  %150 = icmp eq ptr %149, %11
  br i1 %150, label %167, label %151

151:                                              ; preds = %148
  %152 = icmp eq ptr %149, null
  br i1 %152, label %162, label %153

153:                                              ; preds = %151
  %154 = load i64, ptr %149, align 8, !tbaa !44
  %155 = add nsw i64 %154, -1
  store i64 %155, ptr %149, align 8, !tbaa !44
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.rc_header_s, ptr %149, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !48
  %160 = getelementptr inbounds %struct.rc_header_s, ptr %149, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !47
  tail call void %159(ptr noundef %161, ptr noundef nonnull %149, ptr noundef nonnull @.str.4) #5
  br label %162

162:                                              ; preds = %157, %153, %151
  store ptr %11, ptr %10, align 8, !tbaa !57
  %163 = icmp eq ptr %11, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %162
  %165 = load i64, ptr %11, align 8, !tbaa !44
  %166 = add nsw i64 %165, 1
  store i64 %166, ptr %11, align 8, !tbaa !44
  br label %167

167:                                              ; preds = %80, %95, %162, %164, %148
  %168 = load ptr, ptr %7, align 8, !tbaa !56
  %169 = icmp eq ptr %168, %9
  br i1 %169, label %186, label %170

170:                                              ; preds = %167
  %171 = icmp eq ptr %168, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %170
  %173 = load i64, ptr %168, align 8, !tbaa !44
  %174 = add nsw i64 %173, -1
  store i64 %174, ptr %168, align 8, !tbaa !44
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.rc_header_s, ptr %168, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !48
  %179 = getelementptr inbounds %struct.rc_header_s, ptr %168, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !47
  tail call void %178(ptr noundef %180, ptr noundef nonnull %168, ptr noundef nonnull @.str.4) #5
  br label %181

181:                                              ; preds = %176, %172, %170
  store ptr %9, ptr %7, align 8, !tbaa !56
  %182 = icmp eq ptr %9, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %181
  %184 = load i64, ptr %9, align 8, !tbaa !44
  %185 = add nsw i64 %184, 1
  store i64 %185, ptr %9, align 8, !tbaa !44
  br label %186

186:                                              ; preds = %67, %181, %183, %167
  %187 = load ptr, ptr %13, align 8, !tbaa !54
  %188 = icmp eq ptr %187, %14
  br i1 %188, label %204, label %189

189:                                              ; preds = %186
  %190 = icmp eq ptr %187, null
  br i1 %190, label %200, label %191

191:                                              ; preds = %189
  %192 = load i64, ptr %187, align 8, !tbaa !44
  %193 = add nsw i64 %192, -1
  store i64 %193, ptr %187, align 8, !tbaa !44
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.rc_header_s, ptr %187, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !48
  %198 = getelementptr inbounds %struct.rc_header_s, ptr %187, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !47
  tail call void %197(ptr noundef %199, ptr noundef nonnull %187, ptr noundef nonnull @.str.4) #5
  br label %200

200:                                              ; preds = %195, %191, %189
  store ptr %14, ptr %13, align 8, !tbaa !54
  br i1 %15, label %204, label %201

201:                                              ; preds = %200
  %202 = load i64, ptr %14, align 8, !tbaa !44
  %203 = add nsw i64 %202, 1
  store i64 %203, ptr %14, align 8, !tbaa !44
  br label %204

204:                                              ; preds = %24, %39, %200, %201, %186, %125, %142, %123, %67
  %205 = phi i32 [ undef, %67 ], [ undef, %123 ], [ 0, %142 ], [ 0, %125 ], [ -25, %186 ], [ -25, %201 ], [ -25, %200 ], [ -25, %39 ], [ -25, %24 ]
  ret i32 %205
}

declare void @gx_set_effective_transfer(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setcolortransfer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call i32 @gs_setcolortransfer_remap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1)
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @gs_currentcolortransfer(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  store ptr %6, ptr %1, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %10, ptr %11, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %15, ptr %16, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 17, i32 0, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr %20, ptr %21, align 8, !tbaa !13
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!12 = !{!"gs_color_space_s", !8, i64 0, !9, i64 8}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !9, i64 508}
!15 = !{!"gs_state_s", !8, i64 0, !16, i64 8, !20, i64 80, !18, i64 128, !22, i64 132, !18, i64 136, !17, i64 140, !23, i64 144, !18, i64 160, !18, i64 164, !8, i64 168, !9, i64 176, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !9, i64 232, !9, i64 264, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !24, i64 336, !18, i64 360, !24, i64 364, !18, i64 388, !8, i64 392, !8, i64 400, !18, i64 408, !18, i64 412, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !20, i64 456, !18, i64 504, !9, i64 508, !18, i64 512, !8, i64 520, !18, i64 528, !8, i64 536, !8, i64 544, !25, i64 552}
!16 = !{!"gx_line_params_s", !17, i64 0, !18, i64 4, !18, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !19, i64 32}
!17 = !{!"float", !9, i64 0}
!18 = !{!"int", !9, i64 0}
!19 = !{!"gx_dash_params_s", !8, i64 0, !18, i64 8, !17, i64 12, !18, i64 16, !17, i64 20, !18, i64 24, !18, i64 28, !17, i64 32}
!20 = !{!"gs_matrix_fixed_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !21, i64 24, !21, i64 32, !18, i64 40}
!21 = !{!"long", !9, i64 0}
!22 = !{!"short", !9, i64 0}
!23 = !{!"gs_fixed_point_s", !21, i64 0, !21, i64 8}
!24 = !{!"gs_matrix_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!25 = !{!"gs_state_client_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!26 = !{!15, !8, i64 424}
!27 = !{!15, !8, i64 416}
!28 = !{!29, !8, i64 72}
!29 = !{!"gs_color_space_type_s", !18, i64 0, !18, i64 4, !18, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88}
!30 = !{!15, !8, i64 0}
!31 = !{!29, !8, i64 64}
!32 = !{!17, !17, i64 0}
!33 = !{!34, !8, i64 16}
!34 = !{!"gs_client_color_s", !35, i64 0, !8, i64 16}
!35 = !{!"gs_paint_color_s", !9, i64 0}
!36 = !{!15, !8, i64 432}
!37 = !{!38, !8, i64 0}
!38 = !{!"gx_device_color_s", !8, i64 0, !9, i64 8, !39, i64 48, !40, i64 56}
!39 = !{!"gs_int_point_s", !18, i64 0, !18, i64 4}
!40 = !{!"_mask", !34, i64 0, !21, i64 24, !8, i64 32}
!41 = !{!29, !18, i64 0}
!42 = !{!22, !22, i64 0}
!43 = !{!15, !8, i64 216}
!44 = !{!45, !21, i64 0}
!45 = !{!"gx_transfer_map_s", !46, i64 0, !8, i64 24, !21, i64 32, !9, i64 40}
!46 = !{!"rc_header_s", !21, i64 0, !8, i64 8, !8, i64 16}
!47 = !{!45, !8, i64 8}
!48 = !{!45, !8, i64 16}
!49 = !{!45, !8, i64 24}
!50 = !{!45, !21, i64 32}
!51 = !{!15, !8, i64 224}
!52 = !{i64 0, i64 8, !13, i64 8, i64 8, !13, i64 16, i64 8, !13, i64 24, i64 8, !13}
!53 = !{i64 0, i64 8, !13, i64 8, i64 8, !13, i64 16, i64 8, !13}
!54 = !{!55, !8, i64 24}
!55 = !{!"gx_transfer_colored_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!56 = !{!55, !8, i64 0}
!57 = !{!55, !8, i64 8}
!58 = !{!55, !8, i64 16}
