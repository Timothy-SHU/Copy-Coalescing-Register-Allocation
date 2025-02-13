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
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 100) #8
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef -4.000000e+00, float noundef 4.000000e+00) #8
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_property(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 4, i32 noundef 0) #8
  tail call void @RNA_def_property_enum_items(ptr noundef %16, ptr noundef nonnull @proportional_falloff_curve_only_items) #8
  tail call void @RNA_def_property_enum_default(ptr noundef %16, i32 noundef 2) #8
  tail call void @RNA_def_property_ui_text(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  tail call void @RNA_def_property_translation_context(ptr noundef %16, ptr noundef nonnull @.str.12) #8
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2147483647) #8
  tail call void @RNA_def_property_flag(ptr noundef %18, i32 noundef 524288) #8
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = tail call ptr @RNA_def_boolean_array(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_property_flag(ptr noundef %20, i32 noundef 524288) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ringcut_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !51 {
  %4 = tail call fastcc i32 @loopcut_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !range !52
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @loopcut_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !53 {
  %3 = tail call fastcc i32 @loopcut_init(ptr noundef %0, ptr noundef %1, ptr noundef null) #9, !range !52
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @loopcut_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 !PGOFuncName !54 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [192 x i8], align 16
  %7 = alloca [128 x i8], align 16
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.6) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !55
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.3) #8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.RingSelOpData, ptr %14, i64 0, i32 10
  %16 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %15) #8
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #8
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !58
  %19 = icmp eq i16 %18, 1
  %20 = icmp ne i8 %16, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %45

22:                                               ; preds = %3
  %23 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %2) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %26 = sitofp i32 %12 to float
  store float %26, ptr %4, align 4, !tbaa !62
  %27 = getelementptr inbounds float, ptr %4, i64 1
  store float %10, ptr %27, align 4, !tbaa !62
  %28 = call zeroext i8 @applyNumInput(ptr noundef nonnull %15, ptr noundef nonnull %4) #8
  %29 = load float, ptr %4, align 4
  %30 = fcmp olt float %29, 0.000000e+00
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = fcmp ogt float %29, 5.000000e+02
  %33 = select i1 %32, float 5.000000e+02, float %29
  %34 = fptosi float %33 to i32
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i32 [ %34, %31 ], [ 0, %25 ]
  %37 = load float, ptr %27, align 4
  %38 = fcmp olt float %37, -4.000000e+00
  %39 = fcmp ogt float %37, 4.000000e+00
  %40 = select i1 %39, float 4.000000e+00, float %37
  %41 = select i1 %38, float -4.000000e+00, float %40
  %42 = load ptr, ptr %8, align 8, !tbaa !55
  call void @RNA_int_set(ptr noundef %42, ptr noundef nonnull @.str.3, i32 noundef %36) #8
  call fastcc void @ringsel_find_edge(ptr noundef %14, i32 noundef %36) #9
  %43 = load ptr, ptr %8, align 8, !tbaa !55
  call void @RNA_float_set(ptr noundef %43, ptr noundef nonnull @.str.6, float noundef %41) #8
  %44 = load ptr, ptr %14, align 8, !tbaa !64
  call void @ED_region_tag_redraw(ptr noundef %44) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %138

45:                                               ; preds = %22, %3
  %46 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %47 = load i16, ptr %46, align 8, !tbaa !68
  switch i16 %47, label %112 [
    i16 220, label %48
    i16 163, label %48
    i16 1, label %48
    i16 3, label %55
    i16 218, label %58
    i16 164, label %64
    i16 168, label %64
    i16 10, label %64
    i16 162, label %84
    i16 169, label %84
    i16 11, label %84
    i16 4, label %102
  ]

48:                                               ; preds = %45, %45, %45
  %49 = load i16, ptr %17, align 2, !tbaa !58
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc i32 @loopcut_finish(ptr noundef %14, ptr noundef %0, ptr noundef nonnull %1) #9, !range !69
  br label %155

53:                                               ; preds = %48
  %54 = load ptr, ptr %14, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %54) #8
  br label %155

55:                                               ; preds = %45
  %56 = load ptr, ptr %14, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %56) #8
  tail call fastcc void @ringsel_exit(ptr noundef nonnull %1) #9
  %57 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_headerprint(ptr noundef %57, ptr noundef null) #8
  br label %155

58:                                               ; preds = %45
  %59 = load i16, ptr %17, align 2, !tbaa !58
  %60 = icmp eq i16 %59, 2
  %61 = load ptr, ptr %14, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %61) #8
  br i1 %60, label %62, label %155

62:                                               ; preds = %58
  %63 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_headerprint(ptr noundef %63, ptr noundef null) #8
  tail call void @ringcut_cancel(ptr poison, ptr noundef nonnull %1) #9
  br label %155

64:                                               ; preds = %45, %45, %45
  %65 = load i16, ptr %17, align 2, !tbaa !58
  %66 = icmp eq i16 %65, 2
  br i1 %66, label %155, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %69 = load i16, ptr %68, align 4, !tbaa !70
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = tail call i32 @llvm.smin.i32(i32 %12, i32 499)
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 -1)
  %74 = add nsw i32 %73, 1
  %75 = load ptr, ptr %8, align 8, !tbaa !55
  tail call void @RNA_int_set(ptr noundef %75, ptr noundef nonnull @.str.3, i32 noundef %74) #8
  tail call fastcc void @ringsel_find_edge(ptr noundef %14, i32 noundef %74) #9
  br label %80

76:                                               ; preds = %67
  %77 = fadd float %10, 0x3FA99999A0000000
  %78 = tail call fastcc float @min_ff(float noundef %77) #9
  %79 = load ptr, ptr %8, align 8, !tbaa !55
  tail call void @RNA_float_set(ptr noundef %79, ptr noundef nonnull @.str.6, float noundef %78) #8
  br label %80

80:                                               ; preds = %76, %71
  %81 = phi i32 [ %74, %71 ], [ %12, %76 ]
  %82 = phi float [ %10, %71 ], [ %78, %76 ]
  %83 = load ptr, ptr %14, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %83) #8
  br label %138

84:                                               ; preds = %45, %45, %45
  %85 = load i16, ptr %17, align 2, !tbaa !58
  %86 = icmp eq i16 %85, 2
  br i1 %86, label %155, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %89 = load i16, ptr %88, align 4, !tbaa !70
  %90 = icmp eq i16 %89, 0
  %91 = load ptr, ptr %8, align 8, !tbaa !55
  br i1 %90, label %92, label %95

92:                                               ; preds = %87
  %93 = add nsw i32 %12, -1
  %94 = tail call fastcc i32 @max_ii(i32 noundef %93) #9
  tail call void @RNA_int_set(ptr noundef %91, ptr noundef nonnull @.str.3, i32 noundef %94) #8
  tail call fastcc void @ringsel_find_edge(ptr noundef %14, i32 noundef %94) #9
  br label %98

95:                                               ; preds = %87
  %96 = fadd float %10, 0xBFA99999A0000000
  %97 = tail call fastcc float @max_ff(float noundef %96) #9
  tail call void @RNA_float_set(ptr noundef %91, ptr noundef nonnull @.str.6, float noundef %97) #8
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i32 [ %94, %92 ], [ %12, %95 ]
  %100 = phi float [ %10, %92 ], [ %97, %95 ]
  %101 = load ptr, ptr %14, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %101) #8
  br label %138

102:                                              ; preds = %45
  %103 = icmp eq i8 %16, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !71
  %107 = getelementptr inbounds %struct.RingSelOpData, ptr %14, i64 0, i32 6, i32 7
  store i32 %106, ptr %107, align 8, !tbaa !71
  %108 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %109 = load i32, ptr %108, align 4, !tbaa !71
  %110 = getelementptr inbounds %struct.RingSelOpData, ptr %14, i64 0, i32 6, i32 7, i64 1
  store i32 %109, ptr %110, align 4, !tbaa !71
  tail call fastcc void @loopcut_mouse_move(ptr noundef %14, i32 noundef %12) #9
  %111 = load ptr, ptr %14, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %111) #8
  br label %155

112:                                              ; preds = %45, %102
  %113 = load i16, ptr %17, align 2, !tbaa !58
  %114 = icmp eq i16 %113, 1
  br i1 %114, label %115, label %155

115:                                              ; preds = %112
  %116 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %2) #8
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %155, label %118

118:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %119 = sitofp i32 %12 to float
  store float %119, ptr %5, align 4, !tbaa !62
  %120 = getelementptr inbounds float, ptr %5, i64 1
  store float %10, ptr %120, align 4, !tbaa !62
  %121 = call zeroext i8 @applyNumInput(ptr noundef nonnull %15, ptr noundef nonnull %5) #8
  %122 = load float, ptr %5, align 4
  %123 = fcmp olt float %122, 0.000000e+00
  br i1 %123, label %128, label %124

124:                                              ; preds = %118
  %125 = fcmp ogt float %122, 5.000000e+02
  %126 = select i1 %125, float 5.000000e+02, float %122
  %127 = fptosi float %126 to i32
  br label %128

128:                                              ; preds = %124, %118
  %129 = phi i32 [ %127, %124 ], [ 0, %118 ]
  %130 = load float, ptr %120, align 4
  %131 = fcmp olt float %130, -4.000000e+00
  %132 = fcmp ogt float %130, 4.000000e+00
  %133 = select i1 %132, float 4.000000e+00, float %130
  %134 = select i1 %131, float -4.000000e+00, float %133
  %135 = load ptr, ptr %8, align 8, !tbaa !55
  call void @RNA_int_set(ptr noundef %135, ptr noundef nonnull @.str.3, i32 noundef %129) #8
  call fastcc void @ringsel_find_edge(ptr noundef %14, i32 noundef %129) #9
  %136 = load ptr, ptr %8, align 8, !tbaa !55
  call void @RNA_float_set(ptr noundef %136, ptr noundef nonnull @.str.6, float noundef %134) #8
  %137 = load ptr, ptr %14, align 8, !tbaa !64
  call void @ED_region_tag_redraw(ptr noundef %137) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %138

138:                                              ; preds = %80, %98, %128, %35
  %139 = phi float [ %41, %35 ], [ %134, %128 ], [ %82, %80 ], [ %100, %98 ]
  %140 = phi i32 [ %36, %35 ], [ %129, %128 ], [ %81, %80 ], [ %99, %98 ]
  %141 = call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #10
  %142 = call zeroext i8 @hasNumInput(ptr noundef nonnull %15) #8
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.Scene, ptr %141, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %15, ptr noundef nonnull %7, ptr noundef nonnull %145) #8
  br label %151

146:                                              ; preds = %138
  %147 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %140) #8
  %148 = getelementptr inbounds i8, ptr %7, i64 64
  %149 = fpext float %139 to double
  %150 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %148, i64 noundef 64, ptr noundef nonnull @.str.21, double noundef %149) #8
  br label %151

151:                                              ; preds = %146, %144
  %152 = getelementptr inbounds i8, ptr %7, i64 64
  %153 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 192, ptr noundef nonnull @.str.22, ptr noundef nonnull %7, ptr noundef nonnull %152) #8
  %154 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %154, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #10
  br label %155

155:                                              ; preds = %58, %104, %53, %84, %64, %115, %112, %51, %55, %62, %151
  %156 = phi i32 [ 1, %151 ], [ 2, %62 ], [ 2, %55 ], [ %52, %51 ], [ 1, %112 ], [ 1, %115 ], [ 1, %64 ], [ 1, %84 ], [ 1, %53 ], [ 1, %104 ], [ 1, %58 ]
  ret i32 %156
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ringcut_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 !PGOFuncName !72 {
  tail call fastcc void @ringsel_exit(ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh_region_view3d(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_enum_items(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_enum_default(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @loopcut_init(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 !PGOFuncName !73 {
  %4 = alloca [3 x i32], align 8
  %5 = icmp eq ptr %2, null
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %7 = tail call ptr @modifiers_isDeformedByLattice(ptr noundef %6) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %6) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  tail call void @BKE_report(ptr noundef %14, i32 noundef 16, ptr noundef nonnull @.str.15) #8
  br label %15

15:                                               ; preds = %12, %9
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #8
  br i1 %5, label %16, label %27

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.13) #8
  %20 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #8
  %21 = icmp eq i32 %19, -1
  br i1 %21, label %64, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !78
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %33, label %64

27:                                               ; preds = %15
  tail call fastcc void @ringsel_init(ptr noundef %0, ptr noundef %1) #9
  %28 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.RingSelOpData, ptr %30, i64 0, i32 6, i32 7
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %31, ptr noundef nonnull %32) #9
  tail call fastcc void @loopcut_mouse_move(ptr noundef %30, i32 noundef 1) #9
  br label %44

33:                                               ; preds = %22
  tail call fastcc void @ringsel_init(ptr noundef %0, ptr noundef nonnull %1) #9
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = load ptr, ptr %17, align 8, !tbaa !55
  %37 = tail call i32 @RNA_int_get(ptr noundef %36, ptr noundef nonnull @.str.13) #8
  %38 = getelementptr inbounds %struct.RingSelOpData, ptr %35, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !81
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %40, i8 noundef zeroext 2) #8
  %41 = load ptr, ptr %38, align 8, !tbaa !81
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = tail call ptr @BM_edge_at_index(ptr noundef %42, i32 noundef %37) #8
  tail call fastcc void @loopcut_update_edge(ptr noundef %35, ptr noundef %43, i32 noundef 0) #9
  br label %44

44:                                               ; preds = %33, %27
  %45 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %46 = getelementptr inbounds %struct.Scene, ptr %45, i64 0, i32 20
  %47 = load ptr, ptr %46, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !102
  %50 = lshr i16 %49, 1
  %51 = insertelement <2 x i16> poison, i16 %49, i64 0
  %52 = insertelement <2 x i16> %51, i16 %50, i64 1
  %53 = and <2 x i16> %52, <i16 1, i16 1>
  %54 = zext nneg <2 x i16> %53 to <2 x i32>
  store <2 x i32> %54, ptr %4, align 8, !tbaa !71
  %55 = getelementptr inbounds i32, ptr %4, i64 2
  %56 = lshr i16 %49, 2
  %57 = and i16 %56, 1
  %58 = zext nneg i16 %57 to i32
  store i32 %58, ptr %55, align 8, !tbaa !71
  %59 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  call void @RNA_boolean_set_array(ptr noundef %60, ptr noundef nonnull @.str.14, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br i1 %5, label %63, label %61

61:                                               ; preds = %44
  %62 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %62, ptr noundef nonnull @.str.16) #8
  br label %64

63:                                               ; preds = %44
  call fastcc void @ringsel_finish(ptr noundef %0, ptr noundef nonnull %1) #9
  call fastcc void @ringsel_exit(ptr noundef nonnull %1) #9
  br label %64

64:                                               ; preds = %22, %16, %63, %61
  %65 = phi i32 [ 1, %61 ], [ 4, %63 ], [ 2, %16 ], [ 2, %22 ]
  ret i32 %65
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByLattice(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ringsel_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !109 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !110
  %5 = tail call ptr %4(i64 noundef 280, ptr noundef nonnull @.str.17) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !57
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  store ptr %7, ptr %5, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %9, ptr noundef nonnull @ringsel_draw, ptr noundef nonnull %5, i32 noundef 0) #8
  %11 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !114
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %13 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !115
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %12) #8
  %15 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !81
  %16 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 11
  store i8 0, ptr %16, align 4, !tbaa !116
  %17 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 12
  store i8 1, ptr %17, align 1, !tbaa !117
  %18 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10
  tail call void @initNumInput(ptr noundef nonnull %18) #8
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
  store i32 0, ptr %26, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10, i32 2, i64 1
  store i32 0, ptr %27, align 4, !tbaa !71
  %28 = load ptr, ptr %15, align 8, !tbaa !81
  tail call void @EDBM_mesh_ensure_valid_dm_hack(ptr noundef %3, ptr noundef %28) #8
  %29 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 6
  tail call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %29) #8
  %30 = load ptr, ptr %5, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %30) #8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !122 {
  %3 = load i32, ptr %1, align 4, !tbaa !71
  store i32 %3, ptr %0, align 4, !tbaa !71
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !71
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @loopcut_mouse_move(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !123 {
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = tail call float @ED_view3d_select_dist_px() #8
  store float %4, ptr %3, align 4, !tbaa !62
  %5 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 6
  %6 = call ptr @EDBM_edge_find_nearest(ptr noundef nonnull %5, ptr noundef nonnull %3) #8
  call fastcc void @loopcut_update_edge(ptr noundef %0, ptr noundef %6, i32 noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @loopcut_update_edge(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !124 {
  %4 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !125
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store ptr %1, ptr %4, align 8, !tbaa !125
  tail call fastcc void @ringsel_find_edge(ptr noundef nonnull %0, i32 noundef %2) #9
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ringsel_finish(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !126 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.3) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !55
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.6) #8
  %10 = fmul float %9, 0x3FD2B020C0000000
  %11 = load ptr, ptr %5, align 8, !tbaa !55
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.9) #8
  %13 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !125
  %15 = icmp eq ptr %14, null
  br i1 %15, label %85, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  tail call fastcc void @edgering_select(ptr noundef nonnull %4) #9
  %23 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 12
  %24 = load i8, ptr %23, align 1, !tbaa !117
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !132
  %29 = icmp ne ptr %28, null
  %30 = load ptr, ptr %13, align 8, !tbaa !125
  %31 = tail call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %30) #9, !range !133
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i32 3, i32 2
  %34 = load ptr, ptr %18, align 8, !tbaa !75
  %35 = trunc i32 %12 to i16
  tail call void @BM_mesh_esubdivide(ptr noundef %34, i8 noundef zeroext 1, float noundef %10, i16 noundef signext %35, i8 noundef zeroext 1, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %7, i32 noundef %33, i32 noundef 1, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i32 noundef 0) #8
  %36 = xor i1 %29, true
  %37 = zext i1 %36 to i8
  tail call void @EDBM_update_generic(ptr noundef nonnull %18, i8 noundef zeroext %37, i8 noundef zeroext 1) #8
  br i1 %32, label %42, label %38

38:                                               ; preds = %26
  %39 = load ptr, ptr %18, align 8, !tbaa !75
  tail call void @BM_vert_select_set(ptr noundef %39, ptr noundef %20, i8 noundef zeroext 0) #8
  %40 = load ptr, ptr %18, align 8, !tbaa !75
  tail call void @BM_vert_select_set(ptr noundef %40, ptr noundef %22, i8 noundef zeroext 0) #8
  %41 = load ptr, ptr %17, align 8, !tbaa !81
  tail call void @EDBM_selectmode_flush_ex(ptr noundef %41, i16 noundef signext 1) #8
  br label %85

42:                                               ; preds = %26
  %43 = icmp sgt i32 %7, 1
  %44 = select i1 %29, i1 %43, i1 false
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.BMEditMesh, ptr %18, i64 0, i32 12
  %47 = load i16, ptr %46, align 4, !tbaa !134
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !135
  %53 = tail call zeroext i8 @EDBM_selectmode_disable(ptr noundef %52, ptr noundef nonnull %18, i16 noundef signext 1, i16 noundef signext 2) #8
  br label %85

54:                                               ; preds = %45, %42
  %55 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !135
  %57 = tail call zeroext i8 @EDBM_selectmode_disable(ptr noundef %56, ptr noundef nonnull %18, i16 noundef signext 4, i16 noundef signext 2) #8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load ptr, ptr %17, align 8, !tbaa !81
  tail call void @EDBM_selectmode_flush(ptr noundef %60) #8
  br label %85

61:                                               ; preds = %16
  %62 = getelementptr inbounds %struct.BMEditMesh, ptr %18, i64 0, i32 12
  %63 = load i16, ptr %62, align 4, !tbaa !134
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %18, align 8, !tbaa !75
  %68 = load ptr, ptr %13, align 8, !tbaa !125
  %69 = getelementptr inbounds %struct.BMEdge, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !127
  tail call void @_bm_select_history_store(ptr noundef %67, ptr noundef %70) #8
  %71 = load i16, ptr %62, align 4, !tbaa !134
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i16 [ %71, %66 ], [ %63, %61 ]
  %74 = and i16 %73, 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %18, align 8, !tbaa !75
  %78 = load ptr, ptr %13, align 8, !tbaa !125
  tail call void @_bm_select_history_store(ptr noundef %77, ptr noundef %78) #8
  br label %79

79:                                               ; preds = %76, %72
  %80 = load ptr, ptr %17, align 8, !tbaa !81
  tail call void @EDBM_selectmode_flush(ptr noundef %80) #8
  %81 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !115
  %83 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 19
  %84 = load ptr, ptr %83, align 8, !tbaa !136
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %84) #8
  br label %85

85:                                               ; preds = %79, %50, %54, %59, %38, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ringsel_exit(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.RingSelOpData, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  tail call void @ED_region_draw_cb_exit(ptr noundef %6, ptr noundef %8) #8
  tail call fastcc void @edgering_preview_free(ptr noundef nonnull %3) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %9) #8
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !110
  tail call void %10(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ringsel_draw(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !140 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !141
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !142
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %8, %3
  %13 = icmp eq ptr %4, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 47
  %16 = load i8, ptr %15, align 8, !tbaa !143
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @glDisable(i32 noundef 2929) #8
  br label %19

19:                                               ; preds = %18, %14, %12
  tail call void @glPushMatrix() #8
  %20 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %22) #8
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #8
  %23 = load i32, ptr %5, align 8, !tbaa !141
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  tail call void @glEnableClientState(i32 noundef 32884) #8
  %26 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !145
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %27) #8
  %28 = load i32, ptr %5, align 8, !tbaa !141
  %29 = shl nsw i32 %28, 1
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %29) #8
  tail call void @glDisableClientState(i32 noundef 32884) #8
  br label %30

30:                                               ; preds = %25, %19
  %31 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !142
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  tail call void @glPointSize(float noundef 3.000000e+00) #8
  tail call void @glEnableClientState(i32 noundef 32884) #8
  %35 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !146
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %36) #8
  %37 = load i32, ptr %31, align 8, !tbaa !142
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %37) #8
  tail call void @glDisableClientState(i32 noundef 32884) #8
  tail call void @glPointSize(float noundef 1.000000e+00) #8
  br label %38

38:                                               ; preds = %34, %30
  tail call void @glPopMatrix() #8
  br i1 %13, label %44, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 47
  %41 = load i8, ptr %40, align 8, !tbaa !143
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @glEnable(i32 noundef 2929) #8
  br label %44

44:                                               ; preds = %38, %39, %43, %8
  ret void
}

; Function Attrs: optsize
declare void @initNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_ensure_valid_dm_hack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @em_setup_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_view3d_select_dist_px() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @EDBM_edge_find_nearest(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ringsel_find_edge(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !147 {
  %3 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @edgering_preview_calc(ptr noundef nonnull %0, i32 noundef %1) #9
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @edgering_preview_free(ptr noundef nonnull %0) #9
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_preview_calc(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !148 {
  tail call fastcc void @edgering_preview_free(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = tail call ptr @EDBM_mesh_deform_dm_get(ptr noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !81
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %9, i8 noundef zeroext 1) #8
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = tail call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %12) #9, !range !133
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call fastcc void @edgering_preview_calc_points(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %1) #9
  br label %17

16:                                               ; preds = %10
  tail call fastcc void @edgering_preview_calc_edges(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %1) #9
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_preview_free(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !110
  tail call void %6(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !145
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !141
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !110
  tail call void %13(ptr noundef nonnull %10) #8
  store ptr null, ptr %9, align 8, !tbaa !146
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 5
  store i32 0, ptr %15, align 8, !tbaa !142
  ret void
}

; Function Attrs: optsize
declare ptr @EDBM_mesh_deform_dm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !150 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_preview_calc_points(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !152 {
  %4 = alloca [2 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %9, i8 noundef zeroext 1) #8
  br label %10

10:                                               ; preds = %6, %3
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !110
  %12 = sext i32 %2 to i64
  %13 = mul nsw i64 %12, 12
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @__func__.edgering_preview_calc_points) #8
  %15 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !125
  %17 = getelementptr inbounds %struct.BMEdge, ptr %16, i64 0, i32 2
  call fastcc void @edgering_vcos_get_pair(ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %4) #9
  %18 = icmp slt i32 %2, 1
  br i1 %18, label %33, label %19

19:                                               ; preds = %10
  %20 = sitofp i32 %2 to float
  %21 = fadd float %20, 1.000000e+00
  %22 = getelementptr inbounds [2 x [3 x float]], ptr %4, i64 0, i64 1
  %23 = zext nneg i32 %2 to i64
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i64 [ 0, %19 ], [ %30, %24 ]
  %26 = phi i32 [ 1, %19 ], [ %31, %24 ]
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %27, %21
  %29 = getelementptr inbounds [3 x float], ptr %14, i64 %25
  call void @interp_v3_v3v3(ptr noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %22, float noundef %28) #8
  %30 = add nuw nsw i64 %25, 1
  %31 = add nuw nsw i32 %26, 1
  %32 = icmp eq i64 %30, %23
  br i1 %32, label %33, label %24, !llvm.loop !153

33:                                               ; preds = %24, %10
  %34 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 4
  store ptr %14, ptr %34, align 8, !tbaa !146
  %35 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 5
  store i32 %2, ptr %35, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_preview_calc_edges(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !155 {
  %4 = alloca %struct.BMWalker, align 8
  %5 = alloca [2 x [2 x ptr]], align 16
  %6 = alloca ptr, align 8
  %7 = alloca [2 x [2 x [3 x float]]], align 16
  %8 = alloca [2 x [2 x [3 x float]]], align 16
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #10
  %12 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr null, ptr %6, align 8, !tbaa !110
  call void @BMW_init(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 4, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #8
  %14 = call ptr @BMW_begin(ptr noundef nonnull %4, ptr noundef %13) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %79, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds [2 x [2 x ptr]], ptr %5, i64 0, i64 1
  %18 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %19 = getelementptr inbounds [2 x [2 x ptr]], ptr %5, i64 0, i64 1, i64 1
  %20 = icmp slt i32 %2, 1
  %21 = sitofp i32 %2 to float
  %22 = fadd float %21, 1.000000e+00
  %23 = getelementptr inbounds [2 x [3 x float]], ptr %7, i64 0, i64 1
  %24 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %7, i64 0, i64 1
  %25 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %7, i64 0, i64 1, i64 1
  br label %26

26:                                               ; preds = %16, %73
  %27 = phi ptr [ %14, %16 ], [ %77, %73 ]
  %28 = phi i32 [ 0, %16 ], [ %76, %73 ]
  %29 = phi ptr [ null, %16 ], [ %27, %73 ]
  %30 = phi i32 [ 0, %16 ], [ %75, %73 ]
  %31 = phi ptr [ null, %16 ], [ %74, %73 ]
  %32 = icmp eq ptr %29, null
  br i1 %32, label %73, label %33

33:                                               ; preds = %26
  %34 = icmp eq ptr %31, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  store ptr %31, ptr %17, align 16, !tbaa !110
  %36 = load ptr, ptr %18, align 8, !tbaa !110
  store ptr %36, ptr %19, align 8, !tbaa !110
  br label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 2
  %39 = load <2 x ptr>, ptr %38, align 8, !tbaa !110
  store <2 x ptr> %39, ptr %17, align 16, !tbaa !110
  %40 = load ptr, ptr %38, align 8, !tbaa !127
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi ptr [ %31, %35 ], [ %40, %37 ]
  call fastcc void @edgering_find_order(ptr noundef nonnull %29, ptr noundef nonnull %27, ptr noundef %42, ptr noundef nonnull %5) #9
  %43 = load ptr, ptr %5, align 16, !tbaa !110
  %44 = load ptr, ptr %6, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !110
  %48 = call i64 %47(ptr noundef nonnull %44) #8
  %49 = udiv i64 %48, 24
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i64 [ 0, %41 ], [ %49, %46 ]
  %52 = add nsw i32 %30, %2
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 24, i32 noundef %30, i32 noundef %2, ptr noundef nonnull @.str.19) #8
  br label %56

56:                                               ; preds = %55, %50
  br i1 %20, label %73, label %57

57:                                               ; preds = %56
  %58 = sext i32 %28 to i64
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ %58, %57 ], [ %68, %59 ]
  %61 = phi i32 [ 1, %57 ], [ %69, %59 ]
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %62, %22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #10
  call fastcc void @edgering_vcos_get(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  %64 = load ptr, ptr %6, align 8, !tbaa !110
  %65 = getelementptr inbounds [2 x [3 x float]], ptr %64, i64 %60
  call void @interp_v3_v3v3(ptr noundef %65, ptr noundef nonnull %7, ptr noundef nonnull %23, float noundef %63) #8
  %66 = load ptr, ptr %6, align 8, !tbaa !110
  %67 = getelementptr inbounds [2 x [3 x float]], ptr %66, i64 %60, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %67, ptr noundef nonnull %24, ptr noundef nonnull %25, float noundef %63) #8
  %68 = add nsw i64 %60, 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #10
  %69 = add nuw i32 %61, 1
  %70 = icmp eq i32 %61, %2
  br i1 %70, label %71, label %59, !llvm.loop !156

71:                                               ; preds = %59
  %72 = trunc i64 %68 to i32
  br label %73

73:                                               ; preds = %71, %56, %26
  %74 = phi ptr [ %31, %26 ], [ %43, %56 ], [ %43, %71 ]
  %75 = phi i32 [ %30, %26 ], [ %52, %56 ], [ %52, %71 ]
  %76 = phi i32 [ %28, %26 ], [ %28, %56 ], [ %72, %71 ]
  %77 = call ptr @BMW_step(ptr noundef nonnull %4) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %26, !llvm.loop !157

79:                                               ; preds = %73, %3
  %80 = phi ptr [ null, %3 ], [ %74, %73 ]
  %81 = phi i32 [ 0, %3 ], [ %75, %73 ]
  %82 = phi ptr [ null, %3 ], [ %27, %73 ]
  %83 = phi i32 [ 0, %3 ], [ %76, %73 ]
  %84 = icmp eq ptr %82, %14
  br i1 %84, label %140, label %85

85:                                               ; preds = %79
  %86 = call zeroext i8 @BM_edge_share_quad_check(ptr noundef %82, ptr noundef %14) #8
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %140, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds [2 x [2 x ptr]], ptr %5, i64 0, i64 1
  %90 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %91 = getelementptr inbounds [2 x [2 x ptr]], ptr %5, i64 0, i64 1, i64 1
  %92 = load <2 x ptr>, ptr %5, align 16, !tbaa !110
  store <2 x ptr> %92, ptr %89, align 16, !tbaa !110
  call fastcc void @edgering_find_order(ptr noundef %82, ptr noundef %14, ptr noundef %80, ptr noundef nonnull %5) #9
  %93 = load ptr, ptr %6, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !110
  %97 = call i64 %96(ptr noundef nonnull %93) #8
  %98 = udiv i64 %97, 24
  br label %99

99:                                               ; preds = %95, %88
  %100 = phi i64 [ 0, %88 ], [ %98, %95 ]
  %101 = add nsw i32 %81, %2
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 24, i32 noundef %81, i32 noundef %2, ptr noundef nonnull @.str.19) #8
  br label %105

105:                                              ; preds = %104, %99
  %106 = icmp slt i32 %2, 1
  br i1 %106, label %140, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr %5, align 16, !tbaa !110
  %109 = icmp ne ptr %108, null
  %110 = load ptr, ptr %90, align 8
  %111 = icmp ne ptr %110, null
  %112 = select i1 %109, i1 %111, i1 false
  %113 = load ptr, ptr %89, align 16
  %114 = icmp ne ptr %113, null
  %115 = select i1 %112, i1 %114, i1 false
  %116 = load ptr, ptr %91, align 8
  %117 = icmp ne ptr %116, null
  %118 = select i1 %115, i1 %117, i1 false
  %119 = sitofp i32 %2 to float
  %120 = fadd float %119, 1.000000e+00
  %121 = getelementptr inbounds [2 x [3 x float]], ptr %8, i64 0, i64 1
  %122 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %8, i64 0, i64 1
  %123 = getelementptr inbounds [2 x [2 x [3 x float]]], ptr %8, i64 0, i64 1, i64 1
  br label %124

124:                                              ; preds = %107, %136
  %125 = phi i32 [ %83, %107 ], [ %137, %136 ]
  %126 = phi i32 [ 1, %107 ], [ %138, %136 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #10
  br i1 %118, label %127, label %136

127:                                              ; preds = %124
  %128 = sitofp i32 %126 to float
  %129 = fdiv float %128, %120
  call fastcc void @edgering_vcos_get(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %8) #9
  %130 = load ptr, ptr %6, align 8, !tbaa !110
  %131 = sext i32 %125 to i64
  %132 = getelementptr inbounds [2 x [3 x float]], ptr %130, i64 %131
  call void @interp_v3_v3v3(ptr noundef %132, ptr noundef nonnull %8, ptr noundef nonnull %121, float noundef %129) #8
  %133 = load ptr, ptr %6, align 8, !tbaa !110
  %134 = getelementptr inbounds [2 x [3 x float]], ptr %133, i64 %131, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %134, ptr noundef nonnull %122, ptr noundef nonnull %123, float noundef %129) #8
  %135 = add nsw i32 %125, 1
  br label %136

136:                                              ; preds = %124, %127
  %137 = phi i32 [ %135, %127 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #10
  %138 = add nuw i32 %126, 1
  %139 = icmp eq i32 %126, %2
  br i1 %139, label %140, label %124, !llvm.loop !158

140:                                              ; preds = %136, %105, %85, %79
  %141 = phi i32 [ %83, %85 ], [ %83, %79 ], [ %83, %105 ], [ %137, %136 ]
  call void @BMW_end(ptr noundef nonnull %4) #8
  %142 = load ptr, ptr %6, align 8, !tbaa !110
  %143 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 2
  store ptr %142, ptr %143, align 8, !tbaa !145
  %144 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 3
  store i32 %141, ptr %144, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_vcos_get_pair(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !159 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  %8 = load ptr, ptr %1, align 8, !tbaa !110
  %9 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %8) #9
  tail call void %7(ptr noundef nonnull %0, i32 noundef %9, ptr noundef %2) #8
  %10 = load ptr, ptr %6, align 8, !tbaa !160
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %12) #9
  %14 = getelementptr inbounds [3 x float], ptr %2, i64 1
  tail call void %10(ptr noundef nonnull %0, i32 noundef %13, ptr noundef nonnull %14) #8
  br label %22

15:                                               ; preds = %3
  %16 = load ptr, ptr %1, align 8, !tbaa !110
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %17) #9
  %18 = getelementptr inbounds [3 x float], ptr %2, i64 1
  %19 = getelementptr inbounds ptr, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !110
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %21) #9
  br label %22

22:                                               ; preds = %5, %15
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !163
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !164 {
  %3 = load float, ptr %1, align 4, !tbaa !62
  store float %3, ptr %0, align 4, !tbaa !62
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !62
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !62
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_find_order(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !165 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !151
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  %10 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef %9) #8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 8, !tbaa !166
  %14 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %0, ptr noundef %13) #8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %12, %4
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %16, %29
  %20 = phi ptr [ %30, %29 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !166
  %23 = call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef %22) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !166
  %27 = call zeroext i8 @BM_edge_in_face(ptr noundef %0, ptr noundef %26) #8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %19, %25
  %30 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !168

32:                                               ; preds = %29, %16
  %33 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !127
  store ptr %34, ptr %3, align 8, !tbaa !110
  %35 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !131
  %37 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !110
  %38 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !127
  %40 = getelementptr inbounds [2 x ptr], ptr %3, i64 1
  store ptr %39, ptr %40, align 8, !tbaa !110
  %41 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !131
  %43 = getelementptr inbounds [2 x ptr], ptr %3, i64 1, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !110
  br label %84

44:                                               ; preds = %25, %12
  %45 = phi ptr [ %7, %12 ], [ %20, %25 ]
  %46 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !127
  %48 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %45, ptr noundef %47) #8
  %49 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !169
  %51 = icmp eq ptr %48, %50
  %52 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !127
  %54 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !170
  %56 = icmp eq ptr %55, %53
  br i1 %56, label %72, label %57

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !131
  br label %60

60:                                               ; preds = %57, %64
  %61 = phi ptr [ %55, %57 ], [ %70, %64 ]
  %62 = phi ptr [ %48, %57 ], [ %68, %64 ]
  %63 = icmp eq ptr %61, %59
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 7
  %66 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 6
  %67 = select i1 %51, ptr %65, ptr %66
  %68 = load ptr, ptr %67, align 8, !tbaa !110
  %69 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !170
  %71 = icmp eq ptr %70, %53
  br i1 %71, label %72, label %60, !llvm.loop !171

72:                                               ; preds = %60, %64, %44
  %73 = phi ptr [ %53, %44 ], [ %53, %64 ], [ %59, %60 ]
  %74 = icmp eq ptr %73, %2
  %75 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  br i1 %74, label %76, label %80

76:                                               ; preds = %72
  %77 = load ptr, ptr %46, align 8, !tbaa !127
  store ptr %77, ptr %3, align 8, !tbaa !110
  %78 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !131
  store ptr %79, ptr %75, align 8, !tbaa !110
  br label %84

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !131
  store ptr %82, ptr %3, align 8, !tbaa !110
  %83 = load ptr, ptr %46, align 8, !tbaa !127
  store ptr %83, ptr %75, align 8, !tbaa !110
  br label %84

84:                                               ; preds = %76, %80, %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret void
}

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_vcos_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !172 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i1 [ true, %5 ], [ false, %7 ]
  %9 = phi i64 [ 0, %5 ], [ 1, %7 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !160
  %11 = getelementptr inbounds [2 x ptr], ptr %1, i64 %9, i64 0
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %12) #9
  %14 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 %9, i64 0
  tail call void %10(ptr noundef nonnull %0, i32 noundef %13, ptr noundef %14) #8
  %15 = load ptr, ptr %6, align 8, !tbaa !160
  %16 = getelementptr inbounds [2 x ptr], ptr %1, i64 %9, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !110
  %18 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %17) #9
  %19 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 %9, i64 1
  tail call void %15(ptr noundef nonnull %0, i32 noundef %18, ptr noundef nonnull %19) #8
  br i1 %8, label %7, label %35, !llvm.loop !173

20:                                               ; preds = %3
  %21 = load ptr, ptr %1, align 8, !tbaa !110
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %22) #9
  %23 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 0, i64 1
  %24 = getelementptr inbounds [2 x ptr], ptr %1, i64 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !110
  %26 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %26) #9
  %27 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 1, i64 0
  %28 = getelementptr inbounds [2 x ptr], ptr %1, i64 1, i64 0
  %29 = load ptr, ptr %28, align 8, !tbaa !110
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %30) #9
  %31 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 1, i64 1
  %32 = getelementptr inbounds [2 x ptr], ptr %1, i64 1, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %34) #9
  br label %35

35:                                               ; preds = %7, %20
  ret void
}

; Function Attrs: optsize
declare ptr @BMW_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_share_quad_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMW_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !174 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #9
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #9
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !175 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = tail call ptr %3(ptr noundef %0) #8
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BM_loop_other_edge_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !178 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 13, ptr %3, align 4, !tbaa !179
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %4, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %5, align 8, !tbaa !176
  store ptr %1, ptr %0, align 8, !tbaa !181
  tail call void @bmiter__loop_of_loop_begin(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare void @bmiter__loop_of_loop_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_loop_step(ptr noundef) #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_select(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !182 {
  %2 = alloca %struct.BMWalker, align 8
  %3 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 11
  %10 = load i8, ptr %9, align 4, !tbaa !116
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @EDBM_flag_disable_all(ptr noundef %4, i8 noundef zeroext 1) #8
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %4, align 8, !tbaa !75
  call void @BMW_init(ptr noundef nonnull %2, ptr noundef %14, i32 noundef 4, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #8
  %15 = call ptr @BMW_begin(ptr noundef nonnull %2, ptr noundef nonnull %6) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !75
  call void @BM_edge_select_set(ptr noundef %19, ptr noundef nonnull %18, i8 noundef zeroext 1) #8
  %20 = call ptr @BMW_step(ptr noundef nonnull %2) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !183

22:                                               ; preds = %17, %13
  call void @BMW_end(ptr noundef nonnull %2) #8
  br label %23

23:                                               ; preds = %1, %22
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #10
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_esubdivide(ptr noundef, i8 noundef zeroext, float noundef, i16 noundef signext, i8 noundef zeroext, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_selectmode_disable(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @handleNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @loopcut_finish(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !184 {
  %4 = load ptr, ptr %0, align 8, !tbaa !64
  tail call void @ED_region_tag_redraw(ptr noundef %4) #8
  %5 = tail call ptr @CTX_wm_area(ptr noundef %1) #8
  tail call void @ED_area_headerprint(ptr noundef %5, ptr noundef null) #8
  %6 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %12, i8 noundef zeroext 2) #8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = load ptr, ptr %6, align 8, !tbaa !125
  %16 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %15) #9
  tail call void @RNA_int_set(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %16) #8
  tail call fastcc void @ringsel_finish(ptr noundef %1, ptr noundef %2) #9
  tail call fastcc void @ringsel_exit(ptr noundef %2) #9
  br label %18

17:                                               ; preds = %3
  tail call void @ringcut_cancel(ptr poison, ptr noundef %2) #9
  br label %18

18:                                               ; preds = %9, %17
  %19 = phi i32 [ 4, %9 ], [ 2, %17 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #6 !PGOFuncName !185 {
  %2 = fcmp olt float %0, 4.000000e+00
  %3 = select i1 %2, float %0, float 4.000000e+00
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #6 !PGOFuncName !186 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #6 !PGOFuncName !187 {
  %2 = fcmp ogt float %0, -4.000000e+00
  %3 = select i1 %2, float %0, float -4.000000e+00
  ret float %3
}

; Function Attrs: optsize
declare void @outputNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{!35, !36, i64 88}
!51 = !{!"editmesh_loopcut.c:ringcut_invoke"}
!52 = !{i32 1, i32 5}
!53 = !{!"editmesh_loopcut.c:loopcut_exec"}
!54 = !{!"editmesh_loopcut.c:loopcut_modal"}
!55 = !{!56, !36, i64 112}
!56 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!57 = !{!56, !36, i64 96}
!58 = !{!59, !41, i64 18}
!59 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !60, i64 20, !60, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !60, i64 48, !60, i64 52, !61, i64 56, !60, i64 64, !60, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !60, i64 108, !36, i64 112}
!60 = !{!"int", !37, i64 0}
!61 = !{!"double", !37, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !37, i64 0}
!64 = !{!65, !36, i64 0}
!65 = !{!"RingSelOpData", !36, i64 0, !36, i64 8, !36, i64 16, !60, i64 24, !36, i64 32, !60, i64 40, !66, i64 48, !36, i64 112, !36, i64 120, !36, i64 128, !67, i64 136, !37, i64 276, !37, i64 277}
!66 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!67 = !{!"NumInput", !41, i64 0, !60, i64 4, !37, i64 8, !37, i64 20, !41, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !41, i64 68, !37, i64 70, !60, i64 136}
!68 = !{!59, !41, i64 16}
!69 = !{i32 2, i32 5}
!70 = !{!59, !41, i64 76}
!71 = !{!60, !60, i64 0}
!72 = !{!"editmesh_loopcut.c:ringcut_cancel"}
!73 = !{!"editmesh_loopcut.c:loopcut_init"}
!74 = !{!56, !36, i64 120}
!75 = !{!76, !36, i64 0}
!76 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !60, i64 16, !36, i64 24, !60, i64 32, !36, i64 40, !36, i64 48, !77, i64 56, !36, i64 64, !60, i64 72, !36, i64 80, !60, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !60, i64 104}
!77 = !{!"long", !37, i64 0}
!78 = !{!79, !60, i64 4}
!79 = !{!"BMesh", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !60, i64 88, !60, i64 92, !60, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !60, i64 128, !36, i64 136, !80, i64 144, !80, i64 344, !80, i64 544, !80, i64 744, !41, i64 944, !60, i64 948, !60, i64 952, !60, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!80 = !{!"CustomData", !36, i64 0, !37, i64 8, !60, i64 172, !60, i64 176, !60, i64 180, !36, i64 184, !36, i64 192}
!81 = !{!65, !36, i64 120}
!82 = !{!83, !36, i64 264}
!83 = !{!"Scene", !84, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !60, i64 232, !60, i64 236, !60, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !85, i64 280, !94, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !60, i64 4380, !39, i64 4384, !95, i64 4400, !96, i64 4416, !99, i64 4600, !36, i64 4608, !100, i64 4616, !36, i64 4640, !77, i64 4648, !77, i64 4656, !87, i64 4664, !88, i64 4824, !101, i64 4888, !36, i64 4952}
!84 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !60, i64 100, !60, i64 104, !60, i64 108, !36, i64 112}
!85 = !{!"RenderData", !86, i64 0, !36, i64 248, !36, i64 256, !89, i64 264, !90, i64 328, !60, i64 400, !60, i64 404, !60, i64 408, !63, i64 412, !60, i64 416, !60, i64 420, !60, i64 424, !60, i64 428, !41, i64 432, !41, i64 434, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !60, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !60, i64 484, !60, i64 488, !41, i64 492, !41, i64 494, !60, i64 496, !60, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !60, i64 516, !60, i64 520, !60, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !91, i64 544, !91, i64 560, !92, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !63, i64 612, !63, i64 616, !63, i64 620, !63, i64 624, !60, i64 628, !63, i64 632, !63, i64 636, !63, i64 640, !63, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !63, i64 660, !63, i64 664, !41, i64 668, !41, i64 670, !63, i64 672, !63, i64 676, !37, i64 680, !60, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !60, i64 2520, !41, i64 2524, !41, i64 2526, !63, i64 2528, !63, i64 2532, !41, i64 2536, !41, i64 2538, !63, i64 2540, !41, i64 2544, !41, i64 2546, !60, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !63, i64 2560, !63, i64 2564, !36, i64 2568, !60, i64 2576, !63, i64 2580, !37, i64 2584, !93, i64 2616, !60, i64 3976, !60, i64 3980}
!86 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !63, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !87, i64 24, !88, i64 184}
!87 = !{!"ColorManagedViewSettings", !60, i64 0, !60, i64 4, !37, i64 8, !37, i64 72, !63, i64 136, !63, i64 140, !36, i64 144, !36, i64 152}
!88 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!89 = !{!"QuicktimeCodecSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !41, i64 48, !41, i64 50, !60, i64 52, !60, i64 56, !60, i64 60}
!90 = !{!"FFMpegCodecData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !63, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !60, i64 48, !60, i64 52, !60, i64 56, !60, i64 60, !36, i64 64}
!91 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!92 = !{!"rcti", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!93 = !{!"BakeData", !86, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !63, i64 1280, !63, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!94 = !{!"AudioData", !60, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !60, i64 16, !41, i64 20, !41, i64 22, !63, i64 24, !63, i64 28}
!95 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!96 = !{!"GameData", !95, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !97, i64 40, !41, i64 64, !41, i64 66, !63, i64 68, !98, i64 72, !63, i64 128, !63, i64 132, !60, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180}
!97 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !63, i64 8, !63, i64 12, !36, i64 16}
!98 = !{!"RecastData", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !60, i64 40, !63, i64 44, !63, i64 48, !41, i64 52, !41, i64 54}
!99 = !{!"UnitSettings", !63, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!100 = !{!"PhysicsSettings", !37, i64 0, !60, i64 12, !60, i64 16, !60, i64 20}
!101 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!102 = !{!103, !41, i64 46}
!103 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !63, i64 32, !63, i64 36, !63, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !63, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !104, i64 64, !106, i64 168, !63, i64 336, !63, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !63, i64 352, !63, i64 356, !63, i64 360, !63, i64 364, !63, i64 368, !63, i64 372, !63, i64 376, !63, i64 380, !63, i64 384, !63, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !60, i64 448, !60, i64 452, !60, i64 456, !60, i64 460, !41, i64 464, !41, i64 466, !60, i64 468, !63, i64 472, !63, i64 476, !107, i64 480, !108, i64 608}
!104 = !{!"ImagePaintSettings", !105, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !60, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !63, i64 100}
!105 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !60, i64 28, !60, i64 32, !60, i64 36}
!106 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !63, i64 128, !63, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !36, i64 152, !36, i64 160}
!107 = !{!"UnifiedPaintSettings", !60, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !37, i64 16, !37, i64 28, !60, i64 40, !37, i64 44, !63, i64 52, !60, i64 56, !60, i64 60, !37, i64 64, !37, i64 65, !63, i64 72, !37, i64 76, !60, i64 84, !63, i64 88, !37, i64 92, !37, i64 100, !60, i64 108, !36, i64 112, !63, i64 120, !60, i64 124}
!108 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !37, i64 20, !37, i64 21, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36}
!109 = !{!"editmesh_loopcut.c:ringsel_init"}
!110 = !{!36, !36, i64 0}
!111 = !{!112, !36, i64 240}
!112 = !{!"ARegion", !36, i64 0, !36, i64 8, !113, i64 16, !92, i64 176, !92, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !63, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!113 = !{!"View2D", !91, i64 0, !91, i64 16, !92, i64 32, !92, i64 48, !92, i64 64, !37, i64 80, !37, i64 88, !63, i64 96, !63, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !60, i64 136, !60, i64 140, !36, i64 144, !36, i64 152}
!114 = !{!65, !36, i64 8}
!115 = !{!65, !36, i64 112}
!116 = !{!65, !37, i64 276}
!117 = !{!65, !37, i64 277}
!118 = !{!65, !41, i64 136}
!119 = !{!41, !41, i64 0}
!120 = !{!83, !37, i64 4604}
!121 = !{!65, !60, i64 140}
!122 = !{!"editmesh_loopcut.c:copy_v2_v2_int"}
!123 = !{!"editmesh_loopcut.c:loopcut_mouse_move"}
!124 = !{!"editmesh_loopcut.c:loopcut_update_edge"}
!125 = !{!65, !36, i64 128}
!126 = !{!"editmesh_loopcut.c:ringsel_finish"}
!127 = !{!128, !36, i64 24}
!128 = !{!"BMEdge", !129, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !130, i64 48, !130, i64 64}
!129 = !{!"BMHeader", !36, i64 0, !60, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!130 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!131 = !{!128, !36, i64 32}
!132 = !{!56, !36, i64 144}
!133 = !{i8 0, i8 2}
!134 = !{!76, !41, i64 92}
!135 = !{!65, !36, i64 48}
!136 = !{!137, !36, i64 296}
!137 = !{!"Object", !84, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !60, i64 140, !60, i64 144, !60, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !138, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !60, i64 432, !60, i64 436, !36, i64 440, !36, i64 448, !60, i64 456, !60, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !63, i64 616, !63, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !60, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !60, i64 968, !60, i64 972, !60, i64 976, !60, i64 980, !60, i64 984, !63, i64 988, !63, i64 992, !63, i64 996, !63, i64 1000, !63, i64 1004, !63, i64 1008, !63, i64 1012, !63, i64 1016, !63, i64 1020, !63, i64 1024, !63, i64 1028, !63, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !63, i64 1048, !63, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !63, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !60, i64 1144, !60, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !63, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !77, i64 1304, !77, i64 1312, !60, i64 1320, !60, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!138 = !{!"bAnimVizSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44}
!139 = !{!"editmesh_loopcut.c:ringsel_exit"}
!140 = !{!"editmesh_loopcut.c:ringsel_draw"}
!141 = !{!65, !60, i64 24}
!142 = !{!65, !60, i64 40}
!143 = !{!144, !37, i64 344}
!144 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !60, i64 32, !63, i64 36, !37, i64 40, !37, i64 56, !63, i64 72, !63, i64 76, !37, i64 80, !37, i64 81, !60, i64 84, !60, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !91, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !60, i64 224, !60, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !63, i64 244, !63, i64 248, !63, i64 252, !63, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!145 = !{!65, !36, i64 16}
!146 = !{!65, !36, i64 32}
!147 = !{!"editmesh_loopcut.c:ringsel_find_edge"}
!148 = !{!"editmesh_loopcut.c:edgering_preview_calc"}
!149 = !{!"editmesh_loopcut.c:edgering_preview_free"}
!150 = !{!"editmesh_loopcut.c:BM_edge_is_wire"}
!151 = !{!128, !36, i64 40}
!152 = !{!"editmesh_loopcut.c:edgering_preview_calc_points"}
!153 = distinct !{!153, !154}
!154 = !{!"llvm.loop.mustprogress"}
!155 = !{!"editmesh_loopcut.c:edgering_preview_calc_edges"}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !154}
!158 = distinct !{!158, !154}
!159 = !{!"editmesh_loopcut.c:edgering_vcos_get_pair"}
!160 = !{!161, !36, i64 1528}
!161 = !{!"DerivedMesh", !80, i64 0, !80, i64 200, !80, i64 400, !80, i64 600, !80, i64 800, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !36, i64 1032, !36, i64 1040, !60, i64 1048, !63, i64 1052, !60, i64 1056, !60, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!162 = !{!"editmesh_loopcut.c:_bm_elem_index_get"}
!163 = !{!129, !60, i64 8}
!164 = !{!"editmesh_loopcut.c:copy_v3_v3"}
!165 = !{!"editmesh_loopcut.c:edgering_find_order"}
!166 = !{!167, !36, i64 32}
!167 = !{!"BMLoop", !129, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!168 = distinct !{!168, !154}
!169 = !{!167, !36, i64 64}
!170 = !{!167, !36, i64 16}
!171 = distinct !{!171, !154}
!172 = !{!"editmesh_loopcut.c:edgering_vcos_get"}
!173 = distinct !{!173, !154}
!174 = !{!"editmesh_loopcut.c:BM_iter_new"}
!175 = !{!"editmesh_loopcut.c:BM_iter_step"}
!176 = !{!177, !36, i64 48}
!177 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !60, i64 56, !37, i64 60}
!178 = !{!"editmesh_loopcut.c:BM_iter_init"}
!179 = !{!177, !37, i64 60}
!180 = !{!177, !36, i64 40}
!181 = !{!37, !37, i64 0}
!182 = !{!"editmesh_loopcut.c:edgering_select"}
!183 = distinct !{!183, !154}
!184 = !{!"editmesh_loopcut.c:loopcut_finish"}
!185 = !{!"editmesh_loopcut.c:min_ff"}
!186 = !{!"editmesh_loopcut.c:max_ii"}
!187 = !{!"editmesh_loopcut.c:max_ff"}
