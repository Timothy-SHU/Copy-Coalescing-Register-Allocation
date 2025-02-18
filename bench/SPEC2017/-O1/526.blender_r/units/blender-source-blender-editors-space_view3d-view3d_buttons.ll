; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_buttons.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.MDeformWeight = type { i32, float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.TransformProperties = type { [4 x float], [3 x float], [3 x float], i16, [8 x float] }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"spacetype view3d panel object\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"VIEW3D_PT_transform\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"spacetype view3d panel gpencil\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"VIEW3D_PT_gpencil\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"spacetype view3d panel vgroup\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"VIEW3D_PT_vgroup\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Vertex Weights\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Toggles the properties panel display\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_properties\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Nothing selected\00", align 1
@RNA_EditBone = external global %struct.StructRNA, align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"tail_radius\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Radius (Parent)\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"head_radius\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"roll\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"envelope_distance\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Envelope\00", align 1
@RNA_MetaBall = external global %struct.StructRNA, align 1
@RNA_MetaElement = external global %struct.StructRNA, align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"stiffness\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Size:\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"size_x\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"size_y\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"size_z\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"TransformProperties\00", align 1
@RNA_BezierSplinePoint = external global %struct.StructRNA, align 1
@RNA_SplinePoint = external global %struct.StructRNA, align 1
@RNA_LatticePoint = external global %struct.StructRNA, align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.37 = private unnamed_addr constant [15 x i8] c"Control Point:\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Vertex:\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Median:\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"X:\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"Y:\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"Z:\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"W:\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Displays global values\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Displays local values\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"Vertex Data:\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Vertices Data:\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Bevel Weight:\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"Mean Bevel Weight:\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"Vertex weight used by Bevel modifier\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"Radius X:\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"Mean Radius X:\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"X radius used by Skin modifier\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Radius Y:\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Mean Radius Y:\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"Y radius used by Skin modifier\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"Edge Data:\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"Edges Data:\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"Edge weight used by Bevel modifier\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Crease:\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"Mean Crease:\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"Weight used by SubSurf modifier\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"Weight:\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"weight_softbody\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"Radius:\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"Tilt:\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"tilt\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"Mean Weight:\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Weight used for SoftBody Goal\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"Mean Radius:\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"Radius of curve control points\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"Mean Tilt:\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"Tilt of curve control points\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"No Bone Active\00", align 1
@RNA_PoseBone = external global %struct.StructRNA, align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"bone\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"lock_location\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"rotation_mode\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"rotation_quaternion\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"lock_rotations_4d\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"4L\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"lock_rotation_w\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"lock_rotation\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"rotation_axis_angle\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"rotation_euler\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"lock_scale\00", align 1
@RNA_Object = external global %struct.StructRNA, align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"dimensions\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"OBJECT_OT_vertex_weight_set_active\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_vertex_weight_paste\00", align 1
@.str.94 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_vertex_weight_delete\00", align 1
@RNA_ToolSettings = external global %struct.StructRNA, align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"vertex_group_subset\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"weight_group\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.97 = private unnamed_addr constant [48 x i8] c"OBJECT_OT_vertex_weight_normalize_active_vertex\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Normalize\00", align 1
@.str.99 = private unnamed_addr constant [69 x i8] c"Normalize weights of active vertex (if affected groups are unlocked)\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_vertex_weight_copy\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.102 = private unnamed_addr constant [80 x i8] c"Copy active vertex to other selected vertices (if affected groups are unlocked)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @view3d_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #6
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.1, i64 20, i1 false) #6
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false) #6
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @view3d_panel_transform, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 10
  store ptr @view3d_panel_transform_poll, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %3) #6
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 408, ptr noundef nonnull @.str.4) #6
  %12 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %12, ptr noundef nonnull align 1 dereferenceable(18) @.str.5, i64 18, i1 false) #6
  %13 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %13, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, i64 14, i1 false) #6
  %14 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 4
  store i16 42, ptr %14, align 1
  %15 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 11
  store ptr @ED_gpencil_panel_standard_header, ptr %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 12
  store ptr @ED_gpencil_panel_standard, ptr %16, align 8, !tbaa !38
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %11) #6
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 408, ptr noundef nonnull @.str.7) #6
  %19 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %19, ptr noundef nonnull align 1 dereferenceable(17) @.str.8, i64 17, i1 false) #6
  %20 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %20, ptr noundef nonnull align 1 dereferenceable(15) @.str.9, i64 15, i1 false) #6
  %21 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 4
  store i16 42, ptr %21, align 1
  %22 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 12
  store ptr @view3d_panel_vgroup, ptr %22, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 10
  store ptr @view3d_panel_vgroup_poll, ptr %23, align 8, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %18) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @view3d_panel_transform(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = tail call ptr @uiLayoutGetBlock(ptr noundef %16) #6
  tail call void @uiBlockSetHandleFunc(ptr noundef %17, ptr noundef nonnull @do_view3d_region_buttons, ptr noundef null) #6
  %18 = load ptr, ptr %15, align 8, !tbaa !70
  %19 = tail call ptr @uiLayoutColumn(ptr noundef %18, i32 noundef 0) #6
  %20 = icmp eq ptr %14, %10
  br i1 %20, label %21, label %77

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !72
  switch i16 %23, label %70 [
    i16 25, label %24
    i16 5, label %52
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  %27 = getelementptr inbounds %struct.bArmature, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 10
  %32 = load i32, ptr %31, align 8, !tbaa !78
  %33 = getelementptr inbounds %struct.bArmature, ptr %26, i64 0, i32 15
  %34 = load i32, ptr %33, align 8, !tbaa !80
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %24
  tail call void @uiItemL(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef 0) #6
  br label %51

38:                                               ; preds = %30
  call void @RNA_pointer_create(ptr noundef %26, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %28, ptr noundef nonnull %6) #6
  %39 = call ptr @uiLayoutColumn(ptr noundef %19, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %40 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 9
  %45 = load i32, ptr %44, align 4, !tbaa !82
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %6, ptr noundef nonnull @.str.15) #6
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %7, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  br label %50

49:                                               ; preds = %43, %38
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef 0) #6
  br label %50

50:                                               ; preds = %49, %48
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0) #6
  br label %51

51:                                               ; preds = %37, %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  br label %90

52:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %53 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !75
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.MetaBall, ptr %54, i64 0, i32 18
  %58 = load ptr, ptr %57, align 8, !tbaa !83
  %59 = icmp eq ptr %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  call void @RNA_pointer_create(ptr noundef nonnull %54, ptr noundef nonnull @RNA_MetaBall, ptr noundef nonnull %54, ptr noundef nonnull %4) #6
  %61 = load ptr, ptr %57, align 8, !tbaa !83
  call void @RNA_pointer_create(ptr noundef nonnull %54, ptr noundef nonnull @RNA_MetaElement, ptr noundef %61, ptr noundef nonnull %5) #6
  %62 = call ptr @uiLayoutColumn(ptr noundef %19, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %62, ptr noundef nonnull %5, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %62, ptr noundef nonnull %5, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %62, ptr noundef nonnull %5, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %62, ptr noundef nonnull %5, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %63 = call ptr @uiLayoutColumn(ptr noundef %19, i32 noundef 1) #6
  %64 = call i32 @RNA_enum_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.27) #6
  switch i32 %64, label %69 [
    i32 6, label %68
    i32 7, label %65
    i32 4, label %66
    i32 5, label %67
  ]

65:                                               ; preds = %60
  call void @uiItemL(ptr noundef %63, ptr noundef nonnull @.str.28, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef 0) #6
  br label %69

66:                                               ; preds = %60
  call void @uiItemL(ptr noundef %63, ptr noundef nonnull @.str.28, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #6
  br label %69

67:                                               ; preds = %60
  call void @uiItemL(ptr noundef %63, ptr noundef nonnull @.str.28, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef 0) #6
  br label %69

68:                                               ; preds = %60
  call void @uiItemL(ptr noundef %63, ptr noundef nonnull @.str.28, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %5, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef 0) #6
  br label %69

69:                                               ; preds = %52, %56, %60, %65, %66, %67, %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  br label %90

70:                                               ; preds = %21
  %71 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %72 = getelementptr inbounds %struct.View3D, ptr %71, i64 0, i32 31
  %73 = load float, ptr %72, align 8, !tbaa !85
  %74 = fcmp olt float %73, 1.000000e+00
  %75 = select i1 %74, float 1.000000e+00, float %73
  %76 = fmul float %75, 1.000000e+04
  tail call fastcc void @v3d_editvertex_buts(ptr noundef %19, ptr noundef %71, ptr noundef %14, float noundef %76)
  br label %90

77:                                               ; preds = %2
  %78 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %79 = load i32, ptr %78, align 8, !tbaa !87
  %80 = and i32 %79, 64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %83 = tail call ptr @BKE_pose_channel_active(ptr noundef %14) #6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  tail call void @uiItemL(ptr noundef %19, ptr noundef nonnull @.str.76, i32 noundef 0) #6
  br label %88

86:                                               ; preds = %82
  call void @RNA_pointer_create(ptr noundef %14, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %83, ptr noundef nonnull %3) #6
  %87 = call ptr @uiLayoutColumn(ptr noundef %19, i32 noundef 0) #6
  call fastcc void @v3d_transform_butsR(ptr noundef %87, ptr noundef nonnull %3)
  br label %88

88:                                               ; preds = %85, %86
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %90

89:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  call void @RNA_id_pointer_create(ptr noundef %14, ptr noundef nonnull %8) #6
  call fastcc void @v3d_transform_butsR(ptr noundef %19, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  br label %90

90:                                               ; preds = %88, %89, %51, %70, %69
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_panel_transform_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_gpencil_panel_standard_header(ptr noundef, ptr noundef) #2

declare void @ED_gpencil_panel_standard(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @view3d_panel_vgroup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef %10) #6
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = tail call ptr @ED_mesh_active_dvert_get_only(ptr noundef %16) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %121, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.MDeformVert, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !88
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %121, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.92, i8 noundef zeroext 1) #6
  %27 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.93, i8 noundef zeroext 1) #6
  %28 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.94, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %25, i64 0, i32 63
  %30 = load i8, ptr %29, align 1, !tbaa !91
  %31 = zext i8 %30 to i32
  tail call void @uiBlockSetHandleFunc(ptr noundef %11, ptr noundef nonnull @do_view3d_vgroup_buttons, ptr noundef null) #6
  %32 = load ptr, ptr %9, align 8, !tbaa !70
  %33 = tail call ptr @uiLayoutColumn(ptr noundef %32, i32 noundef 1) #6
  %34 = tail call ptr @uiLayoutRow(ptr noundef %33, i32 noundef 1) #6
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_ToolSettings, ptr noundef %25, ptr noundef nonnull %4) #6
  call void @uiItemR(ptr noundef %34, ptr noundef nonnull %4, ptr noundef nonnull @.str.95, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  %35 = call ptr @uiLayoutColumn(ptr noundef %33, i32 noundef 1) #6
  %36 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %16, i32 noundef %31, ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %37 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 25
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %100, label %40

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 97
  %42 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  br label %43

43:                                               ; preds = %40, %91
  %44 = phi ptr [ %38, %40 ], [ %95, %91 ]
  %45 = phi i32 [ 0, %40 ], [ %93, %91 ]
  %46 = phi i32 [ 0, %40 ], [ %92, %91 ]
  %47 = phi i32 [ 0, %40 ], [ %94, %91 ]
  %48 = getelementptr inbounds %struct.bDeformGroup, ptr %44, i64 0, i32 3
  %49 = load i8, ptr %48, align 8, !tbaa !98
  %50 = and i8 %49, 1
  %51 = zext i32 %47 to i64
  %52 = getelementptr inbounds i8, ptr %36, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !100
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %91, label %55

55:                                               ; preds = %43
  %56 = call ptr @defvert_find_index(ptr noundef nonnull %17, i32 noundef %47) #6
  %57 = icmp eq ptr %56, null
  br i1 %57, label %91, label %58

58:                                               ; preds = %55
  %59 = call ptr @uiLayoutSplit(ptr noundef %35, float noundef 0x3FDCCCCCC0000000, i32 noundef 1) #6
  %60 = call ptr @uiLayoutRow(ptr noundef %59, i32 noundef 1) #6
  %61 = getelementptr inbounds %struct.bDeformGroup, ptr %44, i64 0, i32 2
  %62 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !101
  %63 = sext i16 %62 to i32
  %64 = mul nsw i32 %63, 5
  %65 = trunc i32 %64 to i16
  %66 = call ptr @uiDefButO_ptr(ptr noundef %11, i32 noundef 512, ptr noundef %26, i32 noundef 6, ptr noundef nonnull %61, i32 noundef 0, i32 noundef %46, i16 noundef signext %65, i16 noundef signext %62, ptr noundef nonnull @.str.36) #6
  %67 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %66) #6
  call void @RNA_int_set(ptr noundef %67, ptr noundef nonnull @.str.96, i32 noundef %47) #6
  call void @uiButSetDrawFlag(ptr noundef %66, i32 noundef 8) #6
  %68 = load i16, ptr %41, align 2, !tbaa !105
  %69 = zext i16 %68 to i32
  %70 = add i32 %47, 1
  %71 = icmp eq i32 %70, %69
  br i1 %71, label %73, label %72

72:                                               ; preds = %58
  call void @uiButSetFlag(ptr noundef %66, i32 noundef 131072) #6
  br label %73

73:                                               ; preds = %72, %58
  %74 = call ptr @uiLayoutRow(ptr noundef %59, i32 noundef 1) #6
  %75 = icmp eq i8 %50, 0
  %76 = xor i8 %50, 1
  call void @uiLayoutSetEnabled(ptr noundef %74, i8 noundef zeroext %76) #6
  %77 = add i32 %47, 8
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !101
  %79 = shl i16 %78, 2
  %80 = getelementptr inbounds %struct.MDeformWeight, ptr %56, i64 0, i32 1
  %81 = call ptr @uiDefButF(ptr noundef %11, i32 noundef 2560, i32 noundef %77, ptr noundef nonnull @.str.36, i32 noundef %64, i32 noundef %46, i16 noundef signext %79, i16 noundef signext %78, ptr noundef nonnull %80, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.36) #6
  call void @uiButSetDrawFlag(ptr noundef %81, i32 noundef 2) #6
  %82 = zext nneg i8 %50 to i32
  %83 = add i32 %45, %82
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %3, ptr noundef %27) #6
  call void @RNA_int_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.96, i32 noundef %47) #6
  %84 = select i1 %75, i32 598, i32 77
  %85 = load ptr, ptr %42, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %74, ptr noundef %27, ptr noundef nonnull @.str.36, i32 noundef %84, ptr noundef %85, i32 noundef 0, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %3, ptr noundef %28) #6
  call void @RNA_int_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.96, i32 noundef %47) #6
  %86 = select i1 %75, i32 19, i32 41
  %87 = load ptr, ptr %42, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %74, ptr noundef %28, ptr noundef nonnull @.str.36, i32 noundef %86, ptr noundef %87, i32 noundef 0, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !101
  %89 = sext i16 %88 to i32
  %90 = sub nsw i32 %46, %89
  br label %91

91:                                               ; preds = %55, %73, %43
  %92 = phi i32 [ %46, %43 ], [ %90, %73 ], [ %46, %55 ]
  %93 = phi i32 [ %45, %43 ], [ %83, %73 ], [ %45, %55 ]
  %94 = add i32 %47, 1
  %95 = load ptr, ptr %44, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %43, !llvm.loop !109

97:                                               ; preds = %91
  %98 = add nsw i32 %92, -2
  %99 = icmp eq i32 %93, 0
  br label %100

100:                                              ; preds = %97, %23
  %101 = phi i32 [ -2, %23 ], [ %98, %97 ]
  %102 = phi i1 [ true, %23 ], [ %99, %97 ]
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %103(ptr noundef %36) #6
  %104 = load ptr, ptr %9, align 8, !tbaa !70
  %105 = call ptr @uiLayoutColumn(ptr noundef %104, i32 noundef 1) #6
  %106 = call ptr @uiLayoutRow(ptr noundef %105, i32 noundef 1) #6
  %107 = call ptr @WM_operatortype_find(ptr noundef nonnull @.str.97, i8 noundef zeroext 1) #6
  %108 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !101
  %109 = mul i16 %108, 5
  %110 = call ptr @uiDefButO_ptr(ptr noundef %11, i32 noundef 512, ptr noundef %107, i32 noundef 6, ptr noundef nonnull @.str.98, i32 noundef 0, i32 noundef %101, i16 noundef signext %109, i16 noundef signext %108, ptr noundef nonnull @.str.99) #6
  br i1 %102, label %112, label %111

111:                                              ; preds = %100
  call void @uiButSetFlag(ptr noundef %110, i32 noundef 2048) #6
  br label %112

112:                                              ; preds = %111, %100
  %113 = call ptr @WM_operatortype_find(ptr noundef nonnull @.str.100, i8 noundef zeroext 1) #6
  %114 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !101
  %115 = sext i16 %114 to i32
  %116 = mul nsw i32 %115, 5
  %117 = trunc i32 %116 to i16
  %118 = call ptr @uiDefButO_ptr(ptr noundef %11, i32 noundef 512, ptr noundef %113, i32 noundef 6, ptr noundef nonnull @.str.101, i32 noundef %116, i32 noundef %101, i16 noundef signext %117, i16 noundef signext %114, ptr noundef nonnull @.str.102) #6
  br i1 %102, label %120, label %119

119:                                              ; preds = %112
  call void @uiButSetFlag(ptr noundef %118, i32 noundef 2048) #6
  br label %120

120:                                              ; preds = %119, %112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %121

121:                                              ; preds = %120, %19, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_panel_vgroup_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %11) #6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef nonnull %11) #6
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16, %13
  %20 = tail call ptr @ED_mesh_active_dvert_get_only(ptr noundef nonnull %11) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.MDeformVert, ptr %20, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !88
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %19, %22
  %28 = phi i32 [ %26, %22 ], [ undef, %19 ]
  br i1 %21, label %29, label %30

29:                                               ; preds = %27, %16, %10
  br label %30

30:                                               ; preds = %27, %29
  %31 = phi i32 [ 0, %29 ], [ %28, %27 ]
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !112
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_properties_toggle_exec, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !118
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %4 = tail call ptr @view3d_has_buttons_region(ptr noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #6
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

declare i32 @ED_operator_view3d_active(ptr noundef) #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_view3d_region_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  switch i32 %2, label %19 [
    i32 2, label %14
    i32 1008, label %16
  ]

14:                                               ; preds = %12
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  tail call void @ED_area_tag_redraw(ptr noundef %15) #6
  br label %20

16:                                               ; preds = %12
  %17 = icmp eq ptr %13, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call fastcc void @v3d_editvertex_buts(ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, float noundef 1.000000e+00)
  tail call void @DAG_id_tag_update(ptr noundef nonnull %13, i16 noundef signext 2) #6
  br label %19

19:                                               ; preds = %16, %18, %12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %5) #6
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @v3d_editvertex_buts(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [8 x float], align 16
  %6 = alloca [8 x float], align 16
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = icmp eq ptr %0, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef nonnull %0) #6
  br label %13

13:                                               ; preds = %4, %11
  %14 = phi ptr [ %12, %11 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @fill_vn_fl(ptr noundef nonnull %5, i32 noundef 8, float noundef 0.000000e+00) #6
  %15 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 51
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = call ptr %19(i64 noundef 76, ptr noundef nonnull @.str.35) #6
  store ptr %20, ptr %15, align 8, !tbaa !119
  br label %21

21:                                               ; preds = %18, %13
  %22 = load ptr, ptr %15, align 8, !tbaa !119
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !72
  switch i16 %24, label %504 [
    i16 1, label %25
    i16 2, label %160
    i16 3, label %160
    i16 22, label %425
  ]

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.Mesh, ptr %27, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !120
  %30 = load ptr, ptr %29, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #6
  %31 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 24
  %32 = call i32 @CustomData_get_offset(ptr noundef nonnull %31, i32 noundef 29) #6
  %33 = call i32 @CustomData_get_offset(ptr noundef nonnull %31, i32 noundef 36) #6
  %34 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 25
  %35 = call i32 @CustomData_get_offset(ptr noundef nonnull %34, i32 noundef 29) #6
  %36 = call i32 @CustomData_get_offset(ptr noundef nonnull %34, i32 noundef 30) #6
  %37 = icmp ne i32 %33, -1
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !125
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %103, label %42

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %43, align 4, !tbaa !127
  %44 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %44, align 8, !tbaa !129
  %45 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %45, align 8, !tbaa !130
  %46 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  store ptr %47, ptr %8, align 8, !tbaa !100
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #6
  %48 = load ptr, ptr %45, align 8, !tbaa !130
  %49 = call ptr %48(ptr noundef nonnull %8) #6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %103, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds float, ptr %5, i64 1
  %53 = getelementptr inbounds float, ptr %5, i64 2
  %54 = icmp eq i32 %32, -1
  %55 = sext i32 %32 to i64
  %56 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %57 = sext i32 %33 to i64
  %58 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %59 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  br label %60

60:                                               ; preds = %51, %98
  %61 = phi i32 [ 0, %51 ], [ %99, %98 ]
  %62 = phi ptr [ %49, %51 ], [ %101, %98 ]
  %63 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 3
  %64 = load i8, ptr %63, align 1, !tbaa !131
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %98, label %67

67:                                               ; preds = %60
  %68 = add nsw i32 %61, 1
  %69 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 2
  %70 = load float, ptr %69, align 4, !tbaa !133
  %71 = load float, ptr %5, align 16, !tbaa !133
  %72 = fadd float %70, %71
  store float %72, ptr %5, align 16, !tbaa !133
  %73 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 2, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !133
  %75 = load float, ptr %52, align 4, !tbaa !133
  %76 = fadd float %74, %75
  store float %76, ptr %52, align 4, !tbaa !133
  %77 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 2, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !133
  %79 = load float, ptr %53, align 8, !tbaa !133
  %80 = fadd float %78, %79
  store float %80, ptr %53, align 8, !tbaa !133
  br i1 %54, label %87, label %81

81:                                               ; preds = %67
  %82 = load ptr, ptr %62, align 8, !tbaa !134
  %83 = getelementptr inbounds i8, ptr %82, i64 %55
  %84 = load float, ptr %83, align 4, !tbaa !133
  %85 = load float, ptr %56, align 4, !tbaa !133
  %86 = fadd float %84, %85
  store float %86, ptr %56, align 4, !tbaa !133
  br label %87

87:                                               ; preds = %81, %67
  br i1 %37, label %88, label %98

88:                                               ; preds = %87
  %89 = load ptr, ptr %62, align 8, !tbaa !134
  %90 = getelementptr inbounds i8, ptr %89, i64 %57
  %91 = load float, ptr %90, align 4, !tbaa !133
  %92 = load float, ptr %58, align 16, !tbaa !133
  %93 = fadd float %91, %92
  store float %93, ptr %58, align 16, !tbaa !133
  %94 = getelementptr inbounds float, ptr %90, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !133
  %96 = load float, ptr %59, align 4, !tbaa !133
  %97 = fadd float %95, %96
  store float %97, ptr %59, align 4, !tbaa !133
  br label %98

98:                                               ; preds = %60, %88, %87
  %99 = phi i32 [ %68, %88 ], [ %68, %87 ], [ %61, %60 ]
  %100 = load ptr, ptr %45, align 8, !tbaa !130
  %101 = call ptr %100(ptr noundef nonnull %8) #6
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %60, !llvm.loop !136

103:                                              ; preds = %98, %42, %25
  %104 = phi i32 [ 0, %25 ], [ 0, %42 ], [ %99, %98 ]
  %105 = icmp ne i32 %35, -1
  %106 = icmp ne i32 %36, -1
  %107 = select i1 %105, i1 true, i1 %106
  %108 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 5
  %109 = load i32, ptr %108, align 4, !tbaa !137
  br i1 %107, label %110, label %154

110:                                              ; preds = %103
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %154, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 2, ptr %113, align 4, !tbaa !127
  %114 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %114, align 8, !tbaa !129
  %115 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %115, align 8, !tbaa !130
  %116 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 10
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  store ptr %117, ptr %8, align 8, !tbaa !100
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #6
  %118 = load ptr, ptr %115, align 8, !tbaa !130
  %119 = call ptr %118(ptr noundef nonnull %8) #6
  %120 = icmp eq ptr %119, null
  br i1 %120, label %154, label %121

121:                                              ; preds = %112
  %122 = sext i32 %35 to i64
  %123 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %124 = sext i32 %36 to i64
  %125 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 7
  br label %126

126:                                              ; preds = %121, %149
  %127 = phi i32 [ 0, %121 ], [ %150, %149 ]
  %128 = phi ptr [ %119, %121 ], [ %152, %149 ]
  %129 = getelementptr inbounds %struct.BMHeader, ptr %128, i64 0, i32 3
  %130 = load i8, ptr %129, align 1, !tbaa !131
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %126
  br i1 %105, label %134, label %140

134:                                              ; preds = %133
  %135 = load ptr, ptr %128, align 8, !tbaa !138
  %136 = getelementptr inbounds i8, ptr %135, i64 %122
  %137 = load float, ptr %136, align 4, !tbaa !133
  %138 = load float, ptr %123, align 8, !tbaa !133
  %139 = fadd float %137, %138
  store float %139, ptr %123, align 8, !tbaa !133
  br label %140

140:                                              ; preds = %134, %133
  br i1 %106, label %141, label %147

141:                                              ; preds = %140
  %142 = load ptr, ptr %128, align 8, !tbaa !138
  %143 = getelementptr inbounds i8, ptr %142, i64 %124
  %144 = load float, ptr %143, align 4, !tbaa !133
  %145 = load float, ptr %125, align 4, !tbaa !133
  %146 = fadd float %144, %145
  store float %146, ptr %125, align 4, !tbaa !133
  br label %147

147:                                              ; preds = %141, %140
  %148 = add nsw i32 %127, 1
  br label %149

149:                                              ; preds = %126, %147
  %150 = phi i32 [ %148, %147 ], [ %127, %126 ]
  %151 = load ptr, ptr %115, align 8, !tbaa !130
  %152 = call ptr %151(ptr noundef nonnull %8) #6
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %126, !llvm.loop !141

154:                                              ; preds = %149, %103, %112, %110
  %155 = phi i32 [ 0, %110 ], [ 0, %112 ], [ %109, %103 ], [ %150, %149 ]
  %156 = icmp ne i32 %104, 0
  %157 = icmp ne i32 %155, 0
  %158 = select i1 %156, i1 true, i1 %157
  %159 = zext i1 %158 to i8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #6
  br label %504

160:                                              ; preds = %21, %21
  %161 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %162 = load ptr, ptr %161, align 8, !tbaa !75
  %163 = call ptr @BKE_curve_editNurbs_get(ptr noundef %162) #6
  %164 = load ptr, ptr %163, align 8, !tbaa !34
  %165 = icmp eq ptr %164, null
  br i1 %165, label %417, label %166

166:                                              ; preds = %160
  %167 = load float, ptr %5, align 16, !tbaa !133
  %168 = getelementptr inbounds float, ptr %5, i64 1
  %169 = getelementptr inbounds float, ptr %5, i64 2
  %170 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %171 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %172 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  %173 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %174 = getelementptr inbounds float, ptr %5, i64 1
  %175 = getelementptr inbounds float, ptr %5, i64 2
  %176 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %177 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  %178 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %179 = getelementptr inbounds float, ptr %5, i64 1
  %180 = getelementptr inbounds float, ptr %5, i64 2
  %181 = getelementptr inbounds float, ptr %5, i64 1
  %182 = getelementptr inbounds float, ptr %5, i64 2
  %183 = load float, ptr %168, align 4, !tbaa !133
  %184 = load float, ptr %169, align 8, !tbaa !133
  %185 = load float, ptr %170, align 4, !tbaa !133
  %186 = load float, ptr %171, align 16, !tbaa !133
  %187 = load float, ptr %172, align 4, !tbaa !133
  %188 = load float, ptr %173, align 8, !tbaa !133
  br label %189

189:                                              ; preds = %166, %402
  %190 = phi float [ %188, %166 ], [ %403, %402 ]
  %191 = phi float [ %187, %166 ], [ %404, %402 ]
  %192 = phi float [ %186, %166 ], [ %405, %402 ]
  %193 = phi float [ %185, %166 ], [ %406, %402 ]
  %194 = phi float [ %184, %166 ], [ %407, %402 ]
  %195 = phi float [ %183, %166 ], [ %408, %402 ]
  %196 = phi ptr [ %164, %166 ], [ %415, %402 ]
  %197 = phi i32 [ 0, %166 ], [ %414, %402 ]
  %198 = phi i32 [ 0, %166 ], [ %413, %402 ]
  %199 = phi i32 [ 0, %166 ], [ %412, %402 ]
  %200 = phi ptr [ null, %166 ], [ %411, %402 ]
  %201 = phi ptr [ null, %166 ], [ %410, %402 ]
  %202 = phi float [ %167, %166 ], [ %409, %402 ]
  %203 = getelementptr inbounds %struct.Nurb, ptr %196, i64 0, i32 2
  %204 = load i16, ptr %203, align 8, !tbaa !142
  %205 = icmp eq i16 %204, 1
  %206 = getelementptr inbounds %struct.Nurb, ptr %196, i64 0, i32 6
  %207 = load i32, ptr %206, align 8, !tbaa !144
  br i1 %205, label %208, label %318

208:                                              ; preds = %189
  %209 = icmp eq i32 %207, 0
  br i1 %209, label %402, label %210

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.Nurb, ptr %196, i64 0, i32 18
  %212 = load ptr, ptr %211, align 8, !tbaa !145
  br label %213

213:                                              ; preds = %210, %299
  %214 = phi float [ %300, %299 ], [ %190, %210 ]
  %215 = phi float [ %301, %299 ], [ %191, %210 ]
  %216 = phi float [ %302, %299 ], [ %192, %210 ]
  %217 = phi float [ %303, %299 ], [ %194, %210 ]
  %218 = phi float [ %304, %299 ], [ %195, %210 ]
  %219 = phi float [ %305, %299 ], [ %202, %210 ]
  %220 = phi float [ %306, %299 ], [ %190, %210 ]
  %221 = phi float [ %307, %299 ], [ %191, %210 ]
  %222 = phi float [ %308, %299 ], [ %192, %210 ]
  %223 = phi float [ %309, %299 ], [ %194, %210 ]
  %224 = phi float [ %310, %299 ], [ %195, %210 ]
  %225 = phi i32 [ %232, %299 ], [ %207, %210 ]
  %226 = phi i32 [ %315, %299 ], [ %197, %210 ]
  %227 = phi i32 [ %314, %299 ], [ %198, %210 ]
  %228 = phi ptr [ %316, %299 ], [ %212, %210 ]
  %229 = phi ptr [ %313, %299 ], [ %200, %210 ]
  %230 = phi ptr [ %312, %299 ], [ %201, %210 ]
  %231 = phi float [ %311, %299 ], [ %202, %210 ]
  %232 = add nsw i32 %225, -1
  %233 = getelementptr inbounds %struct.BezTriple, ptr %228, i64 0, i32 8
  %234 = load i8, ptr %233, align 4, !tbaa !146
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %261, label %237

237:                                              ; preds = %213
  %238 = getelementptr inbounds [3 x [3 x float]], ptr %228, i64 0, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !133
  %240 = fadd float %239, %231
  store float %240, ptr %5, align 16, !tbaa !133
  %241 = getelementptr inbounds [3 x [3 x float]], ptr %228, i64 0, i64 1, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !133
  %243 = fadd float %242, %224
  store float %243, ptr %174, align 4, !tbaa !133
  %244 = getelementptr inbounds [3 x [3 x float]], ptr %228, i64 0, i64 1, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !133
  %246 = fadd float %245, %223
  store float %246, ptr %175, align 8, !tbaa !133
  %247 = add nsw i32 %226, 1
  %248 = getelementptr inbounds %struct.BezTriple, ptr %228, i64 0, i32 2
  %249 = load float, ptr %248, align 4, !tbaa !148
  %250 = fadd float %249, %222
  store float %250, ptr %176, align 16, !tbaa !133
  %251 = getelementptr inbounds %struct.BezTriple, ptr %228, i64 0, i32 3
  %252 = load float, ptr %251, align 4, !tbaa !149
  %253 = fadd float %252, %221
  store float %253, ptr %177, align 4, !tbaa !133
  %254 = getelementptr inbounds %struct.BezTriple, ptr %228, i64 0, i32 1
  %255 = load float, ptr %254, align 4, !tbaa !150
  %256 = fadd float %255, %220
  store float %256, ptr %178, align 8, !tbaa !133
  %257 = icmp eq i32 %227, 0
  %258 = select i1 %257, ptr %228, ptr %230
  %259 = select i1 %257, ptr @RNA_BezierSplinePoint, ptr %229
  %260 = add nsw i32 %227, 1
  br label %299

261:                                              ; preds = %213
  %262 = getelementptr inbounds %struct.BezTriple, ptr %228, i64 0, i32 7
  %263 = load i8, ptr %262, align 1, !tbaa !151
  %264 = and i8 %263, 1
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %276, label %266

266:                                              ; preds = %261
  %267 = load float, ptr %228, align 4, !tbaa !133
  %268 = fadd float %267, %231
  store float %268, ptr %5, align 16, !tbaa !133
  %269 = getelementptr inbounds float, ptr %228, i64 1
  %270 = load float, ptr %269, align 4, !tbaa !133
  %271 = fadd float %270, %224
  store float %271, ptr %179, align 4, !tbaa !133
  %272 = getelementptr inbounds float, ptr %228, i64 2
  %273 = load float, ptr %272, align 4, !tbaa !133
  %274 = fadd float %273, %223
  store float %274, ptr %180, align 8, !tbaa !133
  %275 = add nsw i32 %226, 1
  br label %276

276:                                              ; preds = %266, %261
  %277 = phi float [ %274, %266 ], [ %217, %261 ]
  %278 = phi float [ %271, %266 ], [ %218, %261 ]
  %279 = phi float [ %268, %266 ], [ %219, %261 ]
  %280 = phi float [ %274, %266 ], [ %223, %261 ]
  %281 = phi float [ %271, %266 ], [ %224, %261 ]
  %282 = phi float [ %268, %266 ], [ %231, %261 ]
  %283 = phi i32 [ %275, %266 ], [ %226, %261 ]
  %284 = getelementptr inbounds %struct.BezTriple, ptr %228, i64 0, i32 9
  %285 = load i8, ptr %284, align 1, !tbaa !152
  %286 = and i8 %285, 1
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %299, label %288

288:                                              ; preds = %276
  %289 = getelementptr inbounds [3 x [3 x float]], ptr %228, i64 0, i64 2
  %290 = load float, ptr %289, align 4, !tbaa !133
  %291 = fadd float %290, %282
  store float %291, ptr %5, align 16, !tbaa !133
  %292 = getelementptr inbounds [3 x [3 x float]], ptr %228, i64 0, i64 2, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !133
  %294 = fadd float %293, %281
  store float %294, ptr %181, align 4, !tbaa !133
  %295 = getelementptr inbounds [3 x [3 x float]], ptr %228, i64 0, i64 2, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !133
  %297 = fadd float %296, %280
  store float %297, ptr %182, align 8, !tbaa !133
  %298 = add nsw i32 %283, 1
  br label %299

299:                                              ; preds = %276, %288, %237
  %300 = phi float [ %256, %237 ], [ %214, %288 ], [ %214, %276 ]
  %301 = phi float [ %253, %237 ], [ %215, %288 ], [ %215, %276 ]
  %302 = phi float [ %250, %237 ], [ %216, %288 ], [ %216, %276 ]
  %303 = phi float [ %246, %237 ], [ %297, %288 ], [ %277, %276 ]
  %304 = phi float [ %243, %237 ], [ %294, %288 ], [ %278, %276 ]
  %305 = phi float [ %240, %237 ], [ %291, %288 ], [ %279, %276 ]
  %306 = phi float [ %256, %237 ], [ %220, %288 ], [ %220, %276 ]
  %307 = phi float [ %253, %237 ], [ %221, %288 ], [ %221, %276 ]
  %308 = phi float [ %250, %237 ], [ %222, %288 ], [ %222, %276 ]
  %309 = phi float [ %246, %237 ], [ %297, %288 ], [ %280, %276 ]
  %310 = phi float [ %243, %237 ], [ %294, %288 ], [ %281, %276 ]
  %311 = phi float [ %240, %237 ], [ %291, %288 ], [ %282, %276 ]
  %312 = phi ptr [ %258, %237 ], [ %230, %288 ], [ %230, %276 ]
  %313 = phi ptr [ %259, %237 ], [ %229, %288 ], [ %229, %276 ]
  %314 = phi i32 [ %260, %237 ], [ %227, %288 ], [ %227, %276 ]
  %315 = phi i32 [ %247, %237 ], [ %298, %288 ], [ %283, %276 ]
  %316 = getelementptr inbounds %struct.BezTriple, ptr %228, i64 1
  %317 = icmp eq i32 %232, 0
  br i1 %317, label %402, label %213, !llvm.loop !153

318:                                              ; preds = %189
  %319 = getelementptr inbounds %struct.Nurb, ptr %196, i64 0, i32 7
  %320 = load i32, ptr %319, align 4, !tbaa !154
  %321 = mul nsw i32 %320, %207
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %402, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.Nurb, ptr %196, i64 0, i32 17
  %325 = load ptr, ptr %324, align 8, !tbaa !155
  br label %326

326:                                              ; preds = %323, %380
  %327 = phi float [ %381, %380 ], [ %190, %323 ]
  %328 = phi float [ %382, %380 ], [ %191, %323 ]
  %329 = phi float [ %383, %380 ], [ %192, %323 ]
  %330 = phi float [ %384, %380 ], [ %193, %323 ]
  %331 = phi float [ %385, %380 ], [ %194, %323 ]
  %332 = phi float [ %386, %380 ], [ %195, %323 ]
  %333 = phi float [ %387, %380 ], [ %202, %323 ]
  %334 = phi float [ %388, %380 ], [ %190, %323 ]
  %335 = phi float [ %389, %380 ], [ %191, %323 ]
  %336 = phi float [ %390, %380 ], [ %192, %323 ]
  %337 = phi float [ %391, %380 ], [ %193, %323 ]
  %338 = phi float [ %392, %380 ], [ %194, %323 ]
  %339 = phi float [ %393, %380 ], [ %195, %323 ]
  %340 = phi i32 [ %348, %380 ], [ %321, %323 ]
  %341 = phi i32 [ %399, %380 ], [ %197, %323 ]
  %342 = phi i32 [ %398, %380 ], [ %198, %323 ]
  %343 = phi i32 [ %397, %380 ], [ %199, %323 ]
  %344 = phi ptr [ %400, %380 ], [ %325, %323 ]
  %345 = phi ptr [ %396, %380 ], [ %200, %323 ]
  %346 = phi ptr [ %395, %380 ], [ %201, %323 ]
  %347 = phi float [ %394, %380 ], [ %202, %323 ]
  %348 = add nsw i32 %340, -1
  %349 = getelementptr inbounds %struct.BPoint, ptr %344, i64 0, i32 3
  %350 = load i16, ptr %349, align 4, !tbaa !156
  %351 = and i16 %350, 1
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %380, label %353

353:                                              ; preds = %326
  %354 = load float, ptr %344, align 4, !tbaa !133
  %355 = fadd float %354, %347
  store float %355, ptr %5, align 16, !tbaa !133
  %356 = getelementptr inbounds float, ptr %344, i64 1
  %357 = load float, ptr %356, align 4, !tbaa !133
  %358 = fadd float %357, %339
  store float %358, ptr %168, align 4, !tbaa !133
  %359 = getelementptr inbounds float, ptr %344, i64 2
  %360 = load float, ptr %359, align 4, !tbaa !133
  %361 = fadd float %360, %338
  store float %361, ptr %169, align 8, !tbaa !133
  %362 = getelementptr inbounds [4 x float], ptr %344, i64 0, i64 3
  %363 = load float, ptr %362, align 4, !tbaa !133
  %364 = fadd float %363, %337
  store float %364, ptr %170, align 4, !tbaa !133
  %365 = add nsw i32 %343, 1
  %366 = add nsw i32 %341, 1
  %367 = getelementptr inbounds %struct.BPoint, ptr %344, i64 0, i32 2
  %368 = load float, ptr %367, align 4, !tbaa !158
  %369 = fadd float %368, %336
  store float %369, ptr %171, align 16, !tbaa !133
  %370 = getelementptr inbounds %struct.BPoint, ptr %344, i64 0, i32 5
  %371 = load float, ptr %370, align 4, !tbaa !159
  %372 = fadd float %371, %335
  store float %372, ptr %172, align 4, !tbaa !133
  %373 = getelementptr inbounds %struct.BPoint, ptr %344, i64 0, i32 1
  %374 = load float, ptr %373, align 4, !tbaa !160
  %375 = fadd float %374, %334
  store float %375, ptr %173, align 8, !tbaa !133
  %376 = icmp eq i32 %342, 0
  %377 = select i1 %376, ptr %344, ptr %346
  %378 = select i1 %376, ptr @RNA_SplinePoint, ptr %345
  %379 = add nsw i32 %342, 1
  br label %380

380:                                              ; preds = %353, %326
  %381 = phi float [ %375, %353 ], [ %327, %326 ]
  %382 = phi float [ %372, %353 ], [ %328, %326 ]
  %383 = phi float [ %369, %353 ], [ %329, %326 ]
  %384 = phi float [ %364, %353 ], [ %330, %326 ]
  %385 = phi float [ %361, %353 ], [ %331, %326 ]
  %386 = phi float [ %358, %353 ], [ %332, %326 ]
  %387 = phi float [ %355, %353 ], [ %333, %326 ]
  %388 = phi float [ %375, %353 ], [ %334, %326 ]
  %389 = phi float [ %372, %353 ], [ %335, %326 ]
  %390 = phi float [ %369, %353 ], [ %336, %326 ]
  %391 = phi float [ %364, %353 ], [ %337, %326 ]
  %392 = phi float [ %361, %353 ], [ %338, %326 ]
  %393 = phi float [ %358, %353 ], [ %339, %326 ]
  %394 = phi float [ %355, %353 ], [ %347, %326 ]
  %395 = phi ptr [ %377, %353 ], [ %346, %326 ]
  %396 = phi ptr [ %378, %353 ], [ %345, %326 ]
  %397 = phi i32 [ %365, %353 ], [ %343, %326 ]
  %398 = phi i32 [ %379, %353 ], [ %342, %326 ]
  %399 = phi i32 [ %366, %353 ], [ %341, %326 ]
  %400 = getelementptr inbounds %struct.BPoint, ptr %344, i64 1
  %401 = icmp eq i32 %348, 0
  br i1 %401, label %402, label %326, !llvm.loop !161

402:                                              ; preds = %380, %299, %318, %208
  %403 = phi float [ %190, %208 ], [ %190, %318 ], [ %300, %299 ], [ %381, %380 ]
  %404 = phi float [ %191, %208 ], [ %191, %318 ], [ %301, %299 ], [ %382, %380 ]
  %405 = phi float [ %192, %208 ], [ %192, %318 ], [ %302, %299 ], [ %383, %380 ]
  %406 = phi float [ %193, %208 ], [ %193, %318 ], [ %193, %299 ], [ %384, %380 ]
  %407 = phi float [ %194, %208 ], [ %194, %318 ], [ %303, %299 ], [ %385, %380 ]
  %408 = phi float [ %195, %208 ], [ %195, %318 ], [ %304, %299 ], [ %386, %380 ]
  %409 = phi float [ %202, %208 ], [ %202, %318 ], [ %305, %299 ], [ %387, %380 ]
  %410 = phi ptr [ %201, %208 ], [ %201, %318 ], [ %312, %299 ], [ %395, %380 ]
  %411 = phi ptr [ %200, %208 ], [ %200, %318 ], [ %313, %299 ], [ %396, %380 ]
  %412 = phi i32 [ %199, %208 ], [ %199, %318 ], [ %199, %299 ], [ %397, %380 ]
  %413 = phi i32 [ %198, %208 ], [ %198, %318 ], [ %314, %299 ], [ %398, %380 ]
  %414 = phi i32 [ %197, %208 ], [ %197, %318 ], [ %315, %299 ], [ %399, %380 ]
  %415 = load ptr, ptr %196, align 8, !tbaa !34
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %189, !llvm.loop !162

417:                                              ; preds = %402, %160
  %418 = phi ptr [ null, %160 ], [ %410, %402 ]
  %419 = phi ptr [ null, %160 ], [ %411, %402 ]
  %420 = phi i32 [ 0, %160 ], [ %412, %402 ]
  %421 = phi i32 [ 0, %160 ], [ %413, %402 ]
  %422 = phi i32 [ 0, %160 ], [ %414, %402 ]
  %423 = icmp eq i32 %421, 1
  br i1 %423, label %424, label %504

424:                                              ; preds = %417
  call void @RNA_pointer_create(ptr noundef %162, ptr noundef %419, ptr noundef %418, ptr noundef nonnull %7) #6
  br label %504

425:                                              ; preds = %21
  %426 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %427 = load ptr, ptr %426, align 8, !tbaa !75
  %428 = getelementptr inbounds %struct.Lattice, ptr %427, i64 0, i32 26
  %429 = load ptr, ptr %428, align 8, !tbaa !163
  %430 = load ptr, ptr %429, align 8, !tbaa !165
  %431 = getelementptr inbounds %struct.Lattice, ptr %430, i64 0, i32 2
  %432 = load i16, ptr %431, align 8, !tbaa !167
  %433 = sext i16 %432 to i32
  %434 = getelementptr inbounds %struct.Lattice, ptr %430, i64 0, i32 3
  %435 = load i16, ptr %434, align 2, !tbaa !168
  %436 = sext i16 %435 to i32
  %437 = mul nsw i32 %436, %433
  %438 = getelementptr inbounds %struct.Lattice, ptr %430, i64 0, i32 4
  %439 = load i16, ptr %438, align 4, !tbaa !169
  %440 = sext i16 %439 to i32
  %441 = mul nsw i32 %437, %440
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %497, label %443

443:                                              ; preds = %425
  %444 = load float, ptr %5, align 16, !tbaa !133
  %445 = getelementptr inbounds %struct.Lattice, ptr %430, i64 0, i32 21
  %446 = load ptr, ptr %445, align 8, !tbaa !170
  %447 = getelementptr inbounds float, ptr %5, i64 1
  %448 = getelementptr inbounds float, ptr %5, i64 2
  %449 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %450 = load float, ptr %447, align 4, !tbaa !133
  %451 = load float, ptr %448, align 8, !tbaa !133
  %452 = load float, ptr %449, align 16, !tbaa !133
  br label %453

453:                                              ; preds = %443, %486
  %454 = phi float [ %452, %443 ], [ %487, %486 ]
  %455 = phi float [ %451, %443 ], [ %488, %486 ]
  %456 = phi float [ %450, %443 ], [ %489, %486 ]
  %457 = phi i32 [ %441, %443 ], [ %464, %486 ]
  %458 = phi i32 [ 0, %443 ], [ %494, %486 ]
  %459 = phi i32 [ 0, %443 ], [ %493, %486 ]
  %460 = phi ptr [ %446, %443 ], [ %495, %486 ]
  %461 = phi ptr [ null, %443 ], [ %492, %486 ]
  %462 = phi ptr [ null, %443 ], [ %491, %486 ]
  %463 = phi float [ %444, %443 ], [ %490, %486 ]
  %464 = add nsw i32 %457, -1
  %465 = getelementptr inbounds %struct.BPoint, ptr %460, i64 0, i32 3
  %466 = load i16, ptr %465, align 4, !tbaa !156
  %467 = and i16 %466, 1
  %468 = icmp eq i16 %467, 0
  br i1 %468, label %486, label %469

469:                                              ; preds = %453
  %470 = load float, ptr %460, align 4, !tbaa !133
  %471 = fadd float %470, %463
  store float %471, ptr %5, align 16, !tbaa !133
  %472 = getelementptr inbounds float, ptr %460, i64 1
  %473 = load float, ptr %472, align 4, !tbaa !133
  %474 = fadd float %473, %456
  store float %474, ptr %447, align 4, !tbaa !133
  %475 = getelementptr inbounds float, ptr %460, i64 2
  %476 = load float, ptr %475, align 4, !tbaa !133
  %477 = fadd float %476, %455
  store float %477, ptr %448, align 8, !tbaa !133
  %478 = add nsw i32 %458, 1
  %479 = getelementptr inbounds %struct.BPoint, ptr %460, i64 0, i32 2
  %480 = load float, ptr %479, align 4, !tbaa !158
  %481 = fadd float %480, %454
  store float %481, ptr %449, align 16, !tbaa !133
  %482 = icmp eq i32 %459, 0
  %483 = select i1 %482, ptr @RNA_LatticePoint, ptr %462
  %484 = select i1 %482, ptr %460, ptr %461
  %485 = add nsw i32 %459, 1
  br label %486

486:                                              ; preds = %469, %453
  %487 = phi float [ %481, %469 ], [ %454, %453 ]
  %488 = phi float [ %477, %469 ], [ %455, %453 ]
  %489 = phi float [ %474, %469 ], [ %456, %453 ]
  %490 = phi float [ %471, %469 ], [ %463, %453 ]
  %491 = phi ptr [ %483, %469 ], [ %462, %453 ]
  %492 = phi ptr [ %484, %469 ], [ %461, %453 ]
  %493 = phi i32 [ %485, %469 ], [ %459, %453 ]
  %494 = phi i32 [ %478, %469 ], [ %458, %453 ]
  %495 = getelementptr inbounds %struct.BPoint, ptr %460, i64 1
  %496 = icmp eq i32 %464, 0
  br i1 %496, label %497, label %453, !llvm.loop !171

497:                                              ; preds = %486, %425
  %498 = phi ptr [ null, %425 ], [ %491, %486 ]
  %499 = phi ptr [ null, %425 ], [ %492, %486 ]
  %500 = phi i32 [ 0, %425 ], [ %493, %486 ]
  %501 = phi i32 [ 0, %425 ], [ %494, %486 ]
  %502 = icmp eq i32 %500, 1
  br i1 %502, label %503, label %504

503:                                              ; preds = %497
  call void @RNA_pointer_create(ptr noundef %427, ptr noundef %498, ptr noundef %499, ptr noundef nonnull %7) #6
  br label %504

504:                                              ; preds = %497, %503, %21, %417, %424, %154
  %505 = phi i8 [ %38, %154 ], [ 0, %424 ], [ 0, %417 ], [ 0, %21 ], [ 0, %503 ], [ 0, %497 ]
  %506 = phi i8 [ %159, %154 ], [ 0, %424 ], [ 0, %417 ], [ 0, %21 ], [ 0, %503 ], [ 0, %497 ]
  %507 = phi i32 [ 0, %154 ], [ %420, %424 ], [ %420, %417 ], [ 0, %21 ], [ 0, %503 ], [ 0, %497 ]
  %508 = phi i32 [ 0, %154 ], [ 0, %424 ], [ 0, %417 ], [ 0, %21 ], [ %500, %503 ], [ %500, %497 ]
  %509 = phi i32 [ 0, %154 ], [ %421, %424 ], [ %421, %417 ], [ 0, %21 ], [ 0, %503 ], [ 0, %497 ]
  %510 = phi i32 [ %155, %154 ], [ 0, %424 ], [ 0, %417 ], [ 0, %21 ], [ 0, %503 ], [ 0, %497 ]
  %511 = phi i32 [ %104, %154 ], [ %422, %424 ], [ %422, %417 ], [ 0, %21 ], [ %501, %503 ], [ %501, %497 ]
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %504
  %514 = call ptr @uiDefBut(ptr noundef %14, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 130, i16 noundef signext 200, i16 noundef signext 20, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.36) #6
  br label %1520

515:                                              ; preds = %504
  %516 = sitofp i32 %511 to float
  %517 = fdiv float 1.000000e+00, %516
  %518 = load float, ptr %5, align 16, !tbaa !133
  %519 = fmul float %517, %518
  store float %519, ptr %5, align 16, !tbaa !133
  %520 = getelementptr inbounds float, ptr %5, i64 1
  %521 = load float, ptr %520, align 4, !tbaa !133
  %522 = fmul float %517, %521
  store float %522, ptr %520, align 4, !tbaa !133
  %523 = getelementptr inbounds float, ptr %5, i64 2
  %524 = load float, ptr %523, align 8, !tbaa !133
  %525 = fmul float %517, %524
  store float %525, ptr %523, align 8, !tbaa !133
  %526 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 28
  %527 = load i16, ptr %526, align 8, !tbaa !172
  %528 = and i16 %527, 8192
  %529 = icmp eq i16 %528, 0
  br i1 %529, label %532, label %530

530:                                              ; preds = %515
  %531 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %531, ptr noundef nonnull %5) #6
  br label %532

532:                                              ; preds = %530, %515
  %533 = icmp eq i8 %506, 0
  br i1 %533, label %556, label %534

534:                                              ; preds = %532
  %535 = icmp eq i32 %510, 0
  br i1 %535, label %544, label %536

536:                                              ; preds = %534
  %537 = sitofp i32 %510 to float
  %538 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 7
  %539 = load float, ptr %538, align 4, !tbaa !133
  %540 = fdiv float %539, %537
  store float %540, ptr %538, align 4, !tbaa !133
  %541 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %542 = load float, ptr %541, align 8, !tbaa !133
  %543 = fdiv float %542, %537
  store float %543, ptr %541, align 8, !tbaa !133
  br label %544

544:                                              ; preds = %534, %536
  %545 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %546 = load float, ptr %545, align 4, !tbaa !133
  %547 = fdiv float %546, %516
  store float %547, ptr %545, align 4, !tbaa !133
  %548 = icmp eq i8 %505, 0
  br i1 %548, label %583, label %549

549:                                              ; preds = %544
  %550 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %551 = load float, ptr %550, align 16, !tbaa !133
  %552 = fdiv float %551, %516
  store float %552, ptr %550, align 16, !tbaa !133
  %553 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  %554 = load float, ptr %553, align 4, !tbaa !133
  %555 = fdiv float %554, %516
  store float %555, ptr %553, align 4, !tbaa !133
  br label %583

556:                                              ; preds = %532
  %557 = icmp eq i32 %509, 0
  br i1 %557, label %576, label %558

558:                                              ; preds = %556
  %559 = icmp eq i32 %507, 0
  br i1 %559, label %565, label %560

560:                                              ; preds = %558
  %561 = sitofp i32 %507 to float
  %562 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %563 = load float, ptr %562, align 4, !tbaa !133
  %564 = fdiv float %563, %561
  store float %564, ptr %562, align 4, !tbaa !133
  br label %565

565:                                              ; preds = %560, %558
  %566 = sitofp i32 %509 to float
  %567 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %568 = load float, ptr %567, align 16, !tbaa !133
  %569 = fdiv float %568, %566
  store float %569, ptr %567, align 16, !tbaa !133
  %570 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  %571 = load float, ptr %570, align 4, !tbaa !133
  %572 = fdiv float %571, %566
  store float %572, ptr %570, align 4, !tbaa !133
  %573 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %574 = load float, ptr %573, align 8, !tbaa !133
  %575 = fdiv float %574, %566
  store float %575, ptr %573, align 8, !tbaa !133
  br label %583

576:                                              ; preds = %556
  %577 = icmp eq i32 %508, 0
  br i1 %577, label %583, label %578

578:                                              ; preds = %576
  %579 = sitofp i32 %508 to float
  %580 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %581 = load float, ptr %580, align 16, !tbaa !133
  %582 = fdiv float %581, %579
  store float %582, ptr %580, align 16, !tbaa !133
  br label %583

583:                                              ; preds = %565, %578, %576, %549, %544
  %584 = icmp eq ptr %14, null
  br i1 %584, label %688, label %585

585:                                              ; preds = %583
  %586 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !173
  %587 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !174
  %588 = sitofp i32 %587 to float
  %589 = fmul float %586, %588
  %590 = fdiv float %589, 7.200000e+01
  %591 = fmul float %590, 2.000000e+01
  %592 = fptosi float %591 to i32
  %593 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %593, ptr noundef nonnull align 16 dereferenceable(32) %5, i64 32, i1 false)
  call void @uiBlockBeginAlign(ptr noundef %14) #6
  %594 = icmp eq i32 %511, 1
  %595 = icmp eq i32 %509, 0
  %596 = select i1 %595, ptr @.str.38, ptr @.str.37
  %597 = select i1 %594, ptr %596, ptr @.str.39
  %598 = sub nsw i32 200, %592
  %599 = trunc i32 %592 to i16
  %600 = call ptr @uiDefBut(ptr noundef %14, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %597, i32 noundef 0, i32 noundef %598, i16 noundef signext 200, i16 noundef signext %599, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.36) #6
  call void @uiBlockBeginAlign(ptr noundef %14) #6
  %601 = sub nsw i32 %598, %592
  %602 = fneg float %3
  %603 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %601, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %593, float noundef %602, float noundef %3, float noundef 1.000000e+01, float noundef 5.000000e+00, ptr noundef nonnull @.str.36) #6
  call void @uiButSetUnitType(ptr noundef %603, i32 noundef 65536) #6
  %604 = sub nsw i32 %601, %592
  %605 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 1
  %606 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %604, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %605, float noundef %602, float noundef %3, float noundef 1.000000e+01, float noundef 5.000000e+00, ptr noundef nonnull @.str.36) #6
  call void @uiButSetUnitType(ptr noundef %606, i32 noundef 65536) #6
  %607 = sub nsw i32 %604, %592
  %608 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 2
  %609 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %607, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %608, float noundef %602, float noundef %3, float noundef 1.000000e+01, float noundef 5.000000e+00, ptr noundef nonnull @.str.36) #6
  call void @uiButSetUnitType(ptr noundef %609, i32 noundef 65536) #6
  %610 = icmp eq i32 %507, %511
  br i1 %610, label %611, label %615

611:                                              ; preds = %585
  %612 = sub nsw i32 %607, %592
  %613 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 3
  %614 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef %612, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %613, float noundef 0x3F847AE140000000, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.36) #6
  br label %615

615:                                              ; preds = %611, %585
  %616 = phi i32 [ %612, %611 ], [ %607, %585 ]
  call void @uiBlockBeginAlign(ptr noundef %14) #6
  %617 = add nsw i32 %592, 2
  %618 = sub nsw i32 %616, %617
  %619 = call ptr @uiDefButBitS(ptr noundef %14, i32 noundef 1536, i32 noundef 8192, i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %618, i16 noundef signext 100, i16 noundef signext %599, ptr noundef nonnull %526, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.45) #6
  %620 = call ptr @uiDefButBitS(ptr noundef %14, i32 noundef 4608, i32 noundef 8192, i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef 100, i32 noundef %618, i16 noundef signext 100, i16 noundef signext %599, ptr noundef nonnull %526, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.47) #6
  call void @uiBlockEndAlign(ptr noundef %14) #6
  br i1 %533, label %655, label %621

621:                                              ; preds = %615
  %622 = select i1 %594, ptr @.str.48, ptr @.str.49
  %623 = sub nsw i32 %618, %617
  %624 = call ptr @uiDefBut(ptr noundef %14, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %622, i32 noundef 0, i32 noundef %623, i16 noundef signext 200, i16 noundef signext %599, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.36) #6
  %625 = select i1 %594, ptr @.str.50, ptr @.str.51
  %626 = sub nsw i32 %623, %617
  %627 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 3
  %628 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %625, i32 noundef 0, i32 noundef %626, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %627, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.52) #6
  %629 = icmp eq i8 %505, 0
  br i1 %629, label %639, label %630

630:                                              ; preds = %621
  call void @uiBlockBeginAlign(ptr noundef %14) #6
  %631 = select i1 %594, ptr @.str.53, ptr @.str.54
  %632 = sub nsw i32 %626, %617
  %633 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 4
  %634 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %631, i32 noundef 0, i32 noundef %632, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %633, float noundef 0.000000e+00, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.55) #6
  %635 = select i1 %594, ptr @.str.56, ptr @.str.57
  %636 = sub nsw i32 %632, %617
  %637 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 5
  %638 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %635, i32 noundef 0, i32 noundef %636, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %637, float noundef 0.000000e+00, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.58) #6
  call void @uiBlockEndAlign(ptr noundef %14) #6
  br label %639

639:                                              ; preds = %630, %621
  %640 = phi i32 [ %636, %630 ], [ %626, %621 ]
  %641 = icmp eq i32 %510, 0
  br i1 %641, label %687, label %642

642:                                              ; preds = %639
  %643 = icmp eq i32 %510, 1
  %644 = select i1 %643, ptr @.str.59, ptr @.str.60
  %645 = sub nsw i32 %640, %617
  %646 = call ptr @uiDefBut(ptr noundef %14, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %644, i32 noundef 0, i32 noundef %645, i16 noundef signext 200, i16 noundef signext %599, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.36) #6
  %647 = select i1 %643, ptr @.str.50, ptr @.str.51
  %648 = sub nsw i32 %645, %617
  %649 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 6
  %650 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %647, i32 noundef 0, i32 noundef %648, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %649, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.61) #6
  %651 = select i1 %643, ptr @.str.62, ptr @.str.63
  %652 = sub nsw i32 %648, %617
  %653 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 7
  %654 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %651, i32 noundef 0, i32 noundef %652, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %653, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.64) #6
  br label %687

655:                                              ; preds = %615
  %656 = icmp eq i32 %509, 1
  br i1 %656, label %657, label %664

657:                                              ; preds = %655
  %658 = sub nsw i32 %618, %617
  %659 = call ptr @uiDefButR(ptr noundef %14, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef %658, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %7, ptr noundef nonnull @.str.66, i32 noundef 0, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef null) #6
  %660 = sub nsw i32 %658, %617
  %661 = call ptr @uiDefButR(ptr noundef %14, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef %660, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %7, ptr noundef nonnull @.str.25, i32 noundef 0, float noundef 0.000000e+00, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef null) #6
  %662 = sub nsw i32 %660, %617
  %663 = call ptr @uiDefButR(ptr noundef %14, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef %662, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %7, ptr noundef nonnull @.str.69, i32 noundef 0, float noundef 0xC0778FDBA0000000, float noundef 0x40778FDBA0000000, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef null) #6
  br label %687

664:                                              ; preds = %655
  %665 = icmp sgt i32 %509, 1
  br i1 %665, label %666, label %676

666:                                              ; preds = %664
  %667 = sub nsw i32 %618, %617
  %668 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 4
  %669 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef %667, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %668, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.71) #6
  %670 = sub nsw i32 %667, %617
  %671 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 5
  %672 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef %670, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %671, float noundef 0.000000e+00, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.73) #6
  %673 = sub nsw i32 %670, %617
  %674 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 6
  %675 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef %673, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %674, float noundef 0xC0778FDBA0000000, float noundef 0x40778FDBA0000000, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.75) #6
  call void @uiButSetUnitType(ptr noundef %675, i32 noundef 327680) #6
  br label %687

676:                                              ; preds = %664
  %677 = icmp eq i32 %508, 1
  br i1 %677, label %678, label %681

678:                                              ; preds = %676
  %679 = sub nsw i32 %618, %617
  %680 = call ptr @uiDefButR(ptr noundef %14, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef %679, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %7, ptr noundef nonnull @.str.66, i32 noundef 0, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef null) #6
  br label %687

681:                                              ; preds = %676
  %682 = icmp sgt i32 %508, 1
  br i1 %682, label %683, label %687

683:                                              ; preds = %681
  %684 = sub nsw i32 %618, %617
  %685 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 4
  %686 = call ptr @uiDefButF(ptr noundef %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef %684, i16 noundef signext 200, i16 noundef signext %599, ptr noundef nonnull %685, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.71) #6
  br label %687

687:                                              ; preds = %657, %678, %683, %681, %666, %639, %642
  call void @uiBlockEndAlign(ptr noundef %14) #6
  br label %1520

688:                                              ; preds = %583
  %689 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %689, i64 32, i1 false)
  %690 = load i16, ptr %526, align 8, !tbaa !172
  %691 = and i16 %690, 8192
  %692 = icmp eq i16 %691, 0
  br i1 %692, label %697, label %693

693:                                              ; preds = %688
  %694 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %695 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %696 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %694, ptr noundef nonnull %695) #6
  call void @mul_m4_v3(ptr noundef nonnull %694, ptr noundef nonnull %5) #6
  call void @mul_m4_v3(ptr noundef nonnull %694, ptr noundef nonnull %6) #6
  br label %697

697:                                              ; preds = %693, %688
  br label %698

698:                                              ; preds = %697, %698
  %699 = phi i64 [ %700, %698 ], [ 8, %697 ]
  %700 = add nsw i64 %699, -1
  %701 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 %700
  %702 = load float, ptr %701, align 4, !tbaa !133
  %703 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 %700
  %704 = load float, ptr %703, align 4, !tbaa !133
  %705 = fsub float %702, %704
  store float %705, ptr %703, align 4, !tbaa !133
  %706 = icmp eq i64 %700, 0
  br i1 %706, label %707, label %698, !llvm.loop !175

707:                                              ; preds = %698
  %708 = icmp eq i32 %511, 1
  br i1 %708, label %717, label %709

709:                                              ; preds = %707
  %710 = load float, ptr %5, align 16, !tbaa !133
  %711 = load float, ptr %520, align 4, !tbaa !133
  %712 = fmul float %711, %711
  %713 = call float @llvm.fmuladd.f32(float %710, float %710, float %712)
  %714 = load float, ptr %523, align 8, !tbaa !133
  %715 = call float @llvm.fmuladd.f32(float %714, float %714, float %713)
  %716 = fcmp une float %715, 0.000000e+00
  br label %717

717:                                              ; preds = %709, %707
  %718 = phi i1 [ true, %707 ], [ %716, %709 ]
  %719 = load i16, ptr %23, align 8, !tbaa !72
  %720 = icmp eq i16 %719, 1
  br i1 %720, label %721, label %1080

721:                                              ; preds = %717
  %722 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %723 = load float, ptr %722, align 4
  %724 = fcmp une float %723, 0.000000e+00
  %725 = select i1 %718, i1 true, i1 %724
  %726 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %727 = load float, ptr %726, align 16
  %728 = fcmp une float %727, 0.000000e+00
  %729 = select i1 %725, i1 true, i1 %728
  %730 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  %731 = load float, ptr %730, align 4
  %732 = fcmp une float %731, 0.000000e+00
  %733 = select i1 %729, i1 true, i1 %732
  %734 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %735 = load float, ptr %734, align 8
  %736 = fcmp une float %735, 0.000000e+00
  %737 = select i1 %733, i1 true, i1 %736
  %738 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 7
  %739 = load float, ptr %738, align 4
  %740 = fcmp une float %739, 0.000000e+00
  %741 = select i1 %737, i1 true, i1 %740
  br i1 %741, label %742, label %1080

742:                                              ; preds = %721
  %743 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %744 = load ptr, ptr %743, align 8, !tbaa !75
  %745 = getelementptr inbounds %struct.Mesh, ptr %744, i64 0, i32 20
  %746 = load ptr, ptr %745, align 8, !tbaa !120
  %747 = load ptr, ptr %746, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #6
  br i1 %733, label %748, label %919

748:                                              ; preds = %742
  br i1 %724, label %749, label %780

749:                                              ; preds = %748
  call void @BM_mesh_cd_flag_ensure(ptr noundef %747, ptr noundef %744, i8 noundef zeroext 1) #6
  %750 = getelementptr inbounds %struct.BMesh, ptr %747, i64 0, i32 24
  %751 = call i32 @CustomData_get_offset(ptr noundef nonnull %750, i32 noundef 29) #6
  %752 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 3
  %753 = load float, ptr %752, align 4, !tbaa !133
  %754 = load float, ptr %722, align 4, !tbaa !133
  %755 = fcmp ugt float %753, 0.000000e+00
  br i1 %755, label %756, label %780

756:                                              ; preds = %749
  %757 = fcmp ult float %753, 1.000000e+00
  br i1 %757, label %758, label %780

758:                                              ; preds = %756
  %759 = fsub float %753, %754
  %760 = fcmp olt float %759, 0.000000e+00
  br i1 %760, label %764, label %761

761:                                              ; preds = %758
  %762 = fcmp ogt float %759, 1.000000e+00
  br i1 %762, label %763, label %764

763:                                              ; preds = %761
  br label %764

764:                                              ; preds = %763, %761, %758
  %765 = phi float [ 1.000000e+00, %763 ], [ %759, %761 ], [ 0.000000e+00, %758 ]
  %766 = fcmp olt float %753, 0.000000e+00
  br i1 %766, label %770, label %767

767:                                              ; preds = %764
  %768 = fcmp ogt float %753, 1.000000e+00
  br i1 %768, label %769, label %770

769:                                              ; preds = %767
  br label %770

770:                                              ; preds = %769, %767, %764
  %771 = phi float [ 1.000000e+00, %769 ], [ %753, %767 ], [ 0.000000e+00, %764 ]
  %772 = fcmp ugt float %771, %765
  br i1 %772, label %775, label %773

773:                                              ; preds = %770
  %774 = fdiv float %771, %765
  br label %780

775:                                              ; preds = %770
  %776 = fsub float 1.000000e+00, %771
  %777 = fneg float %776
  %778 = fsub float 1.000000e+00, %765
  %779 = fdiv float %777, %778
  br label %780

780:                                              ; preds = %775, %773, %756, %749, %748
  %781 = phi i32 [ -1, %748 ], [ %751, %749 ], [ %751, %756 ], [ %751, %773 ], [ %751, %775 ]
  %782 = phi float [ 1.000000e+00, %748 ], [ 0.000000e+00, %749 ], [ 1.000000e+00, %756 ], [ %774, %773 ], [ %779, %775 ]
  %783 = load float, ptr %726, align 16, !tbaa !133
  %784 = fcmp une float %783, 0.000000e+00
  br i1 %784, label %785, label %795

785:                                              ; preds = %780
  %786 = getelementptr inbounds %struct.BMesh, ptr %747, i64 0, i32 24
  %787 = call i32 @CustomData_get_offset(ptr noundef nonnull %786, i32 noundef 36) #6
  %788 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 4
  %789 = load float, ptr %788, align 16, !tbaa !133
  %790 = load float, ptr %726, align 16, !tbaa !133
  %791 = fcmp une float %789, %790
  br i1 %791, label %792, label %795

792:                                              ; preds = %785
  %793 = fsub float %789, %790
  %794 = fdiv float %789, %793
  br label %795

795:                                              ; preds = %785, %792, %780
  %796 = phi i32 [ %787, %792 ], [ %787, %785 ], [ -1, %780 ]
  %797 = phi float [ %794, %792 ], [ 1.000000e+00, %785 ], [ 1.000000e+00, %780 ]
  %798 = load float, ptr %730, align 4, !tbaa !133
  %799 = fcmp une float %798, 0.000000e+00
  br i1 %799, label %800, label %814

800:                                              ; preds = %795
  %801 = icmp eq i32 %796, -1
  br i1 %801, label %802, label %805

802:                                              ; preds = %800
  %803 = getelementptr inbounds %struct.BMesh, ptr %747, i64 0, i32 24
  %804 = call i32 @CustomData_get_offset(ptr noundef nonnull %803, i32 noundef 36) #6
  br label %805

805:                                              ; preds = %802, %800
  %806 = phi i32 [ %804, %802 ], [ %796, %800 ]
  %807 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 5
  %808 = load float, ptr %807, align 4, !tbaa !133
  %809 = load float, ptr %730, align 4, !tbaa !133
  %810 = fcmp une float %808, %809
  br i1 %810, label %811, label %814

811:                                              ; preds = %805
  %812 = fsub float %808, %809
  %813 = fdiv float %808, %812
  br label %814

814:                                              ; preds = %805, %811, %795
  %815 = phi i32 [ %806, %811 ], [ %806, %805 ], [ %796, %795 ]
  %816 = phi float [ %813, %811 ], [ 1.000000e+00, %805 ], [ 1.000000e+00, %795 ]
  %817 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 1, ptr %817, align 4, !tbaa !127
  %818 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %818, align 8, !tbaa !129
  %819 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %819, align 8, !tbaa !130
  %820 = getelementptr inbounds %struct.BMesh, ptr %747, i64 0, i32 9
  %821 = load ptr, ptr %820, align 8, !tbaa !34
  store ptr %821, ptr %9, align 8, !tbaa !100
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #6
  %822 = load ptr, ptr %819, align 8, !tbaa !130
  %823 = call ptr %822(ptr noundef nonnull %9) #6
  %824 = icmp eq ptr %823, null
  br i1 %824, label %919, label %825

825:                                              ; preds = %814
  %826 = getelementptr inbounds float, ptr %6, i64 1
  %827 = getelementptr inbounds float, ptr %6, i64 2
  %828 = icmp eq i32 %781, -1
  %829 = sext i32 %781 to i64
  %830 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 3
  %831 = fcmp oeq float %782, 0.000000e+00
  %832 = fcmp oeq float %782, 1.000000e+00
  %833 = or i1 %831, %832
  %834 = fcmp ogt float %782, 0.000000e+00
  %835 = icmp eq i32 %815, -1
  %836 = sext i32 %815 to i64
  %837 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 4
  %838 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 5
  br label %839

839:                                              ; preds = %825, %915
  %840 = phi ptr [ %823, %825 ], [ %917, %915 ]
  %841 = getelementptr inbounds %struct.BMHeader, ptr %840, i64 0, i32 3
  %842 = load i8, ptr %841, align 1, !tbaa !131
  %843 = and i8 %842, 1
  %844 = icmp eq i8 %843, 0
  br i1 %844, label %915, label %845

845:                                              ; preds = %839
  br i1 %718, label %846, label %866

846:                                              ; preds = %845
  %847 = getelementptr inbounds %struct.BMVert, ptr %840, i64 0, i32 2
  br i1 %708, label %848, label %854

848:                                              ; preds = %846
  %849 = load float, ptr %6, align 16, !tbaa !133
  store float %849, ptr %847, align 4, !tbaa !133
  %850 = load float, ptr %826, align 4, !tbaa !133
  %851 = getelementptr inbounds %struct.BMVert, ptr %840, i64 0, i32 2, i64 1
  store float %850, ptr %851, align 4, !tbaa !133
  %852 = load float, ptr %827, align 8, !tbaa !133
  %853 = getelementptr inbounds %struct.BMVert, ptr %840, i64 0, i32 2, i64 2
  store float %852, ptr %853, align 4, !tbaa !133
  br label %866

854:                                              ; preds = %846
  %855 = load float, ptr %5, align 16, !tbaa !133
  %856 = load float, ptr %847, align 4, !tbaa !133
  %857 = fadd float %855, %856
  store float %857, ptr %847, align 4, !tbaa !133
  %858 = load float, ptr %520, align 4, !tbaa !133
  %859 = getelementptr inbounds %struct.BMVert, ptr %840, i64 0, i32 2, i64 1
  %860 = load float, ptr %859, align 4, !tbaa !133
  %861 = fadd float %858, %860
  store float %861, ptr %859, align 4, !tbaa !133
  %862 = load float, ptr %523, align 8, !tbaa !133
  %863 = getelementptr inbounds %struct.BMVert, ptr %840, i64 0, i32 2, i64 2
  %864 = load float, ptr %863, align 4, !tbaa !133
  %865 = fadd float %862, %864
  store float %865, ptr %863, align 4, !tbaa !133
  br label %866

866:                                              ; preds = %854, %848, %845
  br i1 %828, label %887, label %867

867:                                              ; preds = %866
  %868 = load ptr, ptr %840, align 8, !tbaa !134
  %869 = getelementptr inbounds i8, ptr %868, i64 %829
  %870 = load float, ptr %830, align 4, !tbaa !133
  br i1 %708, label %871, label %875

871:                                              ; preds = %867
  store float %870, ptr %869, align 4, !tbaa !133
  %872 = fcmp olt float %870, 0.000000e+00
  br i1 %872, label %885, label %873

873:                                              ; preds = %871
  %874 = fcmp ogt float %870, 1.000000e+00
  br i1 %874, label %885, label %887

875:                                              ; preds = %867
  br i1 %833, label %885, label %876

876:                                              ; preds = %875
  %877 = load float, ptr %869, align 4, !tbaa !133
  %878 = fmul float %782, %877
  %879 = fsub float 1.000000e+00, %877
  %880 = call float @llvm.fmuladd.f32(float %879, float %782, float 1.000000e+00)
  %881 = select i1 %834, float %878, float %880
  store float %881, ptr %869, align 4, !tbaa !133
  %882 = fcmp olt float %881, 0.000000e+00
  br i1 %882, label %885, label %883

883:                                              ; preds = %876
  %884 = fcmp ogt float %881, 1.000000e+00
  br i1 %884, label %885, label %887

885:                                              ; preds = %883, %876, %875, %873, %871
  %886 = phi float [ 0.000000e+00, %871 ], [ 1.000000e+00, %873 ], [ %782, %875 ], [ 0.000000e+00, %876 ], [ 1.000000e+00, %883 ]
  store float %886, ptr %869, align 4, !tbaa !133
  br label %887

887:                                              ; preds = %885, %883, %873, %866
  br i1 %835, label %915, label %888

888:                                              ; preds = %887
  %889 = load ptr, ptr %840, align 8, !tbaa !134
  %890 = getelementptr inbounds i8, ptr %889, i64 %836
  %891 = load float, ptr %726, align 16, !tbaa !133
  %892 = fcmp une float %891, 0.000000e+00
  br i1 %892, label %893, label %902

893:                                              ; preds = %888
  %894 = load float, ptr %837, align 16, !tbaa !133
  %895 = fcmp oeq float %894, %891
  %896 = or i1 %708, %895
  br i1 %896, label %900, label %897

897:                                              ; preds = %893
  %898 = load float, ptr %890, align 4, !tbaa !133
  %899 = fmul float %797, %898
  br label %900

900:                                              ; preds = %893, %897
  %901 = phi float [ %899, %897 ], [ %894, %893 ]
  store float %901, ptr %890, align 4, !tbaa !133
  br label %902

902:                                              ; preds = %900, %888
  %903 = load float, ptr %730, align 4, !tbaa !133
  %904 = fcmp une float %903, 0.000000e+00
  br i1 %904, label %905, label %915

905:                                              ; preds = %902
  %906 = getelementptr inbounds [3 x float], ptr %890, i64 0, i64 1
  %907 = load float, ptr %838, align 4, !tbaa !133
  %908 = fcmp oeq float %907, %903
  %909 = or i1 %708, %908
  br i1 %909, label %913, label %910

910:                                              ; preds = %905
  %911 = load float, ptr %906, align 4, !tbaa !133
  %912 = fmul float %816, %911
  br label %913

913:                                              ; preds = %905, %910
  %914 = phi float [ %912, %910 ], [ %907, %905 ]
  store float %914, ptr %906, align 4, !tbaa !133
  br label %915

915:                                              ; preds = %902, %913, %839, %887
  %916 = load ptr, ptr %819, align 8, !tbaa !130
  %917 = call ptr %916(ptr noundef nonnull %9) #6
  %918 = icmp eq ptr %917, null
  br i1 %918, label %919, label %839, !llvm.loop !176

919:                                              ; preds = %915, %814, %742
  br i1 %718, label %920, label %921

920:                                              ; preds = %919
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %746) #6
  br label %921

921:                                              ; preds = %920, %919
  %922 = load float, ptr %734, align 8, !tbaa !133
  %923 = fcmp une float %922, 0.000000e+00
  %924 = load float, ptr %738, align 4
  %925 = fcmp une float %924, 0.000000e+00
  %926 = select i1 %923, i1 true, i1 %925
  br i1 %926, label %927, label %1079

927:                                              ; preds = %921
  br i1 %923, label %928, label %962

928:                                              ; preds = %927
  call void @BM_mesh_cd_flag_ensure(ptr noundef %747, ptr noundef %744, i8 noundef zeroext 2) #6
  %929 = getelementptr inbounds %struct.BMesh, ptr %747, i64 0, i32 25
  %930 = call i32 @CustomData_get_offset(ptr noundef nonnull %929, i32 noundef 29) #6
  %931 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 6
  %932 = load float, ptr %931, align 8, !tbaa !133
  %933 = load float, ptr %734, align 8, !tbaa !133
  %934 = fcmp ugt float %932, 0.000000e+00
  br i1 %934, label %935, label %959

935:                                              ; preds = %928
  %936 = fcmp ult float %932, 1.000000e+00
  br i1 %936, label %937, label %959

937:                                              ; preds = %935
  %938 = fsub float %932, %933
  %939 = fcmp olt float %938, 0.000000e+00
  br i1 %939, label %943, label %940

940:                                              ; preds = %937
  %941 = fcmp ogt float %938, 1.000000e+00
  br i1 %941, label %942, label %943

942:                                              ; preds = %940
  br label %943

943:                                              ; preds = %942, %940, %937
  %944 = phi float [ 1.000000e+00, %942 ], [ %938, %940 ], [ 0.000000e+00, %937 ]
  %945 = fcmp olt float %932, 0.000000e+00
  br i1 %945, label %949, label %946

946:                                              ; preds = %943
  %947 = fcmp ogt float %932, 1.000000e+00
  br i1 %947, label %948, label %949

948:                                              ; preds = %946
  br label %949

949:                                              ; preds = %948, %946, %943
  %950 = phi float [ 1.000000e+00, %948 ], [ %932, %946 ], [ 0.000000e+00, %943 ]
  %951 = fcmp ugt float %950, %944
  br i1 %951, label %954, label %952

952:                                              ; preds = %949
  %953 = fdiv float %950, %944
  br label %959

954:                                              ; preds = %949
  %955 = fsub float 1.000000e+00, %950
  %956 = fneg float %955
  %957 = fsub float 1.000000e+00, %944
  %958 = fdiv float %956, %957
  br label %959

959:                                              ; preds = %928, %935, %952, %954
  %960 = phi float [ 0.000000e+00, %928 ], [ 1.000000e+00, %935 ], [ %953, %952 ], [ %958, %954 ]
  %961 = sext i32 %930 to i64
  br label %962

962:                                              ; preds = %959, %927
  %963 = phi i64 [ %961, %959 ], [ -1, %927 ]
  %964 = phi float [ %960, %959 ], [ 1.000000e+00, %927 ]
  %965 = load float, ptr %738, align 4, !tbaa !133
  %966 = fcmp une float %965, 0.000000e+00
  br i1 %966, label %967, label %1001

967:                                              ; preds = %962
  call void @BM_mesh_cd_flag_ensure(ptr noundef %747, ptr noundef %744, i8 noundef zeroext 4) #6
  %968 = getelementptr inbounds %struct.BMesh, ptr %747, i64 0, i32 25
  %969 = call i32 @CustomData_get_offset(ptr noundef nonnull %968, i32 noundef 30) #6
  %970 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 7
  %971 = load float, ptr %970, align 4, !tbaa !133
  %972 = load float, ptr %738, align 4, !tbaa !133
  %973 = fcmp ugt float %971, 0.000000e+00
  br i1 %973, label %974, label %998

974:                                              ; preds = %967
  %975 = fcmp ult float %971, 1.000000e+00
  br i1 %975, label %976, label %998

976:                                              ; preds = %974
  %977 = fsub float %971, %972
  %978 = fcmp olt float %977, 0.000000e+00
  br i1 %978, label %982, label %979

979:                                              ; preds = %976
  %980 = fcmp ogt float %977, 1.000000e+00
  br i1 %980, label %981, label %982

981:                                              ; preds = %979
  br label %982

982:                                              ; preds = %981, %979, %976
  %983 = phi float [ 1.000000e+00, %981 ], [ %977, %979 ], [ 0.000000e+00, %976 ]
  %984 = fcmp olt float %971, 0.000000e+00
  br i1 %984, label %988, label %985

985:                                              ; preds = %982
  %986 = fcmp ogt float %971, 1.000000e+00
  br i1 %986, label %987, label %988

987:                                              ; preds = %985
  br label %988

988:                                              ; preds = %987, %985, %982
  %989 = phi float [ 1.000000e+00, %987 ], [ %971, %985 ], [ 0.000000e+00, %982 ]
  %990 = fcmp ugt float %989, %983
  br i1 %990, label %993, label %991

991:                                              ; preds = %988
  %992 = fdiv float %989, %983
  br label %998

993:                                              ; preds = %988
  %994 = fsub float 1.000000e+00, %989
  %995 = fneg float %994
  %996 = fsub float 1.000000e+00, %983
  %997 = fdiv float %995, %996
  br label %998

998:                                              ; preds = %967, %974, %991, %993
  %999 = phi float [ 0.000000e+00, %967 ], [ 1.000000e+00, %974 ], [ %992, %991 ], [ %997, %993 ]
  %1000 = sext i32 %969 to i64
  br label %1001

1001:                                             ; preds = %998, %962
  %1002 = phi i64 [ %1000, %998 ], [ -1, %962 ]
  %1003 = phi float [ %999, %998 ], [ 1.000000e+00, %962 ]
  %1004 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 2, ptr %1004, align 4, !tbaa !127
  %1005 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %1005, align 8, !tbaa !129
  %1006 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %1006, align 8, !tbaa !130
  %1007 = getelementptr inbounds %struct.BMesh, ptr %747, i64 0, i32 10
  %1008 = load ptr, ptr %1007, align 8, !tbaa !34
  store ptr %1008, ptr %9, align 8, !tbaa !100
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #6
  %1009 = load ptr, ptr %1006, align 8, !tbaa !130
  %1010 = call ptr %1009(ptr noundef nonnull %9) #6
  %1011 = icmp eq ptr %1010, null
  br i1 %1011, label %1079, label %1012

1012:                                             ; preds = %1001
  %1013 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 6
  %1014 = fcmp oeq float %964, 0.000000e+00
  %1015 = fcmp oeq float %964, 1.000000e+00
  %1016 = or i1 %1014, %1015
  %1017 = fcmp ogt float %964, 0.000000e+00
  %1018 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 7
  %1019 = fcmp oeq float %1003, 0.000000e+00
  %1020 = fcmp oeq float %1003, 1.000000e+00
  %1021 = or i1 %1019, %1020
  %1022 = fcmp ogt float %1003, 0.000000e+00
  br label %1023

1023:                                             ; preds = %1012, %1075
  %1024 = phi ptr [ %1010, %1012 ], [ %1077, %1075 ]
  %1025 = getelementptr inbounds %struct.BMHeader, ptr %1024, i64 0, i32 3
  %1026 = load i8, ptr %1025, align 1, !tbaa !131
  %1027 = and i8 %1026, 1
  %1028 = icmp eq i8 %1027, 0
  br i1 %1028, label %1075, label %1029

1029:                                             ; preds = %1023
  %1030 = load float, ptr %734, align 8, !tbaa !133
  %1031 = fcmp une float %1030, 0.000000e+00
  br i1 %1031, label %1032, label %1052

1032:                                             ; preds = %1029
  %1033 = load ptr, ptr %1024, align 8, !tbaa !138
  %1034 = getelementptr inbounds i8, ptr %1033, i64 %963
  %1035 = load float, ptr %1013, align 8, !tbaa !133
  br i1 %708, label %1036, label %1040

1036:                                             ; preds = %1032
  store float %1035, ptr %1034, align 4, !tbaa !133
  %1037 = fcmp olt float %1035, 0.000000e+00
  br i1 %1037, label %1050, label %1038

1038:                                             ; preds = %1036
  %1039 = fcmp ogt float %1035, 1.000000e+00
  br i1 %1039, label %1050, label %1052

1040:                                             ; preds = %1032
  br i1 %1016, label %1050, label %1041

1041:                                             ; preds = %1040
  %1042 = load float, ptr %1034, align 4, !tbaa !133
  %1043 = fmul float %964, %1042
  %1044 = fsub float 1.000000e+00, %1042
  %1045 = call float @llvm.fmuladd.f32(float %1044, float %964, float 1.000000e+00)
  %1046 = select i1 %1017, float %1043, float %1045
  store float %1046, ptr %1034, align 4, !tbaa !133
  %1047 = fcmp olt float %1046, 0.000000e+00
  br i1 %1047, label %1050, label %1048

1048:                                             ; preds = %1041
  %1049 = fcmp ogt float %1046, 1.000000e+00
  br i1 %1049, label %1050, label %1052

1050:                                             ; preds = %1048, %1041, %1040, %1038, %1036
  %1051 = phi float [ 0.000000e+00, %1036 ], [ 1.000000e+00, %1038 ], [ %964, %1040 ], [ 0.000000e+00, %1041 ], [ 1.000000e+00, %1048 ]
  store float %1051, ptr %1034, align 4, !tbaa !133
  br label %1052

1052:                                             ; preds = %1050, %1048, %1038, %1029
  %1053 = load float, ptr %738, align 4, !tbaa !133
  %1054 = fcmp une float %1053, 0.000000e+00
  br i1 %1054, label %1055, label %1075

1055:                                             ; preds = %1052
  %1056 = load ptr, ptr %1024, align 8, !tbaa !138
  %1057 = getelementptr inbounds i8, ptr %1056, i64 %1002
  %1058 = load float, ptr %1018, align 4, !tbaa !133
  br i1 %708, label %1059, label %1063

1059:                                             ; preds = %1055
  store float %1058, ptr %1057, align 4, !tbaa !133
  %1060 = fcmp olt float %1058, 0.000000e+00
  br i1 %1060, label %1073, label %1061

1061:                                             ; preds = %1059
  %1062 = fcmp ogt float %1058, 1.000000e+00
  br i1 %1062, label %1073, label %1075

1063:                                             ; preds = %1055
  br i1 %1021, label %1073, label %1064

1064:                                             ; preds = %1063
  %1065 = load float, ptr %1057, align 4, !tbaa !133
  %1066 = fmul float %1003, %1065
  %1067 = fsub float 1.000000e+00, %1065
  %1068 = call float @llvm.fmuladd.f32(float %1067, float %1003, float 1.000000e+00)
  %1069 = select i1 %1022, float %1066, float %1068
  store float %1069, ptr %1057, align 4, !tbaa !133
  %1070 = fcmp olt float %1069, 0.000000e+00
  br i1 %1070, label %1073, label %1071

1071:                                             ; preds = %1064
  %1072 = fcmp ogt float %1069, 1.000000e+00
  br i1 %1072, label %1073, label %1075

1073:                                             ; preds = %1071, %1064, %1063, %1061, %1059
  %1074 = phi float [ 0.000000e+00, %1059 ], [ 1.000000e+00, %1061 ], [ %1003, %1063 ], [ 0.000000e+00, %1064 ], [ 1.000000e+00, %1071 ]
  store float %1074, ptr %1057, align 4, !tbaa !133
  br label %1075

1075:                                             ; preds = %1073, %1071, %1061, %1023, %1052
  %1076 = load ptr, ptr %1006, align 8, !tbaa !130
  %1077 = call ptr %1076(ptr noundef nonnull %9) #6
  %1078 = icmp eq ptr %1077, null
  br i1 %1078, label %1079, label %1023, !llvm.loop !177

1079:                                             ; preds = %1075, %1001, %921
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #6
  br label %1520

1080:                                             ; preds = %721, %717
  %1081 = and i16 %719, -2
  %1082 = icmp eq i16 %1081, 2
  br i1 %1082, label %1083, label %1404

1083:                                             ; preds = %1080
  %1084 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %1085 = load float, ptr %1084, align 4
  %1086 = fcmp une float %1085, 0.000000e+00
  %1087 = select i1 %718, i1 true, i1 %1086
  %1088 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %1089 = load float, ptr %1088, align 16
  %1090 = fcmp une float %1089, 0.000000e+00
  %1091 = select i1 %1087, i1 true, i1 %1090
  %1092 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  %1093 = load float, ptr %1092, align 4
  %1094 = fcmp une float %1093, 0.000000e+00
  %1095 = select i1 %1091, i1 true, i1 %1094
  %1096 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %1097 = load float, ptr %1096, align 8
  %1098 = fcmp une float %1097, 0.000000e+00
  %1099 = select i1 %1095, i1 true, i1 %1098
  br i1 %1099, label %1100, label %1404

1100:                                             ; preds = %1083
  %1101 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %1102 = load ptr, ptr %1101, align 8, !tbaa !75
  %1103 = call ptr @BKE_curve_editNurbs_get(ptr noundef %1102) #6
  %1104 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 4
  %1105 = load float, ptr %1104, align 16, !tbaa !133
  %1106 = load float, ptr %1088, align 16, !tbaa !133
  %1107 = fcmp ugt float %1105, 0.000000e+00
  br i1 %1107, label %1108, label %1132

1108:                                             ; preds = %1100
  %1109 = fcmp ult float %1105, 1.000000e+00
  br i1 %1109, label %1110, label %1132

1110:                                             ; preds = %1108
  %1111 = fsub float %1105, %1106
  %1112 = fcmp olt float %1111, 0.000000e+00
  br i1 %1112, label %1116, label %1113

1113:                                             ; preds = %1110
  %1114 = fcmp ogt float %1111, 1.000000e+00
  br i1 %1114, label %1115, label %1116

1115:                                             ; preds = %1113
  br label %1116

1116:                                             ; preds = %1115, %1113, %1110
  %1117 = phi float [ 1.000000e+00, %1115 ], [ %1111, %1113 ], [ 0.000000e+00, %1110 ]
  %1118 = fcmp olt float %1105, 0.000000e+00
  br i1 %1118, label %1122, label %1119

1119:                                             ; preds = %1116
  %1120 = fcmp ogt float %1105, 1.000000e+00
  br i1 %1120, label %1121, label %1122

1121:                                             ; preds = %1119
  br label %1122

1122:                                             ; preds = %1121, %1119, %1116
  %1123 = phi float [ 1.000000e+00, %1121 ], [ %1105, %1119 ], [ 0.000000e+00, %1116 ]
  %1124 = fcmp ugt float %1123, %1117
  br i1 %1124, label %1127, label %1125

1125:                                             ; preds = %1122
  %1126 = fdiv float %1123, %1117
  br label %1132

1127:                                             ; preds = %1122
  %1128 = fsub float 1.000000e+00, %1123
  %1129 = fneg float %1128
  %1130 = fsub float 1.000000e+00, %1117
  %1131 = fdiv float %1129, %1130
  br label %1132

1132:                                             ; preds = %1100, %1108, %1125, %1127
  %1133 = phi float [ 0.000000e+00, %1100 ], [ 1.000000e+00, %1108 ], [ %1126, %1125 ], [ %1131, %1127 ]
  %1134 = load ptr, ptr %1103, align 8, !tbaa !34
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1520, label %1136

1136:                                             ; preds = %1132
  %1137 = getelementptr inbounds float, ptr %6, i64 1
  %1138 = getelementptr inbounds float, ptr %6, i64 2
  %1139 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 3
  %1140 = fcmp oeq float %1133, 0.000000e+00
  %1141 = fcmp oeq float %1133, 1.000000e+00
  %1142 = or i1 %1140, %1141
  %1143 = fcmp ogt float %1133, 0.000000e+00
  %1144 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 5
  %1145 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 6
  %1146 = fcmp oeq float %1133, 0.000000e+00
  %1147 = fcmp oeq float %1133, 1.000000e+00
  %1148 = or i1 %1146, %1147
  %1149 = fcmp ogt float %1133, 0.000000e+00
  %1150 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 5
  %1151 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 6
  %1152 = getelementptr inbounds float, ptr %6, i64 1
  %1153 = getelementptr inbounds float, ptr %6, i64 2
  %1154 = getelementptr inbounds float, ptr %6, i64 1
  %1155 = getelementptr inbounds float, ptr %6, i64 2
  br label %1156

1156:                                             ; preds = %1136, %1401
  %1157 = phi ptr [ %1134, %1136 ], [ %1402, %1401 ]
  %1158 = getelementptr inbounds %struct.Nurb, ptr %1157, i64 0, i32 2
  %1159 = load i16, ptr %1158, align 8, !tbaa !142
  %1160 = icmp eq i16 %1159, 1
  %1161 = getelementptr inbounds %struct.Nurb, ptr %1157, i64 0, i32 6
  %1162 = load i32, ptr %1161, align 8, !tbaa !144
  br i1 %1160, label %1163, label %1307

1163:                                             ; preds = %1156
  %1164 = icmp eq i32 %1162, 0
  br i1 %1164, label %1401, label %1165

1165:                                             ; preds = %1163
  %1166 = getelementptr inbounds %struct.Nurb, ptr %1157, i64 0, i32 18
  %1167 = load ptr, ptr %1166, align 8, !tbaa !145
  br label %1168

1168:                                             ; preds = %1165, %1304
  %1169 = phi i32 [ %1171, %1304 ], [ %1162, %1165 ]
  %1170 = phi ptr [ %1305, %1304 ], [ %1167, %1165 ]
  %1171 = add nsw i32 %1169, -1
  %1172 = getelementptr inbounds %struct.BezTriple, ptr %1170, i64 0, i32 8
  %1173 = load i8, ptr %1172, align 4, !tbaa !146
  %1174 = and i8 %1173, 1
  %1175 = icmp eq i8 %1174, 0
  br i1 %1175, label %1254, label %1176

1176:                                             ; preds = %1168
  br i1 %718, label %1177, label %1210

1177:                                             ; preds = %1176
  %1178 = load float, ptr %5, align 16, !tbaa !133
  %1179 = load float, ptr %1170, align 4, !tbaa !133
  %1180 = fadd float %1178, %1179
  store float %1180, ptr %1170, align 4, !tbaa !133
  %1181 = load float, ptr %520, align 4, !tbaa !133
  %1182 = getelementptr inbounds float, ptr %1170, i64 1
  %1183 = load float, ptr %1182, align 4, !tbaa !133
  %1184 = fadd float %1181, %1183
  store float %1184, ptr %1182, align 4, !tbaa !133
  %1185 = load float, ptr %523, align 8, !tbaa !133
  %1186 = getelementptr inbounds float, ptr %1170, i64 2
  %1187 = load float, ptr %1186, align 4, !tbaa !133
  %1188 = fadd float %1185, %1187
  store float %1188, ptr %1186, align 4, !tbaa !133
  %1189 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 1
  %1190 = load float, ptr %5, align 16, !tbaa !133
  %1191 = load float, ptr %1189, align 4, !tbaa !133
  %1192 = fadd float %1190, %1191
  store float %1192, ptr %1189, align 4, !tbaa !133
  %1193 = load float, ptr %520, align 4, !tbaa !133
  %1194 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 1, i64 1
  %1195 = load float, ptr %1194, align 4, !tbaa !133
  %1196 = fadd float %1193, %1195
  store float %1196, ptr %1194, align 4, !tbaa !133
  %1197 = load float, ptr %523, align 8, !tbaa !133
  %1198 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 1, i64 2
  %1199 = load float, ptr %1198, align 4, !tbaa !133
  %1200 = fadd float %1197, %1199
  store float %1200, ptr %1198, align 4, !tbaa !133
  %1201 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 2
  %1202 = load float, ptr %1201, align 4, !tbaa !133
  %1203 = fadd float %1190, %1202
  store float %1203, ptr %1201, align 4, !tbaa !133
  %1204 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 2, i64 1
  %1205 = load float, ptr %1204, align 4, !tbaa !133
  %1206 = fadd float %1193, %1205
  store float %1206, ptr %1204, align 4, !tbaa !133
  %1207 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 2, i64 2
  %1208 = load float, ptr %1207, align 4, !tbaa !133
  %1209 = fadd float %1197, %1208
  store float %1209, ptr %1207, align 4, !tbaa !133
  br label %1210

1210:                                             ; preds = %1177, %1176
  %1211 = load float, ptr %1088, align 16, !tbaa !133
  %1212 = fcmp une float %1211, 0.000000e+00
  br i1 %1212, label %1213, label %1232

1213:                                             ; preds = %1210
  %1214 = getelementptr inbounds %struct.BezTriple, ptr %1170, i64 0, i32 2
  %1215 = load float, ptr %1104, align 16, !tbaa !133
  br i1 %708, label %1216, label %1220

1216:                                             ; preds = %1213
  store float %1215, ptr %1214, align 4, !tbaa !133
  %1217 = fcmp olt float %1215, 0.000000e+00
  br i1 %1217, label %1230, label %1218

1218:                                             ; preds = %1216
  %1219 = fcmp ogt float %1215, 1.000000e+00
  br i1 %1219, label %1230, label %1232

1220:                                             ; preds = %1213
  br i1 %1148, label %1230, label %1221

1221:                                             ; preds = %1220
  %1222 = load float, ptr %1214, align 4, !tbaa !133
  %1223 = fmul float %1133, %1222
  %1224 = fsub float 1.000000e+00, %1222
  %1225 = call float @llvm.fmuladd.f32(float %1224, float %1133, float 1.000000e+00)
  %1226 = select i1 %1149, float %1223, float %1225
  store float %1226, ptr %1214, align 4, !tbaa !133
  %1227 = fcmp olt float %1226, 0.000000e+00
  br i1 %1227, label %1230, label %1228

1228:                                             ; preds = %1221
  %1229 = fcmp ogt float %1226, 1.000000e+00
  br i1 %1229, label %1230, label %1232

1230:                                             ; preds = %1228, %1221, %1220, %1218, %1216
  %1231 = phi float [ 0.000000e+00, %1216 ], [ 1.000000e+00, %1218 ], [ %1133, %1220 ], [ 0.000000e+00, %1221 ], [ 1.000000e+00, %1228 ]
  store float %1231, ptr %1214, align 4, !tbaa !133
  br label %1232

1232:                                             ; preds = %1230, %1228, %1218, %1210
  %1233 = load float, ptr %1092, align 4, !tbaa !133
  %1234 = fcmp une float %1233, 0.000000e+00
  br i1 %1234, label %1235, label %1243

1235:                                             ; preds = %1232
  %1236 = getelementptr inbounds %struct.BezTriple, ptr %1170, i64 0, i32 3
  %1237 = load float, ptr %1150, align 4, !tbaa !133
  br i1 %708, label %1241, label %1238

1238:                                             ; preds = %1235
  %1239 = load float, ptr %1236, align 4, !tbaa !133
  %1240 = fadd float %1233, %1239
  br label %1241

1241:                                             ; preds = %1235, %1238
  %1242 = phi float [ %1240, %1238 ], [ %1237, %1235 ]
  store float %1242, ptr %1236, align 4, !tbaa !133
  br label %1243

1243:                                             ; preds = %1241, %1232
  %1244 = load float, ptr %1096, align 8, !tbaa !133
  %1245 = fcmp une float %1244, 0.000000e+00
  br i1 %1245, label %1246, label %1304

1246:                                             ; preds = %1243
  %1247 = getelementptr inbounds %struct.BezTriple, ptr %1170, i64 0, i32 1
  %1248 = load float, ptr %1151, align 8, !tbaa !133
  br i1 %708, label %1252, label %1249

1249:                                             ; preds = %1246
  %1250 = load float, ptr %1247, align 4, !tbaa !133
  %1251 = fadd float %1244, %1250
  br label %1252

1252:                                             ; preds = %1246, %1249
  %1253 = phi float [ %1251, %1249 ], [ %1248, %1246 ]
  store float %1253, ptr %1247, align 4, !tbaa !133
  br label %1304

1254:                                             ; preds = %1168
  br i1 %718, label %1255, label %1304

1255:                                             ; preds = %1254
  %1256 = getelementptr inbounds %struct.BezTriple, ptr %1170, i64 0, i32 7
  %1257 = load i8, ptr %1256, align 1, !tbaa !151
  %1258 = and i8 %1257, 1
  %1259 = icmp eq i8 %1258, 0
  br i1 %1259, label %1279, label %1260

1260:                                             ; preds = %1255
  br i1 %708, label %1261, label %1267

1261:                                             ; preds = %1260
  %1262 = load float, ptr %6, align 16, !tbaa !133
  store float %1262, ptr %1170, align 4, !tbaa !133
  %1263 = load float, ptr %1152, align 4, !tbaa !133
  %1264 = getelementptr inbounds float, ptr %1170, i64 1
  store float %1263, ptr %1264, align 4, !tbaa !133
  %1265 = load float, ptr %1153, align 8, !tbaa !133
  %1266 = getelementptr inbounds float, ptr %1170, i64 2
  store float %1265, ptr %1266, align 4, !tbaa !133
  br label %1279

1267:                                             ; preds = %1260
  %1268 = load float, ptr %5, align 16, !tbaa !133
  %1269 = load float, ptr %1170, align 4, !tbaa !133
  %1270 = fadd float %1268, %1269
  store float %1270, ptr %1170, align 4, !tbaa !133
  %1271 = load float, ptr %520, align 4, !tbaa !133
  %1272 = getelementptr inbounds float, ptr %1170, i64 1
  %1273 = load float, ptr %1272, align 4, !tbaa !133
  %1274 = fadd float %1271, %1273
  store float %1274, ptr %1272, align 4, !tbaa !133
  %1275 = load float, ptr %523, align 8, !tbaa !133
  %1276 = getelementptr inbounds float, ptr %1170, i64 2
  %1277 = load float, ptr %1276, align 4, !tbaa !133
  %1278 = fadd float %1275, %1277
  store float %1278, ptr %1276, align 4, !tbaa !133
  br label %1279

1279:                                             ; preds = %1267, %1261, %1255
  %1280 = getelementptr inbounds %struct.BezTriple, ptr %1170, i64 0, i32 9
  %1281 = load i8, ptr %1280, align 1, !tbaa !152
  %1282 = and i8 %1281, 1
  %1283 = icmp eq i8 %1282, 0
  br i1 %1283, label %1304, label %1284

1284:                                             ; preds = %1279
  %1285 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 2
  br i1 %708, label %1286, label %1292

1286:                                             ; preds = %1284
  %1287 = load float, ptr %6, align 16, !tbaa !133
  store float %1287, ptr %1285, align 4, !tbaa !133
  %1288 = load float, ptr %1154, align 4, !tbaa !133
  %1289 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 2, i64 1
  store float %1288, ptr %1289, align 4, !tbaa !133
  %1290 = load float, ptr %1155, align 8, !tbaa !133
  %1291 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 2, i64 2
  store float %1290, ptr %1291, align 4, !tbaa !133
  br label %1304

1292:                                             ; preds = %1284
  %1293 = load float, ptr %5, align 16, !tbaa !133
  %1294 = load float, ptr %1285, align 4, !tbaa !133
  %1295 = fadd float %1293, %1294
  store float %1295, ptr %1285, align 4, !tbaa !133
  %1296 = load float, ptr %520, align 4, !tbaa !133
  %1297 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 2, i64 1
  %1298 = load float, ptr %1297, align 4, !tbaa !133
  %1299 = fadd float %1296, %1298
  store float %1299, ptr %1297, align 4, !tbaa !133
  %1300 = load float, ptr %523, align 8, !tbaa !133
  %1301 = getelementptr inbounds [3 x [3 x float]], ptr %1170, i64 0, i64 2, i64 2
  %1302 = load float, ptr %1301, align 4, !tbaa !133
  %1303 = fadd float %1300, %1302
  store float %1303, ptr %1301, align 4, !tbaa !133
  br label %1304

1304:                                             ; preds = %1292, %1286, %1252, %1243, %1279, %1254
  %1305 = getelementptr inbounds %struct.BezTriple, ptr %1170, i64 1
  %1306 = icmp eq i32 %1171, 0
  br i1 %1306, label %1401, label %1168, !llvm.loop !178

1307:                                             ; preds = %1156
  %1308 = getelementptr inbounds %struct.Nurb, ptr %1157, i64 0, i32 7
  %1309 = load i32, ptr %1308, align 4, !tbaa !154
  %1310 = mul nsw i32 %1309, %1162
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1401, label %1312

1312:                                             ; preds = %1307
  %1313 = getelementptr inbounds %struct.Nurb, ptr %1157, i64 0, i32 17
  %1314 = load ptr, ptr %1313, align 8, !tbaa !155
  br label %1315

1315:                                             ; preds = %1312, %1398
  %1316 = phi i32 [ %1318, %1398 ], [ %1310, %1312 ]
  %1317 = phi ptr [ %1399, %1398 ], [ %1314, %1312 ]
  %1318 = add nsw i32 %1316, -1
  %1319 = getelementptr inbounds %struct.BPoint, ptr %1317, i64 0, i32 3
  %1320 = load i16, ptr %1319, align 4, !tbaa !156
  %1321 = and i16 %1320, 1
  %1322 = icmp eq i16 %1321, 0
  br i1 %1322, label %1398, label %1323

1323:                                             ; preds = %1315
  br i1 %718, label %1324, label %1343

1324:                                             ; preds = %1323
  br i1 %708, label %1325, label %1331

1325:                                             ; preds = %1324
  %1326 = load float, ptr %6, align 16, !tbaa !133
  store float %1326, ptr %1317, align 4, !tbaa !133
  %1327 = load float, ptr %1137, align 4, !tbaa !133
  %1328 = getelementptr inbounds float, ptr %1317, i64 1
  store float %1327, ptr %1328, align 4, !tbaa !133
  %1329 = load float, ptr %1138, align 8, !tbaa !133
  %1330 = getelementptr inbounds float, ptr %1317, i64 2
  store float %1329, ptr %1330, align 4, !tbaa !133
  br label %1343

1331:                                             ; preds = %1324
  %1332 = load float, ptr %5, align 16, !tbaa !133
  %1333 = load float, ptr %1317, align 4, !tbaa !133
  %1334 = fadd float %1332, %1333
  store float %1334, ptr %1317, align 4, !tbaa !133
  %1335 = load float, ptr %520, align 4, !tbaa !133
  %1336 = getelementptr inbounds float, ptr %1317, i64 1
  %1337 = load float, ptr %1336, align 4, !tbaa !133
  %1338 = fadd float %1335, %1337
  store float %1338, ptr %1336, align 4, !tbaa !133
  %1339 = load float, ptr %523, align 8, !tbaa !133
  %1340 = getelementptr inbounds float, ptr %1317, i64 2
  %1341 = load float, ptr %1340, align 4, !tbaa !133
  %1342 = fadd float %1339, %1341
  store float %1342, ptr %1340, align 4, !tbaa !133
  br label %1343

1343:                                             ; preds = %1331, %1325, %1323
  %1344 = load float, ptr %1084, align 4, !tbaa !133
  %1345 = fcmp une float %1344, 0.000000e+00
  br i1 %1345, label %1346, label %1354

1346:                                             ; preds = %1343
  %1347 = getelementptr inbounds [4 x float], ptr %1317, i64 0, i64 3
  %1348 = load float, ptr %1139, align 4, !tbaa !133
  br i1 %708, label %1352, label %1349

1349:                                             ; preds = %1346
  %1350 = load float, ptr %1347, align 4, !tbaa !133
  %1351 = fadd float %1344, %1350
  br label %1352

1352:                                             ; preds = %1346, %1349
  %1353 = phi float [ %1351, %1349 ], [ %1348, %1346 ]
  store float %1353, ptr %1347, align 4, !tbaa !133
  br label %1354

1354:                                             ; preds = %1352, %1343
  %1355 = load float, ptr %1088, align 16, !tbaa !133
  %1356 = fcmp une float %1355, 0.000000e+00
  br i1 %1356, label %1357, label %1376

1357:                                             ; preds = %1354
  %1358 = getelementptr inbounds %struct.BPoint, ptr %1317, i64 0, i32 2
  %1359 = load float, ptr %1104, align 16, !tbaa !133
  br i1 %708, label %1360, label %1364

1360:                                             ; preds = %1357
  store float %1359, ptr %1358, align 4, !tbaa !133
  %1361 = fcmp olt float %1359, 0.000000e+00
  br i1 %1361, label %1374, label %1362

1362:                                             ; preds = %1360
  %1363 = fcmp ogt float %1359, 1.000000e+00
  br i1 %1363, label %1374, label %1376

1364:                                             ; preds = %1357
  br i1 %1142, label %1374, label %1365

1365:                                             ; preds = %1364
  %1366 = load float, ptr %1358, align 4, !tbaa !133
  %1367 = fmul float %1133, %1366
  %1368 = fsub float 1.000000e+00, %1366
  %1369 = call float @llvm.fmuladd.f32(float %1368, float %1133, float 1.000000e+00)
  %1370 = select i1 %1143, float %1367, float %1369
  store float %1370, ptr %1358, align 4, !tbaa !133
  %1371 = fcmp olt float %1370, 0.000000e+00
  br i1 %1371, label %1374, label %1372

1372:                                             ; preds = %1365
  %1373 = fcmp ogt float %1370, 1.000000e+00
  br i1 %1373, label %1374, label %1376

1374:                                             ; preds = %1372, %1365, %1364, %1362, %1360
  %1375 = phi float [ 0.000000e+00, %1360 ], [ 1.000000e+00, %1362 ], [ %1133, %1364 ], [ 0.000000e+00, %1365 ], [ 1.000000e+00, %1372 ]
  store float %1375, ptr %1358, align 4, !tbaa !133
  br label %1376

1376:                                             ; preds = %1374, %1372, %1362, %1354
  %1377 = load float, ptr %1092, align 4, !tbaa !133
  %1378 = fcmp une float %1377, 0.000000e+00
  br i1 %1378, label %1379, label %1387

1379:                                             ; preds = %1376
  %1380 = getelementptr inbounds %struct.BPoint, ptr %1317, i64 0, i32 5
  %1381 = load float, ptr %1144, align 4, !tbaa !133
  br i1 %708, label %1385, label %1382

1382:                                             ; preds = %1379
  %1383 = load float, ptr %1380, align 4, !tbaa !133
  %1384 = fadd float %1377, %1383
  br label %1385

1385:                                             ; preds = %1379, %1382
  %1386 = phi float [ %1384, %1382 ], [ %1381, %1379 ]
  store float %1386, ptr %1380, align 4, !tbaa !133
  br label %1387

1387:                                             ; preds = %1385, %1376
  %1388 = load float, ptr %1096, align 8, !tbaa !133
  %1389 = fcmp une float %1388, 0.000000e+00
  br i1 %1389, label %1390, label %1398

1390:                                             ; preds = %1387
  %1391 = getelementptr inbounds %struct.BPoint, ptr %1317, i64 0, i32 1
  %1392 = load float, ptr %1145, align 8, !tbaa !133
  br i1 %708, label %1396, label %1393

1393:                                             ; preds = %1390
  %1394 = load float, ptr %1391, align 4, !tbaa !133
  %1395 = fadd float %1388, %1394
  br label %1396

1396:                                             ; preds = %1390, %1393
  %1397 = phi float [ %1395, %1393 ], [ %1392, %1390 ]
  store float %1397, ptr %1391, align 4, !tbaa !133
  br label %1398

1398:                                             ; preds = %1315, %1396, %1387
  %1399 = getelementptr inbounds %struct.BPoint, ptr %1317, i64 1
  %1400 = icmp eq i32 %1318, 0
  br i1 %1400, label %1401, label %1315, !llvm.loop !179

1401:                                             ; preds = %1398, %1304, %1307, %1163
  call void @BKE_nurb_test2D(ptr noundef nonnull %1157) #6
  call void @BKE_nurb_handles_test(ptr noundef nonnull %1157, i8 noundef zeroext 1) #6
  %1402 = load ptr, ptr %1157, align 8, !tbaa !34
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1520, label %1156, !llvm.loop !180

1404:                                             ; preds = %1080, %1083
  %1405 = icmp eq i16 %719, 22
  br i1 %1405, label %1406, label %1520

1406:                                             ; preds = %1404
  %1407 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %1408 = load float, ptr %1407, align 16
  %1409 = fcmp une float %1408, 0.000000e+00
  %1410 = select i1 %718, i1 true, i1 %1409
  br i1 %1410, label %1411, label %1520

1411:                                             ; preds = %1406
  %1412 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %1413 = load ptr, ptr %1412, align 8, !tbaa !75
  %1414 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 4
  %1415 = load float, ptr %1414, align 16, !tbaa !133
  %1416 = fcmp ugt float %1415, 0.000000e+00
  br i1 %1416, label %1417, label %1441

1417:                                             ; preds = %1411
  %1418 = fcmp ult float %1415, 1.000000e+00
  br i1 %1418, label %1419, label %1441

1419:                                             ; preds = %1417
  %1420 = fsub float %1415, %1408
  %1421 = fcmp olt float %1420, 0.000000e+00
  br i1 %1421, label %1425, label %1422

1422:                                             ; preds = %1419
  %1423 = fcmp ogt float %1420, 1.000000e+00
  br i1 %1423, label %1424, label %1425

1424:                                             ; preds = %1422
  br label %1425

1425:                                             ; preds = %1424, %1422, %1419
  %1426 = phi float [ 1.000000e+00, %1424 ], [ %1420, %1422 ], [ 0.000000e+00, %1419 ]
  %1427 = fcmp olt float %1415, 0.000000e+00
  br i1 %1427, label %1431, label %1428

1428:                                             ; preds = %1425
  %1429 = fcmp ogt float %1415, 1.000000e+00
  br i1 %1429, label %1430, label %1431

1430:                                             ; preds = %1428
  br label %1431

1431:                                             ; preds = %1430, %1428, %1425
  %1432 = phi float [ 1.000000e+00, %1430 ], [ %1415, %1428 ], [ 0.000000e+00, %1425 ]
  %1433 = fcmp ugt float %1432, %1426
  br i1 %1433, label %1436, label %1434

1434:                                             ; preds = %1431
  %1435 = fdiv float %1432, %1426
  br label %1441

1436:                                             ; preds = %1431
  %1437 = fsub float 1.000000e+00, %1432
  %1438 = fneg float %1437
  %1439 = fsub float 1.000000e+00, %1426
  %1440 = fdiv float %1438, %1439
  br label %1441

1441:                                             ; preds = %1411, %1417, %1434, %1436
  %1442 = phi float [ 0.000000e+00, %1411 ], [ 1.000000e+00, %1417 ], [ %1435, %1434 ], [ %1440, %1436 ]
  %1443 = getelementptr inbounds %struct.Lattice, ptr %1413, i64 0, i32 26
  %1444 = load ptr, ptr %1443, align 8, !tbaa !163
  %1445 = load ptr, ptr %1444, align 8, !tbaa !165
  %1446 = getelementptr inbounds %struct.Lattice, ptr %1445, i64 0, i32 2
  %1447 = load i16, ptr %1446, align 8, !tbaa !167
  %1448 = sext i16 %1447 to i32
  %1449 = getelementptr inbounds %struct.Lattice, ptr %1445, i64 0, i32 3
  %1450 = load i16, ptr %1449, align 2, !tbaa !168
  %1451 = sext i16 %1450 to i32
  %1452 = mul nsw i32 %1451, %1448
  %1453 = getelementptr inbounds %struct.Lattice, ptr %1445, i64 0, i32 4
  %1454 = load i16, ptr %1453, align 4, !tbaa !169
  %1455 = sext i16 %1454 to i32
  %1456 = mul nsw i32 %1452, %1455
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1520, label %1458

1458:                                             ; preds = %1441
  %1459 = getelementptr inbounds %struct.Lattice, ptr %1445, i64 0, i32 21
  %1460 = load ptr, ptr %1459, align 8, !tbaa !170
  %1461 = getelementptr inbounds float, ptr %6, i64 1
  %1462 = getelementptr inbounds float, ptr %6, i64 2
  %1463 = fcmp oeq float %1442, 0.000000e+00
  %1464 = fcmp oeq float %1442, 1.000000e+00
  %1465 = or i1 %1463, %1464
  %1466 = fcmp ogt float %1442, 0.000000e+00
  br label %1467

1467:                                             ; preds = %1458, %1517
  %1468 = phi i32 [ %1456, %1458 ], [ %1470, %1517 ]
  %1469 = phi ptr [ %1460, %1458 ], [ %1518, %1517 ]
  %1470 = add nsw i32 %1468, -1
  %1471 = getelementptr inbounds %struct.BPoint, ptr %1469, i64 0, i32 3
  %1472 = load i16, ptr %1471, align 4, !tbaa !156
  %1473 = and i16 %1472, 1
  %1474 = icmp eq i16 %1473, 0
  br i1 %1474, label %1517, label %1475

1475:                                             ; preds = %1467
  br i1 %718, label %1476, label %1495

1476:                                             ; preds = %1475
  br i1 %708, label %1477, label %1483

1477:                                             ; preds = %1476
  %1478 = load float, ptr %6, align 16, !tbaa !133
  store float %1478, ptr %1469, align 4, !tbaa !133
  %1479 = load float, ptr %1461, align 4, !tbaa !133
  %1480 = getelementptr inbounds float, ptr %1469, i64 1
  store float %1479, ptr %1480, align 4, !tbaa !133
  %1481 = load float, ptr %1462, align 8, !tbaa !133
  %1482 = getelementptr inbounds float, ptr %1469, i64 2
  store float %1481, ptr %1482, align 4, !tbaa !133
  br label %1495

1483:                                             ; preds = %1476
  %1484 = load float, ptr %5, align 16, !tbaa !133
  %1485 = load float, ptr %1469, align 4, !tbaa !133
  %1486 = fadd float %1484, %1485
  store float %1486, ptr %1469, align 4, !tbaa !133
  %1487 = load float, ptr %520, align 4, !tbaa !133
  %1488 = getelementptr inbounds float, ptr %1469, i64 1
  %1489 = load float, ptr %1488, align 4, !tbaa !133
  %1490 = fadd float %1487, %1489
  store float %1490, ptr %1488, align 4, !tbaa !133
  %1491 = load float, ptr %523, align 8, !tbaa !133
  %1492 = getelementptr inbounds float, ptr %1469, i64 2
  %1493 = load float, ptr %1492, align 4, !tbaa !133
  %1494 = fadd float %1491, %1493
  store float %1494, ptr %1492, align 4, !tbaa !133
  br label %1495

1495:                                             ; preds = %1483, %1477, %1475
  %1496 = load float, ptr %1407, align 16, !tbaa !133
  %1497 = fcmp une float %1496, 0.000000e+00
  br i1 %1497, label %1498, label %1517

1498:                                             ; preds = %1495
  %1499 = getelementptr inbounds %struct.BPoint, ptr %1469, i64 0, i32 2
  %1500 = load float, ptr %1414, align 16, !tbaa !133
  br i1 %708, label %1501, label %1505

1501:                                             ; preds = %1498
  store float %1500, ptr %1499, align 4, !tbaa !133
  %1502 = fcmp olt float %1500, 0.000000e+00
  br i1 %1502, label %1515, label %1503

1503:                                             ; preds = %1501
  %1504 = fcmp ogt float %1500, 1.000000e+00
  br i1 %1504, label %1515, label %1517

1505:                                             ; preds = %1498
  br i1 %1465, label %1515, label %1506

1506:                                             ; preds = %1505
  %1507 = load float, ptr %1499, align 4, !tbaa !133
  %1508 = fmul float %1442, %1507
  %1509 = fsub float 1.000000e+00, %1507
  %1510 = call float @llvm.fmuladd.f32(float %1509, float %1442, float 1.000000e+00)
  %1511 = select i1 %1466, float %1508, float %1510
  store float %1511, ptr %1499, align 4, !tbaa !133
  %1512 = fcmp olt float %1511, 0.000000e+00
  br i1 %1512, label %1515, label %1513

1513:                                             ; preds = %1506
  %1514 = fcmp ogt float %1511, 1.000000e+00
  br i1 %1514, label %1515, label %1517

1515:                                             ; preds = %1513, %1506, %1505, %1503, %1501
  %1516 = phi float [ 0.000000e+00, %1501 ], [ 1.000000e+00, %1503 ], [ %1442, %1505 ], [ 0.000000e+00, %1506 ], [ 1.000000e+00, %1513 ]
  store float %1516, ptr %1499, align 4, !tbaa !133
  br label %1517

1517:                                             ; preds = %1515, %1513, %1503, %1495, %1467
  %1518 = getelementptr inbounds %struct.BPoint, ptr %1469, i64 1
  %1519 = icmp eq i32 %1470, 0
  br i1 %1519, label %1520, label %1467, !llvm.loop !181

1520:                                             ; preds = %1517, %1401, %1441, %1132, %687, %1406, %1404, %1079, %513
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  ret void
}

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @v3d_transform_butsR(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FE99999A0000000, i32 noundef 0) #6
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = icmp eq ptr %6, @RNA_PoseBone
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %1, ptr noundef nonnull @.str.77) #6
  %9 = getelementptr inbounds i8, ptr %3, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa.struct !183
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %11 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !184
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !186
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i8 [ 1, %8 ], [ %19, %14 ]
  call void @uiLayoutSetActive(ptr noundef %4, i8 noundef zeroext %21) #6
  br label %22

22:                                               ; preds = %20, %2
  %23 = call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #6
  call void @uiItemR(ptr noundef %23, ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %24 = call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #6
  call void @uiItemL(ptr noundef %24, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %24, ptr noundef %1, ptr noundef nonnull @.str.79, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  %25 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FE99999A0000000, i32 noundef 0) #6
  %26 = call i32 @RNA_enum_get(ptr noundef %1, ptr noundef nonnull @.str.80) #6
  %27 = call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 1) #6
  switch i32 %26, label %40 [
    i32 0, label %28
    i32 -1, label %34
  ]

28:                                               ; preds = %22
  call void @uiItemR(ptr noundef %27, ptr noundef %1, ptr noundef nonnull @.str.81, i32 noundef 0, ptr noundef nonnull @.str.82, i32 noundef 0) #6
  %29 = call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 1) #6
  call void @uiItemR(ptr noundef %29, ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef 8, ptr noundef nonnull @.str.84, i32 noundef 0) #6
  %30 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.83) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void @uiItemR(ptr noundef %29, ptr noundef %1, ptr noundef nonnull @.str.85, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  br label %42

33:                                               ; preds = %28
  call void @uiItemL(ptr noundef %29, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  br label %42

34:                                               ; preds = %22
  call void @uiItemR(ptr noundef %27, ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef 0, ptr noundef nonnull @.str.82, i32 noundef 0) #6
  %35 = call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 1) #6
  call void @uiItemR(ptr noundef %35, ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef 8, ptr noundef nonnull @.str.84, i32 noundef 0) #6
  %36 = call i32 @RNA_boolean_get(ptr noundef %1, ptr noundef nonnull @.str.83) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @uiItemR(ptr noundef %35, ptr noundef %1, ptr noundef nonnull @.str.85, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  br label %42

39:                                               ; preds = %34
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  br label %42

40:                                               ; preds = %22
  call void @uiItemR(ptr noundef %27, ptr noundef %1, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.82, i32 noundef 0) #6
  %41 = call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 1) #6
  call void @uiItemL(ptr noundef %41, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  br label %42

42:                                               ; preds = %38, %39, %32, %33, %40
  %43 = phi ptr [ %41, %40 ], [ %29, %33 ], [ %29, %32 ], [ %35, %39 ], [ %35, %38 ]
  call void @uiItemR(ptr noundef %43, ptr noundef %1, ptr noundef nonnull @.str.86, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  %44 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FE99999A0000000, i32 noundef 0) #6
  %45 = call ptr @uiLayoutColumn(ptr noundef %44, i32 noundef 1) #6
  call void @uiItemR(ptr noundef %45, ptr noundef %1, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %46 = call ptr @uiLayoutColumn(ptr noundef %44, i32 noundef 1) #6
  call void @uiItemL(ptr noundef %46, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  call void @uiItemR(ptr noundef %46, ptr noundef %1, ptr noundef nonnull @.str.90, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #6
  %47 = load ptr, ptr %5, align 8, !tbaa !182
  %48 = icmp eq ptr %47, @RNA_Object
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !106
  %52 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !72
  %54 = add i16 %53, -1
  %55 = icmp ult i16 %54, 5
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  call void @uiItemR(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  br label %57

57:                                               ; preds = %49, %56, %42
  ret void
}

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutAbsoluteBlock(ptr noundef) local_unnamed_addr #2

declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetUnitType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiDefButBitS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_cd_flag_ensure(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_handles_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_mesh_active_dvert_get_only(ptr noundef) local_unnamed_addr #2

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_view3d_vgroup_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 8
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = add nsw i32 %2, -8
  tail call void @ED_vgroup_vert_active_mirror(ptr noundef %10, i32 noundef %11) #6
  tail call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #6
  %12 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %13) #6
  br label %14

14:                                               ; preds = %3, %5
  ret void
}

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ED_vgroup_subset_from_select_type(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiDefButO_ptr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiButSetDrawFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_vgroup_vert_active_mirror(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef) local_unnamed_addr #2

declare ptr @view3d_has_buttons_region(ptr noundef) local_unnamed_addr #2

declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!38 = !{!39, !35, i64 368}
!39 = !{!"PanelType", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 208, !36, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !41, i64 376}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!42 = !{!39, !35, i64 352}
!43 = !{!39, !35, i64 360}
!44 = !{!45, !35, i64 168}
!45 = !{!"Scene", !46, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !48, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !47, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !49, i64 280, !59, i64 4264, !48, i64 4296, !48, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !47, i64 4376, !47, i64 4378, !40, i64 4380, !48, i64 4384, !60, i64 4400, !61, i64 4416, !64, i64 4600, !35, i64 4608, !65, i64 4616, !35, i64 4640, !66, i64 4648, !66, i64 4656, !52, i64 4664, !53, i64 4824, !67, i64 4888, !35, i64 4952}
!46 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !47, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!47 = !{!"short", !36, i64 0}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!"RenderData", !50, i64 0, !35, i64 248, !35, i64 256, !54, i64 264, !55, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !51, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !47, i64 432, !47, i64 434, !51, i64 436, !51, i64 440, !51, i64 444, !51, i64 448, !51, i64 452, !47, i64 456, !47, i64 458, !47, i64 460, !47, i64 462, !47, i64 464, !47, i64 466, !40, i64 468, !47, i64 472, !47, i64 474, !47, i64 476, !47, i64 478, !47, i64 480, !47, i64 482, !40, i64 484, !40, i64 488, !47, i64 492, !47, i64 494, !40, i64 496, !40, i64 500, !47, i64 504, !47, i64 506, !47, i64 508, !47, i64 510, !47, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !47, i64 528, !47, i64 530, !47, i64 532, !47, i64 534, !47, i64 536, !47, i64 538, !47, i64 540, !47, i64 542, !56, i64 544, !56, i64 560, !57, i64 576, !48, i64 592, !47, i64 608, !47, i64 610, !51, i64 612, !51, i64 616, !51, i64 620, !51, i64 624, !40, i64 628, !51, i64 632, !51, i64 636, !51, i64 640, !51, i64 644, !47, i64 648, !47, i64 650, !47, i64 652, !47, i64 654, !47, i64 656, !47, i64 658, !51, i64 660, !51, i64 664, !47, i64 668, !47, i64 670, !51, i64 672, !51, i64 676, !36, i64 680, !40, i64 1704, !47, i64 1708, !47, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !47, i64 2524, !47, i64 2526, !51, i64 2528, !51, i64 2532, !47, i64 2536, !47, i64 2538, !51, i64 2540, !47, i64 2544, !47, i64 2546, !40, i64 2548, !47, i64 2552, !47, i64 2554, !47, i64 2556, !47, i64 2558, !51, i64 2560, !51, i64 2564, !35, i64 2568, !40, i64 2576, !51, i64 2580, !36, i64 2584, !58, i64 2616, !40, i64 3976, !40, i64 3980}
!50 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !47, i64 8, !47, i64 10, !51, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !52, i64 24, !53, i64 184}
!51 = !{!"float", !36, i64 0}
!52 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !51, i64 136, !51, i64 140, !35, i64 144, !35, i64 152}
!53 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!54 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !47, i64 48, !47, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!55 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !51, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!56 = !{!"rctf", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!57 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!58 = !{!"BakeData", !50, i64 0, !36, i64 248, !47, i64 1272, !47, i64 1274, !47, i64 1276, !47, i64 1278, !51, i64 1280, !51, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!59 = !{!"AudioData", !40, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !40, i64 16, !47, i64 20, !47, i64 22, !51, i64 24, !51, i64 28}
!60 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!61 = !{!"GameData", !60, i64 0, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !47, i64 32, !36, i64 34, !62, i64 40, !47, i64 64, !47, i64 66, !51, i64 68, !63, i64 72, !51, i64 128, !51, i64 132, !40, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !47, i64 160, !47, i64 162, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180}
!62 = !{!"GameDome", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !51, i64 8, !51, i64 12, !35, i64 16}
!63 = !{!"RecastData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !40, i64 40, !51, i64 44, !51, i64 48, !47, i64 52, !47, i64 54}
!64 = !{!"UnitSettings", !51, i64 0, !36, i64 4, !36, i64 5, !47, i64 6}
!65 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!66 = !{!"long", !36, i64 0}
!67 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!68 = !{!69, !35, i64 32}
!69 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !47, i64 28, !47, i64 30, !35, i64 32}
!70 = !{!71, !35, i64 24}
!71 = !{!"Panel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !36, i64 96, !36, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !47, i64 240, !47, i64 242, !47, i64 244, !47, i64 246, !47, i64 248, !47, i64 250, !40, i64 252, !35, i64 256, !35, i64 264}
!72 = !{!73, !47, i64 136}
!73 = !{!"Object", !46, i64 0, !35, i64 120, !35, i64 128, !47, i64 136, !47, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !74, i64 312, !35, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !51, i64 616, !51, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !51, i64 988, !51, i64 992, !51, i64 996, !51, i64 1000, !51, i64 1004, !51, i64 1008, !51, i64 1012, !51, i64 1016, !51, i64 1020, !51, i64 1024, !51, i64 1028, !51, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !36, i64 1042, !36, i64 1043, !47, i64 1044, !36, i64 1046, !36, i64 1047, !51, i64 1048, !51, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !51, i64 1120, !47, i64 1124, !47, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !47, i64 1162, !36, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !47, i64 1266, !51, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !66, i64 1304, !66, i64 1312, !40, i64 1320, !40, i64 1324, !48, i64 1328, !48, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !48, i64 1400, !35, i64 1416}
!74 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!75 = !{!73, !35, i64 296}
!76 = !{!77, !35, i64 176}
!77 = !{!"bArmature", !46, i64 0, !35, i64 120, !48, i64 128, !48, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !47, i64 208, !47, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!78 = !{!79, !40, i64 136}
!79 = !{!"EditBone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !51, i64 104, !36, i64 108, !36, i64 120, !40, i64 132, !40, i64 136, !51, i64 140, !51, i64 144, !51, i64 148, !51, i64 152, !51, i64 156, !51, i64 160, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !47, i64 180}
!80 = !{!77, !40, i64 216}
!81 = !{!79, !35, i64 24}
!82 = !{!79, !40, i64 132}
!83 = !{!84, !35, i64 240}
!84 = !{!"MetaBall", !46, i64 0, !35, i64 120, !48, i64 128, !48, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 185, !47, i64 186, !47, i64 188, !47, i64 190, !36, i64 192, !36, i64 204, !36, i64 216, !51, i64 228, !51, i64 232, !51, i64 236, !35, i64 240}
!85 = !{!86, !51, i64 248}
!86 = !{!"View3D", !35, i64 0, !35, i64 8, !48, i64 16, !40, i64 32, !51, i64 36, !36, i64 40, !36, i64 56, !51, i64 72, !51, i64 76, !36, i64 80, !36, i64 81, !40, i64 84, !40, i64 88, !47, i64 92, !47, i64 94, !35, i64 96, !35, i64 104, !56, i64 112, !48, i64 128, !35, i64 144, !35, i64 152, !36, i64 160, !40, i64 224, !40, i64 228, !47, i64 232, !47, i64 234, !47, i64 236, !47, i64 238, !47, i64 240, !47, i64 242, !51, i64 244, !51, i64 248, !51, i64 252, !51, i64 256, !36, i64 260, !36, i64 272, !47, i64 284, !47, i64 286, !47, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !48, i64 296, !48, i64 312, !48, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !35, i64 352, !35, i64 360, !35, i64 368}
!87 = !{!73, !40, i64 432}
!88 = !{!89, !40, i64 8}
!89 = !{!"MDeformVert", !35, i64 0, !40, i64 8, !40, i64 12}
!90 = !{!45, !35, i64 264}
!91 = !{!92, !36, i64 447}
!92 = !{!"ToolSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !51, i64 32, !51, i64 36, !51, i64 40, !47, i64 44, !47, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !51, i64 52, !47, i64 56, !36, i64 58, !36, i64 59, !93, i64 64, !95, i64 168, !51, i64 336, !51, i64 340, !47, i64 344, !47, i64 346, !36, i64 348, !36, i64 349, !47, i64 350, !51, i64 352, !51, i64 356, !51, i64 360, !51, i64 364, !51, i64 368, !51, i64 372, !51, i64 376, !51, i64 380, !51, i64 384, !51, i64 388, !47, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !35, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !47, i64 434, !47, i64 436, !47, i64 438, !47, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !40, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !47, i64 464, !47, i64 466, !40, i64 468, !51, i64 472, !51, i64 476, !96, i64 480, !97, i64 608}
!93 = !{!"ImagePaintSettings", !94, i64 0, !47, i64 40, !47, i64 42, !47, i64 44, !47, i64 46, !36, i64 48, !40, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !36, i64 88, !51, i64 100}
!94 = !{!"Paint", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!95 = !{!"ParticleEditSettings", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !36, i64 8, !35, i64 120, !51, i64 128, !51, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !35, i64 152, !35, i64 160}
!96 = !{!"UnifiedPaintSettings", !40, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !36, i64 16, !36, i64 28, !40, i64 40, !36, i64 44, !51, i64 52, !40, i64 56, !40, i64 60, !36, i64 64, !36, i64 65, !51, i64 72, !36, i64 76, !40, i64 84, !51, i64 88, !36, i64 92, !36, i64 100, !40, i64 108, !35, i64 112, !51, i64 120, !40, i64 124}
!97 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !36, i64 20, !36, i64 21, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36}
!98 = !{!99, !36, i64 80}
!99 = !{!"bDeformGroup", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 81}
!100 = !{!36, !36, i64 0}
!101 = !{!102, !47, i64 8948}
!102 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !47, i64 8472, !47, i64 8474, !47, i64 8476, !47, i64 8478, !47, i64 8480, !47, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !47, i64 8496, !47, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !47, i64 8528, !47, i64 8530, !47, i64 8532, !47, i64 8534, !48, i64 8536, !48, i64 8552, !48, i64 8568, !48, i64 8584, !48, i64 8600, !48, i64 8616, !48, i64 8632, !36, i64 8648, !47, i64 8712, !47, i64 8714, !47, i64 8716, !47, i64 8718, !47, i64 8720, !47, i64 8722, !47, i64 8724, !47, i64 8726, !36, i64 8728, !47, i64 8896, !47, i64 8898, !47, i64 8900, !47, i64 8902, !47, i64 8904, !47, i64 8906, !47, i64 8908, !47, i64 8910, !40, i64 8912, !40, i64 8916, !47, i64 8920, !47, i64 8922, !47, i64 8924, !47, i64 8926, !47, i64 8928, !47, i64 8930, !47, i64 8932, !47, i64 8934, !47, i64 8936, !47, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !47, i64 8944, !47, i64 8946, !47, i64 8948, !47, i64 8950, !47, i64 8952, !47, i64 8954, !51, i64 8956, !51, i64 8960, !40, i64 8964, !47, i64 8968, !47, i64 8970, !51, i64 8972, !47, i64 8976, !47, i64 8978, !47, i64 8980, !47, i64 8982, !103, i64 8984, !36, i64 9760, !36, i64 9772, !47, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !51, i64 10904, !51, i64 10908, !40, i64 10912, !47, i64 10916, !47, i64 10918, !47, i64 10920, !47, i64 10922, !47, i64 10924, !47, i64 10926, !104, i64 10928}
!103 = !{!"ColorBand", !47, i64 0, !47, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!104 = !{!"WalkNavigation", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !47, i64 24, !36, i64 26}
!105 = !{!73, !47, i64 1126}
!106 = !{!107, !35, i64 16}
!107 = !{!"PointerRNA", !108, i64 0, !35, i64 8, !35, i64 16}
!108 = !{!"", !35, i64 0}
!109 = distinct !{!109, !110, !111}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!"llvm.loop.unroll.disable"}
!112 = !{!113, !35, i64 0}
!113 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !48, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !47, i64 184}
!114 = !{!113, !35, i64 24}
!115 = !{!113, !35, i64 8}
!116 = !{!113, !35, i64 32}
!117 = !{!113, !35, i64 72}
!118 = !{!113, !47, i64 184}
!119 = !{!86, !35, i64 352}
!120 = !{!121, !35, i64 272}
!121 = !{!"Mesh", !46, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !122, i64 280, !122, i64 480, !122, i64 680, !122, i64 880, !122, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !40, i64 1344, !47, i64 1348, !47, i64 1350, !51, i64 1352, !40, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !47, i64 1366, !35, i64 1368}
!122 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!123 = !{!124, !35, i64 0}
!124 = !{!"BMEditMesh", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !35, i64 48, !66, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !40, i64 88, !47, i64 92, !47, i64 94, !35, i64 96, !40, i64 104}
!125 = !{!126, !40, i64 16}
!126 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !122, i64 144, !122, i64 344, !122, i64 544, !122, i64 744, !47, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !48, i64 960, !35, i64 976, !48, i64 984, !35, i64 1000}
!127 = !{!128, !36, i64 60}
!128 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!129 = !{!128, !35, i64 40}
!130 = !{!128, !35, i64 48}
!131 = !{!132, !36, i64 13}
!132 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!133 = !{!51, !51, i64 0}
!134 = !{!135, !35, i64 0}
!135 = !{!"BMVert", !132, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!136 = distinct !{!136, !110, !111}
!137 = !{!126, !40, i64 20}
!138 = !{!139, !35, i64 0}
!139 = !{!"BMEdge", !132, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !140, i64 48, !140, i64 64}
!140 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!141 = distinct !{!141, !110, !111}
!142 = !{!143, !47, i64 16}
!143 = !{!"Nurb", !35, i64 0, !35, i64 8, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !40, i64 24, !40, i64 28, !36, i64 32, !47, i64 36, !47, i64 38, !47, i64 40, !47, i64 42, !47, i64 44, !47, i64 46, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !47, i64 80, !47, i64 82, !40, i64 84}
!144 = !{!143, !40, i64 24}
!145 = !{!143, !35, i64 72}
!146 = !{!147, !36, i64 52}
!147 = !{!"BezTriple", !36, i64 0, !51, i64 36, !51, i64 40, !51, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !51, i64 56, !51, i64 60, !51, i64 64, !36, i64 68}
!148 = !{!147, !51, i64 40}
!149 = !{!147, !51, i64 44}
!150 = !{!147, !51, i64 36}
!151 = !{!147, !36, i64 51}
!152 = !{!147, !36, i64 53}
!153 = distinct !{!153, !110, !111}
!154 = !{!143, !40, i64 28}
!155 = !{!143, !35, i64 64}
!156 = !{!157, !47, i64 24}
!157 = !{!"BPoint", !36, i64 0, !51, i64 16, !51, i64 20, !47, i64 24, !47, i64 26, !51, i64 28, !51, i64 32}
!158 = !{!157, !51, i64 20}
!159 = !{!157, !51, i64 28}
!160 = !{!157, !51, i64 16}
!161 = distinct !{!161, !110, !111}
!162 = distinct !{!162, !110, !111}
!163 = !{!164, !35, i64 272}
!164 = !{!"Lattice", !46, i64 0, !35, i64 120, !47, i64 128, !47, i64 130, !47, i64 132, !47, i64 134, !47, i64 136, !47, i64 138, !47, i64 140, !47, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !40, i64 148, !51, i64 152, !51, i64 156, !51, i64 160, !51, i64 164, !51, i64 168, !51, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!165 = !{!166, !35, i64 0}
!166 = !{!"EditLatt", !35, i64 0, !40, i64 8, !36, i64 12}
!167 = !{!164, !47, i64 128}
!168 = !{!164, !47, i64 130}
!169 = !{!164, !47, i64 132}
!170 = !{!164, !35, i64 176}
!171 = distinct !{!171, !110, !111}
!172 = !{!86, !47, i64 240}
!173 = !{!102, !51, i64 10908}
!174 = !{!102, !40, i64 8524}
!175 = distinct !{!175, !110, !111}
!176 = distinct !{!176, !110, !111}
!177 = distinct !{!177, !110, !111}
!178 = distinct !{!178, !110, !111}
!179 = distinct !{!179, !110, !111}
!180 = distinct !{!180, !110, !111}
!181 = distinct !{!181, !110, !111}
!182 = !{!107, !35, i64 8}
!183 = !{i64 0, i64 8, !34}
!184 = !{!185, !35, i64 24}
!185 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !48, i64 32, !36, i64 48, !51, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !40, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !51, i64 268, !51, i64 272, !51, i64 276, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !51, i64 296, !51, i64 300, !51, i64 304, !36, i64 308, !40, i64 320, !47, i64 324, !36, i64 326}
!186 = !{!185, !40, i64 176}
