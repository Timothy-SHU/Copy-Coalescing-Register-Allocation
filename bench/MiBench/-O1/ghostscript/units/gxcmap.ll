; ModuleID = 'gxcmap.c'
source_filename = "gxcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_color_map_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }

@.str = private unnamed_addr constant [16 x i8] c"gx_device_color\00", align 1
@st_device_color = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 96, ptr @.str, ptr null, ptr null, ptr @device_color_enum_ptrs, ptr @device_color_reloc_ptrs, ptr null }, align 8
@cmap_gray_many = internal constant %struct.gx_color_map_procs_s { ptr @cmap_gray_direct, ptr @cmap_rgb_to_gray_direct, ptr @cmap_cmyk_to_gray }, align 8
@cmap_procs_default = dso_local local_unnamed_addr global ptr @cmap_gray_many, align 8
@cmap_many = internal unnamed_addr constant [5 x ptr] [ptr null, ptr @cmap_gray_many, ptr null, ptr @cmap_rgb_many, ptr @cmap_cmyk_many], align 16
@cmap_few = internal unnamed_addr constant [5 x ptr] [ptr null, ptr @cmap_gray_few, ptr null, ptr @cmap_rgb_few, ptr @cmap_cmyk_few], align 16
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@cmap_rgb_many = internal constant %struct.gx_color_map_procs_s { ptr @cmap_gray_to_rgb_direct, ptr @cmap_rgb_direct, ptr @cmap_cmyk_to_rgb }, align 8
@cmap_cmyk_many = internal constant %struct.gx_color_map_procs_s { ptr @cmap_gray_to_cmyk_direct, ptr @cmap_rgb_to_cmyk, ptr @cmap_cmyk_direct }, align 8
@cmap_gray_few = internal constant %struct.gx_color_map_procs_s { ptr @cmap_gray_halftoned, ptr @cmap_rgb_to_gray_halftoned, ptr @cmap_cmyk_to_gray }, align 8
@cmap_rgb_few = internal constant %struct.gx_color_map_procs_s { ptr @cmap_gray_to_rgb_halftoned, ptr @cmap_rgb_halftoned, ptr @cmap_cmyk_to_rgb }, align 8
@cmap_cmyk_few = internal constant %struct.gx_color_map_procs_s { ptr @cmap_gray_to_cmyk_halftoned, ptr @cmap_rgb_to_cmyk, ptr @cmap_cmyk_direct }, align 8

; Function Attrs: nounwind uwtable
define internal ptr @device_color_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr %7(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #10
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi ptr [ %10, %9 ], [ null, %4 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @device_color_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void %6(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #10
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gx_proc_map_rgb_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = tail call i64 %6(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #10
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gx_proc_map_rgb_alpha_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = tail call i64 %7(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #10
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gx_proc_map_cmyk_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = tail call i64 %7(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #10
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gx_device_cmap_procs(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !27
  %4 = icmp sgt i32 %3, 1
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 3
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 2
  %7 = select i1 %4, ptr %5, ptr %6
  %8 = load i16, ptr %7, align 2, !tbaa !28
  %9 = icmp ugt i16 %8, 30
  %10 = select i1 %9, ptr @cmap_many, ptr @cmap_few
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @gx_set_cmap_procs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp sgt i32 %4, 1
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 7, i32 3
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 7, i32 2
  %8 = select i1 %5, ptr %6, ptr %7
  %9 = load i16, ptr %8, align 2, !tbaa !28
  %10 = icmp ugt i16 %9, 30
  %11 = select i1 %10, ptr @cmap_many, ptr @cmap_few
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  %15 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 20
  store ptr %14, ptr %15, align 8, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_remap_color(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 33
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = tail call i32 %6(ptr noundef %8, ptr noundef nonnull %3, ptr noundef %10, ptr noundef %0, ptr noundef %12, i32 noundef 0) #10
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @gx_no_concrete_space(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @gx_same_concrete_space(ptr noundef readnone returned %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_no_concretize_color(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #4 {
  ret i32 -15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_remap_color(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %8 = load ptr, ptr %1, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = call i32 %10(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %3) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %1, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = call ptr %16(ptr noundef nonnull %1, ptr noundef %3) #10
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = call i32 %20(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #10
  br label %22

22:                                               ; preds = %6, %13
  %23 = phi i32 [ %21, %13 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_concretize_DeviceGray(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #5 {
  %5 = load float, ptr %0, align 8, !tbaa !51
  %6 = fpext float %5 to double
  %7 = fcmp olt float %5, 0.000000e+00
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = fcmp ult float %5, 1.000000e+00
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = fadd double %6, 0x3EF0010010010010
  %12 = fmul double %11, 3.276000e+04
  %13 = fptosi double %12 to i16
  br label %14

14:                                               ; preds = %10, %8, %4
  %15 = phi i16 [ 0, %4 ], [ %13, %10 ], [ 32760, %8 ]
  store i16 %15, ptr %2, align 2, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_remap_concrete_DGray(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load i16, ptr %0, align 2, !tbaa !28
  tail call void %8(i16 noundef signext %9, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_remap_DeviceGray(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = load float, ptr %0, align 8, !tbaa !51
  %11 = fpext float %10 to double
  %12 = fcmp olt float %10, 0.000000e+00
  br i1 %12, label %19, label %13

13:                                               ; preds = %6
  %14 = fcmp ult float %10, 1.000000e+00
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = fadd double %11, 0x3EF0010010010010
  %17 = fmul double %16, 3.276000e+04
  %18 = fptosi double %17 to i16
  br label %19

19:                                               ; preds = %15, %13, %6
  %20 = phi i16 [ 0, %6 ], [ %18, %15 ], [ 32760, %13 ]
  tail call void %9(i16 noundef signext %20, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_concretize_DeviceRGB(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #5 {
  %5 = load float, ptr %0, align 8, !tbaa !51
  %6 = fpext float %5 to double
  %7 = fcmp olt float %5, 0.000000e+00
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = fcmp ult float %5, 1.000000e+00
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = fadd double %6, 0x3EF0010010010010
  %12 = fmul double %11, 3.276000e+04
  %13 = fptosi double %12 to i16
  br label %14

14:                                               ; preds = %10, %8, %4
  %15 = phi i16 [ 0, %4 ], [ %13, %10 ], [ 32760, %8 ]
  store i16 %15, ptr %2, align 2, !tbaa !28
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = fpext float %17 to double
  %19 = fcmp olt float %17, 0.000000e+00
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = fcmp ult float %17, 1.000000e+00
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = fadd double %18, 0x3EF0010010010010
  %24 = fmul double %23, 3.276000e+04
  %25 = fptosi double %24 to i16
  br label %26

26:                                               ; preds = %22, %20, %14
  %27 = phi i16 [ 0, %14 ], [ %25, %22 ], [ 32760, %20 ]
  %28 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %27, ptr %28, align 2, !tbaa !28
  %29 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %30 = load float, ptr %29, align 8, !tbaa !51
  %31 = fpext float %30 to double
  %32 = fcmp olt float %30, 0.000000e+00
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = fcmp ult float %30, 1.000000e+00
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = fadd double %31, 0x3EF0010010010010
  %37 = fmul double %36, 3.276000e+04
  %38 = fptosi double %37 to i16
  br label %39

39:                                               ; preds = %35, %33, %26
  %40 = phi i16 [ 0, %26 ], [ %38, %35 ], [ 32760, %33 ]
  %41 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %40, ptr %41, align 2, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_remap_concrete_DRGB(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = load i16, ptr %0, align 2, !tbaa !28
  %11 = getelementptr inbounds i16, ptr %0, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !28
  %13 = getelementptr inbounds i16, ptr %0, i64 2
  %14 = load i16, ptr %13, align 2, !tbaa !28
  tail call void %9(i16 noundef signext %10, i16 noundef signext %12, i16 noundef signext %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_remap_DeviceRGB(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = load float, ptr %0, align 8, !tbaa !51
  %12 = fpext float %11 to double
  %13 = fcmp olt float %11, 0.000000e+00
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = fcmp ult float %11, 1.000000e+00
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = fadd double %12, 0x3EF0010010010010
  %18 = fmul double %17, 3.276000e+04
  %19 = fptosi double %18 to i16
  br label %20

20:                                               ; preds = %16, %14, %6
  %21 = phi i16 [ 0, %6 ], [ %19, %16 ], [ 32760, %14 ]
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = fpext float %23 to double
  %25 = fcmp olt float %23, 0.000000e+00
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = fcmp ult float %23, 1.000000e+00
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = fadd double %24, 0x3EF0010010010010
  %30 = fmul double %29, 3.276000e+04
  %31 = fptosi double %30 to i16
  br label %32

32:                                               ; preds = %28, %26, %20
  %33 = phi i16 [ 0, %20 ], [ %31, %28 ], [ 32760, %26 ]
  %34 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %35 = load float, ptr %34, align 8, !tbaa !51
  %36 = fpext float %35 to double
  %37 = fcmp olt float %35, 0.000000e+00
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = fcmp ult float %35, 1.000000e+00
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = fadd double %36, 0x3EF0010010010010
  %42 = fmul double %41, 3.276000e+04
  %43 = fptosi double %42 to i16
  br label %44

44:                                               ; preds = %40, %38, %32
  %45 = phi i16 [ 0, %32 ], [ %43, %40 ], [ 32760, %38 ]
  tail call void %10(i16 noundef signext %21, i16 noundef signext %33, i16 noundef signext %45, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_concretize_DeviceCMYK(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3) local_unnamed_addr #5 {
  %5 = load float, ptr %0, align 8, !tbaa !51
  %6 = fpext float %5 to double
  %7 = fcmp olt float %5, 0.000000e+00
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = fcmp ult float %5, 1.000000e+00
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = fadd double %6, 0x3EF0010010010010
  %12 = fmul double %11, 3.276000e+04
  %13 = fptosi double %12 to i16
  br label %14

14:                                               ; preds = %10, %8, %4
  %15 = phi i16 [ 0, %4 ], [ %13, %10 ], [ 32760, %8 ]
  store i16 %15, ptr %2, align 2, !tbaa !28
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = fpext float %17 to double
  %19 = fcmp olt float %17, 0.000000e+00
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = fcmp ult float %17, 1.000000e+00
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = fadd double %18, 0x3EF0010010010010
  %24 = fmul double %23, 3.276000e+04
  %25 = fptosi double %24 to i16
  br label %26

26:                                               ; preds = %22, %20, %14
  %27 = phi i16 [ 0, %14 ], [ %25, %22 ], [ 32760, %20 ]
  %28 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %27, ptr %28, align 2, !tbaa !28
  %29 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %30 = load float, ptr %29, align 8, !tbaa !51
  %31 = fpext float %30 to double
  %32 = fcmp olt float %30, 0.000000e+00
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = fcmp ult float %30, 1.000000e+00
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = fadd double %31, 0x3EF0010010010010
  %37 = fmul double %36, 3.276000e+04
  %38 = fptosi double %37 to i16
  br label %39

39:                                               ; preds = %35, %33, %26
  %40 = phi i16 [ 0, %26 ], [ %38, %35 ], [ 32760, %33 ]
  %41 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %40, ptr %41, align 2, !tbaa !28
  %42 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %43 = load float, ptr %42, align 4, !tbaa !51
  %44 = fpext float %43 to double
  %45 = fcmp olt float %43, 0.000000e+00
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = fcmp ult float %43, 1.000000e+00
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = fadd double %44, 0x3EF0010010010010
  %50 = fmul double %49, 3.276000e+04
  %51 = fptosi double %50 to i16
  br label %52

52:                                               ; preds = %48, %46, %39
  %53 = phi i16 [ 0, %39 ], [ %51, %48 ], [ 32760, %46 ]
  %54 = getelementptr inbounds i16, ptr %2, i64 3
  store i16 %53, ptr %54, align 2, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_remap_concrete_DCMYK(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = load i16, ptr %0, align 2, !tbaa !28
  %11 = getelementptr inbounds i16, ptr %0, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !28
  %13 = getelementptr inbounds i16, ptr %0, i64 2
  %14 = load i16, ptr %13, align 2, !tbaa !28
  %15 = getelementptr inbounds i16, ptr %0, i64 3
  %16 = load i16, ptr %15, align 2, !tbaa !28
  tail call void %9(i16 noundef signext %10, i16 noundef signext %12, i16 noundef signext %14, i16 noundef signext %16, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_remap_DeviceCMYK(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = load float, ptr %0, align 8, !tbaa !51
  %12 = fpext float %11 to double
  %13 = fcmp olt float %11, 0.000000e+00
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = fcmp ult float %11, 1.000000e+00
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = fadd double %12, 0x3EF0010010010010
  %18 = fmul double %17, 3.276000e+04
  %19 = fptosi double %18 to i16
  br label %20

20:                                               ; preds = %16, %14, %6
  %21 = phi i16 [ 0, %6 ], [ %19, %16 ], [ 32760, %14 ]
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = fpext float %23 to double
  %25 = fcmp olt float %23, 0.000000e+00
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = fcmp ult float %23, 1.000000e+00
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = fadd double %24, 0x3EF0010010010010
  %30 = fmul double %29, 3.276000e+04
  %31 = fptosi double %30 to i16
  br label %32

32:                                               ; preds = %28, %26, %20
  %33 = phi i16 [ 0, %20 ], [ %31, %28 ], [ 32760, %26 ]
  %34 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %35 = load float, ptr %34, align 8, !tbaa !51
  %36 = fpext float %35 to double
  %37 = fcmp olt float %35, 0.000000e+00
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = fcmp ult float %35, 1.000000e+00
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = fadd double %36, 0x3EF0010010010010
  %42 = fmul double %41, 3.276000e+04
  %43 = fptosi double %42 to i16
  br label %44

44:                                               ; preds = %40, %38, %32
  %45 = phi i16 [ 0, %32 ], [ %43, %40 ], [ 32760, %38 ]
  %46 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !51
  %48 = fpext float %47 to double
  %49 = fcmp olt float %47, 0.000000e+00
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = fcmp ult float %47, 1.000000e+00
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = fadd double %48, 0x3EF0010010010010
  %54 = fmul double %53, 3.276000e+04
  %55 = fptosi double %54 to i16
  br label %56

56:                                               ; preds = %52, %50, %44
  %57 = phi i16 [ 0, %44 ], [ %55, %52 ], [ 32760, %50 ]
  tail call void %10(i16 noundef signext %21, i16 noundef signext %33, i16 noundef signext %45, i16 noundef signext %57, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @gs_mapped_transfer(double noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call double @llvm.fmuladd.f64(double %0, double 2.560000e+02, double 5.000000e-01)
  %4 = fptosi double %3 to i32
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %1, i64 0, i32 3, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !28
  %8 = sitofp i16 %7 to float
  %9 = fdiv float %8, 3.276000e+04
  ret float %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @gx_color_frac_map(i16 noundef signext %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = sext i16 %0 to i32
  %4 = ashr i32 %3, 12
  %5 = add nsw i32 %4, %3
  %6 = ashr i32 %5, 8
  %7 = sub nsw i32 %5, %6
  %8 = ashr i32 %7, 7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !28
  %12 = and i32 %7, 65408
  %13 = lshr i32 %7, 8
  %14 = add nuw nsw i32 %12, %13
  %15 = lshr i32 %7, 12
  %16 = sub nsw i32 %14, %15
  %17 = shl i32 %16, 16
  %18 = ashr exact i32 %17, 16
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = sub nsw i32 %3, %18
  %22 = getelementptr i16, ptr %10, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !28
  %24 = sext i16 %23 to i32
  %25 = sext i16 %11 to i32
  %26 = sub nsw i32 %24, %25
  %27 = mul nsw i32 %26, %21
  %28 = lshr i32 %27, 7
  %29 = trunc i32 %28 to i16
  %30 = add i16 %11, %29
  br label %31

31:                                               ; preds = %2, %20
  %32 = phi i16 [ %30, %20 ], [ %11, %2 ]
  ret i16 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gx_default_w_b_map_rgb_color(ptr nocapture noundef readnone %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = or i16 %2, %1
  %6 = or i16 %5, %3
  %7 = lshr i16 %6, 15
  %8 = zext nneg i16 %7 to i64
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gx_default_w_b_map_color_rgb(ptr nocapture noundef readnone %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = trunc i64 %1 to i16
  %5 = sub i16 0, %4
  %6 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %5, ptr %6, align 2, !tbaa !28
  %7 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %5, ptr %7, align 2, !tbaa !28
  store i16 %5, ptr %2, align 2, !tbaa !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gx_default_b_w_map_rgb_color(ptr nocapture noundef readnone %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = or i16 %2, %1
  %6 = or i16 %5, %3
  %7 = icmp sgt i16 %6, -1
  %8 = zext i1 %7 to i64
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gx_default_b_w_map_color_rgb(ptr nocapture noundef readnone %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = trunc i64 %1 to i16
  %5 = xor i16 %4, -2
  %6 = add i16 %5, 1
  %7 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %6, ptr %7, align 2, !tbaa !28
  %8 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %6, ptr %8, align 2, !tbaa !28
  store i16 %6, ptr %2, align 2, !tbaa !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gx_default_gray_map_rgb_color(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #6 {
  %5 = zext i16 %1 to i64
  %6 = mul nuw nsw i64 %5, 30
  %7 = zext i16 %2 to i64
  %8 = mul nuw nsw i64 %7, 59
  %9 = zext i16 %3 to i64
  %10 = mul nuw nsw i64 %9, 11
  %11 = add nuw nsw i64 %6, 50
  %12 = add nuw nsw i64 %11, %8
  %13 = add nuw nsw i64 %12, %10
  %14 = udiv i64 %13, 100
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !56
  %17 = zext i16 %16 to i64
  %18 = mul nuw nsw i64 %14, %17
  %19 = add nuw nsw i64 %18, 32767
  %20 = udiv i64 %19, 65535
  %21 = and i64 %20, 65535
  ret i64 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_default_gray_map_color_rgb(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = mul i64 %1, 65535
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !56
  %7 = zext i16 %6 to i64
  %8 = udiv i64 %4, %7
  %9 = trunc i64 %8 to i16
  store i16 %9, ptr %2, align 2, !tbaa !28
  %10 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %9, ptr %10, align 2, !tbaa !28
  %11 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %9, ptr %11, align 2, !tbaa !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gx_default_rgb_map_rgb_color(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !57
  %7 = icmp eq i32 %6, 24
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = lshr i16 %3, 8
  %10 = and i16 %2, -256
  %11 = or disjoint i16 %9, %10
  %12 = zext i16 %11 to i64
  %13 = lshr i16 %1, 8
  %14 = zext nneg i16 %13 to i64
  %15 = shl nuw nsw i64 %14, 16
  %16 = or disjoint i64 %15, %12
  br label %38

17:                                               ; preds = %4
  %18 = sdiv i32 %6, 3
  %19 = shl nsw i32 -1, %18
  %20 = xor i32 %19, -1
  %21 = zext nneg i32 %20 to i64
  %22 = zext i16 %1 to i64
  %23 = mul nuw nsw i64 %21, %22
  %24 = udiv i64 %23, 65535
  %25 = shl nsw i32 %18, 1
  %26 = zext nneg i32 %25 to i64
  %27 = shl i64 %24, %26
  %28 = zext i16 %2 to i64
  %29 = mul nuw nsw i64 %21, %28
  %30 = udiv i64 %29, 65535
  %31 = zext nneg i32 %18 to i64
  %32 = shl i64 %30, %31
  %33 = zext i16 %3 to i64
  %34 = mul nuw nsw i64 %21, %33
  %35 = udiv i64 %34, 65535
  %36 = add i64 %32, %35
  %37 = add i64 %36, %27
  br label %38

38:                                               ; preds = %17, %8
  %39 = phi i64 [ %16, %8 ], [ %37, %17 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_default_rgb_map_color_rgb(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !57
  %6 = icmp eq i32 %5, 24
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = lshr i64 %1, 16
  %9 = trunc i64 %8 to i16
  %10 = mul i16 %9, 257
  store i16 %10, ptr %2, align 2, !tbaa !28
  %11 = trunc i64 %1 to i16
  %12 = lshr i16 %11, 8
  %13 = mul nuw i16 %12, 257
  %14 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %13, ptr %14, align 2, !tbaa !28
  %15 = and i16 %11, 255
  %16 = mul nuw i16 %15, 257
  br label %40

17:                                               ; preds = %3
  %18 = sdiv i32 %5, 3
  %19 = shl nsw i32 -1, %18
  %20 = xor i32 %19, -1
  %21 = shl nsw i32 %18, 1
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %1, %22
  %24 = zext nneg i32 %20 to i64
  %25 = and i64 %23, %24
  %26 = mul nuw nsw i64 %25, 65535
  %27 = udiv i64 %26, %24
  %28 = trunc i64 %27 to i16
  store i16 %28, ptr %2, align 2, !tbaa !28
  %29 = zext nneg i32 %18 to i64
  %30 = lshr i64 %1, %29
  %31 = and i64 %30, %24
  %32 = mul nuw nsw i64 %31, 65535
  %33 = udiv i64 %32, %24
  %34 = trunc i64 %33 to i16
  %35 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %34, ptr %35, align 2, !tbaa !28
  %36 = and i64 %24, %1
  %37 = mul nuw nsw i64 %36, 65535
  %38 = udiv i64 %37, %24
  %39 = trunc i64 %38 to i16
  br label %40

40:                                               ; preds = %17, %7
  %41 = phi i16 [ %39, %17 ], [ %16, %7 ]
  %42 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %41, ptr %42, align 2, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gx_default_map_cmyk_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #10
  %7 = lshr i16 %1, 1
  %8 = lshr i16 %1, 13
  %9 = sub nsw i16 %7, %8
  %10 = lshr i16 %2, 1
  %11 = lshr i16 %2, 13
  %12 = sub nsw i16 %10, %11
  %13 = lshr i16 %3, 1
  %14 = lshr i16 %3, 13
  %15 = sub nsw i16 %13, %14
  %16 = lshr i16 %4, 1
  %17 = lshr i16 %4, 13
  %18 = sub nsw i16 %16, %17
  call void @color_cmyk_to_rgb(i16 noundef signext %9, i16 noundef signext %12, i16 noundef signext %15, i16 noundef signext %18, ptr noundef null, ptr noundef nonnull %6) #10
  %19 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = load i16, ptr %6, align 2, !tbaa !28
  %22 = shl i16 %21, 1
  %23 = ashr i16 %21, 11
  %24 = add i16 %22, %23
  %25 = getelementptr inbounds [3 x i16], ptr %6, i64 0, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !28
  %27 = shl i16 %26, 1
  %28 = ashr i16 %26, 11
  %29 = add i16 %27, %28
  %30 = getelementptr inbounds [3 x i16], ptr %6, i64 0, i64 2
  %31 = load i16, ptr %30, align 2, !tbaa !28
  %32 = shl i16 %31, 1
  %33 = ashr i16 %31, 11
  %34 = add i16 %32, %33
  %35 = call i64 %20(ptr noundef %0, i16 noundef zeroext %24, i16 noundef zeroext %29, i16 noundef zeroext %34) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #10
  ret i64 %35
}

declare void @color_cmyk_to_rgb(i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gx_default_cmyk_map_cmyk_color(ptr nocapture noundef readnone %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = lshr i16 %4, 8
  %7 = and i16 %3, -256
  %8 = or disjoint i16 %6, %7
  %9 = zext i16 %8 to i64
  %10 = lshr i16 %2, 8
  %11 = and i16 %1, -256
  %12 = or disjoint i16 %10, %11
  %13 = zext i16 %12 to i64
  %14 = shl nuw nsw i64 %13, 16
  %15 = or disjoint i64 %14, %9
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gx_default_map_rgb_alpha_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq i16 %4, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call i64 %9(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #10
  br label %32

11:                                               ; preds = %5
  %12 = xor i16 %4, -1
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = zext i16 %1 to i64
  %16 = zext i16 %4 to i64
  %17 = mul nuw nsw i64 %16, %15
  %18 = udiv i64 %17, 65535
  %19 = trunc i64 %18 to i16
  %20 = add i16 %19, %12
  %21 = zext i16 %2 to i64
  %22 = mul nuw nsw i64 %16, %21
  %23 = udiv i64 %22, 65535
  %24 = trunc i64 %23 to i16
  %25 = add i16 %24, %12
  %26 = zext i16 %3 to i64
  %27 = mul nuw nsw i64 %16, %26
  %28 = udiv i64 %27, 65535
  %29 = trunc i64 %28 to i16
  %30 = add i16 %29, %12
  %31 = tail call i64 %14(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext %25, i16 noundef zeroext %30) #10
  br label %32

32:                                               ; preds = %11, %7
  %33 = phi i64 [ %10, %7 ], [ %31, %11 ]
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define internal void @cmap_gray_direct(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 18, i32 0, i64 3
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %7, i64 0, i32 3
  %9 = sext i16 %0 to i32
  %10 = ashr i32 %9, 12
  %11 = add nsw i32 %10, %9
  %12 = ashr i32 %11, 8
  %13 = sub nsw i32 %11, %12
  %14 = ashr i32 %13, 7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %8, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !28
  %18 = and i32 %13, 65408
  %19 = lshr i32 %13, 8
  %20 = add nuw nsw i32 %18, %19
  %21 = lshr i32 %13, 12
  %22 = sub nsw i32 %20, %21
  %23 = shl i32 %22, 16
  %24 = ashr exact i32 %23, 16
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %37, label %26

26:                                               ; preds = %5
  %27 = sub nsw i32 %9, %24
  %28 = getelementptr i16, ptr %16, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !28
  %30 = sext i16 %29 to i32
  %31 = sext i16 %17 to i32
  %32 = sub nsw i32 %30, %31
  %33 = mul nsw i32 %32, %27
  %34 = lshr i32 %33, 7
  %35 = trunc i32 %34 to i16
  %36 = add i16 %17, %35
  br label %37

37:                                               ; preds = %5, %26
  %38 = phi i16 [ %36, %26 ], [ %17, %5 ]
  %39 = shl i16 %38, 1
  %40 = ashr i16 %38, 11
  %41 = add i16 %39, %40
  %42 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 4
  %43 = load i16, ptr %42, align 4, !tbaa !59
  %44 = icmp eq i16 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !19
  %48 = tail call i64 %47(ptr noundef %3, i16 noundef zeroext %41, i16 noundef zeroext %41, i16 noundef zeroext %41) #10
  br label %53

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !25
  %52 = tail call i64 %51(ptr noundef %3, i16 noundef zeroext %41, i16 noundef zeroext %41, i16 noundef zeroext %41, i16 noundef zeroext %43) #10
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i64 [ %48, %45 ], [ %52, %49 ]
  %55 = icmp eq i64 %54, -1
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i16, ptr %42, align 4, !tbaa !59
  %58 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !60
  %60 = sext i32 %4 to i64
  %61 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 11, i64 %60
  %62 = tail call i32 @gx_render_device_gray(i16 noundef signext %38, i16 noundef zeroext %57, ptr noundef %1, ptr noundef %3, ptr noundef %59, ptr noundef nonnull %61) #10
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load ptr, ptr %1, align 8, !tbaa !5
  %66 = load ptr, ptr %65, align 8, !tbaa !61
  %67 = tail call i32 %66(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #10
  br label %70

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.gx_device_color_s, ptr %1, i64 0, i32 1
  store i64 %54, ptr %69, align 8, !tbaa !58
  store ptr @gx_dc_procs_pure, ptr %1, align 8, !tbaa !5
  br label %70

70:                                               ; preds = %56, %64, %68
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_to_gray_direct(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = tail call signext i16 @color_rgb_to_gray(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %4) #10
  tail call void @cmap_gray_direct(i16 noundef signext %8, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_cmyk_to_gray(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = tail call signext i16 @color_cmyk_to_gray(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, ptr noundef %5) #10
  tail call void %11(i16 noundef signext %12, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #10
  ret void
}

declare i32 @gx_render_device_gray(i16 noundef signext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare signext i16 @color_rgb_to_gray(i16 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #9

declare signext i16 @color_cmyk_to_gray(i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @cmap_gray_to_rgb_direct(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  tail call void @cmap_rgb_direct(i16 noundef signext %0, i16 noundef signext %0, i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_direct(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %9, i64 0, i32 3
  %11 = sext i16 %0 to i32
  %12 = ashr i32 %11, 12
  %13 = add nsw i32 %12, %11
  %14 = ashr i32 %13, 8
  %15 = sub nsw i32 %13, %14
  %16 = ashr i32 %15, 7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, ptr %10, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !28
  %20 = and i32 %15, 65408
  %21 = lshr i32 %15, 8
  %22 = add nuw nsw i32 %20, %21
  %23 = lshr i32 %15, 12
  %24 = sub nsw i32 %22, %23
  %25 = shl i32 %24, 16
  %26 = ashr exact i32 %25, 16
  %27 = icmp eq i32 %26, %11
  br i1 %27, label %39, label %28

28:                                               ; preds = %7
  %29 = sub nsw i32 %11, %26
  %30 = getelementptr i16, ptr %18, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !28
  %32 = sext i16 %31 to i32
  %33 = sext i16 %19 to i32
  %34 = sub nsw i32 %32, %33
  %35 = mul nsw i32 %34, %29
  %36 = lshr i32 %35, 7
  %37 = trunc i32 %36 to i16
  %38 = add i16 %19, %37
  br label %39

39:                                               ; preds = %7, %28
  %40 = phi i16 [ %38, %28 ], [ %19, %7 ]
  %41 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 18, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %42, i64 0, i32 3
  %44 = sext i16 %1 to i32
  %45 = ashr i32 %44, 12
  %46 = add nsw i32 %45, %44
  %47 = ashr i32 %46, 8
  %48 = sub nsw i32 %46, %47
  %49 = ashr i32 %48, 7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, ptr %43, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !28
  %53 = and i32 %48, 65408
  %54 = lshr i32 %48, 8
  %55 = add nuw nsw i32 %53, %54
  %56 = lshr i32 %48, 12
  %57 = sub nsw i32 %55, %56
  %58 = shl i32 %57, 16
  %59 = ashr exact i32 %58, 16
  %60 = icmp eq i32 %59, %44
  br i1 %60, label %72, label %61

61:                                               ; preds = %39
  %62 = sub nsw i32 %44, %59
  %63 = getelementptr i16, ptr %51, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !28
  %65 = sext i16 %64 to i32
  %66 = sext i16 %52 to i32
  %67 = sub nsw i32 %65, %66
  %68 = mul nsw i32 %67, %62
  %69 = lshr i32 %68, 7
  %70 = trunc i32 %69 to i16
  %71 = add i16 %52, %70
  br label %72

72:                                               ; preds = %39, %61
  %73 = phi i16 [ %71, %61 ], [ %52, %39 ]
  %74 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 18, i32 0, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !58
  %76 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %75, i64 0, i32 3
  %77 = sext i16 %2 to i32
  %78 = ashr i32 %77, 12
  %79 = add nsw i32 %78, %77
  %80 = ashr i32 %79, 8
  %81 = sub nsw i32 %79, %80
  %82 = ashr i32 %81, 7
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, ptr %76, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !28
  %86 = and i32 %81, 65408
  %87 = lshr i32 %81, 8
  %88 = add nuw nsw i32 %86, %87
  %89 = lshr i32 %81, 12
  %90 = sub nsw i32 %88, %89
  %91 = shl i32 %90, 16
  %92 = ashr exact i32 %91, 16
  %93 = icmp eq i32 %92, %77
  br i1 %93, label %105, label %94

94:                                               ; preds = %72
  %95 = sub nsw i32 %77, %92
  %96 = getelementptr i16, ptr %84, i64 1
  %97 = load i16, ptr %96, align 2, !tbaa !28
  %98 = sext i16 %97 to i32
  %99 = sext i16 %85 to i32
  %100 = sub nsw i32 %98, %99
  %101 = mul nsw i32 %100, %95
  %102 = lshr i32 %101, 7
  %103 = trunc i32 %102 to i16
  %104 = add i16 %85, %103
  br label %105

105:                                              ; preds = %72, %94
  %106 = phi i16 [ %104, %94 ], [ %85, %72 ]
  %107 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 4
  %108 = load i16, ptr %107, align 4, !tbaa !59
  %109 = icmp eq i16 %108, -1
  %110 = shl i16 %40, 1
  %111 = ashr i16 %40, 11
  %112 = add i16 %110, %111
  %113 = shl i16 %73, 1
  %114 = ashr i16 %73, 11
  %115 = add i16 %113, %114
  %116 = shl i16 %106, 1
  %117 = ashr i16 %106, 11
  %118 = add i16 %116, %117
  br i1 %109, label %119, label %123

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !19
  %122 = tail call i64 %121(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %115, i16 noundef zeroext %118) #10
  br label %127

123:                                              ; preds = %105
  %124 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 18
  %125 = load ptr, ptr %124, align 8, !tbaa !25
  %126 = tail call i64 %125(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %115, i16 noundef zeroext %118, i16 noundef zeroext %108) #10
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i64 [ %122, %119 ], [ %126, %123 ]
  %129 = icmp eq i64 %128, -1
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.gx_device_color_s, ptr %3, i64 0, i32 1
  store i64 %128, ptr %131, align 8, !tbaa !58
  store ptr @gx_dc_procs_pure, ptr %3, align 8, !tbaa !5
  br label %152

132:                                              ; preds = %127
  %133 = icmp eq i16 %40, %73
  %134 = icmp eq i16 %40, %106
  %135 = select i1 %133, i1 %134, i1 false
  %136 = load i16, ptr %107, align 4, !tbaa !59
  %137 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 12
  %138 = load ptr, ptr %137, align 8, !tbaa !60
  %139 = sext i32 %6 to i64
  %140 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 11, i64 %139
  br i1 %135, label %141, label %143

141:                                              ; preds = %132
  %142 = tail call i32 @gx_render_device_gray(i16 noundef signext %40, i16 noundef zeroext %136, ptr noundef %3, ptr noundef %5, ptr noundef %138, ptr noundef nonnull %140) #10
  br label %145

143:                                              ; preds = %132
  %144 = tail call i32 @gx_render_device_color(i16 noundef signext %40, i16 noundef signext %73, i16 noundef signext %106, i16 noundef signext 0, i32 noundef 0, i16 noundef zeroext %136, ptr noundef %3, ptr noundef %5, ptr noundef %138, ptr noundef nonnull %140) #10
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load ptr, ptr %3, align 8, !tbaa !5
  %150 = load ptr, ptr %149, align 8, !tbaa !61
  %151 = tail call i32 %150(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #10
  br label %152

152:                                              ; preds = %145, %148, %130
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_cmyk_to_rgb(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = alloca [3 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #10
  call void @color_cmyk_to_rgb(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, ptr noundef %5, ptr noundef nonnull %9) #10
  %10 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !30
  %12 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = load i16, ptr %9, align 2, !tbaa !28
  %15 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 1
  %16 = load i16, ptr %15, align 2, !tbaa !28
  %17 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 2
  %18 = load i16, ptr %17, align 2, !tbaa !28
  call void %13(i16 noundef signext %14, i16 noundef signext %16, i16 noundef signext %18, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #10
  ret void
}

declare i32 @gx_render_device_color(i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @cmap_gray_to_cmyk_direct(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 18, i32 0, i64 3
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %7, i64 0, i32 3
  %9 = sext i16 %0 to i32
  %10 = ashr i32 %9, 12
  %11 = add nsw i32 %10, %9
  %12 = ashr i32 %11, 8
  %13 = sub nsw i32 %11, %12
  %14 = ashr i32 %13, 7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %8, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !28
  %18 = and i32 %13, 65408
  %19 = lshr i32 %13, 8
  %20 = add nuw nsw i32 %18, %19
  %21 = lshr i32 %13, 12
  %22 = sub nsw i32 %20, %21
  %23 = shl i32 %22, 16
  %24 = ashr exact i32 %23, 16
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %37, label %26

26:                                               ; preds = %5
  %27 = sub nsw i32 %9, %24
  %28 = getelementptr i16, ptr %16, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !28
  %30 = sext i16 %29 to i32
  %31 = sext i16 %17 to i32
  %32 = sub nsw i32 %30, %31
  %33 = mul nsw i32 %32, %27
  %34 = lshr i32 %33, 7
  %35 = trunc i32 %34 to i16
  %36 = add i16 %17, %35
  br label %37

37:                                               ; preds = %5, %26
  %38 = phi i16 [ %36, %26 ], [ %17, %5 ]
  %39 = sub i16 32760, %38
  %40 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = shl i16 %39, 1
  %43 = ashr i16 %39, 11
  %44 = add i16 %42, %43
  %45 = tail call i64 %41(ptr noundef %3, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext %44) #10
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.gx_device_color_s, ptr %1, i64 0, i32 1
  store i64 %45, ptr %48, align 8, !tbaa !58
  store ptr @gx_dc_procs_pure, ptr %1, align 8, !tbaa !5
  br label %62

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 4
  %51 = load i16, ptr %50, align 4, !tbaa !59
  %52 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 12
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = sext i32 %4 to i64
  %55 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 11, i64 %54
  %56 = tail call i32 @gx_render_device_gray(i16 noundef signext %38, i16 noundef zeroext %51, ptr noundef %1, ptr noundef %3, ptr noundef %53, ptr noundef nonnull %55) #10
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load ptr, ptr %1, align 8, !tbaa !5
  %60 = load ptr, ptr %59, align 8, !tbaa !61
  %61 = tail call i32 %60(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #10
  br label %62

62:                                               ; preds = %49, %58, %47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_to_cmyk(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = alloca [4 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @color_rgb_to_cmyk(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %4, ptr noundef nonnull %8) #10
  %9 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = load i16, ptr %8, align 2, !tbaa !28
  %14 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !28
  %16 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 2
  %17 = load i16, ptr %16, align 2, !tbaa !28
  %18 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 3
  %19 = load i16, ptr %18, align 2, !tbaa !28
  call void %12(i16 noundef signext %13, i16 noundef signext %15, i16 noundef signext %17, i16 noundef signext %19, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_cmyk_direct(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = sub i16 32760, %0
  %10 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %11, i64 0, i32 3
  %13 = sext i16 %9 to i32
  %14 = ashr i32 %13, 12
  %15 = add nsw i32 %14, %13
  %16 = ashr i32 %15, 8
  %17 = sub nsw i32 %15, %16
  %18 = ashr i32 %17, 7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %12, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !28
  %22 = and i32 %17, 65408
  %23 = lshr i32 %17, 8
  %24 = add nuw nsw i32 %22, %23
  %25 = lshr i32 %17, 12
  %26 = sub nsw i32 %24, %25
  %27 = shl i32 %26, 16
  %28 = ashr exact i32 %27, 16
  %29 = icmp eq i32 %28, %13
  br i1 %29, label %41, label %30

30:                                               ; preds = %8
  %31 = sub nsw i32 %13, %28
  %32 = getelementptr i16, ptr %20, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !28
  %34 = sext i16 %33 to i32
  %35 = sext i16 %21 to i32
  %36 = sub nsw i32 %34, %35
  %37 = mul nsw i32 %36, %31
  %38 = lshr i32 %37, 7
  %39 = trunc i32 %38 to i16
  %40 = add i16 %21, %39
  br label %41

41:                                               ; preds = %8, %30
  %42 = phi i16 [ %40, %30 ], [ %21, %8 ]
  %43 = sub i16 32760, %42
  %44 = sub i16 32760, %1
  %45 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 18, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %46, i64 0, i32 3
  %48 = sext i16 %44 to i32
  %49 = ashr i32 %48, 12
  %50 = add nsw i32 %49, %48
  %51 = ashr i32 %50, 8
  %52 = sub nsw i32 %50, %51
  %53 = ashr i32 %52, 7
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, ptr %47, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !28
  %57 = and i32 %52, 65408
  %58 = lshr i32 %52, 8
  %59 = add nuw nsw i32 %57, %58
  %60 = lshr i32 %52, 12
  %61 = sub nsw i32 %59, %60
  %62 = shl i32 %61, 16
  %63 = ashr exact i32 %62, 16
  %64 = icmp eq i32 %63, %48
  br i1 %64, label %76, label %65

65:                                               ; preds = %41
  %66 = sub nsw i32 %48, %63
  %67 = getelementptr i16, ptr %55, i64 1
  %68 = load i16, ptr %67, align 2, !tbaa !28
  %69 = sext i16 %68 to i32
  %70 = sext i16 %56 to i32
  %71 = sub nsw i32 %69, %70
  %72 = mul nsw i32 %71, %66
  %73 = lshr i32 %72, 7
  %74 = trunc i32 %73 to i16
  %75 = add i16 %56, %74
  br label %76

76:                                               ; preds = %41, %65
  %77 = phi i16 [ %75, %65 ], [ %56, %41 ]
  %78 = sub i16 32760, %77
  %79 = sub i16 32760, %2
  %80 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 18, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !58
  %82 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %81, i64 0, i32 3
  %83 = sext i16 %79 to i32
  %84 = ashr i32 %83, 12
  %85 = add nsw i32 %84, %83
  %86 = ashr i32 %85, 8
  %87 = sub nsw i32 %85, %86
  %88 = ashr i32 %87, 7
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, ptr %82, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !28
  %92 = and i32 %87, 65408
  %93 = lshr i32 %87, 8
  %94 = add nuw nsw i32 %92, %93
  %95 = lshr i32 %87, 12
  %96 = sub nsw i32 %94, %95
  %97 = shl i32 %96, 16
  %98 = ashr exact i32 %97, 16
  %99 = icmp eq i32 %98, %83
  br i1 %99, label %111, label %100

100:                                              ; preds = %76
  %101 = sub nsw i32 %83, %98
  %102 = getelementptr i16, ptr %90, i64 1
  %103 = load i16, ptr %102, align 2, !tbaa !28
  %104 = sext i16 %103 to i32
  %105 = sext i16 %91 to i32
  %106 = sub nsw i32 %104, %105
  %107 = mul nsw i32 %106, %101
  %108 = lshr i32 %107, 7
  %109 = trunc i32 %108 to i16
  %110 = add i16 %91, %109
  br label %111

111:                                              ; preds = %76, %100
  %112 = phi i16 [ %110, %100 ], [ %91, %76 ]
  %113 = sub i16 32760, %112
  %114 = sub i16 32760, %3
  %115 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 18, i32 0, i64 3
  %116 = load ptr, ptr %115, align 8, !tbaa !58
  %117 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %116, i64 0, i32 3
  %118 = sext i16 %114 to i32
  %119 = ashr i32 %118, 12
  %120 = add nsw i32 %119, %118
  %121 = ashr i32 %120, 8
  %122 = sub nsw i32 %120, %121
  %123 = ashr i32 %122, 7
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i16, ptr %117, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !28
  %127 = and i32 %122, 65408
  %128 = lshr i32 %122, 8
  %129 = add nuw nsw i32 %127, %128
  %130 = lshr i32 %122, 12
  %131 = sub nsw i32 %129, %130
  %132 = shl i32 %131, 16
  %133 = ashr exact i32 %132, 16
  %134 = icmp eq i32 %133, %118
  br i1 %134, label %146, label %135

135:                                              ; preds = %111
  %136 = sub nsw i32 %118, %133
  %137 = getelementptr i16, ptr %125, i64 1
  %138 = load i16, ptr %137, align 2, !tbaa !28
  %139 = sext i16 %138 to i32
  %140 = sext i16 %126 to i32
  %141 = sub nsw i32 %139, %140
  %142 = mul nsw i32 %141, %136
  %143 = lshr i32 %142, 7
  %144 = trunc i32 %143 to i16
  %145 = add i16 %126, %144
  br label %146

146:                                              ; preds = %111, %135
  %147 = phi i16 [ %145, %135 ], [ %126, %111 ]
  %148 = sub i16 32760, %147
  %149 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 7, i32 3
  %150 = load i16, ptr %149, align 2, !tbaa !62
  %151 = icmp ugt i16 %150, 30
  br i1 %151, label %152, label %171

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 21, i32 15
  %154 = load ptr, ptr %153, align 8, !tbaa !26
  %155 = shl i16 %43, 1
  %156 = ashr i16 %43, 11
  %157 = add i16 %155, %156
  %158 = shl i16 %78, 1
  %159 = ashr i16 %78, 11
  %160 = add i16 %158, %159
  %161 = shl i16 %113, 1
  %162 = ashr i16 %113, 11
  %163 = add i16 %161, %162
  %164 = shl i16 %148, 1
  %165 = ashr i16 %148, 11
  %166 = add i16 %164, %165
  %167 = tail call i64 %154(ptr noundef %6, i16 noundef zeroext %157, i16 noundef zeroext %160, i16 noundef zeroext %163, i16 noundef zeroext %166) #10
  %168 = icmp eq i64 %167, -1
  br i1 %168, label %171, label %169

169:                                              ; preds = %152
  %170 = getelementptr inbounds %struct.gx_device_color_s, ptr %4, i64 0, i32 1
  store i64 %167, ptr %170, align 8, !tbaa !58
  store ptr @gx_dc_procs_pure, ptr %4, align 8, !tbaa !5
  br label %184

171:                                              ; preds = %152, %146
  %172 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 4
  %173 = load i16, ptr %172, align 4, !tbaa !59
  %174 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 12
  %175 = load ptr, ptr %174, align 8, !tbaa !60
  %176 = sext i32 %7 to i64
  %177 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 11, i64 %176
  %178 = tail call i32 @gx_render_device_color(i16 noundef signext %43, i16 noundef signext %78, i16 noundef signext %113, i16 noundef signext %148, i32 noundef 1, i16 noundef zeroext %173, ptr noundef %4, ptr noundef %6, ptr noundef %175, ptr noundef nonnull %177) #10
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %184

180:                                              ; preds = %171
  %181 = load ptr, ptr %4, align 8, !tbaa !5
  %182 = load ptr, ptr %181, align 8, !tbaa !61
  %183 = tail call i32 %182(ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #10
  br label %184

184:                                              ; preds = %169, %171, %180
  ret void
}

declare void @color_rgb_to_cmyk(i16 noundef signext, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @cmap_gray_halftoned(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 18, i32 0, i64 3
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %7, i64 0, i32 3
  %9 = sext i16 %0 to i32
  %10 = ashr i32 %9, 12
  %11 = add nsw i32 %10, %9
  %12 = ashr i32 %11, 8
  %13 = sub nsw i32 %11, %12
  %14 = ashr i32 %13, 7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %8, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !28
  %18 = and i32 %13, 65408
  %19 = lshr i32 %13, 8
  %20 = add nuw nsw i32 %18, %19
  %21 = lshr i32 %13, 12
  %22 = sub nsw i32 %20, %21
  %23 = shl i32 %22, 16
  %24 = ashr exact i32 %23, 16
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %37, label %26

26:                                               ; preds = %5
  %27 = sub nsw i32 %9, %24
  %28 = getelementptr i16, ptr %16, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !28
  %30 = sext i16 %29 to i32
  %31 = sext i16 %17 to i32
  %32 = sub nsw i32 %30, %31
  %33 = mul nsw i32 %32, %27
  %34 = lshr i32 %33, 7
  %35 = trunc i32 %34 to i16
  %36 = add i16 %17, %35
  br label %37

37:                                               ; preds = %5, %26
  %38 = phi i16 [ %36, %26 ], [ %17, %5 ]
  %39 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !59
  %41 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = sext i32 %4 to i64
  %44 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 11, i64 %43
  %45 = tail call i32 @gx_render_device_gray(i16 noundef signext %38, i16 noundef zeroext %40, ptr noundef %1, ptr noundef %3, ptr noundef %42, ptr noundef nonnull %44) #10
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load ptr, ptr %1, align 8, !tbaa !5
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  %50 = tail call i32 %49(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #10
  br label %51

51:                                               ; preds = %47, %37
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_to_gray_halftoned(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = tail call signext i16 @color_rgb_to_gray(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %4) #10
  %9 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 18, i32 0, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %10, i64 0, i32 3
  %12 = sext i16 %8 to i32
  %13 = ashr i32 %12, 12
  %14 = add nsw i32 %13, %12
  %15 = ashr i32 %14, 8
  %16 = sub nsw i32 %14, %15
  %17 = ashr i32 %16, 7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %11, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !28
  %21 = and i32 %16, 65408
  %22 = lshr i32 %16, 8
  %23 = add nuw nsw i32 %21, %22
  %24 = lshr i32 %16, 12
  %25 = sub nsw i32 %23, %24
  %26 = shl i32 %25, 16
  %27 = ashr exact i32 %26, 16
  %28 = icmp eq i32 %27, %12
  br i1 %28, label %40, label %29

29:                                               ; preds = %7
  %30 = sub nsw i32 %12, %27
  %31 = getelementptr i16, ptr %19, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !28
  %33 = sext i16 %32 to i32
  %34 = sext i16 %20 to i32
  %35 = sub nsw i32 %33, %34
  %36 = mul nsw i32 %35, %30
  %37 = lshr i32 %36, 7
  %38 = trunc i32 %37 to i16
  %39 = add i16 %20, %38
  br label %40

40:                                               ; preds = %29, %7
  %41 = phi i16 [ %39, %29 ], [ %20, %7 ]
  %42 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 4
  %43 = load i16, ptr %42, align 4, !tbaa !59
  %44 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  %46 = sext i32 %6 to i64
  %47 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 11, i64 %46
  %48 = tail call i32 @gx_render_device_gray(i16 noundef signext %41, i16 noundef zeroext %43, ptr noundef %3, ptr noundef %5, ptr noundef %45, ptr noundef nonnull %47) #10
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load ptr, ptr %3, align 8, !tbaa !5
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = tail call i32 %52(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #10
  br label %54

54:                                               ; preds = %40, %50
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_gray_to_rgb_halftoned(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  tail call void @cmap_rgb_halftoned(i16 noundef signext %0, i16 noundef signext %0, i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_rgb_halftoned(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %9, i64 0, i32 3
  %11 = sext i16 %0 to i32
  %12 = ashr i32 %11, 12
  %13 = add nsw i32 %12, %11
  %14 = ashr i32 %13, 8
  %15 = sub nsw i32 %13, %14
  %16 = ashr i32 %15, 7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, ptr %10, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !28
  %20 = and i32 %15, 65408
  %21 = lshr i32 %15, 8
  %22 = add nuw nsw i32 %20, %21
  %23 = lshr i32 %15, 12
  %24 = sub nsw i32 %22, %23
  %25 = shl i32 %24, 16
  %26 = ashr exact i32 %25, 16
  %27 = icmp eq i32 %26, %11
  br i1 %27, label %39, label %28

28:                                               ; preds = %7
  %29 = sub nsw i32 %11, %26
  %30 = getelementptr i16, ptr %18, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !28
  %32 = sext i16 %31 to i32
  %33 = sext i16 %19 to i32
  %34 = sub nsw i32 %32, %33
  %35 = mul nsw i32 %34, %29
  %36 = lshr i32 %35, 7
  %37 = trunc i32 %36 to i16
  %38 = add i16 %19, %37
  br label %39

39:                                               ; preds = %7, %28
  %40 = phi i16 [ %38, %28 ], [ %19, %7 ]
  %41 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 18, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %42, i64 0, i32 3
  %44 = sext i16 %1 to i32
  %45 = ashr i32 %44, 12
  %46 = add nsw i32 %45, %44
  %47 = ashr i32 %46, 8
  %48 = sub nsw i32 %46, %47
  %49 = ashr i32 %48, 7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, ptr %43, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !28
  %53 = and i32 %48, 65408
  %54 = lshr i32 %48, 8
  %55 = add nuw nsw i32 %53, %54
  %56 = lshr i32 %48, 12
  %57 = sub nsw i32 %55, %56
  %58 = shl i32 %57, 16
  %59 = ashr exact i32 %58, 16
  %60 = icmp eq i32 %59, %44
  br i1 %60, label %72, label %61

61:                                               ; preds = %39
  %62 = sub nsw i32 %44, %59
  %63 = getelementptr i16, ptr %51, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !28
  %65 = sext i16 %64 to i32
  %66 = sext i16 %52 to i32
  %67 = sub nsw i32 %65, %66
  %68 = mul nsw i32 %67, %62
  %69 = lshr i32 %68, 7
  %70 = trunc i32 %69 to i16
  %71 = add i16 %52, %70
  br label %72

72:                                               ; preds = %39, %61
  %73 = phi i16 [ %71, %61 ], [ %52, %39 ]
  %74 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 18, i32 0, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !58
  %76 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %75, i64 0, i32 3
  %77 = sext i16 %2 to i32
  %78 = ashr i32 %77, 12
  %79 = add nsw i32 %78, %77
  %80 = ashr i32 %79, 8
  %81 = sub nsw i32 %79, %80
  %82 = ashr i32 %81, 7
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, ptr %76, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !28
  %86 = and i32 %81, 65408
  %87 = lshr i32 %81, 8
  %88 = add nuw nsw i32 %86, %87
  %89 = lshr i32 %81, 12
  %90 = sub nsw i32 %88, %89
  %91 = shl i32 %90, 16
  %92 = ashr exact i32 %91, 16
  %93 = icmp eq i32 %92, %77
  br i1 %93, label %105, label %94

94:                                               ; preds = %72
  %95 = sub nsw i32 %77, %92
  %96 = getelementptr i16, ptr %84, i64 1
  %97 = load i16, ptr %96, align 2, !tbaa !28
  %98 = sext i16 %97 to i32
  %99 = sext i16 %85 to i32
  %100 = sub nsw i32 %98, %99
  %101 = mul nsw i32 %100, %95
  %102 = lshr i32 %101, 7
  %103 = trunc i32 %102 to i16
  %104 = add i16 %85, %103
  br label %105

105:                                              ; preds = %72, %94
  %106 = phi i16 [ %104, %94 ], [ %85, %72 ]
  %107 = icmp eq i16 %40, %73
  %108 = icmp eq i16 %40, %106
  %109 = select i1 %107, i1 %108, i1 false
  %110 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 4
  %111 = load i16, ptr %110, align 4, !tbaa !59
  %112 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 12
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  %114 = sext i32 %6 to i64
  %115 = getelementptr inbounds %struct.gs_imager_state_s, ptr %4, i64 0, i32 11, i64 %114
  br i1 %109, label %116, label %118

116:                                              ; preds = %105
  %117 = tail call i32 @gx_render_device_gray(i16 noundef signext %40, i16 noundef zeroext %111, ptr noundef %3, ptr noundef %5, ptr noundef %113, ptr noundef nonnull %115) #10
  br label %120

118:                                              ; preds = %105
  %119 = tail call i32 @gx_render_device_color(i16 noundef signext %40, i16 noundef signext %73, i16 noundef signext %106, i16 noundef signext 0, i32 noundef 0, i16 noundef zeroext %111, ptr noundef %3, ptr noundef %5, ptr noundef %113, ptr noundef nonnull %115) #10
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load ptr, ptr %3, align 8, !tbaa !5
  %125 = load ptr, ptr %124, align 8, !tbaa !61
  %126 = tail call i32 %125(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #10
  br label %127

127:                                              ; preds = %123, %120
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmap_gray_to_cmyk_halftoned(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 18, i32 0, i64 3
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %7, i64 0, i32 3
  %9 = sext i16 %0 to i32
  %10 = ashr i32 %9, 12
  %11 = add nsw i32 %10, %9
  %12 = ashr i32 %11, 8
  %13 = sub nsw i32 %11, %12
  %14 = ashr i32 %13, 7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %8, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !28
  %18 = and i32 %13, 65408
  %19 = lshr i32 %13, 8
  %20 = add nuw nsw i32 %18, %19
  %21 = lshr i32 %13, 12
  %22 = sub nsw i32 %20, %21
  %23 = shl i32 %22, 16
  %24 = ashr exact i32 %23, 16
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %37, label %26

26:                                               ; preds = %5
  %27 = sub nsw i32 %9, %24
  %28 = getelementptr i16, ptr %16, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !28
  %30 = sext i16 %29 to i32
  %31 = sext i16 %17 to i32
  %32 = sub nsw i32 %30, %31
  %33 = mul nsw i32 %32, %27
  %34 = lshr i32 %33, 7
  %35 = trunc i32 %34 to i16
  %36 = add i16 %17, %35
  br label %37

37:                                               ; preds = %5, %26
  %38 = phi i16 [ %36, %26 ], [ %17, %5 ]
  %39 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !59
  %41 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = sext i32 %4 to i64
  %44 = getelementptr inbounds %struct.gs_imager_state_s, ptr %2, i64 0, i32 11, i64 %43
  %45 = tail call i32 @gx_render_device_gray(i16 noundef signext %38, i16 noundef zeroext %40, ptr noundef %1, ptr noundef %3, ptr noundef %42, ptr noundef nonnull %44) #10
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load ptr, ptr %1, align 8, !tbaa !5
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  %50 = tail call i32 %49(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #10
  br label %51

51:                                               ; preds = %47, %37
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !10, i64 48, !12, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gs_int_point_s", !11, i64 0, !11, i64 4}
!11 = !{!"int", !8, i64 0}
!12 = !{!"_mask", !13, i64 0, !15, i64 24, !7, i64 32}
!13 = !{!"gs_client_color_s", !14, i64 0, !7, i64 16}
!14 = !{!"gs_paint_color_s", !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!17, !7, i64 24}
!17 = !{!"gx_device_color_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!18 = !{!17, !7, i64 32}
!19 = !{!20, !7, i64 232}
!20 = !{!"gx_device_s", !11, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !21, i64 48, !11, i64 64, !11, i64 68, !8, i64 72, !8, i64 80, !11, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !11, i64 160, !23, i64 168, !24, i64 192}
!21 = !{!"gx_device_color_info_s", !11, i64 0, !11, i64 4, !22, i64 8, !22, i64 10, !22, i64 12, !22, i64 14}
!22 = !{!"short", !8, i64 0}
!23 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!24 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!25 = !{!20, !7, i64 336}
!26 = !{!20, !7, i64 312}
!27 = !{!20, !11, i64 48}
!28 = !{!22, !22, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !7, i64 304}
!31 = !{!"gs_imager_state_s", !7, i64 0, !32, i64 8, !35, i64 80, !11, i64 128, !22, i64 132, !11, i64 136, !33, i64 140, !36, i64 144, !11, i64 160, !11, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!32 = !{!"gx_line_params_s", !33, i64 0, !11, i64 4, !11, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !33, i64 24, !34, i64 32}
!33 = !{!"float", !8, i64 0}
!34 = !{!"gx_dash_params_s", !7, i64 0, !11, i64 8, !33, i64 12, !11, i64 16, !33, i64 20, !11, i64 24, !11, i64 28, !33, i64 32}
!35 = !{!"gs_matrix_fixed_s", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !15, i64 24, !15, i64 32, !11, i64 40}
!36 = !{!"gs_fixed_point_s", !15, i64 0, !15, i64 8}
!37 = !{!38, !7, i64 416}
!38 = !{!"gs_state_s", !7, i64 0, !32, i64 8, !35, i64 80, !11, i64 128, !22, i64 132, !11, i64 136, !33, i64 140, !36, i64 144, !11, i64 160, !11, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !39, i64 336, !11, i64 360, !39, i64 364, !11, i64 388, !7, i64 392, !7, i64 400, !11, i64 408, !11, i64 412, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !35, i64 456, !11, i64 504, !8, i64 508, !11, i64 512, !7, i64 520, !11, i64 528, !7, i64 536, !7, i64 544, !40, i64 552}
!39 = !{!"gs_matrix_s", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20}
!40 = !{!"gs_state_client_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!41 = !{!42, !7, i64 0}
!42 = !{!"gs_color_space_s", !7, i64 0, !8, i64 8}
!43 = !{!44, !7, i64 48}
!44 = !{!"gs_color_space_type_s", !11, i64 0, !11, i64 4, !11, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!45 = !{!38, !7, i64 424}
!46 = !{!38, !7, i64 432}
!47 = !{!38, !7, i64 536}
!48 = !{!44, !7, i64 32}
!49 = !{!44, !7, i64 24}
!50 = !{!44, !7, i64 40}
!51 = !{!33, !33, i64 0}
!52 = !{!53, !7, i64 0}
!53 = !{!"gx_color_map_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!54 = !{!53, !7, i64 8}
!55 = !{!53, !7, i64 16}
!56 = !{!20, !22, i64 56}
!57 = !{!20, !11, i64 52}
!58 = !{!8, !8, i64 0}
!59 = !{!31, !22, i64 132}
!60 = !{!31, !7, i64 192}
!61 = !{!17, !7, i64 0}
!62 = !{!20, !22, i64 58}
