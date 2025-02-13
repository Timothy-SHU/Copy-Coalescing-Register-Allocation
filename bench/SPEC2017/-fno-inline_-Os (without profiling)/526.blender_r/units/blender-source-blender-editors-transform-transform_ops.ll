; ModuleID = 'blender/source/blender/editors/transform/transform_ops.c'
source_filename = "blender/source/blender/editors/transform/transform_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.TransformModeItem = type { ptr, i32, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.TransInfo = type { i32, i32, i32, i16, i32, float, float, ptr, ptr, i32, ptr, ptr, ptr, %struct.TransCon, %struct.TransSnap, %struct.NumInput, %struct.MouseInput, i32, float, [20 x i8], [3 x float], [2 x float], [2 x i32], i16, i16, [3 x float], i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i16, i16, i8, i8, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16, i16, [4 x float], [4 x float], [3 x float], [3 x float], i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], float, ptr, [3 x [3 x float]], ptr, ptr, ptr, ptr }
%struct.TransCon = type { i16, [50 x i8], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x float], [2 x i32], i32, ptr, ptr, ptr, ptr }
%struct.TransSnap = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [3 x float], [3 x float], [3 x float], [3 x float], i8, %struct.ListBase, ptr, float, double, ptr, ptr, ptr, ptr }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.MouseInput = type { ptr, ptr, [2 x i32], i8, [2 x i32], [2 x float], float, ptr }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Init\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DUMMY\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Dummy\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"TRANSLATION\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Translation\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ROTATION\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"RESIZE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Resize\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"SKIN_RESIZE\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Skin Resize\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"TOSPHERE\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Tosphere\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"SHEAR\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Shear\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"BEND\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Bend\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"SHRINKFATTEN\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Shrinkfatten\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"TILT\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Tilt\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"TRACKBALL\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Trackball\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"PUSHPULL\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Pushpull\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"CREASE\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Crease\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"MIRROR\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Mirror\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"BONE_SIZE\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Bonesize\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"BONE_ENVELOPE\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Bone_Envelope\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"CURVE_SHRINKFATTEN\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Curve_Shrinkfatten\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"MASK_SHRINKFATTEN\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Mask_Shrinkfatten\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"BONE_ROLL\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"Bone_Roll\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"TIME_TRANSLATE\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"Time_Translate\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"TIME_SLIDE\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Time_Slide\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"TIME_SCALE\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"Time_Scale\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"TIME_EXTEND\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Time_Extend\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"BAKE_TIME\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"Bake_Time\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"BWEIGHT\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"Bweight\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"ALIGN\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"EDGESLIDE\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Edge Slide\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"SEQSLIDE\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Sequence Slide\00", align 1
@transform_mode_types = dso_local global [30 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17, ptr @.str.37, i32 0, ptr @.str.38, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19, ptr @.str.41, i32 0, ptr @.str.42, ptr @.str.2 }, %struct.EnumPropertyItem { i32 20, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.2 }, %struct.EnumPropertyItem { i32 22, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.2 }, %struct.EnumPropertyItem { i32 24, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.2 }, %struct.EnumPropertyItem { i32 26, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.2 }, %struct.EnumPropertyItem { i32 27, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.2 }, %struct.EnumPropertyItem { i32 28, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.2 }, %struct.EnumPropertyItem { i32 30, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.59 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"The axis around which the transformation occurs\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"constraint_axis\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"Constraint Axis\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"constraint_orientation\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"Transformation orientation\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"Mirror Editing\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"proportional\00", align 1
@proportional_editing_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.70 = private unnamed_addr constant [21 x i8] c"Proportional Editing\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"proportional_edit_falloff\00", align 1
@proportional_falloff_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.72 = private unnamed_addr constant [29 x i8] c"Proportional Editing Falloff\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"Falloff type for proportional editing mode\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"proportional_size\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"Proportional Size\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"snap\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"Use Snapping Options\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"snap_target\00", align 1
@snap_target_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.80 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"snap_point\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"snap_align\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"Align with Point Normal\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"snap_normal\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"texture_space\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"Edit Texture Space\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"Edit Object data texture space\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"remove_on_cancel\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"Remove on Cancel\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"Remove elements on cancel\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"correct_uv\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"Correct UVs\00", align 1
@.str.95 = private unnamed_addr constant [41 x i8] c"Correct UV coordinates when transforming\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"release_confirm\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"Confirm on Release\00", align 1
@.str.98 = private unnamed_addr constant [47 x i8] c"Always confirm operation when releasing button\00", align 1
@transform_modes = internal unnamed_addr constant [18 x %struct.TransformModeItem] [%struct.TransformModeItem { ptr @OP_TRANSLATION, i32 1, ptr @TRANSFORM_OT_translate }, %struct.TransformModeItem { ptr @OP_ROTATION, i32 2, ptr @TRANSFORM_OT_rotate }, %struct.TransformModeItem { ptr @OP_TOSPHERE, i32 5, ptr @TRANSFORM_OT_tosphere }, %struct.TransformModeItem { ptr @OP_RESIZE, i32 3, ptr @TRANSFORM_OT_resize }, %struct.TransformModeItem { ptr @OP_SKIN_RESIZE, i32 4, ptr @TRANSFORM_OT_skin_resize }, %struct.TransformModeItem { ptr @OP_SHEAR, i32 6, ptr @TRANSFORM_OT_shear }, %struct.TransformModeItem { ptr @OP_BEND, i32 7, ptr @TRANSFORM_OT_bend }, %struct.TransformModeItem { ptr @OP_SHRINK_FATTEN, i32 8, ptr @TRANSFORM_OT_shrink_fatten }, %struct.TransformModeItem { ptr @OP_PUSH_PULL, i32 11, ptr @TRANSFORM_OT_push_pull }, %struct.TransformModeItem { ptr @OP_TILT, i32 9, ptr @TRANSFORM_OT_tilt }, %struct.TransformModeItem { ptr @OP_TRACKBALL, i32 10, ptr @TRANSFORM_OT_trackball }, %struct.TransformModeItem { ptr @OP_MIRROR, i32 13, ptr @TRANSFORM_OT_mirror }, %struct.TransformModeItem { ptr @OP_EDGE_SLIDE, i32 28, ptr @TRANSFORM_OT_edge_slide }, %struct.TransformModeItem { ptr @OP_VERT_SLIDE, i32 29, ptr @TRANSFORM_OT_vert_slide }, %struct.TransformModeItem { ptr @OP_EDGE_CREASE, i32 12, ptr @TRANSFORM_OT_edge_crease }, %struct.TransformModeItem { ptr @OP_EDGE_BWEIGHT, i32 26, ptr @TRANSFORM_OT_edge_bevelweight }, %struct.TransformModeItem { ptr @OP_SEQ_SLIDE, i32 30, ptr @TRANSFORM_OT_seq_slide }, %struct.TransformModeItem zeroinitializer], align 16
@.str.99 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_transform\00", align 1
@OP_TRANSLATION = internal global [23 x i8] c"TRANSFORM_OT_translate\00", align 16
@OP_ROTATION = internal global [20 x i8] c"TRANSFORM_OT_rotate\00", align 16
@OP_RESIZE = internal global [20 x i8] c"TRANSFORM_OT_resize\00", align 16
@OP_BEND = internal global [18 x i8] c"TRANSFORM_OT_bend\00", align 16
@OP_TOSPHERE = internal global [22 x i8] c"TRANSFORM_OT_tosphere\00", align 16
@OP_SHEAR = internal global [19 x i8] c"TRANSFORM_OT_shear\00", align 16
@.str.100 = private unnamed_addr constant [32 x i8] c"TRANSFORM_OT_select_orientation\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"TRANSFORM_OT_create_orientation\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@OP_MIRROR = internal global [20 x i8] c"TRANSFORM_OT_mirror\00", align 16
@.str.103 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"tool_settings.use_snap\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"WM_OT_context_menu_enum\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"tool_settings.snap_element\00", align 1
@OP_SKIN_RESIZE = internal global [25 x i8] c"TRANSFORM_OT_skin_resize\00", align 16
@.str.108 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"NODE_OT_translate_attach\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"NODE_OT_move_detach_links\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"NODE_OT_move_detach_links_release\00", align 1
@.str.113 = private unnamed_addr constant [32 x i8] c"NODE_OT_detach_translate_attach\00", align 1
@OP_SEQ_SLIDE = internal global [23 x i8] c"TRANSFORM_OT_seq_slide\00", align 16
@.str.114 = private unnamed_addr constant [20 x i8] c"TRANSFORM_OT_mirror\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"tool_settings.snap_uv_element\00", align 1
@OP_SHRINK_FATTEN = internal global [27 x i8] c"TRANSFORM_OT_shrink_fatten\00", align 16
@OP_PUSH_PULL = internal global [23 x i8] c"TRANSFORM_OT_push_pull\00", align 16
@OP_TILT = internal global [18 x i8] c"TRANSFORM_OT_tilt\00", align 16
@OP_TRACKBALL = internal global [23 x i8] c"TRANSFORM_OT_trackball\00", align 16
@OP_EDGE_SLIDE = internal global [24 x i8] c"TRANSFORM_OT_edge_slide\00", align 16
@OP_VERT_SLIDE = internal global [24 x i8] c"TRANSFORM_OT_vert_slide\00", align 16
@OP_EDGE_CREASE = internal global [25 x i8] c"TRANSFORM_OT_edge_crease\00", align 16
@OP_EDGE_BWEIGHT = internal global [30 x i8] c"TRANSFORM_OT_edge_bevelweight\00", align 16
@.str.116 = private unnamed_addr constant [10 x i8] c"Translate\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"Translate (move) selected items\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.120 = private unnamed_addr constant [16 x i8] c"TransInfo data2\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.121 = private unnamed_addr constant [22 x i8] c"mesh_select_mode_init\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.123 = private unnamed_addr constant [22 x i8] c"Rotate selected items\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"To Sphere\00", align 1
@.str.126 = private unnamed_addr constant [71 x i8] c"Move selected vertices outward in a spherical shape around mesh center\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.128 = private unnamed_addr constant [30 x i8] c"Scale (resize) selected items\00", align 1
@VecOne = internal constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str.129 = private unnamed_addr constant [36 x i8] c"Scale selected vertices' skin radii\00", align 1
@.str.130 = private unnamed_addr constant [54 x i8] c"Shear selected items along the horizontal screen axis\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.132 = private unnamed_addr constant [56 x i8] c"Bend selected items between the 3D cursor and the mouse\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"Shrink/Fatten\00", align 1
@.str.134 = private unnamed_addr constant [46 x i8] c"Shrink/fatten selected vertices along normals\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"Push/Pull\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"Push/Pull selected items\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.138 = private unnamed_addr constant [43 x i8] c"Tilt selected control vertices of 3D curve\00", align 1
@.str.139 = private unnamed_addr constant [43 x i8] c"Trackball style rotation of selected items\00", align 1
@.str.140 = private unnamed_addr constant [49 x i8] c"Mirror selected vertices around one or more axes\00", align 1
@.str.141 = private unnamed_addr constant [32 x i8] c"Slide an edge loop along a mesh\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"Vertex Slide\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"Slide a vertex along a mesh\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"Edge Crease\00", align 1
@.str.145 = private unnamed_addr constant [27 x i8] c"Change the crease of edges\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"Edge Bevel Weight\00", align 1
@.str.147 = private unnamed_addr constant [33 x i8] c"Change the bevel weight of edges\00", align 1
@.str.148 = private unnamed_addr constant [31 x i8] c"Slide a sequence strip in time\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.150 = private unnamed_addr constant [38 x i8] c"Transform selected items by mode type\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"Values\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"Select Orientation\00", align 1
@.str.154 = private unnamed_addr constant [34 x i8] c"Select transformation orientation\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"Create Orientation\00", align 1
@.str.157 = private unnamed_addr constant [49 x i8] c"Create transformation orientation from selection\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.160 = private unnamed_addr constant [35 x i8] c"Name of the new custom orientation\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"use_view\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"Use View\00", align 1
@.str.163 = private unnamed_addr constant [80 x i8] c"Use the current view instead of the active object to create the new orientation\00", align 1
@.str.164 = private unnamed_addr constant [19 x i8] c"Use after creation\00", align 1
@.str.165 = private unnamed_addr constant [38 x i8] c"Select orientation after its creation\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"Overwrite previous\00", align 1
@.str.168 = private unnamed_addr constant [56 x i8] c"Overwrite previously created orientation with same name\00", align 1
@.str.169 = private unnamed_addr constant [68 x i8] c"Create Orientation's 'use' parameter only valid in a 3DView context\00", align 1
@.str.170 = private unnamed_addr constant [19 x i8] c"Delete Orientation\00", align 1
@.str.171 = private unnamed_addr constant [34 x i8] c"Delete transformation orientation\00", align 1
@.str.172 = private unnamed_addr constant [32 x i8] c"TRANSFORM_OT_delete_orientation\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Transform_Properties(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call ptr @RNA_def_property(ptr noundef %7, ptr noundef nonnull @.str.59, i32 noundef 2, i32 noundef 22) #4
  tail call void @RNA_def_property_array(ptr noundef %8, i32 noundef 3) #4
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 524288) #4
  tail call void @RNA_def_property_ui_text(ptr noundef %8, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #4
  br label %9

9:                                                ; preds = %5, %2
  %10 = and i32 %1, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call ptr @RNA_def_boolean_vector(ptr noundef %14, ptr noundef nonnull @.str.62, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2) #4
  %16 = load ptr, ptr %13, align 8, !tbaa !5
  %17 = tail call ptr @RNA_def_property(ptr noundef %16, ptr noundef nonnull @.str.64, i32 noundef 4, i32 noundef 0) #4
  tail call void @RNA_def_property_ui_text(ptr noundef %17, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #4
  tail call void @RNA_def_enum_funcs(ptr noundef %17, ptr noundef nonnull @rna_TransformOrientation_itemf) #4
  br label %18

18:                                               ; preds = %12, %9
  %19 = and i32 %1, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = tail call ptr @RNA_def_boolean(ptr noundef %23, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2) #4
  %25 = and i32 %1, 513
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void @RNA_def_property_flag(ptr noundef %24, i32 noundef 524288) #4
  br label %28

28:                                               ; preds = %21, %27, %18
  %29 = and i32 %1, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = tail call ptr @RNA_def_enum(ptr noundef %33, ptr noundef nonnull @.str.69, ptr noundef nonnull @proportional_editing_items, i32 noundef 0, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2) #4
  %35 = load ptr, ptr %32, align 8, !tbaa !5
  %36 = tail call ptr @RNA_def_enum(ptr noundef %35, ptr noundef nonnull @.str.71, ptr noundef nonnull @proportional_falloff_items, i32 noundef 0, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73) #4
  tail call void @RNA_def_property_translation_context(ptr noundef %36, ptr noundef nonnull @.str.74) #4
  %37 = load ptr, ptr %32, align 8, !tbaa !5
  %38 = tail call ptr @RNA_def_float(ptr noundef %37, ptr noundef nonnull @.str.75, float noundef 1.000000e+00, float noundef 0x3EE4F8B580000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.2, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #4
  br label %39

39:                                               ; preds = %31, %28
  %40 = and i32 %1, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = tail call ptr @RNA_def_boolean(ptr noundef %44, ptr noundef nonnull @.str.77, i32 noundef 0, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2) #4
  tail call void @RNA_def_property_flag(ptr noundef %45, i32 noundef 524288) #4
  %46 = and i32 %1, 24
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %43, align 8, !tbaa !5
  %50 = tail call ptr @RNA_def_enum(ptr noundef %49, ptr noundef nonnull @.str.79, ptr noundef nonnull @snap_target_items, i32 noundef 0, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.2) #4
  tail call void @RNA_def_property_flag(ptr noundef %50, i32 noundef 524288) #4
  %51 = load ptr, ptr %43, align 8, !tbaa !5
  %52 = tail call ptr @RNA_def_float_vector(ptr noundef %51, ptr noundef nonnull @.str.81, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @RNA_def_property_flag(ptr noundef %52, i32 noundef 524288) #4
  %53 = and i32 %1, 56
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr %43, align 8, !tbaa !5
  %57 = tail call ptr @RNA_def_boolean(ptr noundef %56, ptr noundef nonnull @.str.83, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.2) #4
  tail call void @RNA_def_property_flag(ptr noundef %57, i32 noundef 524288) #4
  %58 = load ptr, ptr %43, align 8, !tbaa !5
  %59 = tail call ptr @RNA_def_float_vector(ptr noundef %58, ptr noundef nonnull @.str.85, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @RNA_def_property_flag(ptr noundef %59, i32 noundef 524288) #4
  br label %60

60:                                               ; preds = %42, %55, %48, %39
  %61 = and i32 %1, 2176
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = tail call ptr @RNA_def_boolean(ptr noundef %65, ptr noundef nonnull @.str.87, i32 noundef 0, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89) #4
  %67 = load ptr, ptr %64, align 8, !tbaa !5
  %68 = tail call ptr @RNA_def_boolean(ptr noundef %67, ptr noundef nonnull @.str.90, i32 noundef 0, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92) #4
  tail call void @RNA_def_property_flag(ptr noundef %68, i32 noundef 524288) #4
  br label %69

69:                                               ; preds = %63, %60
  %70 = and i32 %1, 256
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = tail call ptr @RNA_def_boolean(ptr noundef %74, ptr noundef nonnull @.str.93, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #4
  br label %76

76:                                               ; preds = %72, %69
  %77 = and i32 %1, 1024
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = tail call ptr @RNA_def_boolean(ptr noundef %81, ptr noundef nonnull @.str.96, i32 noundef 0, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #4
  br label %83

83:                                               ; preds = %79, %76
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rna_TransformOrientation_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @transform_operatortypes() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi ptr [ @transform_modes, %0 ], [ %5, %1 ]
  %3 = getelementptr inbounds %struct.TransformModeItem, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  tail call void @WM_operatortype_append(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.TransformModeItem, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %1, !llvm.loop !17

8:                                                ; preds = %1
  tail call void @WM_operatortype_append(ptr noundef nonnull @TRANSFORM_OT_transform) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @TRANSFORM_OT_select_orientation) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @TRANSFORM_OT_create_orientation) #4
  tail call void @WM_operatortype_append(ptr noundef nonnull @TRANSFORM_OT_delete_orientation) #4
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_transform(ptr nocapture noundef %0) #0 {
  store ptr @.str.149, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.150, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.99, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.108, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.2) #4
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #4
  %13 = load ptr, ptr %10, align 8, !tbaa !5
  %14 = tail call ptr @RNA_def_float_vector(ptr noundef %13, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 127) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_select_orientation(ptr nocapture noundef %0) #0 {
  store ptr @.str.153, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.154, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.100, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_orientation_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_orientation_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %7, align 8, !tbaa !27
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call ptr @RNA_def_property(ptr noundef %9, ptr noundef nonnull @.str.155, i32 noundef 4, i32 noundef 0) #4
  tail call void @RNA_def_property_ui_text(ptr noundef %10, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #4
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rna_TransformOrientation_itemf) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_create_orientation(ptr nocapture noundef %0) #0 {
  store ptr @.str.156, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.157, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.101, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @create_orientation_exec, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.158, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160) #4
  %10 = load ptr, ptr %7, align 8, !tbaa !5
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.161, i32 noundef 0, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163) #4
  %12 = load ptr, ptr %7, align 8, !tbaa !5
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165) #4
  %14 = load ptr, ptr %7, align 8, !tbaa !5
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.166, i32 noundef 0, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @TRANSFORM_OT_delete_orientation(ptr nocapture noundef writeonly %0) #3 {
  store ptr @.str.170, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.171, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.172, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @delete_orientation_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_orientation_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @delete_orientation_poll, ptr %7, align 8, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @transform_keymap_for_space(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @transform_modal_keymap(ptr noundef %0) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %10, %6 ], [ @OP_TRANSLATION, %3 ]
  %8 = phi ptr [ %9, %6 ], [ @transform_modes, %3 ]
  tail call void @WM_modalkeymap_assign(ptr noundef nonnull %4, ptr noundef nonnull %7) #4
  %9 = getelementptr inbounds %struct.TransformModeItem, ptr %8, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !28

12:                                               ; preds = %6
  tail call void @WM_modalkeymap_assign(ptr noundef nonnull %4, ptr noundef nonnull @.str.99) #4
  br label %13

13:                                               ; preds = %12, %3
  switch i32 %2, label %120 [
    i32 1, label %14
    i32 12, label %40
    i32 2, label %56
    i32 13, label %64
    i32 16, label %77
    i32 8, label %96
    i32 6, label %102
    i32 20, label %115
  ]

14:                                               ; preds = %13
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TRANSLATION, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %16 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TRANSLATION, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_ROTATION, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_RESIZE, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_BEND, i32 noundef 119, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TOSPHERE, i32 noundef 115, i32 noundef 1, i32 noundef 5, i32 noundef 0) #4
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_SHEAR, i32 noundef 115, i32 noundef 1, i32 noundef 7, i32 noundef 0) #4
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.100, i32 noundef 221, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.101, i32 noundef 221, i32 noundef 1, i32 noundef 6, i32 noundef 0) #4
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %23, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  tail call void @RNA_boolean_set(ptr noundef %25, ptr noundef nonnull @.str.102, i32 noundef 1) #4
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_MIRROR, i32 noundef 109, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.103, i32 noundef 219, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !29
  tail call void @RNA_string_set(ptr noundef %29, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105) #4
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.106, i32 noundef 219, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %30, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !29
  tail call void @RNA_string_set(ptr noundef %32, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.107) #4
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TRANSLATION, i32 noundef 116, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !29
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.87, i32 noundef 1) #4
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_RESIZE, i32 noundef 116, i32 noundef 1, i32 noundef 5, i32 noundef 0) #4
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @RNA_boolean_set(ptr noundef %38, ptr noundef nonnull @.str.87, i32 noundef 1) #4
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_SKIN_RESIZE, i32 noundef 97, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  br label %120

40:                                               ; preds = %13
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %42 = getelementptr inbounds %struct.wmKeyMapItem, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %43, ptr noundef nonnull @.str.108, i32 noundef 19) #4
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %45 = getelementptr inbounds %struct.wmKeyMapItem, ptr %44, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %46, ptr noundef nonnull @.str.108, i32 noundef 19) #4
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %48 = getelementptr inbounds %struct.wmKeyMapItem, ptr %47, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %49, ptr noundef nonnull @.str.108, i32 noundef 22) #4
  %50 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 17
  %52 = load ptr, ptr %51, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %52, ptr noundef nonnull @.str.108, i32 noundef 21) #4
  %53 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 116, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %54 = getelementptr inbounds %struct.wmKeyMapItem, ptr %53, i64 0, i32 17
  %55 = load ptr, ptr %54, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %55, ptr noundef nonnull @.str.108, i32 noundef 20) #4
  br label %120

56:                                               ; preds = %13
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TRANSLATION, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TRANSLATION, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %60 = getelementptr inbounds %struct.wmKeyMapItem, ptr %59, i64 0, i32 17
  %61 = load ptr, ptr %60, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %61, ptr noundef nonnull @.str.108, i32 noundef 22) #4
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_ROTATION, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_RESIZE, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  br label %120

64:                                               ; preds = %13
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %66 = getelementptr inbounds %struct.wmKeyMapItem, ptr %65, i64 0, i32 17
  %67 = load ptr, ptr %66, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %67, ptr noundef nonnull @.str.108, i32 noundef 1) #4
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %69 = getelementptr inbounds %struct.wmKeyMapItem, ptr %68, i64 0, i32 17
  %70 = load ptr, ptr %69, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %70, ptr noundef nonnull @.str.108, i32 noundef 1) #4
  %71 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %72 = getelementptr inbounds %struct.wmKeyMapItem, ptr %71, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %73, ptr noundef nonnull @.str.108, i32 noundef 22) #4
  %74 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %75 = getelementptr inbounds %struct.wmKeyMapItem, ptr %74, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %76, ptr noundef nonnull @.str.108, i32 noundef 21) #4
  br label %120

77:                                               ; preds = %13
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.109, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %79 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.109, i32 noundef 20486, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %80 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.109, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %82 = getelementptr inbounds %struct.wmKeyMapItem, ptr %81, i64 0, i32 17
  %83 = load ptr, ptr %82, align 8, !tbaa !29
  tail call void @RNA_boolean_set(ptr noundef %83, ptr noundef nonnull @.str.96, i32 noundef 1) #4
  %84 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef 20486, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %85 = getelementptr inbounds %struct.wmKeyMapItem, ptr %84, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !29
  tail call void @RNA_boolean_set(ptr noundef %86, ptr noundef nonnull @.str.96, i32 noundef 1) #4
  %87 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %88 = getelementptr inbounds %struct.wmKeyMapItem, ptr %87, i64 0, i32 17
  %89 = load ptr, ptr %88, align 8, !tbaa !29
  tail call void @RNA_boolean_set(ptr noundef %89, ptr noundef nonnull @.str.96, i32 noundef 1) #4
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_ROTATION, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %91 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_RESIZE, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %92 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.111, i32 noundef 100, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.112, i32 noundef 20486, i32 noundef -1, i32 noundef 4, i32 noundef 0) #4
  %94 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.111, i32 noundef 20487, i32 noundef -1, i32 noundef 4, i32 noundef 0) #4
  %95 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef 102, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  br label %120

96:                                               ; preds = %13
  %97 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_SEQ_SLIDE, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %98 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_SEQ_SLIDE, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %99 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %100 = getelementptr inbounds %struct.wmKeyMapItem, ptr %99, i64 0, i32 17
  %101 = load ptr, ptr %100, align 8, !tbaa !29
  tail call void @RNA_enum_set(ptr noundef %101, ptr noundef nonnull @.str.108, i32 noundef 22) #4
  br label %120

102:                                              ; preds = %13
  %103 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TRANSLATION, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %104 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TRANSLATION, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %105 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_ROTATION, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %106 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_RESIZE, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %107 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_SHEAR, i32 noundef 115, i32 noundef 1, i32 noundef 7, i32 noundef 0) #4
  %108 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.114, i32 noundef 109, i32 noundef 1, i32 noundef 2, i32 noundef 0) #4
  %109 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.103, i32 noundef 219, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  %110 = getelementptr inbounds %struct.wmKeyMapItem, ptr %109, i64 0, i32 17
  %111 = load ptr, ptr %110, align 8, !tbaa !29
  tail call void @RNA_string_set(ptr noundef %111, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105) #4
  %112 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @.str.106, i32 noundef 219, i32 noundef 1, i32 noundef 3, i32 noundef 0) #4
  %113 = getelementptr inbounds %struct.wmKeyMapItem, ptr %112, i64 0, i32 17
  %114 = load ptr, ptr %113, align 8, !tbaa !29
  tail call void @RNA_string_set(ptr noundef %114, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.115) #4
  br label %120

115:                                              ; preds = %13
  %116 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TRANSLATION, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %117 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_TRANSLATION, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #4
  %118 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_RESIZE, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %119 = tail call ptr @WM_keymap_add_item(ptr noundef %1, ptr noundef nonnull @OP_ROTATION, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  br label %120

120:                                              ; preds = %13, %115, %102, %96, %77, %64, %56, %40, %14
  ret void
}

; Function Attrs: optsize
declare ptr @transform_modal_keymap(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_translate(ptr nocapture noundef %0) #0 {
  store ptr @.str.116, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.117, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_TRANSLATION, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %11, ptr noundef nonnull @.str.118, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 251) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_rotate(ptr nocapture noundef %0) #0 {
  store ptr @.str.122, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.123, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_ROTATION, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.2, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #4
  tail call void @RNA_def_property_subtype(ptr noundef %12, i32 noundef 327696) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 95) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_tosphere(ptr nocapture noundef %0) #0 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.126, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_TOSPHERE, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_factor(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.2, float noundef 0.000000e+00, float noundef 1.000000e+00) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_resize(ptr nocapture noundef %0) #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.128, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_RESIZE, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.118, i32 noundef 3, ptr noundef nonnull @VecOne, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 219) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_skin_resize(ptr nocapture noundef %0) #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.129, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_SKIN_RESIZE, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @skin_resize_poll, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.118, i32 noundef 3, ptr noundef nonnull @VecOne, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 2267) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_shear(ptr nocapture noundef %0) #0 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.130, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_SHEAR, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_bend(ptr nocapture noundef %0) #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.132, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_BEND, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %7, align 8, !tbaa !26
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %8, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call ptr @RNA_def_float_rotation(ptr noundef %10, ptr noundef nonnull @.str.118, i32 noundef 1, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.2, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_shrink_fatten(ptr nocapture noundef %0) #0 {
  store ptr @.str.133, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.134, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_SHRINK_FATTEN, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_push_pull(ptr nocapture noundef %0) #0 {
  store ptr @.str.135, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.136, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_PUSH_PULL, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_tilt(ptr nocapture noundef %0) #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.138, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_TILT, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve_3d, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.2, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #4
  tail call void @RNA_def_property_subtype(ptr noundef %12, i32 noundef 327696) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_trackball(ptr nocapture noundef %0) #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.139, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_TRACKBALL, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.118, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @RNA_def_property_subtype(ptr noundef %12, i32 noundef 327696) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_mirror(ptr nocapture noundef %0) #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.140, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_MIRROR, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %9, align 8, !tbaa !27
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 66) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_edge_slide(ptr nocapture noundef %0) #0 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.141, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_EDGE_SLIDE, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_factor(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.2, float noundef -1.000000e+00, float noundef 1.000000e+00) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 265) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_vert_slide(ptr nocapture noundef %0) #0 {
  store ptr @.str.142, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.143, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_VERT_SLIDE, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_factor(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef -1.000000e+01, float noundef 1.000000e+01, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.2, float noundef -1.000000e+00, float noundef 1.000000e+00) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 9) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_edge_crease(ptr nocapture noundef %0) #0 {
  store ptr @.str.144, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.145, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_EDGE_CREASE, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_factor(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.2, float noundef -1.000000e+00, float noundef 1.000000e+00) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 8) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_edge_bevelweight(ptr nocapture noundef %0) #0 {
  store ptr @.str.146, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.147, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_EDGE_BWEIGHT, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edge_bevelweight_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edge_bevelweight_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_factor(ptr noundef %11, ptr noundef nonnull @.str.118, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.2, float noundef -1.000000e+00, float noundef 1.000000e+00) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 8) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @TRANSFORM_OT_seq_slide(ptr nocapture noundef %0) #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.148, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @OP_SEQ_SLIDE, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @transform_invoke, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @transform_exec, ptr %6, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @transform_modal, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @transform_cancel, ptr %8, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %11, ptr noundef nonnull @.str.118, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.2, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #4
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 8) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @transform_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @transformops_data(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5, !range !31
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !32
  br label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.118) #4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @transform_exec(ptr noundef %0, ptr noundef nonnull %1) #5, !range !36
  br label %19

14:                                               ; preds = %7
  %15 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #4
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 12
  %17 = load i16, ptr %16, align 8, !tbaa !37
  %18 = or i16 %17, 1
  store i16 %18, ptr %16, align 8, !tbaa !37
  br label %19

19:                                               ; preds = %14, %12, %6
  %20 = phi i32 [ %13, %12 ], [ 1, %14 ], [ 2, %6 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @transform_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @transformops_data(ptr noundef %0, ptr noundef %1, ptr noundef null) #5, !range !31
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !32
  br label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.TransInfo, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !39
  %11 = or i32 %10, 16
  store i32 %11, ptr %9, align 8, !tbaa !39
  tail call void @transformApply(ptr noundef %0, ptr noundef %8) #4
  %12 = tail call i32 @transformEnd(ptr noundef %0, ptr noundef %8) #4
  tail call fastcc void @transformops_exit(ptr noundef %0, ptr noundef %1) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #4
  br label %13

13:                                               ; preds = %6, %5
  %14 = phi i32 [ 4, %6 ], [ 2, %5 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @transform_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.TransInfo, ptr %5, i64 0, i32 53
  store ptr %0, ptr %7, align 8, !tbaa !48
  %8 = tail call i32 @transformEvent(ptr noundef nonnull %5, ptr noundef %2) #4
  store ptr null, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.TransInfo, ptr %5, i64 0, i32 14, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !49
  %11 = icmp eq i16 %10, 3
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TransInfo, ptr %5, i64 0, i32 14, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.TransInfo, ptr %5, i64 0, i32 14, i32 8
  %18 = load i16, ptr %17, align 4, !tbaa !51
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void %14(ptr noundef nonnull %5) #4
  br label %22

22:                                               ; preds = %12, %16, %21, %3
  tail call void @transformApply(ptr noundef %0, ptr noundef nonnull %5) #4
  %23 = tail call i32 @transformEnd(ptr noundef %0, ptr noundef nonnull %5) #4
  %24 = or i32 %23, %8
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  tail call fastcc void @transformops_exit(ptr noundef %0, ptr noundef nonnull %1) #5
  %28 = and i32 %24, -10
  br label %48

29:                                               ; preds = %22
  %30 = load i32, ptr %5, align 8, !tbaa !47
  %31 = icmp eq i32 %6, %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = icmp eq i32 %30, 1
  br i1 %33, label %43, label %34

34:                                               ; preds = %32, %39
  %35 = phi ptr [ %36, %39 ], [ @transform_modes, %32 ]
  %36 = getelementptr inbounds %struct.TransformModeItem, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39, !llvm.loop !52

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TransformModeItem, ptr %35, i64 1, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !53
  %42 = icmp eq i32 %41, %30
  br i1 %42, label %43, label %34, !llvm.loop !52

43:                                               ; preds = %39, %32
  %44 = phi ptr [ @OP_TRANSLATION, %32 ], [ %37, %39 ]
  %45 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %44, i8 noundef zeroext 0) #4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @WM_operator_type_set(ptr noundef %1, ptr noundef nonnull %45) #4
  br label %48

48:                                               ; preds = %34, %43, %47, %29, %27
  %49 = phi i32 [ %28, %27 ], [ %24, %29 ], [ %24, %47 ], [ %24, %43 ], [ %24, %34 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @transform_cancel(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.TransInfo, ptr %4, i64 0, i32 3
  store i16 3, ptr %5, align 4, !tbaa !54
  %6 = tail call i32 @transformEnd(ptr noundef %0, ptr noundef %4) #4
  tail call fastcc void @transformops_exit(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_screenactive(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_float_vector_xyz(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @transformops_data(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %9 = tail call ptr %8(i64 noundef 1392, ptr noundef nonnull @.str.120) #4
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  br label %14

14:                                               ; preds = %7, %18
  %15 = phi ptr [ @OP_TRANSLATION, %7 ], [ %20, %18 ]
  %16 = phi ptr [ @transform_modes, %7 ], [ %19, %18 ]
  %17 = icmp eq ptr %13, %15
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TransformModeItem, ptr %16, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %14, !llvm.loop !57

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.TransformModeItem, ptr %16, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !53
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %18, %22
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = tail call i32 @RNA_enum_get(ptr noundef %28, ptr noundef nonnull @.str.108) #4
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %29, %26 ], [ %24, %22 ]
  %32 = tail call zeroext i8 @initTransform(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %31) #4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = zext i8 %32 to i32
  %36 = tail call i32 @special_transform_moving(ptr noundef %9) #4
  %37 = trunc i32 %36 to i16
  store i16 %37, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !32
  store ptr %9, ptr %4, align 8, !tbaa !38
  br label %40

38:                                               ; preds = %30
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %39(ptr noundef %9) #4
  br label %40

40:                                               ; preds = %34, %38, %3
  %41 = phi i32 [ 1, %3 ], [ 0, %38 ], [ %35, %34 ]
  ret i32 %41
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @initTransform(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @special_transform_moving(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transformApply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @transformEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @transformops_exit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @transformops_loopsel_hack(ptr noundef %0, ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  tail call void @saveTransform(ptr noundef %0, ptr noundef %4, ptr noundef %1) #4
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  tail call void %5(ptr noundef %6) #4
  store ptr null, ptr %3, align 8, !tbaa !38
  store i16 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !32
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @transformops_loopsel_hack(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x i32], align 4
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = icmp eq ptr %7, @OP_EDGE_SLIDE
  br i1 %8, label %9, label %59

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmOperator, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %23 = getelementptr inbounds %struct.wmOperator, ptr %19, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = tail call ptr @RNA_struct_find_property(ptr noundef %24, ptr noundef nonnull @.str.121) #4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %23, align 8, !tbaa !34
  %29 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %28, ptr noundef nonnull %25) #4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = load ptr, ptr %23, align 8, !tbaa !34
  call void @RNA_property_boolean_get_array(ptr noundef %34, ptr noundef nonnull %25, ptr noundef nonnull %3) #4
  %35 = load i32, ptr %3, align 4, !tbaa !81
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i16
  %38 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !81
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i16 0, i16 2
  %42 = or disjoint i16 %41, %37
  %43 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 2
  %44 = load i32, ptr %43, align 4, !tbaa !81
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i16 0, i16 4
  %47 = or disjoint i16 %42, %46
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %33, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !82
  %50 = icmp ne i16 %49, %47
  %51 = icmp ne i16 %47, 4
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !89
  %56 = call ptr @BKE_editmesh_from_object(ptr noundef %55) #4
  store i16 %47, ptr %48, align 2, !tbaa !82
  %57 = getelementptr inbounds %struct.BMEditMesh, ptr %56, i64 0, i32 12
  store i16 %47, ptr %57, align 4, !tbaa !90
  call void @EDBM_selectmode_set(ptr noundef %56) #4
  br label %58

58:                                               ; preds = %31, %53, %27, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  br label %59

59:                                               ; preds = %9, %13, %17, %58, %2
  ret void
}

; Function Attrs: optsize
declare void @saveTransform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_selectmode_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @transformEvent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_type_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float_factor(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @skin_resize_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !92
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 24
  %14 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %13, i32 noundef 36) #4
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %1, %4, %8, %11
  %18 = phi i32 [ 0, %8 ], [ %16, %11 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_operator_region_view3d_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_float_rotation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) #2

; Function Attrs: optsize
declare i32 @ED_operator_editcurve_3d(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edge_bevelweight_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 36
  %8 = load i32, ptr %7, align 8, !tbaa !97
  %9 = or i32 %8, 512
  store i32 %9, ptr %7, align 8, !tbaa !97
  %10 = tail call i32 @transform_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5, !range !100
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edge_bevelweight_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #4
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 36
  %7 = load i32, ptr %6, align 8, !tbaa !97
  %8 = or i32 %7, 512
  store i32 %8, ptr %6, align 8, !tbaa !97
  %9 = tail call i32 @transform_exec(ptr noundef %0, ptr noundef %1) #5, !range !36
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @ED_operator_sequencer_active(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_orientation_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef 0) #4
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #4
  tail call void @uiItemsEnumO(ptr noundef %5, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.155) #4
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #4
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_orientation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.155) #4
  tail call void @BIF_selectTransformOrientationValue(ptr noundef %0, i32 noundef %5) #4
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %6) #4
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BIF_selectTransformOrientationValue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_orientation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.102) #4
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.166) #4
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.161) #4
  %11 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #4
  %12 = load ptr, ptr %4, align 8, !tbaa !34
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.158, ptr noundef nonnull %3) #4
  %13 = and i32 %6, 255
  %14 = icmp eq i32 %13, 0
  %15 = icmp ne ptr %11, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.169) #4
  br label %27

20:                                               ; preds = %2
  %21 = trunc i32 %6 to i8
  %22 = trunc i32 %10 to i8
  %23 = trunc i32 %8 to i8
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  call void @BIF_createTransformOrientation(ptr noundef %0, ptr noundef %25, ptr noundef nonnull %3, i8 noundef zeroext %22, i8 noundef zeroext %21, i8 noundef zeroext %23) #4
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %11) #4
  %26 = call ptr @CTX_data_scene(ptr noundef %0) #4
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108865, ptr noundef %26) #4
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi i32 [ 4, %20 ], [ 2, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @ED_operator_areaactive(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BIF_createTransformOrientation(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_orientation_invoke(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call i32 @delete_orientation_exec(ptr noundef %0, ptr poison) #5
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_orientation_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #4
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 41
  %5 = load i8, ptr %4, align 4, !tbaa !102
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, -5
  tail call void @BIF_removeTransformOrientationIndex(ptr noundef %0, i32 noundef %7) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %3) #4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108865, ptr noundef %8) #4
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @delete_orientation_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #4
  %3 = tail call i32 @ED_operator_areaactive(ptr noundef %0) #4
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq ptr %2, null
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 41
  %9 = load i8, ptr %8, align 4, !tbaa !102
  %10 = icmp ugt i8 %9, 4
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @BIF_removeTransformOrientationIndex(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 88}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 16}
!14 = !{!"TransformModeItem", !7, i64 0, !15, i64 8, !7, i64 16}
!15 = !{!"int", !8, i64 0}
!16 = !{!14, !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!6, !7, i64 0}
!20 = !{!6, !7, i64 24}
!21 = !{!6, !7, i64 8}
!22 = !{!6, !12, i64 184}
!23 = !{!6, !7, i64 48}
!24 = !{!6, !7, i64 32}
!25 = !{!6, !7, i64 64}
!26 = !{!6, !7, i64 56}
!27 = !{!6, !7, i64 72}
!28 = distinct !{!28, !18}
!29 = !{!30, !7, i64 176}
!30 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !12, i64 164, !12, i64 166, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !7, i64 176}
!31 = !{i32 0, i32 256}
!32 = !{!33, !12, i64 2084}
!33 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !15, i64 2096, !15, i64 2100, !8, i64 2104, !15, i64 2108, !15, i64 2112, !8, i64 2116}
!34 = !{!35, !7, i64 112}
!35 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!36 = !{i32 2, i32 5}
!37 = !{!35, !12, i64 160}
!38 = !{!35, !7, i64 96}
!39 = !{!40, !15, i64 16}
!40 = !{!"TransInfo", !15, i64 0, !15, i64 4, !15, i64 8, !12, i64 12, !15, i64 16, !41, i64 20, !41, i64 24, !7, i64 32, !7, i64 40, !15, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !42, i64 80, !43, i64 296, !45, i64 440, !46, i64 584, !15, i64 640, !41, i64 644, !8, i64 648, !8, i64 668, !8, i64 680, !8, i64 688, !12, i64 696, !12, i64 698, !8, i64 700, !8, i64 712, !8, i64 716, !8, i64 780, !8, i64 844, !8, i64 908, !12, i64 972, !12, i64 974, !8, i64 976, !8, i64 977, !8, i64 980, !8, i64 992, !8, i64 1028, !8, i64 1064, !7, i64 1128, !7, i64 1136, !7, i64 1144, !12, i64 1152, !12, i64 1154, !12, i64 1156, !12, i64 1158, !12, i64 1160, !8, i64 1164, !8, i64 1180, !8, i64 1196, !8, i64 1208, !8, i64 1220, !7, i64 1224, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !8, i64 1296, !41, i64 1304, !7, i64 1312, !8, i64 1320, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384}
!41 = !{!"float", !8, i64 0}
!42 = !{!"TransCon", !12, i64 0, !8, i64 2, !8, i64 52, !8, i64 88, !8, i64 124, !8, i64 160, !8, i64 172, !15, i64 180, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208}
!43 = !{!"TransSnap", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !12, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !8, i64 52, !8, i64 64, !10, i64 72, !7, i64 88, !41, i64 96, !44, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136}
!44 = !{!"double", !8, i64 0}
!45 = !{!"NumInput", !12, i64 0, !15, i64 4, !8, i64 8, !8, i64 20, !12, i64 22, !8, i64 24, !8, i64 32, !8, i64 44, !8, i64 56, !12, i64 68, !8, i64 70, !15, i64 136}
!46 = !{!"MouseInput", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 24, !8, i64 28, !8, i64 36, !41, i64 44, !7, i64 48}
!47 = !{!40, !15, i64 0}
!48 = !{!40, !7, i64 1232}
!49 = !{!40, !12, i64 298}
!50 = !{!40, !7, i64 424}
!51 = !{!40, !12, i64 308}
!52 = distinct !{!52, !18}
!53 = !{!14, !15, i64 8}
!54 = !{!40, !12, i64 12}
!55 = !{!7, !7, i64 0}
!56 = !{!35, !7, i64 88}
!57 = distinct !{!57, !18}
!58 = !{!35, !7, i64 144}
!59 = !{!35, !7, i64 8}
!60 = !{!61, !7, i64 264}
!61 = !{!"Scene", !62, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !15, i64 232, !15, i64 236, !15, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !63, i64 280, !72, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !15, i64 4380, !10, i64 4384, !73, i64 4400, !74, i64 4416, !77, i64 4600, !7, i64 4608, !78, i64 4616, !7, i64 4640, !79, i64 4648, !79, i64 4656, !65, i64 4664, !66, i64 4824, !80, i64 4888, !7, i64 4952}
!62 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !15, i64 100, !15, i64 104, !15, i64 108, !7, i64 112}
!63 = !{!"RenderData", !64, i64 0, !7, i64 248, !7, i64 256, !67, i64 264, !68, i64 328, !15, i64 400, !15, i64 404, !15, i64 408, !41, i64 412, !15, i64 416, !15, i64 420, !15, i64 424, !15, i64 428, !12, i64 432, !12, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !15, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !15, i64 484, !15, i64 488, !12, i64 492, !12, i64 494, !15, i64 496, !15, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !15, i64 516, !15, i64 520, !15, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !69, i64 544, !69, i64 560, !70, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !15, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !41, i64 660, !41, i64 664, !12, i64 668, !12, i64 670, !41, i64 672, !41, i64 676, !8, i64 680, !15, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !15, i64 2520, !12, i64 2524, !12, i64 2526, !41, i64 2528, !41, i64 2532, !12, i64 2536, !12, i64 2538, !41, i64 2540, !12, i64 2544, !12, i64 2546, !15, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !41, i64 2560, !41, i64 2564, !7, i64 2568, !15, i64 2576, !41, i64 2580, !8, i64 2584, !71, i64 2616, !15, i64 3976, !15, i64 3980}
!64 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !41, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !65, i64 24, !66, i64 184}
!65 = !{!"ColorManagedViewSettings", !15, i64 0, !15, i64 4, !8, i64 8, !8, i64 72, !41, i64 136, !41, i64 140, !7, i64 144, !7, i64 152}
!66 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!67 = !{!"QuicktimeCodecSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !12, i64 48, !12, i64 50, !15, i64 52, !15, i64 56, !15, i64 60}
!68 = !{!"FFMpegCodecData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !41, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !7, i64 64}
!69 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!70 = !{!"rcti", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!71 = !{!"BakeData", !64, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !41, i64 1280, !41, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!72 = !{!"AudioData", !15, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !15, i64 16, !12, i64 20, !12, i64 22, !41, i64 24, !41, i64 28}
!73 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!74 = !{!"GameData", !73, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !75, i64 40, !12, i64 64, !12, i64 66, !41, i64 68, !76, i64 72, !41, i64 128, !41, i64 132, !15, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!75 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !41, i64 8, !41, i64 12, !7, i64 16}
!76 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !15, i64 40, !41, i64 44, !41, i64 48, !12, i64 52, !12, i64 54}
!77 = !{!"UnitSettings", !41, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!78 = !{!"PhysicsSettings", !8, i64 0, !15, i64 12, !15, i64 16, !15, i64 20}
!79 = !{!"long", !8, i64 0}
!80 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!81 = !{!15, !15, i64 0}
!82 = !{!83, !12, i64 46}
!83 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !41, i64 52, !12, i64 56, !8, i64 58, !8, i64 59, !84, i64 64, !86, i64 168, !41, i64 336, !41, i64 340, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 349, !12, i64 350, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !12, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !12, i64 434, !12, i64 436, !12, i64 438, !12, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !15, i64 448, !15, i64 452, !15, i64 456, !15, i64 460, !12, i64 464, !12, i64 466, !15, i64 468, !41, i64 472, !41, i64 476, !87, i64 480, !88, i64 608}
!84 = !{!"ImagePaintSettings", !85, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !8, i64 48, !15, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !41, i64 100}
!85 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!86 = !{!"ParticleEditSettings", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !7, i64 120, !41, i64 128, !41, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !7, i64 152, !7, i64 160}
!87 = !{!"UnifiedPaintSettings", !15, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !8, i64 16, !8, i64 28, !15, i64 40, !8, i64 44, !41, i64 52, !15, i64 56, !15, i64 60, !8, i64 64, !8, i64 65, !41, i64 72, !8, i64 76, !15, i64 84, !41, i64 88, !8, i64 92, !8, i64 100, !15, i64 108, !7, i64 112, !41, i64 120, !15, i64 124}
!88 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !8, i64 20, !8, i64 21, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!89 = !{!61, !7, i64 176}
!90 = !{!91, !12, i64 92}
!91 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !15, i64 16, !7, i64 24, !15, i64 32, !7, i64 40, !7, i64 48, !79, i64 56, !7, i64 64, !15, i64 72, !7, i64 80, !15, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !15, i64 104}
!92 = !{!93, !12, i64 136}
!93 = !{!"Object", !62, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !15, i64 140, !15, i64 144, !15, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !94, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !15, i64 432, !15, i64 436, !7, i64 440, !7, i64 448, !15, i64 456, !15, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !41, i64 616, !41, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !15, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !15, i64 968, !15, i64 972, !15, i64 976, !15, i64 980, !15, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !41, i64 1048, !41, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !41, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !15, i64 1144, !15, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !41, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !79, i64 1304, !79, i64 1312, !15, i64 1320, !15, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!94 = !{!"bAnimVizSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44}
!95 = !{!91, !7, i64 0}
!96 = !{!93, !7, i64 296}
!97 = !{!98, !15, i64 1344}
!98 = !{!"Mesh", !62, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !99, i64 280, !99, i64 480, !99, i64 680, !99, i64 880, !99, i64 1080, !15, i64 1280, !15, i64 1284, !15, i64 1288, !15, i64 1292, !15, i64 1296, !15, i64 1300, !15, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !15, i64 1344, !12, i64 1348, !12, i64 1350, !41, i64 1352, !15, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !12, i64 1366, !7, i64 1368}
!99 = !{!"CustomData", !7, i64 0, !8, i64 8, !15, i64 172, !15, i64 176, !15, i64 180, !7, i64 184, !7, i64 192}
!100 = !{i32 1, i32 5}
!101 = !{!35, !7, i64 120}
!102 = !{!103, !8, i64 292}
!103 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !15, i64 32, !41, i64 36, !8, i64 40, !8, i64 56, !41, i64 72, !41, i64 76, !8, i64 80, !8, i64 81, !15, i64 84, !15, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !69, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !15, i64 224, !15, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
