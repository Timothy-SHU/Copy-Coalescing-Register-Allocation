; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_utils.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.PaletteColor = type { ptr, ptr, [3 x float], float }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }

@paint_stroke_operator_properties.stroke_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Apply brush normally\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"INVERT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Invert action of brush for duration of stroke\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SMOOTH\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Switch brush to smooth mode for duration of stroke\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@RNA_OperatorStrokeElement = external global %struct.StructRNA, align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Stroke\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Stroke Mode\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Action taken when a paint stroke is made\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@BRUSH_OT_curve_preset.prop_shape_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.11 }, %struct.EnumPropertyItem { i32 2, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.11 }, %struct.EnumPropertyItem { i32 3, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.11 }, %struct.EnumPropertyItem { i32 0, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.11 }, %struct.EnumPropertyItem { i32 5, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.11 }, %struct.EnumPropertyItem { i32 6, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.11 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [6 x i8] c"SHARP\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Sharp\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"LINE\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"ROUND\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Round\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"ROOT\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Root\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Preset\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Set brush shape\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"BRUSH_OT_curve_preset\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Select linked faces\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"PAINT_OT_face_select_linked\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Select Linked Pick\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"Select linked faces under the cursor\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"PAINT_OT_face_select_linked_pick\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"Deselect rather than select items\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Change selection for all faces\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"PAINT_OT_face_select_all\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"Change selection for all vertices\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"PAINT_OT_vert_select_all\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"Select Ungrouped\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"PAINT_OT_vert_select_ungrouped\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"Select vertices without a group\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"Extend the selection\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"Face Select Hide\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"Hide selected faces\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"PAINT_OT_face_select_hide\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"Hide unselected rather than selected objects\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"Face Select Reveal\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"Reveal hidden faces\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"PAINT_OT_face_select_reveal\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"No weights/vertex groups on object\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @paint_convert_bb_to_rect(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  tail call void @BLI_rcti_init_minmax(ptr noundef %0) #13
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = fcmp ogt float %11, %12
  br i1 %13, label %57, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fcmp ogt float %16, %18
  br i1 %19, label %57, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fcmp ogt float %22, %24
  br i1 %25, label %57, label %26

26:                                               ; preds = %20
  call void @ED_view3d_ob_project_mat_get(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #13
  %27 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %28 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  br label %29

29:                                               ; preds = %26, %44
  %30 = phi i1 [ true, %26 ], [ false, %44 ]
  %31 = select i1 %30, ptr %2, ptr %1
  br label %32

32:                                               ; preds = %29, %43
  %33 = phi i1 [ true, %29 ], [ false, %43 ]
  %34 = select i1 %33, ptr %17, ptr %15
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i1 [ true, %32 ], [ false, %35 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %37 = load float, ptr %31, align 4, !tbaa !34
  store float %37, ptr %8, align 4, !tbaa !34
  %38 = load float, ptr %34, align 4, !tbaa !34
  store float %38, ptr %27, align 4, !tbaa !34
  %39 = select i1 %36, ptr %23, ptr %21
  %40 = load float, ptr %39, align 4, !tbaa !34
  store float %40, ptr %28, align 4, !tbaa !34
  call void @ED_view3d_project_float_v2_m4(ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #13
  %41 = load <2 x float>, ptr %9, align 8, !tbaa !34
  %42 = fptosi <2 x float> %41 to <2 x i32>
  store <2 x i32> %42, ptr %10, align 8, !tbaa !38
  call void @BLI_rcti_do_minmax_v(ptr noundef %0, ptr noundef nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  br i1 %36, label %35, label %43, !llvm.loop !40

43:                                               ; preds = %35
  br i1 %33, label %32, label %44, !llvm.loop !42

44:                                               ; preds = %43
  br i1 %30, label %29, label %45, !llvm.loop !43

45:                                               ; preds = %44
  %46 = load i32, ptr %0, align 4, !tbaa !44
  %47 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !46
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !47
  %53 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !48
  %55 = icmp slt i32 %52, %54
  %56 = zext i1 %55 to i8
  br label %57

57:                                               ; preds = %45, %50, %6, %14, %20
  %58 = phi i8 [ 0, %20 ], [ 0, %14 ], [ 0, %6 ], [ 0, %45 ], [ %56, %50 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  ret i8 %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_rcti_init_minmax(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rcti_do_minmax_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_calc_redraw_planes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BoundBox, align 4
  %7 = alloca %struct.bglMats, align 8
  %8 = alloca %struct.rcti, align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %6, i8 0, i64 104, i1 false)
  call void @view3d_get_transformation(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !49
  %9 = load <4 x i32>, ptr %8, align 16, !tbaa !38
  %10 = add nsw <4 x i32> %9, <i32 -2, i32 2, i32 -2, i32 2>
  store <4 x i32> %10, ptr %8, align 16, !tbaa !38
  call void @ED_view3d_clipping_calc(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  call void @negate_m4(ptr noundef %0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @ED_view3d_clipping_calc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @negate_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @paint_calc_object_space_radius(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store float %2, ptr %6, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef %1) #13
  %11 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = call float @ED_view3d_calc_zfac(ptr noundef %12, ptr noundef nonnull %5, ptr noundef null) #13
  %14 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  call void @ED_view3d_win_to_delta(ptr noundef %15, ptr noundef nonnull %6, ptr noundef nonnull %4, float noundef %13) #13
  %16 = call float @mat4_to_scale(ptr noundef nonnull %10) #13
  %17 = call float @llvm.fabs.f32(float %16)
  %18 = fcmp oeq float %16, 0.000000e+00
  %19 = select i1 %18, float 1.000000e+00, float %17
  %20 = call fastcc float @len_v3(ptr noundef nonnull %4) #14
  %21 = fdiv float %20, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret float %21
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !55 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #14
  %3 = tail call float @sqrtf(float noundef %2) #13
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @paint_get_tex_pixel(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  store float %1, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %8, i64 1
  store float %2, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %7, i64 1
  %12 = getelementptr inbounds float, ptr %7, i64 2
  %13 = getelementptr inbounds float, ptr %7, i64 3
  %14 = call i32 @externtex(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %4, ptr noundef %3) #13
  %15 = load float, ptr %6, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret float %15
}

; Function Attrs: optsize
declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_get_tex_pixel_col(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  store float %1, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %9, i64 1
  store float %2, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %9, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = getelementptr inbounds float, ptr %3, i64 2
  %15 = getelementptr inbounds float, ptr %3, i64 3
  %16 = call i32 @externtex(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %3, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %5, ptr noundef %4) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load float, ptr %10, align 4, !tbaa !34
  store float %19, ptr %3, align 4, !tbaa !34
  store float %19, ptr %13, align 4, !tbaa !34
  store float %19, ptr %14, align 4, !tbaa !34
  store float 1.000000e+00, ptr %15, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %18, %8
  %21 = icmp eq i8 %6, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %3, ptr noundef %7) #13
  br label %23

23:                                               ; preds = %22, %20
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef %3, ptr noundef %3) #14
  %24 = load float, ptr %3, align 4, !tbaa !34
  %25 = fcmp olt float %24, 0.000000e+00
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = fcmp ogt float %24, 1.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %23
  %29 = phi float [ 0.000000e+00, %23 ], [ 1.000000e+00, %26 ]
  store float %29, ptr %3, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %28, %26
  %31 = load float, ptr %13, align 4, !tbaa !34
  %32 = fcmp olt float %31, 0.000000e+00
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = fcmp ogt float %31, 1.000000e+00
  br i1 %34, label %35, label %37

35:                                               ; preds = %33, %30
  %36 = phi float [ 0.000000e+00, %30 ], [ 1.000000e+00, %33 ]
  store float %36, ptr %13, align 4, !tbaa !34
  br label %37

37:                                               ; preds = %35, %33
  %38 = load float, ptr %14, align 4, !tbaa !34
  %39 = fcmp olt float %38, 0.000000e+00
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = fcmp ogt float %38, 1.000000e+00
  br i1 %41, label %42, label %44

42:                                               ; preds = %40, %37
  %43 = phi float [ 0.000000e+00, %37 ], [ 1.000000e+00, %40 ]
  store float %43, ptr %14, align 4, !tbaa !34
  br label %44

44:                                               ; preds = %42, %40
  %45 = load float, ptr %15, align 4, !tbaa !34
  %46 = fcmp olt float %45, 0.000000e+00
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = fcmp ogt float %45, 1.000000e+00
  br i1 %48, label %49, label %51

49:                                               ; preds = %47, %44
  %50 = phi float [ 0.000000e+00, %44 ], [ 1.000000e+00, %47 ]
  store float %50, ptr %15, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %49, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !56 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #13
  store float %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #13
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #13
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_stroke_operator_properties(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = tail call ptr @RNA_def_collection_runtime(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @RNA_OperatorStrokeElement, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #13
  %5 = load ptr, ptr %2, align 8, !tbaa !57
  %6 = tail call ptr @RNA_def_enum(ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef nonnull @paint_stroke_operator_properties.stroke_mode_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #13
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @flip_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  %4 = zext i8 %2 to i32
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = fneg float %7
  %9 = select i1 %6, float %7, float %8
  store float %9, ptr %0, align 4, !tbaa !34
  %10 = and i32 %4, 2
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fneg float %13
  %15 = select i1 %11, float %13, float %14
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4
  %17 = and i32 %4, 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fneg float %20
  %22 = select i1 %18, float %20, float %21
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @paint_sample_color(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ViewContext, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x i8], align 1
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %17 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %18 = tail call ptr @BKE_paint_palette(ptr noundef %17) #13
  %19 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %20 = tail call ptr @BKE_paint_brush(ptr noundef %19) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %21 = icmp slt i32 %2, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %24 = load i16, ptr %23, align 8, !tbaa !62
  %25 = sext i16 %24 to i32
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 %2)
  br label %27

27:                                               ; preds = %22, %6
  %28 = phi i32 [ 0, %6 ], [ %26, %22 ]
  %29 = icmp slt i32 %3, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %32 = load i16, ptr %31, align 2, !tbaa !66
  %33 = sext i16 %32 to i32
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 %3)
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i32 [ 0, %27 ], [ %34, %30 ]
  %37 = icmp eq i8 %5, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = icmp eq ptr %18, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %42 = tail call ptr @BKE_palette_add(ptr noundef %41, ptr noundef nonnull @.str.15) #13
  tail call void @BKE_paint_palette_set(ptr noundef %17, ptr noundef %42) #13
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi ptr [ %18, %38 ], [ %42, %40 ]
  %45 = tail call ptr @BKE_palette_color_add(ptr noundef %44) #13
  br label %46

46:                                               ; preds = %43, %35
  %47 = phi ptr [ %45, %43 ], [ undef, %35 ]
  %48 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #13
  %49 = icmp ne ptr %48, null
  %50 = icmp ne i8 %4, 0
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %140

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !67
  %55 = icmp eq ptr %54, null
  br i1 %55, label %139, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.Base, ptr %54, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !86
  %59 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 20
  %60 = load ptr, ptr %59, align 8, !tbaa !88
  %61 = getelementptr inbounds %struct.ToolSettings, ptr %60, i64 0, i32 17, i32 6
  %62 = load i32, ptr %61, align 4, !tbaa !89
  %63 = icmp eq i32 %62, 0
  %64 = icmp eq ptr %58, null
  br i1 %64, label %139, label %65

65:                                               ; preds = %56
  %66 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !92
  %67 = tail call ptr @mesh_get_derived_final(ptr noundef nonnull %16, ptr noundef nonnull %58, i64 noundef %66) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  store i32 %28, ptr %9, align 4, !tbaa !38
  %68 = getelementptr inbounds i32, ptr %9, i64 1
  store i32 %36, ptr %68, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %67, i64 0, i32 25
  %70 = load ptr, ptr %69, align 8, !tbaa !93
  %71 = tail call i32 %70(ptr noundef %67) #13
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %67, i64 0, i32 52
  %73 = load ptr, ptr %72, align 8, !tbaa !96
  %74 = tail call ptr %73(ptr noundef %67, i32 noundef 5) #13
  tail call void @DM_update_materials(ptr noundef %67, ptr noundef nonnull %58) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %136, label %76

76:                                               ; preds = %65
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %8) #13
  call void @view3d_operator_needs_opengl(ptr noundef %0) #13
  %77 = call fastcc i32 @imapaint_pick_face(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %71) #14, !range !97
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %136, label %79

79:                                               ; preds = %76
  br i1 %63, label %80, label %83

80:                                               ; preds = %79
  %81 = load i32, ptr %10, align 4, !tbaa !38
  %82 = call fastcc ptr @imapaint_face_image(ptr noundef nonnull %67, i32 noundef %81) #14
  br label %86

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.ToolSettings, ptr %60, i64 0, i32 17, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !98
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi ptr [ %82, %80 ], [ %85, %83 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %136, label %89

89:                                               ; preds = %86
  %90 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %87, ptr noundef null, ptr noundef null) #13
  %91 = icmp eq ptr %90, null
  br i1 %91, label %133, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.ImBuf, ptr %90, i64 0, i32 8
  %94 = load ptr, ptr %93, align 8, !tbaa !99
  %95 = icmp eq ptr %94, null
  br i1 %95, label %133, label %96

96:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  %97 = load i32, ptr %10, align 4, !tbaa !38
  call fastcc void @imapaint_pick_uv(ptr noundef nonnull %16, ptr noundef nonnull %58, i32 noundef %97, ptr noundef nonnull %9, ptr noundef nonnull %11) #14
  %98 = load float, ptr %11, align 4, !tbaa !34
  %99 = call float @fmodf(float noundef %98, float noundef 1.000000e+00) #13
  %100 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !34
  %102 = call float @fmodf(float noundef %101, float noundef 1.000000e+00) #13
  %103 = fcmp olt float %99, 0.000000e+00
  %104 = fadd float %99, 1.000000e+00
  %105 = select i1 %103, float %104, float %99
  %106 = fcmp olt float %102, 0.000000e+00
  %107 = fadd float %102, 1.000000e+00
  %108 = select i1 %106, float %107, float %102
  %109 = getelementptr inbounds %struct.ImBuf, ptr %90, i64 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !102
  %111 = sitofp i32 %110 to float
  %112 = call float @llvm.fmuladd.f32(float %105, float %111, float -5.000000e-01)
  %113 = getelementptr inbounds %struct.ImBuf, ptr %90, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !103
  %115 = sitofp i32 %114 to float
  %116 = call float @llvm.fmuladd.f32(float %108, float %115, float -5.000000e-01)
  %117 = getelementptr inbounds %struct.ImBuf, ptr %90, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !104
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %90, ptr noundef null, ptr noundef nonnull %12, float noundef %112, float noundef %116) #13
  call fastcc void @straight_to_premul_v4(ptr noundef nonnull %12) #14
  br i1 %37, label %123, label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.PaletteColor, ptr %47, i64 0, i32 2
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %122, ptr noundef nonnull %12) #14
  br label %124

123:                                              ; preds = %120
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %12) #14
  call void @BKE_brush_color_set(ptr noundef nonnull %16, ptr noundef %20, ptr noundef nonnull %12) #13
  br label %124

124:                                              ; preds = %123, %121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  br label %130

125:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %90, ptr noundef nonnull %13, ptr noundef null, float noundef %112, float noundef %116) #13
  br i1 %37, label %128, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.PaletteColor, ptr %47, i64 0, i32 2
  call void @rgb_uchar_to_float(ptr noundef nonnull %127, ptr noundef nonnull %13) #13
  br label %129

128:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  call void @rgb_uchar_to_float(ptr noundef nonnull %14, ptr noundef nonnull %13) #13
  call void @BKE_brush_color_set(ptr noundef nonnull %16, ptr noundef %20, ptr noundef nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  br label %129

129:                                              ; preds = %128, %126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %130

130:                                              ; preds = %129, %124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @BKE_image_release_ibuf(ptr noundef nonnull %87, ptr noundef nonnull %90, ptr noundef null) #13
  %131 = getelementptr inbounds %struct.DerivedMesh, ptr %67, i64 0, i32 95
  %132 = load ptr, ptr %131, align 8, !tbaa !105
  call void %132(ptr noundef nonnull %67) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  br label %151

133:                                              ; preds = %92, %89
  call void @BKE_image_release_ibuf(ptr noundef nonnull %87, ptr noundef %90, ptr noundef null) #13
  %134 = getelementptr inbounds %struct.DerivedMesh, ptr %67, i64 0, i32 95
  %135 = load ptr, ptr %134, align 8, !tbaa !105
  call void %135(ptr noundef nonnull %67) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  br label %139

136:                                              ; preds = %86, %65, %76
  %137 = getelementptr inbounds %struct.DerivedMesh, ptr %67, i64 0, i32 95
  %138 = load ptr, ptr %137, align 8, !tbaa !105
  call void %138(ptr noundef nonnull %67) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #12
  br label %139

139:                                              ; preds = %52, %133, %56, %136
  call void @glReadBuffer(i32 noundef 1028) #13
  br label %141

140:                                              ; preds = %46
  tail call void @glReadBuffer(i32 noundef 1028) #13
  br label %141

141:                                              ; preds = %139, %140
  %142 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %143 = load i32, ptr %142, align 8, !tbaa !106
  %144 = add nsw i32 %143, %28
  %145 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %146 = load i32, ptr %145, align 8, !tbaa !107
  %147 = add nsw i32 %146, %36
  call void @glReadPixels(i32 noundef %144, i32 noundef %147, i32 noundef 1, i32 noundef 1, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %7) #13
  call void @glReadBuffer(i32 noundef 1029) #13
  br i1 %37, label %150, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.PaletteColor, ptr %47, i64 0, i32 2
  call void @rgb_uchar_to_float(ptr noundef nonnull %149, ptr noundef nonnull %7) #13
  br label %151

150:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  call void @rgb_uchar_to_float(ptr noundef nonnull %15, ptr noundef nonnull %7) #13
  call void @BKE_brush_color_set(ptr noundef %16, ptr noundef %20, ptr noundef nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  br label %151

151:                                              ; preds = %130, %148, %150
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_palette(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_palette_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_paint_palette_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_palette_color_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_update_materials(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @imapaint_pick_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !108 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 4, !tbaa !38
  %8 = getelementptr inbounds i32, ptr %1, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !38
  %10 = tail call i32 @view3d_sample_backbuf(ptr noundef %0, i32 noundef %7, i32 noundef %9) #13
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, %3
  %13 = select i1 %12, i32 %11, i32 %10
  store i32 %13, ptr %2, align 4
  %14 = zext i1 %12 to i32
  br label %15

15:                                               ; preds = %6, %4
  %16 = phi i32 [ 0, %4 ], [ %14, %6 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @imapaint_face_image(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = tail call ptr %4(ptr noundef %0) #13
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.MFace, ptr %5, i64 %6, i32 4
  %10 = load i16, ptr %9, align 4, !tbaa !112
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 135
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 131
  %19 = load i16, ptr %18, align 4, !tbaa !119
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds %struct.TexPaintSlot, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !120
  br label %23

23:                                               ; preds = %2, %15
  %24 = phi ptr [ %22, %15 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imapaint_pick_uv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !122 {
  %6 = alloca [2 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca %struct.MFace, align 4
  %9 = alloca [4 x %struct.MVert], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x i32], align 16
  %13 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !92
  %14 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %13) #13
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 25
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = tail call i32 %16(ptr noundef %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = getelementptr inbounds %struct.ToolSettings, ptr %19, i64 0, i32 17, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !123
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 52
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = tail call ptr %23(ptr noundef %14, i32 noundef 7) #13
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 54
  %26 = load ptr, ptr %25, align 8, !tbaa !128
  %27 = tail call ptr %26(ptr noundef %14, i32 noundef 7) #13
  %28 = icmp eq ptr %24, null
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %12) #13
  call void @glGetFloatv(i32 noundef 2982, ptr noundef nonnull %10) #13
  call void @glGetFloatv(i32 noundef 2983, ptr noundef nonnull %11) #13
  %29 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 1
  store i32 0, ptr %29, align 4, !tbaa !38
  store i32 0, ptr %12, align 16, !tbaa !38
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %30) #13
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %10) #13
  %31 = getelementptr inbounds float, ptr %4, i64 1
  store <2 x float> zeroinitializer, ptr %4, align 4, !tbaa !34
  %32 = icmp sgt i32 %17, 0
  br i1 %32, label %33, label %194

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 30
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 28
  %36 = getelementptr inbounds %struct.MFace, ptr %8, i64 0, i32 1
  %37 = getelementptr inbounds [4 x %struct.MVert], ptr %9, i64 0, i64 1
  %38 = getelementptr inbounds %struct.MFace, ptr %8, i64 0, i32 2
  %39 = getelementptr inbounds [4 x %struct.MVert], ptr %9, i64 0, i64 2
  %40 = getelementptr inbounds %struct.MFace, ptr %8, i64 0, i32 3
  %41 = getelementptr inbounds [4 x %struct.MVert], ptr %9, i64 0, i64 3
  %42 = icmp eq i32 %21, 0
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 2
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 18
  %45 = getelementptr inbounds %struct.MFace, ptr %8, i64 0, i32 4
  %46 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %47 = zext nneg i32 %17 to i64
  br label %48

48:                                               ; preds = %33, %190
  %49 = phi i64 [ 0, %33 ], [ %192, %190 ]
  %50 = phi float [ 1.000000e+10, %33 ], [ %191, %190 ]
  %51 = trunc i64 %49 to i32
  br i1 %28, label %54, label %52

52:                                               ; preds = %48
  %53 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %24, ptr noundef %27, i32 noundef %51) #14
  br label %54

54:                                               ; preds = %48, %52
  %55 = phi i32 [ %53, %52 ], [ %51, %48 ]
  %56 = icmp eq i32 %55, %2
  br i1 %56, label %57, label %190

57:                                               ; preds = %54
  %58 = load ptr, ptr %34, align 8, !tbaa !129
  call void %58(ptr noundef %14, i32 noundef %51, ptr noundef nonnull %8) #13
  %59 = load ptr, ptr %35, align 8, !tbaa !130
  %60 = load i32, ptr %8, align 4, !tbaa !131
  call void %59(ptr noundef %14, i32 noundef %60, ptr noundef nonnull %9) #13
  %61 = load ptr, ptr %35, align 8, !tbaa !130
  %62 = load i32, ptr %36, align 4, !tbaa !132
  call void %61(ptr noundef %14, i32 noundef %62, ptr noundef nonnull %37) #13
  %63 = load ptr, ptr %35, align 8, !tbaa !130
  %64 = load i32, ptr %38, align 4, !tbaa !133
  call void %63(ptr noundef %14, i32 noundef %64, ptr noundef nonnull %39) #13
  %65 = load i32, ptr %40, align 4, !tbaa !134
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %57
  %68 = load ptr, ptr %35, align 8, !tbaa !130
  call void %68(ptr noundef nonnull %14, i32 noundef %65, ptr noundef nonnull %41) #13
  br label %69

69:                                               ; preds = %67, %57
  br i1 %42, label %70, label %89

70:                                               ; preds = %69
  %71 = load ptr, ptr %44, align 8, !tbaa !111
  %72 = load i16, ptr %45, align 4, !tbaa !112
  %73 = sext i16 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %71, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !114
  %76 = getelementptr inbounds %struct.Material, ptr %75, i64 0, i32 135
  %77 = load ptr, ptr %76, align 8, !tbaa !115
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.Material, ptr %75, i64 0, i32 131
  %81 = load i16, ptr %80, align 4, !tbaa !119
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds %struct.TexPaintSlot, ptr %77, i64 %82, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !135
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %43, i32 noundef 5, ptr noundef nonnull %84) #13
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %69, %70, %79, %86
  %90 = call ptr @CustomData_get_layer(ptr noundef nonnull %43, i32 noundef 5) #13
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi ptr [ %87, %86 ], [ %90, %89 ]
  %93 = getelementptr inbounds %struct.MTFace, ptr %92, i64 %49
  %94 = load <2 x i32>, ptr %3, align 4, !tbaa !38
  %95 = sitofp <2 x i32> %94 to <2 x float>
  store <2 x float> %95, ptr %6, align 8, !tbaa !34
  %96 = load i32, ptr %40, align 4, !tbaa !134
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %152, label %98

98:                                               ; preds = %91
  call fastcc void @imapaint_tri_weights(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %37, ptr noundef nonnull %41, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %99 = load <2 x float>, ptr %7, align 8, !tbaa !34
  %100 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %99)
  %101 = shufflevector <2 x float> %100, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %102 = fadd <2 x float> %100, %101
  %103 = extractelement <2 x float> %102, i64 0
  %104 = load float, ptr %46, align 8, !tbaa !34
  %105 = call float @llvm.fabs.f32(float %104)
  %106 = fadd float %103, %105
  %107 = fcmp olt float %106, %50
  br i1 %107, label %108, label %128

108:                                              ; preds = %98
  %109 = load float, ptr %93, align 8, !tbaa !34
  %110 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 1
  %111 = load float, ptr %110, align 8, !tbaa !34
  %112 = extractelement <2 x float> %99, i64 1
  %113 = fmul float %112, %111
  %114 = extractelement <2 x float> %99, i64 0
  %115 = call float @llvm.fmuladd.f32(float %109, float %114, float %113)
  %116 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 3
  %117 = load float, ptr %116, align 8, !tbaa !34
  %118 = call float @llvm.fmuladd.f32(float %117, float %104, float %115)
  store float %118, ptr %4, align 4, !tbaa !34
  %119 = getelementptr inbounds [2 x float], ptr %93, i64 0, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !34
  %121 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 1, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !34
  %123 = fmul float %112, %122
  %124 = call float @llvm.fmuladd.f32(float %120, float %114, float %123)
  %125 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 3, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = call float @llvm.fmuladd.f32(float %126, float %104, float %124)
  store float %127, ptr %31, align 4, !tbaa !34
  br label %128

128:                                              ; preds = %108, %98
  %129 = phi float [ %106, %108 ], [ %50, %98 ]
  call fastcc void @imapaint_tri_weights(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %37, ptr noundef nonnull %39, ptr noundef nonnull %41, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %130 = load <2 x float>, ptr %7, align 8, !tbaa !34
  %131 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %130)
  %132 = shufflevector <2 x float> %131, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %133 = fadd <2 x float> %131, %132
  %134 = extractelement <2 x float> %133, i64 0
  %135 = load float, ptr %46, align 8, !tbaa !34
  %136 = call float @llvm.fabs.f32(float %135)
  %137 = fadd float %134, %136
  %138 = fcmp olt float %137, %129
  br i1 %138, label %139, label %190

139:                                              ; preds = %128
  %140 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 1
  %141 = load float, ptr %140, align 8, !tbaa !34
  %142 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 2
  %143 = load float, ptr %142, align 8, !tbaa !34
  %144 = extractelement <2 x float> %130, i64 1
  %145 = fmul float %144, %143
  %146 = extractelement <2 x float> %130, i64 0
  %147 = call float @llvm.fmuladd.f32(float %141, float %146, float %145)
  %148 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 3
  %149 = load float, ptr %148, align 8, !tbaa !34
  %150 = call float @llvm.fmuladd.f32(float %149, float %135, float %147)
  store float %150, ptr %4, align 4, !tbaa !34
  %151 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 1, i64 1
  br label %174

152:                                              ; preds = %91
  call fastcc void @imapaint_tri_weights(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %37, ptr noundef nonnull %39, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %153 = load <2 x float>, ptr %7, align 8, !tbaa !34
  %154 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %153)
  %155 = shufflevector <2 x float> %154, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %156 = fadd <2 x float> %154, %155
  %157 = extractelement <2 x float> %156, i64 0
  %158 = load float, ptr %46, align 8, !tbaa !34
  %159 = call float @llvm.fabs.f32(float %158)
  %160 = fadd float %157, %159
  %161 = fcmp olt float %160, %50
  br i1 %161, label %162, label %190

162:                                              ; preds = %152
  %163 = load float, ptr %93, align 8, !tbaa !34
  %164 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 1
  %165 = load float, ptr %164, align 8, !tbaa !34
  %166 = extractelement <2 x float> %153, i64 1
  %167 = fmul float %166, %165
  %168 = extractelement <2 x float> %153, i64 0
  %169 = call float @llvm.fmuladd.f32(float %163, float %168, float %167)
  %170 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 2
  %171 = load float, ptr %170, align 8, !tbaa !34
  %172 = call float @llvm.fmuladd.f32(float %171, float %158, float %169)
  store float %172, ptr %4, align 4, !tbaa !34
  %173 = getelementptr inbounds [2 x float], ptr %93, i64 0, i64 1
  br label %174

174:                                              ; preds = %139, %162
  %175 = phi ptr [ %173, %162 ], [ %151, %139 ]
  %176 = phi i64 [ 1, %162 ], [ 2, %139 ]
  %177 = phi float [ %166, %162 ], [ %144, %139 ]
  %178 = phi float [ %168, %162 ], [ %146, %139 ]
  %179 = phi i64 [ 2, %162 ], [ 3, %139 ]
  %180 = phi float [ %158, %162 ], [ %135, %139 ]
  %181 = phi float [ %160, %162 ], [ %137, %139 ]
  %182 = load float, ptr %175, align 4, !tbaa !34
  %183 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 %176, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !34
  %185 = fmul float %177, %184
  %186 = call float @llvm.fmuladd.f32(float %182, float %178, float %185)
  %187 = getelementptr inbounds [4 x [2 x float]], ptr %93, i64 0, i64 %179, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !34
  %189 = call float @llvm.fmuladd.f32(float %188, float %180, float %186)
  store float %189, ptr %31, align 4, !tbaa !34
  br label %190

190:                                              ; preds = %174, %54, %152, %128
  %191 = phi float [ %129, %128 ], [ %50, %152 ], [ %50, %54 ], [ %181, %174 ]
  %192 = add nuw nsw i64 %49, 1
  %193 = icmp eq i64 %192, %47
  br i1 %193, label %194, label %48, !llvm.loop !136

194:                                              ; preds = %190, %5
  %195 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 95
  %196 = load ptr, ptr %195, align 8, !tbaa !105
  call void %196(ptr noundef %14) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @bilinear_interpolation_color_wrap(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_to_premul_v4(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !137 {
  tail call fastcc void @straight_to_premul_v4_v4(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @BKE_brush_color_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glReadBuffer(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BRUSH_OT_curve_preset(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !139
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_curve_preset_exec, ptr %4, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @brush_curve_preset_poll, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.29, ptr noundef nonnull @BRUSH_OT_curve_preset.prop_shape_items, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.11) #13
  tail call void @RNA_def_property_translation_context(ptr noundef %8, ptr noundef nonnull @.str.31) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_curve_preset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !143 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.29) #13
  tail call void @BKE_brush_curve_preset(ptr noundef nonnull %4, i32 noundef %10) #13
  %11 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  tail call void @BKE_paint_invalidate_cursor_overlay(ptr noundef %7, ptr noundef %12) #13
  br label %13

13:                                               ; preds = %6, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @brush_curve_preset_poll(ptr noundef %0) #0 !PGOFuncName !150 {
  %2 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #13
  %3 = tail call ptr @BKE_paint_brush(ptr noundef %2) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !146
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: optsize
declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_face_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #9 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !139
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paint_select_linked_exec, ptr %4, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paint_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !152 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  tail call void @paintface_select_linked(ptr noundef %0, ptr noundef %3, ptr noundef null, i8 noundef zeroext 1) #13
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %4) #13
  ret i32 4
}

; Function Attrs: optsize
declare i32 @facemask_paint_poll(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_face_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !139
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paint_select_linked_pick_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paint_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !154 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.38) #13
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #13
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @paintface_select_linked(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %10, i8 noundef zeroext %8) #13
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %11) #13
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_face_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !139
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @face_select_all_exec, ptr %4, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !151
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @face_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !155 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.61) #13
  tail call void @paintface_deselect_all_visible(ptr noundef %3, i32 noundef %6, i8 noundef zeroext 1) #13
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %7) #13
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_vert_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %2, align 8, !tbaa !139
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vert_select_all_exec, ptr %4, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vert_paint_poll, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !151
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vert_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !156 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.61) #13
  tail call void @paintvert_deselect_all_visible(ptr noundef %3, i32 noundef %6, i8 noundef zeroext 1) #13
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %7) #13
  ret i32 4
}

; Function Attrs: optsize
declare i32 @vert_paint_poll(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_vert_select_ungrouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.47, ptr %2, align 8, !tbaa !140
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %3, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vert_select_ungrouped_exec, ptr %4, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vert_paint_poll, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vert_select_ungrouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !157 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %5 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %4) #14, !range !158
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7, %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.62) #13
  br label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !144
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.49) #13
  %20 = trunc i32 %19 to i8
  tail call void @paintvert_select_ungrouped(ptr noundef nonnull %3, i8 noundef zeroext %20, i8 noundef zeroext 1) #13
  %21 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %21) #13
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i32 [ 2, %13 ], [ 4, %16 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_face_select_hide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %2, align 8, !tbaa !139
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @face_select_hide_exec, ptr %4, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @face_select_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !165 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.55) #13
  %6 = trunc i32 %5 to i8
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  tail call void @paintface_hide(ptr noundef %7, i8 noundef zeroext %6) #13
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %8) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PAINT_OT_face_select_reveal(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !138
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %2, align 8, !tbaa !139
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @face_select_reveal_exec, ptr %4, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @face_select_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !166 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  tail call void @paintface_reveal(ptr noundef %3) #13
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %4) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !167 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @view3d_sample_backbuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #10 !PGOFuncName !168 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !38
  br label %14

14:                                               ; preds = %8, %3, %10
  %15 = phi i32 [ %13, %10 ], [ -1, %3 ], [ %6, %8 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imapaint_tri_weights(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6) unnamed_addr #0 !PGOFuncName !169 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #12
  call fastcc void @imapaint_project(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %8) #14
  call fastcc void @imapaint_project(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %9) #14
  call fastcc void @imapaint_project(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %10) #14
  %14 = getelementptr inbounds i32, ptr %1, i64 2
  %15 = load <2 x float>, ptr %5, align 4, !tbaa !34
  %16 = load <2 x i32>, ptr %1, align 4, !tbaa !38
  %17 = sitofp <2 x i32> %16 to <2 x float>
  %18 = fsub <2 x float> %15, %17
  %19 = fmul <2 x float> %18, <float 2.000000e+00, float 2.000000e+00>
  %20 = load <2 x i32>, ptr %14, align 4, !tbaa !38
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = fdiv <2 x float> %19, %21
  %23 = fadd <2 x float> %22, <float -1.000000e+00, float -1.000000e+00>
  store <2 x float> %23, ptr %11, align 8, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float 1.000000e+00, ptr %24, align 8, !tbaa !34
  %25 = load float, ptr %9, align 16, !tbaa !34
  %26 = load <4 x float>, ptr %8, align 16
  %27 = load <4 x float>, ptr %9, align 16
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %29 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1, i64 1
  %30 = load <4 x float>, ptr %10, align 16
  %31 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = insertelement <4 x float> %26, float %32, i64 2
  %34 = insertelement <4 x float> %33, float %25, i64 3
  store <4 x float> %34, ptr %12, align 16, !tbaa !34
  %35 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = insertelement <4 x float> %28, float %36, i64 1
  %38 = shufflevector <4 x float> %37, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %38, ptr %29, align 16, !tbaa !34
  %39 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2, i64 2
  store float %40, ptr %41, align 16, !tbaa !34
  %42 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %13, ptr noundef nonnull %12) #13
  call void @mul_m3_v3(ptr noundef nonnull %13, ptr noundef nonnull %11) #13
  call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef nonnull %11) #14
  %43 = load float, ptr %6, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %6, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fadd float %43, %45
  %47 = getelementptr inbounds float, ptr %6, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fadd float %46, %48
  %50 = fcmp une float %49, 0.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %7
  %52 = fdiv float 1.000000e+00, %49
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %52) #14
  br label %53

53:                                               ; preds = %51, %7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @imapaint_project(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !170 {
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %1) #14
  %4 = getelementptr inbounds float, ptr %2, i64 3
  store float 1.000000e+00, ptr %4, align 4, !tbaa !34
  tail call void @mul_m4_v4(ptr noundef %0, ptr noundef %2) #13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !171 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !172 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @straight_to_premul_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !173 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %4, %8
  %10 = getelementptr inbounds float, ptr %0, i64 1
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fmul float %4, %12
  %14 = getelementptr inbounds float, ptr %0, i64 2
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = load float, ptr %3, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 3
  store float %15, ptr %16, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @BKE_brush_curve_preset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_paint_invalidate_cursor_overlay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paintface_select_linked(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paintface_deselect_all_visible(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paintvert_deselect_all_visible(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !174 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paintvert_select_ungrouped(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paintface_hide(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paintface_reveal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = !{!45, !39, i64 0}
!45 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!46 = !{!45, !39, i64 4}
!47 = !{!45, !39, i64 8}
!48 = !{!45, !39, i64 12}
!49 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !38, i64 12, i64 4, !38}
!50 = !{!51, !52, i64 8}
!51 = !{!"ViewContext", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !36, i64 56}
!52 = !{!"any pointer", !36, i64 0}
!53 = !{!51, !52, i64 40}
!54 = !{!51, !52, i64 24}
!55 = !{!"paint_utils.c:len_v3"}
!56 = !{!"paint_utils.c:linearrgb_to_srgb_v3_v3"}
!57 = !{!58, !52, i64 88}
!58 = !{!"wmOperatorType", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !59, i64 112, !52, i64 128, !52, i64 136, !52, i64 144, !60, i64 152, !61, i64 184}
!59 = !{!"ListBase", !52, i64 0, !52, i64 8}
!60 = !{!"ExtensionRNA", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!61 = !{!"short", !36, i64 0}
!62 = !{!63, !61, i64 208}
!63 = !{!"ARegion", !52, i64 0, !52, i64 8, !64, i64 16, !45, i64 176, !45, i64 192, !61, i64 208, !61, i64 210, !61, i64 212, !61, i64 214, !61, i64 216, !61, i64 218, !35, i64 220, !61, i64 224, !61, i64 226, !61, i64 228, !61, i64 230, !61, i64 232, !61, i64 234, !61, i64 236, !61, i64 238, !52, i64 240, !59, i64 248, !59, i64 264, !59, i64 280, !59, i64 296, !59, i64 312, !59, i64 328, !59, i64 344, !52, i64 360, !52, i64 368, !52, i64 376}
!64 = !{!"View2D", !65, i64 0, !65, i64 16, !45, i64 32, !45, i64 48, !45, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !61, i64 104, !61, i64 106, !61, i64 108, !61, i64 110, !61, i64 112, !61, i64 114, !61, i64 116, !61, i64 118, !61, i64 120, !61, i64 122, !61, i64 124, !61, i64 126, !52, i64 128, !39, i64 136, !39, i64 140, !52, i64 144, !52, i64 152}
!65 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!66 = !{!63, !61, i64 210}
!67 = !{!68, !52, i64 168}
!68 = !{!"Scene", !69, i64 0, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !59, i64 152, !52, i64 168, !52, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !61, i64 244, !36, i64 246, !36, i64 247, !52, i64 248, !52, i64 256, !52, i64 264, !52, i64 272, !70, i64 280, !77, i64 4264, !59, i64 4296, !59, i64 4312, !52, i64 4328, !52, i64 4336, !52, i64 4344, !52, i64 4352, !52, i64 4360, !52, i64 4368, !61, i64 4376, !61, i64 4378, !39, i64 4380, !59, i64 4384, !78, i64 4400, !79, i64 4416, !82, i64 4600, !52, i64 4608, !83, i64 4616, !52, i64 4640, !84, i64 4648, !84, i64 4656, !72, i64 4664, !73, i64 4824, !85, i64 4888, !52, i64 4952}
!69 = !{!"ID", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !36, i64 32, !61, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !52, i64 112}
!70 = !{!"RenderData", !71, i64 0, !52, i64 248, !52, i64 256, !74, i64 264, !75, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !35, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !61, i64 432, !61, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !61, i64 456, !61, i64 458, !61, i64 460, !61, i64 462, !61, i64 464, !61, i64 466, !39, i64 468, !61, i64 472, !61, i64 474, !61, i64 476, !61, i64 478, !61, i64 480, !61, i64 482, !39, i64 484, !39, i64 488, !61, i64 492, !61, i64 494, !39, i64 496, !39, i64 500, !61, i64 504, !61, i64 506, !61, i64 508, !61, i64 510, !61, i64 512, !36, i64 514, !36, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !61, i64 528, !61, i64 530, !61, i64 532, !61, i64 534, !61, i64 536, !61, i64 538, !61, i64 540, !61, i64 542, !65, i64 544, !65, i64 560, !45, i64 576, !59, i64 592, !61, i64 608, !61, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !39, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !61, i64 648, !61, i64 650, !61, i64 652, !61, i64 654, !61, i64 656, !61, i64 658, !35, i64 660, !35, i64 664, !61, i64 668, !61, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !39, i64 1704, !61, i64 1708, !61, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !39, i64 2520, !61, i64 2524, !61, i64 2526, !35, i64 2528, !35, i64 2532, !61, i64 2536, !61, i64 2538, !35, i64 2540, !61, i64 2544, !61, i64 2546, !39, i64 2548, !61, i64 2552, !61, i64 2554, !61, i64 2556, !61, i64 2558, !35, i64 2560, !35, i64 2564, !52, i64 2568, !39, i64 2576, !35, i64 2580, !36, i64 2584, !76, i64 2616, !39, i64 3976, !39, i64 3980}
!71 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !61, i64 8, !61, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !72, i64 24, !73, i64 184}
!72 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !52, i64 144, !52, i64 152}
!73 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!74 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !61, i64 48, !61, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!75 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !35, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !52, i64 64}
!76 = !{!"BakeData", !71, i64 0, !36, i64 248, !61, i64 1272, !61, i64 1274, !61, i64 1276, !61, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!77 = !{!"AudioData", !39, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !39, i64 16, !61, i64 20, !61, i64 22, !35, i64 24, !35, i64 28}
!78 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!79 = !{!"GameData", !78, i64 0, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !61, i64 28, !61, i64 30, !61, i64 32, !36, i64 34, !80, i64 40, !61, i64 64, !61, i64 66, !35, i64 68, !81, i64 72, !35, i64 128, !35, i64 132, !39, i64 136, !61, i64 140, !61, i64 142, !61, i64 144, !61, i64 146, !61, i64 148, !61, i64 150, !61, i64 152, !61, i64 154, !61, i64 156, !61, i64 158, !61, i64 160, !61, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!80 = !{!"GameDome", !61, i64 0, !61, i64 2, !61, i64 4, !61, i64 6, !35, i64 8, !35, i64 12, !52, i64 16}
!81 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !39, i64 40, !35, i64 44, !35, i64 48, !61, i64 52, !61, i64 54}
!82 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !61, i64 6}
!83 = !{!"PhysicsSettings", !36, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!84 = !{!"long", !36, i64 0}
!85 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!86 = !{!87, !52, i64 32}
!87 = !{!"Base", !52, i64 0, !52, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !61, i64 28, !61, i64 30, !52, i64 32}
!88 = !{!68, !52, i64 264}
!89 = !{!90, !39, i64 52}
!90 = !{!"ImagePaintSettings", !91, i64 0, !61, i64 40, !61, i64 42, !61, i64 44, !61, i64 46, !36, i64 48, !39, i64 52, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !36, i64 88, !35, i64 100}
!91 = !{!"Paint", !52, i64 0, !52, i64 8, !52, i64 16, !36, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!92 = !{!84, !84, i64 0}
!93 = !{!94, !52, i64 1120}
!94 = !{!"DerivedMesh", !95, i64 0, !95, i64 200, !95, i64 400, !95, i64 600, !95, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !52, i64 1032, !52, i64 1040, !39, i64 1048, !35, i64 1052, !39, i64 1056, !39, i64 1060, !52, i64 1064, !36, i64 1072, !52, i64 1080, !52, i64 1088, !52, i64 1096, !52, i64 1104, !52, i64 1112, !52, i64 1120, !52, i64 1128, !52, i64 1136, !52, i64 1144, !52, i64 1152, !52, i64 1160, !52, i64 1168, !52, i64 1176, !52, i64 1184, !52, i64 1192, !52, i64 1200, !52, i64 1208, !52, i64 1216, !52, i64 1224, !52, i64 1232, !52, i64 1240, !52, i64 1248, !52, i64 1256, !52, i64 1264, !52, i64 1272, !52, i64 1280, !52, i64 1288, !52, i64 1296, !52, i64 1304, !52, i64 1312, !52, i64 1320, !52, i64 1328, !52, i64 1336, !52, i64 1344, !52, i64 1352, !52, i64 1360, !52, i64 1368, !52, i64 1376, !52, i64 1384, !52, i64 1392, !52, i64 1400, !52, i64 1408, !52, i64 1416, !52, i64 1424, !52, i64 1432, !52, i64 1440, !52, i64 1448, !52, i64 1456, !52, i64 1464, !52, i64 1472, !52, i64 1480, !52, i64 1488, !52, i64 1496, !52, i64 1504, !52, i64 1512, !52, i64 1520, !52, i64 1528, !52, i64 1536, !52, i64 1544, !52, i64 1552, !52, i64 1560, !52, i64 1568, !52, i64 1576, !52, i64 1584, !52, i64 1592, !52, i64 1600, !52, i64 1608, !52, i64 1616, !52, i64 1624, !52, i64 1632, !52, i64 1640, !52, i64 1648, !52, i64 1656, !52, i64 1664, !52, i64 1672, !52, i64 1680}
!95 = !{!"CustomData", !52, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !52, i64 184, !52, i64 192}
!96 = !{!94, !52, i64 1336}
!97 = !{i32 0, i32 2}
!98 = !{!90, !52, i64 80}
!99 = !{!100, !52, i64 40}
!100 = !{!"ImBuf", !52, i64 0, !52, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !52, i64 40, !52, i64 48, !36, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !52, i64 88, !52, i64 96, !52, i64 104, !35, i64 112, !36, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !52, i64 296, !52, i64 304, !39, i64 312, !36, i64 316, !36, i64 1340, !52, i64 2368, !39, i64 2376, !52, i64 2384, !39, i64 2392, !39, i64 2396, !52, i64 2400, !52, i64 2408, !52, i64 2416, !52, i64 2424, !39, i64 2432, !45, i64 2436, !101, i64 2456}
!101 = !{!"DDSData", !39, i64 0, !39, i64 4, !52, i64 8, !39, i64 16}
!102 = !{!100, !39, i64 16}
!103 = !{!100, !39, i64 20}
!104 = !{!100, !52, i64 48}
!105 = !{!94, !52, i64 1680}
!106 = !{!63, !39, i64 176}
!107 = !{!63, !39, i64 184}
!108 = !{!"paint_utils.c:imapaint_pick_face"}
!109 = !{!"paint_utils.c:imapaint_face_image"}
!110 = !{!94, !52, i64 1184}
!111 = !{!94, !52, i64 1064}
!112 = !{!113, !61, i64 16}
!113 = !{!"MFace", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !61, i64 16, !36, i64 18, !36, i64 19}
!114 = !{!52, !52, i64 0}
!115 = !{!116, !52, i64 920}
!116 = !{!"Material", !69, i64 0, !52, i64 120, !61, i64 128, !61, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !117, i64 224, !118, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !61, i64 356, !61, i64 358, !61, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !61, i64 372, !61, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !61, i64 392, !61, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !61, i64 412, !61, i64 414, !61, i64 416, !61, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !39, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !61, i64 544, !61, i64 546, !61, i64 548, !36, i64 550, !36, i64 551, !61, i64 552, !61, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !61, i64 588, !61, i64 590, !52, i64 592, !52, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !61, i64 612, !61, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !52, i64 768, !52, i64 776, !52, i64 784, !52, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !61, i64 820, !61, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !61, i64 876, !61, i64 878, !39, i64 880, !61, i64 884, !61, i64 886, !36, i64 888, !61, i64 904, !61, i64 906, !61, i64 908, !61, i64 910, !61, i64 912, !36, i64 914, !52, i64 920, !59, i64 928}
!117 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !61, i64 64, !61, i64 66, !61, i64 68, !61, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!118 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!119 = !{!116, !61, i64 908}
!120 = !{!121, !52, i64 0}
!121 = !{!"TexPaintSlot", !52, i64 0, !52, i64 8, !39, i64 16, !39, i64 20}
!122 = !{!"paint_utils.c:imapaint_pick_uv"}
!123 = !{!124, !39, i64 116}
!124 = !{!"ToolSettings", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !61, i64 44, !61, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !35, i64 52, !61, i64 56, !36, i64 58, !36, i64 59, !90, i64 64, !125, i64 168, !35, i64 336, !35, i64 340, !61, i64 344, !61, i64 346, !36, i64 348, !36, i64 349, !61, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !61, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !52, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !61, i64 434, !61, i64 436, !61, i64 438, !61, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !61, i64 464, !61, i64 466, !39, i64 468, !35, i64 472, !35, i64 476, !126, i64 480, !127, i64 608}
!125 = !{!"ParticleEditSettings", !61, i64 0, !61, i64 2, !61, i64 4, !61, i64 6, !36, i64 8, !52, i64 120, !35, i64 128, !35, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !52, i64 152, !52, i64 160}
!126 = !{!"UnifiedPaintSettings", !39, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !39, i64 40, !36, i64 44, !35, i64 52, !39, i64 56, !39, i64 60, !36, i64 64, !36, i64 65, !35, i64 72, !36, i64 76, !39, i64 84, !35, i64 88, !36, i64 92, !36, i64 100, !39, i64 108, !52, i64 112, !35, i64 120, !39, i64 124}
!127 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!128 = !{!94, !52, i64 1352}
!129 = !{!94, !52, i64 1160}
!130 = !{!94, !52, i64 1144}
!131 = !{!113, !39, i64 0}
!132 = !{!113, !39, i64 4}
!133 = !{!113, !39, i64 8}
!134 = !{!113, !39, i64 12}
!135 = !{!121, !52, i64 8}
!136 = distinct !{!136, !41}
!137 = !{!"paint_utils.c:straight_to_premul_v4"}
!138 = !{!58, !52, i64 0}
!139 = !{!58, !52, i64 24}
!140 = !{!58, !52, i64 8}
!141 = !{!58, !52, i64 32}
!142 = !{!58, !52, i64 72}
!143 = !{!"paint_utils.c:brush_curve_preset_exec"}
!144 = !{!145, !52, i64 112}
!145 = !{!"wmOperator", !52, i64 0, !52, i64 8, !36, i64 16, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !59, i64 128, !52, i64 144, !52, i64 152, !61, i64 160, !36, i64 162}
!146 = !{!147, !52, i64 144}
!147 = !{!"Brush", !69, i64 0, !148, i64 120, !52, i64 144, !149, i64 152, !149, i64 464, !52, i64 776, !52, i64 784, !52, i64 792, !52, i64 800, !52, i64 808, !36, i64 816, !35, i64 1840, !61, i64 1844, !61, i64 1846, !35, i64 1848, !39, i64 1852, !39, i64 1856, !39, i64 1860, !35, i64 1864, !39, i64 1868, !39, i64 1872, !39, i64 1876, !39, i64 1880, !35, i64 1884, !35, i64 1888, !36, i64 1892, !35, i64 1904, !36, i64 1908, !39, i64 1920, !35, i64 1924, !35, i64 1928, !39, i64 1932, !39, i64 1936, !39, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !35, i64 1948, !35, i64 1952, !35, i64 1956, !35, i64 1960, !35, i64 1964, !39, i64 1968, !39, i64 1972, !39, i64 1976, !35, i64 1980, !35, i64 1984, !39, i64 1988, !39, i64 1992, !35, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!148 = !{!"BrushClone", !52, i64 0, !36, i64 8, !35, i64 16, !35, i64 20}
!149 = !{!"MTex", !61, i64 0, !61, i64 2, !61, i64 4, !61, i64 6, !52, i64 8, !52, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !35, i64 116, !61, i64 120, !61, i64 122, !61, i64 124, !61, i64 126, !61, i64 128, !61, i64 130, !36, i64 132, !36, i64 133, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308}
!150 = !{!"paint_utils.c:brush_curve_preset_poll"}
!151 = !{!58, !61, i64 184}
!152 = !{!"paint_utils.c:paint_select_linked_exec"}
!153 = !{!58, !52, i64 48}
!154 = !{!"paint_utils.c:paint_select_linked_pick_invoke"}
!155 = !{!"paint_utils.c:face_select_all_exec"}
!156 = !{!"paint_utils.c:vert_select_all_exec"}
!157 = !{!"paint_utils.c:vert_select_ungrouped_exec"}
!158 = !{i8 0, i8 2}
!159 = !{!160, !52, i64 296}
!160 = !{!"Object", !69, i64 0, !52, i64 120, !52, i64 128, !61, i64 136, !61, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !52, i64 216, !52, i64 224, !52, i64 232, !52, i64 240, !52, i64 248, !52, i64 256, !52, i64 264, !52, i64 272, !52, i64 280, !52, i64 288, !52, i64 296, !52, i64 304, !161, i64 312, !52, i64 360, !59, i64 368, !59, i64 384, !59, i64 400, !59, i64 416, !39, i64 432, !39, i64 436, !52, i64 440, !52, i64 448, !39, i64 456, !39, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !39, i64 944, !61, i64 948, !61, i64 950, !61, i64 952, !61, i64 954, !61, i64 956, !61, i64 958, !61, i64 960, !61, i64 962, !61, i64 964, !36, i64 966, !36, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !61, i64 1036, !61, i64 1038, !61, i64 1040, !36, i64 1042, !36, i64 1043, !61, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !59, i64 1056, !59, i64 1072, !59, i64 1088, !59, i64 1104, !35, i64 1120, !61, i64 1124, !61, i64 1126, !36, i64 1128, !39, i64 1144, !39, i64 1148, !52, i64 1152, !36, i64 1160, !36, i64 1161, !61, i64 1162, !36, i64 1164, !59, i64 1176, !59, i64 1192, !59, i64 1208, !59, i64 1224, !52, i64 1240, !52, i64 1248, !52, i64 1256, !36, i64 1264, !36, i64 1265, !61, i64 1266, !35, i64 1268, !52, i64 1272, !52, i64 1280, !52, i64 1288, !52, i64 1296, !84, i64 1304, !84, i64 1312, !39, i64 1320, !39, i64 1324, !59, i64 1328, !59, i64 1344, !52, i64 1360, !52, i64 1368, !52, i64 1376, !36, i64 1384, !52, i64 1392, !59, i64 1400, !52, i64 1416}
!161 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !61, i64 28, !61, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!162 = !{!163, !52, i64 248}
!163 = !{!"Mesh", !69, i64 0, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !52, i64 176, !52, i64 184, !52, i64 192, !52, i64 200, !52, i64 208, !52, i64 216, !52, i64 224, !52, i64 232, !52, i64 240, !52, i64 248, !52, i64 256, !52, i64 264, !52, i64 272, !95, i64 280, !95, i64 480, !95, i64 680, !95, i64 880, !95, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !39, i64 1344, !61, i64 1348, !61, i64 1350, !35, i64 1352, !39, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !61, i64 1366, !52, i64 1368}
!164 = !{!145, !52, i64 120}
!165 = !{!"paint_utils.c:face_select_hide_exec"}
!166 = !{!"paint_utils.c:face_select_reveal_exec"}
!167 = !{!"paint_utils.c:dot_v3v3"}
!168 = !{!"paint_utils.c:DM_origindex_mface_mpoly"}
!169 = !{!"paint_utils.c:imapaint_tri_weights"}
!170 = !{!"paint_utils.c:imapaint_project"}
!171 = !{!"paint_utils.c:copy_v3_v3"}
!172 = !{!"paint_utils.c:mul_v3_fl"}
!173 = !{!"paint_utils.c:straight_to_premul_v4_v4"}
!174 = !{!"paint_utils.c:BLI_listbase_is_empty"}
!175 = !{!59, !52, i64 0}
