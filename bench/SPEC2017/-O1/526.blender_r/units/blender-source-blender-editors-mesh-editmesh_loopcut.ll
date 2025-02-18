; ModuleID = 'blender/source/blender/editors/mesh/editmesh_loopcut.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_loopcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RingSelOpData = type { ptr, ptr, ptr, i32, ptr, i32, %struct.ViewContext, ptr, ptr, ptr, %struct.NumInput, i8, i8 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"Loop Cut\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"MESH_OT_loopcut\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Add a new loop between existing loops\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"number_cuts\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Number of Cuts\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"smoothness\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Smoothness\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Smoothness factor\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"falloff\00", align 1
@proportional_falloff_curve_only_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"Falloff\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Falloff type the feather\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"edge_index\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"mesh_select_mode_init\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"Loop cut does not work well on deformed edit mesh display\00", align 1
@.str.16 = private unnamed_addr constant [97 x i8] c"Select a ring to be cut, use mouse-wheel or page-up/down for number of cuts, hold Alt for smooth\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"ringsel Modal Op Data\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.edgering_preview_calc_points = private unnamed_addr constant [29 x i8] c"edgering_preview_calc_points\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [16 x i8] c"BLI_array.edges\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Number of Cuts: %s, Smooth: %s (Alt)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_loopcut(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ringcut_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @loopcut_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @loopcut_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @ringcut_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_region_view3d, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 100) #5
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #5
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef -4.000000e+00, float noundef 4.000000e+00) #5
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #5
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_property(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 4, i32 noundef 0) #5
  tail call void @RNA_def_property_enum_items(ptr noundef %16, ptr noundef nonnull @proportional_falloff_curve_only_items) #5
  tail call void @RNA_def_property_enum_default(ptr noundef %16, i32 noundef 2) #5
  tail call void @RNA_def_property_ui_text(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #5
  tail call void @RNA_def_property_translation_context(ptr noundef %16, ptr noundef nonnull @.str.12) #5
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2147483647) #5
  tail call void @RNA_def_property_flag(ptr noundef %18, i32 noundef 524288) #5
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = tail call ptr @RNA_def_boolean_array(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5) #5
  tail call void @RNA_def_property_flag(ptr noundef %20, i32 noundef 524288) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ringcut_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @loopcut_init(ptr noundef %0, ptr noundef %1, ptr noundef %2), !range !51
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @loopcut_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @loopcut_init(ptr noundef %0, ptr noundef %1, ptr noundef null), !range !51
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @loopcut_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [192 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.6) #5
  %12 = load ptr, ptr %9, align 8, !tbaa !52
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.3) #5
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.RingSelOpData, ptr %15, i64 0, i32 10
  %17 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %16) #5
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #5
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !55
  %20 = icmp eq i16 %19, 1
  %21 = icmp ne i8 %17, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %46

23:                                               ; preds = %3
  %24 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %2) #5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %27 = sitofp i32 %13 to float
  store float %27, ptr %5, align 4, !tbaa !59
  %28 = getelementptr inbounds float, ptr %5, i64 1
  store float %11, ptr %28, align 4, !tbaa !59
  %29 = call zeroext i8 @applyNumInput(ptr noundef nonnull %16, ptr noundef nonnull %5) #5
  %30 = load float, ptr %5, align 4
  %31 = fcmp olt float %30, 0.000000e+00
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = fcmp ogt float %30, 5.000000e+02
  %34 = select i1 %33, float 5.000000e+02, float %30
  %35 = fptosi float %34 to i32
  br label %36

36:                                               ; preds = %26, %32
  %37 = phi i32 [ %35, %32 ], [ 0, %26 ]
  %38 = load float, ptr %28, align 4
  %39 = fcmp olt float %38, -4.000000e+00
  %40 = fcmp ogt float %38, 4.000000e+00
  %41 = select i1 %40, float 4.000000e+00, float %38
  %42 = select i1 %39, float -4.000000e+00, float %41
  %43 = load ptr, ptr %9, align 8, !tbaa !52
  call void @RNA_int_set(ptr noundef %43, ptr noundef nonnull @.str.3, i32 noundef %37) #5
  call fastcc void @ringsel_find_edge(ptr noundef %15, i32 noundef %37)
  %44 = load ptr, ptr %9, align 8, !tbaa !52
  call void @RNA_float_set(ptr noundef %44, ptr noundef nonnull @.str.6, float noundef %42) #5
  %45 = load ptr, ptr %15, align 8, !tbaa !61
  call void @ED_region_tag_redraw(ptr noundef %45) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %255

46:                                               ; preds = %23, %3
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %48 = load i16, ptr %47, align 8, !tbaa !65
  switch i16 %48, label %218 [
    i16 220, label %49
    i16 163, label %49
    i16 1, label %49
    i16 3, label %111
    i16 218, label %136
    i16 164, label %164
    i16 168, label %164
    i16 10, label %164
    i16 162, label %180
    i16 169, label %180
    i16 11, label %180
    i16 4, label %196
  ]

49:                                               ; preds = %46, %46, %46
  %50 = load i16, ptr %18, align 2, !tbaa !55
  %51 = icmp eq i16 %50, 1
  %52 = load ptr, ptr %15, align 8, !tbaa !61
  tail call void @ED_region_tag_redraw(ptr noundef %52) #5
  br i1 %51, label %53, label %218

53:                                               ; preds = %49
  %54 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_headerprint(ptr noundef %54, ptr noundef null) #5
  %55 = getelementptr inbounds %struct.RingSelOpData, ptr %15, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  %57 = icmp eq ptr %56, null
  br i1 %57, label %88, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.RingSelOpData, ptr %15, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !67
  %61 = load ptr, ptr %60, align 8, !tbaa !68
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %61, i8 noundef zeroext 2) #5
  %62 = load ptr, ptr %9, align 8, !tbaa !52
  %63 = load ptr, ptr %55, align 8, !tbaa !66
  %64 = getelementptr inbounds %struct.BMHeader, ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %62, ptr noundef nonnull @.str.13, i32 noundef %65) #5
  tail call fastcc void @ringsel_finish(ptr noundef %0, ptr noundef %1)
  %66 = load ptr, ptr %14, align 8, !tbaa !54
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  %68 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 20
  %69 = load ptr, ptr %68, align 8, !tbaa !73
  %70 = getelementptr inbounds %struct.RingSelOpData, ptr %66, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !78
  tail call void @ED_region_draw_cb_exit(ptr noundef %69, ptr noundef %71) #5
  %72 = getelementptr inbounds %struct.RingSelOpData, ptr %66, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !79
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %58
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %76(ptr noundef nonnull %73) #5
  store ptr null, ptr %72, align 8, !tbaa !79
  br label %77

77:                                               ; preds = %75, %58
  %78 = getelementptr inbounds %struct.RingSelOpData, ptr %66, i64 0, i32 3
  store i32 0, ptr %78, align 8, !tbaa !81
  %79 = getelementptr inbounds %struct.RingSelOpData, ptr %66, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !82
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %83(ptr noundef nonnull %80) #5
  store ptr null, ptr %79, align 8, !tbaa !82
  br label %84

84:                                               ; preds = %77, %82
  %85 = getelementptr inbounds %struct.RingSelOpData, ptr %66, i64 0, i32 5
  store i32 0, ptr %85, align 8, !tbaa !83
  %86 = load ptr, ptr %66, align 8, !tbaa !61
  tail call void @ED_region_tag_redraw(ptr noundef %86) #5
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %87(ptr noundef nonnull %66) #5
  store ptr null, ptr %14, align 8, !tbaa !54
  br label %249

88:                                               ; preds = %53
  %89 = load ptr, ptr %14, align 8, !tbaa !54
  %90 = load ptr, ptr %89, align 8, !tbaa !61
  %91 = getelementptr inbounds %struct.ARegion, ptr %90, i64 0, i32 20
  %92 = load ptr, ptr %91, align 8, !tbaa !73
  %93 = getelementptr inbounds %struct.RingSelOpData, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !78
  tail call void @ED_region_draw_cb_exit(ptr noundef %92, ptr noundef %94) #5
  %95 = getelementptr inbounds %struct.RingSelOpData, ptr %89, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !79
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %88
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %99(ptr noundef nonnull %96) #5
  store ptr null, ptr %95, align 8, !tbaa !79
  br label %100

100:                                              ; preds = %98, %88
  %101 = getelementptr inbounds %struct.RingSelOpData, ptr %89, i64 0, i32 3
  store i32 0, ptr %101, align 8, !tbaa !81
  %102 = getelementptr inbounds %struct.RingSelOpData, ptr %89, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !82
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %106(ptr noundef nonnull %103) #5
  store ptr null, ptr %102, align 8, !tbaa !82
  br label %107

107:                                              ; preds = %100, %105
  %108 = getelementptr inbounds %struct.RingSelOpData, ptr %89, i64 0, i32 5
  store i32 0, ptr %108, align 8, !tbaa !83
  %109 = load ptr, ptr %89, align 8, !tbaa !61
  tail call void @ED_region_tag_redraw(ptr noundef %109) #5
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %110(ptr noundef nonnull %89) #5
  store ptr null, ptr %14, align 8, !tbaa !54
  br label %249

111:                                              ; preds = %46
  %112 = load ptr, ptr %15, align 8, !tbaa !61
  tail call void @ED_region_tag_redraw(ptr noundef %112) #5
  %113 = load ptr, ptr %14, align 8, !tbaa !54
  %114 = load ptr, ptr %113, align 8, !tbaa !61
  %115 = getelementptr inbounds %struct.ARegion, ptr %114, i64 0, i32 20
  %116 = load ptr, ptr %115, align 8, !tbaa !73
  %117 = getelementptr inbounds %struct.RingSelOpData, ptr %113, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !78
  tail call void @ED_region_draw_cb_exit(ptr noundef %116, ptr noundef %118) #5
  %119 = getelementptr inbounds %struct.RingSelOpData, ptr %113, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !79
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %111
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %123(ptr noundef nonnull %120) #5
  store ptr null, ptr %119, align 8, !tbaa !79
  br label %124

124:                                              ; preds = %122, %111
  %125 = getelementptr inbounds %struct.RingSelOpData, ptr %113, i64 0, i32 3
  store i32 0, ptr %125, align 8, !tbaa !81
  %126 = getelementptr inbounds %struct.RingSelOpData, ptr %113, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !82
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %124
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %130(ptr noundef nonnull %127) #5
  store ptr null, ptr %126, align 8, !tbaa !82
  br label %131

131:                                              ; preds = %124, %129
  %132 = getelementptr inbounds %struct.RingSelOpData, ptr %113, i64 0, i32 5
  store i32 0, ptr %132, align 8, !tbaa !83
  %133 = load ptr, ptr %113, align 8, !tbaa !61
  tail call void @ED_region_tag_redraw(ptr noundef %133) #5
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %134(ptr noundef nonnull %113) #5
  store ptr null, ptr %14, align 8, !tbaa !54
  %135 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_headerprint(ptr noundef %135, ptr noundef null) #5
  br label %249

136:                                              ; preds = %46
  %137 = load i16, ptr %18, align 2, !tbaa !55
  %138 = icmp eq i16 %137, 2
  %139 = load ptr, ptr %15, align 8, !tbaa !61
  tail call void @ED_region_tag_redraw(ptr noundef %139) #5
  br i1 %138, label %140, label %218

140:                                              ; preds = %136
  %141 = tail call ptr @CTX_wm_area(ptr noundef %0) #5
  tail call void @ED_area_headerprint(ptr noundef %141, ptr noundef null) #5
  %142 = load ptr, ptr %14, align 8, !tbaa !54
  %143 = load ptr, ptr %142, align 8, !tbaa !61
  %144 = getelementptr inbounds %struct.ARegion, ptr %143, i64 0, i32 20
  %145 = load ptr, ptr %144, align 8, !tbaa !73
  %146 = getelementptr inbounds %struct.RingSelOpData, ptr %142, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !78
  tail call void @ED_region_draw_cb_exit(ptr noundef %145, ptr noundef %147) #5
  %148 = getelementptr inbounds %struct.RingSelOpData, ptr %142, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !79
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %140
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %152(ptr noundef nonnull %149) #5
  store ptr null, ptr %148, align 8, !tbaa !79
  br label %153

153:                                              ; preds = %151, %140
  %154 = getelementptr inbounds %struct.RingSelOpData, ptr %142, i64 0, i32 3
  store i32 0, ptr %154, align 8, !tbaa !81
  %155 = getelementptr inbounds %struct.RingSelOpData, ptr %142, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !82
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %159(ptr noundef nonnull %156) #5
  store ptr null, ptr %155, align 8, !tbaa !82
  br label %160

160:                                              ; preds = %153, %158
  %161 = getelementptr inbounds %struct.RingSelOpData, ptr %142, i64 0, i32 5
  store i32 0, ptr %161, align 8, !tbaa !83
  %162 = load ptr, ptr %142, align 8, !tbaa !61
  tail call void @ED_region_tag_redraw(ptr noundef %162) #5
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %163(ptr noundef nonnull %142) #5
  store ptr null, ptr %14, align 8, !tbaa !54
  br label %249

164:                                              ; preds = %46, %46, %46
  %165 = load i16, ptr %18, align 2, !tbaa !55
  %166 = icmp eq i16 %165, 2
  br i1 %166, label %218, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %169 = load i16, ptr %168, align 4, !tbaa !84
  %170 = icmp eq i16 %169, 0
  %171 = load ptr, ptr %9, align 8, !tbaa !52
  br i1 %170, label %172, label %176

172:                                              ; preds = %167
  %173 = tail call i32 @llvm.smin.i32(i32 %13, i32 499)
  %174 = tail call i32 @llvm.smax.i32(i32 %173, i32 -1)
  %175 = add nsw i32 %174, 1
  tail call void @RNA_int_set(ptr noundef %171, ptr noundef nonnull @.str.3, i32 noundef %175) #5
  tail call fastcc void @ringsel_find_edge(ptr noundef %15, i32 noundef %175)
  br label %213

176:                                              ; preds = %167
  %177 = fadd float %11, 0x3FA99999A0000000
  %178 = fcmp olt float %177, 4.000000e+00
  %179 = select i1 %178, float %177, float 4.000000e+00
  tail call void @RNA_float_set(ptr noundef %171, ptr noundef nonnull @.str.6, float noundef %179) #5
  br label %213

180:                                              ; preds = %46, %46, %46
  %181 = load i16, ptr %18, align 2, !tbaa !55
  %182 = icmp eq i16 %181, 2
  br i1 %182, label %218, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %185 = load i16, ptr %184, align 4, !tbaa !84
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = tail call i32 @llvm.smax.i32(i32 %13, i32 2)
  %189 = add nsw i32 %188, -1
  %190 = load ptr, ptr %9, align 8, !tbaa !52
  tail call void @RNA_int_set(ptr noundef %190, ptr noundef nonnull @.str.3, i32 noundef %189) #5
  tail call fastcc void @ringsel_find_edge(ptr noundef %15, i32 noundef %189)
  br label %213

191:                                              ; preds = %183
  %192 = fadd float %11, 0xBFA99999A0000000
  %193 = fcmp ogt float %192, -4.000000e+00
  %194 = select i1 %193, float %192, float -4.000000e+00
  %195 = load ptr, ptr %9, align 8, !tbaa !52
  tail call void @RNA_float_set(ptr noundef %195, ptr noundef nonnull @.str.6, float noundef %194) #5
  br label %213

196:                                              ; preds = %46
  %197 = icmp eq i8 %17, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %200 = load i32, ptr %199, align 4, !tbaa !85
  %201 = getelementptr inbounds %struct.RingSelOpData, ptr %15, i64 0, i32 6, i32 7
  store i32 %200, ptr %201, align 8, !tbaa !85
  %202 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %203 = load i32, ptr %202, align 4, !tbaa !85
  %204 = getelementptr inbounds %struct.RingSelOpData, ptr %15, i64 0, i32 6, i32 7, i64 1
  store i32 %203, ptr %204, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  %205 = tail call float @ED_view3d_select_dist_px() #5
  store float %205, ptr %4, align 4, !tbaa !59
  %206 = getelementptr inbounds %struct.RingSelOpData, ptr %15, i64 0, i32 6
  %207 = call ptr @EDBM_edge_find_nearest(ptr noundef nonnull %206, ptr noundef nonnull %4) #5
  %208 = getelementptr inbounds %struct.RingSelOpData, ptr %15, i64 0, i32 9
  %209 = load ptr, ptr %208, align 8, !tbaa !66
  %210 = icmp eq ptr %209, %207
  br i1 %210, label %212, label %211

211:                                              ; preds = %198
  store ptr %207, ptr %208, align 8, !tbaa !66
  call fastcc void @ringsel_find_edge(ptr noundef %15, i32 noundef %13)
  br label %212

212:                                              ; preds = %198, %211
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %213

213:                                              ; preds = %187, %191, %172, %176, %212
  %214 = phi i32 [ %13, %212 ], [ %175, %172 ], [ %13, %176 ], [ %189, %187 ], [ %13, %191 ]
  %215 = phi i8 [ 0, %212 ], [ 1, %172 ], [ 1, %176 ], [ 1, %187 ], [ 1, %191 ]
  %216 = phi float [ %11, %212 ], [ %11, %172 ], [ %179, %176 ], [ %11, %187 ], [ %194, %191 ]
  %217 = load ptr, ptr %15, align 8, !tbaa !61
  call void @ED_region_tag_redraw(ptr noundef %217) #5
  br label %218

218:                                              ; preds = %213, %136, %49, %196, %180, %164, %46
  %219 = phi i32 [ %13, %46 ], [ %13, %196 ], [ %13, %180 ], [ %13, %164 ], [ %13, %49 ], [ %13, %136 ], [ %214, %213 ]
  %220 = phi i8 [ 0, %46 ], [ 0, %196 ], [ 0, %180 ], [ 0, %164 ], [ 0, %49 ], [ 0, %136 ], [ %215, %213 ]
  %221 = phi float [ %11, %46 ], [ %11, %196 ], [ %11, %180 ], [ %11, %164 ], [ %11, %49 ], [ %11, %136 ], [ %216, %213 ]
  %222 = phi i1 [ true, %46 ], [ true, %196 ], [ true, %180 ], [ true, %164 ], [ false, %49 ], [ false, %136 ], [ false, %213 ]
  br i1 %222, label %223, label %249

223:                                              ; preds = %218
  %224 = load i16, ptr %18, align 2, !tbaa !55
  %225 = icmp eq i16 %224, 1
  br i1 %225, label %226, label %249

226:                                              ; preds = %223
  %227 = call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %2) #5
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %249, label %229

229:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %230 = sitofp i32 %219 to float
  store float %230, ptr %6, align 4, !tbaa !59
  %231 = getelementptr inbounds float, ptr %6, i64 1
  store float %221, ptr %231, align 4, !tbaa !59
  %232 = call zeroext i8 @applyNumInput(ptr noundef nonnull %16, ptr noundef nonnull %6) #5
  %233 = load float, ptr %6, align 4
  %234 = fcmp olt float %233, 0.000000e+00
  br i1 %234, label %239, label %235

235:                                              ; preds = %229
  %236 = fcmp ogt float %233, 5.000000e+02
  %237 = select i1 %236, float 5.000000e+02, float %233
  %238 = fptosi float %237 to i32
  br label %239

239:                                              ; preds = %229, %235
  %240 = phi i32 [ %238, %235 ], [ 0, %229 ]
  %241 = load float, ptr %231, align 4
  %242 = fcmp olt float %241, -4.000000e+00
  %243 = fcmp ogt float %241, 4.000000e+00
  %244 = select i1 %243, float 4.000000e+00, float %241
  %245 = select i1 %242, float -4.000000e+00, float %244
  %246 = load ptr, ptr %9, align 8, !tbaa !52
  call void @RNA_int_set(ptr noundef %246, ptr noundef nonnull @.str.3, i32 noundef %240) #5
  call fastcc void @ringsel_find_edge(ptr noundef %15, i32 noundef %240)
  %247 = load ptr, ptr %9, align 8, !tbaa !52
  call void @RNA_float_set(ptr noundef %247, ptr noundef nonnull @.str.6, float noundef %245) #5
  %248 = load ptr, ptr %15, align 8, !tbaa !61
  call void @ED_region_tag_redraw(ptr noundef %248) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  br label %249

249:                                              ; preds = %107, %84, %218, %223, %226, %239, %160, %131
  %250 = phi i32 [ %13, %160 ], [ %13, %131 ], [ %219, %218 ], [ %240, %239 ], [ %219, %226 ], [ %219, %223 ], [ %13, %84 ], [ %13, %107 ]
  %251 = phi i8 [ 0, %160 ], [ 0, %131 ], [ %220, %218 ], [ 1, %239 ], [ %220, %226 ], [ %220, %223 ], [ 0, %84 ], [ 0, %107 ]
  %252 = phi float [ %11, %160 ], [ %11, %131 ], [ %221, %218 ], [ %245, %239 ], [ %221, %226 ], [ %221, %223 ], [ %11, %84 ], [ %11, %107 ]
  %253 = phi i1 [ false, %160 ], [ false, %131 ], [ true, %218 ], [ true, %239 ], [ true, %226 ], [ true, %223 ], [ false, %84 ], [ false, %107 ]
  %254 = phi i32 [ 2, %160 ], [ 2, %131 ], [ undef, %218 ], [ undef, %239 ], [ undef, %226 ], [ undef, %223 ], [ 4, %84 ], [ 2, %107 ]
  br i1 %253, label %255, label %275

255:                                              ; preds = %249, %36
  %256 = phi i32 [ %37, %36 ], [ %250, %249 ]
  %257 = phi i8 [ 1, %36 ], [ %251, %249 ]
  %258 = phi float [ %42, %36 ], [ %252, %249 ]
  %259 = icmp eq i8 %257, 0
  br i1 %259, label %275, label %260

260:                                              ; preds = %255
  %261 = call ptr @CTX_data_scene(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #5
  %262 = call zeroext i8 @hasNumInput(ptr noundef nonnull %16) #5
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.Scene, ptr %261, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %16, ptr noundef nonnull %8, ptr noundef nonnull %265) #5
  br label %271

266:                                              ; preds = %260
  %267 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %256) #5
  %268 = getelementptr inbounds i8, ptr %8, i64 64
  %269 = fpext float %258 to double
  %270 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %268, i64 noundef 64, ptr noundef nonnull @.str.21, double noundef %269) #5
  br label %271

271:                                              ; preds = %266, %264
  %272 = getelementptr inbounds i8, ptr %8, i64 64
  %273 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 192, ptr noundef nonnull @.str.22, ptr noundef nonnull %8, ptr noundef nonnull %272) #5
  %274 = call ptr @CTX_wm_area(ptr noundef %0) #5
  call void @ED_area_headerprint(ptr noundef %274, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #5
  br label %275

275:                                              ; preds = %255, %271, %249
  %276 = phi i32 [ %254, %249 ], [ 1, %271 ], [ 1, %255 ]
  ret i32 %276
}

; Function Attrs: nounwind uwtable
define internal void @ringcut_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  tail call void @ED_region_draw_cb_exit(ptr noundef %7, ptr noundef %9) #5
  %10 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %14(ptr noundef nonnull %11) #5
  store ptr null, ptr %10, align 8, !tbaa !79
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %21(ptr noundef nonnull %18) #5
  store ptr null, ptr %17, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %15, %20
  %23 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 5
  store i32 0, ptr %23, align 8, !tbaa !83
  %24 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void @ED_region_tag_redraw(ptr noundef %24) #5
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %25(ptr noundef nonnull %4) #5
  store ptr null, ptr %3, align 8, !tbaa !54
  ret void
}

declare i32 @ED_operator_editmesh_region_view3d(ptr noundef) #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_enum_items(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_enum_default(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @loopcut_init(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca [3 x i32], align 4
  %6 = icmp eq ptr %2, null
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %8 = tail call ptr @modifiers_isDeformedByLattice(ptr noundef %7) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %7) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  tail call void @BKE_report(ptr noundef %15, i32 noundef 16, ptr noundef nonnull @.str.15) #5
  br label %16

16:                                               ; preds = %13, %10
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #5
  br i1 %6, label %17, label %29

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.13) #5
  %21 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #5
  %22 = icmp eq i32 %20, -1
  br i1 %22, label %106, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %21, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !87
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %106

28:                                               ; preds = %23
  tail call fastcc void @ringsel_init(ptr noundef %0, ptr noundef %1)
  br label %31

29:                                               ; preds = %16
  tail call fastcc void @ringsel_init(ptr noundef %0, ptr noundef %1)
  %30 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #5
  br label %31

31:                                               ; preds = %28, %29
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  br i1 %6, label %49, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.RingSelOpData, ptr %33, i64 0, i32 6, i32 7
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !85
  store i32 %37, ptr %35, align 4, !tbaa !85
  %38 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !85
  %40 = getelementptr inbounds %struct.RingSelOpData, ptr %33, i64 0, i32 6, i32 7, i64 1
  store i32 %39, ptr %40, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  %41 = tail call float @ED_view3d_select_dist_px() #5
  store float %41, ptr %4, align 4, !tbaa !59
  %42 = getelementptr inbounds %struct.RingSelOpData, ptr %33, i64 0, i32 6
  %43 = call ptr @EDBM_edge_find_nearest(ptr noundef nonnull %42, ptr noundef nonnull %4) #5
  %44 = getelementptr inbounds %struct.RingSelOpData, ptr %33, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !66
  %46 = icmp eq ptr %45, %43
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  store ptr %43, ptr %44, align 8, !tbaa !66
  call fastcc void @ringsel_find_edge(ptr noundef %33, i32 noundef 1)
  br label %48

48:                                               ; preds = %34, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %63

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = tail call i32 @RNA_int_get(ptr noundef %51, ptr noundef nonnull @.str.13) #5
  %53 = getelementptr inbounds %struct.RingSelOpData, ptr %33, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !67
  %55 = load ptr, ptr %54, align 8, !tbaa !68
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %55, i8 noundef zeroext 2) #5
  %56 = load ptr, ptr %53, align 8, !tbaa !67
  %57 = load ptr, ptr %56, align 8, !tbaa !68
  %58 = tail call ptr @BM_edge_at_index(ptr noundef %57, i32 noundef %52) #5
  %59 = getelementptr inbounds %struct.RingSelOpData, ptr %33, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !66
  %61 = icmp eq ptr %60, %58
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  store ptr %58, ptr %59, align 8, !tbaa !66
  tail call fastcc void @ringsel_find_edge(ptr noundef %33, i32 noundef 0)
  br label %63

63:                                               ; preds = %62, %49, %48
  %64 = call ptr @CTX_data_scene(ptr noundef %0) #5
  %65 = getelementptr inbounds %struct.Scene, ptr %64, i64 0, i32 20
  %66 = load ptr, ptr %65, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #5
  %67 = getelementptr inbounds %struct.ToolSettings, ptr %66, i64 0, i32 8
  %68 = load i16, ptr %67, align 2, !tbaa !108
  %69 = and i16 %68, 1
  %70 = zext nneg i16 %69 to i32
  store i32 %70, ptr %5, align 4, !tbaa !85
  %71 = getelementptr inbounds i32, ptr %5, i64 1
  %72 = lshr i16 %68, 1
  %73 = and i16 %72, 1
  %74 = zext nneg i16 %73 to i32
  store i32 %74, ptr %71, align 4, !tbaa !85
  %75 = getelementptr inbounds i32, ptr %5, i64 2
  %76 = lshr i16 %68, 2
  %77 = and i16 %76, 1
  %78 = zext nneg i16 %77 to i32
  store i32 %78, ptr %75, align 4, !tbaa !85
  %79 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  call void @RNA_boolean_set_array(ptr noundef %80, ptr noundef nonnull @.str.14, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #5
  br i1 %6, label %83, label %81

81:                                               ; preds = %63
  %82 = call ptr @CTX_wm_area(ptr noundef %0) #5
  call void @ED_area_headerprint(ptr noundef %82, ptr noundef nonnull @.str.16) #5
  br label %106

83:                                               ; preds = %63
  call fastcc void @ringsel_finish(ptr noundef %0, ptr noundef %1)
  %84 = load ptr, ptr %32, align 8, !tbaa !54
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = getelementptr inbounds %struct.ARegion, ptr %85, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8, !tbaa !73
  %88 = getelementptr inbounds %struct.RingSelOpData, ptr %84, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !78
  call void @ED_region_draw_cb_exit(ptr noundef %87, ptr noundef %89) #5
  %90 = getelementptr inbounds %struct.RingSelOpData, ptr %84, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !79
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  call void %94(ptr noundef nonnull %91) #5
  store ptr null, ptr %90, align 8, !tbaa !79
  br label %95

95:                                               ; preds = %93, %83
  %96 = getelementptr inbounds %struct.RingSelOpData, ptr %84, i64 0, i32 3
  store i32 0, ptr %96, align 8, !tbaa !81
  %97 = getelementptr inbounds %struct.RingSelOpData, ptr %84, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !82
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  call void %101(ptr noundef nonnull %98) #5
  store ptr null, ptr %97, align 8, !tbaa !82
  br label %102

102:                                              ; preds = %95, %100
  %103 = getelementptr inbounds %struct.RingSelOpData, ptr %84, i64 0, i32 5
  store i32 0, ptr %103, align 8, !tbaa !83
  %104 = load ptr, ptr %84, align 8, !tbaa !61
  call void @ED_region_tag_redraw(ptr noundef %104) #5
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  call void %105(ptr noundef nonnull %84) #5
  store ptr null, ptr %32, align 8, !tbaa !54
  br label %106

106:                                              ; preds = %23, %17, %102, %81
  %107 = phi i32 [ 1, %81 ], [ 4, %102 ], [ 2, %17 ], [ 2, %23 ]
  ret i32 %107
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_isDeformedByLattice(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ringsel_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !80
  %5 = tail call ptr %4(i64 noundef 280, ptr noundef nonnull @.str.17) #5
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !54
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  store ptr %7, ptr %5, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %9, ptr noundef nonnull @ringsel_draw, ptr noundef nonnull %5, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !78
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %13 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !115
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %12) #5
  %15 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 11
  store i8 0, ptr %16, align 4, !tbaa !116
  %17 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 12
  store i8 1, ptr %17, align 1, !tbaa !117
  %18 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10
  tail call void @initNumInput(ptr noundef nonnull %18) #5
  store i16 1, ptr %18, align 8, !tbaa !118
  %19 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !119
  %21 = or i16 %20, 10
  store i16 %21, ptr %19, align 8, !tbaa !119
  %22 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 38, i32 1
  %23 = load i8, ptr %22, align 4, !tbaa !120
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !121
  %26 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10, i32 2
  store i32 0, ptr %26, align 8, !tbaa !85
  %27 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10, i32 2, i64 1
  store i32 0, ptr %27, align 4, !tbaa !85
  %28 = load ptr, ptr %15, align 8, !tbaa !67
  tail call void @EDBM_mesh_ensure_valid_dm_hack(ptr noundef %3, ptr noundef %28) #5
  %29 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 6
  tail call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %29) #5
  %30 = load ptr, ptr %5, align 8, !tbaa !61
  tail call void @ED_region_tag_redraw(ptr noundef %30) #5
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_edge_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ringsel_finish(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.BMWalker, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.3) #5
  %9 = load ptr, ptr %6, align 8, !tbaa !52
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.6) #5
  %11 = fmul float %10, 0x3FD2B020C0000000
  %12 = load ptr, ptr %6, align 8, !tbaa !52
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.9) #5
  %14 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %100, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !122
  %22 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #5
  %24 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 11
  %25 = load i8, ptr %24, align 4, !tbaa !116
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  tail call void @EDBM_flag_disable_all(ptr noundef %19, i8 noundef zeroext 1) #5
  br label %28

28:                                               ; preds = %27, %17
  %29 = load ptr, ptr %19, align 8, !tbaa !68
  call void @BMW_init(ptr noundef nonnull %3, ptr noundef %29, i32 noundef 4, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #5
  %30 = call ptr @BMW_begin(ptr noundef nonnull %3, ptr noundef nonnull %15) #5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %28 ]
  %34 = load ptr, ptr %19, align 8, !tbaa !68
  call void @BM_edge_select_set(ptr noundef %34, ptr noundef nonnull %33, i8 noundef zeroext 1) #5
  %35 = call ptr @BMW_step(ptr noundef nonnull %3) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32, !llvm.loop !126

37:                                               ; preds = %32, %28
  call void @BMW_end(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #5
  %38 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 12
  %39 = load i8, ptr %38, align 1, !tbaa !117
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !129
  %44 = icmp ne ptr %43, null
  %45 = load ptr, ptr %14, align 8, !tbaa !66
  %46 = getelementptr inbounds %struct.BMEdge, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !130
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, i32 2, i32 3
  %50 = load ptr, ptr %19, align 8, !tbaa !68
  %51 = trunc i32 %13 to i16
  call void @BM_mesh_esubdivide(ptr noundef %50, i8 noundef zeroext 1, float noundef %11, i16 noundef signext %51, i8 noundef zeroext 1, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %8, i32 noundef %49, i32 noundef 1, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i32 noundef 0) #5
  %52 = xor i1 %44, true
  %53 = zext i1 %52 to i8
  call void @EDBM_update_generic(ptr noundef nonnull %19, i8 noundef zeroext %53, i8 noundef zeroext 1) #5
  br i1 %48, label %54, label %58

54:                                               ; preds = %41
  %55 = load ptr, ptr %19, align 8, !tbaa !68
  call void @BM_vert_select_set(ptr noundef %55, ptr noundef %21, i8 noundef zeroext 0) #5
  %56 = load ptr, ptr %19, align 8, !tbaa !68
  call void @BM_vert_select_set(ptr noundef %56, ptr noundef %23, i8 noundef zeroext 0) #5
  %57 = load ptr, ptr %18, align 8, !tbaa !67
  call void @EDBM_selectmode_flush_ex(ptr noundef %57, i16 noundef signext 1) #5
  br label %100

58:                                               ; preds = %41
  %59 = icmp sgt i32 %8, 1
  %60 = select i1 %44, i1 %59, i1 false
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.BMEditMesh, ptr %19, i64 0, i32 12
  %63 = load i16, ptr %62, align 4, !tbaa !131
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !132
  %69 = call zeroext i8 @EDBM_selectmode_disable(ptr noundef %68, ptr noundef nonnull %19, i16 noundef signext 1, i16 noundef signext 2) #5
  br label %100

70:                                               ; preds = %61, %58
  %71 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !132
  %73 = call zeroext i8 @EDBM_selectmode_disable(ptr noundef %72, ptr noundef nonnull %19, i16 noundef signext 4, i16 noundef signext 2) #5
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load ptr, ptr %18, align 8, !tbaa !67
  call void @EDBM_selectmode_flush(ptr noundef %76) #5
  br label %100

77:                                               ; preds = %37
  %78 = getelementptr inbounds %struct.BMEditMesh, ptr %19, i64 0, i32 12
  %79 = load i16, ptr %78, align 4, !tbaa !131
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %19, align 8, !tbaa !68
  %84 = load ptr, ptr %14, align 8, !tbaa !66
  %85 = getelementptr inbounds %struct.BMEdge, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !122
  call void @_bm_select_history_store(ptr noundef %83, ptr noundef %86) #5
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i16, ptr %78, align 4, !tbaa !131
  %89 = and i16 %88, 2
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %19, align 8, !tbaa !68
  %93 = load ptr, ptr %14, align 8, !tbaa !66
  call void @_bm_select_history_store(ptr noundef %92, ptr noundef %93) #5
  br label %94

94:                                               ; preds = %91, %87
  %95 = load ptr, ptr %18, align 8, !tbaa !67
  call void @EDBM_selectmode_flush(ptr noundef %95) #5
  %96 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !115
  %98 = getelementptr inbounds %struct.Object, ptr %97, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !133
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %99) #5
  br label %100

100:                                              ; preds = %94, %66, %70, %75, %54, %2
  ret void
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ringsel_draw(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !81
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %8, %3
  %13 = icmp eq ptr %4, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 47
  %16 = load i8, ptr %15, align 8, !tbaa !136
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @glDisable(i32 noundef 2929) #5
  br label %19

19:                                               ; preds = %18, %14, %12
  tail call void @glPushMatrix() #5
  %20 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %22) #5
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #5
  %23 = load i32, ptr %5, align 8, !tbaa !81
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  tail call void @glEnableClientState(i32 noundef 32884) #5
  %26 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %27) #5
  %28 = load i32, ptr %5, align 8, !tbaa !81
  %29 = shl nsw i32 %28, 1
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %29) #5
  tail call void @glDisableClientState(i32 noundef 32884) #5
  br label %30

30:                                               ; preds = %25, %19
  %31 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !83
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  tail call void @glPointSize(float noundef 3.000000e+00) #5
  tail call void @glEnableClientState(i32 noundef 32884) #5
  %35 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %36) #5
  %37 = load i32, ptr %31, align 8, !tbaa !83
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %37) #5
  tail call void @glDisableClientState(i32 noundef 32884) #5
  tail call void @glPointSize(float noundef 1.000000e+00) #5
  br label %38

38:                                               ; preds = %34, %30
  tail call void @glPopMatrix() #5
  br i1 %13, label %44, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 47
  %41 = load i8, ptr %40, align 8, !tbaa !136
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @glEnable(i32 noundef 2929) #5
  br label %44

44:                                               ; preds = %38, %39, %43, %8
  ret void
}

declare void @initNumInput(ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_ensure_valid_dm_hack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @em_setup_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare float @ED_view3d_select_dist_px() local_unnamed_addr #2

declare ptr @EDBM_edge_find_nearest(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ringsel_find_edge(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMWalker, align 8
  %4 = alloca [2 x [2 x ptr]], align 16
  %5 = alloca ptr, align 8
  %6 = alloca [2 x [2 x [3 x float]]], align 16
  %7 = alloca [2 x [2 x [3 x float]]], align 16
  %8 = alloca [2 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %11, label %306, label %15

15:                                               ; preds = %2
  br i1 %14, label %18, label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %17(ptr noundef nonnull %13) #5
  store ptr null, ptr %12, align 8, !tbaa !79
  br label %18

18:                                               ; preds = %16, %15
  %19 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 3
  store i32 0, ptr %19, align 8, !tbaa !81
  %20 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %24(ptr noundef nonnull %21) #5
  store ptr null, ptr %20, align 8, !tbaa !82
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 5
  store i32 0, ptr %26, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !67
  %29 = tail call ptr @EDBM_mesh_deform_dm_get(ptr noundef %28) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %27, align 8, !tbaa !67
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %33, i8 noundef zeroext 1) #5
  br label %34

34:                                               ; preds = %31, %25
  %35 = load ptr, ptr %9, align 8, !tbaa !66
  %36 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !130
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %94

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #5
  br i1 %30, label %43, label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %27, align 8, !tbaa !67
  %42 = load ptr, ptr %41, align 8, !tbaa !68
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %42, i8 noundef zeroext 1) #5
  br label %43

43:                                               ; preds = %40, %39
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !80
  %45 = sext i32 %1 to i64
  %46 = mul nsw i64 %45, 12
  %47 = tail call ptr %44(i64 noundef %46, ptr noundef nonnull @__func__.edgering_preview_calc_points) #5
  %48 = load ptr, ptr %9, align 8, !tbaa !66
  %49 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 2
  br i1 %30, label %62, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 76
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %60, %52 ]
  %54 = load ptr, ptr %51, align 8, !tbaa !138
  %55 = getelementptr inbounds ptr, ptr %49, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !80
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !71
  %59 = getelementptr inbounds [3 x float], ptr %8, i64 %53
  call void %54(ptr noundef nonnull %29, i32 noundef %58, ptr noundef nonnull %59) #5
  %60 = add nuw nsw i64 %53, 1
  %61 = icmp eq i64 %53, 0
  br i1 %61, label %52, label %77, !llvm.loop !140

62:                                               ; preds = %43, %62
  %63 = phi i64 [ %75, %62 ], [ 0, %43 ]
  %64 = getelementptr inbounds [3 x float], ptr %8, i64 %63
  %65 = getelementptr inbounds ptr, ptr %49, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !80
  %67 = getelementptr inbounds %struct.BMVert, ptr %66, i64 0, i32 2
  %68 = load float, ptr %67, align 4, !tbaa !59
  store float %68, ptr %64, align 4, !tbaa !59
  %69 = getelementptr inbounds %struct.BMVert, ptr %66, i64 0, i32 2, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !59
  %71 = getelementptr inbounds float, ptr %64, i64 1
  store float %70, ptr %71, align 4, !tbaa !59
  %72 = getelementptr inbounds %struct.BMVert, ptr %66, i64 0, i32 2, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !59
  %74 = getelementptr inbounds float, ptr %64, i64 2
  store float %73, ptr %74, align 4, !tbaa !59
  %75 = add nuw nsw i64 %63, 1
  %76 = icmp eq i64 %63, 0
  br i1 %76, label %62, label %77, !llvm.loop !141

77:                                               ; preds = %52, %62
  %78 = icmp slt i32 %1, 1
  br i1 %78, label %93, label %79

79:                                               ; preds = %77
  %80 = sitofp i32 %1 to float
  %81 = fadd float %80, 1.000000e+00
  %82 = getelementptr inbounds [2 x [3 x float]], ptr %8, i64 0, i64 1
  %83 = zext nneg i32 %1 to i64
  br label %84

84:                                               ; preds = %79, %84
  %85 = phi i64 [ 0, %79 ], [ %90, %84 ]
  %86 = phi i32 [ 1, %79 ], [ %91, %84 ]
  %87 = sitofp i32 %86 to float
  %88 = fdiv float %87, %81
  %89 = getelementptr inbounds [3 x float], ptr %47, i64 %85
  call void @interp_v3_v3v3(ptr noundef %89, ptr noundef nonnull %8, ptr noundef nonnull %82, float noundef %88) #5
  %90 = add nuw nsw i64 %85, 1
  %91 = add nuw nsw i32 %86, 1
  %92 = icmp eq i64 %90, %83
  br i1 %92, label %93, label %84, !llvm.loop !142

93:                                               ; preds = %84, %77
  store ptr %47, ptr %20, align 8, !tbaa !82
  store i32 %1, ptr %26, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #5
  br label %318

94:                                               ; preds = %34
  %95 = load ptr, ptr %27, align 8, !tbaa !67
  %96 = load ptr, ptr %95, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store ptr null, ptr %5, align 8, !tbaa !80
  call void @BMW_init(ptr noundef nonnull %3, ptr noundef %96, i32 noundef 4, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #5
  %97 = call ptr @BMW_begin(ptr noundef nonnull %3, ptr noundef %35) #5
  %98 = icmp eq ptr %97, null
  br i1 %98, label %204, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds [2 x [2 x ptr]], ptr %4, i64 0, i64 1
  %101 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %102 = getelementptr inbounds [2 x [2 x ptr]], ptr %4, i64 0, i64 1, i64 1
  %103 = getelementptr inbounds [2 x [2 x ptr]], ptr %4, i64 0, i64 1
  %104 = getelementptr inbounds [2 x [2 x ptr]], ptr %4, i64 0, i64 1, i64 1
  %105 = icmp slt i32 %1, 1
  %106 = sitofp i32 %1 to float
  %107 = fadd float %106, 1.000000e+00
  %108 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 76
  %109 = getelementptr inbounds [2 x [3 x float]], ptr %6, i64 0, i64 1
  %110 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %6, i64 0, i64 1
  %111 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %6, i64 0, i64 1, i64 1
  br label %112

112:                                              ; preds = %99, %198
  %113 = phi ptr [ %97, %99 ], [ %202, %198 ]
  %114 = phi i32 [ 0, %99 ], [ %201, %198 ]
  %115 = phi ptr [ null, %99 ], [ %113, %198 ]
  %116 = phi i32 [ 0, %99 ], [ %200, %198 ]
  %117 = phi ptr [ null, %99 ], [ %199, %198 ]
  %118 = icmp eq ptr %115, null
  br i1 %118, label %198, label %119

119:                                              ; preds = %112
  %120 = icmp eq ptr %117, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr %4, align 16, !tbaa !80
  store ptr %122, ptr %100, align 16, !tbaa !80
  %123 = load ptr, ptr %101, align 8, !tbaa !80
  store ptr %123, ptr %102, align 8, !tbaa !80
  br label %130

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.BMEdge, ptr %115, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !122
  store ptr %126, ptr %103, align 16, !tbaa !80
  %127 = getelementptr inbounds %struct.BMEdge, ptr %115, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !125
  store ptr %128, ptr %104, align 8, !tbaa !80
  %129 = load ptr, ptr %125, align 8, !tbaa !122
  br label %130

130:                                              ; preds = %124, %121
  %131 = phi ptr [ %117, %121 ], [ %129, %124 ]
  call fastcc void @edgering_find_order(ptr noundef nonnull %115, ptr noundef nonnull %113, ptr noundef %131, ptr noundef nonnull %4)
  %132 = load ptr, ptr %4, align 16, !tbaa !80
  %133 = load ptr, ptr %5, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !80
  %137 = call i64 %136(ptr noundef nonnull %133) #5
  %138 = udiv i64 %137, 24
  br label %139

139:                                              ; preds = %135, %130
  %140 = phi i64 [ 0, %130 ], [ %138, %135 ]
  %141 = add nsw i32 %116, %1
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 24, i32 noundef %116, i32 noundef %1, ptr noundef nonnull @.str.19) #5
  br label %145

145:                                              ; preds = %144, %139
  br i1 %105, label %198, label %146

146:                                              ; preds = %145
  %147 = sext i32 %114 to i64
  br label %148

148:                                              ; preds = %146, %188
  %149 = phi i64 [ %147, %146 ], [ %193, %188 ]
  %150 = phi i32 [ 1, %146 ], [ %194, %188 ]
  %151 = sitofp i32 %150 to float
  %152 = fdiv float %151, %107
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #5
  br i1 %30, label %168, label %153

153:                                              ; preds = %148, %165
  %154 = phi i64 [ %166, %165 ], [ 0, %148 ]
  br label %155

155:                                              ; preds = %155, %153
  %156 = phi i64 [ 0, %153 ], [ %163, %155 ]
  %157 = load ptr, ptr %108, align 8, !tbaa !138
  %158 = getelementptr inbounds [2 x ptr], ptr %4, i64 %154, i64 %156
  %159 = load ptr, ptr %158, align 8, !tbaa !80
  %160 = getelementptr inbounds %struct.BMHeader, ptr %159, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !71
  %162 = getelementptr inbounds [2 x [3 x float]], ptr %6, i64 %154, i64 %156
  call void %157(ptr noundef nonnull %29, i32 noundef %161, ptr noundef nonnull %162) #5
  %163 = add nuw nsw i64 %156, 1
  %164 = icmp eq i64 %156, 0
  br i1 %164, label %155, label %165, !llvm.loop !143

165:                                              ; preds = %155
  %166 = add nuw nsw i64 %154, 1
  %167 = icmp eq i64 %154, 0
  br i1 %167, label %153, label %188, !llvm.loop !144

168:                                              ; preds = %148, %185
  %169 = phi i64 [ %186, %185 ], [ 0, %148 ]
  br label %170

170:                                              ; preds = %170, %168
  %171 = phi i64 [ 0, %168 ], [ %183, %170 ]
  %172 = getelementptr inbounds [2 x [3 x float]], ptr %6, i64 %169, i64 %171
  %173 = getelementptr inbounds [2 x ptr], ptr %4, i64 %169, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !80
  %175 = getelementptr inbounds %struct.BMVert, ptr %174, i64 0, i32 2
  %176 = load float, ptr %175, align 4, !tbaa !59
  store float %176, ptr %172, align 4, !tbaa !59
  %177 = getelementptr inbounds %struct.BMVert, ptr %174, i64 0, i32 2, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !59
  %179 = getelementptr inbounds float, ptr %172, i64 1
  store float %178, ptr %179, align 4, !tbaa !59
  %180 = getelementptr inbounds %struct.BMVert, ptr %174, i64 0, i32 2, i64 2
  %181 = load float, ptr %180, align 4, !tbaa !59
  %182 = getelementptr inbounds float, ptr %172, i64 2
  store float %181, ptr %182, align 4, !tbaa !59
  %183 = add nuw nsw i64 %171, 1
  %184 = icmp eq i64 %171, 0
  br i1 %184, label %170, label %185, !llvm.loop !145

185:                                              ; preds = %170
  %186 = add nuw nsw i64 %169, 1
  %187 = icmp eq i64 %169, 0
  br i1 %187, label %168, label %188, !llvm.loop !146

188:                                              ; preds = %165, %185
  %189 = load ptr, ptr %5, align 8, !tbaa !80
  %190 = getelementptr inbounds [2 x [3 x float]], ptr %189, i64 %149
  call void @interp_v3_v3v3(ptr noundef %190, ptr noundef nonnull %6, ptr noundef nonnull %109, float noundef %152) #5
  %191 = load ptr, ptr %5, align 8, !tbaa !80
  %192 = getelementptr inbounds [2 x [3 x float]], ptr %191, i64 %149, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %192, ptr noundef nonnull %110, ptr noundef nonnull %111, float noundef %152) #5
  %193 = add nsw i64 %149, 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #5
  %194 = add nuw i32 %150, 1
  %195 = icmp eq i32 %150, %1
  br i1 %195, label %196, label %148, !llvm.loop !147

196:                                              ; preds = %188
  %197 = trunc i64 %193 to i32
  br label %198

198:                                              ; preds = %196, %145, %112
  %199 = phi ptr [ %117, %112 ], [ %132, %145 ], [ %132, %196 ]
  %200 = phi i32 [ %116, %112 ], [ %141, %145 ], [ %141, %196 ]
  %201 = phi i32 [ %114, %112 ], [ %114, %145 ], [ %197, %196 ]
  %202 = call ptr @BMW_step(ptr noundef nonnull %3) #5
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %112, !llvm.loop !148

204:                                              ; preds = %198, %94
  %205 = phi ptr [ null, %94 ], [ %199, %198 ]
  %206 = phi i32 [ 0, %94 ], [ %200, %198 ]
  %207 = phi ptr [ null, %94 ], [ %113, %198 ]
  %208 = phi i32 [ 0, %94 ], [ %201, %198 ]
  %209 = icmp eq ptr %207, %97
  br i1 %209, label %303, label %210

210:                                              ; preds = %204
  %211 = call zeroext i8 @BM_edge_share_quad_check(ptr noundef %207, ptr noundef %97) #5
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %303, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %4, align 16, !tbaa !80
  %215 = getelementptr inbounds [2 x [2 x ptr]], ptr %4, i64 0, i64 1
  store ptr %214, ptr %215, align 16, !tbaa !80
  %216 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !80
  %218 = getelementptr inbounds [2 x [2 x ptr]], ptr %4, i64 0, i64 1, i64 1
  store ptr %217, ptr %218, align 8, !tbaa !80
  call fastcc void @edgering_find_order(ptr noundef %207, ptr noundef %97, ptr noundef %205, ptr noundef nonnull %4)
  %219 = load ptr, ptr %5, align 8
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %213
  %222 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !80
  %223 = call i64 %222(ptr noundef nonnull %219) #5
  %224 = udiv i64 %223, 24
  br label %225

225:                                              ; preds = %221, %213
  %226 = phi i64 [ 0, %213 ], [ %224, %221 ]
  %227 = add nsw i32 %206, %1
  %228 = sext i32 %227 to i64
  %229 = icmp ult i64 %226, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 24, i32 noundef %206, i32 noundef %1, ptr noundef nonnull @.str.19) #5
  br label %231

231:                                              ; preds = %230, %225
  %232 = icmp slt i32 %1, 1
  br i1 %232, label %303, label %233

233:                                              ; preds = %231
  %234 = load ptr, ptr %4, align 16, !tbaa !80
  %235 = icmp ne ptr %234, null
  %236 = load ptr, ptr %216, align 8
  %237 = icmp ne ptr %236, null
  %238 = select i1 %235, i1 %237, i1 false
  %239 = load ptr, ptr %215, align 16
  %240 = icmp ne ptr %239, null
  %241 = select i1 %238, i1 %240, i1 false
  %242 = load ptr, ptr %218, align 8
  %243 = icmp ne ptr %242, null
  %244 = select i1 %241, i1 %243, i1 false
  %245 = sitofp i32 %1 to float
  %246 = fadd float %245, 1.000000e+00
  %247 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 76
  %248 = getelementptr inbounds [2 x [3 x float]], ptr %7, i64 0, i64 1
  %249 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %7, i64 0, i64 1
  %250 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %7, i64 0, i64 1, i64 1
  br label %251

251:                                              ; preds = %233, %299
  %252 = phi i32 [ %208, %233 ], [ %300, %299 ]
  %253 = phi i32 [ 1, %233 ], [ %301, %299 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #5
  br i1 %244, label %254, label %299

254:                                              ; preds = %251
  %255 = sitofp i32 %253 to float
  %256 = fdiv float %255, %246
  br i1 %30, label %272, label %257

257:                                              ; preds = %254, %269
  %258 = phi i64 [ %270, %269 ], [ 0, %254 ]
  br label %259

259:                                              ; preds = %259, %257
  %260 = phi i64 [ 0, %257 ], [ %267, %259 ]
  %261 = load ptr, ptr %247, align 8, !tbaa !138
  %262 = getelementptr inbounds [2 x ptr], ptr %4, i64 %258, i64 %260
  %263 = load ptr, ptr %262, align 8, !tbaa !80
  %264 = getelementptr inbounds %struct.BMHeader, ptr %263, i64 0, i32 1
  %265 = load i32, ptr %264, align 8, !tbaa !71
  %266 = getelementptr inbounds [2 x [3 x float]], ptr %7, i64 %258, i64 %260
  call void %261(ptr noundef nonnull %29, i32 noundef %265, ptr noundef nonnull %266) #5
  %267 = add nuw nsw i64 %260, 1
  %268 = icmp eq i64 %260, 0
  br i1 %268, label %259, label %269, !llvm.loop !143

269:                                              ; preds = %259
  %270 = add nuw nsw i64 %258, 1
  %271 = icmp eq i64 %258, 0
  br i1 %271, label %257, label %292, !llvm.loop !144

272:                                              ; preds = %254, %289
  %273 = phi i64 [ %290, %289 ], [ 0, %254 ]
  br label %274

274:                                              ; preds = %274, %272
  %275 = phi i64 [ 0, %272 ], [ %287, %274 ]
  %276 = getelementptr inbounds [2 x [3 x float]], ptr %7, i64 %273, i64 %275
  %277 = getelementptr inbounds [2 x ptr], ptr %4, i64 %273, i64 %275
  %278 = load ptr, ptr %277, align 8, !tbaa !80
  %279 = getelementptr inbounds %struct.BMVert, ptr %278, i64 0, i32 2
  %280 = load float, ptr %279, align 4, !tbaa !59
  store float %280, ptr %276, align 4, !tbaa !59
  %281 = getelementptr inbounds %struct.BMVert, ptr %278, i64 0, i32 2, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !59
  %283 = getelementptr inbounds float, ptr %276, i64 1
  store float %282, ptr %283, align 4, !tbaa !59
  %284 = getelementptr inbounds %struct.BMVert, ptr %278, i64 0, i32 2, i64 2
  %285 = load float, ptr %284, align 4, !tbaa !59
  %286 = getelementptr inbounds float, ptr %276, i64 2
  store float %285, ptr %286, align 4, !tbaa !59
  %287 = add nuw nsw i64 %275, 1
  %288 = icmp eq i64 %275, 0
  br i1 %288, label %274, label %289, !llvm.loop !145

289:                                              ; preds = %274
  %290 = add nuw nsw i64 %273, 1
  %291 = icmp eq i64 %273, 0
  br i1 %291, label %272, label %292, !llvm.loop !146

292:                                              ; preds = %269, %289
  %293 = load ptr, ptr %5, align 8, !tbaa !80
  %294 = sext i32 %252 to i64
  %295 = getelementptr inbounds [2 x [3 x float]], ptr %293, i64 %294
  call void @interp_v3_v3v3(ptr noundef %295, ptr noundef nonnull %7, ptr noundef nonnull %248, float noundef %256) #5
  %296 = load ptr, ptr %5, align 8, !tbaa !80
  %297 = getelementptr inbounds [2 x [3 x float]], ptr %296, i64 %294, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %297, ptr noundef nonnull %249, ptr noundef nonnull %250, float noundef %256) #5
  %298 = add nsw i32 %252, 1
  br label %299

299:                                              ; preds = %292, %251
  %300 = phi i32 [ %298, %292 ], [ %252, %251 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #5
  %301 = add nuw i32 %253, 1
  %302 = icmp eq i32 %253, %1
  br i1 %302, label %303, label %251, !llvm.loop !149

303:                                              ; preds = %299, %231, %210, %204
  %304 = phi i32 [ %208, %210 ], [ %208, %204 ], [ %208, %231 ], [ %300, %299 ]
  call void @BMW_end(ptr noundef nonnull %3) #5
  %305 = load ptr, ptr %5, align 8, !tbaa !80
  store ptr %305, ptr %12, align 8, !tbaa !79
  store i32 %304, ptr %19, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #5
  br label %318

306:                                              ; preds = %2
  br i1 %14, label %309, label %307

307:                                              ; preds = %306
  %308 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %308(ptr noundef nonnull %13) #5
  store ptr null, ptr %12, align 8, !tbaa !79
  br label %309

309:                                              ; preds = %307, %306
  %310 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 3
  store i32 0, ptr %310, align 8, !tbaa !81
  %311 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 4
  %312 = load ptr, ptr %311, align 8, !tbaa !82
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %309
  %315 = load ptr, ptr @MEM_freeN, align 8, !tbaa !80
  tail call void %315(ptr noundef nonnull %312) #5
  store ptr null, ptr %311, align 8, !tbaa !82
  br label %316

316:                                              ; preds = %309, %314
  %317 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 5
  store i32 0, ptr %317, align 8, !tbaa !83
  br label %318

318:                                              ; preds = %303, %93, %316
  ret void
}

declare ptr @EDBM_mesh_deform_dm_get(ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @edgering_find_order(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef %9) #5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 8, !tbaa !150
  %14 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %0, ptr noundef %13) #5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12, %4
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 13, ptr %17, align 4, !tbaa !152
  %18 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %18, align 8, !tbaa !154
  %19 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %19, align 8, !tbaa !155
  store ptr %7, ptr %5, align 8, !tbaa !156
  call void @bmiter__loop_of_loop_begin(ptr noundef nonnull %5) #5
  %20 = load ptr, ptr %19, align 8, !tbaa !155
  %21 = call ptr %20(ptr noundef nonnull %5) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %16, %33
  %24 = phi ptr [ %35, %33 ], [ %21, %16 ]
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !150
  %27 = call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef %26) #5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %25, align 8, !tbaa !150
  %31 = call zeroext i8 @BM_edge_in_face(ptr noundef %0, ptr noundef %30) #5
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23, %29
  %34 = load ptr, ptr %19, align 8, !tbaa !155
  %35 = call ptr %34(ptr noundef nonnull %5) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %23, !llvm.loop !157

37:                                               ; preds = %29, %33, %16, %12
  %38 = phi ptr [ %7, %12 ], [ null, %16 ], [ null, %33 ], [ %24, %29 ]
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !122
  br i1 %39, label %42, label %52

42:                                               ; preds = %37
  store ptr %41, ptr %3, align 8, !tbaa !80
  %43 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !125
  %45 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %44, ptr %45, align 8, !tbaa !80
  %46 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !122
  %48 = getelementptr inbounds [2 x ptr], ptr %3, i64 1
  store ptr %47, ptr %48, align 8, !tbaa !80
  %49 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !125
  %51 = getelementptr inbounds [2 x ptr], ptr %3, i64 1, i64 1
  store ptr %50, ptr %51, align 8, !tbaa !80
  br label %89

52:                                               ; preds = %37
  %53 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %38, ptr noundef %41) #5
  %54 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !158
  %56 = icmp eq ptr %53, %55
  %57 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !122
  %59 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !159
  %61 = icmp eq ptr %60, %58
  br i1 %61, label %77, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !125
  br label %65

65:                                               ; preds = %62, %69
  %66 = phi ptr [ %60, %62 ], [ %75, %69 ]
  %67 = phi ptr [ %53, %62 ], [ %73, %69 ]
  %68 = icmp eq ptr %66, %64
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 7
  %71 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 6
  %72 = select i1 %56, ptr %70, ptr %71
  %73 = load ptr, ptr %72, align 8, !tbaa !80
  %74 = getelementptr inbounds %struct.BMLoop, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !159
  %76 = icmp eq ptr %75, %58
  br i1 %76, label %77, label %65, !llvm.loop !160

77:                                               ; preds = %65, %69, %52
  %78 = phi ptr [ %60, %52 ], [ %66, %65 ], [ %75, %69 ]
  %79 = icmp eq ptr %78, %2
  %80 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  br i1 %79, label %81, label %85

81:                                               ; preds = %77
  %82 = load ptr, ptr %40, align 8, !tbaa !122
  store ptr %82, ptr %3, align 8, !tbaa !80
  %83 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !125
  store ptr %84, ptr %80, align 8, !tbaa !80
  br label %89

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !125
  store ptr %87, ptr %3, align 8, !tbaa !80
  %88 = load ptr, ptr %40, align 8, !tbaa !122
  store ptr %88, ptr %80, align 8, !tbaa !80
  br label %89

89:                                               ; preds = %81, %85, %42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  ret void
}

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMW_step(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_share_quad_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMW_end(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_loop_other_edge_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__loop_of_loop_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_loop_step(ptr noundef) #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_esubdivide(ptr noundef, i8 noundef zeroext, float noundef, i16 noundef signext, i8 noundef zeroext, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef) local_unnamed_addr #2

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare zeroext i8 @EDBM_selectmode_disable(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @handleNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @outputNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{!35, !36, i64 88}
!51 = !{i32 1, i32 5}
!52 = !{!53, !36, i64 112}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!54 = !{!53, !36, i64 96}
!55 = !{!56, !41, i64 18}
!56 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !57, i64 20, !57, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !57, i64 48, !57, i64 52, !58, i64 56, !57, i64 64, !57, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !57, i64 108, !36, i64 112}
!57 = !{!"int", !37, i64 0}
!58 = !{!"double", !37, i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !37, i64 0}
!61 = !{!62, !36, i64 0}
!62 = !{!"RingSelOpData", !36, i64 0, !36, i64 8, !36, i64 16, !57, i64 24, !36, i64 32, !57, i64 40, !63, i64 48, !36, i64 112, !36, i64 120, !36, i64 128, !64, i64 136, !37, i64 276, !37, i64 277}
!63 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!64 = !{!"NumInput", !41, i64 0, !57, i64 4, !37, i64 8, !37, i64 20, !41, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !41, i64 68, !37, i64 70, !57, i64 136}
!65 = !{!56, !41, i64 16}
!66 = !{!62, !36, i64 128}
!67 = !{!62, !36, i64 120}
!68 = !{!69, !36, i64 0}
!69 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !57, i64 16, !36, i64 24, !57, i64 32, !36, i64 40, !36, i64 48, !70, i64 56, !36, i64 64, !57, i64 72, !36, i64 80, !57, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !57, i64 104}
!70 = !{!"long", !37, i64 0}
!71 = !{!72, !57, i64 8}
!72 = !{!"BMHeader", !36, i64 0, !57, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!73 = !{!74, !36, i64 240}
!74 = !{!"ARegion", !36, i64 0, !36, i64 8, !75, i64 16, !77, i64 176, !77, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !60, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!75 = !{!"View2D", !76, i64 0, !76, i64 16, !77, i64 32, !77, i64 48, !77, i64 64, !37, i64 80, !37, i64 88, !60, i64 96, !60, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !57, i64 136, !57, i64 140, !36, i64 144, !36, i64 152}
!76 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!77 = !{!"rcti", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!78 = !{!62, !36, i64 8}
!79 = !{!62, !36, i64 16}
!80 = !{!36, !36, i64 0}
!81 = !{!62, !57, i64 24}
!82 = !{!62, !36, i64 32}
!83 = !{!62, !57, i64 40}
!84 = !{!56, !41, i64 76}
!85 = !{!57, !57, i64 0}
!86 = !{!53, !36, i64 120}
!87 = !{!88, !57, i64 4}
!88 = !{!"BMesh", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !57, i64 88, !57, i64 92, !57, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !57, i64 128, !36, i64 136, !89, i64 144, !89, i64 344, !89, i64 544, !89, i64 744, !41, i64 944, !57, i64 948, !57, i64 952, !57, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!89 = !{!"CustomData", !36, i64 0, !37, i64 8, !57, i64 172, !57, i64 176, !57, i64 180, !36, i64 184, !36, i64 192}
!90 = !{!91, !36, i64 264}
!91 = !{!"Scene", !92, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !57, i64 232, !57, i64 236, !57, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !93, i64 280, !100, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !57, i64 4380, !39, i64 4384, !101, i64 4400, !102, i64 4416, !105, i64 4600, !36, i64 4608, !106, i64 4616, !36, i64 4640, !70, i64 4648, !70, i64 4656, !95, i64 4664, !96, i64 4824, !107, i64 4888, !36, i64 4952}
!92 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !57, i64 100, !57, i64 104, !57, i64 108, !36, i64 112}
!93 = !{!"RenderData", !94, i64 0, !36, i64 248, !36, i64 256, !97, i64 264, !98, i64 328, !57, i64 400, !57, i64 404, !57, i64 408, !60, i64 412, !57, i64 416, !57, i64 420, !57, i64 424, !57, i64 428, !41, i64 432, !41, i64 434, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !57, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !57, i64 484, !57, i64 488, !41, i64 492, !41, i64 494, !57, i64 496, !57, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !57, i64 516, !57, i64 520, !57, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !76, i64 544, !76, i64 560, !77, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !60, i64 612, !60, i64 616, !60, i64 620, !60, i64 624, !57, i64 628, !60, i64 632, !60, i64 636, !60, i64 640, !60, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !60, i64 660, !60, i64 664, !41, i64 668, !41, i64 670, !60, i64 672, !60, i64 676, !37, i64 680, !57, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !57, i64 2520, !41, i64 2524, !41, i64 2526, !60, i64 2528, !60, i64 2532, !41, i64 2536, !41, i64 2538, !60, i64 2540, !41, i64 2544, !41, i64 2546, !57, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !60, i64 2560, !60, i64 2564, !36, i64 2568, !57, i64 2576, !60, i64 2580, !37, i64 2584, !99, i64 2616, !57, i64 3976, !57, i64 3980}
!94 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !60, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !95, i64 24, !96, i64 184}
!95 = !{!"ColorManagedViewSettings", !57, i64 0, !57, i64 4, !37, i64 8, !37, i64 72, !60, i64 136, !60, i64 140, !36, i64 144, !36, i64 152}
!96 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!97 = !{!"QuicktimeCodecSettings", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !41, i64 48, !41, i64 50, !57, i64 52, !57, i64 56, !57, i64 60}
!98 = !{!"FFMpegCodecData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !60, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !36, i64 64}
!99 = !{!"BakeData", !94, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !60, i64 1280, !60, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!100 = !{!"AudioData", !57, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !57, i64 16, !41, i64 20, !41, i64 22, !60, i64 24, !60, i64 28}
!101 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!102 = !{!"GameData", !101, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !103, i64 40, !41, i64 64, !41, i64 66, !60, i64 68, !104, i64 72, !60, i64 128, !60, i64 132, !57, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180}
!103 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !60, i64 8, !60, i64 12, !36, i64 16}
!104 = !{!"RecastData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !57, i64 40, !60, i64 44, !60, i64 48, !41, i64 52, !41, i64 54}
!105 = !{!"UnitSettings", !60, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!106 = !{!"PhysicsSettings", !37, i64 0, !57, i64 12, !57, i64 16, !57, i64 20}
!107 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!108 = !{!109, !41, i64 46}
!109 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !60, i64 32, !60, i64 36, !60, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !60, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !110, i64 64, !112, i64 168, !60, i64 336, !60, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !60, i64 352, !60, i64 356, !60, i64 360, !60, i64 364, !60, i64 368, !60, i64 372, !60, i64 376, !60, i64 380, !60, i64 384, !60, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !57, i64 448, !57, i64 452, !57, i64 456, !57, i64 460, !41, i64 464, !41, i64 466, !57, i64 468, !60, i64 472, !60, i64 476, !113, i64 480, !114, i64 608}
!110 = !{!"ImagePaintSettings", !111, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !57, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !60, i64 100}
!111 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !57, i64 28, !57, i64 32, !57, i64 36}
!112 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !60, i64 128, !60, i64 132, !57, i64 136, !57, i64 140, !57, i64 144, !57, i64 148, !36, i64 152, !36, i64 160}
!113 = !{!"UnifiedPaintSettings", !57, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !37, i64 16, !37, i64 28, !57, i64 40, !37, i64 44, !60, i64 52, !57, i64 56, !57, i64 60, !37, i64 64, !37, i64 65, !60, i64 72, !37, i64 76, !57, i64 84, !60, i64 88, !37, i64 92, !37, i64 100, !57, i64 108, !36, i64 112, !60, i64 120, !57, i64 124}
!114 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !37, i64 20, !37, i64 21, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36}
!115 = !{!62, !36, i64 112}
!116 = !{!62, !37, i64 276}
!117 = !{!62, !37, i64 277}
!118 = !{!62, !41, i64 136}
!119 = !{!41, !41, i64 0}
!120 = !{!91, !37, i64 4604}
!121 = !{!62, !57, i64 140}
!122 = !{!123, !36, i64 24}
!123 = !{!"BMEdge", !72, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !124, i64 48, !124, i64 64}
!124 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!125 = !{!123, !36, i64 32}
!126 = distinct !{!126, !127, !128}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!"llvm.loop.unroll.disable"}
!129 = !{!53, !36, i64 144}
!130 = !{!123, !36, i64 40}
!131 = !{!69, !41, i64 92}
!132 = !{!62, !36, i64 48}
!133 = !{!134, !36, i64 296}
!134 = !{!"Object", !92, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !57, i64 140, !57, i64 144, !57, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !135, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !57, i64 432, !57, i64 436, !36, i64 440, !36, i64 448, !57, i64 456, !57, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !60, i64 616, !60, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !57, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !57, i64 968, !57, i64 972, !57, i64 976, !57, i64 980, !57, i64 984, !60, i64 988, !60, i64 992, !60, i64 996, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !60, i64 1028, !60, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !60, i64 1048, !60, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !60, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !57, i64 1144, !57, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !60, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !70, i64 1304, !70, i64 1312, !57, i64 1320, !57, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!135 = !{!"bAnimVizSettings", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44}
!136 = !{!137, !37, i64 344}
!137 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !57, i64 32, !60, i64 36, !37, i64 40, !37, i64 56, !60, i64 72, !60, i64 76, !37, i64 80, !37, i64 81, !57, i64 84, !57, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !76, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !57, i64 224, !57, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !60, i64 244, !60, i64 248, !60, i64 252, !60, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!138 = !{!139, !36, i64 1528}
!139 = !{!"DerivedMesh", !89, i64 0, !89, i64 200, !89, i64 400, !89, i64 600, !89, i64 800, !57, i64 1000, !57, i64 1004, !57, i64 1008, !57, i64 1012, !57, i64 1016, !57, i64 1020, !57, i64 1024, !36, i64 1032, !36, i64 1040, !57, i64 1048, !60, i64 1052, !57, i64 1056, !57, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!140 = distinct !{!140, !127, !128}
!141 = distinct !{!141, !127, !128}
!142 = distinct !{!142, !127, !128}
!143 = distinct !{!143, !127, !128}
!144 = distinct !{!144, !127, !128}
!145 = distinct !{!145, !127, !128}
!146 = distinct !{!146, !127, !128}
!147 = distinct !{!147, !127, !128}
!148 = distinct !{!148, !127, !128}
!149 = distinct !{!149, !127, !128}
!150 = !{!151, !36, i64 32}
!151 = !{!"BMLoop", !72, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!152 = !{!153, !37, i64 60}
!153 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !57, i64 56, !37, i64 60}
!154 = !{!153, !36, i64 40}
!155 = !{!153, !36, i64 48}
!156 = !{!37, !37, i64 0}
!157 = distinct !{!157, !127, !128}
!158 = !{!151, !36, i64 64}
!159 = !{!151, !36, i64 16}
!160 = distinct !{!160, !127, !128}
