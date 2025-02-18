; ModuleID = 'blender/source/blender/editors/mesh/editmesh_inset.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_inset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.InsetData = type { float, float, i8, float, float, i8, i8, float, ptr, %struct.NumInput, [2 x float], %struct.BMBackup, ptr, i16 }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.BMBackup = type { ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [12 x i8] c"Inset Faces\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"MESH_OT_inset\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Inset new faces into selected faces\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"use_boundary\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Inset face boundaries\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"use_even_offset\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Offset Even\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Scale the offset to give more even thickness\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"use_relative_offset\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Offset Relative\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Scale the offset by surrounding geometry\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"use_edge_rail\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Edge Rail\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Inset the region along existing edges\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"thickness\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Thickness\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"use_outset\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Outset\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Outset rather than inset\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"use_select_inset\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Select Outer\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Select the new inset faces\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"use_individual\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Individual\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Individual Face Inset\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"use_interpolate\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Interpolate\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Blend face data across the inset\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [20 x i8] c"inset_operator_data\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.33 = private unnamed_addr constant [111 x i8] c"inset_individual faces=%hf use_even_offset=%b  use_relative_offset=%b use_interpolate=%b thickness=%f depth=%f\00", align 1
@.str.34 = private unnamed_addr constant [153 x i8] c"inset_region faces=%hf use_boundary=%b use_even_offset=%b use_relative_offset=%b use_interpolate=%b thickness=%f depth=%f use_outset=%b use_edge_rail=%b\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"faces_exclude\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.38 = private unnamed_addr constant [151 x i8] c"Confirm: Enter/LClick, Cancel: (Esc/RClick), Thickness: %s, Depth (Ctrl to tweak): %s (%s), Outset (O): (%s), Boundary (B): (%s), Individual (I): (%s)\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_inset(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_inset_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @edbm_inset_modal, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_inset_exec, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @edbm_inset_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #5
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #5
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = tail call ptr @RNA_def_float(ptr noundef %19, ptr noundef nonnull @.str.15, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0.000000e+00, float noundef 1.000000e+01) #5
  tail call void @RNA_def_property_ui_range(ptr noundef %20, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e-02, i32 noundef 4) #5
  %21 = load ptr, ptr %10, align 8, !tbaa !50
  %22 = tail call ptr @RNA_def_float(ptr noundef %21, ptr noundef nonnull @.str.18, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, float noundef -1.000000e+01, float noundef 1.000000e+01) #5
  tail call void @RNA_def_property_ui_range(ptr noundef %22, double noundef -1.000000e+01, double noundef 1.000000e+01, double noundef 1.000000e-02, i32 noundef 4) #5
  %23 = load ptr, ptr %10, align 8, !tbaa !50
  %24 = tail call ptr @RNA_def_boolean(ptr noundef %23, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #5
  %25 = load ptr, ptr %10, align 8, !tbaa !50
  %26 = tail call ptr @RNA_def_boolean(ptr noundef %25, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #5
  %27 = load ptr, ptr %10, align 8, !tbaa !50
  %28 = tail call ptr @RNA_def_boolean(ptr noundef %27, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #5
  %29 = load ptr, ptr %10, align 8, !tbaa !50
  %30 = tail call ptr @RNA_def_boolean(ptr noundef %29, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_inset_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #5
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #5
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %74, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %15 = tail call ptr %14(i64 noundef 216, ptr noundef nonnull @.str.32) #5
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !59
  store float 0x3F847AE140000000, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 1
  store float 0.000000e+00, ptr %17, align 4, !tbaa !66
  %18 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 2
  store i8 0, ptr %18, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 6
  store i8 0, ptr %19, align 1, !tbaa !68
  %20 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 7
  store float 0.000000e+00, ptr %20, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 5
  store i8 1, ptr %21, align 4, !tbaa !70
  %22 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 8
  store ptr %8, ptr %22, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 9
  tail call void @initNumInput(ptr noundef nonnull %23) #5
  store i16 1, ptr %23, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 38, i32 1
  %25 = load i8, ptr %24, align 4, !tbaa !73
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 9, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !93
  %28 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 9, i32 2
  store i32 1, ptr %28, align 8, !tbaa !94
  %29 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 9, i32 2, i64 1
  store i32 1, ptr %29, align 4, !tbaa !94
  %30 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #5
  %31 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %32 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 11
  %33 = tail call ptr @EDBM_redo_state_store(ptr noundef nonnull %8) #5
  store ptr %33, ptr %32, align 8, !tbaa.struct !95
  %34 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 20
  %35 = load ptr, ptr %34, align 8, !tbaa !96
  %36 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 10
  %37 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %35, ptr noundef nonnull @ED_region_draw_mouse_line_cb, ptr noundef nonnull %36, i32 noundef 1) #5
  %38 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 12
  store ptr %37, ptr %38, align 8, !tbaa !99
  store i16 2, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !100
  %39 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 40
  %40 = load i8, ptr %39, align 1, !tbaa !102
  %41 = zext i8 %40 to i16
  %42 = getelementptr inbounds %struct.InsetData, ptr %15, i64 0, i32 13
  store i16 %41, ptr %42, align 8, !tbaa !104
  store i8 0, ptr %39, align 1, !tbaa !102
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = getelementptr inbounds %struct.InsetData, ptr %44, i64 0, i32 10
  %46 = call zeroext i8 @calculateTransformCenter(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %4, ptr noundef nonnull %45) #5
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %13
  %49 = getelementptr inbounds %struct.InsetData, ptr %44, i64 0, i32 10, i64 1
  store float 0.000000e+00, ptr %49, align 4, !tbaa !105
  store float 0.000000e+00, ptr %45, align 4, !tbaa !105
  br label %50

50:                                               ; preds = %48, %13
  %51 = load float, ptr %45, align 4, !tbaa !105
  %52 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !94
  %54 = sitofp i32 %53 to float
  %55 = fsub float %51, %54
  %56 = getelementptr inbounds %struct.InsetData, ptr %44, i64 0, i32 10, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !105
  %58 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %59 = load i32, ptr %58, align 4, !tbaa !94
  %60 = sitofp i32 %59 to float
  %61 = fsub float %57, %60
  %62 = fmul float %61, %61
  %63 = call float @llvm.fmuladd.f32(float %55, float %55, float %62)
  %64 = call float @sqrtf(float noundef %63) #5
  %65 = getelementptr inbounds %struct.InsetData, ptr %44, i64 0, i32 3
  store float %64, ptr %65, align 4, !tbaa !106
  %66 = icmp eq ptr %5, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %50
  %68 = call float @ED_view3d_pixel_size(ptr noundef nonnull %5, ptr noundef nonnull %4) #5
  br label %69

69:                                               ; preds = %50, %67
  %70 = phi float [ %68, %67 ], [ 1.000000e+00, %50 ]
  %71 = getelementptr inbounds %struct.InsetData, ptr %44, i64 0, i32 4
  store float %70, ptr %71, align 8, !tbaa !107
  %72 = call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1), !range !108
  call fastcc void @edbm_inset_update_header(ptr noundef %1, ptr noundef %0)
  %73 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #5
  br label %74

74:                                               ; preds = %3, %69
  %75 = phi i32 [ 1, %69 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #5
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_inset_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 9
  %9 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %8) #5
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !109
  %12 = icmp eq i16 %11, 1
  %13 = icmp ne i8 %9, 0
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2) #5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = tail call float @RNA_float_get(ptr noundef %20, ptr noundef nonnull @.str.15) #5
  store float %21, ptr %4, align 4, !tbaa !105
  %22 = getelementptr inbounds float, ptr %4, i64 1
  %23 = load ptr, ptr %19, align 8, !tbaa !112
  %24 = tail call float @RNA_float_get(ptr noundef %23, ptr noundef nonnull @.str.18) #5
  store float %24, ptr %22, align 4, !tbaa !105
  %25 = call zeroext i8 @applyNumInput(ptr noundef nonnull %8, ptr noundef nonnull %4) #5
  %26 = load float, ptr %4, align 4, !tbaa !105
  %27 = fcmp ogt float %26, 0.000000e+00
  %28 = select i1 %27, float %26, float 0.000000e+00
  store float %28, ptr %4, align 4, !tbaa !105
  %29 = load ptr, ptr %19, align 8, !tbaa !112
  call void @RNA_float_set(ptr noundef %29, ptr noundef nonnull @.str.15, float noundef %28) #5
  %30 = load ptr, ptr %19, align 8, !tbaa !112
  %31 = load float, ptr %22, align 4, !tbaa !105
  call void @RNA_float_set(ptr noundef %30, ptr noundef nonnull @.str.18, float noundef %31) #5
  %32 = call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1), !range !108
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  call fastcc void @edbm_inset_update_header(ptr noundef %1, ptr noundef %0)
  br label %47

35:                                               ; preds = %18
  %36 = load ptr, ptr %6, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.InsetData, ptr %36, i64 0, i32 5
  %38 = load i8, ptr %37, align 4, !tbaa !70
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.InsetData, ptr %36, i64 0, i32 11
  %42 = getelementptr inbounds %struct.InsetData, ptr %36, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  call void @EDBM_redo_state_free(ptr noundef nonnull %41, ptr noundef %43, i32 noundef 1) #5
  %44 = load ptr, ptr %42, align 8, !tbaa !71
  call void @EDBM_update_generic(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  br label %45

45:                                               ; preds = %35, %40
  call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  %46 = call ptr @CTX_wm_region(ptr noundef %0) #5
  call void @ED_region_tag_redraw(ptr noundef %46) #5
  br label %47

47:                                               ; preds = %45, %34
  %48 = phi i32 [ 1, %34 ], [ 2, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %327

49:                                               ; preds = %15, %3
  %50 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %51 = load i16, ptr %50, align 8, !tbaa !113
  switch i16 %51, label %287 [
    i16 218, label %52
    i16 3, label %52
    i16 4, label %64
    i16 1, label %146
    i16 163, label %146
    i16 220, label %146
    i16 217, label %148
    i16 216, label %148
    i16 212, label %164
    i16 215, label %164
    i16 111, label %203
    i16 98, label %231
    i16 105, label %259
  ]

52:                                               ; preds = %49, %49
  %53 = load ptr, ptr %6, align 8, !tbaa !59
  %54 = getelementptr inbounds %struct.InsetData, ptr %53, i64 0, i32 5
  %55 = load i8, ptr %54, align 4, !tbaa !70
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.InsetData, ptr %53, i64 0, i32 11
  %59 = getelementptr inbounds %struct.InsetData, ptr %53, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %58, ptr noundef %60, i32 noundef 1) #5
  %61 = load ptr, ptr %59, align 8, !tbaa !71
  tail call void @EDBM_update_generic(ptr noundef %61, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  br label %62

62:                                               ; preds = %52, %57
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  %63 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  tail call void @ED_region_tag_redraw(ptr noundef %63) #5
  br label %327

64:                                               ; preds = %49
  %65 = icmp eq i8 %9, 0
  br i1 %65, label %66, label %287

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 10
  %68 = load float, ptr %67, align 4, !tbaa !105
  %69 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %70 = load i32, ptr %69, align 4, !tbaa !94
  %71 = sitofp i32 %70 to float
  %72 = fsub float %68, %71
  %73 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 10, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !105
  %75 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %76 = load i32, ptr %75, align 4, !tbaa !94
  %77 = sitofp i32 %76 to float
  %78 = fsub float %74, %77
  %79 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 2
  %80 = load i8, ptr %79, align 8, !tbaa !67
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %66
  %83 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 1
  %84 = load float, ptr %83, align 4, !tbaa !66
  %85 = fmul float %78, %78
  %86 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %85)
  %87 = tail call float @sqrtf(float noundef %86) #5
  %88 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 3
  %89 = load float, ptr %88, align 4, !tbaa !106
  %90 = fsub float %87, %89
  %91 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 4
  %92 = load float, ptr %91, align 8, !tbaa !107
  %93 = tail call float @llvm.fmuladd.f32(float %90, float %92, float %84)
  br label %106

94:                                               ; preds = %66
  %95 = load float, ptr %7, align 8, !tbaa !61
  %96 = fmul float %78, %78
  %97 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %96)
  %98 = tail call float @sqrtf(float noundef %97) #5
  %99 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 3
  %100 = load float, ptr %99, align 4, !tbaa !106
  %101 = fsub float %98, %100
  %102 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 4
  %103 = load float, ptr %102, align 8, !tbaa !107
  %104 = fneg float %101
  %105 = tail call float @llvm.fmuladd.f32(float %104, float %103, float %95)
  br label %106

106:                                              ; preds = %94, %82
  %107 = phi float [ %93, %82 ], [ %105, %94 ]
  %108 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 6
  %109 = load i8, ptr %108, align 1, !tbaa !68
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 7
  %113 = load float, ptr %112, align 8, !tbaa !69
  %114 = fsub float %107, %113
  %115 = tail call float @llvm.fmuladd.f32(float %114, float 0x3FB99999A0000000, float %113)
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi float [ %115, %111 ], [ %107, %106 ]
  %118 = load i8, ptr %79, align 8, !tbaa !67
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %122 = load ptr, ptr %121, align 8, !tbaa !112
  tail call void @RNA_float_set(ptr noundef %122, ptr noundef nonnull @.str.18, float noundef %117) #5
  br label %128

123:                                              ; preds = %116
  %124 = fcmp ogt float %117, 0.000000e+00
  %125 = select i1 %124, float %117, float 0.000000e+00
  %126 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !112
  tail call void @RNA_float_set(ptr noundef %127, ptr noundef nonnull @.str.15, float noundef %125) #5
  br label %128

128:                                              ; preds = %123, %120
  %129 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1), !range !108
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  tail call fastcc void @edbm_inset_update_header(ptr noundef %1, ptr noundef %0)
  br label %144

132:                                              ; preds = %128
  %133 = load ptr, ptr %6, align 8, !tbaa !59
  %134 = getelementptr inbounds %struct.InsetData, ptr %133, i64 0, i32 5
  %135 = load i8, ptr %134, align 4, !tbaa !70
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.InsetData, ptr %133, i64 0, i32 11
  %139 = getelementptr inbounds %struct.InsetData, ptr %133, i64 0, i32 8
  %140 = load ptr, ptr %139, align 8, !tbaa !71
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %138, ptr noundef %140, i32 noundef 1) #5
  %141 = load ptr, ptr %139, align 8, !tbaa !71
  tail call void @EDBM_update_generic(ptr noundef %141, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  br label %142

142:                                              ; preds = %132, %137
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  %143 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  tail call void @ED_region_tag_redraw(ptr noundef %143) #5
  br label %144

144:                                              ; preds = %131, %142
  %145 = phi i8 [ 1, %131 ], [ 0, %142 ]
  br i1 %130, label %327, label %287

146:                                              ; preds = %49, %49, %49
  %147 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1), !range !108
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  br label %327

148:                                              ; preds = %49, %49
  %149 = load i16, ptr %10, align 2, !tbaa !109
  %150 = icmp eq i16 %149, 1
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 2
  %153 = load i8, ptr %152, align 8, !tbaa !67
  %154 = icmp eq i8 %153, 0
  %155 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %156 = load ptr, ptr %155, align 8, !tbaa !112
  %157 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 7
  %158 = select i1 %154, ptr @.str.15, ptr @.str.18
  %159 = tail call float @RNA_float_get(ptr noundef %156, ptr noundef nonnull %158) #5
  store float %159, ptr %157, align 8, !tbaa !69
  %160 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 6
  store i8 1, ptr %160, align 1, !tbaa !68
  br label %287

161:                                              ; preds = %148
  %162 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 7
  store float 0.000000e+00, ptr %162, align 8, !tbaa !69
  %163 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 6
  store i8 0, ptr %163, align 1, !tbaa !68
  br label %287

164:                                              ; preds = %49, %49
  %165 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 10
  %166 = load float, ptr %165, align 4, !tbaa !105
  %167 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %168 = load i32, ptr %167, align 4, !tbaa !94
  %169 = sitofp i32 %168 to float
  %170 = fsub float %166, %169
  %171 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 10, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !105
  %173 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %174 = load i32, ptr %173, align 4, !tbaa !94
  %175 = sitofp i32 %174 to float
  %176 = fsub float %172, %175
  %177 = load i16, ptr %10, align 2, !tbaa !109
  %178 = icmp eq i16 %177, 1
  %179 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %180 = load ptr, ptr %179, align 8, !tbaa !112
  br i1 %178, label %181, label %186

181:                                              ; preds = %164
  %182 = tail call float @RNA_float_get(ptr noundef %180, ptr noundef nonnull @.str.15) #5
  store float %182, ptr %7, align 8, !tbaa !61
  %183 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 6
  %184 = load i8, ptr %183, align 1, !tbaa !68
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %196, label %192

186:                                              ; preds = %164
  %187 = tail call float @RNA_float_get(ptr noundef %180, ptr noundef nonnull @.str.18) #5
  %188 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 1
  store float %187, ptr %188, align 4, !tbaa !66
  %189 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 6
  %190 = load i8, ptr %189, align 1, !tbaa !68
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %186, %181
  %193 = phi float [ %182, %181 ], [ %187, %186 ]
  %194 = phi i8 [ 1, %181 ], [ 0, %186 ]
  %195 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 7
  store float %193, ptr %195, align 8, !tbaa !69
  br label %196

196:                                              ; preds = %192, %186, %181
  %197 = phi i8 [ 1, %181 ], [ 0, %186 ], [ %194, %192 ]
  %198 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 2
  store i8 %197, ptr %198, align 8, !tbaa !67
  %199 = fmul float %176, %176
  %200 = tail call float @llvm.fmuladd.f32(float %170, float %170, float %199)
  %201 = tail call float @sqrtf(float noundef %200) #5
  %202 = getelementptr inbounds %struct.InsetData, ptr %7, i64 0, i32 3
  store float %201, ptr %202, align 4, !tbaa !106
  tail call fastcc void @edbm_inset_update_header(ptr noundef %1, ptr noundef %0)
  br label %287

203:                                              ; preds = %49
  %204 = load i16, ptr %10, align 2, !tbaa !109
  %205 = icmp eq i16 %204, 1
  br i1 %205, label %206, label %287

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %208 = load ptr, ptr %207, align 8, !tbaa !112
  %209 = tail call i32 @RNA_boolean_get(ptr noundef %208, ptr noundef nonnull @.str.20) #5
  %210 = load ptr, ptr %207, align 8, !tbaa !112
  %211 = and i32 %209, 255
  %212 = icmp eq i32 %211, 0
  %213 = zext i1 %212 to i32
  tail call void @RNA_boolean_set(ptr noundef %210, ptr noundef nonnull @.str.20, i32 noundef %213) #5
  %214 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1), !range !108
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %206
  tail call fastcc void @edbm_inset_update_header(ptr noundef %1, ptr noundef %0)
  br label %229

217:                                              ; preds = %206
  %218 = load ptr, ptr %6, align 8, !tbaa !59
  %219 = getelementptr inbounds %struct.InsetData, ptr %218, i64 0, i32 5
  %220 = load i8, ptr %219, align 4, !tbaa !70
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.InsetData, ptr %218, i64 0, i32 11
  %224 = getelementptr inbounds %struct.InsetData, ptr %218, i64 0, i32 8
  %225 = load ptr, ptr %224, align 8, !tbaa !71
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %223, ptr noundef %225, i32 noundef 1) #5
  %226 = load ptr, ptr %224, align 8, !tbaa !71
  tail call void @EDBM_update_generic(ptr noundef %226, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  br label %227

227:                                              ; preds = %217, %222
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  %228 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  tail call void @ED_region_tag_redraw(ptr noundef %228) #5
  br label %229

229:                                              ; preds = %216, %227
  %230 = phi i8 [ 1, %216 ], [ 0, %227 ]
  br i1 %215, label %327, label %287

231:                                              ; preds = %49
  %232 = load i16, ptr %10, align 2, !tbaa !109
  %233 = icmp eq i16 %232, 1
  br i1 %233, label %234, label %287

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %236 = load ptr, ptr %235, align 8, !tbaa !112
  %237 = tail call i32 @RNA_boolean_get(ptr noundef %236, ptr noundef nonnull @.str.3) #5
  %238 = load ptr, ptr %235, align 8, !tbaa !112
  %239 = and i32 %237, 255
  %240 = icmp eq i32 %239, 0
  %241 = zext i1 %240 to i32
  tail call void @RNA_boolean_set(ptr noundef %238, ptr noundef nonnull @.str.3, i32 noundef %241) #5
  %242 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1), !range !108
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %234
  tail call fastcc void @edbm_inset_update_header(ptr noundef %1, ptr noundef %0)
  br label %257

245:                                              ; preds = %234
  %246 = load ptr, ptr %6, align 8, !tbaa !59
  %247 = getelementptr inbounds %struct.InsetData, ptr %246, i64 0, i32 5
  %248 = load i8, ptr %247, align 4, !tbaa !70
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.InsetData, ptr %246, i64 0, i32 11
  %252 = getelementptr inbounds %struct.InsetData, ptr %246, i64 0, i32 8
  %253 = load ptr, ptr %252, align 8, !tbaa !71
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %251, ptr noundef %253, i32 noundef 1) #5
  %254 = load ptr, ptr %252, align 8, !tbaa !71
  tail call void @EDBM_update_generic(ptr noundef %254, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  br label %255

255:                                              ; preds = %245, %250
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  %256 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  tail call void @ED_region_tag_redraw(ptr noundef %256) #5
  br label %257

257:                                              ; preds = %244, %255
  %258 = phi i8 [ 1, %244 ], [ 0, %255 ]
  br i1 %243, label %327, label %287

259:                                              ; preds = %49
  %260 = load i16, ptr %10, align 2, !tbaa !109
  %261 = icmp eq i16 %260, 1
  br i1 %261, label %262, label %287

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %264 = load ptr, ptr %263, align 8, !tbaa !112
  %265 = tail call i32 @RNA_boolean_get(ptr noundef %264, ptr noundef nonnull @.str.26) #5
  %266 = load ptr, ptr %263, align 8, !tbaa !112
  %267 = and i32 %265, 255
  %268 = icmp eq i32 %267, 0
  %269 = zext i1 %268 to i32
  tail call void @RNA_boolean_set(ptr noundef %266, ptr noundef nonnull @.str.26, i32 noundef %269) #5
  %270 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1), !range !108
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %262
  tail call fastcc void @edbm_inset_update_header(ptr noundef %1, ptr noundef %0)
  br label %285

273:                                              ; preds = %262
  %274 = load ptr, ptr %6, align 8, !tbaa !59
  %275 = getelementptr inbounds %struct.InsetData, ptr %274, i64 0, i32 5
  %276 = load i8, ptr %275, align 4, !tbaa !70
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.InsetData, ptr %274, i64 0, i32 11
  %280 = getelementptr inbounds %struct.InsetData, ptr %274, i64 0, i32 8
  %281 = load ptr, ptr %280, align 8, !tbaa !71
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %279, ptr noundef %281, i32 noundef 1) #5
  %282 = load ptr, ptr %280, align 8, !tbaa !71
  tail call void @EDBM_update_generic(ptr noundef %282, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  br label %283

283:                                              ; preds = %273, %278
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  %284 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  tail call void @ED_region_tag_redraw(ptr noundef %284) #5
  br label %285

285:                                              ; preds = %272, %283
  %286 = phi i8 [ 1, %272 ], [ 0, %283 ]
  br i1 %271, label %327, label %287

287:                                              ; preds = %259, %285, %231, %257, %203, %229, %151, %161, %64, %144, %49, %196
  %288 = phi i8 [ 0, %49 ], [ %286, %285 ], [ 0, %259 ], [ %258, %257 ], [ 0, %231 ], [ %230, %229 ], [ 0, %203 ], [ 1, %196 ], [ 1, %151 ], [ 1, %161 ], [ 0, %64 ], [ %145, %144 ]
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %327

290:                                              ; preds = %287
  %291 = load i16, ptr %10, align 2, !tbaa !109
  %292 = icmp eq i16 %291, 1
  br i1 %292, label %293, label %327

293:                                              ; preds = %290
  %294 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2) #5
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %327, label %296

296:                                              ; preds = %293
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %297 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %298 = load ptr, ptr %297, align 8, !tbaa !112
  %299 = tail call float @RNA_float_get(ptr noundef %298, ptr noundef nonnull @.str.15) #5
  store float %299, ptr %5, align 4, !tbaa !105
  %300 = getelementptr inbounds float, ptr %5, i64 1
  %301 = load ptr, ptr %297, align 8, !tbaa !112
  %302 = tail call float @RNA_float_get(ptr noundef %301, ptr noundef nonnull @.str.18) #5
  store float %302, ptr %300, align 4, !tbaa !105
  %303 = call zeroext i8 @applyNumInput(ptr noundef nonnull %8, ptr noundef nonnull %5) #5
  %304 = load float, ptr %5, align 4, !tbaa !105
  %305 = fcmp ogt float %304, 0.000000e+00
  %306 = select i1 %305, float %304, float 0.000000e+00
  store float %306, ptr %5, align 4, !tbaa !105
  %307 = load ptr, ptr %297, align 8, !tbaa !112
  call void @RNA_float_set(ptr noundef %307, ptr noundef nonnull @.str.15, float noundef %306) #5
  %308 = load ptr, ptr %297, align 8, !tbaa !112
  %309 = load float, ptr %300, align 4, !tbaa !105
  call void @RNA_float_set(ptr noundef %308, ptr noundef nonnull @.str.18, float noundef %309) #5
  %310 = call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1), !range !108
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %296
  call fastcc void @edbm_inset_update_header(ptr noundef %1, ptr noundef %0)
  br label %325

313:                                              ; preds = %296
  %314 = load ptr, ptr %6, align 8, !tbaa !59
  %315 = getelementptr inbounds %struct.InsetData, ptr %314, i64 0, i32 5
  %316 = load i8, ptr %315, align 4, !tbaa !70
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %323, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.InsetData, ptr %314, i64 0, i32 11
  %320 = getelementptr inbounds %struct.InsetData, ptr %314, i64 0, i32 8
  %321 = load ptr, ptr %320, align 8, !tbaa !71
  call void @EDBM_redo_state_free(ptr noundef nonnull %319, ptr noundef %321, i32 noundef 1) #5
  %322 = load ptr, ptr %320, align 8, !tbaa !71
  call void @EDBM_update_generic(ptr noundef %322, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  br label %323

323:                                              ; preds = %313, %318
  call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  %324 = call ptr @CTX_wm_region(ptr noundef %0) #5
  call void @ED_region_tag_redraw(ptr noundef %324) #5
  br label %325

325:                                              ; preds = %323, %312
  %326 = phi i32 [ 1, %312 ], [ 2, %323 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %327

327:                                              ; preds = %62, %146, %325, %285, %257, %229, %144, %293, %290, %287, %47
  %328 = phi i32 [ %48, %47 ], [ %326, %325 ], [ 2, %285 ], [ 2, %257 ], [ 2, %229 ], [ 4, %146 ], [ 2, %144 ], [ 2, %62 ], [ 1, %293 ], [ 1, %290 ], [ 1, %287 ]
  ret i32 %328
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_inset_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #5
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %12 = tail call ptr %11(i64 noundef 216, ptr noundef nonnull @.str.32) #5
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !59
  store float 0x3F847AE140000000, ptr %12, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 1
  store float 0.000000e+00, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 2
  store i8 0, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 6
  store i8 0, ptr %16, align 1, !tbaa !68
  %17 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 7
  store float 0.000000e+00, ptr %17, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 5
  store i8 0, ptr %18, align 4, !tbaa !70
  %19 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 8
  store ptr %5, ptr %19, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 9
  tail call void @initNumInput(ptr noundef nonnull %20) #5
  store i16 1, ptr %20, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 38, i32 1
  %22 = load i8, ptr %21, align 4, !tbaa !73
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 9, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !93
  %25 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 9, i32 2
  store i32 1, ptr %25, align 8, !tbaa !94
  %26 = getelementptr inbounds %struct.InsetData, ptr %12, i64 0, i32 9, i32 2, i64 1
  store i32 1, ptr %26, align 4, !tbaa !94
  %27 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1), !range !108
  %28 = icmp eq i8 %27, 0
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  %29 = select i1 %28, i32 2, i32 4
  br label %30

30:                                               ; preds = %10, %2
  %31 = phi i32 [ 2, %2 ], [ %29, %10 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal void @edbm_inset_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.InsetData, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 4, !tbaa !70
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.InsetData, ptr %4, i64 0, i32 11
  %10 = getelementptr inbounds %struct.InsetData, ptr %4, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %9, ptr noundef %11, i32 noundef 1) #5
  %12 = load ptr, ptr %10, align 8, !tbaa !71
  tail call void @EDBM_update_generic(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  br label %13

13:                                               ; preds = %8, %2
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1)
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  tail call void @ED_region_tag_redraw(ptr noundef %14) #5
  ret void
}

declare i32 @ED_operator_editmesh(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_ui_range(ptr noundef, double noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @calculateTransformCenter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @edbm_inset_calc(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %2) #5
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.3) #5
  %6 = load ptr, ptr %3, align 8, !tbaa !112
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.6) #5
  %8 = load ptr, ptr %3, align 8, !tbaa !112
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.9) #5
  %10 = load ptr, ptr %3, align 8, !tbaa !112
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.12) #5
  %12 = load ptr, ptr %3, align 8, !tbaa !112
  %13 = tail call float @RNA_float_get(ptr noundef %12, ptr noundef nonnull @.str.15) #5
  %14 = load ptr, ptr %3, align 8, !tbaa !112
  %15 = tail call float @RNA_float_get(ptr noundef %14, ptr noundef nonnull @.str.18) #5
  %16 = load ptr, ptr %3, align 8, !tbaa !112
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.20) #5
  %18 = load ptr, ptr %3, align 8, !tbaa !112
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.23) #5
  %20 = load ptr, ptr %3, align 8, !tbaa !112
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.26) #5
  %22 = load ptr, ptr %3, align 8, !tbaa !112
  %23 = tail call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.29) #5
  %24 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.InsetData, ptr %25, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.InsetData, ptr %25, i64 0, i32 5
  %29 = load i8, ptr %28, align 4, !tbaa !70
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.InsetData, ptr %25, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8
  tail call void @EDBM_redo_state_restore(ptr %33, ptr noundef %27, i32 noundef 0) #5
  br label %34

34:                                               ; preds = %31, %1
  %35 = and i32 %21, 255
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = and i32 %7, 255
  %39 = and i32 %9, 255
  %40 = and i32 %23, 255
  %41 = fpext float %13 to double
  %42 = fpext float %15 to double
  %43 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %27, ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef %38, i32 noundef %39, i32 noundef %40, double noundef %41, double noundef %42) #5
  br label %57

44:                                               ; preds = %34
  %45 = and i32 %5, 255
  %46 = and i32 %7, 255
  %47 = and i32 %9, 255
  %48 = and i32 %23, 255
  %49 = fpext float %13 to double
  %50 = fpext float %15 to double
  %51 = and i32 %17, 255
  %52 = and i32 %11, 255
  %53 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %27, ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, double noundef %49, double noundef %50, i32 noundef %51, i32 noundef %52) #5
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = load ptr, ptr %27, align 8, !tbaa !51
  call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @.str.35, i8 noundef zeroext 8, i8 noundef zeroext 2) #5
  br label %57

57:                                               ; preds = %44, %55, %37
  %58 = load ptr, ptr %27, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %58, ptr noundef nonnull %2) #5
  %59 = and i32 %19, 255
  %60 = icmp eq i32 %59, 0
  call void @EDBM_flag_disable_all(ptr noundef nonnull %27, i8 noundef zeroext 1) #5
  %61 = load ptr, ptr %27, align 8, !tbaa !51
  br i1 %60, label %64, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.BMOperator, ptr %2, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %61, ptr noundef nonnull %63, ptr noundef nonnull @.str.36, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %65

64:                                               ; preds = %57
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %61, ptr noundef nonnull %2, ptr noundef nonnull @.str.37, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %65

65:                                               ; preds = %64, %62
  %66 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %27, ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 1) #5
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @EDBM_update_generic(ptr noundef nonnull %27, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %69

69:                                               ; preds = %65, %68
  %70 = phi i8 [ 1, %68 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %2) #5
  ret i8 %70
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edbm_inset_update_header(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [180 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %3) #5
  %7 = tail call ptr @CTX_wm_area(ptr noundef %1) #5
  %8 = tail call ptr @CTX_data_scene(ptr noundef %1) #5
  %9 = icmp eq ptr %7, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #5
  %11 = getelementptr inbounds %struct.InsetData, ptr %6, i64 0, i32 9
  %12 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %11) #5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %15) #5
  br label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = tail call float @RNA_float_get(ptr noundef %18, ptr noundef nonnull @.str.15) #5
  %20 = fpext float %19 to double
  %21 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.39, double noundef %20) #5
  %22 = getelementptr inbounds i8, ptr %4, i64 64
  %23 = load ptr, ptr %17, align 8, !tbaa !112
  %24 = call float @RNA_float_get(ptr noundef %23, ptr noundef nonnull @.str.18) #5
  %25 = fpext float %24 to double
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %22, i64 noundef 64, ptr noundef nonnull @.str.39, double noundef %25) #5
  br label %27

27:                                               ; preds = %16, %14
  %28 = getelementptr inbounds i8, ptr %4, i64 64
  %29 = getelementptr inbounds %struct.InsetData, ptr %6, i64 0, i32 2
  %30 = load i8, ptr %29, align 8, !tbaa !67
  %31 = call ptr @WM_bool_as_string(i8 noundef zeroext %30) #5
  %32 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  %34 = call i32 @RNA_boolean_get(ptr noundef %33, ptr noundef nonnull @.str.20) #5
  %35 = trunc i32 %34 to i8
  %36 = call ptr @WM_bool_as_string(i8 noundef zeroext %35) #5
  %37 = load ptr, ptr %32, align 8, !tbaa !112
  %38 = call i32 @RNA_boolean_get(ptr noundef %37, ptr noundef nonnull @.str.3) #5
  %39 = trunc i32 %38 to i8
  %40 = call ptr @WM_bool_as_string(i8 noundef zeroext %39) #5
  %41 = load ptr, ptr %32, align 8, !tbaa !112
  %42 = call i32 @RNA_boolean_get(ptr noundef %41, ptr noundef nonnull @.str.26) #5
  %43 = trunc i32 %42 to i8
  %44 = call ptr @WM_bool_as_string(i8 noundef zeroext %43) #5
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 180, ptr noundef nonnull @.str.38, ptr noundef nonnull %4, ptr noundef nonnull %28, ptr noundef %31, ptr noundef %36, ptr noundef %40, ptr noundef %44) #5
  call void @ED_area_headerprint(ptr noundef nonnull %7, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #5
  br label %46

46:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %3) #5
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare void @initNumInput(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @EDBM_redo_state_store(ptr noundef) local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_region_draw_mouse_line_cb(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_redo_state_restore(ptr, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #2

declare void @outputNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @handleNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @edbm_inset_exit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.InsetData, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 4, !tbaa !70
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #5
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %12 = getelementptr inbounds %struct.InsetData, ptr %5, i64 0, i32 11
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %12, ptr noundef null, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = getelementptr inbounds %struct.InsetData, ptr %5, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  tail call void @ED_region_draw_cb_exit(ptr noundef %14, ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.InsetData, ptr %5, i64 0, i32 13
  %18 = load i16, ptr %17, align 8, !tbaa !104
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 40
  store i8 %19, ptr %20, align 1, !tbaa !102
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !100
  br label %21

21:                                               ; preds = %9, %2
  %22 = icmp eq ptr %3, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void @ED_area_headerprint(ptr noundef nonnull %3, ptr noundef null) #5
  br label %24

24:                                               ; preds = %23, %21
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  %26 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %25(ptr noundef %26) #5
  ret void
}

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @EDBM_redo_state_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 64}
!46 = !{!35, !36, i64 32}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{!35, !36, i64 88}
!51 = !{!52, !36, i64 0}
!52 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !53, i64 16, !36, i64 24, !53, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !36, i64 64, !53, i64 72, !36, i64 80, !53, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !53, i64 104}
!53 = !{!"int", !37, i64 0}
!54 = !{!"long", !37, i64 0}
!55 = !{!56, !53, i64 16}
!56 = !{!"BMesh", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !53, i64 88, !53, i64 92, !53, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !53, i64 128, !36, i64 136, !57, i64 144, !57, i64 344, !57, i64 544, !57, i64 744, !41, i64 944, !53, i64 948, !53, i64 952, !53, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!57 = !{!"CustomData", !36, i64 0, !37, i64 8, !53, i64 172, !53, i64 176, !53, i64 180, !36, i64 184, !36, i64 192}
!58 = !{!36, !36, i64 0}
!59 = !{!60, !36, i64 96}
!60 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!61 = !{!62, !63, i64 0}
!62 = !{!"", !63, i64 0, !63, i64 4, !37, i64 8, !63, i64 12, !63, i64 16, !37, i64 20, !37, i64 21, !63, i64 24, !36, i64 32, !64, i64 40, !37, i64 180, !65, i64 192, !36, i64 200, !41, i64 208}
!63 = !{!"float", !37, i64 0}
!64 = !{!"NumInput", !41, i64 0, !53, i64 4, !37, i64 8, !37, i64 20, !41, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !41, i64 68, !37, i64 70, !53, i64 136}
!65 = !{!"BMBackup", !36, i64 0}
!66 = !{!62, !63, i64 4}
!67 = !{!62, !37, i64 8}
!68 = !{!62, !37, i64 21}
!69 = !{!62, !63, i64 24}
!70 = !{!62, !37, i64 20}
!71 = !{!62, !36, i64 32}
!72 = !{!62, !41, i64 40}
!73 = !{!74, !37, i64 4604}
!74 = !{!"Scene", !75, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !76, i64 280, !85, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !53, i64 4380, !39, i64 4384, !86, i64 4400, !87, i64 4416, !90, i64 4600, !36, i64 4608, !91, i64 4616, !36, i64 4640, !54, i64 4648, !54, i64 4656, !78, i64 4664, !79, i64 4824, !92, i64 4888, !36, i64 4952}
!75 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!76 = !{!"RenderData", !77, i64 0, !36, i64 248, !36, i64 256, !80, i64 264, !81, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !63, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !41, i64 432, !41, i64 434, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !53, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !53, i64 484, !53, i64 488, !41, i64 492, !41, i64 494, !53, i64 496, !53, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !82, i64 544, !82, i64 560, !83, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !63, i64 612, !63, i64 616, !63, i64 620, !63, i64 624, !53, i64 628, !63, i64 632, !63, i64 636, !63, i64 640, !63, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !63, i64 660, !63, i64 664, !41, i64 668, !41, i64 670, !63, i64 672, !63, i64 676, !37, i64 680, !53, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !53, i64 2520, !41, i64 2524, !41, i64 2526, !63, i64 2528, !63, i64 2532, !41, i64 2536, !41, i64 2538, !63, i64 2540, !41, i64 2544, !41, i64 2546, !53, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !63, i64 2560, !63, i64 2564, !36, i64 2568, !53, i64 2576, !63, i64 2580, !37, i64 2584, !84, i64 2616, !53, i64 3976, !53, i64 3980}
!77 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !63, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !78, i64 24, !79, i64 184}
!78 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !37, i64 8, !37, i64 72, !63, i64 136, !63, i64 140, !36, i64 144, !36, i64 152}
!79 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!80 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !41, i64 48, !41, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!81 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !63, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !36, i64 64}
!82 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!83 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!84 = !{!"BakeData", !77, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !63, i64 1280, !63, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!85 = !{!"AudioData", !53, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !53, i64 16, !41, i64 20, !41, i64 22, !63, i64 24, !63, i64 28}
!86 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!87 = !{!"GameData", !86, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !88, i64 40, !41, i64 64, !41, i64 66, !63, i64 68, !89, i64 72, !63, i64 128, !63, i64 132, !53, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180}
!88 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !63, i64 8, !63, i64 12, !36, i64 16}
!89 = !{!"RecastData", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !53, i64 40, !63, i64 44, !63, i64 48, !41, i64 52, !41, i64 54}
!90 = !{!"UnitSettings", !63, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!91 = !{!"PhysicsSettings", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!92 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!93 = !{!62, !53, i64 44}
!94 = !{!53, !53, i64 0}
!95 = !{i64 0, i64 8, !58}
!96 = !{!97, !36, i64 240}
!97 = !{!"ARegion", !36, i64 0, !36, i64 8, !98, i64 16, !83, i64 176, !83, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !63, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!98 = !{!"View2D", !82, i64 0, !82, i64 16, !83, i64 32, !83, i64 48, !83, i64 64, !37, i64 80, !37, i64 88, !63, i64 96, !63, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!99 = !{!62, !36, i64 200}
!100 = !{!101, !41, i64 2084}
!101 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !53, i64 2096, !53, i64 2100, !37, i64 2104, !53, i64 2108, !53, i64 2112, !37, i64 2116}
!102 = !{!103, !37, i64 291}
!103 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !53, i64 32, !63, i64 36, !37, i64 40, !37, i64 56, !63, i64 72, !63, i64 76, !37, i64 80, !37, i64 81, !53, i64 84, !53, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !82, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !53, i64 224, !53, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !63, i64 244, !63, i64 248, !63, i64 252, !63, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!104 = !{!62, !41, i64 208}
!105 = !{!63, !63, i64 0}
!106 = !{!62, !63, i64 12}
!107 = !{!62, !63, i64 16}
!108 = !{i8 0, i8 2}
!109 = !{!110, !41, i64 18}
!110 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !53, i64 20, !53, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !53, i64 48, !53, i64 52, !111, i64 56, !53, i64 64, !53, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !53, i64 108, !36, i64 112}
!111 = !{!"double", !37, i64 0}
!112 = !{!60, !36, i64 112}
!113 = !{!110, !41, i64 16}
