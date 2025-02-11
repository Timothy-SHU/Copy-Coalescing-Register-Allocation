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
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_buttons_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str) #9
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.1, i64 20, i1 false) #9
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false) #9
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @view3d_panel_transform, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 10
  store ptr @view3d_panel_transform_poll, ptr %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %3) #9
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %11 = tail call ptr %10(i64 noundef 408, ptr noundef nonnull @.str.4) #9
  %12 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %12, ptr noundef nonnull align 1 dereferenceable(18) @.str.5, i64 18, i1 false) #9
  %13 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %13, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, i64 14, i1 false) #9
  %14 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 4
  store i16 42, ptr %14, align 1
  %15 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 11
  store ptr @ED_gpencil_panel_standard_header, ptr %15, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.PanelType, ptr %11, i64 0, i32 12
  store ptr @ED_gpencil_panel_standard, ptr %16, align 8, !tbaa !9
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %11) #9
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %18 = tail call ptr %17(i64 noundef 408, ptr noundef nonnull @.str.7) #9
  %19 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %19, ptr noundef nonnull align 1 dereferenceable(17) @.str.8, i64 17, i1 false) #9
  %20 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %20, ptr noundef nonnull align 1 dereferenceable(15) @.str.9, i64 15, i1 false) #9
  %21 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 4
  store i16 42, ptr %21, align 1
  %22 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 12
  store ptr @view3d_panel_vgroup, ptr %22, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.PanelType, ptr %18, i64 0, i32 10
  store ptr @view3d_panel_vgroup_poll, ptr %23, align 8, !tbaa !13
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %18) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_panel_transform(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = tail call ptr @uiLayoutGetBlock(ptr noundef %11) #9
  tail call void @uiBlockSetHandleFunc(ptr noundef %12, ptr noundef nonnull @do_view3d_region_buttons, ptr noundef null) #9
  %13 = load ptr, ptr %10, align 8, !tbaa !41
  %14 = tail call ptr @uiLayoutColumn(ptr noundef %13, i32 noundef 0) #9
  %15 = icmp eq ptr %9, %5
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !43
  switch i16 %18, label %21 [
    i16 25, label %19
    i16 5, label %20
  ]

19:                                               ; preds = %16
  tail call fastcc void @v3d_editarmature_buts(ptr noundef %14, ptr noundef nonnull %5) #10
  br label %34

20:                                               ; preds = %16
  tail call fastcc void @v3d_editmetaball_buts(ptr noundef %14, ptr noundef nonnull %5) #10
  br label %34

21:                                               ; preds = %16
  %22 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %23 = getelementptr inbounds %struct.View3D, ptr %22, i64 0, i32 31
  %24 = load float, ptr %23, align 8, !tbaa !46
  %25 = tail call fastcc float @max_ff(float noundef %24) #10
  %26 = fmul float %25, 1.000000e+04
  tail call fastcc void @v3d_editvertex_buts(ptr noundef %14, ptr noundef %22, ptr noundef nonnull %5, float noundef %26) #10
  br label %34

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !48
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call fastcc void @v3d_posearmature_buts(ptr noundef %14, ptr noundef nonnull %9) #10
  br label %34

33:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @RNA_id_pointer_create(ptr noundef nonnull %9, ptr noundef nonnull %3) #9
  call fastcc void @v3d_transform_butsR(ptr noundef %14, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %34

34:                                               ; preds = %32, %33, %19, %21, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_panel_transform_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_gpencil_panel_standard_header(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @ED_gpencil_panel_standard(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_panel_vgroup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef %10) #9
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = tail call ptr @ED_mesh_active_dvert_get_only(ptr noundef %16) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %121, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.MDeformVert, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !49
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %121, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.92, i8 noundef zeroext 1) #9
  %27 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.93, i8 noundef zeroext 1) #9
  %28 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.94, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %25, i64 0, i32 63
  %30 = load i8, ptr %29, align 1, !tbaa !52
  %31 = zext i8 %30 to i32
  tail call void @uiBlockSetHandleFunc(ptr noundef %11, ptr noundef nonnull @do_view3d_vgroup_buttons, ptr noundef null) #9
  %32 = load ptr, ptr %9, align 8, !tbaa !41
  %33 = tail call ptr @uiLayoutColumn(ptr noundef %32, i32 noundef 1) #9
  %34 = tail call ptr @uiLayoutRow(ptr noundef %33, i32 noundef 1) #9
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_ToolSettings, ptr noundef %25, ptr noundef nonnull %4) #9
  call void @uiItemR(ptr noundef %34, ptr noundef nonnull %4, ptr noundef nonnull @.str.95, i32 noundef 2, ptr noundef null, i32 noundef 0) #9
  %35 = call ptr @uiLayoutColumn(ptr noundef %33, i32 noundef 1) #9
  %36 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %16, i32 noundef %31, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %37 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 25
  %38 = load ptr, ptr %37, align 8, !tbaa !5
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
  %49 = load i8, ptr %48, align 8, !tbaa !59
  %50 = and i8 %49, 1
  %51 = zext i32 %47 to i64
  %52 = getelementptr inbounds i8, ptr %36, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !61
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %91, label %55

55:                                               ; preds = %43
  %56 = call ptr @defvert_find_index(ptr noundef nonnull %17, i32 noundef %47) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %91, label %58

58:                                               ; preds = %55
  %59 = call ptr @uiLayoutSplit(ptr noundef %35, float noundef 0x3FDCCCCCC0000000, i32 noundef 1) #9
  %60 = call ptr @uiLayoutRow(ptr noundef %59, i32 noundef 1) #9
  %61 = getelementptr inbounds %struct.bDeformGroup, ptr %44, i64 0, i32 2
  %62 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !62
  %63 = sext i16 %62 to i32
  %64 = mul nsw i32 %63, 5
  %65 = trunc i32 %64 to i16
  %66 = call ptr @uiDefButO_ptr(ptr noundef %11, i32 noundef 512, ptr noundef %26, i32 noundef 6, ptr noundef nonnull %61, i32 noundef 0, i32 noundef %46, i16 noundef signext %65, i16 noundef signext %62, ptr noundef nonnull @.str.36) #9
  %67 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %66) #9
  call void @RNA_int_set(ptr noundef %67, ptr noundef nonnull @.str.96, i32 noundef %47) #9
  call void @uiButSetDrawFlag(ptr noundef %66, i32 noundef 8) #9
  %68 = load i16, ptr %41, align 2, !tbaa !66
  %69 = zext i16 %68 to i32
  %70 = add i32 %47, 1
  %71 = icmp eq i32 %70, %69
  br i1 %71, label %73, label %72

72:                                               ; preds = %58
  call void @uiButSetFlag(ptr noundef %66, i32 noundef 131072) #9
  br label %73

73:                                               ; preds = %72, %58
  %74 = call ptr @uiLayoutRow(ptr noundef %59, i32 noundef 1) #9
  %75 = icmp eq i8 %50, 0
  %76 = xor i8 %50, 1
  call void @uiLayoutSetEnabled(ptr noundef %74, i8 noundef zeroext %76) #9
  %77 = add i32 %47, 8
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !62
  %79 = shl i16 %78, 2
  %80 = getelementptr inbounds %struct.MDeformWeight, ptr %56, i64 0, i32 1
  %81 = call ptr @uiDefButF(ptr noundef %11, i32 noundef 2560, i32 noundef %77, ptr noundef nonnull @.str.36, i32 noundef %64, i32 noundef %46, i16 noundef signext %79, i16 noundef signext %78, ptr noundef nonnull %80, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.36) #9
  call void @uiButSetDrawFlag(ptr noundef %81, i32 noundef 2) #9
  %82 = zext nneg i8 %50 to i32
  %83 = add i32 %45, %82
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %3, ptr noundef %27) #9
  call void @RNA_int_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.96, i32 noundef %47) #9
  %84 = select i1 %75, i32 598, i32 77
  %85 = load ptr, ptr %42, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %74, ptr noundef %27, ptr noundef nonnull @.str.36, i32 noundef %84, ptr noundef %85, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %3, ptr noundef %28) #9
  call void @RNA_int_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.96, i32 noundef %47) #9
  %86 = select i1 %75, i32 19, i32 41
  %87 = load ptr, ptr %42, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %74, ptr noundef %28, ptr noundef nonnull @.str.36, i32 noundef %86, ptr noundef %87, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !62
  %89 = sext i16 %88 to i32
  %90 = sub nsw i32 %46, %89
  br label %91

91:                                               ; preds = %55, %73, %43
  %92 = phi i32 [ %46, %43 ], [ %90, %73 ], [ %46, %55 ]
  %93 = phi i32 [ %45, %43 ], [ %83, %73 ], [ %45, %55 ]
  %94 = add i32 %47, 1
  %95 = load ptr, ptr %44, align 8, !tbaa !5
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %43, !llvm.loop !70

97:                                               ; preds = %91
  %98 = add nsw i32 %92, -2
  %99 = icmp eq i32 %93, 0
  br label %100

100:                                              ; preds = %97, %23
  %101 = phi i32 [ -2, %23 ], [ %98, %97 ]
  %102 = phi i1 [ true, %23 ], [ %99, %97 ]
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %103(ptr noundef %36) #9
  %104 = load ptr, ptr %9, align 8, !tbaa !41
  %105 = call ptr @uiLayoutColumn(ptr noundef %104, i32 noundef 1) #9
  %106 = call ptr @uiLayoutRow(ptr noundef %105, i32 noundef 1) #9
  %107 = call ptr @WM_operatortype_find(ptr noundef nonnull @.str.97, i8 noundef zeroext 1) #9
  %108 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !62
  %109 = mul i16 %108, 5
  %110 = call ptr @uiDefButO_ptr(ptr noundef %11, i32 noundef 512, ptr noundef %107, i32 noundef 6, ptr noundef nonnull @.str.98, i32 noundef 0, i32 noundef %101, i16 noundef signext %109, i16 noundef signext %108, ptr noundef nonnull @.str.99) #9
  br i1 %102, label %112, label %111

111:                                              ; preds = %100
  call void @uiButSetFlag(ptr noundef %110, i32 noundef 2048) #9
  br label %112

112:                                              ; preds = %111, %100
  %113 = call ptr @WM_operatortype_find(ptr noundef nonnull @.str.100, i8 noundef zeroext 1) #9
  %114 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !62
  %115 = sext i16 %114 to i32
  %116 = mul nsw i32 %115, 5
  %117 = trunc i32 %116 to i16
  %118 = call ptr @uiDefButO_ptr(ptr noundef %11, i32 noundef 512, ptr noundef %113, i32 noundef 6, ptr noundef nonnull @.str.101, i32 noundef %116, i32 noundef %101, i16 noundef signext %117, i16 noundef signext %114, ptr noundef nonnull @.str.102) #9
  br i1 %102, label %120, label %119

119:                                              ; preds = %112
  call void @uiButSetFlag(ptr noundef %118, i32 noundef 2048) #9
  br label %120

120:                                              ; preds = %119, %112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %121

121:                                              ; preds = %120, %19, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_panel_vgroup_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %9) #9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef nonnull %9) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14, %11
  %18 = tail call ptr @ED_mesh_active_dvert_get_only(ptr noundef nonnull %9) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.MDeformVert, ptr %18, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !49
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %17, %2, %7, %14, %20
  %26 = phi i32 [ %24, %20 ], [ 0, %14 ], [ 0, %7 ], [ 0, %2 ], [ 0, %17 ]
  ret i32 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_properties(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_properties_toggle_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_properties_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %4 = tail call ptr @view3d_has_buttons_region(ptr noundef %3) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_view3d_region_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  switch i32 %2, label %19 [
    i32 2, label %14
    i32 1008, label %16
  ]

14:                                               ; preds = %12
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  tail call void @ED_area_tag_redraw(ptr noundef %15) #9
  br label %20

16:                                               ; preds = %12
  %17 = icmp eq ptr %13, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call fastcc void @v3d_editvertex_buts(ptr noundef null, ptr noundef %5, ptr noundef nonnull %13, float noundef 1.000000e+00) #10
  tail call void @DAG_id_tag_update(ptr noundef nonnull %13, i16 noundef signext 2) #9
  br label %19

19:                                               ; preds = %16, %18, %12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %5) #9
  br label %20

20:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @v3d_editarmature_buts(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !82
  %13 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !84
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %2
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef 0) #9
  br label %31

18:                                               ; preds = %10
  call void @RNA_pointer_create(ptr noundef nonnull %6, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %8, ptr noundef nonnull %3) #9
  %19 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %3, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %20 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !86
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %3, ptr noundef nonnull @.str.15) #9
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %4, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %30

29:                                               ; preds = %23, %18
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef 0) #9
  br label %30

30:                                               ; preds = %29, %28
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %3, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %3, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %3, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %3, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef 0) #9
  br label %31

31:                                               ; preds = %30, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @v3d_editmetaball_buts(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MetaBall, ptr %6, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  call void @RNA_pointer_create(ptr noundef nonnull %6, ptr noundef nonnull @RNA_MetaBall, ptr noundef nonnull %6, ptr noundef nonnull %3) #9
  %13 = load ptr, ptr %9, align 8, !tbaa !87
  call void @RNA_pointer_create(ptr noundef nonnull %6, ptr noundef nonnull @RNA_MetaElement, ptr noundef %13, ptr noundef nonnull %4) #9
  %14 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %15 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #9
  %16 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.27) #9
  switch i32 %16, label %21 [
    i32 6, label %20
    i32 7, label %17
    i32 4, label %18
    i32 5, label %19
  ]

17:                                               ; preds = %12
  call void @uiItemL(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef 0) #9
  br label %21

18:                                               ; preds = %12
  call void @uiItemL(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  br label %21

19:                                               ; preds = %12
  call void @uiItemL(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef 0) #9
  br label %21

20:                                               ; preds = %12
  call void @uiItemL(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef 0) #9
  br label %21

21:                                               ; preds = %17, %18, %19, %20, %12, %2, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #4 {
  %2 = fcmp olt float %0, 1.000000e+00
  %3 = select i1 %2, float 1.000000e+00, float %0
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @v3d_editvertex_buts(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [8 x float], align 16
  %6 = alloca [8 x float], align 16
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = icmp eq ptr %0, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef nonnull %0) #9
  br label %13

13:                                               ; preds = %4, %11
  %14 = phi ptr [ %12, %11 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @fill_vn_fl(ptr noundef nonnull %5, i32 noundef 8, float noundef 0.000000e+00) #9
  %15 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 51
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %20 = call ptr %19(i64 noundef 76, ptr noundef nonnull @.str.35) #9
  store ptr %20, ptr %15, align 8, !tbaa !89
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %20, %18 ], [ %16, %13 ]
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !43
  switch i16 %24, label %325 [
    i16 1, label %25
    i16 2, label %121
    i16 3, label %121
    i16 22, label %262
  ]

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = getelementptr inbounds %struct.Mesh, ptr %27, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !90
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  %31 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 24
  %32 = call i32 @CustomData_get_offset(ptr noundef nonnull %31, i32 noundef 29) #9
  %33 = call i32 @CustomData_get_offset(ptr noundef nonnull %31, i32 noundef 36) #9
  %34 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 25
  %35 = call i32 @CustomData_get_offset(ptr noundef nonnull %34, i32 noundef 29) #9
  %36 = call i32 @CustomData_get_offset(ptr noundef nonnull %34, i32 noundef 30) #9
  %37 = icmp ne i32 %33, -1
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !95
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %25
  %43 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef nonnull %30, i8 noundef zeroext 1) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %73, label %45

45:                                               ; preds = %42
  %46 = icmp eq i32 %32, -1
  %47 = sext i32 %32 to i64
  %48 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %49 = sext i32 %33 to i64
  %50 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  br label %51

51:                                               ; preds = %45, %69
  %52 = phi i32 [ 0, %45 ], [ %70, %69 ]
  %53 = phi ptr [ %43, %45 ], [ %71, %69 ]
  %54 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %53) #10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = add nsw i32 %52, 1
  %58 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %58) #10
  br i1 %46, label %65, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %53, align 8, !tbaa !97
  %61 = getelementptr inbounds i8, ptr %60, i64 %47
  %62 = load float, ptr %61, align 4, !tbaa !100
  %63 = load float, ptr %48, align 4, !tbaa !100
  %64 = fadd float %62, %63
  store float %64, ptr %48, align 4, !tbaa !100
  br label %65

65:                                               ; preds = %59, %56
  br i1 %37, label %66, label %69

66:                                               ; preds = %65
  %67 = load ptr, ptr %53, align 8, !tbaa !97
  %68 = getelementptr inbounds i8, ptr %67, i64 %49
  call fastcc void @add_v2_v2(ptr noundef nonnull %50, ptr noundef %68) #10
  br label %69

69:                                               ; preds = %51, %66, %65
  %70 = phi i32 [ %57, %66 ], [ %57, %65 ], [ %52, %51 ]
  %71 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %51, !llvm.loop !101

73:                                               ; preds = %69, %42, %25
  %74 = phi i32 [ 0, %25 ], [ 0, %42 ], [ %70, %69 ]
  %75 = icmp ne i32 %35, -1
  %76 = icmp ne i32 %36, -1
  %77 = select i1 %75, i1 true, i1 %76
  %78 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 5
  %79 = load i32, ptr %78, align 4, !tbaa !102
  br i1 %77, label %80, label %115

80:                                               ; preds = %73
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %115, label %82

82:                                               ; preds = %80
  %83 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef nonnull %30, i8 noundef zeroext 2) #10
  %84 = icmp eq ptr %83, null
  br i1 %84, label %115, label %85

85:                                               ; preds = %82
  %86 = sext i32 %35 to i64
  %87 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %88 = sext i32 %36 to i64
  %89 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 7
  br label %90

90:                                               ; preds = %85, %111
  %91 = phi i32 [ 0, %85 ], [ %112, %111 ]
  %92 = phi ptr [ %83, %85 ], [ %113, %111 ]
  %93 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %92) #10
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %90
  br i1 %75, label %96, label %102

96:                                               ; preds = %95
  %97 = load ptr, ptr %92, align 8, !tbaa !103
  %98 = getelementptr inbounds i8, ptr %97, i64 %86
  %99 = load float, ptr %98, align 4, !tbaa !100
  %100 = load float, ptr %87, align 8, !tbaa !100
  %101 = fadd float %99, %100
  store float %101, ptr %87, align 8, !tbaa !100
  br label %102

102:                                              ; preds = %96, %95
  br i1 %76, label %103, label %109

103:                                              ; preds = %102
  %104 = load ptr, ptr %92, align 8, !tbaa !103
  %105 = getelementptr inbounds i8, ptr %104, i64 %88
  %106 = load float, ptr %105, align 4, !tbaa !100
  %107 = load float, ptr %89, align 4, !tbaa !100
  %108 = fadd float %106, %107
  store float %108, ptr %89, align 4, !tbaa !100
  br label %109

109:                                              ; preds = %103, %102
  %110 = add nsw i32 %91, 1
  br label %111

111:                                              ; preds = %90, %109
  %112 = phi i32 [ %110, %109 ], [ %91, %90 ]
  %113 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #10
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %90, !llvm.loop !106

115:                                              ; preds = %111, %73, %82, %80
  %116 = phi i32 [ 0, %80 ], [ 0, %82 ], [ %79, %73 ], [ %112, %111 ]
  %117 = icmp ne i32 %74, 0
  %118 = icmp ne i32 %116, 0
  %119 = select i1 %117, i1 true, i1 %118
  %120 = zext i1 %119 to i8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  br label %316

121:                                              ; preds = %21, %21
  %122 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %123 = load ptr, ptr %122, align 8, !tbaa !79
  %124 = call ptr @BKE_curve_editNurbs_get(ptr noundef %123) #9
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %126 = icmp eq ptr %125, null
  br i1 %126, label %325, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %129 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %130 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  %131 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  br label %132

132:                                              ; preds = %127, %251
  %133 = phi ptr [ %125, %127 ], [ %257, %251 ]
  %134 = phi i32 [ 0, %127 ], [ %256, %251 ]
  %135 = phi i32 [ 0, %127 ], [ %255, %251 ]
  %136 = phi i32 [ 0, %127 ], [ %254, %251 ]
  %137 = phi ptr [ null, %127 ], [ %253, %251 ]
  %138 = phi ptr [ null, %127 ], [ %252, %251 ]
  %139 = getelementptr inbounds %struct.Nurb, ptr %133, i64 0, i32 2
  %140 = load i16, ptr %139, align 8, !tbaa !107
  %141 = icmp eq i16 %140, 1
  %142 = getelementptr inbounds %struct.Nurb, ptr %133, i64 0, i32 6
  %143 = load i32, ptr %142, align 8, !tbaa !109
  br i1 %141, label %144, label %199

144:                                              ; preds = %132
  %145 = icmp eq i32 %143, 0
  br i1 %145, label %251, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.Nurb, ptr %133, i64 0, i32 18
  %148 = load ptr, ptr %147, align 8, !tbaa !110
  br label %149

149:                                              ; preds = %146, %192
  %150 = phi i32 [ %156, %192 ], [ %143, %146 ]
  %151 = phi i32 [ %196, %192 ], [ %134, %146 ]
  %152 = phi i32 [ %195, %192 ], [ %135, %146 ]
  %153 = phi ptr [ %197, %192 ], [ %148, %146 ]
  %154 = phi ptr [ %194, %192 ], [ %137, %146 ]
  %155 = phi ptr [ %193, %192 ], [ %138, %146 ]
  %156 = add nsw i32 %150, -1
  %157 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 0, i32 8
  %158 = load i8, ptr %157, align 4, !tbaa !111
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %176, label %161

161:                                              ; preds = %149
  %162 = getelementptr inbounds [3 x [3 x float]], ptr %153, i64 0, i64 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %162) #10
  %163 = add nsw i32 %151, 1
  %164 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 0, i32 2
  %165 = load <2 x float>, ptr %164, align 4, !tbaa !100
  %166 = load <2 x float>, ptr %129, align 16, !tbaa !100
  %167 = fadd <2 x float> %165, %166
  store <2 x float> %167, ptr %129, align 16, !tbaa !100
  %168 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 0, i32 1
  %169 = load float, ptr %168, align 4, !tbaa !113
  %170 = load float, ptr %131, align 8, !tbaa !100
  %171 = fadd float %169, %170
  store float %171, ptr %131, align 8, !tbaa !100
  %172 = icmp eq i32 %152, 0
  %173 = select i1 %172, ptr %153, ptr %155
  %174 = select i1 %172, ptr @RNA_BezierSplinePoint, ptr %154
  %175 = add nsw i32 %152, 1
  br label %192

176:                                              ; preds = %149
  %177 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 0, i32 7
  %178 = load i8, ptr %177, align 1, !tbaa !114
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %176
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %153) #10
  %182 = add nsw i32 %151, 1
  br label %183

183:                                              ; preds = %181, %176
  %184 = phi i32 [ %182, %181 ], [ %151, %176 ]
  %185 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 0, i32 9
  %186 = load i8, ptr %185, align 1, !tbaa !115
  %187 = and i8 %186, 1
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds [3 x [3 x float]], ptr %153, i64 0, i64 2
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %190) #10
  %191 = add nsw i32 %184, 1
  br label %192

192:                                              ; preds = %183, %189, %161
  %193 = phi ptr [ %173, %161 ], [ %155, %189 ], [ %155, %183 ]
  %194 = phi ptr [ %174, %161 ], [ %154, %189 ], [ %154, %183 ]
  %195 = phi i32 [ %175, %161 ], [ %152, %189 ], [ %152, %183 ]
  %196 = phi i32 [ %163, %161 ], [ %191, %189 ], [ %184, %183 ]
  %197 = getelementptr inbounds %struct.BezTriple, ptr %153, i64 1
  %198 = icmp eq i32 %156, 0
  br i1 %198, label %251, label %149, !llvm.loop !116

199:                                              ; preds = %132
  %200 = getelementptr inbounds %struct.Nurb, ptr %133, i64 0, i32 7
  %201 = load i32, ptr %200, align 4, !tbaa !117
  %202 = mul nsw i32 %201, %143
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %251, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.Nurb, ptr %133, i64 0, i32 17
  %206 = load ptr, ptr %205, align 8, !tbaa !118
  br label %207

207:                                              ; preds = %204, %243
  %208 = phi i32 [ %215, %243 ], [ %202, %204 ]
  %209 = phi i32 [ %248, %243 ], [ %134, %204 ]
  %210 = phi i32 [ %247, %243 ], [ %135, %204 ]
  %211 = phi i32 [ %246, %243 ], [ %136, %204 ]
  %212 = phi ptr [ %249, %243 ], [ %206, %204 ]
  %213 = phi ptr [ %245, %243 ], [ %137, %204 ]
  %214 = phi ptr [ %244, %243 ], [ %138, %204 ]
  %215 = add nsw i32 %208, -1
  %216 = getelementptr inbounds %struct.BPoint, ptr %212, i64 0, i32 3
  %217 = load i16, ptr %216, align 4, !tbaa !119
  %218 = and i16 %217, 1
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %243, label %220

220:                                              ; preds = %207
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %212) #10
  %221 = getelementptr inbounds [4 x float], ptr %212, i64 0, i64 3
  %222 = load float, ptr %221, align 4, !tbaa !100
  %223 = add nsw i32 %211, 1
  %224 = add nsw i32 %209, 1
  %225 = getelementptr inbounds %struct.BPoint, ptr %212, i64 0, i32 2
  %226 = load float, ptr %225, align 4, !tbaa !121
  %227 = load <2 x float>, ptr %128, align 4, !tbaa !100
  %228 = insertelement <2 x float> poison, float %222, i64 0
  %229 = insertelement <2 x float> %228, float %226, i64 1
  %230 = fadd <2 x float> %229, %227
  store <2 x float> %230, ptr %128, align 4, !tbaa !100
  %231 = getelementptr inbounds %struct.BPoint, ptr %212, i64 0, i32 5
  %232 = load float, ptr %231, align 4, !tbaa !122
  %233 = load float, ptr %130, align 4, !tbaa !100
  %234 = fadd float %232, %233
  store float %234, ptr %130, align 4, !tbaa !100
  %235 = getelementptr inbounds %struct.BPoint, ptr %212, i64 0, i32 1
  %236 = load float, ptr %235, align 4, !tbaa !123
  %237 = load float, ptr %131, align 8, !tbaa !100
  %238 = fadd float %236, %237
  store float %238, ptr %131, align 8, !tbaa !100
  %239 = icmp eq i32 %210, 0
  %240 = select i1 %239, ptr %212, ptr %214
  %241 = select i1 %239, ptr @RNA_SplinePoint, ptr %213
  %242 = add nsw i32 %210, 1
  br label %243

243:                                              ; preds = %220, %207
  %244 = phi ptr [ %240, %220 ], [ %214, %207 ]
  %245 = phi ptr [ %241, %220 ], [ %213, %207 ]
  %246 = phi i32 [ %223, %220 ], [ %211, %207 ]
  %247 = phi i32 [ %242, %220 ], [ %210, %207 ]
  %248 = phi i32 [ %224, %220 ], [ %209, %207 ]
  %249 = getelementptr inbounds %struct.BPoint, ptr %212, i64 1
  %250 = icmp eq i32 %215, 0
  br i1 %250, label %251, label %207, !llvm.loop !124

251:                                              ; preds = %243, %192, %199, %144
  %252 = phi ptr [ %138, %144 ], [ %138, %199 ], [ %193, %192 ], [ %244, %243 ]
  %253 = phi ptr [ %137, %144 ], [ %137, %199 ], [ %194, %192 ], [ %245, %243 ]
  %254 = phi i32 [ %136, %144 ], [ %136, %199 ], [ %136, %192 ], [ %246, %243 ]
  %255 = phi i32 [ %135, %144 ], [ %135, %199 ], [ %195, %192 ], [ %247, %243 ]
  %256 = phi i32 [ %134, %144 ], [ %134, %199 ], [ %196, %192 ], [ %248, %243 ]
  %257 = load ptr, ptr %133, align 8, !tbaa !5
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %132, !llvm.loop !125

259:                                              ; preds = %251
  %260 = icmp eq i32 %255, 1
  br i1 %260, label %261, label %316

261:                                              ; preds = %259
  call void @RNA_pointer_create(ptr noundef %123, ptr noundef %253, ptr noundef %252, ptr noundef nonnull %7) #9
  br label %316

262:                                              ; preds = %21
  %263 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %264 = load ptr, ptr %263, align 8, !tbaa !79
  %265 = getelementptr inbounds %struct.Lattice, ptr %264, i64 0, i32 26
  %266 = load ptr, ptr %265, align 8, !tbaa !126
  %267 = load ptr, ptr %266, align 8, !tbaa !128
  %268 = getelementptr inbounds %struct.Lattice, ptr %267, i64 0, i32 2
  %269 = load i16, ptr %268, align 8, !tbaa !130
  %270 = sext i16 %269 to i32
  %271 = getelementptr inbounds %struct.Lattice, ptr %267, i64 0, i32 3
  %272 = load i16, ptr %271, align 2, !tbaa !131
  %273 = sext i16 %272 to i32
  %274 = mul nsw i32 %273, %270
  %275 = getelementptr inbounds %struct.Lattice, ptr %267, i64 0, i32 4
  %276 = load i16, ptr %275, align 4, !tbaa !132
  %277 = sext i16 %276 to i32
  %278 = mul nsw i32 %274, %277
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %325, label %280

280:                                              ; preds = %262
  %281 = getelementptr inbounds %struct.Lattice, ptr %267, i64 0, i32 21
  %282 = load ptr, ptr %281, align 8, !tbaa !133
  %283 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  br label %284

284:                                              ; preds = %280, %306
  %285 = phi i32 [ %278, %280 ], [ %291, %306 ]
  %286 = phi i32 [ 0, %280 ], [ %310, %306 ]
  %287 = phi i32 [ 0, %280 ], [ %309, %306 ]
  %288 = phi ptr [ %282, %280 ], [ %311, %306 ]
  %289 = phi ptr [ null, %280 ], [ %308, %306 ]
  %290 = phi ptr [ null, %280 ], [ %307, %306 ]
  %291 = add nsw i32 %285, -1
  %292 = getelementptr inbounds %struct.BPoint, ptr %288, i64 0, i32 3
  %293 = load i16, ptr %292, align 4, !tbaa !119
  %294 = and i16 %293, 1
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %306, label %296

296:                                              ; preds = %284
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %288) #10
  %297 = add nsw i32 %286, 1
  %298 = getelementptr inbounds %struct.BPoint, ptr %288, i64 0, i32 2
  %299 = load float, ptr %298, align 4, !tbaa !121
  %300 = load float, ptr %283, align 16, !tbaa !100
  %301 = fadd float %299, %300
  store float %301, ptr %283, align 16, !tbaa !100
  %302 = icmp eq i32 %287, 0
  %303 = select i1 %302, ptr @RNA_LatticePoint, ptr %290
  %304 = select i1 %302, ptr %288, ptr %289
  %305 = add nsw i32 %287, 1
  br label %306

306:                                              ; preds = %296, %284
  %307 = phi ptr [ %303, %296 ], [ %290, %284 ]
  %308 = phi ptr [ %304, %296 ], [ %289, %284 ]
  %309 = phi i32 [ %305, %296 ], [ %287, %284 ]
  %310 = phi i32 [ %297, %296 ], [ %286, %284 ]
  %311 = getelementptr inbounds %struct.BPoint, ptr %288, i64 1
  %312 = icmp eq i32 %291, 0
  br i1 %312, label %313, label %284, !llvm.loop !134

313:                                              ; preds = %306
  %314 = icmp eq i32 %309, 1
  br i1 %314, label %315, label %316

315:                                              ; preds = %313
  call void @RNA_pointer_create(ptr noundef %264, ptr noundef %307, ptr noundef %308, ptr noundef nonnull %7) #9
  br label %316

316:                                              ; preds = %313, %315, %259, %261, %115
  %317 = phi i8 [ %38, %115 ], [ 0, %261 ], [ 0, %259 ], [ 0, %315 ], [ 0, %313 ]
  %318 = phi i8 [ %120, %115 ], [ 0, %261 ], [ 0, %259 ], [ 0, %315 ], [ 0, %313 ]
  %319 = phi i32 [ 0, %115 ], [ %254, %261 ], [ %254, %259 ], [ 0, %315 ], [ 0, %313 ]
  %320 = phi i32 [ 0, %115 ], [ 0, %261 ], [ 0, %259 ], [ 1, %315 ], [ %309, %313 ]
  %321 = phi i32 [ 0, %115 ], [ 1, %261 ], [ %255, %259 ], [ 0, %315 ], [ 0, %313 ]
  %322 = phi i32 [ %116, %115 ], [ 0, %261 ], [ 0, %259 ], [ 0, %315 ], [ 0, %313 ]
  %323 = phi i32 [ %74, %115 ], [ %256, %261 ], [ %256, %259 ], [ %310, %315 ], [ %310, %313 ]
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %262, %121, %21, %316
  %326 = call ptr @uiDefBut(ptr noundef %14, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 130, i16 noundef signext 200, i16 noundef signext 20, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.36) #9
  br label %880

327:                                              ; preds = %316
  %328 = sitofp i32 %323 to float
  %329 = fdiv float 1.000000e+00, %328
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %329) #10
  %330 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 28
  %331 = load i16, ptr %330, align 8, !tbaa !135
  %332 = and i16 %331, 8192
  %333 = icmp eq i16 %332, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %327
  %335 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %335, ptr noundef nonnull %5) #9
  br label %336

336:                                              ; preds = %334, %327
  %337 = icmp eq i8 %318, 0
  br i1 %337, label %358, label %338

338:                                              ; preds = %336
  %339 = icmp eq i32 %322, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %338
  %341 = sitofp i32 %322 to float
  %342 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %343 = load <2 x float>, ptr %342, align 8, !tbaa !100
  %344 = insertelement <2 x float> poison, float %341, i64 0
  %345 = shufflevector <2 x float> %344, <2 x float> poison, <2 x i32> zeroinitializer
  %346 = fdiv <2 x float> %343, %345
  store <2 x float> %346, ptr %342, align 8, !tbaa !100
  br label %347

347:                                              ; preds = %338, %340
  %348 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %349 = load float, ptr %348, align 4, !tbaa !100
  %350 = fdiv float %349, %328
  store float %350, ptr %348, align 4, !tbaa !100
  %351 = icmp eq i8 %317, 0
  br i1 %351, label %384, label %352

352:                                              ; preds = %347
  %353 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %354 = load <2 x float>, ptr %353, align 16, !tbaa !100
  %355 = insertelement <2 x float> poison, float %328, i64 0
  %356 = shufflevector <2 x float> %355, <2 x float> poison, <2 x i32> zeroinitializer
  %357 = fdiv <2 x float> %354, %356
  store <2 x float> %357, ptr %353, align 16, !tbaa !100
  br label %384

358:                                              ; preds = %336
  %359 = icmp eq i32 %321, 0
  br i1 %359, label %377, label %360

360:                                              ; preds = %358
  %361 = icmp eq i32 %319, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %360
  %363 = sitofp i32 %319 to float
  %364 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %365 = load float, ptr %364, align 4, !tbaa !100
  %366 = fdiv float %365, %363
  store float %366, ptr %364, align 4, !tbaa !100
  br label %367

367:                                              ; preds = %362, %360
  %368 = sitofp i32 %321 to float
  %369 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %370 = load <2 x float>, ptr %369, align 16, !tbaa !100
  %371 = insertelement <2 x float> poison, float %368, i64 0
  %372 = shufflevector <2 x float> %371, <2 x float> poison, <2 x i32> zeroinitializer
  %373 = fdiv <2 x float> %370, %372
  store <2 x float> %373, ptr %369, align 16, !tbaa !100
  %374 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %375 = load float, ptr %374, align 8, !tbaa !100
  %376 = fdiv float %375, %368
  store float %376, ptr %374, align 8, !tbaa !100
  br label %384

377:                                              ; preds = %358
  %378 = icmp eq i32 %320, 0
  br i1 %378, label %384, label %379

379:                                              ; preds = %377
  %380 = sitofp i32 %320 to float
  %381 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %382 = load float, ptr %381, align 16, !tbaa !100
  %383 = fdiv float %382, %380
  store float %383, ptr %381, align 16, !tbaa !100
  br label %384

384:                                              ; preds = %367, %379, %377, %352, %347
  %385 = icmp eq ptr %14, null
  br i1 %385, label %489, label %386

386:                                              ; preds = %384
  %387 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !136
  %388 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !137
  %389 = sitofp i32 %388 to float
  %390 = fmul float %387, %389
  %391 = fdiv float %390, 7.200000e+01
  %392 = fmul float %391, 2.000000e+01
  %393 = fptosi float %392 to i32
  %394 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %394, ptr noundef nonnull align 16 dereferenceable(32) %5, i64 32, i1 false)
  call void @uiBlockBeginAlign(ptr noundef nonnull %14) #9
  %395 = icmp eq i32 %323, 1
  %396 = icmp eq i32 %321, 0
  %397 = select i1 %396, ptr @.str.38, ptr @.str.37
  %398 = select i1 %395, ptr %397, ptr @.str.39
  %399 = sub nsw i32 200, %393
  %400 = trunc i32 %393 to i16
  %401 = call ptr @uiDefBut(ptr noundef nonnull %14, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %398, i32 noundef 0, i32 noundef %399, i16 noundef signext 200, i16 noundef signext %400, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.36) #9
  call void @uiBlockBeginAlign(ptr noundef nonnull %14) #9
  %402 = sub nsw i32 %399, %393
  %403 = fneg float %3
  %404 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %402, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %394, float noundef %403, float noundef %3, float noundef 1.000000e+01, float noundef 5.000000e+00, ptr noundef nonnull @.str.36) #9
  call void @uiButSetUnitType(ptr noundef %404, i32 noundef 65536) #9
  %405 = sub nsw i32 %402, %393
  %406 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 1
  %407 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %405, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %406, float noundef %403, float noundef %3, float noundef 1.000000e+01, float noundef 5.000000e+00, ptr noundef nonnull @.str.36) #9
  call void @uiButSetUnitType(ptr noundef %407, i32 noundef 65536) #9
  %408 = sub nsw i32 %405, %393
  %409 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 2
  %410 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %408, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %409, float noundef %403, float noundef %3, float noundef 1.000000e+01, float noundef 5.000000e+00, ptr noundef nonnull @.str.36) #9
  call void @uiButSetUnitType(ptr noundef %410, i32 noundef 65536) #9
  %411 = icmp eq i32 %319, %323
  br i1 %411, label %412, label %416

412:                                              ; preds = %386
  %413 = sub nsw i32 %408, %393
  %414 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 3
  %415 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef %413, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %414, float noundef 0x3F847AE140000000, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.36) #9
  br label %416

416:                                              ; preds = %412, %386
  %417 = phi i32 [ %413, %412 ], [ %408, %386 ]
  call void @uiBlockBeginAlign(ptr noundef nonnull %14) #9
  %418 = add nsw i32 %393, 2
  %419 = sub nsw i32 %417, %418
  %420 = call ptr @uiDefButBitS(ptr noundef nonnull %14, i32 noundef 1536, i32 noundef 8192, i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %419, i16 noundef signext 100, i16 noundef signext %400, ptr noundef nonnull %330, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.45) #9
  %421 = call ptr @uiDefButBitS(ptr noundef nonnull %14, i32 noundef 4608, i32 noundef 8192, i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef 100, i32 noundef %419, i16 noundef signext 100, i16 noundef signext %400, ptr noundef nonnull %330, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.47) #9
  call void @uiBlockEndAlign(ptr noundef nonnull %14) #9
  br i1 %337, label %456, label %422

422:                                              ; preds = %416
  %423 = select i1 %395, ptr @.str.48, ptr @.str.49
  %424 = sub nsw i32 %419, %418
  %425 = call ptr @uiDefBut(ptr noundef nonnull %14, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %423, i32 noundef 0, i32 noundef %424, i16 noundef signext 200, i16 noundef signext %400, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.36) #9
  %426 = select i1 %395, ptr @.str.50, ptr @.str.51
  %427 = sub nsw i32 %424, %418
  %428 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 3
  %429 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %426, i32 noundef 0, i32 noundef %427, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %428, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.52) #9
  %430 = icmp eq i8 %317, 0
  br i1 %430, label %440, label %431

431:                                              ; preds = %422
  call void @uiBlockBeginAlign(ptr noundef nonnull %14) #9
  %432 = select i1 %395, ptr @.str.53, ptr @.str.54
  %433 = sub nsw i32 %427, %418
  %434 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 4
  %435 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %432, i32 noundef 0, i32 noundef %433, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %434, float noundef 0.000000e+00, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.55) #9
  %436 = select i1 %395, ptr @.str.56, ptr @.str.57
  %437 = sub nsw i32 %433, %418
  %438 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 5
  %439 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %436, i32 noundef 0, i32 noundef %437, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %438, float noundef 0.000000e+00, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.58) #9
  call void @uiBlockEndAlign(ptr noundef nonnull %14) #9
  br label %440

440:                                              ; preds = %431, %422
  %441 = phi i32 [ %437, %431 ], [ %427, %422 ]
  %442 = icmp eq i32 %322, 0
  br i1 %442, label %488, label %443

443:                                              ; preds = %440
  %444 = icmp eq i32 %322, 1
  %445 = select i1 %444, ptr @.str.59, ptr @.str.60
  %446 = sub nsw i32 %441, %418
  %447 = call ptr @uiDefBut(ptr noundef nonnull %14, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %445, i32 noundef 0, i32 noundef %446, i16 noundef signext 200, i16 noundef signext %400, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.36) #9
  %448 = select i1 %444, ptr @.str.50, ptr @.str.51
  %449 = sub nsw i32 %446, %418
  %450 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 6
  %451 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %448, i32 noundef 0, i32 noundef %449, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %450, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.61) #9
  %452 = select i1 %444, ptr @.str.62, ptr @.str.63
  %453 = sub nsw i32 %449, %418
  %454 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 7
  %455 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull %452, i32 noundef 0, i32 noundef %453, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %454, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.64) #9
  br label %488

456:                                              ; preds = %416
  %457 = icmp eq i32 %321, 1
  br i1 %457, label %458, label %465

458:                                              ; preds = %456
  %459 = sub nsw i32 %419, %418
  %460 = call ptr @uiDefButR(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef %459, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %7, ptr noundef nonnull @.str.66, i32 noundef 0, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef null) #9
  %461 = sub nsw i32 %459, %418
  %462 = call ptr @uiDefButR(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef %461, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %7, ptr noundef nonnull @.str.25, i32 noundef 0, float noundef 0.000000e+00, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef null) #9
  %463 = sub nsw i32 %461, %418
  %464 = call ptr @uiDefButR(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef %463, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %7, ptr noundef nonnull @.str.69, i32 noundef 0, float noundef 0xC0778FDBA0000000, float noundef 0x40778FDBA0000000, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef null) #9
  br label %488

465:                                              ; preds = %456
  %466 = icmp sgt i32 %321, 1
  br i1 %466, label %467, label %477

467:                                              ; preds = %465
  %468 = sub nsw i32 %419, %418
  %469 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 4
  %470 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef %468, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %469, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.71) #9
  %471 = sub nsw i32 %468, %418
  %472 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 5
  %473 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef %471, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %472, float noundef 0.000000e+00, float noundef 1.000000e+02, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.73) #9
  %474 = sub nsw i32 %471, %418
  %475 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 6
  %476 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef %474, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %475, float noundef 0xC0778FDBA0000000, float noundef 0x40778FDBA0000000, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.75) #9
  call void @uiButSetUnitType(ptr noundef %476, i32 noundef 327680) #9
  br label %488

477:                                              ; preds = %465
  %478 = icmp eq i32 %320, 1
  br i1 %478, label %479, label %482

479:                                              ; preds = %477
  %480 = sub nsw i32 %419, %418
  %481 = call ptr @uiDefButR(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef %480, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %7, ptr noundef nonnull @.str.66, i32 noundef 0, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef null) #9
  br label %488

482:                                              ; preds = %477
  %483 = icmp sgt i32 %320, 1
  br i1 %483, label %484, label %488

484:                                              ; preds = %482
  %485 = sub nsw i32 %419, %418
  %486 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4, i64 4
  %487 = call ptr @uiDefButF(ptr noundef nonnull %14, i32 noundef 2560, i32 noundef 1008, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef %485, i16 noundef signext 200, i16 noundef signext %400, ptr noundef nonnull %486, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.71) #9
  br label %488

488:                                              ; preds = %458, %479, %484, %482, %467, %440, %443
  call void @uiBlockEndAlign(ptr noundef nonnull %14) #9
  br label %880

489:                                              ; preds = %384
  %490 = getelementptr inbounds %struct.TransformProperties, ptr %22, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %490, i64 32, i1 false)
  %491 = load i16, ptr %330, align 8, !tbaa !135
  %492 = and i16 %491, 8192
  %493 = icmp eq i16 %492, 0
  br i1 %493, label %498, label %494

494:                                              ; preds = %489
  %495 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  %496 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %497 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %495, ptr noundef nonnull %496) #9
  call void @mul_m4_v3(ptr noundef nonnull %495, ptr noundef nonnull %5) #9
  call void @mul_m4_v3(ptr noundef nonnull %495, ptr noundef nonnull %6) #9
  br label %498

498:                                              ; preds = %494, %489
  %499 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 4
  %500 = load <4 x float>, ptr %499, align 16, !tbaa !100
  %501 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %502 = load <4 x float>, ptr %501, align 16, !tbaa !100
  %503 = fsub <4 x float> %500, %502
  store <4 x float> %503, ptr %501, align 16, !tbaa !100
  %504 = load <4 x float>, ptr %6, align 16, !tbaa !100
  %505 = load <4 x float>, ptr %5, align 16, !tbaa !100
  %506 = fsub <4 x float> %504, %505
  store <4 x float> %506, ptr %5, align 16, !tbaa !100
  %507 = icmp eq i32 %323, 1
  br i1 %507, label %511, label %508

508:                                              ; preds = %498
  %509 = call fastcc float @len_squared_v3(ptr noundef nonnull %5) #10
  %510 = fcmp une float %509, 0.000000e+00
  br label %511

511:                                              ; preds = %508, %498
  %512 = phi i1 [ true, %498 ], [ %510, %508 ]
  %513 = load i16, ptr %23, align 8, !tbaa !43
  %514 = icmp eq i16 %513, 1
  br i1 %514, label %515, label %691

515:                                              ; preds = %511
  %516 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %517 = load float, ptr %516, align 4
  %518 = fcmp une float %517, 0.000000e+00
  %519 = select i1 %512, i1 true, i1 %518
  %520 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %521 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  %522 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %523 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 7
  %524 = load <4 x float>, ptr %520, align 16
  %525 = fcmp une <4 x float> %524, zeroinitializer
  %526 = extractelement <4 x i1> %525, i64 0
  %527 = select i1 %519, i1 true, i1 %526
  %528 = extractelement <4 x i1> %525, i64 1
  %529 = select i1 %527, i1 true, i1 %528
  %530 = extractelement <4 x i1> %525, i64 2
  %531 = select i1 %529, i1 true, i1 %530
  %532 = extractelement <4 x i1> %525, i64 3
  %533 = select i1 %531, i1 true, i1 %532
  br i1 %533, label %534, label %880

534:                                              ; preds = %515
  %535 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %536 = load ptr, ptr %535, align 8, !tbaa !79
  %537 = getelementptr inbounds %struct.Mesh, ptr %536, i64 0, i32 20
  %538 = load ptr, ptr %537, align 8, !tbaa !90
  %539 = load ptr, ptr %538, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  br i1 %529, label %540, label %630

540:                                              ; preds = %534
  %541 = extractelement <4 x float> %524, i64 0
  br i1 %518, label %542, label %550

542:                                              ; preds = %540
  call void @BM_mesh_cd_flag_ensure(ptr noundef %539, ptr noundef nonnull %536, i8 noundef zeroext 1) #9
  %543 = getelementptr inbounds %struct.BMesh, ptr %539, i64 0, i32 24
  %544 = call i32 @CustomData_get_offset(ptr noundef nonnull %543, i32 noundef 29) #9
  %545 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 3
  %546 = load float, ptr %545, align 4, !tbaa !100
  %547 = load float, ptr %516, align 4, !tbaa !100
  %548 = call fastcc float @compute_scale_factor(float noundef %546, float noundef %547) #10
  %549 = load float, ptr %520, align 16, !tbaa !100
  br label %550

550:                                              ; preds = %542, %540
  %551 = phi float [ %549, %542 ], [ %541, %540 ]
  %552 = phi i32 [ %544, %542 ], [ -1, %540 ]
  %553 = phi float [ %548, %542 ], [ 1.000000e+00, %540 ]
  %554 = fcmp une float %551, 0.000000e+00
  br i1 %554, label %555, label %567

555:                                              ; preds = %550
  %556 = getelementptr inbounds %struct.BMesh, ptr %539, i64 0, i32 24
  %557 = call i32 @CustomData_get_offset(ptr noundef nonnull %556, i32 noundef 36) #9
  %558 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 4
  %559 = load float, ptr %558, align 16, !tbaa !100
  %560 = load float, ptr %520, align 16, !tbaa !100
  %561 = fcmp une float %559, %560
  %562 = fsub float %559, %560
  %563 = fdiv float %559, %562
  %564 = select i1 %561, float %563, float 1.000000e+00
  %565 = load float, ptr %521, align 4, !tbaa !100
  %566 = fcmp une float %565, 0.000000e+00
  br i1 %566, label %570, label %587

567:                                              ; preds = %550
  %568 = load float, ptr %521, align 4, !tbaa !100
  %569 = fcmp une float %568, 0.000000e+00
  br i1 %569, label %572, label %587

570:                                              ; preds = %555
  %571 = icmp eq i32 %557, -1
  br i1 %571, label %572, label %577

572:                                              ; preds = %567, %570
  %573 = phi float [ %564, %570 ], [ 1.000000e+00, %567 ]
  %574 = getelementptr inbounds %struct.BMesh, ptr %539, i64 0, i32 24
  %575 = call i32 @CustomData_get_offset(ptr noundef nonnull %574, i32 noundef 36) #9
  %576 = load float, ptr %521, align 4, !tbaa !100
  br label %577

577:                                              ; preds = %572, %570
  %578 = phi float [ %576, %572 ], [ %565, %570 ]
  %579 = phi float [ %573, %572 ], [ %564, %570 ]
  %580 = phi i32 [ %575, %572 ], [ %557, %570 ]
  %581 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 5
  %582 = load float, ptr %581, align 4, !tbaa !100
  %583 = fcmp une float %582, %578
  br i1 %583, label %584, label %587

584:                                              ; preds = %577
  %585 = fsub float %582, %578
  %586 = fdiv float %582, %585
  br label %587

587:                                              ; preds = %567, %577, %584, %555
  %588 = phi float [ %579, %584 ], [ %579, %577 ], [ %564, %555 ], [ 1.000000e+00, %567 ]
  %589 = phi i32 [ %580, %584 ], [ %580, %577 ], [ %557, %555 ], [ -1, %567 ]
  %590 = phi float [ %586, %584 ], [ 1.000000e+00, %577 ], [ 1.000000e+00, %555 ], [ 1.000000e+00, %567 ]
  %591 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %539, i8 noundef zeroext 1) #10
  %592 = icmp eq ptr %591, null
  br i1 %592, label %630, label %593

593:                                              ; preds = %587
  %594 = icmp eq i32 %552, -1
  %595 = sext i32 %552 to i64
  %596 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 3
  %597 = icmp eq i32 %589, -1
  %598 = sext i32 %589 to i64
  %599 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 4
  %600 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 5
  br label %601

601:                                              ; preds = %593, %627
  %602 = phi ptr [ %591, %593 ], [ %628, %627 ]
  %603 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %602) #10
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %627, label %605

605:                                              ; preds = %601
  br i1 %512, label %606, label %608

606:                                              ; preds = %605
  %607 = getelementptr inbounds %struct.BMVert, ptr %602, i64 0, i32 2
  call fastcc void @apply_raw_diff_v3(ptr noundef nonnull %607, i32 noundef %323, ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  br label %608

608:                                              ; preds = %606, %605
  br i1 %594, label %613, label %609

609:                                              ; preds = %608
  %610 = load ptr, ptr %602, align 8, !tbaa !97
  %611 = getelementptr inbounds i8, ptr %610, i64 %595
  %612 = load float, ptr %596, align 4, !tbaa !100
  call fastcc void @apply_scale_factor_clamp(ptr noundef %611, i32 noundef %323, float noundef %612, float noundef %553) #10
  br label %613

613:                                              ; preds = %609, %608
  br i1 %597, label %627, label %614

614:                                              ; preds = %613
  %615 = load ptr, ptr %602, align 8, !tbaa !97
  %616 = getelementptr inbounds i8, ptr %615, i64 %598
  %617 = load float, ptr %520, align 16, !tbaa !100
  %618 = fcmp une float %617, 0.000000e+00
  br i1 %618, label %619, label %621

619:                                              ; preds = %614
  %620 = load float, ptr %599, align 16, !tbaa !100
  call fastcc void @apply_scale_factor(ptr noundef %616, i32 noundef %323, float noundef %620, float noundef %617, float noundef %588) #10
  br label %621

621:                                              ; preds = %619, %614
  %622 = load float, ptr %521, align 4, !tbaa !100
  %623 = fcmp une float %622, 0.000000e+00
  br i1 %623, label %624, label %627

624:                                              ; preds = %621
  %625 = getelementptr inbounds [3 x float], ptr %616, i64 0, i64 1
  %626 = load float, ptr %600, align 4, !tbaa !100
  call fastcc void @apply_scale_factor(ptr noundef nonnull %625, i32 noundef %323, float noundef %626, float noundef %622, float noundef %590) #10
  br label %627

627:                                              ; preds = %621, %624, %601, %613
  %628 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #10
  %629 = icmp eq ptr %628, null
  br i1 %629, label %630, label %601, !llvm.loop !138

630:                                              ; preds = %627, %587, %534
  br i1 %512, label %631, label %632

631:                                              ; preds = %630
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %538) #9
  br label %632

632:                                              ; preds = %631, %630
  %633 = load float, ptr %522, align 8, !tbaa !100
  %634 = fcmp une float %633, 0.000000e+00
  %635 = load float, ptr %523, align 4
  %636 = fcmp une float %635, 0.000000e+00
  %637 = select i1 %634, i1 true, i1 %636
  br i1 %637, label %638, label %690

638:                                              ; preds = %632
  br i1 %634, label %639, label %648

639:                                              ; preds = %638
  call void @BM_mesh_cd_flag_ensure(ptr noundef %539, ptr noundef %536, i8 noundef zeroext 2) #9
  %640 = getelementptr inbounds %struct.BMesh, ptr %539, i64 0, i32 25
  %641 = call i32 @CustomData_get_offset(ptr noundef nonnull %640, i32 noundef 29) #9
  %642 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 6
  %643 = load float, ptr %642, align 8, !tbaa !100
  %644 = load float, ptr %522, align 8, !tbaa !100
  %645 = call fastcc float @compute_scale_factor(float noundef %643, float noundef %644) #10
  %646 = sext i32 %641 to i64
  %647 = load float, ptr %523, align 4, !tbaa !100
  br label %648

648:                                              ; preds = %639, %638
  %649 = phi float [ %647, %639 ], [ %635, %638 ]
  %650 = phi i64 [ %646, %639 ], [ -1, %638 ]
  %651 = phi float [ %645, %639 ], [ 1.000000e+00, %638 ]
  %652 = fcmp une float %649, 0.000000e+00
  br i1 %652, label %653, label %661

653:                                              ; preds = %648
  call void @BM_mesh_cd_flag_ensure(ptr noundef %539, ptr noundef %536, i8 noundef zeroext 4) #9
  %654 = getelementptr inbounds %struct.BMesh, ptr %539, i64 0, i32 25
  %655 = call i32 @CustomData_get_offset(ptr noundef nonnull %654, i32 noundef 30) #9
  %656 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 7
  %657 = load float, ptr %656, align 4, !tbaa !100
  %658 = load float, ptr %523, align 4, !tbaa !100
  %659 = call fastcc float @compute_scale_factor(float noundef %657, float noundef %658) #10
  %660 = sext i32 %655 to i64
  br label %661

661:                                              ; preds = %653, %648
  %662 = phi i64 [ %660, %653 ], [ -1, %648 ]
  %663 = phi float [ %659, %653 ], [ 1.000000e+00, %648 ]
  %664 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %539, i8 noundef zeroext 2) #10
  %665 = icmp eq ptr %664, null
  br i1 %665, label %690, label %666

666:                                              ; preds = %661
  %667 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 6
  %668 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 7
  br label %669

669:                                              ; preds = %666, %687
  %670 = phi ptr [ %664, %666 ], [ %688, %687 ]
  %671 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %670) #10
  %672 = icmp eq i8 %671, 0
  br i1 %672, label %687, label %673

673:                                              ; preds = %669
  %674 = load float, ptr %522, align 8, !tbaa !100
  %675 = fcmp une float %674, 0.000000e+00
  br i1 %675, label %676, label %680

676:                                              ; preds = %673
  %677 = load ptr, ptr %670, align 8, !tbaa !103
  %678 = getelementptr inbounds i8, ptr %677, i64 %650
  %679 = load float, ptr %667, align 8, !tbaa !100
  call fastcc void @apply_scale_factor_clamp(ptr noundef %678, i32 noundef %323, float noundef %679, float noundef %651) #10
  br label %680

680:                                              ; preds = %676, %673
  %681 = load float, ptr %523, align 4, !tbaa !100
  %682 = fcmp une float %681, 0.000000e+00
  br i1 %682, label %683, label %687

683:                                              ; preds = %680
  %684 = load ptr, ptr %670, align 8, !tbaa !103
  %685 = getelementptr inbounds i8, ptr %684, i64 %662
  %686 = load float, ptr %668, align 4, !tbaa !100
  call fastcc void @apply_scale_factor_clamp(ptr noundef %685, i32 noundef %323, float noundef %686, float noundef %663) #10
  br label %687

687:                                              ; preds = %669, %683, %680
  %688 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #10
  %689 = icmp eq ptr %688, null
  br i1 %689, label %690, label %669, !llvm.loop !139

690:                                              ; preds = %687, %661, %632
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  br label %880

691:                                              ; preds = %511
  %692 = and i16 %513, -2
  %693 = icmp eq i16 %692, 2
  br i1 %693, label %694, label %830

694:                                              ; preds = %691
  %695 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 3
  %696 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %697 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 5
  %698 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 6
  %699 = load <4 x float>, ptr %695, align 4
  %700 = fcmp une <4 x float> %699, zeroinitializer
  %701 = extractelement <4 x i1> %700, i64 0
  %702 = select i1 %512, i1 true, i1 %701
  %703 = extractelement <4 x i1> %700, i64 1
  %704 = select i1 %702, i1 true, i1 %703
  %705 = extractelement <4 x i1> %700, i64 2
  %706 = select i1 %704, i1 true, i1 %705
  %707 = extractelement <4 x i1> %700, i64 3
  %708 = select i1 %706, i1 true, i1 %707
  br i1 %708, label %709, label %880

709:                                              ; preds = %694
  %710 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %711 = load ptr, ptr %710, align 8, !tbaa !79
  %712 = call ptr @BKE_curve_editNurbs_get(ptr noundef %711) #9
  %713 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 4
  %714 = load float, ptr %713, align 16, !tbaa !100
  %715 = load float, ptr %696, align 16, !tbaa !100
  %716 = call fastcc float @compute_scale_factor(float noundef %714, float noundef %715) #10
  %717 = load ptr, ptr %712, align 8, !tbaa !5
  %718 = icmp eq ptr %717, null
  br i1 %718, label %880, label %719

719:                                              ; preds = %709
  %720 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 3
  %721 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 5
  %722 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 6
  br label %723

723:                                              ; preds = %719, %827
  %724 = phi ptr [ %717, %719 ], [ %828, %827 ]
  %725 = getelementptr inbounds %struct.Nurb, ptr %724, i64 0, i32 2
  %726 = load i16, ptr %725, align 8, !tbaa !107
  %727 = icmp eq i16 %726, 1
  %728 = getelementptr inbounds %struct.Nurb, ptr %724, i64 0, i32 6
  %729 = load i32, ptr %728, align 8, !tbaa !109
  br i1 %727, label %730, label %782

730:                                              ; preds = %723
  %731 = icmp eq i32 %729, 0
  br i1 %731, label %827, label %732

732:                                              ; preds = %730
  %733 = getelementptr inbounds %struct.Nurb, ptr %724, i64 0, i32 18
  %734 = load ptr, ptr %733, align 8, !tbaa !110
  br label %735

735:                                              ; preds = %732, %779
  %736 = phi i32 [ %738, %779 ], [ %729, %732 ]
  %737 = phi ptr [ %780, %779 ], [ %734, %732 ]
  %738 = add nsw i32 %736, -1
  %739 = getelementptr inbounds %struct.BezTriple, ptr %737, i64 0, i32 8
  %740 = load i8, ptr %739, align 4, !tbaa !111
  %741 = and i8 %740, 1
  %742 = icmp eq i8 %741, 0
  br i1 %742, label %765, label %743

743:                                              ; preds = %735
  br i1 %512, label %744, label %747

744:                                              ; preds = %743
  call fastcc void @add_v3_v3(ptr noundef nonnull %737, ptr noundef nonnull %5) #10
  %745 = getelementptr inbounds [3 x [3 x float]], ptr %737, i64 0, i64 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %745, ptr noundef nonnull %5) #10
  %746 = getelementptr inbounds [3 x [3 x float]], ptr %737, i64 0, i64 2
  call fastcc void @add_v3_v3(ptr noundef nonnull %746, ptr noundef nonnull %5) #10
  br label %747

747:                                              ; preds = %744, %743
  %748 = load float, ptr %696, align 16, !tbaa !100
  %749 = fcmp une float %748, 0.000000e+00
  br i1 %749, label %750, label %753

750:                                              ; preds = %747
  %751 = getelementptr inbounds %struct.BezTriple, ptr %737, i64 0, i32 2
  %752 = load float, ptr %713, align 16, !tbaa !100
  call fastcc void @apply_scale_factor_clamp(ptr noundef nonnull %751, i32 noundef %323, float noundef %752, float noundef %716) #10
  br label %753

753:                                              ; preds = %750, %747
  %754 = load float, ptr %697, align 4, !tbaa !100
  %755 = fcmp une float %754, 0.000000e+00
  br i1 %755, label %756, label %759

756:                                              ; preds = %753
  %757 = getelementptr inbounds %struct.BezTriple, ptr %737, i64 0, i32 3
  %758 = load float, ptr %721, align 4, !tbaa !100
  call fastcc void @apply_raw_diff(ptr noundef nonnull %757, i32 noundef %323, float noundef %758, float noundef %754) #10
  br label %759

759:                                              ; preds = %756, %753
  %760 = load float, ptr %698, align 8, !tbaa !100
  %761 = fcmp une float %760, 0.000000e+00
  br i1 %761, label %762, label %779

762:                                              ; preds = %759
  %763 = getelementptr inbounds %struct.BezTriple, ptr %737, i64 0, i32 1
  %764 = load float, ptr %722, align 8, !tbaa !100
  call fastcc void @apply_raw_diff(ptr noundef nonnull %763, i32 noundef %323, float noundef %764, float noundef %760) #10
  br label %779

765:                                              ; preds = %735
  br i1 %512, label %766, label %779

766:                                              ; preds = %765
  %767 = getelementptr inbounds %struct.BezTriple, ptr %737, i64 0, i32 7
  %768 = load i8, ptr %767, align 1, !tbaa !114
  %769 = and i8 %768, 1
  %770 = icmp eq i8 %769, 0
  br i1 %770, label %772, label %771

771:                                              ; preds = %766
  call fastcc void @apply_raw_diff_v3(ptr noundef nonnull %737, i32 noundef %323, ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  br label %772

772:                                              ; preds = %771, %766
  %773 = getelementptr inbounds %struct.BezTriple, ptr %737, i64 0, i32 9
  %774 = load i8, ptr %773, align 1, !tbaa !115
  %775 = and i8 %774, 1
  %776 = icmp eq i8 %775, 0
  br i1 %776, label %779, label %777

777:                                              ; preds = %772
  %778 = getelementptr inbounds [3 x [3 x float]], ptr %737, i64 0, i64 2
  call fastcc void @apply_raw_diff_v3(ptr noundef nonnull %778, i32 noundef %323, ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  br label %779

779:                                              ; preds = %762, %759, %772, %777, %765
  %780 = getelementptr inbounds %struct.BezTriple, ptr %737, i64 1
  %781 = icmp eq i32 %738, 0
  br i1 %781, label %827, label %735, !llvm.loop !140

782:                                              ; preds = %723
  %783 = getelementptr inbounds %struct.Nurb, ptr %724, i64 0, i32 7
  %784 = load i32, ptr %783, align 4, !tbaa !117
  %785 = mul nsw i32 %784, %729
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %827, label %787

787:                                              ; preds = %782
  %788 = getelementptr inbounds %struct.Nurb, ptr %724, i64 0, i32 17
  %789 = load ptr, ptr %788, align 8, !tbaa !118
  br label %790

790:                                              ; preds = %787, %824
  %791 = phi i32 [ %793, %824 ], [ %785, %787 ]
  %792 = phi ptr [ %825, %824 ], [ %789, %787 ]
  %793 = add nsw i32 %791, -1
  %794 = getelementptr inbounds %struct.BPoint, ptr %792, i64 0, i32 3
  %795 = load i16, ptr %794, align 4, !tbaa !119
  %796 = and i16 %795, 1
  %797 = icmp eq i16 %796, 0
  br i1 %797, label %824, label %798

798:                                              ; preds = %790
  br i1 %512, label %799, label %800

799:                                              ; preds = %798
  call fastcc void @apply_raw_diff_v3(ptr noundef nonnull %792, i32 noundef %323, ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  br label %800

800:                                              ; preds = %799, %798
  %801 = load float, ptr %695, align 4, !tbaa !100
  %802 = fcmp une float %801, 0.000000e+00
  br i1 %802, label %803, label %806

803:                                              ; preds = %800
  %804 = getelementptr inbounds [4 x float], ptr %792, i64 0, i64 3
  %805 = load float, ptr %720, align 4, !tbaa !100
  call fastcc void @apply_raw_diff(ptr noundef nonnull %804, i32 noundef %323, float noundef %805, float noundef %801) #10
  br label %806

806:                                              ; preds = %803, %800
  %807 = load float, ptr %696, align 16, !tbaa !100
  %808 = fcmp une float %807, 0.000000e+00
  br i1 %808, label %809, label %812

809:                                              ; preds = %806
  %810 = getelementptr inbounds %struct.BPoint, ptr %792, i64 0, i32 2
  %811 = load float, ptr %713, align 16, !tbaa !100
  call fastcc void @apply_scale_factor_clamp(ptr noundef nonnull %810, i32 noundef %323, float noundef %811, float noundef %716) #10
  br label %812

812:                                              ; preds = %809, %806
  %813 = load float, ptr %697, align 4, !tbaa !100
  %814 = fcmp une float %813, 0.000000e+00
  br i1 %814, label %815, label %818

815:                                              ; preds = %812
  %816 = getelementptr inbounds %struct.BPoint, ptr %792, i64 0, i32 5
  %817 = load float, ptr %721, align 4, !tbaa !100
  call fastcc void @apply_raw_diff(ptr noundef nonnull %816, i32 noundef %323, float noundef %817, float noundef %813) #10
  br label %818

818:                                              ; preds = %815, %812
  %819 = load float, ptr %698, align 8, !tbaa !100
  %820 = fcmp une float %819, 0.000000e+00
  br i1 %820, label %821, label %824

821:                                              ; preds = %818
  %822 = getelementptr inbounds %struct.BPoint, ptr %792, i64 0, i32 1
  %823 = load float, ptr %722, align 8, !tbaa !100
  call fastcc void @apply_raw_diff(ptr noundef nonnull %822, i32 noundef %323, float noundef %823, float noundef %819) #10
  br label %824

824:                                              ; preds = %790, %821, %818
  %825 = getelementptr inbounds %struct.BPoint, ptr %792, i64 1
  %826 = icmp eq i32 %793, 0
  br i1 %826, label %827, label %790, !llvm.loop !141

827:                                              ; preds = %824, %779, %782, %730
  call void @BKE_nurb_test2D(ptr noundef nonnull %724) #9
  call void @BKE_nurb_handles_test(ptr noundef nonnull %724, i8 noundef zeroext 1) #9
  %828 = load ptr, ptr %724, align 8, !tbaa !5
  %829 = icmp eq ptr %828, null
  br i1 %829, label %880, label %723, !llvm.loop !142

830:                                              ; preds = %691
  %831 = icmp eq i16 %513, 22
  br i1 %831, label %832, label %880

832:                                              ; preds = %830
  %833 = getelementptr inbounds [8 x float], ptr %5, i64 0, i64 4
  %834 = load float, ptr %833, align 16
  %835 = fcmp une float %834, 0.000000e+00
  %836 = select i1 %512, i1 true, i1 %835
  br i1 %836, label %837, label %880

837:                                              ; preds = %832
  %838 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %839 = load ptr, ptr %838, align 8, !tbaa !79
  %840 = getelementptr inbounds [8 x float], ptr %6, i64 0, i64 4
  %841 = load float, ptr %840, align 16, !tbaa !100
  %842 = call fastcc float @compute_scale_factor(float noundef %841, float noundef %834) #10
  %843 = getelementptr inbounds %struct.Lattice, ptr %839, i64 0, i32 26
  %844 = load ptr, ptr %843, align 8, !tbaa !126
  %845 = load ptr, ptr %844, align 8, !tbaa !128
  %846 = getelementptr inbounds %struct.Lattice, ptr %845, i64 0, i32 2
  %847 = load i16, ptr %846, align 8, !tbaa !130
  %848 = sext i16 %847 to i32
  %849 = getelementptr inbounds %struct.Lattice, ptr %845, i64 0, i32 3
  %850 = load i16, ptr %849, align 2, !tbaa !131
  %851 = sext i16 %850 to i32
  %852 = mul nsw i32 %851, %848
  %853 = getelementptr inbounds %struct.Lattice, ptr %845, i64 0, i32 4
  %854 = load i16, ptr %853, align 4, !tbaa !132
  %855 = sext i16 %854 to i32
  %856 = mul nsw i32 %852, %855
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %880, label %858

858:                                              ; preds = %837
  %859 = getelementptr inbounds %struct.Lattice, ptr %845, i64 0, i32 21
  %860 = load ptr, ptr %859, align 8, !tbaa !133
  br label %861

861:                                              ; preds = %858, %877
  %862 = phi i32 [ %864, %877 ], [ %856, %858 ]
  %863 = phi ptr [ %878, %877 ], [ %860, %858 ]
  %864 = add nsw i32 %862, -1
  %865 = getelementptr inbounds %struct.BPoint, ptr %863, i64 0, i32 3
  %866 = load i16, ptr %865, align 4, !tbaa !119
  %867 = and i16 %866, 1
  %868 = icmp eq i16 %867, 0
  br i1 %868, label %877, label %869

869:                                              ; preds = %861
  br i1 %512, label %870, label %871

870:                                              ; preds = %869
  call fastcc void @apply_raw_diff_v3(ptr noundef nonnull %863, i32 noundef %323, ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  br label %871

871:                                              ; preds = %870, %869
  %872 = load float, ptr %833, align 16, !tbaa !100
  %873 = fcmp une float %872, 0.000000e+00
  br i1 %873, label %874, label %877

874:                                              ; preds = %871
  %875 = getelementptr inbounds %struct.BPoint, ptr %863, i64 0, i32 2
  %876 = load float, ptr %840, align 16, !tbaa !100
  call fastcc void @apply_scale_factor_clamp(ptr noundef nonnull %875, i32 noundef %323, float noundef %876, float noundef %842) #10
  br label %877

877:                                              ; preds = %871, %874, %861
  %878 = getelementptr inbounds %struct.BPoint, ptr %863, i64 1
  %879 = icmp eq i32 %864, 0
  br i1 %879, label %880, label %861, !llvm.loop !143

880:                                              ; preds = %877, %827, %837, %709, %515, %694, %488, %832, %830, %690, %325
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @v3d_posearmature_buts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %4 = tail call ptr @BKE_pose_channel_active(ptr noundef %1) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.76, i32 noundef 0) #9
  br label %9

7:                                                ; preds = %2
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %8 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #9
  call fastcc void @v3d_transform_butsR(ptr noundef %8, ptr noundef nonnull %3) #10
  br label %9

9:                                                ; preds = %7, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @v3d_transform_butsR(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FE99999A0000000, i32 noundef 0) #9
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = icmp eq ptr %6, @RNA_PoseBone
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.77) #9
  %9 = getelementptr inbounds i8, ptr %3, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa.struct !145
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  %11 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !148
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i8 [ 1, %8 ], [ %19, %14 ]
  call void @uiLayoutSetActive(ptr noundef %4, i8 noundef zeroext %21) #9
  br label %22

22:                                               ; preds = %20, %2
  %23 = call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %23, ptr noundef nonnull %1, ptr noundef nonnull @.str.78, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %24 = call ptr @uiLayoutColumn(ptr noundef %4, i32 noundef 1) #9
  call void @uiItemL(ptr noundef %24, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %24, ptr noundef nonnull %1, ptr noundef nonnull @.str.79, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  %25 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FE99999A0000000, i32 noundef 0) #9
  %26 = call i32 @RNA_enum_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.80) #9
  %27 = call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 1) #9
  switch i32 %26, label %40 [
    i32 0, label %28
    i32 -1, label %34
  ]

28:                                               ; preds = %22
  call void @uiItemR(ptr noundef %27, ptr noundef nonnull %1, ptr noundef nonnull @.str.81, i32 noundef 0, ptr noundef nonnull @.str.82, i32 noundef 0) #9
  %29 = call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %29, ptr noundef nonnull %1, ptr noundef nonnull @.str.83, i32 noundef 8, ptr noundef nonnull @.str.84, i32 noundef 0) #9
  %30 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.83) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void @uiItemR(ptr noundef %29, ptr noundef nonnull %1, ptr noundef nonnull @.str.85, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  br label %42

33:                                               ; preds = %28
  call void @uiItemL(ptr noundef %29, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  br label %42

34:                                               ; preds = %22
  call void @uiItemR(ptr noundef %27, ptr noundef nonnull %1, ptr noundef nonnull @.str.87, i32 noundef 0, ptr noundef nonnull @.str.82, i32 noundef 0) #9
  %35 = call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull @.str.83, i32 noundef 8, ptr noundef nonnull @.str.84, i32 noundef 0) #9
  %36 = call i32 @RNA_boolean_get(ptr noundef nonnull %1, ptr noundef nonnull @.str.83) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @uiItemR(ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull @.str.85, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  br label %42

39:                                               ; preds = %34
  call void @uiItemL(ptr noundef %35, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  br label %42

40:                                               ; preds = %22
  call void @uiItemR(ptr noundef %27, ptr noundef nonnull %1, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.82, i32 noundef 0) #9
  %41 = call ptr @uiLayoutColumn(ptr noundef %25, i32 noundef 1) #9
  call void @uiItemL(ptr noundef %41, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  br label %42

42:                                               ; preds = %38, %39, %32, %33, %40
  %43 = phi ptr [ %41, %40 ], [ %29, %33 ], [ %29, %32 ], [ %35, %39 ], [ %35, %38 ]
  call void @uiItemR(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull @.str.86, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.80, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  %44 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FE99999A0000000, i32 noundef 0) #9
  %45 = call ptr @uiLayoutColumn(ptr noundef %44, i32 noundef 1) #9
  call void @uiItemR(ptr noundef %45, ptr noundef nonnull %1, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %46 = call ptr @uiLayoutColumn(ptr noundef %44, i32 noundef 1) #9
  call void @uiItemL(ptr noundef %46, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  call void @uiItemR(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull @.str.90, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef 0) #9
  %47 = load ptr, ptr %5, align 8, !tbaa !144
  %48 = icmp eq ptr %47, @RNA_Object
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !43
  %54 = add i16 %53, -1
  %55 = icmp ult i16 %54, 5
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %57

57:                                               ; preds = %49, %56, %42
  ret void
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutAbsoluteBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #10
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !149
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !100
  %4 = load float, ptr %0, align 4, !tbaa !100
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !100
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !100
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !100
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !100
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !100
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !100
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !100
  %4 = load float, ptr %0, align 4, !tbaa !100
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !100
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !100
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !100
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  %4 = tail call ptr %3(ptr noundef %0) #9
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !100
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !100
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !100
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !100
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetUnitType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButBitS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load float, ptr %0, align 4, !tbaa !100
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !100
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !100
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: optsize
declare void @BM_mesh_cd_flag_ensure(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @compute_scale_factor(float noundef %0, float noundef %1) unnamed_addr #4 {
  %3 = fcmp ugt float %0, 0.000000e+00
  br i1 %3, label %4, label %28

4:                                                ; preds = %2
  %5 = fcmp ult float %0, 1.000000e+00
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = fsub float %0, %1
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = fcmp ogt float %7, 1.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %6, %9, %11
  %13 = phi float [ 1.000000e+00, %11 ], [ %7, %9 ], [ 0.000000e+00, %6 ]
  %14 = fcmp olt float %0, 0.000000e+00
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = fcmp ogt float %0, 1.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %12, %15, %17
  %19 = phi float [ 1.000000e+00, %17 ], [ %0, %15 ], [ 0.000000e+00, %12 ]
  %20 = fcmp ugt float %19, %13
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = fdiv float %19, %13
  br label %28

23:                                               ; preds = %18
  %24 = fsub float 1.000000e+00, %19
  %25 = fneg float %24
  %26 = fsub float 1.000000e+00, %13
  %27 = fdiv float %25, %26
  br label %28

28:                                               ; preds = %21, %23, %4, %2
  %29 = phi float [ 0.000000e+00, %2 ], [ 1.000000e+00, %4 ], [ %22, %21 ], [ %27, %23 ]
  ret float %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @apply_raw_diff_v3(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #6 {
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #10
  br label %8

7:                                                ; preds = %4
  tail call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef %3) #10
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @apply_scale_factor_clamp(ptr nocapture noundef %0, i32 noundef %1, float noundef %2, float noundef %3) unnamed_addr #6 {
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  store float %2, ptr %0, align 4, !tbaa !100
  %7 = fcmp olt float %2, 0.000000e+00
  br i1 %7, label %24, label %8

8:                                                ; preds = %6
  %9 = fcmp ogt float %2, 1.000000e+00
  br i1 %9, label %24, label %26

10:                                               ; preds = %4
  %11 = fcmp oeq float %3, 0.000000e+00
  %12 = fcmp oeq float %3, 1.000000e+00
  %13 = or i1 %11, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = fcmp ogt float %3, 0.000000e+00
  %16 = load float, ptr %0, align 4, !tbaa !100
  %17 = fmul float %16, %3
  %18 = fsub float 1.000000e+00, %16
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %3, float 1.000000e+00)
  %20 = select i1 %15, float %17, float %19
  store float %20, ptr %0, align 4, !tbaa !100
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = fcmp ogt float %20, 1.000000e+00
  br i1 %23, label %24, label %26

24:                                               ; preds = %22, %14, %10, %8, %6
  %25 = phi float [ 0.000000e+00, %6 ], [ 1.000000e+00, %8 ], [ %3, %10 ], [ 0.000000e+00, %14 ], [ 1.000000e+00, %22 ]
  store float %25, ptr %0, align 4, !tbaa !100
  br label %26

26:                                               ; preds = %24, %22, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @apply_scale_factor(ptr nocapture noundef %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #6 {
  %6 = icmp eq i32 %1, 1
  %7 = fcmp oeq float %2, %3
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load float, ptr %0, align 4, !tbaa !100
  %11 = fmul float %10, %4
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi float [ %11, %9 ], [ %2, %5 ]
  store float %13, ptr %0, align 4, !tbaa !100
  ret void
}

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @apply_raw_diff(ptr nocapture noundef %0, i32 noundef %1, float noundef %2, float noundef %3) unnamed_addr #6 {
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load float, ptr %0, align 4, !tbaa !100
  %8 = fadd float %7, %3
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi float [ %8, %6 ], [ %2, %4 ]
  store float %10, ptr %0, align 4, !tbaa !100
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_handles_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !152
  %5 = icmp eq i8 %2, 1
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %7 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8
  %10 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8
  %11 = load ptr, ptr %8, align 8, !tbaa !5
  store ptr %11, ptr %0, align 8, !tbaa !61
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !100
  store float %3, ptr %0, align 4, !tbaa !100
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !100
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !100
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !100
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !100
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_mesh_active_dvert_get_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_view3d_vgroup_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 8
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = add nsw i32 %2, -8
  tail call void @ED_vgroup_vert_active_mirror(ptr noundef %10, i32 noundef %11) #9
  tail call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #9
  %12 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %13) #9
  br label %14

14:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_vgroup_subset_from_select_type(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButO_ptr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetDrawFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetEnabled(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_vgroup_vert_active_mirror(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @view3d_has_buttons_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!9 = !{!10, !6, i64 368}
!10 = !{!"PanelType", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 80, !7, i64 144, !7, i64 208, !7, i64 272, !11, i64 336, !11, i64 340, !11, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !12, i64 376}
!11 = !{!"int", !7, i64 0}
!12 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!13 = !{!10, !6, i64 352}
!14 = !{!10, !6, i64 360}
!15 = !{!16, !6, i64 168}
!16 = !{!"Scene", !17, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !19, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !18, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !20, i64 280, !30, i64 4264, !19, i64 4296, !19, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !18, i64 4376, !18, i64 4378, !11, i64 4380, !19, i64 4384, !31, i64 4400, !32, i64 4416, !35, i64 4600, !6, i64 4608, !36, i64 4616, !6, i64 4640, !37, i64 4648, !37, i64 4656, !23, i64 4664, !24, i64 4824, !38, i64 4888, !6, i64 4952}
!17 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !18, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!18 = !{!"short", !7, i64 0}
!19 = !{!"ListBase", !6, i64 0, !6, i64 8}
!20 = !{!"RenderData", !21, i64 0, !6, i64 248, !6, i64 256, !25, i64 264, !26, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !22, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !18, i64 432, !18, i64 434, !22, i64 436, !22, i64 440, !22, i64 444, !22, i64 448, !22, i64 452, !18, i64 456, !18, i64 458, !18, i64 460, !18, i64 462, !18, i64 464, !18, i64 466, !11, i64 468, !18, i64 472, !18, i64 474, !18, i64 476, !18, i64 478, !18, i64 480, !18, i64 482, !11, i64 484, !11, i64 488, !18, i64 492, !18, i64 494, !11, i64 496, !11, i64 500, !18, i64 504, !18, i64 506, !18, i64 508, !18, i64 510, !18, i64 512, !7, i64 514, !7, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !18, i64 528, !18, i64 530, !18, i64 532, !18, i64 534, !18, i64 536, !18, i64 538, !18, i64 540, !18, i64 542, !27, i64 544, !27, i64 560, !28, i64 576, !19, i64 592, !18, i64 608, !18, i64 610, !22, i64 612, !22, i64 616, !22, i64 620, !22, i64 624, !11, i64 628, !22, i64 632, !22, i64 636, !22, i64 640, !22, i64 644, !18, i64 648, !18, i64 650, !18, i64 652, !18, i64 654, !18, i64 656, !18, i64 658, !22, i64 660, !22, i64 664, !18, i64 668, !18, i64 670, !22, i64 672, !22, i64 676, !7, i64 680, !11, i64 1704, !18, i64 1708, !18, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !11, i64 2520, !18, i64 2524, !18, i64 2526, !22, i64 2528, !22, i64 2532, !18, i64 2536, !18, i64 2538, !22, i64 2540, !18, i64 2544, !18, i64 2546, !11, i64 2548, !18, i64 2552, !18, i64 2554, !18, i64 2556, !18, i64 2558, !22, i64 2560, !22, i64 2564, !6, i64 2568, !11, i64 2576, !22, i64 2580, !7, i64 2584, !29, i64 2616, !11, i64 3976, !11, i64 3980}
!21 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !18, i64 8, !18, i64 10, !22, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !23, i64 24, !24, i64 184}
!22 = !{!"float", !7, i64 0}
!23 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 72, !22, i64 136, !22, i64 140, !6, i64 144, !6, i64 152}
!24 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!25 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !18, i64 48, !18, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!26 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !22, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !6, i64 64}
!27 = !{!"rctf", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!28 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!29 = !{!"BakeData", !21, i64 0, !7, i64 248, !18, i64 1272, !18, i64 1274, !18, i64 1276, !18, i64 1278, !22, i64 1280, !22, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!30 = !{!"AudioData", !11, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !11, i64 16, !18, i64 20, !18, i64 22, !22, i64 24, !22, i64 28}
!31 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!32 = !{!"GameData", !31, i64 0, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !18, i64 24, !18, i64 26, !18, i64 28, !18, i64 30, !18, i64 32, !7, i64 34, !33, i64 40, !18, i64 64, !18, i64 66, !22, i64 68, !34, i64 72, !22, i64 128, !22, i64 132, !11, i64 136, !18, i64 140, !18, i64 142, !18, i64 144, !18, i64 146, !18, i64 148, !18, i64 150, !18, i64 152, !18, i64 154, !18, i64 156, !18, i64 158, !18, i64 160, !18, i64 162, !22, i64 164, !22, i64 168, !22, i64 172, !22, i64 176, !22, i64 180}
!33 = !{!"GameDome", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !22, i64 8, !22, i64 12, !6, i64 16}
!34 = !{!"RecastData", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !11, i64 40, !22, i64 44, !22, i64 48, !18, i64 52, !18, i64 54}
!35 = !{!"UnitSettings", !22, i64 0, !7, i64 4, !7, i64 5, !18, i64 6}
!36 = !{!"PhysicsSettings", !7, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!37 = !{!"long", !7, i64 0}
!38 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!39 = !{!40, !6, i64 32}
!40 = !{!"Base", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !18, i64 28, !18, i64 30, !6, i64 32}
!41 = !{!42, !6, i64 24}
!42 = !{!"Panel", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 96, !7, i64 160, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !18, i64 240, !18, i64 242, !18, i64 244, !18, i64 246, !18, i64 248, !18, i64 250, !11, i64 252, !6, i64 256, !6, i64 264}
!43 = !{!44, !18, i64 136}
!44 = !{!"Object", !17, i64 0, !6, i64 120, !6, i64 128, !18, i64 136, !18, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !7, i64 152, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !45, i64 312, !6, i64 360, !19, i64 368, !19, i64 384, !19, i64 400, !19, i64 416, !11, i64 432, !11, i64 436, !6, i64 440, !6, i64 448, !11, i64 456, !11, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !22, i64 616, !22, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !11, i64 944, !18, i64 948, !18, i64 950, !18, i64 952, !18, i64 954, !18, i64 956, !18, i64 958, !18, i64 960, !18, i64 962, !18, i64 964, !7, i64 966, !7, i64 967, !11, i64 968, !11, i64 972, !11, i64 976, !11, i64 980, !11, i64 984, !22, i64 988, !22, i64 992, !22, i64 996, !22, i64 1000, !22, i64 1004, !22, i64 1008, !22, i64 1012, !22, i64 1016, !22, i64 1020, !22, i64 1024, !22, i64 1028, !22, i64 1032, !18, i64 1036, !18, i64 1038, !18, i64 1040, !7, i64 1042, !7, i64 1043, !18, i64 1044, !7, i64 1046, !7, i64 1047, !22, i64 1048, !22, i64 1052, !19, i64 1056, !19, i64 1072, !19, i64 1088, !19, i64 1104, !22, i64 1120, !18, i64 1124, !18, i64 1126, !7, i64 1128, !11, i64 1144, !11, i64 1148, !6, i64 1152, !7, i64 1160, !7, i64 1161, !18, i64 1162, !7, i64 1164, !19, i64 1176, !19, i64 1192, !19, i64 1208, !19, i64 1224, !6, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1265, !18, i64 1266, !22, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !37, i64 1304, !37, i64 1312, !11, i64 1320, !11, i64 1324, !19, i64 1328, !19, i64 1344, !6, i64 1360, !6, i64 1368, !6, i64 1376, !7, i64 1384, !6, i64 1392, !19, i64 1400, !6, i64 1416}
!45 = !{!"bAnimVizSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !18, i64 24, !18, i64 26, !18, i64 28, !18, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!46 = !{!47, !22, i64 248}
!47 = !{!"View3D", !6, i64 0, !6, i64 8, !19, i64 16, !11, i64 32, !22, i64 36, !7, i64 40, !7, i64 56, !22, i64 72, !22, i64 76, !7, i64 80, !7, i64 81, !11, i64 84, !11, i64 88, !18, i64 92, !18, i64 94, !6, i64 96, !6, i64 104, !27, i64 112, !19, i64 128, !6, i64 144, !6, i64 152, !7, i64 160, !11, i64 224, !11, i64 228, !18, i64 232, !18, i64 234, !18, i64 236, !18, i64 238, !18, i64 240, !18, i64 242, !22, i64 244, !22, i64 248, !22, i64 252, !22, i64 256, !7, i64 260, !7, i64 272, !18, i64 284, !18, i64 286, !18, i64 288, !7, i64 290, !7, i64 291, !7, i64 292, !7, i64 293, !7, i64 294, !19, i64 296, !19, i64 312, !19, i64 328, !7, i64 344, !7, i64 345, !7, i64 346, !7, i64 347, !6, i64 352, !6, i64 360, !6, i64 368}
!48 = !{!44, !11, i64 432}
!49 = !{!50, !11, i64 8}
!50 = !{!"MDeformVert", !6, i64 0, !11, i64 8, !11, i64 12}
!51 = !{!16, !6, i64 264}
!52 = !{!53, !7, i64 447}
!53 = !{!"ToolSettings", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !22, i64 32, !22, i64 36, !22, i64 40, !18, i64 44, !18, i64 46, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51, !22, i64 52, !18, i64 56, !7, i64 58, !7, i64 59, !54, i64 64, !56, i64 168, !22, i64 336, !22, i64 340, !18, i64 344, !18, i64 346, !7, i64 348, !7, i64 349, !18, i64 350, !22, i64 352, !22, i64 356, !22, i64 360, !22, i64 364, !22, i64 368, !22, i64 372, !22, i64 376, !22, i64 380, !22, i64 384, !22, i64 388, !18, i64 392, !7, i64 394, !7, i64 395, !7, i64 396, !7, i64 399, !6, i64 400, !7, i64 408, !7, i64 409, !7, i64 410, !7, i64 411, !7, i64 412, !7, i64 413, !7, i64 421, !7, i64 429, !7, i64 430, !7, i64 431, !7, i64 432, !7, i64 433, !18, i64 434, !18, i64 436, !18, i64 438, !18, i64 440, !7, i64 442, !7, i64 443, !7, i64 444, !7, i64 445, !7, i64 446, !7, i64 447, !11, i64 448, !11, i64 452, !11, i64 456, !11, i64 460, !18, i64 464, !18, i64 466, !11, i64 468, !22, i64 472, !22, i64 476, !57, i64 480, !58, i64 608}
!54 = !{!"ImagePaintSettings", !55, i64 0, !18, i64 40, !18, i64 42, !18, i64 44, !18, i64 46, !7, i64 48, !11, i64 52, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !22, i64 100}
!55 = !{!"Paint", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!56 = !{!"ParticleEditSettings", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !7, i64 8, !6, i64 120, !22, i64 128, !22, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !6, i64 152, !6, i64 160}
!57 = !{!"UnifiedPaintSettings", !11, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !7, i64 16, !7, i64 28, !11, i64 40, !7, i64 44, !22, i64 52, !11, i64 56, !11, i64 60, !7, i64 64, !7, i64 65, !22, i64 72, !7, i64 76, !11, i64 84, !22, i64 88, !7, i64 92, !7, i64 100, !11, i64 108, !6, i64 112, !22, i64 120, !11, i64 124}
!58 = !{!"MeshStatVis", !7, i64 0, !7, i64 1, !7, i64 3, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !7, i64 20, !7, i64 21, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36}
!59 = !{!60, !7, i64 80}
!60 = !{!"bDeformGroup", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 80, !7, i64 81}
!61 = !{!7, !7, i64 0}
!62 = !{!63, !18, i64 8948}
!63 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !11, i64 8468, !18, i64 8472, !18, i64 8474, !18, i64 8476, !18, i64 8478, !18, i64 8480, !18, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !18, i64 8496, !18, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !18, i64 8528, !18, i64 8530, !18, i64 8532, !18, i64 8534, !19, i64 8536, !19, i64 8552, !19, i64 8568, !19, i64 8584, !19, i64 8600, !19, i64 8616, !19, i64 8632, !7, i64 8648, !18, i64 8712, !18, i64 8714, !18, i64 8716, !18, i64 8718, !18, i64 8720, !18, i64 8722, !18, i64 8724, !18, i64 8726, !7, i64 8728, !18, i64 8896, !18, i64 8898, !18, i64 8900, !18, i64 8902, !18, i64 8904, !18, i64 8906, !18, i64 8908, !18, i64 8910, !11, i64 8912, !11, i64 8916, !18, i64 8920, !18, i64 8922, !18, i64 8924, !18, i64 8926, !18, i64 8928, !18, i64 8930, !18, i64 8932, !18, i64 8934, !18, i64 8936, !18, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !18, i64 8944, !18, i64 8946, !18, i64 8948, !18, i64 8950, !18, i64 8952, !18, i64 8954, !22, i64 8956, !22, i64 8960, !11, i64 8964, !18, i64 8968, !18, i64 8970, !22, i64 8972, !18, i64 8976, !18, i64 8978, !18, i64 8980, !18, i64 8982, !64, i64 8984, !7, i64 9760, !7, i64 9772, !18, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !11, i64 10896, !11, i64 10900, !22, i64 10904, !22, i64 10908, !11, i64 10912, !18, i64 10916, !18, i64 10918, !18, i64 10920, !18, i64 10922, !18, i64 10924, !18, i64 10926, !65, i64 10928}
!64 = !{!"ColorBand", !18, i64 0, !18, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!65 = !{!"WalkNavigation", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !18, i64 24, !7, i64 26}
!66 = !{!44, !18, i64 1126}
!67 = !{!68, !6, i64 16}
!68 = !{!"PointerRNA", !69, i64 0, !6, i64 8, !6, i64 16}
!69 = !{!"", !6, i64 0}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!73, !6, i64 0}
!73 = !{!"wmOperatorType", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !19, i64 112, !6, i64 128, !6, i64 136, !6, i64 144, !12, i64 152, !18, i64 184}
!74 = !{!73, !6, i64 24}
!75 = !{!73, !6, i64 8}
!76 = !{!73, !6, i64 32}
!77 = !{!73, !6, i64 72}
!78 = !{!73, !18, i64 184}
!79 = !{!44, !6, i64 296}
!80 = !{!81, !6, i64 176}
!81 = !{!"bArmature", !17, i64 0, !6, i64 120, !19, i64 128, !19, i64 144, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !18, i64 208, !18, i64 210, !11, i64 212, !11, i64 216, !11, i64 220, !18, i64 224, !18, i64 226, !18, i64 228, !18, i64 230, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252}
!82 = !{!83, !11, i64 136}
!83 = !{!"EditBone", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !22, i64 104, !7, i64 108, !7, i64 120, !11, i64 132, !11, i64 136, !22, i64 140, !22, i64 144, !22, i64 148, !22, i64 152, !22, i64 156, !22, i64 160, !22, i64 164, !22, i64 168, !22, i64 172, !22, i64 176, !18, i64 180}
!84 = !{!81, !11, i64 216}
!85 = !{!83, !6, i64 24}
!86 = !{!83, !11, i64 132}
!87 = !{!88, !6, i64 240}
!88 = !{!"MetaBall", !17, i64 0, !6, i64 120, !19, i64 128, !19, i64 144, !6, i64 160, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 185, !18, i64 186, !18, i64 188, !18, i64 190, !7, i64 192, !7, i64 204, !7, i64 216, !22, i64 228, !22, i64 232, !22, i64 236, !6, i64 240}
!89 = !{!47, !6, i64 352}
!90 = !{!91, !6, i64 272}
!91 = !{!"Mesh", !17, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !92, i64 280, !92, i64 480, !92, i64 680, !92, i64 880, !92, i64 1080, !11, i64 1280, !11, i64 1284, !11, i64 1288, !11, i64 1292, !11, i64 1296, !11, i64 1300, !11, i64 1304, !7, i64 1308, !7, i64 1320, !7, i64 1332, !11, i64 1344, !18, i64 1348, !18, i64 1350, !22, i64 1352, !11, i64 1356, !7, i64 1360, !7, i64 1361, !7, i64 1362, !7, i64 1363, !7, i64 1364, !7, i64 1365, !18, i64 1366, !6, i64 1368}
!92 = !{!"CustomData", !6, i64 0, !7, i64 8, !11, i64 172, !11, i64 176, !11, i64 180, !6, i64 184, !6, i64 192}
!93 = !{!94, !6, i64 0}
!94 = !{!"BMEditMesh", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 48, !37, i64 56, !6, i64 64, !11, i64 72, !6, i64 80, !11, i64 88, !18, i64 92, !18, i64 94, !6, i64 96, !11, i64 104}
!95 = !{!96, !11, i64 16}
!96 = !{!"BMesh", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !7, i64 28, !7, i64 29, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !11, i64 128, !6, i64 136, !92, i64 144, !92, i64 344, !92, i64 544, !92, i64 744, !18, i64 944, !11, i64 948, !11, i64 952, !11, i64 956, !19, i64 960, !6, i64 976, !19, i64 984, !6, i64 1000}
!97 = !{!98, !6, i64 0}
!98 = !{!"BMVert", !99, i64 0, !6, i64 16, !7, i64 24, !7, i64 36, !6, i64 48}
!99 = !{!"BMHeader", !6, i64 0, !11, i64 8, !7, i64 12, !7, i64 13, !7, i64 14}
!100 = !{!22, !22, i64 0}
!101 = distinct !{!101, !71}
!102 = !{!96, !11, i64 20}
!103 = !{!104, !6, i64 0}
!104 = !{!"BMEdge", !99, i64 0, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !105, i64 48, !105, i64 64}
!105 = !{!"BMDiskLink", !6, i64 0, !6, i64 8}
!106 = distinct !{!106, !71}
!107 = !{!108, !18, i64 16}
!108 = !{!"Nurb", !6, i64 0, !6, i64 8, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22, !11, i64 24, !11, i64 28, !7, i64 32, !18, i64 36, !18, i64 38, !18, i64 40, !18, i64 42, !18, i64 44, !18, i64 46, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !18, i64 80, !18, i64 82, !11, i64 84}
!109 = !{!108, !11, i64 24}
!110 = !{!108, !6, i64 72}
!111 = !{!112, !7, i64 52}
!112 = !{!"BezTriple", !7, i64 0, !22, i64 36, !22, i64 40, !22, i64 44, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51, !7, i64 52, !7, i64 53, !7, i64 54, !7, i64 55, !22, i64 56, !22, i64 60, !22, i64 64, !7, i64 68}
!113 = !{!112, !22, i64 36}
!114 = !{!112, !7, i64 51}
!115 = !{!112, !7, i64 53}
!116 = distinct !{!116, !71}
!117 = !{!108, !11, i64 28}
!118 = !{!108, !6, i64 64}
!119 = !{!120, !18, i64 24}
!120 = !{!"BPoint", !7, i64 0, !22, i64 16, !22, i64 20, !18, i64 24, !18, i64 26, !22, i64 28, !22, i64 32}
!121 = !{!120, !22, i64 20}
!122 = !{!120, !22, i64 28}
!123 = !{!120, !22, i64 16}
!124 = distinct !{!124, !71}
!125 = distinct !{!125, !71}
!126 = !{!127, !6, i64 272}
!127 = !{!"Lattice", !17, i64 0, !6, i64 120, !18, i64 128, !18, i64 130, !18, i64 132, !18, i64 134, !18, i64 136, !18, i64 138, !18, i64 140, !18, i64 142, !7, i64 144, !7, i64 145, !7, i64 146, !7, i64 147, !11, i64 148, !22, i64 152, !22, i64 156, !22, i64 160, !22, i64 164, !22, i64 168, !22, i64 172, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !7, i64 208, !6, i64 272}
!128 = !{!129, !6, i64 0}
!129 = !{!"EditLatt", !6, i64 0, !11, i64 8, !7, i64 12}
!130 = !{!127, !18, i64 128}
!131 = !{!127, !18, i64 130}
!132 = !{!127, !18, i64 132}
!133 = !{!127, !6, i64 176}
!134 = distinct !{!134, !71}
!135 = !{!47, !18, i64 240}
!136 = !{!63, !22, i64 10908}
!137 = !{!63, !11, i64 8524}
!138 = distinct !{!138, !71}
!139 = distinct !{!139, !71}
!140 = distinct !{!140, !71}
!141 = distinct !{!141, !71}
!142 = distinct !{!142, !71}
!143 = distinct !{!143, !71}
!144 = !{!68, !6, i64 8}
!145 = !{i64 0, i64 8, !5}
!146 = !{!147, !6, i64 24}
!147 = !{!"Bone", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !19, i64 32, !7, i64 48, !22, i64 112, !7, i64 116, !7, i64 128, !7, i64 140, !11, i64 176, !7, i64 180, !7, i64 192, !7, i64 204, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !7, i64 308, !11, i64 320, !18, i64 324, !7, i64 326}
!148 = !{!147, !11, i64 176}
!149 = !{!99, !7, i64 13}
!150 = !{!151, !6, i64 48}
!151 = !{!"BMIter", !7, i64 0, !6, i64 40, !6, i64 48, !11, i64 56, !7, i64 60}
!152 = !{!151, !7, i64 60}
