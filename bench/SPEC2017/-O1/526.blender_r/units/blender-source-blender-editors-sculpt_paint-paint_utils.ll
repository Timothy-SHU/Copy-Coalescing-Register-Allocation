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
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
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
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.PaletteColor = type { ptr, ptr, [3 x float], float }
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

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @paint_convert_bb_to_rect(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  tail call void @BLI_rcti_init_minmax(ptr noundef %0) #10
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = fcmp ogt float %11, %12
  br i1 %13, label %70, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fcmp ogt float %16, %18
  br i1 %19, label %70, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fcmp ogt float %22, %24
  br i1 %25, label %70, label %26

26:                                               ; preds = %20
  call void @ED_view3d_ob_project_mat_get(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #10
  %27 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %28 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %29 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %30 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  br label %31

31:                                               ; preds = %26, %55
  %32 = phi i32 [ 0, %26 ], [ %56, %55 ]
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr %2, ptr %1
  br label %35

35:                                               ; preds = %31, %52
  %36 = phi i32 [ 0, %31 ], [ %53, %52 ]
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr %17, ptr %15
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i32 [ 0, %35 ], [ %50, %39 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %41 = load float, ptr %34, align 4, !tbaa !34
  store float %41, ptr %8, align 4, !tbaa !34
  %42 = load float, ptr %38, align 4, !tbaa !34
  store float %42, ptr %27, align 4, !tbaa !34
  %43 = icmp eq i32 %40, 0
  %44 = select i1 %43, ptr %23, ptr %21
  %45 = load float, ptr %44, align 4, !tbaa !34
  store float %45, ptr %28, align 4, !tbaa !34
  call void @ED_view3d_project_float_v2_m4(ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #10
  %46 = load float, ptr %9, align 4, !tbaa !34
  %47 = fptosi float %46 to i32
  store i32 %47, ptr %10, align 4, !tbaa !38
  %48 = load float, ptr %29, align 4, !tbaa !34
  %49 = fptosi float %48 to i32
  store i32 %49, ptr %30, align 4, !tbaa !38
  call void @BLI_rcti_do_minmax_v(ptr noundef %0, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %50 = add nuw nsw i32 %40, 1
  %51 = icmp eq i32 %40, 0
  br i1 %51, label %39, label %52, !llvm.loop !40

52:                                               ; preds = %39
  %53 = add nuw nsw i32 %36, 1
  %54 = icmp eq i32 %36, 0
  br i1 %54, label %35, label %55, !llvm.loop !43

55:                                               ; preds = %52
  %56 = add nuw nsw i32 %32, 1
  %57 = icmp eq i32 %32, 0
  br i1 %57, label %31, label %58, !llvm.loop !44

58:                                               ; preds = %55
  %59 = load i32, ptr %0, align 4, !tbaa !45
  %60 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !47
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !48
  %66 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !49
  %68 = icmp slt i32 %65, %67
  %69 = zext i1 %68 to i8
  br label %70

70:                                               ; preds = %58, %63, %6, %14, %20
  %71 = phi i8 [ 0, %20 ], [ 0, %14 ], [ 0, %6 ], [ 0, %58 ], [ %69, %63 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  ret i8 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_rcti_init_minmax(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_rcti_do_minmax_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @paint_calc_redraw_planes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BoundBox, align 4
  %7 = alloca %struct.bglMats, align 8
  %8 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %6, i8 0, i64 104, i1 false)
  call void @view3d_get_transformation(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !50
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = add nsw i32 %9, -2
  store i32 %10, ptr %8, align 4, !tbaa !45
  %11 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !47
  %13 = add nsw i32 %12, 2
  store i32 %13, ptr %11, align 4, !tbaa !47
  %14 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = add nsw i32 %15, -2
  store i32 %16, ptr %14, align 4, !tbaa !48
  %17 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = add nsw i32 %18, 2
  store i32 %19, ptr %17, align 4, !tbaa !49
  call void @ED_view3d_clipping_calc(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  call void @negate_m4(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @ED_view3d_clipping_calc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @negate_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @paint_calc_object_space_radius(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store float %2, ptr %6, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef %1) #10
  %11 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = call float @ED_view3d_calc_zfac(ptr noundef %12, ptr noundef nonnull %5, ptr noundef null) #10
  %14 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  call void @ED_view3d_win_to_delta(ptr noundef %15, ptr noundef nonnull %6, ptr noundef nonnull %4, float noundef %13) #10
  %16 = call float @mat4_to_scale(ptr noundef nonnull %10) #10
  %17 = call float @llvm.fabs.f32(float %16)
  %18 = fcmp oeq float %16, 0.000000e+00
  %19 = select i1 %18, float 1.000000e+00, float %17
  %20 = load float, ptr %4, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %4, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fmul float %22, %22
  %24 = call float @llvm.fmuladd.f32(float %20, float %20, float %23)
  %25 = getelementptr inbounds float, ptr %4, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = call float @llvm.fmuladd.f32(float %26, float %26, float %24)
  %28 = call float @sqrtf(float noundef %27) #10
  %29 = fdiv float %28, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  ret float %29
}

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nounwind uwtable
define dso_local float @paint_get_tex_pixel(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  store float %1, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %8, i64 1
  store float %2, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %7, i64 1
  %12 = getelementptr inbounds float, ptr %7, i64 2
  %13 = getelementptr inbounds float, ptr %7, i64 3
  %14 = call i32 @externtex(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %4, ptr noundef %3) #10
  %15 = load float, ptr %6, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret float %15
}

declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paint_get_tex_pixel_col(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  store float %1, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %9, i64 1
  store float %2, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %9, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = getelementptr inbounds float, ptr %3, i64 2
  %15 = getelementptr inbounds float, ptr %3, i64 3
  %16 = call i32 @externtex(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %3, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %5, ptr noundef %4) #10
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
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef %3, ptr noundef %7) #10
  br label %23

23:                                               ; preds = %22, %20
  %24 = load float, ptr %3, align 4, !tbaa !34
  %25 = call float @linearrgb_to_srgb(float noundef %24) #10
  store float %25, ptr %3, align 4, !tbaa !34
  %26 = load float, ptr %13, align 4, !tbaa !34
  %27 = call float @linearrgb_to_srgb(float noundef %26) #10
  store float %27, ptr %13, align 4, !tbaa !34
  %28 = load float, ptr %14, align 4, !tbaa !34
  %29 = call float @linearrgb_to_srgb(float noundef %28) #10
  store float %29, ptr %14, align 4, !tbaa !34
  %30 = load float, ptr %3, align 4, !tbaa !34
  %31 = fcmp olt float %30, 0.000000e+00
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = fcmp ogt float %30, 1.000000e+00
  br i1 %33, label %34, label %36

34:                                               ; preds = %32, %23
  %35 = phi float [ 0.000000e+00, %23 ], [ 1.000000e+00, %32 ]
  store float %35, ptr %3, align 4, !tbaa !34
  br label %36

36:                                               ; preds = %34, %32
  %37 = load float, ptr %13, align 4, !tbaa !34
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = fcmp ogt float %37, 1.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %39, %36
  %42 = phi float [ 0.000000e+00, %36 ], [ 1.000000e+00, %39 ]
  store float %42, ptr %13, align 4, !tbaa !34
  br label %43

43:                                               ; preds = %41, %39
  %44 = fcmp olt float %29, 0.000000e+00
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = fcmp ogt float %29, 1.000000e+00
  br i1 %46, label %47, label %49

47:                                               ; preds = %45, %43
  %48 = phi float [ 0.000000e+00, %43 ], [ 1.000000e+00, %45 ]
  store float %48, ptr %14, align 4, !tbaa !34
  br label %49

49:                                               ; preds = %47, %45
  %50 = load float, ptr %15, align 4, !tbaa !34
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = fcmp ogt float %50, 1.000000e+00
  br i1 %53, label %54, label %56

54:                                               ; preds = %52, %49
  %55 = phi float [ 0.000000e+00, %49 ], [ 1.000000e+00, %52 ]
  store float %55, ptr %15, align 4, !tbaa !34
  br label %56

56:                                               ; preds = %54, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  ret void
}

declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @paint_stroke_operator_properties(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = tail call ptr @RNA_def_collection_runtime(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @RNA_OperatorStrokeElement, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  %5 = load ptr, ptr %2, align 8, !tbaa !56
  %6 = tail call ptr @RNA_def_enum(ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef nonnull @paint_stroke_operator_properties.stroke_mode_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  ret void
}

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @flip_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
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
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = and i32 %4, 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fneg float %20
  %22 = select i1 %18, float %20, float %21
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @paint_sample_color(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.MFace, align 4
  %10 = alloca [4 x %struct.MVert], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.ViewContext, align 8
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x i8], align 1
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %21 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #10
  %22 = tail call ptr @BKE_paint_palette(ptr noundef %21) #10
  %23 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #10
  %24 = tail call ptr @BKE_paint_brush(ptr noundef %23) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  %25 = icmp slt i32 %2, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %28 = load i16, ptr %27, align 8, !tbaa !61
  %29 = sext i16 %28 to i32
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 %2)
  br label %31

31:                                               ; preds = %26, %6
  %32 = phi i32 [ 0, %6 ], [ %30, %26 ]
  %33 = icmp slt i32 %3, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %36 = load i16, ptr %35, align 2, !tbaa !65
  %37 = sext i16 %36 to i32
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 %3)
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i32 [ 0, %31 ], [ %38, %34 ]
  %41 = icmp eq i8 %5, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = icmp eq ptr %22, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %46 = tail call ptr @BKE_palette_add(ptr noundef %45, ptr noundef nonnull @.str.15) #10
  tail call void @BKE_paint_palette_set(ptr noundef %21, ptr noundef %46) #10
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi ptr [ %22, %42 ], [ %46, %44 ]
  %49 = tail call ptr @BKE_palette_color_add(ptr noundef %48) #10
  br label %50

50:                                               ; preds = %47, %39
  %51 = phi ptr [ %49, %47 ], [ undef, %39 ]
  %52 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %53 = icmp ne ptr %52, null
  %54 = icmp ne i8 %4, 0
  %55 = and i1 %54, %53
  br i1 %55, label %56, label %388

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !66
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.Base, ptr %58, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !85
  br label %63

63:                                               ; preds = %56, %60
  %64 = phi ptr [ %62, %60 ], [ null, %56 ]
  %65 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 20
  %66 = load ptr, ptr %65, align 8, !tbaa !87
  %67 = getelementptr inbounds %struct.ToolSettings, ptr %66, i64 0, i32 17, i32 6
  %68 = load i32, ptr %67, align 4, !tbaa !88
  %69 = icmp eq i32 %68, 0
  %70 = icmp eq ptr %64, null
  br i1 %70, label %388, label %71

71:                                               ; preds = %63
  %72 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !91
  %73 = tail call ptr @mesh_get_derived_final(ptr noundef %20, ptr noundef nonnull %64, i64 noundef %72) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #10
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %73, i64 0, i32 25
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = tail call i32 %75(ptr noundef %73) #10
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %73, i64 0, i32 52
  %78 = load ptr, ptr %77, align 8, !tbaa !95
  %79 = tail call ptr %78(ptr noundef %73, i32 noundef 5) #10
  tail call void @DM_update_materials(ptr noundef %73, ptr noundef nonnull %64) #10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %385, label %81

81:                                               ; preds = %71
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %15) #10
  call void @view3d_operator_needs_opengl(ptr noundef %0) #10
  %82 = icmp eq i32 %76, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %81
  %84 = call i32 @view3d_sample_backbuf(ptr noundef nonnull %15, i32 noundef %32, i32 noundef %40) #10
  %85 = add i32 %84, -1
  %86 = icmp uge i32 %85, %76
  %87 = select i1 %86, i32 %84, i32 %85
  br label %88

88:                                               ; preds = %83, %81
  %89 = phi i32 [ undef, %81 ], [ %87, %83 ]
  %90 = phi i1 [ true, %81 ], [ %86, %83 ]
  br i1 %90, label %385, label %91

91:                                               ; preds = %88
  br i1 %69, label %92, label %112

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %73, i64 0, i32 33
  %94 = load ptr, ptr %93, align 8, !tbaa !96
  %95 = call ptr %94(ptr noundef %73) #10
  %96 = sext i32 %89 to i64
  %97 = getelementptr inbounds %struct.DerivedMesh, ptr %73, i64 0, i32 18
  %98 = load ptr, ptr %97, align 8, !tbaa !97
  %99 = getelementptr inbounds %struct.MFace, ptr %95, i64 %96, i32 4
  %100 = load i16, ptr %99, align 4, !tbaa !98
  %101 = sext i16 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %98, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !100
  %104 = icmp eq ptr %103, null
  br i1 %104, label %117, label %105

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.Material, ptr %103, i64 0, i32 135
  %107 = load ptr, ptr %106, align 8, !tbaa !101
  %108 = getelementptr inbounds %struct.Material, ptr %103, i64 0, i32 131
  %109 = load i16, ptr %108, align 4, !tbaa !105
  %110 = sext i16 %109 to i64
  %111 = getelementptr inbounds %struct.TexPaintSlot, ptr %107, i64 %110
  br label %114

112:                                              ; preds = %91
  %113 = getelementptr inbounds %struct.ToolSettings, ptr %66, i64 0, i32 17, i32 10
  br label %114

114:                                              ; preds = %112, %105
  %115 = phi ptr [ %111, %105 ], [ %113, %112 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !100
  br label %117

117:                                              ; preds = %114, %92
  %118 = phi ptr [ null, %92 ], [ %116, %114 ]
  %119 = icmp eq ptr %118, null
  br i1 %119, label %385, label %120

120:                                              ; preds = %117
  %121 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %118, ptr noundef null, ptr noundef null) #10
  %122 = icmp eq ptr %121, null
  br i1 %122, label %382, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.ImBuf, ptr %121, i64 0, i32 8
  %125 = load ptr, ptr %124, align 8, !tbaa !106
  %126 = icmp eq ptr %125, null
  br i1 %126, label %382, label %127

127:                                              ; preds = %123
  %128 = call ptr @mesh_get_derived_final(ptr noundef %20, ptr noundef nonnull %64, i64 noundef %72) #10
  %129 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 25
  %130 = load ptr, ptr %129, align 8, !tbaa !92
  %131 = call i32 %130(ptr noundef %128) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #10
  %132 = load ptr, ptr %65, align 8, !tbaa !87
  %133 = getelementptr inbounds %struct.ToolSettings, ptr %132, i64 0, i32 17, i32 6
  %134 = load i32, ptr %133, align 4, !tbaa !109
  %135 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 52
  %136 = load ptr, ptr %135, align 8, !tbaa !95
  %137 = call ptr %136(ptr noundef %128, i32 noundef 7) #10
  %138 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 54
  %139 = load ptr, ptr %138, align 8, !tbaa !114
  %140 = call ptr %139(ptr noundef %128, i32 noundef 7) #10
  %141 = icmp eq ptr %137, null
  %142 = select i1 %141, ptr null, ptr %140
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %13) #10
  call void @glGetFloatv(i32 noundef 2982, ptr noundef nonnull %11) #10
  call void @glGetFloatv(i32 noundef 2983, ptr noundef nonnull %12) #10
  %143 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 1
  store i32 0, ptr %143, align 4, !tbaa !38
  store i32 0, ptr %13, align 16, !tbaa !38
  %144 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %144) #10
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %11) #10
  %145 = icmp sgt i32 %131, 0
  br i1 %145, label %146, label %323

146:                                              ; preds = %127
  %147 = icmp eq ptr %142, null
  %148 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 30
  %149 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 28
  %150 = getelementptr inbounds %struct.MFace, ptr %9, i64 0, i32 1
  %151 = getelementptr inbounds [4 x %struct.MVert], ptr %10, i64 0, i64 1
  %152 = getelementptr inbounds %struct.MFace, ptr %9, i64 0, i32 2
  %153 = getelementptr inbounds [4 x %struct.MVert], ptr %10, i64 0, i64 2
  %154 = getelementptr inbounds %struct.MFace, ptr %9, i64 0, i32 3
  %155 = getelementptr inbounds [4 x %struct.MVert], ptr %10, i64 0, i64 3
  %156 = icmp eq i32 %134, 0
  %157 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 18
  %158 = getelementptr inbounds %struct.MFace, ptr %9, i64 0, i32 4
  %159 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 2
  %160 = sitofp i32 %32 to float
  %161 = sitofp i32 %40 to float
  %162 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %163 = getelementptr inbounds [4 x %struct.MVert], ptr %10, i64 0, i64 3
  %164 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %165 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %166 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %167 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %168 = zext nneg i32 %131 to i64
  %169 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 2
  br label %170

170:                                              ; preds = %146, %317
  %171 = phi i64 [ 0, %146 ], [ %321, %317 ]
  %172 = phi float [ 1.000000e+10, %146 ], [ %320, %317 ]
  %173 = phi float [ 0.000000e+00, %146 ], [ %319, %317 ]
  %174 = phi float [ 0.000000e+00, %146 ], [ %318, %317 ]
  %175 = trunc i64 %171 to i32
  br i1 %141, label %185, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds i32, ptr %137, i64 %171
  %178 = load i32, ptr %177, align 4, !tbaa !38
  %179 = icmp eq i32 %178, -1
  %180 = select i1 %179, i1 true, i1 %147
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = sext i32 %178 to i64
  %183 = getelementptr inbounds i32, ptr %142, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !38
  br label %185

185:                                              ; preds = %176, %181, %170
  %186 = phi i32 [ %175, %170 ], [ %184, %181 ], [ %178, %176 ]
  %187 = icmp eq i32 %186, %89
  br i1 %187, label %188, label %317

188:                                              ; preds = %185
  %189 = load ptr, ptr %148, align 8, !tbaa !115
  %190 = trunc i64 %171 to i32
  call void %189(ptr noundef %128, i32 noundef %190, ptr noundef nonnull %9) #10
  %191 = load ptr, ptr %149, align 8, !tbaa !116
  %192 = load i32, ptr %9, align 4, !tbaa !117
  call void %191(ptr noundef %128, i32 noundef %192, ptr noundef nonnull %10) #10
  %193 = load ptr, ptr %149, align 8, !tbaa !116
  %194 = load i32, ptr %150, align 4, !tbaa !118
  call void %193(ptr noundef %128, i32 noundef %194, ptr noundef nonnull %151) #10
  %195 = load ptr, ptr %149, align 8, !tbaa !116
  %196 = load i32, ptr %152, align 4, !tbaa !119
  call void %195(ptr noundef %128, i32 noundef %196, ptr noundef nonnull %153) #10
  %197 = load i32, ptr %154, align 4, !tbaa !120
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %188
  %200 = load ptr, ptr %149, align 8, !tbaa !116
  call void %200(ptr noundef %128, i32 noundef %197, ptr noundef nonnull %155) #10
  br label %201

201:                                              ; preds = %199, %188
  br i1 %156, label %202, label %221

202:                                              ; preds = %201
  %203 = load ptr, ptr %157, align 8, !tbaa !97
  %204 = load i16, ptr %158, align 4, !tbaa !98
  %205 = sext i16 %204 to i64
  %206 = getelementptr inbounds ptr, ptr %203, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !100
  %208 = getelementptr inbounds %struct.Material, ptr %207, i64 0, i32 135
  %209 = load ptr, ptr %208, align 8, !tbaa !101
  %210 = icmp eq ptr %209, null
  br i1 %210, label %221, label %211

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.Material, ptr %207, i64 0, i32 131
  %213 = load i16, ptr %212, align 4, !tbaa !105
  %214 = sext i16 %213 to i64
  %215 = getelementptr inbounds %struct.TexPaintSlot, ptr %209, i64 %214, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !121
  %217 = icmp eq ptr %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %211
  %219 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %159, i32 noundef 5, ptr noundef nonnull %216) #10
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %201, %202, %211, %218
  %222 = call ptr @CustomData_get_layer(ptr noundef nonnull %169, i32 noundef 5) #10
  br label %223

223:                                              ; preds = %221, %218
  %224 = phi ptr [ %219, %218 ], [ %222, %221 ]
  %225 = getelementptr inbounds %struct.MTFace, ptr %224, i64 %171
  store float %160, ptr %7, align 4, !tbaa !34
  store float %161, ptr %162, align 4, !tbaa !34
  %226 = load i32, ptr %154, align 4, !tbaa !120
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %280, label %228

228:                                              ; preds = %223
  call fastcc void @imapaint_tri_weights(ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %151, ptr noundef nonnull %163, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %229 = load float, ptr %8, align 4, !tbaa !34
  %230 = call float @llvm.fabs.f32(float %229)
  %231 = load float, ptr %164, align 4, !tbaa !34
  %232 = call float @llvm.fabs.f32(float %231)
  %233 = fadd float %230, %232
  %234 = load float, ptr %165, align 4, !tbaa !34
  %235 = call float @llvm.fabs.f32(float %234)
  %236 = fadd float %233, %235
  %237 = fcmp olt float %236, %172
  br i1 %237, label %238, label %256

238:                                              ; preds = %228
  %239 = load float, ptr %225, align 8, !tbaa !34
  %240 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 1
  %241 = load float, ptr %240, align 8, !tbaa !34
  %242 = fmul float %231, %241
  %243 = call float @llvm.fmuladd.f32(float %239, float %229, float %242)
  %244 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 3
  %245 = load float, ptr %244, align 8, !tbaa !34
  %246 = call float @llvm.fmuladd.f32(float %245, float %234, float %243)
  %247 = getelementptr inbounds [2 x float], ptr %225, i64 0, i64 1
  %248 = load float, ptr %247, align 4, !tbaa !34
  %249 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 1, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !34
  %251 = fmul float %231, %250
  %252 = call float @llvm.fmuladd.f32(float %248, float %229, float %251)
  %253 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 3, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !34
  %255 = call float @llvm.fmuladd.f32(float %254, float %234, float %252)
  br label %256

256:                                              ; preds = %238, %228
  %257 = phi float [ %255, %238 ], [ %174, %228 ]
  %258 = phi float [ %246, %238 ], [ %173, %228 ]
  %259 = phi float [ %236, %238 ], [ %172, %228 ]
  call fastcc void @imapaint_tri_weights(ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %151, ptr noundef nonnull %153, ptr noundef nonnull %163, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %260 = load float, ptr %8, align 4, !tbaa !34
  %261 = call float @llvm.fabs.f32(float %260)
  %262 = load float, ptr %164, align 4, !tbaa !34
  %263 = call float @llvm.fabs.f32(float %262)
  %264 = fadd float %261, %263
  %265 = load float, ptr %165, align 4, !tbaa !34
  %266 = call float @llvm.fabs.f32(float %265)
  %267 = fadd float %264, %266
  %268 = fcmp olt float %267, %259
  br i1 %268, label %269, label %317

269:                                              ; preds = %256
  %270 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 1
  %271 = load float, ptr %270, align 8, !tbaa !34
  %272 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 2
  %273 = load float, ptr %272, align 8, !tbaa !34
  %274 = fmul float %262, %273
  %275 = call float @llvm.fmuladd.f32(float %271, float %260, float %274)
  %276 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 3
  %277 = load float, ptr %276, align 8, !tbaa !34
  %278 = call float @llvm.fmuladd.f32(float %277, float %265, float %275)
  %279 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 1, i64 1
  br label %300

280:                                              ; preds = %223
  call fastcc void @imapaint_tri_weights(ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %151, ptr noundef nonnull %153, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %281 = load float, ptr %8, align 4, !tbaa !34
  %282 = call float @llvm.fabs.f32(float %281)
  %283 = load float, ptr %166, align 4, !tbaa !34
  %284 = call float @llvm.fabs.f32(float %283)
  %285 = fadd float %282, %284
  %286 = load float, ptr %167, align 4, !tbaa !34
  %287 = call float @llvm.fabs.f32(float %286)
  %288 = fadd float %285, %287
  %289 = fcmp olt float %288, %172
  br i1 %289, label %290, label %317

290:                                              ; preds = %280
  %291 = load float, ptr %225, align 8, !tbaa !34
  %292 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 1
  %293 = load float, ptr %292, align 8, !tbaa !34
  %294 = fmul float %283, %293
  %295 = call float @llvm.fmuladd.f32(float %291, float %281, float %294)
  %296 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 2
  %297 = load float, ptr %296, align 8, !tbaa !34
  %298 = call float @llvm.fmuladd.f32(float %297, float %286, float %295)
  %299 = getelementptr inbounds [2 x float], ptr %225, i64 0, i64 1
  br label %300

300:                                              ; preds = %269, %290
  %301 = phi ptr [ %299, %290 ], [ %279, %269 ]
  %302 = phi i64 [ 1, %290 ], [ 2, %269 ]
  %303 = phi float [ %283, %290 ], [ %262, %269 ]
  %304 = phi float [ %281, %290 ], [ %260, %269 ]
  %305 = phi i64 [ 2, %290 ], [ 3, %269 ]
  %306 = phi float [ %286, %290 ], [ %265, %269 ]
  %307 = phi float [ %298, %290 ], [ %278, %269 ]
  %308 = phi float [ %288, %290 ], [ %267, %269 ]
  %309 = load float, ptr %301, align 4, !tbaa !34
  %310 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 %302, i64 1
  %311 = load float, ptr %310, align 4, !tbaa !34
  %312 = fmul float %303, %311
  %313 = call float @llvm.fmuladd.f32(float %309, float %304, float %312)
  %314 = getelementptr inbounds [4 x [2 x float]], ptr %225, i64 0, i64 %305, i64 1
  %315 = load float, ptr %314, align 4, !tbaa !34
  %316 = call float @llvm.fmuladd.f32(float %315, float %306, float %313)
  br label %317

317:                                              ; preds = %300, %280, %256, %185
  %318 = phi float [ %174, %280 ], [ %257, %256 ], [ %174, %185 ], [ %316, %300 ]
  %319 = phi float [ %173, %280 ], [ %258, %256 ], [ %173, %185 ], [ %307, %300 ]
  %320 = phi float [ %172, %280 ], [ %259, %256 ], [ %172, %185 ], [ %308, %300 ]
  %321 = add nuw nsw i64 %171, 1
  %322 = icmp eq i64 %321, %168
  br i1 %322, label %323, label %170, !llvm.loop !123

323:                                              ; preds = %317, %127
  %324 = phi float [ 0.000000e+00, %127 ], [ %318, %317 ]
  %325 = phi float [ 0.000000e+00, %127 ], [ %319, %317 ]
  %326 = getelementptr inbounds %struct.DerivedMesh, ptr %128, i64 0, i32 95
  %327 = load ptr, ptr %326, align 8, !tbaa !124
  call void %327(ptr noundef %128) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  %328 = call float @fmodf(float noundef %325, float noundef 1.000000e+00) #10
  %329 = call float @fmodf(float noundef %324, float noundef 1.000000e+00) #10
  %330 = fcmp olt float %328, 0.000000e+00
  %331 = fadd float %328, 1.000000e+00
  %332 = select i1 %330, float %331, float %328
  %333 = fcmp olt float %329, 0.000000e+00
  %334 = fadd float %329, 1.000000e+00
  %335 = select i1 %333, float %334, float %329
  %336 = getelementptr inbounds %struct.ImBuf, ptr %121, i64 0, i32 2
  %337 = load i32, ptr %336, align 8, !tbaa !125
  %338 = sitofp i32 %337 to float
  %339 = call float @llvm.fmuladd.f32(float %332, float %338, float -5.000000e-01)
  %340 = getelementptr inbounds %struct.ImBuf, ptr %121, i64 0, i32 3
  %341 = load i32, ptr %340, align 4, !tbaa !126
  %342 = sitofp i32 %341 to float
  %343 = call float @llvm.fmuladd.f32(float %335, float %342, float -5.000000e-01)
  %344 = getelementptr inbounds %struct.ImBuf, ptr %121, i64 0, i32 9
  %345 = load ptr, ptr %344, align 8, !tbaa !127
  %346 = icmp eq ptr %345, null
  br i1 %346, label %374, label %347

347:                                              ; preds = %323
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #10
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %121, ptr noundef null, ptr noundef nonnull %16, float noundef %339, float noundef %343) #10
  %348 = getelementptr inbounds float, ptr %16, i64 3
  %349 = load float, ptr %348, align 4, !tbaa !34
  %350 = load float, ptr %16, align 16, !tbaa !34
  %351 = fmul float %349, %350
  store float %351, ptr %16, align 16, !tbaa !34
  %352 = getelementptr inbounds float, ptr %16, i64 1
  %353 = load float, ptr %352, align 4, !tbaa !34
  %354 = fmul float %349, %353
  store float %354, ptr %352, align 4, !tbaa !34
  %355 = getelementptr inbounds float, ptr %16, i64 2
  %356 = load float, ptr %355, align 8, !tbaa !34
  %357 = fmul float %349, %356
  store float %357, ptr %355, align 8, !tbaa !34
  br i1 %41, label %367, label %358

358:                                              ; preds = %347
  %359 = getelementptr inbounds %struct.PaletteColor, ptr %51, i64 0, i32 2
  %360 = call float @linearrgb_to_srgb(float noundef %351) #10
  store float %360, ptr %359, align 4, !tbaa !34
  %361 = load float, ptr %352, align 4, !tbaa !34
  %362 = call float @linearrgb_to_srgb(float noundef %361) #10
  %363 = getelementptr inbounds %struct.PaletteColor, ptr %51, i64 0, i32 2, i64 1
  store float %362, ptr %363, align 4, !tbaa !34
  %364 = load float, ptr %355, align 8, !tbaa !34
  %365 = call float @linearrgb_to_srgb(float noundef %364) #10
  %366 = getelementptr inbounds %struct.PaletteColor, ptr %51, i64 0, i32 2, i64 2
  store float %365, ptr %366, align 4, !tbaa !34
  br label %373

367:                                              ; preds = %347
  %368 = call float @linearrgb_to_srgb(float noundef %351) #10
  store float %368, ptr %16, align 16, !tbaa !34
  %369 = load float, ptr %352, align 4, !tbaa !34
  %370 = call float @linearrgb_to_srgb(float noundef %369) #10
  store float %370, ptr %352, align 4, !tbaa !34
  %371 = load float, ptr %355, align 8, !tbaa !34
  %372 = call float @linearrgb_to_srgb(float noundef %371) #10
  store float %372, ptr %355, align 8, !tbaa !34
  call void @BKE_brush_color_set(ptr noundef %20, ptr noundef %24, ptr noundef nonnull %16) #10
  br label %373

373:                                              ; preds = %367, %358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #10
  br label %379

374:                                              ; preds = %323
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #10
  call void @bilinear_interpolation_color_wrap(ptr noundef nonnull %121, ptr noundef nonnull %17, ptr noundef null, float noundef %339, float noundef %343) #10
  br i1 %41, label %377, label %375

375:                                              ; preds = %374
  %376 = getelementptr inbounds %struct.PaletteColor, ptr %51, i64 0, i32 2
  call void @rgb_uchar_to_float(ptr noundef nonnull %376, ptr noundef nonnull %17) #10
  br label %378

377:                                              ; preds = %374
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  call void @rgb_uchar_to_float(ptr noundef nonnull %18, ptr noundef nonnull %17) #10
  call void @BKE_brush_color_set(ptr noundef %20, ptr noundef %24, ptr noundef nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  br label %378

378:                                              ; preds = %377, %375
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #10
  br label %379

379:                                              ; preds = %378, %373
  call void @BKE_image_release_ibuf(ptr noundef nonnull %118, ptr noundef nonnull %121, ptr noundef null) #10
  %380 = getelementptr inbounds %struct.DerivedMesh, ptr %73, i64 0, i32 95
  %381 = load ptr, ptr %380, align 8, !tbaa !124
  call void %381(ptr noundef %73) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #10
  br label %398

382:                                              ; preds = %123, %120
  call void @BKE_image_release_ibuf(ptr noundef nonnull %118, ptr noundef %121, ptr noundef null) #10
  %383 = getelementptr inbounds %struct.DerivedMesh, ptr %73, i64 0, i32 95
  %384 = load ptr, ptr %383, align 8, !tbaa !124
  call void %384(ptr noundef %73) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #10
  br label %388

385:                                              ; preds = %117, %71, %88
  %386 = getelementptr inbounds %struct.DerivedMesh, ptr %73, i64 0, i32 95
  %387 = load ptr, ptr %386, align 8, !tbaa !124
  call void %387(ptr noundef %73) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #10
  br label %388

388:                                              ; preds = %50, %385, %63, %382
  call void @glReadBuffer(i32 noundef 1028) #10
  %389 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %390 = load i32, ptr %389, align 8, !tbaa !128
  %391 = add nsw i32 %390, %32
  %392 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %393 = load i32, ptr %392, align 8, !tbaa !129
  %394 = add nsw i32 %393, %40
  call void @glReadPixels(i32 noundef %391, i32 noundef %394, i32 noundef 1, i32 noundef 1, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %14) #10
  call void @glReadBuffer(i32 noundef 1029) #10
  br i1 %41, label %397, label %395

395:                                              ; preds = %388
  %396 = getelementptr inbounds %struct.PaletteColor, ptr %51, i64 0, i32 2
  call void @rgb_uchar_to_float(ptr noundef nonnull %396, ptr noundef nonnull %14) #10
  br label %398

397:                                              ; preds = %388
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  call void @rgb_uchar_to_float(ptr noundef nonnull %19, ptr noundef nonnull %14) #10
  call void @BKE_brush_color_set(ptr noundef %20, ptr noundef %24, ptr noundef nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  br label %398

398:                                              ; preds = %379, %395, %397
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_palette(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_palette_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @BKE_paint_palette_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_palette_color_add(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @DM_update_materials(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @bilinear_interpolation_color_wrap(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BKE_brush_color_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glReadBuffer(i32 noundef) local_unnamed_addr #2

declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BRUSH_OT_curve_preset(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !130
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_curve_preset_exec, ptr %4, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @brush_curve_preset_poll, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.29, ptr noundef nonnull @BRUSH_OT_curve_preset.prop_shape_items, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.11) #10
  tail call void @RNA_def_property_translation_context(ptr noundef %8, ptr noundef nonnull @.str.31) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_curve_preset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #10
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.29) #10
  tail call void @BKE_brush_curve_preset(ptr noundef nonnull %4, i32 noundef %10) #10
  %11 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  tail call void @BKE_paint_invalidate_cursor_overlay(ptr noundef %7, ptr noundef %12) #10
  br label %13

13:                                               ; preds = %6, %2
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @brush_curve_preset_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #10
  %3 = tail call ptr @BKE_paint_brush(ptr noundef %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Brush, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PAINT_OT_face_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !130
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paint_select_linked_exec, ptr %4, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !141
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paint_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  tail call void @paintface_select_linked(ptr noundef %0, ptr noundef %3, ptr noundef null, i8 noundef zeroext 1) #10
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %4) #10
  ret i32 4
}

declare i32 @facemask_paint_poll(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_face_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !130
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paint_select_linked_pick_invoke, ptr %4, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !141
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paint_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.38) #10
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #10
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @paintface_select_linked(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %10, i8 noundef zeroext %8) #10
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %11) #10
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_face_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !130
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @face_select_all_exec, ptr %4, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !141
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @face_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.61) #10
  tail call void @paintface_deselect_all_visible(ptr noundef %3, i32 noundef %6, i8 noundef zeroext 1) #10
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %7) #10
  ret i32 4
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_vert_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !130
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %2, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vert_select_all_exec, ptr %4, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vert_paint_poll, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !141
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vert_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.61) #10
  tail call void @paintvert_deselect_all_visible(ptr noundef %3, i32 noundef %6, i8 noundef zeroext 1) #10
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %7) #10
  ret i32 4
}

declare i32 @vert_paint_poll(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_vert_select_ungrouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !130
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.47, ptr %2, align 8, !tbaa !132
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vert_select_ungrouped_exec, ptr %4, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vert_paint_poll, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !141
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vert_select_ungrouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7, %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !149
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.62) #10
  br label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !135
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.49) #10
  %20 = trunc i32 %19 to i8
  tail call void @paintvert_select_ungrouped(ptr noundef %3, i8 noundef zeroext %20, i8 noundef zeroext 1) #10
  %21 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i32 [ 2, %13 ], [ 4, %16 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_face_select_hide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !130
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %2, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @face_select_hide_exec, ptr %4, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !141
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @face_select_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.55) #10
  %6 = trunc i32 %5 to i8
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  tail call void @paintface_hide(ptr noundef %7, i8 noundef zeroext %6) #10
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %8) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @PAINT_OT_face_select_reveal(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !130
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %2, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @face_select_reveal_exec, ptr %4, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !141
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @face_select_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  tail call void @paintface_reveal(ptr noundef %3) #10
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %4) #10
  ret i32 4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

declare i32 @view3d_sample_backbuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @imapaint_tri_weights(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #10
  %14 = load float, ptr %2, align 4, !tbaa !34
  store float %14, ptr %8, align 16, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %8, i64 1
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %8, i64 2
  store float %19, ptr %20, align 8, !tbaa !34
  %21 = getelementptr inbounds float, ptr %8, i64 3
  store float 1.000000e+00, ptr %21, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef %0, ptr noundef nonnull %8) #10
  %22 = load float, ptr %3, align 4, !tbaa !34
  store float %22, ptr %9, align 16, !tbaa !34
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %9, i64 1
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %3, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %9, i64 2
  store float %27, ptr %28, align 8, !tbaa !34
  %29 = getelementptr inbounds float, ptr %9, i64 3
  store float 1.000000e+00, ptr %29, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef %0, ptr noundef nonnull %9) #10
  %30 = load float, ptr %4, align 4, !tbaa !34
  store float %30, ptr %10, align 16, !tbaa !34
  %31 = getelementptr inbounds float, ptr %4, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %10, i64 1
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = getelementptr inbounds float, ptr %4, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds float, ptr %10, i64 2
  store float %35, ptr %36, align 8, !tbaa !34
  %37 = getelementptr inbounds float, ptr %10, i64 3
  store float 1.000000e+00, ptr %37, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef %0, ptr noundef nonnull %10) #10
  %38 = load float, ptr %5, align 4, !tbaa !34
  %39 = load i32, ptr %1, align 4, !tbaa !38
  %40 = sitofp i32 %39 to float
  %41 = fsub float %38, %40
  %42 = fmul float %41, 2.000000e+00
  %43 = getelementptr inbounds i32, ptr %1, i64 2
  %44 = load i32, ptr %43, align 4, !tbaa !38
  %45 = sitofp i32 %44 to float
  %46 = fdiv float %42, %45
  %47 = fadd float %46, -1.000000e+00
  store float %47, ptr %11, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %5, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = getelementptr inbounds i32, ptr %1, i64 1
  %51 = load i32, ptr %50, align 4, !tbaa !38
  %52 = sitofp i32 %51 to float
  %53 = fsub float %49, %52
  %54 = fmul float %53, 2.000000e+00
  %55 = getelementptr inbounds i32, ptr %1, i64 3
  %56 = load i32, ptr %55, align 4, !tbaa !38
  %57 = sitofp i32 %56 to float
  %58 = fdiv float %54, %57
  %59 = fadd float %58, -1.000000e+00
  %60 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float 1.000000e+00, ptr %61, align 4, !tbaa !34
  %62 = load float, ptr %8, align 16, !tbaa !34
  store float %62, ptr %12, align 16, !tbaa !34
  %63 = load float, ptr %9, align 16, !tbaa !34
  %64 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = load float, ptr %10, align 16, !tbaa !34
  %66 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2
  store float %65, ptr %66, align 8, !tbaa !34
  %67 = load float, ptr %17, align 4, !tbaa !34
  %68 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = load float, ptr %25, align 4, !tbaa !34
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1, i64 1
  store float %69, ptr %70, align 16, !tbaa !34
  %71 = load float, ptr %33, align 4, !tbaa !34
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2, i64 1
  store float %71, ptr %72, align 4, !tbaa !34
  %73 = load float, ptr %21, align 4, !tbaa !34
  %74 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float %73, ptr %74, align 8, !tbaa !34
  %75 = load float, ptr %29, align 4, !tbaa !34
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1, i64 2
  store float %75, ptr %76, align 4, !tbaa !34
  %77 = load float, ptr %37, align 4, !tbaa !34
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2, i64 2
  store float %77, ptr %78, align 16, !tbaa !34
  %79 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %13, ptr noundef nonnull %12) #10
  call void @mul_m3_v3(ptr noundef nonnull %13, ptr noundef nonnull %11) #10
  %80 = load float, ptr %11, align 4, !tbaa !34
  store float %80, ptr %6, align 4, !tbaa !34
  %81 = load float, ptr %60, align 4, !tbaa !34
  %82 = getelementptr inbounds float, ptr %6, i64 1
  store float %81, ptr %82, align 4, !tbaa !34
  %83 = load float, ptr %61, align 4, !tbaa !34
  %84 = getelementptr inbounds float, ptr %6, i64 2
  store float %83, ptr %84, align 4, !tbaa !34
  %85 = fadd float %80, %81
  %86 = fadd float %85, %83
  %87 = fcmp une float %86, 0.000000e+00
  br i1 %87, label %88, label %93

88:                                               ; preds = %7
  %89 = fdiv float 1.000000e+00, %86
  %90 = fmul float %80, %89
  store float %90, ptr %6, align 4, !tbaa !34
  %91 = fmul float %81, %89
  store float %91, ptr %82, align 4, !tbaa !34
  %92 = fmul float %83, %89
  store float %92, ptr %84, align 4, !tbaa !34
  br label %93

93:                                               ; preds = %88, %7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  ret void
}

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_brush_curve_preset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_paint_invalidate_cursor_overlay(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @paintface_select_linked(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @paintface_deselect_all_visible(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @paintvert_deselect_all_visible(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @paintvert_select_ungrouped(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @paintface_hide(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @paintface_reveal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !41, !42}
!44 = distinct !{!44, !41, !42}
!45 = !{!46, !39, i64 0}
!46 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!47 = !{!46, !39, i64 4}
!48 = !{!46, !39, i64 8}
!49 = !{!46, !39, i64 12}
!50 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !38, i64 12, i64 4, !38}
!51 = !{!52, !53, i64 8}
!52 = !{!"ViewContext", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !36, i64 56}
!53 = !{!"any pointer", !36, i64 0}
!54 = !{!52, !53, i64 40}
!55 = !{!52, !53, i64 24}
!56 = !{!57, !53, i64 88}
!57 = !{!"wmOperatorType", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !58, i64 112, !53, i64 128, !53, i64 136, !53, i64 144, !59, i64 152, !60, i64 184}
!58 = !{!"ListBase", !53, i64 0, !53, i64 8}
!59 = !{!"ExtensionRNA", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!60 = !{!"short", !36, i64 0}
!61 = !{!62, !60, i64 208}
!62 = !{!"ARegion", !53, i64 0, !53, i64 8, !63, i64 16, !46, i64 176, !46, i64 192, !60, i64 208, !60, i64 210, !60, i64 212, !60, i64 214, !60, i64 216, !60, i64 218, !35, i64 220, !60, i64 224, !60, i64 226, !60, i64 228, !60, i64 230, !60, i64 232, !60, i64 234, !60, i64 236, !60, i64 238, !53, i64 240, !58, i64 248, !58, i64 264, !58, i64 280, !58, i64 296, !58, i64 312, !58, i64 328, !58, i64 344, !53, i64 360, !53, i64 368, !53, i64 376}
!63 = !{!"View2D", !64, i64 0, !64, i64 16, !46, i64 32, !46, i64 48, !46, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !60, i64 104, !60, i64 106, !60, i64 108, !60, i64 110, !60, i64 112, !60, i64 114, !60, i64 116, !60, i64 118, !60, i64 120, !60, i64 122, !60, i64 124, !60, i64 126, !53, i64 128, !39, i64 136, !39, i64 140, !53, i64 144, !53, i64 152}
!64 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!65 = !{!62, !60, i64 210}
!66 = !{!67, !53, i64 168}
!67 = !{!"Scene", !68, i64 0, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !58, i64 152, !53, i64 168, !53, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !60, i64 244, !36, i64 246, !36, i64 247, !53, i64 248, !53, i64 256, !53, i64 264, !53, i64 272, !69, i64 280, !76, i64 4264, !58, i64 4296, !58, i64 4312, !53, i64 4328, !53, i64 4336, !53, i64 4344, !53, i64 4352, !53, i64 4360, !53, i64 4368, !60, i64 4376, !60, i64 4378, !39, i64 4380, !58, i64 4384, !77, i64 4400, !78, i64 4416, !81, i64 4600, !53, i64 4608, !82, i64 4616, !53, i64 4640, !83, i64 4648, !83, i64 4656, !71, i64 4664, !72, i64 4824, !84, i64 4888, !53, i64 4952}
!68 = !{!"ID", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !36, i64 32, !60, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !53, i64 112}
!69 = !{!"RenderData", !70, i64 0, !53, i64 248, !53, i64 256, !73, i64 264, !74, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !35, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !60, i64 432, !60, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !60, i64 456, !60, i64 458, !60, i64 460, !60, i64 462, !60, i64 464, !60, i64 466, !39, i64 468, !60, i64 472, !60, i64 474, !60, i64 476, !60, i64 478, !60, i64 480, !60, i64 482, !39, i64 484, !39, i64 488, !60, i64 492, !60, i64 494, !39, i64 496, !39, i64 500, !60, i64 504, !60, i64 506, !60, i64 508, !60, i64 510, !60, i64 512, !36, i64 514, !36, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !60, i64 528, !60, i64 530, !60, i64 532, !60, i64 534, !60, i64 536, !60, i64 538, !60, i64 540, !60, i64 542, !64, i64 544, !64, i64 560, !46, i64 576, !58, i64 592, !60, i64 608, !60, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !39, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !60, i64 648, !60, i64 650, !60, i64 652, !60, i64 654, !60, i64 656, !60, i64 658, !35, i64 660, !35, i64 664, !60, i64 668, !60, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !39, i64 1704, !60, i64 1708, !60, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !39, i64 2520, !60, i64 2524, !60, i64 2526, !35, i64 2528, !35, i64 2532, !60, i64 2536, !60, i64 2538, !35, i64 2540, !60, i64 2544, !60, i64 2546, !39, i64 2548, !60, i64 2552, !60, i64 2554, !60, i64 2556, !60, i64 2558, !35, i64 2560, !35, i64 2564, !53, i64 2568, !39, i64 2576, !35, i64 2580, !36, i64 2584, !75, i64 2616, !39, i64 3976, !39, i64 3980}
!70 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !60, i64 8, !60, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !71, i64 24, !72, i64 184}
!71 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !53, i64 144, !53, i64 152}
!72 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!73 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !60, i64 48, !60, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!74 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !35, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !53, i64 64}
!75 = !{!"BakeData", !70, i64 0, !36, i64 248, !60, i64 1272, !60, i64 1274, !60, i64 1276, !60, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!76 = !{!"AudioData", !39, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !39, i64 16, !60, i64 20, !60, i64 22, !35, i64 24, !35, i64 28}
!77 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!78 = !{!"GameData", !77, i64 0, !60, i64 16, !60, i64 18, !60, i64 20, !60, i64 22, !60, i64 24, !60, i64 26, !60, i64 28, !60, i64 30, !60, i64 32, !36, i64 34, !79, i64 40, !60, i64 64, !60, i64 66, !35, i64 68, !80, i64 72, !35, i64 128, !35, i64 132, !39, i64 136, !60, i64 140, !60, i64 142, !60, i64 144, !60, i64 146, !60, i64 148, !60, i64 150, !60, i64 152, !60, i64 154, !60, i64 156, !60, i64 158, !60, i64 160, !60, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!79 = !{!"GameDome", !60, i64 0, !60, i64 2, !60, i64 4, !60, i64 6, !35, i64 8, !35, i64 12, !53, i64 16}
!80 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !39, i64 40, !35, i64 44, !35, i64 48, !60, i64 52, !60, i64 54}
!81 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !60, i64 6}
!82 = !{!"PhysicsSettings", !36, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!83 = !{!"long", !36, i64 0}
!84 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!85 = !{!86, !53, i64 32}
!86 = !{!"Base", !53, i64 0, !53, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !60, i64 28, !60, i64 30, !53, i64 32}
!87 = !{!67, !53, i64 264}
!88 = !{!89, !39, i64 52}
!89 = !{!"ImagePaintSettings", !90, i64 0, !60, i64 40, !60, i64 42, !60, i64 44, !60, i64 46, !36, i64 48, !39, i64 52, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !36, i64 88, !35, i64 100}
!90 = !{!"Paint", !53, i64 0, !53, i64 8, !53, i64 16, !36, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!91 = !{!83, !83, i64 0}
!92 = !{!93, !53, i64 1120}
!93 = !{!"DerivedMesh", !94, i64 0, !94, i64 200, !94, i64 400, !94, i64 600, !94, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !53, i64 1032, !53, i64 1040, !39, i64 1048, !35, i64 1052, !39, i64 1056, !39, i64 1060, !53, i64 1064, !36, i64 1072, !53, i64 1080, !53, i64 1088, !53, i64 1096, !53, i64 1104, !53, i64 1112, !53, i64 1120, !53, i64 1128, !53, i64 1136, !53, i64 1144, !53, i64 1152, !53, i64 1160, !53, i64 1168, !53, i64 1176, !53, i64 1184, !53, i64 1192, !53, i64 1200, !53, i64 1208, !53, i64 1216, !53, i64 1224, !53, i64 1232, !53, i64 1240, !53, i64 1248, !53, i64 1256, !53, i64 1264, !53, i64 1272, !53, i64 1280, !53, i64 1288, !53, i64 1296, !53, i64 1304, !53, i64 1312, !53, i64 1320, !53, i64 1328, !53, i64 1336, !53, i64 1344, !53, i64 1352, !53, i64 1360, !53, i64 1368, !53, i64 1376, !53, i64 1384, !53, i64 1392, !53, i64 1400, !53, i64 1408, !53, i64 1416, !53, i64 1424, !53, i64 1432, !53, i64 1440, !53, i64 1448, !53, i64 1456, !53, i64 1464, !53, i64 1472, !53, i64 1480, !53, i64 1488, !53, i64 1496, !53, i64 1504, !53, i64 1512, !53, i64 1520, !53, i64 1528, !53, i64 1536, !53, i64 1544, !53, i64 1552, !53, i64 1560, !53, i64 1568, !53, i64 1576, !53, i64 1584, !53, i64 1592, !53, i64 1600, !53, i64 1608, !53, i64 1616, !53, i64 1624, !53, i64 1632, !53, i64 1640, !53, i64 1648, !53, i64 1656, !53, i64 1664, !53, i64 1672, !53, i64 1680}
!94 = !{!"CustomData", !53, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !53, i64 184, !53, i64 192}
!95 = !{!93, !53, i64 1336}
!96 = !{!93, !53, i64 1184}
!97 = !{!93, !53, i64 1064}
!98 = !{!99, !60, i64 16}
!99 = !{!"MFace", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !60, i64 16, !36, i64 18, !36, i64 19}
!100 = !{!53, !53, i64 0}
!101 = !{!102, !53, i64 920}
!102 = !{!"Material", !68, i64 0, !53, i64 120, !60, i64 128, !60, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !103, i64 224, !104, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !60, i64 356, !60, i64 358, !60, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !60, i64 372, !60, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !60, i64 392, !60, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !60, i64 412, !60, i64 414, !60, i64 416, !60, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !39, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !60, i64 544, !60, i64 546, !60, i64 548, !36, i64 550, !36, i64 551, !60, i64 552, !60, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !60, i64 588, !60, i64 590, !53, i64 592, !53, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !60, i64 612, !60, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !53, i64 768, !53, i64 776, !53, i64 784, !53, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !60, i64 820, !60, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !60, i64 876, !60, i64 878, !39, i64 880, !60, i64 884, !60, i64 886, !36, i64 888, !60, i64 904, !60, i64 906, !60, i64 908, !60, i64 910, !60, i64 912, !36, i64 914, !53, i64 920, !58, i64 928}
!103 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !60, i64 64, !60, i64 66, !60, i64 68, !60, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!104 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!105 = !{!102, !60, i64 908}
!106 = !{!107, !53, i64 40}
!107 = !{!"ImBuf", !53, i64 0, !53, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !53, i64 40, !53, i64 48, !36, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !53, i64 88, !53, i64 96, !53, i64 104, !35, i64 112, !36, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !53, i64 296, !53, i64 304, !39, i64 312, !36, i64 316, !36, i64 1340, !53, i64 2368, !39, i64 2376, !53, i64 2384, !39, i64 2392, !39, i64 2396, !53, i64 2400, !53, i64 2408, !53, i64 2416, !53, i64 2424, !39, i64 2432, !46, i64 2436, !108, i64 2456}
!108 = !{!"DDSData", !39, i64 0, !39, i64 4, !53, i64 8, !39, i64 16}
!109 = !{!110, !39, i64 116}
!110 = !{!"ToolSettings", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !60, i64 44, !60, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !35, i64 52, !60, i64 56, !36, i64 58, !36, i64 59, !89, i64 64, !111, i64 168, !35, i64 336, !35, i64 340, !60, i64 344, !60, i64 346, !36, i64 348, !36, i64 349, !60, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !60, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !53, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !60, i64 434, !60, i64 436, !60, i64 438, !60, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !60, i64 464, !60, i64 466, !39, i64 468, !35, i64 472, !35, i64 476, !112, i64 480, !113, i64 608}
!111 = !{!"ParticleEditSettings", !60, i64 0, !60, i64 2, !60, i64 4, !60, i64 6, !36, i64 8, !53, i64 120, !35, i64 128, !35, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !53, i64 152, !53, i64 160}
!112 = !{!"UnifiedPaintSettings", !39, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !39, i64 40, !36, i64 44, !35, i64 52, !39, i64 56, !39, i64 60, !36, i64 64, !36, i64 65, !35, i64 72, !36, i64 76, !39, i64 84, !35, i64 88, !36, i64 92, !36, i64 100, !39, i64 108, !53, i64 112, !35, i64 120, !39, i64 124}
!113 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!114 = !{!93, !53, i64 1352}
!115 = !{!93, !53, i64 1160}
!116 = !{!93, !53, i64 1144}
!117 = !{!99, !39, i64 0}
!118 = !{!99, !39, i64 4}
!119 = !{!99, !39, i64 8}
!120 = !{!99, !39, i64 12}
!121 = !{!122, !53, i64 8}
!122 = !{!"TexPaintSlot", !53, i64 0, !53, i64 8, !39, i64 16, !39, i64 20}
!123 = distinct !{!123, !41, !42}
!124 = !{!93, !53, i64 1680}
!125 = !{!107, !39, i64 16}
!126 = !{!107, !39, i64 20}
!127 = !{!107, !53, i64 48}
!128 = !{!62, !39, i64 176}
!129 = !{!62, !39, i64 184}
!130 = !{!57, !53, i64 0}
!131 = !{!57, !53, i64 24}
!132 = !{!57, !53, i64 8}
!133 = !{!57, !53, i64 32}
!134 = !{!57, !53, i64 72}
!135 = !{!136, !53, i64 112}
!136 = !{!"wmOperator", !53, i64 0, !53, i64 8, !36, i64 16, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !58, i64 128, !53, i64 144, !53, i64 152, !60, i64 160, !36, i64 162}
!137 = !{!138, !53, i64 144}
!138 = !{!"Brush", !68, i64 0, !139, i64 120, !53, i64 144, !140, i64 152, !140, i64 464, !53, i64 776, !53, i64 784, !53, i64 792, !53, i64 800, !53, i64 808, !36, i64 816, !35, i64 1840, !60, i64 1844, !60, i64 1846, !35, i64 1848, !39, i64 1852, !39, i64 1856, !39, i64 1860, !35, i64 1864, !39, i64 1868, !39, i64 1872, !39, i64 1876, !39, i64 1880, !35, i64 1884, !35, i64 1888, !36, i64 1892, !35, i64 1904, !36, i64 1908, !39, i64 1920, !35, i64 1924, !35, i64 1928, !39, i64 1932, !39, i64 1936, !39, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !35, i64 1948, !35, i64 1952, !35, i64 1956, !35, i64 1960, !35, i64 1964, !39, i64 1968, !39, i64 1972, !39, i64 1976, !35, i64 1980, !35, i64 1984, !39, i64 1988, !39, i64 1992, !35, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!139 = !{!"BrushClone", !53, i64 0, !36, i64 8, !35, i64 16, !35, i64 20}
!140 = !{!"MTex", !60, i64 0, !60, i64 2, !60, i64 4, !60, i64 6, !53, i64 8, !53, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !35, i64 116, !60, i64 120, !60, i64 122, !60, i64 124, !60, i64 126, !60, i64 128, !60, i64 130, !36, i64 132, !36, i64 133, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308}
!141 = !{!57, !60, i64 184}
!142 = !{!57, !53, i64 48}
!143 = !{!58, !53, i64 0}
!144 = !{!145, !53, i64 296}
!145 = !{!"Object", !68, i64 0, !53, i64 120, !53, i64 128, !60, i64 136, !60, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !53, i64 216, !53, i64 224, !53, i64 232, !53, i64 240, !53, i64 248, !53, i64 256, !53, i64 264, !53, i64 272, !53, i64 280, !53, i64 288, !53, i64 296, !53, i64 304, !146, i64 312, !53, i64 360, !58, i64 368, !58, i64 384, !58, i64 400, !58, i64 416, !39, i64 432, !39, i64 436, !53, i64 440, !53, i64 448, !39, i64 456, !39, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !39, i64 944, !60, i64 948, !60, i64 950, !60, i64 952, !60, i64 954, !60, i64 956, !60, i64 958, !60, i64 960, !60, i64 962, !60, i64 964, !36, i64 966, !36, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !60, i64 1036, !60, i64 1038, !60, i64 1040, !36, i64 1042, !36, i64 1043, !60, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !58, i64 1056, !58, i64 1072, !58, i64 1088, !58, i64 1104, !35, i64 1120, !60, i64 1124, !60, i64 1126, !36, i64 1128, !39, i64 1144, !39, i64 1148, !53, i64 1152, !36, i64 1160, !36, i64 1161, !60, i64 1162, !36, i64 1164, !58, i64 1176, !58, i64 1192, !58, i64 1208, !58, i64 1224, !53, i64 1240, !53, i64 1248, !53, i64 1256, !36, i64 1264, !36, i64 1265, !60, i64 1266, !35, i64 1268, !53, i64 1272, !53, i64 1280, !53, i64 1288, !53, i64 1296, !83, i64 1304, !83, i64 1312, !39, i64 1320, !39, i64 1324, !58, i64 1328, !58, i64 1344, !53, i64 1360, !53, i64 1368, !53, i64 1376, !36, i64 1384, !53, i64 1392, !58, i64 1400, !53, i64 1416}
!146 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !60, i64 16, !60, i64 18, !60, i64 20, !60, i64 22, !60, i64 24, !60, i64 26, !60, i64 28, !60, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!147 = !{!148, !53, i64 248}
!148 = !{!"Mesh", !68, i64 0, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !53, i64 184, !53, i64 192, !53, i64 200, !53, i64 208, !53, i64 216, !53, i64 224, !53, i64 232, !53, i64 240, !53, i64 248, !53, i64 256, !53, i64 264, !53, i64 272, !94, i64 280, !94, i64 480, !94, i64 680, !94, i64 880, !94, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !39, i64 1344, !60, i64 1348, !60, i64 1350, !35, i64 1352, !39, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !60, i64 1366, !53, i64 1368}
!149 = !{!136, !53, i64 120}
