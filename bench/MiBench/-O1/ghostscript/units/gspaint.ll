; ModuleID = 'gspaint.c'
source_filename = "gspaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }

@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str = private unnamed_addr constant [18 x i8] c"alpha_buffer_init\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"alpha_buffer_release\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_erasepage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gs_gsave(ptr noundef %0) #5
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @gs_setgray(ptr noundef %0, double noundef 1.000000e+00) #5
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = icmp eq ptr %10, @gx_dc_procs_none
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call i32 @gx_remap_color(ptr noundef %0) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12, %7
  %16 = tail call ptr @gs_currentdevice(ptr noundef %0) #5
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !26
  store i32 252, ptr %17, align 8, !tbaa !26
  %19 = load ptr, ptr %8, align 8, !tbaa !5
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %16, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !29
  %25 = getelementptr inbounds %struct.gx_device_s, ptr %16, i64 0, i32 9
  %26 = load i32, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = tail call i32 %22(ptr noundef nonnull %19, i32 noundef 0, i32 noundef 0, i32 noundef %24, i32 noundef %26, ptr noundef %28, i32 noundef 252, ptr noundef null) #5
  store i32 %18, ptr %17, align 8, !tbaa !26
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %16, i64 0, i32 21, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = tail call i32 %33(ptr noundef %16) #5
  br label %35

35:                                               ; preds = %31, %15, %12, %4
  %36 = phi i32 [ %5, %4 ], [ %34, %31 ], [ %13, %12 ], [ %29, %15 ]
  %37 = tail call i32 @gs_grestore(ptr noundef %0) #5
  br label %38

38:                                               ; preds = %1, %35
  %39 = phi i32 [ %36, %35 ], [ %2, %1 ]
  ret i32 %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @gs_gsave(ptr noundef) local_unnamed_addr #2

declare i32 @gs_setgray(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_fillpage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = icmp eq ptr %4, @gx_dc_procs_none
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call i32 @gx_remap_color(ptr noundef %0) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %6, %1
  %10 = tail call ptr @gs_currentdevice(ptr noundef %0) #5
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !26
  store i32 252, ptr %11, align 8, !tbaa !26
  %13 = load ptr, ptr %2, align 8, !tbaa !5
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = tail call i32 %16(ptr noundef nonnull %13, i32 noundef 0, i32 noundef 0, i32 noundef %18, i32 noundef %20, ptr noundef %22, i32 noundef 252, ptr noundef null) #5
  store i32 %12, ptr %11, align 8, !tbaa !26
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  %28 = tail call i32 %27(ptr noundef %10) #5
  br label %29

29:                                               ; preds = %9, %6, %25
  %30 = phi i32 [ %28, %25 ], [ %7, %6 ], [ %23, %9 ]
  ret i32 %30
}

declare i32 @gs_grestore(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @gx_remap_color(ptr noundef) local_unnamed_addr #2

declare ptr @gs_currentdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_fill(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @fill_with_rule(ptr noundef %0, i32 noundef -1)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fill_with_rule(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 40
  %4 = load i32, ptr %3, align 8, !tbaa !37
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %8, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = tail call i32 @gx_path_add_char_path(ptr noundef %10, ptr noundef %12, i32 noundef %4) #5
  br label %67

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = icmp eq ptr %17, @gx_dc_procs_none
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = tail call i32 @gx_remap_color(ptr noundef %0) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %19, %14
  %23 = load ptr, ptr %15, align 8, !tbaa !5
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = tail call i32 %25(ptr noundef nonnull %23, ptr noundef %0, ptr noundef %27, i32 noundef 0) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %15, align 8, !tbaa !5
  %32 = load ptr, ptr %31, align 8, !tbaa !20
  %33 = icmp eq ptr %32, @gx_dc_procs_pure
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load ptr, ptr %26, align 8, !tbaa !35
  %36 = tail call i32 @gs_device_is_abuf(ptr noundef %35) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %35, i64 0, i32 21, i32 20
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  %41 = tail call i32 %40(ptr noundef %35, i32 noundef 1) #5
  br label %42

42:                                               ; preds = %30, %34, %38
  %43 = phi i32 [ %41, %38 ], [ 0, %30 ], [ 0, %34 ]
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !42
  %48 = tail call fastcc i32 @alpha_buffer_init(ptr noundef %0, i64 noundef %47, i32 noundef %43)
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %42, %45
  %51 = phi i1 [ %49, %45 ], [ true, %42 ]
  %52 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %53 = load ptr, ptr %52, align 8, !tbaa !39
  %54 = load ptr, ptr %15, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !42
  %57 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !43
  %59 = tail call i32 @gx_fill_path(ptr noundef %53, ptr noundef %54, ptr noundef %0, i32 noundef %1, i64 noundef %56, i64 noundef %58) #5
  br i1 %51, label %63, label %60

60:                                               ; preds = %50
  %61 = icmp sgt i32 %59, -1
  %62 = zext i1 %61 to i32
  tail call fastcc void @alpha_buffer_release(ptr noundef %0, i32 noundef %62)
  br label %63

63:                                               ; preds = %60, %50
  %64 = icmp sgt i32 %59, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i32 @gs_newpath(ptr noundef %0) #5
  br label %67

67:                                               ; preds = %19, %22, %65, %63, %6
  %68 = phi i32 [ %13, %6 ], [ %20, %19 ], [ %28, %22 ], [ %59, %65 ], [ %59, %63 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_eofill(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @fill_with_rule(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_stroke(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_path_s, align 8
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 40
  %4 = load i32, ptr %3, align 8, !tbaa !37
  switch i32 %4, label %17 [
    i32 0, label %26
    i32 2, label %5
  ]

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #5
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  call void @gx_path_init(ptr noundef nonnull %2, ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = call i32 @gx_stroke_add(ptr noundef %8, ptr noundef nonnull %2, ptr noundef nonnull %0) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %7, align 8, !tbaa !39
  call void @gx_path_release(ptr noundef %12) #5
  %13 = load ptr, ptr %7, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %13, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !45
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi i32 [ 0, %11 ], [ %9, %5 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %108, label %17

17:                                               ; preds = %1, %14
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 41
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.gs_state_s, ptr %19, i64 0, i32 28
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = load i32, ptr %3, align 8, !tbaa !37
  %25 = call i32 @gx_path_add_char_path(ptr noundef %21, ptr noundef %23, i32 noundef %24) #5
  br label %108

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = icmp eq ptr %29, @gx_dc_procs_none
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = tail call i32 @gx_remap_color(ptr noundef %0) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %108

34:                                               ; preds = %31, %26
  %35 = load ptr, ptr %27, align 8, !tbaa !5
  %36 = load ptr, ptr %35, align 8, !tbaa !20
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = tail call i32 %37(ptr noundef nonnull %35, ptr noundef %0, ptr noundef %39, i32 noundef 0) #5
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %108, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %27, align 8, !tbaa !5
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  %45 = icmp eq ptr %44, @gx_dc_procs_pure
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load ptr, ptr %38, align 8, !tbaa !35
  %48 = tail call i32 @gs_device_is_abuf(ptr noundef %47) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.gx_device_s, ptr %47, i64 0, i32 21, i32 20
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  %53 = tail call i32 %52(ptr noundef %47, i32 noundef 1) #5
  br label %54

54:                                               ; preds = %42, %46, %50
  %55 = phi i32 [ %53, %50 ], [ 0, %42 ], [ 0, %46 ]
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %92

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %59 = load float, ptr %58, align 8, !tbaa !52
  %60 = tail call float @llvm.fabs.f32(float %59)
  %61 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 3
  %62 = load float, ptr %61, align 4, !tbaa !53
  %63 = tail call float @llvm.fabs.f32(float %62)
  %64 = fadd float %60, %63
  %65 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 1
  %66 = load float, ptr %65, align 4, !tbaa !54
  %67 = tail call float @llvm.fabs.f32(float %66)
  %68 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 2
  %69 = load float, ptr %68, align 8, !tbaa !55
  %70 = tail call float @llvm.fabs.f32(float %69)
  %71 = fadd float %67, %70
  %72 = tail call float @gs_currentlinewidth(ptr noundef %0) #5
  %73 = lshr i32 %55, 1
  %74 = shl nuw i32 1, %73
  %75 = sitofp i32 %74 to float
  %76 = fmul float %72, %75
  %77 = fcmp ogt float %64, %71
  %78 = select i1 %77, float %64, float %71
  %79 = fmul float %76, %78
  %80 = fmul float %79, 5.000000e-01
  %81 = fmul float %80, 4.096000e+03
  %82 = fptosi float %81 to i64
  %83 = tail call i64 @llvm.smax.i64(i64 %82, i64 4096)
  %84 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7
  %85 = load i64, ptr %84, align 8, !tbaa !42
  %86 = add nsw i64 %83, %85
  %87 = tail call fastcc i32 @alpha_buffer_init(ptr noundef %0, i64 noundef %86, i32 noundef %55)
  %88 = fpext float %76 to double
  %89 = tail call i32 @gs_setlinewidth(ptr noundef %0, double noundef %88) #5
  %90 = icmp eq i32 %87, 0
  %91 = fpext float %72 to double
  br label %92

92:                                               ; preds = %54, %57
  %93 = phi double [ %91, %57 ], [ undef, %54 ]
  %94 = phi i1 [ %90, %57 ], [ true, %54 ]
  %95 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %96 = load ptr, ptr %95, align 8, !tbaa !39
  %97 = tail call i32 @gx_stroke_fill(ptr noundef %96, ptr noundef %0) #5
  br i1 %94, label %101, label %98

98:                                               ; preds = %92
  %99 = icmp sgt i32 %97, -1
  %100 = zext i1 %99 to i32
  tail call fastcc void @alpha_buffer_release(ptr noundef %0, i32 noundef %100)
  br label %101

101:                                              ; preds = %98, %92
  %102 = icmp sgt i32 %97, -1
  br i1 %102, label %103, label %105

103:                                              ; preds = %101
  %104 = tail call i32 @gs_newpath(ptr noundef %0) #5
  br label %105

105:                                              ; preds = %103, %101
  br i1 %56, label %106, label %108

106:                                              ; preds = %105
  %107 = tail call i32 @gs_setlinewidth(ptr noundef %0, double noundef %93) #5
  br label %108

108:                                              ; preds = %31, %34, %106, %105, %17, %14
  %109 = phi i32 [ %15, %14 ], [ %25, %17 ], [ %32, %31 ], [ %40, %34 ], [ %97, %106 ], [ %97, %105 ]
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_strokepath(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_path_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #5
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  call void @gx_path_init(ptr noundef nonnull %2, ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = call i32 @gx_stroke_add(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %0) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 8, !tbaa !39
  call void @gx_path_release(ptr noundef %9) #5
  %10 = load ptr, ptr %4, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !45
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi i32 [ 0, %8 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #5
  ret i32 %12
}

declare i32 @gx_path_add_char_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @gs_currentlinewidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @alpha_buffer_init(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gs_fixed_rect_s, align 8
  %5 = alloca %struct.gs_log2_scale_point_s, align 4
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %8 = lshr i32 %2, 1
  %9 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %5, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !56
  store i32 %8, ptr %5, align 4, !tbaa !58
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = call i32 @gx_path_bbox(ptr noundef %11, ptr noundef nonnull %4) #5
  %13 = load i64, ptr %4, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !61
  %16 = load i32, ptr %5, align 4, !tbaa !58
  %17 = load i32, ptr %9, align 4, !tbaa !56
  %18 = load ptr, ptr %0, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = call ptr %20(ptr noundef %18, ptr noundef nonnull @st_device_memory, ptr noundef nonnull @.str) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %3
  %24 = add i64 %1, 4095
  %25 = add i64 %24, %15
  %26 = lshr i64 %25, 12
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i64 %13, %1
  %29 = lshr i64 %28, 12
  %30 = trunc i64 %29 to i32
  %31 = add nsw i32 %30, -1
  %32 = sub i32 %27, %30
  %33 = add i32 %32, 2
  %34 = shl i32 %33, %16
  %35 = add i32 %34, 63
  %36 = lshr i32 %35, 3
  %37 = and i32 %36, 536870904
  %38 = shl i32 %37, %17
  %39 = udiv i32 2000, %38
  %40 = shl i32 %39, %17
  %41 = icmp eq i32 %40, 0
  %42 = shl nuw i32 1, %17
  %43 = select i1 %41, i32 %42, i32 %40
  %44 = load i32, ptr %5, align 4, !tbaa !58
  %45 = shl i32 %31, %44
  call void @gs_make_mem_abuf_device(ptr noundef nonnull %21, ptr noundef %18, ptr noundef %7, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %45) #5
  %46 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 8
  store i32 %34, ptr %46, align 8, !tbaa !65
  %47 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 9
  store i32 %43, ptr %47, align 4, !tbaa !69
  %48 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 28
  store ptr %18, ptr %48, align 8, !tbaa !70
  %49 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 21
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = call i32 %50(ptr noundef nonnull %21) #5
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %23
  %54 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %18, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  call void %55(ptr noundef %18, ptr noundef nonnull %21, ptr noundef nonnull @.str) #5
  br label %66

56:                                               ; preds = %23
  call void @gx_set_device_only(ptr noundef nonnull %0, ptr noundef nonnull %21) #5
  %57 = load ptr, ptr %10, align 8, !tbaa !39
  %58 = load i32, ptr %5, align 4, !tbaa !58
  %59 = load i32, ptr %9, align 4, !tbaa !56
  %60 = call i32 @gx_path_scale_exp2(ptr noundef %57, i32 noundef %58, i32 noundef %59) #5
  %61 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %62 = load ptr, ptr %61, align 8, !tbaa !73
  %63 = load i32, ptr %5, align 4, !tbaa !58
  %64 = load i32, ptr %9, align 4, !tbaa !56
  %65 = call i32 @gx_cpath_scale_exp2(ptr noundef %62, i32 noundef %63, i32 noundef %64) #5
  br label %66

66:                                               ; preds = %3, %56, %53
  %67 = phi i32 [ 0, %53 ], [ 1, %56 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  ret i32 %67
}

declare i32 @gs_setlinewidth(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @gx_stroke_fill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @alpha_buffer_release(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.gx_device_memory_s, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.gx_device_memory_s, ptr %4, i64 0, i32 21, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = tail call i32 %8(ptr noundef %4) #5
  %10 = getelementptr inbounds %struct.gx_device_memory_s, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  tail call void %13(ptr noundef %11, ptr noundef %4, ptr noundef nonnull @.str.1) #5
  tail call void @gx_set_device_only(ptr noundef %0, ptr noundef %6) #5
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = getelementptr inbounds %struct.gx_device_memory_s, ptr %4, i64 0, i32 31
  %17 = load i32, ptr %16, align 8, !tbaa !77
  %18 = sub nsw i32 0, %17
  %19 = getelementptr inbounds %struct.gx_device_memory_s, ptr %4, i64 0, i32 31, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !78
  %21 = sub nsw i32 0, %20
  %22 = tail call i32 @gx_cpath_scale_exp2(ptr noundef %15, i32 noundef %18, i32 noundef %21) #5
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = getelementptr inbounds %struct.gx_path_s, ptr %26, i64 0, i32 13
  %28 = load i8, ptr %27, align 1, !tbaa !79
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24, %2
  %31 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = load i32, ptr %16, align 8, !tbaa !77
  %34 = sub nsw i32 0, %33
  %35 = load i32, ptr %19, align 4, !tbaa !78
  %36 = sub nsw i32 0, %35
  %37 = tail call i32 @gx_path_scale_exp2(ptr noundef %32, i32 noundef %34, i32 noundef %36) #5
  br label %38

38:                                               ; preds = %30, %24
  ret void
}

declare i32 @gs_newpath(ptr noundef) local_unnamed_addr #2

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_stroke_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gx_path_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @gx_fill_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gs_device_is_abuf(ptr noundef) local_unnamed_addr #2

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_make_mem_abuf_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gx_set_device_only(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_path_scale_exp2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_cpath_scale_exp2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 432}
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
!20 = !{!21, !7, i64 0}
!21 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !22, i64 48, !23, i64 56}
!22 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!23 = !{!"_mask", !24, i64 0, !15, i64 24, !7, i64 32}
!24 = !{!"gs_client_color_s", !25, i64 0, !7, i64 16}
!25 = !{!"gs_paint_color_s", !8, i64 0}
!26 = !{!6, !12, i64 128}
!27 = !{!28, !7, i64 8}
!28 = !{!"gx_device_color_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!29 = !{!30, !12, i64 64}
!30 = !{!"gx_device_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !31, i64 48, !12, i64 64, !12, i64 68, !8, i64 72, !8, i64 80, !12, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !12, i64 160, !32, i64 168, !33, i64 192}
!31 = !{!"gx_device_color_info_s", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14}
!32 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!33 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!34 = !{!30, !12, i64 68}
!35 = !{!6, !7, i64 536}
!36 = !{!30, !7, i64 208}
!37 = !{!6, !12, i64 512}
!38 = !{!6, !7, i64 520}
!39 = !{!6, !7, i64 392}
!40 = !{!28, !7, i64 0}
!41 = !{!30, !7, i64 352}
!42 = !{!6, !15, i64 144}
!43 = !{!6, !15, i64 152}
!44 = !{!6, !7, i64 0}
!45 = !{i64 0, i64 8, !46, i64 8, i64 8, !47, i64 16, i64 8, !47, i64 24, i64 8, !47, i64 32, i64 8, !47, i64 40, i64 8, !46, i64 48, i64 8, !46, i64 56, i64 8, !46, i64 64, i64 4, !48, i64 68, i64 4, !48, i64 72, i64 8, !47, i64 80, i64 8, !47, i64 88, i64 8, !49, i64 96, i64 8, !49, i64 104, i64 8, !49, i64 112, i64 8, !49, i64 120, i64 1, !51, i64 121, i64 1, !51, i64 122, i64 1, !51, i64 123, i64 1, !51}
!46 = !{!7, !7, i64 0}
!47 = !{!15, !15, i64 0}
!48 = !{!12, !12, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"double", !8, i64 0}
!51 = !{!8, !8, i64 0}
!52 = !{!6, !11, i64 80}
!53 = !{!6, !11, i64 92}
!54 = !{!6, !11, i64 84}
!55 = !{!6, !11, i64 88}
!56 = !{!57, !12, i64 4}
!57 = !{!"gs_log2_scale_point_s", !12, i64 0, !12, i64 4}
!58 = !{!57, !12, i64 0}
!59 = !{!60, !15, i64 0}
!60 = !{!"gs_fixed_rect_s", !17, i64 0, !17, i64 16}
!61 = !{!60, !15, i64 16}
!62 = !{!63, !7, i64 16}
!63 = !{!"gs_memory_s", !64, i64 0}
!64 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!65 = !{!66, !12, i64 64}
!66 = !{!"gx_device_memory_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !31, i64 48, !12, i64 64, !12, i64 68, !8, i64 72, !8, i64 80, !12, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !12, i64 160, !32, i64 168, !33, i64 192, !7, i64 488, !18, i64 496, !12, i64 520, !12, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !67, i64 552, !68, i64 568, !57, i64 592, !12, i64 600, !12, i64 604, !12, i64 608, !12, i64 612, !12, i64 616, !15, i64 624}
!67 = !{!"gs_const_string_s", !7, i64 0, !12, i64 8}
!68 = !{!"_c24", !15, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!69 = !{!66, !12, i64 68}
!70 = !{!66, !7, i64 544}
!71 = !{!66, !7, i64 192}
!72 = !{!63, !7, i64 88}
!73 = !{!6, !7, i64 400}
!74 = !{!66, !7, i64 488}
!75 = !{!66, !7, i64 224}
!76 = !{!66, !7, i64 24}
!77 = !{!66, !12, i64 592}
!78 = !{!66, !12, i64 596}
!79 = !{!80, !8, i64 123}
!80 = !{!"gx_path_s", !7, i64 0, !60, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !12, i64 64, !12, i64 68, !17, i64 72, !81, i64 88, !81, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!81 = !{!"gs_point_s", !50, i64 0, !50, i64 8}
