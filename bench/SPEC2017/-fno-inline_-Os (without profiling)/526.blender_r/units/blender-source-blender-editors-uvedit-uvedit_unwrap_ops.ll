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
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.MLoopUV = type { [2 x float], i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uvedit_get_aspect(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %7 = load ptr, ptr %2, align 8, !tbaa !5
  %8 = tail call ptr @BM_mesh_active_face_get(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.BMFace, ptr %8, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !13
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, 1
  %18 = call zeroext i8 @ED_object_get_active_image(ptr noundef %1, i32 noundef %17, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null) #12
  %19 = load ptr, ptr %6, align 8, !tbaa !16
  br label %26

20:                                               ; preds = %10
  %21 = load ptr, ptr %2, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 27
  %23 = load ptr, ptr %8, align 8, !tbaa !17
  %24 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %22, ptr noundef %23, i32 noundef 15) #12
  %25 = load ptr, ptr %24, align 8, !tbaa !18
  store ptr %25, ptr %6, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %20, %13
  %27 = phi ptr [ %25, %20 ], [ %19, %13 ]
  call void @ED_image_get_uv_aspect(ptr noundef %27, ptr noundef null, ptr noundef %3, ptr noundef %4) #12
  br label %29

28:                                               ; preds = %5
  store float 1.000000e+00, ptr %3, align 4, !tbaa !20
  store float 1.000000e+00, ptr %4, align 4, !tbaa !20
  br label %29

29:                                               ; preds = %28, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_object_get_active_image(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @ED_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UV_OT_minimize_stretch(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %3, align 8, !tbaa !27
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @minimize_stretch_exec, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @minimize_stretch_invoke, ptr %6, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @minimize_stretch_modal, ptr %7, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @minimize_stretch_cancel, ptr %8, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %9, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !34
  %14 = tail call ptr @RNA_def_float_factor(ptr noundef %13, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 1.000000e+00) #12
  %15 = load ptr, ptr %10, align 8, !tbaa !34
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 100) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @minimize_stretch_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @minimize_stretch_init(ptr noundef %0, ptr noundef %1) #13, !range !35
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.9) #12
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %12, %10 ], [ 0, %5 ]
  tail call fastcc void @minimize_stretch_iteration(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #13
  %12 = add nuw nsw i32 %11, 1
  %13 = icmp eq i32 %12, %8
  br i1 %13, label %14, label %10, !llvm.loop !38

14:                                               ; preds = %10, %5
  tail call fastcc void @minimize_stretch_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #13
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @minimize_stretch_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc zeroext i8 @minimize_stretch_init(ptr noundef %0, ptr noundef %1) #13, !range !35
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  tail call fastcc void @minimize_stretch_iteration(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #12
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %12 = tail call ptr @WM_event_add_timer(ptr noundef %10, ptr noundef %11, i32 noundef 272, double noundef 0x3F847AE140000000) #12
  %13 = getelementptr inbounds %struct.MinStretch, ptr %8, i64 0, i32 8
  store ptr %12, ptr %13, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %3, %6
  %15 = phi i32 [ 1, %6 ], [ 2, %3 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @minimize_stretch_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !44
  switch i16 %7, label %47 [
    i16 218, label %8
    i16 3, label %8
    i16 220, label %9
    i16 163, label %9
    i16 1, label %9
    i16 164, label %10
    i16 10, label %10
    i16 162, label %20
    i16 11, label %20
    i16 272, label %30
  ]

8:                                                ; preds = %3, %3
  tail call fastcc void @minimize_stretch_exit(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #13
  br label %56

9:                                                ; preds = %3, %3, %3
  tail call fastcc void @minimize_stretch_exit(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #13
  br label %56

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !46
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 4
  %16 = load float, ptr %15, align 8, !tbaa !47
  %17 = fcmp olt float %16, 0x3FEE666660000000
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = fadd float %16, 0x3FB99999A0000000
  store float %19, ptr %15, align 8, !tbaa !47
  br label %42

20:                                               ; preds = %3, %3
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !46
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 4
  %26 = load float, ptr %25, align 8, !tbaa !47
  %27 = fcmp ogt float %26, 0x3FA99999A0000000
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = fadd float %26, 0xBFB99999A0000000
  store float %29, ptr %25, align 8, !tbaa !47
  br label %42

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = tail call double @PIL_check_seconds_timer() #12
  br label %38

38:                                               ; preds = %38, %36
  tail call fastcc void @minimize_stretch_iteration(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #13
  %39 = tail call double @PIL_check_seconds_timer() #12
  %40 = fsub double %39, %37
  %41 = fcmp olt double %40, 1.000000e-02
  br i1 %41, label %38, label %47, !llvm.loop !49

42:                                               ; preds = %18, %28
  %43 = phi float [ %29, %28 ], [ %19, %18 ]
  %44 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 5
  store double 0.000000e+00, ptr %44, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !36
  tail call void @RNA_float_set(ptr noundef %46, ptr noundef nonnull @.str.6, float noundef %43) #12
  tail call fastcc void @minimize_stretch_iteration(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #13
  br label %47

47:                                               ; preds = %38, %42, %30, %20, %24, %10, %14, %3
  %48 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !51
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 6
  %53 = load i32, ptr %52, align 8, !tbaa !52
  %54 = icmp slt i32 %53, %49
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call fastcc void @minimize_stretch_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #13
  br label %56

56:                                               ; preds = %47, %51, %55, %9, %8
  %57 = phi i32 [ 4, %55 ], [ 4, %9 ], [ 2, %8 ], [ 1, %51 ], [ 1, %47 ]
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @minimize_stretch_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @minimize_stretch_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #13
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_uvedit(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float_factor(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UV_OT_pack_islands(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pack_islands_exec, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !34
  %11 = tail call ptr @RNA_def_float_factor(ptr noundef %10, ptr noundef nonnull @.str.18, float noundef 0x3F50624DE0000000, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pack_islands_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.15) #12
  %9 = trunc i32 %8 to i8
  %10 = tail call fastcc zeroext i8 @uvedit_have_selection(ptr noundef %3, ptr noundef %5, i8 noundef zeroext 1) #13, !range !35
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 8, !tbaa !36
  %14 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %13, ptr noundef nonnull @.str.18) #12
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr %6, align 8, !tbaa !36
  br i1 %15, label %22, label %17

17:                                               ; preds = %12
  %18 = tail call float @RNA_float_get(ptr noundef %16, ptr noundef nonnull @.str.18) #12
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.ToolSettings, ptr %20, i64 0, i32 13
  store float %18, ptr %21, align 4, !tbaa !73
  br label %27

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 13
  %26 = load float, ptr %25, align 4, !tbaa !73
  tail call void @RNA_float_set(ptr noundef %16, ptr noundef nonnull @.str.18, float noundef %26) #12
  br label %27

27:                                               ; preds = %22, %17
  %28 = tail call fastcc ptr @construct_param_handle(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #13
  %29 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %30, i64 0, i32 13
  %32 = load float, ptr %31, align 4, !tbaa !73
  tail call void @param_pack(ptr noundef %28, float noundef %32, i8 noundef zeroext %9) #12
  tail call void @param_flush(ptr noundef %28) #12
  tail call void @param_delete(ptr noundef %28) #12
  %33 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  tail call void @DAG_id_tag_update(ptr noundef %34, i16 noundef signext 0) #12
  %35 = load ptr, ptr %33, align 8, !tbaa !80
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %35) #12
  br label %36

36:                                               ; preds = %2, %27
  %37 = phi i32 [ 4, %27 ], [ 2, %2 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @UV_OT_average_islands_scale(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @average_islands_scale_exec, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @average_islands_scale_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #12
  %6 = tail call fastcc zeroext i8 @uvedit_have_selection(ptr noundef %3, ptr noundef %5, i8 noundef zeroext 1) #13, !range !35
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @construct_param_handle(ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #13
  tail call void @param_average(ptr noundef %9) #12
  tail call void @param_flush(ptr noundef %9) #12
  tail call void @param_delete(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  tail call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 0) #12
  %12 = load ptr, ptr %10, align 8, !tbaa !80
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %12) #12
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_uvedit_live_unwrap_begin(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 9
  %8 = load i8, ptr %7, align 8, !tbaa !83
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 10
  %11 = load i8, ptr %10, align 1, !tbaa !84
  %12 = and i8 %11, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call fastcc void @modifier_unwrap_state(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %3) #13
  %13 = tail call zeroext i8 @ED_uvedit_test(ptr noundef %1) #12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load i8, ptr %3, align 1, !tbaa !85
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = zext nneg i8 %12 to i16
  %20 = tail call fastcc ptr @construct_param_handle_subsurfed(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i16 noundef signext %19, i16 noundef signext 0, i16 noundef signext 1) #13
  br label %23

21:                                               ; preds = %15
  %22 = tail call fastcc ptr @construct_param_handle(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext %12, i8 noundef zeroext 0, i8 noundef zeroext 1) #13
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %22, %21 ], [ %20, %18 ]
  store ptr %24, ptr @liveHandle, align 8, !tbaa !16
  %25 = zext i1 %9 to i32
  tail call void @param_lscm_begin(ptr noundef %24, i32 noundef 1, i32 noundef %25) #12
  br label %26

26:                                               ; preds = %2, %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @modifier_unwrap_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 10
  %7 = load i8, ptr %6, align 1, !tbaa !84
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = and i8 %7, 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = icmp eq ptr %9, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ModifierData, ptr %9, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !87
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %12
  br label %19

19:                                               ; preds = %14, %18, %3
  %20 = phi i8 [ 0, %18 ], [ 0, %3 ], [ 1, %14 ]
  store i8 %20, ptr %2, align 1, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_uvedit_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @construct_param_handle_subsurfed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) unnamed_addr #0 {
  %7 = alloca %struct.SubsurfModifierData, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [4 x i64], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x ptr], align 16
  %14 = alloca [4 x ptr], align 16
  %15 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %7, i8 0, i64 136, i1 false)
  %16 = load ptr, ptr %2, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 26
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 16) #12
  %19 = tail call ptr @param_construct_begin() #12
  %20 = icmp eq i16 %5, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @uvedit_get_aspect(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %22 = load float, ptr %8, align 4, !tbaa !20
  %23 = load float, ptr %9, align 4, !tbaa !20
  %24 = fcmp une float %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @param_aspect_ratio(ptr noundef %19, float noundef %22, float noundef %23) #12
  br label %26

26:                                               ; preds = %25, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %27

27:                                               ; preds = %26, %6
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.SubsurfModifierData, ptr %29, i64 0, i32 1
  %31 = getelementptr inbounds %struct.SubsurfModifierData, ptr %7, i64 0, i32 1
  %32 = load <2 x i16>, ptr %30, align 8, !tbaa !89
  store <2 x i16> %32, ptr %31, align 8, !tbaa !89
  %33 = call ptr @CDDM_from_editbmesh(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %34 = call ptr @subsurf_make_derived_from_derived(ptr noundef %33, ptr noundef nonnull %7, ptr noundef null, i32 noundef 8) #12
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 95
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  call void %36(ptr noundef %33) #12
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 31
  %38 = load ptr, ptr %37, align 8, !tbaa !93
  %39 = call ptr %38(ptr noundef %34) #12
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 32
  %41 = load ptr, ptr %40, align 8, !tbaa !94
  %42 = call ptr %41(ptr noundef %34) #12
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 33
  %44 = load ptr, ptr %43, align 8, !tbaa !95
  %45 = call ptr %44(ptr noundef %34) #12
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 50
  %47 = load ptr, ptr %46, align 8, !tbaa !96
  %48 = call ptr %47(ptr noundef %34, i32 noundef 7) #12
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 51
  %50 = load ptr, ptr %49, align 8, !tbaa !97
  %51 = call ptr %50(ptr noundef %34, i32 noundef 7) #12
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 52
  %53 = load ptr, ptr %52, align 8, !tbaa !98
  %54 = call ptr %53(ptr noundef %34, i32 noundef 7) #12
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 54
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = call ptr %56(ptr noundef %34, i32 noundef 7) #12
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 24
  %59 = load ptr, ptr %58, align 8, !tbaa !100
  %60 = call i32 %59(ptr noundef %34) #12
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 25
  %62 = load ptr, ptr %61, align 8, !tbaa !101
  %63 = call i32 %62(ptr noundef %34) #12
  %64 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !16
  %65 = sext i32 %63 to i64
  %66 = shl nsw i64 %65, 3
  %67 = call ptr %64(i64 noundef %66, ptr noundef nonnull @.str.67) #12
  %68 = load ptr, ptr %2, align 8, !tbaa !5
  call void @BM_mesh_elem_index_ensure(ptr noundef %68, i8 noundef zeroext 1) #12
  %69 = load ptr, ptr %2, align 8, !tbaa !5
  call void @BM_mesh_elem_table_ensure(ptr noundef %69, i8 noundef zeroext 10) #12
  %70 = icmp sgt i32 %63, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %27
  %72 = zext nneg i32 %63 to i64
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi i64 [ 0, %71 ], [ %80, %73 ]
  %75 = load ptr, ptr %2, align 8, !tbaa !5
  %76 = trunc i64 %74 to i32
  %77 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef %54, ptr noundef %57, i32 noundef %76) #13
  %78 = call ptr @BM_face_at_index(ptr noundef %75, i32 noundef %77) #12
  %79 = getelementptr inbounds ptr, ptr %67, i64 %74
  store ptr %78, ptr %79, align 8, !tbaa !16
  %80 = add nuw nsw i64 %74, 1
  %81 = icmp eq i64 %80, %72
  br i1 %81, label %82, label %73, !llvm.loop !102

82:                                               ; preds = %73, %27
  %83 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !16
  %84 = sext i32 %60 to i64
  %85 = shl nsw i64 %84, 3
  %86 = call ptr %83(i64 noundef %85, ptr noundef nonnull @.str.68) #12
  %87 = icmp sgt i32 %60, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = zext nneg i32 %60 to i64
  br label %110

90:                                               ; preds = %118, %82
  br i1 %70, label %91, label %123

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %93 = icmp eq i16 %4, 0
  %94 = getelementptr inbounds [4 x i64], ptr %10, i64 0, i64 1
  %95 = getelementptr inbounds [4 x i64], ptr %10, i64 0, i64 2
  %96 = getelementptr inbounds [4 x i64], ptr %10, i64 0, i64 3
  %97 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 1
  %98 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 2
  %99 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 3
  %100 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 1
  %101 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 1
  %102 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 1
  %103 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 2
  %104 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 2
  %105 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 2
  %106 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 3
  %107 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 3
  %108 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 3
  %109 = zext nneg i32 %63 to i64
  br label %126

110:                                              ; preds = %88, %118
  %111 = phi i64 [ 0, %88 ], [ %121, %118 ]
  %112 = getelementptr inbounds i32, ptr %51, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !103
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr %2, align 8, !tbaa !5
  %117 = call ptr @BM_edge_at_index(ptr noundef %116, i32 noundef %113) #12
  br label %118

118:                                              ; preds = %110, %115
  %119 = phi ptr [ %117, %115 ], [ null, %110 ]
  %120 = getelementptr inbounds ptr, ptr %86, i64 %111
  store ptr %119, ptr %120, align 8, !tbaa !16
  %121 = add nuw nsw i64 %111, 1
  %122 = icmp eq i64 %121, %89
  br i1 %122, label %90, label %110, !llvm.loop !104

123:                                              ; preds = %175, %90
  br i1 %87, label %124, label %194

124:                                              ; preds = %123
  %125 = zext nneg i32 %60 to i64
  br label %178

126:                                              ; preds = %91, %175
  %127 = phi i64 [ 0, %91 ], [ %176, %175 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #11
  %128 = getelementptr inbounds ptr, ptr %67, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !16
  %130 = getelementptr inbounds %struct.MFace, ptr %45, i64 %127
  %131 = load ptr, ptr %92, align 8, !tbaa !53
  %132 = getelementptr inbounds %struct.ToolSettings, ptr %131, i64 0, i32 11
  %133 = load i8, ptr %132, align 2, !tbaa !105
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  %136 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %129, i8 noundef zeroext 2) #13, !range !106
  %137 = icmp eq i8 %136, 0
  br i1 %135, label %139, label %138

138:                                              ; preds = %126
  br i1 %137, label %144, label %175

139:                                              ; preds = %126
  br i1 %137, label %140, label %175

140:                                              ; preds = %139
  br i1 %93, label %144, label %141

141:                                              ; preds = %140
  %142 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %129, i8 noundef zeroext 1) #13, !range !106
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %175, label %144

144:                                              ; preds = %140, %141, %138
  %145 = ptrtoint ptr %130 to i64
  %146 = load i32, ptr %130, align 4, !tbaa !107
  %147 = zext i32 %146 to i64
  store i64 %147, ptr %10, align 16, !tbaa !109
  %148 = getelementptr inbounds %struct.MFace, ptr %45, i64 %127, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !110
  %150 = zext i32 %149 to i64
  store i64 %150, ptr %94, align 8, !tbaa !109
  %151 = getelementptr inbounds %struct.MFace, ptr %45, i64 %127, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !111
  %153 = zext i32 %152 to i64
  store i64 %153, ptr %95, align 16, !tbaa !109
  %154 = getelementptr inbounds %struct.MFace, ptr %45, i64 %127, i32 3
  %155 = load i32, ptr %154, align 4, !tbaa !112
  %156 = zext i32 %155 to i64
  store i64 %156, ptr %96, align 8, !tbaa !109
  %157 = getelementptr inbounds %struct.MVert, ptr %39, i64 %147
  store ptr %157, ptr %13, align 16, !tbaa !16
  %158 = getelementptr inbounds %struct.MVert, ptr %39, i64 %150
  store ptr %158, ptr %97, align 8, !tbaa !16
  %159 = getelementptr inbounds %struct.MVert, ptr %39, i64 %153
  store ptr %159, ptr %98, align 16, !tbaa !16
  %160 = getelementptr inbounds %struct.MVert, ptr %39, i64 %156
  store ptr %160, ptr %99, align 8, !tbaa !16
  %161 = getelementptr inbounds i32, ptr %48, i64 %147
  %162 = load i32, ptr %161, align 4, !tbaa !103
  call fastcc void @texface_from_original_index(ptr noundef %129, i32 noundef %162, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %0, i32 noundef %18) #13
  %163 = load i32, ptr %148, align 4, !tbaa !110
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, ptr %48, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !103
  call fastcc void @texface_from_original_index(ptr noundef %129, i32 noundef %166, ptr noundef nonnull %100, ptr noundef nonnull %101, ptr noundef nonnull %102, ptr noundef nonnull %0, i32 noundef %18) #13
  %167 = load i32, ptr %151, align 4, !tbaa !111
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, ptr %48, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !103
  call fastcc void @texface_from_original_index(ptr noundef %129, i32 noundef %170, ptr noundef nonnull %103, ptr noundef nonnull %104, ptr noundef nonnull %105, ptr noundef nonnull %0, i32 noundef %18) #13
  %171 = load i32, ptr %154, align 4, !tbaa !112
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, ptr %48, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !103
  call fastcc void @texface_from_original_index(ptr noundef %129, i32 noundef %174, ptr noundef nonnull %106, ptr noundef nonnull %107, ptr noundef nonnull %108, ptr noundef nonnull %0, i32 noundef %18) #13
  call void @param_face_add(ptr noundef %19, i64 noundef %145, i32 noundef 4, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null) #12
  br label %175

175:                                              ; preds = %139, %141, %138, %144
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  %176 = add nuw nsw i64 %127, 1
  %177 = icmp eq i64 %176, %109
  br i1 %177, label %123, label %126, !llvm.loop !113

178:                                              ; preds = %124, %190
  %179 = phi i64 [ 0, %124 ], [ %191, %190 ]
  %180 = phi ptr [ %42, %124 ], [ %192, %190 ]
  %181 = getelementptr inbounds ptr, ptr %86, i64 %179
  %182 = load ptr, ptr %181, align 8, !tbaa !16
  %183 = icmp eq ptr %182, null
  br i1 %183, label %190, label %184

184:                                              ; preds = %178
  %185 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %182, i8 noundef zeroext 4) #13, !range !106
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #11
  %188 = load <2 x i32>, ptr %180, align 4, !tbaa !103
  %189 = zext <2 x i32> %188 to <2 x i64>
  store <2 x i64> %189, ptr %15, align 16, !tbaa !109
  call void @param_edge_set_seam(ptr noundef %19, ptr noundef nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #11
  br label %190

190:                                              ; preds = %178, %184, %187
  %191 = add nuw nsw i64 %179, 1
  %192 = getelementptr inbounds %struct.MEdge, ptr %180, i64 1
  %193 = icmp eq i64 %191, %125
  br i1 %193, label %194, label %178, !llvm.loop !114

194:                                              ; preds = %190, %123
  %195 = zext nneg i16 %3 to i32
  call void @param_construct_end(ptr noundef %19, i32 noundef %195, i32 noundef 0) #12
  %196 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  call void %196(ptr noundef %67) #12
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  call void %197(ptr noundef %86) #12
  %198 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 95
  %199 = load ptr, ptr %198, align 8, !tbaa !90
  call void %199(ptr noundef %34) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %7) #11
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @construct_param_handle(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [2 x i64], align 16
  %13 = load ptr, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 16) #12
  %16 = tail call ptr @param_construct_begin() #12
  %17 = icmp eq i8 %6, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @uvedit_get_aspect(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %19 = load float, ptr %10, align 4, !tbaa !20
  %20 = load float, ptr %11, align 4, !tbaa !20
  %21 = fcmp une float %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @param_aspect_ratio(ptr noundef %16, float noundef %19, float noundef %20) #12
  br label %23

23:                                               ; preds = %22, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  br label %24

24:                                               ; preds = %23, %7
  %25 = load ptr, ptr %2, align 8, !tbaa !5
  call void @BM_mesh_elem_index_ensure(ptr noundef %25, i8 noundef zeroext 1) #12
  %26 = load ptr, ptr %2, align 8, !tbaa !5
  %27 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %26, i8 noundef zeroext 3, ptr noundef null) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %24
  %30 = icmp eq i8 %5, 0
  %31 = icmp eq i8 %3, 0
  br label %32

32:                                               ; preds = %29, %52
  %33 = phi ptr [ %27, %29 ], [ %53, %52 ]
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %33, i8 noundef zeroext 2) #13, !range !106
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  br i1 %30, label %40, label %37

37:                                               ; preds = %36
  %38 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %33, i8 noundef zeroext 1) #13, !range !106
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %37, %36
  br i1 %31, label %51, label %41

41:                                               ; preds = %40
  %42 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %33) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41, %48
  %45 = phi ptr [ %49, %48 ], [ %42, %41 ]
  %46 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %45, i32 noundef %15) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %44, !llvm.loop !115

51:                                               ; preds = %44, %40
  call fastcc void @construct_param_handle_face_add(ptr noundef %16, ptr noundef %0, ptr noundef nonnull %33, i32 noundef %15) #13
  br label %52

52:                                               ; preds = %48, %41, %32, %37, %51
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %32, !llvm.loop !116

55:                                               ; preds = %52, %24
  %56 = icmp eq i8 %3, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %55
  %58 = load ptr, ptr %2, align 8, !tbaa !5
  %59 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %58, i8 noundef zeroext 2, ptr noundef null) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds [2 x i64], ptr %12, i64 0, i64 1
  br label %63

63:                                               ; preds = %61, %76
  %64 = phi ptr [ %59, %61 ], [ %77, %76 ]
  %65 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %64, i8 noundef zeroext 4) #13, !range !106
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  %68 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !117
  %70 = call fastcc i32 @_bm_elem_index_get(ptr noundef %69) #13
  %71 = sext i32 %70 to i64
  store i64 %71, ptr %12, align 16, !tbaa !109
  %72 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !120
  %74 = call fastcc i32 @_bm_elem_index_get(ptr noundef %73) #13
  %75 = sext i32 %74 to i64
  store i64 %75, ptr %62, align 8, !tbaa !109
  call void @param_edge_set_seam(ptr noundef %16, ptr noundef nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  br label %76

76:                                               ; preds = %63, %67
  %77 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #13
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %63, !llvm.loop !121

79:                                               ; preds = %76, %57, %55
  %80 = zext i8 %4 to i32
  %81 = zext nneg i8 %3 to i32
  call void @param_construct_end(ptr noundef %16, i32 noundef %80, i32 noundef %81) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  ret ptr %16
}

; Function Attrs: optsize
declare void @param_lscm_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_uvedit_live_unwrap_re_solve() local_unnamed_addr #0 {
  %1 = load ptr, ptr @liveHandle, align 8, !tbaa !16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void @param_lscm_solve(ptr noundef nonnull %1) #12
  %4 = load ptr, ptr @liveHandle, align 8, !tbaa !16
  tail call void @param_flush(ptr noundef %4) #12
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @param_lscm_solve(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_uvedit_live_unwrap_end(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @liveHandle, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  tail call void @param_lscm_end(ptr noundef nonnull %2) #12
  %5 = icmp eq i16 %0, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr @liveHandle, align 8, !tbaa !16
  tail call void @param_flush_restore(ptr noundef %7) #12
  br label %8

8:                                                ; preds = %6, %4
  %9 = load ptr, ptr @liveHandle, align 8, !tbaa !16
  tail call void @param_delete(ptr noundef %9) #12
  store ptr null, ptr @liveHandle, align 8, !tbaa !16
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: optsize
declare void @param_lscm_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_flush_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_uvedit_live_unwrap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #12
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 50
  %7 = load i8, ptr %6, align 2, !tbaa !122
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %11, i32 noundef 16) #12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @ED_unwrap_lscm(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext 0) #13
  br label %15

15:                                               ; preds = %14, %9, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_unwrap_lscm(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #12
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 10
  %9 = load i8, ptr %8, align 1, !tbaa !84
  %10 = and i8 %9, 1
  %11 = lshr i8 %9, 1
  %12 = and i8 %11, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  call fastcc void @modifier_unwrap_state(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %4) #13
  %13 = load i8, ptr %4, align 1, !tbaa !85
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = zext nneg i8 %10 to i16
  %17 = zext nneg i8 %12 to i16
  %18 = tail call fastcc ptr @construct_param_handle_subsurfed(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %5, i16 noundef signext %16, i16 noundef signext %2, i16 noundef signext %17) #13
  br label %22

19:                                               ; preds = %3
  %20 = trunc i16 %2 to i8
  %21 = tail call fastcc ptr @construct_param_handle(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %10, i8 noundef zeroext %20, i8 noundef zeroext %12) #13
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %18, %15 ], [ %21, %19 ]
  %24 = load ptr, ptr %6, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 9
  %26 = load i8, ptr %25, align 8, !tbaa !83
  %27 = icmp eq i8 %26, 0
  %28 = zext i1 %27 to i32
  tail call void @param_lscm_begin(ptr noundef %23, i32 noundef 0, i32 noundef %28) #12
  tail call void @param_lscm_solve(ptr noundef %23) #12
  tail call void @param_lscm_end(ptr noundef %23) #12
  tail call void @param_average(ptr noundef %23) #12
  %29 = load ptr, ptr %6, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %29, i64 0, i32 13
  %31 = load float, ptr %30, align 4, !tbaa !73
  tail call void @param_pack(ptr noundef %23, float noundef %31, i8 noundef zeroext 0) #12
  tail call void @param_flush(ptr noundef %23) #12
  tail call void @param_delete(ptr noundef %23) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @param_average(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_pack(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UV_OT_unwrap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !28
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @unwrap_exec, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.32, ptr noundef nonnull @UV_OT_unwrap.method_items, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !34
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #12
  %12 = load ptr, ptr %7, align 8, !tbaa !34
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #12
  %14 = load ptr, ptr %7, align 8, !tbaa !34
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #12
  %16 = load ptr, ptr %7, align 8, !tbaa !34
  %17 = tail call ptr @RNA_def_float_factor(ptr noundef %16, ptr noundef nonnull @.str.18, float noundef 0x3F50624DE0000000, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @unwrap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.32) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !36
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.3) #12
  %13 = load ptr, ptr %8, align 8, !tbaa !36
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.35) #12
  %15 = load ptr, ptr %8, align 8, !tbaa !36
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.38) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %17 = tail call fastcc zeroext i8 @uvedit_have_selection(ptr noundef %5, ptr noundef %7, i8 noundef zeroext 0) #13, !range !35
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %101, label %19

19:                                               ; preds = %2
  %20 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %5, ptr noundef %6) #13, !range !35
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %101, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %23) #12
  %24 = load float, ptr %4, align 4, !tbaa !20
  %25 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !20
  %27 = fsub float %24, %26
  %28 = call float @llvm.fabs.f32(float %27)
  %29 = fcmp olt float %28, 0x3F1A36E2E0000000
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !20
  %33 = fsub float %26, %32
  %34 = call float @llvm.fabs.f32(float %33)
  %35 = fcmp olt float %34, 0x3F1A36E2E0000000
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %23) #12
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36, %22, %30
  %40 = phi ptr [ @.str.69, %30 ], [ @.str.69, %22 ], [ @.str.70, %36 ]
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !123
  call void @BKE_report(ptr noundef %42, i32 noundef 2, ptr noundef nonnull %40) #12
  br label %43

43:                                               ; preds = %39, %36
  %44 = load ptr, ptr %8, align 8, !tbaa !36
  %45 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %44, ptr noundef nonnull @.str.32) #12
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !53
  %49 = getelementptr inbounds %struct.ToolSettings, ptr %48, i64 0, i32 9
  br i1 %46, label %52, label %50

50:                                               ; preds = %43
  %51 = trunc i32 %10 to i8
  store i8 %51, ptr %49, align 8, !tbaa !83
  br label %56

52:                                               ; preds = %43
  %53 = load ptr, ptr %8, align 8, !tbaa !36
  %54 = load i8, ptr %49, align 8, !tbaa !83
  %55 = zext i8 %54 to i32
  call void @RNA_enum_set(ptr noundef %53, ptr noundef nonnull @.str.32, i32 noundef %55) #12
  br label %56

56:                                               ; preds = %52, %50
  %57 = load ptr, ptr %8, align 8, !tbaa !36
  %58 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %57, ptr noundef nonnull @.str.18) #12
  %59 = icmp eq i8 %58, 0
  %60 = load ptr, ptr %8, align 8, !tbaa !36
  br i1 %59, label %66, label %61

61:                                               ; preds = %56
  %62 = call float @RNA_float_get(ptr noundef %60, ptr noundef nonnull @.str.18) #12
  %63 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !53
  %65 = getelementptr inbounds %struct.ToolSettings, ptr %64, i64 0, i32 13
  store float %62, ptr %65, align 4, !tbaa !73
  br label %71

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %68 = load ptr, ptr %67, align 8, !tbaa !53
  %69 = getelementptr inbounds %struct.ToolSettings, ptr %68, i64 0, i32 13
  %70 = load float, ptr %69, align 4, !tbaa !73
  call void @RNA_float_set(ptr noundef %60, ptr noundef nonnull @.str.18, float noundef %70) #12
  br label %71

71:                                               ; preds = %66, %61
  %72 = and i32 %12, 255
  %73 = icmp ne i32 %72, 0
  %74 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %75 = load ptr, ptr %74, align 8, !tbaa !53
  %76 = getelementptr inbounds %struct.ToolSettings, ptr %75, i64 0, i32 10
  %77 = load i8, ptr %76, align 1, !tbaa !84
  %78 = and i8 %77, -2
  %79 = zext i1 %73 to i8
  %80 = or disjoint i8 %78, %79
  store i8 %80, ptr %76, align 1, !tbaa !84
  %81 = and i32 %14, 255
  %82 = icmp eq i32 %81, 0
  %83 = and i8 %80, -11
  %84 = select i1 %82, i8 2, i8 0
  %85 = or disjoint i8 %83, %84
  %86 = and i32 %16, 255
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %75, i64 0, i32 10
  %89 = select i1 %87, i8 0, i8 8
  %90 = or disjoint i8 %85, %89
  store i8 %90, ptr %88, align 1, !tbaa !84
  call fastcc void @modifier_unwrap_state(ptr noundef %6, ptr noundef nonnull %5, ptr noundef nonnull %3) #13
  %91 = load i8, ptr %3, align 1, !tbaa !85
  %92 = trunc i32 %16 to i8
  %93 = icmp eq i8 %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %71
  %95 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %96 = load ptr, ptr %95, align 8, !tbaa !123
  call void @BKE_report(ptr noundef %96, i32 noundef 2, ptr noundef nonnull @.str.71) #12
  br label %97

97:                                               ; preds = %94, %71
  call void @ED_unwrap_lscm(ptr noundef nonnull %5, ptr noundef %6, i16 noundef signext 1) #13
  %98 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !80
  call void @DAG_id_tag_update(ptr noundef %99, i16 noundef signext 0) #12
  %100 = load ptr, ptr %98, align 8, !tbaa !80
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %100) #12
  br label %101

101:                                              ; preds = %19, %2, %97
  %102 = phi i32 [ 4, %97 ], [ 2, %2 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %102
}

; Function Attrs: optsize
declare i32 @ED_operator_uvmap(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UV_OT_project_from_view(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_from_view_invoke, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_from_view_exec, ptr %6, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @uv_from_view_poll, ptr %7, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !34
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #12
  tail call fastcc void @uv_map_clip_correct_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_from_view_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %6 = tail call ptr @ED_view3d_camera_data_get(ptr noundef %4, ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.47) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !36
  %11 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %10, ptr noundef %9) #12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load ptr, ptr %7, align 8, !tbaa !36
  %15 = icmp ne ptr %6, null
  %16 = zext i1 %15 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %14, ptr noundef %9, i32 noundef %16) #12
  br label %17

17:                                               ; preds = %13, %3
  %18 = load ptr, ptr %7, align 8, !tbaa !36
  %19 = tail call ptr @RNA_struct_find_property(ptr noundef %18, ptr noundef nonnull @.str.35) #12
  %20 = load ptr, ptr %7, align 8, !tbaa !36
  %21 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %20, ptr noundef %19) #12
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !tbaa !36
  %25 = icmp eq ptr %6, null
  %26 = zext i1 %25 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %24, ptr noundef %19, i32 noundef %26) #12
  br label %27

27:                                               ; preds = %23, %17
  %28 = tail call i32 @uv_from_view_exec(ptr noundef %0, ptr noundef nonnull %1) #13, !range !124
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_from_view_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #12
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %11 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %12 = tail call ptr @ED_view3d_camera_data_get(ptr noundef %10, ptr noundef %11) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %13 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %6, ptr noundef %7) #13, !range !35
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %135, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %8, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 26
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 16) #12
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.44) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %15
  call fastcc void @uv_map_rotation_matrix(ptr noundef nonnull %5, ptr noundef %11, ptr noundef %7, float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00) #13
  %24 = load ptr, ptr %8, align 8, !tbaa !5
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %24, i8 noundef zeroext 3, ptr noundef null) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %131, label %27

27:                                               ; preds = %23
  %28 = sext i32 %18 to i64
  br label %29

29:                                               ; preds = %27, %45
  %30 = phi ptr [ %25, %27 ], [ %46, %45 ]
  %31 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %30, i8 noundef zeroext 1) #13, !range !106
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %30) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %43, %36 ], [ %34, %33 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !125
  %39 = getelementptr inbounds i8, ptr %38, i64 %28
  %40 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !127
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  call void @BLI_uvproject_from_view_ortho(ptr noundef %39, ptr noundef nonnull %42, ptr noundef nonnull %5) #12
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !128

45:                                               ; preds = %36, %33, %29
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %131, label %29, !llvm.loop !129

48:                                               ; preds = %15
  %49 = icmp eq ptr %12, null
  br i1 %49, label %98, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %19, align 8, !tbaa !36
  %52 = tail call i32 @RNA_boolean_get(ptr noundef %51, ptr noundef nonnull @.str.47) #12
  %53 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 15
  %54 = load ptr, ptr %53, align 8, !tbaa !130
  %55 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  %56 = and i32 %52, 255
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 33
  %60 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 63
  %61 = load <2 x i32>, ptr %59, align 4, !tbaa !103
  %62 = sitofp <2 x i32> %61 to <2 x float>
  %63 = load <2 x float>, ptr %60, align 4, !tbaa !20
  %64 = fmul <2 x float> %63, %62
  br label %65

65:                                               ; preds = %50, %58
  %66 = phi <2 x float> [ %64, %58 ], [ <float 1.000000e+00, float 1.000000e+00>, %50 ]
  %67 = extractelement <2 x float> %66, i64 0
  %68 = extractelement <2 x float> %66, i64 1
  %69 = tail call ptr @BLI_uvproject_camera_info(ptr noundef %54, ptr noundef nonnull %55, float noundef %67, float noundef %68) #12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %131, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %8, align 8, !tbaa !5
  %73 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %72, i8 noundef zeroext 3, ptr noundef null) #13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %96, label %75

75:                                               ; preds = %71
  %76 = sext i32 %18 to i64
  br label %77

77:                                               ; preds = %75, %93
  %78 = phi ptr [ %73, %75 ], [ %94, %93 ]
  %79 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %78, i8 noundef zeroext 1) #13, !range !106
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %78) #13
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %81, %84
  %85 = phi ptr [ %91, %84 ], [ %82, %81 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !125
  %87 = getelementptr inbounds i8, ptr %86, i64 %76
  %88 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !127
  %90 = getelementptr inbounds %struct.BMVert, ptr %89, i64 0, i32 2
  call void @BLI_uvproject_from_camera(ptr noundef %87, ptr noundef nonnull %90, ptr noundef nonnull %69) #12
  %91 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %84, !llvm.loop !132

93:                                               ; preds = %84, %81, %77
  %94 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %77, !llvm.loop !133

96:                                               ; preds = %93, %71
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  call void %97(ptr noundef nonnull %69) #12
  br label %131

98:                                               ; preds = %48
  %99 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %99) #12
  %100 = load ptr, ptr %8, align 8, !tbaa !5
  %101 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %100, i8 noundef zeroext 3, ptr noundef null) #13
  %102 = icmp eq ptr %101, null
  br i1 %102, label %131, label %103

103:                                              ; preds = %98
  %104 = sext i32 %18 to i64
  %105 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 3
  %106 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 5
  %107 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 6
  br label %108

108:                                              ; preds = %103, %128
  %109 = phi ptr [ %101, %103 ], [ %129, %128 ]
  %110 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %109, i8 noundef zeroext 1) #13, !range !106
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %108
  %113 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %109) #13
  %114 = icmp eq ptr %113, null
  br i1 %114, label %128, label %115

115:                                              ; preds = %112, %115
  %116 = phi ptr [ %126, %115 ], [ %113, %112 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !125
  %118 = getelementptr inbounds i8, ptr %117, i64 %104
  %119 = getelementptr inbounds %struct.BMLoop, ptr %116, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !127
  %121 = getelementptr inbounds %struct.BMVert, ptr %120, i64 0, i32 2
  %122 = load i16, ptr %106, align 8, !tbaa !134
  %123 = sitofp i16 %122 to float
  %124 = load i16, ptr %107, align 2, !tbaa !137
  %125 = sitofp i16 %124 to float
  call void @BLI_uvproject_from_view(ptr noundef %118, ptr noundef nonnull %121, ptr noundef nonnull %105, ptr noundef nonnull %5, float noundef %123, float noundef %125) #12
  %126 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %115, !llvm.loop !138

128:                                              ; preds = %115, %112, %108
  %129 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %108, !llvm.loop !139

131:                                              ; preds = %45, %128, %23, %98, %65, %96
  call fastcc void @uv_map_clip_correct(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %1) #13
  %132 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %133 = load ptr, ptr %132, align 8, !tbaa !80
  call void @DAG_id_tag_update(ptr noundef %133, i16 noundef signext 0) #12
  %134 = load ptr, ptr %132, align 8, !tbaa !80
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %134) #12
  br label %135

135:                                              ; preds = %2, %131
  %136 = phi i32 [ 4, %131 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 %136
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @uv_from_view_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %3 = tail call i32 @ED_operator_uvmap(ptr noundef %0) #12
  %4 = icmp ne i32 %3, 0
  %5 = icmp ne ptr %2, null
  %6 = select i1 %4, i1 %5, i1 false
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_map_clip_correct_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call ptr @RNA_def_boolean(ptr noundef %3, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #12
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = tail call ptr @RNA_def_boolean(ptr noundef %5, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #12
  %7 = load ptr, ptr %2, align 8, !tbaa !34
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @UV_OT_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reset_exec, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reset_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %3, ptr noundef %4) #13, !range !35
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  tail call void @ED_mesh_uv_loop_reset(ptr noundef %0, ptr noundef %6) #12
  %10 = load ptr, ptr %5, align 8, !tbaa !80
  tail call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 0) #12
  %11 = load ptr, ptr %5, align 8, !tbaa !80
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %11) #12
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UV_OT_sphere_project(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sphere_project_exec, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !33
  tail call fastcc void @uv_transform_properties(ptr noundef nonnull %0, i32 noundef 0) #13
  tail call fastcc void @uv_map_clip_correct_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sphere_project_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef %8) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %10 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %7, ptr noundef %8) #13, !range !35
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %9, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 16) #12
  call fastcc void @uv_map_transform(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %16 = load ptr, ptr %9, align 8, !tbaa !5
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %16, i8 noundef zeroext 3, ptr noundef null) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %12
  %20 = sext i32 %15 to i64
  br label %21

21:                                               ; preds = %19, %42
  %22 = phi ptr [ %17, %19 ], [ %43, %42 ]
  %23 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %22, i8 noundef zeroext 1) #13, !range !106
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %21
  %26 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %22) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %25 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !125
  %31 = getelementptr inbounds i8, ptr %30, i64 %20
  %32 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !127
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call fastcc void @uv_sphere_project(ptr noundef %31, ptr noundef nonnull %34, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !140

37:                                               ; preds = %28, %25
  %38 = load ptr, ptr %9, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 27
  %40 = load ptr, ptr %22, align 8, !tbaa !17
  %41 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %39, ptr noundef %40, i32 noundef 15) #12
  call fastcc void @uv_map_mirror(ptr noundef nonnull %9, ptr noundef nonnull %22) #13
  br label %42

42:                                               ; preds = %21, %37
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %21, !llvm.loop !141

45:                                               ; preds = %42, %12
  call fastcc void @uv_map_clip_correct(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %1) #13
  %46 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  call void @DAG_id_tag_update(ptr noundef %47, i16 noundef signext 0) #12
  %48 = load ptr, ptr %46, align 8, !tbaa !80
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %48) #12
  br label %49

49:                                               ; preds = %2, %45
  %50 = phi i32 [ 4, %45 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_transform_properties(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @RNA_def_enum(ptr noundef %4, ptr noundef nonnull @.str.79, ptr noundef nonnull @uv_transform_properties.direction_items, i32 noundef 0, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = tail call ptr @RNA_def_enum(ptr noundef %6, ptr noundef nonnull @.str.78, ptr noundef nonnull @uv_transform_properties.align_items, i32 noundef 0, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #12
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !34
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.80, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, float noundef 0x3F1A36E2E0000000, float noundef 1.000000e+02) #12
  br label %12

12:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UV_OT_cylinder_project(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.57, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cylinder_project_exec, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !33
  tail call fastcc void @uv_transform_properties(ptr noundef nonnull %0, i32 noundef 1) #13
  tail call fastcc void @uv_map_clip_correct_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cylinder_project_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef %8) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %10 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %7, ptr noundef %8) #13, !range !35
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %9, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 16) #12
  call fastcc void @uv_map_transform(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %16 = load ptr, ptr %9, align 8, !tbaa !5
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %16, i8 noundef zeroext 3, ptr noundef null) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %12
  %20 = sext i32 %15 to i64
  br label %21

21:                                               ; preds = %19, %42
  %22 = phi ptr [ %17, %19 ], [ %43, %42 ]
  %23 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %22, i8 noundef zeroext 1) #13, !range !106
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %21
  %26 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %22) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %25 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !125
  %31 = getelementptr inbounds i8, ptr %30, i64 %20
  %32 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !127
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call fastcc void @uv_cylinder_project(ptr noundef %31, ptr noundef nonnull %34, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !142

37:                                               ; preds = %28, %25
  %38 = load ptr, ptr %9, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 27
  %40 = load ptr, ptr %22, align 8, !tbaa !17
  %41 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %39, ptr noundef %40, i32 noundef 15) #12
  call fastcc void @uv_map_mirror(ptr noundef nonnull %9, ptr noundef nonnull %22) #13
  br label %42

42:                                               ; preds = %21, %37
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %21, !llvm.loop !143

45:                                               ; preds = %42, %12
  call fastcc void @uv_map_clip_correct(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %1) #13
  %46 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  call void @DAG_id_tag_update(ptr noundef %47, i16 noundef signext 0) #12
  %48 = load ptr, ptr %46, align 8, !tbaa !80
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %48) #12
  br label %49

49:                                               ; preds = %2, %45
  %50 = phi i32 [ 4, %45 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UV_OT_cube_project(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.59, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %2, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cube_project_exec, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvmap, ptr %6, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.62, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #12
  tail call fastcc void @uv_map_clip_correct_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cube_project_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef %8) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %10 = tail call fastcc zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %7, ptr noundef %8) #13, !range !35
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %78, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %9, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 16) #12
  %16 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47, i64 3
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  %19 = tail call float @RNA_float_get(ptr noundef %18, ptr noundef nonnull @.str.62) #12
  %20 = load ptr, ptr %9, align 8, !tbaa !5
  %21 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %20, i8 noundef zeroext 3, ptr noundef null) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %12
  %24 = sext i32 %15 to i64
  %25 = fmul float %19, 5.000000e-01
  br label %26

26:                                               ; preds = %23, %71
  %27 = phi ptr [ %21, %23 ], [ %72, %71 ]
  %28 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %27, i8 noundef zeroext 1) #13, !range !106
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %71, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BMFace, ptr %27, i64 0, i32 4
  call fastcc void @axis_dominant_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %31) #13
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %27) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %71, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %5, align 4, !tbaa !103
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, ptr %16, i64 %36
  %38 = load i32, ptr %6, align 4, !tbaa !103
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, ptr %16, i64 %39
  br label %41

41:                                               ; preds = %34, %64
  %42 = phi i1 [ false, %34 ], [ true, %64 ]
  %43 = phi float [ 0.000000e+00, %34 ], [ %66, %64 ]
  %44 = phi float [ 0.000000e+00, %34 ], [ %65, %64 ]
  %45 = phi ptr [ %32, %34 ], [ %69, %64 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !125
  %47 = getelementptr inbounds i8, ptr %46, i64 %24
  %48 = load float, ptr %37, align 4, !tbaa !20
  %49 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !127
  %51 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2, i64 %36
  %52 = load float, ptr %51, align 4, !tbaa !20
  %53 = fadd float %48, %52
  %54 = call float @llvm.fmuladd.f32(float %25, float %53, float 5.000000e-01)
  store float %54, ptr %47, align 4, !tbaa !20
  %55 = load float, ptr %40, align 4, !tbaa !20
  %56 = getelementptr inbounds %struct.BMVert, ptr %50, i64 0, i32 2, i64 %39
  %57 = load float, ptr %56, align 4, !tbaa !20
  %58 = fadd float %55, %57
  %59 = call float @llvm.fmuladd.f32(float %25, float %58, float 5.000000e-01)
  %60 = getelementptr inbounds [2 x float], ptr %47, i64 0, i64 1
  br i1 %42, label %64, label %61

61:                                               ; preds = %41
  %62 = call float @llvm.floor.f32(float %54)
  %63 = call float @llvm.floor.f32(float %59)
  br label %64

64:                                               ; preds = %61, %41
  %65 = phi float [ %62, %61 ], [ %44, %41 ]
  %66 = phi float [ %63, %61 ], [ %43, %41 ]
  %67 = fsub float %54, %65
  store float %67, ptr %47, align 4, !tbaa !20
  %68 = fsub float %59, %66
  store float %68, ptr %60, align 4, !tbaa !20
  %69 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %41, !llvm.loop !144

71:                                               ; preds = %64, %30, %26
  %72 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %26, !llvm.loop !145

74:                                               ; preds = %71, %12
  call fastcc void @uv_map_clip_correct(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %1) #13
  %75 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %76 = load ptr, ptr %75, align 8, !tbaa !80
  call void @DAG_id_tag_update(ptr noundef %76, i16 noundef signext 0) #12
  %77 = load ptr, ptr %75, align 8, !tbaa !80
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %77) #12
  br label %78

78:                                               ; preds = %2, %74
  %79 = phi i32 [ 4, %74 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 %79
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @minimize_stretch_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.3) #12
  %9 = tail call fastcc zeroext i8 @uvedit_have_selection(ptr noundef %3, ptr noundef %5, i8 noundef zeroext 1) #13, !range !35
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  %12 = trunc i32 %8 to i8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %14 = tail call ptr %13(i64 noundef 64, ptr noundef nonnull @.str.65) #12
  store ptr %3, ptr %14, align 8, !tbaa !146
  %15 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 1
  store ptr %4, ptr %15, align 8, !tbaa !147
  %16 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 2
  store ptr %5, ptr %16, align 8, !tbaa !148
  %17 = load ptr, ptr %6, align 8, !tbaa !36
  %18 = tail call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.6) #12
  %19 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 4
  store float %18, ptr %19, align 8, !tbaa !47
  %20 = load ptr, ptr %6, align 8, !tbaa !36
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.9) #12
  %22 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 7
  store i32 %21, ptr %22, align 4, !tbaa !51
  %23 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 6
  store i32 0, ptr %23, align 8, !tbaa !52
  %24 = tail call fastcc ptr @construct_param_handle(ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #13
  %25 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !149
  %26 = tail call double @PIL_check_seconds_timer() #12
  %27 = getelementptr inbounds %struct.MinStretch, ptr %14, i64 0, i32 5
  store double %26, ptr %27, align 8, !tbaa !50
  %28 = load ptr, ptr %25, align 8, !tbaa !149
  tail call void @param_stretch_begin(ptr noundef %28) #12
  %29 = load float, ptr %19, align 8, !tbaa !47
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %33

31:                                               ; preds = %11
  %32 = load ptr, ptr %25, align 8, !tbaa !149
  tail call void @param_stretch_blend(ptr noundef %32, float noundef %29) #12
  br label %33

33:                                               ; preds = %31, %11
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %14, ptr %34, align 8, !tbaa !40
  br label %35

35:                                               ; preds = %2, %33
  %36 = phi i8 [ 1, %33 ], [ 0, %2 ]
  ret i8 %36
}

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @minimize_stretch_iteration(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [100 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  %10 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 4
  %11 = load float, ptr %10, align 8, !tbaa !47
  tail call void @param_stretch_blend(ptr noundef %9, float noundef %11) #12
  %12 = load ptr, ptr %8, align 8, !tbaa !149
  tail call void @param_stretch_iter(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  tail call void @RNA_int_set(ptr noundef %17, ptr noundef nonnull @.str.9, i32 noundef %15) #12
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %3
  %20 = tail call double @PIL_check_seconds_timer() #12
  %21 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 5
  %22 = load double, ptr %21, align 8, !tbaa !50
  %23 = fsub double %20, %22
  %24 = fcmp ogt double %23, 5.000000e-01
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #11
  %26 = load ptr, ptr %8, align 8, !tbaa !149
  tail call void @param_flush(ptr noundef %26) #12
  %27 = icmp eq ptr %7, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load float, ptr %10, align 8, !tbaa !47
  %30 = fpext float %29 to double
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 100, ptr noundef nonnull @.str.66, double noundef %30) #12
  call void @ED_area_headerprint(ptr noundef nonnull %7, ptr noundef nonnull %4) #12
  br label %32

32:                                               ; preds = %28, %25
  %33 = call double @PIL_check_seconds_timer() #12
  store double %33, ptr %21, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.MinStretch, ptr %6, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !147
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 0) #12
  %38 = load ptr, ptr %34, align 8, !tbaa !147
  %39 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %40) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #11
  br label %41

41:                                               ; preds = %32, %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @minimize_stretch_exit(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @ED_area_headerprint(ptr noundef nonnull %6, ptr noundef null) #12
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %15 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %16 = load ptr, ptr %10, align 8, !tbaa !41
  tail call void @WM_event_remove_timer(ptr noundef %14, ptr noundef %15, ptr noundef %16) #12
  br label %17

17:                                               ; preds = %13, %9
  %18 = icmp eq i8 %2, 0
  %19 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !149
  br i1 %18, label %22, label %21

21:                                               ; preds = %17
  tail call void @param_flush_restore(ptr noundef %20) #12
  br label %23

22:                                               ; preds = %17
  tail call void @param_flush(ptr noundef %20) #12
  br label %23

23:                                               ; preds = %22, %21
  %24 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !149
  tail call void @param_stretch_end(ptr noundef %25) #12
  %26 = load ptr, ptr %24, align 8, !tbaa !149
  tail call void @param_delete(ptr noundef %26) #12
  %27 = getelementptr inbounds %struct.MinStretch, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !147
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  tail call void @DAG_id_tag_update(ptr noundef %30, i16 noundef signext 0) #12
  %31 = load ptr, ptr %27, align 8, !tbaa !147
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !80
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %33) #12
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %34(ptr noundef nonnull %5) #12
  store ptr null, ptr %4, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @uvedit_have_selection(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 16) #12
  %9 = icmp eq i32 %8, -1
  %10 = load ptr, ptr %1, align 8, !tbaa !5
  br i1 %9, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !150
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %49

16:                                               ; preds = %3
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %10, i8 noundef zeroext 3, ptr noundef null) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %21 = icmp eq i8 %2, 0
  br label %22

22:                                               ; preds = %19, %46
  %23 = phi ptr [ %17, %19 ], [ %47, %46 ]
  %24 = load ptr, ptr %20, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 11
  %26 = load i8, ptr %25, align 2, !tbaa !105
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23, i8 noundef zeroext 2) #13, !range !106
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %46

32:                                               ; preds = %22
  %33 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %23, i8 noundef zeroext 1) #13, !range !106
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32, %29
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %23) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35, %42
  %39 = phi ptr [ %43, %42 ], [ %36, %35 ]
  %40 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %39, i32 noundef %8) #12
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %38, !llvm.loop !152

45:                                               ; preds = %42, %35
  br i1 %21, label %49, label %46

46:                                               ; preds = %45, %32, %29
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %22, !llvm.loop !153

49:                                               ; preds = %45, %46, %38, %16, %11
  %50 = phi i8 [ %15, %11 ], [ 0, %16 ], [ 1, %38 ], [ 1, %45 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret i8 %50
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_stretch_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_stretch_blend(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #13
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #13
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !154
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !157
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %22 [
    i8 11, label %21
    i8 2, label %8
    i8 3, label %11
    i8 4, label %14
    i8 5, label %15
    i8 6, label %16
    i8 7, label %17
    i8 8, label %18
    i8 9, label %19
    i8 10, label %20
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !155
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  br label %23

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !155
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  br label %23

14:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !155
  br label %23

15:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !155
  br label %23

16:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !155
  br label %23

17:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !155
  br label %23

18:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !155
  br label %23

19:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !155
  br label %23

20:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !155
  br label %23

21:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !155
  br label %23

22:                                               ; preds = %4
  unreachable

23:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %11, %8
  %24 = phi ptr [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %3, %16 ], [ %3, %15 ], [ %3, %14 ], [ %13, %11 ], [ %10, %8 ]
  %25 = phi ptr [ @bmiter__loop_of_face_begin, %21 ], [ @bmiter__edge_of_face_begin, %20 ], [ @bmiter__vert_of_face_begin, %19 ], [ @bmiter__face_of_edge_begin, %18 ], [ @bmiter__vert_of_edge_begin, %17 ], [ @bmiter__loop_of_vert_begin, %16 ], [ @bmiter__face_of_vert_begin, %15 ], [ @bmiter__edge_of_vert_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %24, ptr %0, align 8, !tbaa !85
  tail call void %25(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_stretch_iter(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_stretch_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @param_construct_begin() local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_aspect_ratio(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @subsurf_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #5 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !103
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !103
  br label %14

14:                                               ; preds = %8, %3, %10
  %15 = phi i32 [ %13, %10 ], [ -1, %3 ], [ %6, %8 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @BM_edge_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @texface_from_original_index(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  store ptr null, ptr %2, align 8, !tbaa !16
  store i32 0, ptr %3, align 4, !tbaa !103
  store i32 1, ptr %4, align 4, !tbaa !103
  %9 = icmp eq i32 %1, -1
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %10, %29
  %14 = phi ptr [ %30, %29 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = call fastcc i32 @_bm_elem_index_get(ptr noundef %16) #13
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 8, !tbaa !125
  %21 = sext i32 %6 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  store ptr %22, ptr %2, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.MLoopUV, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !161
  %25 = lshr i32 %24, 2
  %26 = and i32 %25, 1
  store i32 %26, ptr %3, align 4, !tbaa !103
  %27 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %5, ptr noundef nonnull %14, i32 noundef %6) #12
  %28 = zext i8 %27 to i32
  store i32 %28, ptr %4, align 4, !tbaa !103
  br label %32

29:                                               ; preds = %13
  %30 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !163

32:                                               ; preds = %29, %10, %19, %7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  ret void
}

; Function Attrs: optsize
declare void @param_face_add(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_edge_set_seam(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @param_construct_end(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !164
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @construct_param_handle_face_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !165
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = shl nsw i64 %8, 2
  %12 = alloca i8, i64 %11, align 16
  %13 = alloca i8, i64 %11, align 16
  %14 = alloca i8, i64 %9, align 16
  %15 = alloca i8, i64 %9, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef %2) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %4
  %19 = sext i32 %3 to i64
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %42, %20 ]
  %22 = phi ptr [ %16, %18 ], [ %41, %20 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !125
  %24 = getelementptr inbounds i8, ptr %23, i64 %19
  %25 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !127
  %27 = call fastcc i32 @_bm_elem_index_get(ptr noundef %26) #13
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, ptr %10, i64 %21
  store i64 %28, ptr %29, align 8, !tbaa !109
  %30 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  %31 = getelementptr inbounds ptr, ptr %14, i64 %21
  store ptr %30, ptr %31, align 8, !tbaa !16
  %32 = getelementptr inbounds ptr, ptr %15, i64 %21
  store ptr %24, ptr %32, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.MLoopUV, ptr %24, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !161
  %35 = lshr i32 %34, 2
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds i32, ptr %12, i64 %21
  store i32 %36, ptr %37, align 4, !tbaa !103
  %38 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %1, ptr noundef nonnull %22, i32 noundef %3) #12
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i32, ptr %13, i64 %21
  store i32 %39, ptr %40, align 4, !tbaa !103
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %42 = add nuw i64 %21, 1
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %20, !llvm.loop !166

44:                                               ; preds = %20
  %45 = trunc i64 %42 to i32
  br label %46

46:                                               ; preds = %44, %4
  %47 = phi i32 [ 0, %4 ], [ %45, %44 ]
  %48 = ptrtoint ptr %2 to i64
  %49 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  call void @param_face_add(ptr noundef %0, i64 noundef %48, i32 noundef %47, ptr noundef nonnull %10, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %49) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ED_uvedit_ensure_uvs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %7 = tail call zeroext i8 @ED_uvedit_test(ptr noundef %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %68

9:                                                ; preds = %3
  %10 = icmp eq ptr %6, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %6, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !167
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %18 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %17, i32 noundef 15) #12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = tail call i32 @ED_mesh_uv_texture_add(ptr noundef %22, ptr noundef null, i8 noundef zeroext 1) #12
  br label %24

24:                                               ; preds = %20, %16, %11, %9
  %25 = tail call zeroext i8 @ED_uvedit_test(ptr noundef %2) #12
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %68, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.BMesh, ptr %28, i64 0, i32 26
  %30 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %29, i32 noundef 16) #12
  %31 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = tail call ptr @CTX_wm_screen(ptr noundef %0) #12
  %35 = getelementptr inbounds %struct.bScreen, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %33, %54
  %39 = phi ptr [ %55, %54 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.ScrArea, ptr %39, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !168
  %42 = getelementptr inbounds %struct.SpaceLink, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !170
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.SpaceImage, ptr %41, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !172
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Image, ptr %47, i64 0, i32 12
  %51 = load i16, ptr %50, align 2, !tbaa !178
  %52 = and i16 %51, -2
  %53 = icmp eq i16 %52, 4
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %38, %45
  %55 = load ptr, ptr %39, align 8, !tbaa !16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %38, !llvm.loop !180

57:                                               ; preds = %49, %27
  %58 = phi ptr [ %31, %27 ], [ %47, %49 ]
  tail call void @ED_uvedit_assign_image(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %58, ptr noundef null) #12
  br label %59

59:                                               ; preds = %54, %33, %57
  %60 = load ptr, ptr %6, align 8, !tbaa !5
  %61 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %60, i8 noundef zeroext 3, ptr noundef null) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59, %63
  %64 = phi ptr [ %66, %63 ], [ %61, %59 ]
  %65 = call zeroext i8 @uvedit_face_select_enable(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %64, i8 noundef zeroext 0, i32 noundef %30) #12
  %66 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %63, !llvm.loop !181

68:                                               ; preds = %63, %59, %24, %3
  %69 = phi i8 [ 1, %3 ], [ 0, %24 ], [ 1, %59 ], [ 1, %63 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret i8 %69
}

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_mesh_uv_texture_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_uvedit_assign_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @uvedit_face_select_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_camera_data_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_map_rotation_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %11 = icmp eq ptr %1, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %13) #12
  br label %15

14:                                               ; preds = %6
  call void @unit_m4(ptr noundef nonnull %9) #12
  br label %15

15:                                               ; preds = %14, %12
  %16 = getelementptr inbounds i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, i8 0, i64 16, i1 false), !tbaa !20
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %17) #12
  %18 = getelementptr inbounds i8, ptr %10, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, i8 0, i64 16, i1 false), !tbaa !20
  call void @zero_m4(ptr noundef nonnull %7) #12
  call void @zero_m4(ptr noundef nonnull %8) #12
  %19 = fadd float %4, 1.800000e+02
  %20 = fmul float %19, 0x400921FB60000000
  %21 = fdiv float %20, 1.800000e+02
  %22 = call float @cosf(float noundef %21) #12
  store float %22, ptr %8, align 16, !tbaa !20
  %23 = call float @sinf(float noundef %21) #12
  %24 = fneg float %23
  %25 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  store float %24, ptr %25, align 4, !tbaa !20
  %26 = call float @sinf(float noundef %21) #12
  %27 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 1
  store float %26, ptr %27, align 16, !tbaa !20
  %28 = call float @cosf(float noundef %21) #12
  %29 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 1, i64 1
  store float %28, ptr %29, align 4, !tbaa !20
  %30 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %30, align 8, !tbaa !20
  %31 = fmul float %3, 0x400921FB60000000
  %32 = fdiv float %31, 1.800000e+02
  %33 = call float @cosf(float noundef %32) #12
  %34 = fdiv float %33, %5
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 1
  store float %34, ptr %35, align 4, !tbaa !20
  %36 = call float @sinf(float noundef %32) #12
  %37 = fneg float %36
  %38 = fdiv float %37, %5
  %39 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  store float %38, ptr %39, align 8, !tbaa !20
  %40 = call float @sinf(float noundef %32) #12
  %41 = fdiv float %40, %5
  %42 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 1
  store float %41, ptr %42, align 4, !tbaa !20
  %43 = call float @cosf(float noundef %32) #12
  %44 = fdiv float %43, %5
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float %44, ptr %45, align 8, !tbaa !20
  %46 = fdiv float 1.000000e+00, %5
  store float %46, ptr %7, align 16, !tbaa !20
  call void @_va_mul_m4_series_5(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_uvproject_from_view_ortho(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_uvproject_camera_info(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uvproject_from_camera(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uvproject_from_view(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_map_clip_correct(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %9 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.35) #12
  %12 = load ptr, ptr %9, align 8, !tbaa !36
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.72) #12
  %14 = load ptr, ptr %9, align 8, !tbaa !36
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.73) #12
  %16 = load ptr, ptr %2, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 26
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 16) #12
  %19 = and i32 %11, 255
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  tail call fastcc void @correct_uv_aspect(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #13
  br label %22

22:                                               ; preds = %21, %4
  %23 = and i32 %15, 255
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %92, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %7, align 8, !tbaa !20
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %8, align 8, !tbaa !20
  %27 = load ptr, ptr %2, align 8, !tbaa !5
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %27, i8 noundef zeroext 3, ptr noundef null) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %25
  %31 = sext i32 %18 to i64
  br label %32

32:                                               ; preds = %30, %45
  %33 = phi ptr [ %28, %30 ], [ %46, %45 ]
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %33, i8 noundef zeroext 1) #13, !range !106
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %33) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %43, %39 ], [ %37, %36 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !125
  %42 = getelementptr inbounds i8, ptr %41, i64 %31
  call void @minmax_v2v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %42) #12
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %39, !llvm.loop !182

45:                                               ; preds = %39, %36, %32
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %32, !llvm.loop !183

48:                                               ; preds = %45
  %49 = load <2 x float>, ptr %8, align 8, !tbaa !20
  %50 = load <2 x float>, ptr %7, align 8, !tbaa !20
  %51 = fsub <2 x float> %49, %50
  br label %52

52:                                               ; preds = %48, %25
  %53 = phi <2 x float> [ %51, %48 ], [ <float 0xC6393E5940000000, float 0xC6393E5940000000>, %25 ]
  %54 = extractelement <2 x float> %53, i64 0
  %55 = fcmp ogt float %54, 0.000000e+00
  %56 = fdiv float 1.000000e+00, %54
  %57 = select i1 %55, float %56, float %54
  %58 = extractelement <2 x float> %53, i64 1
  %59 = fcmp ogt float %58, 0.000000e+00
  %60 = fdiv float 1.000000e+00, %58
  %61 = select i1 %59, float %60, float %58
  %62 = load ptr, ptr %2, align 8, !tbaa !5
  %63 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %62, i8 noundef zeroext 3, ptr noundef null) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %132, label %65

65:                                               ; preds = %52
  %66 = sext i32 %18 to i64
  br label %67

67:                                               ; preds = %65, %89
  %68 = phi ptr [ %63, %65 ], [ %90, %89 ]
  %69 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %68, i8 noundef zeroext 1) #13, !range !106
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %67
  %72 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %68) #13
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %71, %74
  %75 = phi ptr [ %87, %74 ], [ %72, %71 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !125
  %77 = getelementptr inbounds i8, ptr %76, i64 %66
  %78 = load float, ptr %77, align 4, !tbaa !20
  %79 = load float, ptr %7, align 8, !tbaa !20
  %80 = fsub float %78, %79
  %81 = fmul float %57, %80
  store float %81, ptr %77, align 4, !tbaa !20
  %82 = getelementptr inbounds [2 x float], ptr %77, i64 0, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !20
  %84 = load float, ptr %26, align 4, !tbaa !20
  %85 = fsub float %83, %84
  %86 = fmul float %61, %85
  store float %86, ptr %82, align 4, !tbaa !20
  %87 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #13
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %74, !llvm.loop !184

89:                                               ; preds = %74, %71, %67
  %90 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %91 = icmp eq ptr %90, null
  br i1 %91, label %132, label %67, !llvm.loop !185

92:                                               ; preds = %22
  %93 = and i32 %13, 255
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %132, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %2, align 8, !tbaa !5
  %97 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %96, i8 noundef zeroext 3, ptr noundef null) #13
  %98 = icmp eq ptr %97, null
  br i1 %98, label %132, label %99

99:                                               ; preds = %95
  %100 = sext i32 %18 to i64
  br label %101

101:                                              ; preds = %99, %129
  %102 = phi ptr [ %97, %99 ], [ %130, %129 ]
  %103 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %102, i8 noundef zeroext 1) #13, !range !106
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %101
  %106 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %102) #13
  %107 = icmp eq ptr %106, null
  br i1 %107, label %129, label %108

108:                                              ; preds = %105, %126
  %109 = phi ptr [ %127, %126 ], [ %106, %105 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !125
  %111 = getelementptr inbounds i8, ptr %110, i64 %100
  %112 = load float, ptr %111, align 4, !tbaa !20
  %113 = fcmp olt float %112, 0.000000e+00
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = fcmp ogt float %112, 1.000000e+00
  br i1 %115, label %116, label %118

116:                                              ; preds = %114, %108
  %117 = phi float [ 0.000000e+00, %108 ], [ 1.000000e+00, %114 ]
  store float %117, ptr %111, align 4, !tbaa !20
  br label %118

118:                                              ; preds = %116, %114
  %119 = getelementptr inbounds [2 x float], ptr %111, i64 0, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !20
  %121 = fcmp olt float %120, 0.000000e+00
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = fcmp ogt float %120, 1.000000e+00
  br i1 %123, label %124, label %126

124:                                              ; preds = %122, %118
  %125 = phi float [ 0.000000e+00, %118 ], [ 1.000000e+00, %122 ]
  store float %125, ptr %119, align 4, !tbaa !20
  br label %126

126:                                              ; preds = %124, %122
  %127 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #13
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %108, !llvm.loop !186

129:                                              ; preds = %126, %105, %101
  %130 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %101, !llvm.loop !187

132:                                              ; preds = %89, %129, %52, %95, %92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @zero_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_va_mul_m4_series_5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @correct_uv_aspect(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %8 = load ptr, ptr %2, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 16) #12
  call void @uvedit_get_aspect(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %11 = load float, ptr %6, align 4, !tbaa !20
  %12 = load float, ptr %7, align 4, !tbaa !20
  %13 = fcmp oeq float %11, %12
  br i1 %13, label %66, label %14

14:                                               ; preds = %3
  %15 = fcmp ogt float %11, %12
  %16 = load ptr, ptr %2, align 8, !tbaa !5
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %16, i8 noundef zeroext 3, ptr noundef null) #13
  %18 = icmp eq ptr %17, null
  br i1 %15, label %19, label %42

19:                                               ; preds = %14
  %20 = fdiv float %12, %11
  br i1 %18, label %66, label %21

21:                                               ; preds = %19
  %22 = sext i32 %10 to i64
  br label %23

23:                                               ; preds = %21, %39
  %24 = phi ptr [ %17, %21 ], [ %40, %39 ]
  %25 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %24, i8 noundef zeroext 1) #13, !range !106
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %24) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %37, %30 ], [ %28, %27 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !125
  %33 = getelementptr inbounds i8, ptr %32, i64 %22
  %34 = load float, ptr %33, align 4, !tbaa !20
  %35 = fadd float %34, -5.000000e-01
  %36 = call float @llvm.fmuladd.f32(float %35, float %20, float 5.000000e-01)
  store float %36, ptr %33, align 4, !tbaa !20
  %37 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !188

39:                                               ; preds = %30, %27, %23
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %66, label %23, !llvm.loop !189

42:                                               ; preds = %14
  %43 = fdiv float %11, %12
  br i1 %18, label %66, label %44

44:                                               ; preds = %42
  %45 = sext i32 %10 to i64
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi ptr [ %17, %44 ], [ %64, %63 ]
  %48 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %47, i8 noundef zeroext 1) #13, !range !106
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %47) #13
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %61, %53 ], [ %51, %50 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !125
  %56 = getelementptr inbounds i8, ptr %55, i64 %45
  %57 = getelementptr inbounds [2 x float], ptr %56, i64 0, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !20
  %59 = fadd float %58, -5.000000e-01
  %60 = call float @llvm.fmuladd.f32(float %59, float %43, float 5.000000e-01)
  store float %60, ptr %57, align 4, !tbaa !20
  %61 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %53, !llvm.loop !190

63:                                               ; preds = %53, %50, %46
  %64 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %46, !llvm.loop !191

66:                                               ; preds = %63, %39, %42, %19, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @ED_mesh_uv_loop_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_map_transform(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #12
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.78) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !36
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.79) #12
  %15 = load ptr, ptr %10, align 8, !tbaa !36
  %16 = tail call ptr @RNA_struct_find_property(ptr noundef %15, ptr noundef nonnull @.str.80) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load ptr, ptr %10, align 8, !tbaa !36
  %20 = tail call float @RNA_float_get(ptr noundef %19, ptr noundef nonnull @.str.80) #12
  br label %21

21:                                               ; preds = %4, %18
  %22 = phi float [ %20, %18 ], [ 1.000000e+00, %4 ]
  tail call fastcc void @uv_map_transform_center(ptr noundef %5, ptr noundef %8, ptr noundef %2, ptr noundef %6, ptr noundef %7) #13
  %23 = icmp eq i32 %14, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @unit_m4(ptr noundef %3) #12
  br label %31

25:                                               ; preds = %21
  %26 = icmp eq i32 %14, 0
  %27 = icmp eq i32 %12, 1
  %28 = select i1 %26, i1 true, i1 %27
  %29 = select i1 %28, float 0.000000e+00, float 9.000000e+01
  %30 = select i1 %26, float 9.000000e+01, float 0.000000e+00
  tail call fastcc void @uv_map_rotation_matrix(ptr noundef %3, ptr noundef %9, ptr noundef %6, float noundef %30, float noundef %29, float noundef %22) #13
  br label %31

31:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_sphere_project(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #13
  call void @mul_m4_v3(ptr noundef %3, ptr noundef nonnull %5) #12
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %5, align 4, !tbaa !20
  %8 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !20
  %10 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !20
  call void @map_to_sphere(ptr noundef %0, ptr noundef nonnull %6, float noundef %7, float noundef %9, float noundef %11) #12
  %12 = load float, ptr %0, align 4, !tbaa !20
  %13 = fcmp ult float %12, 1.000000e+00
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = fadd float %12, -1.000000e+00
  store float %15, ptr %0, align 4, !tbaa !20
  br label %16

16:                                               ; preds = %14, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_map_mirror(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !165
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #12
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 11, ptr noundef %1) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = sext i32 %11 to i64
  br label %21

16:                                               ; preds = %21, %2
  %17 = load i32, ptr %4, align 8, !tbaa !165
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = zext nneg i32 %17 to i64
  br label %38

21:                                               ; preds = %14, %21
  %22 = phi i64 [ 0, %14 ], [ %28, %21 ]
  %23 = phi ptr [ %12, %14 ], [ %27, %21 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = getelementptr inbounds i8, ptr %24, i64 %15
  %26 = getelementptr inbounds ptr, ptr %8, i64 %22
  store ptr %25, ptr %26, align 8, !tbaa !16
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %28 = add nuw i64 %22, 1
  %29 = icmp eq ptr %27, null
  br i1 %29, label %16, label %21, !llvm.loop !192

30:                                               ; preds = %38, %16
  %31 = phi i32 [ 0, %16 ], [ %50, %38 ]
  %32 = icmp sgt i32 %17, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %8, i64 %34
  %36 = zext i32 %31 to i64
  %37 = zext nneg i32 %17 to i64
  br label %53

38:                                               ; preds = %19, %38
  %39 = phi i64 [ 1, %19 ], [ %51, %38 ]
  %40 = phi i32 [ 0, %19 ], [ %50, %38 ]
  %41 = getelementptr inbounds ptr, ptr %8, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  %43 = load float, ptr %42, align 4, !tbaa !20
  %44 = sext i32 %40 to i64
  %45 = getelementptr inbounds ptr, ptr %8, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = load float, ptr %46, align 4, !tbaa !20
  %48 = fcmp ogt float %43, %47
  %49 = trunc i64 %39 to i32
  %50 = select i1 %48, i32 %49, i32 %40
  %51 = add nuw nsw i64 %39, 1
  %52 = icmp eq i64 %51, %20
  br i1 %52, label %30, label %38, !llvm.loop !193

53:                                               ; preds = %33, %66
  %54 = phi i64 [ 0, %33 ], [ %67, %66 ]
  %55 = icmp eq i64 %54, %36
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %35, align 8, !tbaa !16
  %58 = load float, ptr %57, align 4, !tbaa !20
  %59 = getelementptr inbounds ptr, ptr %8, i64 %54
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  %61 = load float, ptr %60, align 4, !tbaa !20
  %62 = fsub float %58, %61
  %63 = fcmp ogt float %62, 5.000000e-01
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = fadd float %61, 1.000000e+00
  store float %65, ptr %60, align 4, !tbaa !20
  br label %66

66:                                               ; preds = %53, %64, %56
  %67 = add nuw nsw i64 %54, 1
  %68 = icmp eq i64 %67, %37
  br i1 %68, label %69, label %53, !llvm.loop !194

69:                                               ; preds = %66, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_map_transform_center(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 27
  %13 = load i16, ptr %12, align 2, !tbaa !195
  switch i16 %13, label %41 [
    i16 0, label %14
    i16 1, label %38
  ]

14:                                               ; preds = %5, %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %15 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x46293E5940000000, ptr %15, align 8, !tbaa !20
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %8, align 8, !tbaa !20
  %16 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %16, align 8, !tbaa !20
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %9, align 8, !tbaa !20
  %17 = load ptr, ptr %4, align 8, !tbaa !5
  %18 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %17, i8 noundef zeroext 3, ptr noundef null) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %14, %34
  %21 = phi ptr [ %35, %34 ], [ %18, %14 ]
  %22 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %21, i8 noundef zeroext 1) #13, !range !106
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %21) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %32, %27 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %31) #12
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !llvm.loop !196

34:                                               ; preds = %27, %24, %20
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %20, !llvm.loop !197

37:                                               ; preds = %34, %14
  call void @mid_v3_v3v3(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br label %42

38:                                               ; preds = %11
  %39 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %0, ptr noundef nonnull %1) #12
  %40 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47, i64 3
  tail call fastcc void @sub_v3_v3v3(ptr noundef %2, ptr noundef %39, ptr noundef nonnull %40) #13
  br label %42

41:                                               ; preds = %11
  tail call fastcc void @zero_v3(ptr noundef %2) #13
  br label %42

42:                                               ; preds = %41, %38, %37
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = load float, ptr %1, align 4, !tbaa !20
  %5 = load float, ptr %2, align 4, !tbaa !20
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !20
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !20
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !20
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !20
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !20
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !20
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !20
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !20
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_cylinder_project(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #13
  call void @mul_m4_v3(ptr noundef %3, ptr noundef nonnull %5) #12
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %5, align 4, !tbaa !20
  %8 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !20
  %10 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !20
  call void @map_to_tube(ptr noundef %0, ptr noundef nonnull %6, float noundef %7, float noundef %9, float noundef %11) #12
  %12 = load float, ptr %0, align 4, !tbaa !20
  %13 = fcmp ult float %12, 1.000000e+00
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = fadd float %12, -1.000000e+00
  store float %15, ptr %0, align 4, !tbaa !20
  br label %16

16:                                               ; preds = %14, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare void @map_to_tube(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @axis_dominant_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = load float, ptr %2, align 4, !tbaa !20
  %5 = tail call float @llvm.fabs.f32(float %4)
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !20
  %8 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %7)
  %9 = extractelement <2 x float> %8, i64 1
  %10 = fcmp ult float %9, %5
  %11 = extractelement <2 x float> %8, i64 0
  %12 = fcmp ult float %9, %11
  %13 = select i1 %10, i1 true, i1 %12
  %14 = fcmp ult float %11, %5
  %15 = fcmp ult float %11, %9
  %16 = or i1 %14, %15
  %17 = select i1 %13, i1 %16, i1 false
  %18 = zext i1 %17 to i32
  %19 = select i1 %13, i32 2, i32 1
  store i32 %18, ptr %0, align 4, !tbaa !103
  store i32 %19, ptr %1, align 4, !tbaa !103
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !7, i64 40, !7, i64 48, !11, i64 56, !7, i64 64, !10, i64 72, !7, i64 80, !10, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !10, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !12, i64 48}
!14 = !{!"BMFace", !15, i64 0, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 36, !12, i64 48}
!15 = !{!"BMHeader", !7, i64 0, !10, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!16 = !{!7, !7, i64 0}
!17 = !{!14, !7, i64 0}
!18 = !{!19, !7, i64 0}
!19 = !{!"MTexPoly", !7, i64 0, !8, i64 8, !8, i64 9, !12, i64 10, !12, i64 12, !12, i64 14}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !8, i64 0}
!22 = !{!23, !7, i64 0}
!23 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !24, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !25, i64 152, !12, i64 184}
!24 = !{!"ListBase", !7, i64 0, !7, i64 8}
!25 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!26 = !{!23, !7, i64 8}
!27 = !{!23, !12, i64 184}
!28 = !{!23, !7, i64 24}
!29 = !{!23, !7, i64 32}
!30 = !{!23, !7, i64 48}
!31 = !{!23, !7, i64 64}
!32 = !{!23, !7, i64 56}
!33 = !{!23, !7, i64 72}
!34 = !{!23, !7, i64 88}
!35 = !{i8 0, i8 2}
!36 = !{!37, !7, i64 112}
!37 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !24, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!37, !7, i64 96}
!41 = !{!42, !7, i64 56}
!42 = !{!"MinStretch", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !21, i64 32, !43, i64 40, !10, i64 48, !10, i64 52, !7, i64 56}
!43 = !{!"double", !8, i64 0}
!44 = !{!45, !12, i64 16}
!45 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !10, i64 20, !10, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !10, i64 48, !10, i64 52, !43, i64 56, !10, i64 64, !10, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !10, i64 108, !7, i64 112}
!46 = !{!45, !12, i64 18}
!47 = !{!42, !21, i64 32}
!48 = !{!45, !7, i64 112}
!49 = distinct !{!49, !39}
!50 = !{!42, !43, i64 40}
!51 = !{!42, !10, i64 52}
!52 = !{!42, !10, i64 48}
!53 = !{!54, !7, i64 264}
!54 = !{!"Scene", !55, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !24, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !10, i64 232, !10, i64 236, !10, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !56, i64 280, !65, i64 4264, !24, i64 4296, !24, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !10, i64 4380, !24, i64 4384, !66, i64 4400, !67, i64 4416, !70, i64 4600, !7, i64 4608, !71, i64 4616, !7, i64 4640, !11, i64 4648, !11, i64 4656, !58, i64 4664, !59, i64 4824, !72, i64 4888, !7, i64 4952}
!55 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!56 = !{!"RenderData", !57, i64 0, !7, i64 248, !7, i64 256, !60, i64 264, !61, i64 328, !10, i64 400, !10, i64 404, !10, i64 408, !21, i64 412, !10, i64 416, !10, i64 420, !10, i64 424, !10, i64 428, !12, i64 432, !12, i64 434, !21, i64 436, !21, i64 440, !21, i64 444, !21, i64 448, !21, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !10, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !10, i64 484, !10, i64 488, !12, i64 492, !12, i64 494, !10, i64 496, !10, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !10, i64 516, !10, i64 520, !10, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !62, i64 544, !62, i64 560, !63, i64 576, !24, i64 592, !12, i64 608, !12, i64 610, !21, i64 612, !21, i64 616, !21, i64 620, !21, i64 624, !10, i64 628, !21, i64 632, !21, i64 636, !21, i64 640, !21, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !21, i64 660, !21, i64 664, !12, i64 668, !12, i64 670, !21, i64 672, !21, i64 676, !8, i64 680, !10, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !10, i64 2520, !12, i64 2524, !12, i64 2526, !21, i64 2528, !21, i64 2532, !12, i64 2536, !12, i64 2538, !21, i64 2540, !12, i64 2544, !12, i64 2546, !10, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !21, i64 2560, !21, i64 2564, !7, i64 2568, !10, i64 2576, !21, i64 2580, !8, i64 2584, !64, i64 2616, !10, i64 3976, !10, i64 3980}
!57 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !21, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !58, i64 24, !59, i64 184}
!58 = !{!"ColorManagedViewSettings", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 72, !21, i64 136, !21, i64 140, !7, i64 144, !7, i64 152}
!59 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!60 = !{!"QuicktimeCodecSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !12, i64 48, !12, i64 50, !10, i64 52, !10, i64 56, !10, i64 60}
!61 = !{!"FFMpegCodecData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !21, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !7, i64 64}
!62 = !{!"rctf", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!63 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!64 = !{!"BakeData", !57, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !21, i64 1280, !21, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!65 = !{!"AudioData", !10, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !10, i64 16, !12, i64 20, !12, i64 22, !21, i64 24, !21, i64 28}
!66 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!67 = !{!"GameData", !66, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !68, i64 40, !12, i64 64, !12, i64 66, !21, i64 68, !69, i64 72, !21, i64 128, !21, i64 132, !10, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !21, i64 164, !21, i64 168, !21, i64 172, !21, i64 176, !21, i64 180}
!68 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !21, i64 8, !21, i64 12, !7, i64 16}
!69 = !{!"RecastData", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !10, i64 40, !21, i64 44, !21, i64 48, !12, i64 52, !12, i64 54}
!70 = !{!"UnitSettings", !21, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!71 = !{!"PhysicsSettings", !8, i64 0, !10, i64 12, !10, i64 16, !10, i64 20}
!72 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!73 = !{!74, !21, i64 52}
!74 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !21, i64 32, !21, i64 36, !21, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !21, i64 52, !12, i64 56, !8, i64 58, !8, i64 59, !75, i64 64, !77, i64 168, !21, i64 336, !21, i64 340, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 349, !12, i64 350, !21, i64 352, !21, i64 356, !21, i64 360, !21, i64 364, !21, i64 368, !21, i64 372, !21, i64 376, !21, i64 380, !21, i64 384, !21, i64 388, !12, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !12, i64 434, !12, i64 436, !12, i64 438, !12, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !10, i64 448, !10, i64 452, !10, i64 456, !10, i64 460, !12, i64 464, !12, i64 466, !10, i64 468, !21, i64 472, !21, i64 476, !78, i64 480, !79, i64 608}
!75 = !{!"ImagePaintSettings", !76, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !8, i64 48, !10, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !21, i64 100}
!76 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!77 = !{!"ParticleEditSettings", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !7, i64 120, !21, i64 128, !21, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !7, i64 160}
!78 = !{!"UnifiedPaintSettings", !10, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !8, i64 16, !8, i64 28, !10, i64 40, !8, i64 44, !21, i64 52, !10, i64 56, !10, i64 60, !8, i64 64, !8, i64 65, !21, i64 72, !8, i64 76, !10, i64 84, !21, i64 88, !8, i64 92, !8, i64 100, !10, i64 108, !7, i64 112, !21, i64 120, !10, i64 124}
!79 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !8, i64 20, !8, i64 21, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36}
!80 = !{!81, !7, i64 296}
!81 = !{!"Object", !55, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !10, i64 140, !10, i64 144, !10, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !82, i64 312, !7, i64 360, !24, i64 368, !24, i64 384, !24, i64 400, !24, i64 416, !10, i64 432, !10, i64 436, !7, i64 440, !7, i64 448, !10, i64 456, !10, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !21, i64 616, !21, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !10, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !10, i64 968, !10, i64 972, !10, i64 976, !10, i64 980, !10, i64 984, !21, i64 988, !21, i64 992, !21, i64 996, !21, i64 1000, !21, i64 1004, !21, i64 1008, !21, i64 1012, !21, i64 1016, !21, i64 1020, !21, i64 1024, !21, i64 1028, !21, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !21, i64 1048, !21, i64 1052, !24, i64 1056, !24, i64 1072, !24, i64 1088, !24, i64 1104, !21, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !10, i64 1144, !10, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !24, i64 1176, !24, i64 1192, !24, i64 1208, !24, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !21, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !11, i64 1304, !11, i64 1312, !10, i64 1320, !10, i64 1324, !24, i64 1328, !24, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !24, i64 1400, !7, i64 1416}
!82 = !{!"bAnimVizSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!83 = !{!74, !8, i64 48}
!84 = !{!74, !8, i64 49}
!85 = !{!8, !8, i64 0}
!86 = !{!81, !7, i64 416}
!87 = !{!88, !10, i64 16}
!88 = !{!"ModifierData", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !8, i64 32, !7, i64 96, !7, i64 104}
!89 = !{!12, !12, i64 0}
!90 = !{!91, !7, i64 1680}
!91 = !{!"DerivedMesh", !92, i64 0, !92, i64 200, !92, i64 400, !92, i64 600, !92, i64 800, !10, i64 1000, !10, i64 1004, !10, i64 1008, !10, i64 1012, !10, i64 1016, !10, i64 1020, !10, i64 1024, !7, i64 1032, !7, i64 1040, !10, i64 1048, !21, i64 1052, !10, i64 1056, !10, i64 1060, !7, i64 1064, !8, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !7, i64 1176, !7, i64 1184, !7, i64 1192, !7, i64 1200, !7, i64 1208, !7, i64 1216, !7, i64 1224, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !7, i64 1464, !7, i64 1472, !7, i64 1480, !7, i64 1488, !7, i64 1496, !7, i64 1504, !7, i64 1512, !7, i64 1520, !7, i64 1528, !7, i64 1536, !7, i64 1544, !7, i64 1552, !7, i64 1560, !7, i64 1568, !7, i64 1576, !7, i64 1584, !7, i64 1592, !7, i64 1600, !7, i64 1608, !7, i64 1616, !7, i64 1624, !7, i64 1632, !7, i64 1640, !7, i64 1648, !7, i64 1656, !7, i64 1664, !7, i64 1672, !7, i64 1680}
!92 = !{!"CustomData", !7, i64 0, !8, i64 8, !10, i64 172, !10, i64 176, !10, i64 180, !7, i64 184, !7, i64 192}
!93 = !{!91, !7, i64 1168}
!94 = !{!91, !7, i64 1176}
!95 = !{!91, !7, i64 1184}
!96 = !{!91, !7, i64 1320}
!97 = !{!91, !7, i64 1328}
!98 = !{!91, !7, i64 1336}
!99 = !{!91, !7, i64 1352}
!100 = !{!91, !7, i64 1112}
!101 = !{!91, !7, i64 1120}
!102 = distinct !{!102, !39}
!103 = !{!10, !10, i64 0}
!104 = distinct !{!104, !39}
!105 = !{!74, !8, i64 50}
!106 = !{i8 0, i8 5}
!107 = !{!108, !10, i64 0}
!108 = !{!"MFace", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !12, i64 16, !8, i64 18, !8, i64 19}
!109 = !{!11, !11, i64 0}
!110 = !{!108, !10, i64 4}
!111 = !{!108, !10, i64 8}
!112 = !{!108, !10, i64 12}
!113 = distinct !{!113, !39}
!114 = distinct !{!114, !39}
!115 = distinct !{!115, !39}
!116 = distinct !{!116, !39}
!117 = !{!118, !7, i64 24}
!118 = !{!"BMEdge", !15, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !119, i64 48, !119, i64 64}
!119 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!120 = !{!118, !7, i64 32}
!121 = distinct !{!121, !39}
!122 = !{!74, !8, i64 430}
!123 = !{!37, !7, i64 120}
!124 = !{i32 2, i32 5}
!125 = !{!126, !7, i64 0}
!126 = !{!"BMLoop", !15, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!127 = !{!126, !7, i64 16}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !39}
!130 = !{!131, !7, i64 96}
!131 = !{!"View3D", !7, i64 0, !7, i64 8, !24, i64 16, !10, i64 32, !21, i64 36, !8, i64 40, !8, i64 56, !21, i64 72, !21, i64 76, !8, i64 80, !8, i64 81, !10, i64 84, !10, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !62, i64 112, !24, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !21, i64 244, !21, i64 248, !21, i64 252, !21, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !24, i64 296, !24, i64 312, !24, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!132 = distinct !{!132, !39}
!133 = distinct !{!133, !39}
!134 = !{!135, !12, i64 208}
!135 = !{!"ARegion", !7, i64 0, !7, i64 8, !136, i64 16, !63, i64 176, !63, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !21, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !24, i64 248, !24, i64 264, !24, i64 280, !24, i64 296, !24, i64 312, !24, i64 328, !24, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!136 = !{!"View2D", !62, i64 0, !62, i64 16, !63, i64 32, !63, i64 48, !63, i64 64, !8, i64 80, !8, i64 88, !21, i64 96, !21, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !10, i64 136, !10, i64 140, !7, i64 144, !7, i64 152}
!137 = !{!135, !12, i64 210}
!138 = distinct !{!138, !39}
!139 = distinct !{!139, !39}
!140 = distinct !{!140, !39}
!141 = distinct !{!141, !39}
!142 = distinct !{!142, !39}
!143 = distinct !{!143, !39}
!144 = distinct !{!144, !39}
!145 = distinct !{!145, !39}
!146 = !{!42, !7, i64 0}
!147 = !{!42, !7, i64 8}
!148 = !{!42, !7, i64 16}
!149 = !{!42, !7, i64 24}
!150 = !{!151, !10, i64 24}
!151 = !{!"BMesh", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 136, !92, i64 144, !92, i64 344, !92, i64 544, !92, i64 744, !12, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !24, i64 960, !7, i64 976, !24, i64 984, !7, i64 1000}
!152 = distinct !{!152, !39}
!153 = distinct !{!153, !39}
!154 = !{!15, !8, i64 13}
!155 = !{!156, !7, i64 48}
!156 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !10, i64 56, !8, i64 60}
!157 = !{!156, !8, i64 60}
!158 = !{!156, !7, i64 40}
!159 = !{!151, !7, i64 40}
!160 = !{!151, !7, i64 56}
!161 = !{!162, !10, i64 8}
!162 = !{!"MLoopUV", !8, i64 0, !10, i64 8}
!163 = distinct !{!163, !39}
!164 = !{!15, !10, i64 8}
!165 = !{!14, !10, i64 32}
!166 = distinct !{!166, !39}
!167 = !{!151, !10, i64 12}
!168 = !{!169, !7, i64 96}
!169 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !63, i64 56, !8, i64 72, !8, i64 73, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !24, i64 96, !24, i64 112, !24, i64 128, !24, i64 144}
!170 = !{!171, !10, i64 32}
!171 = !{!"SpaceLink", !7, i64 0, !7, i64 8, !24, i64 16, !10, i64 32, !21, i64 36, !8, i64 40}
!172 = !{!173, !7, i64 40}
!173 = !{!"SpaceImage", !7, i64 0, !7, i64 8, !24, i64 16, !10, i64 32, !10, i64 36, !7, i64 40, !174, i64 48, !7, i64 88, !175, i64 96, !176, i64 5360, !7, i64 10520, !8, i64 10528, !21, i64 10536, !21, i64 10540, !21, i64 10544, !21, i64 10548, !21, i64 10552, !8, i64 10556, !8, i64 10557, !12, i64 10558, !12, i64 10560, !12, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !177, i64 10568}
!174 = !{!"ImageUser", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !10, i64 36}
!175 = !{!"Scopes", !10, i64 0, !10, i64 4, !10, i64 8, !21, i64 12, !10, i64 16, !21, i64 20, !21, i64 24, !10, i64 28, !21, i64 32, !10, i64 36, !8, i64 40, !176, i64 64, !7, i64 5224, !7, i64 5232, !7, i64 5240, !7, i64 5248, !10, i64 5256, !10, i64 5260}
!176 = !{!"Histogram", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !21, i64 5128, !21, i64 5132, !12, i64 5136, !12, i64 5138, !10, i64 5140, !8, i64 5144}
!177 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!178 = !{!179, !12, i64 1250}
!179 = !{!"Image", !55, i64 0, !8, i64 120, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !8, i64 1176, !12, i64 1240, !12, i64 1242, !12, i64 1244, !12, i64 1246, !12, i64 1248, !12, i64 1250, !10, i64 1252, !12, i64 1256, !12, i64 1258, !12, i64 1260, !12, i64 1262, !12, i64 1264, !12, i64 1266, !10, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !21, i64 1296, !10, i64 1300, !12, i64 1304, !12, i64 1306, !10, i64 1308, !10, i64 1312, !8, i64 1316, !8, i64 1317, !12, i64 1318, !8, i64 1320, !21, i64 1336, !21, i64 1340, !72, i64 1344, !8, i64 1408, !8, i64 1409, !8, i64 1416}
!180 = distinct !{!180, !39}
!181 = distinct !{!181, !39}
!182 = distinct !{!182, !39}
!183 = distinct !{!183, !39}
!184 = distinct !{!184, !39}
!185 = distinct !{!185, !39}
!186 = distinct !{!186, !39}
!187 = distinct !{!187, !39}
!188 = distinct !{!188, !39}
!189 = distinct !{!189, !39}
!190 = distinct !{!190, !39}
!191 = distinct !{!191, !39}
!192 = distinct !{!192, !39}
!193 = distinct !{!193, !39}
!194 = distinct !{!194, !39}
!195 = !{!131, !12, i64 238}
!196 = distinct !{!196, !39}
!197 = distinct !{!197, !39}
