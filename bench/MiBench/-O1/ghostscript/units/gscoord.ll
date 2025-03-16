; ModuleID = 'gscoord.c'
source_filename = "gscoord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gs_point_s = type { double, double }
%struct.fixed_coeff = type { %struct.coeff1, %struct.coeff1, %struct.coeff1, %struct.coeff1, i32, i32, i32, i64 }
%struct.coeff1 = type { i64, i64 }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_initmatrix(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !20
  br label %33

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  call void @gs_deviceinitialmatrix(ptr noundef %10, ptr noundef nonnull %2) #10
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 15
  %12 = load float, ptr %11, align 4, !tbaa !21
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 13
  %14 = load float, ptr %13, align 4, !tbaa !21
  %15 = fmul float %12, %14
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 14
  %17 = load float, ptr %16, align 4, !tbaa !21
  %18 = fdiv float %15, %17
  %19 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !23
  %21 = fadd float %20, %18
  store float %21, ptr %19, align 4, !tbaa !23
  %22 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 15, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !21
  %24 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 13, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !21
  %26 = fmul float %23, %25
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 14, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !21
  %29 = fdiv float %26, %28
  %30 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  %31 = load float, ptr %30, align 4, !tbaa !24
  %32 = fadd float %31, %29
  store float %32, ptr %30, align 4, !tbaa !24
  br label %33

33:                                               ; preds = %6, %8
  %34 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %34, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %35, align 8, !tbaa !26
  %36 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 4
  %37 = load float, ptr %36, align 4, !tbaa !23
  %38 = fcmp oge float %37, 0xC320000000000000
  %39 = fcmp olt float %37, 0x4320000000000000
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  %43 = load float, ptr %42, align 4, !tbaa !24
  %44 = fcmp oge float %43, 0xC320000000000000
  %45 = fcmp olt float %43, 0x4320000000000000
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = fmul float %37, 4.096000e+03
  %49 = fptosi float %48 to i64
  %50 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 6
  store i64 %49, ptr %50, align 8, !tbaa !27
  %51 = sitofp i64 %49 to double
  %52 = fmul double %51, 0x3F30000000000000
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 4
  store float %53, ptr %54, align 8, !tbaa !28
  %55 = fmul float %43, 4.096000e+03
  %56 = fptosi float %55 to i64
  %57 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 7
  store i64 %56, ptr %57, align 8, !tbaa !29
  %58 = sitofp i64 %56 to double
  %59 = fmul double %58, 0x3F30000000000000
  %60 = fptrunc double %59 to float
  br label %65

61:                                               ; preds = %41, %33
  %62 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 4
  store float %37, ptr %62, align 8, !tbaa !28
  %63 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !24
  br label %65

65:                                               ; preds = %61, %47
  %66 = phi float [ %64, %61 ], [ %60, %47 ]
  %67 = phi i32 [ 0, %61 ], [ 1, %47 ]
  %68 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 5
  store float %66, ptr %68, align 4, !tbaa !30
  %69 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %70 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 8
  store i32 %67, ptr %70, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_defaultmatrix(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !20
  br label %33

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  tail call void @gs_deviceinitialmatrix(ptr noundef %10, ptr noundef %1) #10
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 15
  %12 = load float, ptr %11, align 4, !tbaa !21
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 13
  %14 = load float, ptr %13, align 4, !tbaa !21
  %15 = fmul float %12, %14
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 14
  %17 = load float, ptr %16, align 4, !tbaa !21
  %18 = fdiv float %15, %17
  %19 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !23
  %21 = fadd float %20, %18
  store float %21, ptr %19, align 4, !tbaa !23
  %22 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 15, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !21
  %24 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 13, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !21
  %26 = fmul float %23, %25
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 14, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !21
  %29 = fdiv float %26, %28
  %30 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %31 = load float, ptr %30, align 4, !tbaa !24
  %32 = fadd float %31, %29
  store float %32, ptr %30, align 4, !tbaa !24
  br label %33

33:                                               ; preds = %8, %6
  %34 = phi i32 [ 1, %6 ], [ 0, %8 ]
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @gs_deviceinitialmatrix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_setdefaultmatrix(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !20
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 27
  store i32 %7, ptr %8, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_currentmatrix(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !20
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setcharmatrix(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %5 = call i32 @gs_matrix_multiply(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 4
  %9 = load float, ptr %8, align 4, !tbaa !23
  %10 = fcmp oge float %9, 0xC320000000000000
  %11 = fcmp olt float %9, 0x4320000000000000
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 5
  %15 = load float, ptr %14, align 4, !tbaa !24
  %16 = fcmp oge float %15, 0xC320000000000000
  %17 = fcmp olt float %15, 0x4320000000000000
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = fmul float %9, 4.096000e+03
  %21 = fptosi float %20 to i64
  %22 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 6
  store i64 %21, ptr %22, align 8, !tbaa !32
  %23 = sitofp i64 %21 to double
  %24 = fmul double %23, 0x3F30000000000000
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 4
  store float %25, ptr %26, align 8, !tbaa !33
  %27 = fmul float %15, 4.096000e+03
  %28 = fptosi float %27 to i64
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 7
  store i64 %28, ptr %29, align 8, !tbaa !34
  %30 = sitofp i64 %28 to double
  %31 = fmul double %30, 0x3F30000000000000
  %32 = fptrunc double %31 to float
  br label %37

33:                                               ; preds = %13, %7
  %34 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 4
  store float %9, ptr %34, align 8, !tbaa !33
  %35 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 5
  %36 = load float, ptr %35, align 4, !tbaa !24
  br label %37

37:                                               ; preds = %33, %19
  %38 = phi float [ %36, %33 ], [ %32, %19 ]
  %39 = phi i32 [ 0, %33 ], [ 1, %19 ]
  %40 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 5
  store float %38, ptr %40, align 4, !tbaa !35
  %41 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 8
  store i32 %39, ptr %42, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !20
  %43 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  store i32 1, ptr %43, align 8, !tbaa !26
  br label %44

44:                                               ; preds = %2, %37
  %45 = phi i32 [ 0, %37 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %45
}

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_currentcharmatrix(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_matrix_s, align 4
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  %6 = load i32, ptr %5, align 8, !tbaa !26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 35
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = getelementptr inbounds %struct.gs_font_s, ptr %12, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %15 = call i32 @gs_matrix_multiply(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %4) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.gs_matrix_s, ptr %4, i64 0, i32 4
  %19 = load float, ptr %18, align 4, !tbaa !23
  %20 = fcmp oge float %19, 0xC320000000000000
  %21 = fcmp olt float %19, 0x4320000000000000
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.gs_matrix_s, ptr %4, i64 0, i32 5
  %25 = load float, ptr %24, align 4, !tbaa !24
  %26 = fcmp oge float %25, 0xC320000000000000
  %27 = fcmp olt float %25, 0x4320000000000000
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = fmul float %19, 4.096000e+03
  %31 = fptosi float %30 to i64
  %32 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 6
  store i64 %31, ptr %32, align 8, !tbaa !32
  %33 = sitofp i64 %31 to double
  %34 = fmul double %33, 0x3F30000000000000
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 4
  store float %35, ptr %36, align 8, !tbaa !33
  %37 = fmul float %25, 4.096000e+03
  %38 = fptosi float %37 to i64
  %39 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 7
  store i64 %38, ptr %39, align 8, !tbaa !34
  %40 = sitofp i64 %38 to double
  %41 = fmul double %40, 0x3F30000000000000
  %42 = fptrunc double %41 to float
  br label %47

43:                                               ; preds = %23, %17
  %44 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 4
  store float %19, ptr %44, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.gs_matrix_s, ptr %4, i64 0, i32 5
  %46 = load float, ptr %45, align 4, !tbaa !24
  br label %47

47:                                               ; preds = %43, %29
  %48 = phi float [ %46, %43 ], [ %42, %29 ]
  %49 = phi i32 [ 0, %43 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 5
  store float %48, ptr %50, align 4, !tbaa !35
  %51 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37
  %52 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 8
  store i32 %49, ptr %52, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !20
  store i32 1, ptr %5, align 8, !tbaa !26
  br label %53

53:                                               ; preds = %10, %47
  %54 = phi i32 [ 0, %47 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %55 = icmp sgt i32 %54, -1
  br label %56

56:                                               ; preds = %53, %8
  %57 = phi i32 [ -23, %8 ], [ %54, %53 ]
  %58 = phi i1 [ false, %8 ], [ %55, %53 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %3
  %60 = icmp eq ptr %1, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %62, i64 24, i1 false), !tbaa.struct !20
  br label %63

63:                                               ; preds = %59, %61, %56
  %64 = phi i32 [ %57, %56 ], [ 0, %61 ], [ 0, %59 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_setmatrix(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %3, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %4, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  %6 = load float, ptr %5, align 4, !tbaa !23
  %7 = fcmp oge float %6, 0xC320000000000000
  %8 = fcmp olt float %6, 0x4320000000000000
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %12 = load float, ptr %11, align 4, !tbaa !24
  %13 = fcmp oge float %12, 0xC320000000000000
  %14 = fcmp olt float %12, 0x4320000000000000
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = fmul float %6, 4.096000e+03
  %18 = fptosi float %17 to i64
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 6
  store i64 %18, ptr %19, align 8, !tbaa !27
  %20 = sitofp i64 %18 to double
  %21 = fmul double %20, 0x3F30000000000000
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 4
  store float %22, ptr %23, align 8, !tbaa !28
  %24 = fmul float %12, 4.096000e+03
  %25 = fptosi float %24 to i64
  %26 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 7
  store i64 %25, ptr %26, align 8, !tbaa !29
  %27 = sitofp i64 %25 to double
  %28 = fmul double %27, 0x3F30000000000000
  %29 = fptrunc double %28 to float
  br label %34

30:                                               ; preds = %10, %2
  %31 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 4
  store float %6, ptr %31, align 8, !tbaa !28
  %32 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %33 = load float, ptr %32, align 4, !tbaa !24
  br label %34

34:                                               ; preds = %30, %16
  %35 = phi float [ %33, %30 ], [ %29, %16 ]
  %36 = phi i32 [ 0, %30 ], [ 1, %16 ]
  %37 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 5
  store float %35, ptr %37, align 4, !tbaa !30
  %38 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %39 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 8
  store i32 %36, ptr %39, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !20
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_imager_setmatrix(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  %4 = load float, ptr %3, align 4, !tbaa !23
  %5 = fcmp oge float %4, 0xC320000000000000
  %6 = fcmp olt float %4, 0x4320000000000000
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %10 = load float, ptr %9, align 4, !tbaa !24
  %11 = fcmp oge float %10, 0xC320000000000000
  %12 = fcmp olt float %10, 0x4320000000000000
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = fmul float %4, 4.096000e+03
  %16 = fptosi float %15 to i64
  %17 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2, i32 6
  store i64 %16, ptr %17, align 8, !tbaa !38
  %18 = sitofp i64 %16 to double
  %19 = fmul double %18, 0x3F30000000000000
  %20 = fptrunc double %19 to float
  %21 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2, i32 4
  store float %20, ptr %21, align 8, !tbaa !40
  %22 = fmul float %10, 4.096000e+03
  %23 = fptosi float %22 to i64
  %24 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2, i32 7
  store i64 %23, ptr %24, align 8, !tbaa !41
  %25 = sitofp i64 %23 to double
  %26 = fmul double %25, 0x3F30000000000000
  %27 = fptrunc double %26 to float
  br label %32

28:                                               ; preds = %8, %2
  %29 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2, i32 4
  store float %4, ptr %29, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %31 = load float, ptr %30, align 4, !tbaa !24
  br label %32

32:                                               ; preds = %28, %14
  %33 = phi float [ %31, %28 ], [ %27, %14 ]
  %34 = phi i32 [ 0, %28 ], [ 1, %14 ]
  %35 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2, i32 5
  store float %33, ptr %35, align 4, !tbaa !42
  %36 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2
  %37 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2, i32 8
  store i32 %34, ptr %37, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !20
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_settocharmatrix(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  %3 = load i32, ptr %2, align 8, !tbaa !26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !44
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %8, align 8, !tbaa !25
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i32 [ 0, %5 ], [ -23, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_translate(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %6 = call i32 @gs_distance_transform(double noundef %1, double noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 4
  %10 = load float, ptr %9, align 8, !tbaa !28
  %11 = fpext float %10 to double
  %12 = load double, ptr %4, align 8, !tbaa !47
  %13 = fadd double %12, %11
  store double %13, ptr %4, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 5
  %15 = load float, ptr %14, align 4, !tbaa !30
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !tbaa !50
  %19 = fadd double %18, %16
  store double %19, ptr %17, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %20, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %21, align 8, !tbaa !26
  %22 = fcmp oge double %13, 0xC320000000000000
  %23 = fcmp olt double %13, 0x4320000000000000
  %24 = and i1 %22, %23
  %25 = fcmp oge double %19, 0xC320000000000000
  %26 = select i1 %24, i1 %25, i1 false
  %27 = fcmp olt double %19, 0x4320000000000000
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %41

29:                                               ; preds = %8
  %30 = fmul double %13, 4.096000e+03
  %31 = fptosi double %30 to i64
  %32 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 6
  store i64 %31, ptr %32, align 8, !tbaa !27
  %33 = sitofp i64 %31 to double
  %34 = fmul double %33, 0x3F30000000000000
  %35 = fptrunc double %34 to float
  store float %35, ptr %9, align 8, !tbaa !28
  %36 = fmul double %19, 4.096000e+03
  %37 = fptosi double %36 to i64
  %38 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 7
  store i64 %37, ptr %38, align 8, !tbaa !29
  %39 = sitofp i64 %37 to double
  %40 = fmul double %39, 0x3F30000000000000
  br label %43

41:                                               ; preds = %8
  %42 = fptrunc double %13 to float
  store float %42, ptr %9, align 8, !tbaa !28
  br label %43

43:                                               ; preds = %41, %29
  %44 = phi double [ %19, %41 ], [ %40, %29 ]
  %45 = phi i32 [ 0, %41 ], [ 1, %29 ]
  %46 = fptrunc double %44 to float
  store float %46, ptr %14, align 4, !tbaa !30
  %47 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 8
  store i32 %45, ptr %47, align 8, !tbaa !31
  br label %48

48:                                               ; preds = %3, %43
  %49 = phi i32 [ 0, %43 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %49
}

declare i32 @gs_distance_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_scale(ptr nocapture noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !51
  %6 = fpext float %5 to double
  %7 = fmul double %6, %1
  %8 = fptrunc double %7 to float
  store float %8, ptr %4, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fpext float %10 to double
  %12 = fmul double %11, %1
  %13 = fptrunc double %12 to float
  store float %13, ptr %9, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !53
  %16 = fpext float %15 to double
  %17 = fmul double %16, %2
  %18 = fptrunc double %17 to float
  store float %18, ptr %14, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !54
  %21 = fpext float %20 to double
  %22 = fmul double %21, %2
  %23 = fptrunc double %22 to float
  store float %23, ptr %19, align 4, !tbaa !54
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %24, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %25, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_rotate(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %4 = tail call i32 @gs_matrix_rotate(ptr noundef nonnull %3, double noundef %1, ptr noundef nonnull %3) #10
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %6, align 8, !tbaa !26
  ret i32 %4
}

declare i32 @gs_matrix_rotate(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_concat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %5 = call i32 @gs_matrix_multiply(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %8, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %9, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 4
  %11 = load float, ptr %10, align 4, !tbaa !23
  %12 = fcmp oge float %11, 0xC320000000000000
  %13 = fcmp olt float %11, 0x4320000000000000
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 5
  %17 = load float, ptr %16, align 4, !tbaa !24
  %18 = fcmp oge float %17, 0xC320000000000000
  %19 = fcmp olt float %17, 0x4320000000000000
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = fmul float %11, 4.096000e+03
  %23 = fptosi float %22 to i64
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 6
  store i64 %23, ptr %24, align 8, !tbaa !27
  %25 = sitofp i64 %23 to double
  %26 = fmul double %25, 0x3F30000000000000
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 4
  store float %27, ptr %28, align 8, !tbaa !28
  %29 = fmul float %17, 4.096000e+03
  %30 = fptosi float %29 to i64
  %31 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 7
  store i64 %30, ptr %31, align 8, !tbaa !29
  %32 = sitofp i64 %30 to double
  %33 = fmul double %32, 0x3F30000000000000
  %34 = fptrunc double %33 to float
  br label %39

35:                                               ; preds = %15, %7
  %36 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 4
  store float %11, ptr %36, align 8, !tbaa !28
  %37 = getelementptr inbounds %struct.gs_matrix_s, ptr %3, i64 0, i32 5
  %38 = load float, ptr %37, align 4, !tbaa !24
  br label %39

39:                                               ; preds = %35, %21
  %40 = phi float [ %38, %35 ], [ %34, %21 ]
  %41 = phi i32 [ 0, %35 ], [ 1, %21 ]
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 5
  store float %40, ptr %42, align 4, !tbaa !30
  %43 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 8
  store i32 %41, ptr %43, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !20
  br label %44

44:                                               ; preds = %2, %39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_transform(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %6 = tail call i32 @gs_point_transform(double noundef %1, double noundef %2, ptr noundef nonnull %5, ptr noundef %3) #10
  ret i32 %6
}

declare i32 @gs_point_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_dtransform(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %6 = tail call i32 @gs_distance_transform(double noundef %1, double noundef %2, ptr noundef nonnull %5, ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_itransform(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = fcmp oeq float %7, 0.000000e+00
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 2
  %11 = load float, ptr %10, align 8, !tbaa !53
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %4
  %14 = load float, ptr %5, align 8, !tbaa !51
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !54
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %9
  %21 = tail call i32 @gs_point_transform_inverse(double noundef %1, double noundef %2, ptr noundef nonnull %5, ptr noundef %3) #10
  br label %37

22:                                               ; preds = %16, %13
  %23 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  %24 = load i32, ptr %23, align 8, !tbaa !25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 24
  %28 = tail call i32 @gs_matrix_invert(ptr noundef nonnull %5, ptr noundef nonnull %27) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, ptr %23, align 8, !tbaa !25
  br label %31

31:                                               ; preds = %26, %30
  %32 = phi i32 [ 0, %30 ], [ %28, %26 ]
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %22
  %35 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 24
  %36 = tail call i32 @gs_point_transform(double noundef %1, double noundef %2, ptr noundef nonnull %35, ptr noundef %3) #10
  br label %37

37:                                               ; preds = %31, %34, %20
  %38 = phi i32 [ %21, %20 ], [ %36, %34 ], [ %32, %31 ]
  ret i32 %38
}

declare i32 @gs_point_transform_inverse(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_idtransform(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !52
  %8 = fcmp oeq float %7, 0.000000e+00
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 2
  %11 = load float, ptr %10, align 8, !tbaa !53
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %4
  %14 = load float, ptr %5, align 8, !tbaa !51
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !54
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %9
  %21 = tail call i32 @gs_distance_transform_inverse(double noundef %1, double noundef %2, ptr noundef nonnull %5, ptr noundef %3) #10
  br label %37

22:                                               ; preds = %16, %13
  %23 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  %24 = load i32, ptr %23, align 8, !tbaa !25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 24
  %28 = tail call i32 @gs_matrix_invert(ptr noundef nonnull %5, ptr noundef nonnull %27) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, ptr %23, align 8, !tbaa !25
  br label %31

31:                                               ; preds = %26, %30
  %32 = phi i32 [ 0, %30 ], [ %28, %26 ]
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %22
  %35 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 24
  %36 = tail call i32 @gs_distance_transform(double noundef %1, double noundef %2, ptr noundef nonnull %35, ptr noundef %3) #10
  br label %37

37:                                               ; preds = %31, %34, %20
  %38 = phi i32 [ %21, %20 ], [ %36, %34 ], [ %32, %31 ]
  ret i32 %38
}

declare i32 @gs_distance_transform_inverse(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_imager_idtransform(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2
  %6 = tail call i32 @gs_distance_transform_inverse(double noundef %1, double noundef %2, ptr noundef nonnull %5, ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_translate_to_fixed(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = sitofp i64 %1 to double
  %5 = fmul double %4, 0x3F30000000000000
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 4
  %7 = load float, ptr %6, align 8, !tbaa !28
  %8 = fpext float %7 to double
  %9 = fsub double %5, %8
  %10 = sitofp i64 %2 to double
  %11 = fmul double %10, 0x3F30000000000000
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 5
  %13 = load float, ptr %12, align 4, !tbaa !30
  %14 = fpext float %13 to double
  %15 = fsub double %11, %14
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !31
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %3
  %20 = fmul double %9, 4.096000e+03
  %21 = fptosi double %20 to i64
  %22 = fmul double %15, 4.096000e+03
  %23 = fptosi double %22 to i64
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = tail call i32 @gx_path_translate(ptr noundef %25, i64 noundef %21, i64 noundef %23) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  %30 = load i32, ptr %29, align 8, !tbaa !26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !36
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 6
  %38 = load i64, ptr %37, align 8, !tbaa !32
  %39 = add nsw i64 %38, %21
  store i64 %39, ptr %37, align 8, !tbaa !32
  %40 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !34
  %42 = add nsw i64 %41, %23
  store i64 %42, ptr %40, align 8, !tbaa !34
  br label %48

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  %46 = tail call i32 @gx_path_is_null(ptr noundef %45) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %43, %28, %32, %36
  %49 = fptrunc double %5 to float
  store float %49, ptr %6, align 8, !tbaa !28
  %50 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 6
  store i64 %1, ptr %50, align 8, !tbaa !27
  %51 = fptrunc double %11 to float
  store float %51, ptr %12, align 4, !tbaa !30
  %52 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 7
  store i64 %2, ptr %52, align 8, !tbaa !29
  store i32 1, ptr %16, align 8, !tbaa !31
  %53 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %53, align 8, !tbaa !25
  %54 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  %55 = load i32, ptr %54, align 8, !tbaa !26
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 4
  %59 = load float, ptr %58, align 8, !tbaa !33
  %60 = fpext float %59 to double
  %61 = fadd double %9, %60
  %62 = fptrunc double %61 to float
  store float %62, ptr %58, align 8, !tbaa !33
  %63 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !35
  %65 = fpext float %64 to double
  %66 = fadd double %15, %65
  %67 = fptrunc double %66 to float
  store float %67, ptr %63, align 4, !tbaa !35
  br label %68

68:                                               ; preds = %48, %57, %43, %19
  %69 = phi i32 [ %26, %19 ], [ -13, %43 ], [ 0, %57 ], [ 0, %48 ]
  ret i32 %69
}

declare i32 @gx_path_translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gx_path_is_null(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_scale_char_matrix(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = sitofp i32 %1 to float
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %8 = load float, ptr %7, align 8, !tbaa !51
  %9 = fmul float %8, %6
  store float %9, ptr %7, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 2
  %11 = load float, ptr %10, align 8, !tbaa !53
  %12 = fmul float %11, %6
  store float %12, ptr %10, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %13, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  %15 = load i32, ptr %14, align 8, !tbaa !26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37
  %19 = load float, ptr %18, align 8, !tbaa !56
  %20 = fmul float %19, %6
  store float %20, ptr %18, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !57
  %23 = fmul float %22, %6
  store float %23, ptr %21, align 8, !tbaa !57
  br label %24

24:                                               ; preds = %5, %17, %3
  %25 = icmp eq i32 %2, 1
  br i1 %25, label %45, label %26

26:                                               ; preds = %24
  %27 = sitofp i32 %2 to float
  %28 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !52
  %30 = fmul float %29, %27
  store float %30, ptr %28, align 4, !tbaa !52
  %31 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !54
  %33 = fmul float %32, %27
  store float %33, ptr %31, align 4, !tbaa !54
  %34 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %34, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  %36 = load i32, ptr %35, align 8, !tbaa !26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !58
  %41 = fmul float %40, %27
  store float %41, ptr %39, align 4, !tbaa !58
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 37, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !59
  %44 = fmul float %43, %27
  store float %44, ptr %42, align 4, !tbaa !59
  br label %45

45:                                               ; preds = %26, %38, %24
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noundef i32 @gx_matrix_to_fixed_coeff(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 -10000, ptr %4, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = load float, ptr %0, align 4, !tbaa.struct !20
  %7 = getelementptr inbounds i8, ptr %0, i64 4
  %8 = load float, ptr %7, align 4, !tbaa.struct !60
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load float, ptr %9, align 4, !tbaa.struct !61
  %11 = getelementptr inbounds i8, ptr %0, i64 12
  %12 = load float, ptr %11, align 4, !tbaa.struct !62
  %13 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 4
  store i32 0, ptr %13, align 8, !tbaa !63
  %14 = fpext float %6 to double
  %15 = fcmp oeq float %6, 0.000000e+00
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call double @frexp(double noundef %14, ptr noundef nonnull %4) #10
  br label %18

18:                                               ; preds = %16, %3
  %19 = fpext float %8 to double
  %20 = fcmp oeq float %8, 0.000000e+00
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = call double @frexp(double noundef %19, ptr noundef nonnull %5) #10
  %23 = load i32, ptr %5, align 4, !tbaa !46
  %24 = load i32, ptr %4, align 4, !tbaa !46
  %25 = tail call i32 @llvm.smax.i32(i32 %23, i32 %24)
  store i32 %25, ptr %4, align 4
  store i32 1, ptr %13, align 8, !tbaa !63
  br label %26

26:                                               ; preds = %21, %18
  %27 = fpext float %10 to double
  %28 = fcmp oeq float %10, 0.000000e+00
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = call double @frexp(double noundef %27, ptr noundef nonnull %5) #10
  %31 = load i32, ptr %5, align 4, !tbaa !46
  %32 = load i32, ptr %4, align 4, !tbaa !46
  %33 = tail call i32 @llvm.smax.i32(i32 %31, i32 %32)
  store i32 %33, ptr %4, align 4
  store i32 1, ptr %13, align 8, !tbaa !63
  br label %34

34:                                               ; preds = %29, %26
  %35 = fpext float %12 to double
  %36 = fcmp oeq float %12, 0.000000e+00
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = call double @frexp(double noundef %35, ptr noundef nonnull %5) #10
  %39 = load i32, ptr %5, align 4, !tbaa !46
  %40 = load i32, ptr %4, align 4, !tbaa !46
  %41 = tail call i32 @llvm.smax.i32(i32 %39, i32 %40)
  store i32 %41, ptr %4, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, ptr %4, align 4, !tbaa !46
  %44 = add i32 %43, %2
  %45 = sub i32 63, %44
  store i32 %45, ptr %4, align 4, !tbaa !46
  %46 = sub i32 51, %44
  %47 = icmp sgt i32 %46, 0
  %48 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 5
  br i1 %47, label %49, label %54

49:                                               ; preds = %42
  store i32 %46, ptr %48, align 4, !tbaa !66
  %50 = sub i32 50, %44
  %51 = zext nneg i32 %50 to i64
  %52 = shl nuw i64 1, %51
  %53 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 7
  store i64 %52, ptr %53, align 8, !tbaa !67
  br label %57

54:                                               ; preds = %42
  store i32 0, ptr %48, align 4, !tbaa !66
  %55 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 7
  store i64 0, ptr %55, align 8, !tbaa !67
  %56 = sub nsw i32 %45, %46
  store i32 %56, ptr %4, align 4, !tbaa !46
  br label %57

57:                                               ; preds = %54, %49
  br i1 %15, label %58, label %60

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.coeff1, ptr %1, i64 0, i32 1
  store i64 0, ptr %59, align 8, !tbaa !68
  br label %67

60:                                               ; preds = %57
  %61 = tail call double @ldexp(double noundef %14, i32 noundef 12) #10
  %62 = fptosi double %61 to i64
  %63 = getelementptr inbounds %struct.coeff1, ptr %1, i64 0, i32 1
  store i64 %62, ptr %63, align 8, !tbaa !68
  %64 = load i32, ptr %4, align 4, !tbaa !46
  %65 = tail call double @ldexp(double noundef %14, i32 noundef %64) #10
  %66 = fptosi double %65 to i64
  br label %67

67:                                               ; preds = %60, %58
  %68 = phi i64 [ %66, %60 ], [ 0, %58 ]
  store i64 %68, ptr %1, align 8, !tbaa !69
  br i1 %20, label %69, label %71

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %70, i8 0, i64 16, i1 false)
  br label %79

71:                                               ; preds = %67
  %72 = tail call double @ldexp(double noundef %19, i32 noundef 12) #10
  %73 = fptosi double %72 to i64
  %74 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 1
  %75 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 1, i32 1
  store i64 %73, ptr %75, align 8, !tbaa !70
  %76 = load i32, ptr %4, align 4, !tbaa !46
  %77 = tail call double @ldexp(double noundef %19, i32 noundef %76) #10
  %78 = fptosi double %77 to i64
  store i64 %78, ptr %74, align 8, !tbaa !71
  br label %79

79:                                               ; preds = %71, %69
  br i1 %28, label %80, label %82

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, i8 0, i64 16, i1 false)
  br label %90

82:                                               ; preds = %79
  %83 = tail call double @ldexp(double noundef %27, i32 noundef 12) #10
  %84 = fptosi double %83 to i64
  %85 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 2
  %86 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 2, i32 1
  store i64 %84, ptr %86, align 8, !tbaa !72
  %87 = load i32, ptr %4, align 4, !tbaa !46
  %88 = tail call double @ldexp(double noundef %27, i32 noundef %87) #10
  %89 = fptosi double %88 to i64
  store i64 %89, ptr %85, align 8, !tbaa !73
  br label %90

90:                                               ; preds = %82, %80
  br i1 %36, label %91, label %93

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %92, i8 0, i64 16, i1 false)
  br label %101

93:                                               ; preds = %90
  %94 = tail call double @ldexp(double noundef %35, i32 noundef 12) #10
  %95 = fptosi double %94 to i64
  %96 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 3
  %97 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 3, i32 1
  store i64 %95, ptr %97, align 8, !tbaa !74
  %98 = load i32, ptr %4, align 4, !tbaa !46
  %99 = tail call double @ldexp(double noundef %35, i32 noundef %98) #10
  %100 = fptosi double %99 to i64
  store i64 %100, ptr %96, align 8, !tbaa !75
  br label %101

101:                                              ; preds = %93, %91
  %102 = getelementptr inbounds %struct.fixed_coeff, ptr %1, i64 0, i32 6
  store i32 %2, ptr %102, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #7

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 388}
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
!20 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21, i64 12, i64 4, !21, i64 16, i64 4, !21, i64 20, i64 4, !21}
!21 = !{!11, !11, i64 0}
!22 = !{!6, !7, i64 536}
!23 = !{!18, !11, i64 16}
!24 = !{!18, !11, i64 20}
!25 = !{!6, !12, i64 360}
!26 = !{!6, !12, i64 504}
!27 = !{!6, !15, i64 104}
!28 = !{!6, !11, i64 96}
!29 = !{!6, !15, i64 112}
!30 = !{!6, !11, i64 100}
!31 = !{!6, !12, i64 120}
!32 = !{!6, !15, i64 480}
!33 = !{!6, !11, i64 472}
!34 = !{!6, !15, i64 488}
!35 = !{!6, !11, i64 476}
!36 = !{!6, !12, i64 496}
!37 = !{!6, !7, i64 440}
!38 = !{!39, !15, i64 104}
!39 = !{!"gs_imager_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!40 = !{!39, !11, i64 96}
!41 = !{!39, !15, i64 112}
!42 = !{!39, !11, i64 100}
!43 = !{!39, !12, i64 120}
!44 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21, i64 12, i64 4, !21, i64 16, i64 4, !21, i64 20, i64 4, !21, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 4, !46}
!45 = !{!15, !15, i64 0}
!46 = !{!12, !12, i64 0}
!47 = !{!48, !49, i64 0}
!48 = !{!"gs_point_s", !49, i64 0, !49, i64 8}
!49 = !{!"double", !8, i64 0}
!50 = !{!48, !49, i64 8}
!51 = !{!6, !11, i64 80}
!52 = !{!6, !11, i64 84}
!53 = !{!6, !11, i64 88}
!54 = !{!6, !11, i64 92}
!55 = !{!6, !7, i64 392}
!56 = !{!6, !11, i64 456}
!57 = !{!6, !11, i64 464}
!58 = !{!6, !11, i64 460}
!59 = !{!6, !11, i64 468}
!60 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21, i64 12, i64 4, !21, i64 16, i64 4, !21}
!61 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21, i64 12, i64 4, !21}
!62 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21}
!63 = !{!64, !12, i64 64}
!64 = !{!"", !65, i64 0, !65, i64 16, !65, i64 32, !65, i64 48, !12, i64 64, !12, i64 68, !12, i64 72, !15, i64 80}
!65 = !{!"", !15, i64 0, !15, i64 8}
!66 = !{!64, !12, i64 68}
!67 = !{!64, !15, i64 80}
!68 = !{!64, !15, i64 8}
!69 = !{!64, !15, i64 0}
!70 = !{!64, !15, i64 24}
!71 = !{!64, !15, i64 16}
!72 = !{!64, !15, i64 40}
!73 = !{!64, !15, i64 32}
!74 = !{!64, !15, i64 56}
!75 = !{!64, !15, i64 48}
!76 = !{!64, !12, i64 72}
