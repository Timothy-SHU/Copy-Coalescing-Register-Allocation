; ModuleID = 'blender/source/blender/editors/mesh/editmesh_bisect.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_bisect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmGesture = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.BisectData = type { %struct.BMBackup, i8, i16 }
%struct.BMBackup = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@.str = private unnamed_addr constant [7 x i8] c"Bisect\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Cut geometry along a plane (click-drag to define plane)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MESH_OT_bisect\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"plane_co\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Plane Point\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"A point on the plane\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"plane_no\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Plane Normal\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"The direction the plane points\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"use_fill\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Fill in the cut\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"clear_inner\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Clear Inner\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Remove geometry behind the plane\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"clear_outer\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Clear Outer\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Remove geometry in front of the plane\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Axis Threshold\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [86 x i8] c"bisect_plane geom=%hvef plane_co=%v plane_no=%v dist=%f clear_inner=%b clear_outer=%b\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"triangle_fill edges=%S normal=%v use_dissolve=%b\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"geom_cut.out\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"face_attribute_fill faces=%S use_normals=%b use_data=%b\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"xstart\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ystart\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"xend\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"yend\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Selected edges/faces required\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [20 x i8] c"inset_operator_data\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.32 = private unnamed_addr constant [37 x i8] c"LMB: Click and drag to draw cut line\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"LMB: Release to confirm cut line\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_bisect(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_bisect_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @mesh_bisect_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @mesh_bisect_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_straightline_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #6
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #6
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_float_vector(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #6
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #6
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #6
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #6
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #6
  %21 = load ptr, ptr %10, align 8, !tbaa !50
  %22 = tail call ptr @RNA_def_float(ptr noundef %21, ptr noundef nonnull @.str.18, float noundef 0x3F1A36E2E0000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0x3EE4F8B580000000, float noundef 0x3FB99999A0000000) #6
  tail call void @WM_operator_properties_gesture_straightline(ptr noundef nonnull %0, i32 noundef 1002) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_bisect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.BMOperator, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.BMOperator, align 8
  %13 = alloca %struct.BMOperator, align 8
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %15 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %16 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #6
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %18 = tail call ptr @BKE_editmesh_from_object(ptr noundef %17) #6
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #6
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = tail call float @RNA_float_get(ptr noundef %20, ptr noundef nonnull @.str.18) #6
  %22 = load ptr, ptr %19, align 8, !tbaa !51
  %23 = tail call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.9) #6
  %24 = load ptr, ptr %19, align 8, !tbaa !51
  %25 = tail call i32 @RNA_boolean_get(ptr noundef %24, ptr noundef nonnull @.str.12) #6
  %26 = load ptr, ptr %19, align 8, !tbaa !51
  %27 = tail call i32 @RNA_boolean_get(ptr noundef %26, ptr noundef nonnull @.str.15) #6
  %28 = load ptr, ptr %19, align 8, !tbaa !51
  %29 = tail call ptr @RNA_struct_find_property(ptr noundef %28, ptr noundef nonnull @.str.3) #6
  %30 = load ptr, ptr %19, align 8, !tbaa !51
  %31 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %30, ptr noundef %29) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load ptr, ptr %19, align 8, !tbaa !51
  call void @RNA_property_float_get_array(ptr noundef %34, ptr noundef %29, ptr noundef nonnull %8) #6
  br label %45

35:                                               ; preds = %2
  %36 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %14, ptr noundef %15) #6
  %37 = load float, ptr %36, align 4, !tbaa !53
  store float %37, ptr %8, align 4, !tbaa !53
  %38 = getelementptr inbounds float, ptr %36, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !53
  %40 = getelementptr inbounds float, ptr %8, i64 1
  store float %39, ptr %40, align 4, !tbaa !53
  %41 = getelementptr inbounds float, ptr %36, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !53
  %43 = getelementptr inbounds float, ptr %8, i64 2
  store float %42, ptr %43, align 4, !tbaa !53
  %44 = load ptr, ptr %19, align 8, !tbaa !51
  call void @RNA_property_float_set_array(ptr noundef %44, ptr noundef %29, ptr noundef nonnull %8) #6
  br label %45

45:                                               ; preds = %35, %33
  %46 = load ptr, ptr %19, align 8, !tbaa !51
  %47 = call ptr @RNA_struct_find_property(ptr noundef %46, ptr noundef nonnull @.str.6) #6
  %48 = load ptr, ptr %19, align 8, !tbaa !51
  %49 = call zeroext i8 @RNA_property_is_set(ptr noundef %48, ptr noundef %47) #6
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %19, align 8, !tbaa !51
  call void @RNA_property_float_get_array(ptr noundef %52, ptr noundef %47, ptr noundef nonnull %9) #6
  br label %69

53:                                               ; preds = %45
  %54 = icmp eq ptr %16, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 2, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !53
  store float %57, ptr %9, align 4, !tbaa !53
  %58 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 2, i64 1, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !53
  %60 = getelementptr inbounds float, ptr %9, i64 1
  store float %59, ptr %60, align 4, !tbaa !53
  %61 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 2, i64 1, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !53
  %63 = getelementptr inbounds float, ptr %9, i64 2
  store float %62, ptr %63, align 4, !tbaa !53
  br label %67

64:                                               ; preds = %53
  %65 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 0.000000e+00, ptr %65, align 4, !tbaa !53
  store float 0.000000e+00, ptr %9, align 4, !tbaa !53
  %66 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 1.000000e+00, ptr %66, align 4, !tbaa !53
  br label %67

67:                                               ; preds = %64, %55
  %68 = load ptr, ptr %19, align 8, !tbaa !51
  call void @RNA_property_float_set_array(ptr noundef %68, ptr noundef %47, ptr noundef nonnull %9) #6
  br label %69

69:                                               ; preds = %67, %51
  %70 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !55
  %72 = icmp eq ptr %71, null
  br i1 %72, label %144, label %73

73:                                               ; preds = %69
  %74 = call ptr @CTX_wm_region(ptr noundef %0) #6
  %75 = getelementptr inbounds %struct.ARegion, ptr %74, i64 0, i32 30
  %76 = load ptr, ptr %75, align 8, !tbaa !56
  %77 = load ptr, ptr %19, align 8, !tbaa !51
  %78 = call i32 @RNA_int_get(ptr noundef %77, ptr noundef nonnull @.str.26) #6
  %79 = load ptr, ptr %19, align 8, !tbaa !51
  %80 = call i32 @RNA_int_get(ptr noundef %79, ptr noundef nonnull @.str.27) #6
  %81 = load ptr, ptr %19, align 8, !tbaa !51
  %82 = call i32 @RNA_int_get(ptr noundef %81, ptr noundef nonnull @.str.28) #6
  %83 = load ptr, ptr %19, align 8, !tbaa !51
  %84 = call i32 @RNA_int_get(ptr noundef %83, ptr noundef nonnull @.str.29) #6
  %85 = getelementptr inbounds %struct.RegionView3D, ptr %76, i64 0, i32 22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %86 = sitofp i32 %78 to float
  store float %86, ptr %3, align 4, !tbaa !53
  %87 = getelementptr inbounds float, ptr %3, i64 1
  %88 = sitofp i32 %80 to float
  store float %88, ptr %87, align 4, !tbaa !53
  %89 = sitofp i32 %82 to float
  %90 = sitofp i32 %84 to float
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %91 = call float @ED_view3d_calc_zfac(ptr noundef %76, ptr noundef nonnull %85, ptr noundef null) #6
  %92 = getelementptr inbounds %struct.wmGesture, ptr %71, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !62
  call void @ED_view3d_win_to_vector(ptr noundef %74, ptr noundef nonnull %3, ptr noundef nonnull %5) #6
  %94 = load float, ptr %3, align 4, !tbaa !53
  %95 = fsub float %94, %89
  store float %95, ptr %4, align 4, !tbaa !53
  %96 = load float, ptr %87, align 4, !tbaa !53
  %97 = fsub float %96, %90
  %98 = getelementptr inbounds float, ptr %4, i64 1
  store float %97, ptr %98, align 4, !tbaa !53
  call void @ED_view3d_win_to_delta(ptr noundef %74, ptr noundef nonnull %4, ptr noundef nonnull %6, float noundef %91) #6
  %99 = getelementptr inbounds float, ptr %5, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !53
  %101 = getelementptr inbounds float, ptr %6, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !53
  %103 = getelementptr inbounds float, ptr %5, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !53
  %105 = getelementptr inbounds float, ptr %6, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !53
  %107 = fneg float %104
  %108 = fmul float %106, %107
  %109 = call float @llvm.fmuladd.f32(float %100, float %102, float %108)
  store float %109, ptr %9, align 4, !tbaa !53
  %110 = load float, ptr %6, align 4, !tbaa !53
  %111 = load float, ptr %5, align 4, !tbaa !53
  %112 = fneg float %111
  %113 = fmul float %102, %112
  %114 = call float @llvm.fmuladd.f32(float %104, float %110, float %113)
  %115 = getelementptr inbounds float, ptr %9, i64 1
  store float %114, ptr %115, align 4, !tbaa !53
  %116 = fneg float %100
  %117 = fmul float %110, %116
  %118 = call float @llvm.fmuladd.f32(float %111, float %106, float %117)
  %119 = getelementptr inbounds float, ptr %9, i64 2
  store float %118, ptr %119, align 4, !tbaa !53
  %120 = fmul float %114, %114
  %121 = call float @llvm.fmuladd.f32(float %109, float %109, float %120)
  %122 = call float @llvm.fmuladd.f32(float %118, float %118, float %121)
  %123 = fcmp ogt float %122, 0x38AA95A5C0000000
  br i1 %123, label %124, label %133

124:                                              ; preds = %73
  %125 = call float @sqrtf(float noundef %122) #6
  %126 = fdiv float 1.000000e+00, %125
  %127 = load float, ptr %9, align 4, !tbaa !53
  %128 = fmul float %127, %126
  store float %128, ptr %9, align 4, !tbaa !53
  %129 = load float, ptr %115, align 4, !tbaa !53
  %130 = fmul float %126, %129
  store float %130, ptr %115, align 4, !tbaa !53
  %131 = load float, ptr %119, align 4, !tbaa !53
  %132 = fmul float %126, %131
  br label %134

133:                                              ; preds = %73
  store float 0.000000e+00, ptr %9, align 4, !tbaa !53
  store float 0.000000e+00, ptr %115, align 4, !tbaa !53
  br label %134

134:                                              ; preds = %133, %124
  %135 = phi float [ 0.000000e+00, %133 ], [ %132, %124 ]
  store float %135, ptr %119, align 4, !tbaa !53
  call void @ED_view3d_win_to_3d(ptr noundef %74, ptr noundef nonnull %85, ptr noundef nonnull %3, ptr noundef nonnull %8) #6
  %136 = getelementptr inbounds %struct.BisectData, ptr %93, i64 0, i32 1
  %137 = load i8, ptr %136, align 8, !tbaa !64
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load ptr, ptr %93, align 8
  call void @EDBM_redo_state_restore(ptr %140, ptr noundef %18, i32 noundef 0) #6
  br label %141

141:                                              ; preds = %134, %139
  store i8 0, ptr %136, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %142 = load ptr, ptr %19, align 8, !tbaa !51
  call void @RNA_property_float_set_array(ptr noundef %142, ptr noundef %47, ptr noundef nonnull %9) #6
  %143 = load ptr, ptr %19, align 8, !tbaa !51
  call void @RNA_property_float_set_array(ptr noundef %143, ptr noundef %29, ptr noundef nonnull %8) #6
  br label %144

144:                                              ; preds = %141, %69
  %145 = load ptr, ptr %18, align 8, !tbaa !67
  %146 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  %147 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %146) #6
  call void @mul_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #6
  call void @mul_mat3_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #6
  %148 = fpext float %21 to double
  %149 = and i32 %25, 255
  %150 = and i32 %27, 255
  %151 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %18, ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull %8, ptr noundef nonnull %9, double noundef %148, i32 noundef %149, i32 noundef %150) #6
  call void @BMO_op_exec(ptr noundef %145, ptr noundef nonnull %7) #6
  call void @EDBM_flag_disable_all(ptr noundef nonnull %18, i8 noundef zeroext 1) #6
  %152 = and i32 %23, 255
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %200, label %154

154:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %13) #6
  %155 = load float, ptr %9, align 4, !tbaa !53
  %156 = getelementptr inbounds float, ptr %9, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !53
  %158 = fmul float %157, %157
  %159 = call float @llvm.fmuladd.f32(float %155, float %155, float %158)
  %160 = getelementptr inbounds float, ptr %9, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !53
  %162 = call float @llvm.fmuladd.f32(float %161, float %161, float %159)
  %163 = fcmp ogt float %162, 0x38AA95A5C0000000
  br i1 %163, label %164, label %174

164:                                              ; preds = %154
  %165 = call float @sqrtf(float noundef %162) #6
  %166 = fdiv float 1.000000e+00, %165
  %167 = load float, ptr %9, align 4, !tbaa !53
  %168 = fmul float %167, %166
  store float %168, ptr %11, align 4, !tbaa !53
  %169 = load float, ptr %156, align 4, !tbaa !53
  %170 = fmul float %166, %169
  %171 = getelementptr inbounds float, ptr %11, i64 1
  store float %170, ptr %171, align 4, !tbaa !53
  %172 = load float, ptr %160, align 4, !tbaa !53
  %173 = fmul float %166, %172
  br label %176

174:                                              ; preds = %154
  store float 0.000000e+00, ptr %11, align 4, !tbaa !53
  %175 = getelementptr inbounds float, ptr %11, i64 1
  store float 0.000000e+00, ptr %175, align 4, !tbaa !53
  br label %176

176:                                              ; preds = %164, %174
  %177 = phi float [ %173, %164 ], [ 0.000000e+00, %174 ]
  %178 = getelementptr inbounds float, ptr %11, i64 2
  store float %177, ptr %178, align 4, !tbaa !53
  %179 = icmp eq i32 %150, 1
  %180 = icmp eq i32 %149, 0
  %181 = and i1 %180, %179
  br i1 %181, label %182, label %191

182:                                              ; preds = %176
  %183 = load float, ptr %11, align 4, !tbaa !53
  %184 = fneg float %183
  store float %184, ptr %11, align 4, !tbaa !53
  %185 = getelementptr inbounds float, ptr %11, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !53
  %187 = fneg float %186
  store float %187, ptr %185, align 4, !tbaa !53
  %188 = getelementptr inbounds float, ptr %11, i64 2
  %189 = load float, ptr %188, align 4, !tbaa !53
  %190 = fneg float %189
  store float %190, ptr %188, align 4, !tbaa !53
  br label %191

191:                                              ; preds = %182, %176
  %192 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 12
  %193 = load i16, ptr %192, align 8, !tbaa !70
  %194 = sext i16 %193 to i32
  %195 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %145, ptr noundef nonnull %12, i32 noundef %194, ptr noundef nonnull @.str.22, ptr noundef nonnull %7, ptr noundef nonnull @.str.23, ptr noundef nonnull %11, i32 noundef 1) #6
  call void @BMO_op_exec(ptr noundef %145, ptr noundef nonnull %12) #6
  %196 = load i16, ptr %192, align 8, !tbaa !70
  %197 = sext i16 %196 to i32
  %198 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %145, ptr noundef nonnull %13, i32 noundef %197, ptr noundef nonnull @.str.24, ptr noundef nonnull %12, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 1) #6
  call void @BMO_op_exec(ptr noundef %145, ptr noundef nonnull %13) #6
  %199 = getelementptr inbounds %struct.BMOperator, ptr %12, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %145, ptr noundef nonnull %199, ptr noundef nonnull @.str.25, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @BMO_op_finish(ptr noundef %145, ptr noundef nonnull %13) #6
  call void @BMO_op_finish(ptr noundef %145, ptr noundef nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #6
  br label %200

200:                                              ; preds = %191, %144
  %201 = getelementptr inbounds %struct.BMOperator, ptr %7, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %145, ptr noundef nonnull %201, ptr noundef nonnull @.str.23, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %202 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %18, ptr noundef nonnull %7, ptr noundef %1, i8 noundef zeroext 1) #6
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  call void @EDBM_update_generic(ptr noundef nonnull %18, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @EDBM_selectmode_flush(ptr noundef nonnull %18) #6
  br label %205

205:                                              ; preds = %200, %204
  %206 = phi i32 [ 4, %204 ], [ 2, %200 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %7) #6
  ret i32 %206
}

; Function Attrs: nounwind uwtable
define internal i32 @mesh_bisect_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #6
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !71
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.30) #6
  br label %45

13:                                               ; preds = %3
  %14 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %18, ptr noundef nonnull @.str.3) #6
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !51
  %23 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %22, ptr noundef nonnull @.str.6) #6
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %13
  %26 = tail call i32 @mesh_bisect_exec(ptr noundef %0, ptr noundef %1), !range !75
  br label %45

27:                                               ; preds = %21, %16
  %28 = tail call i32 @WM_gesture_straightline_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %36 = tail call ptr %35(i64 noundef 16, ptr noundef nonnull @.str.31) #6
  %37 = tail call ptr @EDBM_redo_state_store(ptr noundef nonnull %5) #6
  store ptr %37, ptr %36, align 8, !tbaa.struct !77
  %38 = getelementptr inbounds %struct.BisectData, ptr %36, i64 0, i32 1
  store i8 1, ptr %38, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.wmGesture, ptr %34, i64 0, i32 9
  store ptr %36, ptr %39, align 8, !tbaa !62
  store i16 2, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !78
  %40 = getelementptr inbounds %struct.View3D, ptr %32, i64 0, i32 40
  %41 = load i8, ptr %40, align 1, !tbaa !80
  %42 = zext i8 %41 to i16
  %43 = getelementptr inbounds %struct.BisectData, ptr %36, i64 0, i32 2
  store i16 %42, ptr %43, align 2, !tbaa !82
  store i8 0, ptr %40, align 1, !tbaa !80
  %44 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  tail call void @ED_area_headerprint(ptr noundef %44, ptr noundef nonnull @.str.32) #6
  br label %45

45:                                               ; preds = %27, %31, %25, %10
  %46 = phi i32 [ 2, %10 ], [ %26, %25 ], [ %28, %31 ], [ %28, %27 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @mesh_bisect_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.BisectData, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmGesture, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !83
  %9 = tail call i32 @WM_gesture_straightline_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !86
  %12 = icmp eq i16 %11, 20514
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !89
  %16 = icmp eq i16 %15, 8
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  br i1 %16, label %18, label %19

18:                                               ; preds = %13
  tail call void @ED_area_headerprint(ptr noundef %17, ptr noundef nonnull @.str.33) #6
  br label %20

19:                                               ; preds = %13
  tail call void @ED_area_headerprint(ptr noundef %17, ptr noundef null) #6
  br label %20

20:                                               ; preds = %18, %19, %3
  %21 = and i32 %9, 6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  call void @EDBM_redo_state_free(ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #6
  %25 = getelementptr inbounds %struct.BisectData, ptr %4, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !82
  %27 = trunc i16 %26 to i8
  %28 = getelementptr inbounds %struct.View3D, ptr %24, i64 0, i32 40
  store i8 %27, ptr %28, align 1, !tbaa !80
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !78
  br label %29

29:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i32 %9
}

declare void @WM_gesture_straightline_cancel(ptr noundef, ptr noundef) #2

declare i32 @ED_operator_editmesh(ptr noundef) #2

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @WM_operator_properties_gesture_straightline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_redo_state_restore(ptr, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_gesture_straightline_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EDBM_redo_state_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare i32 @WM_gesture_straightline_modal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_redo_state_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{!35, !36, i64 88}
!51 = !{!52, !36, i64 112}
!52 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !37, i64 0}
!55 = !{!52, !36, i64 96}
!56 = !{!57, !36, i64 376}
!57 = !{!"ARegion", !36, i64 0, !36, i64 8, !58, i64 16, !60, i64 176, !60, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !54, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!58 = !{!"View2D", !59, i64 0, !59, i64 16, !60, i64 32, !60, i64 48, !60, i64 64, !37, i64 80, !37, i64 88, !54, i64 96, !54, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !61, i64 136, !61, i64 140, !36, i64 144, !36, i64 152}
!59 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!60 = !{!"rcti", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!61 = !{!"int", !37, i64 0}
!62 = !{!63, !36, i64 48}
!63 = !{!"wmGesture", !36, i64 0, !36, i64 8, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !36, i64 40, !36, i64 48}
!64 = !{!65, !37, i64 8}
!65 = !{!"", !66, i64 0, !37, i64 8, !41, i64 10}
!66 = !{!"BMBackup", !36, i64 0}
!67 = !{!68, !36, i64 0}
!68 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !61, i64 16, !36, i64 24, !61, i64 32, !36, i64 40, !36, i64 48, !69, i64 56, !36, i64 64, !61, i64 72, !36, i64 80, !61, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !61, i64 104}
!69 = !{!"long", !37, i64 0}
!70 = !{!52, !41, i64 160}
!71 = !{!72, !61, i64 20}
!72 = !{!"BMesh", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !61, i64 88, !61, i64 92, !61, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !61, i64 128, !36, i64 136, !73, i64 144, !73, i64 344, !73, i64 544, !73, i64 744, !41, i64 944, !61, i64 948, !61, i64 952, !61, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!73 = !{!"CustomData", !36, i64 0, !37, i64 8, !61, i64 172, !61, i64 176, !61, i64 180, !36, i64 184, !36, i64 192}
!74 = !{!52, !36, i64 120}
!75 = !{i32 2, i32 5}
!76 = !{!36, !36, i64 0}
!77 = !{i64 0, i64 8, !76}
!78 = !{!79, !41, i64 2084}
!79 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !61, i64 2096, !61, i64 2100, !37, i64 2104, !61, i64 2108, !61, i64 2112, !37, i64 2116}
!80 = !{!81, !37, i64 291}
!81 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !61, i64 32, !54, i64 36, !37, i64 40, !37, i64 56, !54, i64 72, !54, i64 76, !37, i64 80, !37, i64 81, !61, i64 84, !61, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !59, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !61, i64 224, !61, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !54, i64 244, !54, i64 248, !54, i64 252, !54, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!82 = !{!65, !41, i64 10}
!83 = !{i64 0, i64 8, !76, i64 8, i64 1, !84, i64 10, i64 2, !85}
!84 = !{!37, !37, i64 0}
!85 = !{!41, !41, i64 0}
!86 = !{!87, !41, i64 16}
!87 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !61, i64 20, !61, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !61, i64 48, !61, i64 52, !88, i64 56, !61, i64 64, !61, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !61, i64 108, !36, i64 112}
!88 = !{!"double", !37, i64 0}
!89 = !{!87, !41, i64 18}
