; ModuleID = 'blender/source/blender/editors/mesh/editmesh_inset.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_inset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.InsetData = type { float, float, i8, float, float, i8, i8, float, ptr, %struct.NumInput, [2 x float], %struct.BMBackup, ptr, i16 }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.BMBackup = type { ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #7
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #7
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = tail call ptr @RNA_def_float(ptr noundef %19, ptr noundef nonnull @.str.15, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0.000000e+00, float noundef 1.000000e+01) #7
  tail call void @RNA_def_property_ui_range(ptr noundef %20, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e-02, i32 noundef 4) #7
  %21 = load ptr, ptr %10, align 8, !tbaa !50
  %22 = tail call ptr @RNA_def_float(ptr noundef %21, ptr noundef nonnull @.str.18, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, float noundef -1.000000e+01, float noundef 1.000000e+01) #7
  tail call void @RNA_def_property_ui_range(ptr noundef %22, double noundef -1.000000e+01, double noundef 1.000000e+01, double noundef 1.000000e-02, i32 noundef 4) #7
  %23 = load ptr, ptr %10, align 8, !tbaa !50
  %24 = tail call ptr @RNA_def_boolean(ptr noundef %23, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #7
  %25 = load ptr, ptr %10, align 8, !tbaa !50
  %26 = tail call ptr @RNA_def_boolean(ptr noundef %25, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #7
  %27 = load ptr, ptr %10, align 8, !tbaa !50
  %28 = tail call ptr @RNA_def_boolean(ptr noundef %27, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %29 = load ptr, ptr %10, align 8, !tbaa !50
  %30 = tail call ptr @RNA_def_boolean(ptr noundef %29, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_inset_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !51 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %7 = tail call fastcc zeroext i8 @edbm_inset_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #9, !range !52
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.InsetData, ptr %11, i64 0, i32 10
  %13 = call zeroext i8 @calculateTransformCenter(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %5, ptr noundef nonnull %12) #7
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load <2 x float>, ptr %12, align 4, !tbaa !55
  br label %18

17:                                               ; preds = %9
  store <2 x float> zeroinitializer, ptr %12, align 4, !tbaa !55
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi <2 x float> [ %16, %15 ], [ zeroinitializer, %17 ]
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %21 = load <2 x i32>, ptr %20, align 4, !tbaa !57
  %22 = sitofp <2 x i32> %21 to <2 x float>
  %23 = fsub <2 x float> %19, %22
  store <2 x float> %23, ptr %4, align 8, !tbaa !55
  %24 = call fastcc float @len_v2(ptr noundef nonnull %4) #9
  %25 = getelementptr inbounds %struct.InsetData, ptr %11, i64 0, i32 3
  store float %24, ptr %25, align 4, !tbaa !59
  %26 = icmp eq ptr %6, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = call float @ED_view3d_pixel_size(ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  br label %29

29:                                               ; preds = %18, %27
  %30 = phi float [ %28, %27 ], [ 1.000000e+00, %18 ]
  %31 = getelementptr inbounds %struct.InsetData, ptr %11, i64 0, i32 4
  store float %30, ptr %31, align 8, !tbaa !63
  %32 = call fastcc zeroext i8 @edbm_inset_calc(ptr noundef nonnull %1) #9, !range !52
  call fastcc void @edbm_inset_update_header(ptr noundef nonnull %1, ptr noundef %0) #9
  %33 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #7
  br label %34

34:                                               ; preds = %3, %29
  %35 = phi i32 [ 1, %29 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_inset_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !64 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 4
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 9
  %11 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #7
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !65
  %14 = icmp eq i16 %13, 1
  %15 = icmp ne i8 %11, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %2) #7
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = tail call float @RNA_float_get(ptr noundef %22, ptr noundef nonnull @.str.15) #7
  store float %23, ptr %4, align 4, !tbaa !55
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load ptr, ptr %21, align 8, !tbaa !68
  %26 = tail call float @RNA_float_get(ptr noundef %25, ptr noundef nonnull @.str.18) #7
  store float %26, ptr %24, align 4, !tbaa !55
  %27 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  %28 = load float, ptr %4, align 4, !tbaa !55
  %29 = call fastcc float @max_ff(float noundef %28) #9
  store float %29, ptr %4, align 4, !tbaa !55
  %30 = load ptr, ptr %21, align 8, !tbaa !68
  call void @RNA_float_set(ptr noundef %30, ptr noundef nonnull @.str.15, float noundef %29) #7
  %31 = load ptr, ptr %21, align 8, !tbaa !68
  %32 = load float, ptr %24, align 4, !tbaa !55
  call void @RNA_float_set(ptr noundef %31, ptr noundef nonnull @.str.18, float noundef %32) #7
  %33 = call fastcc zeroext i8 @edbm_inset_calc(ptr noundef nonnull %1) #9, !range !52
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %20
  call fastcc void @edbm_inset_update_header(ptr noundef nonnull %1, ptr noundef %0) #9
  br label %37

36:                                               ; preds = %20
  call void @edbm_inset_cancel(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %37

37:                                               ; preds = %36, %35
  %38 = phi i32 [ 1, %35 ], [ 2, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %218

39:                                               ; preds = %17, %3
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %41 = load i16, ptr %40, align 8, !tbaa !69
  switch i16 %41, label %193 [
    i16 218, label %42
    i16 3, label %42
    i16 4, label %43
    i16 1, label %99
    i16 163, label %99
    i16 220, label %99
    i16 217, label %101
    i16 216, label %101
    i16 212, label %117
    i16 215, label %117
    i16 111, label %148
    i16 98, label %163
    i16 105, label %178
  ]

42:                                               ; preds = %39, %39
  tail call void @edbm_inset_cancel(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %218

43:                                               ; preds = %39
  %44 = icmp eq i8 %11, 0
  br i1 %44, label %45, label %193

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %46 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 10
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %48 = load <2 x float>, ptr %46, align 4, !tbaa !55
  %49 = load <2 x i32>, ptr %47, align 4, !tbaa !57
  %50 = sitofp <2 x i32> %49 to <2 x float>
  %51 = fsub <2 x float> %48, %50
  store <2 x float> %51, ptr %5, align 8, !tbaa !55
  %52 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 2
  %53 = load i8, ptr %52, align 8, !tbaa !70
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 1
  %57 = load float, ptr %56, align 4, !tbaa !71
  %58 = call fastcc float @len_v2(ptr noundef nonnull %5) #9
  %59 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 3
  %60 = load float, ptr %59, align 4, !tbaa !59
  %61 = fsub float %58, %60
  %62 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 4
  %63 = load float, ptr %62, align 8, !tbaa !63
  %64 = tail call float @llvm.fmuladd.f32(float %61, float %63, float %57)
  br label %75

65:                                               ; preds = %45
  %66 = load float, ptr %9, align 8, !tbaa !72
  %67 = call fastcc float @len_v2(ptr noundef nonnull %5) #9
  %68 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 3
  %69 = load float, ptr %68, align 4, !tbaa !59
  %70 = fsub float %67, %69
  %71 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 4
  %72 = load float, ptr %71, align 8, !tbaa !63
  %73 = fneg float %70
  %74 = tail call float @llvm.fmuladd.f32(float %73, float %72, float %66)
  br label %75

75:                                               ; preds = %65, %55
  %76 = phi float [ %64, %55 ], [ %74, %65 ]
  %77 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 6
  %78 = load i8, ptr %77, align 1, !tbaa !73
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 7
  %82 = load float, ptr %81, align 8, !tbaa !74
  %83 = fsub float %76, %82
  %84 = tail call float @llvm.fmuladd.f32(float %83, float 0x3FB99999A0000000, float %82)
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi float [ %84, %80 ], [ %76, %75 ]
  br i1 %54, label %90, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !68
  tail call void @RNA_float_set(ptr noundef %89, ptr noundef nonnull @.str.18, float noundef %86) #7
  br label %94

90:                                               ; preds = %85
  %91 = tail call fastcc float @max_ff(float noundef %86) #9
  %92 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !68
  tail call void @RNA_float_set(ptr noundef %93, ptr noundef nonnull @.str.15, float noundef %91) #7
  br label %94

94:                                               ; preds = %90, %87
  %95 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef nonnull %1) #9, !range !52
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  tail call void @edbm_inset_cancel(ptr noundef %0, ptr noundef nonnull %1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %218

98:                                               ; preds = %94
  tail call fastcc void @edbm_inset_update_header(ptr noundef nonnull %1, ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %218

99:                                               ; preds = %39, %39, %39
  %100 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef nonnull %1) #9, !range !52
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %218

101:                                              ; preds = %39, %39
  %102 = load i16, ptr %12, align 2, !tbaa !65
  %103 = icmp eq i16 %102, 1
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 2
  %106 = load i8, ptr %105, align 8, !tbaa !70
  %107 = icmp eq i8 %106, 0
  %108 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %109 = load ptr, ptr %108, align 8, !tbaa !68
  %110 = select i1 %107, ptr @.str.15, ptr @.str.18
  %111 = tail call float @RNA_float_get(ptr noundef %109, ptr noundef nonnull %110) #7
  %112 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 7
  store float %111, ptr %112, align 8
  %113 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 6
  store i8 1, ptr %113, align 1, !tbaa !73
  br label %218

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 7
  store float 0.000000e+00, ptr %115, align 8, !tbaa !74
  %116 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 6
  store i8 0, ptr %116, align 1, !tbaa !73
  br label %218

117:                                              ; preds = %39, %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %118 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 10
  %119 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %120 = load <2 x float>, ptr %118, align 4, !tbaa !55
  %121 = load <2 x i32>, ptr %119, align 4, !tbaa !57
  %122 = sitofp <2 x i32> %121 to <2 x float>
  %123 = fsub <2 x float> %120, %122
  store <2 x float> %123, ptr %6, align 8, !tbaa !55
  %124 = load i16, ptr %12, align 2, !tbaa !65
  %125 = icmp eq i16 %124, 1
  %126 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !68
  br i1 %125, label %128, label %133

128:                                              ; preds = %117
  %129 = tail call float @RNA_float_get(ptr noundef %127, ptr noundef nonnull @.str.15) #7
  store float %129, ptr %9, align 8, !tbaa !72
  %130 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 6
  %131 = load i8, ptr %130, align 1, !tbaa !73
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %143, label %139

133:                                              ; preds = %117
  %134 = tail call float @RNA_float_get(ptr noundef %127, ptr noundef nonnull @.str.18) #7
  %135 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 1
  store float %134, ptr %135, align 4, !tbaa !71
  %136 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 6
  %137 = load i8, ptr %136, align 1, !tbaa !73
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %133, %128
  %140 = phi float [ %129, %128 ], [ %134, %133 ]
  %141 = phi i8 [ 1, %128 ], [ 0, %133 ]
  %142 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 7
  store float %140, ptr %142, align 8, !tbaa !74
  br label %143

143:                                              ; preds = %139, %133, %128
  %144 = phi i8 [ 1, %128 ], [ 0, %133 ], [ %141, %139 ]
  %145 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 2
  store i8 %144, ptr %145, align 8, !tbaa !70
  %146 = call fastcc float @len_v2(ptr noundef nonnull %6) #9
  %147 = getelementptr inbounds %struct.InsetData, ptr %9, i64 0, i32 3
  store float %146, ptr %147, align 4, !tbaa !59
  tail call fastcc void @edbm_inset_update_header(ptr noundef nonnull %1, ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %218

148:                                              ; preds = %39
  %149 = load i16, ptr %12, align 2, !tbaa !65
  %150 = icmp eq i16 %149, 1
  br i1 %150, label %151, label %218

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %153 = load ptr, ptr %152, align 8, !tbaa !68
  %154 = tail call i32 @RNA_boolean_get(ptr noundef %153, ptr noundef nonnull @.str.20) #7
  %155 = load ptr, ptr %152, align 8, !tbaa !68
  %156 = and i32 %154, 255
  %157 = icmp eq i32 %156, 0
  %158 = zext i1 %157 to i32
  tail call void @RNA_boolean_set(ptr noundef %155, ptr noundef nonnull @.str.20, i32 noundef %158) #7
  %159 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef nonnull %1) #9, !range !52
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  tail call void @edbm_inset_cancel(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %218

162:                                              ; preds = %151
  tail call fastcc void @edbm_inset_update_header(ptr noundef nonnull %1, ptr noundef %0) #9
  br label %218

163:                                              ; preds = %39
  %164 = load i16, ptr %12, align 2, !tbaa !65
  %165 = icmp eq i16 %164, 1
  br i1 %165, label %166, label %218

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %168 = load ptr, ptr %167, align 8, !tbaa !68
  %169 = tail call i32 @RNA_boolean_get(ptr noundef %168, ptr noundef nonnull @.str.3) #7
  %170 = load ptr, ptr %167, align 8, !tbaa !68
  %171 = and i32 %169, 255
  %172 = icmp eq i32 %171, 0
  %173 = zext i1 %172 to i32
  tail call void @RNA_boolean_set(ptr noundef %170, ptr noundef nonnull @.str.3, i32 noundef %173) #7
  %174 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef nonnull %1) #9, !range !52
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  tail call void @edbm_inset_cancel(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %218

177:                                              ; preds = %166
  tail call fastcc void @edbm_inset_update_header(ptr noundef nonnull %1, ptr noundef %0) #9
  br label %218

178:                                              ; preds = %39
  %179 = load i16, ptr %12, align 2, !tbaa !65
  %180 = icmp eq i16 %179, 1
  br i1 %180, label %181, label %218

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %183 = load ptr, ptr %182, align 8, !tbaa !68
  %184 = tail call i32 @RNA_boolean_get(ptr noundef %183, ptr noundef nonnull @.str.26) #7
  %185 = load ptr, ptr %182, align 8, !tbaa !68
  %186 = and i32 %184, 255
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  tail call void @RNA_boolean_set(ptr noundef %185, ptr noundef nonnull @.str.26, i32 noundef %188) #7
  %189 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef nonnull %1) #9, !range !52
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  tail call void @edbm_inset_cancel(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %218

192:                                              ; preds = %181
  tail call fastcc void @edbm_inset_update_header(ptr noundef nonnull %1, ptr noundef %0) #9
  br label %218

193:                                              ; preds = %39, %43
  %194 = load i16, ptr %12, align 2, !tbaa !65
  %195 = icmp eq i16 %194, 1
  br i1 %195, label %196, label %218

196:                                              ; preds = %193
  %197 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %2) #7
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %218, label %199

199:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %200 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %201 = load ptr, ptr %200, align 8, !tbaa !68
  %202 = tail call float @RNA_float_get(ptr noundef %201, ptr noundef nonnull @.str.15) #7
  store float %202, ptr %7, align 4, !tbaa !55
  %203 = getelementptr inbounds float, ptr %7, i64 1
  %204 = load ptr, ptr %200, align 8, !tbaa !68
  %205 = tail call float @RNA_float_get(ptr noundef %204, ptr noundef nonnull @.str.18) #7
  store float %205, ptr %203, align 4, !tbaa !55
  %206 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %7) #7
  %207 = load float, ptr %7, align 4, !tbaa !55
  %208 = call fastcc float @max_ff(float noundef %207) #9
  store float %208, ptr %7, align 4, !tbaa !55
  %209 = load ptr, ptr %200, align 8, !tbaa !68
  call void @RNA_float_set(ptr noundef %209, ptr noundef nonnull @.str.15, float noundef %208) #7
  %210 = load ptr, ptr %200, align 8, !tbaa !68
  %211 = load float, ptr %203, align 4, !tbaa !55
  call void @RNA_float_set(ptr noundef %210, ptr noundef nonnull @.str.18, float noundef %211) #7
  %212 = call fastcc zeroext i8 @edbm_inset_calc(ptr noundef nonnull %1) #9, !range !52
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %199
  call fastcc void @edbm_inset_update_header(ptr noundef nonnull %1, ptr noundef %0) #9
  br label %216

215:                                              ; preds = %199
  call void @edbm_inset_cancel(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %216

216:                                              ; preds = %215, %214
  %217 = phi i32 [ 1, %214 ], [ 2, %215 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %218

218:                                              ; preds = %191, %176, %161, %97, %42, %99, %216, %178, %163, %148, %98, %114, %104, %143, %162, %177, %192, %196, %193, %37
  %219 = phi i32 [ %38, %37 ], [ 1, %196 ], [ 1, %193 ], [ 1, %192 ], [ 1, %177 ], [ 1, %162 ], [ 1, %143 ], [ 1, %104 ], [ 1, %114 ], [ 1, %98 ], [ 1, %148 ], [ 1, %163 ], [ 1, %178 ], [ 2, %191 ], [ 2, %176 ], [ 2, %161 ], [ 2, %97 ], [ 2, %42 ], [ 4, %99 ], [ %217, %216 ]
  ret i32 %219
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_inset_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !75 {
  %3 = tail call fastcc zeroext i8 @edbm_inset_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #9, !range !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @edbm_inset_calc(ptr noundef %1) #9, !range !52
  %7 = icmp eq i8 %6, 0
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef %1) #9
  %8 = select i1 %7, i32 2, i32 4
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 2, %2 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @edbm_inset_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.InsetData, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 4, !tbaa !77
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.InsetData, ptr %4, i64 0, i32 11
  %10 = getelementptr inbounds %struct.InsetData, ptr %4, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %9, ptr noundef %11, i32 noundef 1) #7
  %12 = load ptr, ptr %10, align 8, !tbaa !78
  tail call void @EDBM_update_generic(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  br label %13

13:                                               ; preds = %8, %2
  tail call fastcc void @edbm_inset_exit(ptr noundef %0, ptr noundef nonnull %1) #9
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  tail call void @ED_region_tag_redraw(ptr noundef %14) #7
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_ui_range(ptr noundef, double noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @edbm_inset_init(ptr noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !79 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !83
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %13 = tail call ptr %12(i64 noundef 216, ptr noundef nonnull @.str.32) #7
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !53
  store <2 x float> <float 0x3F847AE140000000, float 0.000000e+00>, ptr %13, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 2
  store i8 0, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 6
  store i8 0, ptr %16, align 1, !tbaa !73
  %17 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 7
  store float 0.000000e+00, ptr %17, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 5
  store i8 %2, ptr %18, align 4, !tbaa !77
  %19 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 8
  store ptr %6, ptr %19, align 8, !tbaa !78
  %20 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 9
  tail call void @initNumInput(ptr noundef nonnull %20) #7
  store i16 1, ptr %20, align 8, !tbaa !87
  %21 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 38, i32 1
  %22 = load i8, ptr %21, align 4, !tbaa !88
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 9, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !108
  %25 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 9, i32 2
  store i32 1, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 9, i32 2, i64 1
  store i32 1, ptr %26, align 4, !tbaa !57
  %27 = icmp eq i8 %2, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %11
  %29 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %30 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %31 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 11
  %32 = tail call ptr @EDBM_redo_state_store(ptr noundef nonnull %6) #7
  store ptr %32, ptr %31, align 8, !tbaa.struct !109
  %33 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 10
  %36 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %34, ptr noundef nonnull @ED_region_draw_mouse_line_cb, ptr noundef nonnull %35, i32 noundef 1) #7
  %37 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 12
  store ptr %36, ptr %37, align 8, !tbaa !113
  store i16 2, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !114
  %38 = getelementptr inbounds %struct.View3D, ptr %29, i64 0, i32 40
  %39 = load i8, ptr %38, align 1, !tbaa !116
  %40 = zext i8 %39 to i16
  %41 = getelementptr inbounds %struct.InsetData, ptr %13, i64 0, i32 13
  store i16 %40, ptr %41, align 8, !tbaa !118
  store i8 0, ptr %38, align 1, !tbaa !116
  br label %42

42:                                               ; preds = %11, %28, %3
  %43 = phi i8 [ 0, %3 ], [ 1, %28 ], [ 1, %11 ]
  ret i8 %43
}

; Function Attrs: optsize
declare zeroext i8 @calculateTransformCenter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !119 {
  %2 = load float, ptr %0, align 4, !tbaa !55
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !55
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: optsize
declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @edbm_inset_calc(ptr noundef %0) unnamed_addr #0 !PGOFuncName !120 {
  %2 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.3) #7
  %6 = load ptr, ptr %3, align 8, !tbaa !68
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.6) #7
  %8 = load ptr, ptr %3, align 8, !tbaa !68
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.9) #7
  %10 = load ptr, ptr %3, align 8, !tbaa !68
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.12) #7
  %12 = load ptr, ptr %3, align 8, !tbaa !68
  %13 = tail call float @RNA_float_get(ptr noundef %12, ptr noundef nonnull @.str.15) #7
  %14 = load ptr, ptr %3, align 8, !tbaa !68
  %15 = tail call float @RNA_float_get(ptr noundef %14, ptr noundef nonnull @.str.18) #7
  %16 = load ptr, ptr %3, align 8, !tbaa !68
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.20) #7
  %18 = load ptr, ptr %3, align 8, !tbaa !68
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.23) #7
  %20 = load ptr, ptr %3, align 8, !tbaa !68
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.26) #7
  %22 = load ptr, ptr %3, align 8, !tbaa !68
  %23 = tail call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.29) #7
  %24 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.InsetData, ptr %25, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = getelementptr inbounds %struct.InsetData, ptr %25, i64 0, i32 5
  %29 = load i8, ptr %28, align 4, !tbaa !77
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.InsetData, ptr %25, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8
  tail call void @EDBM_redo_state_restore(ptr %33, ptr noundef %27, i32 noundef 0) #7
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
  %43 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %27, ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef %38, i32 noundef %39, i32 noundef %40, double noundef %41, double noundef %42) #7
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
  %53 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %27, ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48, double noundef %49, double noundef %50, i32 noundef %51, i32 noundef %52) #7
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = load ptr, ptr %27, align 8, !tbaa !80
  call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @.str.35, i8 noundef zeroext 8, i8 noundef zeroext 2) #7
  br label %57

57:                                               ; preds = %44, %55, %37
  %58 = load ptr, ptr %27, align 8, !tbaa !80
  call void @BMO_op_exec(ptr noundef %58, ptr noundef nonnull %2) #7
  %59 = and i32 %19, 255
  %60 = icmp eq i32 %59, 0
  call void @EDBM_flag_disable_all(ptr noundef nonnull %27, i8 noundef zeroext 1) #7
  %61 = load ptr, ptr %27, align 8, !tbaa !80
  br i1 %60, label %64, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.BMOperator, ptr %2, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %61, ptr noundef nonnull %63, ptr noundef nonnull @.str.36, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %65

64:                                               ; preds = %57
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %61, ptr noundef nonnull %2, ptr noundef nonnull @.str.37, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %65

65:                                               ; preds = %64, %62
  %66 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %27, ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1) #7
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @EDBM_update_generic(ptr noundef nonnull %27, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %69

69:                                               ; preds = %65, %68
  %70 = phi i8 [ 1, %68 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %2) #8
  ret i8 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_inset_update_header(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !121 {
  %3 = alloca [180 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %3) #8
  %7 = tail call ptr @CTX_wm_area(ptr noundef %1) #7
  %8 = tail call ptr @CTX_data_scene(ptr noundef %1) #7
  %9 = icmp eq ptr %7, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8
  %11 = getelementptr inbounds %struct.InsetData, ptr %6, i64 0, i32 9
  %12 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %11) #7
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %15) #7
  br label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = tail call float @RNA_float_get(ptr noundef %18, ptr noundef nonnull @.str.15) #7
  %20 = fpext float %19 to double
  %21 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.39, double noundef %20) #7
  %22 = getelementptr inbounds i8, ptr %4, i64 64
  %23 = load ptr, ptr %17, align 8, !tbaa !68
  %24 = call float @RNA_float_get(ptr noundef %23, ptr noundef nonnull @.str.18) #7
  %25 = fpext float %24 to double
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %22, i64 noundef 64, ptr noundef nonnull @.str.39, double noundef %25) #7
  br label %27

27:                                               ; preds = %16, %14
  %28 = getelementptr inbounds i8, ptr %4, i64 64
  %29 = getelementptr inbounds %struct.InsetData, ptr %6, i64 0, i32 2
  %30 = load i8, ptr %29, align 8, !tbaa !70
  %31 = call ptr @WM_bool_as_string(i8 noundef zeroext %30) #7
  %32 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  %34 = call i32 @RNA_boolean_get(ptr noundef %33, ptr noundef nonnull @.str.20) #7
  %35 = trunc i32 %34 to i8
  %36 = call ptr @WM_bool_as_string(i8 noundef zeroext %35) #7
  %37 = load ptr, ptr %32, align 8, !tbaa !68
  %38 = call i32 @RNA_boolean_get(ptr noundef %37, ptr noundef nonnull @.str.3) #7
  %39 = trunc i32 %38 to i8
  %40 = call ptr @WM_bool_as_string(i8 noundef zeroext %39) #7
  %41 = load ptr, ptr %32, align 8, !tbaa !68
  %42 = call i32 @RNA_boolean_get(ptr noundef %41, ptr noundef nonnull @.str.26) #7
  %43 = trunc i32 %42 to i8
  %44 = call ptr @WM_bool_as_string(i8 noundef zeroext %43) #7
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 180, ptr noundef nonnull @.str.38, ptr noundef nonnull %4, ptr noundef nonnull %28, ptr noundef %31, ptr noundef %36, ptr noundef %40, ptr noundef %44) #7
  call void @ED_area_headerprint(ptr noundef nonnull %7, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  br label %46

46:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @EDBM_redo_state_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_mouse_line_cb(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_redo_state_restore(ptr, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @outputNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @handleNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #5 !PGOFuncName !122 {
  %2 = fcmp ogt float %0, 0.000000e+00
  %3 = select i1 %2, float %0, float 0.000000e+00
  ret float %3
}

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_inset_exit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !123 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.InsetData, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 4, !tbaa !77
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.InsetData, ptr %5, i64 0, i32 11
  tail call void @EDBM_redo_state_free(ptr noundef nonnull %12, ptr noundef null, i32 noundef 0) #7
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.InsetData, ptr %5, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  tail call void @ED_region_draw_cb_exit(ptr noundef %14, ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.InsetData, ptr %5, i64 0, i32 13
  %18 = load i16, ptr %17, align 8, !tbaa !118
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 40
  store i8 %19, ptr %20, align 1, !tbaa !116
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !114
  br label %21

21:                                               ; preds = %9, %2
  %22 = icmp eq ptr %3, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void @ED_area_headerprint(ptr noundef nonnull %3, ptr noundef null) #7
  br label %24

24:                                               ; preds = %23, %21
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  %26 = load ptr, ptr %4, align 8, !tbaa !53
  tail call void %25(ptr noundef %26) #7
  ret void
}

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_redo_state_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!51 = !{!"editmesh_inset.c:edbm_inset_invoke"}
!52 = !{i8 0, i8 2}
!53 = !{!54, !36, i64 96}
!54 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !37, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !37, i64 0}
!59 = !{!60, !56, i64 12}
!60 = !{!"", !56, i64 0, !56, i64 4, !37, i64 8, !56, i64 12, !56, i64 16, !37, i64 20, !37, i64 21, !56, i64 24, !36, i64 32, !61, i64 40, !37, i64 180, !62, i64 192, !36, i64 200, !41, i64 208}
!61 = !{!"NumInput", !41, i64 0, !58, i64 4, !37, i64 8, !37, i64 20, !41, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !41, i64 68, !37, i64 70, !58, i64 136}
!62 = !{!"BMBackup", !36, i64 0}
!63 = !{!60, !56, i64 16}
!64 = !{!"editmesh_inset.c:edbm_inset_modal"}
!65 = !{!66, !41, i64 18}
!66 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !58, i64 20, !58, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !58, i64 48, !58, i64 52, !67, i64 56, !58, i64 64, !58, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !58, i64 108, !36, i64 112}
!67 = !{!"double", !37, i64 0}
!68 = !{!54, !36, i64 112}
!69 = !{!66, !41, i64 16}
!70 = !{!60, !37, i64 8}
!71 = !{!60, !56, i64 4}
!72 = !{!60, !56, i64 0}
!73 = !{!60, !37, i64 21}
!74 = !{!60, !56, i64 24}
!75 = !{!"editmesh_inset.c:edbm_inset_exec"}
!76 = !{!"editmesh_inset.c:edbm_inset_cancel"}
!77 = !{!60, !37, i64 20}
!78 = !{!60, !36, i64 32}
!79 = !{!"editmesh_inset.c:edbm_inset_init"}
!80 = !{!81, !36, i64 0}
!81 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !58, i64 16, !36, i64 24, !58, i64 32, !36, i64 40, !36, i64 48, !82, i64 56, !36, i64 64, !58, i64 72, !36, i64 80, !58, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !58, i64 104}
!82 = !{!"long", !37, i64 0}
!83 = !{!84, !58, i64 16}
!84 = !{!"BMesh", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !58, i64 88, !58, i64 92, !58, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !58, i64 128, !36, i64 136, !85, i64 144, !85, i64 344, !85, i64 544, !85, i64 744, !41, i64 944, !58, i64 948, !58, i64 952, !58, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!85 = !{!"CustomData", !36, i64 0, !37, i64 8, !58, i64 172, !58, i64 176, !58, i64 180, !36, i64 184, !36, i64 192}
!86 = !{!36, !36, i64 0}
!87 = !{!60, !41, i64 40}
!88 = !{!89, !37, i64 4604}
!89 = !{!"Scene", !90, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !58, i64 232, !58, i64 236, !58, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !91, i64 280, !100, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !58, i64 4380, !39, i64 4384, !101, i64 4400, !102, i64 4416, !105, i64 4600, !36, i64 4608, !106, i64 4616, !36, i64 4640, !82, i64 4648, !82, i64 4656, !93, i64 4664, !94, i64 4824, !107, i64 4888, !36, i64 4952}
!90 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !58, i64 100, !58, i64 104, !58, i64 108, !36, i64 112}
!91 = !{!"RenderData", !92, i64 0, !36, i64 248, !36, i64 256, !95, i64 264, !96, i64 328, !58, i64 400, !58, i64 404, !58, i64 408, !56, i64 412, !58, i64 416, !58, i64 420, !58, i64 424, !58, i64 428, !41, i64 432, !41, i64 434, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !58, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !58, i64 484, !58, i64 488, !41, i64 492, !41, i64 494, !58, i64 496, !58, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !58, i64 516, !58, i64 520, !58, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !97, i64 544, !97, i64 560, !98, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !56, i64 612, !56, i64 616, !56, i64 620, !56, i64 624, !58, i64 628, !56, i64 632, !56, i64 636, !56, i64 640, !56, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !56, i64 660, !56, i64 664, !41, i64 668, !41, i64 670, !56, i64 672, !56, i64 676, !37, i64 680, !58, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !58, i64 2520, !41, i64 2524, !41, i64 2526, !56, i64 2528, !56, i64 2532, !41, i64 2536, !41, i64 2538, !56, i64 2540, !41, i64 2544, !41, i64 2546, !58, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !56, i64 2560, !56, i64 2564, !36, i64 2568, !58, i64 2576, !56, i64 2580, !37, i64 2584, !99, i64 2616, !58, i64 3976, !58, i64 3980}
!92 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !56, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !93, i64 24, !94, i64 184}
!93 = !{!"ColorManagedViewSettings", !58, i64 0, !58, i64 4, !37, i64 8, !37, i64 72, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!94 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!95 = !{!"QuicktimeCodecSettings", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !41, i64 48, !41, i64 50, !58, i64 52, !58, i64 56, !58, i64 60}
!96 = !{!"FFMpegCodecData", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !56, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !36, i64 64}
!97 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!98 = !{!"rcti", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!99 = !{!"BakeData", !92, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !56, i64 1280, !56, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!100 = !{!"AudioData", !58, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !58, i64 16, !41, i64 20, !41, i64 22, !56, i64 24, !56, i64 28}
!101 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!102 = !{!"GameData", !101, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !103, i64 40, !41, i64 64, !41, i64 66, !56, i64 68, !104, i64 72, !56, i64 128, !56, i64 132, !58, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180}
!103 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !56, i64 8, !56, i64 12, !36, i64 16}
!104 = !{!"RecastData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !58, i64 40, !56, i64 44, !56, i64 48, !41, i64 52, !41, i64 54}
!105 = !{!"UnitSettings", !56, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!106 = !{!"PhysicsSettings", !37, i64 0, !58, i64 12, !58, i64 16, !58, i64 20}
!107 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!108 = !{!60, !58, i64 44}
!109 = !{i64 0, i64 8, !86}
!110 = !{!111, !36, i64 240}
!111 = !{!"ARegion", !36, i64 0, !36, i64 8, !112, i64 16, !98, i64 176, !98, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !56, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!112 = !{!"View2D", !97, i64 0, !97, i64 16, !98, i64 32, !98, i64 48, !98, i64 64, !37, i64 80, !37, i64 88, !56, i64 96, !56, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !58, i64 136, !58, i64 140, !36, i64 144, !36, i64 152}
!113 = !{!60, !36, i64 200}
!114 = !{!115, !41, i64 2084}
!115 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !58, i64 2096, !58, i64 2100, !37, i64 2104, !58, i64 2108, !58, i64 2112, !37, i64 2116}
!116 = !{!117, !37, i64 291}
!117 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !58, i64 32, !56, i64 36, !37, i64 40, !37, i64 56, !56, i64 72, !56, i64 76, !37, i64 80, !37, i64 81, !58, i64 84, !58, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !97, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !58, i64 224, !58, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !56, i64 244, !56, i64 248, !56, i64 252, !56, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!118 = !{!60, !41, i64 208}
!119 = !{!"editmesh_inset.c:len_v2"}
!120 = !{!"editmesh_inset.c:edbm_inset_calc"}
!121 = !{!"editmesh_inset.c:edbm_inset_update_header"}
!122 = !{!"editmesh_inset.c:max_ff"}
!123 = !{!"editmesh_inset.c:edbm_inset_exit"}
