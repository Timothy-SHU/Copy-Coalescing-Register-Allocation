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
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.SK_Sketch = type { %struct.ListBase, %struct.ListBase, ptr, ptr, %struct.SK_Point, %struct.SK_Overdraw }
%struct.SK_Point = type { [3 x float], [2 x i16], [3 x float], float, i32, i32 }
%struct.SK_Overdraw = type { ptr, i32, i32, i32 }
%struct.SK_Stroke = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.SK_StrokeIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32, ptr, i32, i32, i32 }
%struct.SK_Gesture = type { ptr, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i32 }
%struct.SK_Intersection = type { ptr, ptr, ptr, i32, i32, i32, [3 x float], float }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SK_DrawData = type { [2 x i32], [2 x i32], i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ReebNode = type { ptr, ptr, [3 x float], i32, i32, ptr, i32, i32, i32, [3 x float], [3 x float], i32, float, i32, ptr, ptr }
%struct.ReebArc = type { ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, %struct.ListBase, i32, ptr, ptr, float, ptr }
%struct.EmbedBucket = type { float, i32, [3 x float], [3 x float] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
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
@__const.sk_drawEdge.vec2 = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@LAST_SNAP_POINT_VALID = internal unnamed_addr global i1 false, align 4
@LAST_SNAP_POINT = internal global [3 x float] zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [15 x i8] c"SketchDrawData\00", align 1
@GESTURE_ACTIONS = internal unnamed_addr constant [8 x %struct.SK_GestureAction] [%struct.SK_GestureAction { [64 x i8] c"Cut\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectCutGesture, ptr @sk_applyCutGesture }, %struct.SK_GestureAction { [64 x i8] c"Trim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectTrimGesture, ptr @sk_applyTrimGesture }, %struct.SK_GestureAction { [64 x i8] c"Command\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectCommandGesture, ptr @sk_applyCommandGesture }, %struct.SK_GestureAction { [64 x i8] c"Delete\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectDeleteGesture, ptr @sk_applyDeleteGesture }, %struct.SK_GestureAction { [64 x i8] c"Merge\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectMergeGesture, ptr @sk_applyMergeGesture }, %struct.SK_GestureAction { [64 x i8] c"Reverse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectReverseGesture, ptr @sk_applyReverseGesture }, %struct.SK_GestureAction { [64 x i8] c"Convert\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sk_detectConvertGesture, ptr @sk_applyConvertGesture }, %struct.SK_GestureAction zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [13 x i8] c"Intersection\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BIF_makeListTemplates(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %5 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @BLI_ghash_free(ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #17
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @.str) #17
  store ptr %9, ptr @TEMPLATES_HASH, align 8, !tbaa !34
  store i32 0, ptr @TEMPLATES_CURRENT, align 4, !tbaa !38
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 41
  br label %15

15:                                               ; preds = %13, %33
  %16 = phi ptr [ %11, %13 ], [ %35, %33 ]
  %17 = phi i32 [ 0, %13 ], [ %34, %33 ]
  %18 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !43
  %24 = icmp eq i16 %23, 25
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = add nsw i32 %17, 1
  %27 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !34
  %28 = sext i32 %26 to i64
  %29 = inttoptr i64 %28 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %27, ptr noundef %29, ptr noundef %19) #17
  %30 = load ptr, ptr %14, align 8, !tbaa !50
  %31 = icmp eq ptr %19, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 %26, ptr @TEMPLATES_CURRENT, align 4, !tbaa !38
  br label %33

33:                                               ; preds = %25, %32, %21, %15
  %34 = phi i32 [ %26, %32 ], [ %26, %25 ], [ %17, %21 ], [ %17, %15 ]
  %35 = load ptr, ptr %16, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !57

37:                                               ; preds = %33, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BIF_currentTemplate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = load i32, ptr @TEMPLATES_CURRENT, align 4, !tbaa !38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 41
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %11 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !34
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %11) #17
  %12 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  br label %13

13:                                               ; preds = %27, %10
  %14 = load ptr, ptr %12, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._gh_Entry, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = load ptr, ptr %7, align 8, !tbaa !50
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct._gh_Entry, ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = ptrtoint ptr %23 to i64
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr @TEMPLATES_CURRENT, align 4, !tbaa !38
  br label %27

26:                                               ; preds = %16
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #17
  br label %27

27:                                               ; preds = %26, %21
  br i1 %20, label %28, label %13

28:                                               ; preds = %27, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %29

29:                                               ; preds = %28, %6, %1
  %30 = load i32, ptr @TEMPLATES_CURRENT, align 4, !tbaa !38
  ret i32 %30
}

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BIF_nbJointsTemplate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.ToolSettings, ptr %2, i64 0, i32 41
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = icmp eq ptr %4, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.RigGraph, ptr %10, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = icmp eq ptr %14, %4
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @RIG_freeRigGraph(ptr noundef nonnull %10) #17
  store ptr null, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %16, %12, %9
  %18 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = tail call ptr @RIG_graphFromArmature(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %22) #17
  store ptr %23, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %20, %17, %7
  %25 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %26

26:                                               ; preds = %1, %24
  %27 = phi ptr [ %25, %24 ], [ null, %1 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @RIG_nbJoints(ptr noundef nonnull %27) #17
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi i32 [ %30, %29 ], [ -1, %26 ]
  ret i32 %32
}

declare i32 @RIG_nbJoints(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BIF_nameBoneTemplate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call ptr @createSketch() #17
  store ptr %16, ptr %12, align 8, !tbaa !68
  br label %17

17:                                               ; preds = %15, %9
  %18 = load ptr, ptr %12, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %1, %5, %17
  %20 = phi ptr [ %18, %17 ], [ null, %5 ], [ null, %1 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.SK_Sketch, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.SK_Stroke, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !74
  br label %29

29:                                               ; preds = %26, %22, %19
  %30 = phi i32 [ %28, %26 ], [ 0, %22 ], [ 0, %19 ]
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %2, i64 0, i32 41
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %54, label %35

35:                                               ; preds = %29
  %36 = icmp eq ptr %32, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.RigGraph, ptr %38, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !65
  %43 = icmp eq ptr %42, %32
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @RIG_freeRigGraph(ptr noundef nonnull %38) #17
  store ptr null, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %45

45:                                               ; preds = %44, %40, %37
  %46 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !67
  %51 = tail call ptr @RIG_graphFromArmature(ptr noundef %0, ptr noundef nonnull %32, ptr noundef %50) #17
  store ptr %51, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %52

52:                                               ; preds = %48, %45, %35
  %53 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %54

54:                                               ; preds = %29, %52
  %55 = phi ptr [ %53, %52 ], [ null, %29 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = tail call ptr @RIG_nameBone(ptr noundef nonnull %55, i32 noundef 0, i32 noundef %30) #17
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi ptr [ %58, %57 ], [ @.str.1, %54 ]
  ret ptr %60
}

; Function Attrs: nounwind uwtable
define dso_local ptr @contextSketch(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = icmp eq ptr %13, null
  %15 = icmp ne i32 %1, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = tail call ptr @createSketch() #17
  store ptr %18, ptr %12, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %17, %9
  %20 = load ptr, ptr %12, align 8, !tbaa !68
  br label %21

21:                                               ; preds = %19, %5, %2
  %22 = phi ptr [ %20, %19 ], [ null, %5 ], [ null, %2 ]
  ret ptr %22
}

declare ptr @RIG_nameBone(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_freeTemplates(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @BLI_ghash_free(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #17
  store ptr null, ptr @TEMPLATES_HASH, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @RIG_freeRigGraph(ptr noundef nonnull %6) #17
  store ptr null, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

declare void @RIG_freeRigGraph(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_setTemplate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load ptr, ptr @TEMPLATES_HASH, align 8, !tbaa !34
  %7 = zext nneg i32 %1 to i64
  %8 = inttoptr i64 %7 to ptr
  %9 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %8) #17
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 41
  store ptr %9, ptr %10, align 8, !tbaa !50
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 41
  store ptr null, ptr %12, align 8, !tbaa !50
  %13 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @RIG_freeRigGraph(ptr noundef nonnull %13) #17
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %16, %5
  ret void
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sk_resetOverdraw(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5
  store ptr null, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 1
  store i32 -1, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 2
  store i32 -1, ptr %4, align 4, !tbaa !78
  %5 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 3
  store i32 0, ptr %5, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sk_hasOverdraw(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = icmp sgt i32 %8, 4
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, %1
  %12 = icmp eq ptr %1, null
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !77
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 5, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !78
  %21 = icmp ne i32 %20, -1
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %14, %18, %10, %6, %2
  %24 = phi i32 [ 0, %6 ], [ 0, %2 ], [ 0, %10 ], [ 1, %14 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @initStrokeIterator(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  store ptr @headPoint, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 1
  store ptr @tailPoint, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 2
  store ptr @peekPoint, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 3
  store ptr @nextPoint, ptr %7, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 4
  store ptr @nextNPoint, ptr %8, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 5
  store ptr @previousPoint, ptr %9, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 6
  store ptr @iteratorStopped, ptr %10, align 8, !tbaa !87
  %11 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  store ptr %1, ptr %11, align 8, !tbaa !88
  %12 = icmp slt i32 %2, %3
  %13 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 13
  %14 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 14
  %15 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %16 = select i1 %12, i32 1, i32 -1
  %17 = select i1 %12, i32 -1, i32 1
  %18 = add nsw i32 %16, %2
  store i32 %18, ptr %13, align 8, !tbaa !89
  %19 = add nsw i32 %17, %3
  store i32 %19, ptr %14, align 4, !tbaa !90
  store i32 %16, ptr %15, align 8, !tbaa !91
  %20 = add i32 %19, 1
  %21 = sub i32 %20, %18
  %22 = mul nsw i32 %21, %16
  %23 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  store i32 %22, ptr %23, align 4, !tbaa !92
  %24 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  store i32 -1, ptr %24, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @sk_detectCutGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #4 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !94
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !96
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_applyCutGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.SK_Point, align 4
  %5 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 4
  %10 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 5
  %11 = getelementptr inbounds float, ptr %4, i64 1
  %12 = getelementptr inbounds float, ptr %4, i64 2
  %13 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 2
  %14 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 2, i64 1
  %15 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 2, i64 2
  br label %16

16:                                               ; preds = %8, %16
  %17 = phi ptr [ %6, %8 ], [ %39, %16 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  store i32 1, ptr %9, align 4, !tbaa !97
  store i32 1, ptr %10, align 4, !tbaa !98
  %18 = getelementptr inbounds %struct.SK_Intersection, ptr %17, i64 0, i32 6
  %19 = load float, ptr %18, align 4, !tbaa !99
  store float %19, ptr %4, align 4, !tbaa !99
  %20 = getelementptr inbounds %struct.SK_Intersection, ptr %17, i64 0, i32 6, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !99
  store float %21, ptr %11, align 4, !tbaa !99
  %22 = getelementptr inbounds %struct.SK_Intersection, ptr %17, i64 0, i32 6, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !99
  store float %23, ptr %12, align 4, !tbaa !99
  %24 = getelementptr inbounds %struct.SK_Intersection, ptr %17, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !100
  %26 = getelementptr inbounds %struct.SK_Stroke, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = getelementptr inbounds %struct.SK_Intersection, ptr %17, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !103
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.SK_Point, ptr %27, i64 %30, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !99
  store float %32, ptr %13, align 4, !tbaa !99
  %33 = getelementptr inbounds float, ptr %31, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !99
  store float %34, ptr %14, align 4, !tbaa !99
  %35 = getelementptr inbounds float, ptr %31, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !99
  store float %36, ptr %15, align 4, !tbaa !99
  %37 = getelementptr inbounds %struct.SK_Intersection, ptr %17, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !104
  call void @sk_insertStrokePoint(ptr noundef %25, ptr noundef nonnull %4, i32 noundef %38) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  %39 = load ptr, ptr %17, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %16, !llvm.loop !105

41:                                               ; preds = %16, %3
  ret void
}

declare void @sk_insertStrokePoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sk_detectTrimGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %54

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !96
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !106
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %18 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.SK_Stroke, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !99
  %24 = load float, ptr %21, align 4, !tbaa !99
  %25 = fsub float %23, %24
  store float %25, ptr %4, align 4, !tbaa !99
  %26 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 1, i32 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !99
  %28 = getelementptr inbounds float, ptr %21, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !99
  %30 = fsub float %27, %29
  %31 = getelementptr inbounds float, ptr %4, i64 1
  store float %30, ptr %31, align 4, !tbaa !99
  %32 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 1, i32 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !99
  %34 = getelementptr inbounds float, ptr %21, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !99
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %4, i64 2
  store float %36, ptr %37, align 4, !tbaa !99
  %38 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !99
  %40 = fsub float %39, %23
  store float %40, ptr %5, align 4, !tbaa !99
  %41 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 2, i32 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !99
  %43 = fsub float %42, %27
  %44 = getelementptr inbounds float, ptr %5, i64 1
  store float %43, ptr %44, align 4, !tbaa !99
  %45 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 2, i32 0, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !99
  %47 = fsub float %46, %33
  %48 = getelementptr inbounds float, ptr %5, i64 2
  store float %47, ptr %48, align 4, !tbaa !99
  %49 = call float @angle_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %50 = fmul float %49, 0x404CA5DC20000000
  %51 = fcmp ule float %50, 6.000000e+01
  %52 = fcmp uge float %50, 1.200000e+02
  %53 = or i1 %51, %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br i1 %53, label %54, label %55

54:                                               ; preds = %17, %13, %9, %3
  br label %55

55:                                               ; preds = %17, %54
  %56 = phi i32 [ 1, %17 ], [ 0, %54 ]
  ret i32 %56
}

declare float @angle_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sk_applyTrimGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.SK_Point, align 4
  %5 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.SK_Stroke, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.SK_Point, ptr %8, i64 2
  %10 = getelementptr inbounds %struct.SK_Point, ptr %8, i64 1
  %11 = load float, ptr %9, align 4, !tbaa !99
  %12 = load float, ptr %10, align 4, !tbaa !99
  %13 = fsub float %11, %12
  %14 = getelementptr inbounds %struct.SK_Point, ptr %8, i64 2, i32 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !99
  %16 = getelementptr inbounds %struct.SK_Point, ptr %8, i64 1, i32 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !99
  %18 = fsub float %15, %17
  %19 = getelementptr inbounds %struct.SK_Point, ptr %8, i64 2, i32 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !99
  %21 = getelementptr inbounds %struct.SK_Point, ptr %8, i64 1, i32 0, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !99
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %90, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 4
  %29 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 5
  %30 = getelementptr inbounds float, ptr %4, i64 1
  %31 = getelementptr inbounds float, ptr %4, i64 2
  %32 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 2
  %33 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 2, i64 1
  %34 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 0, i32 2, i64 2
  br label %35

35:                                               ; preds = %27, %87
  %36 = phi ptr [ %25, %27 ], [ %88, %87 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  store i32 1, ptr %28, align 4, !tbaa !97
  store i32 1, ptr %29, align 4, !tbaa !98
  %37 = getelementptr inbounds %struct.SK_Intersection, ptr %36, i64 0, i32 6
  %38 = load float, ptr %37, align 4, !tbaa !99
  store float %38, ptr %4, align 4, !tbaa !99
  %39 = getelementptr inbounds %struct.SK_Intersection, ptr %36, i64 0, i32 6, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !99
  store float %40, ptr %30, align 4, !tbaa !99
  %41 = getelementptr inbounds %struct.SK_Intersection, ptr %36, i64 0, i32 6, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !99
  store float %42, ptr %31, align 4, !tbaa !99
  %43 = getelementptr inbounds %struct.SK_Intersection, ptr %36, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !100
  %45 = getelementptr inbounds %struct.SK_Stroke, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !102
  %47 = getelementptr inbounds %struct.SK_Intersection, ptr %36, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !103
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.SK_Point, ptr %46, i64 %49, i32 2
  %51 = load float, ptr %50, align 4, !tbaa !99
  store float %51, ptr %32, align 4, !tbaa !99
  %52 = getelementptr inbounds float, ptr %50, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !99
  store float %53, ptr %33, align 4, !tbaa !99
  %54 = getelementptr inbounds float, ptr %50, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !99
  store float %55, ptr %34, align 4, !tbaa !99
  %56 = getelementptr inbounds %struct.SK_Intersection, ptr %36, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !104
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.SK_Point, ptr %46, i64 %58
  %60 = getelementptr inbounds %struct.SK_Point, ptr %46, i64 %49
  %61 = load float, ptr %59, align 4, !tbaa !99
  %62 = load float, ptr %60, align 4, !tbaa !99
  %63 = fsub float %61, %62
  %64 = getelementptr inbounds float, ptr %59, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !99
  %66 = getelementptr inbounds float, ptr %60, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !99
  %68 = fsub float %65, %67
  %69 = getelementptr inbounds float, ptr %59, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !99
  %71 = getelementptr inbounds float, ptr %60, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !99
  %73 = fsub float %70, %72
  %74 = fmul float %18, %68
  %75 = call float @llvm.fmuladd.f32(float %63, float %13, float %74)
  %76 = call float @llvm.fmuladd.f32(float %73, float %23, float %75)
  %77 = fcmp ogt float %76, 0.000000e+00
  br i1 %77, label %78, label %81

78:                                               ; preds = %35
  call void @sk_replaceStrokePoint(ptr noundef %44, ptr noundef nonnull %4, i32 noundef %57) #17
  %79 = load ptr, ptr %43, align 8, !tbaa !100
  %80 = load i32, ptr %56, align 4, !tbaa !104
  call void @sk_trimStroke(ptr noundef %79, i32 noundef 0, i32 noundef %80) #17
  br label %87

81:                                               ; preds = %35
  call void @sk_replaceStrokePoint(ptr noundef %44, ptr noundef nonnull %4, i32 noundef %48) #17
  %82 = load ptr, ptr %43, align 8, !tbaa !100
  %83 = load i32, ptr %47, align 8, !tbaa !103
  %84 = getelementptr inbounds %struct.SK_Stroke, ptr %82, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !74
  %86 = add nsw i32 %85, -1
  call void @sk_trimStroke(ptr noundef %82, i32 noundef %83, i32 noundef %86) #17
  br label %87

87:                                               ; preds = %81, %78
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  %88 = load ptr, ptr %36, align 8, !tbaa !34
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %35, !llvm.loop !108

90:                                               ; preds = %87, %3
  ret void
}

declare void @sk_replaceStrokePoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sk_trimStroke(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @sk_detectCommandGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #6 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !94
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !96
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !106
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  br label %18

18:                                               ; preds = %21, %15
  %19 = phi ptr [ %17, %15 ], [ %24, %21 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.SK_Intersection, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  %24 = load ptr, ptr %19, align 8, !tbaa !110
  %25 = getelementptr inbounds %struct.SK_Intersection, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !100
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %28, label %18, !llvm.loop !111

28:                                               ; preds = %21, %18
  %29 = phi ptr [ null, %18 ], [ %24, %21 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  %34 = getelementptr inbounds %struct.SK_Intersection, ptr %29, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !113
  %36 = getelementptr inbounds %struct.SK_Intersection, ptr %33, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !113
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %31, %28
  br label %40

40:                                               ; preds = %3, %7, %11, %39, %31
  %41 = phi i32 [ 1, %31 ], [ 0, %39 ], [ 0, %11 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_applyCommandGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3, %22
  %8 = phi ptr [ %24, %22 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !104
  tail call void @sk_flattenStroke(ptr noundef %15, i32 noundef %19, i32 noundef %21) #17
  br label %22

22:                                               ; preds = %17, %11, %7
  %23 = phi ptr [ %9, %17 ], [ %8, %11 ], [ %8, %7 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !114

26:                                               ; preds = %22, %3
  ret void
}

declare void @sk_flattenStroke(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sk_detectDeleteGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %48

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !96
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %14 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.SK_Stroke, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !99
  %20 = load float, ptr %17, align 4, !tbaa !99
  %21 = fsub float %19, %20
  store float %21, ptr %4, align 4, !tbaa !99
  %22 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 1, i32 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !99
  %24 = getelementptr inbounds float, ptr %17, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !99
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds float, ptr %4, i64 1
  store float %26, ptr %27, align 4, !tbaa !99
  %28 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 1, i32 0, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !99
  %30 = getelementptr inbounds float, ptr %17, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !99
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds float, ptr %4, i64 2
  store float %32, ptr %33, align 4, !tbaa !99
  %34 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !99
  %36 = fsub float %35, %19
  store float %36, ptr %5, align 4, !tbaa !99
  %37 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 2, i32 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !99
  %39 = fsub float %38, %23
  %40 = getelementptr inbounds float, ptr %5, i64 1
  store float %39, ptr %40, align 4, !tbaa !99
  %41 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 2, i32 0, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !99
  %43 = fsub float %42, %29
  %44 = getelementptr inbounds float, ptr %5, i64 2
  store float %43, ptr %44, align 4, !tbaa !99
  %45 = call float @angle_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %46 = fmul float %45, 0x404CA5DC20000000
  %47 = fcmp ule float %46, 1.200000e+02
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br i1 %47, label %48, label %49

48:                                               ; preds = %13, %9, %3
  br label %49

49:                                               ; preds = %13, %48
  %50 = phi i32 [ 1, %13 ], [ 0, %48 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_applyDeleteGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %20, %18 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @sk_removeStroke(ptr noundef %2, ptr noundef %13) #17
  br label %18

18:                                               ; preds = %7, %11, %17
  %19 = phi ptr [ %9, %17 ], [ %8, %11 ], [ %8, %7 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !115

22:                                               ; preds = %18, %3
  ret void
}

declare void @sk_removeStroke(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sk_detectMergeGesture(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [2 x i16], align 2
  %5 = alloca [2 x i16], align 2
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !94
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %102

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !96
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %102

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %15 = load ptr, ptr %1, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.SK_Stroke, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = call i32 @ED_view3d_project_short_global(ptr noundef %6, ptr noundef %17, ptr noundef nonnull %4, i32 noundef 0) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %14
  %21 = load ptr, ptr %1, align 8, !tbaa !116
  %22 = call ptr @sk_lastStrokePoint(ptr noundef %21) #17
  %23 = call i32 @ED_view3d_project_short_global(ptr noundef %6, ptr noundef %22, ptr noundef nonnull %5, i32 noundef 0) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %100

25:                                               ; preds = %20
  %26 = load i16, ptr %4, align 2, !tbaa !117
  %27 = sext i16 %26 to i32
  %28 = load i16, ptr %5, align 2, !tbaa !117
  %29 = sext i16 %28 to i32
  %30 = sub nsw i32 %27, %29
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true)
  %32 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !117
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  %36 = load i16, ptr %35, align 2, !tbaa !117
  %37 = sext i16 %36 to i32
  %38 = sub nsw i32 %34, %37
  %39 = call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = call i32 @llvm.umax.i32(i32 %31, i32 %39)
  %41 = trunc i32 %40 to i16
  %42 = icmp slt i16 %41, 21
  br i1 %42, label %43, label %100

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %100, label %47

47:                                               ; preds = %43, %96
  %48 = phi ptr [ %98, %96 ], [ %45, %43 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !110
  %50 = icmp eq ptr %49, null
  br i1 %50, label %96, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !100
  %54 = getelementptr inbounds %struct.SK_Intersection, ptr %48, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !100
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.SK_Intersection, ptr %48, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !104
  %60 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 4
  %61 = load i32, ptr %60, align 4, !tbaa !104
  %62 = call i32 @llvm.smin.i32(i32 %59, i32 %61)
  %63 = getelementptr inbounds %struct.SK_Intersection, ptr %48, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !103
  %65 = getelementptr inbounds %struct.SK_Intersection, ptr %49, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !103
  %67 = call i32 @llvm.smax.i32(i32 %64, i32 %66)
  %68 = icmp sgt i32 %62, %67
  br i1 %68, label %93, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.SK_Stroke, ptr %55, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !102
  %72 = call i32 @llvm.smin.i32(i32 %61, i32 %59)
  %73 = sext i32 %72 to i64
  %74 = sext i32 %67 to i64
  %75 = add i32 %67, 1
  %76 = add i32 %75, %72
  %77 = sub i32 %76, %62
  %78 = getelementptr inbounds %struct.SK_Point, ptr %71, i64 %73, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !97
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %93, label %81

81:                                               ; preds = %69, %86
  %82 = phi i64 [ %83, %86 ], [ %73, %69 ]
  %83 = add nsw i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = icmp eq i32 %77, %84
  br i1 %85, label %90, label %86, !llvm.loop !118

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.SK_Point, ptr %71, i64 %83, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !97
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %81, !llvm.loop !118

90:                                               ; preds = %86, %81
  %91 = phi ptr [ %48, %86 ], [ %49, %81 ]
  %92 = icmp sge i64 %82, %74
  br label %93

93:                                               ; preds = %90, %69, %57
  %94 = phi i1 [ %68, %57 ], [ %68, %69 ], [ %92, %90 ]
  %95 = phi ptr [ %49, %57 ], [ %48, %69 ], [ %91, %90 ]
  br i1 %94, label %96, label %101

96:                                               ; preds = %47, %51, %93
  %97 = phi ptr [ %95, %93 ], [ %48, %51 ], [ %48, %47 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %47, !llvm.loop !119

100:                                              ; preds = %96, %43, %25, %20, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %102

101:                                              ; preds = %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %102

102:                                              ; preds = %3, %10, %100, %101
  %103 = phi i32 [ 1, %101 ], [ 0, %100 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %103
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_short_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @sk_lastStrokePoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_applyMergeGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #7 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3, %47
  %8 = phi ptr [ %49, %47 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !104
  %20 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !104
  %22 = tail call i32 @llvm.smin.i32(i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !103
  %25 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !103
  %27 = tail call i32 @llvm.smax.i32(i32 %24, i32 %26)
  %28 = icmp sgt i32 %22, %27
  br i1 %28, label %47, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.SK_Stroke, ptr %15, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !102
  %32 = tail call i32 @llvm.smin.i32(i32 %21, i32 %19)
  %33 = sext i32 %32 to i64
  %34 = add i32 %27, 1
  %35 = add i32 %34, %32
  %36 = sub i32 %35, %22
  br label %37

37:                                               ; preds = %29, %43
  %38 = phi i64 [ %33, %29 ], [ %44, %43 ]
  %39 = getelementptr inbounds %struct.SK_Point, ptr %31, i64 %38, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !97
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, ptr %39, align 4, !tbaa !97
  br label %43

43:                                               ; preds = %37, %42
  %44 = add nsw i64 %38, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %36, %45
  br i1 %46, label %47, label %37, !llvm.loop !120

47:                                               ; preds = %43, %17, %7, %11
  %48 = phi ptr [ %8, %11 ], [ %8, %7 ], [ %9, %17 ], [ %9, %43 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %7, !llvm.loop !121

51:                                               ; preds = %47, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sk_detectReverseGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %117

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !96
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %117

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !106
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %117

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %117, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds float, ptr %4, i64 1
  %23 = getelementptr inbounds float, ptr %4, i64 2
  %24 = getelementptr inbounds float, ptr %5, i64 1
  %25 = getelementptr inbounds float, ptr %5, i64 2
  %26 = getelementptr inbounds float, ptr %4, i64 1
  %27 = getelementptr inbounds float, ptr %4, i64 2
  %28 = getelementptr inbounds float, ptr %5, i64 1
  %29 = getelementptr inbounds float, ptr %5, i64 2
  br label %30

30:                                               ; preds = %21, %112
  %31 = phi i1 [ %20, %21 ], [ %115, %112 ]
  %32 = phi ptr [ %19, %21 ], [ %114, %112 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  %34 = icmp eq ptr %33, null
  br i1 %34, label %112, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.SK_Intersection, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !100
  %38 = getelementptr inbounds %struct.SK_Intersection, ptr %32, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !100
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %41, label %112

41:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %42 = getelementptr inbounds %struct.SK_Intersection, ptr %32, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !113
  %44 = load ptr, ptr %32, align 8, !tbaa !110
  %45 = getelementptr inbounds %struct.SK_Intersection, ptr %44, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !113
  %47 = icmp slt i32 %43, %46
  %48 = load ptr, ptr %1, align 8, !tbaa !116
  %49 = getelementptr inbounds %struct.SK_Stroke, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  %51 = load float, ptr %50, align 4, !tbaa !99
  %52 = getelementptr inbounds float, ptr %50, i64 1
  %53 = getelementptr inbounds float, ptr %50, i64 2
  br i1 %47, label %54, label %72

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.SK_Intersection, ptr %32, i64 0, i32 6
  %56 = load float, ptr %55, align 4, !tbaa !99
  %57 = fsub float %56, %51
  store float %57, ptr %4, align 4, !tbaa !99
  %58 = getelementptr inbounds %struct.SK_Intersection, ptr %32, i64 0, i32 6, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !99
  %60 = load float, ptr %52, align 4, !tbaa !99
  %61 = fsub float %59, %60
  store float %61, ptr %26, align 4, !tbaa !99
  %62 = getelementptr inbounds %struct.SK_Intersection, ptr %32, i64 0, i32 6, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !99
  %64 = load float, ptr %53, align 4, !tbaa !99
  %65 = fsub float %63, %64
  store float %65, ptr %27, align 4, !tbaa !99
  %66 = call ptr @sk_lastStrokePoint(ptr noundef %48) #17
  %67 = load ptr, ptr %32, align 8, !tbaa !110
  %68 = getelementptr inbounds %struct.SK_Intersection, ptr %67, i64 0, i32 6
  %69 = load float, ptr %66, align 4, !tbaa !99
  %70 = load float, ptr %68, align 4, !tbaa !99
  %71 = fsub float %69, %70
  br label %89

72:                                               ; preds = %41
  %73 = getelementptr inbounds %struct.SK_Intersection, ptr %44, i64 0, i32 6
  %74 = load float, ptr %73, align 4, !tbaa !99
  %75 = fsub float %74, %51
  store float %75, ptr %4, align 4, !tbaa !99
  %76 = getelementptr inbounds %struct.SK_Intersection, ptr %44, i64 0, i32 6, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !99
  %78 = load float, ptr %52, align 4, !tbaa !99
  %79 = fsub float %77, %78
  store float %79, ptr %22, align 4, !tbaa !99
  %80 = getelementptr inbounds %struct.SK_Intersection, ptr %44, i64 0, i32 6, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !99
  %82 = load float, ptr %53, align 4, !tbaa !99
  %83 = fsub float %81, %82
  store float %83, ptr %23, align 4, !tbaa !99
  %84 = call ptr @sk_lastStrokePoint(ptr noundef %48) #17
  %85 = getelementptr inbounds %struct.SK_Intersection, ptr %32, i64 0, i32 6
  %86 = load float, ptr %84, align 4, !tbaa !99
  %87 = load float, ptr %85, align 4, !tbaa !99
  %88 = fsub float %86, %87
  br label %89

89:                                               ; preds = %72, %54
  %90 = phi float [ %88, %72 ], [ %71, %54 ]
  %91 = phi ptr [ %84, %72 ], [ %66, %54 ]
  %92 = phi ptr [ %32, %72 ], [ %67, %54 ]
  %93 = phi ptr [ %24, %72 ], [ %28, %54 ]
  %94 = phi ptr [ %25, %72 ], [ %29, %54 ]
  store float %90, ptr %5, align 4, !tbaa !99
  %95 = getelementptr inbounds float, ptr %91, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !99
  %97 = getelementptr inbounds %struct.SK_Intersection, ptr %92, i64 0, i32 6, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !99
  %99 = fsub float %96, %98
  store float %99, ptr %93, align 4, !tbaa !99
  %100 = getelementptr inbounds float, ptr %91, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !99
  %102 = getelementptr inbounds %struct.SK_Intersection, ptr %92, i64 0, i32 6, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !99
  %104 = fsub float %101, %103
  store float %104, ptr %94, align 4, !tbaa !99
  %105 = call float @angle_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %106 = fmul float %105, 0x404CA5DC20000000
  %107 = fcmp ule float %106, 1.200000e+02
  br i1 %107, label %108, label %110

108:                                              ; preds = %89
  %109 = load ptr, ptr %32, align 8, !tbaa !110
  br label %110

110:                                              ; preds = %89, %108
  %111 = phi ptr [ %109, %108 ], [ %32, %89 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br i1 %107, label %112, label %116

112:                                              ; preds = %30, %35, %110
  %113 = phi ptr [ %111, %110 ], [ %32, %35 ], [ %32, %30 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %30, !llvm.loop !122

116:                                              ; preds = %110
  br i1 %31, label %117, label %118

117:                                              ; preds = %112, %17, %116, %13, %9, %3
  br label %118

118:                                              ; preds = %116, %117
  %119 = phi i32 [ 1, %116 ], [ 0, %117 ]
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_applyReverseGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3, %19
  %8 = phi ptr [ %21, %19 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SK_Intersection, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = getelementptr inbounds %struct.SK_Intersection, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  tail call void @sk_reverseStroke(ptr noundef %15) #17
  %18 = load ptr, ptr %8, align 8, !tbaa !110
  br label %19

19:                                               ; preds = %7, %11, %17
  %20 = phi ptr [ %18, %17 ], [ %8, %11 ], [ %8, %7 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !123

23:                                               ; preds = %19, %3
  ret void
}

declare void @sk_reverseStroke(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @sk_detectConvertGesture(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #4 {
  %4 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !94
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SK_Gesture, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !106
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_applyConvertGesture(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 43
  br label %9

9:                                                ; preds = %19, %7
  %10 = phi ptr [ %5, %7 ], [ %20, %19 ]
  %11 = getelementptr inbounds %struct.SK_Stroke, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !124
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i8, ptr %8, align 1, !tbaa !125
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call fastcc void @sk_retargetStroke(ptr noundef %0, ptr noundef nonnull %10)
  br label %19

18:                                               ; preds = %14
  tail call fastcc void @sk_convertStroke(ptr noundef %0, ptr noundef nonnull %10)
  br label %19

19:                                               ; preds = %18, %17, %9
  %20 = load ptr, ptr %10, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !126

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BDR_drawSketchNames(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = load ptr, ptr %0, align 8, !tbaa !129
  %5 = icmp eq ptr %3, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 42
  %14 = load i8, ptr %13, align 8, !tbaa !149
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  br i1 %5, label %27, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !43
  %21 = icmp eq i16 %20, 25
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.bArmature, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  br label %27

27:                                               ; preds = %17, %18, %22
  %28 = phi ptr [ %26, %22 ], [ null, %18 ], [ null, %17 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call fastcc void @sk_drawSketch(ptr noundef %4, ptr noundef nonnull %28, i32 noundef 1)
  br label %31

31:                                               ; preds = %10, %6, %1, %27, %30
  %32 = phi i32 [ 1, %30 ], [ 0, %27 ], [ 0, %1 ], [ 0, %6 ], [ 0, %10 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local ptr @viewcontextSketch(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = icmp eq ptr %14, null
  %16 = icmp ne i32 %1, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = tail call ptr @createSketch() #17
  store ptr %19, ptr %13, align 8, !tbaa !68
  br label %20

20:                                               ; preds = %18, %10
  %21 = load ptr, ptr %13, align 8, !tbaa !68
  br label %22

22:                                               ; preds = %20, %6, %2
  %23 = phi ptr [ %21, %20 ], [ null, %6 ], [ null, %2 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_drawSketch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  tail call void @glClear(i32 noundef 256) #17
  tail call void @glEnable(i32 noundef 2929) #17
  %6 = icmp eq i32 %2, 0
  %7 = load ptr, ptr %1, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %6, label %10, label %9

9:                                                ; preds = %3
  br i1 %8, label %24, label %18

10:                                               ; preds = %3
  br i1 %8, label %72, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5
  %13 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 3
  %14 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 1
  %15 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 2
  %16 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 1
  %17 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 2
  br label %26

18:                                               ; preds = %9, %18
  %19 = phi ptr [ %22, %18 ], [ %7, %9 ]
  %20 = phi i32 [ %21, %18 ], [ 1, %9 ]
  tail call fastcc void @sk_drawStroke(ptr noundef nonnull %19, i32 noundef %20, ptr noundef null, i32 noundef -1, i32 noundef -1)
  %21 = add nuw nsw i32 %20, 1
  %22 = load ptr, ptr %19, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !150

24:                                               ; preds = %18, %9
  %25 = tail call zeroext i8 @GPU_select_load_id(i32 noundef -1) #17
  br label %106

26:                                               ; preds = %11, %69
  %27 = phi ptr [ %7, %11 ], [ %70, %69 ]
  %28 = load ptr, ptr %12, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %13, align 8, !tbaa !79
  %32 = icmp sgt i32 %31, 4
  %33 = icmp eq ptr %28, %27
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, ptr %14, align 8, !tbaa !77
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, ptr %15, align 4, !tbaa !78
  %40 = icmp ne i32 %39, -1
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %26, %30, %35, %38
  %43 = phi i32 [ 0, %30 ], [ 0, %26 ], [ 1, %35 ], [ %41, %38 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %16, align 8, !tbaa !77
  %47 = load i32, ptr %17, align 4, !tbaa !78
  %48 = icmp eq i32 %46, -1
  %49 = select i1 %48, i32 0, i32 %46
  %50 = icmp eq i32 %47, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.SK_Stroke, ptr %28, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !74
  %54 = add nsw i32 %53, -1
  br label %55

55:                                               ; preds = %51, %45
  %56 = phi i32 [ %54, %51 ], [ %47, %45 ]
  %57 = tail call i32 @llvm.smin.i32(i32 %56, i32 %49)
  %58 = tail call i32 @llvm.smax.i32(i32 %56, i32 %49)
  br label %59

59:                                               ; preds = %55, %42
  %60 = phi i32 [ -1, %42 ], [ %57, %55 ]
  %61 = phi i32 [ -1, %42 ], [ %58, %55 ]
  %62 = getelementptr inbounds %struct.SK_Stroke, ptr %27, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !124
  %64 = icmp eq i32 %63, 1
  %65 = select i1 %64, ptr @__const.sk_drawSketch.selected_rgb, ptr @__const.sk_drawSketch.unselected_rgb
  tail call fastcc void @sk_drawStroke(ptr noundef nonnull %27, i32 noundef -1, ptr noundef nonnull %65, i32 noundef %60, i32 noundef %61)
  %66 = load i32, ptr %62, align 8, !tbaa !124
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  tail call fastcc void @sk_drawStrokeSubdivision(ptr noundef %5, ptr noundef nonnull %27)
  br label %69

69:                                               ; preds = %68, %59
  %70 = load ptr, ptr %27, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %26, !llvm.loop !151

72:                                               ; preds = %69, %10
  %73 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !70
  %75 = icmp eq ptr %74, null
  br i1 %75, label %106, label %76

76:                                               ; preds = %72
  %77 = tail call ptr @sk_lastStrokePoint(ptr noundef nonnull %74) #17
  %78 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 42
  %79 = load i8, ptr %78, align 8, !tbaa !149
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %73, align 8, !tbaa !70
  tail call fastcc void @sk_drawStrokeSubdivision(ptr noundef %5, ptr noundef %83)
  br label %84

84:                                               ; preds = %82, %76
  %85 = icmp eq ptr %77, null
  br i1 %85, label %106, label %86

86:                                               ; preds = %84
  %87 = tail call ptr @gluNewQuadric() #17
  tail call void @gluQuadricNormals(ptr noundef %87, i32 noundef 100000) #17
  tail call void @glPushMatrix() #17
  tail call void @glEnable(i32 noundef 3042) #17
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  %88 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 4
  %89 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 4, i32 5
  %90 = load i32, ptr %89, align 4, !tbaa !152
  switch i32 %90, label %94 [
    i32 0, label %92
    i32 1, label %91
  ]

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %86, %91
  %93 = phi float [ 0.000000e+00, %91 ], [ 1.000000e+00, %86 ]
  tail call void @glColor3f(float noundef 0.000000e+00, float noundef %93, float noundef 0.000000e+00) #17
  br label %94

94:                                               ; preds = %92, %86
  %95 = load float, ptr %88, align 4, !tbaa !99
  %96 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 4, i32 0, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !99
  %98 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 4, i32 0, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !99
  tail call void @glTranslatef(float noundef %95, float noundef %97, float noundef %99) #17
  %100 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 4, i32 3
  %101 = load float, ptr %100, align 4, !tbaa !153
  %102 = fmul float %101, 0x3FB99999A0000000
  %103 = fcmp ogt float %102, 0x3FA99999A0000000
  %104 = select i1 %103, float %102, float 0x3FA99999A0000000
  %105 = fpext float %104 to double
  tail call void @gluSphere(ptr noundef %87, double noundef %105, i32 noundef 8, i32 noundef 8) #17
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #17
  tail call fastcc void @sk_drawEdge(ptr noundef %87, ptr noundef nonnull %77, ptr noundef nonnull %88)
  tail call void @glDisable(i32 noundef 3042) #17
  tail call void @glPopMatrix() #17
  tail call void @gluDeleteQuadric(ptr noundef %87) #17
  br label %106

106:                                              ; preds = %72, %94, %84, %24
  tail call void @glDisable(i32 noundef 2929) #17
  %107 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !154
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call fastcc void @sk_drawStroke(ptr noundef nonnull %108, i32 noundef -1, ptr noundef nonnull @__const.sk_drawSketch.gesture_rgb, i32 noundef -1, i32 noundef -1)
  br label %111

111:                                              ; preds = %110, %106
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BDR_drawSketch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = icmp eq ptr %2, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 42
  %11 = load i8, ptr %10, align 8, !tbaa !149
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !43
  %20 = icmp eq i16 %19, 25
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  br label %26

26:                                               ; preds = %14, %17, %21
  %27 = phi ptr [ %25, %21 ], [ null, %17 ], [ null, %14 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %31 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #17
  tail call fastcc void @sk_drawSketch(ptr noundef %30, ptr noundef nonnull %27, i32 noundef 0)
  br label %32

32:                                               ; preds = %1, %5, %9, %26, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_sketch_mode(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = icmp eq ptr %2, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 42
  %11 = load i8, ptr %10, align 8, !tbaa !149
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %5, %1
  br label %15

15:                                               ; preds = %9, %14
  %16 = phi i32 [ 0, %14 ], [ 1, %9 ]
  ret i32 %16
}

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_sk_selectStroke(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !43
  %10 = icmp eq i16 %9, 25
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  br label %16

16:                                               ; preds = %3, %7, %11
  %17 = phi ptr [ %15, %11 ], [ null, %7 ], [ null, %3 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 42
  %21 = load i8, ptr %20, align 8, !tbaa !149
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = sext i16 %2 to i32
  %26 = tail call fastcc i32 @sk_selectStroke(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %1, i32 noundef %25), !range !155
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  tail call void @ED_area_tag_redraw(ptr noundef %29) #17
  br label %30

30:                                               ; preds = %24, %28, %19, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @sk_selectStroke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ViewContext, align 8
  %6 = alloca %struct.rcti, align 4
  %7 = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %7) #17
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %5) #17
  %8 = load i32, ptr %2, align 4, !tbaa !38
  %9 = add nsw i32 %8, -5
  store i32 %9, ptr %6, align 4, !tbaa !156
  %10 = add nsw i32 %8, 5
  %11 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !157
  %12 = getelementptr inbounds i32, ptr %2, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = add nsw i32 %13, -5
  %15 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %14, ptr %15, align 4, !tbaa !158
  %16 = add nsw i32 %13, 5
  %17 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %16, ptr %17, align 4, !tbaa !159
  %18 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 10000, ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  %19 = icmp sgt i16 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = getelementptr inbounds [10000 x i32], ptr %7, i64 0, i64 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = add nsw i32 %22, -1
  %26 = call ptr @BLI_findlink(ptr noundef %1, i32 noundef %25) #17
  %27 = icmp eq i32 %3, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  call void @sk_selectAllSketch(ptr noundef %1, i32 noundef -1) #17
  %29 = getelementptr inbounds %struct.SK_Stroke, ptr %26, i64 0, i32 5
  store i32 1, ptr %29, align 8, !tbaa !124
  br label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.SK_Stroke, ptr %26, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !124
  %33 = xor i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !124
  br label %34

34:                                               ; preds = %4, %20, %30, %28
  %35 = phi i32 [ 1, %28 ], [ 1, %30 ], [ 1, %20 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  ret i32 %35
}

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_convertSketch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = icmp eq ptr %2, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %48

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 42
  %11 = load i8, ptr %10, align 8, !tbaa !149
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !43
  %20 = icmp eq i16 %19, 25
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  br label %26

26:                                               ; preds = %14, %17, %21
  %27 = phi ptr [ %25, %21 ], [ null, %17 ], [ null, %14 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %31 = load ptr, ptr %27, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %30, i64 0, i32 43
  br label %35

35:                                               ; preds = %45, %33
  %36 = phi ptr [ %31, %33 ], [ %46, %45 ]
  %37 = getelementptr inbounds %struct.SK_Stroke, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !124
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8, ptr %34, align 1, !tbaa !125
  %42 = icmp eq i8 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call fastcc void @sk_retargetStroke(ptr noundef %0, ptr noundef nonnull %36)
  br label %45

44:                                               ; preds = %40
  tail call fastcc void @sk_convertStroke(ptr noundef %0, ptr noundef nonnull %36)
  br label %45

45:                                               ; preds = %44, %43, %35
  %46 = load ptr, ptr %36, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %35, !llvm.loop !126

48:                                               ; preds = %45, %1, %5, %9, %29, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_sketch_full_mode(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = icmp eq ptr %2, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 42
  %11 = load i8, ptr %10, align 8, !tbaa !149
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %5, %1
  br label %15

15:                                               ; preds = %9, %14
  %16 = phi i32 [ 0, %14 ], [ 1, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @BIF_deleteSketch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = icmp eq ptr %2, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 42
  %11 = load i8, ptr %10, align 8, !tbaa !149
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !43
  %20 = icmp eq i16 %19, 25
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.bArmature, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  br label %26

26:                                               ; preds = %14, %17, %21
  %27 = phi ptr [ %25, %21 ], [ null, %17 ], [ null, %14 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @sk_deleteSelectedStrokes(ptr noundef nonnull %27) #17
  br label %30

30:                                               ; preds = %1, %5, %9, %26, %29
  ret void
}

declare void @sk_deleteSelectedStrokes(ptr noundef) local_unnamed_addr #2

declare ptr @createSketch() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_sketch_mode_active_stroke(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  br label %14

14:                                               ; preds = %1, %5, %9
  %15 = phi ptr [ %13, %9 ], [ null, %5 ], [ null, %1 ]
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %2, i64 0, i32 42
  %17 = load i8, ptr %16, align 8, !tbaa !149
  %18 = and i8 %17, 1
  %19 = icmp ne i8 %18, 0
  %20 = icmp ne ptr %15, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.SK_Sketch, ptr %15, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %14
  br label %27

27:                                               ; preds = %22, %26
  %28 = phi i32 [ 0, %26 ], [ 1, %22 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_delete, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_full_mode, ptr %5, align 8, !tbaa !166
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_delete(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  br label %15

15:                                               ; preds = %3, %6, %10
  %16 = phi ptr [ %14, %10 ], [ null, %6 ], [ null, %3 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @sk_deleteSelectedStrokes(ptr noundef nonnull %16) #17
  br label %19

19:                                               ; preds = %18, %15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50855940, ptr noundef null) #17
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_select, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_full_mode, ptr %5, align 8, !tbaa !166
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_select(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  br label %15

15:                                               ; preds = %3, %6, %10
  %16 = phi ptr [ %14, %10 ], [ null, %6 ], [ null, %3 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %20 = tail call fastcc i32 @sk_selectStroke(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %19, i32 noundef 0), !range !155
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  tail call void @ED_area_tag_redraw(ptr noundef %23) #17
  br label %24

24:                                               ; preds = %18, %22, %15
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_cancel_stroke(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_cancel_invoke, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode_active_stroke, ptr %5, align 8, !tbaa !166
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_cancel_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  br label %15

15:                                               ; preds = %3, %6, %10
  %16 = phi ptr [ %14, %10 ], [ null, %6 ], [ null, %3 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5
  store ptr null, ptr %23, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 1
  store i32 -1, ptr %24, align 8, !tbaa !77
  %25 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 2
  store i32 -1, ptr %25, align 4, !tbaa !78
  %26 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 3
  store i32 0, ptr %26, align 8, !tbaa !79
  tail call void @sk_removeStroke(ptr noundef nonnull %16, ptr noundef nonnull %20) #17
  br label %27

27:                                               ; preds = %18, %22
  %28 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  tail call void @ED_area_tag_redraw(ptr noundef %28) #17
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi i32 [ 4, %27 ], [ 8, %15 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_convert(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_convert, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_full_mode, ptr %5, align 8, !tbaa !166
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !167
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_convert(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  br label %15

15:                                               ; preds = %3, %6, %10
  %16 = phi ptr [ %14, %10 ], [ null, %6 ], [ null, %3 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %20 = load ptr, ptr %16, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ToolSettings, ptr %19, i64 0, i32 43
  br label %24

24:                                               ; preds = %34, %22
  %25 = phi ptr [ %20, %22 ], [ %35, %34 ]
  %26 = getelementptr inbounds %struct.SK_Stroke, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !124
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8, ptr %23, align 1, !tbaa !125
  %31 = icmp eq i8 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call fastcc void @sk_retargetStroke(ptr noundef %0, ptr noundef nonnull %25)
  br label %34

33:                                               ; preds = %29
  tail call fastcc void @sk_convertStroke(ptr noundef %0, ptr noundef nonnull %25)
  br label %34

34:                                               ; preds = %33, %32, %24
  %35 = load ptr, ptr %25, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %24, !llvm.loop !126

37:                                               ; preds = %34, %18
  %38 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  tail call void @ED_area_tag_redraw(ptr noundef %38) #17
  br label %39

39:                                               ; preds = %37, %15
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SKETCH_OT_finish_stroke(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_finish, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode_active_stroke, ptr %5, align 8, !tbaa !166
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_finish(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  br label %15

15:                                               ; preds = %3, %6, %10
  %16 = phi ptr [ %14, %10 ], [ null, %6 ], [ null, %3 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %101, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %20 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %101, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %25 = load ptr, ptr %20, align 8, !tbaa !70
  tail call void @sk_shrinkStrokeBuffer(ptr noundef %25) #17
  %26 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 42
  %27 = load i8, ptr %26, align 8, !tbaa !149
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %86, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr %20, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = icmp eq ptr %33, null
  br i1 %34, label %86, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !79
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %39, label %86

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !77
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !78
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %86, label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ 0, %43 ], [ %41, %39 ]
  %49 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !78
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.SK_Stroke, ptr %33, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !74
  %55 = add nsw i32 %54, -1
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i32 [ %55, %52 ], [ %50, %47 ]
  %58 = icmp slt i32 %57, %48
  %59 = tail call i32 @llvm.smin.i32(i32 %57, i32 %48)
  %60 = tail call i32 @llvm.smax.i32(i32 %57, i32 %48)
  br i1 %58, label %61, label %62

61:                                               ; preds = %56
  tail call void @sk_reverseStroke(ptr noundef %31) #17
  br label %62

62:                                               ; preds = %61, %56
  %63 = getelementptr inbounds %struct.SK_Stroke, ptr %31, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !74
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load ptr, ptr %32, align 8, !tbaa !76
  %68 = getelementptr inbounds %struct.SK_Stroke, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !102
  %70 = sext i32 %59 to i64
  %71 = getelementptr inbounds %struct.SK_Point, ptr %69, i64 %70, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !97
  %73 = getelementptr inbounds %struct.SK_Stroke, ptr %31, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !102
  %75 = getelementptr inbounds %struct.SK_Point, ptr %74, i64 0, i32 4
  store i32 %72, ptr %75, align 4, !tbaa !97
  %76 = sext i32 %60 to i64
  %77 = getelementptr inbounds %struct.SK_Point, ptr %69, i64 %76, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !97
  %79 = tail call ptr @sk_lastStrokePoint(ptr noundef %31) #17
  %80 = getelementptr inbounds %struct.SK_Point, ptr %79, i64 0, i32 4
  store i32 %78, ptr %80, align 4, !tbaa !97
  br label %81

81:                                               ; preds = %66, %62
  %82 = load ptr, ptr %32, align 8, !tbaa !76
  %83 = getelementptr inbounds %struct.SK_Stroke, ptr %31, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !102
  %85 = load i32, ptr %63, align 8, !tbaa !74
  tail call void @sk_insertStrokePoints(ptr noundef %82, ptr noundef %84, i32 noundef %85, i32 noundef %59, i32 noundef %60) #17
  tail call void @sk_removeStroke(ptr noundef nonnull %16, ptr noundef %31) #17
  store ptr null, ptr %32, align 8, !tbaa !76
  store i32 -1, ptr %40, align 8, !tbaa !77
  store i32 -1, ptr %49, align 4, !tbaa !78
  store i32 0, ptr %36, align 8, !tbaa !79
  br label %86

86:                                               ; preds = %81, %43, %35, %30, %23
  store ptr null, ptr %20, align 8, !tbaa !70
  %87 = getelementptr inbounds %struct.ToolSettings, ptr %19, i64 0, i32 42
  %88 = load i8, ptr %87, align 8, !tbaa !149
  %89 = and i8 %88, 2
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ToolSettings, ptr %19, i64 0, i32 43
  %93 = load i8, ptr %92, align 1, !tbaa !125
  %94 = icmp eq i8 %93, 3
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  tail call fastcc void @sk_retargetStroke(ptr noundef %0, ptr noundef nonnull %21)
  br label %97

96:                                               ; preds = %91
  tail call fastcc void @sk_convertStroke(ptr noundef %0, ptr noundef nonnull %21)
  br label %97

97:                                               ; preds = %96, %95
  tail call void @sk_removeStroke(ptr noundef nonnull %16, ptr noundef nonnull %21) #17
  br label %98

98:                                               ; preds = %86, %97
  br i1 %22, label %101, label %99

99:                                               ; preds = %98
  %100 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  tail call void @ED_area_tag_redraw(ptr noundef %100) #17
  br label %101

101:                                              ; preds = %18, %15, %98, %99
  %102 = phi i32 [ 4, %99 ], [ 8, %98 ], [ 8, %15 ], [ 8, %18 ]
  ret i32 %102
}

; Function Attrs: nounwind uwtable
define dso_local void @SKETCH_OT_draw_preview(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_draw_preview, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode_active_stroke, ptr %5, align 8, !tbaa !166
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !168
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_draw_preview(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.SK_DrawData, align 4
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.20) #17
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !43
  %13 = icmp eq i16 %12, 25
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.bArmature, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %3, %10, %14
  %20 = phi ptr [ %18, %14 ], [ null, %10 ], [ null, %3 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #17
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @sk_initDrawData(ptr noundef nonnull %4, ptr noundef nonnull %23) #17
  %24 = getelementptr inbounds %struct.SK_Sketch, ptr %20, i64 0, i32 4
  %25 = getelementptr inbounds %struct.SK_Sketch, ptr %20, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = and i32 %7, 255
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = call fastcc i32 @sk_getStrokeSnapPoint(ptr noundef %0, ptr noundef nonnull %24, ptr noundef nonnull %20, ptr noundef %26, ptr noundef nonnull %4), !range !155
  store i1 true, ptr @LAST_SNAP_POINT_VALID, align 4
  %31 = load float, ptr %24, align 4, !tbaa !99
  store float %31, ptr @LAST_SNAP_POINT, align 4, !tbaa !99
  %32 = getelementptr inbounds %struct.SK_Sketch, ptr %20, i64 0, i32 4, i32 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !99
  store float %33, ptr getelementptr inbounds ([3 x float], ptr @LAST_SNAP_POINT, i64 0, i64 1), align 4, !tbaa !99
  %34 = getelementptr inbounds %struct.SK_Sketch, ptr %20, i64 0, i32 4, i32 0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !99
  store float %35, ptr getelementptr inbounds ([3 x float], ptr @LAST_SNAP_POINT, i64 0, i64 2), align 4, !tbaa !99
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %38, label %43

37:                                               ; preds = %22
  store i1 false, ptr @LAST_SNAP_POINT_VALID, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = getelementptr inbounds %struct.SK_DrawData, ptr %4, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !171
  %41 = getelementptr inbounds %struct.SK_Sketch, ptr %20, i64 0, i32 4, i32 4
  store i32 %40, ptr %41, align 4, !tbaa !97
  %42 = getelementptr inbounds %struct.SK_Sketch, ptr %20, i64 0, i32 4, i32 5
  store i32 1, ptr %42, align 4, !tbaa !98
  call fastcc void @sk_projectDrawPoint(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %26, ptr noundef nonnull %4)
  br label %43

43:                                               ; preds = %29, %38
  %44 = call ptr @CTX_wm_area(ptr noundef %0) #17
  call void @ED_area_tag_redraw(ptr noundef %44) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #17
  br label %45

45:                                               ; preds = %43, %19
  ret i32 12
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SKETCH_OT_draw_stroke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_draw_stroke, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sketch_draw_stroke_modal, ptr %5, align 8, !tbaa !173
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sketch_draw_stroke_cancel, ptr %6, align 8, !tbaa !174
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode, ptr %7, align 8, !tbaa !166
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1) #17
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %11, align 8, !tbaa !167
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_draw_stroke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.20) #17
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !43
  %12 = icmp eq i16 %11, 25
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.bArmature, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call ptr @createSketch() #17
  store ptr %20, ptr %16, align 8, !tbaa !68
  br label %21

21:                                               ; preds = %19, %13
  %22 = load ptr, ptr %16, align 8, !tbaa !68
  br label %23

23:                                               ; preds = %3, %9, %21
  %24 = phi ptr [ %22, %21 ], [ null, %9 ], [ null, %3 ]
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 20, ptr noundef nonnull @.str.37) #17
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !175
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @sk_initDrawData(ptr noundef %26, ptr noundef nonnull %28) #17
  %29 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = tail call ptr @sk_createStroke() #17
  tail call void @BLI_addtail(ptr noundef %24, ptr noundef %33) #17
  store ptr %33, ptr %29, align 8, !tbaa !70
  %34 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 5
  store ptr null, ptr %34, align 8, !tbaa !76
  %35 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 5, i32 1
  store i32 -1, ptr %35, align 8, !tbaa !77
  %36 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 5, i32 2
  store i32 -1, ptr %36, align 4, !tbaa !78
  %37 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 5, i32 3
  store i32 0, ptr %37, align 8, !tbaa !79
  tail call void @sk_selectAllSketch(ptr noundef %24, i32 noundef -1) #17
  %38 = load ptr, ptr %29, align 8, !tbaa !70
  %39 = getelementptr inbounds %struct.SK_Stroke, ptr %38, i64 0, i32 5
  store i32 1, ptr %39, align 8, !tbaa !124
  br label %40

40:                                               ; preds = %23, %32
  %41 = trunc i32 %6 to i8
  %42 = load ptr, ptr %29, align 8, !tbaa !70
  tail call fastcc void @sk_draw_stroke(ptr noundef %0, ptr noundef %24, ptr noundef %42, ptr noundef %26, i8 noundef zeroext %41)
  %43 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #17
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_draw_stroke_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = icmp ne ptr %4, null
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = tail call ptr @createSketch() #17
  store ptr %15, ptr %11, align 8, !tbaa !68
  br label %16

16:                                               ; preds = %14, %3
  %17 = load ptr, ptr %11, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.SK_Sketch, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = tail call fastcc i32 @sketch_draw_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext 0, ptr noundef %19), !range !176
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @sketch_draw_stroke_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = icmp ne ptr %3, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !43
  %7 = icmp eq i16 %6, 25
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = tail call ptr @createSketch() #17
  store ptr %14, ptr %10, align 8, !tbaa !68
  br label %15

15:                                               ; preds = %13, %2
  %16 = load ptr, ptr %10, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5
  store ptr null, ptr %21, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 1
  store i32 -1, ptr %22, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 2
  store i32 -1, ptr %23, align 4, !tbaa !78
  %24 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 3
  store i32 0, ptr %24, align 8, !tbaa !79
  tail call void @sk_removeStroke(ptr noundef %16, ptr noundef nonnull %18) #17
  br label %25

25:                                               ; preds = %15, %20
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !175
  tail call void %26(ptr noundef %28) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SKETCH_OT_gesture(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sketch_draw_gesture, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @sketch_draw_gesture_modal, ptr %5, align 8, !tbaa !173
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @sketch_draw_gesture_cancel, ptr %6, align 8, !tbaa !174
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sketch_mode_gesture, ptr %7, align 8, !tbaa !166
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1) #17
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %11, align 8, !tbaa !167
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_draw_gesture(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.20) #17
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !43
  %12 = icmp eq i16 %11, 25
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.bArmature, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call ptr @createSketch() #17
  store ptr %20, ptr %16, align 8, !tbaa !68
  br label %21

21:                                               ; preds = %19, %13
  %22 = load ptr, ptr %16, align 8, !tbaa !68
  br label %23

23:                                               ; preds = %3, %9, %21
  %24 = phi ptr [ %22, %21 ], [ null, %9 ], [ null, %3 ]
  %25 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !76
  %30 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 5, i32 1
  store i32 -1, ptr %30, align 8, !tbaa !77
  %31 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 5, i32 2
  store i32 -1, ptr %31, align 4, !tbaa !78
  %32 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 5, i32 3
  store i32 0, ptr %32, align 8, !tbaa !79
  tail call void @sk_removeStroke(ptr noundef %24, ptr noundef nonnull %26) #17
  br label %33

33:                                               ; preds = %23, %28
  %34 = trunc i32 %6 to i8
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = tail call ptr %35(i64 noundef 20, ptr noundef nonnull @.str.37) #17
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %36, ptr %37, align 8, !tbaa !175
  %38 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @sk_initDrawData(ptr noundef %36, ptr noundef nonnull %38) #17
  %39 = tail call ptr @sk_createStroke() #17
  %40 = getelementptr inbounds %struct.SK_Sketch, ptr %24, i64 0, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !154
  tail call fastcc void @sk_draw_stroke(ptr noundef %0, ptr noundef %24, ptr noundef %39, ptr noundef %36, i8 noundef zeroext %34)
  %41 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #17
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sketch_draw_gesture_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = icmp ne ptr %4, null
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = tail call ptr @createSketch() #17
  store ptr %15, ptr %11, align 8, !tbaa !68
  br label %16

16:                                               ; preds = %14, %3
  %17 = load ptr, ptr %11, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.SK_Sketch, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !154
  %20 = tail call fastcc i32 @sketch_draw_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext 1, ptr noundef %19), !range !176
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @sketch_draw_gesture_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = icmp ne ptr %3, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !43
  %7 = icmp eq i16 %6, 25
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = tail call ptr @createSketch() #17
  store ptr %14, ptr %10, align 8, !tbaa !68
  br label %15

15:                                               ; preds = %13, %2
  %16 = load ptr, ptr %10, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5
  store ptr null, ptr %21, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 1
  store i32 -1, ptr %22, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 2
  store i32 -1, ptr %23, align 4, !tbaa !78
  %24 = getelementptr inbounds %struct.SK_Sketch, ptr %16, i64 0, i32 5, i32 3
  store i32 0, ptr %24, align 8, !tbaa !79
  tail call void @sk_removeStroke(ptr noundef %16, ptr noundef nonnull %18) #17
  br label %25

25:                                               ; preds = %15, %20
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !175
  tail call void %26(ptr noundef %28) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ED_operator_sketch_mode_gesture(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 25
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  br label %14

14:                                               ; preds = %1, %5, %9
  %15 = phi ptr [ %13, %9 ], [ null, %5 ], [ null, %1 ]
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %2, i64 0, i32 42
  %17 = load i8, ptr %16, align 8, !tbaa !149
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = and i32 %18, 2
  %23 = icmp eq i32 %22, 0
  %24 = icmp ne ptr %15, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.SK_Sketch, ptr %15, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %21, %14
  br label %31

31:                                               ; preds = %26, %30
  %32 = phi i32 [ 0, %30 ], [ 1, %26 ]
  ret i32 %32
}

declare ptr @RIG_graphFromArmature(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @headPoint(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 8, !tbaa !91
  %10 = sub nsw i32 %7, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11
  %13 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !177
  %14 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11, i32 2
  %15 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !178
  %16 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !153
  %18 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 9
  store float %17, ptr %18, align 8, !tbaa !179
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @tailPoint(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 4, !tbaa !90
  %8 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 8, !tbaa !91
  %10 = add nsw i32 %9, %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11
  %13 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !177
  %14 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11, i32 2
  %15 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !178
  %16 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %11, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !153
  %18 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 9
  store float %17, ptr %18, align 8, !tbaa !179
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @peekPoint(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = add nsw i32 %4, %1
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = icmp sgt i32 %5, -1
  br i1 %10, label %11, label %30

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.SK_Stroke, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !89
  %18 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !91
  %20 = mul nsw i32 %19, %5
  %21 = add nsw i32 %20, %17
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.SK_Point, ptr %15, i64 %22
  %24 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  store ptr %23, ptr %24, align 8, !tbaa !177
  %25 = getelementptr inbounds %struct.SK_Point, ptr %15, i64 %22, i32 2
  %26 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 8
  store ptr %25, ptr %26, align 8, !tbaa !178
  %27 = getelementptr inbounds %struct.SK_Point, ptr %15, i64 %22, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !153
  %29 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 9
  store float %28, ptr %29, align 8, !tbaa !179
  br label %32

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %31, i8 0, i64 20, i1 false)
  br label %32

32:                                               ; preds = %30, %11, %2
  %33 = phi ptr [ null, %2 ], [ %23, %11 ], [ null, %30 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @nextPoint(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !93
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = icmp sgt i32 %3, -2
  br i1 %9, label %10, label %29

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.SK_Stroke, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !91
  %19 = mul nsw i32 %18, %4
  %20 = add nsw i32 %19, %16
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.SK_Point, ptr %14, i64 %21
  %23 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  store ptr %22, ptr %23, align 8, !tbaa !177
  %24 = getelementptr inbounds %struct.SK_Point, ptr %14, i64 %21, i32 2
  %25 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 8
  store ptr %24, ptr %25, align 8, !tbaa !178
  %26 = getelementptr inbounds %struct.SK_Point, ptr %14, i64 %21, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !153
  %28 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 9
  store float %27, ptr %28, align 8, !tbaa !179
  br label %31

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false)
  br label %31

31:                                               ; preds = %29, %10, %1
  %32 = phi ptr [ null, %1 ], [ %22, %10 ], [ null, %29 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @nextNPoint(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = add nsw i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = icmp sgt i32 %5, -1
  br i1 %10, label %11, label %30

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.SK_Stroke, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !89
  %18 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !91
  %20 = mul nsw i32 %19, %5
  %21 = add nsw i32 %20, %17
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.SK_Point, ptr %15, i64 %22
  %24 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  store ptr %23, ptr %24, align 8, !tbaa !177
  %25 = getelementptr inbounds %struct.SK_Point, ptr %15, i64 %22, i32 2
  %26 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 8
  store ptr %25, ptr %26, align 8, !tbaa !178
  %27 = getelementptr inbounds %struct.SK_Point, ptr %15, i64 %22, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !153
  %29 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 9
  store float %28, ptr %29, align 8, !tbaa !179
  br label %32

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %31, i8 0, i64 20, i1 false)
  br label %32

32:                                               ; preds = %30, %11, %2
  %33 = phi ptr [ null, %2 ], [ %23, %11 ], [ null, %30 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @previousPoint(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !93
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = add nsw i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %8 = load i32, ptr %7, align 4, !tbaa !92
  %9 = icmp slt i32 %8, %3
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.SK_Stroke, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !91
  %19 = mul nsw i32 %18, %6
  %20 = add nsw i32 %19, %16
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.SK_Point, ptr %14, i64 %21
  %23 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  store ptr %22, ptr %23, align 8, !tbaa !177
  %24 = getelementptr inbounds %struct.SK_Point, ptr %14, i64 %21, i32 2
  %25 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 8
  store ptr %24, ptr %25, align 8, !tbaa !178
  %26 = getelementptr inbounds %struct.SK_Point, ptr %14, i64 %21, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !153
  %28 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 9
  store float %27, ptr %28, align 8, !tbaa !179
  br label %31

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false)
  br label %31

31:                                               ; preds = %29, %10, %1
  %32 = phi ptr [ null, %1 ], [ %22, %10 ], [ null, %29 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @iteratorStopped(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !92
  %6 = icmp sge i32 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_retargetStroke(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  %8 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %7) #17
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %7) #17
  call void @transpose_m3(ptr noundef nonnull %4) #17
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = call ptr %9(i64 noundef 112, ptr noundef nonnull @.str.28) #17
  %11 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = call ptr %13(i64 noundef 112, ptr noundef nonnull @.str.30) #17
  %15 = getelementptr inbounds %struct.ReebNode, ptr %14, i64 0, i32 2
  %16 = load float, ptr %12, align 4, !tbaa !99
  store float %16, ptr %15, align 4, !tbaa !99
  %17 = getelementptr inbounds float, ptr %12, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !99
  %19 = getelementptr inbounds %struct.ReebNode, ptr %14, i64 0, i32 2, i64 1
  store float %18, ptr %19, align 4, !tbaa !99
  %20 = getelementptr inbounds float, ptr %12, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !99
  %22 = getelementptr inbounds %struct.ReebNode, ptr %14, i64 0, i32 2, i64 2
  store float %21, ptr %22, align 4, !tbaa !99
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %15) #17
  %23 = getelementptr inbounds %struct.ReebNode, ptr %14, i64 0, i32 10
  %24 = getelementptr inbounds %struct.SK_Point, ptr %12, i64 0, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !99
  store float %25, ptr %23, align 4, !tbaa !99
  %26 = getelementptr inbounds %struct.SK_Point, ptr %12, i64 0, i32 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !99
  %28 = getelementptr inbounds %struct.ReebNode, ptr %14, i64 0, i32 10, i64 1
  store float %27, ptr %28, align 4, !tbaa !99
  %29 = getelementptr inbounds %struct.SK_Point, ptr %12, i64 0, i32 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !99
  %31 = getelementptr inbounds %struct.ReebNode, ptr %14, i64 0, i32 10, i64 2
  store float %30, ptr %31, align 4, !tbaa !99
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %23) #17
  %32 = getelementptr inbounds %struct.ReebArc, ptr %10, i64 0, i32 2
  store ptr %14, ptr %32, align 8, !tbaa !180
  %33 = call ptr @sk_lastStrokePoint(ptr noundef %1) #17
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %35 = call ptr %34(i64 noundef 112, ptr noundef nonnull @.str.30) #17
  %36 = getelementptr inbounds %struct.ReebNode, ptr %35, i64 0, i32 2
  %37 = load float, ptr %33, align 4, !tbaa !99
  store float %37, ptr %36, align 4, !tbaa !99
  %38 = getelementptr inbounds float, ptr %33, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !99
  %40 = getelementptr inbounds %struct.ReebNode, ptr %35, i64 0, i32 2, i64 1
  store float %39, ptr %40, align 4, !tbaa !99
  %41 = getelementptr inbounds float, ptr %33, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !99
  %43 = getelementptr inbounds %struct.ReebNode, ptr %35, i64 0, i32 2, i64 2
  store float %42, ptr %43, align 4, !tbaa !99
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %36) #17
  %44 = getelementptr inbounds %struct.ReebNode, ptr %35, i64 0, i32 10
  %45 = getelementptr inbounds %struct.SK_Point, ptr %33, i64 0, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !99
  store float %46, ptr %44, align 4, !tbaa !99
  %47 = getelementptr inbounds %struct.SK_Point, ptr %33, i64 0, i32 2, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !99
  %49 = getelementptr inbounds %struct.ReebNode, ptr %35, i64 0, i32 10, i64 1
  store float %48, ptr %49, align 4, !tbaa !99
  %50 = getelementptr inbounds %struct.SK_Point, ptr %33, i64 0, i32 2, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !99
  %52 = getelementptr inbounds %struct.ReebNode, ptr %35, i64 0, i32 10, i64 2
  store float %51, ptr %52, align 4, !tbaa !99
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %44) #17
  %53 = getelementptr inbounds %struct.ReebArc, ptr %10, i64 0, i32 3
  store ptr %35, ptr %53, align 8, !tbaa !182
  %54 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !74
  %56 = add nsw i32 %55, -2
  %57 = getelementptr inbounds %struct.ReebArc, ptr %10, i64 0, i32 10
  store i32 %56, ptr %57, align 8, !tbaa !183
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %59 = sext i32 %56 to i64
  %60 = shl nsw i64 %59, 5
  %61 = call ptr %58(i64 noundef %60, ptr noundef nonnull @.str.29) #17
  %62 = getelementptr inbounds %struct.ReebArc, ptr %10, i64 0, i32 11
  store ptr %61, ptr %62, align 8, !tbaa !184
  %63 = load i32, ptr %57, align 8, !tbaa !183
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %2, %65
  %66 = phi i64 [ %70, %65 ], [ 0, %2 ]
  %67 = load ptr, ptr %62, align 8, !tbaa !184
  %68 = getelementptr inbounds %struct.EmbedBucket, ptr %67, i64 %66, i32 2
  %69 = load ptr, ptr %11, align 8, !tbaa !102
  %70 = add nuw nsw i64 %66, 1
  %71 = getelementptr inbounds %struct.SK_Point, ptr %69, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !99
  store float %72, ptr %68, align 4, !tbaa !99
  %73 = getelementptr inbounds float, ptr %71, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !99
  %75 = getelementptr inbounds float, ptr %68, i64 1
  store float %74, ptr %75, align 4, !tbaa !99
  %76 = getelementptr inbounds float, ptr %71, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !99
  %78 = getelementptr inbounds float, ptr %68, i64 2
  store float %77, ptr %78, align 4, !tbaa !99
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %68) #17
  %79 = load ptr, ptr %62, align 8, !tbaa !184
  %80 = getelementptr inbounds %struct.EmbedBucket, ptr %79, i64 %66, i32 3
  %81 = load ptr, ptr %11, align 8, !tbaa !102
  %82 = getelementptr inbounds %struct.SK_Point, ptr %81, i64 %70, i32 2
  %83 = load float, ptr %82, align 4, !tbaa !99
  store float %83, ptr %80, align 4, !tbaa !99
  %84 = getelementptr inbounds float, ptr %82, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !99
  %86 = getelementptr inbounds float, ptr %80, i64 1
  store float %85, ptr %86, align 4, !tbaa !99
  %87 = getelementptr inbounds float, ptr %82, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !99
  %89 = getelementptr inbounds float, ptr %80, i64 2
  store float %88, ptr %89, align 4, !tbaa !99
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %80) #17
  %90 = load i32, ptr %57, align 8, !tbaa !183
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %70, %91
  br i1 %92, label %65, label %93, !llvm.loop !185

93:                                               ; preds = %65, %2
  call fastcc void @sk_autoname(ptr noundef %0, ptr noundef %10)
  %94 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 41
  %95 = load ptr, ptr %94, align 8, !tbaa !50
  %96 = call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %97 = icmp eq ptr %96, %95
  br i1 %97, label %117, label %98

98:                                               ; preds = %93
  %99 = icmp eq ptr %95, null
  br i1 %99, label %115, label %100

100:                                              ; preds = %98
  %101 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.RigGraph, ptr %101, i64 0, i32 16
  %105 = load ptr, ptr %104, align 8, !tbaa !65
  %106 = icmp eq ptr %105, %95
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  call void @RIG_freeRigGraph(ptr noundef nonnull %101) #17
  store ptr null, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %108

108:                                              ; preds = %107, %103, %100
  %109 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 19
  %113 = load ptr, ptr %112, align 8, !tbaa !67
  %114 = call ptr @RIG_graphFromArmature(ptr noundef %0, ptr noundef nonnull %95, ptr noundef %113) #17
  store ptr %114, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %115

115:                                              ; preds = %111, %108, %98
  %116 = load ptr, ptr @TEMPLATE_RIGG, align 8, !tbaa !34
  br label %117

117:                                              ; preds = %93, %115
  %118 = phi ptr [ %116, %115 ], [ null, %93 ]
  call void @BIF_retargetArc(ptr noundef %0, ptr noundef %10, ptr noundef %118) #17
  %119 = call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %120 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 45
  %121 = load i8, ptr %120, align 1, !tbaa !186
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 48
  %126 = call i64 @strtol(ptr nocapture noundef nonnull %125, ptr noundef null, i32 noundef 10) #17
  %127 = trunc i64 %126 to i32
  %128 = add nsw i32 %127, 1
  %129 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %125, i64 noundef 8, ptr noundef nonnull @.str.31, i32 noundef %128) #17
  br label %130

130:                                              ; preds = %117, %124
  %131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %132 = load ptr, ptr %32, align 8, !tbaa !180
  call void %131(ptr noundef %132) #17
  %133 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %134 = load ptr, ptr %53, align 8, !tbaa !182
  call void %133(ptr noundef %134) #17
  call void @REEB_freeArc(ptr noundef %10) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_convertStroke(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca %struct.SK_StrokeIterator, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %7 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %8 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  %10 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  %11 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %10) #17
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %10) #17
  call void @transpose_m3(ptr noundef nonnull %4) #17
  %12 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %134

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %17 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 1
  %18 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 2
  %19 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 3
  %20 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 4
  %21 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 5
  %22 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 6
  %23 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 12
  %24 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 13
  %25 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 14
  %26 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 15
  %27 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 13
  %28 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 14
  %29 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 15
  %30 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 15
  %31 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 14
  %32 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 13
  %33 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 10
  %34 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %5, i64 0, i32 11
  %35 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 43
  %36 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  br label %37

37:                                               ; preds = %15, %126
  %38 = phi i64 [ 0, %15 ], [ %130, %126 ]
  %39 = phi ptr [ null, %15 ], [ %129, %126 ]
  %40 = phi ptr [ null, %15 ], [ %128, %126 ]
  %41 = phi i32 [ 0, %15 ], [ %127, %126 ]
  %42 = load ptr, ptr %16, align 8, !tbaa !102
  %43 = getelementptr inbounds %struct.SK_Point, ptr %42, i64 %38
  %44 = getelementptr inbounds %struct.SK_Point, ptr %42, i64 %38, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !97
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %126

47:                                               ; preds = %37
  %48 = icmp eq ptr %39, null
  %49 = trunc i64 %38 to i32
  br i1 %48, label %126, label %50

50:                                               ; preds = %47
  %51 = trunc i64 %38 to i32
  %52 = sub nsw i32 %51, %41
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #17
  store ptr @headPoint, ptr %5, align 8, !tbaa !80
  store ptr @tailPoint, ptr %17, align 8, !tbaa !82
  store ptr @peekPoint, ptr %18, align 8, !tbaa !83
  store ptr @nextPoint, ptr %19, align 8, !tbaa !84
  store ptr @nextNPoint, ptr %20, align 8, !tbaa !85
  store ptr @previousPoint, ptr %21, align 8, !tbaa !86
  store ptr @iteratorStopped, ptr %22, align 8, !tbaa !87
  store ptr %1, ptr %23, align 8, !tbaa !88
  %55 = sext i32 %41 to i64
  %56 = icmp sgt i64 %38, %55
  %57 = trunc i64 %38 to i32
  br i1 %56, label %58, label %61

58:                                               ; preds = %54
  %59 = add nsw i32 %41, 1
  store i32 %59, ptr %27, align 8, !tbaa !89
  %60 = add i32 %57, -1
  store i32 %60, ptr %28, align 4, !tbaa !90
  store i32 1, ptr %29, align 8, !tbaa !91
  br label %64

61:                                               ; preds = %54
  %62 = add nsw i32 %41, -1
  store i32 %62, ptr %24, align 8, !tbaa !89
  %63 = add i32 %57, 1
  store i32 %63, ptr %25, align 4, !tbaa !90
  store i32 -1, ptr %26, align 8, !tbaa !91
  br label %64

64:                                               ; preds = %58, %61
  %65 = load i32, ptr %30, align 8, !tbaa !91
  %66 = load i32, ptr %31, align 4, !tbaa !90
  %67 = load i32, ptr %32, align 8, !tbaa !89
  %68 = add i32 %66, 1
  %69 = sub i32 %68, %67
  %70 = mul nsw i32 %69, %65
  store i32 %70, ptr %33, align 4, !tbaa !92
  store i32 -1, ptr %34, align 8, !tbaa !93
  %71 = load i8, ptr %35, align 1, !tbaa !125
  switch i8 %71, label %78 [
    i8 2, label %74
    i8 1, label %72
    i8 0, label %73
  ]

72:                                               ; preds = %64
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %64, %73, %72
  %75 = phi ptr [ @nextLengthSubdivision, %72 ], [ @nextFixedSubdivision, %73 ], [ @nextAdaptativeSubdivision, %64 ]
  %76 = load ptr, ptr %36, align 8, !tbaa !187
  %77 = call ptr @subdivideArcBy(ptr noundef %7, ptr noundef %9, ptr noundef %76, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %75) #17
  br label %78

78:                                               ; preds = %74, %64
  %79 = phi ptr [ null, %64 ], [ %77, %74 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #17
  br label %80

80:                                               ; preds = %78, %50
  %81 = phi ptr [ %79, %78 ], [ null, %50 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = call ptr @ED_armature_edit_bone_add(ptr noundef %9, ptr noundef nonnull @.str.36) #17
  %85 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 7
  %86 = load float, ptr %39, align 4, !tbaa !99
  store float %86, ptr %85, align 4, !tbaa !99
  %87 = getelementptr inbounds float, ptr %39, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !99
  %89 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 7, i64 1
  store float %88, ptr %89, align 4, !tbaa !99
  %90 = getelementptr inbounds float, ptr %39, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !99
  %92 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 7, i64 2
  store float %91, ptr %92, align 4, !tbaa !99
  %93 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 8
  %94 = load float, ptr %43, align 4, !tbaa !99
  store float %94, ptr %93, align 4, !tbaa !99
  %95 = getelementptr inbounds float, ptr %43, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !99
  %97 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 8, i64 1
  store float %96, ptr %97, align 4, !tbaa !99
  %98 = getelementptr inbounds float, ptr %43, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !99
  %100 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 8, i64 2
  store float %99, ptr %100, align 4, !tbaa !99
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %85) #17
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %93) #17
  %101 = getelementptr inbounds %struct.SK_Point, ptr %39, i64 0, i32 2
  call void @setBoneRollFromNormal(ptr noundef %84, ptr noundef nonnull %101, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  br label %102

102:                                              ; preds = %83, %80
  %103 = phi ptr [ %84, %83 ], [ %81, %80 ]
  %104 = getelementptr inbounds %struct.EditBone, ptr %103, i64 0, i32 9
  %105 = load i32, ptr %104, align 4, !tbaa !188
  %106 = or i32 %105, 7
  store i32 %106, ptr %104, align 4, !tbaa !188
  %107 = getelementptr inbounds %struct.EditBone, ptr %103, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !190
  %109 = icmp eq ptr %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %102, %110
  %111 = phi ptr [ %116, %110 ], [ %108, %102 ]
  %112 = getelementptr inbounds %struct.EditBone, ptr %111, i64 0, i32 9
  %113 = load i32, ptr %112, align 4, !tbaa !188
  %114 = or i32 %113, 7
  store i32 %114, ptr %112, align 4, !tbaa !188
  %115 = getelementptr inbounds %struct.EditBone, ptr %111, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !190
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %110, !llvm.loop !191

118:                                              ; preds = %110, %102
  %119 = phi ptr [ %103, %102 ], [ %111, %110 ]
  %120 = icmp eq ptr %40, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.EditBone, ptr %119, i64 0, i32 3
  store ptr %40, ptr %122, align 8, !tbaa !190
  %123 = getelementptr inbounds %struct.EditBone, ptr %119, i64 0, i32 9
  %124 = load i32, ptr %123, align 4, !tbaa !188
  %125 = or i32 %124, 16
  store i32 %125, ptr %123, align 4, !tbaa !188
  br label %126

126:                                              ; preds = %118, %121, %47, %37
  %127 = phi i32 [ %41, %37 ], [ %49, %47 ], [ %49, %121 ], [ %49, %118 ]
  %128 = phi ptr [ %40, %37 ], [ %40, %47 ], [ %103, %121 ], [ %103, %118 ]
  %129 = phi ptr [ %39, %37 ], [ %43, %47 ], [ %43, %121 ], [ %43, %118 ]
  %130 = add nuw nsw i64 %38, 1
  %131 = load i32, ptr %12, align 8, !tbaa !74
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %130, %132
  br i1 %133, label %37, label %134, !llvm.loop !192

134:                                              ; preds = %126, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @transpose_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_autoname(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 45
  %5 = load i8, ptr %4, align 1, !tbaa !186
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 48
  %12 = tail call i64 @strtol(ptr nocapture noundef nonnull %11, ptr noundef null, i32 noundef 10) #17
  %13 = trunc i64 %12 to i32
  %14 = add nsw i32 %13, 1
  %15 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 8, ptr noundef nonnull @.str.31, i32 noundef %14) #17
  br label %47

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 47
  %18 = load i8, ptr %17, align 1, !tbaa !193
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(2) @.str.32) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(2) @.str.33) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(2) @.str.34) #18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(2) @.str.35) #18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %20, %23, %16, %32, %29
  %34 = phi i1 [ false, %32 ], [ true, %29 ], [ false, %16 ], [ false, %23 ], [ false, %20 ]
  %35 = phi ptr [ @.str.35, %32 ], [ @.str.35, %29 ], [ @.str.35, %16 ], [ @.str.33, %23 ], [ @.str.33, %20 ]
  %36 = phi ptr [ @.str.34, %32 ], [ @.str.34, %29 ], [ @.str.34, %16 ], [ @.str.32, %23 ], [ @.str.32, %20 ]
  br i1 %34, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !180
  %40 = getelementptr inbounds %struct.ReebNode, ptr %39, i64 0, i32 2
  %41 = load float, ptr %40, align 8, !tbaa !99
  %42 = fcmp olt float %41, 0.000000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %17, i64 noundef 8, ptr noundef nonnull %36) #17
  br label %47

45:                                               ; preds = %37
  %46 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %17, i64 noundef 8, ptr noundef nonnull %35) #17
  br label %47

47:                                               ; preds = %33, %45, %43, %10, %2
  ret void
}

declare void @BIF_retargetArc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @REEB_freeArc(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

declare ptr @subdivideArcBy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @nextAdaptativeSubdivision(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @nextLengthSubdivision(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @nextFixedSubdivision(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @ED_armature_edit_bone_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @setBoneRollFromNormal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glClear(i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_drawStroke(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %7 = tail call ptr @gluNewQuadric() #17
  tail call void @gluQuadricNormals(ptr noundef %7, i32 noundef 100000) #17
  %8 = icmp eq i32 %1, -1
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %1) #17
  %11 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !74
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %119

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  br label %16

16:                                               ; preds = %14, %36
  %17 = phi i64 [ 0, %14 ], [ %37, %36 ]
  tail call void @glPushMatrix() #17
  %18 = load ptr, ptr %15, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct.SK_Point, ptr %18, i64 %17
  %20 = load float, ptr %19, align 4, !tbaa !99
  %21 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !99
  %23 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !99
  tail call void @glTranslatef(float noundef %20, float noundef %22, float noundef %24) #17
  %25 = getelementptr inbounds %struct.SK_Point, ptr %18, i64 %17, i32 3
  %26 = load float, ptr %25, align 4, !tbaa !153
  %27 = fmul float %26, 0x3FB99999A0000000
  %28 = fcmp ogt float %27, 0x3FA99999A0000000
  %29 = select i1 %28, float %27, float 0x3FA99999A0000000
  %30 = fpext float %29 to double
  tail call void @gluSphere(ptr noundef %7, double noundef %30, i32 noundef 8, i32 noundef 8) #17
  %31 = icmp eq i64 %17, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %16
  %33 = load ptr, ptr %15, align 8, !tbaa !102
  %34 = getelementptr inbounds %struct.SK_Point, ptr %33, i64 %17
  %35 = getelementptr inbounds %struct.SK_Point, ptr %34, i64 -1
  tail call fastcc void @sk_drawEdge(ptr noundef %7, ptr noundef nonnull %35, ptr noundef nonnull %34)
  br label %36

36:                                               ; preds = %32, %16
  tail call void @glPopMatrix() #17
  %37 = add nuw nsw i64 %17, 1
  %38 = load i32, ptr %11, align 8, !tbaa !74
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %16, label %119, !llvm.loop !194

41:                                               ; preds = %5
  %42 = load float, ptr %2, align 4, !tbaa !99
  store float %42, ptr %6, align 4, !tbaa !99
  %43 = getelementptr inbounds float, ptr %2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !99
  %45 = getelementptr inbounds float, ptr %6, i64 1
  store float %44, ptr %45, align 4, !tbaa !99
  %46 = getelementptr inbounds float, ptr %2, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !99
  %48 = getelementptr inbounds float, ptr %6, i64 2
  store float %47, ptr %48, align 4, !tbaa !99
  %49 = fsub float 1.000000e+00, %42
  %50 = fsub float 1.000000e+00, %44
  %51 = fsub float 1.000000e+00, %47
  %52 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !74
  %54 = sitofp i32 %53 to float
  %55 = fdiv float 1.000000e+00, %54
  %56 = fmul float %49, %55
  %57 = fmul float %50, %55
  %58 = fmul float %51, %55
  %59 = icmp sgt i32 %53, 0
  br i1 %59, label %60, label %119

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %62 = sext i32 %4 to i64
  %63 = sext i32 %3 to i64
  br label %64

64:                                               ; preds = %60, %108
  %65 = phi i64 [ 0, %60 ], [ %115, %108 ]
  %66 = load ptr, ptr %61, align 8, !tbaa !102
  %67 = getelementptr inbounds %struct.SK_Point, ptr %66, i64 %65
  call void @glPushMatrix() #17
  %68 = getelementptr inbounds %struct.SK_Point, ptr %66, i64 %65, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !97
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #17
  %72 = load float, ptr %67, align 4, !tbaa !99
  %73 = getelementptr inbounds [3 x float], ptr %67, i64 0, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !99
  %75 = getelementptr inbounds [3 x float], ptr %67, i64 0, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !99
  call void @glTranslatef(float noundef %72, float noundef %74, float noundef %76) #17
  %77 = getelementptr inbounds %struct.SK_Point, ptr %66, i64 %65, i32 3
  %78 = load float, ptr %77, align 4, !tbaa !153
  %79 = fmul float %78, 0x3FC3333340000000
  %80 = fcmp ogt float %79, 0x3FB3333340000000
  %81 = select i1 %80, float %79, float 0x3FB3333340000000
  %82 = fpext float %81 to double
  call void @gluSphere(ptr noundef %7, double noundef %82, i32 noundef 8, i32 noundef 8) #17
  call fastcc void @sk_drawNormal(ptr noundef %7, ptr noundef nonnull %67)
  br label %83

83:                                               ; preds = %71, %64
  %84 = icmp slt i64 %65, %63
  %85 = icmp sgt i64 %65, %62
  %86 = or i1 %84, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void @glColor3f(float noundef 0x3FD3333340000000, float noundef 0x3FD3333340000000, float noundef 0x3FD3333340000000) #17
  br label %89

88:                                               ; preds = %83
  call void @glColor3fv(ptr noundef nonnull %6) #17
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i32, ptr %68, align 4, !tbaa !97
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %104, label %92

92:                                               ; preds = %89
  %93 = load float, ptr %67, align 4, !tbaa !99
  %94 = getelementptr inbounds [3 x float], ptr %67, i64 0, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !99
  %96 = getelementptr inbounds [3 x float], ptr %67, i64 0, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !99
  call void @glTranslatef(float noundef %93, float noundef %95, float noundef %97) #17
  %98 = getelementptr inbounds %struct.SK_Point, ptr %66, i64 %65, i32 3
  %99 = load float, ptr %98, align 4, !tbaa !153
  %100 = fmul float %99, 0x3FB99999A0000000
  %101 = fcmp ogt float %100, 0x3FA99999A0000000
  %102 = select i1 %101, float %100, float 0x3FA99999A0000000
  %103 = fpext float %102 to double
  call void @gluSphere(ptr noundef %7, double noundef %103, i32 noundef 8, i32 noundef 8) #17
  br label %104

104:                                              ; preds = %92, %89
  %105 = icmp eq i64 %65, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.SK_Point, ptr %67, i64 -1
  call fastcc void @sk_drawEdge(ptr noundef %7, ptr noundef nonnull %107, ptr noundef nonnull %67)
  br label %108

108:                                              ; preds = %106, %104
  call void @glPopMatrix() #17
  %109 = load float, ptr %6, align 4, !tbaa !99
  %110 = fadd float %56, %109
  store float %110, ptr %6, align 4, !tbaa !99
  %111 = load float, ptr %45, align 4, !tbaa !99
  %112 = fadd float %57, %111
  store float %112, ptr %45, align 4, !tbaa !99
  %113 = load float, ptr %48, align 4, !tbaa !99
  %114 = fadd float %58, %113
  store float %114, ptr %48, align 4, !tbaa !99
  %115 = add nuw nsw i64 %65, 1
  %116 = load i32, ptr %52, align 8, !tbaa !74
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %64, label %119, !llvm.loop !195

119:                                              ; preds = %36, %108, %9, %41
  call void @gluDeleteQuadric(ptr noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

declare zeroext i8 @GPU_select_load_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_drawStrokeSubdivision(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.SK_StrokeIterator, align 8
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 43
  %11 = load i8, ptr %10, align 1, !tbaa !125
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %198, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %198

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %19 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 1
  %20 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 2
  %21 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 3
  %22 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 4
  %23 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 5
  %24 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 6
  %25 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 12
  %26 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 13
  %27 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 14
  %28 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 15
  %29 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 13
  %30 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 14
  %31 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 15
  %32 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 15
  %33 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 14
  %34 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 13
  %35 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 10
  %36 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %9, i64 0, i32 11
  %37 = getelementptr inbounds %struct.BArcIterator, ptr %9, i64 0, i32 7
  %38 = getelementptr inbounds float, ptr %3, i64 1
  %39 = getelementptr inbounds float, ptr %3, i64 2
  %40 = getelementptr inbounds float, ptr %4, i64 1
  %41 = getelementptr inbounds float, ptr %4, i64 2
  %42 = getelementptr inbounds %struct.BArcIterator, ptr %9, i64 0, i32 7
  %43 = getelementptr inbounds float, ptr %5, i64 1
  %44 = getelementptr inbounds float, ptr %5, i64 2
  %45 = getelementptr inbounds float, ptr %6, i64 1
  %46 = getelementptr inbounds float, ptr %6, i64 2
  %47 = getelementptr inbounds %struct.BArcIterator, ptr %9, i64 0, i32 7
  %48 = getelementptr inbounds float, ptr %7, i64 1
  %49 = getelementptr inbounds float, ptr %7, i64 2
  %50 = getelementptr inbounds float, ptr %8, i64 1
  %51 = getelementptr inbounds float, ptr %8, i64 2
  br label %52

52:                                               ; preds = %17, %192
  %53 = phi i64 [ 0, %17 ], [ %194, %192 ]
  %54 = phi i32 [ %15, %17 ], [ %195, %192 ]
  %55 = phi i32 [ -1, %17 ], [ %193, %192 ]
  %56 = load ptr, ptr %18, align 8, !tbaa !102
  %57 = getelementptr inbounds %struct.SK_Point, ptr %56, i64 %53, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !97
  %59 = icmp eq i32 %58, 1
  %60 = add nsw i32 %54, -1
  %61 = zext i32 %60 to i64
  %62 = icmp eq i64 %53, %61
  %63 = select i1 %59, i1 true, i1 %62
  br i1 %63, label %64, label %192

64:                                               ; preds = %52
  %65 = icmp ne i32 %55, -1
  %66 = trunc i64 %53 to i32
  %67 = sub nsw i32 %66, %55
  %68 = icmp sgt i32 %67, 1
  %69 = select i1 %65, i1 %68, i1 false
  %70 = trunc i64 %53 to i32
  br i1 %69, label %71, label %192

71:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #17
  store ptr @headPoint, ptr %9, align 8, !tbaa !80
  store ptr @tailPoint, ptr %19, align 8, !tbaa !82
  store ptr @peekPoint, ptr %20, align 8, !tbaa !83
  store ptr @nextPoint, ptr %21, align 8, !tbaa !84
  store ptr @nextNPoint, ptr %22, align 8, !tbaa !85
  store ptr @previousPoint, ptr %23, align 8, !tbaa !86
  store ptr @iteratorStopped, ptr %24, align 8, !tbaa !87
  store ptr %1, ptr %25, align 8, !tbaa !88
  %72 = sext i32 %55 to i64
  %73 = icmp sgt i64 %53, %72
  %74 = trunc i64 %53 to i32
  br i1 %73, label %75, label %78

75:                                               ; preds = %71
  %76 = add nuw nsw i32 %55, 1
  store i32 %76, ptr %29, align 8, !tbaa !89
  %77 = add i32 %74, -1
  store i32 %77, ptr %30, align 4, !tbaa !90
  store i32 1, ptr %31, align 8, !tbaa !91
  br label %81

78:                                               ; preds = %71
  %79 = add nsw i32 %55, -1
  store i32 %79, ptr %26, align 8, !tbaa !89
  %80 = add i32 %74, 1
  store i32 %80, ptr %27, align 4, !tbaa !90
  store i32 -1, ptr %28, align 8, !tbaa !91
  br label %81

81:                                               ; preds = %75, %78
  %82 = load i32, ptr %32, align 8, !tbaa !91
  %83 = load i32, ptr %33, align 4, !tbaa !90
  %84 = load i32, ptr %34, align 8, !tbaa !89
  %85 = add i32 %83, 1
  %86 = sub i32 %85, %84
  %87 = mul nsw i32 %86, %82
  store i32 %87, ptr %35, align 4, !tbaa !92
  store i32 -1, ptr %36, align 8, !tbaa !93
  %88 = load i8, ptr %10, align 1, !tbaa !125
  switch i8 %88, label %191 [
    i8 2, label %89
    i8 1, label %123
    i8 0, label %157
  ]

89:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  %90 = call ptr @gluNewQuadric() #17
  call void @gluQuadricNormals(ptr noundef %90, i32 noundef 100000) #17
  %91 = load ptr, ptr %9, align 8, !tbaa !196
  %92 = call ptr %91(ptr noundef nonnull %9) #17
  %93 = load ptr, ptr %47, align 8, !tbaa !198
  %94 = load float, ptr %93, align 4, !tbaa !99
  store float %94, ptr %7, align 4, !tbaa !99
  %95 = getelementptr inbounds float, ptr %93, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !99
  store float %96, ptr %48, align 4, !tbaa !99
  %97 = getelementptr inbounds float, ptr %93, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !99
  store float %98, ptr %49, align 4, !tbaa !99
  %99 = call i32 @nextAdaptativeSubdivision(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %87, ptr noundef nonnull %7, ptr noundef nonnull %8) #17, !callees !199
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %122, label %101

101:                                              ; preds = %89, %101
  %102 = phi i32 [ %120, %101 ], [ %99, %89 ]
  %103 = load ptr, ptr %18, align 8, !tbaa !102
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %struct.SK_Point, ptr %103, i64 %104
  call void @glPushMatrix() #17
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #17
  %106 = load float, ptr %105, align 4, !tbaa !99
  %107 = getelementptr inbounds [3 x float], ptr %105, i64 0, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !99
  %109 = getelementptr inbounds [3 x float], ptr %105, i64 0, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !99
  call void @glTranslatef(float noundef %106, float noundef %108, float noundef %110) #17
  %111 = getelementptr inbounds %struct.SK_Point, ptr %103, i64 %104, i32 3
  %112 = load float, ptr %111, align 4, !tbaa !153
  %113 = fmul float %112, 0x3FC3333340000000
  %114 = fcmp ogt float %113, 0x3FB3333340000000
  %115 = select i1 %114, float %113, float 0x3FB3333340000000
  %116 = fpext float %115 to double
  call void @gluSphere(ptr noundef %90, double noundef %116, i32 noundef 8, i32 noundef 8) #17
  call fastcc void @sk_drawNormal(ptr noundef %90, ptr noundef nonnull %105)
  call void @glPopMatrix() #17
  %117 = load float, ptr %8, align 4, !tbaa !99
  store float %117, ptr %7, align 4, !tbaa !99
  %118 = load float, ptr %50, align 4, !tbaa !99
  store float %118, ptr %48, align 4, !tbaa !99
  %119 = load float, ptr %51, align 4, !tbaa !99
  store float %119, ptr %49, align 4, !tbaa !99
  %120 = call i32 @nextAdaptativeSubdivision(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %102, i32 noundef %87, ptr noundef nonnull %7, ptr noundef nonnull %8) #17, !callees !199
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %101, !llvm.loop !200

122:                                              ; preds = %101, %89
  call void @gluDeleteQuadric(ptr noundef %90) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %191

123:                                              ; preds = %81
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %124 = call ptr @gluNewQuadric() #17
  call void @gluQuadricNormals(ptr noundef %124, i32 noundef 100000) #17
  %125 = load ptr, ptr %9, align 8, !tbaa !196
  %126 = call ptr %125(ptr noundef nonnull %9) #17
  %127 = load ptr, ptr %42, align 8, !tbaa !198
  %128 = load float, ptr %127, align 4, !tbaa !99
  store float %128, ptr %5, align 4, !tbaa !99
  %129 = getelementptr inbounds float, ptr %127, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !99
  store float %130, ptr %43, align 4, !tbaa !99
  %131 = getelementptr inbounds float, ptr %127, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !99
  store float %132, ptr %44, align 4, !tbaa !99
  %133 = call i32 @nextLengthSubdivision(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %87, ptr noundef nonnull %5, ptr noundef nonnull %6) #17, !callees !199
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %156, label %135

135:                                              ; preds = %123, %135
  %136 = phi i32 [ %154, %135 ], [ %133, %123 ]
  %137 = load ptr, ptr %18, align 8, !tbaa !102
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds %struct.SK_Point, ptr %137, i64 %138
  call void @glPushMatrix() #17
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #17
  %140 = load float, ptr %139, align 4, !tbaa !99
  %141 = getelementptr inbounds [3 x float], ptr %139, i64 0, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !99
  %143 = getelementptr inbounds [3 x float], ptr %139, i64 0, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !99
  call void @glTranslatef(float noundef %140, float noundef %142, float noundef %144) #17
  %145 = getelementptr inbounds %struct.SK_Point, ptr %137, i64 %138, i32 3
  %146 = load float, ptr %145, align 4, !tbaa !153
  %147 = fmul float %146, 0x3FC3333340000000
  %148 = fcmp ogt float %147, 0x3FB3333340000000
  %149 = select i1 %148, float %147, float 0x3FB3333340000000
  %150 = fpext float %149 to double
  call void @gluSphere(ptr noundef %124, double noundef %150, i32 noundef 8, i32 noundef 8) #17
  call fastcc void @sk_drawNormal(ptr noundef %124, ptr noundef nonnull %139)
  call void @glPopMatrix() #17
  %151 = load float, ptr %6, align 4, !tbaa !99
  store float %151, ptr %5, align 4, !tbaa !99
  %152 = load float, ptr %45, align 4, !tbaa !99
  store float %152, ptr %43, align 4, !tbaa !99
  %153 = load float, ptr %46, align 4, !tbaa !99
  store float %153, ptr %44, align 4, !tbaa !99
  %154 = call i32 @nextLengthSubdivision(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %136, i32 noundef %87, ptr noundef nonnull %5, ptr noundef nonnull %6) #17, !callees !199
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %135, !llvm.loop !200

156:                                              ; preds = %135, %123
  call void @gluDeleteQuadric(ptr noundef %124) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  br label %191

157:                                              ; preds = %81
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %158 = call ptr @gluNewQuadric() #17
  call void @gluQuadricNormals(ptr noundef %158, i32 noundef 100000) #17
  %159 = load ptr, ptr %9, align 8, !tbaa !196
  %160 = call ptr %159(ptr noundef nonnull %9) #17
  %161 = load ptr, ptr %37, align 8, !tbaa !198
  %162 = load float, ptr %161, align 4, !tbaa !99
  store float %162, ptr %3, align 4, !tbaa !99
  %163 = getelementptr inbounds float, ptr %161, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !99
  store float %164, ptr %38, align 4, !tbaa !99
  %165 = getelementptr inbounds float, ptr %161, i64 2
  %166 = load float, ptr %165, align 4, !tbaa !99
  store float %166, ptr %39, align 4, !tbaa !99
  %167 = call i32 @nextFixedSubdivision(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %87, ptr noundef nonnull %3, ptr noundef nonnull %4) #17, !callees !199
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %190, label %169

169:                                              ; preds = %157, %169
  %170 = phi i32 [ %188, %169 ], [ %167, %157 ]
  %171 = load ptr, ptr %18, align 8, !tbaa !102
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds %struct.SK_Point, ptr %171, i64 %172
  call void @glPushMatrix() #17
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #17
  %174 = load float, ptr %173, align 4, !tbaa !99
  %175 = getelementptr inbounds [3 x float], ptr %173, i64 0, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !99
  %177 = getelementptr inbounds [3 x float], ptr %173, i64 0, i64 2
  %178 = load float, ptr %177, align 4, !tbaa !99
  call void @glTranslatef(float noundef %174, float noundef %176, float noundef %178) #17
  %179 = getelementptr inbounds %struct.SK_Point, ptr %171, i64 %172, i32 3
  %180 = load float, ptr %179, align 4, !tbaa !153
  %181 = fmul float %180, 0x3FC3333340000000
  %182 = fcmp ogt float %181, 0x3FB3333340000000
  %183 = select i1 %182, float %181, float 0x3FB3333340000000
  %184 = fpext float %183 to double
  call void @gluSphere(ptr noundef %158, double noundef %184, i32 noundef 8, i32 noundef 8) #17
  call fastcc void @sk_drawNormal(ptr noundef %158, ptr noundef nonnull %173)
  call void @glPopMatrix() #17
  %185 = load float, ptr %4, align 4, !tbaa !99
  store float %185, ptr %3, align 4, !tbaa !99
  %186 = load float, ptr %40, align 4, !tbaa !99
  store float %186, ptr %38, align 4, !tbaa !99
  %187 = load float, ptr %41, align 4, !tbaa !99
  store float %187, ptr %39, align 4, !tbaa !99
  %188 = call i32 @nextFixedSubdivision(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %170, i32 noundef %87, ptr noundef nonnull %3, ptr noundef nonnull %4) #17, !callees !199
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %169, !llvm.loop !200

190:                                              ; preds = %169, %157
  call void @gluDeleteQuadric(ptr noundef %158) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %191

191:                                              ; preds = %81, %156, %190, %122
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #17
  br label %192

192:                                              ; preds = %191, %64, %52
  %193 = phi i32 [ %55, %52 ], [ %70, %64 ], [ %70, %191 ]
  %194 = add nuw nsw i64 %53, 1
  %195 = load i32, ptr %14, align 8, !tbaa !74
  %196 = sext i32 %195 to i64
  %197 = icmp slt i64 %194, %196
  br i1 %197, label %52, label %198, !llvm.loop !201

198:                                              ; preds = %192, %13, %2
  ret void
}

declare ptr @gluNewQuadric() local_unnamed_addr #2

declare void @gluQuadricNormals(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_drawEdge(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.sk_drawEdge.vec2, i64 12, i1 false)
  %6 = load float, ptr %2, align 4, !tbaa !99
  %7 = load float, ptr %1, align 4, !tbaa !99
  %8 = fsub float %6, %7
  store float %8, ptr %4, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !99
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !99
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %4, i64 1
  store float %13, ptr %14, align 4, !tbaa !99
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !99
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !99
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds float, ptr %4, i64 2
  store float %19, ptr %20, align 4, !tbaa !99
  %21 = fmul float %13, %13
  %22 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %21)
  %23 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %22)
  %24 = fcmp ogt float %23, 0x38AA95A5C0000000
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = tail call float @sqrtf(float noundef %23) #17
  %27 = fdiv float 1.000000e+00, %26
  %28 = load float, ptr %4, align 4, !tbaa !99
  %29 = fmul float %28, %27
  store float %29, ptr %4, align 4, !tbaa !99
  %30 = load float, ptr %14, align 4, !tbaa !99
  %31 = fmul float %27, %30
  store float %31, ptr %14, align 4, !tbaa !99
  %32 = load float, ptr %20, align 4, !tbaa !99
  %33 = fmul float %27, %32
  %34 = fpext float %26 to double
  br label %36

35:                                               ; preds = %3
  store float 0.000000e+00, ptr %4, align 4, !tbaa !99
  store float 0.000000e+00, ptr %14, align 4, !tbaa !99
  br label %36

36:                                               ; preds = %25, %35
  %37 = phi float [ 0.000000e+00, %35 ], [ %33, %25 ]
  %38 = phi double [ 0.000000e+00, %35 ], [ %34, %25 ]
  store float %37, ptr %20, align 4, !tbaa !99
  %39 = getelementptr inbounds float, ptr %5, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !99
  %41 = getelementptr inbounds float, ptr %5, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !99
  %43 = load float, ptr %14, align 4, !tbaa !99
  %44 = fneg float %42
  %45 = fmul float %43, %44
  %46 = tail call float @llvm.fmuladd.f32(float %40, float %37, float %45)
  %47 = load float, ptr %4, align 4, !tbaa !99
  %48 = load float, ptr %5, align 4, !tbaa !99
  %49 = fneg float %48
  %50 = fmul float %37, %49
  %51 = tail call float @llvm.fmuladd.f32(float %42, float %47, float %50)
  %52 = fneg float %40
  %53 = fmul float %47, %52
  %54 = tail call float @llvm.fmuladd.f32(float %48, float %43, float %53)
  %55 = fcmp une float %46, 0.000000e+00
  %56 = fcmp une float %51, 0.000000e+00
  %57 = select i1 %55, i1 true, i1 %56
  %58 = fcmp une float %54, 0.000000e+00
  %59 = select i1 %57, i1 true, i1 %58
  %60 = select i1 %59, float %51, float 1.000000e+00
  %61 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %62 = call float @llvm.fmuladd.f32(float %61, float 0x404CA5DC20000000, float 1.800000e+02)
  call void @glRotatef(float noundef %62, float noundef %46, float noundef %60, float noundef %54) #17
  %63 = getelementptr inbounds %struct.SK_Point, ptr %2, i64 0, i32 3
  %64 = load float, ptr %63, align 4, !tbaa !153
  %65 = fmul float %64, 0x3FB99999A0000000
  %66 = fcmp ogt float %65, 0x3FA99999A0000000
  %67 = select i1 %66, float %65, float 0x3FA99999A0000000
  %68 = fpext float %67 to double
  %69 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 3
  %70 = load float, ptr %69, align 4, !tbaa !153
  %71 = fmul float %70, 0x3FB99999A0000000
  %72 = fcmp ogt float %71, 0x3FA99999A0000000
  %73 = select i1 %72, float %71, float 0x3FA99999A0000000
  %74 = fpext float %73 to double
  call void @gluCylinder(ptr noundef %0, double noundef %68, double noundef %74, double noundef %38, i32 noundef 8, i32 noundef 8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_drawNormal(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.sk_drawEdge.vec2, i64 12, i1 false)
  tail call void @glPushMatrix() #17
  %4 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds float, ptr %3, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !99
  %7 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 2, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %3, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !99
  %11 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !99
  %13 = fneg float %10
  %14 = fmul float %12, %13
  %15 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %14)
  %16 = load float, ptr %4, align 4, !tbaa !99
  %17 = load float, ptr %3, align 4, !tbaa !99
  %18 = fneg float %17
  %19 = fmul float %8, %18
  %20 = tail call float @llvm.fmuladd.f32(float %10, float %16, float %19)
  %21 = fneg float %6
  %22 = fmul float %16, %21
  %23 = tail call float @llvm.fmuladd.f32(float %17, float %12, float %22)
  %24 = fcmp une float %15, 0.000000e+00
  %25 = fcmp une float %20, 0.000000e+00
  %26 = select i1 %24, i1 true, i1 %25
  %27 = fcmp une float %23, 0.000000e+00
  %28 = select i1 %26, i1 true, i1 %27
  %29 = select i1 %28, float %20, float 1.000000e+00
  %30 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %31 = fmul float %30, 0x404CA5DC20000000
  call void @glRotatef(float noundef %31, float noundef %15, float noundef %29, float noundef %23) #17
  call void @glColor3f(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #17
  %32 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 3
  %33 = load float, ptr %32, align 4, !tbaa !153
  %34 = fmul float %33, 0x3FA99999A0000000
  %35 = fcmp ogt float %34, 0x3F999999A0000000
  %36 = select i1 %35, float %34, float 0x3F999999A0000000
  %37 = fpext float %36 to double
  %38 = fmul float %33, 0x3FECCCCCC0000000
  %39 = fcmp ogt float %38, 0x3FDCCCCCC0000000
  %40 = select i1 %39, float %38, float 0x3FDCCCCCC0000000
  %41 = fpext float %40 to double
  call void @gluCylinder(ptr noundef %0, double noundef %37, double noundef 0.000000e+00, double noundef %41, i32 noundef 10, i32 noundef 2) #17
  call void @glPopMatrix() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @gluCylinder(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @gluSphere(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @view3d_opengl_select(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sk_selectAllSketch(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @sk_shrinkStrokeBuffer(ptr noundef) local_unnamed_addr #2

declare void @sk_insertStrokePoints(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sk_initDrawData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sk_getStrokeSnapPoint(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [2 x i16], align 2
  %7 = alloca [2 x i16], align 2
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca float, align 4
  %13 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 51
  %15 = load i8, ptr %14, align 1, !tbaa !202
  %16 = icmp eq i8 %15, 4
  br i1 %16, label %17, label %187

17:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %18 = getelementptr inbounds %struct.SK_Sketch, ptr %2, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %18) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %19 = load i32, ptr %4, align 4, !tbaa !38
  %20 = sitofp i32 %19 to float
  store float %20, ptr %8, align 4, !tbaa !99
  %21 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !38
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %23, ptr %24, align 4, !tbaa !99
  %25 = call zeroext i8 @peelObjectsContext(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %8, i32 noundef 0) #17
  %26 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !74
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.SK_Stroke, ptr %3, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !102
  %32 = zext nneg i32 %27 to i64
  %33 = getelementptr %struct.SK_Point, ptr %31, i64 %32
  %34 = getelementptr %struct.SK_Point, ptr %33, i64 -1, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !97
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = getelementptr %struct.SK_Point, ptr %33, i64 -1
  br label %42

39:                                               ; preds = %29, %17
  %40 = load i1, ptr @LAST_SNAP_POINT_VALID, align 4
  %41 = select i1 %40, ptr @LAST_SNAP_POINT, ptr null
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %38, %37 ], [ %41, %39 ]
  %44 = load ptr, ptr %18, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %171, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 54
  %48 = icmp eq ptr %43, null
  %49 = getelementptr inbounds float, ptr %43, i64 1
  %50 = getelementptr inbounds float, ptr %43, i64 2
  br label %51

51:                                               ; preds = %46, %155
  %52 = phi ptr [ %44, %46 ], [ %161, %155 ]
  %53 = phi float [ 0.000000e+00, %46 ], [ %160, %155 ]
  %54 = phi float [ 0x47EFFFFFE0000000, %46 ], [ %159, %155 ]
  %55 = phi float [ 0.000000e+00, %46 ], [ %158, %155 ]
  %56 = phi float [ 0.000000e+00, %46 ], [ %157, %155 ]
  %57 = phi float [ 0.000000e+00, %46 ], [ %156, %155 ]
  %58 = getelementptr inbounds %struct.DepthPeel, ptr %52, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !203
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %155

61:                                               ; preds = %51
  store i32 1, ptr %58, align 8, !tbaa !203
  %62 = load i16, ptr %47, align 2, !tbaa !205
  %63 = and i16 %62, 4
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %52, align 8, !tbaa !206
  %67 = icmp eq ptr %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.DepthPeel, ptr %52, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !207
  br label %73

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.DepthPeel, ptr %52, i64 0, i32 5
  br label %85

73:                                               ; preds = %68, %81
  %74 = phi ptr [ %66, %68 ], [ %83, %81 ]
  %75 = phi ptr [ null, %68 ], [ %82, %81 ]
  %76 = getelementptr inbounds %struct.DepthPeel, ptr %74, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !207
  %78 = icmp eq ptr %77, %70
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.DepthPeel, ptr %74, i64 0, i32 6
  store i32 1, ptr %80, align 8, !tbaa !203
  br label %81

81:                                               ; preds = %73, %79
  %82 = phi ptr [ %74, %79 ], [ %75, %73 ]
  %83 = load ptr, ptr %74, align 8, !tbaa !206
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %73, !llvm.loop !208

85:                                               ; preds = %71, %89
  %86 = phi ptr [ %87, %89 ], [ %52, %71 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !206
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.DepthPeel, ptr %87, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !207
  %92 = load ptr, ptr %72, align 8, !tbaa !207
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %85, !llvm.loop !209

94:                                               ; preds = %81, %89, %85, %65
  %95 = phi ptr [ null, %65 ], [ %87, %89 ], [ null, %85 ], [ %82, %81 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %124, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.DepthPeel, ptr %95, i64 0, i32 6
  store i32 1, ptr %98, align 8, !tbaa !203
  %99 = getelementptr inbounds %struct.DepthPeel, ptr %52, i64 0, i32 3
  %100 = getelementptr inbounds %struct.DepthPeel, ptr %95, i64 0, i32 3
  %101 = load float, ptr %99, align 4, !tbaa !99
  %102 = load float, ptr %100, align 4, !tbaa !99
  %103 = fadd float %101, %102
  %104 = getelementptr inbounds %struct.DepthPeel, ptr %52, i64 0, i32 3, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !99
  %106 = getelementptr inbounds %struct.DepthPeel, ptr %95, i64 0, i32 3, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !99
  %108 = fadd float %105, %107
  %109 = getelementptr inbounds %struct.DepthPeel, ptr %52, i64 0, i32 3, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !99
  %111 = getelementptr inbounds %struct.DepthPeel, ptr %95, i64 0, i32 3, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !99
  %113 = fadd float %110, %112
  %114 = fmul float %103, 5.000000e-01
  %115 = fmul float %108, 5.000000e-01
  %116 = fmul float %113, 5.000000e-01
  %117 = fsub float %102, %101
  %118 = fsub float %107, %105
  %119 = fsub float %112, %110
  %120 = fmul float %118, %118
  %121 = call float @llvm.fmuladd.f32(float %117, float %117, float %120)
  %122 = call float @llvm.fmuladd.f32(float %119, float %119, float %121)
  %123 = call float @sqrtf(float noundef %122) #17
  br label %131

124:                                              ; preds = %94
  %125 = getelementptr inbounds %struct.DepthPeel, ptr %52, i64 0, i32 3
  %126 = load float, ptr %125, align 4, !tbaa !99
  %127 = getelementptr inbounds %struct.DepthPeel, ptr %52, i64 0, i32 3, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !99
  %129 = getelementptr inbounds %struct.DepthPeel, ptr %52, i64 0, i32 3, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !99
  br label %131

131:                                              ; preds = %124, %97
  %132 = phi float [ %130, %124 ], [ %116, %97 ]
  %133 = phi float [ %128, %124 ], [ %115, %97 ]
  %134 = phi float [ %126, %124 ], [ %114, %97 ]
  %135 = phi float [ 0.000000e+00, %124 ], [ %123, %97 ]
  br i1 %48, label %149, label %136

136:                                              ; preds = %131
  %137 = load float, ptr %43, align 4, !tbaa !99
  %138 = fsub float %134, %137
  %139 = load float, ptr %49, align 4, !tbaa !99
  %140 = fsub float %133, %139
  %141 = load float, ptr %50, align 4, !tbaa !99
  %142 = fsub float %132, %141
  %143 = fmul float %140, %140
  %144 = call float @llvm.fmuladd.f32(float %138, float %138, float %143)
  %145 = call float @llvm.fmuladd.f32(float %142, float %142, float %144)
  %146 = call float @sqrtf(float noundef %145) #17
  %147 = fcmp olt float %146, %54
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %131, %136, %148
  %150 = phi float [ %134, %148 ], [ %57, %136 ], [ %134, %131 ]
  %151 = phi float [ %133, %148 ], [ %56, %136 ], [ %133, %131 ]
  %152 = phi float [ %132, %148 ], [ %55, %136 ], [ %132, %131 ]
  %153 = phi float [ %146, %148 ], [ %54, %136 ], [ 0.000000e+00, %131 ]
  %154 = phi float [ %135, %148 ], [ %53, %136 ], [ %135, %131 ]
  br i1 %48, label %163, label %155

155:                                              ; preds = %149, %51
  %156 = phi float [ %150, %149 ], [ %57, %51 ]
  %157 = phi float [ %151, %149 ], [ %56, %51 ]
  %158 = phi float [ %152, %149 ], [ %55, %51 ]
  %159 = phi float [ %153, %149 ], [ %54, %51 ]
  %160 = phi float [ %154, %149 ], [ %53, %51 ]
  %161 = load ptr, ptr %52, align 8, !tbaa !34
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %51, !llvm.loop !210

163:                                              ; preds = %149, %155
  %164 = phi float [ %156, %155 ], [ %150, %149 ]
  %165 = phi float [ %157, %155 ], [ %151, %149 ]
  %166 = phi float [ %158, %155 ], [ %152, %149 ]
  %167 = phi float [ %159, %155 ], [ %153, %149 ]
  %168 = phi float [ %160, %155 ], [ %154, %149 ]
  %169 = fcmp une float %167, 0x47EFFFFFE0000000
  %170 = fmul float %168, 5.000000e-01
  br label %171

171:                                              ; preds = %163, %42
  %172 = phi float [ 0.000000e+00, %42 ], [ %164, %163 ]
  %173 = phi float [ 0.000000e+00, %42 ], [ %165, %163 ]
  %174 = phi float [ 0.000000e+00, %42 ], [ %166, %163 ]
  %175 = phi i1 [ false, %42 ], [ %169, %163 ]
  %176 = phi float [ 0.000000e+00, %42 ], [ %170, %163 ]
  br i1 %175, label %177, label %185

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.SK_DrawData, ptr %4, i64 0, i32 2
  %179 = load i32, ptr %178, align 4, !tbaa !171
  %180 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 4
  store i32 %179, ptr %180, align 4, !tbaa !97
  %181 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 5
  store i32 0, ptr %181, align 4, !tbaa !98
  %182 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 3
  store float %176, ptr %182, align 4, !tbaa !153
  store float %172, ptr %1, align 4, !tbaa !99
  %183 = getelementptr inbounds float, ptr %1, i64 1
  store float %173, ptr %183, align 4, !tbaa !99
  %184 = getelementptr inbounds float, ptr %1, i64 2
  store float %174, ptr %184, align 4, !tbaa !99
  br label %185

185:                                              ; preds = %177, %171
  %186 = phi i32 [ 1, %177 ], [ 0, %171 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br label %316

187:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  store float 3.000000e+01, ptr %12, align 4, !tbaa !99
  %188 = load ptr, ptr %2, align 8, !tbaa !34
  %189 = icmp eq ptr %188, null
  br i1 %189, label %292, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 1
  %192 = getelementptr inbounds i32, ptr %4, i64 1
  %193 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %194 = getelementptr inbounds i32, ptr %4, i64 1
  %195 = getelementptr inbounds float, ptr %1, i64 1
  %196 = getelementptr inbounds float, ptr %1, i64 2
  br label %197

197:                                              ; preds = %190, %288
  %198 = phi ptr [ %188, %190 ], [ %290, %288 ]
  %199 = phi i32 [ 0, %190 ], [ %289, %288 ]
  %200 = icmp eq ptr %198, %3
  %201 = call ptr @CTX_wm_region(ptr noundef %0) #17
  %202 = getelementptr inbounds %struct.SK_Stroke, ptr %198, i64 0, i32 3
  %203 = load i32, ptr %202, align 8, !tbaa !74
  %204 = icmp sgt i32 %203, 0
  br i1 %200, label %205, label %245

205:                                              ; preds = %197
  br i1 %204, label %206, label %279

206:                                              ; preds = %205
  %207 = getelementptr inbounds %struct.SK_Stroke, ptr %198, i64 0, i32 2
  br label %208

208:                                              ; preds = %239, %206
  %209 = phi i64 [ 0, %206 ], [ %241, %239 ]
  %210 = phi ptr [ null, %206 ], [ %240, %239 ]
  %211 = load ptr, ptr %207, align 8, !tbaa !102
  %212 = getelementptr inbounds %struct.SK_Point, ptr %211, i64 %209, i32 4
  %213 = load i32, ptr %212, align 4, !tbaa !97
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %239

215:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %216 = getelementptr inbounds %struct.SK_Point, ptr %211, i64 %209
  %217 = call i32 @ED_view3d_project_short_global(ptr noundef %201, ptr noundef %216, ptr noundef nonnull %7, i32 noundef 0) #17
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %215
  %220 = load i16, ptr %7, align 2, !tbaa !117
  %221 = sext i16 %220 to i32
  %222 = load i32, ptr %4, align 4, !tbaa !38
  %223 = sub nsw i32 %221, %222
  %224 = call i32 @llvm.abs.i32(i32 %223, i1 true)
  %225 = load i16, ptr %193, align 2, !tbaa !117
  %226 = sext i16 %225 to i32
  %227 = load i32, ptr %194, align 4, !tbaa !38
  %228 = sub nsw i32 %226, %227
  %229 = call i32 @llvm.abs.i32(i32 %228, i1 true)
  %230 = add nuw nsw i32 %229, %224
  %231 = sitofp i32 %230 to float
  %232 = load float, ptr %12, align 4, !tbaa !99
  %233 = fcmp ogt float %232, %231
  br i1 %233, label %234, label %237

234:                                              ; preds = %219
  store float %231, ptr %12, align 4, !tbaa !99
  %235 = load ptr, ptr %207, align 8, !tbaa !102
  %236 = getelementptr inbounds %struct.SK_Point, ptr %235, i64 %209
  br label %237

237:                                              ; preds = %234, %219, %215
  %238 = phi ptr [ %236, %234 ], [ %210, %219 ], [ %210, %215 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  br label %239

239:                                              ; preds = %237, %208
  %240 = phi ptr [ %238, %237 ], [ %210, %208 ]
  %241 = add nuw nsw i64 %209, 1
  %242 = load i32, ptr %202, align 8, !tbaa !74
  %243 = sext i32 %242 to i64
  %244 = icmp slt i64 %241, %243
  br i1 %244, label %208, label %279, !llvm.loop !211

245:                                              ; preds = %197
  br i1 %204, label %246, label %279

246:                                              ; preds = %245
  %247 = getelementptr inbounds %struct.SK_Stroke, ptr %198, i64 0, i32 2
  br label %248

248:                                              ; preds = %273, %246
  %249 = phi i64 [ 0, %246 ], [ %275, %273 ]
  %250 = phi ptr [ null, %246 ], [ %274, %273 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %251 = load ptr, ptr %247, align 8, !tbaa !102
  %252 = getelementptr inbounds %struct.SK_Point, ptr %251, i64 %249
  %253 = call i32 @ED_view3d_project_short_global(ptr noundef %201, ptr noundef %252, ptr noundef nonnull %6, i32 noundef 0) #17
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %273

255:                                              ; preds = %248
  %256 = load i16, ptr %6, align 2, !tbaa !117
  %257 = sext i16 %256 to i32
  %258 = load i32, ptr %4, align 4, !tbaa !38
  %259 = sub nsw i32 %257, %258
  %260 = call i32 @llvm.abs.i32(i32 %259, i1 true)
  %261 = load i16, ptr %191, align 2, !tbaa !117
  %262 = sext i16 %261 to i32
  %263 = load i32, ptr %192, align 4, !tbaa !38
  %264 = sub nsw i32 %262, %263
  %265 = call i32 @llvm.abs.i32(i32 %264, i1 true)
  %266 = add nuw nsw i32 %265, %260
  %267 = sitofp i32 %266 to float
  %268 = load float, ptr %12, align 4, !tbaa !99
  %269 = fcmp ogt float %268, %267
  br i1 %269, label %270, label %273

270:                                              ; preds = %255
  store float %267, ptr %12, align 4, !tbaa !99
  %271 = load ptr, ptr %247, align 8, !tbaa !102
  %272 = getelementptr inbounds %struct.SK_Point, ptr %271, i64 %249
  br label %273

273:                                              ; preds = %270, %255, %248
  %274 = phi ptr [ %272, %270 ], [ %250, %255 ], [ %250, %248 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %275 = add nuw nsw i64 %249, 1
  %276 = load i32, ptr %202, align 8, !tbaa !74
  %277 = sext i32 %276 to i64
  %278 = icmp slt i64 %275, %277
  br i1 %278, label %248, label %279, !llvm.loop !211

279:                                              ; preds = %273, %239, %245, %205
  %280 = phi ptr [ null, %205 ], [ null, %245 ], [ %240, %239 ], [ %274, %273 ]
  %281 = icmp eq ptr %280, null
  br i1 %281, label %288, label %282

282:                                              ; preds = %279
  %283 = load float, ptr %280, align 4, !tbaa !99
  store float %283, ptr %1, align 4, !tbaa !99
  %284 = getelementptr inbounds float, ptr %280, i64 1
  %285 = load float, ptr %284, align 4, !tbaa !99
  store float %285, ptr %195, align 4, !tbaa !99
  %286 = getelementptr inbounds float, ptr %280, i64 2
  %287 = load float, ptr %286, align 4, !tbaa !99
  store float %287, ptr %196, align 4, !tbaa !99
  br label %288

288:                                              ; preds = %282, %279
  %289 = phi i32 [ 1, %282 ], [ %199, %279 ]
  %290 = load ptr, ptr %198, align 8, !tbaa !34
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %197, !llvm.loop !212

292:                                              ; preds = %288, %187
  %293 = phi i32 [ 0, %187 ], [ %289, %288 ]
  %294 = load i32, ptr %4, align 4, !tbaa !38
  %295 = sitofp i32 %294 to float
  store float %295, ptr %11, align 4, !tbaa !99
  %296 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %297 = load i32, ptr %296, align 4, !tbaa !38
  %298 = sitofp i32 %297 to float
  %299 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  store float %298, ptr %299, align 4, !tbaa !99
  %300 = call zeroext i8 @snapObjectsContext(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 1) #17
  %301 = icmp eq i8 %300, 1
  br i1 %301, label %302, label %314

302:                                              ; preds = %292
  %303 = getelementptr inbounds %struct.SK_DrawData, ptr %4, i64 0, i32 2
  %304 = load i32, ptr %303, align 4, !tbaa !171
  %305 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 4
  store i32 %304, ptr %305, align 4, !tbaa !97
  %306 = getelementptr inbounds %struct.SK_Point, ptr %1, i64 0, i32 5
  store i32 0, ptr %306, align 4, !tbaa !98
  %307 = load float, ptr %9, align 4, !tbaa !99
  store float %307, ptr %1, align 4, !tbaa !99
  %308 = getelementptr inbounds float, ptr %9, i64 1
  %309 = load float, ptr %308, align 4, !tbaa !99
  %310 = getelementptr inbounds float, ptr %1, i64 1
  store float %309, ptr %310, align 4, !tbaa !99
  %311 = getelementptr inbounds float, ptr %9, i64 2
  %312 = load float, ptr %311, align 4, !tbaa !99
  %313 = getelementptr inbounds float, ptr %1, i64 2
  store float %312, ptr %313, align 4, !tbaa !99
  br label %314

314:                                              ; preds = %302, %292
  %315 = phi i32 [ 1, %302 ], [ %293, %292 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  br label %316

316:                                              ; preds = %314, %185
  %317 = phi i32 [ %186, %185 ], [ %315, %314 ]
  ret i32 %317
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @peelObjectsContext(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @snapObjectsContext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_projectDrawPoint(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [2 x i16], align 2
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %10 = tail call ptr @sk_lastStrokePoint(ptr noundef %2) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = load float, ptr %10, align 4, !tbaa !99
  store float %13, ptr %6, align 4, !tbaa !99
  %14 = getelementptr inbounds float, ptr %10, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !99
  %16 = getelementptr inbounds float, ptr %6, i64 1
  store float %15, ptr %16, align 4, !tbaa !99
  %17 = getelementptr inbounds float, ptr %10, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !99
  %19 = getelementptr inbounds float, ptr %6, i64 2
  store float %18, ptr %19, align 4, !tbaa !99
  br label %20

20:                                               ; preds = %12, %4
  %21 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 30
  %22 = load ptr, ptr %21, align 8, !tbaa !213
  %23 = call float @ED_view3d_calc_zfac(ptr noundef %22, ptr noundef nonnull %6, ptr noundef null) #17
  %24 = call i32 @ED_view3d_project_short_global(ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 0) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load i16, ptr %5, align 2, !tbaa !117
  %28 = sext i16 %27 to i32
  %29 = load i32, ptr %3, align 4, !tbaa !38
  %30 = sub nsw i32 %28, %29
  %31 = sitofp i32 %30 to float
  store float %31, ptr %8, align 4, !tbaa !99
  %32 = getelementptr inbounds i16, ptr %5, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !117
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds i32, ptr %3, i64 1
  %36 = load i32, ptr %35, align 4, !tbaa !38
  %37 = sub nsw i32 %34, %36
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds float, ptr %8, i64 1
  store float %38, ptr %39, align 4, !tbaa !99
  call void @ED_view3d_win_to_delta(ptr noundef %9, ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %23) #17
  %40 = load float, ptr %6, align 4, !tbaa !99
  %41 = load float, ptr %7, align 4, !tbaa !99
  %42 = fsub float %40, %41
  store float %42, ptr %1, align 4, !tbaa !99
  %43 = getelementptr inbounds float, ptr %6, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !99
  %45 = getelementptr inbounds float, ptr %7, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !99
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds float, ptr %1, i64 1
  store float %47, ptr %48, align 4, !tbaa !99
  %49 = getelementptr inbounds float, ptr %6, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !99
  %51 = getelementptr inbounds float, ptr %7, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !99
  %53 = fsub float %50, %52
  br label %56

54:                                               ; preds = %20
  store float 0.000000e+00, ptr %1, align 4, !tbaa !99
  %55 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %55, align 4, !tbaa !99
  br label %56

56:                                               ; preds = %54, %26
  %57 = phi float [ 0.000000e+00, %54 ], [ %53, %26 ]
  %58 = getelementptr inbounds float, ptr %1, i64 2
  store float %57, ptr %58, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret void
}

declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sk_draw_stroke(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [2 x i16], align 2
  %7 = alloca [2 x i16], align 2
  %8 = alloca %struct.SK_Point, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca %struct.SK_Point, align 4
  %14 = tail call i32 @sk_stroke_filtermval(ptr noundef %3) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %398, label %16

16:                                               ; preds = %5
  %17 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #17
  %18 = icmp eq i8 %4, 0
  br i1 %18, label %215, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %21 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 30
  %22 = load ptr, ptr %21, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #17
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %22, i64 0, i32 2, i64 2
  call void @sk_initPoint(ptr noundef nonnull %13, ptr noundef %3, ptr noundef nonnull %23) #17
  %24 = call fastcc i32 @sk_getStrokeSnapPoint(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !155
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %214, label %26

26:                                               ; preds = %19
  %27 = load float, ptr %13, align 4, !tbaa !99
  %28 = getelementptr inbounds float, ptr %13, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !99
  %30 = getelementptr inbounds float, ptr %13, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !99
  call fastcc void @sk_projectDrawPoint(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %2, ptr noundef %3)
  call void @sk_appendStrokePoint(ptr noundef %2, ptr noundef nonnull %13) #17
  %32 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !74
  %34 = add i32 %33, -2
  %35 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 2
  %36 = icmp sgt i32 %33, 2
  br i1 %36, label %37, label %75

37:                                               ; preds = %26, %72
  %38 = phi i32 [ %73, %72 ], [ %34, %26 ]
  %39 = phi i32 [ %63, %72 ], [ 0, %26 ]
  %40 = phi float [ %62, %72 ], [ 0.000000e+00, %26 ]
  %41 = load ptr, ptr %35, align 8, !tbaa !102
  %42 = zext nneg i32 %38 to i64
  %43 = getelementptr inbounds %struct.SK_Point, ptr %41, i64 %42
  %44 = getelementptr %struct.SK_Point, ptr %43, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !99
  %46 = load float, ptr %43, align 4, !tbaa !99
  %47 = fsub float %45, %46
  %48 = getelementptr %struct.SK_Point, ptr %43, i64 1, i32 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !99
  %50 = getelementptr inbounds float, ptr %43, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !99
  %52 = fsub float %49, %51
  %53 = getelementptr %struct.SK_Point, ptr %43, i64 1, i32 0, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !99
  %55 = getelementptr inbounds float, ptr %43, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !99
  %57 = fsub float %54, %56
  %58 = fmul float %52, %52
  %59 = call float @llvm.fmuladd.f32(float %47, float %47, float %58)
  %60 = call float @llvm.fmuladd.f32(float %57, float %57, float %59)
  %61 = call float @sqrtf(float noundef %60) #17
  %62 = fadd float %40, %61
  %63 = add nuw nsw i32 %39, 1
  %64 = load ptr, ptr %35, align 8, !tbaa !102
  %65 = getelementptr inbounds %struct.SK_Point, ptr %64, i64 %42, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !98
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %37
  %69 = getelementptr inbounds %struct.SK_Point, ptr %64, i64 %42, i32 4
  %70 = load i32, ptr %69, align 4, !tbaa !97
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = add nsw i32 %38, -1
  %74 = icmp eq i32 %63, %34
  br i1 %74, label %75, label %37, !llvm.loop !216

75:                                               ; preds = %72, %37, %68, %26
  %76 = phi i32 [ %34, %26 ], [ %38, %68 ], [ %38, %37 ], [ 0, %72 ]
  %77 = phi float [ 0.000000e+00, %26 ], [ %62, %68 ], [ %62, %37 ], [ %62, %72 ]
  %78 = phi i32 [ 0, %26 ], [ %63, %68 ], [ %63, %37 ], [ %34, %72 ]
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %205

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !102
  %83 = sext i32 %76 to i64
  %84 = getelementptr inbounds %struct.SK_Point, ptr %82, i64 %83
  %85 = call ptr @CTX_wm_region(ptr noundef %0) #17
  %86 = getelementptr inbounds %struct.ARegion, ptr %85, i64 0, i32 30
  %87 = load ptr, ptr %86, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  %88 = load float, ptr %84, align 4, !tbaa !99
  %89 = fsub float %27, %88
  store float %89, ptr %12, align 4, !tbaa !99
  %90 = getelementptr inbounds float, ptr %84, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !99
  %92 = fsub float %29, %91
  %93 = getelementptr inbounds float, ptr %12, i64 1
  store float %92, ptr %93, align 4, !tbaa !99
  %94 = getelementptr inbounds float, ptr %84, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !99
  %96 = fsub float %31, %95
  %97 = getelementptr inbounds float, ptr %12, i64 2
  store float %96, ptr %97, align 4, !tbaa !99
  %98 = getelementptr inbounds %struct.RegionView3D, ptr %87, i64 0, i32 2, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull %98) #17
  %99 = load float, ptr %12, align 4, !tbaa !99
  %100 = load float, ptr %93, align 4, !tbaa !99
  %101 = fmul float %100, %100
  %102 = call float @llvm.fmuladd.f32(float %99, float %99, float %101)
  %103 = load float, ptr %97, align 4, !tbaa !99
  %104 = call float @llvm.fmuladd.f32(float %103, float %103, float %102)
  %105 = call float @sqrtf(float noundef %104) #17
  %106 = load float, ptr %98, align 4, !tbaa !99
  %107 = load float, ptr %12, align 4, !tbaa !99
  %108 = getelementptr inbounds %struct.RegionView3D, ptr %87, i64 0, i32 2, i64 2, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !99
  %110 = load float, ptr %93, align 4, !tbaa !99
  %111 = fmul float %109, %110
  %112 = call float @llvm.fmuladd.f32(float %106, float %107, float %111)
  %113 = getelementptr inbounds %struct.RegionView3D, ptr %87, i64 0, i32 2, i64 2, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !99
  %115 = load float, ptr %97, align 4, !tbaa !99
  %116 = call float @llvm.fmuladd.f32(float %114, float %115, float %112)
  %117 = fcmp ogt float %116, 0.000000e+00
  %118 = fneg float %105
  %119 = select i1 %117, float %118, float %105
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  %120 = load i32, ptr %32, align 8, !tbaa !74
  %121 = add nsw i32 %120, -2
  %122 = call ptr @CTX_wm_region(ptr noundef %0) #17
  %123 = call ptr @CTX_wm_area(ptr noundef %0) #17
  %124 = getelementptr inbounds %struct.ScrArea, ptr %123, i64 0, i32 19
  %125 = load ptr, ptr %124, align 8, !tbaa !217
  %126 = load ptr, ptr %81, align 8, !tbaa !102
  %127 = sext i32 %76 to i64
  %128 = getelementptr %struct.SK_Point, ptr %126, i64 %127
  %129 = getelementptr %struct.SK_Point, ptr %128, i64 1
  %130 = load float, ptr %128, align 4, !tbaa !99
  %131 = load float, ptr %129, align 4, !tbaa !99
  %132 = fsub float %130, %131
  %133 = getelementptr %struct.SK_Point, ptr %126, i64 %127, i32 0, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !99
  %135 = getelementptr %struct.SK_Point, ptr %128, i64 1, i32 0, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !99
  %137 = fsub float %134, %136
  %138 = getelementptr %struct.SK_Point, ptr %126, i64 %127, i32 0, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !99
  %140 = getelementptr %struct.SK_Point, ptr %128, i64 1, i32 0, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !99
  %142 = fsub float %139, %141
  %143 = fmul float %137, %137
  %144 = call float @llvm.fmuladd.f32(float %132, float %132, float %143)
  %145 = call float @llvm.fmuladd.f32(float %142, float %142, float %144)
  %146 = call float @sqrtf(float noundef %145) #17
  %147 = icmp slt i32 %76, %121
  br i1 %147, label %148, label %205

148:                                              ; preds = %80
  %149 = getelementptr inbounds float, ptr %10, i64 1
  %150 = getelementptr inbounds float, ptr %10, i64 2
  %151 = sext i32 %76 to i64
  %152 = add nsw i64 %151, 1
  %153 = add i32 %120, -1
  br label %154

154:                                              ; preds = %148, %154
  %155 = phi i64 [ %152, %148 ], [ %159, %154 ]
  %156 = phi float [ %146, %148 ], [ %202, %154 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  %157 = load ptr, ptr %81, align 8, !tbaa !102
  %158 = getelementptr inbounds %struct.SK_Point, ptr %157, i64 %155
  %159 = add nsw i64 %155, 1
  %160 = getelementptr inbounds %struct.SK_Point, ptr %157, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !99
  %162 = load float, ptr %158, align 4, !tbaa !99
  %163 = fsub float %161, %162
  %164 = getelementptr inbounds float, ptr %160, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !99
  %166 = getelementptr inbounds float, ptr %158, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !99
  %168 = fsub float %165, %167
  %169 = getelementptr inbounds float, ptr %160, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !99
  %171 = getelementptr inbounds float, ptr %158, i64 2
  %172 = load float, ptr %171, align 4, !tbaa !99
  %173 = fsub float %170, %172
  %174 = fmul float %168, %168
  %175 = call float @llvm.fmuladd.f32(float %163, float %163, float %174)
  %176 = call float @llvm.fmuladd.f32(float %173, float %173, float %175)
  %177 = call float @sqrtf(float noundef %176) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  store i64 0, ptr %11, align 8
  %178 = load ptr, ptr %81, align 8, !tbaa !102
  %179 = getelementptr inbounds %struct.SK_Point, ptr %178, i64 %155
  %180 = call i32 @ED_view3d_project_float_global(ptr noundef %122, ptr noundef %179, ptr noundef nonnull %11, i32 noundef 0) #17
  %181 = call zeroext i8 @ED_view3d_win_to_ray(ptr noundef %122, ptr noundef %125, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext 0) #17
  %182 = fmul float %119, %156
  %183 = fdiv float %182, %77
  %184 = load float, ptr %10, align 4, !tbaa !99
  %185 = fmul float %183, %184
  store float %185, ptr %10, align 4, !tbaa !99
  %186 = load float, ptr %149, align 4, !tbaa !99
  %187 = fmul float %183, %186
  store float %187, ptr %149, align 4, !tbaa !99
  %188 = load float, ptr %150, align 4, !tbaa !99
  %189 = fmul float %183, %188
  store float %189, ptr %150, align 4, !tbaa !99
  %190 = load ptr, ptr %81, align 8, !tbaa !102
  %191 = getelementptr inbounds %struct.SK_Point, ptr %190, i64 %155
  %192 = load float, ptr %191, align 4, !tbaa !99
  %193 = fadd float %185, %192
  store float %193, ptr %191, align 4, !tbaa !99
  %194 = load float, ptr %149, align 4, !tbaa !99
  %195 = getelementptr inbounds float, ptr %191, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !99
  %197 = fadd float %194, %196
  store float %197, ptr %195, align 4, !tbaa !99
  %198 = load float, ptr %150, align 4, !tbaa !99
  %199 = getelementptr inbounds float, ptr %191, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !99
  %201 = fadd float %198, %200
  store float %201, ptr %199, align 4, !tbaa !99
  %202 = fadd float %156, %177
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  %203 = trunc i64 %159 to i32
  %204 = icmp eq i32 %153, %203
  br i1 %204, label %205, label %154, !llvm.loop !219

205:                                              ; preds = %154, %80, %75
  %206 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !102
  %208 = load i32, ptr %32, align 8, !tbaa !74
  %209 = sext i32 %208 to i64
  %210 = getelementptr %struct.SK_Point, ptr %207, i64 %209
  %211 = getelementptr %struct.SK_Point, ptr %210, i64 -1
  store float %27, ptr %211, align 4, !tbaa !99
  %212 = getelementptr %struct.SK_Point, ptr %210, i64 -1, i32 0, i64 1
  store float %29, ptr %212, align 4, !tbaa !99
  %213 = getelementptr %struct.SK_Point, ptr %210, i64 -1, i32 0, i64 2
  store float %31, ptr %213, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #17
  br label %224

214:                                              ; preds = %19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #17
  br label %215

215:                                              ; preds = %214, %16
  %216 = call ptr @CTX_wm_region(ptr noundef %0) #17
  %217 = getelementptr inbounds %struct.ARegion, ptr %216, i64 0, i32 30
  %218 = load ptr, ptr %217, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #17
  %219 = getelementptr inbounds %struct.RegionView3D, ptr %218, i64 0, i32 2, i64 2
  call void @sk_initPoint(ptr noundef nonnull %8, ptr noundef %3, ptr noundef nonnull %219) #17
  %220 = getelementptr inbounds %struct.SK_DrawData, ptr %3, i64 0, i32 2
  %221 = load i32, ptr %220, align 4, !tbaa !171
  %222 = getelementptr inbounds %struct.SK_Point, ptr %8, i64 0, i32 4
  store i32 %221, ptr %222, align 4, !tbaa !97
  %223 = getelementptr inbounds %struct.SK_Point, ptr %8, i64 0, i32 5
  store i32 1, ptr %223, align 4, !tbaa !98
  call fastcc void @sk_projectDrawPoint(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3)
  call void @sk_appendStrokePoint(ptr noundef %2, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  br label %224

224:                                              ; preds = %205, %215
  %225 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !70
  %227 = icmp eq ptr %226, %2
  br i1 %227, label %228, label %391

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 42
  %230 = load i8, ptr %229, align 8, !tbaa !149
  %231 = and i8 %230, 4
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %391, label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5
  %235 = load ptr, ptr %234, align 8, !tbaa !76
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %328

237:                                              ; preds = %233
  %238 = load ptr, ptr %1, align 8, !tbaa !34
  %239 = icmp eq ptr %238, null
  br i1 %239, label %303, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %242 = getelementptr inbounds i32, ptr %3, i64 1
  br label %243

243:                                              ; preds = %240, %297
  %244 = phi ptr [ %238, %240 ], [ %301, %297 ]
  %245 = phi i32 [ -1, %240 ], [ %300, %297 ]
  %246 = phi i32 [ undef, %240 ], [ %299, %297 ]
  %247 = phi float [ 6.000000e+01, %240 ], [ %298, %297 ]
  %248 = icmp eq ptr %244, %2
  br i1 %248, label %297, label %249

249:                                              ; preds = %243
  %250 = call ptr @CTX_wm_region(ptr noundef %0) #17
  %251 = getelementptr inbounds %struct.SK_Stroke, ptr %244, i64 0, i32 3
  %252 = load i32, ptr %251, align 8, !tbaa !74
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %291

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.SK_Stroke, ptr %244, i64 0, i32 2
  br label %256

256:                                              ; preds = %283, %254
  %257 = phi float [ %247, %254 ], [ %284, %283 ]
  %258 = phi i32 [ %246, %254 ], [ %285, %283 ]
  %259 = phi i64 [ 0, %254 ], [ %287, %283 ]
  %260 = phi ptr [ null, %254 ], [ %286, %283 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %261 = load ptr, ptr %255, align 8, !tbaa !102
  %262 = getelementptr inbounds %struct.SK_Point, ptr %261, i64 %259
  %263 = call i32 @ED_view3d_project_short_global(ptr noundef %250, ptr noundef %262, ptr noundef nonnull %7, i32 noundef 0) #17
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %283

265:                                              ; preds = %256
  %266 = load i16, ptr %7, align 2, !tbaa !117
  %267 = sext i16 %266 to i32
  %268 = load i32, ptr %3, align 4, !tbaa !38
  %269 = sub nsw i32 %267, %268
  %270 = call i32 @llvm.abs.i32(i32 %269, i1 true)
  %271 = load i16, ptr %241, align 2, !tbaa !117
  %272 = sext i16 %271 to i32
  %273 = load i32, ptr %242, align 4, !tbaa !38
  %274 = sub nsw i32 %272, %273
  %275 = call i32 @llvm.abs.i32(i32 %274, i1 true)
  %276 = add nuw nsw i32 %275, %270
  %277 = sitofp i32 %276 to float
  %278 = fcmp ogt float %257, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %265
  %280 = load ptr, ptr %255, align 8, !tbaa !102
  %281 = getelementptr inbounds %struct.SK_Point, ptr %280, i64 %259
  %282 = trunc i64 %259 to i32
  br label %283

283:                                              ; preds = %279, %265, %256
  %284 = phi float [ %277, %279 ], [ %257, %265 ], [ %257, %256 ]
  %285 = phi i32 [ %282, %279 ], [ %258, %265 ], [ %258, %256 ]
  %286 = phi ptr [ %281, %279 ], [ %260, %265 ], [ %260, %256 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  %287 = add nuw nsw i64 %259, 1
  %288 = load i32, ptr %251, align 8, !tbaa !74
  %289 = sext i32 %288 to i64
  %290 = icmp slt i64 %287, %289
  br i1 %290, label %256, label %291, !llvm.loop !211

291:                                              ; preds = %283, %249
  %292 = phi float [ %247, %249 ], [ %284, %283 ]
  %293 = phi i32 [ %246, %249 ], [ %285, %283 ]
  %294 = phi ptr [ null, %249 ], [ %286, %283 ]
  %295 = icmp eq ptr %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %291
  store ptr %244, ptr %234, align 8, !tbaa !76
  br label %297

297:                                              ; preds = %291, %296, %243
  %298 = phi float [ %247, %243 ], [ %292, %296 ], [ %292, %291 ]
  %299 = phi i32 [ %246, %243 ], [ %293, %296 ], [ %293, %291 ]
  %300 = phi i32 [ %245, %243 ], [ %293, %296 ], [ %245, %291 ]
  %301 = load ptr, ptr %244, align 8, !tbaa !34
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %243, !llvm.loop !220

303:                                              ; preds = %297, %237
  %304 = phi i32 [ -1, %237 ], [ %300, %297 ]
  %305 = load ptr, ptr %234, align 8, !tbaa !76
  %306 = icmp eq ptr %305, null
  br i1 %306, label %391, label %307

307:                                              ; preds = %303
  %308 = icmp sgt i32 %304, -1
  br i1 %308, label %309, label %320

309:                                              ; preds = %307
  %310 = call ptr @sk_lastStrokePoint(ptr noundef %2) #17
  %311 = getelementptr inbounds %struct.SK_Point, ptr %310, i64 0, i32 4
  %312 = load i32, ptr %311, align 4, !tbaa !97
  %313 = icmp eq i32 %312, 1
  %314 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 3
  br i1 %313, label %318, label %315

315:                                              ; preds = %309
  %316 = load i32, ptr %314, align 8, !tbaa !79
  %317 = add nsw i32 %316, 1
  br label %318

318:                                              ; preds = %309, %315
  %319 = phi i32 [ %317, %315 ], [ 5, %309 ]
  store i32 %319, ptr %314, align 8, !tbaa !79
  br label %320

320:                                              ; preds = %318, %307
  %321 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 3
  %322 = load i32, ptr %321, align 8, !tbaa !74
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 1
  store i32 %304, ptr %325, align 8, !tbaa !77
  br label %391

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 2
  store i32 %304, ptr %327, align 4, !tbaa !78
  br label %391

328:                                              ; preds = %233
  %329 = call ptr @CTX_wm_region(ptr noundef %0) #17
  %330 = getelementptr inbounds %struct.SK_Stroke, ptr %235, i64 0, i32 3
  %331 = load i32, ptr %330, align 8, !tbaa !74
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %374

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.SK_Stroke, ptr %235, i64 0, i32 2
  %335 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 1
  %336 = getelementptr inbounds i32, ptr %3, i64 1
  br label %337

337:                                              ; preds = %364, %333
  %338 = phi float [ 6.000000e+01, %333 ], [ %365, %364 ]
  %339 = phi i32 [ undef, %333 ], [ %366, %364 ]
  %340 = phi i64 [ 0, %333 ], [ %368, %364 ]
  %341 = phi ptr [ null, %333 ], [ %367, %364 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %342 = load ptr, ptr %334, align 8, !tbaa !102
  %343 = getelementptr inbounds %struct.SK_Point, ptr %342, i64 %340
  %344 = call i32 @ED_view3d_project_short_global(ptr noundef %329, ptr noundef %343, ptr noundef nonnull %6, i32 noundef 0) #17
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %364

346:                                              ; preds = %337
  %347 = load i16, ptr %6, align 2, !tbaa !117
  %348 = sext i16 %347 to i32
  %349 = load i32, ptr %3, align 4, !tbaa !38
  %350 = sub nsw i32 %348, %349
  %351 = call i32 @llvm.abs.i32(i32 %350, i1 true)
  %352 = load i16, ptr %335, align 2, !tbaa !117
  %353 = sext i16 %352 to i32
  %354 = load i32, ptr %336, align 4, !tbaa !38
  %355 = sub nsw i32 %353, %354
  %356 = call i32 @llvm.abs.i32(i32 %355, i1 true)
  %357 = add nuw nsw i32 %356, %351
  %358 = sitofp i32 %357 to float
  %359 = fcmp ogt float %338, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %346
  %361 = load ptr, ptr %334, align 8, !tbaa !102
  %362 = getelementptr inbounds %struct.SK_Point, ptr %361, i64 %340
  %363 = trunc i64 %340 to i32
  br label %364

364:                                              ; preds = %360, %346, %337
  %365 = phi float [ %358, %360 ], [ %338, %346 ], [ %338, %337 ]
  %366 = phi i32 [ %363, %360 ], [ %339, %346 ], [ %339, %337 ]
  %367 = phi ptr [ %362, %360 ], [ %341, %346 ], [ %341, %337 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %368 = add nuw nsw i64 %340, 1
  %369 = load i32, ptr %330, align 8, !tbaa !74
  %370 = sext i32 %369 to i64
  %371 = icmp slt i64 %368, %370
  br i1 %371, label %337, label %372, !llvm.loop !211

372:                                              ; preds = %364
  %373 = icmp eq ptr %367, null
  br label %374

374:                                              ; preds = %372, %328
  %375 = phi i32 [ undef, %328 ], [ %366, %372 ]
  %376 = phi i1 [ true, %328 ], [ %373, %372 ]
  br i1 %376, label %389, label %377

377:                                              ; preds = %374
  %378 = call ptr @sk_lastStrokePoint(ptr noundef %2) #17
  %379 = getelementptr inbounds %struct.SK_Point, ptr %378, i64 0, i32 4
  %380 = load i32, ptr %379, align 4, !tbaa !97
  %381 = icmp eq i32 %380, 1
  %382 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 3
  br i1 %381, label %386, label %383

383:                                              ; preds = %377
  %384 = load i32, ptr %382, align 8, !tbaa !79
  %385 = add nsw i32 %384, 1
  br label %386

386:                                              ; preds = %377, %383
  %387 = phi i32 [ %385, %383 ], [ 5, %377 ]
  store i32 %387, ptr %382, align 8, !tbaa !79
  %388 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 2
  store i32 %375, ptr %388, align 4, !tbaa !78
  br label %391

389:                                              ; preds = %374
  %390 = getelementptr inbounds %struct.SK_Sketch, ptr %1, i64 0, i32 5, i32 2
  store i32 -1, ptr %390, align 4, !tbaa !78
  br label %391

391:                                              ; preds = %386, %389, %303, %324, %326, %224, %228
  %392 = getelementptr inbounds %struct.SK_DrawData, ptr %3, i64 0, i32 2
  store i32 0, ptr %392, align 4, !tbaa !171
  %393 = load i32, ptr %3, align 4, !tbaa !38
  %394 = getelementptr inbounds %struct.SK_DrawData, ptr %3, i64 0, i32 1
  store i32 %393, ptr %394, align 4, !tbaa !38
  %395 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  %396 = load i32, ptr %395, align 4, !tbaa !38
  %397 = getelementptr inbounds %struct.SK_DrawData, ptr %3, i64 0, i32 1, i64 1
  store i32 %396, ptr %397, align 4, !tbaa !38
  call void @sk_updateNextPoint(ptr noundef %1, ptr noundef %2) #17
  br label %398

398:                                              ; preds = %5, %391
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sk_createStroke() local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sk_stroke_filtermval(ptr noundef) local_unnamed_addr #2

declare void @sk_updateNextPoint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sk_initPoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sk_appendStrokePoint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_win_to_ray(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @sketch_draw_modal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef signext %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.SK_StrokeIterator, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca float, align 4
  %23 = alloca %struct.SK_Gesture, align 8
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !169
  %26 = tail call i32 @RNA_boolean_get(ptr noundef %25, ptr noundef nonnull @.str.20) #17
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !175
  %29 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !43
  %34 = icmp eq i16 %33, 25
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  %38 = getelementptr inbounds %struct.bArmature, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = tail call ptr @createSketch() #17
  store ptr %42, ptr %38, align 8, !tbaa !68
  br label %43

43:                                               ; preds = %41, %35
  %44 = load ptr, ptr %38, align 8, !tbaa !68
  br label %45

45:                                               ; preds = %5, %31, %43
  %46 = phi ptr [ %44, %43 ], [ null, %31 ], [ null, %5 ]
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %48 = load i16, ptr %47, align 8, !tbaa !221
  switch i16 %48, label %380 [
    i16 212, label %49
    i16 215, label %49
    i16 4, label %55
    i16 17, label %55
    i16 218, label %63
    i16 1, label %69
  ]

49:                                               ; preds = %45, %45
  %50 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %51 = load i16, ptr %50, align 2, !tbaa !224
  %52 = icmp ne i16 %51, 0
  %53 = load ptr, ptr %24, align 8, !tbaa !169
  %54 = zext i1 %52 to i32
  tail call void @RNA_boolean_set(ptr noundef %53, ptr noundef nonnull @.str.20, i32 noundef %54) #17
  br label %380

55:                                               ; preds = %45, %45
  %56 = trunc i32 %26 to i8
  %57 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %58 = load i32, ptr %57, align 4, !tbaa !38
  store i32 %58, ptr %28, align 4, !tbaa !38
  %59 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !38
  %61 = getelementptr inbounds [2 x i32], ptr %28, i64 0, i64 1
  store i32 %60, ptr %61, align 4, !tbaa !38
  tail call fastcc void @sk_draw_stroke(ptr noundef %0, ptr noundef %46, ptr noundef %4, ptr noundef nonnull %28, i8 noundef zeroext %56)
  %62 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  tail call void @ED_area_tag_redraw(ptr noundef %62) #17
  br label %380

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !225
  %66 = getelementptr inbounds %struct.wmOperatorType, ptr %65, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !174
  tail call void %67(ptr noundef %0, ptr noundef %1) #17
  %68 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  tail call void @ED_area_tag_redraw(ptr noundef %68) #17
  br label %380

69:                                               ; preds = %45
  %70 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %71 = load i16, ptr %70, align 2, !tbaa !226
  %72 = icmp eq i16 %71, 2
  br i1 %72, label %73, label %380

73:                                               ; preds = %69
  %74 = icmp eq i16 %3, 0
  tail call void @sk_endContinuousStroke(ptr noundef %4) #17
  tail call void @sk_filterLastContinuousStroke(ptr noundef %4) #17
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  tail call void @sk_updateNextPoint(ptr noundef %46, ptr noundef %4) #17
  %76 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  tail call void @ED_area_tag_redraw(ptr noundef %76) #17
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %78 = load ptr, ptr %27, align 8, !tbaa !175
  tail call void %77(ptr noundef %78) #17
  br label %380

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.SK_Stroke, ptr %4, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !74
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %375

83:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %23) #17
  %84 = getelementptr inbounds %struct.SK_Gesture, ptr %23, i64 0, i32 2
  %85 = getelementptr inbounds %struct.SK_Gesture, ptr %23, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %84, i8 0, i64 32, i1 false)
  %86 = tail call ptr @sk_createStroke() #17
  %87 = getelementptr inbounds %struct.SK_Gesture, ptr %23, i64 0, i32 1
  store ptr %86, ptr %87, align 8, !tbaa !107
  %88 = getelementptr inbounds %struct.SK_Sketch, ptr %46, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !154
  store ptr %89, ptr %23, align 8, !tbaa !116
  %90 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %91 = getelementptr inbounds %struct.SK_Stroke, ptr %89, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !74
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %178

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.SK_Stroke, ptr %89, i64 0, i32 2
  br label %96

96:                                               ; preds = %94, %171
  %97 = phi i64 [ 0, %94 ], [ %104, %171 ]
  %98 = phi i64 [ 2, %94 ], [ %177, %171 ]
  %99 = phi i32 [ 0, %94 ], [ %172, %171 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %18, i8 0, i64 12, i1 false)
  %100 = load ptr, ptr %95, align 8, !tbaa !102
  %101 = getelementptr inbounds %struct.SK_Point, ptr %100, i64 %97
  %102 = call i32 @ED_view3d_project_float_global(ptr noundef %90, ptr noundef %101, ptr noundef nonnull %17, i32 noundef 0) #17
  %103 = load ptr, ptr %95, align 8, !tbaa !102
  %104 = add nuw nsw i64 %97, 1
  %105 = getelementptr inbounds %struct.SK_Point, ptr %103, i64 %104
  %106 = call i32 @ED_view3d_project_float_global(ptr noundef %90, ptr noundef nonnull %105, ptr noundef nonnull %18, i32 noundef 0) #17
  %107 = add nuw nsw i64 %97, 2
  %108 = load i32, ptr %91, align 8, !tbaa !74
  %109 = add nsw i32 %108, -1
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %171

112:                                              ; preds = %96
  %113 = trunc i64 %97 to i32
  %114 = trunc i64 %104 to i32
  br label %115

115:                                              ; preds = %112, %165
  %116 = phi i64 [ %122, %165 ], [ %98, %112 ]
  %117 = phi i32 [ %166, %165 ], [ %99, %112 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %20, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #17
  %118 = load ptr, ptr %95, align 8, !tbaa !102
  %119 = getelementptr inbounds %struct.SK_Point, ptr %118, i64 %116
  %120 = call i32 @ED_view3d_project_float_global(ptr noundef %90, ptr noundef nonnull %119, ptr noundef nonnull %19, i32 noundef 0) #17
  %121 = load ptr, ptr %95, align 8, !tbaa !102
  %122 = add nuw nsw i64 %116, 1
  %123 = getelementptr inbounds %struct.SK_Point, ptr %121, i64 %122
  %124 = call i32 @ED_view3d_project_float_global(ptr noundef %90, ptr noundef nonnull %123, ptr noundef nonnull %20, i32 noundef 0) #17
  %125 = call zeroext i8 @isect_line_line_strict_v3(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #17
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %165, label %127

127:                                              ; preds = %115
  %128 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %129 = call ptr %128(i64 noundef 56, ptr noundef nonnull @.str.38) #17
  %130 = getelementptr inbounds %struct.SK_Intersection, ptr %129, i64 0, i32 5
  %131 = trunc i64 %116 to i32
  store i32 %131, ptr %130, align 8, !tbaa !113
  %132 = getelementptr inbounds %struct.SK_Intersection, ptr %129, i64 0, i32 3
  store i32 %113, ptr %132, align 8, !tbaa !103
  %133 = getelementptr inbounds %struct.SK_Intersection, ptr %129, i64 0, i32 4
  store i32 %114, ptr %133, align 4, !tbaa !104
  %134 = getelementptr inbounds %struct.SK_Intersection, ptr %129, i64 0, i32 2
  store ptr %89, ptr %134, align 8, !tbaa !100
  %135 = getelementptr inbounds %struct.SK_Intersection, ptr %129, i64 0, i32 6
  %136 = load ptr, ptr %95, align 8, !tbaa !102
  %137 = getelementptr inbounds %struct.SK_Point, ptr %136, i64 %104
  %138 = getelementptr inbounds %struct.SK_Point, ptr %136, i64 %97
  %139 = load float, ptr %137, align 4, !tbaa !99
  %140 = load float, ptr %138, align 4, !tbaa !99
  %141 = fsub float %139, %140
  store float %141, ptr %135, align 4, !tbaa !99
  %142 = getelementptr inbounds float, ptr %137, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !99
  %144 = getelementptr inbounds float, ptr %138, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !99
  %146 = fsub float %143, %145
  %147 = getelementptr inbounds %struct.SK_Intersection, ptr %129, i64 0, i32 6, i64 1
  store float %146, ptr %147, align 4, !tbaa !99
  %148 = getelementptr inbounds float, ptr %137, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !99
  %150 = getelementptr inbounds float, ptr %138, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !99
  %152 = fsub float %149, %151
  %153 = getelementptr inbounds %struct.SK_Intersection, ptr %129, i64 0, i32 6, i64 2
  store float %152, ptr %153, align 4, !tbaa !99
  %154 = load float, ptr %22, align 4, !tbaa !99
  %155 = fmul float %141, %154
  store float %155, ptr %135, align 4, !tbaa !99
  %156 = fmul float %146, %154
  store float %156, ptr %147, align 4, !tbaa !99
  %157 = fmul float %152, %154
  store float %157, ptr %153, align 4, !tbaa !99
  %158 = load float, ptr %138, align 4, !tbaa !99
  %159 = fadd float %155, %158
  store float %159, ptr %135, align 4, !tbaa !99
  %160 = load float, ptr %144, align 4, !tbaa !99
  %161 = fadd float %156, %160
  store float %161, ptr %147, align 4, !tbaa !99
  %162 = load float, ptr %150, align 4, !tbaa !99
  %163 = fadd float %157, %162
  store float %163, ptr %153, align 4, !tbaa !99
  call void @BLI_addtail(ptr noundef nonnull %85, ptr noundef %129) #17
  %164 = add nsw i32 %117, 1
  br label %165

165:                                              ; preds = %127, %115
  %166 = phi i32 [ %164, %127 ], [ %117, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #17
  %167 = load i32, ptr %91, align 8, !tbaa !74
  %168 = add nsw i32 %167, -1
  %169 = trunc i64 %122 to i32
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %115, label %171, !llvm.loop !227

171:                                              ; preds = %165, %96
  %172 = phi i32 [ %99, %96 ], [ %166, %165 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #17
  %173 = load i32, ptr %91, align 8, !tbaa !74
  %174 = add nsw i32 %173, -1
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %104, %175
  %177 = add nuw nsw i64 %98, 1
  br i1 %176, label %96, label %178, !llvm.loop !228

178:                                              ; preds = %171, %83
  %179 = phi i32 [ 0, %83 ], [ %172, %171 ]
  %180 = getelementptr inbounds %struct.SK_Gesture, ptr %23, i64 0, i32 4
  store i32 %179, ptr %180, align 8, !tbaa !106
  %181 = load ptr, ptr %23, align 8, !tbaa !116
  %182 = call ptr @CTX_wm_region(ptr noundef %0) #17
  %183 = call ptr @CTX_wm_area(ptr noundef %0) #17
  %184 = getelementptr inbounds %struct.ScrArea, ptr %183, i64 0, i32 19
  %185 = load ptr, ptr %184, align 8, !tbaa !217
  %186 = load ptr, ptr %46, align 8, !tbaa !34
  %187 = icmp eq ptr %186, null
  br i1 %187, label %264, label %188

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.SK_Stroke, ptr %181, i64 0, i32 3
  %190 = getelementptr inbounds %struct.SK_Stroke, ptr %181, i64 0, i32 2
  %191 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %192 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  br label %193

193:                                              ; preds = %188, %259
  %194 = phi ptr [ %186, %188 ], [ %262, %259 ]
  %195 = phi i32 [ 0, %188 ], [ %261, %259 ]
  %196 = getelementptr inbounds %struct.SK_Stroke, ptr %194, i64 0, i32 3
  %197 = load i32, ptr %196, align 8, !tbaa !74
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %259

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.SK_Stroke, ptr %194, i64 0, i32 2
  br label %201

201:                                              ; preds = %199, %253
  %202 = phi i64 [ 0, %199 ], [ %208, %253 ]
  %203 = phi i32 [ 0, %199 ], [ %254, %253 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  %204 = load ptr, ptr %200, align 8, !tbaa !102
  %205 = getelementptr inbounds %struct.SK_Point, ptr %204, i64 %202
  %206 = call i32 @ED_view3d_project_float_global(ptr noundef %182, ptr noundef %205, ptr noundef nonnull %8, i32 noundef 0) #17
  %207 = load ptr, ptr %200, align 8, !tbaa !102
  %208 = add nuw nsw i64 %202, 1
  %209 = getelementptr inbounds %struct.SK_Point, ptr %207, i64 %208
  %210 = call i32 @ED_view3d_project_float_global(ptr noundef %182, ptr noundef nonnull %209, ptr noundef nonnull %9, i32 noundef 0) #17
  %211 = load i32, ptr %189, align 8, !tbaa !74
  %212 = icmp sgt i32 %211, 1
  br i1 %212, label %213, label %253

213:                                              ; preds = %201
  %214 = trunc i64 %202 to i32
  %215 = trunc i64 %208 to i32
  br label %216

216:                                              ; preds = %213, %247
  %217 = phi i64 [ %223, %247 ], [ 0, %213 ]
  %218 = phi i32 [ %248, %247 ], [ %203, %213 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #17
  %219 = load ptr, ptr %190, align 8, !tbaa !102
  %220 = getelementptr inbounds %struct.SK_Point, ptr %219, i64 %217
  %221 = call i32 @ED_view3d_project_float_global(ptr noundef %182, ptr noundef %220, ptr noundef nonnull %10, i32 noundef 0) #17
  %222 = load ptr, ptr %190, align 8, !tbaa !102
  %223 = add nuw nsw i64 %217, 1
  %224 = getelementptr inbounds %struct.SK_Point, ptr %222, i64 %223
  %225 = call i32 @ED_view3d_project_float_global(ptr noundef %182, ptr noundef nonnull %224, ptr noundef nonnull %11, i32 noundef 0) #17
  %226 = call zeroext i8 @isect_line_line_strict_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %247, label %228

228:                                              ; preds = %216
  %229 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %230 = call ptr %229(i64 noundef 56, ptr noundef nonnull @.str.38) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #17
  %231 = getelementptr inbounds %struct.SK_Intersection, ptr %230, i64 0, i32 5
  %232 = trunc i64 %217 to i32
  store i32 %232, ptr %231, align 8, !tbaa !113
  %233 = getelementptr inbounds %struct.SK_Intersection, ptr %230, i64 0, i32 3
  store i32 %214, ptr %233, align 8, !tbaa !103
  %234 = getelementptr inbounds %struct.SK_Intersection, ptr %230, i64 0, i32 4
  store i32 %215, ptr %234, align 4, !tbaa !104
  %235 = getelementptr inbounds %struct.SK_Intersection, ptr %230, i64 0, i32 2
  store ptr %194, ptr %235, align 8, !tbaa !100
  %236 = load float, ptr %13, align 4, !tbaa !99
  %237 = getelementptr inbounds %struct.SK_Intersection, ptr %230, i64 0, i32 7
  store float %236, ptr %237, align 8, !tbaa !229
  %238 = load float, ptr %12, align 4, !tbaa !99
  store float %238, ptr %16, align 4, !tbaa !99
  %239 = load float, ptr %191, align 4, !tbaa !99
  store float %239, ptr %192, align 4, !tbaa !99
  %240 = call zeroext i8 @ED_view3d_win_to_segment(ptr noundef %182, ptr noundef %185, ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %15, i8 noundef zeroext 1) #17
  %241 = load ptr, ptr %200, align 8, !tbaa !102
  %242 = getelementptr inbounds %struct.SK_Point, ptr %241, i64 %202
  %243 = getelementptr inbounds %struct.SK_Point, ptr %241, i64 %208
  %244 = getelementptr inbounds %struct.SK_Intersection, ptr %230, i64 0, i32 6
  %245 = call i32 @isect_line_line_v3(ptr noundef %242, ptr noundef nonnull %243, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %244, ptr noundef nonnull %12) #17
  call void @BLI_addtail(ptr noundef nonnull %84, ptr noundef %230) #17
  %246 = add nsw i32 %218, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  br label %247

247:                                              ; preds = %228, %216
  %248 = phi i32 [ %246, %228 ], [ %218, %216 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  %249 = load i32, ptr %189, align 8, !tbaa !74
  %250 = add nsw i32 %249, -1
  %251 = sext i32 %250 to i64
  %252 = icmp slt i64 %223, %251
  br i1 %252, label %216, label %253, !llvm.loop !230

253:                                              ; preds = %247, %201
  %254 = phi i32 [ %203, %201 ], [ %248, %247 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  %255 = load i32, ptr %196, align 8, !tbaa !74
  %256 = add nsw i32 %255, -1
  %257 = sext i32 %256 to i64
  %258 = icmp slt i64 %208, %257
  br i1 %258, label %201, label %259, !llvm.loop !231

259:                                              ; preds = %253, %193
  %260 = phi i32 [ 0, %193 ], [ %254, %253 ]
  %261 = call i32 @llvm.smax.i32(i32 %260, i32 %195)
  %262 = load ptr, ptr %194, align 8, !tbaa !34
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %193, !llvm.loop !232

264:                                              ; preds = %259, %178
  %265 = phi i32 [ 0, %178 ], [ %261, %259 ]
  call void @BLI_sortlist(ptr noundef nonnull %84, ptr noundef nonnull @cmpIntersections) #17
  %266 = getelementptr inbounds %struct.SK_Gesture, ptr %23, i64 0, i32 5
  store i32 %265, ptr %266, align 4, !tbaa !96
  %267 = load ptr, ptr %87, align 8, !tbaa !107
  %268 = load ptr, ptr %23, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #17
  %269 = getelementptr inbounds %struct.SK_Stroke, ptr %268, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !102
  call void @sk_appendStrokePoint(ptr noundef %267, ptr noundef %270) #17
  %271 = getelementptr inbounds %struct.SK_Stroke, ptr %267, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !102
  %273 = getelementptr inbounds %struct.SK_Stroke, ptr %267, i64 0, i32 3
  %274 = load i32, ptr %273, align 8, !tbaa !74
  %275 = sext i32 %274 to i64
  %276 = getelementptr %struct.SK_Point, ptr %272, i64 %275
  %277 = getelementptr %struct.SK_Point, ptr %276, i64 -1
  %278 = getelementptr inbounds %struct.SK_Stroke, ptr %268, i64 0, i32 3
  %279 = load i32, ptr %278, align 8, !tbaa !74
  store ptr @headPoint, ptr %6, align 8, !tbaa !80
  %280 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 1
  store ptr @tailPoint, ptr %280, align 8, !tbaa !82
  %281 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 2
  store ptr @peekPoint, ptr %281, align 8, !tbaa !83
  %282 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 3
  store ptr @nextPoint, ptr %282, align 8, !tbaa !84
  %283 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 4
  store ptr @nextNPoint, ptr %283, align 8, !tbaa !85
  %284 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 5
  store ptr @previousPoint, ptr %284, align 8, !tbaa !86
  %285 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 6
  store ptr @iteratorStopped, ptr %285, align 8, !tbaa !87
  %286 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 12
  store ptr %268, ptr %286, align 8, !tbaa !88
  %287 = icmp sgt i32 %279, 1
  %288 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 13
  br i1 %287, label %289, label %291

289:                                              ; preds = %264
  store i32 1, ptr %288, align 8, !tbaa !89
  %290 = add nsw i32 %279, -2
  br label %292

291:                                              ; preds = %264
  store i32 -1, ptr %288, align 8, !tbaa !89
  br label %292

292:                                              ; preds = %291, %289
  %293 = phi i32 [ %279, %291 ], [ %290, %289 ]
  %294 = phi i32 [ -1, %291 ], [ 1, %289 ]
  %295 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 14
  store i32 %293, ptr %295, align 4, !tbaa !90
  %296 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 15
  store i32 %294, ptr %296, align 8, !tbaa !91
  %297 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 13
  %298 = load i32, ptr %297, align 8, !tbaa !89
  %299 = add i32 %293, 1
  %300 = sub i32 %299, %298
  %301 = mul nsw i32 %300, %294
  %302 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 10
  store i32 %301, ptr %302, align 4, !tbaa !92
  %303 = getelementptr inbounds %struct.SK_StrokeIterator, ptr %6, i64 0, i32 11
  store i32 -1, ptr %303, align 8, !tbaa !93
  %304 = load i32, ptr %278, align 8, !tbaa !74
  %305 = icmp sgt i32 %304, 1
  br i1 %305, label %306, label %349

306:                                              ; preds = %292
  %307 = getelementptr inbounds float, ptr %7, i64 1
  %308 = getelementptr inbounds float, ptr %7, i64 2
  br label %309

309:                                              ; preds = %306, %342
  %310 = phi i64 [ 1, %306 ], [ %345, %342 ]
  %311 = phi i32 [ 0, %306 ], [ %344, %342 ]
  %312 = phi ptr [ %277, %306 ], [ %343, %342 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %313 = load ptr, ptr %269, align 8, !tbaa !102
  %314 = getelementptr inbounds %struct.SK_Point, ptr %313, i64 %310
  %315 = load float, ptr %314, align 4, !tbaa !99
  %316 = load float, ptr %312, align 4, !tbaa !99
  %317 = fsub float %315, %316
  store float %317, ptr %7, align 4, !tbaa !99
  %318 = getelementptr inbounds float, ptr %314, i64 1
  %319 = load float, ptr %318, align 4, !tbaa !99
  %320 = getelementptr inbounds float, ptr %312, i64 1
  %321 = load float, ptr %320, align 4, !tbaa !99
  %322 = fsub float %319, %321
  store float %322, ptr %307, align 4, !tbaa !99
  %323 = getelementptr inbounds float, ptr %314, i64 2
  %324 = load float, ptr %323, align 4, !tbaa !99
  %325 = getelementptr inbounds float, ptr %312, i64 2
  %326 = load float, ptr %325, align 4, !tbaa !99
  %327 = fsub float %324, %326
  store float %327, ptr %308, align 4, !tbaa !99
  %328 = trunc i64 %310 to i32
  %329 = call float @calcArcCorrelation(ptr noundef nonnull %6, i32 noundef %311, i32 noundef %328, ptr noundef nonnull %312, ptr noundef nonnull %7) #17
  %330 = fcmp olt float %329, 0x3FEFAE1480000000
  br i1 %330, label %331, label %342

331:                                              ; preds = %309
  %332 = add nsw i64 %310, -1
  %333 = load ptr, ptr %269, align 8, !tbaa !102
  %334 = getelementptr inbounds %struct.SK_Point, ptr %333, i64 %332
  call void @sk_appendStrokePoint(ptr noundef %267, ptr noundef %334) #17
  %335 = load ptr, ptr %271, align 8, !tbaa !102
  %336 = load i32, ptr %273, align 8, !tbaa !74
  %337 = sext i32 %336 to i64
  %338 = getelementptr %struct.SK_Point, ptr %335, i64 %337
  %339 = getelementptr %struct.SK_Point, ptr %338, i64 -1
  %340 = getelementptr %struct.SK_Point, ptr %338, i64 -1, i32 4
  store i32 1, ptr %340, align 4, !tbaa !97
  %341 = trunc i64 %332 to i32
  br label %342

342:                                              ; preds = %331, %309
  %343 = phi ptr [ %339, %331 ], [ %312, %309 ]
  %344 = phi i32 [ %341, %331 ], [ %311, %309 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  %345 = add nuw nsw i64 %310, 1
  %346 = load i32, ptr %278, align 8, !tbaa !74
  %347 = sext i32 %346 to i64
  %348 = icmp slt i64 %345, %347
  br i1 %348, label %309, label %349, !llvm.loop !233

349:                                              ; preds = %342, %292
  %350 = phi i32 [ %304, %292 ], [ %346, %342 ]
  %351 = load ptr, ptr %269, align 8, !tbaa !102
  %352 = sext i32 %350 to i64
  %353 = getelementptr %struct.SK_Point, ptr %351, i64 %352
  %354 = getelementptr %struct.SK_Point, ptr %353, i64 -1
  call void @sk_appendStrokePoint(ptr noundef %267, ptr noundef %354) #17
  %355 = load i32, ptr %273, align 8, !tbaa !74
  %356 = add nsw i32 %355, -1
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #17
  %357 = getelementptr inbounds %struct.SK_Gesture, ptr %23, i64 0, i32 6
  store i32 %356, ptr %357, align 8, !tbaa !94
  %358 = call i32 @sk_detectCutGesture(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %46) #17
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %371

360:                                              ; preds = %349, %365
  %361 = phi ptr [ %366, %365 ], [ @GESTURE_ACTIONS, %349 ]
  %362 = getelementptr inbounds %struct.SK_GestureAction, ptr %361, i64 1, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !234
  %364 = icmp eq ptr %363, null
  br i1 %364, label %373, label %365, !llvm.loop !236

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.SK_GestureAction, ptr %361, i64 1
  %367 = getelementptr inbounds %struct.SK_GestureAction, ptr %361, i64 1, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !237
  %369 = call i32 %368(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %46) #17
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %360, label %371, !llvm.loop !236

371:                                              ; preds = %365, %349
  %372 = phi ptr [ @sk_applyCutGesture, %349 ], [ %363, %365 ]
  call void %372(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %46) #17
  br label %373

373:                                              ; preds = %360, %371
  %374 = load ptr, ptr %87, align 8, !tbaa !107
  call void @sk_freeStroke(ptr noundef %374) #17
  call void @BLI_freelistN(ptr noundef nonnull %84) #17
  call void @BLI_freelistN(ptr noundef nonnull %85) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %23) #17
  br label %375

375:                                              ; preds = %373, %79
  call void @sk_freeStroke(ptr noundef %4) #17
  %376 = getelementptr inbounds %struct.SK_Sketch, ptr %46, i64 0, i32 3
  store ptr null, ptr %376, align 8, !tbaa !154
  %377 = call ptr @CTX_wm_area(ptr noundef %0) #17
  call void @ED_area_tag_redraw(ptr noundef %377) #17
  %378 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %379 = load ptr, ptr %27, align 8, !tbaa !175
  call void %378(ptr noundef %379) #17
  br label %380

380:                                              ; preds = %69, %375, %75, %45, %63, %55, %49
  %381 = phi i32 [ 1, %45 ], [ 4, %75 ], [ 4, %375 ], [ 1, %69 ], [ 2, %63 ], [ 1, %55 ], [ 1, %49 ]
  ret i32 %381
}

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sk_endContinuousStroke(ptr noundef) local_unnamed_addr #2

declare void @sk_filterLastContinuousStroke(ptr noundef) local_unnamed_addr #2

declare void @sk_freeStroke(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @isect_line_line_strict_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_win_to_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @cmpIntersections(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.SK_Intersection, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.SK_Intersection, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SK_Intersection, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !103
  %11 = getelementptr inbounds %struct.SK_Intersection, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = icmp sgt i32 %10, %12
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.SK_Intersection, ptr %0, i64 0, i32 7
  %18 = load float, ptr %17, align 8, !tbaa !229
  %19 = getelementptr inbounds %struct.SK_Intersection, ptr %1, i64 0, i32 7
  %20 = load float, ptr %19, align 8, !tbaa !229
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

declare float @calcArcCorrelation(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !35, i64 32}
!41 = !{!"Base", !35, i64 0, !35, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !42, i64 28, !42, i64 30, !35, i64 32}
!42 = !{!"short", !36, i64 0}
!43 = !{!44, !42, i64 136}
!44 = !{!"Object", !45, i64 0, !35, i64 120, !35, i64 128, !42, i64 136, !42, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !46, i64 312, !35, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !39, i64 432, !39, i64 436, !35, i64 440, !35, i64 448, !39, i64 456, !39, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !48, i64 616, !48, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !39, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !48, i64 988, !48, i64 992, !48, i64 996, !48, i64 1000, !48, i64 1004, !48, i64 1008, !48, i64 1012, !48, i64 1016, !48, i64 1020, !48, i64 1024, !48, i64 1028, !48, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !48, i64 1048, !48, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !48, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !39, i64 1144, !39, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !48, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !49, i64 1304, !49, i64 1312, !39, i64 1320, !39, i64 1324, !47, i64 1328, !47, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !47, i64 1400, !35, i64 1416}
!45 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !35, i64 112}
!46 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!47 = !{!"ListBase", !35, i64 0, !35, i64 8}
!48 = !{!"float", !36, i64 0}
!49 = !{!"long", !36, i64 0}
!50 = !{!51, !35, i64 400}
!51 = !{!"ToolSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !48, i64 32, !48, i64 36, !48, i64 40, !42, i64 44, !42, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !48, i64 52, !42, i64 56, !36, i64 58, !36, i64 59, !52, i64 64, !54, i64 168, !48, i64 336, !48, i64 340, !42, i64 344, !42, i64 346, !36, i64 348, !36, i64 349, !42, i64 350, !48, i64 352, !48, i64 356, !48, i64 360, !48, i64 364, !48, i64 368, !48, i64 372, !48, i64 376, !48, i64 380, !48, i64 384, !48, i64 388, !42, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !35, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !42, i64 434, !42, i64 436, !42, i64 438, !42, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !42, i64 464, !42, i64 466, !39, i64 468, !48, i64 472, !48, i64 476, !55, i64 480, !56, i64 608}
!52 = !{!"ImagePaintSettings", !53, i64 0, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !36, i64 48, !39, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !36, i64 88, !48, i64 100}
!53 = !{!"Paint", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!54 = !{!"ParticleEditSettings", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8, !35, i64 120, !48, i64 128, !48, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !35, i64 152, !35, i64 160}
!55 = !{!"UnifiedPaintSettings", !39, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !36, i64 16, !36, i64 28, !39, i64 40, !36, i64 44, !48, i64 52, !39, i64 56, !39, i64 60, !36, i64 64, !36, i64 65, !48, i64 72, !36, i64 76, !39, i64 84, !48, i64 88, !36, i64 92, !36, i64 100, !39, i64 108, !35, i64 112, !48, i64 120, !39, i64 124}
!56 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !36, i64 20, !36, i64 21, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!61, !35, i64 8}
!61 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !39, i64 16}
!62 = !{!63, !35, i64 16}
!63 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!64 = !{!63, !35, i64 8}
!65 = !{!66, !35, i64 152}
!66 = !{!"RigGraph", !47, i64 0, !47, i64 16, !48, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !39, i64 72, !47, i64 80, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152}
!67 = !{!44, !35, i64 296}
!68 = !{!69, !35, i64 184}
!69 = !{!"bArmature", !45, i64 0, !35, i64 120, !47, i64 128, !47, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !42, i64 208, !42, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252}
!70 = !{!71, !35, i64 32}
!71 = !{!"SK_Sketch", !47, i64 0, !47, i64 16, !35, i64 32, !35, i64 40, !72, i64 48, !73, i64 88}
!72 = !{!"SK_Point", !36, i64 0, !36, i64 12, !36, i64 16, !48, i64 28, !39, i64 32, !39, i64 36}
!73 = !{!"SK_Overdraw", !35, i64 0, !39, i64 8, !39, i64 12, !39, i64 16}
!74 = !{!75, !39, i64 24}
!75 = !{!"SK_Stroke", !35, i64 0, !35, i64 8, !35, i64 16, !39, i64 24, !39, i64 28, !39, i64 32}
!76 = !{!71, !35, i64 88}
!77 = !{!71, !39, i64 96}
!78 = !{!71, !39, i64 100}
!79 = !{!71, !39, i64 104}
!80 = !{!81, !35, i64 0}
!81 = !{!"SK_StrokeIterator", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !48, i64 72, !39, i64 76, !39, i64 80, !35, i64 88, !39, i64 96, !39, i64 100, !39, i64 104}
!82 = !{!81, !35, i64 8}
!83 = !{!81, !35, i64 16}
!84 = !{!81, !35, i64 24}
!85 = !{!81, !35, i64 32}
!86 = !{!81, !35, i64 40}
!87 = !{!81, !35, i64 48}
!88 = !{!81, !35, i64 88}
!89 = !{!81, !39, i64 96}
!90 = !{!81, !39, i64 100}
!91 = !{!81, !39, i64 104}
!92 = !{!81, !39, i64 76}
!93 = !{!81, !39, i64 80}
!94 = !{!95, !39, i64 56}
!95 = !{!"SK_Gesture", !35, i64 0, !35, i64 8, !47, i64 16, !47, i64 32, !39, i64 48, !39, i64 52, !39, i64 56}
!96 = !{!95, !39, i64 52}
!97 = !{!72, !39, i64 32}
!98 = !{!72, !39, i64 36}
!99 = !{!48, !48, i64 0}
!100 = !{!101, !35, i64 16}
!101 = !{!"SK_Intersection", !35, i64 0, !35, i64 8, !35, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !36, i64 36, !48, i64 48}
!102 = !{!75, !35, i64 16}
!103 = !{!101, !39, i64 24}
!104 = !{!101, !39, i64 28}
!105 = distinct !{!105, !58, !59}
!106 = !{!95, !39, i64 48}
!107 = !{!95, !35, i64 8}
!108 = distinct !{!108, !58, !59}
!109 = !{!95, !35, i64 16}
!110 = !{!101, !35, i64 0}
!111 = distinct !{!111, !58, !59}
!112 = !{!95, !35, i64 32}
!113 = !{!101, !39, i64 32}
!114 = distinct !{!114, !58, !59}
!115 = distinct !{!115, !58, !59}
!116 = !{!95, !35, i64 0}
!117 = !{!42, !42, i64 0}
!118 = distinct !{!118, !58, !59}
!119 = distinct !{!119, !58, !59}
!120 = distinct !{!120, !58, !59}
!121 = distinct !{!121, !58, !59}
!122 = distinct !{!122, !58, !59}
!123 = distinct !{!123, !58, !59}
!124 = !{!75, !39, i64 32}
!125 = !{!51, !36, i64 409}
!126 = distinct !{!126, !58, !59}
!127 = !{!128, !35, i64 16}
!128 = !{!"ViewContext", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56}
!129 = !{!128, !35, i64 0}
!130 = !{!131, !35, i64 264}
!131 = !{!"Scene", !45, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !47, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !42, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !132, i64 280, !141, i64 4264, !47, i64 4296, !47, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !42, i64 4376, !42, i64 4378, !39, i64 4380, !47, i64 4384, !142, i64 4400, !143, i64 4416, !146, i64 4600, !35, i64 4608, !147, i64 4616, !35, i64 4640, !49, i64 4648, !49, i64 4656, !134, i64 4664, !135, i64 4824, !148, i64 4888, !35, i64 4952}
!132 = !{!"RenderData", !133, i64 0, !35, i64 248, !35, i64 256, !136, i64 264, !137, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !48, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !42, i64 432, !42, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !39, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !39, i64 484, !39, i64 488, !42, i64 492, !42, i64 494, !39, i64 496, !39, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !138, i64 544, !138, i64 560, !139, i64 576, !47, i64 592, !42, i64 608, !42, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !39, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !48, i64 660, !48, i64 664, !42, i64 668, !42, i64 670, !48, i64 672, !48, i64 676, !36, i64 680, !39, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !39, i64 2520, !42, i64 2524, !42, i64 2526, !48, i64 2528, !48, i64 2532, !42, i64 2536, !42, i64 2538, !48, i64 2540, !42, i64 2544, !42, i64 2546, !39, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !48, i64 2560, !48, i64 2564, !35, i64 2568, !39, i64 2576, !48, i64 2580, !36, i64 2584, !140, i64 2616, !39, i64 3976, !39, i64 3980}
!133 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !48, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !134, i64 24, !135, i64 184}
!134 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 72, !48, i64 136, !48, i64 140, !35, i64 144, !35, i64 152}
!135 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!136 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !42, i64 48, !42, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!137 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !48, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !35, i64 64}
!138 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!139 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!140 = !{!"BakeData", !133, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !48, i64 1280, !48, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!141 = !{!"AudioData", !39, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !39, i64 16, !42, i64 20, !42, i64 22, !48, i64 24, !48, i64 28}
!142 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!143 = !{!"GameData", !142, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !36, i64 34, !144, i64 40, !42, i64 64, !42, i64 66, !48, i64 68, !145, i64 72, !48, i64 128, !48, i64 132, !39, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!144 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !48, i64 8, !48, i64 12, !35, i64 16}
!145 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !39, i64 40, !48, i64 44, !48, i64 48, !42, i64 52, !42, i64 54}
!146 = !{!"UnitSettings", !48, i64 0, !36, i64 4, !36, i64 5, !42, i64 6}
!147 = !{!"PhysicsSettings", !36, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!148 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!149 = !{!51, !36, i64 408}
!150 = distinct !{!150, !58, !59}
!151 = distinct !{!151, !58, !59}
!152 = !{!71, !39, i64 84}
!153 = !{!72, !48, i64 28}
!154 = !{!71, !35, i64 40}
!155 = !{i32 0, i32 2}
!156 = !{!139, !39, i64 0}
!157 = !{!139, !39, i64 4}
!158 = !{!139, !39, i64 8}
!159 = !{!139, !39, i64 12}
!160 = !{!161, !35, i64 0}
!161 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !47, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !162, i64 152, !42, i64 184}
!162 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!163 = !{!161, !35, i64 8}
!164 = !{!161, !35, i64 24}
!165 = !{!161, !35, i64 48}
!166 = !{!161, !35, i64 72}
!167 = !{!161, !42, i64 184}
!168 = !{!161, !35, i64 88}
!169 = !{!170, !35, i64 112}
!170 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !47, i64 128, !35, i64 144, !35, i64 152, !42, i64 160, !36, i64 162}
!171 = !{!172, !39, i64 16}
!172 = !{!"SK_DrawData", !36, i64 0, !36, i64 8, !39, i64 16}
!173 = !{!161, !35, i64 64}
!174 = !{!161, !35, i64 56}
!175 = !{!170, !35, i64 96}
!176 = !{i32 1, i32 5}
!177 = !{!81, !35, i64 56}
!178 = !{!81, !35, i64 64}
!179 = !{!81, !48, i64 72}
!180 = !{!181, !35, i64 16}
!181 = !{!"ReebArc", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !39, i64 32, !48, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !47, i64 56, !39, i64 72, !35, i64 80, !35, i64 88, !48, i64 96, !35, i64 104}
!182 = !{!181, !35, i64 24}
!183 = !{!181, !39, i64 72}
!184 = !{!181, !35, i64 80}
!185 = distinct !{!185, !58, !59}
!186 = !{!51, !36, i64 411}
!187 = !{!69, !35, i64 160}
!188 = !{!189, !39, i64 132}
!189 = !{!"EditBone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !48, i64 104, !36, i64 108, !36, i64 120, !39, i64 132, !39, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !42, i64 180}
!190 = !{!189, !35, i64 24}
!191 = distinct !{!191, !58, !59}
!192 = distinct !{!192, !58, !59}
!193 = !{!36, !36, i64 0}
!194 = distinct !{!194, !58, !59}
!195 = distinct !{!195, !58, !59}
!196 = !{!197, !35, i64 0}
!197 = !{!"BArcIterator", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !48, i64 72, !39, i64 76, !39, i64 80}
!198 = !{!197, !35, i64 56}
!199 = !{ptr @nextAdaptativeSubdivision, ptr @nextFixedSubdivision, ptr @nextLengthSubdivision}
!200 = distinct !{!200, !58, !59}
!201 = distinct !{!201, !58, !59}
!202 = !{!51, !36, i64 431}
!203 = !{!204, !39, i64 56}
!204 = !{!"DepthPeel", !35, i64 0, !35, i64 8, !48, i64 16, !36, i64 20, !36, i64 32, !35, i64 48, !39, i64 56}
!205 = !{!51, !42, i64 434}
!206 = !{!204, !35, i64 0}
!207 = !{!204, !35, i64 48}
!208 = distinct !{!208, !58, !59}
!209 = distinct !{!209, !58, !59}
!210 = distinct !{!210, !58, !59}
!211 = distinct !{!211, !58, !59}
!212 = distinct !{!212, !58, !59}
!213 = !{!214, !35, i64 376}
!214 = !{!"ARegion", !35, i64 0, !35, i64 8, !215, i64 16, !139, i64 176, !139, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !48, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !35, i64 240, !47, i64 248, !47, i64 264, !47, i64 280, !47, i64 296, !47, i64 312, !47, i64 328, !47, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!215 = !{!"View2D", !138, i64 0, !138, i64 16, !139, i64 32, !139, i64 48, !139, i64 64, !36, i64 80, !36, i64 88, !48, i64 96, !48, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !35, i64 128, !39, i64 136, !39, i64 140, !35, i64 144, !35, i64 152}
!216 = distinct !{!216, !58, !59}
!217 = !{!218, !35, i64 96}
!218 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !139, i64 56, !36, i64 72, !36, i64 73, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !42, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !47, i64 96, !47, i64 112, !47, i64 128, !47, i64 144}
!219 = distinct !{!219, !58, !59}
!220 = distinct !{!220, !58, !59}
!221 = !{!222, !42, i64 16}
!222 = !{!"wmEvent", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 18, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !42, i64 44, !42, i64 46, !39, i64 48, !39, i64 52, !223, i64 56, !39, i64 64, !39, i64 68, !42, i64 72, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !35, i64 88, !35, i64 96, !42, i64 104, !42, i64 106, !39, i64 108, !35, i64 112}
!223 = !{!"double", !36, i64 0}
!224 = !{!222, !42, i64 74}
!225 = !{!170, !35, i64 88}
!226 = !{!222, !42, i64 18}
!227 = distinct !{!227, !58, !59}
!228 = distinct !{!228, !58, !59}
!229 = !{!101, !48, i64 48}
!230 = distinct !{!230, !58, !59}
!231 = distinct !{!231, !58, !59}
!232 = distinct !{!232, !58, !59}
!233 = distinct !{!233, !58, !59}
!234 = !{!235, !35, i64 72}
!235 = !{!"SK_GestureAction", !36, i64 0, !35, i64 64, !35, i64 72}
!236 = distinct !{!236, !58, !59}
!237 = !{!235, !35, i64 64}
