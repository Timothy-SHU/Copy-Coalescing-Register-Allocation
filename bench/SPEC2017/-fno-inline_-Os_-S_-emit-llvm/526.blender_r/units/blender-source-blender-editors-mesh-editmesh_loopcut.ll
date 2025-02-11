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
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ringcut_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @loopcut_exec, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @loopcut_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @ringcut_cancel, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_region_view3d, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 100) #8
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !21
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef -4.000000e+00, float noundef 4.000000e+00) #8
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !21
  %16 = tail call ptr @RNA_def_property(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 4, i32 noundef 0) #8
  tail call void @RNA_def_property_enum_items(ptr noundef %16, ptr noundef nonnull @proportional_falloff_curve_only_items) #8
  tail call void @RNA_def_property_enum_default(ptr noundef %16, i32 noundef 2) #8
  tail call void @RNA_def_property_ui_text(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  tail call void @RNA_def_property_translation_context(ptr noundef %16, ptr noundef nonnull @.str.12) #8
  %17 = load ptr, ptr %10, align 8, !tbaa !21
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2147483647) #8
  tail call void @RNA_def_property_flag(ptr noundef %18, i32 noundef 524288) #8
  %19 = load ptr, ptr %10, align 8, !tbaa !21
  %20 = tail call ptr @RNA_def_boolean_array(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_property_flag(ptr noundef %20, i32 noundef 524288) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ringcut_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @loopcut_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !range !22
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @loopcut_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @loopcut_init(ptr noundef %0, ptr noundef %1, ptr noundef null) #9, !range !22
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @loopcut_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [192 x i8], align 16
  %7 = alloca [128 x i8], align 16
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.6) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !23
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.3) #8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.RingSelOpData, ptr %14, i64 0, i32 10
  %16 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %15) #8
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #8
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !26
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
  store float %26, ptr %4, align 4, !tbaa !30
  %27 = getelementptr inbounds float, ptr %4, i64 1
  store float %10, ptr %27, align 4, !tbaa !30
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
  %42 = load ptr, ptr %8, align 8, !tbaa !23
  call void @RNA_int_set(ptr noundef %42, ptr noundef nonnull @.str.3, i32 noundef %36) #8
  call fastcc void @ringsel_find_edge(ptr noundef %14, i32 noundef %36) #9
  %43 = load ptr, ptr %8, align 8, !tbaa !23
  call void @RNA_float_set(ptr noundef %43, ptr noundef nonnull @.str.6, float noundef %41) #8
  %44 = load ptr, ptr %14, align 8, !tbaa !32
  call void @ED_region_tag_redraw(ptr noundef %44) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %138

45:                                               ; preds = %22, %3
  %46 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %47 = load i16, ptr %46, align 8, !tbaa !36
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
  %49 = load i16, ptr %17, align 2, !tbaa !26
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc i32 @loopcut_finish(ptr noundef %14, ptr noundef %0, ptr noundef nonnull %1) #9, !range !37
  br label %155

53:                                               ; preds = %48
  %54 = load ptr, ptr %14, align 8, !tbaa !32
  tail call void @ED_region_tag_redraw(ptr noundef %54) #8
  br label %155

55:                                               ; preds = %45
  %56 = load ptr, ptr %14, align 8, !tbaa !32
  tail call void @ED_region_tag_redraw(ptr noundef %56) #8
  tail call fastcc void @ringsel_exit(ptr noundef nonnull %1) #9
  %57 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_headerprint(ptr noundef %57, ptr noundef null) #8
  br label %155

58:                                               ; preds = %45
  %59 = load i16, ptr %17, align 2, !tbaa !26
  %60 = icmp eq i16 %59, 2
  %61 = load ptr, ptr %14, align 8, !tbaa !32
  tail call void @ED_region_tag_redraw(ptr noundef %61) #8
  br i1 %60, label %62, label %155

62:                                               ; preds = %58
  %63 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_headerprint(ptr noundef %63, ptr noundef null) #8
  tail call void @ringcut_cancel(ptr poison, ptr noundef nonnull %1) #9
  br label %155

64:                                               ; preds = %45, %45, %45
  %65 = load i16, ptr %17, align 2, !tbaa !26
  %66 = icmp eq i16 %65, 2
  br i1 %66, label %155, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %69 = load i16, ptr %68, align 4, !tbaa !38
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = tail call i32 @llvm.smin.i32(i32 %12, i32 499)
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 -1)
  %74 = add nsw i32 %73, 1
  %75 = load ptr, ptr %8, align 8, !tbaa !23
  tail call void @RNA_int_set(ptr noundef %75, ptr noundef nonnull @.str.3, i32 noundef %74) #8
  tail call fastcc void @ringsel_find_edge(ptr noundef %14, i32 noundef %74) #9
  br label %80

76:                                               ; preds = %67
  %77 = fadd float %10, 0x3FA99999A0000000
  %78 = tail call fastcc float @min_ff(float noundef %77) #9
  %79 = load ptr, ptr %8, align 8, !tbaa !23
  tail call void @RNA_float_set(ptr noundef %79, ptr noundef nonnull @.str.6, float noundef %78) #8
  br label %80

80:                                               ; preds = %76, %71
  %81 = phi i32 [ %74, %71 ], [ %12, %76 ]
  %82 = phi float [ %10, %71 ], [ %78, %76 ]
  %83 = load ptr, ptr %14, align 8, !tbaa !32
  tail call void @ED_region_tag_redraw(ptr noundef %83) #8
  br label %138

84:                                               ; preds = %45, %45, %45
  %85 = load i16, ptr %17, align 2, !tbaa !26
  %86 = icmp eq i16 %85, 2
  br i1 %86, label %155, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %89 = load i16, ptr %88, align 4, !tbaa !38
  %90 = icmp eq i16 %89, 0
  %91 = load ptr, ptr %8, align 8, !tbaa !23
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
  %101 = load ptr, ptr %14, align 8, !tbaa !32
  tail call void @ED_region_tag_redraw(ptr noundef %101) #8
  br label %138

102:                                              ; preds = %45
  %103 = icmp eq i8 %16, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !39
  %107 = getelementptr inbounds %struct.RingSelOpData, ptr %14, i64 0, i32 6, i32 7
  store i32 %106, ptr %107, align 8, !tbaa !39
  %108 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %109 = load i32, ptr %108, align 4, !tbaa !39
  %110 = getelementptr inbounds %struct.RingSelOpData, ptr %14, i64 0, i32 6, i32 7, i64 1
  store i32 %109, ptr %110, align 4, !tbaa !39
  tail call fastcc void @loopcut_mouse_move(ptr noundef %14, i32 noundef %12) #9
  %111 = load ptr, ptr %14, align 8, !tbaa !32
  tail call void @ED_region_tag_redraw(ptr noundef %111) #8
  br label %155

112:                                              ; preds = %45, %102
  %113 = load i16, ptr %17, align 2, !tbaa !26
  %114 = icmp eq i16 %113, 1
  br i1 %114, label %115, label %155

115:                                              ; preds = %112
  %116 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %2) #8
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %155, label %118

118:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %119 = sitofp i32 %12 to float
  store float %119, ptr %5, align 4, !tbaa !30
  %120 = getelementptr inbounds float, ptr %5, i64 1
  store float %10, ptr %120, align 4, !tbaa !30
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
  %135 = load ptr, ptr %8, align 8, !tbaa !23
  call void @RNA_int_set(ptr noundef %135, ptr noundef nonnull @.str.3, i32 noundef %129) #8
  call fastcc void @ringsel_find_edge(ptr noundef %14, i32 noundef %129) #9
  %136 = load ptr, ptr %8, align 8, !tbaa !23
  call void @RNA_float_set(ptr noundef %136, ptr noundef nonnull @.str.6, float noundef %134) #8
  %137 = load ptr, ptr %14, align 8, !tbaa !32
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
define internal void @ringcut_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
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
define internal fastcc noundef i32 @loopcut_init(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  tail call void @BKE_report(ptr noundef %14, i32 noundef 16, ptr noundef nonnull @.str.15) #8
  br label %15

15:                                               ; preds = %12, %9
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #8
  br i1 %5, label %16, label %27

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.13) #8
  %20 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #8
  %21 = icmp eq i32 %19, -1
  br i1 %21, label %64, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !44
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %33, label %64

27:                                               ; preds = %15
  tail call fastcc void @ringsel_init(ptr noundef %0, ptr noundef %1) #9
  %28 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.RingSelOpData, ptr %30, i64 0, i32 6, i32 7
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %31, ptr noundef nonnull %32) #9
  tail call fastcc void @loopcut_mouse_move(ptr noundef %30, i32 noundef 1) #9
  br label %44

33:                                               ; preds = %22
  tail call fastcc void @ringsel_init(ptr noundef %0, ptr noundef nonnull %1) #9
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !25
  %36 = load ptr, ptr %17, align 8, !tbaa !23
  %37 = tail call i32 @RNA_int_get(ptr noundef %36, ptr noundef nonnull @.str.13) #8
  %38 = getelementptr inbounds %struct.RingSelOpData, ptr %35, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %40, i8 noundef zeroext 2) #8
  %41 = load ptr, ptr %38, align 8, !tbaa !47
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  %43 = tail call ptr @BM_edge_at_index(ptr noundef %42, i32 noundef %37) #8
  tail call fastcc void @loopcut_update_edge(ptr noundef %35, ptr noundef %43, i32 noundef 0) #9
  br label %44

44:                                               ; preds = %33, %27
  %45 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %46 = getelementptr inbounds %struct.Scene, ptr %45, i64 0, i32 20
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !68
  %50 = lshr i16 %49, 1
  %51 = insertelement <2 x i16> poison, i16 %49, i64 0
  %52 = insertelement <2 x i16> %51, i16 %50, i64 1
  %53 = and <2 x i16> %52, <i16 1, i16 1>
  %54 = zext nneg <2 x i16> %53 to <2 x i32>
  store <2 x i32> %54, ptr %4, align 8, !tbaa !39
  %55 = getelementptr inbounds i32, ptr %4, i64 2
  %56 = lshr i16 %49, 2
  %57 = and i16 %56, 1
  %58 = zext nneg i16 %57 to i32
  store i32 %58, ptr %55, align 8, !tbaa !39
  %59 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !23
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
define internal fastcc void @ringsel_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %5 = tail call ptr %4(i64 noundef 280, ptr noundef nonnull @.str.17) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !25
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  store ptr %7, ptr %5, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %9, ptr noundef nonnull @ringsel_draw, ptr noundef nonnull %5, i32 noundef 0) #8
  %11 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !79
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %13 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !80
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %12) #8
  %15 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 11
  store i8 0, ptr %16, align 4, !tbaa !81
  %17 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 12
  store i8 1, ptr %17, align 1, !tbaa !82
  %18 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10
  tail call void @initNumInput(ptr noundef nonnull %18) #8
  store i16 1, ptr %18, align 8, !tbaa !83
  %19 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !84
  %21 = or i16 %20, 10
  store i16 %21, ptr %19, align 8, !tbaa !84
  %22 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 38, i32 1
  %23 = load i8, ptr %22, align 4, !tbaa !85
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !86
  %26 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10, i32 2
  store i32 0, ptr %26, align 8, !tbaa !39
  %27 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 10, i32 2, i64 1
  store i32 0, ptr %27, align 4, !tbaa !39
  %28 = load ptr, ptr %15, align 8, !tbaa !47
  tail call void @EDBM_mesh_ensure_valid_dm_hack(ptr noundef %3, ptr noundef %28) #8
  %29 = getelementptr inbounds %struct.RingSelOpData, ptr %5, i64 0, i32 6
  tail call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %29) #8
  %30 = load ptr, ptr %5, align 8, !tbaa !32
  tail call void @ED_region_tag_redraw(ptr noundef %30) #8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load i32, ptr %1, align 4, !tbaa !39
  store i32 %3, ptr %0, align 4, !tbaa !39
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !39
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @loopcut_mouse_move(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = tail call float @ED_view3d_select_dist_px() #8
  store float %4, ptr %3, align 4, !tbaa !30
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
define internal fastcc void @loopcut_update_edge(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store ptr %1, ptr %4, align 8, !tbaa !87
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
define internal fastcc void @ringsel_finish(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.3) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !23
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.6) #8
  %10 = fmul float %9, 0x3FD2B020C0000000
  %11 = load ptr, ptr %5, align 8, !tbaa !23
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.9) #8
  %13 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %85, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  tail call fastcc void @edgering_select(ptr noundef nonnull %4) #9
  %23 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 12
  %24 = load i8, ptr %23, align 1, !tbaa !82
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  %29 = icmp ne ptr %28, null
  %30 = load ptr, ptr %13, align 8, !tbaa !87
  %31 = tail call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %30) #9, !range !94
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i32 3, i32 2
  %34 = load ptr, ptr %18, align 8, !tbaa !41
  %35 = trunc i32 %12 to i16
  tail call void @BM_mesh_esubdivide(ptr noundef %34, i8 noundef zeroext 1, float noundef %10, i16 noundef signext %35, i8 noundef zeroext 1, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %7, i32 noundef %33, i32 noundef 1, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i32 noundef 0) #8
  %36 = xor i1 %29, true
  %37 = zext i1 %36 to i8
  tail call void @EDBM_update_generic(ptr noundef nonnull %18, i8 noundef zeroext %37, i8 noundef zeroext 1) #8
  br i1 %32, label %42, label %38

38:                                               ; preds = %26
  %39 = load ptr, ptr %18, align 8, !tbaa !41
  tail call void @BM_vert_select_set(ptr noundef %39, ptr noundef %20, i8 noundef zeroext 0) #8
  %40 = load ptr, ptr %18, align 8, !tbaa !41
  tail call void @BM_vert_select_set(ptr noundef %40, ptr noundef %22, i8 noundef zeroext 0) #8
  %41 = load ptr, ptr %17, align 8, !tbaa !47
  tail call void @EDBM_selectmode_flush_ex(ptr noundef %41, i16 noundef signext 1) #8
  br label %85

42:                                               ; preds = %26
  %43 = icmp sgt i32 %7, 1
  %44 = select i1 %29, i1 %43, i1 false
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.BMEditMesh, ptr %18, i64 0, i32 12
  %47 = load i16, ptr %46, align 4, !tbaa !95
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !96
  %53 = tail call zeroext i8 @EDBM_selectmode_disable(ptr noundef %52, ptr noundef nonnull %18, i16 noundef signext 1, i16 noundef signext 2) #8
  br label %85

54:                                               ; preds = %45, %42
  %55 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !96
  %57 = tail call zeroext i8 @EDBM_selectmode_disable(ptr noundef %56, ptr noundef nonnull %18, i16 noundef signext 4, i16 noundef signext 2) #8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load ptr, ptr %17, align 8, !tbaa !47
  tail call void @EDBM_selectmode_flush(ptr noundef %60) #8
  br label %85

61:                                               ; preds = %16
  %62 = getelementptr inbounds %struct.BMEditMesh, ptr %18, i64 0, i32 12
  %63 = load i16, ptr %62, align 4, !tbaa !95
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %18, align 8, !tbaa !41
  %68 = load ptr, ptr %13, align 8, !tbaa !87
  %69 = getelementptr inbounds %struct.BMEdge, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !88
  tail call void @_bm_select_history_store(ptr noundef %67, ptr noundef %70) #8
  %71 = load i16, ptr %62, align 4, !tbaa !95
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i16 [ %71, %66 ], [ %63, %61 ]
  %74 = and i16 %73, 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %18, align 8, !tbaa !41
  %78 = load ptr, ptr %13, align 8, !tbaa !87
  tail call void @_bm_select_history_store(ptr noundef %77, ptr noundef %78) #8
  br label %79

79:                                               ; preds = %76, %72
  %80 = load ptr, ptr %17, align 8, !tbaa !47
  tail call void @EDBM_selectmode_flush(ptr noundef %80) #8
  %81 = getelementptr inbounds %struct.RingSelOpData, ptr %4, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !80
  %83 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 19
  %84 = load ptr, ptr %83, align 8, !tbaa !97
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %84) #8
  br label %85

85:                                               ; preds = %79, %50, %54, %59, %38, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ringsel_exit(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.RingSelOpData, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  tail call void @ED_region_draw_cb_exit(ptr noundef %6, ptr noundef %8) #8
  tail call fastcc void @edgering_preview_free(ptr noundef nonnull %3) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !32
  tail call void @ED_region_tag_redraw(ptr noundef %9) #8
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %10(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !25
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ringsel_draw(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !100
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !101
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %8, %3
  %13 = icmp eq ptr %4, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 47
  %16 = load i8, ptr %15, align 8, !tbaa !102
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @glDisable(i32 noundef 2929) #8
  br label %19

19:                                               ; preds = %18, %14, %12
  tail call void @glPushMatrix() #8
  %20 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %22) #8
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #8
  %23 = load i32, ptr %5, align 8, !tbaa !100
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  tail call void @glEnableClientState(i32 noundef 32884) #8
  %26 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !104
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %27) #8
  %28 = load i32, ptr %5, align 8, !tbaa !100
  %29 = shl nsw i32 %28, 1
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %29) #8
  tail call void @glDisableClientState(i32 noundef 32884) #8
  br label %30

30:                                               ; preds = %25, %19
  %31 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !101
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  tail call void @glPointSize(float noundef 3.000000e+00) #8
  tail call void @glEnableClientState(i32 noundef 32884) #8
  %35 = getelementptr inbounds %struct.RingSelOpData, ptr %2, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !105
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %36) #8
  %37 = load i32, ptr %31, align 8, !tbaa !101
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %37) #8
  tail call void @glDisableClientState(i32 noundef 32884) #8
  tail call void @glPointSize(float noundef 1.000000e+00) #8
  br label %38

38:                                               ; preds = %34, %30
  tail call void @glPopMatrix() #8
  br i1 %13, label %44, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 47
  %41 = load i8, ptr %40, align 8, !tbaa !102
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
define internal fastcc void @ringsel_find_edge(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !87
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
define internal fastcc void @edgering_preview_calc(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @edgering_preview_free(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call ptr @EDBM_mesh_deform_dm_get(ptr noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !47
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %9, i8 noundef zeroext 1) #8
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = tail call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %12) #9, !range !94
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
define internal fastcc void @edgering_preview_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %6(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !104
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %13(ptr noundef nonnull %10) #8
  store ptr null, ptr %9, align 8, !tbaa !105
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 5
  store i32 0, ptr %15, align 8, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare ptr @EDBM_mesh_deform_dm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_preview_calc_points(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %9, i8 noundef zeroext 1) #8
  br label %10

10:                                               ; preds = %6, %3
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %12 = sext i32 %2 to i64
  %13 = mul nsw i64 %12, 12
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @__func__.edgering_preview_calc_points) #8
  %15 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !87
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
  br i1 %32, label %33, label %24, !llvm.loop !107

33:                                               ; preds = %24, %10
  %34 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 4
  store ptr %14, ptr %34, align 8, !tbaa !105
  %35 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 5
  store i32 %2, ptr %35, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_preview_calc_edges(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMWalker, align 8
  %5 = alloca [2 x [2 x ptr]], align 16
  %6 = alloca ptr, align 8
  %7 = alloca [2 x [2 x [3 x float]]], align 16
  %8 = alloca [2 x [2 x [3 x float]]], align 16
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #10
  %12 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr null, ptr %6, align 8, !tbaa !75
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
  store ptr %31, ptr %17, align 16, !tbaa !75
  %36 = load ptr, ptr %18, align 8, !tbaa !75
  store ptr %36, ptr %19, align 8, !tbaa !75
  br label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 2
  %39 = load <2 x ptr>, ptr %38, align 8, !tbaa !75
  store <2 x ptr> %39, ptr %17, align 16, !tbaa !75
  %40 = load ptr, ptr %38, align 8, !tbaa !88
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi ptr [ %31, %35 ], [ %40, %37 ]
  call fastcc void @edgering_find_order(ptr noundef nonnull %29, ptr noundef nonnull %27, ptr noundef %42, ptr noundef nonnull %5) #9
  %43 = load ptr, ptr %5, align 16, !tbaa !75
  %44 = load ptr, ptr %6, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !75
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
  %64 = load ptr, ptr %6, align 8, !tbaa !75
  %65 = getelementptr inbounds [2 x [3 x float]], ptr %64, i64 %60
  call void @interp_v3_v3v3(ptr noundef %65, ptr noundef nonnull %7, ptr noundef nonnull %23, float noundef %63) #8
  %66 = load ptr, ptr %6, align 8, !tbaa !75
  %67 = getelementptr inbounds [2 x [3 x float]], ptr %66, i64 %60, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %67, ptr noundef nonnull %24, ptr noundef nonnull %25, float noundef %63) #8
  %68 = add nsw i64 %60, 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #10
  %69 = add nuw i32 %61, 1
  %70 = icmp eq i32 %61, %2
  br i1 %70, label %71, label %59, !llvm.loop !109

71:                                               ; preds = %59
  %72 = trunc i64 %68 to i32
  br label %73

73:                                               ; preds = %71, %56, %26
  %74 = phi ptr [ %31, %26 ], [ %43, %56 ], [ %43, %71 ]
  %75 = phi i32 [ %30, %26 ], [ %52, %56 ], [ %52, %71 ]
  %76 = phi i32 [ %28, %26 ], [ %28, %56 ], [ %72, %71 ]
  %77 = call ptr @BMW_step(ptr noundef nonnull %4) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %26, !llvm.loop !110

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
  %92 = load <2 x ptr>, ptr %5, align 16, !tbaa !75
  store <2 x ptr> %92, ptr %89, align 16, !tbaa !75
  call fastcc void @edgering_find_order(ptr noundef %82, ptr noundef %14, ptr noundef %80, ptr noundef nonnull %5) #9
  %93 = load ptr, ptr %6, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !75
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
  %108 = load ptr, ptr %5, align 16, !tbaa !75
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
  %130 = load ptr, ptr %6, align 8, !tbaa !75
  %131 = sext i32 %125 to i64
  %132 = getelementptr inbounds [2 x [3 x float]], ptr %130, i64 %131
  call void @interp_v3_v3v3(ptr noundef %132, ptr noundef nonnull %8, ptr noundef nonnull %121, float noundef %129) #8
  %133 = load ptr, ptr %6, align 8, !tbaa !75
  %134 = getelementptr inbounds [2 x [3 x float]], ptr %133, i64 %131, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %134, ptr noundef nonnull %122, ptr noundef nonnull %123, float noundef %129) #8
  %135 = add nsw i32 %125, 1
  br label %136

136:                                              ; preds = %124, %127
  %137 = phi i32 [ %135, %127 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #10
  %138 = add nuw i32 %126, 1
  %139 = icmp eq i32 %126, %2
  br i1 %139, label %140, label %124, !llvm.loop !111

140:                                              ; preds = %136, %105, %85, %79
  %141 = phi i32 [ %83, %85 ], [ %83, %79 ], [ %83, %105 ], [ %137, %136 ]
  call void @BMW_end(ptr noundef nonnull %4) #8
  %142 = load ptr, ptr %6, align 8, !tbaa !75
  %143 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 2
  store ptr %142, ptr %143, align 8, !tbaa !104
  %144 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 3
  store i32 %141, ptr %144, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_vcos_get_pair(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = load ptr, ptr %1, align 8, !tbaa !75
  %9 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %8) #9
  tail call void %7(ptr noundef nonnull %0, i32 noundef %9, ptr noundef %2) #8
  %10 = load ptr, ptr %6, align 8, !tbaa !112
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %12) #9
  %14 = getelementptr inbounds [3 x float], ptr %2, i64 1
  tail call void %10(ptr noundef nonnull %0, i32 noundef %13, ptr noundef nonnull %14) #8
  br label %22

15:                                               ; preds = %3
  %16 = load ptr, ptr %1, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %17) #9
  %18 = getelementptr inbounds [3 x float], ptr %2, i64 1
  %19 = getelementptr inbounds ptr, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %21) #9
  br label %22

22:                                               ; preds = %5, %15
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !114
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !30
  store float %3, ptr %0, align 4, !tbaa !30
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !30
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !30
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !30
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_find_order(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = tail call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef %9) #8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 8, !tbaa !115
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
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  %23 = call zeroext i8 @BM_edge_in_face(ptr noundef %1, ptr noundef %22) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !115
  %27 = call zeroext i8 @BM_edge_in_face(ptr noundef %0, ptr noundef %26) #8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %19, %25
  %30 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !117

32:                                               ; preds = %29, %16
  %33 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  store ptr %34, ptr %3, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = getelementptr inbounds [2 x ptr], ptr %3, i64 1
  store ptr %39, ptr %40, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !92
  %43 = getelementptr inbounds [2 x ptr], ptr %3, i64 1, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !75
  br label %84

44:                                               ; preds = %25, %12
  %45 = phi ptr [ %7, %12 ], [ %20, %25 ]
  %46 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !88
  %48 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %45, ptr noundef %47) #8
  %49 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !118
  %51 = icmp eq ptr %48, %50
  %52 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !119
  %56 = icmp eq ptr %55, %53
  br i1 %56, label %72, label %57

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !92
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
  %68 = load ptr, ptr %67, align 8, !tbaa !75
  %69 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !119
  %71 = icmp eq ptr %70, %53
  br i1 %71, label %72, label %60, !llvm.loop !120

72:                                               ; preds = %60, %64, %44
  %73 = phi ptr [ %53, %44 ], [ %53, %64 ], [ %59, %60 ]
  %74 = icmp eq ptr %73, %2
  %75 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  br i1 %74, label %76, label %80

76:                                               ; preds = %72
  %77 = load ptr, ptr %46, align 8, !tbaa !88
  store ptr %77, ptr %3, align 8, !tbaa !75
  %78 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !92
  store ptr %79, ptr %75, align 8, !tbaa !75
  br label %84

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !92
  store ptr %82, ptr %3, align 8, !tbaa !75
  %83 = load ptr, ptr %46, align 8, !tbaa !88
  store ptr %83, ptr %75, align 8, !tbaa !75
  br label %84

84:                                               ; preds = %76, %80, %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret void
}

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgering_vcos_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i1 [ true, %5 ], [ false, %7 ]
  %9 = phi i64 [ 0, %5 ], [ 1, %7 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !112
  %11 = getelementptr inbounds [2 x ptr], ptr %1, i64 %9, i64 0
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %12) #9
  %14 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 %9, i64 0
  tail call void %10(ptr noundef nonnull %0, i32 noundef %13, ptr noundef %14) #8
  %15 = load ptr, ptr %6, align 8, !tbaa !112
  %16 = getelementptr inbounds [2 x ptr], ptr %1, i64 %9, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %17) #9
  %19 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 %9, i64 1
  tail call void %15(ptr noundef nonnull %0, i32 noundef %18, ptr noundef nonnull %19) #8
  br i1 %8, label %7, label %35, !llvm.loop !121

20:                                               ; preds = %3
  %21 = load ptr, ptr %1, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %22) #9
  %23 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 0, i64 1
  %24 = getelementptr inbounds [2 x ptr], ptr %1, i64 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %26) #9
  %27 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 1, i64 0
  %28 = getelementptr inbounds [2 x ptr], ptr %1, i64 1, i64 0
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %30) #9
  %31 = getelementptr inbounds [2 x [3 x float]], ptr %2, i64 1, i64 1
  %32 = getelementptr inbounds [2 x ptr], ptr %1, i64 1, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !75
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
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #9
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #9
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = tail call ptr %3(ptr noundef %0) #8
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BM_loop_other_edge_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 13, ptr %3, align 4, !tbaa !124
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %4, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %5, align 8, !tbaa !122
  store ptr %1, ptr %0, align 8, !tbaa !126
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
define internal fastcc void @edgering_select(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.BMWalker, align 8
  %3 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 11
  %10 = load i8, ptr %9, align 4, !tbaa !81
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @EDBM_flag_disable_all(ptr noundef %4, i8 noundef zeroext 1) #8
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %4, align 8, !tbaa !41
  call void @BMW_init(ptr noundef nonnull %2, ptr noundef %14, i32 noundef 4, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #8
  %15 = call ptr @BMW_begin(ptr noundef nonnull %2, ptr noundef nonnull %6) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !41
  call void @BM_edge_select_set(ptr noundef %19, ptr noundef nonnull %18, i8 noundef zeroext 1) #8
  %20 = call ptr @BMW_step(ptr noundef nonnull %2) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !127

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
define internal fastcc noundef i32 @loopcut_finish(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !32
  tail call void @ED_region_tag_redraw(ptr noundef %4) #8
  %5 = tail call ptr @CTX_wm_area(ptr noundef %1) #8
  tail call void @ED_area_headerprint(ptr noundef %5, ptr noundef null) #8
  %6 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.RingSelOpData, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %12, i8 noundef zeroext 2) #8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = load ptr, ptr %6, align 8, !tbaa !87
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
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #6 {
  %2 = fcmp olt float %0, 4.000000e+00
  %3 = select i1 %2, float %0, float 4.000000e+00
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #6 {
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 32}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !7, i64 72}
!20 = !{!6, !12, i64 184}
!21 = !{!6, !7, i64 88}
!22 = !{i32 1, i32 5}
!23 = !{!24, !7, i64 112}
!24 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!25 = !{!24, !7, i64 96}
!26 = !{!27, !12, i64 18}
!27 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !28, i64 20, !28, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !28, i64 48, !28, i64 52, !29, i64 56, !28, i64 64, !28, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !28, i64 108, !7, i64 112}
!28 = !{!"int", !8, i64 0}
!29 = !{!"double", !8, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !8, i64 0}
!32 = !{!33, !7, i64 0}
!33 = !{!"RingSelOpData", !7, i64 0, !7, i64 8, !7, i64 16, !28, i64 24, !7, i64 32, !28, i64 40, !34, i64 48, !7, i64 112, !7, i64 120, !7, i64 128, !35, i64 136, !8, i64 276, !8, i64 277}
!34 = !{!"ViewContext", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!35 = !{!"NumInput", !12, i64 0, !28, i64 4, !8, i64 8, !8, i64 20, !12, i64 22, !8, i64 24, !8, i64 32, !8, i64 44, !8, i64 56, !12, i64 68, !8, i64 70, !28, i64 136}
!36 = !{!27, !12, i64 16}
!37 = !{i32 2, i32 5}
!38 = !{!27, !12, i64 76}
!39 = !{!28, !28, i64 0}
!40 = !{!24, !7, i64 120}
!41 = !{!42, !7, i64 0}
!42 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !28, i64 16, !7, i64 24, !28, i64 32, !7, i64 40, !7, i64 48, !43, i64 56, !7, i64 64, !28, i64 72, !7, i64 80, !28, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !28, i64 104}
!43 = !{!"long", !8, i64 0}
!44 = !{!45, !28, i64 4}
!45 = !{!"BMesh", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !28, i64 88, !28, i64 92, !28, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !28, i64 128, !7, i64 136, !46, i64 144, !46, i64 344, !46, i64 544, !46, i64 744, !12, i64 944, !28, i64 948, !28, i64 952, !28, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!46 = !{!"CustomData", !7, i64 0, !8, i64 8, !28, i64 172, !28, i64 176, !28, i64 180, !7, i64 184, !7, i64 192}
!47 = !{!33, !7, i64 120}
!48 = !{!49, !7, i64 264}
!49 = !{!"Scene", !50, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !28, i64 232, !28, i64 236, !28, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !51, i64 280, !60, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !28, i64 4380, !10, i64 4384, !61, i64 4400, !62, i64 4416, !65, i64 4600, !7, i64 4608, !66, i64 4616, !7, i64 4640, !43, i64 4648, !43, i64 4656, !53, i64 4664, !54, i64 4824, !67, i64 4888, !7, i64 4952}
!50 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !28, i64 100, !28, i64 104, !28, i64 108, !7, i64 112}
!51 = !{!"RenderData", !52, i64 0, !7, i64 248, !7, i64 256, !55, i64 264, !56, i64 328, !28, i64 400, !28, i64 404, !28, i64 408, !31, i64 412, !28, i64 416, !28, i64 420, !28, i64 424, !28, i64 428, !12, i64 432, !12, i64 434, !31, i64 436, !31, i64 440, !31, i64 444, !31, i64 448, !31, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !28, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !28, i64 484, !28, i64 488, !12, i64 492, !12, i64 494, !28, i64 496, !28, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !28, i64 516, !28, i64 520, !28, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !57, i64 544, !57, i64 560, !58, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !31, i64 612, !31, i64 616, !31, i64 620, !31, i64 624, !28, i64 628, !31, i64 632, !31, i64 636, !31, i64 640, !31, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !31, i64 660, !31, i64 664, !12, i64 668, !12, i64 670, !31, i64 672, !31, i64 676, !8, i64 680, !28, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !28, i64 2520, !12, i64 2524, !12, i64 2526, !31, i64 2528, !31, i64 2532, !12, i64 2536, !12, i64 2538, !31, i64 2540, !12, i64 2544, !12, i64 2546, !28, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !31, i64 2560, !31, i64 2564, !7, i64 2568, !28, i64 2576, !31, i64 2580, !8, i64 2584, !59, i64 2616, !28, i64 3976, !28, i64 3980}
!52 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !31, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !53, i64 24, !54, i64 184}
!53 = !{!"ColorManagedViewSettings", !28, i64 0, !28, i64 4, !8, i64 8, !8, i64 72, !31, i64 136, !31, i64 140, !7, i64 144, !7, i64 152}
!54 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!55 = !{!"QuicktimeCodecSettings", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !12, i64 48, !12, i64 50, !28, i64 52, !28, i64 56, !28, i64 60}
!56 = !{!"FFMpegCodecData", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !31, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !28, i64 48, !28, i64 52, !28, i64 56, !28, i64 60, !7, i64 64}
!57 = !{!"rctf", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12}
!58 = !{!"rcti", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!59 = !{!"BakeData", !52, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !31, i64 1280, !31, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!60 = !{!"AudioData", !28, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !28, i64 16, !12, i64 20, !12, i64 22, !31, i64 24, !31, i64 28}
!61 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!62 = !{!"GameData", !61, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !63, i64 40, !12, i64 64, !12, i64 66, !31, i64 68, !64, i64 72, !31, i64 128, !31, i64 132, !28, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !31, i64 164, !31, i64 168, !31, i64 172, !31, i64 176, !31, i64 180}
!63 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !31, i64 8, !31, i64 12, !7, i64 16}
!64 = !{!"RecastData", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !31, i64 24, !31, i64 28, !31, i64 32, !31, i64 36, !28, i64 40, !31, i64 44, !31, i64 48, !12, i64 52, !12, i64 54}
!65 = !{!"UnitSettings", !31, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!66 = !{!"PhysicsSettings", !8, i64 0, !28, i64 12, !28, i64 16, !28, i64 20}
!67 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!68 = !{!69, !12, i64 46}
!69 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !31, i64 32, !31, i64 36, !31, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !31, i64 52, !12, i64 56, !8, i64 58, !8, i64 59, !70, i64 64, !72, i64 168, !31, i64 336, !31, i64 340, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 349, !12, i64 350, !31, i64 352, !31, i64 356, !31, i64 360, !31, i64 364, !31, i64 368, !31, i64 372, !31, i64 376, !31, i64 380, !31, i64 384, !31, i64 388, !12, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !12, i64 434, !12, i64 436, !12, i64 438, !12, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !28, i64 448, !28, i64 452, !28, i64 456, !28, i64 460, !12, i64 464, !12, i64 466, !28, i64 468, !31, i64 472, !31, i64 476, !73, i64 480, !74, i64 608}
!70 = !{!"ImagePaintSettings", !71, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !8, i64 48, !28, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !31, i64 100}
!71 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !28, i64 28, !28, i64 32, !28, i64 36}
!72 = !{!"ParticleEditSettings", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !7, i64 120, !31, i64 128, !31, i64 132, !28, i64 136, !28, i64 140, !28, i64 144, !28, i64 148, !7, i64 152, !7, i64 160}
!73 = !{!"UnifiedPaintSettings", !28, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !8, i64 16, !8, i64 28, !28, i64 40, !8, i64 44, !31, i64 52, !28, i64 56, !28, i64 60, !8, i64 64, !8, i64 65, !31, i64 72, !8, i64 76, !28, i64 84, !31, i64 88, !8, i64 92, !8, i64 100, !28, i64 108, !7, i64 112, !31, i64 120, !28, i64 124}
!74 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !8, i64 20, !8, i64 21, !31, i64 24, !31, i64 28, !31, i64 32, !31, i64 36}
!75 = !{!7, !7, i64 0}
!76 = !{!77, !7, i64 240}
!77 = !{!"ARegion", !7, i64 0, !7, i64 8, !78, i64 16, !58, i64 176, !58, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !31, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!78 = !{!"View2D", !57, i64 0, !57, i64 16, !58, i64 32, !58, i64 48, !58, i64 64, !8, i64 80, !8, i64 88, !31, i64 96, !31, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !28, i64 136, !28, i64 140, !7, i64 144, !7, i64 152}
!79 = !{!33, !7, i64 8}
!80 = !{!33, !7, i64 112}
!81 = !{!33, !8, i64 276}
!82 = !{!33, !8, i64 277}
!83 = !{!33, !12, i64 136}
!84 = !{!12, !12, i64 0}
!85 = !{!49, !8, i64 4604}
!86 = !{!33, !28, i64 140}
!87 = !{!33, !7, i64 128}
!88 = !{!89, !7, i64 24}
!89 = !{!"BMEdge", !90, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !91, i64 48, !91, i64 64}
!90 = !{!"BMHeader", !7, i64 0, !28, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!91 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!92 = !{!89, !7, i64 32}
!93 = !{!24, !7, i64 144}
!94 = !{i8 0, i8 2}
!95 = !{!42, !12, i64 92}
!96 = !{!33, !7, i64 48}
!97 = !{!98, !7, i64 296}
!98 = !{!"Object", !50, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !28, i64 140, !28, i64 144, !28, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !99, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !28, i64 432, !28, i64 436, !7, i64 440, !7, i64 448, !28, i64 456, !28, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !31, i64 616, !31, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !28, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !28, i64 968, !28, i64 972, !28, i64 976, !28, i64 980, !28, i64 984, !31, i64 988, !31, i64 992, !31, i64 996, !31, i64 1000, !31, i64 1004, !31, i64 1008, !31, i64 1012, !31, i64 1016, !31, i64 1020, !31, i64 1024, !31, i64 1028, !31, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !31, i64 1048, !31, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !31, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !28, i64 1144, !28, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !31, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !43, i64 1304, !43, i64 1312, !28, i64 1320, !28, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!99 = !{!"bAnimVizSettings", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44}
!100 = !{!33, !28, i64 24}
!101 = !{!33, !28, i64 40}
!102 = !{!103, !8, i64 344}
!103 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !28, i64 32, !31, i64 36, !8, i64 40, !8, i64 56, !31, i64 72, !31, i64 76, !8, i64 80, !8, i64 81, !28, i64 84, !28, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !57, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !28, i64 224, !28, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !31, i64 244, !31, i64 248, !31, i64 252, !31, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!104 = !{!33, !7, i64 16}
!105 = !{!33, !7, i64 32}
!106 = !{!89, !7, i64 40}
!107 = distinct !{!107, !108}
!108 = !{!"llvm.loop.mustprogress"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !108}
!112 = !{!113, !7, i64 1528}
!113 = !{!"DerivedMesh", !46, i64 0, !46, i64 200, !46, i64 400, !46, i64 600, !46, i64 800, !28, i64 1000, !28, i64 1004, !28, i64 1008, !28, i64 1012, !28, i64 1016, !28, i64 1020, !28, i64 1024, !7, i64 1032, !7, i64 1040, !28, i64 1048, !31, i64 1052, !28, i64 1056, !28, i64 1060, !7, i64 1064, !8, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !7, i64 1176, !7, i64 1184, !7, i64 1192, !7, i64 1200, !7, i64 1208, !7, i64 1216, !7, i64 1224, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !7, i64 1464, !7, i64 1472, !7, i64 1480, !7, i64 1488, !7, i64 1496, !7, i64 1504, !7, i64 1512, !7, i64 1520, !7, i64 1528, !7, i64 1536, !7, i64 1544, !7, i64 1552, !7, i64 1560, !7, i64 1568, !7, i64 1576, !7, i64 1584, !7, i64 1592, !7, i64 1600, !7, i64 1608, !7, i64 1616, !7, i64 1624, !7, i64 1632, !7, i64 1640, !7, i64 1648, !7, i64 1656, !7, i64 1664, !7, i64 1672, !7, i64 1680}
!114 = !{!90, !28, i64 8}
!115 = !{!116, !7, i64 32}
!116 = !{!"BMLoop", !90, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!117 = distinct !{!117, !108}
!118 = !{!116, !7, i64 64}
!119 = !{!116, !7, i64 16}
!120 = distinct !{!120, !108}
!121 = distinct !{!121, !108}
!122 = !{!123, !7, i64 48}
!123 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !28, i64 56, !8, i64 60}
!124 = !{!123, !8, i64 60}
!125 = !{!123, !7, i64 40}
!126 = !{!8, !8, i64 0}
!127 = distinct !{!127, !108}
