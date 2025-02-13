; ModuleID = 'blender/source/blender/editors/armature/editarmature_sketch.c'
source_filename = "blender/source/blender/editors/armature/editarmature_sketch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SK_GestureAction = type { [64 x i8], ptr, ptr }
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
%struct.ListBase = type { ptr, ptr }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.RigGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr, i32, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SK_Sketch = type { %struct.ListBase, %struct.ListBase, ptr, ptr, %struct.SK_Point, %struct.SK_Overdraw }
%struct.SK_Point = type { [3 x float], [2 x i16], [3 x float], float, i32, i32 }
%struct.SK_Overdraw = type { ptr, i32, i32, i32 }
%struct.SK_Stroke = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.SK_StrokeIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32, ptr, i32, i32, i32 }
%struct.SK_Gesture = type { ptr, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i32 }
%struct.SK_Intersection = type { ptr, ptr, ptr, i32, i32, i32, [3 x float], float }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SK_DrawData = type { [2 x i32], [2 x i32], i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ReebArc = type { ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, %struct.ListBase, i32, ptr, ptr, float, ptr }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.EmbedBucket = type { float, i32, [3 x float], [3 x float] }
%struct.ReebNode = type { ptr, ptr, [3 x float], i32, i32, ptr, i32, i32, i32, [3 x float], [3 x float], i32, float, i32, ptr, ptr }
%struct.BArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32 }
%struct.DepthPeel = type { ptr, ptr, float, [3 x float], [3 x float], ptr, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }

@TEMPLATES_HASH = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [21 x i8] c"makeListTemplates gh\00", align 1
@TEMPLATES_CURRENT = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@TEMPLATE_RIGG = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SKETCH_OT_delete\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Delete a sketch stroke\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SKETCH_OT_select\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Select a sketch stroke\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Cancel Stroke\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"SKETCH_OT_cancel_stroke\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Cancel the current sketch stroke\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Convert\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"SKETCH_OT_convert\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Convert the selected sketch strokes to bone chains\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"End Stroke\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"SKETCH_OT_finish_stroke\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"End and keep the current sketch stroke\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Draw Preview\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"SKETCH_OT_draw_preview\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"Draw preview of current sketch stroke (internal use)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"snap\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Snap\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Draw Stroke\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"SKETCH_OT_draw_stroke\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Start to draw a sketch stroke\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Gesture\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"SKETCH_OT_gesture\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Start to draw a gesture stroke\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"reeb arc\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Buckets\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"reeb node\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@__const.sk_drawSketch.selected_rgb = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@__const.sk_drawSketch.unselected_rgb = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 5.000000e-01, float 0.000000e+00], align 4
@__const.sk_drawSketch.gesture_rgb = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 5.000000e-01, float 1.000000e+00], align 4
@__const.sk_drawStroke.d_rgb = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@__const.sk_drawEdge.vec2 = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@LAST_SNAP_POINT_VALID = internal unnamed_addr global i1 false, align 4
@LAST_SNAP_POINT = internal global [3 x float] zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [15 x i8] c"SketchDrawData\00", align 1
@GESTURE_ACTIONS = internal unnamed_addr constant [8 x %struct.SK_GestureAction] [%struct.SK_GestureAction { [64 x i8] c"Cut\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectCutGesture, ptr @sk_applyCutGesture }, %struct.SK_GestureAction { [64 x i8] c"Trim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectTrimGesture, ptr @sk_applyTrimGesture }, %struct.SK_GestureAction { [64 x i8] c"Command\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectCommandGesture, ptr @sk_applyCommandGesture }, %struct.SK_GestureAction { [64 x i8] c"Delete\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectDeleteGesture, ptr @sk_applyDeleteGesture }, %struct.SK_GestureAction { [64 x i8] c"Merge\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectMergeGesture, ptr @sk_applyMergeGesture }, %struct.SK_GestureAction { [64 x i8] c"Reverse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectReverseGesture, ptr @sk_applyReverseGesture }, %struct.SK_GestureAction { [64 x i8] c"Convert\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectConvertGesture, ptr @sk_applyConvertGesture }, %struct.SK_GestureAction zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [13 x i8] c"Intersection\00", align 1
@switch.table.sk_drawStrokeSubdivision = private unnamed_addr constant [3 x ptr] [ptr @nextFixedSubdivision, ptr @nextLengthSubdivision, ptr @nextAdaptativeSubdivision], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_makeListTemplates(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %5 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @BLI_ghash_free(ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #19
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str) #19
  store ptr %9, ptr @TEMPLATES_HASH, align 8, !tbaa !5
  store i32 0, ptr @TEMPLATES_CURRENT, align 4, !tbaa !9
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 41
  br label %15

15:                                               ; preds = %13, %33
  %16 = phi ptr [ %11, %13 ], [ %35, %33 ]
  %17 = phi i32 [ 0, %13 ], [ %34, %33 ]
  %18 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !14
  %24 = icmp eq i16 %23, 25
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = add nsw i32 %17, 1
  %27 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !5
  %28 = sext i32 %26 to i64
  %29 = inttoptr i64 %28 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %27, ptr noundef %29, ptr noundef nonnull %19) #19
  %30 = load ptr, ptr %14, align 8, !tbaa !21
  %31 = icmp eq ptr %19, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 %26, ptr @TEMPLATES_CURRENT, align 4, !tbaa !9
  br label %33

33:                                               ; preds = %25, %32, %21, %15
  %34 = phi i32 [ %26, %32 ], [ %26, %25 ], [ %17, %21 ], [ %17, %15 ]
  %35 = load ptr, ptr %16, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !28

37:                                               ; preds = %33, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BIF_currentTemplate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %4 = load i32, ptr @TEMPLATES_CURRENT, align 4, !tbaa !9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 41
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %11 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !5
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %11) #19
  %12 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #21, !range !30
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10, %22
  %15 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %2) #21
  %16 = load ptr, ptr %7, align 8, !tbaa !21
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %2) #21
  %20 = ptrtoint ptr %19 to i64
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr @TEMPLATES_CURRENT, align 4, !tbaa !9
  br label %25

22:                                               ; preds = %14
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #19
  %23 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %2) #21, !range !30
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %14, label %25

25:                                               ; preds = %22, %10, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  %26 = load i32, ptr @TEMPLATES_CURRENT, align 4, !tbaa !9
  br label %27

27:                                               ; preds = %25, %6, %1
  %28 = phi i32 [ %26, %25 ], [ 0, %6 ], [ %4, %1 ]
  ret i32 %28
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BIF_nbJointsTemplate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ToolSettings, ptr %2, i64 0, i32 41
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = tail call fastcc ptr @sk_makeTemplateGraph(ptr noundef %0, ptr noundef %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @RIG_nbJoints(ptr noundef nonnull %5) #19
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ -1, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sk_makeTemplateGraph(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  %7 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !5
  br i1 %6, label %19, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %7, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  tail call void @RIG_freeRigGraph(ptr noundef nonnull %7) #19
  store ptr null, ptr @TEMPLATE_RIGG, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %8, %14
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = tail call ptr @RIG_graphFromArmature(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %17) #19
  store ptr %18, ptr @TEMPLATE_RIGG, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %5, %15, %10, %2
  %20 = phi ptr [ null, %2 ], [ %18, %15 ], [ %7, %5 ], [ %7, %10 ]
  ret ptr %20
}

; Function Attrs: optsize
declare i32 @RIG_nbJoints(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BIF_nameBoneTemplate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %3 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SK_Sketch, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.SK_Stroke, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !43
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi i32 [ %11, %9 ], [ 0, %5 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %2, i64 0, i32 41
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = tail call fastcc ptr @sk_makeTemplateGraph(ptr noundef %0, ptr noundef %15) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @RIG_nameBone(ptr noundef nonnull %16, i32 noundef 0, i32 noundef %13) #19
  br label %20

20:                                               ; preds = %12, %18
  %21 = phi ptr [ %19, %18 ], [ @.str.1, %12 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @contextSketch(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  %15 = icmp ne i32 %1, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = tail call ptr @createSketch() #19
  store ptr %18, ptr %12, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %9, %17, %5, %2
  %20 = phi ptr [ null, %5 ], [ null, %2 ], [ %18, %17 ], [ %13, %9 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @RIG_nameBone(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_freeTemplates(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @BLI_ghash_free(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #19
  store ptr null, ptr @TEMPLATES_HASH, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @RIG_freeRigGraph(ptr noundef nonnull %6) #19
  store ptr null, ptr @TEMPLATE_RIGG, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare void @RIG_freeRigGraph(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_setTemplate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !5
  %7 = zext nneg i32 %1 to i64
  %8 = inttoptr i64 %7 to ptr
  %9 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %8) #19
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 41
  store ptr %9, ptr %10, align 8, !tbaa !21
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 41
  store ptr null, ptr %12, align 8, !tbaa !21
  %13 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @RIG_freeRigGraph(ptr noundef nonnull %13) #19
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr @TEMPLATE_RIGG, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @sk_resetOverdraw(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5
  store ptr null, ptr %2, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 1
  store i32 -1, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 2
  store i32 -1, ptr %4, align 4, !tbaa !49
  %5 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 3
  store i32 0, ptr %5, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @sk_hasOverdraw(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = icmp sgt i32 %8, 4
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, %1
  %12 = icmp eq ptr %1, null
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !48
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !49
  %21 = icmp ne i32 %20, -1
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %14, %18, %10, %6, %2
  %24 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 0, %10 ], [ 1, %14 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @initStrokeIterator(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  tail call fastcc void @initIteratorFct(ptr noundef %0) #21
  %5 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  store ptr %1, ptr %5, align 8, !tbaa !51
  %6 = icmp slt i32 %2, %3
  %7 = select i1 %6, i32 1, i32 -1
  %8 = select i1 %6, i32 -1, i32 1
  %9 = add nsw i32 %7, %2
  %10 = add nsw i32 %8, %3
  %11 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 13
  store i32 %9, ptr %11, align 8
  %12 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 14
  store i32 %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  store i32 %7, ptr %13, align 8
  %14 = add i32 %10, 1
  %15 = sub i32 %14, %9
  %16 = mul nsw i32 %15, %7
  %17 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  store i32 %16, ptr %17, align 4, !tbaa !53
  %18 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  store i32 -1, ptr %18, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @initIteratorFct(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  store ptr @headPoint, ptr %0, align 8, !tbaa !55
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 1
  store ptr @tailPoint, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 2
  store ptr @peekPoint, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 3
  store ptr @nextPoint, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 4
  store ptr @nextNPoint, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 5
  store ptr @previousPoint, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 6
  store ptr @iteratorStopped, ptr %7, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @sk_detectCutGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_applyCutGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.SK_Point, align 4
  %5 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 4
  %10 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 5
  %11 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 2
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %6, %8 ], [ %26, %12 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #20
  store i32 1, ptr %9, align 4, !tbaa !65
  store i32 1, ptr %10, align 4, !tbaa !66
  %14 = getelementptr inbounds %struct.SK_Intersection, ptr %13, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %14) #21
  %15 = getelementptr inbounds %struct.SK_Intersection, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.SK_Stroke, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.SK_Intersection, ptr %13, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !70
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.SK_Point, ptr %18, i64 %21, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %22) #21
  %23 = load ptr, ptr %15, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.SK_Intersection, ptr %13, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !71
  call void @sk_insertStrokePoint(ptr noundef %23, ptr noundef nonnull %4, i32 noundef %25) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  %26 = load ptr, ptr %13, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !72

28:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  store float %3, ptr %0, align 4, !tbaa !73
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare void @sk_insertStrokePoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sk_detectTrimGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %18 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.SK_Stroke, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %22, ptr noundef %21) #21
  %23 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %23, ptr noundef nonnull %22) #21
  %24 = call float @angle_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %25 = fmul float %24, 0x404CA5DC20000000
  %26 = fcmp ule float %25, 6.000000e+01
  %27 = fcmp uge float %25, 1.200000e+02
  %28 = or i1 %26, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br i1 %28, label %29, label %30

29:                                               ; preds = %17, %13, %9, %3
  br label %30

30:                                               ; preds = %17, %29
  %31 = phi i32 [ 1, %17 ], [ 0, %29 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = load float, ptr %2, align 4, !tbaa !73
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !73
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare float @angle_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_applyTrimGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.SK_Point, align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %7 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.SK_Stroke, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.SK_Point, ptr %10, i64 2
  %12 = getelementptr inbounds %struct.SK_Point, ptr %10, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %12) #21
  %13 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 0, i32 4
  %18 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 0, i32 5
  %19 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 0, i32 2
  br label %20

20:                                               ; preds = %16, %52
  %21 = phi ptr [ %14, %16 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  store i32 1, ptr %17, align 4, !tbaa !65
  store i32 1, ptr %18, align 4, !tbaa !66
  %22 = getelementptr inbounds %struct.SK_Intersection, ptr %21, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %22) #21
  %23 = getelementptr inbounds %struct.SK_Intersection, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.SK_Stroke, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.SK_Intersection, ptr %21, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !70
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.SK_Point, ptr %26, i64 %29, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %30) #21
  %31 = load ptr, ptr %23, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.SK_Stroke, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !69
  %34 = getelementptr inbounds %struct.SK_Intersection, ptr %21, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !71
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.SK_Point, ptr %33, i64 %36
  %38 = load i32, ptr %27, align 8, !tbaa !70
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.SK_Point, ptr %33, i64 %39
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %37, ptr noundef %40) #21
  %41 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #21
  %42 = fcmp ogt float %41, 0.000000e+00
  br i1 %42, label %43, label %46

43:                                               ; preds = %20
  call void @sk_replaceStrokePoint(ptr noundef nonnull %31, ptr noundef nonnull %5, i32 noundef %35) #19
  %44 = load ptr, ptr %23, align 8, !tbaa !67
  %45 = load i32, ptr %34, align 4, !tbaa !71
  call void @sk_trimStroke(ptr noundef %44, i32 noundef 0, i32 noundef %45) #19
  br label %52

46:                                               ; preds = %20
  call void @sk_replaceStrokePoint(ptr noundef nonnull %31, ptr noundef nonnull %5, i32 noundef %38) #19
  %47 = load ptr, ptr %23, align 8, !tbaa !67
  %48 = load i32, ptr %27, align 8, !tbaa !70
  %49 = getelementptr inbounds %struct.SK_Stroke, ptr %47, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !43
  %51 = add nsw i32 %50, -1
  call void @sk_trimStroke(ptr noundef %47, i32 noundef %48, i32 noundef %51) #19
  br label %52

52:                                               ; preds = %46, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  %53 = load ptr, ptr %21, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %20, !llvm.loop !76

55:                                               ; preds = %52, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !73
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @sk_replaceStrokePoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sk_trimStroke(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @sk_detectCommandGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #7 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  br label %18

18:                                               ; preds = %21, %15
  %19 = phi ptr [ %17, %15 ], [ %24, %21 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.SK_Intersection, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = load ptr, ptr %19, align 8, !tbaa !78
  %25 = getelementptr inbounds %struct.SK_Intersection, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %28, label %18, !llvm.loop !79

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct.SK_Intersection, ptr %24, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !81
  %33 = getelementptr inbounds %struct.SK_Intersection, ptr %30, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !81
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %18, %28
  br label %37

37:                                               ; preds = %3, %7, %11, %36, %28
  %38 = phi i32 [ 1, %28 ], [ 0, %36 ], [ 0, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_applyCommandGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3, %23
  %8 = phi ptr [ %24, %23 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !71
  tail call void @sk_flattenStroke(ptr noundef %13, i32 noundef %19, i32 noundef %21) #19
  %22 = load ptr, ptr %9, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi ptr [ %22, %17 ], [ %9, %11 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !82

26:                                               ; preds = %7, %23, %3
  ret void
}

; Function Attrs: optsize
declare void @sk_flattenStroke(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sk_detectDeleteGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %14 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.SK_Stroke, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef %17) #21
  %19 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %19, ptr noundef nonnull %18) #21
  %20 = call float @angle_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %21 = fmul float %20, 0x404CA5DC20000000
  %22 = fcmp ule float %21, 1.200000e+02
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br i1 %22, label %23, label %24

23:                                               ; preds = %13, %9, %3
  br label %24

24:                                               ; preds = %13, %23
  %25 = phi i32 [ 1, %13 ], [ 0, %23 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_applyDeleteGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3, %19
  %8 = phi ptr [ %20, %19 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  tail call void @sk_removeStroke(ptr noundef %2, ptr noundef %13) #19
  %18 = load ptr, ptr %9, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %18, %17 ], [ %9, %11 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !83

22:                                               ; preds = %7, %19, %3
  ret void
}

; Function Attrs: optsize
declare void @sk_removeStroke(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sk_detectMergeGesture(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [2 x i16], align 2
  %5 = alloca [2 x i16], align 2
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !62
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %92

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !64
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %92

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %15 = load ptr, ptr %1, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.SK_Stroke, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = call i32 @ED_view3d_project_short_global(ptr noundef %6, ptr noundef %17, ptr noundef nonnull %4, i32 noundef 0) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %90

20:                                               ; preds = %14
  %21 = load ptr, ptr %1, align 8, !tbaa !84
  %22 = call ptr @sk_lastStrokePoint(ptr noundef %21) #19
  %23 = call i32 @ED_view3d_project_short_global(ptr noundef %6, ptr noundef %22, ptr noundef nonnull %5, i32 noundef 0) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %90

25:                                               ; preds = %20
  %26 = load i16, ptr %4, align 2, !tbaa !85
  %27 = sext i16 %26 to i32
  %28 = load i16, ptr %5, align 2, !tbaa !85
  %29 = sext i16 %28 to i32
  %30 = sub nsw i32 %27, %29
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true)
  %32 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !85
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  %36 = load i16, ptr %35, align 2, !tbaa !85
  %37 = sext i16 %36 to i32
  %38 = sub nsw i32 %34, %37
  %39 = call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = call i32 @llvm.umax.i32(i32 %31, i32 %39)
  %41 = trunc i32 %40 to i16
  %42 = icmp slt i16 %41, 21
  br i1 %42, label %43, label %90

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %90, label %47

47:                                               ; preds = %43, %86
  %48 = phi ptr [ %88, %86 ], [ %45, %43 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %90, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !67
  %54 = getelementptr inbounds %struct.SK_Intersection, ptr %48, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.SK_Intersection, ptr %48, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !71
  %60 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 4
  %61 = load i32, ptr %60, align 4, !tbaa !71
  %62 = call i32 @llvm.smin.i32(i32 %59, i32 %61)
  %63 = getelementptr inbounds %struct.SK_Intersection, ptr %48, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !70
  %65 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !70
  %67 = call i32 @llvm.smax.i32(i32 %64, i32 %66)
  %68 = icmp sgt i32 %62, %67
  br i1 %68, label %86, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.SK_Stroke, ptr %53, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !69
  %72 = call i32 @llvm.smin.i32(i32 %61, i32 %59)
  %73 = sext i32 %72 to i64
  %74 = add i32 %67, 1
  %75 = add i32 %74, %72
  %76 = sub i32 %75, %62
  br label %81

77:                                               ; preds = %81
  %78 = add nsw i64 %82, 1
  %79 = trunc i64 %78 to i32
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %86, label %81, !llvm.loop !86

81:                                               ; preds = %69, %77
  %82 = phi i64 [ %73, %69 ], [ %78, %77 ]
  %83 = getelementptr inbounds %struct.SK_Point, ptr %71, i64 %82, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !65
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %91, label %77

86:                                               ; preds = %77, %57, %51
  %87 = phi ptr [ %49, %57 ], [ %48, %51 ], [ %49, %77 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %47, !llvm.loop !87

90:                                               ; preds = %47, %86, %43, %25, %20, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  br label %92

91:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  br label %92

92:                                               ; preds = %3, %10, %90, %91
  %93 = phi i32 [ 1, %91 ], [ 0, %90 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %93
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_view3d_project_short_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sk_lastStrokePoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_applyMergeGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #8 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3, %47
  %8 = phi ptr [ %49, %47 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !71
  %20 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !71
  %22 = tail call i32 @llvm.smin.i32(i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !70
  %27 = tail call i32 @llvm.smax.i32(i32 %24, i32 %26)
  %28 = icmp sgt i32 %22, %27
  br i1 %28, label %47, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.SK_Stroke, ptr %13, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  %32 = tail call i32 @llvm.smin.i32(i32 %21, i32 %19)
  %33 = sext i32 %32 to i64
  %34 = add i32 %27, 1
  %35 = add i32 %34, %32
  %36 = sub i32 %35, %22
  br label %37

37:                                               ; preds = %29, %43
  %38 = phi i64 [ %33, %29 ], [ %44, %43 ]
  %39 = getelementptr inbounds %struct.SK_Point, ptr %31, i64 %38, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !65
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, ptr %39, align 4, !tbaa !65
  br label %43

43:                                               ; preds = %37, %42
  %44 = add nsw i64 %38, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %36, %45
  br i1 %46, label %47, label %37, !llvm.loop !88

47:                                               ; preds = %43, %17, %11
  %48 = phi ptr [ %9, %17 ], [ %8, %11 ], [ %9, %43 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %7, !llvm.loop !89

51:                                               ; preds = %7, %47, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sk_detectReverseGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %61

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %61, label %21

21:                                               ; preds = %17, %57
  %22 = phi ptr [ %58, %57 ], [ %19, %17 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %61, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.SK_Intersection, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.SK_Intersection, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %32 = getelementptr inbounds %struct.SK_Intersection, ptr %22, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !81
  %34 = getelementptr inbounds %struct.SK_Intersection, ptr %23, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !81
  %36 = icmp slt i32 %33, %35
  %37 = load ptr, ptr %1, align 8, !tbaa !84
  %38 = getelementptr inbounds %struct.SK_Stroke, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !69
  br i1 %36, label %40, label %44

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.SK_Intersection, ptr %22, i64 0, i32 6
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %41, ptr noundef %39) #21
  %42 = call ptr @sk_lastStrokePoint(ptr noundef %37) #19
  %43 = load ptr, ptr %22, align 8, !tbaa !78
  br label %47

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.SK_Intersection, ptr %23, i64 0, i32 6
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %45, ptr noundef %39) #21
  %46 = call ptr @sk_lastStrokePoint(ptr noundef %37) #19
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi ptr [ %22, %44 ], [ %43, %40 ]
  %49 = phi ptr [ %46, %44 ], [ %42, %40 ]
  %50 = getelementptr inbounds %struct.SK_Intersection, ptr %48, i64 0, i32 6
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %49, ptr noundef nonnull %50) #21
  %51 = call float @angle_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %52 = fmul float %51, 0x404CA5DC20000000
  %53 = fcmp ule float %52, 1.200000e+02
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load ptr, ptr %22, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  br label %57

57:                                               ; preds = %54, %25
  %58 = phi ptr [ %23, %25 ], [ %56, %54 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %21, !llvm.loop !90

60:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %61

61:                                               ; preds = %21, %57, %17, %3, %9, %13, %60
  %62 = phi i32 [ 1, %60 ], [ 0, %13 ], [ 0, %9 ], [ 0, %3 ], [ 0, %17 ], [ 0, %57 ], [ 0, %21 ]
  ret i32 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_applyReverseGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3, %20
  %8 = phi ptr [ %21, %20 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  tail call void @sk_reverseStroke(ptr noundef %13) #19
  %18 = load ptr, ptr %8, align 8, !tbaa !78
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %19, %17 ], [ %9, %11 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !91

23:                                               ; preds = %7, %20, %3
  ret void
}

; Function Attrs: optsize
declare void @sk_reverseStroke(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @sk_detectConvertGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_applyConvertGesture(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @sk_convert(ptr noundef %0, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_convert(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 43
  br label %8

8:                                                ; preds = %6, %18
  %9 = phi ptr [ %4, %6 ], [ %19, %18 ]
  %10 = getelementptr inbounds %struct.SK_Stroke, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i8, ptr %7, align 1, !tbaa !93
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call fastcc void @sk_retargetStroke(ptr noundef %0, ptr noundef nonnull %9) #21
  br label %18

17:                                               ; preds = %13
  tail call fastcc void @sk_convertStroke(ptr noundef %0, ptr noundef nonnull %9) #21
  br label %18

18:                                               ; preds = %8, %17, %16
  %19 = load ptr, ptr %9, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !94

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BDR_drawSketchNames(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @ValidSketchViewContext(ptr noundef %0) #21, !range !95
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @viewcontextSketch(ptr noundef %0, i32 noundef 0) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !96
  tail call fastcc void @sk_drawSketch(ptr noundef %8, ptr noundef nonnull %5, i32 noundef 1) #21
  br label %9

9:                                                ; preds = %4, %1, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @ValidSketchViewContext(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = load ptr, ptr %0, align 8, !tbaa !96
  %5 = icmp eq ptr %3, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 42
  %14 = load i8, ptr %13, align 8, !tbaa !118
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %6, %1
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi i32 [ 0, %17 ], [ 1, %10 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @viewcontextSketch(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  %16 = icmp ne i32 %1, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = tail call ptr @createSketch() #19
  store ptr %19, ptr %13, align 8, !tbaa !45
  br label %20

20:                                               ; preds = %10, %18, %6, %2
  %21 = phi ptr [ null, %6 ], [ null, %2 ], [ %19, %18 ], [ %14, %10 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_drawSketch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  tail call void @glClear(i32 noundef 256) #19
  tail call void @glEnable(i32 noundef 2929) #19
  %8 = icmp eq i32 %2, 0
  %9 = load ptr, ptr %1, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %8, label %12, label %11

11:                                               ; preds = %3
  br i1 %10, label %19, label %13

12:                                               ; preds = %3
  br i1 %10, label %42, label %21

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %17, %13 ], [ %9, %11 ]
  %15 = phi i32 [ %16, %13 ], [ 1, %11 ]
  tail call fastcc void @sk_drawStroke(ptr noundef nonnull %14, i32 noundef %15, ptr noundef null, i32 noundef -1, i32 noundef -1) #21
  %16 = add nuw nsw i32 %15, 1
  %17 = load ptr, ptr %14, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !119

19:                                               ; preds = %13, %11
  %20 = tail call zeroext i8 @GPU_select_load_id(i32 noundef -1) #19
  br label %65

21:                                               ; preds = %12, %39
  %22 = phi ptr [ %40, %39 ], [ %9, %12 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 -1, ptr %4, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 -1, ptr %5, align 4, !tbaa !9
  %23 = tail call i32 @sk_hasOverdraw(ptr noundef nonnull %1, ptr noundef nonnull %22) #21, !range !95
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call fastcc i32 @sk_adjustIndexes(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #21, !range !95
  %27 = load i32, ptr %4, align 4, !tbaa !9
  %28 = load i32, ptr %5, align 4, !tbaa !9
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %28, %25 ], [ -1, %21 ]
  %31 = phi i32 [ %27, %25 ], [ -1, %21 ]
  %32 = getelementptr inbounds %struct.SK_Stroke, ptr %22, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, ptr @__const.sk_drawSketch.selected_rgb, ptr @__const.sk_drawSketch.unselected_rgb
  tail call fastcc void @sk_drawStroke(ptr noundef nonnull %22, i32 noundef -1, ptr noundef nonnull %35, i32 noundef %31, i32 noundef %30) #21
  %36 = load i32, ptr %32, align 8, !tbaa !92
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  tail call fastcc void @sk_drawStrokeSubdivision(ptr noundef %7, ptr noundef nonnull %22) #21
  br label %39

39:                                               ; preds = %38, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %40 = load ptr, ptr %22, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %21, !llvm.loop !120

42:                                               ; preds = %39, %12
  %43 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  %45 = icmp eq ptr %44, null
  br i1 %45, label %65, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @sk_lastStrokePoint(ptr noundef nonnull %44) #19
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 42
  %49 = load i8, ptr %48, align 8, !tbaa !118
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %43, align 8, !tbaa !39
  tail call fastcc void @sk_drawStrokeSubdivision(ptr noundef nonnull %7, ptr noundef %53) #21
  br label %54

54:                                               ; preds = %52, %46
  %55 = icmp eq ptr %47, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %54
  %57 = tail call ptr @gluNewQuadric() #19
  tail call void @gluQuadricNormals(ptr noundef %57, i32 noundef 100000) #19
  tail call void @glPushMatrix() #19
  tail call void @glEnable(i32 noundef 3042) #19
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #19
  %58 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 4
  %59 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 4, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !121
  switch i32 %60, label %64 [
    i32 0, label %62
    i32 1, label %61
  ]

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %56, %61
  %63 = phi float [ 0.000000e+00, %61 ], [ 1.000000e+00, %56 ]
  tail call void @glColor3f(float noundef 0.000000e+00, float noundef %63, float noundef 0.000000e+00) #19
  br label %64

64:                                               ; preds = %62, %56
  tail call fastcc void @sk_drawPoint(ptr noundef %57, ptr noundef nonnull %58, float noundef 0x3FB99999A0000000) #21
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #19
  tail call fastcc void @sk_drawEdge(ptr noundef %57, ptr noundef nonnull %47, ptr noundef nonnull %58) #21
  tail call void @glDisable(i32 noundef 3042) #19
  tail call void @glPopMatrix() #19
  tail call void @gluDeleteQuadric(ptr noundef %57) #19
  br label %65

65:                                               ; preds = %42, %64, %54, %19
  tail call void @glDisable(i32 noundef 2929) #19
  %66 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !122
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call fastcc void @sk_drawStroke(ptr noundef nonnull %67, i32 noundef -1, ptr noundef nonnull @__const.sk_drawSketch.gesture_rgb, i32 noundef -1, i32 noundef -1) #21
  br label %70

70:                                               ; preds = %69, %65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BDR_drawSketch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_sketch_mode(ptr noundef %0) #21, !range !95
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %9 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  tail call fastcc void @sk_drawSketch(ptr noundef %8, ptr noundef nonnull %5, i32 noundef 0) #21
  br label %10

10:                                               ; preds = %4, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_sketch_mode(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %4 = icmp eq ptr %2, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 42
  %11 = load i8, ptr %10, align 8, !tbaa !118
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %5, %1
  br label %15

15:                                               ; preds = %9, %14
  %16 = phi i32 [ 0, %14 ], [ 1, %9 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_sk_selectStroke(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %5 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 42
  %9 = load i8, ptr %8, align 8, !tbaa !118
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = sext i16 %2 to i32
  %14 = tail call fastcc i32 @sk_selectStroke(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, i32 noundef %13) #21, !range !95
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @ED_area_tag_redraw(ptr noundef %17) #19
  br label %18

18:                                               ; preds = %12, %16, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sk_selectStroke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ViewContext, align 8
  %6 = alloca %struct.rcti, align 16
  %7 = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %7) #20
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %5) #19
  %8 = load <2 x i32>, ptr %2, align 4, !tbaa !9
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %10 = add nsw <4 x i32> %9, <i32 -5, i32 5, i32 -5, i32 5>
  store <4 x i32> %10, ptr %6, align 16, !tbaa !9
  %11 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 10000, ptr noundef nonnull %6, i8 noundef zeroext 1) #19
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %4
  %14 = getelementptr inbounds [10000 x i32], ptr %7, i64 0, i64 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = add nsw i32 %15, -1
  %19 = call ptr @BLI_findlink(ptr noundef %1, i32 noundef %18) #19
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  call void @sk_selectAllSketch(ptr noundef %1, i32 noundef -1) #19
  %22 = getelementptr inbounds %struct.SK_Stroke, ptr %19, i64 0, i32 5
  store i32 1, ptr %22, align 8, !tbaa !92
  br label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.SK_Stroke, ptr %19, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !92
  %26 = xor i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !92
  br label %27

27:                                               ; preds = %4, %13, %23, %21
  %28 = phi i32 [ 1, %21 ], [ 1, %23 ], [ 1, %13 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret i32 %28
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_convertSketch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_sketch_full_mode(ptr noundef %0) #21, !range !95
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @sk_convert(ptr noundef %0, ptr noundef nonnull %5) #21
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_sketch_full_mode(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %4 = icmp eq ptr %2, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 42
  %11 = load i8, ptr %10, align 8, !tbaa !118
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %5, %1
  br label %15

15:                                               ; preds = %9, %14
  %16 = phi i32 [ 0, %14 ], [ 1, %9 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_deleteSketch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_sketch_full_mode(ptr noundef %0) #21, !range !95
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @sk_deleteSelectedStrokes(ptr noundef nonnull %5) #19
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: optsize
declare void @sk_deleteSelectedStrokes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @createSketch() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_sketch_mode_active_stroke(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %3 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %4 = getelementptr inbounds %struct.ToolSettings, ptr %2, i64 0, i32 42
  %5 = load i8, ptr %4, align 8, !tbaa !118
  %6 = and i8 %5, 1
  %7 = icmp ne i8 %6, 0
  %8 = icmp ne ptr %3, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.SK_Sketch, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  br label %15

15:                                               ; preds = %10, %14
  %16 = phi i32 [ 0, %14 ], [ 1, %10 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %3, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_delete, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_full_mode, ptr %5, align 8, !tbaa !129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_delete(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @sk_deleteSelectedStrokes(ptr noundef nonnull %4) #19
  br label %7

7:                                                ; preds = %6, %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50855940, ptr noundef null) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %3, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_select, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_full_mode, ptr %5, align 8, !tbaa !129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_select(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = tail call fastcc i32 @sk_selectStroke(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef 0) #21, !range !95
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @ED_area_tag_redraw(ptr noundef %11) #19
  br label %12

12:                                               ; preds = %6, %10, %3
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_cancel_stroke(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %2, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %3, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_cancel_invoke, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode_active_stroke, ptr %5, align 8, !tbaa !129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_cancel_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  tail call fastcc void @sk_cancelStroke(ptr noundef nonnull %4) #21
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @ED_area_tag_redraw(ptr noundef %7) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ 4, %6 ], [ 8, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_convert(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_convert, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_full_mode, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !130
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_convert(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  tail call fastcc void @sk_convert(ptr noundef %0, ptr noundef nonnull %4) #21
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @ED_area_tag_redraw(ptr noundef %7) #19
  br label %8

8:                                                ; preds = %6, %3
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_finish_stroke(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %3, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_finish, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode_active_stroke, ptr %5, align 8, !tbaa !129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_finish(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @sk_finish_stroke(ptr noundef %0, ptr noundef nonnull %4) #21, !range !95
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @ED_area_tag_redraw(ptr noundef %10) #19
  br label %11

11:                                               ; preds = %3, %6, %9
  %12 = phi i32 [ 4, %9 ], [ 8, %6 ], [ 8, %3 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SKETCH_OT_draw_preview(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %2, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %3, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_draw_preview, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode_active_stroke, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_draw_preview(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.SK_DrawData, align 4
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.20) #19
  %8 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = trunc i32 %7 to i8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @sk_initDrawData(ptr noundef nonnull %4, ptr noundef nonnull %12) #19
  %13 = getelementptr inbounds %struct.SK_Sketch, ptr %8, i64 0, i32 4
  %14 = getelementptr inbounds %struct.SK_Sketch, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  call fastcc void @sk_getStrokePoint(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef %15, ptr noundef nonnull %4, i8 noundef zeroext %11) #21
  %16 = call ptr @CTX_wm_area(ptr noundef %0) #19
  call void @ED_area_tag_redraw(ptr noundef %16) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  br label %17

17:                                               ; preds = %10, %3
  ret i32 12
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SKETCH_OT_draw_stroke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_draw_stroke, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sketch_draw_stroke_modal, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sketch_draw_stroke_cancel, ptr %6, align 8, !tbaa !135
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode, ptr %7, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1) #19
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %11, align 8, !tbaa !130
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_draw_stroke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.20) #19
  %7 = trunc i32 %6 to i8
  %8 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 1) #21
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %10 = tail call ptr %9(i64 noundef 20, ptr noundef nonnull @.str.37) #19
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !136
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @sk_initDrawData(ptr noundef %10, ptr noundef nonnull %12) #19
  tail call fastcc void @sk_start_draw_stroke(ptr noundef %8) #21
  %13 = getelementptr inbounds %struct.SK_Sketch, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  tail call fastcc void @sk_draw_stroke(ptr noundef %0, ptr noundef %8, ptr noundef %14, ptr noundef %10, i8 noundef zeroext %7) #21
  %15 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #19
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_draw_stroke_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 1) #21
  %5 = getelementptr inbounds %struct.SK_Sketch, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = tail call fastcc i32 @sketch_draw_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext 0, ptr noundef %6) #21, !range !137
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sketch_draw_stroke_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 1) #21
  tail call fastcc void @sk_cancelStroke(ptr noundef %3) #21
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  tail call void %4(ptr noundef %6) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SKETCH_OT_gesture(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %2, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %3, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_draw_gesture, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sketch_draw_gesture_modal, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sketch_draw_gesture_cancel, ptr %6, align 8, !tbaa !135
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode_gesture, ptr %7, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1) #19
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %11, align 8, !tbaa !130
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_draw_gesture(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.20) #19
  %7 = trunc i32 %6 to i8
  %8 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 1) #21
  tail call fastcc void @sk_cancelStroke(ptr noundef %8) #21
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %10 = tail call ptr %9(i64 noundef 20, ptr noundef nonnull @.str.37) #19
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !136
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @sk_initDrawData(ptr noundef %10, ptr noundef nonnull %12) #19
  tail call fastcc void @sk_start_draw_gesture(ptr noundef %8) #21
  %13 = getelementptr inbounds %struct.SK_Sketch, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  tail call fastcc void @sk_draw_stroke(ptr noundef %0, ptr noundef %8, ptr noundef %14, ptr noundef %10, i8 noundef zeroext %7) #21
  %15 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #19
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sketch_draw_gesture_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 1) #21
  %5 = getelementptr inbounds %struct.SK_Sketch, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = tail call fastcc i32 @sketch_draw_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext 1, ptr noundef %6) #21, !range !137
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sketch_draw_gesture_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 1) #21
  tail call fastcc void @sk_cancelStroke(ptr noundef %3) #21
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  tail call void %4(ptr noundef %6) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ED_operator_sketch_mode_gesture(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %3 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 0) #21
  %4 = getelementptr inbounds %struct.ToolSettings, ptr %2, i64 0, i32 42
  %5 = load i8, ptr %4, align 8, !tbaa !118
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = and i32 %6, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp ne ptr %3, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.SK_Sketch, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %9, %1
  br label %19

19:                                               ; preds = %14, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %14 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @RIG_graphFromArmature(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @headPoint(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !138
  %8 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 8, !tbaa !139
  %10 = sub nsw i32 %7, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11
  %13 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !140
  %14 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11, i32 2
  %15 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !141
  %16 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !142
  %18 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 9
  store float %17, ptr %18, align 8, !tbaa !143
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @tailPoint(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 4, !tbaa !144
  %8 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 8, !tbaa !139
  %10 = add nsw i32 %9, %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11
  %13 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !140
  %14 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11, i32 2
  %15 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !141
  %16 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !142
  %18 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 9
  store float %17, ptr %18, align 8, !tbaa !143
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @peekPoint(ptr nocapture noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = add nsw i32 %4, %1
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @setIteratorValues(ptr noundef nonnull %0, i32 noundef %5) #21
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @nextPoint(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @setIteratorValues(ptr noundef nonnull %0, i32 noundef %4) #21
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @nextNPoint(ptr nocapture noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = add nsw i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @setIteratorValues(ptr noundef nonnull %0, i32 noundef %5) #21
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @previousPoint(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = add nsw i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !54
  %7 = tail call fastcc ptr @setIteratorValues(ptr noundef nonnull %0, i32 noundef %6) #21
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @iteratorStopped(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = icmp sge i32 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @setIteratorValues(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %27

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.SK_Stroke, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !138
  %15 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !139
  %17 = mul nsw i32 %16, %1
  %18 = add nsw i32 %17, %14
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.SK_Point, ptr %12, i64 %19
  %21 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  store ptr %20, ptr %21, align 8, !tbaa !140
  %22 = getelementptr inbounds %struct.SK_Point, ptr %12, i64 %19, i32 2
  %23 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 8
  store ptr %22, ptr %23, align 8, !tbaa !141
  %24 = getelementptr inbounds %struct.SK_Point, ptr %12, i64 %19, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !142
  %26 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 9
  store float %25, ptr %26, align 8, !tbaa !143
  br label %29

27:                                               ; preds = %4, %2
  %28 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %28, i8 0, i64 20, i1 false)
  br label %29

29:                                               ; preds = %27, %8
  %30 = phi ptr [ %20, %8 ], [ null, %27 ]
  ret ptr %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_retargetStroke(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  %8 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %7) #19
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %7) #19
  call void @transpose_m3(ptr noundef nonnull %4) #19
  %9 = call fastcc ptr @sk_strokeToArc(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  call fastcc void @sk_autoname(ptr noundef %0, ptr noundef %9) #21
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 41
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = call fastcc ptr @sk_makeTemplateGraph(ptr noundef %0, ptr noundef %11) #21
  call void @BIF_retargetArc(ptr noundef %0, ptr noundef %9, ptr noundef %12) #19
  call fastcc void @sk_autoname(ptr noundef %0, ptr noundef null) #21
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.ReebArc, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !145
  call void %13(ptr noundef %15) #19
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.ReebArc, ptr %9, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !147
  call void %16(ptr noundef %18) #19
  call void @REEB_freeArc(ptr noundef %9) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_convertStroke(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca %struct.SK_StrokeIterator, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %7 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  %10 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  %11 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %10) #19
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %10) #19
  call void @transpose_m3(ptr noundef nonnull %4) #19
  %12 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !43
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %83

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 43
  %18 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  br label %19

19:                                               ; preds = %15, %75
  %20 = phi i64 [ 0, %15 ], [ %79, %75 ]
  %21 = phi ptr [ null, %15 ], [ %78, %75 ]
  %22 = phi ptr [ null, %15 ], [ %77, %75 ]
  %23 = phi i32 [ 0, %15 ], [ %76, %75 ]
  %24 = load ptr, ptr %16, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.SK_Point, ptr %24, i64 %20
  %26 = getelementptr inbounds %struct.SK_Point, ptr %24, i64 %20, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !65
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %75

29:                                               ; preds = %19
  %30 = icmp eq ptr %21, null
  %31 = trunc i64 %20 to i32
  br i1 %30, label %75, label %32

32:                                               ; preds = %29
  %33 = sub nsw i32 %31, %23
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #20
  call void @initStrokeIterator(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef %23, i32 noundef %31) #21
  %36 = load i8, ptr %17, align 1, !tbaa !93
  %37 = icmp ult i8 %36, 3
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #20
  br label %46

39:                                               ; preds = %35
  %40 = zext nneg i8 %36 to i64
  %41 = getelementptr inbounds [3 x ptr], ptr @switch.table.sk_drawStrokeSubdivision, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %18, align 8, !tbaa !148
  %44 = call ptr @subdivideArcBy(ptr noundef nonnull %7, ptr noundef %9, ptr noundef %43, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %42) #19
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #20
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %32, %38, %39
  %47 = call ptr @ED_armature_edit_bone_add(ptr noundef %9, ptr noundef nonnull @.str.36) #19
  %48 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %48, ptr noundef nonnull %21) #21
  %49 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %25) #21
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %48) #19
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %49) #19
  %50 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 0, i32 2
  call void @setBoneRollFromNormal(ptr noundef %47, ptr noundef nonnull %50, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi ptr [ %47, %46 ], [ %44, %39 ]
  %53 = getelementptr inbounds %struct.EditBone, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !149
  %55 = or i32 %54, 7
  store i32 %55, ptr %53, align 4, !tbaa !149
  %56 = getelementptr inbounds %struct.EditBone, ptr %52, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !151
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %51, %59
  %60 = phi ptr [ %65, %59 ], [ %57, %51 ]
  %61 = getelementptr inbounds %struct.EditBone, ptr %60, i64 0, i32 9
  %62 = load i32, ptr %61, align 4, !tbaa !149
  %63 = or i32 %62, 7
  store i32 %63, ptr %61, align 4, !tbaa !149
  %64 = getelementptr inbounds %struct.EditBone, ptr %60, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !151
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %59, !llvm.loop !152

67:                                               ; preds = %59, %51
  %68 = phi i32 [ %55, %51 ], [ %63, %59 ]
  %69 = phi ptr [ %52, %51 ], [ %60, %59 ]
  %70 = icmp eq ptr %22, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 3
  store ptr %22, ptr %72, align 8, !tbaa !151
  %73 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 9
  %74 = or i32 %68, 16
  store i32 %74, ptr %73, align 4, !tbaa !149
  br label %75

75:                                               ; preds = %67, %71, %29, %19
  %76 = phi i32 [ %23, %19 ], [ %31, %29 ], [ %31, %71 ], [ %31, %67 ]
  %77 = phi ptr [ %22, %19 ], [ %22, %29 ], [ %52, %71 ], [ %52, %67 ]
  %78 = phi ptr [ %21, %19 ], [ %25, %29 ], [ %25, %71 ], [ %25, %67 ]
  %79 = add nuw nsw i64 %20, 1
  %80 = load i32, ptr %12, align 8, !tbaa !43
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %79, %81
  br i1 %82, label %19, label %83, !llvm.loop !153

83:                                               ; preds = %75, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sk_strokeToArc(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %5 = tail call ptr %4(i64 noundef 112, ptr noundef nonnull @.str.28) #19
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = tail call fastcc ptr @sk_pointToNode(ptr noundef %7, ptr noundef %1, ptr noundef %2) #21
  %9 = getelementptr inbounds %struct.ReebArc, ptr %5, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !145
  %10 = tail call ptr @sk_lastStrokePoint(ptr noundef %0) #19
  %11 = tail call fastcc ptr @sk_pointToNode(ptr noundef %10, ptr noundef %1, ptr noundef %2) #21
  %12 = getelementptr inbounds %struct.ReebArc, ptr %5, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !147
  %13 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = add nsw i32 %14, -2
  %16 = getelementptr inbounds %struct.ReebArc, ptr %5, i64 0, i32 10
  store i32 %15, ptr %16, align 8, !tbaa !154
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %18 = sext i32 %15 to i64
  %19 = shl nsw i64 %18, 5
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.29) #19
  %21 = getelementptr inbounds %struct.ReebArc, ptr %5, i64 0, i32 11
  store ptr %20, ptr %21, align 8, !tbaa !155
  %22 = load i32, ptr %16, align 8, !tbaa !154
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %3, %24
  %25 = phi i64 [ %29, %24 ], [ 0, %3 ]
  %26 = load ptr, ptr %21, align 8, !tbaa !155
  %27 = getelementptr inbounds %struct.EmbedBucket, ptr %26, i64 %25, i32 2
  %28 = load ptr, ptr %6, align 8, !tbaa !69
  %29 = add nuw nsw i64 %25, 1
  %30 = getelementptr inbounds %struct.SK_Point, ptr %28, i64 %29
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %30) #21
  %31 = load ptr, ptr %21, align 8, !tbaa !155
  %32 = getelementptr inbounds %struct.EmbedBucket, ptr %31, i64 %25, i32 2
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %32) #19
  %33 = load ptr, ptr %21, align 8, !tbaa !155
  %34 = getelementptr inbounds %struct.EmbedBucket, ptr %33, i64 %25, i32 3
  %35 = load ptr, ptr %6, align 8, !tbaa !69
  %36 = getelementptr inbounds %struct.SK_Point, ptr %35, i64 %29, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef nonnull %36) #21
  %37 = load ptr, ptr %21, align 8, !tbaa !155
  %38 = getelementptr inbounds %struct.EmbedBucket, ptr %37, i64 %25, i32 3
  tail call void @mul_m3_v3(ptr noundef %2, ptr noundef nonnull %38) #19
  %39 = load i32, ptr %16, align 8, !tbaa !154
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %29, %40
  br i1 %41, label %24, label %42, !llvm.loop !156

42:                                               ; preds = %24, %3
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_autoname(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 45
  %5 = load i8, ptr %4, align 1, !tbaa !157
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 48
  %12 = tail call i32 @atoi(ptr nocapture noundef nonnull %11) #22
  %13 = add nsw i32 %12, 1
  %14 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 8, ptr noundef nonnull @.str.31, i32 noundef %13) #19
  br label %43

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 47
  %17 = load i8, ptr %16, align 1, !tbaa !158
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.32) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.33) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.34) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.35) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25, %28, %15, %22, %19
  %32 = phi ptr [ @.str.33, %19 ], [ @.str.33, %22 ], [ @.str.35, %15 ], [ @.str.35, %28 ], [ @.str.35, %25 ]
  %33 = phi ptr [ @.str.32, %19 ], [ @.str.32, %22 ], [ @.str.34, %15 ], [ @.str.34, %28 ], [ @.str.34, %25 ]
  %34 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !145
  %36 = getelementptr inbounds %struct.ReebNode, ptr %35, i64 0, i32 2
  %37 = load float, ptr %36, align 8, !tbaa !73
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %16, i64 noundef 8, ptr noundef nonnull %33) #19
  br label %43

41:                                               ; preds = %31
  %42 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %16, i64 noundef 8, ptr noundef nonnull %32) #19
  br label %43

43:                                               ; preds = %28, %41, %39, %10, %2
  ret void
}

; Function Attrs: optsize
declare void @BIF_retargetArc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @REEB_freeArc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sk_pointToNode(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %5 = tail call ptr %4(i64 noundef 112, ptr noundef nonnull @.str.30) #19
  %6 = getelementptr inbounds %struct.ReebNode, ptr %5, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %0) #21
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct.ReebNode, ptr %5, i64 0, i32 10
  %8 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  tail call void @mul_m3_v3(ptr noundef %2, ptr noundef nonnull %7) #19
  ret ptr %5
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @subdivideArcBy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @nextAdaptativeSubdivision(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @nextLengthSubdivision(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @nextFixedSubdivision(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @ED_armature_edit_bone_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setBoneRollFromNormal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_drawStroke(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  %8 = tail call ptr @gluNewQuadric() #19
  tail call void @gluQuadricNormals(ptr noundef %8, i32 noundef 100000) #19
  %9 = icmp eq i32 %1, -1
  br i1 %9, label %31, label %10

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %1) #19
  %12 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !43
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %26
  %18 = phi i64 [ 0, %15 ], [ %27, %26 ]
  tail call void @glPushMatrix() #19
  %19 = load ptr, ptr %16, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.SK_Point, ptr %19, i64 %18
  tail call fastcc void @sk_drawPoint(ptr noundef %8, ptr noundef %20, float noundef 0x3FB99999A0000000) #21
  %21 = icmp eq i64 %18, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %16, align 8, !tbaa !69
  %24 = getelementptr inbounds %struct.SK_Point, ptr %23, i64 %18
  %25 = getelementptr inbounds %struct.SK_Point, ptr %24, i64 -1
  tail call fastcc void @sk_drawEdge(ptr noundef %8, ptr noundef nonnull %25, ptr noundef nonnull %24) #21
  br label %26

26:                                               ; preds = %22, %17
  tail call void @glPopMatrix() #19
  %27 = add nuw nsw i64 %18, 1
  %28 = load i32, ptr %12, align 8, !tbaa !43
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %17, label %69, !llvm.loop !159

31:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) @__const.sk_drawStroke.d_rgb, i64 12, i1 false)
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %2) #21
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  %32 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !43
  %34 = sitofp i32 %33 to float
  %35 = fdiv float 1.000000e+00, %34
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %35) #21
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %39 = sext i32 %4 to i64
  %40 = sext i32 %3 to i64
  br label %41

41:                                               ; preds = %37, %63
  %42 = phi i64 [ 0, %37 ], [ %64, %63 ]
  %43 = load ptr, ptr %38, align 8, !tbaa !69
  %44 = getelementptr inbounds %struct.SK_Point, ptr %43, i64 %42
  call void @glPushMatrix() #19
  %45 = getelementptr inbounds %struct.SK_Point, ptr %43, i64 %42, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !65
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #19
  call fastcc void @sk_drawPoint(ptr noundef %8, ptr noundef nonnull %44, float noundef 0x3FC3333340000000) #21
  call fastcc void @sk_drawNormal(ptr noundef %8, ptr noundef nonnull %44) #21
  br label %49

49:                                               ; preds = %48, %41
  %50 = icmp slt i64 %42, %40
  %51 = icmp sgt i64 %42, %39
  %52 = or i1 %50, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void @glColor3f(float noundef 0x3FD3333340000000, float noundef 0x3FD3333340000000, float noundef 0x3FD3333340000000) #19
  br label %55

54:                                               ; preds = %49
  call void @glColor3fv(ptr noundef nonnull %6) #19
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, ptr %45, align 4, !tbaa !65
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call fastcc void @sk_drawPoint(ptr noundef %8, ptr noundef nonnull %44, float noundef 0x3FB99999A0000000) #21
  br label %59

59:                                               ; preds = %58, %55
  %60 = icmp eq i64 %42, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.SK_Point, ptr %44, i64 -1
  call fastcc void @sk_drawEdge(ptr noundef %8, ptr noundef nonnull %62, ptr noundef nonnull %44) #21
  br label %63

63:                                               ; preds = %61, %59
  call void @glPopMatrix() #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %64 = add nuw nsw i64 %42, 1
  %65 = load i32, ptr %32, align 8, !tbaa !43
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %41, label %68, !llvm.loop !160

68:                                               ; preds = %63, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  br label %69

69:                                               ; preds = %26, %10, %68
  call void @gluDeleteQuadric(ptr noundef %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @GPU_select_load_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @sk_adjustIndexes(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !48
  store i32 %6, ptr %1, align 4, !tbaa !9
  %7 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !49
  store i32 %8, ptr %2, align 4, !tbaa !9
  %9 = load i32, ptr %1, align 4, !tbaa !9
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !9
  %12 = load i32, ptr %2, align 4, !tbaa !9
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ 0, %11 ], [ %9, %3 ]
  %15 = phi i32 [ %12, %11 ], [ %8, %3 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.SK_Stroke, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !43
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %2, align 4, !tbaa !9
  %22 = load i32, ptr %1, align 4, !tbaa !9
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i32 [ %22, %17 ], [ %14, %13 ]
  %25 = phi i32 [ %21, %17 ], [ %15, %13 ]
  %26 = icmp slt i32 %25, %24
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 %25, ptr %1, align 4, !tbaa !9
  store i32 %24, ptr %2, align 4, !tbaa !9
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ 1, %27 ], [ 0, %23 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_drawStrokeSubdivision(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.SK_StrokeIterator, align 8
  %4 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 43
  %5 = load i8, ptr %4, align 1, !tbaa !93
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %46, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %40
  %14 = phi i32 [ %9, %11 ], [ %41, %40 ]
  %15 = phi i64 [ 0, %11 ], [ %43, %40 ]
  %16 = phi i32 [ -1, %11 ], [ %42, %40 ]
  %17 = load ptr, ptr %12, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 %15, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !65
  %20 = icmp eq i32 %19, 1
  %21 = add nsw i32 %14, -1
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %15, %22
  %24 = select i1 %20, i1 true, i1 %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %13
  %26 = icmp ne i32 %16, -1
  %27 = trunc i64 %15 to i32
  %28 = sub nsw i32 %27, %16
  %29 = icmp sgt i32 %28, 1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #20
  call void @initStrokeIterator(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef %16, i32 noundef %27) #21
  %32 = load i8, ptr %4, align 1, !tbaa !93
  %33 = icmp ult i8 %32, 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = zext nneg i8 %32 to i64
  %36 = getelementptr inbounds [3 x ptr], ptr @switch.table.sk_drawStrokeSubdivision, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8
  call fastcc void @drawSubdividedStrokeBy(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %37) #21
  br label %38

38:                                               ; preds = %31, %34
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #20
  %39 = load i32, ptr %8, align 8, !tbaa !43
  br label %40

40:                                               ; preds = %38, %25, %13
  %41 = phi i32 [ %14, %13 ], [ %14, %25 ], [ %39, %38 ]
  %42 = phi i32 [ %16, %13 ], [ %27, %25 ], [ %27, %38 ]
  %43 = add nuw nsw i64 %15, 1
  %44 = sext i32 %41 to i64
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %13, label %46, !llvm.loop !161

46:                                               ; preds = %40, %7, %2
  ret void
}

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluQuadricNormals(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_drawPoint(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !73
  tail call void @glTranslatef(float noundef %4, float noundef %6, float noundef %8) #19
  %9 = tail call fastcc float @sk_clampPointSize(ptr noundef nonnull %1, float noundef %2) #21
  %10 = fpext float %9 to double
  tail call void @gluSphere(ptr noundef %0, double noundef %10, i32 noundef 8, i32 noundef 8) #19
  ret void
}

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_drawEdge(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.sk_drawEdge.vec2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1) #21
  %7 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  %8 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %6) #21, !range !30
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %11 = load float, ptr %10, align 4
  %12 = select i1 %9, float %11, float 1.000000e+00
  %13 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %14 = call float @llvm.fmuladd.f32(float %13, float 0x404CA5DC20000000, float 1.800000e+02)
  %15 = load float, ptr %6, align 4, !tbaa !73
  %16 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !73
  call void @glRotatef(float noundef %14, float noundef %15, float noundef %12, float noundef %17) #19
  %18 = call fastcc float @sk_clampPointSize(ptr noundef %2, float noundef 0x3FB99999A0000000) #21
  %19 = fpext float %18 to double
  %20 = call fastcc float @sk_clampPointSize(ptr noundef %1, float noundef 0x3FB99999A0000000) #21
  %21 = fpext float %20 to double
  %22 = fpext float %7 to double
  call void @gluCylinder(ptr noundef %0, double noundef %19, double noundef %21, double noundef %22, i32 noundef 8, i32 noundef 8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  %4 = load float, ptr %0, align 4, !tbaa !73
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !73
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !73
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !73
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !73
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_drawNormal(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.sk_drawEdge.vec2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  tail call void @glPushMatrix() #19
  %5 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #21
  %6 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %4) #21, !range !30
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %9 = load float, ptr %8, align 4
  %10 = select i1 %7, float %9, float 1.000000e+00
  %11 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #19
  %12 = fmul float %11, 0x404CA5DC20000000
  %13 = load float, ptr %4, align 4, !tbaa !73
  %14 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !73
  call void @glRotatef(float noundef %12, float noundef %13, float noundef %10, float noundef %15) #19
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #19
  %16 = call fastcc float @sk_clampPointSize(ptr noundef %1, float noundef 0x3FA99999A0000000) #21
  %17 = fpext float %16 to double
  %18 = call fastcc float @sk_clampPointSize(ptr noundef %1, float noundef 0x3FECCCCCC0000000) #21
  %19 = fpext float %18 to double
  call void @gluCylinder(ptr noundef %0, double noundef %17, double noundef 0.000000e+00, double noundef %19, i32 noundef 10, i32 noundef 2) #19
  call void @glPopMatrix() #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  %4 = load float, ptr %0, align 4, !tbaa !73
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !73
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !73
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !73
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !73
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !73
  %15 = load float, ptr %8, align 4, !tbaa !73
  %16 = load float, ptr %2, align 4, !tbaa !73
  %17 = load float, ptr %1, align 4, !tbaa !73
  %18 = load float, ptr %6, align 4, !tbaa !73
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !73
  %23 = load float, ptr %1, align 4, !tbaa !73
  %24 = load float, ptr %10, align 4, !tbaa !73
  %25 = load float, ptr %4, align 4, !tbaa !73
  %26 = load float, ptr %2, align 4, !tbaa !73
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load float, ptr %0, align 4, !tbaa !73
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluCylinder(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef float @sk_clampPointSize(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 4, !tbaa !142
  %5 = fmul float %4, %1
  %6 = fmul float %1, 5.000000e-01
  %7 = tail call fastcc float @max_ff(float noundef %5, float noundef %6) #21
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #14 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawSubdividedStrokeBy(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %1, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %8 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !162
  %10 = tail call ptr @gluNewQuadric() #19
  tail call void @gluQuadricNormals(ptr noundef %10, i32 noundef 100000) #19
  %11 = load ptr, ptr %1, align 8, !tbaa !164
  %12 = tail call ptr %11(ptr noundef nonnull %1) #19
  %13 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %14) #21
  %15 = call i32 %2(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #19, !callees !166
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.SK_Stroke, ptr %7, i64 0, i32 2
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i32 [ %15, %17 ], [ %24, %19 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !69
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 %22
  call void @glPushMatrix() #19
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #19
  call fastcc void @sk_drawPoint(ptr noundef %10, ptr noundef %23, float noundef 0x3FC3333340000000) #21
  call fastcc void @sk_drawNormal(ptr noundef %10, ptr noundef %23) #21
  call void @glPopMatrix() #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %24 = call i32 %2(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %20, i32 noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #19, !callees !166
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %19, !llvm.loop !167

26:                                               ; preds = %19, %3
  call void @gluDeleteQuadric(ptr noundef %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluSphere(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #21
  ret float %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #21
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #19
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #21
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #21
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !73
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !73
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @view3d_opengl_select(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sk_selectAllSketch(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_cancelStroke(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @sk_resetOverdraw(ptr noundef nonnull %0) #21
  %6 = load ptr, ptr %2, align 8, !tbaa !39
  tail call void @sk_removeStroke(ptr noundef nonnull %0, ptr noundef %6) #19
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sk_finish_stroke(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  tail call fastcc void @sk_endStroke(ptr noundef %0, ptr noundef nonnull %1) #21
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 42
  %9 = load i8, ptr %8, align 8, !tbaa !118
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 43
  %14 = load i8, ptr %13, align 1, !tbaa !93
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call fastcc void @sk_retargetStroke(ptr noundef %0, ptr noundef nonnull %5) #21
  br label %18

17:                                               ; preds = %12
  tail call fastcc void @sk_convertStroke(ptr noundef %0, ptr noundef nonnull %5) #21
  br label %18

18:                                               ; preds = %17, %16
  tail call void @sk_removeStroke(ptr noundef nonnull %1, ptr noundef nonnull %5) #19
  br label %19

19:                                               ; preds = %2, %7, %18
  %20 = phi i32 [ 1, %18 ], [ 1, %7 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_endStroke(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  tail call void @sk_shrinkStrokeBuffer(ptr noundef %5) #19
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 42
  %7 = load i8, ptr %6, align 8, !tbaa !118
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call fastcc void @sk_endOverdraw(ptr noundef nonnull %1) #21
  br label %11

11:                                               ; preds = %10, %2
  store ptr null, ptr %4, align 8, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare void @sk_shrinkStrokeBuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_endOverdraw(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = tail call i32 @sk_hasOverdraw(ptr noundef %0, ptr noundef null) #21, !range !95
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %9 = call fastcc i32 @sk_adjustIndexes(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #21, !range !95
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @sk_reverseStroke(ptr noundef %5) #19
  br label %12

12:                                               ; preds = %11, %8
  %13 = getelementptr inbounds %struct.SK_Stroke, ptr %5, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = icmp sgt i32 %14, 1
  %16 = load i32, ptr %2, align 4, !tbaa !9
  %17 = load i32, ptr %3, align 4, !tbaa !9
  br i1 %15, label %18, label %35

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.SK_Stroke, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds %struct.SK_Point, ptr %22, i64 %23, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = getelementptr inbounds %struct.SK_Stroke, ptr %5, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = getelementptr inbounds %struct.SK_Point, ptr %27, i64 0, i32 4
  store i32 %25, ptr %28, align 4, !tbaa !65
  %29 = sext i32 %17 to i64
  %30 = getelementptr inbounds %struct.SK_Point, ptr %22, i64 %29, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !65
  %32 = tail call ptr @sk_lastStrokePoint(ptr noundef nonnull %5) #19
  %33 = getelementptr inbounds %struct.SK_Point, ptr %32, i64 0, i32 4
  store i32 %31, ptr %33, align 4, !tbaa !65
  %34 = load i32, ptr %13, align 8, !tbaa !43
  br label %35

35:                                               ; preds = %18, %12
  %36 = phi i32 [ %34, %18 ], [ %14, %12 ]
  %37 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.SK_Stroke, ptr %5, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  tail call void @sk_insertStrokePoints(ptr noundef %38, ptr noundef %40, i32 noundef %36, i32 noundef %16, i32 noundef %17) #19
  tail call void @sk_removeStroke(ptr noundef nonnull %0, ptr noundef nonnull %5) #19
  tail call void @sk_resetOverdraw(ptr noundef nonnull %0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %41

41:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: optsize
declare void @sk_insertStrokePoints(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sk_initDrawData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_getStrokePoint(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = tail call fastcc i32 @sk_getStrokeSnapPoint(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #21, !range !95
  store i1 true, ptr @LAST_SNAP_POINT_VALID, align 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull @LAST_SNAP_POINT, ptr noundef %1) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %13

11:                                               ; preds = %6
  store i1 false, ptr @LAST_SNAP_POINT_VALID, align 4
  br label %12

12:                                               ; preds = %11, %8
  tail call fastcc void @sk_getStrokeDrawPoint(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4) #21
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sk_getStrokeSnapPoint(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x float], align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 8
  %12 = alloca float, align 4
  %13 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 51
  %15 = load i8, ptr %14, align 1, !tbaa !168
  %16 = icmp eq i8 %15, 4
  br i1 %16, label %17, label %122

17:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %18 = getelementptr inbounds %struct.SK_Sketch, ptr %2, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %18) #19
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %18) #21
  %19 = load <2 x i32>, ptr %4, align 4, !tbaa !9
  %20 = sitofp <2 x i32> %19 to <2 x float>
  store <2 x float> %20, ptr %7, align 8, !tbaa !73
  %21 = call zeroext i8 @peelObjectsContext(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %7, i32 noundef 0) #19
  %22 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !43
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = zext nneg i32 %23 to i64
  %29 = getelementptr %struct.SK_Point, ptr %27, i64 %28
  %30 = getelementptr %struct.SK_Point, ptr %29, i64 -1, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !65
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = getelementptr %struct.SK_Point, ptr %29, i64 -1
  br label %38

35:                                               ; preds = %25, %17
  %36 = load i1, ptr @LAST_SNAP_POINT_VALID, align 4
  %37 = select i1 %36, ptr @LAST_SNAP_POINT, ptr null
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi ptr [ %34, %33 ], [ %37, %35 ]
  %40 = load ptr, ptr %18, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %120, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 54
  %44 = icmp eq ptr %39, null
  br label %45

45:                                               ; preds = %42, %105
  %46 = phi ptr [ %40, %42 ], [ %108, %105 ]
  %47 = phi float [ 0.000000e+00, %42 ], [ %107, %105 ]
  %48 = phi float [ 0x47EFFFFFE0000000, %42 ], [ %106, %105 ]
  %49 = getelementptr inbounds %struct.DepthPeel, ptr %46, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !169
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %105

52:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  store i32 1, ptr %49, align 8, !tbaa !169
  %53 = load i16, ptr %43, align 2, !tbaa !171
  %54 = and i16 %53, 4
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %46, align 8, !tbaa !172
  %58 = icmp eq ptr %57, null
  br i1 %58, label %93, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.DepthPeel, ptr %46, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !173
  br label %64

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.DepthPeel, ptr %46, i64 0, i32 5
  br label %76

64:                                               ; preds = %59, %72
  %65 = phi ptr [ %57, %59 ], [ %74, %72 ]
  %66 = phi ptr [ null, %59 ], [ %73, %72 ]
  %67 = getelementptr inbounds %struct.DepthPeel, ptr %65, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !173
  %69 = icmp eq ptr %68, %61
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.DepthPeel, ptr %65, i64 0, i32 6
  store i32 1, ptr %71, align 8, !tbaa !169
  br label %72

72:                                               ; preds = %64, %70
  %73 = phi ptr [ %65, %70 ], [ %66, %64 ]
  %74 = load ptr, ptr %65, align 8, !tbaa !172
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %64, !llvm.loop !174

76:                                               ; preds = %62, %80
  %77 = phi ptr [ %78, %80 ], [ %46, %62 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !172
  %79 = icmp eq ptr %78, null
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.DepthPeel, ptr %78, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !173
  %83 = load ptr, ptr %63, align 8, !tbaa !173
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %87, label %76, !llvm.loop !175

85:                                               ; preds = %72
  %86 = icmp eq ptr %73, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %80, %85
  %88 = phi ptr [ %73, %85 ], [ %78, %80 ]
  %89 = getelementptr inbounds %struct.DepthPeel, ptr %88, i64 0, i32 6
  store i32 1, ptr %89, align 8, !tbaa !169
  %90 = getelementptr inbounds %struct.DepthPeel, ptr %46, i64 0, i32 3
  %91 = getelementptr inbounds %struct.DepthPeel, ptr %88, i64 0, i32 3
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %90, ptr noundef nonnull %91) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef 5.000000e-01) #21
  %92 = call fastcc float @len_v3v3(ptr noundef nonnull %90, ptr noundef nonnull %91) #21
  br label %95

93:                                               ; preds = %76, %56, %85
  %94 = getelementptr inbounds %struct.DepthPeel, ptr %46, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %94) #21
  br label %95

95:                                               ; preds = %93, %87
  %96 = phi float [ %92, %87 ], [ 0.000000e+00, %93 ]
  br i1 %44, label %104, label %97

97:                                               ; preds = %95
  %98 = call fastcc float @len_v3v3(ptr noundef nonnull %39, ptr noundef nonnull %8) #21
  %99 = fcmp olt float %98, %48
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %8) #21
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi float [ %48, %97 ], [ %98, %100 ]
  %103 = phi float [ %47, %97 ], [ %96, %100 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  br label %105

104:                                              ; preds = %95
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  br label %112

105:                                              ; preds = %101, %45
  %106 = phi float [ %48, %45 ], [ %102, %101 ]
  %107 = phi float [ %47, %45 ], [ %103, %101 ]
  %108 = load ptr, ptr %46, align 8, !tbaa !5
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %45, !llvm.loop !176

110:                                              ; preds = %105
  %111 = fcmp une float %106, 0x47EFFFFFE0000000
  br i1 %111, label %112, label %120

112:                                              ; preds = %104, %110
  %113 = phi float [ %96, %104 ], [ %107, %110 ]
  %114 = getelementptr inbounds %struct.SK_DrawData, ptr %4, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !177
  %116 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 4
  store i32 %115, ptr %116, align 4, !tbaa !65
  %117 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 5
  store i32 0, ptr %117, align 4, !tbaa !66
  %118 = fmul float %113, 5.000000e-01
  %119 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 3
  store float %118, ptr %119, align 4, !tbaa !142
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %6) #21
  br label %120

120:                                              ; preds = %38, %112, %110
  %121 = phi i32 [ 1, %112 ], [ 0, %110 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  br label %154

122:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  store float 3.000000e+01, ptr %12, align 4, !tbaa !73
  %123 = load ptr, ptr %2, align 8, !tbaa !5
  %124 = icmp eq ptr %123, null
  br i1 %124, label %141, label %125

125:                                              ; preds = %122, %137
  %126 = phi ptr [ %139, %137 ], [ %123, %122 ]
  %127 = phi i32 [ %138, %137 ], [ 0, %122 ]
  %128 = icmp eq ptr %126, %3
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call fastcc ptr @sk_snapPointStroke(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %12, ptr noundef null, i32 noundef 0) #21
  br label %133

131:                                              ; preds = %125
  %132 = call fastcc ptr @sk_snapPointStroke(ptr noundef %0, ptr noundef nonnull %126, ptr noundef %4, ptr noundef nonnull %12, ptr noundef null, i32 noundef 1) #21
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi ptr [ %130, %129 ], [ %132, %131 ]
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %134) #21
  br label %137

137:                                              ; preds = %136, %133
  %138 = phi i32 [ 1, %136 ], [ %127, %133 ]
  %139 = load ptr, ptr %126, align 8, !tbaa !5
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %125, !llvm.loop !179

141:                                              ; preds = %137, %122
  %142 = phi i32 [ 0, %122 ], [ %138, %137 ]
  %143 = load <2 x i32>, ptr %4, align 4, !tbaa !9
  %144 = sitofp <2 x i32> %143 to <2 x float>
  store <2 x float> %144, ptr %11, align 8, !tbaa !73
  %145 = call zeroext i8 @snapObjectsContext(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 1) #19
  %146 = icmp eq i8 %145, 1
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.SK_DrawData, ptr %4, i64 0, i32 2
  %149 = load i32, ptr %148, align 4, !tbaa !177
  %150 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 4
  store i32 %149, ptr %150, align 4, !tbaa !65
  %151 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 5
  store i32 0, ptr %151, align 4, !tbaa !66
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %9) #21
  br label %152

152:                                              ; preds = %147, %141
  %153 = phi i32 [ 1, %147 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  br label %154

154:                                              ; preds = %152, %120
  %155 = phi i32 [ %121, %120 ], [ %153, %152 ]
  ret i32 %155
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_getStrokeDrawPoint(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SK_DrawData, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !177
  %7 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 4
  store i32 %6, ptr %7, align 4, !tbaa !65
  %8 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 5
  store i32 1, ptr %8, align 4, !tbaa !66
  tail call fastcc void @sk_projectDrawPoint(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @peelObjectsContext(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = load float, ptr %2, align 4, !tbaa !73
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !73
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #21
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sk_snapPointStroke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef writeonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x i16], align 2
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %6
  %13 = icmp eq i32 %5, 0
  %14 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %15 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %16 = getelementptr inbounds i32, ptr %2, i64 1
  %17 = icmp eq ptr %4, null
  br label %18

18:                                               ; preds = %12, %54
  %19 = phi i32 [ %10, %12 ], [ %55, %54 ]
  %20 = phi i64 [ 0, %12 ], [ %57, %54 ]
  %21 = phi ptr [ null, %12 ], [ %56, %54 ]
  %22 = load ptr, ptr %14, align 8, !tbaa !69
  br i1 %13, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.SK_Point, ptr %22, i64 %20, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %54

27:                                               ; preds = %23, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  %28 = getelementptr inbounds %struct.SK_Point, ptr %22, i64 %20
  %29 = call i32 @ED_view3d_project_short_global(ptr noundef %8, ptr noundef %28, ptr noundef nonnull %7, i32 noundef 0) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i16, ptr %7, align 2, !tbaa !85
  %33 = sext i16 %32 to i32
  %34 = load i32, ptr %2, align 4, !tbaa !9
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @llvm.abs.i32(i32 %35, i1 true)
  %37 = load i16, ptr %15, align 2, !tbaa !85
  %38 = sext i16 %37 to i32
  %39 = load i32, ptr %16, align 4, !tbaa !9
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @llvm.abs.i32(i32 %40, i1 true)
  %42 = add nuw nsw i32 %41, %36
  %43 = sitofp i32 %42 to float
  %44 = load float, ptr %3, align 4, !tbaa !73
  %45 = fcmp ogt float %44, %43
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  store float %43, ptr %3, align 4, !tbaa !73
  %47 = load ptr, ptr %14, align 8, !tbaa !69
  %48 = getelementptr inbounds %struct.SK_Point, ptr %47, i64 %20
  br i1 %17, label %51, label %49

49:                                               ; preds = %46
  %50 = trunc i64 %20 to i32
  store i32 %50, ptr %4, align 4, !tbaa !9
  br label %51

51:                                               ; preds = %31, %49, %46, %27
  %52 = phi ptr [ %48, %49 ], [ %48, %46 ], [ %21, %31 ], [ %21, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  %53 = load i32, ptr %9, align 8, !tbaa !43
  br label %54

54:                                               ; preds = %23, %51
  %55 = phi i32 [ %53, %51 ], [ %19, %23 ]
  %56 = phi ptr [ %52, %51 ], [ %21, %23 ]
  %57 = add nuw nsw i64 %20, 1
  %58 = sext i32 %55 to i64
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %18, label %60, !llvm.loop !180

60:                                               ; preds = %54, %6
  %61 = phi ptr [ null, %6 ], [ %56, %54 ]
  ret ptr %61
}

; Function Attrs: optsize
declare zeroext i8 @snapObjectsContext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #21
  %3 = tail call float @sqrtf(float noundef %2) #19
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_projectDrawPoint(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [2 x i16], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 8
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %10 = tail call ptr @sk_lastStrokePoint(ptr noundef %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %10) #21
  br label %13

13:                                               ; preds = %12, %4
  %14 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 30
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = call float @ED_view3d_calc_zfac(ptr noundef %15, ptr noundef nonnull %6, ptr noundef null) #19
  %17 = call i32 @ED_view3d_project_short_global(ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 0) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load <2 x i16>, ptr %5, align 4, !tbaa !85
  %21 = sext <2 x i16> %20 to <2 x i32>
  %22 = load <2 x i32>, ptr %3, align 4, !tbaa !9
  %23 = sub nsw <2 x i32> %21, %22
  %24 = sitofp <2 x i32> %23 to <2 x float>
  store <2 x float> %24, ptr %8, align 8, !tbaa !73
  call void @ED_view3d_win_to_delta(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %16) #19
  call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  br label %26

25:                                               ; preds = %13
  call fastcc void @zero_v3(ptr noundef %1) #21
  br label %26

26:                                               ; preds = %25, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_start_draw_stroke(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  tail call fastcc void @sk_startStroke(ptr noundef nonnull %0) #21
  tail call void @sk_selectAllSketch(ptr noundef nonnull %0, i32 noundef -1) #19
  %6 = load ptr, ptr %2, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.SK_Stroke, ptr %6, i64 0, i32 5
  store i32 1, ptr %7, align 8, !tbaa !92
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_draw_stroke(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call i32 @sk_stroke_filtermval(ptr noundef %3) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @sk_addStrokePoint(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #21
  tail call fastcc void @sk_updateDrawData(ptr noundef %3) #21
  tail call void @sk_updateNextPoint(ptr noundef %1, ptr noundef %2) #19
  br label %9

9:                                                ; preds = %5, %8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_startStroke(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @sk_createStroke() #19
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %2) #19
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 2
  store ptr %2, ptr %3, align 8, !tbaa !39
  tail call void @sk_resetOverdraw(ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare ptr @sk_createStroke() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @sk_stroke_filtermval(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_addStrokePoint(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %7 = icmp eq i8 %4, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @sk_addStrokeSnapPoint(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21, !range !95
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5, %8
  tail call fastcc void @sk_addStrokeDrawPoint(ptr noundef %0, ptr noundef %2, ptr noundef %3) #21
  br label %12

12:                                               ; preds = %11, %8
  %13 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 42
  %18 = load i8, ptr %17, align 8, !tbaa !118
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call fastcc void @sk_updateOverdraw(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #21
  br label %22

22:                                               ; preds = %21, %16, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sk_updateDrawData(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.SK_DrawData, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !177
  %3 = getelementptr inbounds %struct.SK_DrawData, ptr %0, i64 0, i32 1
  %4 = load <2 x i32>, ptr %0, align 4, !tbaa !9
  store <2 x i32> %4, ptr %3, align 4, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare void @sk_updateNextPoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sk_addStrokeSnapPoint(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.SK_Point, align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #20
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2, i64 2
  call void @sk_initPoint(ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %10) #19
  %11 = call fastcc i32 @sk_getStrokeSnapPoint(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21, !range !95
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  call fastcc void @sk_projectDrawPoint(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #21
  call void @sk_appendStrokePoint(ptr noundef %2, ptr noundef nonnull %5) #19
  %14 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !43
  %16 = add i32 %15, -2
  %17 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 2
  %18 = icmp sgt i32 %15, 2
  %19 = load ptr, ptr %17, align 8, !tbaa !69
  br i1 %18, label %20, label %54

20:                                               ; preds = %13, %39
  %21 = phi ptr [ %31, %39 ], [ %19, %13 ]
  %22 = phi i32 [ %40, %39 ], [ %16, %13 ]
  %23 = phi i32 [ %30, %39 ], [ 0, %13 ]
  %24 = phi float [ %29, %39 ], [ 0.000000e+00, %13 ]
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 %25
  %27 = getelementptr %struct.SK_Point, ptr %26, i64 1
  %28 = call fastcc float @len_v3v3(ptr noundef nonnull %26, ptr noundef %27) #21
  %29 = fadd float %24, %28
  %30 = add nuw nsw i32 %23, 1
  %31 = load ptr, ptr %17, align 8, !tbaa !69
  %32 = getelementptr inbounds %struct.SK_Point, ptr %31, i64 %25, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !66
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.SK_Point, ptr %31, i64 %25, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !65
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = add nsw i32 %22, -1
  %41 = icmp eq i32 %30, %16
  br i1 %41, label %42, label %20, !llvm.loop !184

42:                                               ; preds = %39, %35, %20
  %43 = phi i32 [ %30, %20 ], [ %30, %35 ], [ %16, %39 ]
  %44 = phi i32 [ %22, %20 ], [ %22, %35 ], [ 0, %39 ]
  %45 = icmp sgt i32 %43, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds %struct.SK_Point, ptr %31, i64 %47
  %49 = call fastcc float @sk_distanceDepth(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %48) #21
  %50 = add nsw i32 %44, 1
  %51 = load i32, ptr %14, align 8, !tbaa !43
  %52 = add nsw i32 %51, -2
  call fastcc void @sk_interpolateDepth(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %50, i32 noundef %52, float noundef %29, float noundef %49) #21
  %53 = load ptr, ptr %17, align 8, !tbaa !69
  br label %54

54:                                               ; preds = %13, %46, %42
  %55 = phi ptr [ %53, %46 ], [ %31, %42 ], [ %19, %13 ]
  %56 = load i32, ptr %14, align 8, !tbaa !43
  %57 = sext i32 %56 to i64
  %58 = getelementptr %struct.SK_Point, ptr %55, i64 %57
  %59 = getelementptr %struct.SK_Point, ptr %58, i64 -1
  call fastcc void @copy_v3_v3(ptr noundef %59, ptr noundef nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  br label %60

60:                                               ; preds = %54, %4
  %61 = phi i32 [ 1, %54 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_addStrokeDrawPoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.SK_Point, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #20
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 2, i64 2
  call void @sk_initPoint(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %8) #19
  call fastcc void @sk_getStrokeDrawPoint(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #21
  call void @sk_appendStrokePoint(ptr noundef %1, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_updateOverdraw(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store float 6.000000e+01, ptr %5, align 4, !tbaa !73
  %13 = load ptr, ptr %1, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %12, %26
  %16 = phi ptr [ %28, %26 ], [ %13, %12 ]
  %17 = phi i32 [ %27, %26 ], [ -1, %12 ]
  %18 = icmp eq ptr %16, %2
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %20 = call fastcc ptr @sk_snapPointStroke(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  store ptr %16, ptr %9, align 8, !tbaa !47
  %23 = load i32, ptr %6, align 4, !tbaa !9
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %23, %22 ], [ %17, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  br label %26

26:                                               ; preds = %15, %24
  %27 = phi i32 [ %25, %24 ], [ %17, %15 ]
  %28 = load ptr, ptr %16, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %15, !llvm.loop !185

30:                                               ; preds = %26
  %31 = load ptr, ptr %9, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %30
  %34 = icmp sgt i32 %27, -1
  br i1 %34, label %35, label %46

35:                                               ; preds = %33
  %36 = call ptr @sk_lastStrokePoint(ptr noundef %2) #19
  %37 = getelementptr inbounds %struct.SK_Point, ptr %36, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !65
  %39 = icmp eq i32 %38, 1
  %40 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 3
  br i1 %39, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, ptr %40, align 8, !tbaa !50
  %43 = add nsw i32 %42, 1
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi i32 [ %43, %41 ], [ 5, %35 ]
  store i32 %45, ptr %40, align 8, !tbaa !50
  br label %46

46:                                               ; preds = %44, %33
  %47 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !43
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 1
  store i32 %27, ptr %51, align 8, !tbaa !48
  br label %54

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 2
  store i32 %27, ptr %53, align 4, !tbaa !49
  br label %54

54:                                               ; preds = %12, %50, %52, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %73

55:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store float 6.000000e+01, ptr %7, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  %56 = call fastcc ptr @sk_snapPointStroke(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = call ptr @sk_lastStrokePoint(ptr noundef %2) #19
  %60 = getelementptr inbounds %struct.SK_Point, ptr %59, i64 0, i32 4
  %61 = load i32, ptr %60, align 4, !tbaa !65
  %62 = icmp eq i32 %61, 1
  %63 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 3
  br i1 %62, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, ptr %63, align 8, !tbaa !50
  %66 = add nsw i32 %65, 1
  br label %67

67:                                               ; preds = %58, %64
  %68 = phi i32 [ %66, %64 ], [ 5, %58 ]
  store i32 %68, ptr %63, align 8, !tbaa !50
  %69 = load i32, ptr %8, align 4, !tbaa !9
  br label %70

70:                                               ; preds = %55, %67
  %71 = phi i32 [ %69, %67 ], [ -1, %55 ]
  %72 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 2
  store i32 %71, ptr %72, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  br label %73

73:                                               ; preds = %70, %54
  ret void
}

; Function Attrs: optsize
declare void @sk_initPoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sk_appendStrokePoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @sk_distanceDepth(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #21
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 2, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %8) #19
  %9 = call fastcc float @len_v3(ptr noundef nonnull %4) #21
  %10 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %4) #21
  %11 = fcmp ogt float %10, 0.000000e+00
  %12 = fneg float %9
  %13 = select i1 %11, float %12, float %9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret float %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_interpolateDepth(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 8
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %11 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %12 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !186
  %14 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds %struct.SK_Point, ptr %15, i64 %16
  %18 = getelementptr %struct.SK_Point, ptr %17, i64 -1
  %19 = tail call fastcc float @len_v3v3(ptr noundef %17, ptr noundef %18) #21
  %20 = icmp sgt i32 %2, %3
  br i1 %20, label %42, label %21

21:                                               ; preds = %6
  %22 = add i32 %3, 1
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ %16, %21 ], [ %28, %23 ]
  %25 = phi float [ %19, %21 ], [ %39, %23 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  %26 = load ptr, ptr %14, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.SK_Point, ptr %26, i64 %24
  %28 = add nsw i64 %24, 1
  %29 = getelementptr inbounds %struct.SK_Point, ptr %26, i64 %28
  %30 = call fastcc float @len_v3v3(ptr noundef %27, ptr noundef %29) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  store i64 0, ptr %9, align 8
  %31 = load ptr, ptr %14, align 8, !tbaa !69
  %32 = getelementptr inbounds %struct.SK_Point, ptr %31, i64 %24
  %33 = call i32 @ED_view3d_project_float_global(ptr noundef %10, ptr noundef %32, ptr noundef nonnull %9, i32 noundef 0) #19
  %34 = call zeroext i8 @ED_view3d_win_to_ray(ptr noundef %10, ptr noundef %13, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 0) #19
  %35 = fmul float %25, %5
  %36 = fdiv float %35, %4
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %36) #21
  %37 = load ptr, ptr %14, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct.SK_Point, ptr %37, i64 %24
  call fastcc void @add_v3_v3(ptr noundef %38, ptr noundef nonnull %8) #21
  %39 = fadd float %25, %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  %40 = trunc i64 %28 to i32
  %41 = icmp eq i32 %22, %40
  br i1 %41, label %42, label %23, !llvm.loop !188

42:                                               ; preds = %23, %6
  ret void
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_win_to_ray(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @sketch_draw_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef signext %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.20) #19
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = tail call ptr @contextSketch(ptr noundef %0, i32 noundef 1) #21
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !189
  switch i16 %13, label %54 [
    i16 212, label %14
    i16 215, label %14
    i16 4, label %20
    i16 17, label %20
    i16 218, label %28
    i16 1, label %34
  ]

14:                                               ; preds = %5, %5
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %16 = load i16, ptr %15, align 2, !tbaa !192
  %17 = icmp ne i16 %16, 0
  %18 = load ptr, ptr %6, align 8, !tbaa !132
  %19 = zext i1 %17 to i32
  tail call void @RNA_boolean_set(ptr noundef %18, ptr noundef nonnull @.str.20, i32 noundef %19) #19
  br label %54

20:                                               ; preds = %5, %5
  %21 = trunc i32 %8 to i8
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !9
  store i32 %23, ptr %10, align 4, !tbaa !9
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !9
  %26 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  store i32 %25, ptr %26, align 4, !tbaa !9
  tail call fastcc void @sk_draw_stroke(ptr noundef %0, ptr noundef %11, ptr noundef %4, ptr noundef nonnull %10, i8 noundef zeroext %21) #21
  %27 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @ED_area_tag_redraw(ptr noundef %27) #19
  br label %54

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !193
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %30, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !135
  tail call void %32(ptr noundef %0, ptr noundef nonnull %1) #19
  %33 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @ED_area_tag_redraw(ptr noundef %33) #19
  br label %54

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !194
  %37 = icmp eq i16 %36, 2
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = icmp eq i16 %3, 0
  tail call void @sk_endContinuousStroke(ptr noundef %4) #19
  tail call void @sk_filterLastContinuousStroke(ptr noundef %4) #19
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  tail call void @sk_updateNextPoint(ptr noundef %11, ptr noundef %4) #19
  %41 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @ED_area_tag_redraw(ptr noundef %41) #19
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %43 = load ptr, ptr %9, align 8, !tbaa !136
  tail call void %42(ptr noundef %43) #19
  br label %54

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.SK_Stroke, ptr %4, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !43
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call fastcc void @sk_applyGesture(ptr noundef %0, ptr noundef %11) #21
  br label %49

49:                                               ; preds = %48, %44
  tail call void @sk_freeStroke(ptr noundef nonnull %4) #19
  %50 = getelementptr inbounds %struct.SK_Sketch, ptr %11, i64 0, i32 3
  store ptr null, ptr %50, align 8, !tbaa !122
  %51 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @ED_area_tag_redraw(ptr noundef %51) #19
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %53 = load ptr, ptr %9, align 8, !tbaa !136
  tail call void %52(ptr noundef %53) #19
  br label %54

54:                                               ; preds = %34, %49, %40, %5, %28, %20, %14
  %55 = phi i32 [ 1, %5 ], [ 4, %40 ], [ 4, %49 ], [ 1, %34 ], [ 2, %28 ], [ 1, %20 ], [ 1, %14 ]
  ret i32 %55
}

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sk_endContinuousStroke(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sk_filterLastContinuousStroke(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_applyGesture(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.SK_Gesture, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call fastcc void @sk_initGesture(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #21
  %4 = call i32 @sk_detectCutGesture(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2, %11
  %7 = phi ptr [ %12, %11 ], [ @GESTURE_ACTIONS, %2 ]
  %8 = getelementptr inbounds %struct.SK_GestureAction, ptr %7, i64 1, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !195
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !llvm.loop !197

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.SK_GestureAction, ptr %7, i64 1
  %13 = getelementptr inbounds %struct.SK_GestureAction, ptr %7, i64 1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !198
  %15 = call i32 %14(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %6, label %17, !llvm.loop !197

17:                                               ; preds = %11, %2
  %18 = phi ptr [ @sk_applyCutGesture, %2 ], [ %9, %11 ]
  call void %18(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #19
  br label %19

19:                                               ; preds = %6, %17
  call fastcc void @sk_freeGesture(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @sk_freeStroke(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_initGesture(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %4) #21
  %5 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 3
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #21
  %6 = tail call ptr @sk_createStroke() #19
  %7 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.SK_Sketch, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  store ptr %9, ptr %1, align 8, !tbaa !84
  %10 = tail call fastcc i32 @sk_getSelfIntersections(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %9) #21
  %11 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !74
  %12 = load ptr, ptr %1, align 8, !tbaa !84
  %13 = tail call fastcc i32 @sk_getIntersections(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, ptr noundef %12) #21
  %14 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  store i32 %13, ptr %14, align 4, !tbaa !64
  %15 = load ptr, ptr %7, align 8, !tbaa !75
  %16 = load ptr, ptr %1, align 8, !tbaa !84
  %17 = tail call fastcc i32 @sk_getSegments(ptr noundef %15, ptr noundef %16) #21
  %18 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  store i32 %17, ptr %18, align 8, !tbaa !62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_freeGesture(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Gesture, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  tail call void @sk_freeStroke(ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %4) #19
  %5 = getelementptr inbounds %struct.SK_Gesture, ptr %0, i64 0, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sk_getSelfIntersections(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca float, align 4
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %76

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 2
  br label %16

16:                                               ; preds = %14, %71
  %17 = phi i64 [ 0, %14 ], [ %24, %71 ]
  %18 = phi i64 [ 2, %14 ], [ %75, %71 ]
  %19 = phi i32 [ 0, %14 ], [ %73, %71 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %20 = load ptr, ptr %15, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.SK_Point, ptr %20, i64 %17
  %22 = call i32 @ED_view3d_project_float_global(ptr noundef %10, ptr noundef %21, ptr noundef nonnull %4, i32 noundef 0) #19
  %23 = load ptr, ptr %15, align 8, !tbaa !69
  %24 = add nuw nsw i64 %17, 1
  %25 = getelementptr inbounds %struct.SK_Point, ptr %23, i64 %24
  %26 = call i32 @ED_view3d_project_float_global(ptr noundef %10, ptr noundef nonnull %25, ptr noundef nonnull %5, i32 noundef 0) #19
  %27 = add nuw nsw i64 %17, 2
  %28 = load i32, ptr %11, align 8, !tbaa !43
  %29 = add nsw i32 %28, -1
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %16
  %33 = trunc i64 %17 to i32
  %34 = trunc i64 %24 to i32
  br label %35

35:                                               ; preds = %32, %63
  %36 = phi i64 [ %18, %32 ], [ %42, %63 ]
  %37 = phi i32 [ %19, %32 ], [ %64, %63 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %38 = load ptr, ptr %15, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct.SK_Point, ptr %38, i64 %36
  %40 = call i32 @ED_view3d_project_float_global(ptr noundef %10, ptr noundef nonnull %39, ptr noundef nonnull %6, i32 noundef 0) #19
  %41 = load ptr, ptr %15, align 8, !tbaa !69
  %42 = add nuw nsw i64 %36, 1
  %43 = getelementptr inbounds %struct.SK_Point, ptr %41, i64 %42
  %44 = call i32 @ED_view3d_project_float_global(ptr noundef %10, ptr noundef nonnull %43, ptr noundef nonnull %7, i32 noundef 0) #19
  %45 = call zeroext i8 @isect_line_line_strict_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %35
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %49 = call ptr %48(i64 noundef 56, ptr noundef nonnull @.str.38) #19
  %50 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 5
  %51 = trunc i64 %36 to i32
  store i32 %51, ptr %50, align 8, !tbaa !81
  %52 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 3
  store i32 %33, ptr %52, align 8, !tbaa !70
  %53 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 4
  store i32 %34, ptr %53, align 4, !tbaa !71
  %54 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 2
  store ptr %2, ptr %54, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 6
  %56 = load ptr, ptr %15, align 8, !tbaa !69
  %57 = getelementptr inbounds %struct.SK_Point, ptr %56, i64 %24
  %58 = getelementptr inbounds %struct.SK_Point, ptr %56, i64 %17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %55, ptr noundef nonnull %57, ptr noundef %58) #21
  %59 = load float, ptr %9, align 4, !tbaa !73
  call fastcc void @mul_v3_fl(ptr noundef nonnull %55, float noundef %59) #21
  %60 = load ptr, ptr %15, align 8, !tbaa !69
  %61 = getelementptr inbounds %struct.SK_Point, ptr %60, i64 %17
  call fastcc void @add_v3_v3(ptr noundef nonnull %55, ptr noundef %61) #21
  call void @BLI_addtail(ptr noundef %1, ptr noundef %49) #19
  %62 = add nsw i32 %37, 1
  br label %63

63:                                               ; preds = %47, %35
  %64 = phi i32 [ %62, %47 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  %65 = load i32, ptr %11, align 8, !tbaa !43
  %66 = add nsw i32 %65, -1
  %67 = trunc i64 %42 to i32
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %35, label %69, !llvm.loop !199

69:                                               ; preds = %63
  %70 = sext i32 %66 to i64
  br label %71

71:                                               ; preds = %69, %16
  %72 = phi i64 [ %70, %69 ], [ %30, %16 ]
  %73 = phi i32 [ %64, %69 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  %74 = icmp slt i64 %24, %72
  %75 = add nuw nsw i64 %18, 1
  br i1 %74, label %16, label %76, !llvm.loop !200

76:                                               ; preds = %71, %3
  %77 = phi i32 [ 0, %3 ], [ %73, %71 ]
  ret i32 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sk_getIntersections(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 8
  %10 = alloca float, align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [2 x float], align 8
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %16 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !186
  %18 = load ptr, ptr %2, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %93, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 3
  %22 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 2
  br label %23

23:                                               ; preds = %20, %88
  %24 = phi ptr [ %18, %20 ], [ %91, %88 ]
  %25 = phi i32 [ 0, %20 ], [ %90, %88 ]
  %26 = getelementptr inbounds %struct.SK_Stroke, ptr %24, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !43
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %88

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.SK_Stroke, ptr %24, i64 0, i32 2
  br label %31

31:                                               ; preds = %29, %82
  %32 = phi i64 [ 0, %29 ], [ %38, %82 ]
  %33 = phi i32 [ 0, %29 ], [ %83, %82 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %34 = load ptr, ptr %30, align 8, !tbaa !69
  %35 = getelementptr inbounds %struct.SK_Point, ptr %34, i64 %32
  %36 = call i32 @ED_view3d_project_float_global(ptr noundef %14, ptr noundef %35, ptr noundef nonnull %5, i32 noundef 0) #19
  %37 = load ptr, ptr %30, align 8, !tbaa !69
  %38 = add nuw nsw i64 %32, 1
  %39 = getelementptr inbounds %struct.SK_Point, ptr %37, i64 %38
  %40 = call i32 @ED_view3d_project_float_global(ptr noundef %14, ptr noundef nonnull %39, ptr noundef nonnull %6, i32 noundef 0) #19
  %41 = load i32, ptr %21, align 8, !tbaa !43
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %82

43:                                               ; preds = %31
  %44 = trunc i64 %32 to i32
  %45 = trunc i64 %38 to i32
  br label %46

46:                                               ; preds = %43, %76
  %47 = phi i64 [ 0, %43 ], [ %53, %76 ]
  %48 = phi i32 [ %33, %43 ], [ %77, %76 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  %49 = load ptr, ptr %22, align 8, !tbaa !69
  %50 = getelementptr inbounds %struct.SK_Point, ptr %49, i64 %47
  %51 = call i32 @ED_view3d_project_float_global(ptr noundef %14, ptr noundef %50, ptr noundef nonnull %7, i32 noundef 0) #19
  %52 = load ptr, ptr %22, align 8, !tbaa !69
  %53 = add nuw nsw i64 %47, 1
  %54 = getelementptr inbounds %struct.SK_Point, ptr %52, i64 %53
  %55 = call i32 @ED_view3d_project_float_global(ptr noundef %14, ptr noundef nonnull %54, ptr noundef nonnull %8, i32 noundef 0) #19
  %56 = call zeroext i8 @isect_line_line_strict_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %46
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %60 = call ptr %59(i64 noundef 56, ptr noundef nonnull @.str.38) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #20
  %61 = getelementptr inbounds %struct.SK_Intersection, ptr %60, i64 0, i32 5
  %62 = trunc i64 %47 to i32
  store i32 %62, ptr %61, align 8, !tbaa !81
  %63 = getelementptr inbounds %struct.SK_Intersection, ptr %60, i64 0, i32 3
  store i32 %44, ptr %63, align 8, !tbaa !70
  %64 = getelementptr inbounds %struct.SK_Intersection, ptr %60, i64 0, i32 4
  store i32 %45, ptr %64, align 4, !tbaa !71
  %65 = getelementptr inbounds %struct.SK_Intersection, ptr %60, i64 0, i32 2
  store ptr %24, ptr %65, align 8, !tbaa !67
  %66 = load float, ptr %10, align 4, !tbaa !73
  %67 = getelementptr inbounds %struct.SK_Intersection, ptr %60, i64 0, i32 7
  store float %66, ptr %67, align 8, !tbaa !201
  %68 = load <2 x float>, ptr %9, align 8, !tbaa !73
  store <2 x float> %68, ptr %13, align 8, !tbaa !73
  %69 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %14, ptr noundef %17, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 1) #19
  %70 = load ptr, ptr %30, align 8, !tbaa !69
  %71 = getelementptr inbounds %struct.SK_Point, ptr %70, i64 %32
  %72 = getelementptr inbounds %struct.SK_Point, ptr %70, i64 %38
  %73 = getelementptr inbounds %struct.SK_Intersection, ptr %60, i64 0, i32 6
  %74 = call i32 @isect_line_line_v3(ptr noundef %71, ptr noundef nonnull %72, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %73, ptr noundef nonnull %9) #19
  call void @BLI_addtail(ptr noundef %1, ptr noundef %60) #19
  %75 = add nsw i32 %48, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #20
  br label %76

76:                                               ; preds = %58, %46
  %77 = phi i32 [ %75, %58 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  %78 = load i32, ptr %21, align 8, !tbaa !43
  %79 = add nsw i32 %78, -1
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %53, %80
  br i1 %81, label %46, label %82, !llvm.loop !202

82:                                               ; preds = %76, %31
  %83 = phi i32 [ %33, %31 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  %84 = load i32, ptr %26, align 8, !tbaa !43
  %85 = add nsw i32 %84, -1
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %38, %86
  br i1 %87, label %31, label %88, !llvm.loop !203

88:                                               ; preds = %82, %23
  %89 = phi i32 [ 0, %23 ], [ %83, %82 ]
  %90 = call i32 @llvm.smax.i32(i32 %89, i32 %25)
  %91 = load ptr, ptr %24, align 8, !tbaa !5
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %23, !llvm.loop !204

93:                                               ; preds = %88, %4
  %94 = phi i32 [ 0, %4 ], [ %90, %88 ]
  call void @BLI_sortlist(ptr noundef %1, ptr noundef nonnull @cmpIntersections) #19
  ret i32 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sk_getSegments(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.SK_StrokeIterator, align 8
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #20
  %5 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  tail call void @sk_appendStrokePoint(ptr noundef %0, ptr noundef %6) #19
  %7 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = add nsw i32 %12, -1
  call void @initStrokeIterator(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0, i32 noundef %13) #21
  %14 = load i32, ptr %11, align 8, !tbaa !43
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = sext i32 %14 to i64
  br label %49

18:                                               ; preds = %2
  %19 = sext i32 %10 to i64
  %20 = getelementptr %struct.SK_Point, ptr %8, i64 %19
  %21 = getelementptr %struct.SK_Point, ptr %20, i64 -1
  br label %22

22:                                               ; preds = %18, %42
  %23 = phi i64 [ 1, %18 ], [ %45, %42 ]
  %24 = phi i32 [ 0, %18 ], [ %44, %42 ]
  %25 = phi ptr [ %21, %18 ], [ %43, %42 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %26 = load ptr, ptr %5, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.SK_Point, ptr %26, i64 %23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %27, ptr noundef %25) #21
  %28 = trunc i64 %23 to i32
  %29 = call float @calcArcCorrelation(ptr noundef nonnull %3, i32 noundef %24, i32 noundef %28, ptr noundef %25, ptr noundef nonnull %4) #19
  %30 = fcmp olt float %29, 0x3FEFAE1480000000
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = add nsw i64 %23, -1
  %33 = load ptr, ptr %5, align 8, !tbaa !69
  %34 = getelementptr inbounds %struct.SK_Point, ptr %33, i64 %32
  call void @sk_appendStrokePoint(ptr noundef %0, ptr noundef %34) #19
  %35 = load ptr, ptr %7, align 8, !tbaa !69
  %36 = load i32, ptr %9, align 8, !tbaa !43
  %37 = sext i32 %36 to i64
  %38 = getelementptr %struct.SK_Point, ptr %35, i64 %37
  %39 = getelementptr %struct.SK_Point, ptr %38, i64 -1
  %40 = getelementptr %struct.SK_Point, ptr %38, i64 -1, i32 4
  store i32 1, ptr %40, align 4, !tbaa !65
  %41 = trunc i64 %32 to i32
  br label %42

42:                                               ; preds = %31, %22
  %43 = phi ptr [ %39, %31 ], [ %25, %22 ]
  %44 = phi i32 [ %41, %31 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  %45 = add nuw nsw i64 %23, 1
  %46 = load i32, ptr %11, align 8, !tbaa !43
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %22, label %49, !llvm.loop !205

49:                                               ; preds = %42, %16
  %50 = phi i64 [ %17, %16 ], [ %47, %42 ]
  %51 = load ptr, ptr %5, align 8, !tbaa !69
  %52 = getelementptr %struct.SK_Point, ptr %51, i64 %50
  %53 = getelementptr %struct.SK_Point, ptr %52, i64 -1
  call void @sk_appendStrokePoint(ptr noundef %0, ptr noundef %53) #19
  %54 = load i32, ptr %9, align 8, !tbaa !43
  %55 = add nsw i32 %54, -1
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #20
  ret i32 %55
}

; Function Attrs: optsize
declare zeroext i8 @isect_line_line_strict_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_win_to_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef i32 @cmpIntersections(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.SK_Intersection, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.SK_Intersection, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SK_Intersection, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.SK_Intersection, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !70
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = icmp sgt i32 %10, %12
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.SK_Intersection, ptr %0, i64 0, i32 7
  %18 = load float, ptr %17, align 8, !tbaa !201
  %19 = getelementptr inbounds %struct.SK_Intersection, ptr %1, i64 0, i32 7
  %20 = load float, ptr %19, align 8, !tbaa !201
  %21 = fcmp olt float %18, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = fcmp ogt float %18, %20
  br i1 %23, label %25, label %24

24:                                               ; preds = %22, %2
  br label %25

25:                                               ; preds = %22, %16, %14, %8, %24
  %26 = phi i32 [ 0, %24 ], [ -1, %8 ], [ 1, %14 ], [ -1, %16 ], [ 1, %22 ]
  ret i32 %26
}

; Function Attrs: optsize
declare float @calcArcCorrelation(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sk_start_draw_gesture(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  %2 = tail call ptr @sk_createStroke() #19
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 3
  store ptr %2, ptr %3, align 8, !tbaa !122
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !6, i64 32}
!12 = !{!"Base", !6, i64 0, !6, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !13, i64 28, !13, i64 30, !6, i64 32}
!13 = !{!"short", !7, i64 0}
!14 = !{!15, !13, i64 136}
!15 = !{!"Object", !16, i64 0, !6, i64 120, !6, i64 128, !13, i64 136, !13, i64 138, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !17, i64 312, !6, i64 360, !18, i64 368, !18, i64 384, !18, i64 400, !18, i64 416, !10, i64 432, !10, i64 436, !6, i64 440, !6, i64 448, !10, i64 456, !10, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !19, i64 616, !19, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !10, i64 944, !13, i64 948, !13, i64 950, !13, i64 952, !13, i64 954, !13, i64 956, !13, i64 958, !13, i64 960, !13, i64 962, !13, i64 964, !7, i64 966, !7, i64 967, !10, i64 968, !10, i64 972, !10, i64 976, !10, i64 980, !10, i64 984, !19, i64 988, !19, i64 992, !19, i64 996, !19, i64 1000, !19, i64 1004, !19, i64 1008, !19, i64 1012, !19, i64 1016, !19, i64 1020, !19, i64 1024, !19, i64 1028, !19, i64 1032, !13, i64 1036, !13, i64 1038, !13, i64 1040, !7, i64 1042, !7, i64 1043, !13, i64 1044, !7, i64 1046, !7, i64 1047, !19, i64 1048, !19, i64 1052, !18, i64 1056, !18, i64 1072, !18, i64 1088, !18, i64 1104, !19, i64 1120, !13, i64 1124, !13, i64 1126, !7, i64 1128, !10, i64 1144, !10, i64 1148, !6, i64 1152, !7, i64 1160, !7, i64 1161, !13, i64 1162, !7, i64 1164, !18, i64 1176, !18, i64 1192, !18, i64 1208, !18, i64 1224, !6, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1265, !13, i64 1266, !19, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !20, i64 1304, !20, i64 1312, !10, i64 1320, !10, i64 1324, !18, i64 1328, !18, i64 1344, !6, i64 1360, !6, i64 1368, !6, i64 1376, !7, i64 1384, !6, i64 1392, !18, i64 1400, !6, i64 1416}
!16 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !13, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !6, i64 112}
!17 = !{!"bAnimVizSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!18 = !{!"ListBase", !6, i64 0, !6, i64 8}
!19 = !{!"float", !7, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!22, !6, i64 400}
!22 = !{!"ToolSettings", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !19, i64 32, !19, i64 36, !19, i64 40, !13, i64 44, !13, i64 46, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51, !19, i64 52, !13, i64 56, !7, i64 58, !7, i64 59, !23, i64 64, !25, i64 168, !19, i64 336, !19, i64 340, !13, i64 344, !13, i64 346, !7, i64 348, !7, i64 349, !13, i64 350, !19, i64 352, !19, i64 356, !19, i64 360, !19, i64 364, !19, i64 368, !19, i64 372, !19, i64 376, !19, i64 380, !19, i64 384, !19, i64 388, !13, i64 392, !7, i64 394, !7, i64 395, !7, i64 396, !7, i64 399, !6, i64 400, !7, i64 408, !7, i64 409, !7, i64 410, !7, i64 411, !7, i64 412, !7, i64 413, !7, i64 421, !7, i64 429, !7, i64 430, !7, i64 431, !7, i64 432, !7, i64 433, !13, i64 434, !13, i64 436, !13, i64 438, !13, i64 440, !7, i64 442, !7, i64 443, !7, i64 444, !7, i64 445, !7, i64 446, !7, i64 447, !10, i64 448, !10, i64 452, !10, i64 456, !10, i64 460, !13, i64 464, !13, i64 466, !10, i64 468, !19, i64 472, !19, i64 476, !26, i64 480, !27, i64 608}
!23 = !{!"ImagePaintSettings", !24, i64 0, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !7, i64 48, !10, i64 52, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !19, i64 100}
!24 = !{!"Paint", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!25 = !{!"ParticleEditSettings", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !7, i64 8, !6, i64 120, !19, i64 128, !19, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !6, i64 152, !6, i64 160}
!26 = !{!"UnifiedPaintSettings", !10, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !7, i64 16, !7, i64 28, !10, i64 40, !7, i64 44, !19, i64 52, !10, i64 56, !10, i64 60, !7, i64 64, !7, i64 65, !19, i64 72, !7, i64 76, !10, i64 84, !19, i64 88, !7, i64 92, !7, i64 100, !10, i64 108, !6, i64 112, !19, i64 120, !10, i64 124}
!27 = !{!"MeshStatVis", !7, i64 0, !7, i64 1, !7, i64 3, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !7, i64 20, !7, i64 21, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i8 0, i8 2}
!31 = !{!32, !6, i64 8}
!32 = !{!"GHashIterator", !6, i64 0, !6, i64 8, !10, i64 16}
!33 = !{!34, !6, i64 16}
!34 = !{!"_gh_Entry", !6, i64 0, !6, i64 8, !6, i64 16}
!35 = !{!34, !6, i64 8}
!36 = !{!37, !6, i64 152}
!37 = !{!"RigGraph", !18, i64 0, !18, i64 16, !19, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !10, i64 72, !18, i64 80, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!38 = !{!15, !6, i64 296}
!39 = !{!40, !6, i64 32}
!40 = !{!"SK_Sketch", !18, i64 0, !18, i64 16, !6, i64 32, !6, i64 40, !41, i64 48, !42, i64 88}
!41 = !{!"SK_Point", !7, i64 0, !7, i64 12, !7, i64 16, !19, i64 28, !10, i64 32, !10, i64 36}
!42 = !{!"SK_Overdraw", !6, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!43 = !{!44, !10, i64 24}
!44 = !{!"SK_Stroke", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!45 = !{!46, !6, i64 184}
!46 = !{!"bArmature", !16, i64 0, !6, i64 120, !18, i64 128, !18, i64 144, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !13, i64 208, !13, i64 210, !10, i64 212, !10, i64 216, !10, i64 220, !13, i64 224, !13, i64 226, !13, i64 228, !13, i64 230, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252}
!47 = !{!40, !6, i64 88}
!48 = !{!40, !10, i64 96}
!49 = !{!40, !10, i64 100}
!50 = !{!40, !10, i64 104}
!51 = !{!52, !6, i64 88}
!52 = !{!"SK_StrokeIterator", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !19, i64 72, !10, i64 76, !10, i64 80, !6, i64 88, !10, i64 96, !10, i64 100, !10, i64 104}
!53 = !{!52, !10, i64 76}
!54 = !{!52, !10, i64 80}
!55 = !{!52, !6, i64 0}
!56 = !{!52, !6, i64 8}
!57 = !{!52, !6, i64 16}
!58 = !{!52, !6, i64 24}
!59 = !{!52, !6, i64 32}
!60 = !{!52, !6, i64 40}
!61 = !{!52, !6, i64 48}
!62 = !{!63, !10, i64 56}
!63 = !{!"SK_Gesture", !6, i64 0, !6, i64 8, !18, i64 16, !18, i64 32, !10, i64 48, !10, i64 52, !10, i64 56}
!64 = !{!63, !10, i64 52}
!65 = !{!41, !10, i64 32}
!66 = !{!41, !10, i64 36}
!67 = !{!68, !6, i64 16}
!68 = !{!"SK_Intersection", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 36, !19, i64 48}
!69 = !{!44, !6, i64 16}
!70 = !{!68, !10, i64 24}
!71 = !{!68, !10, i64 28}
!72 = distinct !{!72, !29}
!73 = !{!19, !19, i64 0}
!74 = !{!63, !10, i64 48}
!75 = !{!63, !6, i64 8}
!76 = distinct !{!76, !29}
!77 = !{!63, !6, i64 16}
!78 = !{!68, !6, i64 0}
!79 = distinct !{!79, !29}
!80 = !{!63, !6, i64 32}
!81 = !{!68, !10, i64 32}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = !{!63, !6, i64 0}
!85 = !{!13, !13, i64 0}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = !{!44, !10, i64 32}
!93 = !{!22, !7, i64 409}
!94 = distinct !{!94, !29}
!95 = !{i32 0, i32 2}
!96 = !{!97, !6, i64 0}
!97 = !{!"ViewContext", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !7, i64 56}
!98 = !{!97, !6, i64 16}
!99 = !{!100, !6, i64 264}
!100 = !{!"Scene", !16, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !18, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !10, i64 232, !10, i64 236, !10, i64 240, !13, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !101, i64 280, !110, i64 4264, !18, i64 4296, !18, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !13, i64 4376, !13, i64 4378, !10, i64 4380, !18, i64 4384, !111, i64 4400, !112, i64 4416, !115, i64 4600, !6, i64 4608, !116, i64 4616, !6, i64 4640, !20, i64 4648, !20, i64 4656, !103, i64 4664, !104, i64 4824, !117, i64 4888, !6, i64 4952}
!101 = !{!"RenderData", !102, i64 0, !6, i64 248, !6, i64 256, !105, i64 264, !106, i64 328, !10, i64 400, !10, i64 404, !10, i64 408, !19, i64 412, !10, i64 416, !10, i64 420, !10, i64 424, !10, i64 428, !13, i64 432, !13, i64 434, !19, i64 436, !19, i64 440, !19, i64 444, !19, i64 448, !19, i64 452, !13, i64 456, !13, i64 458, !13, i64 460, !13, i64 462, !13, i64 464, !13, i64 466, !10, i64 468, !13, i64 472, !13, i64 474, !13, i64 476, !13, i64 478, !13, i64 480, !13, i64 482, !10, i64 484, !10, i64 488, !13, i64 492, !13, i64 494, !10, i64 496, !10, i64 500, !13, i64 504, !13, i64 506, !13, i64 508, !13, i64 510, !13, i64 512, !7, i64 514, !7, i64 515, !10, i64 516, !10, i64 520, !10, i64 524, !13, i64 528, !13, i64 530, !13, i64 532, !13, i64 534, !13, i64 536, !13, i64 538, !13, i64 540, !13, i64 542, !107, i64 544, !107, i64 560, !108, i64 576, !18, i64 592, !13, i64 608, !13, i64 610, !19, i64 612, !19, i64 616, !19, i64 620, !19, i64 624, !10, i64 628, !19, i64 632, !19, i64 636, !19, i64 640, !19, i64 644, !13, i64 648, !13, i64 650, !13, i64 652, !13, i64 654, !13, i64 656, !13, i64 658, !19, i64 660, !19, i64 664, !13, i64 668, !13, i64 670, !19, i64 672, !19, i64 676, !7, i64 680, !10, i64 1704, !13, i64 1708, !13, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !10, i64 2520, !13, i64 2524, !13, i64 2526, !19, i64 2528, !19, i64 2532, !13, i64 2536, !13, i64 2538, !19, i64 2540, !13, i64 2544, !13, i64 2546, !10, i64 2548, !13, i64 2552, !13, i64 2554, !13, i64 2556, !13, i64 2558, !19, i64 2560, !19, i64 2564, !6, i64 2568, !10, i64 2576, !19, i64 2580, !7, i64 2584, !109, i64 2616, !10, i64 3976, !10, i64 3980}
!102 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !13, i64 8, !13, i64 10, !19, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !103, i64 24, !104, i64 184}
!103 = !{!"ColorManagedViewSettings", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 72, !19, i64 136, !19, i64 140, !6, i64 144, !6, i64 152}
!104 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!105 = !{!"QuicktimeCodecSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !13, i64 48, !13, i64 50, !10, i64 52, !10, i64 56, !10, i64 60}
!106 = !{!"FFMpegCodecData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !19, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !6, i64 64}
!107 = !{!"rctf", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!108 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!109 = !{!"BakeData", !102, i64 0, !7, i64 248, !13, i64 1272, !13, i64 1274, !13, i64 1276, !13, i64 1278, !19, i64 1280, !19, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!110 = !{!"AudioData", !10, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !10, i64 16, !13, i64 20, !13, i64 22, !19, i64 24, !19, i64 28}
!111 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!112 = !{!"GameData", !111, i64 0, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !13, i64 32, !7, i64 34, !113, i64 40, !13, i64 64, !13, i64 66, !19, i64 68, !114, i64 72, !19, i64 128, !19, i64 132, !10, i64 136, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180}
!113 = !{!"GameDome", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !19, i64 8, !19, i64 12, !6, i64 16}
!114 = !{!"RecastData", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !10, i64 40, !19, i64 44, !19, i64 48, !13, i64 52, !13, i64 54}
!115 = !{!"UnitSettings", !19, i64 0, !7, i64 4, !7, i64 5, !13, i64 6}
!116 = !{!"PhysicsSettings", !7, i64 0, !10, i64 12, !10, i64 16, !10, i64 20}
!117 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!118 = !{!22, !7, i64 408}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !29}
!121 = !{!40, !10, i64 84}
!122 = !{!40, !6, i64 40}
!123 = !{!124, !6, i64 0}
!124 = !{!"wmOperatorType", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !18, i64 112, !6, i64 128, !6, i64 136, !6, i64 144, !125, i64 152, !13, i64 184}
!125 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!126 = !{!124, !6, i64 8}
!127 = !{!124, !6, i64 24}
!128 = !{!124, !6, i64 48}
!129 = !{!124, !6, i64 72}
!130 = !{!124, !13, i64 184}
!131 = !{!124, !6, i64 88}
!132 = !{!133, !6, i64 112}
!133 = !{!"wmOperator", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !18, i64 128, !6, i64 144, !6, i64 152, !13, i64 160, !7, i64 162}
!134 = !{!124, !6, i64 64}
!135 = !{!124, !6, i64 56}
!136 = !{!133, !6, i64 96}
!137 = !{i32 1, i32 5}
!138 = !{!52, !10, i64 96}
!139 = !{!52, !10, i64 104}
!140 = !{!52, !6, i64 56}
!141 = !{!52, !6, i64 64}
!142 = !{!41, !19, i64 28}
!143 = !{!52, !19, i64 72}
!144 = !{!52, !10, i64 100}
!145 = !{!146, !6, i64 16}
!146 = !{!"ReebArc", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !19, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !18, i64 56, !10, i64 72, !6, i64 80, !6, i64 88, !19, i64 96, !6, i64 104}
!147 = !{!146, !6, i64 24}
!148 = !{!46, !6, i64 160}
!149 = !{!150, !10, i64 132}
!150 = !{!"EditBone", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !19, i64 104, !7, i64 108, !7, i64 120, !10, i64 132, !10, i64 136, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !13, i64 180}
!151 = !{!150, !6, i64 24}
!152 = distinct !{!152, !29}
!153 = distinct !{!153, !29}
!154 = !{!146, !10, i64 72}
!155 = !{!146, !6, i64 80}
!156 = distinct !{!156, !29}
!157 = !{!22, !7, i64 411}
!158 = !{!7, !7, i64 0}
!159 = distinct !{!159, !29}
!160 = distinct !{!160, !29}
!161 = distinct !{!161, !29}
!162 = !{!163, !10, i64 76}
!163 = !{!"BArcIterator", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !19, i64 72, !10, i64 76, !10, i64 80}
!164 = !{!163, !6, i64 0}
!165 = !{!163, !6, i64 56}
!166 = !{ptr @nextAdaptativeSubdivision, ptr @nextFixedSubdivision, ptr @nextLengthSubdivision}
!167 = distinct !{!167, !29}
!168 = !{!22, !7, i64 431}
!169 = !{!170, !10, i64 56}
!170 = !{!"DepthPeel", !6, i64 0, !6, i64 8, !19, i64 16, !7, i64 20, !7, i64 32, !6, i64 48, !10, i64 56}
!171 = !{!22, !13, i64 434}
!172 = !{!170, !6, i64 0}
!173 = !{!170, !6, i64 48}
!174 = distinct !{!174, !29}
!175 = distinct !{!175, !29}
!176 = distinct !{!176, !29}
!177 = !{!178, !10, i64 16}
!178 = !{!"SK_DrawData", !7, i64 0, !7, i64 8, !10, i64 16}
!179 = distinct !{!179, !29}
!180 = distinct !{!180, !29}
!181 = !{!182, !6, i64 376}
!182 = !{!"ARegion", !6, i64 0, !6, i64 8, !183, i64 16, !108, i64 176, !108, i64 192, !13, i64 208, !13, i64 210, !13, i64 212, !13, i64 214, !13, i64 216, !13, i64 218, !19, i64 220, !13, i64 224, !13, i64 226, !13, i64 228, !13, i64 230, !13, i64 232, !13, i64 234, !13, i64 236, !13, i64 238, !6, i64 240, !18, i64 248, !18, i64 264, !18, i64 280, !18, i64 296, !18, i64 312, !18, i64 328, !18, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!183 = !{!"View2D", !107, i64 0, !107, i64 16, !108, i64 32, !108, i64 48, !108, i64 64, !7, i64 80, !7, i64 88, !19, i64 96, !19, i64 100, !13, i64 104, !13, i64 106, !13, i64 108, !13, i64 110, !13, i64 112, !13, i64 114, !13, i64 116, !13, i64 118, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !6, i64 128, !10, i64 136, !10, i64 140, !6, i64 144, !6, i64 152}
!184 = distinct !{!184, !29}
!185 = distinct !{!185, !29}
!186 = !{!187, !6, i64 96}
!187 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !108, i64 56, !7, i64 72, !7, i64 73, !13, i64 74, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !13, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !18, i64 96, !18, i64 112, !18, i64 128, !18, i64 144}
!188 = distinct !{!188, !29}
!189 = !{!190, !13, i64 16}
!190 = !{!"wmEvent", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 18, !10, i64 20, !10, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !13, i64 44, !13, i64 46, !10, i64 48, !10, i64 52, !191, i64 56, !10, i64 64, !10, i64 68, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !6, i64 88, !6, i64 96, !13, i64 104, !13, i64 106, !10, i64 108, !6, i64 112}
!191 = !{!"double", !7, i64 0}
!192 = !{!190, !13, i64 74}
!193 = !{!133, !6, i64 88}
!194 = !{!190, !13, i64 18}
!195 = !{!196, !6, i64 72}
!196 = !{!"SK_GestureAction", !7, i64 0, !6, i64 64, !6, i64 72}
!197 = distinct !{!197, !29}
!198 = !{!196, !6, i64 64}
!199 = distinct !{!199, !29}
!200 = distinct !{!200, !29}
!201 = !{!68, !19, i64 48}
!202 = distinct !{!202, !29}
!203 = distinct !{!203, !29}
!204 = distinct !{!204, !29}
!205 = distinct !{!205, !29}
