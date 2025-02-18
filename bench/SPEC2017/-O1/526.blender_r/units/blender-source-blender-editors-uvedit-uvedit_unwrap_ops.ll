; ModuleID = 'blender/source/blender/editors/uvedit/uvedit_unwrap_ops.c'
source_filename = "blender/source/blender/editors/uvedit/uvedit_unwrap_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.MinStretch = type { ptr, ptr, ptr, ptr, float, double, i32, i32, ptr }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"Minimize Stretch\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"UV_OT_minimize_stretch\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Reduce UV stretching by relaxing angles\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fill_holes\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Fill Holes\00", align 1
@.str.5 = private unnamed_addr constant [93 x i8] c"Virtual fill holes in mesh before unwrapping, to better avoid overlaps and preserve symmetry\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Blend factor between stretch minimized and original\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"Number of iterations to run, 0 is unlimited when run interactively\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Pack Islands\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"UV_OT_pack_islands\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"Transform all islands so that they fill up the UV space as much as possible\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Rotate islands for best fit\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"margin\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Margin\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Space between islands\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Average Islands Scale\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"UV_OT_average_islands_scale\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"Average the size of separate UV islands, based on their area in 3D space\00", align 1
@liveHandle = internal unnamed_addr global ptr null, align 8
@UV_OT_unwrap.method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 1, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.26 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [12 x i8] c"ANGLE_BASED\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Angle Based\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"CONFORMAL\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Conformal\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Unwrap\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"Unwrap the mesh of the object being edited\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"UV_OT_unwrap\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.34 = private unnamed_addr constant [105 x i8] c"Unwrapping method (Angle Based usually gives better results than Conformal, while being somewhat slower)\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"correct_aspect\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Correct Aspect\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"Map UVs taking image aspect ratio into account\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"use_subsurf_data\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"Use Subsurf Modifier\00", align 1
@.str.40 = private unnamed_addr constant [58 x i8] c"Map UVs taking vertex position after subsurf into account\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Project From View\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"UV_OT_project_from_view\00", align 1
@.str.43 = private unnamed_addr constant [63 x i8] c"Project the UV vertices of the mesh as seen in current 3D view\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"orthographic\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Orthographic\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"Use orthographic projection\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"camera_bounds\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Camera Bounds\00", align 1
@.str.49 = private unnamed_addr constant [71 x i8] c"Map UVs to the camera region taking resolution and aspect into account\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"UV_OT_reset\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Reset UV projection\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"Sphere Projection\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"UV_OT_sphere_project\00", align 1
@.str.55 = private unnamed_addr constant [72 x i8] c"Project the UV vertices of the mesh over the curved surface of a sphere\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Cylinder Projection\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"UV_OT_cylinder_project\00", align 1
@.str.58 = private unnamed_addr constant [71 x i8] c"Project the UV vertices of the mesh over the curved wall of a cylinder\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Cube Projection\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"UV_OT_cube_project\00", align 1
@.str.61 = private unnamed_addr constant [65 x i8] c"Project the UV vertices of the mesh over the six faces of a cube\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"cube_size\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"Cube Size\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"Size of the cube to project on\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.65 = private unnamed_addr constant [11 x i8] c"MinStretch\00", align 1
@.str.66 = private unnamed_addr constant [69 x i8] c"Minimize Stretch. Blend %.2f (Press + and -, or scroll wheel to set)\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.67 = private unnamed_addr constant [21 x i8] c"unwrap_edit_face_map\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"unwrap_edit_edge_map\00", align 1
@.str.69 = private unnamed_addr constant [86 x i8] c"Object has non-uniform scale, unwrap will operate on a non-scaled version of the mesh\00", align 1
@.str.70 = private unnamed_addr constant [84 x i8] c"Object has negative scale, unwrap will operate on a non-flipped version of the mesh\00", align 1
@.str.71 = private unnamed_addr constant [55 x i8] c"Subsurf modifier needs to be first to work with unwrap\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"clip_to_bounds\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"scale_to_bounds\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"Clip to Bounds\00", align 1
@.str.75 = private unnamed_addr constant [47 x i8] c"Clip UV coordinates to bounds after unwrapping\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"Scale to Bounds\00", align 1
@.str.77 = private unnamed_addr constant [48 x i8] c"Scale UV coordinates to bounds after unwrapping\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@uv_transform_properties.direction_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83 }, %struct.EnumPropertyItem { i32 1, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.86 }, %struct.EnumPropertyItem { i32 2, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.89 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.81 = private unnamed_addr constant [16 x i8] c"VIEW_ON_EQUATOR\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"View on Equator\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"3D view is on the equator\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"VIEW_ON_POLES\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"View on Poles\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"3D view is on the poles\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"ALIGN_TO_OBJECT\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"Align to Object\00", align 1
@.str.89 = private unnamed_addr constant [36 x i8] c"Align according to object transform\00", align 1
@uv_transform_properties.align_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.92 }, %struct.EnumPropertyItem { i32 1, ptr @.str.93, i32 0, ptr @.str.94, ptr @.str.95 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.90 = private unnamed_addr constant [9 x i8] c"POLAR_ZX\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"Polar ZX\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Polar 0 is X\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"POLAR_ZY\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"Polar ZY\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"Polar 0 is Y\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.97 = private unnamed_addr constant [36 x i8] c"Direction of the sphere or cylinder\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"How to determine rotation around the pole\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"Radius of the sphere or cylinder\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @uvedit_get_aspect(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %7 = load ptr, ptr %2, align 8, !tbaa !34
  %8 = tail call ptr @BM_mesh_active_face_get(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.BMFace, ptr %8, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !42
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, 1
  %18 = call zeroext i8 @ED_object_get_active_image(ptr noundef %1, i32 noundef %17, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null) #8
  br label %25

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 27
  %22 = load ptr, ptr %8, align 8, !tbaa !45
  %23 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %21, ptr noundef %22, i32 noundef 15) #8
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  store ptr %24, ptr %6, align 8, !tbaa !48
  br label %25

25:                                               ; preds = %19, %13
  %26 = load ptr, ptr %6, align 8, !tbaa !48
  call void @ED_image_get_uv_aspect(ptr noundef %26, ptr noundef null, ptr noundef %3, ptr noundef %4) #8
  br label %28

27:                                               ; preds = %5
  store float 1.000000e+00, ptr %3, align 4, !tbaa !49
  store float 1.000000e+00, ptr %4, align 4, !tbaa !49
  br label %28

28:                                               ; preds = %27, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_object_get_active_image(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @ED_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UV_OT_minimize_stretch(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @minimize_stretch_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @minimize_stretch_invoke, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @minimize_stretch_modal, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @minimize_stretch_cancel, ptr %8, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %9, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !63
  %14 = tail call ptr @RNA_def_float_factor(ptr noundef %13, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !63
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 100) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @minimize_stretch_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @minimize_stretch_init(ptr noundef %0, ptr noundef %1), !range !64
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.9) #8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ 0, %10 ], [ %25, %12 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !67
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %16 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 4
  %19 = load float, ptr %18, align 8, !tbaa !71
  tail call void @param_stretch_blend(ptr noundef %17, float noundef %19) #8
  %20 = load ptr, ptr %16, align 8, !tbaa !68
  tail call void @param_stretch_iter(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !72
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !72
  %24 = load ptr, ptr %6, align 8, !tbaa !65
  tail call void @RNA_int_set(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef %23) #8
  %25 = add nuw nsw i32 %13, 1
  %26 = icmp eq i32 %25, %8
  br i1 %26, label %27, label %12, !llvm.loop !73

27:                                               ; preds = %12, %5
  tail call fastcc void @minimize_stretch_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0)
  br label %28

28:                                               ; preds = %2, %27
  %29 = phi i32 [ 4, %27 ], [ 2, %2 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @minimize_stretch_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc zeroext i8 @minimize_stretch_init(ptr noundef %0, ptr noundef %1), !range !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  tail call fastcc void @minimize_stretch_iteration(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %12 = tail call ptr @WM_event_add_timer(ptr noundef %10, ptr noundef %11, i32 noundef 272, double noundef 0x3F847AE140000000) #8
  %13 = getelementptr inbounds %struct.MinStretch, ptr %8, i64 0, i32 8
  store ptr %12, ptr %13, align 8, !tbaa !76
  br label %14

14:                                               ; preds = %3, %6
  %15 = phi i32 [ 1, %6 ], [ 2, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @minimize_stretch_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !77
  switch i16 %7, label %46 [
    i16 218, label %54
    i16 3, label %54
    i16 220, label %8
    i16 163, label %8
    i16 1, label %8
    i16 164, label %9
    i16 10, label %9
    i16 162, label %19
    i16 11, label %19
    i16 272, label %29
  ]

8:                                                ; preds = %3, %3, %3
  br label %54

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !79
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 4
  %15 = load float, ptr %14, align 8, !tbaa !71
  %16 = fcmp olt float %15, 0x3FEE666660000000
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = fadd float %15, 0x3FB99999A0000000
  store float %18, ptr %14, align 8, !tbaa !71
  br label %41

19:                                               ; preds = %3, %3
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !79
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 4
  %25 = load float, ptr %24, align 8, !tbaa !71
  %26 = fcmp ogt float %25, 0x3FA99999A0000000
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = fadd float %25, 0xBFB99999A0000000
  store float %28, ptr %24, align 8, !tbaa !71
  br label %41

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %33 = load ptr, ptr %32, align 8, !tbaa !80
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = tail call double @PIL_check_seconds_timer() #8
  br label %37

37:                                               ; preds = %37, %35
  tail call fastcc void @minimize_stretch_iteration(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  %38 = tail call double @PIL_check_seconds_timer() #8
  %39 = fsub double %38, %36
  %40 = fcmp olt double %39, 1.000000e-02
  br i1 %40, label %37, label %46, !llvm.loop !81

41:                                               ; preds = %17, %27
  %42 = phi float [ %28, %27 ], [ %18, %17 ]
  %43 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 5
  store double 0.000000e+00, ptr %43, align 8, !tbaa !82
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  tail call void @RNA_float_set(ptr noundef %45, ptr noundef nonnull @.str.6, float noundef %42) #8
  tail call fastcc void @minimize_stretch_iteration(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  br label %46

46:                                               ; preds = %37, %41, %29, %19, %23, %9, %13, %3
  %47 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !83
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !72
  %53 = icmp slt i32 %52, %48
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %3, %3, %8
  %55 = phi i8 [ 0, %8 ], [ 1, %3 ], [ 1, %3 ], [ 0, %50 ]
  %56 = phi i32 [ 4, %8 ], [ 2, %3 ], [ 2, %3 ], [ 4, %50 ]
  tail call fastcc void @minimize_stretch_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %55)
  br label %57

57:                                               ; preds = %54, %46, %50
  %58 = phi i32 [ 1, %50 ], [ 1, %46 ], [ %56, %54 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal void @minimize_stretch_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @minimize_stretch_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  ret void
}

declare i32 @ED_operator_uvedit(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_float_factor(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UV_OT_pack_islands(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pack_islands_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !63
  %11 = tail call ptr @RNA_def_float_factor(ptr noundef %10, ptr noundef nonnull @.str.18, float noundef 0x3F50624DE0000000, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pack_islands_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.15) #8
  %9 = trunc i32 %8 to i8
  %10 = tail call fastcc zeroext i8 @uvedit_have_selection(ptr noundef %3, ptr noundef %5, i8 noundef zeroext 1), !range !64
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 8, !tbaa !65
  %14 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %13, ptr noundef nonnull @.str.18) #8
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr %6, align 8, !tbaa !65
  br i1 %15, label %22, label %17

17:                                               ; preds = %12
  %18 = tail call float @RNA_float_get(ptr noundef %16, ptr noundef nonnull @.str.18) #8
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  %21 = getelementptr inbounds %struct.ToolSettings, ptr %20, i64 0, i32 13
  store float %18, ptr %21, align 4, !tbaa !104
  br label %27

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %24 = load ptr, ptr %23, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 13
  %26 = load float, ptr %25, align 4, !tbaa !104
  tail call void @RNA_float_set(ptr noundef %16, ptr noundef nonnull @.str.18, float noundef %26) #8
  br label %27

27:                                               ; preds = %22, %17
  %28 = tail call fastcc ptr @construct_param_handle(ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %29 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !84
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %30, i64 0, i32 13
  %32 = load float, ptr %31, align 4, !tbaa !104
  tail call void @param_pack(ptr noundef %28, float noundef %32, i8 noundef zeroext %9) #8
  tail call void @param_flush(ptr noundef %28) #8
  tail call void @param_delete(ptr noundef %28) #8
  %33 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  tail call void @DAG_id_tag_update(ptr noundef %34, i16 noundef signext 0) #8
  %35 = load ptr, ptr %33, align 8, !tbaa !111
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %35) #8
  br label %36

36:                                               ; preds = %2, %27
  %37 = phi i32 [ 4, %27 ], [ 2, %2 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @UV_OT_average_islands_scale(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @average_islands_scale_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @average_islands_scale_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #8
  %6 = tail call fastcc zeroext i8 @uvedit_have_selection(ptr noundef %3, ptr noundef %5, i8 noundef zeroext 1), !range !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @construct_param_handle(ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1)
  tail call void @param_average(ptr noundef %9) #8
  tail call void @param_flush(ptr noundef %9) #8
  tail call void @param_delete(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  tail call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 0) #8
  %12 = load ptr, ptr %10, align 8, !tbaa !111
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %12) #8
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_uvedit_live_unwrap_begin(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 9
  %7 = load i8, ptr %6, align 8, !tbaa !114
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 10
  %10 = load i8, ptr %9, align 1, !tbaa !115
  %11 = and i8 %10, 1
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  %14 = and i8 %10, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = icmp eq ptr %13, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ModifierData, ptr %13, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !117
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %16
  br label %23

23:                                               ; preds = %2, %18, %22
  %24 = phi i1 [ true, %22 ], [ true, %2 ], [ false, %18 ]
  %25 = tail call zeroext i8 @ED_uvedit_test(ptr noundef %1) #8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  br i1 %24, label %31, label %28

28:                                               ; preds = %27
  %29 = zext nneg i8 %11 to i16
  %30 = tail call fastcc ptr @construct_param_handle_subsurfed(ptr noundef %0, ptr noundef %1, ptr noundef %3, i16 noundef signext %29, i16 noundef signext 0, i16 noundef signext 1)
  br label %33

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @construct_param_handle(ptr noundef %0, ptr noundef %1, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %11, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %32, %31 ], [ %30, %28 ]
  store ptr %34, ptr @liveHandle, align 8, !tbaa !48
  %35 = zext i1 %8 to i32
  tail call void @param_lscm_begin(ptr noundef %34, i32 noundef 1, i32 noundef %35) #8
  br label %36

36:                                               ; preds = %23, %33
  ret void
}

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_uvedit_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @construct_param_handle_subsurfed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.SubsurfModifierData, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca [4 x i64], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca [4 x i32], align 16
  %17 = alloca [4 x ptr], align 16
  %18 = alloca [4 x ptr], align 16
  %19 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %11) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %11, i8 0, i64 136, i1 false)
  %20 = load ptr, ptr %2, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 26
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 16) #8
  %23 = tail call ptr @param_construct_begin() #8
  %24 = icmp eq i16 %5, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  call void @uvedit_get_aspect(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef nonnull %13)
  %26 = load float, ptr %12, align 4, !tbaa !49
  %27 = load float, ptr %13, align 4, !tbaa !49
  %28 = fcmp une float %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @param_aspect_ratio(ptr noundef %23, float noundef %26, float noundef %27) #8
  br label %30

30:                                               ; preds = %29, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  br label %31

31:                                               ; preds = %30, %6
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %33 = load ptr, ptr %32, align 8, !tbaa !116
  %34 = getelementptr inbounds %struct.SubsurfModifierData, ptr %33, i64 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !119
  %36 = getelementptr inbounds %struct.SubsurfModifierData, ptr %11, i64 0, i32 2
  store i16 %35, ptr %36, align 2, !tbaa !119
  %37 = getelementptr inbounds %struct.SubsurfModifierData, ptr %33, i64 0, i32 1
  %38 = load i16, ptr %37, align 8, !tbaa !121
  %39 = getelementptr inbounds %struct.SubsurfModifierData, ptr %11, i64 0, i32 1
  store i16 %38, ptr %39, align 8, !tbaa !121
  %40 = call ptr @CDDM_from_editbmesh(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %41 = call ptr @subsurf_make_derived_from_derived(ptr noundef %40, ptr noundef nonnull %11, ptr noundef null, i32 noundef 8) #8
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 95
  %43 = load ptr, ptr %42, align 8, !tbaa !122
  call void %43(ptr noundef %40) #8
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 31
  %45 = load ptr, ptr %44, align 8, !tbaa !125
  %46 = call ptr %45(ptr noundef %41) #8
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 32
  %48 = load ptr, ptr %47, align 8, !tbaa !126
  %49 = call ptr %48(ptr noundef %41) #8
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 33
  %51 = load ptr, ptr %50, align 8, !tbaa !127
  %52 = call ptr %51(ptr noundef %41) #8
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 50
  %54 = load ptr, ptr %53, align 8, !tbaa !128
  %55 = call ptr %54(ptr noundef %41, i32 noundef 7) #8
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 51
  %57 = load ptr, ptr %56, align 8, !tbaa !129
  %58 = call ptr %57(ptr noundef %41, i32 noundef 7) #8
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 52
  %60 = load ptr, ptr %59, align 8, !tbaa !130
  %61 = call ptr %60(ptr noundef %41, i32 noundef 7) #8
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 54
  %63 = load ptr, ptr %62, align 8, !tbaa !131
  %64 = call ptr %63(ptr noundef %41, i32 noundef 7) #8
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 24
  %66 = load ptr, ptr %65, align 8, !tbaa !132
  %67 = call i32 %66(ptr noundef %41) #8
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 25
  %69 = load ptr, ptr %68, align 8, !tbaa !133
  %70 = call i32 %69(ptr noundef %41) #8
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %72 = sext i32 %70 to i64
  %73 = shl nsw i64 %72, 3
  %74 = call ptr %71(i64 noundef %73, ptr noundef nonnull @.str.67) #8
  %75 = load ptr, ptr %2, align 8, !tbaa !34
  call void @BM_mesh_elem_index_ensure(ptr noundef %75, i8 noundef zeroext 1) #8
  %76 = load ptr, ptr %2, align 8, !tbaa !34
  call void @BM_mesh_elem_table_ensure(ptr noundef %76, i8 noundef zeroext 10) #8
  %77 = icmp sgt i32 %70, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %31
  %79 = icmp eq ptr %64, null
  %80 = zext nneg i32 %70 to i64
  br label %81

81:                                               ; preds = %78, %92
  %82 = phi i64 [ 0, %78 ], [ %96, %92 ]
  %83 = load ptr, ptr %2, align 8, !tbaa !34
  %84 = getelementptr inbounds i32, ptr %61, i64 %82
  %85 = load i32, ptr %84, align 4, !tbaa !134
  %86 = icmp eq i32 %85, -1
  %87 = select i1 %86, i1 true, i1 %79
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = sext i32 %85 to i64
  %90 = getelementptr inbounds i32, ptr %64, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !134
  br label %92

92:                                               ; preds = %81, %88
  %93 = phi i32 [ %91, %88 ], [ %85, %81 ]
  %94 = call ptr @BM_face_at_index(ptr noundef %83, i32 noundef %93) #8
  %95 = getelementptr inbounds ptr, ptr %74, i64 %82
  store ptr %94, ptr %95, align 8, !tbaa !48
  %96 = add nuw nsw i64 %82, 1
  %97 = icmp eq i64 %96, %80
  br i1 %97, label %98, label %81, !llvm.loop !135

98:                                               ; preds = %92, %31
  %99 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %100 = sext i32 %67 to i64
  %101 = shl nsw i64 %100, 3
  %102 = call ptr %99(i64 noundef %101, ptr noundef nonnull @.str.68) #8
  %103 = icmp sgt i32 %67, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = zext nneg i32 %67 to i64
  br label %143

106:                                              ; preds = %151, %98
  %107 = icmp sgt i32 %70, 0
  br i1 %107, label %108, label %156

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %110 = icmp ne i16 %4, 0
  %111 = getelementptr inbounds [4 x i64], ptr %14, i64 0, i64 1
  %112 = getelementptr inbounds [4 x i64], ptr %14, i64 0, i64 2
  %113 = getelementptr inbounds [4 x i64], ptr %14, i64 0, i64 3
  %114 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 1
  %115 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 2
  %116 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 3
  %117 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %118 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %119 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %120 = sext i32 %22 to i64
  %121 = getelementptr inbounds [4 x ptr], ptr %18, i64 0, i64 1
  %122 = getelementptr inbounds [4 x i32], ptr %15, i64 0, i64 1
  %123 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 1
  %124 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %125 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %126 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %127 = sext i32 %22 to i64
  %128 = getelementptr inbounds [4 x ptr], ptr %18, i64 0, i64 2
  %129 = getelementptr inbounds [4 x i32], ptr %15, i64 0, i64 2
  %130 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 2
  %131 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %132 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %133 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %134 = sext i32 %22 to i64
  %135 = getelementptr inbounds [4 x ptr], ptr %18, i64 0, i64 3
  %136 = getelementptr inbounds [4 x i32], ptr %15, i64 0, i64 3
  %137 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 3
  %138 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %139 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %140 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %141 = sext i32 %22 to i64
  %142 = zext nneg i32 %70 to i64
  br label %161

143:                                              ; preds = %104, %151
  %144 = phi i64 [ 0, %104 ], [ %154, %151 ]
  %145 = getelementptr inbounds i32, ptr %58, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !134
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load ptr, ptr %2, align 8, !tbaa !34
  %150 = call ptr @BM_edge_at_index(ptr noundef %149, i32 noundef %146) #8
  br label %151

151:                                              ; preds = %143, %148
  %152 = phi ptr [ %150, %148 ], [ null, %143 ]
  %153 = getelementptr inbounds ptr, ptr %102, i64 %144
  store ptr %152, ptr %153, align 8, !tbaa !48
  %154 = add nuw nsw i64 %144, 1
  %155 = icmp eq i64 %154, %105
  br i1 %155, label %106, label %143, !llvm.loop !136

156:                                              ; preds = %316, %106
  %157 = icmp sgt i32 %67, 0
  br i1 %157, label %158, label %340

158:                                              ; preds = %156
  %159 = getelementptr inbounds [2 x i64], ptr %19, i64 0, i64 1
  %160 = zext nneg i32 %67 to i64
  br label %319

161:                                              ; preds = %108, %316
  %162 = phi i64 [ 0, %108 ], [ %317, %316 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #8
  %163 = getelementptr inbounds ptr, ptr %74, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !48
  %165 = getelementptr inbounds %struct.MFace, ptr %52, i64 %162
  %166 = load ptr, ptr %109, align 8, !tbaa !84
  %167 = getelementptr inbounds %struct.ToolSettings, ptr %166, i64 0, i32 11
  %168 = load i8, ptr %167, align 2, !tbaa !137
  %169 = and i8 %168, 1
  %170 = icmp eq i8 %169, 0
  %171 = getelementptr inbounds %struct.BMHeader, ptr %164, i64 0, i32 3
  %172 = load i8, ptr %171, align 1, !tbaa !138
  %173 = and i8 %172, 2
  %174 = icmp eq i8 %173, 0
  br i1 %170, label %176, label %175

175:                                              ; preds = %161
  br i1 %174, label %181, label %316

176:                                              ; preds = %161
  br i1 %174, label %177, label %316

177:                                              ; preds = %176
  %178 = and i8 %172, 1
  %179 = icmp eq i8 %178, 0
  %180 = and i1 %110, %179
  br i1 %180, label %316, label %181

181:                                              ; preds = %177, %175
  %182 = ptrtoint ptr %165 to i64
  %183 = load i32, ptr %165, align 4, !tbaa !139
  %184 = zext i32 %183 to i64
  store i64 %184, ptr %14, align 16, !tbaa !141
  %185 = getelementptr inbounds %struct.MFace, ptr %52, i64 %162, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !142
  %187 = zext i32 %186 to i64
  store i64 %187, ptr %111, align 8, !tbaa !141
  %188 = getelementptr inbounds %struct.MFace, ptr %52, i64 %162, i32 2
  %189 = load i32, ptr %188, align 4, !tbaa !143
  %190 = zext i32 %189 to i64
  store i64 %190, ptr %112, align 16, !tbaa !141
  %191 = getelementptr inbounds %struct.MFace, ptr %52, i64 %162, i32 3
  %192 = load i32, ptr %191, align 4, !tbaa !144
  %193 = zext i32 %192 to i64
  store i64 %193, ptr %113, align 8, !tbaa !141
  %194 = getelementptr inbounds %struct.MVert, ptr %46, i64 %184
  store ptr %194, ptr %17, align 16, !tbaa !48
  %195 = getelementptr inbounds %struct.MVert, ptr %46, i64 %187
  store ptr %195, ptr %114, align 8, !tbaa !48
  %196 = getelementptr inbounds %struct.MVert, ptr %46, i64 %190
  store ptr %196, ptr %115, align 16, !tbaa !48
  %197 = getelementptr inbounds %struct.MVert, ptr %46, i64 %193
  store ptr %197, ptr %116, align 8, !tbaa !48
  %198 = getelementptr inbounds i32, ptr %55, i64 %184
  %199 = load i32, ptr %198, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #8
  store ptr null, ptr %18, align 16, !tbaa !48
  store i32 0, ptr %15, align 16, !tbaa !134
  store i32 1, ptr %16, align 16, !tbaa !134
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %225, label %201

201:                                              ; preds = %181
  store i8 11, ptr %117, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %118, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %119, align 8, !tbaa !148
  store ptr %164, ptr %10, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #8
  %202 = load ptr, ptr %119, align 8, !tbaa !148
  %203 = call ptr %202(ptr noundef nonnull %10) #8
  %204 = icmp eq ptr %203, null
  br i1 %204, label %225, label %205

205:                                              ; preds = %201, %221
  %206 = phi ptr [ %223, %221 ], [ %203, %201 ]
  %207 = getelementptr inbounds %struct.BMLoop, ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !150
  %209 = getelementptr inbounds %struct.BMHeader, ptr %208, i64 0, i32 1
  %210 = load i32, ptr %209, align 8, !tbaa !152
  %211 = icmp eq i32 %210, %199
  br i1 %211, label %212, label %221

212:                                              ; preds = %205
  %213 = load ptr, ptr %206, align 8, !tbaa !153
  %214 = getelementptr inbounds i8, ptr %213, i64 %120
  store ptr %214, ptr %18, align 16, !tbaa !48
  %215 = getelementptr inbounds %struct.MLoopUV, ptr %214, i64 0, i32 1
  %216 = load i32, ptr %215, align 4, !tbaa !154
  %217 = lshr i32 %216, 2
  %218 = and i32 %217, 1
  store i32 %218, ptr %15, align 16, !tbaa !134
  %219 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %206, i32 noundef %22) #8
  %220 = zext i8 %219 to i32
  store i32 %220, ptr %16, align 16, !tbaa !134
  br label %225

221:                                              ; preds = %205
  %222 = load ptr, ptr %119, align 8, !tbaa !148
  %223 = call ptr %222(ptr noundef nonnull %10) #8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %205, !llvm.loop !156

225:                                              ; preds = %221, %181, %201, %212
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #8
  %226 = load i32, ptr %185, align 4, !tbaa !142
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, ptr %55, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  store ptr null, ptr %121, align 8, !tbaa !48
  store i32 0, ptr %122, align 4, !tbaa !134
  store i32 1, ptr %123, align 4, !tbaa !134
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %255, label %231

231:                                              ; preds = %225
  store i8 11, ptr %124, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %125, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %126, align 8, !tbaa !148
  store ptr %164, ptr %9, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #8
  %232 = load ptr, ptr %126, align 8, !tbaa !148
  %233 = call ptr %232(ptr noundef nonnull %9) #8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %255, label %235

235:                                              ; preds = %231, %251
  %236 = phi ptr [ %253, %251 ], [ %233, %231 ]
  %237 = getelementptr inbounds %struct.BMLoop, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !150
  %239 = getelementptr inbounds %struct.BMHeader, ptr %238, i64 0, i32 1
  %240 = load i32, ptr %239, align 8, !tbaa !152
  %241 = icmp eq i32 %240, %229
  br i1 %241, label %242, label %251

242:                                              ; preds = %235
  %243 = load ptr, ptr %236, align 8, !tbaa !153
  %244 = getelementptr inbounds i8, ptr %243, i64 %127
  store ptr %244, ptr %121, align 8, !tbaa !48
  %245 = getelementptr inbounds %struct.MLoopUV, ptr %244, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !154
  %247 = lshr i32 %246, 2
  %248 = and i32 %247, 1
  store i32 %248, ptr %122, align 4, !tbaa !134
  %249 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %236, i32 noundef %22) #8
  %250 = zext i8 %249 to i32
  store i32 %250, ptr %123, align 4, !tbaa !134
  br label %255

251:                                              ; preds = %235
  %252 = load ptr, ptr %126, align 8, !tbaa !148
  %253 = call ptr %252(ptr noundef nonnull %9) #8
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %235, !llvm.loop !156

255:                                              ; preds = %251, %225, %231, %242
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  %256 = load i32, ptr %188, align 4, !tbaa !143
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i32, ptr %55, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  store ptr null, ptr %128, align 16, !tbaa !48
  store i32 0, ptr %129, align 8, !tbaa !134
  store i32 1, ptr %130, align 8, !tbaa !134
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %285, label %261

261:                                              ; preds = %255
  store i8 11, ptr %131, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %132, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %133, align 8, !tbaa !148
  store ptr %164, ptr %8, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #8
  %262 = load ptr, ptr %133, align 8, !tbaa !148
  %263 = call ptr %262(ptr noundef nonnull %8) #8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %285, label %265

265:                                              ; preds = %261, %281
  %266 = phi ptr [ %283, %281 ], [ %263, %261 ]
  %267 = getelementptr inbounds %struct.BMLoop, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !150
  %269 = getelementptr inbounds %struct.BMHeader, ptr %268, i64 0, i32 1
  %270 = load i32, ptr %269, align 8, !tbaa !152
  %271 = icmp eq i32 %270, %259
  br i1 %271, label %272, label %281

272:                                              ; preds = %265
  %273 = load ptr, ptr %266, align 8, !tbaa !153
  %274 = getelementptr inbounds i8, ptr %273, i64 %134
  store ptr %274, ptr %128, align 16, !tbaa !48
  %275 = getelementptr inbounds %struct.MLoopUV, ptr %274, i64 0, i32 1
  %276 = load i32, ptr %275, align 4, !tbaa !154
  %277 = lshr i32 %276, 2
  %278 = and i32 %277, 1
  store i32 %278, ptr %129, align 8, !tbaa !134
  %279 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %266, i32 noundef %22) #8
  %280 = zext i8 %279 to i32
  store i32 %280, ptr %130, align 8, !tbaa !134
  br label %285

281:                                              ; preds = %265
  %282 = load ptr, ptr %133, align 8, !tbaa !148
  %283 = call ptr %282(ptr noundef nonnull %8) #8
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %265, !llvm.loop !156

285:                                              ; preds = %281, %255, %261, %272
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  %286 = load i32, ptr %191, align 4, !tbaa !144
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds i32, ptr %55, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  store ptr null, ptr %135, align 8, !tbaa !48
  store i32 0, ptr %136, align 4, !tbaa !134
  store i32 1, ptr %137, align 4, !tbaa !134
  %290 = icmp eq i32 %289, -1
  br i1 %290, label %315, label %291

291:                                              ; preds = %285
  store i8 11, ptr %138, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %139, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %140, align 8, !tbaa !148
  store ptr %164, ptr %7, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #8
  %292 = load ptr, ptr %140, align 8, !tbaa !148
  %293 = call ptr %292(ptr noundef nonnull %7) #8
  %294 = icmp eq ptr %293, null
  br i1 %294, label %315, label %295

295:                                              ; preds = %291, %311
  %296 = phi ptr [ %313, %311 ], [ %293, %291 ]
  %297 = getelementptr inbounds %struct.BMLoop, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !150
  %299 = getelementptr inbounds %struct.BMHeader, ptr %298, i64 0, i32 1
  %300 = load i32, ptr %299, align 8, !tbaa !152
  %301 = icmp eq i32 %300, %289
  br i1 %301, label %302, label %311

302:                                              ; preds = %295
  %303 = load ptr, ptr %296, align 8, !tbaa !153
  %304 = getelementptr inbounds i8, ptr %303, i64 %141
  store ptr %304, ptr %135, align 8, !tbaa !48
  %305 = getelementptr inbounds %struct.MLoopUV, ptr %304, i64 0, i32 1
  %306 = load i32, ptr %305, align 4, !tbaa !154
  %307 = lshr i32 %306, 2
  %308 = and i32 %307, 1
  store i32 %308, ptr %136, align 4, !tbaa !134
  %309 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %296, i32 noundef %22) #8
  %310 = zext i8 %309 to i32
  store i32 %310, ptr %137, align 4, !tbaa !134
  br label %315

311:                                              ; preds = %295
  %312 = load ptr, ptr %140, align 8, !tbaa !148
  %313 = call ptr %312(ptr noundef nonnull %7) #8
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %295, !llvm.loop !156

315:                                              ; preds = %311, %285, %291, %302
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @param_face_add(ptr noundef %23, i64 noundef %182, i32 noundef 4, ptr noundef nonnull %14, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef null) #8
  br label %316

316:                                              ; preds = %177, %176, %175, %315
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #8
  %317 = add nuw nsw i64 %162, 1
  %318 = icmp eq i64 %317, %142
  br i1 %318, label %156, label %161, !llvm.loop !157

319:                                              ; preds = %158, %336
  %320 = phi i64 [ 0, %158 ], [ %337, %336 ]
  %321 = phi ptr [ %49, %158 ], [ %338, %336 ]
  %322 = getelementptr inbounds ptr, ptr %102, i64 %320
  %323 = load ptr, ptr %322, align 8, !tbaa !48
  %324 = icmp eq ptr %323, null
  br i1 %324, label %336, label %325

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.BMHeader, ptr %323, i64 0, i32 3
  %327 = load i8, ptr %326, align 1, !tbaa !138
  %328 = and i8 %327, 4
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %325
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #8
  %331 = load i32, ptr %321, align 4, !tbaa !158
  %332 = zext i32 %331 to i64
  store i64 %332, ptr %19, align 16, !tbaa !141
  %333 = getelementptr inbounds %struct.MEdge, ptr %321, i64 0, i32 1
  %334 = load i32, ptr %333, align 4, !tbaa !160
  %335 = zext i32 %334 to i64
  store i64 %335, ptr %159, align 8, !tbaa !141
  call void @param_edge_set_seam(ptr noundef %23, ptr noundef nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8
  br label %336

336:                                              ; preds = %319, %325, %330
  %337 = add nuw nsw i64 %320, 1
  %338 = getelementptr inbounds %struct.MEdge, ptr %321, i64 1
  %339 = icmp eq i64 %337, %160
  br i1 %339, label %340, label %319, !llvm.loop !161

340:                                              ; preds = %336, %156
  %341 = zext nneg i16 %3 to i32
  call void @param_construct_end(ptr noundef %23, i32 noundef %341, i32 noundef 0) #8
  %342 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %342(ptr noundef %74) #8
  %343 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %343(ptr noundef %102) #8
  %344 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 95
  %345 = load ptr, ptr %344, align 8, !tbaa !122
  call void %345(ptr noundef %41) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %11) #8
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @construct_param_handle(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [2 x i64], align 16
  %13 = load ptr, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 16) #8
  %16 = tail call ptr @param_construct_begin() #8
  %17 = icmp eq i8 %6, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @uvedit_get_aspect(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %19 = load float, ptr %10, align 4, !tbaa !49
  %20 = load float, ptr %11, align 4, !tbaa !49
  %21 = fcmp une float %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @param_aspect_ratio(ptr noundef %16, float noundef %19, float noundef %20) #8
  br label %23

23:                                               ; preds = %22, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  br label %24

24:                                               ; preds = %23, %7
  %25 = load ptr, ptr %2, align 8, !tbaa !34
  call void @BM_mesh_elem_index_ensure(ptr noundef %25, i8 noundef zeroext 1) #8
  %26 = load ptr, ptr %2, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 3, ptr %27, align 4, !tbaa !145
  %28 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !147
  %29 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !148
  %30 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !162
  store ptr %31, ptr %8, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #8
  %32 = load ptr, ptr %29, align 8, !tbaa !148
  %33 = call ptr %32(ptr noundef nonnull %8) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %69, label %35

35:                                               ; preds = %24
  %36 = icmp ne i8 %5, 0
  %37 = icmp eq i8 %3, 0
  %38 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %39 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %40 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  br label %41

41:                                               ; preds = %35, %65
  %42 = phi ptr [ %33, %35 ], [ %67, %65 ]
  %43 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !138
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = and i8 %44, 1
  %49 = icmp eq i8 %48, 0
  %50 = and i1 %36, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %47
  br i1 %37, label %64, label %52

52:                                               ; preds = %51
  store i8 11, ptr %38, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %39, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %40, align 8, !tbaa !148
  store ptr %42, ptr %9, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #8
  %53 = load ptr, ptr %40, align 8, !tbaa !148
  %54 = call ptr %53(ptr noundef nonnull %9) #8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52, %60
  %57 = phi ptr [ %62, %60 ], [ %54, %52 ]
  %58 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %57, i32 noundef %15) #8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load ptr, ptr %40, align 8, !tbaa !148
  %62 = call ptr %61(ptr noundef nonnull %9) #8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %56, !llvm.loop !164

64:                                               ; preds = %56, %51
  call fastcc void @construct_param_handle_face_add(ptr noundef %16, ptr noundef %0, ptr noundef nonnull %42, i32 noundef %15)
  br label %65

65:                                               ; preds = %60, %52, %47, %41, %64
  %66 = load ptr, ptr %29, align 8, !tbaa !148
  %67 = call ptr %66(ptr noundef nonnull %8) #8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %41, !llvm.loop !165

69:                                               ; preds = %65, %24
  %70 = icmp eq i8 %3, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %69
  %72 = load ptr, ptr %2, align 8, !tbaa !34
  store i8 2, ptr %27, align 4, !tbaa !145
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !147
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !148
  %73 = getelementptr inbounds %struct.BMesh, ptr %72, i64 0, i32 10
  %74 = load ptr, ptr %73, align 8, !tbaa !166
  store ptr %74, ptr %8, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #8
  %75 = load ptr, ptr %29, align 8, !tbaa !148
  %76 = call ptr %75(ptr noundef nonnull %8) #8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %101, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds [2 x i64], ptr %12, i64 0, i64 1
  br label %80

80:                                               ; preds = %78, %97
  %81 = phi ptr [ %76, %78 ], [ %99, %97 ]
  %82 = getelementptr inbounds %struct.BMHeader, ptr %81, i64 0, i32 3
  %83 = load i8, ptr %82, align 1, !tbaa !138
  %84 = and i8 %83, 4
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8
  %87 = getelementptr inbounds %struct.BMEdge, ptr %81, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !167
  %89 = getelementptr inbounds %struct.BMHeader, ptr %88, i64 0, i32 1
  %90 = load i32, ptr %89, align 8, !tbaa !152
  %91 = sext i32 %90 to i64
  store i64 %91, ptr %12, align 16, !tbaa !141
  %92 = getelementptr inbounds %struct.BMEdge, ptr %81, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !170
  %94 = getelementptr inbounds %struct.BMHeader, ptr %93, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !152
  %96 = sext i32 %95 to i64
  store i64 %96, ptr %79, align 8, !tbaa !141
  call void @param_edge_set_seam(ptr noundef %16, ptr noundef nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8
  br label %97

97:                                               ; preds = %80, %86
  %98 = load ptr, ptr %29, align 8, !tbaa !148
  %99 = call ptr %98(ptr noundef nonnull %8) #8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %80, !llvm.loop !171

101:                                              ; preds = %97, %71, %69
  %102 = zext i8 %4 to i32
  %103 = zext nneg i8 %3 to i32
  call void @param_construct_end(ptr noundef %16, i32 noundef %102, i32 noundef %103) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  ret ptr %16
}

declare void @param_lscm_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_uvedit_live_unwrap_re_solve() local_unnamed_addr #0 {
  %1 = load ptr, ptr @liveHandle, align 8, !tbaa !48
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void @param_lscm_solve(ptr noundef nonnull %1) #8
  %4 = load ptr, ptr @liveHandle, align 8, !tbaa !48
  tail call void @param_flush(ptr noundef %4) #8
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

declare void @param_lscm_solve(ptr noundef) local_unnamed_addr #2

declare void @param_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_uvedit_live_unwrap_end(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @liveHandle, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  tail call void @param_lscm_end(ptr noundef nonnull %2) #8
  %5 = icmp eq i16 %0, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr @liveHandle, align 8, !tbaa !48
  tail call void @param_flush_restore(ptr noundef %7) #8
  br label %8

8:                                                ; preds = %6, %4
  %9 = load ptr, ptr @liveHandle, align 8, !tbaa !48
  tail call void @param_delete(ptr noundef %9) #8
  store ptr null, ptr @liveHandle, align 8, !tbaa !48
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

declare void @param_lscm_end(ptr noundef) local_unnamed_addr #2

declare void @param_flush_restore(ptr noundef) local_unnamed_addr #2

declare void @param_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_uvedit_live_unwrap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 50
  %7 = load i8, ptr %6, align 2, !tbaa !172
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %11, i32 noundef 16) #8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @ED_unwrap_lscm(ptr noundef %0, ptr noundef %1, i16 noundef signext 0)
  br label %15

15:                                               ; preds = %14, %9, %2
  ret void
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_unwrap_lscm(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #8
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 10
  %8 = load i8, ptr %7, align 1, !tbaa !115
  %9 = and i8 %8, 1
  %10 = lshr i8 %8, 1
  %11 = and i8 %10, 1
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !116
  %14 = and i8 %8, 8
  %15 = icmp eq i8 %14, 0
  %16 = icmp eq ptr %13, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ModifierData, ptr %13, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !117
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = zext nneg i8 %9 to i16
  %24 = zext nneg i8 %11 to i16
  %25 = tail call fastcc ptr @construct_param_handle_subsurfed(ptr noundef %0, ptr noundef %1, ptr noundef %4, i16 noundef signext %23, i16 noundef signext %2, i16 noundef signext %24)
  br label %29

26:                                               ; preds = %18, %3
  %27 = trunc i16 %2 to i8
  %28 = tail call fastcc ptr @construct_param_handle(ptr noundef %0, ptr noundef %1, ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext %9, i8 noundef zeroext %27, i8 noundef zeroext %11)
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %25, %22 ], [ %28, %26 ]
  %31 = load ptr, ptr %5, align 8, !tbaa !84
  %32 = getelementptr inbounds %struct.ToolSettings, ptr %31, i64 0, i32 9
  %33 = load i8, ptr %32, align 8, !tbaa !114
  %34 = icmp eq i8 %33, 0
  %35 = zext i1 %34 to i32
  tail call void @param_lscm_begin(ptr noundef %30, i32 noundef 0, i32 noundef %35) #8
  tail call void @param_lscm_solve(ptr noundef %30) #8
  tail call void @param_lscm_end(ptr noundef %30) #8
  tail call void @param_average(ptr noundef %30) #8
  %36 = load ptr, ptr %5, align 8, !tbaa !84
  %37 = getelementptr inbounds %struct.ToolSettings, ptr %36, i64 0, i32 13
  %38 = load float, ptr %37, align 4, !tbaa !104
  tail call void @param_pack(ptr noundef %30, float noundef %38, i8 noundef zeroext 0) #8
  tail call void @param_flush(ptr noundef %30) #8
  tail call void @param_delete(ptr noundef %30) #8
  ret void
}

declare void @param_average(ptr noundef) local_unnamed_addr #2

declare void @param_pack(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UV_OT_unwrap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @unwrap_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.32, ptr noundef nonnull @UV_OT_unwrap.method_items, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !63
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !63
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #8
  %14 = load ptr, ptr %7, align 8, !tbaa !63
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #8
  %16 = load ptr, ptr %7, align 8, !tbaa !63
  %17 = tail call ptr @RNA_def_float_factor(ptr noundef %16, ptr noundef nonnull @.str.18, float noundef 0x3F50624DE0000000, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unwrap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.32) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.3) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !65
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.35) #8
  %14 = load ptr, ptr %7, align 8, !tbaa !65
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.38) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %16 = tail call fastcc zeroext i8 @uvedit_have_selection(ptr noundef %4, ptr noundef %6, i8 noundef zeroext 0), !range !64
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %124, label %18

18:                                               ; preds = %2
  %19 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %4, ptr noundef %5), !range !64
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %124, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  call void @mat4_to_size(ptr noundef nonnull %3, ptr noundef nonnull %22) #8
  %23 = load float, ptr %3, align 4, !tbaa !49
  %24 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !49
  %26 = fsub float %23, %25
  %27 = call float @llvm.fabs.f32(float %26)
  %28 = fcmp olt float %27, 0x3F1A36E2E0000000
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !49
  %32 = fsub float %25, %31
  %33 = call float @llvm.fabs.f32(float %32)
  %34 = fcmp olt float %33, 0x3F1A36E2E0000000
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %22) #8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35, %21, %29
  %39 = phi ptr [ @.str.69, %29 ], [ @.str.69, %21 ], [ @.str.70, %35 ]
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !173
  call void @BKE_report(ptr noundef %41, i32 noundef 2, ptr noundef nonnull %39) #8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load ptr, ptr %7, align 8, !tbaa !65
  %44 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %43, ptr noundef nonnull @.str.32) #8
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %47 = load ptr, ptr %46, align 8, !tbaa !84
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 9
  br i1 %45, label %51, label %49

49:                                               ; preds = %42
  %50 = trunc i32 %9 to i8
  store i8 %50, ptr %48, align 8, !tbaa !114
  br label %55

51:                                               ; preds = %42
  %52 = load ptr, ptr %7, align 8, !tbaa !65
  %53 = load i8, ptr %48, align 8, !tbaa !114
  %54 = zext i8 %53 to i32
  call void @RNA_enum_set(ptr noundef %52, ptr noundef nonnull @.str.32, i32 noundef %54) #8
  br label %55

55:                                               ; preds = %51, %49
  %56 = load ptr, ptr %7, align 8, !tbaa !65
  %57 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %56, ptr noundef nonnull @.str.18) #8
  %58 = icmp eq i8 %57, 0
  %59 = load ptr, ptr %7, align 8, !tbaa !65
  br i1 %58, label %65, label %60

60:                                               ; preds = %55
  %61 = call float @RNA_float_get(ptr noundef %59, ptr noundef nonnull @.str.18) #8
  %62 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %63 = load ptr, ptr %62, align 8, !tbaa !84
  %64 = getelementptr inbounds %struct.ToolSettings, ptr %63, i64 0, i32 13
  store float %61, ptr %64, align 4, !tbaa !104
  br label %70

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !84
  %68 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 13
  %69 = load float, ptr %68, align 4, !tbaa !104
  call void @RNA_float_set(ptr noundef %59, ptr noundef nonnull @.str.18, float noundef %69) #8
  br label %70

70:                                               ; preds = %65, %60
  %71 = and i32 %11, 255
  %72 = icmp ne i32 %71, 0
  %73 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %74 = load ptr, ptr %73, align 8, !tbaa !84
  %75 = getelementptr inbounds %struct.ToolSettings, ptr %74, i64 0, i32 10
  %76 = load i8, ptr %75, align 1, !tbaa !115
  %77 = and i8 %76, -2
  %78 = zext i1 %72 to i8
  %79 = or disjoint i8 %77, %78
  store i8 %79, ptr %75, align 1, !tbaa !115
  %80 = and i32 %13, 255
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %83 = load ptr, ptr %82, align 8, !tbaa !84
  %84 = getelementptr inbounds %struct.ToolSettings, ptr %83, i64 0, i32 10
  %85 = load i8, ptr %84, align 1, !tbaa !115
  %86 = and i8 %85, -3
  %87 = select i1 %81, i8 2, i8 0
  %88 = or disjoint i8 %86, %87
  store i8 %88, ptr %84, align 1, !tbaa !115
  %89 = and i32 %15, 255
  %90 = icmp eq i32 %89, 0
  %91 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %92 = load ptr, ptr %91, align 8, !tbaa !84
  %93 = getelementptr inbounds %struct.ToolSettings, ptr %92, i64 0, i32 10
  %94 = load i8, ptr %93, align 1, !tbaa !115
  %95 = and i8 %94, -9
  %96 = select i1 %90, i8 0, i8 8
  %97 = or disjoint i8 %95, %96
  store i8 %97, ptr %93, align 1, !tbaa !115
  %98 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %99 = load ptr, ptr %98, align 8, !tbaa !84
  %100 = getelementptr inbounds %struct.ToolSettings, ptr %99, i64 0, i32 10
  %101 = load i8, ptr %100, align 1, !tbaa !115
  %102 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 26
  %103 = load ptr, ptr %102, align 8, !tbaa !116
  %104 = and i8 %101, 8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %70
  %107 = icmp eq ptr %103, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.ModifierData, ptr %103, i64 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !117
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %113, label %112

112:                                              ; preds = %108, %106
  br label %113

113:                                              ; preds = %70, %108, %112
  %114 = phi i8 [ 0, %112 ], [ 0, %70 ], [ 1, %108 ]
  %115 = trunc i32 %15 to i8
  %116 = icmp eq i8 %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !173
  call void @BKE_report(ptr noundef %119, i32 noundef 2, ptr noundef nonnull @.str.71) #8
  br label %120

120:                                              ; preds = %117, %113
  call void @ED_unwrap_lscm(ptr noundef %4, ptr noundef %5, i16 noundef signext 1)
  %121 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %122 = load ptr, ptr %121, align 8, !tbaa !111
  call void @DAG_id_tag_update(ptr noundef %122, i16 noundef signext 0) #8
  %123 = load ptr, ptr %121, align 8, !tbaa !111
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %123) #8
  br label %124

124:                                              ; preds = %18, %2, %120
  %125 = phi i32 [ 4, %120 ], [ 2, %2 ], [ 2, %18 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret i32 %125
}

declare i32 @ED_operator_uvmap(ptr noundef) #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UV_OT_project_from_view(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_from_view_invoke, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_from_view_exec, ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @uv_from_view_poll, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !63
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #8
  %13 = load ptr, ptr %8, align 8, !tbaa !63
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #8
  %15 = load ptr, ptr %8, align 8, !tbaa !63
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #8
  %17 = load ptr, ptr %8, align 8, !tbaa !63
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_from_view_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #8
  %6 = tail call ptr @ED_view3d_camera_data_get(ptr noundef %4, ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.47) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %10, ptr noundef %9) #8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load ptr, ptr %7, align 8, !tbaa !65
  %15 = icmp ne ptr %6, null
  %16 = zext i1 %15 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %14, ptr noundef %9, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load ptr, ptr %7, align 8, !tbaa !65
  %19 = tail call ptr @RNA_struct_find_property(ptr noundef %18, ptr noundef nonnull @.str.35) #8
  %20 = load ptr, ptr %7, align 8, !tbaa !65
  %21 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %20, ptr noundef %19) #8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !tbaa !65
  %25 = icmp eq ptr %6, null
  %26 = zext i1 %25 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %24, ptr noundef %19, i32 noundef %26) #8
  br label %27

27:                                               ; preds = %23, %17
  %28 = tail call i32 @uv_from_view_exec(ptr noundef %0, ptr noundef %1), !range !174
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_from_view_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #8
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %11 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #8
  %12 = tail call ptr @ED_view3d_camera_data_get(ptr noundef %10, ptr noundef %11) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %13 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %6, ptr noundef %7), !range !64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %184, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %8, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 26
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 16) #8
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.44) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %15
  call fastcc void @uv_map_rotation_matrix(ptr noundef nonnull %5, ptr noundef %11, ptr noundef %7, float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00)
  %24 = load ptr, ptr %8, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %25, align 4, !tbaa !145
  %26 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %26, align 8, !tbaa !147
  %27 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %27, align 8, !tbaa !148
  %28 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !162
  store ptr %29, ptr %3, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #8
  %30 = load ptr, ptr %27, align 8, !tbaa !148
  %31 = call ptr %30(ptr noundef nonnull %3) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %180, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %35 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %36 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %37 = sext i32 %18 to i64
  br label %38

38:                                               ; preds = %33, %58
  %39 = phi ptr [ %31, %33 ], [ %60, %58 ]
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !138
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %38
  store i8 11, ptr %34, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %35, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %36, align 8, !tbaa !148
  store ptr %39, ptr %4, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #8
  %45 = load ptr, ptr %36, align 8, !tbaa !148
  %46 = call ptr %45(ptr noundef nonnull %4) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44, %48
  %49 = phi ptr [ %56, %48 ], [ %46, %44 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !153
  %51 = getelementptr inbounds i8, ptr %50, i64 %37
  %52 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !150
  %54 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  call void @BLI_uvproject_from_view_ortho(ptr noundef %51, ptr noundef nonnull %54, ptr noundef nonnull %5) #8
  %55 = load ptr, ptr %36, align 8, !tbaa !148
  %56 = call ptr %55(ptr noundef nonnull %4) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %48, !llvm.loop !175

58:                                               ; preds = %48, %44, %38
  %59 = load ptr, ptr %27, align 8, !tbaa !148
  %60 = call ptr %59(ptr noundef nonnull %3) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %180, label %38, !llvm.loop !176

62:                                               ; preds = %15
  %63 = icmp eq ptr %12, null
  br i1 %63, label %133, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %19, align 8, !tbaa !65
  %66 = tail call i32 @RNA_boolean_get(ptr noundef %65, ptr noundef nonnull @.str.47) #8
  %67 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 15
  %68 = load ptr, ptr %67, align 8, !tbaa !177
  %69 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  %70 = and i32 %66, 255
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 33
  %74 = load i32, ptr %73, align 4, !tbaa !179
  %75 = sitofp i32 %74 to float
  %76 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 63
  %77 = load float, ptr %76, align 4, !tbaa !180
  %78 = fmul float %77, %75
  br label %79

79:                                               ; preds = %64, %72
  %80 = phi float [ %78, %72 ], [ 1.000000e+00, %64 ]
  br i1 %71, label %88, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 34
  %83 = load i32, ptr %82, align 8, !tbaa !181
  %84 = sitofp i32 %83 to float
  %85 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 64
  %86 = load float, ptr %85, align 8, !tbaa !182
  %87 = fmul float %86, %84
  br label %88

88:                                               ; preds = %79, %81
  %89 = phi float [ %87, %81 ], [ 1.000000e+00, %79 ]
  %90 = tail call ptr @BLI_uvproject_camera_info(ptr noundef %68, ptr noundef nonnull %69, float noundef %80, float noundef %89) #8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %180, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %8, align 8, !tbaa !34
  %94 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %94, align 4, !tbaa !145
  %95 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %95, align 8, !tbaa !147
  %96 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %96, align 8, !tbaa !148
  %97 = getelementptr inbounds %struct.BMesh, ptr %93, i64 0, i32 12
  %98 = load ptr, ptr %97, align 8, !tbaa !162
  store ptr %98, ptr %3, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #8
  %99 = load ptr, ptr %96, align 8, !tbaa !148
  %100 = call ptr %99(ptr noundef nonnull %3) #8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %131, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %104 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %105 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %106 = sext i32 %18 to i64
  br label %107

107:                                              ; preds = %102, %127
  %108 = phi ptr [ %100, %102 ], [ %129, %127 ]
  %109 = getelementptr inbounds %struct.BMHeader, ptr %108, i64 0, i32 3
  %110 = load i8, ptr %109, align 1, !tbaa !138
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %107
  store i8 11, ptr %103, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %104, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %105, align 8, !tbaa !148
  store ptr %108, ptr %4, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #8
  %114 = load ptr, ptr %105, align 8, !tbaa !148
  %115 = call ptr %114(ptr noundef nonnull %4) #8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %127, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %125, %117 ], [ %115, %113 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !153
  %120 = getelementptr inbounds i8, ptr %119, i64 %106
  %121 = getelementptr inbounds %struct.BMLoop, ptr %118, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !150
  %123 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 2
  call void @BLI_uvproject_from_camera(ptr noundef %120, ptr noundef nonnull %123, ptr noundef nonnull %90) #8
  %124 = load ptr, ptr %105, align 8, !tbaa !148
  %125 = call ptr %124(ptr noundef nonnull %4) #8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %117, !llvm.loop !183

127:                                              ; preds = %117, %113, %107
  %128 = load ptr, ptr %96, align 8, !tbaa !148
  %129 = call ptr %128(ptr noundef nonnull %3) #8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %107, !llvm.loop !184

131:                                              ; preds = %127, %92
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %132(ptr noundef nonnull %90) #8
  br label %180

133:                                              ; preds = %62
  %134 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %134) #8
  %135 = load ptr, ptr %8, align 8, !tbaa !34
  %136 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %136, align 4, !tbaa !145
  %137 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %137, align 8, !tbaa !147
  %138 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %138, align 8, !tbaa !148
  %139 = getelementptr inbounds %struct.BMesh, ptr %135, i64 0, i32 12
  %140 = load ptr, ptr %139, align 8, !tbaa !162
  store ptr %140, ptr %3, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #8
  %141 = load ptr, ptr %138, align 8, !tbaa !148
  %142 = call ptr %141(ptr noundef nonnull %3) #8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %180, label %144

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %146 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %147 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %148 = sext i32 %18 to i64
  %149 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 3
  %150 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 5
  %151 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 6
  br label %152

152:                                              ; preds = %144, %176
  %153 = phi ptr [ %142, %144 ], [ %178, %176 ]
  %154 = getelementptr inbounds %struct.BMHeader, ptr %153, i64 0, i32 3
  %155 = load i8, ptr %154, align 1, !tbaa !138
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %176, label %158

158:                                              ; preds = %152
  store i8 11, ptr %145, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %146, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %147, align 8, !tbaa !148
  store ptr %153, ptr %4, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #8
  %159 = load ptr, ptr %147, align 8, !tbaa !148
  %160 = call ptr %159(ptr noundef nonnull %4) #8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %176, label %162

162:                                              ; preds = %158, %162
  %163 = phi ptr [ %174, %162 ], [ %160, %158 ]
  %164 = load ptr, ptr %163, align 8, !tbaa !153
  %165 = getelementptr inbounds i8, ptr %164, i64 %148
  %166 = getelementptr inbounds %struct.BMLoop, ptr %163, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !150
  %168 = getelementptr inbounds %struct.BMVert, ptr %167, i64 0, i32 2
  %169 = load i16, ptr %150, align 8, !tbaa !185
  %170 = sitofp i16 %169 to float
  %171 = load i16, ptr %151, align 2, !tbaa !188
  %172 = sitofp i16 %171 to float
  call void @BLI_uvproject_from_view(ptr noundef %165, ptr noundef nonnull %168, ptr noundef nonnull %149, ptr noundef nonnull %5, float noundef %170, float noundef %172) #8
  %173 = load ptr, ptr %147, align 8, !tbaa !148
  %174 = call ptr %173(ptr noundef nonnull %4) #8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %162, !llvm.loop !189

176:                                              ; preds = %162, %158, %152
  %177 = load ptr, ptr %138, align 8, !tbaa !148
  %178 = call ptr %177(ptr noundef nonnull %3) #8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %152, !llvm.loop !190

180:                                              ; preds = %58, %176, %23, %133, %88, %131
  call fastcc void @uv_map_clip_correct(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %1)
  %181 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %182 = load ptr, ptr %181, align 8, !tbaa !111
  call void @DAG_id_tag_update(ptr noundef %182, i16 noundef signext 0) #8
  %183 = load ptr, ptr %181, align 8, !tbaa !111
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %183) #8
  br label %184

184:                                              ; preds = %2, %180
  %185 = phi i32 [ 4, %180 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret i32 %185
}

; Function Attrs: nounwind uwtable
define internal i32 @uv_from_view_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #8
  %3 = tail call i32 @ED_operator_uvmap(ptr noundef %0) #8
  %4 = icmp ne i32 %3, 0
  %5 = icmp ne ptr %2, null
  %6 = select i1 %4, i1 %5, i1 false
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @UV_OT_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reset_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @reset_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %3, ptr noundef %4), !range !64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  tail call void @ED_mesh_uv_loop_reset(ptr noundef %0, ptr noundef %6) #8
  %10 = load ptr, ptr %5, align 8, !tbaa !111
  tail call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 0) #8
  %11 = load ptr, ptr %5, align 8, !tbaa !111
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %11) #8
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @UV_OT_sphere_project(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sphere_project_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.79, ptr noundef nonnull @uv_transform_properties.direction_items, i32 noundef 0, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !63
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.78, ptr noundef nonnull @uv_transform_properties.align_items, i32 noundef 0, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !63
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #8
  %14 = load ptr, ptr %7, align 8, !tbaa !63
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #8
  %16 = load ptr, ptr %7, align 8, !tbaa !63
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sphere_project_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %9) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  %11 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %8, ptr noundef %9), !range !64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %10, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 26
  %16 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %15, i32 noundef 16) #8
  call fastcc void @uv_map_transform(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %17 = load ptr, ptr %10, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %18, align 4, !tbaa !145
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !147
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !148
  %21 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !162
  store ptr %22, ptr %4, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #8
  %23 = load ptr, ptr %20, align 8, !tbaa !148
  %24 = call ptr %23(ptr noundef nonnull %4) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %84, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %28 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %29 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %30 = sext i32 %16 to i64
  %31 = getelementptr inbounds float, ptr %6, i64 1
  %32 = getelementptr inbounds float, ptr %3, i64 1
  %33 = getelementptr inbounds float, ptr %6, i64 2
  %34 = getelementptr inbounds float, ptr %3, i64 2
  br label %35

35:                                               ; preds = %26, %80
  %36 = phi ptr [ %24, %26 ], [ %82, %80 ]
  %37 = getelementptr inbounds %struct.BMHeader, ptr %36, i64 0, i32 3
  %38 = load i8, ptr %37, align 1, !tbaa !138
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %35
  store i8 11, ptr %27, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %28, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %29, align 8, !tbaa !148
  store ptr %36, ptr %5, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #8
  %42 = load ptr, ptr %29, align 8, !tbaa !148
  %43 = call ptr %42(ptr noundef nonnull %5) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %75, label %45

45:                                               ; preds = %41, %71
  %46 = phi ptr [ %73, %71 ], [ %43, %41 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !153
  %48 = getelementptr inbounds i8, ptr %47, i64 %30
  %49 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !150
  %51 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %52 = load float, ptr %51, align 4, !tbaa !49
  %53 = load float, ptr %6, align 4, !tbaa !49
  %54 = fsub float %52, %53
  store float %54, ptr %3, align 4, !tbaa !49
  %55 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !49
  %57 = load float, ptr %31, align 4, !tbaa !49
  %58 = fsub float %56, %57
  store float %58, ptr %32, align 4, !tbaa !49
  %59 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !49
  %61 = load float, ptr %33, align 4, !tbaa !49
  %62 = fsub float %60, %61
  store float %62, ptr %34, align 4, !tbaa !49
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %3) #8
  %63 = getelementptr inbounds float, ptr %48, i64 1
  %64 = load float, ptr %3, align 4, !tbaa !49
  %65 = load float, ptr %32, align 4, !tbaa !49
  %66 = load float, ptr %34, align 4, !tbaa !49
  call void @map_to_sphere(ptr noundef %48, ptr noundef nonnull %63, float noundef %64, float noundef %65, float noundef %66) #8
  %67 = load float, ptr %48, align 4, !tbaa !49
  %68 = fcmp ult float %67, 1.000000e+00
  br i1 %68, label %71, label %69

69:                                               ; preds = %45
  %70 = fadd float %67, -1.000000e+00
  store float %70, ptr %48, align 4, !tbaa !49
  br label %71

71:                                               ; preds = %45, %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %72 = load ptr, ptr %29, align 8, !tbaa !148
  %73 = call ptr %72(ptr noundef nonnull %5) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %45, !llvm.loop !191

75:                                               ; preds = %71, %41
  %76 = load ptr, ptr %10, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.BMesh, ptr %76, i64 0, i32 27
  %78 = load ptr, ptr %36, align 8, !tbaa !45
  %79 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %77, ptr noundef %78, i32 noundef 15) #8
  call fastcc void @uv_map_mirror(ptr noundef nonnull %10, ptr noundef nonnull %36)
  br label %80

80:                                               ; preds = %35, %75
  %81 = load ptr, ptr %20, align 8, !tbaa !148
  %82 = call ptr %81(ptr noundef nonnull %4) #8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %35, !llvm.loop !192

84:                                               ; preds = %80, %13
  call fastcc void @uv_map_clip_correct(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %1)
  %85 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !111
  call void @DAG_id_tag_update(ptr noundef %86, i16 noundef signext 0) #8
  %87 = load ptr, ptr %85, align 8, !tbaa !111
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %87) #8
  br label %88

88:                                               ; preds = %2, %84
  %89 = phi i32 [ 4, %84 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define dso_local void @UV_OT_cylinder_project(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.57, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cylinder_project_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.79, ptr noundef nonnull @uv_transform_properties.direction_items, i32 noundef 0, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !63
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.78, ptr noundef nonnull @uv_transform_properties.align_items, i32 noundef 0, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !63
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.80, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, float noundef 0x3F1A36E2E0000000, float noundef 1.000000e+02) #8
  %14 = load ptr, ptr %7, align 8, !tbaa !63
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #8
  %16 = load ptr, ptr %7, align 8, !tbaa !63
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #8
  %18 = load ptr, ptr %7, align 8, !tbaa !63
  %19 = tail call ptr @RNA_def_boolean(ptr noundef %18, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cylinder_project_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %9) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  %11 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %8, ptr noundef %9), !range !64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %10, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 26
  %16 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %15, i32 noundef 16) #8
  call fastcc void @uv_map_transform(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %17 = load ptr, ptr %10, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %18, align 4, !tbaa !145
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !147
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !148
  %21 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !162
  store ptr %22, ptr %4, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #8
  %23 = load ptr, ptr %20, align 8, !tbaa !148
  %24 = call ptr %23(ptr noundef nonnull %4) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %84, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %28 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %29 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %30 = sext i32 %16 to i64
  %31 = getelementptr inbounds float, ptr %6, i64 1
  %32 = getelementptr inbounds float, ptr %3, i64 1
  %33 = getelementptr inbounds float, ptr %6, i64 2
  %34 = getelementptr inbounds float, ptr %3, i64 2
  br label %35

35:                                               ; preds = %26, %80
  %36 = phi ptr [ %24, %26 ], [ %82, %80 ]
  %37 = getelementptr inbounds %struct.BMHeader, ptr %36, i64 0, i32 3
  %38 = load i8, ptr %37, align 1, !tbaa !138
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %35
  store i8 11, ptr %27, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %28, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %29, align 8, !tbaa !148
  store ptr %36, ptr %5, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #8
  %42 = load ptr, ptr %29, align 8, !tbaa !148
  %43 = call ptr %42(ptr noundef nonnull %5) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %75, label %45

45:                                               ; preds = %41, %71
  %46 = phi ptr [ %73, %71 ], [ %43, %41 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !153
  %48 = getelementptr inbounds i8, ptr %47, i64 %30
  %49 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !150
  %51 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %52 = load float, ptr %51, align 4, !tbaa !49
  %53 = load float, ptr %6, align 4, !tbaa !49
  %54 = fsub float %52, %53
  store float %54, ptr %3, align 4, !tbaa !49
  %55 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !49
  %57 = load float, ptr %31, align 4, !tbaa !49
  %58 = fsub float %56, %57
  store float %58, ptr %32, align 4, !tbaa !49
  %59 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !49
  %61 = load float, ptr %33, align 4, !tbaa !49
  %62 = fsub float %60, %61
  store float %62, ptr %34, align 4, !tbaa !49
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %3) #8
  %63 = getelementptr inbounds float, ptr %48, i64 1
  %64 = load float, ptr %3, align 4, !tbaa !49
  %65 = load float, ptr %32, align 4, !tbaa !49
  %66 = load float, ptr %34, align 4, !tbaa !49
  call void @map_to_tube(ptr noundef %48, ptr noundef nonnull %63, float noundef %64, float noundef %65, float noundef %66) #8
  %67 = load float, ptr %48, align 4, !tbaa !49
  %68 = fcmp ult float %67, 1.000000e+00
  br i1 %68, label %71, label %69

69:                                               ; preds = %45
  %70 = fadd float %67, -1.000000e+00
  store float %70, ptr %48, align 4, !tbaa !49
  br label %71

71:                                               ; preds = %45, %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %72 = load ptr, ptr %29, align 8, !tbaa !148
  %73 = call ptr %72(ptr noundef nonnull %5) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %45, !llvm.loop !193

75:                                               ; preds = %71, %41
  %76 = load ptr, ptr %10, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.BMesh, ptr %76, i64 0, i32 27
  %78 = load ptr, ptr %36, align 8, !tbaa !45
  %79 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %77, ptr noundef %78, i32 noundef 15) #8
  call fastcc void @uv_map_mirror(ptr noundef nonnull %10, ptr noundef nonnull %36)
  br label %80

80:                                               ; preds = %35, %75
  %81 = load ptr, ptr %20, align 8, !tbaa !148
  %82 = call ptr %81(ptr noundef nonnull %4) #8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %35, !llvm.loop !194

84:                                               ; preds = %80, %13
  call fastcc void @uv_map_clip_correct(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %1)
  %85 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !111
  call void @DAG_id_tag_update(ptr noundef %86, i16 noundef signext 0) #8
  %87 = load ptr, ptr %85, align 8, !tbaa !111
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %87) #8
  br label %88

88:                                               ; preds = %2, %84
  %89 = phi i32 [ 4, %84 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define dso_local void @UV_OT_cube_project(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.59, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cube_project_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.62, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !63
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !63
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #8
  %14 = load ptr, ptr %7, align 8, !tbaa !63
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cube_project_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %8 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %5, ptr noundef %6), !range !64
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %103, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 26
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 16) #8
  %14 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47, i64 3
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = tail call float @RNA_float_get(ptr noundef %16, ptr noundef nonnull @.str.62) #8
  %18 = load ptr, ptr %7, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %19, align 4, !tbaa !145
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !147
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !148
  %22 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !162
  store ptr %23, ptr %3, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #8
  %24 = load ptr, ptr %21, align 8, !tbaa !148
  %25 = call ptr %24(ptr noundef nonnull %3) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %99, label %27

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %29 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %30 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %31 = sext i32 %13 to i64
  %32 = fmul float %17, 5.000000e-01
  br label %33

33:                                               ; preds = %27, %95
  %34 = phi ptr [ %25, %27 ], [ %97, %95 ]
  %35 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 3
  %36 = load i8, ptr %35, align 1, !tbaa !138
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %95, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.BMFace, ptr %34, i64 0, i32 4
  %41 = load float, ptr %40, align 4, !tbaa !49
  %42 = getelementptr inbounds %struct.BMFace, ptr %34, i64 0, i32 4, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !49
  %44 = getelementptr inbounds %struct.BMFace, ptr %34, i64 0, i32 4, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !49
  store i8 11, ptr %28, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %29, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %30, align 8, !tbaa !148
  store ptr %34, ptr %4, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #8
  %46 = load ptr, ptr %30, align 8, !tbaa !148
  %47 = call ptr %46(ptr noundef nonnull %4) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %95, label %49

49:                                               ; preds = %39
  %50 = call float @llvm.fabs.f32(float %45)
  %51 = call float @llvm.fabs.f32(float %41)
  %52 = fcmp ult float %50, %51
  %53 = call float @llvm.fabs.f32(float %43)
  %54 = fcmp ult float %50, %53
  %55 = select i1 %52, i1 true, i1 %54
  %56 = fcmp ult float %53, %51
  %57 = fcmp ult float %53, %50
  %58 = or i1 %56, %57
  %59 = select i1 %55, i1 %58, i1 false
  %60 = zext i1 %59 to i64
  %61 = getelementptr inbounds float, ptr %14, i64 %60
  %62 = select i1 %55, i64 2, i64 1
  %63 = getelementptr inbounds float, ptr %14, i64 %62
  br label %64

64:                                               ; preds = %49, %87
  %65 = phi i1 [ false, %49 ], [ true, %87 ]
  %66 = phi float [ 0.000000e+00, %49 ], [ %89, %87 ]
  %67 = phi float [ 0.000000e+00, %49 ], [ %88, %87 ]
  %68 = phi ptr [ %47, %49 ], [ %93, %87 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !153
  %70 = getelementptr inbounds i8, ptr %69, i64 %31
  %71 = load float, ptr %61, align 4, !tbaa !49
  %72 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !150
  %74 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2, i64 %60
  %75 = load float, ptr %74, align 4, !tbaa !49
  %76 = fadd float %71, %75
  %77 = call float @llvm.fmuladd.f32(float %32, float %76, float 5.000000e-01)
  store float %77, ptr %70, align 4, !tbaa !49
  %78 = load float, ptr %63, align 4, !tbaa !49
  %79 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2, i64 %62
  %80 = load float, ptr %79, align 4, !tbaa !49
  %81 = fadd float %78, %80
  %82 = call float @llvm.fmuladd.f32(float %32, float %81, float 5.000000e-01)
  %83 = getelementptr inbounds [2 x float], ptr %70, i64 0, i64 1
  store float %82, ptr %83, align 4, !tbaa !49
  br i1 %65, label %87, label %84

84:                                               ; preds = %64
  %85 = call float @llvm.floor.f32(float %77)
  %86 = call float @llvm.floor.f32(float %82)
  br label %87

87:                                               ; preds = %84, %64
  %88 = phi float [ %85, %84 ], [ %67, %64 ]
  %89 = phi float [ %86, %84 ], [ %66, %64 ]
  %90 = fsub float %77, %88
  store float %90, ptr %70, align 4, !tbaa !49
  %91 = fsub float %82, %89
  store float %91, ptr %83, align 4, !tbaa !49
  %92 = load ptr, ptr %30, align 8, !tbaa !148
  %93 = call ptr %92(ptr noundef nonnull %4) #8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %64, !llvm.loop !195

95:                                               ; preds = %87, %39, %33
  %96 = load ptr, ptr %21, align 8, !tbaa !148
  %97 = call ptr %96(ptr noundef nonnull %3) #8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %33, !llvm.loop !196

99:                                               ; preds = %95, %10
  call fastcc void @uv_map_clip_correct(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %1)
  %100 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %101 = load ptr, ptr %100, align 8, !tbaa !111
  call void @DAG_id_tag_update(ptr noundef %101, i16 noundef signext 0) #8
  %102 = load ptr, ptr %100, align 8, !tbaa !111
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %102) #8
  br label %103

103:                                              ; preds = %2, %99
  %104 = phi i32 [ 4, %99 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret i32 %104
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @minimize_stretch_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.3) #8
  %9 = tail call fastcc zeroext i8 @uvedit_have_selection(ptr noundef %3, ptr noundef %5, i8 noundef zeroext 1), !range !64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  %12 = trunc i32 %8 to i8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %14 = tail call ptr %13(i64 noundef 64, ptr noundef nonnull @.str.65) #8
  store ptr %3, ptr %14, align 8, !tbaa !197
  %15 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 1
  store ptr %4, ptr %15, align 8, !tbaa !198
  %16 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 2
  store ptr %5, ptr %16, align 8, !tbaa !199
  %17 = load ptr, ptr %6, align 8, !tbaa !65
  %18 = tail call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.6) #8
  %19 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 4
  store float %18, ptr %19, align 8, !tbaa !71
  %20 = load ptr, ptr %6, align 8, !tbaa !65
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.9) #8
  %22 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 7
  store i32 %21, ptr %22, align 4, !tbaa !83
  %23 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 6
  store i32 0, ptr %23, align 8, !tbaa !72
  %24 = tail call fastcc ptr @construct_param_handle(ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext %12, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %25 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !68
  %26 = tail call double @PIL_check_seconds_timer() #8
  %27 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 5
  store double %26, ptr %27, align 8, !tbaa !82
  %28 = load ptr, ptr %25, align 8, !tbaa !68
  tail call void @param_stretch_begin(ptr noundef %28) #8
  %29 = load float, ptr %19, align 8, !tbaa !71
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %33

31:                                               ; preds = %11
  %32 = load ptr, ptr %25, align 8, !tbaa !68
  tail call void @param_stretch_blend(ptr noundef %32, float noundef %29) #8
  br label %33

33:                                               ; preds = %31, %11
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %14, ptr %34, align 8, !tbaa !67
  br label %35

35:                                               ; preds = %2, %33
  %36 = phi i8 [ 1, %33 ], [ 0, %2 ]
  ret i8 %36
}

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @minimize_stretch_iteration(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [100 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 4
  %11 = load float, ptr %10, align 8, !tbaa !71
  tail call void @param_stretch_blend(ptr noundef %9, float noundef %11) #8
  %12 = load ptr, ptr %8, align 8, !tbaa !68
  tail call void @param_stretch_iter(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !72
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.9, i32 noundef %15) #8
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %3
  %20 = tail call double @PIL_check_seconds_timer() #8
  %21 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 5
  %22 = load double, ptr %21, align 8, !tbaa !82
  %23 = fsub double %20, %22
  %24 = fcmp ogt double %23, 5.000000e-01
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #8
  %26 = load ptr, ptr %8, align 8, !tbaa !68
  tail call void @param_flush(ptr noundef %26) #8
  %27 = icmp eq ptr %7, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load float, ptr %10, align 8, !tbaa !71
  %30 = fpext float %29 to double
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 100, ptr noundef nonnull @.str.66, double noundef %30) #8
  call void @ED_area_headerprint(ptr noundef nonnull %7, ptr noundef nonnull %4) #8
  br label %32

32:                                               ; preds = %28, %25
  %33 = call double @PIL_check_seconds_timer() #8
  store double %33, ptr %21, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !198
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !111
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 0) #8
  %38 = load ptr, ptr %34, align 8, !tbaa !198
  %39 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !111
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %40) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #8
  br label %41

41:                                               ; preds = %32, %19, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @minimize_stretch_exit(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @ED_area_headerprint(ptr noundef nonnull %6, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %15 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %16 = load ptr, ptr %10, align 8, !tbaa !76
  tail call void @WM_event_remove_timer(ptr noundef %14, ptr noundef %15, ptr noundef %16) #8
  br label %17

17:                                               ; preds = %13, %9
  %18 = icmp eq i8 %2, 0
  %19 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  br i1 %18, label %22, label %21

21:                                               ; preds = %17
  tail call void @param_flush_restore(ptr noundef %20) #8
  br label %23

22:                                               ; preds = %17
  tail call void @param_flush(ptr noundef %20) #8
  br label %23

23:                                               ; preds = %22, %21
  %24 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  tail call void @param_stretch_end(ptr noundef %25) #8
  %26 = load ptr, ptr %24, align 8, !tbaa !68
  tail call void @param_delete(ptr noundef %26) #8
  %27 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !198
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  tail call void @DAG_id_tag_update(ptr noundef %30, i16 noundef signext 0) #8
  %31 = load ptr, ptr %27, align 8, !tbaa !198
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !111
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %33) #8
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %34(ptr noundef %5) #8
  store ptr null, ptr %4, align 8, !tbaa !67
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @uvedit_have_selection(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 16) #8
  %9 = icmp eq i32 %8, -1
  %10 = load ptr, ptr %1, align 8, !tbaa !34
  br i1 %9, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !200
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %67

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %17, align 4, !tbaa !145
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !147
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !148
  %20 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !162
  store ptr %21, ptr %4, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #8
  %22 = load ptr, ptr %19, align 8, !tbaa !148
  %23 = call ptr %22(ptr noundef nonnull %4) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %67, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %27 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %28 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %29 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %30 = icmp eq i8 %2, 0
  br label %31

31:                                               ; preds = %25, %63
  %32 = phi ptr [ %23, %25 ], [ %65, %63 ]
  %33 = load ptr, ptr %26, align 8, !tbaa !84
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %33, i64 0, i32 11
  %35 = load i8, ptr %34, align 2, !tbaa !137
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !138
  br i1 %37, label %43, label %40

40:                                               ; preds = %31
  %41 = and i8 %39, 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %63

43:                                               ; preds = %31
  %44 = and i8 %39, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %43, %40
  store i8 11, ptr %27, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %28, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %29, align 8, !tbaa !148
  store ptr %32, ptr %5, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #8
  %47 = load ptr, ptr %29, align 8, !tbaa !148
  %48 = call ptr %47(ptr noundef nonnull %5) #8
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %48, i32 noundef %8) #8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %60

53:                                               ; preds = %56
  %54 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %58, i32 noundef %8) #8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60, !llvm.loop !201

56:                                               ; preds = %50, %53
  %57 = load ptr, ptr %29, align 8, !tbaa !148
  %58 = call ptr %57(ptr noundef nonnull %5) #8
  %59 = icmp ne ptr %58, null
  br i1 %59, label %53, label %60, !llvm.loop !201

60:                                               ; preds = %53, %56, %50, %46
  %61 = phi i1 [ %49, %46 ], [ %49, %50 ], [ %59, %56 ], [ %59, %53 ]
  %62 = or i1 %30, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %60, %43, %40
  %64 = load ptr, ptr %19, align 8, !tbaa !148
  %65 = call ptr %64(ptr noundef nonnull %4) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %31, !llvm.loop !202

67:                                               ; preds = %60, %63, %16, %11
  %68 = phi i8 [ %15, %11 ], [ 0, %16 ], [ 0, %63 ], [ 1, %60 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret i8 %68
}

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare void @param_stretch_begin(ptr noundef) local_unnamed_addr #2

declare void @param_stretch_blend(ptr noundef, float noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @param_stretch_iter(ptr noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare void @param_stretch_end(ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @param_construct_begin() local_unnamed_addr #2

declare void @param_aspect_ratio(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @subsurf_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_edge_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @param_face_add(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @param_edge_set_seam(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @param_construct_end(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @construct_param_handle_face_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !203
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = shl nsw i64 %8, 2
  %12 = alloca i8, i64 %11, align 16
  %13 = alloca i8, i64 %11, align 16
  %14 = alloca i8, i64 %9, align 16
  %15 = alloca i8, i64 %9, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 11, ptr %16, align 4, !tbaa !145
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %17, align 8, !tbaa !147
  %18 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %18, align 8, !tbaa !148
  store ptr %2, ptr %5, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #8
  %19 = load ptr, ptr %18, align 8, !tbaa !148
  %20 = call ptr %19(ptr noundef nonnull %5) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %4
  %23 = sext i32 %3 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %48, %24 ]
  %26 = phi ptr [ %20, %22 ], [ %47, %24 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !153
  %28 = getelementptr inbounds i8, ptr %27, i64 %23
  %29 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !152
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, ptr %10, i64 %25
  store i64 %33, ptr %34, align 8, !tbaa !141
  %35 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  %36 = getelementptr inbounds ptr, ptr %14, i64 %25
  store ptr %35, ptr %36, align 8, !tbaa !48
  %37 = getelementptr inbounds ptr, ptr %15, i64 %25
  store ptr %28, ptr %37, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct.MLoopUV, ptr %28, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !154
  %40 = lshr i32 %39, 2
  %41 = and i32 %40, 1
  %42 = getelementptr inbounds i32, ptr %12, i64 %25
  store i32 %41, ptr %42, align 4, !tbaa !134
  %43 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %1, ptr noundef nonnull %26, i32 noundef %3) #8
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i32, ptr %13, i64 %25
  store i32 %44, ptr %45, align 4, !tbaa !134
  %46 = load ptr, ptr %18, align 8, !tbaa !148
  %47 = call ptr %46(ptr noundef nonnull %5) #8
  %48 = add nuw i64 %25, 1
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %24, !llvm.loop !204

50:                                               ; preds = %24
  %51 = trunc i64 %48 to i32
  br label %52

52:                                               ; preds = %50, %4
  %53 = phi i32 [ 0, %4 ], [ %51, %50 ]
  %54 = ptrtoint ptr %2 to i64
  %55 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  call void @param_face_add(ptr noundef %0, i64 noundef %54, i32 noundef %53, ptr noundef nonnull %10, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %55) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret void
}

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %7 = tail call zeroext i8 @ED_uvedit_test(ptr noundef %2) #8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %77

9:                                                ; preds = %3
  %10 = icmp eq ptr %6, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %6, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !205
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %18 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %17, i32 noundef 15) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !111
  %23 = tail call i32 @ED_mesh_uv_texture_add(ptr noundef %22, ptr noundef null, i8 noundef zeroext 1) #8
  br label %24

24:                                               ; preds = %20, %16, %11, %9
  %25 = tail call zeroext i8 @ED_uvedit_test(ptr noundef %2) #8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %77, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.BMesh, ptr %28, i64 0, i32 26
  %30 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %29, i32 noundef 16) #8
  %31 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = tail call ptr @CTX_wm_screen(ptr noundef %0) #8
  %35 = getelementptr inbounds %struct.bScreen, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %33, %54
  %39 = phi ptr [ %55, %54 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.ScrArea, ptr %39, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !206
  %42 = getelementptr inbounds %struct.SpaceLink, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !208
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.SpaceImage, ptr %41, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !210
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Image, ptr %47, i64 0, i32 12
  %51 = load i16, ptr %50, align 2, !tbaa !216
  %52 = and i16 %51, -2
  %53 = icmp eq i16 %52, 4
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %38, %45
  %55 = load ptr, ptr %39, align 8, !tbaa !48
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %38, !llvm.loop !218

57:                                               ; preds = %54, %49, %33, %27
  %58 = phi ptr [ %31, %27 ], [ null, %33 ], [ %47, %49 ], [ null, %54 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @ED_uvedit_assign_image(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %58, ptr noundef null) #8
  br label %61

61:                                               ; preds = %60, %57
  %62 = load ptr, ptr %6, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %63, align 4, !tbaa !145
  %64 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %64, align 8, !tbaa !147
  %65 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %65, align 8, !tbaa !148
  %66 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !162
  store ptr %67, ptr %4, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #8
  %68 = load ptr, ptr %65, align 8, !tbaa !148
  %69 = call ptr %68(ptr noundef nonnull %4) #8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %61, %71
  %72 = phi ptr [ %75, %71 ], [ %69, %61 ]
  %73 = call zeroext i8 @uvedit_face_select_enable(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %72, i8 noundef zeroext 0, i32 noundef %30) #8
  %74 = load ptr, ptr %65, align 8, !tbaa !148
  %75 = call ptr %74(ptr noundef nonnull %4) #8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %71, !llvm.loop !219

77:                                               ; preds = %71, %61, %24, %3
  %78 = phi i8 [ 1, %3 ], [ 0, %24 ], [ 1, %61 ], [ 1, %71 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret i8 %78
}

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare i32 @ED_mesh_uv_texture_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare void @ED_uvedit_assign_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_face_select_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_camera_data_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_map_rotation_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %13) #8
  br label %15

14:                                               ; preds = %6
  call void @unit_m4(ptr noundef nonnull %9) #8
  br label %15

15:                                               ; preds = %14, %12
  %16 = getelementptr inbounds i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, i8 0, i64 16, i1 false), !tbaa !49
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %17) #8
  %18 = getelementptr inbounds i8, ptr %10, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, i8 0, i64 16, i1 false), !tbaa !49
  call void @zero_m4(ptr noundef nonnull %7) #8
  call void @zero_m4(ptr noundef nonnull %8) #8
  %19 = fadd float %4, 1.800000e+02
  %20 = fmul float %19, 0x400921FB60000000
  %21 = fdiv float %20, 1.800000e+02
  %22 = call float @cosf(float noundef %21) #8
  store float %22, ptr %8, align 16, !tbaa !49
  %23 = call float @sinf(float noundef %21) #8
  %24 = fneg float %23
  %25 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store float %24, ptr %25, align 4, !tbaa !49
  %26 = call float @sinf(float noundef %21) #8
  %27 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 1
  store float %26, ptr %27, align 16, !tbaa !49
  %28 = call float @cosf(float noundef %21) #8
  %29 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 1, i64 1
  store float %28, ptr %29, align 4, !tbaa !49
  %30 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %30, align 8, !tbaa !49
  %31 = fmul float %3, 0x400921FB60000000
  %32 = fdiv float %31, 1.800000e+02
  %33 = call float @cosf(float noundef %32) #8
  %34 = fdiv float %33, %5
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 1
  store float %34, ptr %35, align 4, !tbaa !49
  %36 = call float @sinf(float noundef %32) #8
  %37 = fneg float %36
  %38 = fdiv float %37, %5
  %39 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  store float %38, ptr %39, align 8, !tbaa !49
  %40 = call float @sinf(float noundef %32) #8
  %41 = fdiv float %40, %5
  %42 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 1
  store float %41, ptr %42, align 4, !tbaa !49
  %43 = call float @cosf(float noundef %32) #8
  %44 = fdiv float %43, %5
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float %44, ptr %45, align 8, !tbaa !49
  %46 = fdiv float 1.000000e+00, %5
  store float %46, ptr %7, align 16, !tbaa !49
  call void @_va_mul_m4_series_5(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  ret void
}

declare void @BLI_uvproject_from_view_ortho(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_uvproject_camera_info(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLI_uvproject_from_camera(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_uvproject_from_view(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_map_clip_correct(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.35) #8
  %16 = load ptr, ptr %13, align 8, !tbaa !65
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.72) #8
  %18 = load ptr, ptr %13, align 8, !tbaa !65
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.73) #8
  %20 = load ptr, ptr %2, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 26
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 16) #8
  %23 = and i32 %15, 255
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %107, label %25

25:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %26 = load ptr, ptr %2, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 26
  %28 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %27, i32 noundef 16) #8
  call void @uvedit_get_aspect(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %29 = load float, ptr %7, align 4, !tbaa !49
  %30 = load float, ptr %8, align 4, !tbaa !49
  %31 = fcmp oeq float %29, %30
  br i1 %31, label %106, label %32

32:                                               ; preds = %25
  %33 = fcmp ogt float %29, %30
  %34 = load ptr, ptr %2, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %35, align 4, !tbaa !145
  %36 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %36, align 8, !tbaa !147
  %37 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %37, align 8, !tbaa !148
  %38 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !162
  store ptr %39, ptr %5, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #8
  %40 = load ptr, ptr %37, align 8, !tbaa !148
  %41 = call ptr %40(ptr noundef nonnull %5) #8
  %42 = icmp eq ptr %41, null
  br i1 %33, label %43, label %74

43:                                               ; preds = %32
  %44 = fdiv float %30, %29
  br i1 %42, label %106, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %47 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %48 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %49 = sext i32 %28 to i64
  br label %50

50:                                               ; preds = %45, %70
  %51 = phi ptr [ %41, %45 ], [ %72, %70 ]
  %52 = getelementptr inbounds %struct.BMHeader, ptr %51, i64 0, i32 3
  %53 = load i8, ptr %52, align 1, !tbaa !138
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %50
  store i8 11, ptr %46, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %47, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %48, align 8, !tbaa !148
  store ptr %51, ptr %6, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #8
  %57 = load ptr, ptr %48, align 8, !tbaa !148
  %58 = call ptr %57(ptr noundef nonnull %6) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %56, %60
  %61 = phi ptr [ %68, %60 ], [ %58, %56 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !153
  %63 = getelementptr inbounds i8, ptr %62, i64 %49
  %64 = load float, ptr %63, align 4, !tbaa !49
  %65 = fadd float %64, -5.000000e-01
  %66 = call float @llvm.fmuladd.f32(float %65, float %44, float 5.000000e-01)
  store float %66, ptr %63, align 4, !tbaa !49
  %67 = load ptr, ptr %48, align 8, !tbaa !148
  %68 = call ptr %67(ptr noundef nonnull %6) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %60, !llvm.loop !220

70:                                               ; preds = %60, %56, %50
  %71 = load ptr, ptr %37, align 8, !tbaa !148
  %72 = call ptr %71(ptr noundef nonnull %5) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %106, label %50, !llvm.loop !221

74:                                               ; preds = %32
  %75 = fdiv float %29, %30
  br i1 %42, label %106, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %78 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %79 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %80 = sext i32 %28 to i64
  br label %81

81:                                               ; preds = %76, %102
  %82 = phi ptr [ %41, %76 ], [ %104, %102 ]
  %83 = getelementptr inbounds %struct.BMHeader, ptr %82, i64 0, i32 3
  %84 = load i8, ptr %83, align 1, !tbaa !138
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %81
  store i8 11, ptr %77, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %78, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %79, align 8, !tbaa !148
  store ptr %82, ptr %6, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #8
  %88 = load ptr, ptr %79, align 8, !tbaa !148
  %89 = call ptr %88(ptr noundef nonnull %6) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %87, %91
  %92 = phi ptr [ %100, %91 ], [ %89, %87 ]
  %93 = load ptr, ptr %92, align 8, !tbaa !153
  %94 = getelementptr inbounds i8, ptr %93, i64 %80
  %95 = getelementptr inbounds [2 x float], ptr %94, i64 0, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !49
  %97 = fadd float %96, -5.000000e-01
  %98 = call float @llvm.fmuladd.f32(float %97, float %75, float 5.000000e-01)
  store float %98, ptr %95, align 4, !tbaa !49
  %99 = load ptr, ptr %79, align 8, !tbaa !148
  %100 = call ptr %99(ptr noundef nonnull %6) #8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %91, !llvm.loop !222

102:                                              ; preds = %91, %87, %81
  %103 = load ptr, ptr %37, align 8, !tbaa !148
  %104 = call ptr %103(ptr noundef nonnull %5) #8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %81, !llvm.loop !223

106:                                              ; preds = %102, %70, %74, %43, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %107

107:                                              ; preds = %106, %4
  %108 = and i32 %19, 255
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %202, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  store float 0x46293E5940000000, ptr %111, align 4, !tbaa !49
  store float 0x46293E5940000000, ptr %11, align 4, !tbaa !49
  %112 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %112, align 4, !tbaa !49
  store float 0xC6293E5940000000, ptr %12, align 4, !tbaa !49
  %113 = load ptr, ptr %2, align 8, !tbaa !34
  %114 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 3, ptr %114, align 4, !tbaa !145
  %115 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %115, align 8, !tbaa !147
  %116 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %116, align 8, !tbaa !148
  %117 = getelementptr inbounds %struct.BMesh, ptr %113, i64 0, i32 12
  %118 = load ptr, ptr %117, align 8, !tbaa !162
  store ptr %118, ptr %9, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #8
  %119 = load ptr, ptr %116, align 8, !tbaa !148
  %120 = call ptr %119(ptr noundef nonnull %9) #8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %148, label %122

122:                                              ; preds = %110
  %123 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %124 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %125 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %126 = sext i32 %22 to i64
  br label %127

127:                                              ; preds = %122, %144
  %128 = phi ptr [ %120, %122 ], [ %146, %144 ]
  %129 = getelementptr inbounds %struct.BMHeader, ptr %128, i64 0, i32 3
  %130 = load i8, ptr %129, align 1, !tbaa !138
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %127
  store i8 11, ptr %123, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %124, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %125, align 8, !tbaa !148
  store ptr %128, ptr %10, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #8
  %134 = load ptr, ptr %125, align 8, !tbaa !148
  %135 = call ptr %134(ptr noundef nonnull %10) #8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %133, %137
  %138 = phi ptr [ %142, %137 ], [ %135, %133 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !153
  %140 = getelementptr inbounds i8, ptr %139, i64 %126
  call void @minmax_v2v2_v2(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %140) #8
  %141 = load ptr, ptr %125, align 8, !tbaa !148
  %142 = call ptr %141(ptr noundef nonnull %10) #8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %137, !llvm.loop !224

144:                                              ; preds = %137, %133, %127
  %145 = load ptr, ptr %116, align 8, !tbaa !148
  %146 = call ptr %145(ptr noundef nonnull %9) #8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %127, !llvm.loop !225

148:                                              ; preds = %144, %110
  %149 = load float, ptr %12, align 4, !tbaa !49
  %150 = load float, ptr %11, align 4, !tbaa !49
  %151 = fsub float %149, %150
  %152 = load float, ptr %112, align 4, !tbaa !49
  %153 = load float, ptr %111, align 4, !tbaa !49
  %154 = fsub float %152, %153
  %155 = fcmp ogt float %151, 0.000000e+00
  %156 = fdiv float 1.000000e+00, %151
  %157 = select i1 %155, float %156, float %151
  %158 = fcmp ogt float %154, 0.000000e+00
  %159 = fdiv float 1.000000e+00, %154
  %160 = select i1 %158, float %159, float %154
  %161 = load ptr, ptr %2, align 8, !tbaa !34
  store i8 3, ptr %114, align 4, !tbaa !145
  store ptr @bmiter__elem_of_mesh_begin, ptr %115, align 8, !tbaa !147
  store ptr @bmiter__elem_of_mesh_step, ptr %116, align 8, !tbaa !148
  %162 = getelementptr inbounds %struct.BMesh, ptr %161, i64 0, i32 12
  %163 = load ptr, ptr %162, align 8, !tbaa !162
  store ptr %163, ptr %9, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #8
  %164 = load ptr, ptr %116, align 8, !tbaa !148
  %165 = call ptr %164(ptr noundef nonnull %9) #8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %256, label %167

167:                                              ; preds = %148
  %168 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %169 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %170 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %171 = sext i32 %22 to i64
  br label %172

172:                                              ; preds = %167, %198
  %173 = phi ptr [ %165, %167 ], [ %200, %198 ]
  %174 = getelementptr inbounds %struct.BMHeader, ptr %173, i64 0, i32 3
  %175 = load i8, ptr %174, align 1, !tbaa !138
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %198, label %178

178:                                              ; preds = %172
  store i8 11, ptr %168, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %169, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %170, align 8, !tbaa !148
  store ptr %173, ptr %10, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #8
  %179 = load ptr, ptr %170, align 8, !tbaa !148
  %180 = call ptr %179(ptr noundef nonnull %10) #8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %198, label %182

182:                                              ; preds = %178, %182
  %183 = phi ptr [ %196, %182 ], [ %180, %178 ]
  %184 = load ptr, ptr %183, align 8, !tbaa !153
  %185 = getelementptr inbounds i8, ptr %184, i64 %171
  %186 = load float, ptr %185, align 4, !tbaa !49
  %187 = load float, ptr %11, align 4, !tbaa !49
  %188 = fsub float %186, %187
  %189 = fmul float %157, %188
  store float %189, ptr %185, align 4, !tbaa !49
  %190 = getelementptr inbounds [2 x float], ptr %185, i64 0, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !49
  %192 = load float, ptr %111, align 4, !tbaa !49
  %193 = fsub float %191, %192
  %194 = fmul float %160, %193
  store float %194, ptr %190, align 4, !tbaa !49
  %195 = load ptr, ptr %170, align 8, !tbaa !148
  %196 = call ptr %195(ptr noundef nonnull %10) #8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %182, !llvm.loop !226

198:                                              ; preds = %182, %178, %172
  %199 = load ptr, ptr %116, align 8, !tbaa !148
  %200 = call ptr %199(ptr noundef nonnull %9) #8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %256, label %172, !llvm.loop !227

202:                                              ; preds = %107
  %203 = and i32 %17, 255
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %256, label %205

205:                                              ; preds = %202
  %206 = load ptr, ptr %2, align 8, !tbaa !34
  %207 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 3, ptr %207, align 4, !tbaa !145
  %208 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %208, align 8, !tbaa !147
  %209 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %209, align 8, !tbaa !148
  %210 = getelementptr inbounds %struct.BMesh, ptr %206, i64 0, i32 12
  %211 = load ptr, ptr %210, align 8, !tbaa !162
  store ptr %211, ptr %9, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #8
  %212 = load ptr, ptr %209, align 8, !tbaa !148
  %213 = call ptr %212(ptr noundef nonnull %9) #8
  %214 = icmp eq ptr %213, null
  br i1 %214, label %256, label %215

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %217 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %218 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %219 = sext i32 %22 to i64
  br label %220

220:                                              ; preds = %215, %252
  %221 = phi ptr [ %213, %215 ], [ %254, %252 ]
  %222 = getelementptr inbounds %struct.BMHeader, ptr %221, i64 0, i32 3
  %223 = load i8, ptr %222, align 1, !tbaa !138
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %252, label %226

226:                                              ; preds = %220
  store i8 11, ptr %216, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %217, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %218, align 8, !tbaa !148
  store ptr %221, ptr %10, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #8
  %227 = load ptr, ptr %218, align 8, !tbaa !148
  %228 = call ptr %227(ptr noundef nonnull %10) #8
  %229 = icmp eq ptr %228, null
  br i1 %229, label %252, label %230

230:                                              ; preds = %226, %248
  %231 = phi ptr [ %250, %248 ], [ %228, %226 ]
  %232 = load ptr, ptr %231, align 8, !tbaa !153
  %233 = getelementptr inbounds i8, ptr %232, i64 %219
  %234 = load float, ptr %233, align 4, !tbaa !49
  %235 = fcmp olt float %234, 0.000000e+00
  br i1 %235, label %238, label %236

236:                                              ; preds = %230
  %237 = fcmp ogt float %234, 1.000000e+00
  br i1 %237, label %238, label %240

238:                                              ; preds = %236, %230
  %239 = phi float [ 0.000000e+00, %230 ], [ 1.000000e+00, %236 ]
  store float %239, ptr %233, align 4, !tbaa !49
  br label %240

240:                                              ; preds = %238, %236
  %241 = getelementptr inbounds [2 x float], ptr %233, i64 0, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !49
  %243 = fcmp olt float %242, 0.000000e+00
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = fcmp ogt float %242, 1.000000e+00
  br i1 %245, label %246, label %248

246:                                              ; preds = %244, %240
  %247 = phi float [ 0.000000e+00, %240 ], [ 1.000000e+00, %244 ]
  store float %247, ptr %241, align 4, !tbaa !49
  br label %248

248:                                              ; preds = %246, %244
  %249 = load ptr, ptr %218, align 8, !tbaa !148
  %250 = call ptr %249(ptr noundef nonnull %10) #8
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %230, !llvm.loop !228

252:                                              ; preds = %248, %226, %220
  %253 = load ptr, ptr %209, align 8, !tbaa !148
  %254 = call ptr %253(ptr noundef nonnull %9) #8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %220, !llvm.loop !229

256:                                              ; preds = %198, %252, %148, %205, %202
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @zero_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

declare void @_va_mul_m4_series_5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @ED_mesh_uv_loop_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_map_transform(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %11 = tail call ptr @BKE_editmesh_from_object(ptr noundef %10) #8
  %12 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %13 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #8
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = tail call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.78) #8
  %17 = load ptr, ptr %14, align 8, !tbaa !65
  %18 = tail call i32 @RNA_enum_get(ptr noundef %17, ptr noundef nonnull @.str.79) #8
  %19 = load ptr, ptr %14, align 8, !tbaa !65
  %20 = tail call ptr @RNA_struct_find_property(ptr noundef %19, ptr noundef nonnull @.str.80) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load ptr, ptr %14, align 8, !tbaa !65
  %24 = tail call float @RNA_float_get(ptr noundef %23, ptr noundef nonnull @.str.80) #8
  br label %25

25:                                               ; preds = %4, %22
  %26 = phi float [ %24, %22 ], [ 1.000000e+00, %4 ]
  %27 = icmp eq ptr %12, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 27
  %30 = load i16, ptr %29, align 2, !tbaa !230
  %31 = sext i16 %30 to i32
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ %31, %28 ], [ 0, %25 ]
  switch i32 %33, label %93 [
    i32 0, label %34
    i32 1, label %75
  ]

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %35 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0x46293E5940000000, ptr %35, align 4, !tbaa !49
  %36 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0x46293E5940000000, ptr %36, align 4, !tbaa !49
  store float 0x46293E5940000000, ptr %7, align 4, !tbaa !49
  %37 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %37, align 4, !tbaa !49
  %38 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %38, align 4, !tbaa !49
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !49
  %39 = load ptr, ptr %11, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %40, align 4, !tbaa !145
  %41 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %41, align 8, !tbaa !147
  %42 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %42, align 8, !tbaa !148
  %43 = getelementptr inbounds %struct.BMesh, ptr %39, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !162
  store ptr %44, ptr %5, align 8, !tbaa !149
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #8
  %45 = load ptr, ptr %42, align 8, !tbaa !148
  %46 = call ptr %45(ptr noundef nonnull %5) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %74, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %50 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %51 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %52

52:                                               ; preds = %48, %70
  %53 = phi ptr [ %46, %48 ], [ %72, %70 ]
  %54 = getelementptr inbounds %struct.BMHeader, ptr %53, i64 0, i32 3
  %55 = load i8, ptr %54, align 1, !tbaa !138
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  store i8 11, ptr %49, align 4, !tbaa !145
  store ptr @bmiter__loop_of_face_begin, ptr %50, align 8, !tbaa !147
  store ptr @bmiter__loop_of_face_step, ptr %51, align 8, !tbaa !148
  store ptr %53, ptr %6, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #8
  %59 = load ptr, ptr %51, align 8, !tbaa !148
  %60 = call ptr %59(ptr noundef nonnull %6) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %58, %62
  %63 = phi ptr [ %68, %62 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !150
  %66 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %66) #8
  %67 = load ptr, ptr %51, align 8, !tbaa !148
  %68 = call ptr %67(ptr noundef nonnull %6) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %62, !llvm.loop !231

70:                                               ; preds = %62, %58, %52
  %71 = load ptr, ptr %42, align 8, !tbaa !148
  %72 = call ptr %71(ptr noundef nonnull %5) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %52, !llvm.loop !232

74:                                               ; preds = %70, %34
  call void @mid_v3_v3v3(ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %96

75:                                               ; preds = %32
  %76 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %9, ptr noundef %12) #8
  %77 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3
  %78 = load float, ptr %76, align 4, !tbaa !49
  %79 = load float, ptr %77, align 4, !tbaa !49
  %80 = fsub float %78, %79
  store float %80, ptr %2, align 4, !tbaa !49
  %81 = getelementptr inbounds float, ptr %76, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !49
  %83 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !49
  %85 = fsub float %82, %84
  %86 = getelementptr inbounds float, ptr %2, i64 1
  store float %85, ptr %86, align 4, !tbaa !49
  %87 = getelementptr inbounds float, ptr %76, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !49
  %89 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !49
  %91 = fsub float %88, %90
  %92 = getelementptr inbounds float, ptr %2, i64 2
  store float %91, ptr %92, align 4, !tbaa !49
  br label %96

93:                                               ; preds = %32
  store float 0.000000e+00, ptr %2, align 4, !tbaa !49
  %94 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %94, align 4, !tbaa !49
  %95 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %95, align 4, !tbaa !49
  br label %96

96:                                               ; preds = %74, %75, %93
  %97 = icmp eq i32 %18, 2
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  call void @unit_m4(ptr noundef %3) #8
  br label %105

99:                                               ; preds = %96
  %100 = icmp eq i32 %18, 0
  %101 = icmp eq i32 %16, 1
  %102 = select i1 %100, i1 true, i1 %101
  %103 = select i1 %102, float 0.000000e+00, float 9.000000e+01
  %104 = select i1 %100, float 9.000000e+01, float 0.000000e+00
  call fastcc void @uv_map_rotation_matrix(ptr noundef %3, ptr noundef %13, ptr noundef %10, float noundef %104, float noundef %103, float noundef %26)
  br label %105

105:                                              ; preds = %99, %98
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_map_mirror(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !203
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #8
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 11, ptr %12, align 4, !tbaa !145
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %13, align 8, !tbaa !147
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %14, align 8, !tbaa !148
  store ptr %1, ptr %3, align 8, !tbaa !149
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #8
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = call ptr %15(ptr noundef nonnull %3) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = sext i32 %11 to i64
  br label %25

20:                                               ; preds = %25, %2
  %21 = load i32, ptr %4, align 8, !tbaa !203
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = zext nneg i32 %21 to i64
  br label %43

25:                                               ; preds = %18, %25
  %26 = phi i64 [ 0, %18 ], [ %33, %25 ]
  %27 = phi ptr [ %16, %18 ], [ %32, %25 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !153
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = getelementptr inbounds ptr, ptr %8, i64 %26
  store ptr %29, ptr %30, align 8, !tbaa !48
  %31 = load ptr, ptr %14, align 8, !tbaa !148
  %32 = call ptr %31(ptr noundef nonnull %3) #8
  %33 = add nuw i64 %26, 1
  %34 = icmp eq ptr %32, null
  br i1 %34, label %20, label %25, !llvm.loop !233

35:                                               ; preds = %43, %20
  %36 = phi i32 [ 0, %20 ], [ %55, %43 ]
  %37 = icmp sgt i32 %21, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds ptr, ptr %8, i64 %39
  %41 = zext i32 %36 to i64
  %42 = zext nneg i32 %21 to i64
  br label %58

43:                                               ; preds = %23, %43
  %44 = phi i64 [ 1, %23 ], [ %56, %43 ]
  %45 = phi i32 [ 0, %23 ], [ %55, %43 ]
  %46 = getelementptr inbounds ptr, ptr %8, i64 %44
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = load float, ptr %47, align 4, !tbaa !49
  %49 = sext i32 %45 to i64
  %50 = getelementptr inbounds ptr, ptr %8, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = load float, ptr %51, align 4, !tbaa !49
  %53 = fcmp ogt float %48, %52
  %54 = trunc i64 %44 to i32
  %55 = select i1 %53, i32 %54, i32 %45
  %56 = add nuw nsw i64 %44, 1
  %57 = icmp eq i64 %56, %24
  br i1 %57, label %35, label %43, !llvm.loop !234

58:                                               ; preds = %38, %71
  %59 = phi i64 [ 0, %38 ], [ %72, %71 ]
  %60 = icmp eq i64 %59, %41
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %40, align 8, !tbaa !48
  %63 = load float, ptr %62, align 4, !tbaa !49
  %64 = getelementptr inbounds ptr, ptr %8, i64 %59
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  %66 = load float, ptr %65, align 4, !tbaa !49
  %67 = fsub float %63, %66
  %68 = fcmp ogt float %67, 5.000000e-01
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = fadd float %66, 1.000000e+00
  store float %70, ptr %65, align 4, !tbaa !49
  br label %71

71:                                               ; preds = %58, %69, %61
  %72 = add nuw nsw i64 %59, 1
  %73 = icmp eq i64 %72, %42
  br i1 %73, label %74, label %58, !llvm.loop !235

74:                                               ; preds = %71, %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @map_to_tube(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!35 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !36, i64 64, !39, i64 72, !36, i64 80, !39, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !39, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!43, !41, i64 48}
!43 = !{!"BMFace", !44, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !41, i64 48}
!44 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!45 = !{!43, !36, i64 0}
!46 = !{!47, !36, i64 0}
!47 = !{!"MTexPoly", !36, i64 0, !37, i64 8, !37, i64 9, !41, i64 10, !41, i64 12, !41, i64 14}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !37, i64 0}
!51 = !{!52, !36, i64 0}
!52 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !53, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !54, i64 152, !41, i64 184}
!53 = !{!"ListBase", !36, i64 0, !36, i64 8}
!54 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!55 = !{!52, !36, i64 8}
!56 = !{!52, !41, i64 184}
!57 = !{!52, !36, i64 24}
!58 = !{!52, !36, i64 32}
!59 = !{!52, !36, i64 48}
!60 = !{!52, !36, i64 64}
!61 = !{!52, !36, i64 56}
!62 = !{!52, !36, i64 72}
!63 = !{!52, !36, i64 88}
!64 = !{i8 0, i8 2}
!65 = !{!66, !36, i64 112}
!66 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !53, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!67 = !{!66, !36, i64 96}
!68 = !{!69, !36, i64 24}
!69 = !{!"MinStretch", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !50, i64 32, !70, i64 40, !39, i64 48, !39, i64 52, !36, i64 56}
!70 = !{!"double", !37, i64 0}
!71 = !{!69, !50, i64 32}
!72 = !{!69, !39, i64 48}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!69, !36, i64 56}
!77 = !{!78, !41, i64 16}
!78 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !39, i64 48, !39, i64 52, !70, i64 56, !39, i64 64, !39, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !39, i64 108, !36, i64 112}
!79 = !{!78, !41, i64 18}
!80 = !{!78, !36, i64 112}
!81 = distinct !{!81, !74, !75}
!82 = !{!69, !70, i64 40}
!83 = !{!69, !39, i64 52}
!84 = !{!85, !36, i64 264}
!85 = !{!"Scene", !86, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !53, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !87, i64 280, !96, i64 4264, !53, i64 4296, !53, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !53, i64 4384, !97, i64 4400, !98, i64 4416, !101, i64 4600, !36, i64 4608, !102, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !89, i64 4664, !90, i64 4824, !103, i64 4888, !36, i64 4952}
!86 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!87 = !{!"RenderData", !88, i64 0, !36, i64 248, !36, i64 256, !91, i64 264, !92, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !50, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !93, i64 544, !93, i64 560, !94, i64 576, !53, i64 592, !41, i64 608, !41, i64 610, !50, i64 612, !50, i64 616, !50, i64 620, !50, i64 624, !39, i64 628, !50, i64 632, !50, i64 636, !50, i64 640, !50, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !50, i64 660, !50, i64 664, !41, i64 668, !41, i64 670, !50, i64 672, !50, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !50, i64 2528, !50, i64 2532, !41, i64 2536, !41, i64 2538, !50, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !50, i64 2560, !50, i64 2564, !36, i64 2568, !39, i64 2576, !50, i64 2580, !37, i64 2584, !95, i64 2616, !39, i64 3976, !39, i64 3980}
!88 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !50, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !89, i64 24, !90, i64 184}
!89 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !50, i64 136, !50, i64 140, !36, i64 144, !36, i64 152}
!90 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!91 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!92 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !50, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!93 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!94 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!95 = !{!"BakeData", !88, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !50, i64 1280, !50, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!96 = !{!"AudioData", !39, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !50, i64 24, !50, i64 28}
!97 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!98 = !{!"GameData", !97, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !99, i64 40, !41, i64 64, !41, i64 66, !50, i64 68, !100, i64 72, !50, i64 128, !50, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!99 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !50, i64 8, !50, i64 12, !36, i64 16}
!100 = !{!"RecastData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !39, i64 40, !50, i64 44, !50, i64 48, !41, i64 52, !41, i64 54}
!101 = !{!"UnitSettings", !50, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!102 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!103 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!104 = !{!105, !50, i64 52}
!105 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !50, i64 32, !50, i64 36, !50, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !50, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !106, i64 64, !108, i64 168, !50, i64 336, !50, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !50, i64 352, !50, i64 356, !50, i64 360, !50, i64 364, !50, i64 368, !50, i64 372, !50, i64 376, !50, i64 380, !50, i64 384, !50, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !41, i64 464, !41, i64 466, !39, i64 468, !50, i64 472, !50, i64 476, !109, i64 480, !110, i64 608}
!106 = !{!"ImagePaintSettings", !107, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !50, i64 100}
!107 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!108 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !50, i64 128, !50, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !36, i64 160}
!109 = !{!"UnifiedPaintSettings", !39, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !37, i64 16, !37, i64 28, !39, i64 40, !37, i64 44, !50, i64 52, !39, i64 56, !39, i64 60, !37, i64 64, !37, i64 65, !50, i64 72, !37, i64 76, !39, i64 84, !50, i64 88, !37, i64 92, !37, i64 100, !39, i64 108, !36, i64 112, !50, i64 120, !39, i64 124}
!110 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !37, i64 20, !37, i64 21, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36}
!111 = !{!112, !36, i64 296}
!112 = !{!"Object", !86, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !113, i64 312, !36, i64 360, !53, i64 368, !53, i64 384, !53, i64 400, !53, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !50, i64 616, !50, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !50, i64 1048, !50, i64 1052, !53, i64 1056, !53, i64 1072, !53, i64 1088, !53, i64 1104, !50, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !53, i64 1176, !53, i64 1192, !53, i64 1208, !53, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !50, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !39, i64 1320, !39, i64 1324, !53, i64 1328, !53, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !53, i64 1400, !36, i64 1416}
!113 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!114 = !{!105, !37, i64 48}
!115 = !{!105, !37, i64 49}
!116 = !{!112, !36, i64 416}
!117 = !{!118, !39, i64 16}
!118 = !{!"ModifierData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!119 = !{!120, !41, i64 114}
!120 = !{!"SubsurfModifierData", !118, i64 0, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !36, i64 120, !36, i64 128}
!121 = !{!120, !41, i64 112}
!122 = !{!123, !36, i64 1680}
!123 = !{!"DerivedMesh", !124, i64 0, !124, i64 200, !124, i64 400, !124, i64 600, !124, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !50, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!124 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!125 = !{!123, !36, i64 1168}
!126 = !{!123, !36, i64 1176}
!127 = !{!123, !36, i64 1184}
!128 = !{!123, !36, i64 1320}
!129 = !{!123, !36, i64 1328}
!130 = !{!123, !36, i64 1336}
!131 = !{!123, !36, i64 1352}
!132 = !{!123, !36, i64 1112}
!133 = !{!123, !36, i64 1120}
!134 = !{!39, !39, i64 0}
!135 = distinct !{!135, !74, !75}
!136 = distinct !{!136, !74, !75}
!137 = !{!105, !37, i64 50}
!138 = !{!44, !37, i64 13}
!139 = !{!140, !39, i64 0}
!140 = !{!"MFace", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !41, i64 16, !37, i64 18, !37, i64 19}
!141 = !{!40, !40, i64 0}
!142 = !{!140, !39, i64 4}
!143 = !{!140, !39, i64 8}
!144 = !{!140, !39, i64 12}
!145 = !{!146, !37, i64 60}
!146 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!147 = !{!146, !36, i64 40}
!148 = !{!146, !36, i64 48}
!149 = !{!37, !37, i64 0}
!150 = !{!151, !36, i64 16}
!151 = !{!"BMLoop", !44, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!152 = !{!44, !39, i64 8}
!153 = !{!151, !36, i64 0}
!154 = !{!155, !39, i64 8}
!155 = !{!"MLoopUV", !37, i64 0, !39, i64 8}
!156 = distinct !{!156, !74, !75}
!157 = distinct !{!157, !74, !75}
!158 = !{!159, !39, i64 0}
!159 = !{!"MEdge", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 9, !41, i64 10}
!160 = !{!159, !39, i64 4}
!161 = distinct !{!161, !74, !75}
!162 = !{!163, !36, i64 56}
!163 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !124, i64 144, !124, i64 344, !124, i64 544, !124, i64 744, !41, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !53, i64 960, !36, i64 976, !53, i64 984, !36, i64 1000}
!164 = distinct !{!164, !74, !75}
!165 = distinct !{!165, !74, !75}
!166 = !{!163, !36, i64 40}
!167 = !{!168, !36, i64 24}
!168 = !{!"BMEdge", !44, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !169, i64 48, !169, i64 64}
!169 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!170 = !{!168, !36, i64 32}
!171 = distinct !{!171, !74, !75}
!172 = !{!105, !37, i64 430}
!173 = !{!66, !36, i64 120}
!174 = !{i32 2, i32 5}
!175 = distinct !{!175, !74, !75}
!176 = distinct !{!176, !74, !75}
!177 = !{!178, !36, i64 96}
!178 = !{!"View3D", !36, i64 0, !36, i64 8, !53, i64 16, !39, i64 32, !50, i64 36, !37, i64 40, !37, i64 56, !50, i64 72, !50, i64 76, !37, i64 80, !37, i64 81, !39, i64 84, !39, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !93, i64 112, !53, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !39, i64 224, !39, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !50, i64 244, !50, i64 248, !50, i64 252, !50, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !53, i64 296, !53, i64 312, !53, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!179 = !{!85, !39, i64 764}
!180 = !{!85, !50, i64 892}
!181 = !{!85, !39, i64 768}
!182 = !{!85, !50, i64 896}
!183 = distinct !{!183, !74, !75}
!184 = distinct !{!184, !74, !75}
!185 = !{!186, !41, i64 208}
!186 = !{!"ARegion", !36, i64 0, !36, i64 8, !187, i64 16, !94, i64 176, !94, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !50, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !53, i64 248, !53, i64 264, !53, i64 280, !53, i64 296, !53, i64 312, !53, i64 328, !53, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!187 = !{!"View2D", !93, i64 0, !93, i64 16, !94, i64 32, !94, i64 48, !94, i64 64, !37, i64 80, !37, i64 88, !50, i64 96, !50, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!188 = !{!186, !41, i64 210}
!189 = distinct !{!189, !74, !75}
!190 = distinct !{!190, !74, !75}
!191 = distinct !{!191, !74, !75}
!192 = distinct !{!192, !74, !75}
!193 = distinct !{!193, !74, !75}
!194 = distinct !{!194, !74, !75}
!195 = distinct !{!195, !74, !75}
!196 = distinct !{!196, !74, !75}
!197 = !{!69, !36, i64 0}
!198 = !{!69, !36, i64 8}
!199 = !{!69, !36, i64 16}
!200 = !{!163, !39, i64 24}
!201 = distinct !{!201, !74, !75}
!202 = distinct !{!202, !74, !75}
!203 = !{!43, !39, i64 32}
!204 = distinct !{!204, !74, !75}
!205 = !{!163, !39, i64 12}
!206 = !{!207, !36, i64 96}
!207 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !94, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !53, i64 96, !53, i64 112, !53, i64 128, !53, i64 144}
!208 = !{!209, !39, i64 32}
!209 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !53, i64 16, !39, i64 32, !50, i64 36, !37, i64 40}
!210 = !{!211, !36, i64 40}
!211 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !53, i64 16, !39, i64 32, !39, i64 36, !36, i64 40, !212, i64 48, !36, i64 88, !213, i64 96, !214, i64 5360, !36, i64 10520, !37, i64 10528, !50, i64 10536, !50, i64 10540, !50, i64 10544, !50, i64 10548, !50, i64 10552, !37, i64 10556, !37, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !215, i64 10568}
!212 = !{!"ImageUser", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !39, i64 36}
!213 = !{!"Scopes", !39, i64 0, !39, i64 4, !39, i64 8, !50, i64 12, !39, i64 16, !50, i64 20, !50, i64 24, !39, i64 28, !50, i64 32, !39, i64 36, !37, i64 40, !214, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !39, i64 5256, !39, i64 5260}
!214 = !{!"Histogram", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !50, i64 5128, !50, i64 5132, !41, i64 5136, !41, i64 5138, !39, i64 5140, !37, i64 5144}
!215 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!216 = !{!217, !41, i64 1250}
!217 = !{!"Image", !86, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !39, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !50, i64 1296, !39, i64 1300, !41, i64 1304, !41, i64 1306, !39, i64 1308, !39, i64 1312, !37, i64 1316, !37, i64 1317, !41, i64 1318, !37, i64 1320, !50, i64 1336, !50, i64 1340, !103, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!218 = distinct !{!218, !74, !75}
!219 = distinct !{!219, !74, !75}
!220 = distinct !{!220, !74, !75}
!221 = distinct !{!221, !74, !75}
!222 = distinct !{!222, !74, !75}
!223 = distinct !{!223, !74, !75}
!224 = distinct !{!224, !74, !75}
!225 = distinct !{!225, !74, !75}
!226 = distinct !{!226, !74, !75}
!227 = distinct !{!227, !74, !75}
!228 = distinct !{!228, !74, !75}
!229 = distinct !{!229, !74, !75}
!230 = !{!178, !41, i64 238}
!231 = distinct !{!231, !74, !75}
!232 = distinct !{!232, !74, !75}
!233 = distinct !{!233, !74, !75}
!234 = distinct !{!234, !74, !75}
!235 = distinct !{!235, !74, !75}
