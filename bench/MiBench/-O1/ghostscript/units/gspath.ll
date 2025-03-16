; ModuleID = 'gspath.c'
source_filename = "gspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_point_s = type { double, double }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_newpath(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  tail call void @gx_path_release(ptr noundef %3) #5
  %4 = load ptr, ptr %2, align 8, !tbaa !5
  %5 = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @gx_path_init(ptr noundef %4, ptr noundef %5) #5
  ret i32 0
}

declare void @gx_path_release(ptr noundef) local_unnamed_addr #1

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_closepath(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = tail call i32 @gx_path_close_subpath_notes(ptr noundef %3, i32 noundef 0) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gx_path_s, ptr %3, i64 0, i32 11
  %8 = load i8, ptr %7, align 1, !tbaa !21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_path_s, ptr %3, i64 0, i32 10
  %12 = load i8, ptr %11, align 8, !tbaa !26
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.gx_path_s, ptr %3, i64 0, i32 9
  %17 = load double, ptr %16, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.gx_path_s, ptr %3, i64 0, i32 8
  store double %17, ptr %18, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct.gx_path_s, ptr %3, i64 0, i32 9, i32 1
  %20 = load double, ptr %19, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.gx_path_s, ptr %3, i64 0, i32 8, i32 1
  store double %20, ptr %21, align 8, !tbaa !30
  %22 = or i8 %8, 8
  store i8 %22, ptr %7, align 1, !tbaa !21
  br label %23

23:                                               ; preds = %6, %10, %15, %1
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gx_path_close_subpath_notes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_upmergepath(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call i32 @gx_path_add_path(ptr noundef %5, ptr noundef %7) #5
  ret i32 %8
}

declare i32 @gx_path_add_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gx_current_path(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_currentpoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_fixed_point_s, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 11
  %7 = load i8, ptr %6, align 1, !tbaa !21
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 8
  %12 = load double, ptr %11, align 8, !tbaa !28
  %13 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 8, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !30
  %15 = tail call i32 @gs_itransform(ptr noundef %0, double noundef %12, double noundef %14, ptr noundef %1) #5
  br label %28

16:                                               ; preds = %2
  %17 = call i32 @gx_path_current_point(ptr noundef %5, ptr noundef nonnull %3) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %3, align 8, !tbaa !32
  %21 = sitofp i64 %20 to double
  %22 = fmul double %21, 0x3F30000000000000
  %23 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !33
  %25 = sitofp i64 %24 to double
  %26 = fmul double %25, 0x3F30000000000000
  %27 = call i32 @gs_itransform(ptr noundef %0, double noundef %22, double noundef %26, ptr noundef %1) #5
  br label %28

28:                                               ; preds = %16, %19, %10
  %29 = phi i32 [ %15, %10 ], [ %27, %19 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %29
}

declare i32 @gs_itransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_current_point(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_moveto(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = alloca %struct.gs_point_s, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %9 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %8, double noundef %1, double noundef %2, ptr noundef nonnull %4) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 31
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %16 = icmp eq i32 %9, -13
  br i1 %16, label %17, label %49

17:                                               ; preds = %15
  %18 = call i32 @gs_transform(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %5) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %17
  %21 = load double, ptr %5, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.gs_point_s, ptr %5, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !36
  %24 = fcmp ogt double %21, 0x431FFFFFFFFFF060
  %25 = fcmp olt double %21, 0xC31FFFFFFFFFF060
  %26 = fmul double %21, 4.096000e+03
  %27 = fptosi double %26 to i64
  %28 = select i1 %25, i64 -9223372036850679807, i64 %27
  %29 = select i1 %24, i64 9223372036850679807, i64 %28
  store i64 %29, ptr %4, align 8, !tbaa !32
  %30 = fcmp ogt double %23, 0x431FFFFFFFFFF060
  %31 = fcmp olt double %23, 0xC31FFFFFFFFFF060
  %32 = fmul double %23, 4.096000e+03
  %33 = fptosi double %32 to i64
  %34 = select i1 %31, i64 -9223372036850679807, i64 %33
  %35 = select i1 %30, i64 9223372036850679807, i64 %34
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  store i64 %35, ptr %36, align 8, !tbaa !33
  %37 = call i32 @gx_path_add_point(ptr noundef %7, i64 noundef %29, i64 noundef %35) #5
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %20
  %40 = load double, ptr %5, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 8
  store double %40, ptr %41, align 8, !tbaa !28
  %42 = load double, ptr %22, align 8, !tbaa !36
  %43 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 8, i32 1
  store double %42, ptr %43, align 8, !tbaa !30
  %44 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 11
  %45 = load i8, ptr %44, align 1, !tbaa !21
  %46 = or i8 %45, 8
  store i8 %46, ptr %44, align 1, !tbaa !21
  %47 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false), !tbaa.struct !37
  %48 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 10
  store i8 %46, ptr %48, align 8, !tbaa !26
  br label %49

49:                                               ; preds = %20, %15, %17, %39
  %50 = phi i32 [ %37, %39 ], [ %9, %15 ], [ %18, %17 ], [ %37, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  br label %56

51:                                               ; preds = %3
  %52 = load i64, ptr %4, align 8, !tbaa !32
  %53 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !33
  %55 = call i32 @gx_path_add_point(ptr noundef %7, i64 noundef %52, i64 noundef %54) #5
  br label %56

56:                                               ; preds = %49, %11, %51
  %57 = phi i32 [ %55, %51 ], [ %9, %11 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret i32 %57
}

declare i32 @gs_point_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_transform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rmoveto(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %8 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %7, double noundef %1, double noundef %2, ptr noundef nonnull %5) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = load i64, ptr %5, align 8, !tbaa !32
  %14 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !33
  %16 = call i32 @gx_path_add_relative_point(ptr noundef %12, i64 noundef %13, i64 noundef %15) #5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %10, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %21 = getelementptr inbounds %struct.gx_path_s, ptr %20, i64 0, i32 11
  %22 = load i8, ptr %21, align 1, !tbaa !21
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.gx_path_s, ptr %20, i64 0, i32 8
  %27 = load double, ptr %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.gx_path_s, ptr %20, i64 0, i32 8, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !30
  %30 = call i32 @gs_itransform(ptr noundef %0, double noundef %27, double noundef %29, ptr noundef nonnull %6) #5
  br label %43

31:                                               ; preds = %18
  %32 = call i32 @gx_path_current_point(ptr noundef %20, ptr noundef nonnull %4) #5
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i64, ptr %4, align 8, !tbaa !32
  %36 = sitofp i64 %35 to double
  %37 = fmul double %36, 0x3F30000000000000
  %38 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !33
  %40 = sitofp i64 %39 to double
  %41 = fmul double %40, 0x3F30000000000000
  %42 = call i32 @gs_itransform(ptr noundef %0, double noundef %37, double noundef %41, ptr noundef nonnull %6) #5
  br label %43

43:                                               ; preds = %25, %31, %34
  %44 = phi i32 [ %30, %25 ], [ %42, %34 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load double, ptr %6, align 8, !tbaa !35
  %48 = fadd double %47, %1
  %49 = getelementptr inbounds %struct.gs_point_s, ptr %6, i64 0, i32 1
  %50 = load double, ptr %49, align 8, !tbaa !36
  %51 = fadd double %50, %2
  %52 = call i32 @gs_moveto(ptr noundef %0, double noundef %48, double noundef %51)
  br label %53

53:                                               ; preds = %43, %46
  %54 = phi i32 [ %52, %46 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  br label %55

55:                                               ; preds = %10, %53
  %56 = phi i32 [ %54, %53 ], [ %16, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  ret i32 %56
}

declare i32 @gs_distance_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_add_relative_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_lineto(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = alloca %struct.gs_point_s, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %9 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %8, double noundef %1, double noundef %2, ptr noundef nonnull %4) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 31
  %13 = load i32, ptr %12, align 4, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %16 = icmp eq i32 %9, -13
  br i1 %16, label %17, label %47

17:                                               ; preds = %15
  %18 = call i32 @gs_transform(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %5) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = load double, ptr %5, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.gs_point_s, ptr %5, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !36
  %24 = fcmp ogt double %21, 0x431FFFFFFFFFF060
  %25 = fcmp olt double %21, 0xC31FFFFFFFFFF060
  %26 = fmul double %21, 4.096000e+03
  %27 = fptosi double %26 to i64
  %28 = select i1 %25, i64 -9223372036850679807, i64 %27
  %29 = select i1 %24, i64 9223372036850679807, i64 %28
  store i64 %29, ptr %4, align 8, !tbaa !32
  %30 = fcmp ogt double %23, 0x431FFFFFFFFFF060
  %31 = fcmp olt double %23, 0xC31FFFFFFFFFF060
  %32 = fmul double %23, 4.096000e+03
  %33 = fptosi double %32 to i64
  %34 = select i1 %31, i64 -9223372036850679807, i64 %33
  %35 = select i1 %30, i64 9223372036850679807, i64 %34
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  store i64 %35, ptr %36, align 8, !tbaa !33
  %37 = call i32 @gx_path_add_line_notes(ptr noundef %7, i64 noundef %29, i64 noundef %35, i32 noundef 0) #5
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %20
  %40 = load double, ptr %5, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 8
  store double %40, ptr %41, align 8, !tbaa !28
  %42 = load double, ptr %22, align 8, !tbaa !36
  %43 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 8, i32 1
  store double %42, ptr %43, align 8, !tbaa !30
  %44 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 11
  %45 = load i8, ptr %44, align 1, !tbaa !21
  %46 = or i8 %45, 8
  store i8 %46, ptr %44, align 1, !tbaa !21
  br label %47

47:                                               ; preds = %20, %15, %17, %39
  %48 = phi i32 [ %37, %39 ], [ %9, %15 ], [ %18, %17 ], [ %37, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  br label %55

49:                                               ; preds = %3
  %50 = load ptr, ptr %6, align 8, !tbaa !5
  %51 = load i64, ptr %4, align 8, !tbaa !32
  %52 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !33
  %54 = call i32 @gx_path_add_line_notes(ptr noundef %50, i64 noundef %51, i64 noundef %53, i32 noundef 0) #5
  br label %55

55:                                               ; preds = %47, %11, %49
  %56 = phi i32 [ %54, %49 ], [ %9, %11 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret i32 %56
}

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rlineto(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = alloca %struct.gs_point_s, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %9 = getelementptr inbounds %struct.gx_path_s, ptr %8, i64 0, i32 11
  %10 = load i8, ptr %9, align 1, !tbaa !21
  %11 = and i8 %10, 9
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %15 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %14, double noundef %1, double noundef %2, ptr noundef nonnull %5) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gx_path_s, ptr %8, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !39
  %20 = load i64, ptr %5, align 8, !tbaa !32
  %21 = add nsw i64 %20, %19
  %22 = xor i64 %21, %20
  %23 = icmp slt i64 %22, 0
  %24 = xor i64 %20, %19
  %25 = icmp sgt i64 %24, -1
  %26 = and i1 %25, %23
  br i1 %26, label %41, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.gx_path_s, ptr %8, i64 0, i32 7, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !33
  %32 = add nsw i64 %31, %29
  %33 = xor i64 %32, %31
  %34 = icmp slt i64 %33, 0
  %35 = xor i64 %31, %29
  %36 = icmp sgt i64 %35, -1
  %37 = and i1 %36, %34
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = call i32 @gx_path_add_line_notes(ptr noundef %8, i64 noundef %21, i64 noundef %32, i32 noundef 0) #5
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %27, %17, %38, %13, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  %42 = load ptr, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %43 = getelementptr inbounds %struct.gx_path_s, ptr %42, i64 0, i32 11
  %44 = load i8, ptr %43, align 1, !tbaa !21
  %45 = and i8 %44, 8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.gx_path_s, ptr %42, i64 0, i32 8
  %49 = load double, ptr %48, align 8, !tbaa !28
  %50 = getelementptr inbounds %struct.gx_path_s, ptr %42, i64 0, i32 8, i32 1
  %51 = load double, ptr %50, align 8, !tbaa !30
  %52 = call i32 @gs_itransform(ptr noundef %0, double noundef %49, double noundef %51, ptr noundef nonnull %6) #5
  br label %65

53:                                               ; preds = %41
  %54 = call i32 @gx_path_current_point(ptr noundef %42, ptr noundef nonnull %4) #5
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %4, align 8, !tbaa !32
  %58 = sitofp i64 %57 to double
  %59 = fmul double %58, 0x3F30000000000000
  %60 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !33
  %62 = sitofp i64 %61 to double
  %63 = fmul double %62, 0x3F30000000000000
  %64 = call i32 @gs_itransform(ptr noundef %0, double noundef %59, double noundef %63, ptr noundef nonnull %6) #5
  br label %65

65:                                               ; preds = %47, %53, %56
  %66 = phi i32 [ %52, %47 ], [ %64, %56 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load double, ptr %6, align 8, !tbaa !35
  %70 = fadd double %69, %1
  %71 = getelementptr inbounds %struct.gs_point_s, ptr %6, i64 0, i32 1
  %72 = load double, ptr %71, align 8, !tbaa !36
  %73 = fadd double %72, %2
  %74 = call i32 @gs_lineto(ptr noundef %0, double noundef %70, double noundef %73)
  br label %75

75:                                               ; preds = %65, %68
  %76 = phi i32 [ %74, %68 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  br label %77

77:                                               ; preds = %38, %75
  %78 = phi i32 [ %76, %75 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_curveto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = alloca %struct.gs_fixed_point_s, align 8
  %11 = alloca %struct.gs_point_s, align 8
  %12 = alloca %struct.gs_point_s, align 8
  %13 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #5
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %15 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %14, double noundef %1, double noundef %2, ptr noundef nonnull %8) #5
  %16 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %14, double noundef %3, double noundef %4, ptr noundef nonnull %9) #5
  %17 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %14, double noundef %5, double noundef %6, ptr noundef nonnull %10) #5
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = or i32 %16, %15
  %21 = or i32 %20, %17
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %114

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 31
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %109, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #5
  %28 = icmp slt i32 %15, 0
  %29 = icmp ne i32 %15, -13
  %30 = and i1 %28, %29
  br i1 %30, label %107, label %31

31:                                               ; preds = %27
  %32 = call i32 @gs_transform(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %11) #5
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %107, label %34

34:                                               ; preds = %31
  %35 = icmp slt i32 %16, 0
  %36 = icmp ne i32 %16, -13
  %37 = and i1 %35, %36
  br i1 %37, label %107, label %38

38:                                               ; preds = %34
  %39 = call i32 @gs_transform(ptr noundef %0, double noundef %3, double noundef %4, ptr noundef nonnull %12) #5
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %107, label %41

41:                                               ; preds = %38
  %42 = icmp slt i32 %17, 0
  %43 = icmp ne i32 %17, -13
  %44 = and i1 %42, %43
  br i1 %44, label %107, label %45

45:                                               ; preds = %41
  %46 = call i32 @gs_transform(ptr noundef %0, double noundef %5, double noundef %6, ptr noundef nonnull %13) #5
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %107, label %48

48:                                               ; preds = %45
  %49 = load double, ptr %11, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  %51 = load double, ptr %50, align 8, !tbaa !36
  %52 = fcmp ogt double %49, 0x431FFFFFFFFFF060
  %53 = fcmp olt double %49, 0xC31FFFFFFFFFF060
  %54 = fmul double %49, 4.096000e+03
  %55 = fptosi double %54 to i64
  %56 = select i1 %53, i64 -9223372036850679807, i64 %55
  %57 = select i1 %52, i64 9223372036850679807, i64 %56
  store i64 %57, ptr %8, align 8, !tbaa !32
  %58 = fcmp ogt double %51, 0x431FFFFFFFFFF060
  %59 = fcmp olt double %51, 0xC31FFFFFFFFFF060
  %60 = fmul double %51, 4.096000e+03
  %61 = fptosi double %60 to i64
  %62 = select i1 %59, i64 -9223372036850679807, i64 %61
  %63 = select i1 %58, i64 9223372036850679807, i64 %62
  %64 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  store i64 %63, ptr %64, align 8, !tbaa !33
  %65 = load double, ptr %12, align 8, !tbaa !35
  %66 = getelementptr inbounds %struct.gs_point_s, ptr %12, i64 0, i32 1
  %67 = load double, ptr %66, align 8, !tbaa !36
  %68 = fcmp ogt double %65, 0x431FFFFFFFFFF060
  %69 = fcmp olt double %65, 0xC31FFFFFFFFFF060
  %70 = fmul double %65, 4.096000e+03
  %71 = fptosi double %70 to i64
  %72 = select i1 %69, i64 -9223372036850679807, i64 %71
  %73 = select i1 %68, i64 9223372036850679807, i64 %72
  store i64 %73, ptr %9, align 8, !tbaa !32
  %74 = fcmp ogt double %67, 0x431FFFFFFFFFF060
  %75 = fcmp olt double %67, 0xC31FFFFFFFFFF060
  %76 = fmul double %67, 4.096000e+03
  %77 = fptosi double %76 to i64
  %78 = select i1 %75, i64 -9223372036850679807, i64 %77
  %79 = select i1 %74, i64 9223372036850679807, i64 %78
  %80 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  store i64 %79, ptr %80, align 8, !tbaa !33
  %81 = load double, ptr %13, align 8, !tbaa !35
  %82 = getelementptr inbounds %struct.gs_point_s, ptr %13, i64 0, i32 1
  %83 = load double, ptr %82, align 8, !tbaa !36
  %84 = fcmp ogt double %81, 0x431FFFFFFFFFF060
  %85 = fcmp olt double %81, 0xC31FFFFFFFFFF060
  %86 = fmul double %81, 4.096000e+03
  %87 = fptosi double %86 to i64
  %88 = select i1 %85, i64 -9223372036850679807, i64 %87
  %89 = select i1 %84, i64 9223372036850679807, i64 %88
  store i64 %89, ptr %10, align 8, !tbaa !32
  %90 = fcmp ogt double %83, 0x431FFFFFFFFFF060
  %91 = fcmp olt double %83, 0xC31FFFFFFFFFF060
  %92 = fmul double %83, 4.096000e+03
  %93 = fptosi double %92 to i64
  %94 = select i1 %91, i64 -9223372036850679807, i64 %93
  %95 = select i1 %90, i64 9223372036850679807, i64 %94
  %96 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  store i64 %95, ptr %96, align 8, !tbaa !33
  %97 = call i32 @gx_path_add_curve_notes(ptr noundef %19, i64 noundef %57, i64 noundef %63, i64 noundef %73, i64 noundef %79, i64 noundef %89, i64 noundef %95, i32 noundef 0) #5
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %48
  %100 = load double, ptr %13, align 8, !tbaa !35
  %101 = getelementptr inbounds %struct.gx_path_s, ptr %19, i64 0, i32 8
  store double %100, ptr %101, align 8, !tbaa !28
  %102 = load double, ptr %82, align 8, !tbaa !36
  %103 = getelementptr inbounds %struct.gx_path_s, ptr %19, i64 0, i32 8, i32 1
  store double %102, ptr %103, align 8, !tbaa !30
  %104 = getelementptr inbounds %struct.gx_path_s, ptr %19, i64 0, i32 11
  %105 = load i8, ptr %104, align 1, !tbaa !21
  %106 = or i8 %105, 8
  store i8 %106, ptr %104, align 1, !tbaa !21
  br label %107

107:                                              ; preds = %48, %45, %41, %38, %34, %31, %27, %99
  %108 = phi i32 [ %97, %99 ], [ %15, %27 ], [ %32, %31 ], [ %16, %34 ], [ %39, %38 ], [ %17, %41 ], [ %46, %45 ], [ %97, %48 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #5
  br label %125

109:                                              ; preds = %23
  %110 = icmp slt i32 %15, 0
  %111 = icmp slt i32 %16, 0
  %112 = select i1 %111, i32 %16, i32 %17
  %113 = select i1 %110, i32 %15, i32 %112
  br label %125

114:                                              ; preds = %7
  %115 = load i64, ptr %8, align 8, !tbaa !32
  %116 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !33
  %118 = load i64, ptr %9, align 8, !tbaa !32
  %119 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !33
  %121 = load i64, ptr %10, align 8, !tbaa !32
  %122 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !33
  %124 = call i32 @gx_path_add_curve_notes(ptr noundef %19, i64 noundef %115, i64 noundef %117, i64 noundef %118, i64 noundef %120, i64 noundef %121, i64 noundef %123, i32 noundef 0) #5
  br label %125

125:                                              ; preds = %114, %109, %107
  %126 = phi i32 [ %108, %107 ], [ %113, %109 ], [ %124, %114 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  ret i32 %126
}

declare i32 @gx_path_add_curve_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rcurveto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = alloca %struct.gs_fixed_point_s, align 8
  %11 = alloca %struct.gs_fixed_point_s, align 8
  %12 = alloca %struct.gs_point_s, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #5
  %15 = getelementptr inbounds %struct.gx_path_s, ptr %14, i64 0, i32 11
  %16 = load i8, ptr %15, align 1, !tbaa !21
  %17 = and i8 %16, 9
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %51

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %21 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %20, double noundef %1, double noundef %2, ptr noundef nonnull %9) #5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %19
  %24 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %20, double noundef %3, double noundef %4, ptr noundef nonnull %10) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %23
  %27 = call i32 @gs_distance_transform2fixed(ptr noundef nonnull %20, double noundef %5, double noundef %6, ptr noundef nonnull %11) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gx_path_s, ptr %14, i64 0, i32 7
  %31 = load i64, ptr %30, align 8, !tbaa !39
  %32 = getelementptr inbounds %struct.gx_path_s, ptr %14, i64 0, i32 7, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !40
  %34 = load i64, ptr %9, align 8, !tbaa !32
  %35 = add nsw i64 %34, %31
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !33
  %38 = add nsw i64 %37, %33
  %39 = load i64, ptr %10, align 8, !tbaa !32
  %40 = add nsw i64 %39, %31
  %41 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !33
  %43 = add nsw i64 %42, %33
  %44 = load i64, ptr %11, align 8, !tbaa !32
  %45 = add nsw i64 %44, %31
  %46 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %11, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !33
  %48 = add nsw i64 %47, %33
  %49 = call i32 @gx_path_add_curve_notes(ptr noundef %14, i64 noundef %35, i64 noundef %38, i64 noundef %40, i64 noundef %43, i64 noundef %45, i64 noundef %48, i32 noundef 0) #5
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %91

51:                                               ; preds = %29, %26, %23, %19, %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #5
  %52 = load ptr, ptr %13, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  %53 = getelementptr inbounds %struct.gx_path_s, ptr %52, i64 0, i32 11
  %54 = load i8, ptr %53, align 1, !tbaa !21
  %55 = and i8 %54, 8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.gx_path_s, ptr %52, i64 0, i32 8
  %59 = load double, ptr %58, align 8, !tbaa !28
  %60 = getelementptr inbounds %struct.gx_path_s, ptr %52, i64 0, i32 8, i32 1
  %61 = load double, ptr %60, align 8, !tbaa !30
  %62 = call i32 @gs_itransform(ptr noundef %0, double noundef %59, double noundef %61, ptr noundef nonnull %12) #5
  br label %75

63:                                               ; preds = %51
  %64 = call i32 @gx_path_current_point(ptr noundef %52, ptr noundef nonnull %8) #5
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load i64, ptr %8, align 8, !tbaa !32
  %68 = sitofp i64 %67 to double
  %69 = fmul double %68, 0x3F30000000000000
  %70 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !33
  %72 = sitofp i64 %71 to double
  %73 = fmul double %72, 0x3F30000000000000
  %74 = call i32 @gs_itransform(ptr noundef %0, double noundef %69, double noundef %73, ptr noundef nonnull %12) #5
  br label %75

75:                                               ; preds = %57, %63, %66
  %76 = phi i32 [ %62, %57 ], [ %74, %66 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load double, ptr %12, align 8, !tbaa !35
  %80 = fadd double %79, %1
  %81 = getelementptr inbounds %struct.gs_point_s, ptr %12, i64 0, i32 1
  %82 = load double, ptr %81, align 8, !tbaa !36
  %83 = fadd double %82, %2
  %84 = fadd double %79, %3
  %85 = fadd double %82, %4
  %86 = fadd double %79, %5
  %87 = fadd double %82, %6
  %88 = call i32 @gs_curveto(ptr noundef %0, double noundef %80, double noundef %83, double noundef %84, double noundef %85, double noundef %86, double noundef %87)
  br label %89

89:                                               ; preds = %75, %78
  %90 = phi i32 [ %88, %78 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #5
  br label %91

91:                                               ; preds = %29, %89
  %92 = phi i32 [ %90, %89 ], [ %49, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_clippath(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_path_s, align 8
  %3 = alloca %struct.gx_path_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = call i32 @gx_cpath_path(ptr noundef %5, ptr noundef nonnull %2) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = call i32 @gx_path_copy_reducing(ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef 9223372036854775807, i32 noundef 1) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  call void @gx_path_release(ptr noundef %13) #5
  %14 = load ptr, ptr %12, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %14, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !tbaa.struct !42
  br label %15

15:                                               ; preds = %8, %1, %11
  %16 = phi i32 [ 0, %11 ], [ %6, %1 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #5
  ret i32 %16
}

declare i32 @gx_cpath_path(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_copy_reducing(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_initclip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_clip_path_s, align 8
  %3 = alloca %struct.gs_rect_s, align 8
  %4 = alloca %struct.gs_fixed_rect_s, align 8
  %5 = alloca %struct.gs_matrix_s, align 4
  %6 = tail call ptr @gs_currentdevice(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 12
  %8 = load i32, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = call i32 @gs_defaultmatrix(ptr noundef %0, ptr noundef nonnull %5) #5
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 11
  %13 = load float, ptr %12, align 8, !tbaa !52
  %14 = fpext float %13 to double
  store double %14, ptr %3, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 11, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  store double %17, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 11, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !52
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds %struct.gs_rect_s, ptr %3, i64 0, i32 1
  store double %21, ptr %22, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 11, i64 3
  %24 = load float, ptr %23, align 4, !tbaa !52
  br label %69

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 21, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  call void %27(ptr noundef %6, ptr noundef nonnull %5) #5
  %28 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 15
  %29 = load float, ptr %28, align 4, !tbaa !52
  %30 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 13
  %31 = load float, ptr %30, align 4, !tbaa !52
  %32 = fmul float %29, %31
  %33 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 14
  %34 = load float, ptr %33, align 4, !tbaa !52
  %35 = fdiv float %32, %34
  %36 = getelementptr inbounds %struct.gs_matrix_s, ptr %5, i64 0, i32 4
  %37 = load float, ptr %36, align 4, !tbaa !58
  %38 = fadd float %37, %35
  store float %38, ptr %36, align 4, !tbaa !58
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 15, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !52
  %41 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 13, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !52
  %43 = fmul float %40, %42
  %44 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 14, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !52
  %46 = fdiv float %43, %45
  %47 = getelementptr inbounds %struct.gs_matrix_s, ptr %5, i64 0, i32 5
  %48 = load float, ptr %47, align 4, !tbaa !59
  %49 = fadd float %48, %46
  store float %49, ptr %47, align 4, !tbaa !59
  %50 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 16
  %51 = load float, ptr %50, align 4, !tbaa !52
  %52 = fpext float %51 to double
  store double %52, ptr %3, align 8, !tbaa !53
  %53 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 16, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !52
  %55 = fpext float %54 to double
  %56 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  store double %55, ptr %56, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 10
  %58 = load float, ptr %57, align 8, !tbaa !52
  %59 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 16, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !52
  %61 = fsub float %58, %60
  %62 = fpext float %61 to double
  %63 = getelementptr inbounds %struct.gs_rect_s, ptr %3, i64 0, i32 1
  store double %62, ptr %63, align 8, !tbaa !56
  %64 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 10, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !52
  %66 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 16, i64 3
  %67 = load float, ptr %66, align 4, !tbaa !52
  %68 = fsub float %65, %67
  br label %69

69:                                               ; preds = %25, %10
  %70 = phi float [ %68, %25 ], [ %24, %10 ]
  %71 = fpext float %70 to double
  %72 = getelementptr inbounds %struct.gs_rect_s, ptr %3, i64 0, i32 1, i32 1
  store double %71, ptr %72, align 8, !tbaa !60
  %73 = call i32 @gs_bbox_transform(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %3) #5
  %74 = load double, ptr %3, align 8, !tbaa !53
  %75 = fmul double %74, 4.096000e+03
  %76 = fptosi double %75 to i64
  %77 = add nsw i64 %76, 2048
  %78 = and i64 %77, -4096
  store i64 %78, ptr %4, align 8, !tbaa !61
  %79 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  %80 = load double, ptr %79, align 8, !tbaa !55
  %81 = fmul double %80, 4.096000e+03
  %82 = fptosi double %81 to i64
  %83 = add nsw i64 %82, 2048
  %84 = and i64 %83, -4096
  %85 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  store i64 %84, ptr %85, align 8, !tbaa !62
  %86 = getelementptr inbounds %struct.gs_rect_s, ptr %3, i64 0, i32 1
  %87 = load double, ptr %86, align 8, !tbaa !56
  %88 = fmul double %87, 4.096000e+03
  %89 = fptosi double %88 to i64
  %90 = add nsw i64 %89, 2048
  %91 = and i64 %90, -4096
  %92 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1
  store i64 %91, ptr %92, align 8, !tbaa !63
  %93 = getelementptr inbounds %struct.gs_rect_s, ptr %3, i64 0, i32 1, i32 1
  %94 = load double, ptr %93, align 8, !tbaa !60
  %95 = fmul double %94, 4.096000e+03
  %96 = fptosi double %95 to i64
  %97 = add nsw i64 %96, 2048
  %98 = and i64 %97, -4096
  %99 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1, i32 1
  store i64 %98, ptr %99, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %2) #5
  %100 = load ptr, ptr %0, align 8, !tbaa !20
  %101 = call i32 @gx_cpath_from_rectangle(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef %100) #5
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %69
  %104 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %105 = load ptr, ptr %104, align 8, !tbaa !41
  call void @gx_cpath_release(ptr noundef %105) #5
  %106 = load ptr, ptr %104, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %106, ptr noundef nonnull align 8 dereferenceable(280) %2, i64 280, i1 false), !tbaa.struct !65
  %107 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 30
  store i32 -1, ptr %107, align 8, !tbaa !66
  br label %108

108:                                              ; preds = %69, %103
  %109 = phi i32 [ 0, %103 ], [ %101, %69 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  ret i32 %109
}

declare ptr @gs_currentdevice(ptr noundef) local_unnamed_addr #1

declare i32 @gs_defaultmatrix(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_bbox_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_clip_to_rectangle(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gx_clip_path_s, align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #5
  %4 = load ptr, ptr %0, align 8, !tbaa !20
  %5 = call i32 @gx_cpath_from_rectangle(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %4) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @gx_cpath_release(ptr noundef %9) #5
  %10 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %10, ptr noundef nonnull align 8 dereferenceable(280) %3, i64 280, i1 false), !tbaa.struct !65
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 30
  store i32 -1, ptr %11, align 8, !tbaa !66
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ 0, %7 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #5
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_clip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_path_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #5
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 6
  %6 = load float, ptr %5, align 4, !tbaa !67
  %7 = fmul float %6, 4.096000e+03
  %8 = fptosi float %7 to i64
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 5
  %13 = call i32 @gx_path_copy_reducing(ptr noundef %4, ptr noundef nonnull %2, i64 noundef %8, i32 noundef %12) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = call i32 @gx_cpath_intersect(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %2, i32 noundef -1) #5
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  call void @gx_path_release(ptr noundef nonnull %2) #5
  br label %21

21:                                               ; preds = %20, %15
  %22 = icmp slt i32 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 30
  store i32 -1, ptr %24, align 8, !tbaa !66
  br label %25

25:                                               ; preds = %1, %21, %23
  %26 = phi i32 [ 0, %23 ], [ %13, %1 ], [ %18, %21 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #5
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_eoclip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_path_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #5
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 6
  %6 = load float, ptr %5, align 4, !tbaa !67
  %7 = fmul float %6, 4.096000e+03
  %8 = fptosi float %7 to i64
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !68
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 5
  %13 = call i32 @gx_path_copy_reducing(ptr noundef %4, ptr noundef nonnull %2, i64 noundef %8, i32 noundef %12) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = call i32 @gx_cpath_intersect(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %2, i32 noundef 1) #5
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  call void @gx_path_release(ptr noundef nonnull %2) #5
  br label %21

21:                                               ; preds = %20, %15
  %22 = icmp slt i32 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 30
  store i32 1, ptr %24, align 8, !tbaa !66
  br label %25

25:                                               ; preds = %1, %21, %23
  %26 = phi i32 [ 0, %23 ], [ %13, %1 ], [ %18, %21 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #5
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setclipoutside(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = tail call i32 @gx_cpath_set_outside(ptr noundef %4, i32 noundef %1) #5
  ret i32 %5
}

declare i32 @gx_cpath_set_outside(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_currentclipoutside(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = tail call i32 @gx_cpath_is_outside(ptr noundef %3) #5
  ret i32 %4
}

declare i32 @gx_cpath_is_outside(ptr noundef) local_unnamed_addr #1

declare i32 @gx_cpath_from_rectangle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gx_cpath_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_clip_to_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_path_s, align 8
  %3 = alloca %struct.gx_clip_path_s, align 8
  %4 = alloca %struct.gs_fixed_rect_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = call i32 @gx_path_bbox(ptr noundef %6, ptr noundef nonnull %4) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #5
  %10 = load ptr, ptr %0, align 8, !tbaa !20
  %11 = call i32 @gx_cpath_from_rectangle(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %10) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  call void @gx_cpath_release(ptr noundef %15) #5
  %16 = load ptr, ptr %14, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %16, ptr noundef nonnull align 8 dereferenceable(280) %3, i64 280, i1 false), !tbaa.struct !65
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 30
  store i32 -1, ptr %17, align 8, !tbaa !66
  br label %18

18:                                               ; preds = %9, %13
  %19 = phi i32 [ 0, %13 ], [ %11, %9 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #5
  %22 = load ptr, ptr %5, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !67
  %25 = fmul float %24, 4.096000e+03
  %26 = fptosi float %25 to i64
  %27 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !68
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 1, i32 5
  %31 = call i32 @gx_path_copy_reducing(ptr noundef %22, ptr noundef nonnull %2, i64 noundef %26, i32 noundef %30) #5
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 29
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = call i32 @gx_cpath_intersect(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %2, i32 noundef -1) #5
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  call void @gx_path_release(ptr noundef nonnull %2) #5
  br label %39

39:                                               ; preds = %38, %33
  %40 = icmp slt i32 %36, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 30
  store i32 -1, ptr %42, align 8, !tbaa !66
  br label %43

43:                                               ; preds = %21, %39, %41
  %44 = phi i32 [ 0, %41 ], [ %31, %21 ], [ %36, %39 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #5
  br label %45

45:                                               ; preds = %1, %18, %43
  %46 = phi i32 [ %44, %43 ], [ %7, %1 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  ret i32 %46
}

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_cpath_intersect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!20 = !{!6, !7, i64 0}
!21 = !{!22, !8, i64 121}
!22 = !{!"gx_path_s", !7, i64 0, !23, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !12, i64 64, !12, i64 68, !17, i64 72, !24, i64 88, !24, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!23 = !{!"gs_fixed_rect_s", !17, i64 0, !17, i64 16}
!24 = !{!"gs_point_s", !25, i64 0, !25, i64 8}
!25 = !{!"double", !8, i64 0}
!26 = !{!22, !8, i64 120}
!27 = !{!22, !25, i64 104}
!28 = !{!22, !25, i64 88}
!29 = !{!22, !25, i64 112}
!30 = !{!22, !25, i64 96}
!31 = !{!6, !7, i64 320}
!32 = !{!17, !15, i64 0}
!33 = !{!17, !15, i64 8}
!34 = !{!6, !12, i64 412}
!35 = !{!24, !25, i64 0}
!36 = !{!24, !25, i64 8}
!37 = !{i64 0, i64 8, !38, i64 8, i64 8, !38}
!38 = !{!25, !25, i64 0}
!39 = !{!22, !15, i64 72}
!40 = !{!22, !15, i64 80}
!41 = !{!6, !7, i64 400}
!42 = !{i64 0, i64 8, !43, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !43, i64 64, i64 4, !45, i64 68, i64 4, !45, i64 72, i64 8, !44, i64 80, i64 8, !44, i64 88, i64 8, !38, i64 96, i64 8, !38, i64 104, i64 8, !38, i64 112, i64 8, !38, i64 120, i64 1, !46, i64 121, i64 1, !46, i64 122, i64 1, !46, i64 123, i64 1, !46}
!43 = !{!7, !7, i64 0}
!44 = !{!15, !15, i64 0}
!45 = !{!12, !12, i64 0}
!46 = !{!8, !8, i64 0}
!47 = !{!48, !12, i64 96}
!48 = !{!"gx_device_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !49, i64 48, !12, i64 64, !12, i64 68, !8, i64 72, !8, i64 80, !12, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !12, i64 160, !50, i64 168, !51, i64 192}
!49 = !{!"gx_device_color_info_s", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14}
!50 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!51 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!52 = !{!11, !11, i64 0}
!53 = !{!54, !25, i64 0}
!54 = !{!"gs_rect_s", !24, i64 0, !24, i64 16}
!55 = !{!54, !25, i64 8}
!56 = !{!54, !25, i64 16}
!57 = !{!48, !7, i64 200}
!58 = !{!18, !11, i64 16}
!59 = !{!18, !11, i64 20}
!60 = !{!54, !25, i64 24}
!61 = !{!23, !15, i64 0}
!62 = !{!23, !15, i64 8}
!63 = !{!23, !15, i64 16}
!64 = !{!23, !15, i64 24}
!65 = !{i64 0, i64 8, !43, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !43, i64 64, i64 4, !45, i64 68, i64 4, !45, i64 72, i64 8, !44, i64 80, i64 8, !44, i64 88, i64 8, !38, i64 96, i64 8, !38, i64 104, i64 8, !38, i64 112, i64 8, !38, i64 120, i64 1, !46, i64 121, i64 1, !46, i64 122, i64 1, !46, i64 123, i64 1, !46, i64 128, i64 4, !45, i64 136, i64 8, !44, i64 144, i64 8, !44, i64 152, i64 8, !44, i64 160, i64 8, !44, i64 168, i64 8, !44, i64 176, i64 8, !44, i64 184, i64 8, !44, i64 192, i64 8, !44, i64 200, i64 8, !43, i64 208, i64 8, !43, i64 216, i64 4, !45, i64 220, i64 4, !45, i64 224, i64 4, !45, i64 228, i64 4, !45, i64 232, i64 1, !46, i64 240, i64 8, !43, i64 248, i64 8, !43, i64 256, i64 4, !45, i64 260, i64 4, !45, i64 264, i64 1, !46, i64 265, i64 1, !46, i64 272, i64 8, !44}
!66 = !{!6, !12, i64 408}
!67 = !{!6, !11, i64 140}
!68 = !{!6, !12, i64 164}
