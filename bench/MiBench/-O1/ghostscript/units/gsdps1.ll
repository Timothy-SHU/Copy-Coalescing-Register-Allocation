; ModuleID = 'gsdps1.c'
source_filename = "gsdps1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setbbox(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.gs_rect_s, align 8
  %7 = alloca %struct.gs_rect_s, align 8
  %8 = alloca %struct.gs_fixed_rect_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #6
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = fcmp ogt double %1, %3
  %12 = fcmp ogt double %2, %4
  %13 = or i1 %11, %12
  br i1 %13, label %78, label %14

14:                                               ; preds = %5
  store double %1, ptr %6, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.gs_point_s, ptr %6, i64 0, i32 1
  store double %2, ptr %15, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.gs_rect_s, ptr %6, i64 0, i32 1
  store double %3, ptr %16, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.gs_rect_s, ptr %6, i64 0, i32 1, i32 1
  store double %4, ptr %17, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %19 = call i32 @gs_bbox_transform(ptr noundef nonnull %6, ptr noundef nonnull %18, ptr noundef nonnull %7) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %78, label %21

21:                                               ; preds = %14
  %22 = load double, ptr %7, align 8, !tbaa !20
  %23 = fcmp olt double %22, 0xC320000000000000
  %24 = getelementptr inbounds %struct.gs_point_s, ptr %7, i64 0, i32 1
  %25 = load double, ptr %24, align 8
  %26 = fcmp olt double %25, 0xC320000000000000
  %27 = select i1 %23, i1 true, i1 %26
  %28 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1
  %29 = load double, ptr %28, align 8
  %30 = fcmp oge double %29, 0x4320000000000000
  %31 = select i1 %27, i1 true, i1 %30
  %32 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1, i32 1
  %33 = load double, ptr %32, align 8
  %34 = fcmp oge double %33, 0x4320000000000000
  %35 = select i1 %31, i1 true, i1 %34
  br i1 %35, label %78, label %36

36:                                               ; preds = %21
  %37 = fmul double %22, 4.096000e+03
  %38 = call double @llvm.floor.f64(double %37)
  %39 = fptosi double %38 to i64
  %40 = add nsw i64 %39, -3
  %41 = fmul double %25, 4.096000e+03
  %42 = call double @llvm.floor.f64(double %41)
  %43 = fptosi double %42 to i64
  %44 = add nsw i64 %43, -3
  %45 = fmul double %29, 4.096000e+03
  %46 = call double @llvm.ceil.f64(double %45)
  %47 = fptosi double %46 to i64
  %48 = add nsw i64 %47, 3
  %49 = fmul double %33, 4.096000e+03
  %50 = call double @llvm.ceil.f64(double %49)
  %51 = fptosi double %50 to i64
  %52 = add nsw i64 %51, 3
  %53 = call i32 @gx_path_bbox(ptr noundef %10, ptr noundef nonnull %8) #6
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %70

55:                                               ; preds = %36
  %56 = load i64, ptr %8, align 8
  %57 = call i64 @llvm.smin.i64(i64 %56, i64 %40)
  %58 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !27
  %59 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = call i64 @llvm.smin.i64(i64 %60, i64 %44)
  %62 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 1, i32 0, i32 1
  store i64 %61, ptr %62, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1
  %64 = load i64, ptr %63, align 8
  %65 = call i64 @llvm.smax.i64(i64 %64, i64 %48)
  %66 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 1, i32 1
  store i64 %65, ptr %66, align 8, !tbaa !31
  %67 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1, i32 1
  %68 = load i64, ptr %67, align 8
  %69 = call i64 @llvm.smax.i64(i64 %68, i64 %52)
  br label %74

70:                                               ; preds = %36
  %71 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 1
  store i64 %40, ptr %71, align 8, !tbaa.struct !32
  %72 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 1, i32 0, i32 1
  store i64 %44, ptr %72, align 8, !tbaa.struct !34
  %73 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 1, i32 1
  store i64 %48, ptr %73, align 8, !tbaa.struct !35
  br label %74

74:                                               ; preds = %70, %55
  %75 = phi i64 [ %52, %70 ], [ %69, %55 ]
  %76 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 1, i32 1, i32 1
  store i64 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.gx_path_s, ptr %10, i64 0, i32 12
  store i8 1, ptr %77, align 2, !tbaa !36
  br label %78

78:                                               ; preds = %21, %14, %5, %74
  %79 = phi i32 [ 0, %74 ], [ -15, %5 ], [ %19, %14 ], [ -13, %21 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  ret i32 %79
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @gs_bbox_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rectappend(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %3, %39
  %6 = phi i32 [ %37, %39 ], [ undef, %3 ]
  %7 = phi ptr [ %41, %39 ], [ %1, %3 ]
  %8 = phi i32 [ %40, %39 ], [ %2, %3 ]
  %9 = load double, ptr %7, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.gs_point_s, ptr %7, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1, i32 1
  %15 = load double, ptr %14, align 8, !tbaa !26
  %16 = fcmp oge double %13, %9
  %17 = fcmp ult double %15, %11
  %18 = xor i1 %16, %17
  %19 = select i1 %18, double %9, double %13
  %20 = select i1 %18, double %13, double %9
  %21 = tail call i32 @gs_moveto(ptr noundef %0, double noundef %19, double noundef %11) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %5
  %24 = tail call i32 @gs_lineto(ptr noundef %0, double noundef %20, double noundef %11) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @gs_lineto(ptr noundef %0, double noundef %20, double noundef %15) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @gs_lineto(ptr noundef %0, double noundef %19, double noundef %15) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @gs_closepath(ptr noundef %0) #6
  %34 = icmp slt i32 %33, 0
  %35 = select i1 %34, i32 %33, i32 %6
  br label %36

36:                                               ; preds = %32, %5, %23, %26, %29
  %37 = phi i32 [ %21, %5 ], [ %24, %23 ], [ %27, %26 ], [ %30, %29 ], [ %35, %32 ]
  %38 = phi i1 [ true, %5 ], [ true, %23 ], [ true, %26 ], [ true, %29 ], [ %34, %32 ]
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = add i32 %8, -1
  %41 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 1
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %5, !llvm.loop !37

43:                                               ; preds = %36, %39, %3
  %44 = phi i32 [ 0, %3 ], [ %37, %36 ], [ 0, %39 ]
  ret i32 %44
}

declare i32 @gs_moveto(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @gs_lineto(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @gs_closepath(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rectclip(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gx_path_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(128) %6, i64 128, i1 false), !tbaa.struct !39
  tail call void @gx_path_reset(ptr noundef %6) #6
  %7 = tail call i32 @gs_rectappend(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @gs_clip(ptr noundef %0) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %7, %3 ], [ %10, %9 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !5
  tail call void @gx_path_release(ptr noundef %14) #6
  %15 = load ptr, ptr %5, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 128, i1 false), !tbaa.struct !39
  br label %18

16:                                               ; preds = %9
  %17 = tail call i32 @gs_newpath(ptr noundef %0) #6
  call void @gx_path_release(ptr noundef nonnull %4) #6
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %13, %12 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  ret i32 %19
}

declare void @gx_path_reset(ptr noundef) local_unnamed_addr #2

declare i32 @gs_clip(ptr noundef) local_unnamed_addr #2

declare void @gx_path_release(ptr noundef) local_unnamed_addr #2

declare i32 @gs_newpath(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rectfill(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_fixed_rect_s, align 8
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = alloca %struct.gs_fixed_point_s, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, @gx_dc_procs_none
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = tail call i32 @gx_remap_color(ptr noundef %0) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %172

14:                                               ; preds = %11, %3
  %15 = phi i32 [ undef, %3 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !52
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %14
  %25 = load float, ptr %16, align 8, !tbaa !53
  %26 = fcmp oeq float %25, 0.000000e+00
  br i1 %26, label %27, label %147

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !54
  %30 = fcmp oeq float %29, 0.000000e+00
  br i1 %30, label %31, label %147

31:                                               ; preds = %27, %20
  %32 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.gx_clip_path_s, ptr %33, i64 0, i32 4, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !56
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %147

37:                                               ; preds = %31
  %38 = load ptr, ptr %7, align 8, !tbaa !44
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = load ptr, ptr %39, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = tail call i32 %40(ptr noundef nonnull %38, ptr noundef %0, ptr noundef %42, i32 noundef 0) #6
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %147

45:                                               ; preds = %37
  %46 = load ptr, ptr %41, align 8, !tbaa !62
  %47 = getelementptr inbounds %struct.gx_device_s, ptr %46, i64 0, i32 21, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = tail call i32 %48(ptr noundef %46, i32 noundef 1) #6
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %147

51:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  %52 = load ptr, ptr %32, align 8, !tbaa !55
  %53 = call i32 @gx_cpath_inner_box(ptr noundef %52, ptr noundef nonnull %4) #6
  %54 = icmp eq i32 %2, 0
  br i1 %54, label %142, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7
  %57 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %58 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  %59 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 7, i32 1
  %60 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1
  %61 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %62 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1, i32 1
  %63 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 3
  %64 = zext i32 %2 to i64
  br label %65

65:                                               ; preds = %55, %132
  %66 = phi i64 [ 0, %55 ], [ %133, %132 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %67 = getelementptr inbounds %struct.gs_rect_s, ptr %1, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !20
  %69 = getelementptr inbounds %struct.gs_point_s, ptr %67, i64 0, i32 1
  %70 = load double, ptr %69, align 8, !tbaa !24
  %71 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %16, double noundef %68, double noundef %70, ptr noundef nonnull %5) #6
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %130, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.gs_rect_s, ptr %1, i64 %66, i32 1
  %75 = load double, ptr %74, align 8, !tbaa !25
  %76 = getelementptr inbounds %struct.gs_rect_s, ptr %1, i64 %66, i32 1, i32 1
  %77 = load double, ptr %76, align 8, !tbaa !26
  %78 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %16, double noundef %75, double noundef %77, ptr noundef nonnull %6) #6
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %130, label %80

80:                                               ; preds = %73
  %81 = load i64, ptr %5, align 8
  %82 = load i64, ptr %6, align 8
  %83 = call i64 @llvm.smin.i64(i64 %81, i64 %82)
  %84 = load i64, ptr %56, align 8, !tbaa !68
  %85 = sub nsw i64 %83, %84
  %86 = load i64, ptr %57, align 8
  %87 = load i64, ptr %58, align 8
  %88 = call i64 @llvm.smin.i64(i64 %86, i64 %87)
  %89 = load i64, ptr %59, align 8, !tbaa !69
  %90 = sub nsw i64 %88, %89
  %91 = call i64 @llvm.smax.i64(i64 %81, i64 %82)
  %92 = add nsw i64 %91, %84
  %93 = call i64 @llvm.smax.i64(i64 %86, i64 %87)
  %94 = add nsw i64 %93, %89
  %95 = load i64, ptr %4, align 8, !tbaa !70
  %96 = call i64 @llvm.smax.i64(i64 %95, i64 %85)
  %97 = load i64, ptr %60, align 8, !tbaa !71
  %98 = call i64 @llvm.smin.i64(i64 %97, i64 %92)
  %99 = load i64, ptr %61, align 8, !tbaa !72
  %100 = call i64 @llvm.smax.i64(i64 %99, i64 %90)
  %101 = load i64, ptr %62, align 8, !tbaa !73
  %102 = call i64 @llvm.smin.i64(i64 %101, i64 %94)
  %103 = add nsw i64 %96, 2047
  %104 = lshr i64 %103, 12
  %105 = trunc i64 %104 to i32
  %106 = add nsw i64 %100, 2047
  %107 = lshr i64 %106, 12
  %108 = trunc i64 %107 to i32
  %109 = add nsw i64 %98, 2047
  %110 = lshr i64 %109, 12
  %111 = trunc i64 %110 to i32
  %112 = sub nsw i32 %111, %105
  %113 = add nsw i64 %102, 2047
  %114 = lshr i64 %113, 12
  %115 = trunc i64 %114 to i32
  %116 = sub nsw i32 %115, %108
  %117 = icmp sgt i32 %112, 0
  %118 = icmp sgt i32 %116, 0
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %129

120:                                              ; preds = %80
  %121 = load ptr, ptr %7, align 8, !tbaa !44
  %122 = load ptr, ptr %121, align 8, !tbaa !45
  %123 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !74
  %125 = load ptr, ptr %41, align 8, !tbaa !62
  %126 = load i32, ptr %63, align 8, !tbaa !75
  %127 = call i32 %124(ptr noundef nonnull %121, i32 noundef %105, i32 noundef %108, i32 noundef %112, i32 noundef %116, ptr noundef %125, i32 noundef %126, ptr noundef null) #6
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %120, %80
  br label %130

130:                                              ; preds = %120, %65, %73, %129
  %131 = phi i32 [ 0, %129 ], [ 5, %73 ], [ 5, %65 ], [ 5, %120 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  switch i32 %131, label %138 [
    i32 0, label %132
    i32 5, label %135
  ]

132:                                              ; preds = %130
  %133 = add nuw nsw i64 %66, 1
  %134 = icmp eq i64 %133, %64
  br i1 %134, label %138, label %65, !llvm.loop !76

135:                                              ; preds = %130
  %136 = trunc i64 %66 to i32
  %137 = sub i32 %2, %136
  br label %142

138:                                              ; preds = %132, %130
  %139 = phi i32 [ 1, %132 ], [ %131, %130 ]
  %140 = phi i32 [ 0, %132 ], [ %15, %130 ]
  %141 = icmp eq i32 %139, 0
  br label %142

142:                                              ; preds = %138, %51, %135
  %143 = phi i1 [ true, %135 ], [ false, %51 ], [ %141, %138 ]
  %144 = phi i32 [ %137, %135 ], [ %2, %51 ], [ %2, %138 ]
  %145 = phi ptr [ %67, %135 ], [ %1, %51 ], [ %1, %138 ]
  %146 = phi i32 [ %15, %135 ], [ 0, %51 ], [ %140, %138 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  br i1 %143, label %147, label %172

147:                                              ; preds = %142, %45, %37, %31, %27, %24
  %148 = phi i32 [ %144, %142 ], [ %2, %45 ], [ %2, %37 ], [ %2, %31 ], [ %2, %27 ], [ %2, %24 ]
  %149 = phi ptr [ %145, %142 ], [ %1, %45 ], [ %1, %37 ], [ %1, %31 ], [ %1, %27 ], [ %1, %24 ]
  %150 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = call i32 @gx_path_is_null(ptr noundef %151) #6
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %147
  %155 = call i32 @gs_gsave(ptr noundef %0) #6
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %154
  %158 = call i32 @gs_newpath(ptr noundef %0) #6
  br label %159

159:                                              ; preds = %157, %147
  %160 = call i32 @gs_rectappend(ptr noundef %0, ptr noundef %149, i32 noundef %148)
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 @gs_fill(ptr noundef %0) #6
  br label %164

164:                                              ; preds = %162, %159
  %165 = phi i32 [ %160, %159 ], [ %163, %162 ]
  br i1 %153, label %166, label %168

166:                                              ; preds = %164
  %167 = call i32 @gs_grestore(ptr noundef %0) #6
  br label %172

168:                                              ; preds = %164
  %169 = icmp slt i32 %165, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %168
  %171 = call i32 @gs_newpath(ptr noundef %0) #6
  br label %172

172:                                              ; preds = %154, %168, %170, %166, %142, %11
  %173 = phi i32 [ %146, %142 ], [ %12, %11 ], [ %155, %154 ], [ %165, %168 ], [ %165, %170 ], [ %165, %166 ]
  ret i32 %173
}

declare i32 @gx_remap_color(ptr noundef) local_unnamed_addr #2

declare i32 @gx_cpath_inner_box(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_point_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_path_is_null(ptr noundef) local_unnamed_addr #2

declare i32 @gs_gsave(ptr noundef) local_unnamed_addr #2

declare i32 @gs_fill(ptr noundef) local_unnamed_addr #2

declare i32 @gs_grestore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rectstroke(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = tail call i32 @gx_path_is_null(ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi i1 [ true, %4 ], [ %10, %6 ]
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = tail call i32 @gs_gsave(ptr noundef %0) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @gs_newpath(ptr noundef %0) #6
  br label %18

18:                                               ; preds = %16, %11
  %19 = tail call i32 @gs_rectappend(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  br i1 %5, label %25, label %22

22:                                               ; preds = %21
  %23 = tail call i32 @gs_concat(ptr noundef %0, ptr noundef nonnull %3) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %21
  %26 = tail call i32 @gs_stroke(ptr noundef %0) #6
  br label %27

27:                                               ; preds = %25, %22, %18
  %28 = phi i32 [ %19, %18 ], [ %23, %22 ], [ %26, %25 ]
  br i1 %12, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call i32 @gs_grestore(ptr noundef %0) #6
  br label %35

31:                                               ; preds = %27
  %32 = icmp slt i32 %28, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = tail call i32 @gs_newpath(ptr noundef %0) #6
  br label %35

35:                                               ; preds = %29, %33, %31, %13
  %36 = phi i32 [ %14, %13 ], [ %28, %31 ], [ %28, %33 ], [ %28, %29 ]
  ret i32 %36
}

declare i32 @gs_concat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_stroke(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 392}
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
!20 = !{!21, !23, i64 0}
!21 = !{!"gs_rect_s", !22, i64 0, !22, i64 16}
!22 = !{!"gs_point_s", !23, i64 0, !23, i64 8}
!23 = !{!"double", !8, i64 0}
!24 = !{!21, !23, i64 8}
!25 = !{!21, !23, i64 16}
!26 = !{!21, !23, i64 24}
!27 = !{!28, !15, i64 8}
!28 = !{!"gx_path_s", !7, i64 0, !29, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !12, i64 64, !12, i64 68, !17, i64 72, !22, i64 88, !22, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!29 = !{!"gs_fixed_rect_s", !17, i64 0, !17, i64 16}
!30 = !{!28, !15, i64 16}
!31 = !{!28, !15, i64 24}
!32 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33}
!33 = !{!15, !15, i64 0}
!34 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33}
!35 = !{i64 0, i64 8, !33, i64 8, i64 8, !33}
!36 = !{!28, !8, i64 122}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{i64 0, i64 8, !40, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33, i64 40, i64 8, !40, i64 48, i64 8, !40, i64 56, i64 8, !40, i64 64, i64 4, !41, i64 68, i64 4, !41, i64 72, i64 8, !33, i64 80, i64 8, !33, i64 88, i64 8, !42, i64 96, i64 8, !42, i64 104, i64 8, !42, i64 112, i64 8, !42, i64 120, i64 1, !43, i64 121, i64 1, !43, i64 122, i64 1, !43, i64 123, i64 1, !43}
!40 = !{!7, !7, i64 0}
!41 = !{!12, !12, i64 0}
!42 = !{!23, !23, i64 0}
!43 = !{!8, !8, i64 0}
!44 = !{!6, !7, i64 432}
!45 = !{!46, !7, i64 0}
!46 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !47, i64 48, !48, i64 56}
!47 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!48 = !{!"_mask", !49, i64 0, !15, i64 24, !7, i64 32}
!49 = !{!"gs_client_color_s", !50, i64 0, !7, i64 16}
!50 = !{!"gs_paint_color_s", !8, i64 0}
!51 = !{!6, !11, i64 84}
!52 = !{!6, !11, i64 88}
!53 = !{!6, !11, i64 80}
!54 = !{!6, !11, i64 92}
!55 = !{!6, !7, i64 400}
!56 = !{!57, !12, i64 256}
!57 = !{!"gx_clip_path_s", !28, i64 0, !12, i64 128, !29, i64 136, !29, i64 168, !58, i64 200, !8, i64 264, !8, i64 265, !15, i64 272}
!58 = !{!"gx_clip_list_s", !59, i64 0, !7, i64 40, !7, i64 48, !12, i64 56, !12, i64 60}
!59 = !{!"gx_clip_rect_s", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32}
!60 = !{!61, !7, i64 0}
!61 = !{!"gx_device_color_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!62 = !{!6, !7, i64 536}
!63 = !{!64, !7, i64 352}
!64 = !{!"gx_device_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !65, i64 48, !12, i64 64, !12, i64 68, !8, i64 72, !8, i64 80, !12, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !12, i64 160, !66, i64 168, !67, i64 192}
!65 = !{!"gx_device_color_info_s", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14}
!66 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!67 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!68 = !{!6, !15, i64 144}
!69 = !{!6, !15, i64 152}
!70 = !{!29, !15, i64 0}
!71 = !{!29, !15, i64 16}
!72 = !{!29, !15, i64 8}
!73 = !{!29, !15, i64 24}
!74 = !{!61, !7, i64 8}
!75 = !{!6, !12, i64 128}
!76 = distinct !{!76, !38}
