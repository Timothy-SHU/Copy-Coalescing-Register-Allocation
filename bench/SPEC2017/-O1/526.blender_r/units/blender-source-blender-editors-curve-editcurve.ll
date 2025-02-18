; ModuleID = 'blender/source/blender/editors/curve/editcurve.c'
source_filename = "blender/source/blender/editors/curve/editcurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.EditNurb = type { %struct.ListBase, ptr, i32, [4 x i8] }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.CVKeyIndex = type { ptr, i32, i32, i32, i32, i8, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.NurbSort = type { ptr, ptr, ptr, [3 x float] }
%struct.anon.0 = type { ptr, ptr, ptr, float, i32, i32, [2 x float] }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.UndoCurve = type { %struct.ListBase, i32, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.anon.1 = type { ptr, ptr, ptr, float, i32, i32, [2 x float] }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"knotu %d: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"knotv %d: %f\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"editnurb\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Separate\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"CURVE_OT_separate\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"Separate selected points from connected unselected points into a new object\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Split\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"CURVE_OT_split\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Split off selected points from connected unselected points\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"extrudeNurb1\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"Switch Direction\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Switch direction of selected splines\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"CURVE_OT_switch_direction\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Set Goal Weight\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Set softbody goal weight for selected points\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"CURVE_OT_spline_weight_set\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Set Curve Radius\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"Set per-point radius which is used for bevel tapering\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"CURVE_OT_radius_set\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Flatten angles of selected points\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"CURVE_OT_smooth\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Smooth Curve Weight\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"Interpolate weight of selected points\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"CURVE_OT_smooth_weight\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Smooth Curve Radius\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Interpolate radii of selected points\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"CURVE_OT_smooth_radius\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Smooth Curve Tilt\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"Interpolate tilt of selected points\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"CURVE_OT_smooth_tilt\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"(De)select First\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"CURVE_OT_de_select_first\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"(De)select first of visible part of each NURBS\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"(De)select Last\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"CURVE_OT_de_select_last\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"(De)select last of visible part of each NURBS\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"CURVE_OT_select_all\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"(De)select all control points\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"Hide Selected\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"CURVE_OT_hide\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"Hide (un)selected control points\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"Hide unselected rather than selected\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"Reveal Hidden\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"CURVE_OT_reveal\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"Show again hidden control points\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"Subdivide\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"Subdivide selected segments\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"CURVE_OT_subdivide\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"number_cuts\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Number of cuts\00", align 1
@CURVE_OT_spline_type_set.type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.59, i32 0, ptr @.str.60, ptr @.str.18 }, %struct.EnumPropertyItem { i32 1, ptr @.str.61, i32 0, ptr @.str.62, ptr @.str.18 }, %struct.EnumPropertyItem { i32 4, ptr @.str.63, i32 0, ptr @.str.63, ptr @.str.18 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.59 = private unnamed_addr constant [5 x i8] c"POLY\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"Poly\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"BEZIER\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"Bezier\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"NURBS\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"Set Spline Type\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"Set type of active spline\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"CURVE_OT_spline_type_set\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"Spline type\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"use_handles\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"Handles\00", align 1
@.str.72 = private unnamed_addr constant [56 x i8] c"Use handles when converting bezier curves into polygons\00", align 1
@CURVE_OT_handle_type_set.editcurve_handle_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.73, i32 0, ptr @.str.74, ptr @.str.18 }, %struct.EnumPropertyItem { i32 2, ptr @.str.75, i32 0, ptr @.str.76, ptr @.str.18 }, %struct.EnumPropertyItem { i32 5, ptr @.str.77, i32 0, ptr @.str.78, ptr @.str.18 }, %struct.EnumPropertyItem { i32 6, ptr @.str.79, i32 0, ptr @.str.80, ptr @.str.18 }, %struct.EnumPropertyItem { i32 3, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.18 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.73 = private unnamed_addr constant [10 x i8] c"AUTOMATIC\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"VECTOR\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"Aligned\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"FREE_ALIGN\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"TOGGLE_FREE_ALIGN\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"Toggle Free/Align\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"Set Handle Type\00", align 1
@.str.84 = private unnamed_addr constant [48 x i8] c"Set type of handles for selected control points\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"CURVE_OT_handle_type_set\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"Recalc Normals\00", align 1
@.str.87 = private unnamed_addr constant [46 x i8] c"Recalculate the direction of selected handles\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"CURVE_OT_normals_make_consistent\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"calc_length\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"Recalculate handle length\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Make Segment\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"CURVE_OT_make_segment\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"Join two curves by their selected ends\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Spin\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"CURVE_OT_spin\00", align 1
@.str.97 = private unnamed_addr constant [71 x i8] c"Extrude selected boundary row around pivot point and current view axis\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"Center in global view space\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"Axis in global view space\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"Add Vertex\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"CURVE_OT_vertex_add\00", align 1
@.str.106 = private unnamed_addr constant [72 x i8] c"Add a new control point (linked to only selected end-curve one, if any)\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.109 = private unnamed_addr constant [30 x i8] c"Location to add new vertex at\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"Extrude\00", align 1
@.str.111 = private unnamed_addr constant [34 x i8] c"Extrude selected control point(s)\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"CURVE_OT_extrude\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@transform_mode_types = external global [0 x %struct.EnumPropertyItem], align 8
@.str.114 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@CURVE_OT_cyclic_toggle.direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.115, i32 0, ptr @.str.116, ptr @.str.18 }, %struct.EnumPropertyItem { i32 1, ptr @.str.117, i32 0, ptr @.str.118, ptr @.str.18 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.115 = private unnamed_addr constant [9 x i8] c"CYCLIC_U\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"Cyclic U\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"CYCLIC_V\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"Cyclic V\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"Toggle Cyclic\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"Make active spline closed/opened loop\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"CURVE_OT_cyclic_toggle\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.124 = private unnamed_addr constant [36 x i8] c"Direction to make surface cyclic in\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"Select Linked All\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"CURVE_OT_select_linked\00", align 1
@.str.127 = private unnamed_addr constant [47 x i8] c"Select all control points linked to active one\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.129 = private unnamed_addr constant [28 x i8] c"CURVE_OT_select_linked_pick\00", align 1
@.str.130 = private unnamed_addr constant [58 x i8] c"Select all control points linked to already selected ones\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.133 = private unnamed_addr constant [58 x i8] c"Deselect linked control points rather than selecting them\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"Select Control Point Row\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"CURVE_OT_select_row\00", align 1
@.str.136 = private unnamed_addr constant [52 x i8] c"Select a row of control points including active one\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"Select Next\00", align 1
@.str.138 = private unnamed_addr constant [21 x i8] c"CURVE_OT_select_next\00", align 1
@.str.139 = private unnamed_addr constant [71 x i8] c"Select control points following already selected ones along the curves\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"Select Previous\00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c"CURVE_OT_select_previous\00", align 1
@.str.142 = private unnamed_addr constant [71 x i8] c"Select control points preceding already selected ones along the curves\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"CURVE_OT_select_more\00", align 1
@.str.145 = private unnamed_addr constant [63 x i8] c"Select control points directly linked to already selected ones\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"CURVE_OT_select_less\00", align 1
@.str.148 = private unnamed_addr constant [58 x i8] c"Reduce current selection by deselecting boundary elements\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"Select Random\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"CURVE_OT_select_random\00", align 1
@.str.151 = private unnamed_addr constant [36 x i8] c"Randomly select some control points\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"Percent\00", align 1
@.str.154 = private unnamed_addr constant [42 x i8] c"Percentage of elements to select randomly\00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"Checker Deselect\00", align 1
@.str.156 = private unnamed_addr constant [28 x i8] c"Deselect every other vertex\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"CURVE_OT_select_nth\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"nth\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"Nth Selection\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"Duplicate Curve\00", align 1
@.str.161 = private unnamed_addr constant [34 x i8] c"Duplicate selected control points\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"CURVE_OT_duplicate\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.164 = private unnamed_addr constant [43 x i8] c"Delete selected control points or segments\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"CURVE_OT_delete\00", align 1
@curve_delete_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.226, i32 0, ptr @.str.227, ptr @.str.18 }, %struct.EnumPropertyItem { i32 1, ptr @.str.228, i32 0, ptr @.str.229, ptr @.str.18 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.166 = private unnamed_addr constant [25 x i8] c"Which elements to delete\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"Shade Smooth\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"CURVE_OT_shade_smooth\00", align 1
@.str.169 = private unnamed_addr constant [22 x i8] c"Set shading to smooth\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"Shade Flat\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"CURVE_OT_shade_flat\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"Set shading to flat\00", align 1
@.str.173 = private unnamed_addr constant [38 x i8] c"Active object is not a selected curve\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"Clear Tilt\00", align 1
@.str.175 = private unnamed_addr constant [20 x i8] c"CURVE_OT_tilt_clear\00", align 1
@.str.176 = private unnamed_addr constant [42 x i8] c"Clear the tilt of selected control points\00", align 1
@.str.177 = private unnamed_addr constant [20 x i8] c"Match Texture Space\00", align 1
@.str.178 = private unnamed_addr constant [29 x i8] c"CURVE_OT_match_texture_space\00", align 1
@.str.179 = private unnamed_addr constant [45 x i8] c"Match texture space to object's bounding box\00", align 1
@.str.180 = private unnamed_addr constant [30 x i8] c"splines[%d].bezier_points[%d]\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"%s.handle_left\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"%s.handle_right\00", align 1
@.str.183 = private unnamed_addr constant [23 x i8] c"splines[%d].points[%d]\00", align 1
@.str.184 = private unnamed_addr constant [8 x i8] c"splines\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c".bezier_points\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c".points\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"splines[%d]\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.189 = private unnamed_addr constant [27 x i8] c"curve old to new index map\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"currkey->data\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"editNurb keyIndex\00", align 1
@.str.192 = private unnamed_addr constant [16 x i8] c"init_cvKeyIndex\00", align 1
@.str.193 = private unnamed_addr constant [41 x i8] c"Cannot separate a curve with vertex keys\00", align 1
@.str.194 = private unnamed_addr constant [34 x i8] c"Cannot separate current selection\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"adduplicateN3\00", align 1
@.str.197 = private unnamed_addr constant [31 x i8] c"Cannot split current selection\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.198 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"subdivNurb\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"subdivNurb2\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"subivideNurb3\00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"subdivideNurb4\00", align 1
@.str.203 = private unnamed_addr constant [20 x i8] c"Not yet implemented\00", align 1
@.str.204 = private unnamed_addr constant [23 x i8] c"No conversion possible\00", align 1
@.str.205 = private unnamed_addr constant [12 x i8] c"addsegmentN\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"addsegmentN2\00", align 1
@.str.207 = private unnamed_addr constant [20 x i8] c"Cannot make segment\00", align 1
@nsortbase = internal global %struct.ListBase zeroinitializer, align 8
@.str.208 = private unnamed_addr constant [28 x i8] c"Too few selections to merge\00", align 1
@.str.209 = private unnamed_addr constant [26 x i8] c"Resolution does not match\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"mergeBP\00", align 1
@.str.212 = private unnamed_addr constant [13 x i8] c"switchdirect\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"Cannot spin\00", align 1
@__const.spin_invoke.axis = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.214 = private unnamed_addr constant [13 x i8] c"addvert_Nurb\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"addvert_Nurb newnu\00", align 1
@.str.216 = private unnamed_addr constant [14 x i8] c"addvert_Nurb5\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"addvert_Nurb4\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"addvert_Nurb3\00", align 1
@select_row_exec.last = internal unnamed_addr global ptr null, align 8
@select_row_exec.direction = internal unnamed_addr global i32 0, align 4
@.str.219 = private unnamed_addr constant [11 x i8] c"selectlist\00", align 1
@.str.220 = private unnamed_addr constant [33 x i8] c"Surface has not got active point\00", align 1
@.str.221 = private unnamed_addr constant [31 x i8] c"Curve has not got active point\00", align 1
@.str.222 = private unnamed_addr constant [35 x i8] c"Cannot duplicate current selection\00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"deleteNurb\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"delNurb\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"delNurb2\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"VERT\00", align 1
@.str.227 = private unnamed_addr constant [9 x i8] c"Vertices\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"SEGMENT\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"Segments\00", align 1
@.str.230 = private unnamed_addr constant [18 x i8] c"dupli_keyIndex gh\00", align 1
@.str.231 = private unnamed_addr constant [25 x i8] c"dupli_keyIndexHash index\00", align 1
@.str.232 = private unnamed_addr constant [10 x i8] c"undoCurve\00", align 1
@str = private unnamed_addr constant [21 x i8] c"Can't duplicate Nurb\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @object_editcurve_get(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !34
  %6 = and i16 %5, -2
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  br label %13

13:                                               ; preds = %3, %1, %8
  %14 = phi ptr [ %12, %8 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @isNurbsel(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !50
  %4 = icmp eq i16 %3, 1
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !52
  br i1 %4, label %7, label %33

7:                                                ; preds = %1
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  br label %15

12:                                               ; preds = %28
  %13 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 1
  %14 = icmp eq i32 %18, 0
  br i1 %14, label %52, label %15, !llvm.loop !54

15:                                               ; preds = %9, %12
  %16 = phi i32 [ %18, %12 ], [ %6, %9 ]
  %17 = phi ptr [ %13, %12 ], [ %11, %9 ]
  %18 = add nsw i32 %16, -1
  %19 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 7
  %20 = load i8, ptr %19, align 1, !tbaa !57
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 8
  %25 = load i8, ptr %24, align 4, !tbaa !59
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 9
  %30 = load i8, ptr %29, align 1, !tbaa !60
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %12, label %52

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !61
  %36 = mul nsw i32 %35, %6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  br label %45

41:                                               ; preds = %45
  %42 = add nsw i32 %46, -1
  %43 = getelementptr inbounds %struct.BPoint, ptr %47, i64 1
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %52, label %45, !llvm.loop !63

45:                                               ; preds = %38, %41
  %46 = phi i32 [ %42, %41 ], [ %36, %38 ]
  %47 = phi ptr [ %43, %41 ], [ %40, %38 ]
  %48 = getelementptr inbounds %struct.BPoint, ptr %47, i64 0, i32 3
  %49 = load i16, ptr %48, align 4, !tbaa !64
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %41, label %52

52:                                               ; preds = %45, %41, %28, %23, %15, %12, %33, %7
  %53 = phi i32 [ 0, %7 ], [ 0, %33 ], [ 0, %12 ], [ 1, %15 ], [ 1, %23 ], [ 1, %28 ], [ 0, %41 ], [ 1, %45 ]
  ret i32 %53
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @printknots(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %2)
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !34
  %5 = and i16 %4, -2
  %6 = icmp eq i16 %5, 2
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = icmp eq ptr %11, null
  br i1 %12, label %134, label %13

13:                                               ; preds = %1, %131
  %14 = phi ptr [ %132, %131 ], [ %11, %1 ]
  %15 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !50
  %17 = icmp eq i16 %16, 1
  %18 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !52
  br i1 %17, label %20, label %46

20:                                               ; preds = %13
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  br label %28

25:                                               ; preds = %41
  %26 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 1
  %27 = icmp eq i32 %31, 0
  br i1 %27, label %65, label %28, !llvm.loop !54

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %31, %25 ], [ %19, %22 ]
  %30 = phi ptr [ %26, %25 ], [ %24, %22 ]
  %31 = add nsw i32 %29, -1
  %32 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 7
  %33 = load i8, ptr %32, align 1, !tbaa !57
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 8
  %38 = load i8, ptr %37, align 4, !tbaa !59
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 9
  %43 = load i8, ptr %42, align 1, !tbaa !60
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %25, label %65

46:                                               ; preds = %13
  %47 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !61
  %49 = mul nsw i32 %48, %19
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  br label %54

54:                                               ; preds = %54, %51
  %55 = phi i32 [ %49, %51 ], [ %61, %54 ]
  %56 = phi ptr [ %53, %51 ], [ %62, %54 ]
  %57 = getelementptr inbounds %struct.BPoint, ptr %56, i64 0, i32 3
  %58 = load i16, ptr %57, align 4, !tbaa !64
  %59 = and i16 %58, 1
  %60 = icmp ne i16 %59, 0
  %61 = add nsw i32 %55, -1
  %62 = getelementptr inbounds %struct.BPoint, ptr %56, i64 1
  %63 = icmp eq i32 %61, 0
  %64 = select i1 %60, i1 true, i1 %63
  br i1 %64, label %65, label %54, !llvm.loop !63

65:                                               ; preds = %54, %25, %28, %36, %41, %20, %46
  %66 = phi i1 [ false, %20 ], [ false, %46 ], [ false, %25 ], [ true, %28 ], [ true, %36 ], [ true, %41 ], [ %60, %54 ]
  %67 = icmp eq i16 %16, 4
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %131

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 15
  %71 = load ptr, ptr %70, align 8, !tbaa !67
  %72 = icmp eq ptr %71, null
  br i1 %72, label %100, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 11
  %75 = load i16, ptr %74, align 8, !tbaa !68
  %76 = sext i16 %75 to i32
  %77 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !52
  %79 = add nsw i32 %78, %76
  %80 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 13
  %81 = load i16, ptr %80, align 4, !tbaa !69
  %82 = and i16 %81, 1
  %83 = icmp eq i16 %82, 0
  %84 = add nsw i32 %76, -1
  %85 = select i1 %83, i32 0, i32 %84
  %86 = add nsw i32 %79, %85
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %73
  %89 = zext nneg i32 %86 to i64
  br label %90

90:                                               ; preds = %88, %90
  %91 = phi i64 [ 0, %88 ], [ %98, %90 ]
  %92 = load ptr, ptr %70, align 8, !tbaa !67
  %93 = getelementptr inbounds float, ptr %92, i64 %91
  %94 = load float, ptr %93, align 4, !tbaa !70
  %95 = fpext float %94 to double
  %96 = trunc i64 %91 to i32
  %97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %96, double noundef %95)
  %98 = add nuw nsw i64 %91, 1
  %99 = icmp eq i64 %98, %89
  br i1 %99, label %100, label %90, !llvm.loop !71

100:                                              ; preds = %90, %73, %69
  %101 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 16
  %102 = load ptr, ptr %101, align 8, !tbaa !72
  %103 = icmp eq ptr %102, null
  br i1 %103, label %131, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 12
  %106 = load i16, ptr %105, align 2, !tbaa !73
  %107 = sext i16 %106 to i32
  %108 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %109 = load i32, ptr %108, align 4, !tbaa !61
  %110 = add nsw i32 %109, %107
  %111 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 14
  %112 = load i16, ptr %111, align 2, !tbaa !74
  %113 = and i16 %112, 1
  %114 = icmp eq i16 %113, 0
  %115 = add nsw i32 %107, -1
  %116 = select i1 %114, i32 0, i32 %115
  %117 = add nsw i32 %110, %116
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %104
  %120 = zext nneg i32 %117 to i64
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi i64 [ 0, %119 ], [ %129, %121 ]
  %123 = load ptr, ptr %101, align 8, !tbaa !72
  %124 = getelementptr inbounds float, ptr %123, i64 %122
  %125 = load float, ptr %124, align 4, !tbaa !70
  %126 = fpext float %125 to double
  %127 = trunc i64 %122 to i32
  %128 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %127, double noundef %126)
  %129 = add nuw nsw i64 %122, 1
  %130 = icmp eq i64 %129, %120
  br i1 %130, label %131, label %121, !llvm.loop !75

131:                                              ; preds = %121, %104, %65, %100
  %132 = load ptr, ptr %14, align 8, !tbaa !66
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %13, !llvm.loop !76

134:                                              ; preds = %131, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_curve_updateAnimPaths(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.EditNurb, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !79
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.AnimData, ptr %9, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !81
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %11, %14
  %19 = load ptr, ptr %2, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.bAction, ptr %19, i64 0, i32 1
  tail call fastcc void @curve_rename_fcurves(ptr noundef %0, ptr noundef nonnull %22)
  br label %23

23:                                               ; preds = %21, %18
  %24 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 5
  tail call fastcc void @curve_rename_fcurves(ptr noundef %0, ptr noundef nonnull %24)
  br label %25

25:                                               ; preds = %8, %14, %1, %23
  %26 = phi i32 [ 1, %23 ], [ 0, %1 ], [ 0, %14 ], [ 0, %8 ]
  ret i32 %26
}

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @curve_rename_fcurves(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %10 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %11 = load ptr, ptr %9, align 8, !tbaa !66
  %12 = icmp eq ptr %11, null
  br i1 %12, label %85, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.EditNurb, ptr %9, i64 0, i32 1
  %15 = getelementptr inbounds %struct.EditNurb, ptr %9, i64 0, i32 1
  br label %16

16:                                               ; preds = %13, %81
  %17 = phi ptr [ %11, %13 ], [ %83, %81 ]
  %18 = phi i32 [ 0, %13 ], [ %82, %81 ]
  %19 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !52
  br i1 %21, label %54, label %24

24:                                               ; preds = %16
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %81, label %26

26:                                               ; preds = %24, %50
  %27 = phi i32 [ %30, %50 ], [ %23, %24 ]
  %28 = phi ptr [ %51, %50 ], [ %20, %24 ]
  %29 = phi i32 [ %52, %50 ], [ 0, %24 ]
  %30 = add nsw i32 %27, -1
  %31 = load ptr, ptr %14, align 8, !tbaa !77
  %32 = call ptr @BLI_ghash_lookup(ptr noundef %31, ptr noundef nonnull %28) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %26
  %35 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.180, i32 noundef %18, i32 noundef %29) #19
  %36 = getelementptr inbounds %struct.CVKeyIndex, ptr %32, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !82
  %38 = getelementptr inbounds %struct.CVKeyIndex, ptr %32, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !84
  %40 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.180, i32 noundef %37, i32 noundef %39) #19
  %41 = getelementptr inbounds %struct.CVKeyIndex, ptr %32, i64 0, i32 5
  %42 = load i8, ptr %41, align 8, !tbaa !85
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 64, ptr noundef nonnull @.str.181, ptr noundef nonnull %4) #19
  %46 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.182, ptr noundef nonnull %3) #19
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %5)
  %47 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 64, ptr noundef nonnull @.str.182, ptr noundef nonnull %4) #19
  %48 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.181, ptr noundef nonnull %3) #19
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #19
  br label %49

49:                                               ; preds = %44, %34
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %5)
  store i32 %18, ptr %36, align 4, !tbaa !82
  store i32 %29, ptr %38, align 8, !tbaa !84
  br label %50

50:                                               ; preds = %49, %26
  %51 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 1
  %52 = add nuw nsw i32 %29, 1
  %53 = icmp eq i32 %30, 0
  br i1 %53, label %81, label %26, !llvm.loop !86

54:                                               ; preds = %16
  %55 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 7
  %56 = load i32, ptr %55, align 4, !tbaa !61
  %57 = mul nsw i32 %56, %23
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 17
  %61 = load ptr, ptr %60, align 8, !tbaa !62
  br label %62

62:                                               ; preds = %59, %77
  %63 = phi i32 [ %66, %77 ], [ %57, %59 ]
  %64 = phi ptr [ %78, %77 ], [ %61, %59 ]
  %65 = phi i32 [ %79, %77 ], [ 0, %59 ]
  %66 = add nsw i32 %63, -1
  %67 = load ptr, ptr %15, align 8, !tbaa !77
  %68 = call ptr @BLI_ghash_lookup(ptr noundef %67, ptr noundef %64) #19
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %62
  %71 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.183, i32 noundef %18, i32 noundef %65) #19
  %72 = getelementptr inbounds %struct.CVKeyIndex, ptr %68, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !82
  %74 = getelementptr inbounds %struct.CVKeyIndex, ptr %68, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !84
  %76 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.183, i32 noundef %73, i32 noundef %75) #19
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %5)
  store i32 %18, ptr %72, align 4, !tbaa !82
  store i32 %65, ptr %74, align 8, !tbaa !84
  br label %77

77:                                               ; preds = %70, %62
  %78 = getelementptr inbounds %struct.BPoint, ptr %64, i64 1
  %79 = add nuw nsw i32 %65, 1
  %80 = icmp eq i32 %66, 0
  br i1 %80, label %81, label %62, !llvm.loop !87

81:                                               ; preds = %50, %77, %24, %54
  %82 = add nuw nsw i32 %18, 1
  %83 = load ptr, ptr %17, align 8, !tbaa !66
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %16, !llvm.loop !88

85:                                               ; preds = %81, %2
  %86 = load ptr, ptr %1, align 8, !tbaa !89
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 5
  %90 = icmp eq ptr %89, %1
  br label %97

91:                                               ; preds = %118, %85
  %92 = load ptr, ptr %9, align 8, !tbaa !66
  %93 = icmp eq ptr %92, null
  br i1 %93, label %150, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.EditNurb, ptr %9, i64 0, i32 1
  %96 = getelementptr inbounds %struct.EditNurb, ptr %9, i64 0, i32 1
  br label %120

97:                                               ; preds = %88, %118
  %98 = phi ptr [ %86, %88 ], [ %99, %118 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !90
  %100 = getelementptr inbounds %struct.FCurve, ptr %98, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !92
  %102 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %101, ptr noundef nonnull dereferenceable(8) @.str.184, i64 noundef 7) #20
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %101, i32 noundef 46) #20
  %106 = icmp eq ptr %105, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %105, ptr noundef nonnull dereferenceable(15) @.str.185, i64 noundef 14) #20
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %105, ptr noundef nonnull dereferenceable(8) @.str.186, i64 noundef 7) #20
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110, %107
  br i1 %90, label %114, label %115

114:                                              ; preds = %113
  call void @BLI_remlink(ptr noundef nonnull %89, ptr noundef nonnull %98) #19
  br label %117

115:                                              ; preds = %113
  %116 = load ptr, ptr %10, align 8, !tbaa !79
  call void @action_groups_remove_channel(ptr noundef %116, ptr noundef nonnull %98) #19
  br label %117

117:                                              ; preds = %114, %115
  call void @free_fcurve(ptr noundef nonnull %98) #19
  br label %118

118:                                              ; preds = %104, %110, %117, %97
  %119 = icmp eq ptr %99, null
  br i1 %119, label %91, label %97, !llvm.loop !93

120:                                              ; preds = %94, %146
  %121 = phi ptr [ %92, %94 ], [ %148, %146 ]
  %122 = phi i32 [ 0, %94 ], [ %147, %146 ]
  %123 = getelementptr inbounds %struct.Nurb, ptr %121, i64 0, i32 6
  %124 = load i32, ptr %123, align 8, !tbaa !52
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.Nurb, ptr %121, i64 0, i32 18
  %128 = load ptr, ptr %127, align 8, !tbaa !53
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %95, align 8, !tbaa !77
  %132 = call ptr @BLI_ghash_lookup(ptr noundef %131, ptr noundef nonnull %128) #19
  br label %138

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.Nurb, ptr %121, i64 0, i32 17
  %135 = load ptr, ptr %134, align 8, !tbaa !62
  %136 = load ptr, ptr %96, align 8, !tbaa !77
  %137 = call ptr @BLI_ghash_lookup(ptr noundef %136, ptr noundef %135) #19
  br label %138

138:                                              ; preds = %130, %133, %120
  %139 = phi ptr [ %132, %130 ], [ %137, %133 ], [ null, %120 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.187, i32 noundef %122) #19
  %143 = getelementptr inbounds %struct.CVKeyIndex, ptr %139, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !82
  %145 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.187, i32 noundef %144) #19
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %5)
  br label %146

146:                                              ; preds = %138, %141
  %147 = add nuw nsw i32 %122, 1
  %148 = load ptr, ptr %121, align 8, !tbaa !66
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %120, !llvm.loop !94

150:                                              ; preds = %146, %91
  %151 = load ptr, ptr %1, align 8, !tbaa !89
  %152 = icmp eq ptr %151, null
  br i1 %152, label %171, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 5
  %155 = icmp eq ptr %154, %1
  br label %156

156:                                              ; preds = %153, %169
  %157 = phi ptr [ %151, %153 ], [ %158, %169 ]
  %158 = load ptr, ptr %157, align 8, !tbaa !90
  %159 = getelementptr inbounds %struct.FCurve, ptr %157, i64 0, i32 12
  %160 = load ptr, ptr %159, align 8, !tbaa !92
  %161 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %160, ptr noundef nonnull dereferenceable(8) @.str.184, i64 noundef 7) #20
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  br i1 %155, label %164, label %165

164:                                              ; preds = %163
  call void @BLI_remlink(ptr noundef nonnull %154, ptr noundef nonnull %157) #19
  br label %167

165:                                              ; preds = %163
  %166 = load ptr, ptr %10, align 8, !tbaa !79
  call void @action_groups_remove_channel(ptr noundef %166, ptr noundef nonnull %157) #19
  br label %167

167:                                              ; preds = %164, %165
  call void @free_fcurve(ptr noundef nonnull %157) #19
  br label %169

168:                                              ; preds = %156
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef nonnull %157) #19
  br label %169

169:                                              ; preds = %167, %168
  %170 = icmp eq ptr %158, null
  br i1 %170, label %171, label %156, !llvm.loop !95

171:                                              ; preds = %169, %150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @load_editNurb(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = alloca %struct.BezTriple, align 4
  %3 = alloca %struct.BezTriple, align 4
  %4 = alloca %struct.BezTriple, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = and i16 %11, -2
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  br label %19

19:                                               ; preds = %1, %9, %14
  %20 = phi ptr [ %18, %14 ], [ null, %9 ], [ null, %1 ]
  br i1 %8, label %816, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !34
  %24 = and i16 %23, -2
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %26, label %816

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  %29 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !96
  %30 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %32 = getelementptr inbounds %struct.EditNurb, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !77
  %34 = icmp eq ptr %33, null
  br i1 %34, label %158, label %35

35:                                               ; preds = %26
  %36 = load ptr, ptr @G, align 8, !tbaa !97
  %37 = getelementptr inbounds %struct.Main, ptr %36, i64 0, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  %39 = icmp eq ptr %38, null
  br i1 %39, label %153, label %40

40:                                               ; preds = %35, %149
  %41 = phi ptr [ %151, %149 ], [ %38, %35 ]
  %42 = phi ptr [ %150, %149 ], [ null, %35 ]
  %43 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !99
  %45 = icmp eq ptr %44, null
  br i1 %45, label %91, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, %28
  br i1 %49, label %50, label %91

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 4
  %52 = load i16, ptr %51, align 2, !tbaa !100
  %53 = add i16 %52, -5
  %54 = icmp ult i16 %53, 2
  br i1 %54, label %55, label %91

55:                                               ; preds = %50
  %56 = icmp eq ptr %42, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = call fastcc ptr @initialize_index_map(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %58, %57 ], [ %42, %55 ]
  %61 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !101
  %63 = load i32, ptr %5, align 4, !tbaa !102
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds i32, ptr %60, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !102
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 %68, ptr %61, align 4, !tbaa !101
  br label %71

71:                                               ; preds = %70, %65, %59
  %72 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !103
  %74 = icmp slt i32 %73, %63
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = sext i32 %73 to i64
  %77 = getelementptr inbounds i32, ptr %60, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !102
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32 %78, ptr %72, align 8, !tbaa !103
  br label %81

81:                                               ; preds = %80, %75, %71
  %82 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 7
  %83 = load i32, ptr %82, align 4, !tbaa !104
  %84 = icmp slt i32 %83, %63
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds i32, ptr %60, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !102
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 %88, ptr %82, align 4, !tbaa !104
  br label %91

91:                                               ; preds = %90, %85, %81, %50, %46, %40
  %92 = phi ptr [ %60, %90 ], [ %60, %85 ], [ %60, %81 ], [ %42, %46 ], [ %42, %40 ], [ %42, %50 ]
  %93 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 19
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = icmp eq ptr %94, %28
  br i1 %95, label %96, label %149

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 26
  %98 = load ptr, ptr %97, align 8, !tbaa !66
  %99 = icmp eq ptr %98, null
  br i1 %99, label %149, label %100

100:                                              ; preds = %96, %145
  %101 = phi ptr [ %147, %145 ], [ %98, %96 ]
  %102 = phi ptr [ %146, %145 ], [ %92, %96 ]
  %103 = getelementptr inbounds %struct.ModifierData, ptr %101, i64 0, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !105
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %106, label %145

106:                                              ; preds = %100
  %107 = icmp eq ptr %102, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = call fastcc ptr @initialize_index_map(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi ptr [ %109, %108 ], [ %102, %106 ]
  %112 = getelementptr inbounds %struct.HookModifierData, ptr %101, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !107
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.HookModifierData, ptr %101, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !109
  %118 = load i32, ptr %5, align 4, !tbaa !102
  br label %119

119:                                              ; preds = %115, %136
  %120 = phi i64 [ 0, %115 ], [ %138, %136 ]
  %121 = phi i32 [ 0, %115 ], [ %137, %136 ]
  %122 = getelementptr inbounds i32, ptr %117, i64 %120
  %123 = load i32, ptr %122, align 4, !tbaa !102
  %124 = icmp slt i32 %123, %118
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = sext i32 %123 to i64
  %127 = getelementptr inbounds i32, ptr %111, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !102
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %136, label %130

130:                                              ; preds = %125
  %131 = add nsw i32 %121, 1
  %132 = sext i32 %121 to i64
  %133 = getelementptr inbounds i32, ptr %117, i64 %132
  store i32 %128, ptr %133, align 4, !tbaa !102
  br label %136

134:                                              ; preds = %119
  %135 = add nsw i32 %121, 1
  br label %136

136:                                              ; preds = %134, %130, %125
  %137 = phi i32 [ %131, %130 ], [ %121, %125 ], [ %135, %134 ]
  %138 = add nuw nsw i64 %120, 1
  %139 = load i32, ptr %112, align 8, !tbaa !107
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %119, label %142, !llvm.loop !110

142:                                              ; preds = %136, %110
  %143 = phi i32 [ 0, %110 ], [ %137, %136 ]
  %144 = getelementptr inbounds %struct.HookModifierData, ptr %101, i64 0, i32 7
  store i32 %143, ptr %144, align 8, !tbaa !107
  br label %145

145:                                              ; preds = %142, %100
  %146 = phi ptr [ %111, %142 ], [ %102, %100 ]
  %147 = load ptr, ptr %101, align 8, !tbaa !66
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %100, !llvm.loop !111

149:                                              ; preds = %145, %96, %91
  %150 = phi ptr [ %92, %91 ], [ %92, %96 ], [ %146, %145 ]
  %151 = load ptr, ptr %41, align 8, !tbaa !66
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %40, !llvm.loop !112

153:                                              ; preds = %149, %35
  %154 = phi ptr [ null, %35 ], [ %150, %149 ]
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %157(ptr noundef nonnull %154) #19
  br label %158

158:                                              ; preds = %26, %153, %156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  %159 = load ptr, ptr %20, align 8, !tbaa !66
  %160 = icmp eq ptr %159, null
  br i1 %160, label %172, label %161

161:                                              ; preds = %158, %169
  %162 = phi ptr [ %170, %169 ], [ %159, %158 ]
  %163 = call ptr @BKE_nurb_duplicate(ptr noundef nonnull %162) #19
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %163) #19
  %164 = getelementptr inbounds %struct.Nurb, ptr %162, i64 0, i32 2
  %165 = load i16, ptr %164, align 8, !tbaa !50
  %166 = icmp eq i16 %165, 4
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %162) #19
  br label %169

169:                                              ; preds = %161, %167
  %170 = load ptr, ptr %162, align 8, !tbaa !66
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %161, !llvm.loop !113

172:                                              ; preds = %169, %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !96
  %173 = load ptr, ptr %27, align 8, !tbaa !46
  %174 = getelementptr inbounds %struct.Curve, ptr %173, i64 0, i32 9
  %175 = load ptr, ptr %174, align 8, !tbaa !114
  %176 = icmp eq ptr %175, null
  br i1 %176, label %790, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.Curve, ptr %173, i64 0, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !47
  %180 = getelementptr inbounds %struct.Key, ptr %175, i64 0, i32 6
  %181 = getelementptr inbounds %struct.EditNurb, ptr %179, i64 0, i32 2
  %182 = load i32, ptr %181, align 8, !tbaa !115
  %183 = add nsw i32 %182, -1
  %184 = call ptr @BLI_findlink(ptr noundef nonnull %180, i32 noundef %183) #19
  %185 = call i32 @BKE_nurbList_verts_count(ptr noundef %179) #19
  %186 = load ptr, ptr %174, align 8, !tbaa !114
  %187 = getelementptr inbounds %struct.Key, ptr %186, i64 0, i32 9
  %188 = load i16, ptr %187, align 8, !tbaa !116
  %189 = icmp eq i16 %188, 1
  br i1 %189, label %190, label %359

190:                                              ; preds = %177
  %191 = getelementptr inbounds %struct.Key, ptr %186, i64 0, i32 6
  br label %192

192:                                              ; preds = %196, %190
  %193 = phi ptr [ %191, %190 ], [ %194, %196 ]
  %194 = load ptr, ptr %193, align 8, !tbaa !66
  %195 = icmp eq ptr %194, null
  br i1 %195, label %359, label %196

196:                                              ; preds = %192
  %197 = load i32, ptr %181, align 8, !tbaa !115
  %198 = add nsw i32 %197, -1
  %199 = getelementptr inbounds %struct.KeyBlock, ptr %194, i64 0, i32 6
  %200 = load i16, ptr %199, align 4, !tbaa !118
  %201 = sext i16 %200 to i32
  %202 = icmp eq i32 %198, %201
  br i1 %202, label %203, label %192, !llvm.loop !120

203:                                              ; preds = %196
  %204 = load ptr, ptr %179, align 8, !tbaa !66
  %205 = icmp eq ptr %204, null
  br i1 %205, label %229, label %206

206:                                              ; preds = %203, %221
  %207 = phi ptr [ %224, %221 ], [ %204, %203 ]
  %208 = phi i32 [ %223, %221 ], [ 0, %203 ]
  %209 = getelementptr inbounds %struct.Nurb, ptr %207, i64 0, i32 18
  %210 = load ptr, ptr %209, align 8, !tbaa !53
  %211 = icmp eq ptr %210, null
  %212 = getelementptr inbounds %struct.Nurb, ptr %207, i64 0, i32 6
  %213 = load i32, ptr %212, align 8, !tbaa !52
  br i1 %211, label %216, label %214

214:                                              ; preds = %206
  %215 = shl nsw i32 %213, 2
  br label %221

216:                                              ; preds = %206
  %217 = shl nsw i32 %213, 1
  %218 = getelementptr inbounds %struct.Nurb, ptr %207, i64 0, i32 7
  %219 = load i32, ptr %218, align 4, !tbaa !61
  %220 = mul nsw i32 %217, %219
  br label %221

221:                                              ; preds = %216, %214
  %222 = phi i32 [ %215, %214 ], [ %220, %216 ]
  %223 = add nsw i32 %222, %208
  %224 = load ptr, ptr %207, align 8, !tbaa !66
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %206, !llvm.loop !121

226:                                              ; preds = %221
  %227 = sext i32 %223 to i64
  %228 = mul nsw i64 %227, 12
  br label %229

229:                                              ; preds = %226, %203
  %230 = phi i64 [ 0, %203 ], [ %228, %226 ]
  %231 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %232 = call ptr %231(i64 noundef %230, ptr noundef nonnull @.str.190) #19
  %233 = load ptr, ptr %179, align 8, !tbaa !66
  %234 = icmp eq ptr %233, null
  br i1 %234, label %359, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.EditNurb, ptr %179, i64 0, i32 1
  %237 = getelementptr inbounds %struct.EditNurb, ptr %179, i64 0, i32 1
  br label %238

238:                                              ; preds = %235, %355
  %239 = phi ptr [ %233, %235 ], [ %357, %355 ]
  %240 = phi i32 [ 0, %235 ], [ %356, %355 ]
  %241 = getelementptr inbounds %struct.Nurb, ptr %239, i64 0, i32 18
  %242 = load ptr, ptr %241, align 8, !tbaa !53
  %243 = icmp eq ptr %242, null
  %244 = getelementptr inbounds %struct.Nurb, ptr %239, i64 0, i32 6
  %245 = load i32, ptr %244, align 8, !tbaa !52
  br i1 %243, label %304, label %246

246:                                              ; preds = %238
  %247 = icmp eq i32 %245, 0
  br i1 %247, label %355, label %248

248:                                              ; preds = %246, %300
  %249 = phi i32 [ %252, %300 ], [ %245, %246 ]
  %250 = phi i32 [ %301, %300 ], [ %240, %246 ]
  %251 = phi ptr [ %302, %300 ], [ %242, %246 ]
  %252 = add nsw i32 %249, -1
  %253 = load ptr, ptr %236, align 8, !tbaa !77
  %254 = call ptr @BLI_ghash_lookup(ptr noundef %253, ptr noundef nonnull %251) #19
  %255 = icmp eq ptr %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %248
  %257 = load ptr, ptr %254, align 8, !tbaa !122
  br label %258

258:                                              ; preds = %256, %248
  %259 = phi ptr [ %257, %256 ], [ null, %248 ]
  %260 = icmp eq ptr %259, null
  br i1 %260, label %298, label %261

261:                                              ; preds = %258
  %262 = sext i32 %250 to i64
  br label %263

263:                                              ; preds = %261, %263
  %264 = phi i64 [ 0, %261 ], [ %285, %263 ]
  %265 = phi i64 [ %262, %261 ], [ %284, %263 ]
  %266 = getelementptr inbounds [3 x float], ptr %232, i64 %265
  %267 = getelementptr inbounds [3 x [3 x float]], ptr %251, i64 0, i64 %264
  %268 = getelementptr inbounds [3 x [3 x float]], ptr %259, i64 0, i64 %264
  %269 = load float, ptr %267, align 4, !tbaa !70
  %270 = load float, ptr %268, align 4, !tbaa !70
  %271 = fsub float %269, %270
  store float %271, ptr %266, align 4, !tbaa !70
  %272 = getelementptr inbounds float, ptr %267, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !70
  %274 = getelementptr inbounds float, ptr %268, i64 1
  %275 = load float, ptr %274, align 4, !tbaa !70
  %276 = fsub float %273, %275
  %277 = getelementptr inbounds float, ptr %266, i64 1
  store float %276, ptr %277, align 4, !tbaa !70
  %278 = getelementptr inbounds float, ptr %267, i64 2
  %279 = load float, ptr %278, align 4, !tbaa !70
  %280 = getelementptr inbounds float, ptr %268, i64 2
  %281 = load float, ptr %280, align 4, !tbaa !70
  %282 = fsub float %279, %281
  %283 = getelementptr inbounds float, ptr %266, i64 2
  store float %282, ptr %283, align 4, !tbaa !70
  %284 = add nsw i64 %265, 1
  %285 = add nuw nsw i64 %264, 1
  %286 = icmp eq i64 %285, 3
  br i1 %286, label %287, label %263, !llvm.loop !123

287:                                              ; preds = %263
  %288 = trunc i64 %265 to i32
  %289 = getelementptr inbounds %struct.BezTriple, ptr %251, i64 0, i32 1
  %290 = load float, ptr %289, align 4, !tbaa !124
  %291 = getelementptr inbounds %struct.BezTriple, ptr %259, i64 0, i32 1
  %292 = load float, ptr %291, align 4, !tbaa !124
  %293 = fsub float %290, %292
  %294 = add nsw i32 %288, 2
  %295 = shl i64 %284, 32
  %296 = ashr exact i64 %295, 32
  %297 = getelementptr inbounds [3 x float], ptr %232, i64 %296
  store float %293, ptr %297, align 4, !tbaa !70
  br label %300

298:                                              ; preds = %258
  %299 = add nsw i32 %250, 4
  br label %300

300:                                              ; preds = %298, %287
  %301 = phi i32 [ %294, %287 ], [ %299, %298 ]
  %302 = getelementptr inbounds %struct.BezTriple, ptr %251, i64 1
  %303 = icmp eq i32 %252, 0
  br i1 %303, label %355, label %248, !llvm.loop !125

304:                                              ; preds = %238
  %305 = getelementptr inbounds %struct.Nurb, ptr %239, i64 0, i32 7
  %306 = load i32, ptr %305, align 4, !tbaa !61
  %307 = mul nsw i32 %306, %245
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %355, label %309

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.Nurb, ptr %239, i64 0, i32 17
  %311 = load ptr, ptr %310, align 8, !tbaa !62
  %312 = sext i32 %240 to i64
  br label %313

313:                                              ; preds = %309, %349
  %314 = phi i64 [ %312, %309 ], [ %350, %349 ]
  %315 = phi i32 [ %307, %309 ], [ %317, %349 ]
  %316 = phi ptr [ %311, %309 ], [ %351, %349 ]
  %317 = add nsw i32 %315, -1
  %318 = load ptr, ptr %237, align 8, !tbaa !77
  %319 = call ptr @BLI_ghash_lookup(ptr noundef %318, ptr noundef %316) #19
  %320 = icmp eq ptr %319, null
  br i1 %320, label %323, label %321

321:                                              ; preds = %313
  %322 = load ptr, ptr %319, align 8, !tbaa !122
  br label %323

323:                                              ; preds = %321, %313
  %324 = phi ptr [ %322, %321 ], [ null, %313 ]
  %325 = icmp eq ptr %324, null
  br i1 %325, label %349, label %326

326:                                              ; preds = %323
  %327 = getelementptr inbounds [3 x float], ptr %232, i64 %314
  %328 = load float, ptr %316, align 4, !tbaa !70
  %329 = load float, ptr %324, align 4, !tbaa !70
  %330 = fsub float %328, %329
  store float %330, ptr %327, align 4, !tbaa !70
  %331 = getelementptr inbounds float, ptr %316, i64 1
  %332 = load float, ptr %331, align 4, !tbaa !70
  %333 = getelementptr inbounds float, ptr %324, i64 1
  %334 = load float, ptr %333, align 4, !tbaa !70
  %335 = fsub float %332, %334
  %336 = getelementptr inbounds float, ptr %327, i64 1
  store float %335, ptr %336, align 4, !tbaa !70
  %337 = getelementptr inbounds float, ptr %316, i64 2
  %338 = load float, ptr %337, align 4, !tbaa !70
  %339 = getelementptr inbounds float, ptr %324, i64 2
  %340 = load float, ptr %339, align 4, !tbaa !70
  %341 = fsub float %338, %340
  %342 = getelementptr inbounds float, ptr %327, i64 2
  store float %341, ptr %342, align 4, !tbaa !70
  %343 = getelementptr inbounds %struct.BPoint, ptr %316, i64 0, i32 1
  %344 = load float, ptr %343, align 4, !tbaa !126
  %345 = getelementptr inbounds %struct.BPoint, ptr %324, i64 0, i32 1
  %346 = load float, ptr %345, align 4, !tbaa !126
  %347 = fsub float %344, %346
  %348 = getelementptr [3 x float], ptr %327, i64 1
  store float %347, ptr %348, align 4, !tbaa !70
  br label %349

349:                                              ; preds = %326, %323
  %350 = add nsw i64 %314, 2
  %351 = getelementptr inbounds %struct.BPoint, ptr %316, i64 1
  %352 = icmp eq i32 %317, 0
  br i1 %352, label %353, label %313, !llvm.loop !127

353:                                              ; preds = %349
  %354 = trunc i64 %350 to i32
  br label %355

355:                                              ; preds = %300, %353, %246, %304
  %356 = phi i32 [ %240, %304 ], [ %240, %246 ], [ %354, %353 ], [ %301, %300 ]
  %357 = load ptr, ptr %239, align 8, !tbaa !66
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %238, !llvm.loop !128

359:                                              ; preds = %192, %355, %229, %177
  %360 = phi ptr [ null, %177 ], [ %232, %229 ], [ %232, %355 ], [ null, %192 ]
  %361 = load ptr, ptr %174, align 8, !tbaa !114
  %362 = getelementptr inbounds %struct.Key, ptr %361, i64 0, i32 6
  %363 = load ptr, ptr %362, align 8, !tbaa !66
  %364 = icmp eq ptr %363, null
  br i1 %364, label %786, label %365

365:                                              ; preds = %359
  %366 = icmp eq ptr %360, null
  %367 = getelementptr inbounds %struct.EditNurb, ptr %179, i64 0, i32 1
  %368 = getelementptr inbounds %struct.EditNurb, ptr %179, i64 0, i32 1
  %369 = getelementptr inbounds %struct.EditNurb, ptr %179, i64 0, i32 1
  %370 = getelementptr inbounds %struct.EditNurb, ptr %179, i64 0, i32 1
  %371 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 1
  %372 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 1
  %373 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 1
  br label %374

374:                                              ; preds = %365, %783
  %375 = phi ptr [ %363, %365 ], [ %784, %783 ]
  %376 = icmp eq ptr %375, %184
  %377 = select i1 %366, i1 true, i1 %376
  br i1 %377, label %385, label %378

378:                                              ; preds = %374
  %379 = load i32, ptr %181, align 8, !tbaa !115
  %380 = add nsw i32 %379, -1
  %381 = getelementptr inbounds %struct.KeyBlock, ptr %375, i64 0, i32 6
  %382 = load i16, ptr %381, align 4, !tbaa !118
  %383 = sext i16 %382 to i32
  %384 = icmp eq i32 %380, %383
  br label %385

385:                                              ; preds = %378, %374
  %386 = phi i1 [ false, %374 ], [ %384, %378 ]
  %387 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %388 = load ptr, ptr %174, align 8, !tbaa !114
  %389 = getelementptr inbounds %struct.Key, ptr %388, i64 0, i32 4
  %390 = load i32, ptr %389, align 8, !tbaa !129
  %391 = mul nsw i32 %390, %185
  %392 = sext i32 %391 to i64
  %393 = call ptr %387(i64 noundef %392, ptr noundef nonnull @.str.190) #19
  %394 = getelementptr inbounds %struct.KeyBlock, ptr %375, i64 0, i32 10
  %395 = load ptr, ptr %394, align 8, !tbaa !130
  %396 = load ptr, ptr %179, align 8, !tbaa !66
  %397 = icmp eq ptr %396, null
  br i1 %397, label %691, label %398

398:                                              ; preds = %385
  %399 = icmp eq ptr %395, null
  br label %400

400:                                              ; preds = %398, %686
  %401 = phi ptr [ %396, %398 ], [ %689, %686 ]
  %402 = phi ptr [ %393, %398 ], [ %688, %686 ]
  %403 = phi i32 [ 0, %398 ], [ %687, %686 ]
  br i1 %376, label %404, label %512

404:                                              ; preds = %400
  %405 = load ptr, ptr %174, align 8, !tbaa !114
  %406 = getelementptr inbounds %struct.Key, ptr %405, i64 0, i32 2
  %407 = load ptr, ptr %406, align 8, !tbaa !131
  %408 = icmp ne ptr %184, %407
  %409 = getelementptr inbounds %struct.Nurb, ptr %401, i64 0, i32 18
  %410 = load ptr, ptr %409, align 8, !tbaa !53
  %411 = icmp eq ptr %410, null
  %412 = getelementptr inbounds %struct.Nurb, ptr %401, i64 0, i32 6
  %413 = load i32, ptr %412, align 8, !tbaa !52
  br i1 %411, label %466, label %414

414:                                              ; preds = %404
  %415 = icmp eq i32 %413, 0
  br i1 %415, label %686, label %416

416:                                              ; preds = %414
  %417 = shl i32 %413, 2
  br label %418

418:                                              ; preds = %416, %462
  %419 = phi i32 [ %422, %462 ], [ %413, %416 ]
  %420 = phi ptr [ %463, %462 ], [ %402, %416 ]
  %421 = phi ptr [ %464, %462 ], [ %410, %416 ]
  %422 = add nsw i32 %419, -1
  %423 = load ptr, ptr %369, align 8, !tbaa !77
  %424 = call ptr @BLI_ghash_lookup(ptr noundef %423, ptr noundef nonnull %421) #19
  %425 = icmp eq ptr %424, null
  br i1 %425, label %428, label %426

426:                                              ; preds = %418
  %427 = load ptr, ptr %424, align 8, !tbaa !122
  br label %428

428:                                              ; preds = %426, %418
  %429 = phi ptr [ %427, %426 ], [ null, %418 ]
  %430 = icmp ne ptr %429, null
  %431 = select i1 %408, i1 %430, i1 false
  br label %432

432:                                              ; preds = %428, %450
  %433 = phi i64 [ 0, %428 ], [ %452, %450 ]
  %434 = phi ptr [ %420, %428 ], [ %451, %450 ]
  %435 = getelementptr inbounds [3 x [3 x float]], ptr %421, i64 0, i64 %433
  %436 = load float, ptr %435, align 4, !tbaa !70
  store float %436, ptr %434, align 4, !tbaa !70
  %437 = getelementptr inbounds float, ptr %435, i64 1
  %438 = load float, ptr %437, align 4, !tbaa !70
  %439 = getelementptr inbounds float, ptr %434, i64 1
  store float %438, ptr %439, align 4, !tbaa !70
  %440 = getelementptr inbounds float, ptr %435, i64 2
  %441 = load float, ptr %440, align 4, !tbaa !70
  %442 = getelementptr inbounds float, ptr %434, i64 2
  store float %441, ptr %442, align 4, !tbaa !70
  br i1 %431, label %443, label %450

443:                                              ; preds = %432
  %444 = getelementptr inbounds [3 x [3 x float]], ptr %429, i64 0, i64 %433
  %445 = load float, ptr %444, align 4, !tbaa !70
  store float %445, ptr %435, align 4, !tbaa !70
  %446 = getelementptr inbounds float, ptr %444, i64 1
  %447 = load float, ptr %446, align 4, !tbaa !70
  store float %447, ptr %437, align 4, !tbaa !70
  %448 = getelementptr inbounds float, ptr %444, i64 2
  %449 = load float, ptr %448, align 4, !tbaa !70
  store float %449, ptr %440, align 4, !tbaa !70
  br label %450

450:                                              ; preds = %443, %432
  %451 = getelementptr inbounds float, ptr %434, i64 3
  %452 = add nuw nsw i64 %433, 1
  %453 = icmp eq i64 %452, 3
  br i1 %453, label %454, label %432, !llvm.loop !132

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.BezTriple, ptr %421, i64 0, i32 1
  %456 = load float, ptr %455, align 4, !tbaa !124
  store float %456, ptr %451, align 4, !tbaa !70
  %457 = icmp ne ptr %429, null
  %458 = select i1 %408, i1 %457, i1 false
  br i1 %458, label %459, label %462

459:                                              ; preds = %454
  %460 = getelementptr inbounds %struct.BezTriple, ptr %429, i64 0, i32 1
  %461 = load float, ptr %460, align 4, !tbaa !124
  store float %461, ptr %455, align 4, !tbaa !124
  br label %462

462:                                              ; preds = %459, %454
  %463 = getelementptr inbounds float, ptr %434, i64 6
  %464 = getelementptr inbounds %struct.BezTriple, ptr %421, i64 1
  %465 = icmp eq i32 %422, 0
  br i1 %465, label %682, label %418, !llvm.loop !133

466:                                              ; preds = %404
  %467 = getelementptr inbounds %struct.Nurb, ptr %401, i64 0, i32 7
  %468 = load i32, ptr %467, align 4, !tbaa !61
  %469 = mul nsw i32 %468, %413
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %686, label %471

471:                                              ; preds = %466
  %472 = getelementptr inbounds %struct.Nurb, ptr %401, i64 0, i32 17
  %473 = load ptr, ptr %472, align 8, !tbaa !62
  %474 = shl i32 %413, 1
  %475 = mul i32 %474, %468
  br label %476

476:                                              ; preds = %471, %508
  %477 = phi i32 [ %480, %508 ], [ %469, %471 ]
  %478 = phi ptr [ %509, %508 ], [ %402, %471 ]
  %479 = phi ptr [ %510, %508 ], [ %473, %471 ]
  %480 = add nsw i32 %477, -1
  %481 = load ptr, ptr %370, align 8, !tbaa !77
  %482 = call ptr @BLI_ghash_lookup(ptr noundef %481, ptr noundef %479) #19
  %483 = icmp eq ptr %482, null
  br i1 %483, label %486, label %484

484:                                              ; preds = %476
  %485 = load ptr, ptr %482, align 8, !tbaa !122
  br label %486

486:                                              ; preds = %484, %476
  %487 = phi ptr [ %485, %484 ], [ null, %476 ]
  %488 = load float, ptr %479, align 4, !tbaa !70
  store float %488, ptr %478, align 4, !tbaa !70
  %489 = getelementptr inbounds float, ptr %479, i64 1
  %490 = load float, ptr %489, align 4, !tbaa !70
  %491 = getelementptr inbounds float, ptr %478, i64 1
  store float %490, ptr %491, align 4, !tbaa !70
  %492 = getelementptr inbounds float, ptr %479, i64 2
  %493 = load float, ptr %492, align 4, !tbaa !70
  %494 = getelementptr inbounds float, ptr %478, i64 2
  store float %493, ptr %494, align 4, !tbaa !70
  %495 = getelementptr inbounds %struct.BPoint, ptr %479, i64 0, i32 1
  %496 = load float, ptr %495, align 4, !tbaa !126
  %497 = getelementptr inbounds float, ptr %478, i64 3
  store float %496, ptr %497, align 4, !tbaa !70
  %498 = icmp ne ptr %487, null
  %499 = select i1 %408, i1 %498, i1 false
  br i1 %499, label %500, label %508

500:                                              ; preds = %486
  %501 = load float, ptr %487, align 4, !tbaa !70
  store float %501, ptr %479, align 4, !tbaa !70
  %502 = getelementptr inbounds float, ptr %487, i64 1
  %503 = load float, ptr %502, align 4, !tbaa !70
  store float %503, ptr %489, align 4, !tbaa !70
  %504 = getelementptr inbounds float, ptr %487, i64 2
  %505 = load float, ptr %504, align 4, !tbaa !70
  store float %505, ptr %492, align 4, !tbaa !70
  %506 = getelementptr inbounds %struct.BPoint, ptr %487, i64 0, i32 1
  %507 = load float, ptr %506, align 4, !tbaa !126
  store float %507, ptr %495, align 4, !tbaa !126
  br label %508

508:                                              ; preds = %500, %486
  %509 = getelementptr inbounds float, ptr %478, i64 4
  %510 = getelementptr inbounds %struct.BPoint, ptr %479, i64 1
  %511 = icmp eq i32 %480, 0
  br i1 %511, label %680, label %476, !llvm.loop !134

512:                                              ; preds = %400
  br i1 %399, label %686, label %513

513:                                              ; preds = %512
  %514 = getelementptr inbounds %struct.Nurb, ptr %401, i64 0, i32 18
  %515 = load ptr, ptr %514, align 8, !tbaa !53
  %516 = icmp eq ptr %515, null
  %517 = getelementptr inbounds %struct.Nurb, ptr %401, i64 0, i32 6
  %518 = load i32, ptr %517, align 8, !tbaa !52
  br i1 %516, label %613, label %519

519:                                              ; preds = %513
  %520 = icmp eq i32 %518, 0
  br i1 %520, label %686, label %521

521:                                              ; preds = %519, %607
  %522 = phi i32 [ %526, %607 ], [ %518, %519 ]
  %523 = phi ptr [ %610, %607 ], [ %402, %519 ]
  %524 = phi i32 [ %608, %607 ], [ %403, %519 ]
  %525 = phi ptr [ %611, %607 ], [ %515, %519 ]
  %526 = add nsw i32 %522, -1
  %527 = load ptr, ptr %367, align 8, !tbaa !77
  %528 = call ptr @BLI_ghash_lookup(ptr noundef %527, ptr noundef nonnull %525) #19
  %529 = icmp eq ptr %528, null
  br i1 %529, label %533, label %530

530:                                              ; preds = %521
  %531 = getelementptr inbounds %struct.CVKeyIndex, ptr %528, i64 0, i32 1
  %532 = load i32, ptr %531, align 8, !tbaa !135
  br label %533

533:                                              ; preds = %530, %521
  %534 = phi i32 [ %532, %530 ], [ -1, %521 ]
  %535 = icmp sgt i32 %534, -1
  br i1 %535, label %536, label %589

536:                                              ; preds = %533
  %537 = zext nneg i32 %534 to i64
  %538 = getelementptr inbounds float, ptr %395, i64 %537
  %539 = sext i32 %524 to i64
  br label %540

540:                                              ; preds = %536, %562
  %541 = phi i64 [ %539, %536 ], [ %566, %562 ]
  %542 = phi i32 [ 0, %536 ], [ %565, %562 ]
  %543 = phi ptr [ %538, %536 ], [ %564, %562 ]
  %544 = phi ptr [ %523, %536 ], [ %563, %562 ]
  %545 = load float, ptr %543, align 4, !tbaa !70
  store float %545, ptr %544, align 4, !tbaa !70
  %546 = getelementptr inbounds float, ptr %543, i64 1
  %547 = load float, ptr %546, align 4, !tbaa !70
  %548 = getelementptr inbounds float, ptr %544, i64 1
  store float %547, ptr %548, align 4, !tbaa !70
  %549 = getelementptr inbounds float, ptr %543, i64 2
  %550 = load float, ptr %549, align 4, !tbaa !70
  %551 = getelementptr inbounds float, ptr %544, i64 2
  store float %550, ptr %551, align 4, !tbaa !70
  br i1 %386, label %552, label %562

552:                                              ; preds = %540
  %553 = getelementptr inbounds [3 x float], ptr %360, i64 %541
  %554 = load float, ptr %553, align 4, !tbaa !70
  %555 = fadd float %545, %554
  store float %555, ptr %544, align 4, !tbaa !70
  %556 = getelementptr inbounds float, ptr %553, i64 1
  %557 = load float, ptr %556, align 4, !tbaa !70
  %558 = fadd float %547, %557
  store float %558, ptr %548, align 4, !tbaa !70
  %559 = getelementptr inbounds float, ptr %553, i64 2
  %560 = load float, ptr %559, align 4, !tbaa !70
  %561 = fadd float %550, %560
  store float %561, ptr %551, align 4, !tbaa !70
  br label %562

562:                                              ; preds = %552, %540
  %563 = getelementptr inbounds float, ptr %544, i64 3
  %564 = getelementptr inbounds float, ptr %543, i64 3
  %565 = add nuw nsw i32 %542, 1
  %566 = add nsw i64 %541, 1
  %567 = icmp eq i32 %565, 3
  br i1 %567, label %568, label %540, !llvm.loop !136

568:                                              ; preds = %562
  %569 = trunc i64 %566 to i32
  %570 = load float, ptr %564, align 4, !tbaa !70
  store float %570, ptr %563, align 4, !tbaa !70
  br i1 %386, label %571, label %607

571:                                              ; preds = %568
  %572 = trunc i64 %541 to i32
  %573 = shl i64 %566, 32
  %574 = ashr exact i64 %573, 32
  %575 = getelementptr inbounds [3 x float], ptr %360, i64 %574
  %576 = load float, ptr %575, align 4, !tbaa !70
  %577 = fadd float %570, %576
  store float %577, ptr %563, align 4, !tbaa !70
  %578 = getelementptr inbounds float, ptr %575, i64 1
  %579 = load float, ptr %578, align 4, !tbaa !70
  %580 = getelementptr inbounds float, ptr %544, i64 4
  %581 = load float, ptr %580, align 4, !tbaa !70
  %582 = fadd float %579, %581
  store float %582, ptr %580, align 4, !tbaa !70
  %583 = getelementptr inbounds float, ptr %575, i64 2
  %584 = load float, ptr %583, align 4, !tbaa !70
  %585 = getelementptr inbounds float, ptr %544, i64 5
  %586 = load float, ptr %585, align 4, !tbaa !70
  %587 = fadd float %584, %586
  store float %587, ptr %585, align 4, !tbaa !70
  %588 = add nsw i32 %572, 2
  br label %607

589:                                              ; preds = %533, %589
  %590 = phi i64 [ %601, %589 ], [ 0, %533 ]
  %591 = phi ptr [ %600, %589 ], [ %523, %533 ]
  %592 = getelementptr inbounds [3 x [3 x float]], ptr %525, i64 0, i64 %590
  %593 = load float, ptr %592, align 4, !tbaa !70
  store float %593, ptr %591, align 4, !tbaa !70
  %594 = getelementptr inbounds float, ptr %592, i64 1
  %595 = load float, ptr %594, align 4, !tbaa !70
  %596 = getelementptr inbounds float, ptr %591, i64 1
  store float %595, ptr %596, align 4, !tbaa !70
  %597 = getelementptr inbounds float, ptr %592, i64 2
  %598 = load float, ptr %597, align 4, !tbaa !70
  %599 = getelementptr inbounds float, ptr %591, i64 2
  store float %598, ptr %599, align 4, !tbaa !70
  %600 = getelementptr inbounds float, ptr %591, i64 3
  %601 = add nuw nsw i64 %590, 1
  %602 = icmp eq i64 %601, 3
  br i1 %602, label %603, label %589, !llvm.loop !137

603:                                              ; preds = %589
  %604 = add i32 %524, 3
  %605 = getelementptr inbounds %struct.BezTriple, ptr %525, i64 0, i32 1
  %606 = load float, ptr %605, align 4, !tbaa !124
  store float %606, ptr %600, align 4, !tbaa !70
  br label %607

607:                                              ; preds = %603, %571, %568
  %608 = phi i32 [ %604, %603 ], [ %588, %571 ], [ %569, %568 ]
  %609 = phi ptr [ %600, %603 ], [ %563, %571 ], [ %563, %568 ]
  %610 = getelementptr inbounds float, ptr %609, i64 3
  %611 = getelementptr inbounds %struct.BezTriple, ptr %525, i64 1
  %612 = icmp eq i32 %526, 0
  br i1 %612, label %686, label %521, !llvm.loop !138

613:                                              ; preds = %513
  %614 = getelementptr inbounds %struct.Nurb, ptr %401, i64 0, i32 7
  %615 = load i32, ptr %614, align 4, !tbaa !61
  %616 = mul nsw i32 %615, %518
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %686, label %618

618:                                              ; preds = %613
  %619 = getelementptr inbounds %struct.Nurb, ptr %401, i64 0, i32 17
  %620 = load ptr, ptr %619, align 8, !tbaa !62
  %621 = sext i32 %403 to i64
  br label %622

622:                                              ; preds = %618, %675
  %623 = phi i64 [ %621, %618 ], [ %678, %675 ]
  %624 = phi i32 [ %616, %618 ], [ %627, %675 ]
  %625 = phi ptr [ %402, %618 ], [ %676, %675 ]
  %626 = phi ptr [ %620, %618 ], [ %677, %675 ]
  %627 = add nsw i32 %624, -1
  %628 = load ptr, ptr %368, align 8, !tbaa !77
  %629 = call ptr @BLI_ghash_lookup(ptr noundef %628, ptr noundef %626) #19
  %630 = icmp eq ptr %629, null
  br i1 %630, label %634, label %631

631:                                              ; preds = %622
  %632 = getelementptr inbounds %struct.CVKeyIndex, ptr %629, i64 0, i32 1
  %633 = load i32, ptr %632, align 8, !tbaa !135
  br label %634

634:                                              ; preds = %631, %622
  %635 = phi i32 [ %633, %631 ], [ -1, %622 ]
  %636 = icmp sgt i32 %635, -1
  br i1 %636, label %637, label %664

637:                                              ; preds = %634
  %638 = zext nneg i32 %635 to i64
  %639 = getelementptr inbounds float, ptr %395, i64 %638
  %640 = load float, ptr %639, align 4, !tbaa !70
  store float %640, ptr %625, align 4, !tbaa !70
  %641 = getelementptr inbounds float, ptr %639, i64 1
  %642 = load float, ptr %641, align 4, !tbaa !70
  %643 = getelementptr inbounds float, ptr %625, i64 1
  store float %642, ptr %643, align 4, !tbaa !70
  %644 = getelementptr inbounds float, ptr %639, i64 2
  %645 = load float, ptr %644, align 4, !tbaa !70
  %646 = getelementptr inbounds float, ptr %625, i64 2
  store float %645, ptr %646, align 4, !tbaa !70
  %647 = getelementptr inbounds float, ptr %639, i64 3
  %648 = load float, ptr %647, align 4, !tbaa !70
  %649 = getelementptr inbounds float, ptr %625, i64 3
  store float %648, ptr %649, align 4, !tbaa !70
  br i1 %386, label %650, label %675

650:                                              ; preds = %637
  %651 = getelementptr inbounds [3 x float], ptr %360, i64 %623
  %652 = load float, ptr %651, align 4, !tbaa !70
  %653 = fadd float %640, %652
  store float %653, ptr %625, align 4, !tbaa !70
  %654 = getelementptr inbounds float, ptr %651, i64 1
  %655 = load float, ptr %654, align 4, !tbaa !70
  %656 = fadd float %642, %655
  store float %656, ptr %643, align 4, !tbaa !70
  %657 = getelementptr inbounds float, ptr %651, i64 2
  %658 = load float, ptr %657, align 4, !tbaa !70
  %659 = fadd float %645, %658
  store float %659, ptr %646, align 4, !tbaa !70
  %660 = add nsw i64 %623, 1
  %661 = getelementptr inbounds [3 x float], ptr %360, i64 %660
  %662 = load float, ptr %661, align 4, !tbaa !70
  %663 = fadd float %648, %662
  store float %663, ptr %649, align 4, !tbaa !70
  br label %675

664:                                              ; preds = %634
  %665 = load float, ptr %626, align 4, !tbaa !70
  store float %665, ptr %625, align 4, !tbaa !70
  %666 = getelementptr inbounds float, ptr %626, i64 1
  %667 = load float, ptr %666, align 4, !tbaa !70
  %668 = getelementptr inbounds float, ptr %625, i64 1
  store float %667, ptr %668, align 4, !tbaa !70
  %669 = getelementptr inbounds float, ptr %626, i64 2
  %670 = load float, ptr %669, align 4, !tbaa !70
  %671 = getelementptr inbounds float, ptr %625, i64 2
  store float %670, ptr %671, align 4, !tbaa !70
  %672 = getelementptr inbounds %struct.BPoint, ptr %626, i64 0, i32 1
  %673 = load float, ptr %672, align 4, !tbaa !126
  %674 = getelementptr inbounds float, ptr %625, i64 3
  store float %673, ptr %674, align 4, !tbaa !70
  br label %675

675:                                              ; preds = %664, %650, %637
  %676 = getelementptr inbounds float, ptr %625, i64 4
  %677 = getelementptr inbounds %struct.BPoint, ptr %626, i64 1
  %678 = add nsw i64 %623, 2
  %679 = icmp eq i32 %627, 0
  br i1 %679, label %684, label %622, !llvm.loop !139

680:                                              ; preds = %508
  %681 = add i32 %403, %475
  br label %686

682:                                              ; preds = %462
  %683 = add i32 %403, %417
  br label %686

684:                                              ; preds = %675
  %685 = trunc i64 %678 to i32
  br label %686

686:                                              ; preds = %607, %684, %682, %680, %519, %613, %414, %466, %512
  %687 = phi i32 [ %403, %512 ], [ %403, %466 ], [ %403, %414 ], [ %403, %613 ], [ %403, %519 ], [ %681, %680 ], [ %683, %682 ], [ %685, %684 ], [ %608, %607 ]
  %688 = phi ptr [ %402, %512 ], [ %402, %466 ], [ %402, %414 ], [ %402, %613 ], [ %402, %519 ], [ %509, %680 ], [ %463, %682 ], [ %676, %684 ], [ %610, %607 ]
  %689 = load ptr, ptr %401, align 8, !tbaa !66
  %690 = icmp eq ptr %689, null
  br i1 %690, label %691, label %400, !llvm.loop !140

691:                                              ; preds = %686, %385
  br i1 %386, label %692, label %777

692:                                              ; preds = %691
  %693 = load ptr, ptr %179, align 8, !tbaa !66
  %694 = icmp eq ptr %693, null
  br i1 %694, label %777, label %695

695:                                              ; preds = %692, %773
  %696 = phi ptr [ %775, %773 ], [ %693, %692 ]
  %697 = phi ptr [ %774, %773 ], [ %393, %692 ]
  %698 = getelementptr inbounds %struct.Nurb, ptr %696, i64 0, i32 18
  %699 = load ptr, ptr %698, align 8, !tbaa !53
  %700 = icmp eq ptr %699, null
  br i1 %700, label %764, label %701

701:                                              ; preds = %695
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #19
  %702 = getelementptr inbounds %struct.Nurb, ptr %696, i64 0, i32 6
  %703 = load i32, ptr %702, align 8, !tbaa !52
  %704 = getelementptr inbounds %struct.Nurb, ptr %696, i64 0, i32 13
  %705 = load i16, ptr %704, align 4, !tbaa !69
  %706 = and i16 %705, 1
  %707 = icmp eq i16 %706, 0
  br i1 %707, label %715, label %708

708:                                              ; preds = %701
  %709 = add nsw i32 %703, -1
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds %struct.BezTriple, ptr %699, i64 %710
  %712 = mul nsw i32 %709, 12
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds float, ptr %697, i64 %713
  br label %715

715:                                              ; preds = %708, %701
  %716 = phi ptr [ %711, %708 ], [ null, %701 ]
  %717 = phi ptr [ %714, %708 ], [ null, %701 ]
  %718 = icmp eq i32 %703, 0
  br i1 %718, label %762, label %719

719:                                              ; preds = %715
  %720 = getelementptr inbounds float, ptr %697, i64 12
  %721 = getelementptr inbounds %struct.BezTriple, ptr %699, i64 1
  br label %722

722:                                              ; preds = %719, %756
  %723 = phi i32 [ %730, %756 ], [ %703, %719 ]
  %724 = phi ptr [ %758, %756 ], [ %720, %719 ]
  %725 = phi ptr [ %729, %756 ], [ %717, %719 ]
  %726 = phi ptr [ %757, %756 ], [ %721, %719 ]
  %727 = phi ptr [ %728, %756 ], [ %716, %719 ]
  %728 = phi ptr [ %759, %756 ], [ %699, %719 ]
  %729 = phi ptr [ %760, %756 ], [ %697, %719 ]
  %730 = add nsw i32 %723, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(72) %728, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 4 dereferenceable(36) %729, i64 36, i1 false)
  %731 = getelementptr inbounds float, ptr %729, i64 9
  %732 = load float, ptr %731, align 4, !tbaa !70
  store float %732, ptr %371, align 4, !tbaa !124
  %733 = icmp eq ptr %726, null
  br i1 %733, label %737, label %734

734:                                              ; preds = %722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %4, ptr noundef nonnull align 4 dereferenceable(72) %726, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %724, i64 36, i1 false)
  %735 = getelementptr inbounds float, ptr %724, i64 9
  %736 = load float, ptr %735, align 4, !tbaa !70
  store float %736, ptr %372, align 4, !tbaa !124
  br label %737

737:                                              ; preds = %734, %722
  %738 = icmp eq ptr %727, null
  br i1 %738, label %742, label %739

739:                                              ; preds = %737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %3, ptr noundef nonnull align 4 dereferenceable(72) %727, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %725, i64 36, i1 false)
  %740 = getelementptr inbounds float, ptr %725, i64 9
  %741 = load float, ptr %740, align 4, !tbaa !70
  store float %741, ptr %373, align 4, !tbaa !124
  br label %742

742:                                              ; preds = %739, %737
  %743 = phi ptr [ %3, %739 ], [ null, %737 ]
  %744 = select i1 %733, ptr null, ptr %4
  call void @BKE_nurb_handle_calc(ptr noundef nonnull %2, ptr noundef %743, ptr noundef %744, i8 noundef zeroext 0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %729, ptr noundef nonnull align 4 dereferenceable(36) %2, i64 36, i1 false)
  %745 = load float, ptr %371, align 4, !tbaa !124
  store float %745, ptr %731, align 4, !tbaa !70
  %746 = icmp eq i32 %730, 1
  br i1 %746, label %747, label %753

747:                                              ; preds = %742
  %748 = load i16, ptr %704, align 4, !tbaa !69
  %749 = and i16 %748, 1
  %750 = icmp eq i16 %749, 0
  br i1 %750, label %756, label %751

751:                                              ; preds = %747
  %752 = load ptr, ptr %698, align 8, !tbaa !53
  br label %756

753:                                              ; preds = %742
  %754 = getelementptr inbounds %struct.BezTriple, ptr %726, i64 1
  %755 = getelementptr inbounds float, ptr %724, i64 12
  br label %756

756:                                              ; preds = %753, %751, %747
  %757 = phi ptr [ %752, %751 ], [ %754, %753 ], [ null, %747 ]
  %758 = phi ptr [ %697, %751 ], [ %755, %753 ], [ null, %747 ]
  %759 = getelementptr inbounds %struct.BezTriple, ptr %728, i64 1
  %760 = getelementptr inbounds float, ptr %729, i64 12
  %761 = icmp eq i32 %730, 0
  br i1 %761, label %762, label %722, !llvm.loop !141

762:                                              ; preds = %756, %715
  %763 = phi ptr [ %697, %715 ], [ %760, %756 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #19
  br label %773

764:                                              ; preds = %695
  %765 = getelementptr inbounds %struct.Nurb, ptr %696, i64 0, i32 6
  %766 = load i32, ptr %765, align 8, !tbaa !52
  %767 = getelementptr inbounds %struct.Nurb, ptr %696, i64 0, i32 7
  %768 = load i32, ptr %767, align 4, !tbaa !61
  %769 = shl i32 %766, 2
  %770 = mul i32 %769, %768
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds float, ptr %697, i64 %771
  br label %773

773:                                              ; preds = %764, %762
  %774 = phi ptr [ %763, %762 ], [ %772, %764 ]
  %775 = load ptr, ptr %696, align 8, !tbaa !66
  %776 = icmp eq ptr %775, null
  br i1 %776, label %777, label %695, !llvm.loop !142

777:                                              ; preds = %773, %692, %691
  %778 = getelementptr inbounds %struct.KeyBlock, ptr %375, i64 0, i32 8
  store i32 %185, ptr %778, align 8, !tbaa !143
  %779 = load ptr, ptr %394, align 8, !tbaa !130
  %780 = icmp eq ptr %779, null
  br i1 %780, label %783, label %781

781:                                              ; preds = %777
  %782 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  call void %782(ptr noundef nonnull %779) #19
  br label %783

783:                                              ; preds = %781, %777
  store ptr %393, ptr %394, align 8, !tbaa !130
  %784 = load ptr, ptr %375, align 8, !tbaa !66
  %785 = icmp eq ptr %784, null
  br i1 %785, label %786, label %374, !llvm.loop !144

786:                                              ; preds = %783, %359
  %787 = icmp eq ptr %360, null
  br i1 %787, label %790, label %788

788:                                              ; preds = %786
  %789 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  call void %789(ptr noundef nonnull %360) #19
  br label %790

790:                                              ; preds = %172, %786, %788
  %791 = load ptr, ptr %27, align 8, !tbaa !46
  %792 = call ptr @BKE_animdata_from_id(ptr noundef %791) #19
  %793 = getelementptr inbounds %struct.Curve, ptr %791, i64 0, i32 4
  %794 = load ptr, ptr %793, align 8, !tbaa !47
  %795 = getelementptr inbounds %struct.EditNurb, ptr %794, i64 0, i32 1
  %796 = load ptr, ptr %795, align 8, !tbaa !77
  %797 = icmp eq ptr %796, null
  br i1 %797, label %815, label %798

798:                                              ; preds = %790
  %799 = call ptr @BKE_animdata_from_id(ptr noundef %791) #19
  %800 = icmp eq ptr %799, null
  br i1 %800, label %815, label %801

801:                                              ; preds = %798
  %802 = load ptr, ptr %799, align 8, !tbaa !79
  %803 = icmp eq ptr %802, null
  br i1 %803, label %804, label %808

804:                                              ; preds = %801
  %805 = getelementptr inbounds %struct.AnimData, ptr %799, i64 0, i32 5
  %806 = load ptr, ptr %805, align 8, !tbaa !81
  %807 = icmp eq ptr %806, null
  br i1 %807, label %815, label %808

808:                                              ; preds = %804, %801
  %809 = load ptr, ptr %792, align 8, !tbaa !79
  %810 = icmp eq ptr %809, null
  br i1 %810, label %813, label %811

811:                                              ; preds = %808
  %812 = getelementptr inbounds %struct.bAction, ptr %809, i64 0, i32 1
  call fastcc void @curve_rename_fcurves(ptr noundef %791, ptr noundef nonnull %812)
  br label %813

813:                                              ; preds = %811, %808
  %814 = getelementptr inbounds %struct.AnimData, ptr %792, i64 0, i32 5
  call fastcc void @curve_rename_fcurves(ptr noundef %791, ptr noundef nonnull %814)
  br label %815

815:                                              ; preds = %790, %798, %804, %813
  call void @BKE_nurbList_free(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %816

816:                                              ; preds = %21, %815, %19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare ptr @BKE_nurb_duplicate(ptr noundef) local_unnamed_addr #6

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef) local_unnamed_addr #6

declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @make_editNurb(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %125

10:                                               ; preds = %1
  %11 = tail call ptr @BKE_keyblock_from_object(ptr noundef %0) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  tail call void @undo_editmode_clear() #19
  %14 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  tail call void @BKE_key_convert_to_curve(ptr noundef nonnull %11, ptr noundef %3, ptr noundef nonnull %14) #19
  br label %15

15:                                               ; preds = %13, %10
  %16 = icmp eq ptr %5, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  tail call void @BKE_nurbList_free(ptr noundef nonnull %5) #19
  tail call void @BKE_curve_editNurb_keyIndex_free(ptr noundef nonnull %5) #19
  %18 = getelementptr inbounds %struct.EditNurb, ptr %5, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !77
  br label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %21 = tail call ptr %20(i64 noundef 32, ptr noundef nonnull @.str.2) #19
  store ptr %21, ptr %4, align 8, !tbaa !47
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %5, %17 ], [ %21, %19 ]
  %24 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %30, %27 ], [ %25, %22 ]
  %29 = tail call ptr @BKE_nurb_duplicate(ptr noundef nonnull %28) #19
  tail call void @BKE_nurb_test2D(ptr noundef %29) #19
  tail call void @BLI_addtail(ptr noundef %23, ptr noundef %29) #19
  %30 = load ptr, ptr %28, align 8, !tbaa !66
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !145

32:                                               ; preds = %27, %22
  br i1 %12, label %38, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 115
  %35 = load i16, ptr %34, align 2, !tbaa !146
  %36 = sext i16 %35 to i32
  %37 = getelementptr inbounds %struct.EditNurb, ptr %23, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !115
  br label %38

38:                                               ; preds = %33, %32
  %39 = getelementptr inbounds %struct.EditNurb, ptr %23, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %125

42:                                               ; preds = %38
  %43 = load ptr, ptr %24, align 8, !tbaa !89
  %44 = load ptr, ptr %23, align 8, !tbaa !147
  %45 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.191) #19
  %46 = icmp eq ptr %43, null
  br i1 %46, label %124, label %47

47:                                               ; preds = %42, %117
  %48 = phi i32 [ %119, %117 ], [ 0, %42 ]
  %49 = phi i32 [ %122, %117 ], [ 0, %42 ]
  %50 = phi i32 [ %118, %117 ], [ 0, %42 ]
  %51 = phi ptr [ %120, %117 ], [ %44, %42 ]
  %52 = phi ptr [ %121, %117 ], [ %43, %42 ]
  %53 = getelementptr inbounds %struct.Nurb, ptr %52, i64 0, i32 18
  %54 = load ptr, ptr %53, align 8, !tbaa !53
  %55 = icmp eq ptr %54, null
  %56 = getelementptr inbounds %struct.Nurb, ptr %52, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !52
  br i1 %55, label %85, label %58

58:                                               ; preds = %47
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %117, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.Nurb, ptr %51, i64 0, i32 18
  %62 = load ptr, ptr %61, align 8, !tbaa !53
  br label %63

63:                                               ; preds = %60, %63
  %64 = phi i32 [ %80, %63 ], [ %48, %60 ]
  %65 = phi i32 [ %83, %63 ], [ 0, %60 ]
  %66 = phi i32 [ %79, %63 ], [ %50, %60 ]
  %67 = phi i32 [ %70, %63 ], [ %57, %60 ]
  %68 = phi ptr [ %82, %63 ], [ %54, %60 ]
  %69 = phi ptr [ %81, %63 ], [ %62, %60 ]
  %70 = add nsw i32 %67, -1
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %72 = tail call ptr %71(i64 noundef 40, ptr noundef nonnull @.str.192) #19
  store ptr %68, ptr %72, align 8, !tbaa !122
  %73 = getelementptr inbounds %struct.CVKeyIndex, ptr %72, i64 0, i32 1
  store i32 %66, ptr %73, align 8, !tbaa !135
  %74 = getelementptr inbounds %struct.CVKeyIndex, ptr %72, i64 0, i32 2
  store i32 %49, ptr %74, align 4, !tbaa !82
  %75 = getelementptr inbounds %struct.CVKeyIndex, ptr %72, i64 0, i32 3
  store i32 %65, ptr %75, align 8, !tbaa !84
  %76 = getelementptr inbounds %struct.CVKeyIndex, ptr %72, i64 0, i32 4
  store i32 %64, ptr %76, align 4, !tbaa !148
  %77 = getelementptr inbounds %struct.CVKeyIndex, ptr %72, i64 0, i32 5
  store i8 0, ptr %77, align 8, !tbaa !85
  %78 = getelementptr inbounds %struct.CVKeyIndex, ptr %72, i64 0, i32 6
  store ptr %52, ptr %78, align 8, !tbaa !149
  tail call void @BLI_ghash_insert(ptr noundef %45, ptr noundef %69, ptr noundef nonnull %72) #19
  %79 = add nsw i32 %66, 12
  %80 = add nsw i32 %64, 3
  %81 = getelementptr inbounds %struct.BezTriple, ptr %69, i64 1
  %82 = getelementptr inbounds %struct.BezTriple, ptr %68, i64 1
  %83 = add nuw nsw i32 %65, 1
  %84 = icmp eq i32 %70, 0
  br i1 %84, label %117, label %63, !llvm.loop !150

85:                                               ; preds = %47
  %86 = getelementptr inbounds %struct.Nurb, ptr %52, i64 0, i32 7
  %87 = load i32, ptr %86, align 4, !tbaa !61
  %88 = mul nsw i32 %87, %57
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.Nurb, ptr %52, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !62
  %93 = getelementptr inbounds %struct.Nurb, ptr %51, i64 0, i32 17
  %94 = load ptr, ptr %93, align 8, !tbaa !62
  br label %95

95:                                               ; preds = %90, %95
  %96 = phi i32 [ %115, %95 ], [ %48, %90 ]
  %97 = phi i32 [ %114, %95 ], [ 0, %90 ]
  %98 = phi i32 [ %111, %95 ], [ %50, %90 ]
  %99 = phi i32 [ %102, %95 ], [ %88, %90 ]
  %100 = phi ptr [ %113, %95 ], [ %92, %90 ]
  %101 = phi ptr [ %112, %95 ], [ %94, %90 ]
  %102 = add nsw i32 %99, -1
  %103 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %104 = tail call ptr %103(i64 noundef 40, ptr noundef nonnull @.str.192) #19
  store ptr %100, ptr %104, align 8, !tbaa !122
  %105 = getelementptr inbounds %struct.CVKeyIndex, ptr %104, i64 0, i32 1
  store i32 %98, ptr %105, align 8, !tbaa !135
  %106 = getelementptr inbounds %struct.CVKeyIndex, ptr %104, i64 0, i32 2
  store i32 %49, ptr %106, align 4, !tbaa !82
  %107 = getelementptr inbounds %struct.CVKeyIndex, ptr %104, i64 0, i32 3
  store i32 %97, ptr %107, align 8, !tbaa !84
  %108 = getelementptr inbounds %struct.CVKeyIndex, ptr %104, i64 0, i32 4
  store i32 %96, ptr %108, align 4, !tbaa !148
  %109 = getelementptr inbounds %struct.CVKeyIndex, ptr %104, i64 0, i32 5
  store i8 0, ptr %109, align 8, !tbaa !85
  %110 = getelementptr inbounds %struct.CVKeyIndex, ptr %104, i64 0, i32 6
  store ptr %52, ptr %110, align 8, !tbaa !149
  tail call void @BLI_ghash_insert(ptr noundef %45, ptr noundef %101, ptr noundef nonnull %104) #19
  %111 = add nsw i32 %98, 4
  %112 = getelementptr inbounds %struct.BPoint, ptr %101, i64 1
  %113 = getelementptr inbounds %struct.BPoint, ptr %100, i64 1
  %114 = add nuw nsw i32 %97, 1
  %115 = add nsw i32 %96, 1
  %116 = icmp eq i32 %102, 0
  br i1 %116, label %117, label %95, !llvm.loop !151

117:                                              ; preds = %63, %95, %58, %85
  %118 = phi i32 [ %50, %85 ], [ %50, %58 ], [ %111, %95 ], [ %79, %63 ]
  %119 = phi i32 [ %48, %85 ], [ %48, %58 ], [ %115, %95 ], [ %80, %63 ]
  %120 = load ptr, ptr %51, align 8, !tbaa !152
  %121 = load ptr, ptr %52, align 8, !tbaa !152
  %122 = add nuw nsw i32 %49, 1
  %123 = icmp eq ptr %121, null
  br i1 %123, label %124, label %47, !llvm.loop !153

124:                                              ; preds = %117, %42
  store ptr %45, ptr %39, align 8, !tbaa !77
  br label %125

125:                                              ; preds = %124, %38, %1
  ret void
}

declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #6

declare void @undo_editmode_clear() local_unnamed_addr #6

declare void @BKE_key_convert_to_curve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_curve_editNurb_keyIndex_free(ptr noundef) local_unnamed_addr #6

declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @free_editNurb(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @BKE_curve_editNurb_free(ptr noundef %3) #19
  ret void
}

declare void @BKE_curve_editNurb_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_curve_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = icmp eq ptr %2, null
  br i1 %3, label %51, label %4

4:                                                ; preds = %1, %48
  %5 = phi ptr [ %49, %48 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %26, %13 ], [ %7, %9 ]
  %15 = phi i32 [ %25, %13 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 7
  %17 = load i8, ptr %16, align 1, !tbaa !57
  %18 = and i8 %17, -2
  store i8 %18, ptr %16, align 1, !tbaa !57
  %19 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 8
  %20 = load i8, ptr %19, align 4, !tbaa !59
  %21 = and i8 %20, -2
  store i8 %21, ptr %19, align 4, !tbaa !59
  %22 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 9
  %23 = load i8, ptr %22, align 1, !tbaa !60
  %24 = and i8 %23, -2
  store i8 %24, ptr %22, align 1, !tbaa !60
  %25 = add nuw nsw i32 %15, 1
  %26 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %27 = icmp eq i32 %25, %11
  br i1 %27, label %48, label %13, !llvm.loop !154

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  %36 = load i32, ptr %35, align 4, !tbaa !61
  %37 = mul nsw i32 %36, %34
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32, %39
  %40 = phi ptr [ %46, %39 ], [ %30, %32 ]
  %41 = phi i32 [ %45, %39 ], [ 0, %32 ]
  %42 = getelementptr inbounds %struct.BPoint, ptr %40, i64 0, i32 3
  %43 = load i16, ptr %42, align 4, !tbaa !64
  %44 = and i16 %43, -2
  store i16 %44, ptr %42, align 4, !tbaa !64
  %45 = add nuw nsw i32 %41, 1
  %46 = getelementptr inbounds %struct.BPoint, ptr %40, i64 1
  %47 = icmp eq i32 %45, %37
  br i1 %47, label %48, label %39, !llvm.loop !155

48:                                               ; preds = %13, %39, %9, %32, %28
  %49 = load ptr, ptr %5, align 8, !tbaa !66
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %4, !llvm.loop !156

51:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_curve_select_all(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = icmp eq ptr %2, null
  br i1 %3, label %61, label %4

4:                                                ; preds = %1, %58
  %5 = phi ptr [ %59, %58 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %9, %29
  %14 = phi ptr [ %31, %29 ], [ %7, %9 ]
  %15 = phi i32 [ %30, %29 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 10
  %17 = load i8, ptr %16, align 2, !tbaa !157
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 7
  %21 = load i8, ptr %20, align 1, !tbaa !57
  %22 = or i8 %21, 1
  store i8 %22, ptr %20, align 1, !tbaa !57
  %23 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 8
  %24 = load i8, ptr %23, align 4, !tbaa !59
  %25 = or i8 %24, 1
  store i8 %25, ptr %23, align 4, !tbaa !59
  %26 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 9
  %27 = load i8, ptr %26, align 1, !tbaa !60
  %28 = or i8 %27, 1
  store i8 %28, ptr %26, align 1, !tbaa !60
  br label %29

29:                                               ; preds = %13, %19
  %30 = add nuw nsw i32 %15, 1
  %31 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %32 = icmp eq i32 %30, %11
  br i1 %32, label %58, label %13, !llvm.loop !158

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !52
  %40 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !61
  %42 = mul nsw i32 %41, %39
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %37, %54
  %45 = phi ptr [ %56, %54 ], [ %35, %37 ]
  %46 = phi i32 [ %55, %54 ], [ 0, %37 ]
  %47 = getelementptr inbounds %struct.BPoint, ptr %45, i64 0, i32 4
  %48 = load i16, ptr %47, align 2, !tbaa !159
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.BPoint, ptr %45, i64 0, i32 3
  %52 = load i16, ptr %51, align 4, !tbaa !64
  %53 = or i16 %52, 1
  store i16 %53, ptr %51, align 4, !tbaa !64
  br label %54

54:                                               ; preds = %44, %50
  %55 = add nuw nsw i32 %46, 1
  %56 = getelementptr inbounds %struct.BPoint, ptr %45, i64 1
  %57 = icmp eq i32 %55, %42
  br i1 %57, label %58, label %44, !llvm.loop !160

58:                                               ; preds = %29, %54, %9, %37, %33
  %59 = load ptr, ptr %5, align 8, !tbaa !66
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %4, !llvm.loop !161

61:                                               ; preds = %58, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_curve_select_swap(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %5, %70
  %8 = phi ptr [ %3, %5 ], [ %71, %70 ]
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !52
  br i1 %11, label %14, label %40

14:                                               ; preds = %7
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  br label %19

19:                                               ; preds = %16, %37
  %20 = phi i32 [ %22, %37 ], [ %13, %16 ]
  %21 = phi ptr [ %38, %37 ], [ %18, %16 ]
  %22 = add nsw i32 %20, -1
  %23 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 10
  %24 = load i8, ptr %23, align 2, !tbaa !157
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  %28 = load i8, ptr %27, align 4, !tbaa !59
  %29 = xor i8 %28, 1
  store i8 %29, ptr %27, align 4, !tbaa !59
  br i1 %6, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  %32 = load i8, ptr %31, align 1, !tbaa !57
  %33 = xor i8 %32, 1
  store i8 %33, ptr %31, align 1, !tbaa !57
  %34 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !60
  %36 = xor i8 %35, 1
  store i8 %36, ptr %34, align 1, !tbaa !60
  br label %37

37:                                               ; preds = %26, %30, %19
  %38 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %39 = icmp eq i32 %22, 0
  br i1 %39, label %70, label %19, !llvm.loop !162

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !61
  %43 = mul nsw i32 %42, %13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !62
  br label %48

48:                                               ; preds = %45, %67
  %49 = phi i32 [ %51, %67 ], [ %43, %45 ]
  %50 = phi ptr [ %68, %67 ], [ %47, %45 ]
  %51 = add nsw i32 %49, -1
  %52 = getelementptr inbounds %struct.BPoint, ptr %50, i64 0, i32 3
  %53 = load i16, ptr %52, align 4, !tbaa !64
  %54 = and i16 %53, 1
  %55 = icmp eq i16 %54, 0
  %56 = getelementptr inbounds %struct.BPoint, ptr %50, i64 0, i32 4
  %57 = load i16, ptr %56, align 2, !tbaa !159
  %58 = icmp eq i16 %57, 0
  br i1 %55, label %62, label %59

59:                                               ; preds = %48
  br i1 %58, label %60, label %67

60:                                               ; preds = %59
  %61 = and i16 %53, -2
  br label %65

62:                                               ; preds = %48
  br i1 %58, label %63, label %67

63:                                               ; preds = %62
  %64 = or disjoint i16 %53, 1
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i16 [ %61, %60 ], [ %64, %63 ]
  store i16 %66, ptr %52, align 4, !tbaa !64
  br label %67

67:                                               ; preds = %65, %59, %62
  %68 = getelementptr inbounds %struct.BPoint, ptr %50, i64 1
  %69 = icmp eq i32 %51, 0
  br i1 %69, label %70, label %48, !llvm.loop !163

70:                                               ; preds = %67, %37, %40, %14
  %71 = load ptr, ptr %8, align 8, !tbaa !66
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %7, !llvm.loop !164

73:                                               ; preds = %70, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_separate(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @separate_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @separate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = tail call ptr @CTX_data_active_base(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !173
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !175
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.193) #19
  br label %37

17:                                               ; preds = %2
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #19
  call fastcc void @adduplicateflagNurb(ptr noundef %8, ptr noundef nonnull %3, i8 noundef zeroext 1)
  %18 = load ptr, ptr %3, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  call void @WM_cursor_wait(i8 noundef zeroext 0) #19
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !175
  call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.194) #19
  br label %37

23:                                               ; preds = %17
  %24 = call ptr @ED_object_add_duplicate(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 0) #19
  call void @DAG_relations_tag_update(ptr noundef %4) #19
  %25 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !173
  %27 = call ptr @BKE_curve_copy(ptr noundef %10) #19
  %28 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  store ptr %27, ptr %28, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 4
  store ptr null, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !177
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr %30, align 4, !tbaa !177
  call void @make_editNurb(ptr noundef %26)
  %33 = load ptr, ptr %29, align 8, !tbaa !47
  call void @BKE_nurbList_free(ptr noundef %33) #19
  call void @BKE_curve_editNurb_keyIndex_free(ptr noundef %33) #19
  %34 = getelementptr inbounds %struct.EditNurb, ptr %33, i64 0, i32 1
  store ptr null, ptr %34, align 8, !tbaa !77
  call void @BLI_movelisttolist(ptr noundef %33, ptr noundef nonnull %3) #19
  call void @load_editNurb(ptr noundef %26)
  %35 = load ptr, ptr %28, align 8, !tbaa !46
  call void @BKE_curve_editNurb_free(ptr noundef %35) #19
  call fastcc void @curve_delete_segments(ptr noundef %8, i8 noundef zeroext 1)
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 2) #19
  call void @DAG_id_tag_update(ptr noundef %26, i16 noundef signext 2) #19
  %36 = load ptr, ptr %9, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %36) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %26) #19
  call void @WM_cursor_wait(i8 noundef zeroext 0) #19
  br label %37

37:                                               ; preds = %23, %20, %14
  %38 = phi i32 [ 2, %14 ], [ 2, %20 ], [ 4, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret i32 %38
}

declare i32 @ED_operator_editsurfcurve(ptr noundef) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_split_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @curve_split_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = and i16 %8, -2
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %2, %6, %11
  %17 = phi ptr [ %15, %11 ], [ null, %6 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call fastcc void @adduplicateflagNurb(ptr noundef %4, ptr noundef nonnull %3, i8 noundef zeroext 1)
  %18 = load ptr, ptr %3, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %49, label %20

20:                                               ; preds = %16
  call fastcc void @curve_delete_segments(ptr noundef %4, i8 noundef zeroext 1)
  call void @BLI_movelisttolist(ptr noundef %17, ptr noundef nonnull %3) #19
  %21 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = call ptr @BKE_animdata_from_id(ptr noundef %22) #19
  %24 = getelementptr inbounds %struct.Curve, ptr %22, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.EditNurb, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %20
  %30 = call ptr @BKE_animdata_from_id(ptr noundef %22) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !79
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.AnimData, ptr %30, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35, %32
  %40 = load ptr, ptr %23, align 8, !tbaa !79
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bAction, ptr %40, i64 0, i32 1
  call fastcc void @curve_rename_fcurves(ptr noundef %22, ptr noundef nonnull %43)
  br label %44

44:                                               ; preds = %42, %39
  %45 = getelementptr inbounds %struct.AnimData, ptr %23, i64 0, i32 5
  call fastcc void @curve_rename_fcurves(ptr noundef %22, ptr noundef nonnull %45)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef %4) #19
  br label %46

46:                                               ; preds = %35, %29, %20, %44
  %47 = load ptr, ptr %21, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %47) #19
  %48 = load ptr, ptr %21, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %48, i16 noundef signext 0) #19
  br label %52

49:                                               ; preds = %16
  %50 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !175
  call void @BKE_report(ptr noundef %51, i32 noundef 32, ptr noundef nonnull @.str.197) #19
  br label %52

52:                                               ; preds = %46, %49
  %53 = phi i32 [ 4, %46 ], [ 2, %49 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local void @ed_editnurb_translate_flag(ptr nocapture noundef readonly %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %124, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = getelementptr inbounds float, ptr %2, i64 2
  %9 = zext i16 %1 to i32
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = getelementptr inbounds float, ptr %2, i64 2
  br label %16

16:                                               ; preds = %6, %121
  %17 = phi ptr [ %4, %6 ], [ %122, %121 ]
  %18 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !50
  %20 = icmp eq i16 %19, 1
  %21 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !52
  br i1 %20, label %23, label %90

23:                                               ; preds = %16
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %121, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %25, %87
  %29 = phi i32 [ %31, %87 ], [ %22, %25 ]
  %30 = phi ptr [ %88, %87 ], [ %27, %25 ]
  %31 = add nsw i32 %29, -1
  %32 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 7
  %33 = load i8, ptr %32, align 1, !tbaa !57
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, %9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %28
  %38 = load float, ptr %2, align 4, !tbaa !70
  %39 = load float, ptr %30, align 4, !tbaa !70
  %40 = fadd float %38, %39
  store float %40, ptr %30, align 4, !tbaa !70
  %41 = load float, ptr %10, align 4, !tbaa !70
  %42 = getelementptr inbounds float, ptr %30, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !70
  %44 = fadd float %41, %43
  store float %44, ptr %42, align 4, !tbaa !70
  %45 = load float, ptr %11, align 4, !tbaa !70
  %46 = getelementptr inbounds float, ptr %30, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !70
  %48 = fadd float %45, %47
  store float %48, ptr %46, align 4, !tbaa !70
  br label %49

49:                                               ; preds = %37, %28
  %50 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 8
  %51 = load i8, ptr %50, align 4, !tbaa !59
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, %9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %30, i64 0, i64 1
  %57 = load float, ptr %2, align 4, !tbaa !70
  %58 = load float, ptr %56, align 4, !tbaa !70
  %59 = fadd float %57, %58
  store float %59, ptr %56, align 4, !tbaa !70
  %60 = load float, ptr %12, align 4, !tbaa !70
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %30, i64 0, i64 1, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !70
  %63 = fadd float %60, %62
  store float %63, ptr %61, align 4, !tbaa !70
  %64 = load float, ptr %13, align 4, !tbaa !70
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %30, i64 0, i64 1, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !70
  %67 = fadd float %64, %66
  store float %67, ptr %65, align 4, !tbaa !70
  br label %68

68:                                               ; preds = %55, %49
  %69 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 9
  %70 = load i8, ptr %69, align 1, !tbaa !60
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, %9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %30, i64 0, i64 2
  %76 = load float, ptr %2, align 4, !tbaa !70
  %77 = load float, ptr %75, align 4, !tbaa !70
  %78 = fadd float %76, %77
  store float %78, ptr %75, align 4, !tbaa !70
  %79 = load float, ptr %14, align 4, !tbaa !70
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %30, i64 0, i64 2, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !70
  %82 = fadd float %79, %81
  store float %82, ptr %80, align 4, !tbaa !70
  %83 = load float, ptr %15, align 4, !tbaa !70
  %84 = getelementptr inbounds [3 x [3 x float]], ptr %30, i64 0, i64 2, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !70
  %86 = fadd float %83, %85
  store float %86, ptr %84, align 4, !tbaa !70
  br label %87

87:                                               ; preds = %74, %68
  %88 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 1
  %89 = icmp eq i32 %31, 0
  br i1 %89, label %121, label %28, !llvm.loop !178

90:                                               ; preds = %16
  %91 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 7
  %92 = load i32, ptr %91, align 4, !tbaa !61
  %93 = mul nsw i32 %92, %22
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 17
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  br label %98

98:                                               ; preds = %95, %118
  %99 = phi i32 [ %101, %118 ], [ %93, %95 ]
  %100 = phi ptr [ %119, %118 ], [ %97, %95 ]
  %101 = add nsw i32 %99, -1
  %102 = getelementptr inbounds %struct.BPoint, ptr %100, i64 0, i32 3
  %103 = load i16, ptr %102, align 4, !tbaa !64
  %104 = and i16 %103, %1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %98
  %107 = load float, ptr %2, align 4, !tbaa !70
  %108 = load float, ptr %100, align 4, !tbaa !70
  %109 = fadd float %107, %108
  store float %109, ptr %100, align 4, !tbaa !70
  %110 = load float, ptr %7, align 4, !tbaa !70
  %111 = getelementptr inbounds float, ptr %100, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !70
  %113 = fadd float %110, %112
  store float %113, ptr %111, align 4, !tbaa !70
  %114 = load float, ptr %8, align 4, !tbaa !70
  %115 = getelementptr inbounds float, ptr %100, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !70
  %117 = fadd float %114, %116
  store float %117, ptr %115, align 4, !tbaa !70
  br label %118

118:                                              ; preds = %106, %98
  %119 = getelementptr inbounds %struct.BPoint, ptr %100, i64 1
  %120 = icmp eq i32 %101, 0
  br i1 %120, label %121, label %98, !llvm.loop !179

121:                                              ; preds = %118, %87, %90, %23
  tail call void @BKE_nurb_test2D(ptr noundef nonnull %17) #19
  %122 = load ptr, ptr %17, align 8, !tbaa !66
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %16, !llvm.loop !180

124:                                              ; preds = %121, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ed_editnurb_extrude_flag(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %417, label %5

5:                                                ; preds = %2
  %6 = xor i16 %1, -1
  %7 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %11 = xor i16 %1, -1
  br label %12

12:                                               ; preds = %5, %413
  %13 = phi ptr [ %3, %5 ], [ %415, %413 ]
  %14 = phi i8 [ 0, %5 ], [ %414, %413 ]
  %15 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !61
  %17 = icmp eq i32 %16, 1
  %18 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 17
  br i1 %17, label %19, label %109

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %18, align 8, !tbaa !62
  br label %25

25:                                               ; preds = %23, %32
  %26 = phi i32 [ %34, %32 ], [ %21, %23 ]
  %27 = phi ptr [ %33, %32 ], [ %24, %23 ]
  %28 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 3
  %29 = load i16, ptr %28, align 4, !tbaa !64
  %30 = and i16 %29, %1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %413, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.BPoint, ptr %27, i64 1
  %34 = add nsw i32 %26, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %25, !llvm.loop !181

36:                                               ; preds = %32, %19
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %38 = shl nsw i32 %21, 1
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, 36
  %41 = tail call ptr %37(i64 noundef %40, ptr noundef nonnull @.str.9) #19
  %42 = load ptr, ptr %18, align 8, !tbaa !62
  %43 = load i32, ptr %20, align 8, !tbaa !52
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %41, ptr align 4 %42, i64 %45, i1 false)
  %46 = load ptr, ptr %10, align 8, !tbaa !77
  %47 = icmp ne ptr %46, null
  %48 = icmp sgt i32 %43, 0
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %64

50:                                               ; preds = %36, %59
  %51 = phi ptr [ %61, %59 ], [ %42, %36 ]
  %52 = phi i32 [ %62, %59 ], [ 0, %36 ]
  %53 = phi ptr [ %60, %59 ], [ %41, %36 ]
  %54 = load ptr, ptr %10, align 8, !tbaa !77
  %55 = tail call ptr @BLI_ghash_popkey(ptr noundef %54, ptr noundef %51, ptr noundef null) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %10, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %58, ptr noundef %53, ptr noundef nonnull %55) #19
  br label %59

59:                                               ; preds = %57, %50
  %60 = getelementptr inbounds i8, ptr %53, i64 36
  %61 = getelementptr inbounds i8, ptr %51, i64 36
  %62 = add nuw nsw i32 %52, 1
  %63 = icmp eq i32 %62, %43
  br i1 %63, label %64, label %50, !llvm.loop !182

64:                                               ; preds = %59, %36
  %65 = load i32, ptr %20, align 8, !tbaa !52
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.BPoint, ptr %41, i64 %66
  %68 = load ptr, ptr %18, align 8, !tbaa !62
  %69 = mul nsw i64 %66, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %67, ptr align 4 %68, i64 %69, i1 false)
  %70 = load ptr, ptr %10, align 8, !tbaa !77
  %71 = icmp ne ptr %70, null
  %72 = icmp sgt i32 %65, 0
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %88

74:                                               ; preds = %64, %83
  %75 = phi ptr [ %85, %83 ], [ %68, %64 ]
  %76 = phi i32 [ %86, %83 ], [ 0, %64 ]
  %77 = phi ptr [ %84, %83 ], [ %67, %64 ]
  %78 = load ptr, ptr %10, align 8, !tbaa !77
  %79 = tail call ptr @BLI_ghash_popkey(ptr noundef %78, ptr noundef %75, ptr noundef null) #19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = load ptr, ptr %10, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %82, ptr noundef %77, ptr noundef nonnull %79) #19
  br label %83

83:                                               ; preds = %81, %74
  %84 = getelementptr inbounds i8, ptr %77, i64 36
  %85 = getelementptr inbounds i8, ptr %75, i64 36
  %86 = add nuw nsw i32 %76, 1
  %87 = icmp eq i32 %86, %65
  br i1 %87, label %88, label %74, !llvm.loop !182

88:                                               ; preds = %83, %64
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %90 = load ptr, ptr %18, align 8, !tbaa !62
  tail call void %89(ptr noundef %90) #19
  store ptr %41, ptr %18, align 8, !tbaa !62
  %91 = load i32, ptr %20, align 8, !tbaa !52
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %88, %93
  %94 = phi i32 [ %97, %93 ], [ %91, %88 ]
  %95 = phi ptr [ %105, %93 ], [ %41, %88 ]
  %96 = phi ptr [ %104, %93 ], [ %67, %88 ]
  %97 = add nsw i32 %94, -1
  %98 = getelementptr inbounds %struct.BPoint, ptr %96, i64 0, i32 3
  %99 = load i16, ptr %98, align 4, !tbaa !64
  %100 = or i16 %99, %1
  store i16 %100, ptr %98, align 4, !tbaa !64
  %101 = getelementptr inbounds %struct.BPoint, ptr %95, i64 0, i32 3
  %102 = load i16, ptr %101, align 4, !tbaa !64
  %103 = and i16 %102, %11
  store i16 %103, ptr %101, align 4, !tbaa !64
  %104 = getelementptr inbounds %struct.BPoint, ptr %96, i64 1
  %105 = getelementptr inbounds %struct.BPoint, ptr %95, i64 1
  %106 = icmp eq i32 %97, 0
  br i1 %106, label %107, label %93, !llvm.loop !183

107:                                              ; preds = %93, %88
  store i32 2, ptr %15, align 4, !tbaa !61
  %108 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 12
  store i16 2, ptr %108, align 2, !tbaa !73
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %13) #19
  br label %413

109:                                              ; preds = %12
  %110 = load ptr, ptr %18, align 8, !tbaa !62
  %111 = icmp sgt i32 %16, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 6
  %114 = load i32, ptr %113, align 8, !tbaa !52
  %115 = icmp sgt i32 %114, 0
  br label %125

116:                                              ; preds = %150, %109
  %117 = phi i32 [ -1, %109 ], [ %151, %150 ]
  %118 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !52
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %184

121:                                              ; preds = %116
  %122 = icmp sgt i32 %16, 0
  %123 = zext nneg i32 %119 to i64
  %124 = zext nneg i32 %119 to i64
  br label %154

125:                                              ; preds = %112, %150
  %126 = phi i32 [ 0, %112 ], [ %152, %150 ]
  %127 = phi ptr [ %110, %112 ], [ %143, %150 ]
  %128 = phi i32 [ -1, %112 ], [ %151, %150 ]
  br i1 %115, label %129, label %142

129:                                              ; preds = %125, %129
  %130 = phi i32 [ %138, %129 ], [ 0, %125 ]
  %131 = phi i32 [ %139, %129 ], [ 0, %125 ]
  %132 = phi ptr [ %140, %129 ], [ %127, %125 ]
  %133 = getelementptr inbounds %struct.BPoint, ptr %132, i64 0, i32 3
  %134 = load i16, ptr %133, align 4, !tbaa !64
  %135 = and i16 %134, %1
  %136 = icmp ne i16 %135, 0
  %137 = zext i1 %136 to i32
  %138 = add nuw nsw i32 %130, %137
  %139 = add nuw nsw i32 %131, 1
  %140 = getelementptr inbounds %struct.BPoint, ptr %132, i64 1
  %141 = icmp eq i32 %139, %114
  br i1 %141, label %142, label %129, !llvm.loop !184

142:                                              ; preds = %129, %125
  %143 = phi ptr [ %127, %125 ], [ %140, %129 ]
  %144 = phi i32 [ 0, %125 ], [ %138, %129 ]
  %145 = icmp eq i32 %144, %114
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = icmp eq i32 %128, -1
  br i1 %147, label %150, label %194

148:                                              ; preds = %142
  %149 = icmp ugt i32 %144, 1
  br i1 %149, label %194, label %150

150:                                              ; preds = %146, %148
  %151 = phi i32 [ %128, %148 ], [ %126, %146 ]
  %152 = add nuw nsw i32 %126, 1
  %153 = icmp eq i32 %152, %16
  br i1 %153, label %116, label %125, !llvm.loop !185

154:                                              ; preds = %121, %180
  %155 = phi i64 [ 0, %121 ], [ %182, %180 ]
  %156 = phi i32 [ -1, %121 ], [ %181, %180 ]
  br i1 %122, label %157, label %172

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.BPoint, ptr %110, i64 %155
  br label %159

159:                                              ; preds = %157, %159
  %160 = phi i32 [ %168, %159 ], [ 0, %157 ]
  %161 = phi i32 [ %169, %159 ], [ 0, %157 ]
  %162 = phi ptr [ %170, %159 ], [ %158, %157 ]
  %163 = getelementptr inbounds %struct.BPoint, ptr %162, i64 0, i32 3
  %164 = load i16, ptr %163, align 4, !tbaa !64
  %165 = and i16 %164, %1
  %166 = icmp ne i16 %165, 0
  %167 = zext i1 %166 to i32
  %168 = add nuw nsw i32 %160, %167
  %169 = add nuw nsw i32 %161, 1
  %170 = getelementptr inbounds %struct.BPoint, ptr %162, i64 %123
  %171 = icmp eq i32 %169, %16
  br i1 %171, label %172, label %159, !llvm.loop !186

172:                                              ; preds = %159, %154
  %173 = phi i32 [ 0, %154 ], [ %168, %159 ]
  %174 = icmp eq i32 %173, %16
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = icmp eq i32 %156, -1
  %177 = trunc i64 %155 to i32
  br i1 %176, label %180, label %194

178:                                              ; preds = %172
  %179 = icmp ugt i32 %173, 1
  br i1 %179, label %194, label %180

180:                                              ; preds = %175, %178
  %181 = phi i32 [ %156, %178 ], [ %177, %175 ]
  %182 = add nuw nsw i64 %155, 1
  %183 = icmp eq i64 %182, %124
  br i1 %183, label %184, label %154, !llvm.loop !187

184:                                              ; preds = %180, %116
  %185 = phi i32 [ -1, %116 ], [ %181, %180 ]
  %186 = icmp eq i32 %117, -1
  %187 = icmp sgt i32 %185, -1
  %188 = select i1 %186, i1 %187, i1 false
  br i1 %188, label %194, label %189

189:                                              ; preds = %184
  %190 = icmp eq i32 %185, -1
  %191 = icmp sgt i32 %117, -1
  %192 = select i1 %190, i1 %191, i1 false
  %193 = zext i1 %192 to i16
  br label %194

194:                                              ; preds = %146, %148, %175, %178, %189, %184
  %195 = phi i32 [ %117, %184 ], [ %117, %189 ], [ %117, %178 ], [ %117, %175 ], [ %128, %148 ], [ %128, %146 ]
  %196 = phi i32 [ %185, %184 ], [ %185, %189 ], [ %156, %178 ], [ %156, %175 ], [ -1, %148 ], [ -1, %146 ]
  %197 = phi i16 [ 1, %184 ], [ %193, %189 ], [ 0, %178 ], [ 0, %175 ], [ 0, %148 ], [ 0, %146 ]
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %413, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 6
  %201 = load i32, ptr %200, align 8, !tbaa !52
  %202 = mul nsw i32 %201, %16
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %199, %204
  %205 = phi i32 [ %207, %204 ], [ %202, %199 ]
  %206 = phi ptr [ %211, %204 ], [ %110, %199 ]
  %207 = add nsw i32 %205, -1
  %208 = getelementptr inbounds %struct.BPoint, ptr %206, i64 0, i32 3
  %209 = load i16, ptr %208, align 4, !tbaa !64
  %210 = and i16 %209, %6
  store i16 %210, ptr %208, align 4, !tbaa !64
  %211 = getelementptr inbounds %struct.BPoint, ptr %206, i64 1
  %212 = icmp eq i32 %207, 0
  br i1 %212, label %213, label %204, !llvm.loop !188

213:                                              ; preds = %204, %199
  %214 = icmp eq i32 %195, 0
  %215 = add nsw i32 %16, -1
  %216 = icmp eq i32 %195, %215
  %217 = select i1 %214, i1 true, i1 %216
  br i1 %217, label %218, label %342

218:                                              ; preds = %213
  %219 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %220 = add nsw i32 %16, 1
  %221 = mul nsw i32 %201, %220
  %222 = sext i32 %221 to i64
  %223 = mul nsw i64 %222, 36
  %224 = tail call ptr %219(i64 noundef %223, ptr noundef nonnull @.str.9) #19
  %225 = load i32, ptr %15, align 4, !tbaa !61
  %226 = load i32, ptr %200, align 8, !tbaa !52
  %227 = mul nsw i32 %226, %225
  br i1 %214, label %228, label %275

228:                                              ; preds = %218
  %229 = sext i32 %226 to i64
  %230 = getelementptr inbounds %struct.BPoint, ptr %224, i64 %229
  %231 = load ptr, ptr %18, align 8, !tbaa !62
  %232 = sext i32 %227 to i64
  %233 = mul nsw i64 %232, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %230, ptr align 4 %231, i64 %233, i1 false)
  %234 = load ptr, ptr %9, align 8, !tbaa !77
  %235 = icmp ne ptr %234, null
  %236 = icmp sgt i32 %227, 0
  %237 = and i1 %236, %235
  br i1 %237, label %238, label %252

238:                                              ; preds = %228, %247
  %239 = phi ptr [ %249, %247 ], [ %231, %228 ]
  %240 = phi i32 [ %250, %247 ], [ 0, %228 ]
  %241 = phi ptr [ %248, %247 ], [ %230, %228 ]
  %242 = load ptr, ptr %9, align 8, !tbaa !77
  %243 = tail call ptr @BLI_ghash_popkey(ptr noundef %242, ptr noundef %239, ptr noundef null) #19
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %238
  %246 = load ptr, ptr %9, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %246, ptr noundef %241, ptr noundef nonnull %243) #19
  br label %247

247:                                              ; preds = %245, %238
  %248 = getelementptr inbounds i8, ptr %241, i64 36
  %249 = getelementptr inbounds i8, ptr %239, i64 36
  %250 = add nuw nsw i32 %240, 1
  %251 = icmp eq i32 %250, %227
  br i1 %251, label %252, label %238, !llvm.loop !182

252:                                              ; preds = %247, %228
  %253 = load ptr, ptr %18, align 8, !tbaa !62
  %254 = load i32, ptr %200, align 8, !tbaa !52
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %255, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %224, ptr align 4 %253, i64 %256, i1 false)
  %257 = load ptr, ptr %9, align 8, !tbaa !77
  %258 = icmp ne ptr %257, null
  %259 = icmp sgt i32 %254, 0
  %260 = and i1 %259, %258
  br i1 %260, label %261, label %324

261:                                              ; preds = %252, %270
  %262 = phi ptr [ %272, %270 ], [ %253, %252 ]
  %263 = phi i32 [ %273, %270 ], [ 0, %252 ]
  %264 = phi ptr [ %271, %270 ], [ %224, %252 ]
  %265 = load ptr, ptr %9, align 8, !tbaa !77
  %266 = tail call ptr @BLI_ghash_popkey(ptr noundef %265, ptr noundef %262, ptr noundef null) #19
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268

268:                                              ; preds = %261
  %269 = load ptr, ptr %9, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %269, ptr noundef %264, ptr noundef nonnull %266) #19
  br label %270

270:                                              ; preds = %268, %261
  %271 = getelementptr inbounds i8, ptr %264, i64 36
  %272 = getelementptr inbounds i8, ptr %262, i64 36
  %273 = add nuw nsw i32 %263, 1
  %274 = icmp eq i32 %273, %254
  br i1 %274, label %324, label %261, !llvm.loop !182

275:                                              ; preds = %218
  %276 = load ptr, ptr %18, align 8, !tbaa !62
  %277 = sext i32 %227 to i64
  %278 = mul nsw i64 %277, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %224, ptr align 4 %276, i64 %278, i1 false)
  %279 = load ptr, ptr %8, align 8, !tbaa !77
  %280 = icmp ne ptr %279, null
  %281 = icmp sgt i32 %227, 0
  %282 = and i1 %281, %280
  br i1 %282, label %283, label %297

283:                                              ; preds = %275, %292
  %284 = phi ptr [ %294, %292 ], [ %276, %275 ]
  %285 = phi i32 [ %295, %292 ], [ 0, %275 ]
  %286 = phi ptr [ %293, %292 ], [ %224, %275 ]
  %287 = load ptr, ptr %8, align 8, !tbaa !77
  %288 = tail call ptr @BLI_ghash_popkey(ptr noundef %287, ptr noundef %284, ptr noundef null) #19
  %289 = icmp eq ptr %288, null
  br i1 %289, label %292, label %290

290:                                              ; preds = %283
  %291 = load ptr, ptr %8, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %291, ptr noundef %286, ptr noundef nonnull %288) #19
  br label %292

292:                                              ; preds = %290, %283
  %293 = getelementptr inbounds i8, ptr %286, i64 36
  %294 = getelementptr inbounds i8, ptr %284, i64 36
  %295 = add nuw nsw i32 %285, 1
  %296 = icmp eq i32 %295, %227
  br i1 %296, label %297, label %283, !llvm.loop !182

297:                                              ; preds = %292, %275
  %298 = getelementptr inbounds %struct.BPoint, ptr %224, i64 %277
  %299 = load ptr, ptr %18, align 8, !tbaa !62
  %300 = load i32, ptr %200, align 8, !tbaa !52
  %301 = sub nsw i32 %227, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.BPoint, ptr %299, i64 %302
  %304 = sext i32 %300 to i64
  %305 = mul nsw i64 %304, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %298, ptr align 4 %303, i64 %305, i1 false)
  %306 = load ptr, ptr %8, align 8, !tbaa !77
  %307 = icmp ne ptr %306, null
  %308 = icmp sgt i32 %300, 0
  %309 = and i1 %308, %307
  br i1 %309, label %310, label %324

310:                                              ; preds = %297, %319
  %311 = phi ptr [ %321, %319 ], [ %303, %297 ]
  %312 = phi i32 [ %322, %319 ], [ 0, %297 ]
  %313 = phi ptr [ %320, %319 ], [ %298, %297 ]
  %314 = load ptr, ptr %8, align 8, !tbaa !77
  %315 = tail call ptr @BLI_ghash_popkey(ptr noundef %314, ptr noundef %311, ptr noundef null) #19
  %316 = icmp eq ptr %315, null
  br i1 %316, label %319, label %317

317:                                              ; preds = %310
  %318 = load ptr, ptr %8, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %318, ptr noundef %313, ptr noundef nonnull %315) #19
  br label %319

319:                                              ; preds = %317, %310
  %320 = getelementptr inbounds i8, ptr %313, i64 36
  %321 = getelementptr inbounds i8, ptr %311, i64 36
  %322 = add nuw nsw i32 %312, 1
  %323 = icmp eq i32 %322, %300
  br i1 %323, label %324, label %310, !llvm.loop !182

324:                                              ; preds = %319, %270, %297, %252
  %325 = phi ptr [ %224, %252 ], [ %298, %297 ], [ %224, %270 ], [ %298, %319 ]
  %326 = load i32, ptr %200, align 8, !tbaa !52
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %337, label %328

328:                                              ; preds = %324, %328
  %329 = phi i32 [ %331, %328 ], [ %326, %324 ]
  %330 = phi ptr [ %335, %328 ], [ %325, %324 ]
  %331 = add nsw i32 %329, -1
  %332 = getelementptr inbounds %struct.BPoint, ptr %330, i64 0, i32 3
  %333 = load i16, ptr %332, align 4, !tbaa !64
  %334 = or i16 %333, %1
  store i16 %334, ptr %332, align 4, !tbaa !64
  %335 = getelementptr inbounds %struct.BPoint, ptr %330, i64 1
  %336 = icmp eq i32 %331, 0
  br i1 %336, label %337, label %328, !llvm.loop !189

337:                                              ; preds = %328, %324
  %338 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %339 = load ptr, ptr %18, align 8, !tbaa !62
  tail call void %338(ptr noundef %339) #19
  store ptr %224, ptr %18, align 8, !tbaa !62
  %340 = load i32, ptr %15, align 4, !tbaa !61
  %341 = add nsw i32 %340, 1
  store i32 %341, ptr %15, align 4, !tbaa !61
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %13) #19
  br label %413

342:                                              ; preds = %213
  %343 = icmp eq i32 %196, 0
  %344 = add nsw i32 %201, -1
  %345 = icmp eq i32 %196, %344
  %346 = select i1 %343, i1 true, i1 %345
  br i1 %346, label %347, label %413

347:                                              ; preds = %342
  %348 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %349 = add nsw i32 %201, 1
  %350 = mul nsw i32 %349, %16
  %351 = sext i32 %350 to i64
  %352 = mul nsw i64 %351, 36
  %353 = tail call ptr %348(i64 noundef %352, ptr noundef nonnull @.str.9) #19
  %354 = load i32, ptr %15, align 4, !tbaa !61
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %408

356:                                              ; preds = %347
  %357 = load ptr, ptr %18, align 8, !tbaa !62
  br label %358

358:                                              ; preds = %356, %403
  %359 = phi i32 [ %405, %403 ], [ 0, %356 ]
  %360 = phi ptr [ %404, %403 ], [ %353, %356 ]
  %361 = phi ptr [ %393, %403 ], [ %357, %356 ]
  br i1 %343, label %362, label %367

362:                                              ; preds = %358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %360, ptr noundef nonnull align 4 dereferenceable(36) %361, i64 36, i1 false), !tbaa.struct !190
  %363 = getelementptr inbounds %struct.BPoint, ptr %360, i64 0, i32 3
  %364 = load i16, ptr %363, align 4, !tbaa !64
  %365 = or i16 %364, %1
  store i16 %365, ptr %363, align 4, !tbaa !64
  %366 = getelementptr inbounds %struct.BPoint, ptr %360, i64 1
  br label %367

367:                                              ; preds = %362, %358
  %368 = phi ptr [ %366, %362 ], [ %360, %358 ]
  %369 = load i32, ptr %200, align 8, !tbaa !52
  %370 = sext i32 %369 to i64
  %371 = mul nsw i64 %370, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %368, ptr align 4 %361, i64 %371, i1 false)
  %372 = load ptr, ptr %7, align 8, !tbaa !77
  %373 = icmp ne ptr %372, null
  %374 = icmp sgt i32 %369, 0
  %375 = and i1 %374, %373
  br i1 %375, label %376, label %390

376:                                              ; preds = %367, %385
  %377 = phi ptr [ %387, %385 ], [ %361, %367 ]
  %378 = phi i32 [ %388, %385 ], [ 0, %367 ]
  %379 = phi ptr [ %386, %385 ], [ %368, %367 ]
  %380 = load ptr, ptr %7, align 8, !tbaa !77
  %381 = tail call ptr @BLI_ghash_popkey(ptr noundef %380, ptr noundef %377, ptr noundef null) #19
  %382 = icmp eq ptr %381, null
  br i1 %382, label %385, label %383

383:                                              ; preds = %376
  %384 = load ptr, ptr %7, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %384, ptr noundef %379, ptr noundef nonnull %381) #19
  br label %385

385:                                              ; preds = %383, %376
  %386 = getelementptr inbounds i8, ptr %379, i64 36
  %387 = getelementptr inbounds i8, ptr %377, i64 36
  %388 = add nuw nsw i32 %378, 1
  %389 = icmp eq i32 %388, %369
  br i1 %389, label %390, label %376, !llvm.loop !182

390:                                              ; preds = %385, %367
  %391 = load i32, ptr %200, align 8, !tbaa !52
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.BPoint, ptr %361, i64 %392
  %394 = getelementptr inbounds %struct.BPoint, ptr %368, i64 %392
  %395 = add nsw i32 %391, -1
  %396 = icmp eq i32 %196, %395
  br i1 %396, label %397, label %403

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.BPoint, ptr %393, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %394, ptr noundef nonnull align 4 dereferenceable(36) %398, i64 36, i1 false), !tbaa.struct !190
  %399 = getelementptr inbounds %struct.BPoint, ptr %368, i64 %392, i32 3
  %400 = load i16, ptr %399, align 4, !tbaa !64
  %401 = or i16 %400, %1
  store i16 %401, ptr %399, align 4, !tbaa !64
  %402 = getelementptr inbounds %struct.BPoint, ptr %394, i64 1
  br label %403

403:                                              ; preds = %390, %397
  %404 = phi ptr [ %402, %397 ], [ %394, %390 ]
  %405 = add nuw nsw i32 %359, 1
  %406 = load i32, ptr %15, align 4, !tbaa !61
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %358, label %408, !llvm.loop !193

408:                                              ; preds = %403, %347
  %409 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %410 = load ptr, ptr %18, align 8, !tbaa !62
  tail call void %409(ptr noundef %410) #19
  store ptr %353, ptr %18, align 8, !tbaa !62
  %411 = load i32, ptr %200, align 8, !tbaa !52
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %200, align 8, !tbaa !52
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %13) #19
  br label %413

413:                                              ; preds = %25, %342, %194, %408, %337, %107
  %414 = phi i8 [ 1, %107 ], [ 1, %337 ], [ 1, %408 ], [ %14, %194 ], [ %14, %342 ], [ %14, %25 ]
  %415 = load ptr, ptr %13, align 8, !tbaa !66
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %12, !llvm.loop !194

417:                                              ; preds = %413, %2
  %418 = phi i8 [ 0, %2 ], [ %414, %413 ]
  ret i8 %418
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_curve_bpcpy(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = sext i32 %3 to i64
  %6 = mul nsw i64 %5, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %6, i1 false)
  %7 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp ne ptr %8, null
  %10 = icmp sgt i32 %3, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %26

12:                                               ; preds = %4, %21
  %13 = phi ptr [ %23, %21 ], [ %2, %4 ]
  %14 = phi i32 [ %24, %21 ], [ 0, %4 ]
  %15 = phi ptr [ %22, %21 ], [ %1, %4 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !77
  %17 = tail call ptr @BLI_ghash_popkey(ptr noundef %16, ptr noundef %13, ptr noundef null) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %20, ptr noundef %15, ptr noundef nonnull %17) #19
  br label %21

21:                                               ; preds = %19, %12
  %22 = getelementptr inbounds i8, ptr %15, i64 36
  %23 = getelementptr inbounds i8, ptr %13, i64 36
  %24 = add nuw nsw i32 %14, 1
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %26, label %12, !llvm.loop !182

26:                                               ; preds = %21, %4
  ret void
}

declare void @BKE_nurb_knot_calc_v(ptr noundef) local_unnamed_addr #6

declare void @BKE_nurb_knot_calc_u(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_switch_direction(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @switch_direction_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @switch_direction_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 31
  %12 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 32
  br label %13

13:                                               ; preds = %10, %77
  %14 = phi ptr [ %8, %10 ], [ %79, %77 ]
  %15 = phi i32 [ 0, %10 ], [ %78, %77 ]
  %16 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i16 %17, 1
  %19 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !52
  br i1 %18, label %21, label %47

21:                                               ; preds = %13
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  br label %29

26:                                               ; preds = %42
  %27 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 1
  %28 = icmp eq i32 %32, 0
  br i1 %28, label %77, label %29, !llvm.loop !54

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %32, %26 ], [ %20, %23 ]
  %31 = phi ptr [ %27, %26 ], [ %25, %23 ]
  %32 = add nsw i32 %30, -1
  %33 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %34 = load i8, ptr %33, align 1, !tbaa !57
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 8
  %39 = load i8, ptr %38, align 4, !tbaa !59
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %44 = load i8, ptr %43, align 1, !tbaa !60
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %26, label %66

47:                                               ; preds = %13
  %48 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !61
  %50 = mul nsw i32 %49, %20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !62
  br label %59

55:                                               ; preds = %59
  %56 = add nsw i32 %60, -1
  %57 = getelementptr inbounds %struct.BPoint, ptr %61, i64 1
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %77, label %59, !llvm.loop !63

59:                                               ; preds = %55, %52
  %60 = phi i32 [ %56, %55 ], [ %50, %52 ]
  %61 = phi ptr [ %57, %55 ], [ %54, %52 ]
  %62 = getelementptr inbounds %struct.BPoint, ptr %61, i64 0, i32 3
  %63 = load i16, ptr %62, align 4, !tbaa !64
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %55, label %66

66:                                               ; preds = %59, %42, %37, %29
  tail call void @BKE_nurb_direction_switch(ptr noundef nonnull %14) #19
  tail call fastcc void @keyData_switchDirectionNurb(ptr noundef %5, ptr noundef nonnull %14)
  %67 = load i32, ptr %11, align 4, !tbaa !195
  %68 = icmp eq i32 %15, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, ptr %12, align 8, !tbaa !196
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !52
  %75 = xor i32 %70, -1
  %76 = add i32 %74, %75
  store i32 %76, ptr %12, align 8, !tbaa !196
  br label %77

77:                                               ; preds = %55, %26, %21, %47, %72, %69, %66
  %78 = add nuw nsw i32 %15, 1
  %79 = load ptr, ptr %14, align 8, !tbaa !66
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %13, !llvm.loop !197

81:                                               ; preds = %77, %2
  %82 = load ptr, ptr %4, align 8, !tbaa !46
  %83 = tail call ptr @BKE_animdata_from_id(ptr noundef %82) #19
  %84 = getelementptr inbounds %struct.Curve, ptr %82, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !47
  %86 = getelementptr inbounds %struct.EditNurb, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !77
  %88 = icmp eq ptr %87, null
  br i1 %88, label %106, label %89

89:                                               ; preds = %81
  %90 = tail call ptr @BKE_animdata_from_id(ptr noundef %82) #19
  %91 = icmp eq ptr %90, null
  br i1 %91, label %106, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %90, align 8, !tbaa !79
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.AnimData, ptr %90, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !81
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %95, %92
  %100 = load ptr, ptr %83, align 8, !tbaa !79
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.bAction, ptr %100, i64 0, i32 1
  tail call fastcc void @curve_rename_fcurves(ptr noundef %82, ptr noundef nonnull %103)
  br label %104

104:                                              ; preds = %102, %99
  %105 = getelementptr inbounds %struct.AnimData, ptr %83, i64 0, i32 5
  tail call fastcc void @curve_rename_fcurves(ptr noundef %82, ptr noundef nonnull %105)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef %3) #19
  br label %106

106:                                              ; preds = %95, %89, %81, %104
  %107 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %107, i16 noundef signext 0) #19
  %108 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %108) #19
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_spline_weight_set(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_goal_weight_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call ptr @RNA_def_float_factor(ptr noundef %9, ptr noundef nonnull @.str.16, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, float noundef 0.000000e+00, float noundef 1.000000e+00) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_goal_weight_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call float @RNA_float_get(ptr noundef %18, ptr noundef nonnull @.str.16) #19
  %20 = load ptr, ptr %16, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %71, label %22

22:                                               ; preds = %15, %68
  %23 = phi ptr [ %69, %68 ], [ %20, %15 ]
  %24 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !52
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %27, %40
  %32 = phi i32 [ %41, %40 ], [ 0, %27 ]
  %33 = phi ptr [ %42, %40 ], [ %25, %27 ]
  %34 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 8
  %35 = load i8, ptr %34, align 4, !tbaa !59
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 2
  store float %19, ptr %39, align 4, !tbaa !201
  br label %40

40:                                               ; preds = %31, %38
  %41 = add nuw nsw i32 %32, 1
  %42 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 1
  %43 = icmp eq i32 %41, %29
  br i1 %43, label %68, label %31, !llvm.loop !202

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !62
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !52
  %51 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 7
  %52 = load i32, ptr %51, align 4, !tbaa !61
  %53 = mul nsw i32 %52, %50
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48, %64
  %56 = phi i32 [ %65, %64 ], [ 0, %48 ]
  %57 = phi ptr [ %66, %64 ], [ %46, %48 ]
  %58 = getelementptr inbounds %struct.BPoint, ptr %57, i64 0, i32 3
  %59 = load i16, ptr %58, align 4, !tbaa !64
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.BPoint, ptr %57, i64 0, i32 2
  store float %19, ptr %63, align 4, !tbaa !203
  br label %64

64:                                               ; preds = %55, %62
  %65 = add nuw nsw i32 %56, 1
  %66 = getelementptr inbounds %struct.BPoint, ptr %57, i64 1
  %67 = icmp eq i32 %65, %53
  br i1 %67, label %68, label %55, !llvm.loop !204

68:                                               ; preds = %40, %64, %27, %48, %44
  %69 = load ptr, ptr %23, align 8, !tbaa !66
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %22, !llvm.loop !205

71:                                               ; preds = %68, %15
  %72 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %73, i16 noundef signext 0) #19
  %74 = load ptr, ptr %72, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %74) #19
  ret i32 4
}

declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) #6

declare ptr @RNA_def_float_factor(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_radius_set(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_radius_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.22, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, float noundef 0x3F1A36E2E0000000, float noundef 1.000000e+01) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_radius_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call float @RNA_float_get(ptr noundef %18, ptr noundef nonnull @.str.22) #19
  %20 = load ptr, ptr %16, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %71, label %22

22:                                               ; preds = %15, %68
  %23 = phi ptr [ %69, %68 ], [ %20, %15 ]
  %24 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !52
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %27, %40
  %32 = phi i32 [ %41, %40 ], [ 0, %27 ]
  %33 = phi ptr [ %42, %40 ], [ %25, %27 ]
  %34 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 8
  %35 = load i8, ptr %34, align 4, !tbaa !59
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 3
  store float %19, ptr %39, align 4, !tbaa !206
  br label %40

40:                                               ; preds = %31, %38
  %41 = add nuw nsw i32 %32, 1
  %42 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 1
  %43 = icmp eq i32 %41, %29
  br i1 %43, label %68, label %31, !llvm.loop !207

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !62
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !52
  %51 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 7
  %52 = load i32, ptr %51, align 4, !tbaa !61
  %53 = mul nsw i32 %52, %50
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48, %64
  %56 = phi i32 [ %65, %64 ], [ 0, %48 ]
  %57 = phi ptr [ %66, %64 ], [ %46, %48 ]
  %58 = getelementptr inbounds %struct.BPoint, ptr %57, i64 0, i32 3
  %59 = load i16, ptr %58, align 4, !tbaa !64
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.BPoint, ptr %57, i64 0, i32 5
  store float %19, ptr %63, align 4, !tbaa !208
  br label %64

64:                                               ; preds = %55, %62
  %65 = add nuw nsw i32 %56, 1
  %66 = getelementptr inbounds %struct.BPoint, ptr %57, i64 1
  %67 = icmp eq i32 %65, %53
  br i1 %67, label %68, label %55, !llvm.loop !209

68:                                               ; preds = %40, %64, %27, %48, %44
  %69 = load ptr, ptr %23, align 8, !tbaa !66
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %22, !llvm.loop !210

71:                                               ; preds = %68, %15
  %72 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %73) #19
  %74 = load ptr, ptr %72, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %74, i16 noundef signext 0) #19
  ret i32 4
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_smooth(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @smooth_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @smooth_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp ne ptr %3, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %164, label %15

15:                                               ; preds = %2, %161
  %16 = phi ptr [ %162, %161 ], [ %13, %2 ]
  %17 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = icmp eq ptr %18, null
  br i1 %19, label %94, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !66
  %22 = tail call ptr %21(ptr noundef nonnull %18) #19
  %23 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 13
  %24 = load i16, ptr %23, align 4, !tbaa !69
  %25 = and i16 %24, 1
  %26 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !52
  %28 = add nsw i16 %25, -1
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %27, %29
  %31 = xor i16 %25, 1
  %32 = zext nneg i16 %31 to i32
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %89

34:                                               ; preds = %20
  %35 = load ptr, ptr %17, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %37 = zext nneg i16 %31 to i64
  %38 = zext i32 %30 to i64
  br label %39

39:                                               ; preds = %34, %85
  %40 = phi i64 [ %37, %34 ], [ %87, %85 ]
  %41 = phi i8 [ 0, %34 ], [ %86, %85 ]
  %42 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 %40, i32 8
  %43 = load i8, ptr %42, align 4, !tbaa !59
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %85, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 %40
  %48 = load i32, ptr %36, align 8, !tbaa !52
  %49 = trunc i64 %40 to i32
  %50 = add i32 %49, -1
  %51 = srem i32 %50, %48
  %52 = add nsw i32 %51, %48
  %53 = srem i32 %52, %48
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 %54
  %56 = trunc i64 %40 to i32
  %57 = add i32 %56, 1
  %58 = srem i32 %57, %48
  %59 = add nsw i32 %58, %48
  %60 = srem i32 %59, %48
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 %61
  br label %63

63:                                               ; preds = %46, %63
  %64 = phi i64 [ 0, %46 ], [ %83, %63 ]
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %47, i64 0, i64 1, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !70
  %67 = getelementptr inbounds [3 x [3 x float]], ptr %55, i64 0, i64 1, i64 %64
  %68 = load float, ptr %67, align 4, !tbaa !70
  %69 = getelementptr inbounds [3 x [3 x float]], ptr %62, i64 0, i64 1, i64 %64
  %70 = load float, ptr %69, align 4, !tbaa !70
  %71 = fmul float %70, 5.000000e-01
  %72 = tail call float @llvm.fmuladd.f32(float %68, float 5.000000e-01, float %71)
  %73 = fmul float %72, 0x3FC5555560000000
  %74 = tail call float @llvm.fmuladd.f32(float %66, float 0x3FEAAAAAA0000000, float %73)
  %75 = fsub float %74, %66
  %76 = fadd float %66, %75
  store float %76, ptr %65, align 4, !tbaa !70
  %77 = getelementptr inbounds [3 x float], ptr %47, i64 0, i64 %64
  %78 = load float, ptr %77, align 4, !tbaa !70
  %79 = fadd float %78, %75
  store float %79, ptr %77, align 4, !tbaa !70
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %47, i64 0, i64 2, i64 %64
  %81 = load float, ptr %80, align 4, !tbaa !70
  %82 = fadd float %81, %75
  store float %82, ptr %80, align 4, !tbaa !70
  %83 = add nuw nsw i64 %64, 1
  %84 = icmp eq i64 %83, 3
  br i1 %84, label %85, label %63, !llvm.loop !211

85:                                               ; preds = %63, %39
  %86 = phi i8 [ %41, %39 ], [ 1, %63 ]
  %87 = add nuw nsw i64 %40, 1
  %88 = icmp eq i64 %87, %38
  br i1 %88, label %89, label %39, !llvm.loop !212

89:                                               ; preds = %85, %20
  %90 = phi i8 [ 0, %20 ], [ %86, %85 ]
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %91(ptr noundef %22) #19
  %92 = icmp eq i8 %90, 0
  br i1 %92, label %161, label %93

93:                                               ; preds = %89
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %16) #19
  br label %161

94:                                               ; preds = %15
  %95 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 17
  %96 = load ptr, ptr %95, align 8, !tbaa !62
  %97 = icmp eq ptr %96, null
  br i1 %97, label %161, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !66
  %100 = tail call ptr %99(ptr noundef nonnull %96) #19
  %101 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 13
  %102 = load i16, ptr %101, align 4, !tbaa !69
  %103 = and i16 %102, 1
  %104 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %105 = load i32, ptr %104, align 8, !tbaa !52
  %106 = add nsw i16 %103, -1
  %107 = sext i16 %106 to i32
  %108 = add nsw i32 %105, %107
  %109 = xor i16 %103, 1
  %110 = zext nneg i16 %109 to i32
  %111 = icmp sgt i32 %108, %110
  br i1 %111, label %112, label %159

112:                                              ; preds = %98
  %113 = load ptr, ptr %95, align 8, !tbaa !62
  %114 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %115 = zext nneg i16 %109 to i64
  %116 = zext i32 %108 to i64
  br label %117

117:                                              ; preds = %112, %156
  %118 = phi i64 [ %115, %112 ], [ %157, %156 ]
  %119 = getelementptr inbounds %struct.BPoint, ptr %113, i64 %118, i32 3
  %120 = load i16, ptr %119, align 4, !tbaa !64
  %121 = and i16 %120, 1
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %156, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.BPoint, ptr %113, i64 %118
  %125 = load i32, ptr %114, align 8, !tbaa !52
  %126 = trunc i64 %118 to i32
  %127 = add i32 %126, -1
  %128 = srem i32 %127, %125
  %129 = add nsw i32 %128, %125
  %130 = srem i32 %129, %125
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.BPoint, ptr %100, i64 %131
  %133 = trunc i64 %118 to i32
  %134 = add i32 %133, 1
  %135 = srem i32 %134, %125
  %136 = add nsw i32 %135, %125
  %137 = srem i32 %136, %125
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.BPoint, ptr %100, i64 %138
  br label %140

140:                                              ; preds = %123, %140
  %141 = phi i64 [ 0, %123 ], [ %154, %140 ]
  %142 = getelementptr inbounds [4 x float], ptr %124, i64 0, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !70
  %144 = getelementptr inbounds [4 x float], ptr %132, i64 0, i64 %141
  %145 = load float, ptr %144, align 4, !tbaa !70
  %146 = getelementptr inbounds [4 x float], ptr %139, i64 0, i64 %141
  %147 = load float, ptr %146, align 4, !tbaa !70
  %148 = fmul float %147, 5.000000e-01
  %149 = tail call float @llvm.fmuladd.f32(float %145, float 5.000000e-01, float %148)
  %150 = fmul float %149, 0x3FC5555560000000
  %151 = tail call float @llvm.fmuladd.f32(float %143, float 0x3FEAAAAAA0000000, float %150)
  %152 = fsub float %151, %143
  %153 = fadd float %143, %152
  store float %153, ptr %142, align 4, !tbaa !70
  %154 = add nuw nsw i64 %141, 1
  %155 = icmp eq i64 %154, 3
  br i1 %155, label %156, label %140, !llvm.loop !213

156:                                              ; preds = %140, %117
  %157 = add nuw nsw i64 %118, 1
  %158 = icmp eq i64 %157, %116
  br i1 %158, label %159, label %117, !llvm.loop !214

159:                                              ; preds = %156, %98
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %160(ptr noundef %100) #19
  br label %161

161:                                              ; preds = %89, %93, %159, %94
  %162 = load ptr, ptr %16, align 8, !tbaa !66
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %15, !llvm.loop !215

164:                                              ; preds = %161, %2
  %165 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %166 = load ptr, ptr %165, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %166) #19
  %167 = load ptr, ptr %165, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %167, i16 noundef signext 0) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_smooth_weight(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_smooth_weight_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @curve_smooth_weight_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  tail call fastcc void @curve_smooth_value(ptr noundef %16, i32 noundef 40, i32 noundef 20)
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %18) #19
  %19 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %19, i16 noundef signext 0) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_smooth_radius(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_smooth_radius_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @curve_smooth_radius_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  tail call fastcc void @curve_smooth_value(ptr noundef %16, i32 noundef 44, i32 noundef 28)
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %18) #19
  %19 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %19, i16 noundef signext 0) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_smooth_tilt(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_smooth_tilt_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @curve_smooth_tilt_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  tail call fastcc void @curve_smooth_value(ptr noundef %16, i32 noundef 36, i32 noundef 16)
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %18) #19
  %19 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %19, i16 noundef signext 0) #19
  ret i32 4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @selectend_nurb(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #9 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = and i16 %8, -2
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %4, %6, %11
  %17 = phi ptr [ %15, %11 ], [ null, %6 ], [ null, %4 ]
  br i1 %5, label %140, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 32
  store i32 -1, ptr %21, align 8, !tbaa !196
  %22 = load ptr, ptr %17, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  br i1 %23, label %140, label %24

24:                                               ; preds = %18
  %25 = icmp eq i32 %1, 0
  %26 = icmp eq i8 %2, 0
  %27 = icmp eq i8 %3, 1
  %28 = icmp eq i32 %1, 0
  %29 = icmp eq i8 %2, 0
  %30 = icmp eq i8 %3, 1
  br label %31

31:                                               ; preds = %24, %137
  %32 = phi ptr [ %22, %24 ], [ %138, %137 ]
  %33 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !50
  %35 = icmp eq i16 %34, 1
  %36 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !52
  br i1 %35, label %38, label %104

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = sext i32 %37 to i64
  %42 = getelementptr %struct.BezTriple, ptr %40, i64 %41
  %43 = getelementptr %struct.BezTriple, ptr %42, i64 -1
  %44 = select i1 %28, ptr %43, ptr %40
  %45 = icmp eq i32 %37, 0
  br i1 %45, label %137, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %48 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 10
  %49 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 10
  %50 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 10
  br label %51

51:                                               ; preds = %46, %102
  %52 = phi i32 [ %37, %46 ], [ %53, %102 ]
  %53 = add nsw i32 %52, -1
  br i1 %29, label %82, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %47, align 4, !tbaa !59
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i8, ptr %48, align 2, !tbaa !157
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %63 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %64 = load i8, ptr %63, align 1, !tbaa !57
  %65 = and i8 %64, -2
  store i8 %65, ptr %63, align 1, !tbaa !57
  %66 = and i8 %55, -2
  store i8 %66, ptr %62, align 4, !tbaa !59
  %67 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  %68 = load i8, ptr %67, align 1, !tbaa !60
  %69 = and i8 %68, -2
  store i8 %69, ptr %67, align 1, !tbaa !60
  br label %137

70:                                               ; preds = %54
  %71 = load i8, ptr %49, align 2, !tbaa !157
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %75 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %76 = load i8, ptr %75, align 1, !tbaa !57
  %77 = or i8 %76, 1
  store i8 %77, ptr %75, align 1, !tbaa !57
  %78 = or disjoint i8 %55, 1
  store i8 %78, ptr %74, align 4, !tbaa !59
  %79 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  %80 = load i8, ptr %79, align 1, !tbaa !60
  %81 = or i8 %80, 1
  store i8 %81, ptr %79, align 1, !tbaa !60
  br label %137

82:                                               ; preds = %51
  %83 = load i8, ptr %50, align 2, !tbaa !157
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %87 = load i8, ptr %86, align 1, !tbaa !57
  %88 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %89 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  br i1 %30, label %90, label %96

90:                                               ; preds = %85
  %91 = or i8 %87, 1
  store i8 %91, ptr %86, align 1, !tbaa !57
  %92 = load i8, ptr %88, align 4, !tbaa !59
  %93 = or i8 %92, 1
  store i8 %93, ptr %88, align 4, !tbaa !59
  %94 = load i8, ptr %89, align 1, !tbaa !60
  %95 = or i8 %94, 1
  store i8 %95, ptr %89, align 1, !tbaa !60
  br label %137

96:                                               ; preds = %85
  %97 = and i8 %87, -2
  store i8 %97, ptr %86, align 1, !tbaa !57
  %98 = load i8, ptr %88, align 4, !tbaa !59
  %99 = and i8 %98, -2
  store i8 %99, ptr %88, align 4, !tbaa !59
  %100 = load i8, ptr %89, align 1, !tbaa !60
  %101 = and i8 %100, -2
  store i8 %101, ptr %89, align 1, !tbaa !60
  br label %137

102:                                              ; preds = %82, %70, %58
  %103 = icmp eq i32 %53, 0
  br i1 %103, label %137, label %51

104:                                              ; preds = %31
  %105 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 7
  %106 = load i32, ptr %105, align 4, !tbaa !61
  %107 = mul nsw i32 %106, %37
  %108 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 17
  %109 = load ptr, ptr %108, align 8, !tbaa !62
  %110 = sext i32 %107 to i64
  %111 = getelementptr %struct.BPoint, ptr %109, i64 %110
  %112 = getelementptr %struct.BPoint, ptr %111, i64 -1
  %113 = select i1 %25, ptr %112, ptr %109
  %114 = getelementptr inbounds %struct.BPoint, ptr %113, i64 0, i32 4
  br label %115

115:                                              ; preds = %118, %104
  %116 = phi i32 [ %107, %104 ], [ %119, %118 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %137, label %118

118:                                              ; preds = %115
  %119 = add nsw i32 %116, -1
  %120 = load i16, ptr %114, align 2, !tbaa !159
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %115, !llvm.loop !216

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.BPoint, ptr %113, i64 0, i32 3
  %124 = load i16, ptr %123, align 4, !tbaa !64
  br i1 %26, label %132, label %125

125:                                              ; preds = %122
  %126 = and i16 %124, 1
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = and i16 %124, -2
  store i16 %129, ptr %123, align 4, !tbaa !64
  br label %137

130:                                              ; preds = %125
  %131 = or disjoint i16 %124, 1
  store i16 %131, ptr %123, align 4, !tbaa !64
  br label %137

132:                                              ; preds = %122
  br i1 %27, label %133, label %135

133:                                              ; preds = %132
  %134 = or i16 %124, 1
  store i16 %134, ptr %123, align 4, !tbaa !64
  br label %137

135:                                              ; preds = %132
  %136 = and i16 %124, -2
  store i16 %136, ptr %123, align 4, !tbaa !64
  br label %137

137:                                              ; preds = %115, %102, %38, %61, %73, %90, %96, %128, %130, %133, %135
  %138 = load ptr, ptr %32, align 8, !tbaa !66
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %31, !llvm.loop !217

140:                                              ; preds = %137, %18, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_de_select_first(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @de_select_first_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @de_select_first_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  tail call void @selectend_nurb(ptr noundef %3, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #19
  %6 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %6) #19
  ret i32 4
}

declare i32 @ED_operator_editcurve(ptr noundef) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_de_select_last(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @de_select_last_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @de_select_last_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  tail call void @selectend_nurb(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #19
  %6 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %6) #19
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_select_all(ptr noundef %0) local_unnamed_addr #5 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @de_select_all_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @de_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !34
  %10 = and i16 %9, -2
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %7, %12
  %16 = phi ptr [ %14, %12 ], [ null, %7 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.198) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  br i1 %23, label %87, label %24

24:                                               ; preds = %21, %84
  %25 = phi ptr [ %85, %84 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !50
  %28 = icmp eq i16 %27, 1
  %29 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !52
  br i1 %28, label %31, label %61

31:                                               ; preds = %24
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %84, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  br label %36

36:                                               ; preds = %33, %58
  %37 = phi i32 [ %39, %58 ], [ %30, %33 ]
  %38 = phi ptr [ %59, %58 ], [ %35, %33 ]
  %39 = add nsw i32 %37, -1
  %40 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 0, i32 10
  %41 = load i8, ptr %40, align 2, !tbaa !157
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 0, i32 7
  %45 = load i8, ptr %44, align 1, !tbaa !57
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 0, i32 8
  %50 = load i8, ptr %49, align 4, !tbaa !59
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 0, i32 9
  %55 = load i8, ptr %54, align 1, !tbaa !60
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %53, %36
  %59 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 1
  %60 = icmp eq i32 %39, 0
  br i1 %60, label %84, label %36, !llvm.loop !218

61:                                               ; preds = %24
  %62 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !61
  %64 = mul nsw i32 %63, %30
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !62
  br label %69

69:                                               ; preds = %66, %81
  %70 = phi i32 [ %72, %81 ], [ %64, %66 ]
  %71 = phi ptr [ %82, %81 ], [ %68, %66 ]
  %72 = add nsw i32 %70, -1
  %73 = getelementptr inbounds %struct.BPoint, ptr %71, i64 0, i32 4
  %74 = load i16, ptr %73, align 2, !tbaa !159
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.BPoint, ptr %71, i64 0, i32 3
  %78 = load i16, ptr %77, align 4, !tbaa !64
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76, %69
  %82 = getelementptr inbounds %struct.BPoint, ptr %71, i64 1
  %83 = icmp eq i32 %72, 0
  br i1 %83, label %84, label %69, !llvm.loop !219

84:                                               ; preds = %81, %58, %61, %31
  %85 = load ptr, ptr %25, align 8, !tbaa !66
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %24, !llvm.loop !220

87:                                               ; preds = %84, %76, %53, %48, %43, %21, %15
  %88 = phi i32 [ %19, %15 ], [ 1, %21 ], [ 2, %43 ], [ 2, %48 ], [ 2, %53 ], [ 2, %76 ], [ 1, %84 ]
  switch i32 %88, label %210 [
    i32 1, label %89
    i32 2, label %151
    i32 3, label %203
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = icmp eq ptr %92, null
  br i1 %93, label %210, label %94

94:                                               ; preds = %89, %148
  %95 = phi ptr [ %149, %148 ], [ %92, %89 ]
  %96 = getelementptr inbounds %struct.Nurb, ptr %95, i64 0, i32 18
  %97 = load ptr, ptr %96, align 8, !tbaa !53
  %98 = icmp eq ptr %97, null
  br i1 %98, label %123, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.Nurb, ptr %95, i64 0, i32 6
  %101 = load i32, ptr %100, align 8, !tbaa !52
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %148

103:                                              ; preds = %99, %119
  %104 = phi ptr [ %121, %119 ], [ %97, %99 ]
  %105 = phi i32 [ %120, %119 ], [ 0, %99 ]
  %106 = getelementptr inbounds %struct.BezTriple, ptr %104, i64 0, i32 10
  %107 = load i8, ptr %106, align 2, !tbaa !157
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.BezTriple, ptr %104, i64 0, i32 7
  %111 = load i8, ptr %110, align 1, !tbaa !57
  %112 = or i8 %111, 1
  store i8 %112, ptr %110, align 1, !tbaa !57
  %113 = getelementptr inbounds %struct.BezTriple, ptr %104, i64 0, i32 8
  %114 = load i8, ptr %113, align 4, !tbaa !59
  %115 = or i8 %114, 1
  store i8 %115, ptr %113, align 4, !tbaa !59
  %116 = getelementptr inbounds %struct.BezTriple, ptr %104, i64 0, i32 9
  %117 = load i8, ptr %116, align 1, !tbaa !60
  %118 = or i8 %117, 1
  store i8 %118, ptr %116, align 1, !tbaa !60
  br label %119

119:                                              ; preds = %109, %103
  %120 = add nuw nsw i32 %105, 1
  %121 = getelementptr inbounds %struct.BezTriple, ptr %104, i64 1
  %122 = icmp eq i32 %120, %101
  br i1 %122, label %148, label %103, !llvm.loop !158

123:                                              ; preds = %94
  %124 = getelementptr inbounds %struct.Nurb, ptr %95, i64 0, i32 17
  %125 = load ptr, ptr %124, align 8, !tbaa !62
  %126 = icmp eq ptr %125, null
  br i1 %126, label %148, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.Nurb, ptr %95, i64 0, i32 6
  %129 = load i32, ptr %128, align 8, !tbaa !52
  %130 = getelementptr inbounds %struct.Nurb, ptr %95, i64 0, i32 7
  %131 = load i32, ptr %130, align 4, !tbaa !61
  %132 = mul nsw i32 %131, %129
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %127, %144
  %135 = phi ptr [ %146, %144 ], [ %125, %127 ]
  %136 = phi i32 [ %145, %144 ], [ 0, %127 ]
  %137 = getelementptr inbounds %struct.BPoint, ptr %135, i64 0, i32 4
  %138 = load i16, ptr %137, align 2, !tbaa !159
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.BPoint, ptr %135, i64 0, i32 3
  %142 = load i16, ptr %141, align 4, !tbaa !64
  %143 = or i16 %142, 1
  store i16 %143, ptr %141, align 4, !tbaa !64
  br label %144

144:                                              ; preds = %140, %134
  %145 = add nuw nsw i32 %136, 1
  %146 = getelementptr inbounds %struct.BPoint, ptr %135, i64 1
  %147 = icmp eq i32 %145, %132
  br i1 %147, label %148, label %134, !llvm.loop !160

148:                                              ; preds = %119, %144, %127, %123, %99
  %149 = load ptr, ptr %95, align 8, !tbaa !66
  %150 = icmp eq ptr %149, null
  br i1 %150, label %210, label %94, !llvm.loop !161

151:                                              ; preds = %87
  %152 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !47
  %154 = load ptr, ptr %153, align 8, !tbaa !66
  %155 = icmp eq ptr %154, null
  br i1 %155, label %210, label %156

156:                                              ; preds = %151, %200
  %157 = phi ptr [ %201, %200 ], [ %154, %151 ]
  %158 = getelementptr inbounds %struct.Nurb, ptr %157, i64 0, i32 18
  %159 = load ptr, ptr %158, align 8, !tbaa !53
  %160 = icmp eq ptr %159, null
  br i1 %160, label %180, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.Nurb, ptr %157, i64 0, i32 6
  %163 = load i32, ptr %162, align 8, !tbaa !52
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %200

165:                                              ; preds = %161, %165
  %166 = phi ptr [ %178, %165 ], [ %159, %161 ]
  %167 = phi i32 [ %177, %165 ], [ 0, %161 ]
  %168 = getelementptr inbounds %struct.BezTriple, ptr %166, i64 0, i32 7
  %169 = load i8, ptr %168, align 1, !tbaa !57
  %170 = and i8 %169, -2
  store i8 %170, ptr %168, align 1, !tbaa !57
  %171 = getelementptr inbounds %struct.BezTriple, ptr %166, i64 0, i32 8
  %172 = load i8, ptr %171, align 4, !tbaa !59
  %173 = and i8 %172, -2
  store i8 %173, ptr %171, align 4, !tbaa !59
  %174 = getelementptr inbounds %struct.BezTriple, ptr %166, i64 0, i32 9
  %175 = load i8, ptr %174, align 1, !tbaa !60
  %176 = and i8 %175, -2
  store i8 %176, ptr %174, align 1, !tbaa !60
  %177 = add nuw nsw i32 %167, 1
  %178 = getelementptr inbounds %struct.BezTriple, ptr %166, i64 1
  %179 = icmp eq i32 %177, %163
  br i1 %179, label %200, label %165, !llvm.loop !154

180:                                              ; preds = %156
  %181 = getelementptr inbounds %struct.Nurb, ptr %157, i64 0, i32 17
  %182 = load ptr, ptr %181, align 8, !tbaa !62
  %183 = icmp eq ptr %182, null
  br i1 %183, label %200, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.Nurb, ptr %157, i64 0, i32 6
  %186 = load i32, ptr %185, align 8, !tbaa !52
  %187 = getelementptr inbounds %struct.Nurb, ptr %157, i64 0, i32 7
  %188 = load i32, ptr %187, align 4, !tbaa !61
  %189 = mul nsw i32 %188, %186
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %184, %191
  %192 = phi ptr [ %198, %191 ], [ %182, %184 ]
  %193 = phi i32 [ %197, %191 ], [ 0, %184 ]
  %194 = getelementptr inbounds %struct.BPoint, ptr %192, i64 0, i32 3
  %195 = load i16, ptr %194, align 4, !tbaa !64
  %196 = and i16 %195, -2
  store i16 %196, ptr %194, align 4, !tbaa !64
  %197 = add nuw nsw i32 %193, 1
  %198 = getelementptr inbounds %struct.BPoint, ptr %192, i64 1
  %199 = icmp eq i32 %197, %189
  br i1 %199, label %200, label %191, !llvm.loop !155

200:                                              ; preds = %165, %191, %184, %180, %161
  %201 = load ptr, ptr %157, align 8, !tbaa !66
  %202 = icmp eq ptr %201, null
  br i1 %202, label %210, label %156, !llvm.loop !156

203:                                              ; preds = %87
  %204 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %205 = load ptr, ptr %204, align 8, !tbaa !47
  %206 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  %207 = load i16, ptr %206, align 8, !tbaa !221
  %208 = trunc i16 %207 to i8
  %209 = and i8 %208, 1
  tail call void @ED_curve_select_swap(ptr noundef %205, i8 noundef zeroext %209)
  br label %210

210:                                              ; preds = %200, %148, %151, %89, %87, %203
  %211 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %211) #19
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %5) #19
  ret i32 4
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_hide(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @hide_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !34
  %10 = and i16 %9, -2
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %7, %12
  %16 = phi ptr [ %14, %12 ], [ null, %7 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.48) #19
  %20 = load ptr, ptr %16, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %143, label %22

22:                                               ; preds = %15
  %23 = and i32 %19, 255
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %19, 255
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  %28 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  br label %29

29:                                               ; preds = %22, %140
  %30 = phi ptr [ %20, %22 ], [ %141, %140 ]
  %31 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !50
  %33 = icmp eq i16 %32, 1
  %34 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !52
  br i1 %33, label %36, label %104

36:                                               ; preds = %29
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %101, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  br label %41

41:                                               ; preds = %38, %93
  %42 = phi i32 [ %45, %93 ], [ %35, %38 ]
  %43 = phi i32 [ %98, %93 ], [ 0, %38 ]
  %44 = phi ptr [ %99, %93 ], [ %40, %38 ]
  %45 = add nsw i32 %42, -1
  %46 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %47 = load i8, ptr %46, align 4, !tbaa !59
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %26, label %50, label %66

50:                                               ; preds = %41
  %51 = load i16, ptr %28, align 8, !tbaa !221
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br i1 %49, label %93, label %82

55:                                               ; preds = %50
  br i1 %49, label %56, label %82

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %58 = load i8, ptr %57, align 1, !tbaa !57
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  %63 = load i8, ptr %62, align 1, !tbaa !60
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %93, label %82

66:                                               ; preds = %41
  %67 = load i16, ptr %27, align 8, !tbaa !221
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br i1 %49, label %82, label %93

71:                                               ; preds = %66
  br i1 %49, label %72, label %93

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %74 = load i8, ptr %73, align 1, !tbaa !57
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  %79 = load i8, ptr %78, align 1, !tbaa !60
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %70, %77, %54, %55, %56, %61
  %83 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 10
  %84 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %85 = load i8, ptr %84, align 1, !tbaa !57
  %86 = and i8 %85, -2
  store i8 %86, ptr %84, align 1, !tbaa !57
  %87 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %88 = load i8, ptr %87, align 4, !tbaa !59
  %89 = and i8 %88, -2
  store i8 %89, ptr %87, align 4, !tbaa !59
  %90 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  %91 = load i8, ptr %90, align 1, !tbaa !60
  %92 = and i8 %91, -2
  store i8 %92, ptr %90, align 1, !tbaa !60
  store i8 1, ptr %83, align 2, !tbaa !157
  br label %93

93:                                               ; preds = %82, %54, %61, %70, %71, %72, %77
  %94 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 10
  %95 = load i8, ptr %94, align 2, !tbaa !157
  %96 = icmp ne i8 %95, 0
  %97 = zext i1 %96 to i32
  %98 = add nuw nsw i32 %43, %97
  %99 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 1
  %100 = icmp eq i32 %45, 0
  br i1 %100, label %101, label %41, !llvm.loop !222

101:                                              ; preds = %93, %36
  %102 = phi i32 [ 0, %36 ], [ %98, %93 ]
  %103 = icmp eq i32 %102, %35
  br i1 %103, label %138, label %140

104:                                              ; preds = %29
  %105 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 7
  %106 = load i32, ptr %105, align 4, !tbaa !61
  %107 = mul nsw i32 %106, %35
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %135, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 17
  %111 = load ptr, ptr %110, align 8, !tbaa !62
  br label %112

112:                                              ; preds = %109, %127
  %113 = phi i32 [ %116, %127 ], [ %107, %109 ]
  %114 = phi i32 [ %132, %127 ], [ 0, %109 ]
  %115 = phi ptr [ %133, %127 ], [ %111, %109 ]
  %116 = add nsw i32 %113, -1
  %117 = getelementptr inbounds %struct.BPoint, ptr %115, i64 0, i32 3
  %118 = load i16, ptr %117, align 4, !tbaa !64
  %119 = and i16 %118, 1
  %120 = icmp eq i16 %119, 0
  br i1 %24, label %121, label %124

121:                                              ; preds = %112
  br i1 %120, label %127, label %122

122:                                              ; preds = %121
  %123 = and i16 %118, -2
  store i16 %123, ptr %117, align 4, !tbaa !64
  br label %125

124:                                              ; preds = %112
  br i1 %120, label %125, label %127

125:                                              ; preds = %124, %122
  %126 = getelementptr inbounds %struct.BPoint, ptr %115, i64 0, i32 4
  store i16 1, ptr %126, align 2, !tbaa !159
  br label %127

127:                                              ; preds = %125, %121, %124
  %128 = getelementptr inbounds %struct.BPoint, ptr %115, i64 0, i32 4
  %129 = load i16, ptr %128, align 2, !tbaa !159
  %130 = icmp ne i16 %129, 0
  %131 = zext i1 %130 to i32
  %132 = add nuw nsw i32 %114, %131
  %133 = getelementptr inbounds %struct.BPoint, ptr %115, i64 1
  %134 = icmp eq i32 %116, 0
  br i1 %134, label %135, label %112, !llvm.loop !223

135:                                              ; preds = %127, %104
  %136 = phi i32 [ 0, %104 ], [ %132, %127 ]
  %137 = icmp eq i32 %136, %107
  br i1 %137, label %138, label %140

138:                                              ; preds = %135, %101
  %139 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 4
  store i16 1, ptr %139, align 4, !tbaa !224
  br label %140

140:                                              ; preds = %138, %101, %135
  %141 = load ptr, ptr %30, align 8, !tbaa !66
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %29, !llvm.loop !225

143:                                              ; preds = %140, %15
  %144 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %144, i16 noundef signext 0) #19
  %145 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %145) #19
  %146 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %146) #19
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reveal_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp ne ptr %3, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %2, %70
  %16 = phi ptr [ %71, %70 ], [ %13, %2 ]
  %17 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 4
  store i16 0, ptr %17, align 4, !tbaa !224
  %18 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !50
  %20 = icmp eq i16 %19, 1
  %21 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !52
  br i1 %20, label %23, label %48

23:                                               ; preds = %15
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %70, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %25, %45
  %29 = phi i32 [ %31, %45 ], [ %22, %25 ]
  %30 = phi ptr [ %46, %45 ], [ %27, %25 ]
  %31 = add nsw i32 %29, -1
  %32 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 10
  %33 = load i8, ptr %32, align 2, !tbaa !157
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 7
  %37 = load i8, ptr %36, align 1, !tbaa !57
  %38 = or i8 %37, 1
  store i8 %38, ptr %36, align 1, !tbaa !57
  %39 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 8
  %40 = load i8, ptr %39, align 4, !tbaa !59
  %41 = or i8 %40, 1
  store i8 %41, ptr %39, align 4, !tbaa !59
  %42 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 9
  %43 = load i8, ptr %42, align 1, !tbaa !60
  %44 = or i8 %43, 1
  store i8 %44, ptr %42, align 1, !tbaa !60
  store i8 0, ptr %32, align 2, !tbaa !157
  br label %45

45:                                               ; preds = %35, %28
  %46 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 1
  %47 = icmp eq i32 %31, 0
  br i1 %47, label %70, label %28, !llvm.loop !226

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 7
  %50 = load i32, ptr %49, align 4, !tbaa !61
  %51 = mul nsw i32 %50, %22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 17
  %55 = load ptr, ptr %54, align 8, !tbaa !62
  br label %56

56:                                               ; preds = %53, %67
  %57 = phi i32 [ %59, %67 ], [ %51, %53 ]
  %58 = phi ptr [ %68, %67 ], [ %55, %53 ]
  %59 = add nsw i32 %57, -1
  %60 = getelementptr inbounds %struct.BPoint, ptr %58, i64 0, i32 4
  %61 = load i16, ptr %60, align 2, !tbaa !159
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.BPoint, ptr %58, i64 0, i32 3
  %65 = load i16, ptr %64, align 4, !tbaa !64
  %66 = or i16 %65, 1
  store i16 %66, ptr %64, align 4, !tbaa !64
  store i16 0, ptr %60, align 2, !tbaa !159
  br label %67

67:                                               ; preds = %63, %56
  %68 = getelementptr inbounds %struct.BPoint, ptr %58, i64 1
  %69 = icmp eq i32 %59, 0
  br i1 %69, label %70, label %56, !llvm.loop !227

70:                                               ; preds = %67, %45, %48, %23
  %71 = load ptr, ptr %16, align 8, !tbaa !66
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %15, !llvm.loop !228

73:                                               ; preds = %70, %2
  %74 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %75, i16 noundef signext 0) #19
  %76 = load ptr, ptr %74, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %76) #19
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_subdivide(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @subdivide_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 10) #19
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @subdivide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca [15 x float], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !200
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.57) #19
  %9 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #19
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %767, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.EditNurb, ptr %12, i64 0, i32 1
  %17 = icmp slt i32 %8, 1
  %18 = add nsw i32 %8, 1
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.EditNurb, ptr %12, i64 0, i32 1
  %21 = icmp slt i32 %8, 1
  %22 = add nsw i32 %8, 1
  %23 = sitofp i32 %22 to float
  %24 = add nsw i32 %8, 1
  %25 = getelementptr inbounds %struct.EditNurb, ptr %12, i64 0, i32 1
  %26 = icmp slt i32 %8, 1
  %27 = sitofp i32 %24 to float
  %28 = icmp sgt i32 %8, 0
  %29 = sitofp i32 %24 to float
  %30 = getelementptr inbounds %struct.EditNurb, ptr %12, i64 0, i32 1
  %31 = icmp slt i32 %8, 1
  %32 = add nsw i32 %8, 1
  %33 = sitofp i32 %32 to float
  %34 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 16
  %35 = getelementptr inbounds %struct.EditNurb, ptr %12, i64 0, i32 1
  %36 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 16
  %37 = icmp sgt i32 %8, 0
  %38 = add nsw i32 %8, 1
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %41 = getelementptr inbounds float, ptr %3, i64 3
  %42 = getelementptr inbounds float, ptr %3, i64 6
  %43 = getelementptr inbounds float, ptr %3, i64 9
  %44 = getelementptr inbounds float, ptr %3, i64 12
  %45 = getelementptr inbounds float, ptr %3, i64 1
  %46 = getelementptr inbounds float, ptr %3, i64 2
  %47 = getelementptr inbounds float, ptr %3, i64 10
  %48 = getelementptr inbounds float, ptr %3, i64 11
  %49 = getelementptr inbounds float, ptr %3, i64 13
  %50 = getelementptr inbounds float, ptr %3, i64 14
  %51 = add nsw i32 %8, -1
  %52 = getelementptr inbounds float, ptr %3, i64 7
  %53 = getelementptr inbounds float, ptr %3, i64 8
  %54 = getelementptr inbounds float, ptr %3, i64 7
  %55 = getelementptr inbounds float, ptr %3, i64 8
  br label %56

56:                                               ; preds = %15, %764
  %57 = phi ptr [ %13, %15 ], [ %765, %764 ]
  %58 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 2
  %59 = load i16, ptr %58, align 8, !tbaa !50
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %259

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !52
  %64 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 18
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %118, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %64, align 8, !tbaa !53
  br label %68

68:                                               ; preds = %66, %114
  %69 = phi i32 [ %72, %114 ], [ %63, %66 ]
  %70 = phi ptr [ %116, %114 ], [ %67, %66 ]
  %71 = phi i32 [ %115, %114 ], [ 0, %66 ]
  %72 = add nsw i32 %69, -1
  %73 = call ptr @BKE_nurb_bezt_get_next(ptr noundef nonnull %57, ptr noundef %70) #19
  %74 = icmp eq ptr %73, null
  br i1 %74, label %118, label %75

75:                                               ; preds = %68
  %76 = load i16, ptr %34, align 8, !tbaa !221
  %77 = and i16 %76, 1
  %78 = icmp eq i16 %77, 0
  %79 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 8
  %80 = load i8, ptr %79, align 4, !tbaa !59
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %78, label %84, label %83

83:                                               ; preds = %75
  br i1 %82, label %114, label %95

84:                                               ; preds = %75
  br i1 %82, label %85, label %95

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 7
  %87 = load i8, ptr %86, align 1, !tbaa !57
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 9
  %92 = load i8, ptr %91, align 1, !tbaa !60
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %90, %85, %84, %83
  %96 = getelementptr inbounds %struct.BezTriple, ptr %73, i64 0, i32 8
  %97 = load i8, ptr %96, align 4, !tbaa !59
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %78, label %101, label %100

100:                                              ; preds = %95
  br i1 %99, label %114, label %112

101:                                              ; preds = %95
  br i1 %99, label %102, label %112

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.BezTriple, ptr %73, i64 0, i32 7
  %104 = load i8, ptr %103, align 1, !tbaa !57
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.BezTriple, ptr %73, i64 0, i32 9
  %109 = load i8, ptr %108, align 1, !tbaa !60
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107, %102, %101, %100
  %113 = add nsw i32 %71, %8
  br label %114

114:                                              ; preds = %112, %107, %100, %90, %83
  %115 = phi i32 [ %113, %112 ], [ %71, %100 ], [ %71, %107 ], [ %71, %83 ], [ %71, %90 ]
  %116 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 1
  %117 = icmp eq i32 %72, 0
  br i1 %117, label %118, label %68, !llvm.loop !229

118:                                              ; preds = %114, %68, %61
  %119 = phi i32 [ 0, %61 ], [ %115, %114 ], [ %71, %68 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %764, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %123 = load i32, ptr %62, align 8, !tbaa !52
  %124 = add nsw i32 %123, %119
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, 72
  %127 = call ptr %122(i64 noundef %126, ptr noundef nonnull @.str.199) #19
  %128 = load i32, ptr %62, align 8, !tbaa !52
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %254, label %130

130:                                              ; preds = %121
  %131 = load ptr, ptr %64, align 8, !tbaa !53
  %132 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 13
  br label %133

133:                                              ; preds = %130, %250
  %134 = phi i32 [ %128, %130 ], [ %137, %250 ]
  %135 = phi ptr [ %131, %130 ], [ %252, %250 ]
  %136 = phi ptr [ %127, %130 ], [ %251, %250 ]
  %137 = add nsw i32 %134, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %136, ptr noundef nonnull align 4 dereferenceable(72) %135, i64 72, i1 false)
  %138 = load ptr, ptr %35, align 8, !tbaa !77
  %139 = icmp eq ptr %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %133
  %141 = load ptr, ptr %35, align 8, !tbaa !77
  %142 = call ptr @BLI_ghash_popkey(ptr noundef %141, ptr noundef %135, ptr noundef null) #19
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %35, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %145, ptr noundef %136, ptr noundef nonnull %142) #19
  br label %146

146:                                              ; preds = %144, %140, %133
  %147 = getelementptr inbounds %struct.BezTriple, ptr %136, i64 1
  %148 = call ptr @BKE_nurb_bezt_get_next(ptr noundef nonnull %57, ptr noundef %135) #19
  %149 = icmp eq ptr %148, null
  br i1 %149, label %254, label %150

150:                                              ; preds = %146
  %151 = load i16, ptr %36, align 8, !tbaa !221
  %152 = and i16 %151, 1
  %153 = icmp eq i16 %152, 0
  %154 = getelementptr inbounds %struct.BezTriple, ptr %135, i64 0, i32 8
  %155 = load i8, ptr %154, align 4, !tbaa !59
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  br i1 %153, label %159, label %158

158:                                              ; preds = %150
  br i1 %157, label %250, label %170

159:                                              ; preds = %150
  br i1 %157, label %160, label %170

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.BezTriple, ptr %135, i64 0, i32 7
  %162 = load i8, ptr %161, align 1, !tbaa !57
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.BezTriple, ptr %135, i64 0, i32 9
  %167 = load i8, ptr %166, align 1, !tbaa !60
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %250, label %170

170:                                              ; preds = %165, %160, %159, %158
  %171 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 0, i32 8
  %172 = load i8, ptr %171, align 4, !tbaa !59
  %173 = and i8 %172, 1
  %174 = icmp eq i8 %173, 0
  br i1 %153, label %176, label %175

175:                                              ; preds = %170
  br i1 %174, label %250, label %187

176:                                              ; preds = %170
  br i1 %174, label %177, label %187

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 0, i32 7
  %179 = load i8, ptr %178, align 1, !tbaa !57
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 0, i32 9
  %184 = load i8, ptr %183, align 1, !tbaa !60
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %250, label %187

187:                                              ; preds = %182, %177, %176, %175
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %135, i64 36, i1 false)
  br i1 %37, label %188, label %248

188:                                              ; preds = %187
  %189 = getelementptr inbounds [3 x [3 x float]], ptr %148, i64 0, i64 1
  %190 = icmp eq i32 %137, 0
  %191 = getelementptr inbounds %struct.BezTriple, ptr %135, i64 0, i32 3
  %192 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 0, i32 3
  %193 = getelementptr inbounds %struct.BezTriple, ptr %135, i64 0, i32 2
  %194 = getelementptr inbounds %struct.BezTriple, ptr %148, i64 0, i32 2
  br label %195

195:                                              ; preds = %188, %226
  %196 = phi i32 [ 0, %188 ], [ %246, %226 ]
  %197 = phi ptr [ %147, %188 ], [ %245, %226 ]
  %198 = sub nsw i32 %38, %196
  %199 = sitofp i32 %198 to float
  %200 = fdiv float 1.000000e+00, %199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %197, ptr noundef nonnull align 4 dereferenceable(72) %148, i64 72, i1 false)
  call void @interp_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %39, ptr noundef nonnull %40, float noundef %200) #19
  call void @interp_v3_v3v3(ptr noundef nonnull %41, ptr noundef nonnull %40, ptr noundef nonnull %148, float noundef %200) #19
  call void @interp_v3_v3v3(ptr noundef nonnull %42, ptr noundef nonnull %148, ptr noundef nonnull %189, float noundef %200) #19
  call void @interp_v3_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %3, ptr noundef nonnull %41, float noundef %200) #19
  call void @interp_v3_v3v3(ptr noundef nonnull %44, ptr noundef nonnull %41, ptr noundef nonnull %42, float noundef %200) #19
  %201 = getelementptr %struct.BezTriple, ptr %197, i64 -1, i32 0, i64 2
  %202 = load float, ptr %3, align 16, !tbaa !70
  store float %202, ptr %201, align 4, !tbaa !70
  %203 = load float, ptr %45, align 4, !tbaa !70
  %204 = getelementptr %struct.BezTriple, ptr %197, i64 -1, i32 0, i64 2, i64 1
  store float %203, ptr %204, align 4, !tbaa !70
  %205 = load float, ptr %46, align 8, !tbaa !70
  %206 = getelementptr %struct.BezTriple, ptr %197, i64 -1, i32 0, i64 2, i64 2
  store float %205, ptr %206, align 4, !tbaa !70
  %207 = load float, ptr %43, align 4, !tbaa !70
  store float %207, ptr %197, align 4, !tbaa !70
  %208 = load float, ptr %47, align 8, !tbaa !70
  %209 = getelementptr inbounds float, ptr %197, i64 1
  store float %208, ptr %209, align 4, !tbaa !70
  %210 = load float, ptr %48, align 4, !tbaa !70
  %211 = getelementptr inbounds float, ptr %197, i64 2
  store float %210, ptr %211, align 4, !tbaa !70
  %212 = getelementptr inbounds [3 x [3 x float]], ptr %197, i64 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %212, ptr noundef nonnull %43, ptr noundef nonnull %44, float noundef %200) #19
  %213 = getelementptr inbounds [3 x [3 x float]], ptr %197, i64 0, i64 2
  %214 = load float, ptr %44, align 16, !tbaa !70
  store float %214, ptr %213, align 4, !tbaa !70
  %215 = load float, ptr %49, align 4, !tbaa !70
  %216 = getelementptr inbounds [3 x [3 x float]], ptr %197, i64 0, i64 2, i64 1
  store float %215, ptr %216, align 4, !tbaa !70
  %217 = load float, ptr %50, align 8, !tbaa !70
  %218 = getelementptr inbounds [3 x [3 x float]], ptr %197, i64 0, i64 2, i64 2
  store float %217, ptr %218, align 4, !tbaa !70
  %219 = icmp eq i32 %196, %51
  %220 = select i1 %190, i1 %219, i1 false
  br i1 %220, label %221, label %225

221:                                              ; preds = %195
  %222 = load i16, ptr %132, align 4, !tbaa !69
  %223 = and i16 %222, 1
  %224 = icmp eq i16 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221, %195
  br label %226

226:                                              ; preds = %221, %225
  %227 = phi ptr [ %148, %225 ], [ %127, %221 ]
  %228 = phi ptr [ %54, %225 ], [ %52, %221 ]
  %229 = phi ptr [ %55, %225 ], [ %53, %221 ]
  %230 = getelementptr inbounds float, ptr %227, i64 2
  %231 = getelementptr inbounds float, ptr %227, i64 1
  %232 = load float, ptr %42, align 8, !tbaa !70
  store float %232, ptr %227, align 4, !tbaa !70
  %233 = load float, ptr %228, align 4, !tbaa !70
  store float %233, ptr %231, align 4, !tbaa !70
  %234 = load float, ptr %229, align 16, !tbaa !70
  store float %234, ptr %230, align 4, !tbaa !70
  %235 = load float, ptr %191, align 4, !tbaa !206
  %236 = load float, ptr %192, align 4, !tbaa !206
  %237 = fadd float %235, %236
  %238 = fmul float %237, 5.000000e-01
  %239 = getelementptr inbounds %struct.BezTriple, ptr %197, i64 0, i32 3
  store float %238, ptr %239, align 4, !tbaa !206
  %240 = load float, ptr %193, align 4, !tbaa !201
  %241 = load float, ptr %194, align 4, !tbaa !201
  %242 = fadd float %240, %241
  %243 = fmul float %242, 5.000000e-01
  %244 = getelementptr inbounds %struct.BezTriple, ptr %197, i64 0, i32 2
  store float %243, ptr %244, align 4, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %197, i64 36, i1 false)
  %245 = getelementptr inbounds %struct.BezTriple, ptr %197, i64 1
  %246 = add nuw nsw i32 %196, 1
  %247 = icmp eq i32 %246, %8
  br i1 %247, label %248, label %195, !llvm.loop !230

248:                                              ; preds = %226, %187
  %249 = phi ptr [ %147, %187 ], [ %245, %226 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  br label %250

250:                                              ; preds = %248, %182, %175, %165, %158
  %251 = phi ptr [ %249, %248 ], [ %147, %175 ], [ %147, %182 ], [ %147, %158 ], [ %147, %165 ]
  %252 = getelementptr inbounds %struct.BezTriple, ptr %135, i64 1
  %253 = icmp eq i32 %137, 0
  br i1 %253, label %254, label %133, !llvm.loop !231

254:                                              ; preds = %250, %146, %121
  %255 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %256 = load ptr, ptr %64, align 8, !tbaa !53
  call void %255(ptr noundef %256) #19
  store ptr %127, ptr %64, align 8, !tbaa !53
  %257 = load i32, ptr %62, align 8, !tbaa !52
  %258 = add nsw i32 %257, %119
  store i32 %258, ptr %62, align 8, !tbaa !52
  call void @BKE_nurb_handles_calc(ptr noundef nonnull %57) #19
  br label %764

259:                                              ; preds = %56
  %260 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 7
  %261 = load i32, ptr %260, align 4, !tbaa !61
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %263, label %356

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 6
  %265 = load i32, ptr %264, align 8, !tbaa !52
  %266 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 17
  %267 = icmp eq i32 %265, 0
  br i1 %267, label %293, label %268

268:                                              ; preds = %263
  %269 = load ptr, ptr %266, align 8, !tbaa !62
  br label %270

270:                                              ; preds = %268, %289
  %271 = phi i32 [ %274, %289 ], [ %265, %268 ]
  %272 = phi ptr [ %291, %289 ], [ %269, %268 ]
  %273 = phi i32 [ %290, %289 ], [ 0, %268 ]
  %274 = add nsw i32 %271, -1
  %275 = call ptr @BKE_nurb_bpoint_get_next(ptr noundef nonnull %57, ptr noundef %272) #19
  %276 = icmp eq ptr %275, null
  br i1 %276, label %293, label %277

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.BPoint, ptr %272, i64 0, i32 3
  %279 = load i16, ptr %278, align 4, !tbaa !64
  %280 = and i16 %279, 1
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.BPoint, ptr %275, i64 0, i32 3
  %284 = load i16, ptr %283, align 4, !tbaa !64
  %285 = and i16 %284, 1
  %286 = icmp eq i16 %285, 0
  %287 = select i1 %286, i32 0, i32 %8
  %288 = add nsw i32 %287, %273
  br label %289

289:                                              ; preds = %282, %277
  %290 = phi i32 [ %273, %277 ], [ %288, %282 ]
  %291 = getelementptr inbounds %struct.BPoint, ptr %272, i64 1
  %292 = icmp eq i32 %274, 0
  br i1 %292, label %293, label %270, !llvm.loop !232

293:                                              ; preds = %289, %270, %263
  %294 = phi i32 [ 0, %263 ], [ %290, %289 ], [ %273, %270 ]
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %764, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %298 = load i32, ptr %264, align 8, !tbaa !52
  %299 = add nsw i32 %298, %294
  %300 = sext i32 %299 to i64
  %301 = mul nsw i64 %300, 36
  %302 = call ptr %297(i64 noundef %301, ptr noundef nonnull @.str.200) #19
  %303 = load i32, ptr %264, align 8, !tbaa !52
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %347, label %305

305:                                              ; preds = %296
  %306 = load ptr, ptr %266, align 8, !tbaa !62
  br label %307

307:                                              ; preds = %305, %343
  %308 = phi i32 [ %311, %343 ], [ %303, %305 ]
  %309 = phi ptr [ %345, %343 ], [ %306, %305 ]
  %310 = phi ptr [ %344, %343 ], [ %302, %305 ]
  %311 = add nsw i32 %308, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %310, ptr noundef nonnull align 4 dereferenceable(36) %309, i64 36, i1 false)
  %312 = load ptr, ptr %30, align 8, !tbaa !77
  %313 = icmp eq ptr %312, null
  br i1 %313, label %320, label %314

314:                                              ; preds = %307
  %315 = load ptr, ptr %30, align 8, !tbaa !77
  %316 = call ptr @BLI_ghash_popkey(ptr noundef %315, ptr noundef %309, ptr noundef null) #19
  %317 = icmp eq ptr %316, null
  br i1 %317, label %320, label %318

318:                                              ; preds = %314
  %319 = load ptr, ptr %30, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %319, ptr noundef %310, ptr noundef nonnull %316) #19
  br label %320

320:                                              ; preds = %318, %314, %307
  %321 = getelementptr inbounds %struct.BPoint, ptr %310, i64 1
  %322 = call ptr @BKE_nurb_bpoint_get_next(ptr noundef nonnull %57, ptr noundef %309) #19
  %323 = icmp eq ptr %322, null
  br i1 %323, label %347, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.BPoint, ptr %309, i64 0, i32 3
  %326 = load i16, ptr %325, align 4, !tbaa !64
  %327 = and i16 %326, 1
  %328 = icmp eq i16 %327, 0
  br i1 %328, label %343, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.BPoint, ptr %322, i64 0, i32 3
  %331 = load i16, ptr %330, align 4, !tbaa !64
  %332 = and i16 %331, 1
  %333 = icmp eq i16 %332, 0
  %334 = select i1 %333, i1 true, i1 %31
  br i1 %334, label %343, label %335

335:                                              ; preds = %329, %335
  %336 = phi i32 [ %338, %335 ], [ 0, %329 ]
  %337 = phi ptr [ %341, %335 ], [ %321, %329 ]
  %338 = add nuw nsw i32 %336, 1
  %339 = sitofp i32 %338 to float
  %340 = fdiv float %339, %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %337, ptr noundef nonnull align 4 dereferenceable(36) %322, i64 36, i1 false)
  call void @interp_v4_v4v4(ptr noundef nonnull %337, ptr noundef %309, ptr noundef nonnull %322, float noundef %340) #19
  %341 = getelementptr inbounds %struct.BPoint, ptr %337, i64 1
  %342 = icmp eq i32 %338, %8
  br i1 %342, label %343, label %335, !llvm.loop !233

343:                                              ; preds = %335, %329, %324
  %344 = phi ptr [ %321, %329 ], [ %321, %324 ], [ %341, %335 ]
  %345 = getelementptr inbounds %struct.BPoint, ptr %309, i64 1
  %346 = icmp eq i32 %311, 0
  br i1 %346, label %347, label %307, !llvm.loop !234

347:                                              ; preds = %343, %320, %296
  %348 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %349 = load ptr, ptr %266, align 8, !tbaa !62
  call void %348(ptr noundef %349) #19
  store ptr %302, ptr %266, align 8, !tbaa !62
  %350 = load i32, ptr %264, align 8, !tbaa !52
  %351 = add nsw i32 %350, %294
  store i32 %351, ptr %264, align 8, !tbaa !52
  %352 = load i16, ptr %58, align 8, !tbaa !50
  %353 = and i16 %352, 4
  %354 = icmp eq i16 %353, 0
  br i1 %354, label %764, label %355

355:                                              ; preds = %347
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %57) #19
  br label %764

356:                                              ; preds = %259
  %357 = icmp eq i16 %59, 4
  br i1 %357, label %358, label %764

358:                                              ; preds = %356
  %359 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %360 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 6
  %361 = load i32, ptr %360, align 8, !tbaa !52
  %362 = sext i32 %361 to i64
  %363 = shl nsw i64 %362, 2
  %364 = call ptr %359(i64 noundef %363, ptr noundef nonnull @.str.201) #19
  %365 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %366 = load i32, ptr %260, align 4, !tbaa !61
  %367 = sext i32 %366 to i64
  %368 = shl nsw i64 %367, 2
  %369 = call ptr %365(i64 noundef %368, ptr noundef nonnull @.str.201) #19
  %370 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 17
  %371 = load i32, ptr %260, align 4, !tbaa !61
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %412

373:                                              ; preds = %358
  %374 = load ptr, ptr %370, align 8, !tbaa !62
  br label %375

375:                                              ; preds = %373, %405
  %376 = phi i64 [ 0, %373 ], [ %408, %405 ]
  %377 = phi ptr [ %374, %373 ], [ %407, %405 ]
  %378 = phi i32 [ 0, %373 ], [ %406, %405 ]
  %379 = load i32, ptr %360, align 8, !tbaa !52
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %405

381:                                              ; preds = %375
  %382 = getelementptr inbounds i32, ptr %369, i64 %376
  br label %383

383:                                              ; preds = %381, %398
  %384 = phi i64 [ 0, %381 ], [ %401, %398 ]
  %385 = phi ptr [ %377, %381 ], [ %400, %398 ]
  %386 = phi i32 [ %378, %381 ], [ %399, %398 ]
  %387 = getelementptr inbounds %struct.BPoint, ptr %385, i64 0, i32 3
  %388 = load i16, ptr %387, align 4, !tbaa !64
  %389 = and i16 %388, 1
  %390 = icmp eq i16 %389, 0
  br i1 %390, label %398, label %391

391:                                              ; preds = %383
  %392 = getelementptr inbounds i32, ptr %364, i64 %384
  %393 = load i32, ptr %392, align 4, !tbaa !102
  %394 = add nsw i32 %393, 1
  store i32 %394, ptr %392, align 4, !tbaa !102
  %395 = load i32, ptr %382, align 4, !tbaa !102
  %396 = add nsw i32 %395, 1
  store i32 %396, ptr %382, align 4, !tbaa !102
  %397 = add nsw i32 %386, 1
  br label %398

398:                                              ; preds = %391, %383
  %399 = phi i32 [ %397, %391 ], [ %386, %383 ]
  %400 = getelementptr inbounds %struct.BPoint, ptr %385, i64 1
  %401 = add nuw nsw i64 %384, 1
  %402 = load i32, ptr %360, align 8, !tbaa !52
  %403 = sext i32 %402 to i64
  %404 = icmp slt i64 %401, %403
  br i1 %404, label %383, label %405, !llvm.loop !235

405:                                              ; preds = %398, %375
  %406 = phi i32 [ %378, %375 ], [ %399, %398 ]
  %407 = phi ptr [ %377, %375 ], [ %400, %398 ]
  %408 = add nuw nsw i64 %376, 1
  %409 = load i32, ptr %260, align 4, !tbaa !61
  %410 = sext i32 %409 to i64
  %411 = icmp slt i64 %408, %410
  br i1 %411, label %375, label %412, !llvm.loop !236

412:                                              ; preds = %405, %358
  %413 = phi i32 [ 0, %358 ], [ %406, %405 ]
  %414 = phi i32 [ %371, %358 ], [ %409, %405 ]
  %415 = load i32, ptr %360, align 8, !tbaa !52
  %416 = mul nsw i32 %415, %414
  %417 = icmp eq i32 %413, %416
  br i1 %417, label %423, label %418

418:                                              ; preds = %412
  %419 = icmp sgt i32 %414, 1
  br i1 %419, label %420, label %567

420:                                              ; preds = %418
  %421 = add nsw i32 %414, -1
  %422 = zext i32 %421 to i64
  br label %551

423:                                              ; preds = %412
  %424 = add nsw i32 %415, -1
  %425 = mul nsw i32 %424, %8
  %426 = add nsw i32 %425, %415
  %427 = mul nsw i32 %415, %24
  %428 = sub nsw i32 %427, %8
  %429 = mul nsw i32 %414, %24
  %430 = sub nsw i32 %429, %8
  %431 = mul nsw i32 %428, %430
  %432 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %433 = sext i32 %431 to i64
  %434 = mul nsw i64 %433, 36
  %435 = call ptr %432(i64 noundef %434, ptr noundef nonnull @.str.202) #19
  %436 = load i32, ptr %260, align 4, !tbaa !61
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %487

438:                                              ; preds = %423
  %439 = load ptr, ptr %370, align 8, !tbaa !62
  %440 = mul nsw i32 %426, %8
  %441 = sext i32 %440 to i64
  br label %442

442:                                              ; preds = %438, %480
  %443 = phi ptr [ %439, %438 ], [ %482, %480 ]
  %444 = phi i32 [ 0, %438 ], [ %484, %480 ]
  %445 = phi ptr [ %435, %438 ], [ %483, %480 ]
  %446 = load i32, ptr %360, align 8, !tbaa !52
  %447 = icmp sgt i32 %446, 0
  br i1 %447, label %448, label %480

448:                                              ; preds = %442, %475
  %449 = phi ptr [ %462, %475 ], [ %443, %442 ]
  %450 = phi i32 [ %477, %475 ], [ 0, %442 ]
  %451 = phi ptr [ %476, %475 ], [ %445, %442 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %451, ptr noundef nonnull align 4 dereferenceable(36) %449, i64 36, i1 false), !tbaa.struct !190
  %452 = load ptr, ptr %25, align 8, !tbaa !77
  %453 = icmp eq ptr %452, null
  br i1 %453, label %460, label %454

454:                                              ; preds = %448
  %455 = load ptr, ptr %25, align 8, !tbaa !77
  %456 = call ptr @BLI_ghash_popkey(ptr noundef %455, ptr noundef %449, ptr noundef null) #19
  %457 = icmp eq ptr %456, null
  br i1 %457, label %460, label %458

458:                                              ; preds = %454
  %459 = load ptr, ptr %25, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %459, ptr noundef %451, ptr noundef nonnull %456) #19
  br label %460

460:                                              ; preds = %458, %454, %448
  %461 = getelementptr inbounds %struct.BPoint, ptr %451, i64 1
  %462 = getelementptr inbounds %struct.BPoint, ptr %449, i64 1
  %463 = load i32, ptr %360, align 8, !tbaa !52
  %464 = add nsw i32 %463, -1
  %465 = icmp sge i32 %450, %464
  %466 = select i1 %465, i1 true, i1 %26
  br i1 %466, label %475, label %467

467:                                              ; preds = %460, %467
  %468 = phi i32 [ %470, %467 ], [ 0, %460 ]
  %469 = phi ptr [ %473, %467 ], [ %461, %460 ]
  %470 = add nuw nsw i32 %468, 1
  %471 = sitofp i32 %470 to float
  %472 = fdiv float %471, %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %469, ptr noundef nonnull align 4 dereferenceable(36) %462, i64 36, i1 false), !tbaa.struct !190
  call void @interp_v4_v4v4(ptr noundef nonnull %469, ptr noundef %449, ptr noundef nonnull %462, float noundef %472) #19
  %473 = getelementptr inbounds %struct.BPoint, ptr %469, i64 1
  %474 = icmp eq i32 %470, %8
  br i1 %474, label %475, label %467, !llvm.loop !237

475:                                              ; preds = %467, %460
  %476 = phi ptr [ %461, %460 ], [ %473, %467 ]
  %477 = add nuw nsw i32 %450, 1
  %478 = load i32, ptr %360, align 8, !tbaa !52
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %448, label %480, !llvm.loop !238

480:                                              ; preds = %475, %442
  %481 = phi ptr [ %445, %442 ], [ %476, %475 ]
  %482 = phi ptr [ %443, %442 ], [ %462, %475 ]
  %483 = getelementptr inbounds %struct.BPoint, ptr %481, i64 %441
  %484 = add nuw nsw i32 %444, 1
  %485 = load i32, ptr %260, align 4, !tbaa !61
  %486 = icmp slt i32 %484, %485
  br i1 %486, label %442, label %487, !llvm.loop !239

487:                                              ; preds = %480, %423
  %488 = load i32, ptr %260, align 4, !tbaa !61
  %489 = icmp sgt i32 %488, 1
  br i1 %489, label %490, label %542

490:                                              ; preds = %487
  %491 = load i32, ptr %360, align 8, !tbaa !52
  %492 = mul nsw i32 %491, %24
  %493 = sub nsw i32 %492, %8
  %494 = mul nsw i32 %493, %24
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.BPoint, ptr %435, i64 %495
  %497 = sext i32 %493 to i64
  %498 = getelementptr inbounds %struct.BPoint, ptr %435, i64 %497
  %499 = sext i32 %426 to i64
  %500 = mul nsw i32 %426, %8
  %501 = sext i32 %500 to i64
  br label %502

502:                                              ; preds = %490, %532
  %503 = phi ptr [ %496, %490 ], [ %536, %532 ]
  %504 = phi i32 [ 1, %490 ], [ %539, %532 ]
  %505 = phi ptr [ %498, %490 ], [ %537, %532 ]
  %506 = phi ptr [ %435, %490 ], [ %538, %532 ]
  %507 = load i32, ptr %360, align 8, !tbaa !52
  %508 = mul nsw i32 %507, %24
  %509 = icmp sgt i32 %508, %8
  br i1 %509, label %510, label %532

510:                                              ; preds = %502, %523
  %511 = phi ptr [ %524, %523 ], [ %503, %502 ]
  %512 = phi i32 [ %527, %523 ], [ 0, %502 ]
  %513 = phi ptr [ %526, %523 ], [ %505, %502 ]
  %514 = phi ptr [ %525, %523 ], [ %506, %502 ]
  br i1 %28, label %515, label %523

515:                                              ; preds = %510, %515
  %516 = phi ptr [ %521, %515 ], [ %513, %510 ]
  %517 = phi i32 [ %518, %515 ], [ 0, %510 ]
  %518 = add nuw nsw i32 %517, 1
  %519 = sitofp i32 %518 to float
  %520 = fdiv float %519, %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %516, ptr noundef nonnull align 4 dereferenceable(36) %511, i64 36, i1 false), !tbaa.struct !190
  call void @interp_v4_v4v4(ptr noundef %516, ptr noundef %514, ptr noundef %511, float noundef %520) #19
  %521 = getelementptr inbounds %struct.BPoint, ptr %516, i64 %499
  %522 = icmp eq i32 %518, %8
  br i1 %522, label %523, label %515, !llvm.loop !240

523:                                              ; preds = %515, %510
  %524 = getelementptr inbounds %struct.BPoint, ptr %511, i64 1
  %525 = getelementptr inbounds %struct.BPoint, ptr %514, i64 1
  %526 = getelementptr inbounds %struct.BPoint, ptr %513, i64 1
  %527 = add nuw nsw i32 %512, 1
  %528 = load i32, ptr %360, align 8, !tbaa !52
  %529 = mul nsw i32 %528, %24
  %530 = sub nsw i32 %529, %8
  %531 = icmp slt i32 %527, %530
  br i1 %531, label %510, label %532, !llvm.loop !241

532:                                              ; preds = %523, %502
  %533 = phi ptr [ %506, %502 ], [ %525, %523 ]
  %534 = phi ptr [ %505, %502 ], [ %526, %523 ]
  %535 = phi ptr [ %503, %502 ], [ %524, %523 ]
  %536 = getelementptr inbounds %struct.BPoint, ptr %535, i64 %501
  %537 = getelementptr inbounds %struct.BPoint, ptr %534, i64 %501
  %538 = getelementptr inbounds %struct.BPoint, ptr %533, i64 %501
  %539 = add nuw nsw i32 %504, 1
  %540 = load i32, ptr %260, align 4, !tbaa !61
  %541 = icmp slt i32 %539, %540
  br i1 %541, label %502, label %542, !llvm.loop !242

542:                                              ; preds = %532, %487
  %543 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %544 = load ptr, ptr %370, align 8, !tbaa !62
  call void %543(ptr noundef %544) #19
  store ptr %435, ptr %370, align 8, !tbaa !62
  %545 = load i32, ptr %360, align 8, !tbaa !52
  %546 = mul nsw i32 %545, %24
  %547 = sub nsw i32 %546, %8
  store i32 %547, ptr %360, align 8, !tbaa !52
  %548 = load i32, ptr %260, align 4, !tbaa !61
  %549 = mul nsw i32 %548, %24
  %550 = sub nsw i32 %549, %8
  store i32 %550, ptr %260, align 4, !tbaa !61
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %57) #19
  call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %57) #19
  br label %761

551:                                              ; preds = %420, %563
  %552 = phi i64 [ 0, %420 ], [ %565, %563 ]
  %553 = phi i32 [ 0, %420 ], [ %564, %563 ]
  %554 = getelementptr inbounds i32, ptr %369, i64 %552
  %555 = load i32, ptr %554, align 4, !tbaa !102
  %556 = icmp eq i32 %555, %415
  br i1 %556, label %557, label %563

557:                                              ; preds = %551
  %558 = getelementptr i32, ptr %554, i64 1
  %559 = load i32, ptr %558, align 4, !tbaa !102
  %560 = icmp eq i32 %559, %415
  %561 = select i1 %560, i32 %8, i32 0
  %562 = add nsw i32 %561, %553
  br label %563

563:                                              ; preds = %557, %551
  %564 = phi i32 [ %553, %551 ], [ %562, %557 ]
  %565 = add nuw nsw i64 %552, 1
  %566 = icmp eq i64 %565, %422
  br i1 %566, label %567, label %551, !llvm.loop !243

567:                                              ; preds = %563, %418
  %568 = phi i32 [ 0, %418 ], [ %564, %563 ]
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %575

570:                                              ; preds = %567
  %571 = icmp sgt i32 %415, 1
  br i1 %571, label %572, label %687

572:                                              ; preds = %570
  %573 = add nsw i32 %415, -1
  %574 = zext i32 %573 to i64
  br label %671

575:                                              ; preds = %567
  %576 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %577 = add nsw i32 %568, %414
  %578 = mul nsw i32 %577, %415
  %579 = sext i32 %578 to i64
  %580 = mul nsw i64 %579, 36
  %581 = call ptr %576(i64 noundef %580, ptr noundef nonnull @.str.202) #19
  %582 = load i32, ptr %260, align 4, !tbaa !61
  %583 = icmp sgt i32 %582, 0
  br i1 %583, label %584, label %666

584:                                              ; preds = %575
  %585 = load ptr, ptr %370, align 8, !tbaa !62
  br label %586

586:                                              ; preds = %584, %659
  %587 = phi i64 [ 0, %584 ], [ %662, %659 ]
  %588 = phi ptr [ %585, %584 ], [ %661, %659 ]
  %589 = phi ptr [ %581, %584 ], [ %660, %659 ]
  %590 = load i32, ptr %360, align 8, !tbaa !52
  %591 = icmp sgt i32 %590, 0
  br i1 %591, label %592, label %610

592:                                              ; preds = %586, %604
  %593 = phi ptr [ %606, %604 ], [ %588, %586 ]
  %594 = phi i32 [ %607, %604 ], [ 0, %586 ]
  %595 = phi ptr [ %605, %604 ], [ %589, %586 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %595, ptr noundef nonnull align 4 dereferenceable(36) %593, i64 36, i1 false), !tbaa.struct !190
  %596 = load ptr, ptr %16, align 8, !tbaa !77
  %597 = icmp eq ptr %596, null
  br i1 %597, label %604, label %598

598:                                              ; preds = %592
  %599 = load ptr, ptr %16, align 8, !tbaa !77
  %600 = call ptr @BLI_ghash_popkey(ptr noundef %599, ptr noundef %593, ptr noundef null) #19
  %601 = icmp eq ptr %600, null
  br i1 %601, label %604, label %602

602:                                              ; preds = %598
  %603 = load ptr, ptr %16, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %603, ptr noundef %595, ptr noundef nonnull %600) #19
  br label %604

604:                                              ; preds = %602, %598, %592
  %605 = getelementptr inbounds %struct.BPoint, ptr %595, i64 1
  %606 = getelementptr inbounds %struct.BPoint, ptr %593, i64 1
  %607 = add nuw nsw i32 %594, 1
  %608 = load i32, ptr %360, align 8, !tbaa !52
  %609 = icmp slt i32 %607, %608
  br i1 %609, label %592, label %610, !llvm.loop !244

610:                                              ; preds = %604, %586
  %611 = phi ptr [ %589, %586 ], [ %605, %604 ]
  %612 = phi ptr [ %588, %586 ], [ %606, %604 ]
  %613 = phi i32 [ %590, %586 ], [ %608, %604 ]
  %614 = load i32, ptr %260, align 4, !tbaa !61
  %615 = add nsw i32 %614, -1
  %616 = sext i32 %615 to i64
  %617 = icmp slt i64 %587, %616
  br i1 %617, label %618, label %659

618:                                              ; preds = %610
  %619 = getelementptr inbounds i32, ptr %369, i64 %587
  %620 = load i32, ptr %619, align 4, !tbaa !102
  %621 = icmp eq i32 %620, %613
  br i1 %621, label %622, label %659

622:                                              ; preds = %618
  %623 = getelementptr i32, ptr %619, i64 1
  %624 = load i32, ptr %623, align 4, !tbaa !102
  %625 = icmp ne i32 %624, %613
  %626 = select i1 %625, i1 true, i1 %17
  br i1 %626, label %659, label %627

627:                                              ; preds = %622, %651
  %628 = phi i32 [ %631, %651 ], [ 0, %622 ]
  %629 = phi ptr [ %657, %651 ], [ %612, %622 ]
  %630 = phi ptr [ %652, %651 ], [ %611, %622 ]
  %631 = add nuw nsw i32 %628, 1
  %632 = sitofp i32 %631 to float
  %633 = fdiv float %632, %19
  %634 = load i32, ptr %360, align 8, !tbaa !52
  %635 = icmp sgt i32 %634, 0
  br i1 %635, label %636, label %651

636:                                              ; preds = %627
  %637 = zext nneg i32 %634 to i64
  %638 = sub nsw i64 0, %637
  %639 = getelementptr inbounds %struct.BPoint, ptr %629, i64 %638
  br label %640

640:                                              ; preds = %636, %640
  %641 = phi ptr [ %647, %640 ], [ %629, %636 ]
  %642 = phi i32 [ %648, %640 ], [ 0, %636 ]
  %643 = phi ptr [ %645, %640 ], [ %630, %636 ]
  %644 = phi ptr [ %646, %640 ], [ %639, %636 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %643, ptr noundef nonnull align 4 dereferenceable(36) %644, i64 36, i1 false), !tbaa.struct !190
  call void @interp_v4_v4v4(ptr noundef %643, ptr noundef %644, ptr noundef %641, float noundef %633) #19
  %645 = getelementptr inbounds %struct.BPoint, ptr %643, i64 1
  %646 = getelementptr inbounds %struct.BPoint, ptr %644, i64 1
  %647 = getelementptr inbounds %struct.BPoint, ptr %641, i64 1
  %648 = add nuw nsw i32 %642, 1
  %649 = load i32, ptr %360, align 8, !tbaa !52
  %650 = icmp slt i32 %648, %649
  br i1 %650, label %640, label %651, !llvm.loop !245

651:                                              ; preds = %640, %627
  %652 = phi ptr [ %630, %627 ], [ %645, %640 ]
  %653 = phi ptr [ %629, %627 ], [ %647, %640 ]
  %654 = phi i32 [ %634, %627 ], [ %649, %640 ]
  %655 = sext i32 %654 to i64
  %656 = sub nsw i64 0, %655
  %657 = getelementptr inbounds %struct.BPoint, ptr %653, i64 %656
  %658 = icmp eq i32 %631, %8
  br i1 %658, label %659, label %627, !llvm.loop !246

659:                                              ; preds = %651, %622, %618, %610
  %660 = phi ptr [ %611, %622 ], [ %611, %618 ], [ %611, %610 ], [ %652, %651 ]
  %661 = phi ptr [ %612, %622 ], [ %612, %618 ], [ %612, %610 ], [ %657, %651 ]
  %662 = add nuw nsw i64 %587, 1
  %663 = load i32, ptr %260, align 4, !tbaa !61
  %664 = sext i32 %663 to i64
  %665 = icmp slt i64 %662, %664
  br i1 %665, label %586, label %666, !llvm.loop !247

666:                                              ; preds = %659, %575
  %667 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %668 = load ptr, ptr %370, align 8, !tbaa !62
  call void %667(ptr noundef %668) #19
  store ptr %581, ptr %370, align 8, !tbaa !62
  %669 = load i32, ptr %260, align 4, !tbaa !61
  %670 = add nsw i32 %669, %568
  store i32 %670, ptr %260, align 4, !tbaa !61
  call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %57) #19
  br label %761

671:                                              ; preds = %572, %683
  %672 = phi i64 [ 0, %572 ], [ %685, %683 ]
  %673 = phi i32 [ 0, %572 ], [ %684, %683 ]
  %674 = getelementptr inbounds i32, ptr %364, i64 %672
  %675 = load i32, ptr %674, align 4, !tbaa !102
  %676 = icmp eq i32 %675, %414
  br i1 %676, label %677, label %683

677:                                              ; preds = %671
  %678 = getelementptr i32, ptr %674, i64 1
  %679 = load i32, ptr %678, align 4, !tbaa !102
  %680 = icmp eq i32 %679, %414
  %681 = select i1 %680, i32 %8, i32 0
  %682 = add nsw i32 %681, %673
  br label %683

683:                                              ; preds = %677, %671
  %684 = phi i32 [ %673, %671 ], [ %682, %677 ]
  %685 = add nuw nsw i64 %672, 1
  %686 = icmp eq i64 %685, %574
  br i1 %686, label %687, label %671, !llvm.loop !248

687:                                              ; preds = %683, %570
  %688 = phi i32 [ 0, %570 ], [ %684, %683 ]
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %761, label %690

690:                                              ; preds = %687
  %691 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %692 = add nsw i32 %688, %415
  %693 = mul nsw i32 %692, %414
  %694 = sext i32 %693 to i64
  %695 = mul nsw i64 %694, 36
  %696 = call ptr %691(i64 noundef %695, ptr noundef nonnull @.str.202) #19
  %697 = load i32, ptr %260, align 4, !tbaa !61
  %698 = icmp sgt i32 %697, 0
  br i1 %698, label %699, label %756

699:                                              ; preds = %690
  %700 = load ptr, ptr %370, align 8, !tbaa !62
  br label %701

701:                                              ; preds = %699, %750
  %702 = phi ptr [ %752, %750 ], [ %700, %699 ]
  %703 = phi i32 [ %753, %750 ], [ 0, %699 ]
  %704 = phi ptr [ %751, %750 ], [ %696, %699 ]
  %705 = load i32, ptr %360, align 8, !tbaa !52
  %706 = icmp sgt i32 %705, 0
  br i1 %706, label %707, label %750

707:                                              ; preds = %701, %744
  %708 = phi i64 [ %746, %744 ], [ 0, %701 ]
  %709 = phi ptr [ %721, %744 ], [ %702, %701 ]
  %710 = phi ptr [ %745, %744 ], [ %704, %701 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %710, ptr noundef nonnull align 4 dereferenceable(36) %709, i64 36, i1 false), !tbaa.struct !190
  %711 = load ptr, ptr %20, align 8, !tbaa !77
  %712 = icmp eq ptr %711, null
  br i1 %712, label %719, label %713

713:                                              ; preds = %707
  %714 = load ptr, ptr %20, align 8, !tbaa !77
  %715 = call ptr @BLI_ghash_popkey(ptr noundef %714, ptr noundef %709, ptr noundef null) #19
  %716 = icmp eq ptr %715, null
  br i1 %716, label %719, label %717

717:                                              ; preds = %713
  %718 = load ptr, ptr %20, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %718, ptr noundef %710, ptr noundef nonnull %715) #19
  br label %719

719:                                              ; preds = %717, %713, %707
  %720 = getelementptr inbounds %struct.BPoint, ptr %710, i64 1
  %721 = getelementptr inbounds %struct.BPoint, ptr %709, i64 1
  %722 = load i32, ptr %360, align 8, !tbaa !52
  %723 = add nsw i32 %722, -1
  %724 = sext i32 %723 to i64
  %725 = icmp slt i64 %708, %724
  br i1 %725, label %726, label %744

726:                                              ; preds = %719
  %727 = getelementptr inbounds i32, ptr %364, i64 %708
  %728 = load i32, ptr %727, align 4, !tbaa !102
  %729 = load i32, ptr %260, align 4, !tbaa !61
  %730 = icmp eq i32 %728, %729
  br i1 %730, label %731, label %744

731:                                              ; preds = %726
  %732 = getelementptr i32, ptr %727, i64 1
  %733 = load i32, ptr %732, align 4, !tbaa !102
  %734 = icmp ne i32 %733, %729
  %735 = select i1 %734, i1 true, i1 %21
  br i1 %735, label %744, label %736

736:                                              ; preds = %731, %736
  %737 = phi i32 [ %739, %736 ], [ 0, %731 ]
  %738 = phi ptr [ %742, %736 ], [ %720, %731 ]
  %739 = add nuw nsw i32 %737, 1
  %740 = sitofp i32 %739 to float
  %741 = fdiv float %740, %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %738, ptr noundef nonnull align 4 dereferenceable(36) %709, i64 36, i1 false), !tbaa.struct !190
  call void @interp_v4_v4v4(ptr noundef nonnull %738, ptr noundef %709, ptr noundef nonnull %721, float noundef %741) #19
  %742 = getelementptr inbounds %struct.BPoint, ptr %738, i64 1
  %743 = icmp eq i32 %739, %8
  br i1 %743, label %744, label %736, !llvm.loop !249

744:                                              ; preds = %736, %731, %726, %719
  %745 = phi ptr [ %720, %731 ], [ %720, %726 ], [ %720, %719 ], [ %742, %736 ]
  %746 = add nuw nsw i64 %708, 1
  %747 = load i32, ptr %360, align 8, !tbaa !52
  %748 = sext i32 %747 to i64
  %749 = icmp slt i64 %746, %748
  br i1 %749, label %707, label %750, !llvm.loop !250

750:                                              ; preds = %744, %701
  %751 = phi ptr [ %704, %701 ], [ %745, %744 ]
  %752 = phi ptr [ %702, %701 ], [ %721, %744 ]
  %753 = add nuw nsw i32 %703, 1
  %754 = load i32, ptr %260, align 4, !tbaa !61
  %755 = icmp slt i32 %753, %754
  br i1 %755, label %701, label %756, !llvm.loop !251

756:                                              ; preds = %750, %690
  %757 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %758 = load ptr, ptr %370, align 8, !tbaa !62
  call void %757(ptr noundef %758) #19
  store ptr %696, ptr %370, align 8, !tbaa !62
  %759 = load i32, ptr %360, align 8, !tbaa !52
  %760 = add nsw i32 %759, %688
  store i32 %760, ptr %360, align 8, !tbaa !52
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %57) #19
  br label %761

761:                                              ; preds = %756, %687, %666, %542
  %762 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  call void %762(ptr noundef %364) #19
  %763 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  call void %763(ptr noundef %369) #19
  br label %764

764:                                              ; preds = %761, %356, %355, %347, %293, %254, %118
  %765 = load ptr, ptr %57, align 8, !tbaa !66
  %766 = icmp eq ptr %765, null
  br i1 %766, label %767, label %56, !llvm.loop !252

767:                                              ; preds = %764, %2
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #19
  %768 = load ptr, ptr %9, align 8, !tbaa !46
  %769 = call ptr @BKE_animdata_from_id(ptr noundef %768) #19
  %770 = getelementptr inbounds %struct.Curve, ptr %768, i64 0, i32 4
  %771 = load ptr, ptr %770, align 8, !tbaa !47
  %772 = getelementptr inbounds %struct.EditNurb, ptr %771, i64 0, i32 1
  %773 = load ptr, ptr %772, align 8, !tbaa !77
  %774 = icmp eq ptr %773, null
  br i1 %774, label %792, label %775

775:                                              ; preds = %767
  %776 = call ptr @BKE_animdata_from_id(ptr noundef %768) #19
  %777 = icmp eq ptr %776, null
  br i1 %777, label %792, label %778

778:                                              ; preds = %775
  %779 = load ptr, ptr %776, align 8, !tbaa !79
  %780 = icmp eq ptr %779, null
  br i1 %780, label %781, label %785

781:                                              ; preds = %778
  %782 = getelementptr inbounds %struct.AnimData, ptr %776, i64 0, i32 5
  %783 = load ptr, ptr %782, align 8, !tbaa !81
  %784 = icmp eq ptr %783, null
  br i1 %784, label %792, label %785

785:                                              ; preds = %781, %778
  %786 = load ptr, ptr %769, align 8, !tbaa !79
  %787 = icmp eq ptr %786, null
  br i1 %787, label %790, label %788

788:                                              ; preds = %785
  %789 = getelementptr inbounds %struct.bAction, ptr %786, i64 0, i32 1
  call fastcc void @curve_rename_fcurves(ptr noundef %768, ptr noundef nonnull %789)
  br label %790

790:                                              ; preds = %788, %785
  %791 = getelementptr inbounds %struct.AnimData, ptr %769, i64 0, i32 5
  call fastcc void @curve_rename_fcurves(ptr noundef %768, ptr noundef nonnull %791)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef %5) #19
  br label %792

792:                                              ; preds = %781, %775, %767, %790
  %793 = load ptr, ptr %9, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %793) #19
  %794 = load ptr, ptr %9, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %794, i16 noundef signext 0) #19
  ret i32 4
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_spline_type_set(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.65, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.66, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_spline_type_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.67, ptr noundef nonnull @CURVE_OT_spline_type_set.type_items, i32 noundef 0, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #19
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !253
  %12 = load ptr, ptr %8, align 8, !tbaa !199
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_spline_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.70) #19
  %20 = trunc i32 %19 to i8
  %21 = load ptr, ptr %17, align 8, !tbaa !200
  %22 = tail call i32 @RNA_enum_get(ptr noundef %21, ptr noundef nonnull @.str.67) #19
  %23 = and i32 %22, -2
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %31, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr %16, align 8, !tbaa !66
  %27 = icmp eq ptr %26, null
  br i1 %27, label %107, label %28

28:                                               ; preds = %25
  %29 = trunc i32 %22 to i16
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %34

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !175
  tail call void @BKE_report(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.203) #19
  br label %142

34:                                               ; preds = %28, %99
  %35 = phi ptr [ %26, %28 ], [ %102, %99 ]
  %36 = phi i8 [ 0, %28 ], [ %101, %99 ]
  %37 = phi i8 [ 0, %28 ], [ %100, %99 ]
  %38 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !50
  %40 = icmp eq i16 %39, 1
  %41 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !52
  br i1 %40, label %43, label %69

43:                                               ; preds = %34
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %99, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 18
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  br label %51

48:                                               ; preds = %64
  %49 = getelementptr inbounds %struct.BezTriple, ptr %53, i64 1
  %50 = icmp eq i32 %54, 0
  br i1 %50, label %99, label %51, !llvm.loop !54

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %54, %48 ], [ %42, %45 ]
  %53 = phi ptr [ %49, %48 ], [ %47, %45 ]
  %54 = add nsw i32 %52, -1
  %55 = getelementptr inbounds %struct.BezTriple, ptr %53, i64 0, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !57
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.BezTriple, ptr %53, i64 0, i32 8
  %61 = load i8, ptr %60, align 4, !tbaa !59
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.BezTriple, ptr %53, i64 0, i32 9
  %66 = load i8, ptr %65, align 1, !tbaa !60
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %48, label %88

69:                                               ; preds = %34
  %70 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 7
  %71 = load i32, ptr %70, align 4, !tbaa !61
  %72 = mul nsw i32 %71, %42
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  br label %81

77:                                               ; preds = %81
  %78 = add nsw i32 %82, -1
  %79 = getelementptr inbounds %struct.BPoint, ptr %83, i64 1
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %99, label %81, !llvm.loop !63

81:                                               ; preds = %77, %74
  %82 = phi i32 [ %78, %77 ], [ %72, %74 ]
  %83 = phi ptr [ %79, %77 ], [ %76, %74 ]
  %84 = getelementptr inbounds %struct.BPoint, ptr %83, i64 0, i32 3
  %85 = load i16, ptr %84, align 4, !tbaa !64
  %86 = and i16 %85, 1
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %77, label %88

88:                                               ; preds = %81, %64, %59, %51
  %89 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !52
  %91 = tail call zeroext i8 @BKE_nurb_type_convert(ptr noundef nonnull %35, i16 noundef signext %29, i8 noundef zeroext %20) #19
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load i32, ptr %89, align 8, !tbaa !52
  %95 = icmp eq i32 %90, %94
  %96 = select i1 %95, i8 %37, i8 1
  br label %99

97:                                               ; preds = %88
  %98 = load ptr, ptr %30, align 8, !tbaa !175
  tail call void @BKE_report(ptr noundef %98, i32 noundef 32, ptr noundef nonnull @.str.204) #19
  br label %99

99:                                               ; preds = %77, %48, %43, %69, %93, %97
  %100 = phi i8 [ %37, %97 ], [ %96, %93 ], [ %37, %69 ], [ %37, %43 ], [ %37, %48 ], [ %37, %77 ]
  %101 = phi i8 [ %36, %97 ], [ 1, %93 ], [ %36, %69 ], [ %36, %43 ], [ %36, %48 ], [ %36, %77 ]
  %102 = load ptr, ptr %35, align 8, !tbaa !66
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %34, !llvm.loop !254

104:                                              ; preds = %99
  %105 = icmp eq i8 %101, 0
  %106 = icmp eq i8 %100, 0
  br label %107

107:                                              ; preds = %104, %25
  %108 = phi i1 [ true, %25 ], [ %106, %104 ]
  %109 = phi i1 [ true, %25 ], [ %105, %104 ]
  br i1 %109, label %142, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = tail call ptr @BKE_animdata_from_id(ptr noundef %112) #19
  %114 = getelementptr inbounds %struct.Curve, ptr %112, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !47
  %116 = getelementptr inbounds %struct.EditNurb, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !77
  %118 = icmp eq ptr %117, null
  br i1 %118, label %136, label %119

119:                                              ; preds = %110
  %120 = tail call ptr @BKE_animdata_from_id(ptr noundef %112) #19
  %121 = icmp eq ptr %120, null
  br i1 %121, label %136, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %120, align 8, !tbaa !79
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.AnimData, ptr %120, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !81
  %128 = icmp eq ptr %127, null
  br i1 %128, label %136, label %129

129:                                              ; preds = %125, %122
  %130 = load ptr, ptr %113, align 8, !tbaa !79
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.bAction, ptr %130, i64 0, i32 1
  tail call fastcc void @curve_rename_fcurves(ptr noundef %112, ptr noundef nonnull %133)
  br label %134

134:                                              ; preds = %132, %129
  %135 = getelementptr inbounds %struct.AnimData, ptr %113, i64 0, i32 5
  tail call fastcc void @curve_rename_fcurves(ptr noundef %112, ptr noundef nonnull %135)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef %3) #19
  br label %136

136:                                              ; preds = %125, %119, %110, %134
  %137 = load ptr, ptr %111, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %137, i16 noundef signext 0) #19
  %138 = load ptr, ptr %111, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %138) #19
  br i1 %108, label %142, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %111, align 8, !tbaa !46
  %141 = getelementptr inbounds %struct.Curve, ptr %140, i64 0, i32 32
  store i32 -1, ptr %141, align 8, !tbaa !196
  br label %142

142:                                              ; preds = %107, %136, %139, %31
  %143 = phi i32 [ 2, %31 ], [ 4, %139 ], [ 4, %136 ], [ 2, %107 ]
  ret i32 %143
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #6

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_handle_type_set(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.83, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.84, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.85, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !198
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_handle_type_exec, ptr %5, align 8, !tbaa !170
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.67, ptr noundef nonnull @CURVE_OT_handle_type_set.editcurve_handle_type_items, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #19
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !253
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_handle_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.67) #19
  %20 = trunc i32 %19 to i8
  tail call void @BKE_nurbList_handles_set(ptr noundef %16, i8 noundef zeroext %20) #19
  %21 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %22) #19
  %23 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %23, i16 noundef signext 0) #19
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_normals_make_consistent(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.86, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.88, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_normals_make_consistent_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @curve_normals_make_consistent_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.89) #19
  %20 = trunc i32 %19 to i8
  tail call void @BKE_nurbList_handles_recalculate(ptr noundef %16, i8 noundef zeroext %20, i8 noundef zeroext 1) #19
  %21 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %22) #19
  %23 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %23, i16 noundef signext 0) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_make_segment(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.93, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.94, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_segment_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_segment_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %4, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !34
  %11 = and i16 %10, -2
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %2, %8, %13
  %17 = phi ptr [ %15, %13 ], [ null, %8 ], [ null, %2 ]
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !34
  %20 = icmp eq i16 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !89
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ null, %16 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 16
  %28 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 16
  br label %31

29:                                               ; preds = %227, %23
  %30 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 16
  br label %902

31:                                               ; preds = %26, %227
  %32 = phi ptr [ %24, %26 ], [ %228, %227 ]
  %33 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !50
  %35 = icmp eq i16 %34, 1
  %36 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !52
  br i1 %35, label %38, label %64

38:                                               ; preds = %31
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %227, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !53
  br label %46

43:                                               ; preds = %59
  %44 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 1
  %45 = icmp eq i32 %49, 0
  br i1 %45, label %227, label %46, !llvm.loop !54

46:                                               ; preds = %43, %40
  %47 = phi i32 [ %49, %43 ], [ %37, %40 ]
  %48 = phi ptr [ %44, %43 ], [ %42, %40 ]
  %49 = add nsw i32 %47, -1
  %50 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 7
  %51 = load i8, ptr %50, align 1, !tbaa !57
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 8
  %56 = load i8, ptr %55, align 4, !tbaa !59
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 9
  %61 = load i8, ptr %60, align 1, !tbaa !60
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %43, label %83

64:                                               ; preds = %31
  %65 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !61
  %67 = mul nsw i32 %66, %37
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %227, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  br label %76

72:                                               ; preds = %76
  %73 = add nsw i32 %77, -1
  %74 = getelementptr inbounds %struct.BPoint, ptr %78, i64 1
  %75 = icmp eq i32 %73, 0
  br i1 %75, label %227, label %76, !llvm.loop !63

76:                                               ; preds = %72, %69
  %77 = phi i32 [ %73, %72 ], [ %67, %69 ]
  %78 = phi ptr [ %74, %72 ], [ %71, %69 ]
  %79 = getelementptr inbounds %struct.BPoint, ptr %78, i64 0, i32 3
  %80 = load i16, ptr %79, align 4, !tbaa !64
  %81 = and i16 %80, 1
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %72, label %83

83:                                               ; preds = %76, %59, %54, %46
  %84 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !52
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 7
  %89 = load i32, ptr %88, align 4, !tbaa !61
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %230, label %91

91:                                               ; preds = %87, %83
  br i1 %35, label %92, label %127

92:                                               ; preds = %91
  %93 = icmp eq i32 %85, 0
  br i1 %93, label %147, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 18
  %96 = load ptr, ptr %95, align 8, !tbaa !53
  %97 = load i16, ptr %27, align 8, !tbaa !221
  %98 = and i16 %97, 1
  %99 = icmp eq i16 %98, 0
  br label %100

100:                                              ; preds = %123, %94
  %101 = phi i32 [ %85, %94 ], [ %104, %123 ]
  %102 = phi i32 [ 0, %94 ], [ %124, %123 ]
  %103 = phi ptr [ %96, %94 ], [ %125, %123 ]
  %104 = add nsw i32 %101, -1
  %105 = getelementptr inbounds %struct.BezTriple, ptr %103, i64 0, i32 8
  %106 = load i8, ptr %105, align 4, !tbaa !59
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  br i1 %99, label %110, label %109

109:                                              ; preds = %100
  br i1 %108, label %123, label %121

110:                                              ; preds = %100
  br i1 %108, label %111, label %121

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.BezTriple, ptr %103, i64 0, i32 7
  %113 = load i8, ptr %112, align 1, !tbaa !57
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.BezTriple, ptr %103, i64 0, i32 9
  %118 = load i8, ptr %117, align 1, !tbaa !60
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116, %111, %110, %109
  %122 = add nsw i32 %102, 1
  br label %123

123:                                              ; preds = %121, %116, %109
  %124 = phi i32 [ %122, %121 ], [ %102, %109 ], [ %102, %116 ]
  %125 = getelementptr inbounds %struct.BezTriple, ptr %103, i64 1
  %126 = icmp eq i32 %104, 0
  br i1 %126, label %147, label %100, !llvm.loop !255

127:                                              ; preds = %91
  %128 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 7
  %129 = load i32, ptr %128, align 4, !tbaa !61
  %130 = mul nsw i32 %129, %85
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 17
  %134 = load ptr, ptr %133, align 8, !tbaa !62
  br label %135

135:                                              ; preds = %135, %132
  %136 = phi i32 [ %144, %135 ], [ 0, %132 ]
  %137 = phi i32 [ %139, %135 ], [ %130, %132 ]
  %138 = phi ptr [ %145, %135 ], [ %134, %132 ]
  %139 = add nsw i32 %137, -1
  %140 = getelementptr inbounds %struct.BPoint, ptr %138, i64 0, i32 3
  %141 = load i16, ptr %140, align 4, !tbaa !64
  %142 = and i16 %141, 1
  %143 = zext nneg i16 %142 to i32
  %144 = add i32 %136, %143
  %145 = getelementptr inbounds %struct.BPoint, ptr %138, i64 1
  %146 = icmp eq i32 %139, 0
  br i1 %146, label %147, label %135, !llvm.loop !256

147:                                              ; preds = %135, %123, %92, %127
  %148 = phi i32 [ 0, %92 ], [ 0, %127 ], [ %124, %123 ], [ %144, %135 ]
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %230, label %150

150:                                              ; preds = %147
  br i1 %35, label %151, label %186

151:                                              ; preds = %150
  %152 = icmp eq i32 %85, 0
  br i1 %152, label %206, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 18
  %155 = load ptr, ptr %154, align 8, !tbaa !53
  %156 = load i16, ptr %28, align 8, !tbaa !221
  %157 = and i16 %156, 1
  %158 = icmp eq i16 %157, 0
  br label %159

159:                                              ; preds = %182, %153
  %160 = phi i32 [ %85, %153 ], [ %163, %182 ]
  %161 = phi i32 [ 0, %153 ], [ %183, %182 ]
  %162 = phi ptr [ %155, %153 ], [ %184, %182 ]
  %163 = add nsw i32 %160, -1
  %164 = getelementptr inbounds %struct.BezTriple, ptr %162, i64 0, i32 8
  %165 = load i8, ptr %164, align 4, !tbaa !59
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  br i1 %158, label %169, label %168

168:                                              ; preds = %159
  br i1 %167, label %182, label %180

169:                                              ; preds = %159
  br i1 %167, label %170, label %180

170:                                              ; preds = %169
  %171 = getelementptr inbounds %struct.BezTriple, ptr %162, i64 0, i32 7
  %172 = load i8, ptr %171, align 1, !tbaa !57
  %173 = and i8 %172, 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.BezTriple, ptr %162, i64 0, i32 9
  %177 = load i8, ptr %176, align 1, !tbaa !60
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %175, %170, %169, %168
  %181 = add nsw i32 %161, 1
  br label %182

182:                                              ; preds = %180, %175, %168
  %183 = phi i32 [ %181, %180 ], [ %161, %168 ], [ %161, %175 ]
  %184 = getelementptr inbounds %struct.BezTriple, ptr %162, i64 1
  %185 = icmp eq i32 %163, 0
  br i1 %185, label %206, label %159, !llvm.loop !255

186:                                              ; preds = %150
  %187 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 7
  %188 = load i32, ptr %187, align 4, !tbaa !61
  %189 = mul nsw i32 %188, %85
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %206, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 17
  %193 = load ptr, ptr %192, align 8, !tbaa !62
  br label %194

194:                                              ; preds = %194, %191
  %195 = phi i32 [ %203, %194 ], [ 0, %191 ]
  %196 = phi i32 [ %198, %194 ], [ %189, %191 ]
  %197 = phi ptr [ %204, %194 ], [ %193, %191 ]
  %198 = add nsw i32 %196, -1
  %199 = getelementptr inbounds %struct.BPoint, ptr %197, i64 0, i32 3
  %200 = load i16, ptr %199, align 4, !tbaa !64
  %201 = and i16 %200, 1
  %202 = zext nneg i16 %201 to i32
  %203 = add i32 %195, %202
  %204 = getelementptr inbounds %struct.BPoint, ptr %197, i64 1
  %205 = icmp eq i32 %198, 0
  br i1 %205, label %206, label %194, !llvm.loop !256

206:                                              ; preds = %194, %182, %151, %186
  %207 = phi i32 [ 0, %151 ], [ 0, %186 ], [ %183, %182 ], [ %203, %194 ]
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %227

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 7
  %211 = load i32, ptr %210, align 4, !tbaa !61
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %227

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 17
  %215 = load ptr, ptr %214, align 8, !tbaa !62
  %216 = getelementptr inbounds %struct.BPoint, ptr %215, i64 0, i32 3
  %217 = load i16, ptr %216, align 4, !tbaa !64
  %218 = and i16 %217, 1
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %213
  %221 = sext i32 %85 to i64
  %222 = getelementptr %struct.BPoint, ptr %215, i64 %221
  %223 = getelementptr %struct.BPoint, ptr %222, i64 -1, i32 3
  %224 = load i16, ptr %223, align 4, !tbaa !64
  %225 = and i16 %224, 1
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %72, %43, %38, %64, %206, %220, %213, %209
  %228 = load ptr, ptr %32, align 8, !tbaa !152
  %229 = icmp eq ptr %228, null
  br i1 %229, label %29, label %31, !llvm.loop !257

230:                                              ; preds = %87, %147, %220
  %231 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %232 = getelementptr inbounds %struct.Object, ptr %231, i64 0, i32 19
  %233 = load ptr, ptr %232, align 8, !tbaa !46
  %234 = icmp ne ptr %231, null
  tail call void @llvm.assume(i1 %234)
  %235 = getelementptr inbounds %struct.Object, ptr %231, i64 0, i32 3
  %236 = load i16, ptr %235, align 8, !tbaa !34
  %237 = and i16 %236, -2
  %238 = icmp eq i16 %237, 2
  tail call void @llvm.assume(i1 %238)
  %239 = getelementptr inbounds %struct.Curve, ptr %233, i64 0, i32 4
  %240 = load ptr, ptr %239, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %241 = load ptr, ptr %240, align 8, !tbaa !66
  %242 = icmp eq ptr %241, null
  br i1 %242, label %343, label %243

243:                                              ; preds = %230, %340
  %244 = phi ptr [ %341, %340 ], [ %241, %230 ]
  %245 = getelementptr inbounds %struct.Nurb, ptr %244, i64 0, i32 2
  %246 = load i16, ptr %245, align 8, !tbaa !50
  %247 = icmp eq i16 %246, 1
  %248 = getelementptr inbounds %struct.Nurb, ptr %244, i64 0, i32 6
  %249 = load i32, ptr %248, align 8, !tbaa !52
  br i1 %247, label %250, label %276

250:                                              ; preds = %243
  %251 = icmp eq i32 %249, 0
  br i1 %251, label %340, label %252

252:                                              ; preds = %250
  %253 = getelementptr inbounds %struct.Nurb, ptr %244, i64 0, i32 18
  %254 = load ptr, ptr %253, align 8, !tbaa !53
  br label %258

255:                                              ; preds = %271
  %256 = getelementptr inbounds %struct.BezTriple, ptr %260, i64 1
  %257 = icmp eq i32 %261, 0
  br i1 %257, label %340, label %258, !llvm.loop !54

258:                                              ; preds = %255, %252
  %259 = phi i32 [ %261, %255 ], [ %249, %252 ]
  %260 = phi ptr [ %256, %255 ], [ %254, %252 ]
  %261 = add nsw i32 %259, -1
  %262 = getelementptr inbounds %struct.BezTriple, ptr %260, i64 0, i32 7
  %263 = load i8, ptr %262, align 1, !tbaa !57
  %264 = and i8 %263, 1
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %295

266:                                              ; preds = %258
  %267 = getelementptr inbounds %struct.BezTriple, ptr %260, i64 0, i32 8
  %268 = load i8, ptr %267, align 4, !tbaa !59
  %269 = and i8 %268, 1
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %295

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.BezTriple, ptr %260, i64 0, i32 9
  %273 = load i8, ptr %272, align 1, !tbaa !60
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %255, label %295

276:                                              ; preds = %243
  %277 = getelementptr inbounds %struct.Nurb, ptr %244, i64 0, i32 7
  %278 = load i32, ptr %277, align 4, !tbaa !61
  %279 = mul nsw i32 %278, %249
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %340, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.Nurb, ptr %244, i64 0, i32 17
  %283 = load ptr, ptr %282, align 8, !tbaa !62
  br label %288

284:                                              ; preds = %288
  %285 = add nsw i32 %289, -1
  %286 = getelementptr inbounds %struct.BPoint, ptr %290, i64 1
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %340, label %288, !llvm.loop !63

288:                                              ; preds = %284, %281
  %289 = phi i32 [ %285, %284 ], [ %279, %281 ]
  %290 = phi ptr [ %286, %284 ], [ %283, %281 ]
  %291 = getelementptr inbounds %struct.BPoint, ptr %290, i64 0, i32 3
  %292 = load i16, ptr %291, align 4, !tbaa !64
  %293 = and i16 %292, 1
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %284, label %295

295:                                              ; preds = %288, %271, %266, %258
  %296 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %297 = call ptr %296(i64 noundef 40, ptr noundef nonnull @.str.210) #19
  call void @BLI_addhead(ptr noundef nonnull %3, ptr noundef %297) #19
  %298 = getelementptr inbounds %struct.NurbSort, ptr %297, i64 0, i32 2
  store ptr %244, ptr %298, align 8, !tbaa !258
  %299 = getelementptr inbounds %struct.Nurb, ptr %244, i64 0, i32 6
  %300 = load i32, ptr %299, align 8, !tbaa !52
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %328, label %302

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.Nurb, ptr %244, i64 0, i32 17
  %304 = load ptr, ptr %303, align 8, !tbaa !62
  %305 = getelementptr inbounds %struct.NurbSort, ptr %297, i64 0, i32 3
  %306 = getelementptr inbounds %struct.NurbSort, ptr %297, i64 0, i32 3, i64 1
  %307 = getelementptr inbounds %struct.NurbSort, ptr %297, i64 0, i32 3, i64 2
  %308 = load float, ptr %305, align 4, !tbaa !70
  %309 = load float, ptr %306, align 4, !tbaa !70
  %310 = load float, ptr %307, align 4, !tbaa !70
  br label %311

311:                                              ; preds = %302, %311
  %312 = phi float [ %310, %302 ], [ %325, %311 ]
  %313 = phi float [ %309, %302 ], [ %322, %311 ]
  %314 = phi float [ %308, %302 ], [ %319, %311 ]
  %315 = phi i32 [ %300, %302 ], [ %317, %311 ]
  %316 = phi ptr [ %304, %302 ], [ %326, %311 ]
  %317 = add nsw i32 %315, -1
  %318 = load float, ptr %316, align 4, !tbaa !70
  %319 = fadd float %318, %314
  store float %319, ptr %305, align 4, !tbaa !70
  %320 = getelementptr inbounds float, ptr %316, i64 1
  %321 = load float, ptr %320, align 4, !tbaa !70
  %322 = fadd float %321, %313
  store float %322, ptr %306, align 4, !tbaa !70
  %323 = getelementptr inbounds float, ptr %316, i64 2
  %324 = load float, ptr %323, align 4, !tbaa !70
  %325 = fadd float %324, %312
  store float %325, ptr %307, align 4, !tbaa !70
  %326 = getelementptr inbounds %struct.BPoint, ptr %316, i64 1
  %327 = icmp eq i32 %317, 0
  br i1 %327, label %328, label %311, !llvm.loop !260

328:                                              ; preds = %311, %295
  %329 = getelementptr inbounds %struct.NurbSort, ptr %297, i64 0, i32 3
  %330 = sitofp i32 %300 to float
  %331 = fdiv float 1.000000e+00, %330
  %332 = load float, ptr %329, align 4, !tbaa !70
  %333 = fmul float %331, %332
  store float %333, ptr %329, align 4, !tbaa !70
  %334 = getelementptr inbounds %struct.NurbSort, ptr %297, i64 0, i32 3, i64 1
  %335 = load float, ptr %334, align 4, !tbaa !70
  %336 = fmul float %331, %335
  store float %336, ptr %334, align 4, !tbaa !70
  %337 = getelementptr inbounds %struct.NurbSort, ptr %297, i64 0, i32 3, i64 2
  %338 = load float, ptr %337, align 4, !tbaa !70
  %339 = fmul float %331, %338
  store float %339, ptr %337, align 4, !tbaa !70
  br label %340

340:                                              ; preds = %284, %255, %250, %276, %328
  %341 = load ptr, ptr %244, align 8, !tbaa !66
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %243, !llvm.loop !261

343:                                              ; preds = %340, %230
  %344 = load ptr, ptr %3, align 8, !tbaa !89
  call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %344) #19
  call void @BLI_addtail(ptr noundef nonnull @nsortbase, ptr noundef %344) #19
  %345 = load ptr, ptr %3, align 8, !tbaa !89
  %346 = icmp eq ptr %345, null
  br i1 %346, label %411, label %347

347:                                              ; preds = %343, %398
  %348 = phi float [ %399, %398 ], [ 0x46293E5940000000, %343 ]
  %349 = phi float [ %400, %398 ], [ 0x46293E5940000000, %343 ]
  %350 = phi ptr [ %401, %398 ], [ null, %343 ]
  %351 = phi ptr [ %402, %398 ], [ null, %343 ]
  %352 = phi ptr [ %403, %398 ], [ %345, %343 ]
  %353 = getelementptr inbounds %struct.NurbSort, ptr %352, i64 0, i32 3
  %354 = load ptr, ptr @nsortbase, align 8, !tbaa !89
  %355 = getelementptr inbounds %struct.NurbSort, ptr %354, i64 0, i32 3
  %356 = load float, ptr %355, align 4, !tbaa !70
  %357 = load float, ptr %353, align 4, !tbaa !70
  %358 = fsub float %356, %357
  %359 = getelementptr inbounds %struct.NurbSort, ptr %354, i64 0, i32 3, i64 1
  %360 = load float, ptr %359, align 4, !tbaa !70
  %361 = getelementptr inbounds %struct.NurbSort, ptr %352, i64 0, i32 3, i64 1
  %362 = load float, ptr %361, align 4, !tbaa !70
  %363 = fsub float %360, %362
  %364 = getelementptr inbounds %struct.NurbSort, ptr %354, i64 0, i32 3, i64 2
  %365 = load float, ptr %364, align 4, !tbaa !70
  %366 = getelementptr inbounds %struct.NurbSort, ptr %352, i64 0, i32 3, i64 2
  %367 = load float, ptr %366, align 4, !tbaa !70
  %368 = fsub float %365, %367
  %369 = fmul float %363, %363
  %370 = call float @llvm.fmuladd.f32(float %358, float %358, float %369)
  %371 = call float @llvm.fmuladd.f32(float %368, float %368, float %370)
  %372 = call float @sqrtf(float noundef %371) #19
  %373 = fcmp olt float %372, %349
  %374 = select i1 %373, ptr %352, ptr %351
  %375 = select i1 %373, float %372, float %349
  %376 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @nsortbase, i64 0, i32 1), align 8, !tbaa !262
  %377 = getelementptr inbounds %struct.NurbSort, ptr %376, i64 0, i32 3
  %378 = load float, ptr %377, align 4, !tbaa !70
  %379 = load float, ptr %353, align 4, !tbaa !70
  %380 = fsub float %378, %379
  %381 = getelementptr inbounds %struct.NurbSort, ptr %376, i64 0, i32 3, i64 1
  %382 = load float, ptr %381, align 4, !tbaa !70
  %383 = load float, ptr %361, align 4, !tbaa !70
  %384 = fsub float %382, %383
  %385 = getelementptr inbounds %struct.NurbSort, ptr %376, i64 0, i32 3, i64 2
  %386 = load float, ptr %385, align 4, !tbaa !70
  %387 = load float, ptr %366, align 4, !tbaa !70
  %388 = fsub float %386, %387
  %389 = fmul float %384, %384
  %390 = call float @llvm.fmuladd.f32(float %380, float %380, float %389)
  %391 = call float @llvm.fmuladd.f32(float %388, float %388, float %390)
  %392 = call float @sqrtf(float noundef %391) #19
  %393 = fcmp olt float %392, %348
  %394 = select i1 %393, ptr %352, ptr %350
  %395 = select i1 %393, float %392, float %348
  %396 = load ptr, ptr %352, align 8, !tbaa !263
  %397 = icmp eq ptr %396, null
  br i1 %397, label %404, label %398

398:                                              ; preds = %347, %408
  %399 = phi float [ %395, %347 ], [ 0x46293E5940000000, %408 ]
  %400 = phi float [ %375, %347 ], [ 0x46293E5940000000, %408 ]
  %401 = phi ptr [ %394, %347 ], [ null, %408 ]
  %402 = phi ptr [ %374, %347 ], [ null, %408 ]
  %403 = phi ptr [ %396, %347 ], [ %409, %408 ]
  br label %347, !llvm.loop !264

404:                                              ; preds = %347
  %405 = fcmp olt float %375, %395
  br i1 %405, label %406, label %407

406:                                              ; preds = %404
  call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %374) #19
  call void @BLI_addhead(ptr noundef nonnull @nsortbase, ptr noundef %374) #19
  br label %408

407:                                              ; preds = %404
  call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %394) #19
  call void @BLI_addtail(ptr noundef nonnull @nsortbase, ptr noundef %394) #19
  br label %408

408:                                              ; preds = %407, %406
  %409 = load ptr, ptr %3, align 8, !tbaa !89
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %398

411:                                              ; preds = %408, %343
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  %412 = load ptr, ptr @nsortbase, align 8, !tbaa !89
  %413 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @nsortbase, i64 0, i32 1), align 8, !tbaa !262
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %411
  call void @BLI_freelistN(ptr noundef nonnull @nsortbase) #19
  %416 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %417 = load ptr, ptr %416, align 8, !tbaa !175
  call void @BKE_report(ptr noundef %417, i32 noundef 32, ptr noundef nonnull @.str.208) #19
  br label %1401

418:                                              ; preds = %411
  %419 = load ptr, ptr %412, align 8, !tbaa !263
  %420 = getelementptr inbounds %struct.NurbSort, ptr %412, i64 0, i32 2
  %421 = load ptr, ptr %420, align 8, !tbaa !258
  %422 = getelementptr inbounds %struct.Nurb, ptr %421, i64 0, i32 7
  %423 = load i32, ptr %422, align 4, !tbaa !61
  %424 = icmp eq i32 %423, 1
  br i1 %424, label %425, label %437

425:                                              ; preds = %418
  %426 = getelementptr inbounds %struct.Nurb, ptr %421, i64 0, i32 6
  %427 = load i32, ptr %426, align 8, !tbaa !52
  %428 = getelementptr inbounds %struct.NurbSort, ptr %419, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !258
  %430 = getelementptr inbounds %struct.Nurb, ptr %429, i64 0, i32 6
  %431 = load i32, ptr %430, align 8, !tbaa !52
  %432 = icmp eq i32 %427, %431
  br i1 %432, label %466, label %433

433:                                              ; preds = %425
  %434 = getelementptr inbounds %struct.Nurb, ptr %429, i64 0, i32 7
  %435 = load i32, ptr %434, align 4, !tbaa !61
  %436 = icmp eq i32 %427, %435
  br i1 %436, label %466, label %463

437:                                              ; preds = %418
  %438 = getelementptr inbounds %struct.NurbSort, ptr %419, i64 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !258
  %440 = getelementptr inbounds %struct.Nurb, ptr %439, i64 0, i32 7
  %441 = load i32, ptr %440, align 4, !tbaa !61
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %443, label %451

443:                                              ; preds = %437
  %444 = getelementptr inbounds %struct.Nurb, ptr %439, i64 0, i32 6
  %445 = load i32, ptr %444, align 8, !tbaa !52
  %446 = getelementptr inbounds %struct.Nurb, ptr %421, i64 0, i32 6
  %447 = load i32, ptr %446, align 8, !tbaa !52
  %448 = icmp eq i32 %445, %447
  %449 = icmp eq i32 %445, %423
  %450 = or i1 %449, %448
  br i1 %450, label %466, label %463

451:                                              ; preds = %437
  %452 = getelementptr inbounds %struct.Nurb, ptr %421, i64 0, i32 6
  %453 = load i32, ptr %452, align 8, !tbaa !52
  %454 = getelementptr inbounds %struct.Nurb, ptr %439, i64 0, i32 6
  %455 = load i32, ptr %454, align 8, !tbaa !52
  %456 = icmp eq i32 %453, %455
  %457 = icmp eq i32 %423, %441
  %458 = or i1 %457, %456
  %459 = icmp eq i32 %453, %441
  %460 = or i1 %459, %458
  %461 = icmp eq i32 %423, %455
  %462 = or i1 %461, %460
  br i1 %462, label %466, label %463

463:                                              ; preds = %451, %443, %433
  %464 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %465 = load ptr, ptr %464, align 8, !tbaa !175
  call void @BKE_report(ptr noundef %465, i32 noundef 32, ptr noundef nonnull @.str.209) #19
  call void @BLI_freelistN(ptr noundef nonnull @nsortbase) #19
  br label %1401

466:                                              ; preds = %425, %443, %451, %433
  %467 = icmp eq ptr %419, null
  br i1 %467, label %898, label %468

468:                                              ; preds = %466
  %469 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %470 = getelementptr inbounds %struct.Curve, ptr %233, i64 0, i32 4
  %471 = getelementptr inbounds %struct.Curve, ptr %233, i64 0, i32 4
  br label %472

472:                                              ; preds = %468, %895
  %473 = phi ptr [ %419, %468 ], [ %896, %895 ]
  %474 = load ptr, ptr %420, align 8, !tbaa !258
  %475 = getelementptr inbounds %struct.NurbSort, ptr %473, i64 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !258
  %477 = getelementptr inbounds %struct.Nurb, ptr %474, i64 0, i32 6
  %478 = load i32, ptr %477, align 8, !tbaa !52
  %479 = getelementptr inbounds %struct.Nurb, ptr %474, i64 0, i32 17
  %480 = sext i32 %478 to i64
  %481 = getelementptr inbounds %struct.Nurb, ptr %474, i64 0, i32 7
  %482 = load i32, ptr %481, align 4, !tbaa !61
  %483 = icmp sgt i32 %482, 1
  br i1 %483, label %484, label %502

484:                                              ; preds = %472
  %485 = load ptr, ptr %479, align 8, !tbaa !62
  %486 = getelementptr %struct.BPoint, ptr %485, i64 %480
  %487 = getelementptr %struct.BPoint, ptr %486, i64 -1
  %488 = add nsw i32 %482, -2
  br label %489

489:                                              ; preds = %484, %498
  %490 = phi i32 [ %499, %498 ], [ 0, %484 ]
  %491 = phi ptr [ %500, %498 ], [ %487, %484 ]
  %492 = icmp eq i32 %490, 0
  br i1 %492, label %498, label %493

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.BPoint, ptr %491, i64 0, i32 3
  %495 = load i16, ptr %494, align 4, !tbaa !64
  %496 = and i16 %495, 1
  %497 = icmp eq i16 %496, 0
  br i1 %497, label %498, label %580

498:                                              ; preds = %493, %489
  %499 = add nuw nsw i32 %490, 1
  %500 = getelementptr inbounds %struct.BPoint, ptr %491, i64 %480
  %501 = icmp eq i32 %490, %488
  br i1 %501, label %502, label %489, !llvm.loop !265

502:                                              ; preds = %498, %472
  %503 = getelementptr inbounds %struct.Nurb, ptr %474, i64 0, i32 7
  %504 = getelementptr inbounds %struct.Nurb, ptr %474, i64 0, i32 12
  %505 = load i16, ptr %504, align 2, !tbaa !73
  %506 = icmp eq i16 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %502
  store i16 1, ptr %504, align 2, !tbaa !73
  br label %508

508:                                              ; preds = %507, %502
  call fastcc void @rotate_direction_nurb(ptr noundef %474)
  %509 = load i32, ptr %477, align 8, !tbaa !52
  %510 = sext i32 %509 to i64
  %511 = load i32, ptr %503, align 4, !tbaa !61
  %512 = icmp sgt i32 %511, 1
  br i1 %512, label %513, label %531

513:                                              ; preds = %508
  %514 = load ptr, ptr %479, align 8, !tbaa !62
  %515 = getelementptr %struct.BPoint, ptr %514, i64 %510
  %516 = getelementptr %struct.BPoint, ptr %515, i64 -1
  %517 = add nsw i32 %511, -2
  br label %518

518:                                              ; preds = %513, %527
  %519 = phi i32 [ %528, %527 ], [ 0, %513 ]
  %520 = phi ptr [ %529, %527 ], [ %516, %513 ]
  %521 = icmp eq i32 %519, 0
  br i1 %521, label %527, label %522

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.BPoint, ptr %520, i64 0, i32 3
  %524 = load i16, ptr %523, align 4, !tbaa !64
  %525 = and i16 %524, 1
  %526 = icmp eq i16 %525, 0
  br i1 %526, label %527, label %582

527:                                              ; preds = %522, %518
  %528 = add nuw nsw i32 %519, 1
  %529 = getelementptr inbounds %struct.BPoint, ptr %520, i64 %510
  %530 = icmp eq i32 %519, %517
  br i1 %530, label %531, label %518, !llvm.loop !265

531:                                              ; preds = %527, %508
  call fastcc void @rotate_direction_nurb(ptr noundef %474)
  %532 = load i32, ptr %477, align 8, !tbaa !52
  %533 = sext i32 %532 to i64
  %534 = load i32, ptr %503, align 4, !tbaa !61
  %535 = icmp sgt i32 %534, 1
  br i1 %535, label %536, label %554

536:                                              ; preds = %531
  %537 = load ptr, ptr %479, align 8, !tbaa !62
  %538 = getelementptr %struct.BPoint, ptr %537, i64 %533
  %539 = getelementptr %struct.BPoint, ptr %538, i64 -1
  %540 = add nsw i32 %534, -2
  br label %541

541:                                              ; preds = %536, %550
  %542 = phi i32 [ %551, %550 ], [ 0, %536 ]
  %543 = phi ptr [ %552, %550 ], [ %539, %536 ]
  %544 = icmp eq i32 %542, 0
  br i1 %544, label %550, label %545

545:                                              ; preds = %541
  %546 = getelementptr inbounds %struct.BPoint, ptr %543, i64 0, i32 3
  %547 = load i16, ptr %546, align 4, !tbaa !64
  %548 = and i16 %547, 1
  %549 = icmp eq i16 %548, 0
  br i1 %549, label %550, label %582

550:                                              ; preds = %545, %541
  %551 = add nuw nsw i32 %542, 1
  %552 = getelementptr inbounds %struct.BPoint, ptr %543, i64 %533
  %553 = icmp eq i32 %542, %540
  br i1 %553, label %554, label %541, !llvm.loop !265

554:                                              ; preds = %550, %531
  call fastcc void @rotate_direction_nurb(ptr noundef %474)
  %555 = load i32, ptr %477, align 8, !tbaa !52
  %556 = sext i32 %555 to i64
  %557 = load i32, ptr %503, align 4, !tbaa !61
  %558 = icmp sgt i32 %557, 1
  br i1 %558, label %559, label %577

559:                                              ; preds = %554
  %560 = load ptr, ptr %479, align 8, !tbaa !62
  %561 = getelementptr %struct.BPoint, ptr %560, i64 %556
  %562 = getelementptr %struct.BPoint, ptr %561, i64 -1
  %563 = add nsw i32 %557, -2
  br label %564

564:                                              ; preds = %559, %573
  %565 = phi i32 [ %574, %573 ], [ 0, %559 ]
  %566 = phi ptr [ %575, %573 ], [ %562, %559 ]
  %567 = icmp eq i32 %565, 0
  br i1 %567, label %573, label %568

568:                                              ; preds = %564
  %569 = getelementptr inbounds %struct.BPoint, ptr %566, i64 0, i32 3
  %570 = load i16, ptr %569, align 4, !tbaa !64
  %571 = and i16 %570, 1
  %572 = icmp eq i16 %571, 0
  br i1 %572, label %573, label %582

573:                                              ; preds = %568, %564
  %574 = add nuw nsw i32 %565, 1
  %575 = getelementptr inbounds %struct.BPoint, ptr %566, i64 %556
  %576 = icmp eq i32 %565, %563
  br i1 %576, label %577, label %564, !llvm.loop !265

577:                                              ; preds = %573, %554
  %578 = icmp eq i32 %557, 1
  br i1 %578, label %895, label %579

579:                                              ; preds = %577
  call fastcc void @rotate_direction_nurb(ptr noundef %474)
  br label %895

580:                                              ; preds = %493
  %581 = getelementptr inbounds %struct.Nurb, ptr %474, i64 0, i32 7
  br label %582

582:                                              ; preds = %522, %545, %568, %580
  %583 = phi ptr [ %581, %580 ], [ %503, %568 ], [ %503, %545 ], [ %503, %522 ]
  %584 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 17
  %585 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 7
  %586 = load i32, ptr %585, align 4, !tbaa !61
  %587 = icmp sgt i32 %586, 1
  br i1 %587, label %588, label %607

588:                                              ; preds = %582
  %589 = load ptr, ptr %584, align 8, !tbaa !62
  %590 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 6
  %591 = add nsw i32 %586, -2
  br label %592

592:                                              ; preds = %588, %601
  %593 = phi i32 [ 0, %588 ], [ %602, %601 ]
  %594 = phi ptr [ %589, %588 ], [ %605, %601 ]
  %595 = icmp eq i32 %593, 0
  br i1 %595, label %601, label %596

596:                                              ; preds = %592
  %597 = getelementptr inbounds %struct.BPoint, ptr %594, i64 0, i32 3
  %598 = load i16, ptr %597, align 4, !tbaa !64
  %599 = and i16 %598, 1
  %600 = icmp eq i16 %599, 0
  br i1 %600, label %601, label %687

601:                                              ; preds = %596, %592
  %602 = add nuw nsw i32 %593, 1
  %603 = load i32, ptr %590, align 8, !tbaa !52
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.BPoint, ptr %594, i64 %604
  %606 = icmp eq i32 %593, %591
  br i1 %606, label %607, label %592, !llvm.loop !265

607:                                              ; preds = %601, %582
  %608 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 7
  %609 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 12
  %610 = load i16, ptr %609, align 2, !tbaa !73
  %611 = icmp eq i16 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %607
  store i16 1, ptr %609, align 2, !tbaa !73
  br label %613

613:                                              ; preds = %612, %607
  call fastcc void @rotate_direction_nurb(ptr noundef %476)
  %614 = load i32, ptr %608, align 4, !tbaa !61
  %615 = icmp sgt i32 %614, 1
  br i1 %615, label %616, label %635

616:                                              ; preds = %613
  %617 = load ptr, ptr %584, align 8, !tbaa !62
  %618 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 6
  %619 = add nsw i32 %614, -2
  br label %620

620:                                              ; preds = %616, %629
  %621 = phi i32 [ 0, %616 ], [ %630, %629 ]
  %622 = phi ptr [ %617, %616 ], [ %633, %629 ]
  %623 = icmp eq i32 %621, 0
  br i1 %623, label %629, label %624

624:                                              ; preds = %620
  %625 = getelementptr inbounds %struct.BPoint, ptr %622, i64 0, i32 3
  %626 = load i16, ptr %625, align 4, !tbaa !64
  %627 = and i16 %626, 1
  %628 = icmp eq i16 %627, 0
  br i1 %628, label %629, label %689

629:                                              ; preds = %624, %620
  %630 = add nuw nsw i32 %621, 1
  %631 = load i32, ptr %618, align 8, !tbaa !52
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.BPoint, ptr %622, i64 %632
  %634 = icmp eq i32 %621, %619
  br i1 %634, label %635, label %620, !llvm.loop !265

635:                                              ; preds = %629, %613
  call fastcc void @rotate_direction_nurb(ptr noundef %476)
  %636 = load i32, ptr %608, align 4, !tbaa !61
  %637 = icmp sgt i32 %636, 1
  br i1 %637, label %638, label %657

638:                                              ; preds = %635
  %639 = load ptr, ptr %584, align 8, !tbaa !62
  %640 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 6
  %641 = add nsw i32 %636, -2
  br label %642

642:                                              ; preds = %638, %651
  %643 = phi i32 [ 0, %638 ], [ %652, %651 ]
  %644 = phi ptr [ %639, %638 ], [ %655, %651 ]
  %645 = icmp eq i32 %643, 0
  br i1 %645, label %651, label %646

646:                                              ; preds = %642
  %647 = getelementptr inbounds %struct.BPoint, ptr %644, i64 0, i32 3
  %648 = load i16, ptr %647, align 4, !tbaa !64
  %649 = and i16 %648, 1
  %650 = icmp eq i16 %649, 0
  br i1 %650, label %651, label %689

651:                                              ; preds = %646, %642
  %652 = add nuw nsw i32 %643, 1
  %653 = load i32, ptr %640, align 8, !tbaa !52
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %struct.BPoint, ptr %644, i64 %654
  %656 = icmp eq i32 %643, %641
  br i1 %656, label %657, label %642, !llvm.loop !265

657:                                              ; preds = %651, %635
  call fastcc void @rotate_direction_nurb(ptr noundef %476)
  %658 = load i32, ptr %608, align 4, !tbaa !61
  %659 = icmp sgt i32 %658, 1
  br i1 %659, label %660, label %679

660:                                              ; preds = %657
  %661 = load ptr, ptr %584, align 8, !tbaa !62
  %662 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 6
  %663 = add nsw i32 %658, -2
  br label %664

664:                                              ; preds = %660, %673
  %665 = phi i32 [ 0, %660 ], [ %674, %673 ]
  %666 = phi ptr [ %661, %660 ], [ %677, %673 ]
  %667 = icmp eq i32 %665, 0
  br i1 %667, label %673, label %668

668:                                              ; preds = %664
  %669 = getelementptr inbounds %struct.BPoint, ptr %666, i64 0, i32 3
  %670 = load i16, ptr %669, align 4, !tbaa !64
  %671 = and i16 %670, 1
  %672 = icmp eq i16 %671, 0
  br i1 %672, label %673, label %689

673:                                              ; preds = %668, %664
  %674 = add nuw nsw i32 %665, 1
  %675 = load i32, ptr %662, align 8, !tbaa !52
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.BPoint, ptr %666, i64 %676
  %678 = icmp eq i32 %665, %663
  br i1 %678, label %679, label %664, !llvm.loop !265

679:                                              ; preds = %673, %657
  %680 = load i32, ptr %477, align 8, !tbaa !52
  %681 = icmp eq i32 %680, 1
  br i1 %681, label %682, label %683

682:                                              ; preds = %679
  call fastcc void @rotate_direction_nurb(ptr noundef %474)
  br label %683

683:                                              ; preds = %682, %679
  %684 = load i32, ptr %608, align 4, !tbaa !61
  %685 = icmp eq i32 %684, 1
  br i1 %685, label %895, label %686

686:                                              ; preds = %683
  call fastcc void @rotate_direction_nurb(ptr noundef %476)
  br label %895

687:                                              ; preds = %596
  %688 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 7
  br label %689

689:                                              ; preds = %624, %646, %668, %687
  %690 = phi ptr [ %688, %687 ], [ %608, %668 ], [ %608, %646 ], [ %608, %624 ]
  %691 = load i32, ptr %583, align 4, !tbaa !61
  %692 = load i32, ptr %690, align 4, !tbaa !61
  %693 = icmp eq i32 %691, %692
  br i1 %693, label %696, label %694

694:                                              ; preds = %689
  %695 = load ptr, ptr %469, align 8, !tbaa !175
  call void @BKE_report(ptr noundef %695, i32 noundef 32, ptr noundef nonnull @.str.209) #19
  br label %895

696:                                              ; preds = %689
  %697 = load i32, ptr %583, align 4, !tbaa !61
  %698 = icmp sgt i32 %697, 0
  br i1 %698, label %699, label %739

699:                                              ; preds = %696
  %700 = load ptr, ptr %584, align 8, !tbaa !62
  %701 = load ptr, ptr %479, align 8, !tbaa !62
  %702 = load i32, ptr %477, align 8, !tbaa !52
  %703 = sext i32 %702 to i64
  %704 = getelementptr %struct.BPoint, ptr %701, i64 %703
  %705 = getelementptr %struct.BPoint, ptr %704, i64 -1
  %706 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 6
  br label %707

707:                                              ; preds = %699, %707
  %708 = phi i32 [ 0, %699 ], [ %730, %707 ]
  %709 = phi float [ 0.000000e+00, %699 ], [ %729, %707 ]
  %710 = phi ptr [ %705, %699 ], [ %733, %707 ]
  %711 = phi ptr [ %700, %699 ], [ %736, %707 ]
  %712 = load float, ptr %711, align 4, !tbaa !70
  %713 = load float, ptr %710, align 4, !tbaa !70
  %714 = fsub float %712, %713
  %715 = getelementptr inbounds float, ptr %711, i64 1
  %716 = load float, ptr %715, align 4, !tbaa !70
  %717 = getelementptr inbounds float, ptr %710, i64 1
  %718 = load float, ptr %717, align 4, !tbaa !70
  %719 = fsub float %716, %718
  %720 = getelementptr inbounds float, ptr %711, i64 2
  %721 = load float, ptr %720, align 4, !tbaa !70
  %722 = getelementptr inbounds float, ptr %710, i64 2
  %723 = load float, ptr %722, align 4, !tbaa !70
  %724 = fsub float %721, %723
  %725 = fmul float %719, %719
  %726 = call float @llvm.fmuladd.f32(float %714, float %714, float %725)
  %727 = call float @llvm.fmuladd.f32(float %724, float %724, float %726)
  %728 = call float @sqrtf(float noundef %727) #19
  %729 = fadd float %709, %728
  %730 = add nuw nsw i32 %708, 1
  %731 = load i32, ptr %477, align 8, !tbaa !52
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.BPoint, ptr %710, i64 %732
  %734 = load i32, ptr %706, align 8, !tbaa !52
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.BPoint, ptr %711, i64 %735
  %737 = load i32, ptr %583, align 4, !tbaa !61
  %738 = icmp slt i32 %730, %737
  br i1 %738, label %707, label %739, !llvm.loop !266

739:                                              ; preds = %707, %696
  %740 = phi float [ 0.000000e+00, %696 ], [ %729, %707 ]
  %741 = getelementptr inbounds %struct.Nurb, ptr %476, i64 0, i32 6
  %742 = load i32, ptr %583, align 4, !tbaa !61
  %743 = icmp sgt i32 %742, 0
  br i1 %743, label %744, label %790

744:                                              ; preds = %739
  %745 = load ptr, ptr %584, align 8, !tbaa !62
  %746 = load i32, ptr %690, align 4, !tbaa !61
  %747 = add nsw i32 %746, -1
  %748 = load i32, ptr %741, align 8, !tbaa !52
  %749 = mul nsw i32 %747, %748
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds %struct.BPoint, ptr %745, i64 %750
  %752 = load ptr, ptr %479, align 8, !tbaa !62
  %753 = load i32, ptr %477, align 8, !tbaa !52
  %754 = sext i32 %753 to i64
  %755 = getelementptr %struct.BPoint, ptr %752, i64 %754
  %756 = getelementptr %struct.BPoint, ptr %755, i64 -1
  br label %757

757:                                              ; preds = %744, %757
  %758 = phi i32 [ %780, %757 ], [ 0, %744 ]
  %759 = phi float [ %779, %757 ], [ 0.000000e+00, %744 ]
  %760 = phi ptr [ %783, %757 ], [ %756, %744 ]
  %761 = phi ptr [ %787, %757 ], [ %751, %744 ]
  %762 = load float, ptr %761, align 4, !tbaa !70
  %763 = load float, ptr %760, align 4, !tbaa !70
  %764 = fsub float %762, %763
  %765 = getelementptr inbounds float, ptr %761, i64 1
  %766 = load float, ptr %765, align 4, !tbaa !70
  %767 = getelementptr inbounds float, ptr %760, i64 1
  %768 = load float, ptr %767, align 4, !tbaa !70
  %769 = fsub float %766, %768
  %770 = getelementptr inbounds float, ptr %761, i64 2
  %771 = load float, ptr %770, align 4, !tbaa !70
  %772 = getelementptr inbounds float, ptr %760, i64 2
  %773 = load float, ptr %772, align 4, !tbaa !70
  %774 = fsub float %771, %773
  %775 = fmul float %769, %769
  %776 = call float @llvm.fmuladd.f32(float %764, float %764, float %775)
  %777 = call float @llvm.fmuladd.f32(float %774, float %774, float %776)
  %778 = call float @sqrtf(float noundef %777) #19
  %779 = fadd float %759, %778
  %780 = add nuw nsw i32 %758, 1
  %781 = load i32, ptr %477, align 8, !tbaa !52
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds %struct.BPoint, ptr %760, i64 %782
  %784 = load i32, ptr %741, align 8, !tbaa !52
  %785 = sext i32 %784 to i64
  %786 = sub nsw i64 0, %785
  %787 = getelementptr inbounds %struct.BPoint, ptr %761, i64 %786
  %788 = load i32, ptr %583, align 4, !tbaa !61
  %789 = icmp slt i32 %780, %788
  br i1 %789, label %757, label %790, !llvm.loop !267

790:                                              ; preds = %757, %739
  %791 = phi float [ 0.000000e+00, %739 ], [ %779, %757 ]
  %792 = phi i32 [ %742, %739 ], [ %788, %757 ]
  %793 = load i32, ptr %477, align 8, !tbaa !52
  %794 = load i32, ptr %741, align 8, !tbaa !52
  %795 = add nsw i32 %794, %793
  store i32 %795, ptr %477, align 8, !tbaa !52
  %796 = getelementptr inbounds %struct.Nurb, ptr %474, i64 0, i32 11
  %797 = load i16, ptr %796, align 8, !tbaa !68
  %798 = icmp slt i16 %797, 3
  %799 = sext i16 %797 to i32
  %800 = icmp sgt i32 %795, %799
  %801 = select i1 %798, i1 %800, i1 false
  br i1 %801, label %802, label %804

802:                                              ; preds = %790
  %803 = add i16 %797, 1
  store i16 %803, ptr %796, align 8, !tbaa !68
  br label %804

804:                                              ; preds = %802, %790
  %805 = getelementptr inbounds %struct.Nurb, ptr %474, i64 0, i32 12
  %806 = load i16, ptr %805, align 2, !tbaa !73
  %807 = icmp slt i16 %806, 3
  %808 = sext i16 %806 to i32
  %809 = icmp sgt i32 %792, %808
  %810 = and i1 %807, %809
  br i1 %810, label %811, label %813

811:                                              ; preds = %804
  %812 = add i16 %806, 1
  store i16 %812, ptr %805, align 2, !tbaa !73
  br label %813

813:                                              ; preds = %811, %804
  %814 = load ptr, ptr %479, align 8, !tbaa !62
  %815 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %816 = mul nsw i32 %795, %792
  %817 = sext i32 %816 to i64
  %818 = mul nsw i64 %817, 36
  %819 = call ptr %815(i64 noundef %818, ptr noundef nonnull @.str.211) #19
  store ptr %819, ptr %479, align 8, !tbaa !62
  %820 = load i32, ptr %583, align 4, !tbaa !61
  %821 = icmp sgt i32 %820, 0
  br i1 %821, label %822, label %888

822:                                              ; preds = %813
  %823 = fcmp olt float %740, %791
  br label %824

824:                                              ; preds = %822, %882
  %825 = phi i32 [ %820, %822 ], [ %886, %882 ]
  %826 = phi i32 [ 0, %822 ], [ %885, %882 ]
  %827 = phi ptr [ %819, %822 ], [ %884, %882 ]
  %828 = phi ptr [ %814, %822 ], [ %883, %882 ]
  %829 = load i32, ptr %477, align 8, !tbaa !52
  %830 = icmp sgt i32 %829, 0
  br i1 %830, label %831, label %882

831:                                              ; preds = %824
  %832 = load ptr, ptr %584, align 8, !tbaa !62
  %833 = load i32, ptr %741, align 8, !tbaa !52
  %834 = xor i32 %826, -1
  %835 = add i32 %825, %834
  %836 = select i1 %823, i32 %826, i32 %835
  %837 = mul nsw i32 %833, %836
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.BPoint, ptr %832, i64 %838
  br label %840

840:                                              ; preds = %831, %875
  %841 = phi i32 [ %878, %875 ], [ 0, %831 ]
  %842 = phi ptr [ %879, %875 ], [ %827, %831 ]
  %843 = phi ptr [ %877, %875 ], [ %828, %831 ]
  %844 = phi ptr [ %876, %875 ], [ %839, %831 ]
  %845 = icmp slt i32 %841, %793
  br i1 %845, label %846, label %862

846:                                              ; preds = %840
  %847 = load ptr, ptr %471, align 8, !tbaa !47
  %848 = getelementptr inbounds %struct.EditNurb, ptr %847, i64 0, i32 1
  %849 = load ptr, ptr %848, align 8, !tbaa !77
  %850 = icmp eq ptr %849, null
  br i1 %850, label %857, label %851

851:                                              ; preds = %846
  %852 = load ptr, ptr %848, align 8, !tbaa !77
  %853 = call ptr @BLI_ghash_popkey(ptr noundef %852, ptr noundef %843, ptr noundef null) #19
  %854 = icmp eq ptr %853, null
  br i1 %854, label %857, label %855

855:                                              ; preds = %851
  %856 = load ptr, ptr %848, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %856, ptr noundef %842, ptr noundef nonnull %853) #19
  br label %857

857:                                              ; preds = %855, %851, %846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %842, ptr noundef nonnull align 4 dereferenceable(36) %843, i64 36, i1 false), !tbaa.struct !190
  %858 = getelementptr inbounds %struct.BPoint, ptr %843, i64 1
  %859 = getelementptr inbounds %struct.BPoint, ptr %842, i64 0, i32 3
  %860 = load i16, ptr %859, align 4, !tbaa !64
  %861 = or i16 %860, 1
  store i16 %861, ptr %859, align 4, !tbaa !64
  br label %875

862:                                              ; preds = %840
  %863 = load ptr, ptr %470, align 8, !tbaa !47
  %864 = getelementptr inbounds %struct.EditNurb, ptr %863, i64 0, i32 1
  %865 = load ptr, ptr %864, align 8, !tbaa !77
  %866 = icmp eq ptr %865, null
  br i1 %866, label %873, label %867

867:                                              ; preds = %862
  %868 = load ptr, ptr %864, align 8, !tbaa !77
  %869 = call ptr @BLI_ghash_popkey(ptr noundef %868, ptr noundef %844, ptr noundef null) #19
  %870 = icmp eq ptr %869, null
  br i1 %870, label %873, label %871

871:                                              ; preds = %867
  %872 = load ptr, ptr %864, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %872, ptr noundef %842, ptr noundef nonnull %869) #19
  br label %873

873:                                              ; preds = %871, %867, %862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %842, ptr noundef nonnull align 4 dereferenceable(36) %844, i64 36, i1 false), !tbaa.struct !190
  %874 = getelementptr inbounds %struct.BPoint, ptr %844, i64 1
  br label %875

875:                                              ; preds = %873, %857
  %876 = phi ptr [ %844, %857 ], [ %874, %873 ]
  %877 = phi ptr [ %858, %857 ], [ %843, %873 ]
  %878 = add nuw nsw i32 %841, 1
  %879 = getelementptr inbounds %struct.BPoint, ptr %842, i64 1
  %880 = load i32, ptr %477, align 8, !tbaa !52
  %881 = icmp slt i32 %878, %880
  br i1 %881, label %840, label %882, !llvm.loop !268

882:                                              ; preds = %875, %824
  %883 = phi ptr [ %828, %824 ], [ %877, %875 ]
  %884 = phi ptr [ %827, %824 ], [ %879, %875 ]
  %885 = add nuw nsw i32 %826, 1
  %886 = load i32, ptr %583, align 4, !tbaa !61
  %887 = icmp slt i32 %885, %886
  br i1 %887, label %824, label %888, !llvm.loop !269

888:                                              ; preds = %882, %813
  %889 = getelementptr inbounds %struct.Nurb, ptr %474, i64 0, i32 2
  %890 = load i16, ptr %889, align 8, !tbaa !50
  %891 = icmp eq i16 %890, 4
  br i1 %891, label %892, label %893

892:                                              ; preds = %888
  call void @BKE_nurb_knot_calc_u(ptr noundef %474) #19
  call void @BKE_nurb_knot_calc_v(ptr noundef %474) #19
  br label %893

893:                                              ; preds = %892, %888
  %894 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  call void %894(ptr noundef %814) #19
  call void @BLI_remlink(ptr noundef nonnull %240, ptr noundef %476) #19
  call void @BKE_nurb_free(ptr noundef %476) #19
  br label %895

895:                                              ; preds = %893, %694, %686, %683, %579, %577
  %896 = load ptr, ptr %473, align 8, !tbaa !263
  %897 = icmp eq ptr %896, null
  br i1 %897, label %898, label %472, !llvm.loop !270

898:                                              ; preds = %895, %466
  call void @BLI_freelistN(ptr noundef nonnull @nsortbase) #19
  %899 = load ptr, ptr %232, align 8, !tbaa !46
  call void @BKE_curve_nurb_active_set(ptr noundef %899, ptr noundef null) #19
  %900 = load ptr, ptr %232, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %900) #19
  %901 = load ptr, ptr %232, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %901, i16 noundef signext 0) #19
  br label %1401

902:                                              ; preds = %29, %1050
  %903 = phi ptr [ %1051, %1050 ], [ null, %29 ]
  %904 = phi ptr [ %1052, %1050 ], [ null, %29 ]
  %905 = phi ptr [ %906, %1050 ], [ %17, %29 ]
  %906 = load ptr, ptr %905, align 8, !tbaa !66
  %907 = icmp eq ptr %906, null
  br i1 %907, label %1056, label %908

908:                                              ; preds = %902
  %909 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 6
  %910 = load i32, ptr %909, align 8, !tbaa !52
  %911 = icmp eq i32 %910, 1
  br i1 %911, label %912, label %916

912:                                              ; preds = %908
  %913 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 13
  %914 = load i16, ptr %913, align 4, !tbaa !69
  %915 = and i16 %914, -2
  store i16 %915, ptr %913, align 4, !tbaa !69
  br label %916

916:                                              ; preds = %912, %908
  %917 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 13
  %918 = load i16, ptr %917, align 4, !tbaa !69
  %919 = and i16 %918, 1
  %920 = icmp eq i16 %919, 0
  br i1 %920, label %921, label %1050

921:                                              ; preds = %916
  %922 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 2
  %923 = load i16, ptr %922, align 8, !tbaa !50
  %924 = icmp eq i16 %923, 1
  br i1 %924, label %925, label %1016

925:                                              ; preds = %921
  %926 = load i16, ptr %30, align 8, !tbaa !221
  %927 = and i16 %926, 1
  %928 = icmp eq i16 %927, 0
  %929 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 18
  %930 = load ptr, ptr %929, align 8, !tbaa !53
  %931 = sext i32 %910 to i64
  %932 = getelementptr %struct.BezTriple, ptr %930, i64 %931
  %933 = getelementptr %struct.BezTriple, ptr %932, i64 -1, i32 8
  %934 = load i8, ptr %933, align 4, !tbaa !59
  %935 = and i8 %934, 1
  %936 = icmp eq i8 %935, 0
  br i1 %928, label %938, label %937

937:                                              ; preds = %925
  br i1 %936, label %972, label %949

938:                                              ; preds = %925
  br i1 %936, label %939, label %949

939:                                              ; preds = %938
  %940 = getelementptr %struct.BezTriple, ptr %932, i64 -1, i32 7
  %941 = load i8, ptr %940, align 1, !tbaa !57
  %942 = and i8 %941, 1
  %943 = icmp eq i8 %942, 0
  br i1 %943, label %944, label %949

944:                                              ; preds = %939
  %945 = getelementptr %struct.BezTriple, ptr %932, i64 -1, i32 9
  %946 = load i8, ptr %945, align 1, !tbaa !60
  %947 = and i8 %946, 1
  %948 = icmp eq i8 %947, 0
  br i1 %948, label %972, label %949

949:                                              ; preds = %944, %939, %938, %937
  %950 = icmp eq ptr %904, null
  br i1 %950, label %1050, label %951

951:                                              ; preds = %949
  %952 = icmp eq ptr %903, null
  br i1 %952, label %953, label %1050

953:                                              ; preds = %951
  %954 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 18
  %955 = load ptr, ptr %954, align 8, !tbaa !53
  %956 = getelementptr inbounds %struct.BezTriple, ptr %955, i64 0, i32 8
  %957 = load i8, ptr %956, align 4, !tbaa !59
  %958 = and i8 %957, 1
  %959 = icmp eq i8 %958, 0
  br i1 %928, label %961, label %960

960:                                              ; preds = %953
  br i1 %959, label %1047, label %1050

961:                                              ; preds = %953
  br i1 %959, label %962, label %1050

962:                                              ; preds = %961
  %963 = getelementptr inbounds %struct.BezTriple, ptr %955, i64 0, i32 7
  %964 = load i8, ptr %963, align 1, !tbaa !57
  %965 = and i8 %964, 1
  %966 = icmp eq i8 %965, 0
  br i1 %966, label %967, label %1050

967:                                              ; preds = %962
  %968 = getelementptr inbounds %struct.BezTriple, ptr %955, i64 0, i32 9
  %969 = load i8, ptr %968, align 1, !tbaa !60
  %970 = and i8 %969, 1
  %971 = icmp eq i8 %970, 0
  br i1 %971, label %1047, label %1050

972:                                              ; preds = %944, %937
  %973 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 18
  %974 = load ptr, ptr %973, align 8, !tbaa !53
  %975 = getelementptr inbounds %struct.BezTriple, ptr %974, i64 0, i32 8
  %976 = load i8, ptr %975, align 4, !tbaa !59
  %977 = and i8 %976, 1
  %978 = icmp eq i8 %977, 0
  br i1 %928, label %980, label %979

979:                                              ; preds = %972
  br i1 %978, label %1050, label %991

980:                                              ; preds = %972
  br i1 %978, label %981, label %991

981:                                              ; preds = %980
  %982 = getelementptr inbounds %struct.BezTriple, ptr %974, i64 0, i32 7
  %983 = load i8, ptr %982, align 1, !tbaa !57
  %984 = and i8 %983, 1
  %985 = icmp eq i8 %984, 0
  br i1 %985, label %986, label %991

986:                                              ; preds = %981
  %987 = getelementptr inbounds %struct.BezTriple, ptr %974, i64 0, i32 9
  %988 = load i8, ptr %987, align 1, !tbaa !60
  %989 = and i8 %988, 1
  %990 = icmp eq i8 %989, 0
  br i1 %990, label %1050, label %991

991:                                              ; preds = %986, %981, %980, %979
  %992 = icmp eq ptr %903, null
  br i1 %992, label %1050, label %993

993:                                              ; preds = %991
  %994 = icmp eq ptr %904, null
  br i1 %994, label %995, label %1050

995:                                              ; preds = %993
  %996 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 18
  %997 = load ptr, ptr %996, align 8, !tbaa !53
  %998 = sext i32 %910 to i64
  %999 = getelementptr %struct.BezTriple, ptr %997, i64 %998
  %1000 = getelementptr %struct.BezTriple, ptr %999, i64 -1, i32 8
  %1001 = load i8, ptr %1000, align 4, !tbaa !59
  %1002 = and i8 %1001, 1
  %1003 = icmp eq i8 %1002, 0
  br i1 %928, label %1005, label %1004

1004:                                             ; preds = %995
  br i1 %1003, label %1047, label %1050

1005:                                             ; preds = %995
  br i1 %1003, label %1006, label %1050

1006:                                             ; preds = %1005
  %1007 = getelementptr %struct.BezTriple, ptr %999, i64 -1, i32 7
  %1008 = load i8, ptr %1007, align 1, !tbaa !57
  %1009 = and i8 %1008, 1
  %1010 = icmp eq i8 %1009, 0
  br i1 %1010, label %1011, label %1050

1011:                                             ; preds = %1006
  %1012 = getelementptr %struct.BezTriple, ptr %999, i64 -1, i32 9
  %1013 = load i8, ptr %1012, align 1, !tbaa !60
  %1014 = and i8 %1013, 1
  %1015 = icmp eq i8 %1014, 0
  br i1 %1015, label %1047, label %1050

1016:                                             ; preds = %921
  %1017 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 7
  %1018 = load i32, ptr %1017, align 4, !tbaa !61
  %1019 = icmp eq i32 %1018, 1
  br i1 %1019, label %1020, label %1050

1020:                                             ; preds = %1016
  %1021 = getelementptr inbounds %struct.Nurb, ptr %906, i64 0, i32 17
  %1022 = load ptr, ptr %1021, align 8, !tbaa !62
  %1023 = sext i32 %910 to i64
  %1024 = getelementptr %struct.BPoint, ptr %1022, i64 %1023
  %1025 = getelementptr %struct.BPoint, ptr %1024, i64 -1, i32 3
  %1026 = load i16, ptr %1025, align 4, !tbaa !64
  %1027 = and i16 %1026, 1
  %1028 = icmp eq i16 %1027, 0
  br i1 %1028, label %1038, label %1029

1029:                                             ; preds = %1020
  %1030 = icmp eq ptr %904, null
  br i1 %1030, label %1050, label %1031

1031:                                             ; preds = %1029
  %1032 = icmp eq ptr %903, null
  br i1 %1032, label %1033, label %1050

1033:                                             ; preds = %1031
  %1034 = getelementptr inbounds %struct.BPoint, ptr %1022, i64 0, i32 3
  %1035 = load i16, ptr %1034, align 4, !tbaa !64
  %1036 = and i16 %1035, 1
  %1037 = icmp eq i16 %1036, 0
  br i1 %1037, label %1047, label %1050

1038:                                             ; preds = %1020
  %1039 = getelementptr inbounds %struct.BPoint, ptr %1022, i64 0, i32 3
  %1040 = load i16, ptr %1039, align 4, !tbaa !64
  %1041 = and i16 %1040, 1
  %1042 = icmp eq i16 %1041, 0
  br i1 %1042, label %1050, label %1043

1043:                                             ; preds = %1038
  %1044 = icmp eq ptr %903, null
  br i1 %1044, label %1050, label %1045

1045:                                             ; preds = %1043
  %1046 = icmp eq ptr %904, null
  br i1 %1046, label %1047, label %1050

1047:                                             ; preds = %1045, %1033, %1004, %1011, %960, %967
  %1048 = phi ptr [ %906, %967 ], [ %906, %960 ], [ %903, %1011 ], [ %903, %1004 ], [ %906, %1033 ], [ %903, %1045 ]
  %1049 = phi ptr [ %904, %967 ], [ %904, %960 ], [ %906, %1011 ], [ %906, %1004 ], [ %904, %1033 ], [ %906, %1045 ]
  tail call void @BKE_nurb_direction_switch(ptr noundef nonnull %906) #19
  tail call fastcc void @keyData_switchDirectionNurb(ptr noundef %6, ptr noundef nonnull %906)
  br label %1050

1050:                                             ; preds = %1047, %1043, %1029, %991, %949, %979, %986, %993, %1011, %1006, %1005, %1004, %960, %961, %962, %967, %951, %1031, %1033, %1045, %1038, %1016, %916
  %1051 = phi ptr [ %906, %960 ], [ %906, %961 ], [ %906, %962 ], [ %906, %967 ], [ %903, %951 ], [ %903, %1004 ], [ %903, %1005 ], [ %903, %1006 ], [ %903, %1011 ], [ %903, %993 ], [ %903, %979 ], [ %903, %986 ], [ %906, %1033 ], [ %903, %1031 ], [ %903, %1045 ], [ %903, %1038 ], [ %903, %1016 ], [ %903, %916 ], [ %903, %949 ], [ %906, %991 ], [ %903, %1029 ], [ %906, %1043 ], [ %1048, %1047 ]
  %1052 = phi ptr [ %904, %960 ], [ %904, %961 ], [ %904, %962 ], [ %904, %967 ], [ %904, %951 ], [ %906, %1004 ], [ %906, %1005 ], [ %906, %1006 ], [ %906, %1011 ], [ %904, %993 ], [ %904, %979 ], [ %904, %986 ], [ %904, %1033 ], [ %904, %1031 ], [ %904, %1045 ], [ %904, %1038 ], [ %904, %1016 ], [ %904, %916 ], [ %906, %949 ], [ %904, %991 ], [ %906, %1029 ], [ %904, %1043 ], [ %1049, %1047 ]
  %1053 = icmp ne ptr %1051, null
  %1054 = icmp ne ptr %1052, null
  %1055 = select i1 %1053, i1 %1054, i1 false
  br i1 %1055, label %1056, label %902, !llvm.loop !271

1056:                                             ; preds = %1050, %902
  %1057 = phi ptr [ %1051, %1050 ], [ %903, %902 ]
  %1058 = phi ptr [ %1052, %1050 ], [ %904, %902 ]
  %1059 = icmp ne ptr %1057, null
  %1060 = icmp ne ptr %1058, null
  %1061 = select i1 %1059, i1 %1060, i1 false
  %1062 = icmp ne ptr %1057, %1058
  %1063 = select i1 %1061, i1 %1062, i1 false
  br i1 %1063, label %1064, label %1291

1064:                                             ; preds = %1056
  %1065 = getelementptr inbounds %struct.Nurb, ptr %1057, i64 0, i32 2
  %1066 = load i16, ptr %1065, align 8, !tbaa !50
  %1067 = getelementptr inbounds %struct.Nurb, ptr %1058, i64 0, i32 2
  %1068 = load i16, ptr %1067, align 8, !tbaa !50
  %1069 = icmp eq i16 %1066, %1068
  br i1 %1069, label %1070, label %1370

1070:                                             ; preds = %1064
  %1071 = icmp eq i16 %1066, 1
  %1072 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %1073 = getelementptr inbounds %struct.Nurb, ptr %1057, i64 0, i32 6
  %1074 = load i32, ptr %1073, align 8, !tbaa !52
  %1075 = getelementptr inbounds %struct.Nurb, ptr %1058, i64 0, i32 6
  %1076 = load i32, ptr %1075, align 8, !tbaa !52
  %1077 = add nsw i32 %1076, %1074
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 4
  br i1 %1071, label %1080, label %1180

1080:                                             ; preds = %1070
  %1081 = mul nsw i64 %1078, 72
  %1082 = tail call ptr %1072(i64 noundef %1081, ptr noundef nonnull @.str.205) #19
  %1083 = load ptr, ptr %1079, align 8, !tbaa !47
  %1084 = getelementptr inbounds %struct.Nurb, ptr %1058, i64 0, i32 18
  %1085 = load ptr, ptr %1084, align 8, !tbaa !53
  %1086 = load i32, ptr %1075, align 8, !tbaa !52
  %1087 = sext i32 %1086 to i64
  %1088 = mul nsw i64 %1087, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1082, ptr align 4 %1085, i64 %1088, i1 false)
  %1089 = getelementptr inbounds %struct.EditNurb, ptr %1083, i64 0, i32 1
  %1090 = load ptr, ptr %1089, align 8, !tbaa !77
  %1091 = icmp ne ptr %1090, null
  %1092 = icmp sgt i32 %1086, 0
  %1093 = and i1 %1092, %1091
  br i1 %1093, label %1094, label %1108

1094:                                             ; preds = %1080, %1103
  %1095 = phi ptr [ %1105, %1103 ], [ %1085, %1080 ]
  %1096 = phi i32 [ %1106, %1103 ], [ 0, %1080 ]
  %1097 = phi ptr [ %1104, %1103 ], [ %1082, %1080 ]
  %1098 = load ptr, ptr %1089, align 8, !tbaa !77
  %1099 = tail call ptr @BLI_ghash_popkey(ptr noundef %1098, ptr noundef %1095, ptr noundef null) #19
  %1100 = icmp eq ptr %1099, null
  br i1 %1100, label %1103, label %1101

1101:                                             ; preds = %1094
  %1102 = load ptr, ptr %1089, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %1102, ptr noundef %1097, ptr noundef nonnull %1099) #19
  br label %1103

1103:                                             ; preds = %1101, %1094
  %1104 = getelementptr inbounds i8, ptr %1097, i64 72
  %1105 = getelementptr inbounds i8, ptr %1095, i64 72
  %1106 = add nuw nsw i32 %1096, 1
  %1107 = icmp eq i32 %1106, %1086
  br i1 %1107, label %1108, label %1094, !llvm.loop !182

1108:                                             ; preds = %1103, %1080
  %1109 = load ptr, ptr %1079, align 8, !tbaa !47
  %1110 = load i32, ptr %1075, align 8, !tbaa !52
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds %struct.BezTriple, ptr %1082, i64 %1111
  %1113 = getelementptr inbounds %struct.Nurb, ptr %1057, i64 0, i32 18
  %1114 = load ptr, ptr %1113, align 8, !tbaa !53
  %1115 = load i32, ptr %1073, align 8, !tbaa !52
  %1116 = sext i32 %1115 to i64
  %1117 = mul nsw i64 %1116, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1112, ptr align 4 %1114, i64 %1117, i1 false)
  %1118 = getelementptr inbounds %struct.EditNurb, ptr %1109, i64 0, i32 1
  %1119 = load ptr, ptr %1118, align 8, !tbaa !77
  %1120 = icmp ne ptr %1119, null
  %1121 = icmp sgt i32 %1115, 0
  %1122 = and i1 %1121, %1120
  br i1 %1122, label %1123, label %1137

1123:                                             ; preds = %1108, %1132
  %1124 = phi ptr [ %1134, %1132 ], [ %1114, %1108 ]
  %1125 = phi i32 [ %1135, %1132 ], [ 0, %1108 ]
  %1126 = phi ptr [ %1133, %1132 ], [ %1112, %1108 ]
  %1127 = load ptr, ptr %1118, align 8, !tbaa !77
  %1128 = tail call ptr @BLI_ghash_popkey(ptr noundef %1127, ptr noundef %1124, ptr noundef null) #19
  %1129 = icmp eq ptr %1128, null
  br i1 %1129, label %1132, label %1130

1130:                                             ; preds = %1123
  %1131 = load ptr, ptr %1118, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %1131, ptr noundef %1126, ptr noundef nonnull %1128) #19
  br label %1132

1132:                                             ; preds = %1130, %1123
  %1133 = getelementptr inbounds i8, ptr %1126, i64 72
  %1134 = getelementptr inbounds i8, ptr %1124, i64 72
  %1135 = add nuw nsw i32 %1125, 1
  %1136 = icmp eq i32 %1135, %1115
  br i1 %1136, label %1137, label %1123, !llvm.loop !182

1137:                                             ; preds = %1132, %1108
  %1138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %1139 = load ptr, ptr %1113, align 8, !tbaa !53
  tail call void %1138(ptr noundef %1139) #19
  store ptr %1082, ptr %1113, align 8, !tbaa !53
  %1140 = load i32, ptr %1075, align 8, !tbaa !52
  %1141 = load i32, ptr %1073, align 8, !tbaa !52
  %1142 = add nsw i32 %1141, %1140
  store i32 %1142, ptr %1073, align 8, !tbaa !52
  tail call void @BLI_remlink(ptr noundef %17, ptr noundef nonnull %1058) #19
  %1143 = load ptr, ptr %1079, align 8, !tbaa !47
  %1144 = getelementptr inbounds %struct.EditNurb, ptr %1143, i64 0, i32 1
  %1145 = load ptr, ptr %1144, align 8, !tbaa !77
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %1179, label %1147

1147:                                             ; preds = %1137
  %1148 = load ptr, ptr %1084, align 8, !tbaa !53
  %1149 = icmp eq ptr %1148, null
  %1150 = load i32, ptr %1075, align 8, !tbaa !52
  br i1 %1149, label %1162, label %1151

1151:                                             ; preds = %1147
  %1152 = icmp eq i32 %1150, 0
  br i1 %1152, label %1179, label %1153

1153:                                             ; preds = %1151, %1153
  %1154 = phi ptr [ %1160, %1153 ], [ %1148, %1151 ]
  %1155 = phi i32 [ %1156, %1153 ], [ %1150, %1151 ]
  %1156 = add nsw i32 %1155, -1
  %1157 = load ptr, ptr %1144, align 8, !tbaa !77
  %1158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %1159 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %1157, ptr noundef nonnull %1154, ptr noundef null, ptr noundef %1158) #19
  %1160 = getelementptr inbounds %struct.BezTriple, ptr %1154, i64 1
  %1161 = icmp eq i32 %1156, 0
  br i1 %1161, label %1179, label %1153, !llvm.loop !272

1162:                                             ; preds = %1147
  %1163 = getelementptr inbounds %struct.Nurb, ptr %1058, i64 0, i32 7
  %1164 = load i32, ptr %1163, align 4, !tbaa !61
  %1165 = mul nsw i32 %1164, %1150
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1179, label %1167

1167:                                             ; preds = %1162
  %1168 = getelementptr inbounds %struct.Nurb, ptr %1058, i64 0, i32 17
  %1169 = load ptr, ptr %1168, align 8, !tbaa !62
  br label %1170

1170:                                             ; preds = %1170, %1167
  %1171 = phi ptr [ %1177, %1170 ], [ %1169, %1167 ]
  %1172 = phi i32 [ %1173, %1170 ], [ %1165, %1167 ]
  %1173 = add nsw i32 %1172, -1
  %1174 = load ptr, ptr %1144, align 8, !tbaa !77
  %1175 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %1176 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %1174, ptr noundef %1171, ptr noundef null, ptr noundef %1175) #19
  %1177 = getelementptr inbounds %struct.BPoint, ptr %1171, i64 1
  %1178 = icmp eq i32 %1173, 0
  br i1 %1178, label %1179, label %1170, !llvm.loop !273

1179:                                             ; preds = %1153, %1170, %1137, %1151, %1162
  tail call void @BKE_nurb_free(ptr noundef nonnull %1058) #19
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %1057) #19
  br label %1290

1180:                                             ; preds = %1070
  %1181 = mul nsw i64 %1078, 36
  %1182 = tail call ptr %1072(i64 noundef %1181, ptr noundef nonnull @.str.206) #19
  %1183 = load ptr, ptr %1079, align 8, !tbaa !47
  %1184 = getelementptr inbounds %struct.Nurb, ptr %1058, i64 0, i32 17
  %1185 = load ptr, ptr %1184, align 8, !tbaa !62
  %1186 = load i32, ptr %1075, align 8, !tbaa !52
  %1187 = sext i32 %1186 to i64
  %1188 = mul nsw i64 %1187, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1182, ptr align 4 %1185, i64 %1188, i1 false)
  %1189 = getelementptr inbounds %struct.EditNurb, ptr %1183, i64 0, i32 1
  %1190 = load ptr, ptr %1189, align 8, !tbaa !77
  %1191 = icmp ne ptr %1190, null
  %1192 = icmp sgt i32 %1186, 0
  %1193 = and i1 %1192, %1191
  br i1 %1193, label %1194, label %1208

1194:                                             ; preds = %1180, %1203
  %1195 = phi ptr [ %1205, %1203 ], [ %1185, %1180 ]
  %1196 = phi i32 [ %1206, %1203 ], [ 0, %1180 ]
  %1197 = phi ptr [ %1204, %1203 ], [ %1182, %1180 ]
  %1198 = load ptr, ptr %1189, align 8, !tbaa !77
  %1199 = tail call ptr @BLI_ghash_popkey(ptr noundef %1198, ptr noundef %1195, ptr noundef null) #19
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1203, label %1201

1201:                                             ; preds = %1194
  %1202 = load ptr, ptr %1189, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %1202, ptr noundef %1197, ptr noundef nonnull %1199) #19
  br label %1203

1203:                                             ; preds = %1201, %1194
  %1204 = getelementptr inbounds i8, ptr %1197, i64 36
  %1205 = getelementptr inbounds i8, ptr %1195, i64 36
  %1206 = add nuw nsw i32 %1196, 1
  %1207 = icmp eq i32 %1206, %1186
  br i1 %1207, label %1208, label %1194, !llvm.loop !182

1208:                                             ; preds = %1203, %1180
  %1209 = load ptr, ptr %1079, align 8, !tbaa !47
  %1210 = load i32, ptr %1075, align 8, !tbaa !52
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds %struct.BPoint, ptr %1182, i64 %1211
  %1213 = getelementptr inbounds %struct.Nurb, ptr %1057, i64 0, i32 17
  %1214 = load ptr, ptr %1213, align 8, !tbaa !62
  %1215 = load i32, ptr %1073, align 8, !tbaa !52
  %1216 = sext i32 %1215 to i64
  %1217 = mul nsw i64 %1216, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1212, ptr align 4 %1214, i64 %1217, i1 false)
  %1218 = getelementptr inbounds %struct.EditNurb, ptr %1209, i64 0, i32 1
  %1219 = load ptr, ptr %1218, align 8, !tbaa !77
  %1220 = icmp ne ptr %1219, null
  %1221 = icmp sgt i32 %1215, 0
  %1222 = and i1 %1221, %1220
  br i1 %1222, label %1223, label %1237

1223:                                             ; preds = %1208, %1232
  %1224 = phi ptr [ %1234, %1232 ], [ %1214, %1208 ]
  %1225 = phi i32 [ %1235, %1232 ], [ 0, %1208 ]
  %1226 = phi ptr [ %1233, %1232 ], [ %1212, %1208 ]
  %1227 = load ptr, ptr %1218, align 8, !tbaa !77
  %1228 = tail call ptr @BLI_ghash_popkey(ptr noundef %1227, ptr noundef %1224, ptr noundef null) #19
  %1229 = icmp eq ptr %1228, null
  br i1 %1229, label %1232, label %1230

1230:                                             ; preds = %1223
  %1231 = load ptr, ptr %1218, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %1231, ptr noundef %1226, ptr noundef nonnull %1228) #19
  br label %1232

1232:                                             ; preds = %1230, %1223
  %1233 = getelementptr inbounds i8, ptr %1226, i64 36
  %1234 = getelementptr inbounds i8, ptr %1224, i64 36
  %1235 = add nuw nsw i32 %1225, 1
  %1236 = icmp eq i32 %1235, %1215
  br i1 %1236, label %1237, label %1223, !llvm.loop !182

1237:                                             ; preds = %1232, %1208
  %1238 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %1239 = load ptr, ptr %1213, align 8, !tbaa !62
  tail call void %1238(ptr noundef %1239) #19
  store ptr %1182, ptr %1213, align 8, !tbaa !62
  %1240 = load i32, ptr %1075, align 8, !tbaa !52
  %1241 = load i32, ptr %1073, align 8, !tbaa !52
  %1242 = add nsw i32 %1241, %1240
  store i32 %1242, ptr %1073, align 8, !tbaa !52
  tail call void @BLI_remlink(ptr noundef %17, ptr noundef nonnull %1058) #19
  %1243 = load i16, ptr %1065, align 8, !tbaa !50
  %1244 = icmp eq i16 %1243, 4
  br i1 %1244, label %1245, label %1252

1245:                                             ; preds = %1237
  %1246 = getelementptr inbounds %struct.Nurb, ptr %1057, i64 0, i32 15
  %1247 = load ptr, ptr %1246, align 8, !tbaa !67
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1251, label %1249

1249:                                             ; preds = %1245
  %1250 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %1250(ptr noundef nonnull %1247) #19
  store ptr null, ptr %1246, align 8, !tbaa !67
  br label %1251

1251:                                             ; preds = %1249, %1245
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %1057) #19
  br label %1252

1252:                                             ; preds = %1251, %1237
  %1253 = load ptr, ptr %1079, align 8, !tbaa !47
  %1254 = getelementptr inbounds %struct.EditNurb, ptr %1253, i64 0, i32 1
  %1255 = load ptr, ptr %1254, align 8, !tbaa !77
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1289, label %1257

1257:                                             ; preds = %1252
  %1258 = getelementptr inbounds %struct.Nurb, ptr %1058, i64 0, i32 18
  %1259 = load ptr, ptr %1258, align 8, !tbaa !53
  %1260 = icmp eq ptr %1259, null
  %1261 = load i32, ptr %1075, align 8, !tbaa !52
  br i1 %1260, label %1273, label %1262

1262:                                             ; preds = %1257
  %1263 = icmp eq i32 %1261, 0
  br i1 %1263, label %1289, label %1264

1264:                                             ; preds = %1262, %1264
  %1265 = phi ptr [ %1271, %1264 ], [ %1259, %1262 ]
  %1266 = phi i32 [ %1267, %1264 ], [ %1261, %1262 ]
  %1267 = add nsw i32 %1266, -1
  %1268 = load ptr, ptr %1254, align 8, !tbaa !77
  %1269 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %1270 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %1268, ptr noundef nonnull %1265, ptr noundef null, ptr noundef %1269) #19
  %1271 = getelementptr inbounds %struct.BezTriple, ptr %1265, i64 1
  %1272 = icmp eq i32 %1267, 0
  br i1 %1272, label %1289, label %1264, !llvm.loop !272

1273:                                             ; preds = %1257
  %1274 = getelementptr inbounds %struct.Nurb, ptr %1058, i64 0, i32 7
  %1275 = load i32, ptr %1274, align 4, !tbaa !61
  %1276 = mul nsw i32 %1275, %1261
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1289, label %1278

1278:                                             ; preds = %1273
  %1279 = load ptr, ptr %1184, align 8, !tbaa !62
  br label %1280

1280:                                             ; preds = %1280, %1278
  %1281 = phi ptr [ %1287, %1280 ], [ %1279, %1278 ]
  %1282 = phi i32 [ %1283, %1280 ], [ %1276, %1278 ]
  %1283 = add nsw i32 %1282, -1
  %1284 = load ptr, ptr %1254, align 8, !tbaa !77
  %1285 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %1286 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %1284, ptr noundef %1281, ptr noundef null, ptr noundef %1285) #19
  %1287 = getelementptr inbounds %struct.BPoint, ptr %1281, i64 1
  %1288 = icmp eq i32 %1283, 0
  br i1 %1288, label %1289, label %1280, !llvm.loop !273

1289:                                             ; preds = %1264, %1280, %1252, %1262, %1273
  tail call void @BKE_nurb_free(ptr noundef nonnull %1058) #19
  br label %1290

1290:                                             ; preds = %1289, %1179
  tail call void @BKE_curve_nurb_active_set(ptr noundef %6, ptr noundef nonnull %1057) #19
  br label %1373

1291:                                             ; preds = %1056
  %1292 = xor i1 %1059, %1060
  br i1 %1292, label %1293, label %1370

1293:                                             ; preds = %1291
  %1294 = select i1 %1060, ptr %1058, ptr %1057
  %1295 = getelementptr inbounds %struct.Nurb, ptr %1294, i64 0, i32 13
  %1296 = load i16, ptr %1295, align 4, !tbaa !69
  %1297 = and i16 %1296, 1
  %1298 = icmp eq i16 %1297, 0
  br i1 %1298, label %1299, label %1370

1299:                                             ; preds = %1293
  %1300 = getelementptr inbounds %struct.Nurb, ptr %1294, i64 0, i32 6
  %1301 = load i32, ptr %1300, align 8, !tbaa !52
  %1302 = icmp sgt i32 %1301, 1
  br i1 %1302, label %1303, label %1370

1303:                                             ; preds = %1299
  %1304 = getelementptr inbounds %struct.Nurb, ptr %1294, i64 0, i32 2
  %1305 = load i16, ptr %1304, align 8, !tbaa !50
  switch i16 %1305, label %1370 [
    i16 1, label %1306
    i16 4, label %1354
  ]

1306:                                             ; preds = %1303
  %1307 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 16
  %1308 = load i16, ptr %1307, align 8, !tbaa !221
  %1309 = and i16 %1308, 1
  %1310 = icmp eq i16 %1309, 0
  %1311 = getelementptr inbounds %struct.Nurb, ptr %1294, i64 0, i32 18
  %1312 = load ptr, ptr %1311, align 8, !tbaa !53
  %1313 = getelementptr inbounds %struct.BezTriple, ptr %1312, i64 0, i32 8
  %1314 = load i8, ptr %1313, align 4, !tbaa !59
  %1315 = and i8 %1314, 1
  %1316 = icmp eq i8 %1315, 0
  br i1 %1310, label %1318, label %1317

1317:                                             ; preds = %1306
  br i1 %1316, label %1352, label %1329

1318:                                             ; preds = %1306
  br i1 %1316, label %1319, label %1329

1319:                                             ; preds = %1318
  %1320 = getelementptr inbounds %struct.BezTriple, ptr %1312, i64 0, i32 7
  %1321 = load i8, ptr %1320, align 1, !tbaa !57
  %1322 = and i8 %1321, 1
  %1323 = icmp eq i8 %1322, 0
  br i1 %1323, label %1324, label %1329

1324:                                             ; preds = %1319
  %1325 = getelementptr inbounds %struct.BezTriple, ptr %1312, i64 0, i32 9
  %1326 = load i8, ptr %1325, align 1, !tbaa !60
  %1327 = and i8 %1326, 1
  %1328 = icmp eq i8 %1327, 0
  br i1 %1328, label %1352, label %1329

1329:                                             ; preds = %1324, %1319, %1318, %1317
  %1330 = getelementptr inbounds %struct.Nurb, ptr %1294, i64 0, i32 18
  %1331 = load ptr, ptr %1330, align 8, !tbaa !53
  %1332 = zext nneg i32 %1301 to i64
  %1333 = getelementptr %struct.BezTriple, ptr %1331, i64 %1332
  %1334 = getelementptr %struct.BezTriple, ptr %1333, i64 -1, i32 8
  %1335 = load i8, ptr %1334, align 4, !tbaa !59
  %1336 = and i8 %1335, 1
  %1337 = icmp eq i8 %1336, 0
  br i1 %1310, label %1339, label %1338

1338:                                             ; preds = %1329
  br i1 %1337, label %1352, label %1350

1339:                                             ; preds = %1329
  br i1 %1337, label %1340, label %1350

1340:                                             ; preds = %1339
  %1341 = getelementptr %struct.BezTriple, ptr %1333, i64 -1, i32 7
  %1342 = load i8, ptr %1341, align 1, !tbaa !57
  %1343 = and i8 %1342, 1
  %1344 = icmp eq i8 %1343, 0
  br i1 %1344, label %1345, label %1350

1345:                                             ; preds = %1340
  %1346 = getelementptr %struct.BezTriple, ptr %1333, i64 -1, i32 9
  %1347 = load i8, ptr %1346, align 1, !tbaa !60
  %1348 = and i8 %1347, 1
  %1349 = icmp eq i8 %1348, 0
  br i1 %1349, label %1352, label %1350

1350:                                             ; preds = %1345, %1340, %1339, %1338
  %1351 = or disjoint i16 %1296, 1
  store i16 %1351, ptr %1295, align 4, !tbaa !69
  tail call void @BKE_nurb_handles_calc(ptr noundef %1294) #19
  br label %1373

1352:                                             ; preds = %1345, %1338, %1324, %1317
  %1353 = icmp eq i16 %1305, 4
  br i1 %1353, label %1354, label %1370

1354:                                             ; preds = %1303, %1352
  %1355 = getelementptr inbounds %struct.Nurb, ptr %1294, i64 0, i32 17
  %1356 = load ptr, ptr %1355, align 8, !tbaa !62
  %1357 = getelementptr inbounds %struct.BPoint, ptr %1356, i64 0, i32 3
  %1358 = load i16, ptr %1357, align 4, !tbaa !64
  %1359 = and i16 %1358, 1
  %1360 = icmp eq i16 %1359, 0
  br i1 %1360, label %1370, label %1361

1361:                                             ; preds = %1354
  %1362 = zext nneg i32 %1301 to i64
  %1363 = getelementptr %struct.BPoint, ptr %1356, i64 %1362
  %1364 = getelementptr %struct.BPoint, ptr %1363, i64 -1, i32 3
  %1365 = load i16, ptr %1364, align 4, !tbaa !64
  %1366 = and i16 %1365, 1
  %1367 = icmp eq i16 %1366, 0
  br i1 %1367, label %1370, label %1368

1368:                                             ; preds = %1361
  %1369 = or disjoint i16 %1296, 1
  store i16 %1369, ptr %1295, align 4, !tbaa !69
  tail call void @BKE_nurb_knot_calc_u(ptr noundef %1294) #19
  br label %1373

1370:                                             ; preds = %1303, %1064, %1293, %1299, %1352, %1354, %1361, %1291
  %1371 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %1372 = load ptr, ptr %1371, align 8, !tbaa !175
  tail call void @BKE_report(ptr noundef %1372, i32 noundef 32, ptr noundef nonnull @.str.207) #19
  br label %1401

1373:                                             ; preds = %1290, %1350, %1368
  %1374 = load ptr, ptr %5, align 8, !tbaa !46
  %1375 = tail call ptr @BKE_animdata_from_id(ptr noundef %1374) #19
  %1376 = getelementptr inbounds %struct.Curve, ptr %1374, i64 0, i32 4
  %1377 = load ptr, ptr %1376, align 8, !tbaa !47
  %1378 = getelementptr inbounds %struct.EditNurb, ptr %1377, i64 0, i32 1
  %1379 = load ptr, ptr %1378, align 8, !tbaa !77
  %1380 = icmp eq ptr %1379, null
  br i1 %1380, label %1398, label %1381

1381:                                             ; preds = %1373
  %1382 = tail call ptr @BKE_animdata_from_id(ptr noundef %1374) #19
  %1383 = icmp eq ptr %1382, null
  br i1 %1383, label %1398, label %1384

1384:                                             ; preds = %1381
  %1385 = load ptr, ptr %1382, align 8, !tbaa !79
  %1386 = icmp eq ptr %1385, null
  br i1 %1386, label %1387, label %1391

1387:                                             ; preds = %1384
  %1388 = getelementptr inbounds %struct.AnimData, ptr %1382, i64 0, i32 5
  %1389 = load ptr, ptr %1388, align 8, !tbaa !81
  %1390 = icmp eq ptr %1389, null
  br i1 %1390, label %1398, label %1391

1391:                                             ; preds = %1387, %1384
  %1392 = load ptr, ptr %1375, align 8, !tbaa !79
  %1393 = icmp eq ptr %1392, null
  br i1 %1393, label %1396, label %1394

1394:                                             ; preds = %1391
  %1395 = getelementptr inbounds %struct.bAction, ptr %1392, i64 0, i32 1
  tail call fastcc void @curve_rename_fcurves(ptr noundef %1374, ptr noundef nonnull %1395)
  br label %1396

1396:                                             ; preds = %1394, %1391
  %1397 = getelementptr inbounds %struct.AnimData, ptr %1375, i64 0, i32 5
  tail call fastcc void @curve_rename_fcurves(ptr noundef %1374, ptr noundef nonnull %1397)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef %4) #19
  br label %1398

1398:                                             ; preds = %1387, %1381, %1373, %1396
  %1399 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %1399) #19
  %1400 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %1400, i16 noundef signext 0) #19
  br label %1401

1401:                                             ; preds = %898, %463, %415, %1398, %1370
  %1402 = phi i32 [ 4, %1398 ], [ 2, %1370 ], [ 2, %415 ], [ 2, %463 ], [ 4, %898 ]
  ret i32 %1402
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @mouse_nurb(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #5 {
  %6 = alloca %struct.anon.0, align 8
  %7 = alloca %struct.ViewContext, align 8
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %8, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !34
  %15 = and i16 %14, -2
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  br label %20

20:                                               ; preds = %5, %12, %17
  %21 = phi ptr [ %19, %17 ], [ null, %12 ], [ null, %5 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  %22 = tail call ptr @BKE_curve_vert_active_get(ptr noundef %10) #19
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #19
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %7) #19
  %23 = load i32, ptr %1, align 4, !tbaa !102
  %24 = getelementptr inbounds i32, ptr %1, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %26 = call float @ED_view3d_select_dist_px() #19
  %27 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 3
  store float %26, ptr %27, align 8, !tbaa !274
  %28 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 4
  store i32 0, ptr %28, align 4, !tbaa !276
  %29 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 5
  store i32 1, ptr %29, align 8, !tbaa !277
  %30 = sitofp i32 %23 to float
  %31 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 6
  store float %30, ptr %31, align 4, !tbaa !70
  %32 = sitofp i32 %25 to float
  %33 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 6, i64 1
  store float %32, ptr %33, align 8, !tbaa !70
  %34 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !278
  %36 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !280
  call void @ED_view3d_init_mats_rv3d(ptr noundef %35, ptr noundef %37) #19
  call void @nurbs_foreachScreenVert(ptr noundef nonnull %7, ptr noundef nonnull @findnearestNurbvert__doClosest, ptr noundef nonnull %6, i32 noundef 7) #19
  %38 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !281
  %40 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !282
  %42 = load ptr, ptr %6, align 8, !tbaa !283
  %43 = load i32, ptr %28, align 4, !tbaa !276
  %44 = trunc i32 %43 to i16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #19
  %45 = icmp ne ptr %41, null
  %46 = icmp ne ptr %42, null
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %48, label %185

48:                                               ; preds = %20
  %49 = icmp eq i8 %2, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %48
  br i1 %45, label %51, label %71

51:                                               ; preds = %50
  switch i16 %44, label %64 [
    i16 1, label %52
    i16 0, label %62
  ]

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  %54 = load i8, ptr %53, align 1, !tbaa !57
  %55 = or i8 %54, 1
  store i8 %55, ptr %53, align 1, !tbaa !57
  %56 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %57 = load i8, ptr %56, align 4, !tbaa !59
  %58 = or i8 %57, 1
  store i8 %58, ptr %56, align 4, !tbaa !59
  %59 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  %60 = load i8, ptr %59, align 1, !tbaa !60
  %61 = or i8 %60, 1
  store i8 %61, ptr %59, align 1, !tbaa !60
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %10, ptr noundef %39, ptr noundef %41) #19
  br label %178

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  br label %66

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %65, %64 ], [ %63, %62 ]
  %68 = load i8, ptr %67, align 1, !tbaa !191
  %69 = or i8 %68, 1
  store i8 %69, ptr %67, align 1, !tbaa !191
  %70 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 32
  store i32 -1, ptr %70, align 8, !tbaa !196
  br label %178

71:                                               ; preds = %50
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %10, ptr noundef %39, ptr noundef %42) #19
  %72 = getelementptr inbounds %struct.BPoint, ptr %42, i64 0, i32 3
  %73 = load i16, ptr %72, align 4, !tbaa !64
  %74 = or i16 %73, 1
  store i16 %74, ptr %72, align 4, !tbaa !64
  br label %178

75:                                               ; preds = %48
  %76 = icmp eq i8 %3, 0
  br i1 %76, label %107, label %77

77:                                               ; preds = %75
  br i1 %45, label %78, label %100

78:                                               ; preds = %77
  switch i16 %44, label %96 [
    i16 1, label %79
    i16 0, label %92
  ]

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  %81 = load i8, ptr %80, align 1, !tbaa !57
  %82 = and i8 %81, -2
  store i8 %82, ptr %80, align 1, !tbaa !57
  %83 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %84 = load i8, ptr %83, align 4, !tbaa !59
  %85 = and i8 %84, -2
  store i8 %85, ptr %83, align 4, !tbaa !59
  %86 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  %87 = load i8, ptr %86, align 1, !tbaa !60
  %88 = and i8 %87, -2
  store i8 %88, ptr %86, align 1, !tbaa !60
  %89 = icmp eq ptr %41, %22
  br i1 %89, label %90, label %178

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 32
  store i32 -1, ptr %91, align 8, !tbaa !196
  br label %178

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  %94 = load i8, ptr %93, align 1, !tbaa !57
  %95 = and i8 %94, -2
  store i8 %95, ptr %93, align 1, !tbaa !57
  br label %178

96:                                               ; preds = %78
  %97 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  %98 = load i8, ptr %97, align 1, !tbaa !60
  %99 = and i8 %98, -2
  store i8 %99, ptr %97, align 1, !tbaa !60
  br label %178

100:                                              ; preds = %77
  %101 = getelementptr inbounds %struct.BPoint, ptr %42, i64 0, i32 3
  %102 = load i16, ptr %101, align 4, !tbaa !64
  %103 = and i16 %102, -2
  store i16 %103, ptr %101, align 4, !tbaa !64
  %104 = icmp eq ptr %42, %22
  br i1 %104, label %105, label %178

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 32
  store i32 -1, ptr %106, align 8, !tbaa !196
  br label %178

107:                                              ; preds = %75
  %108 = icmp eq i8 %4, 0
  br i1 %108, label %152, label %109

109:                                              ; preds = %107
  br i1 %45, label %110, label %140

110:                                              ; preds = %109
  switch i16 %44, label %136 [
    i16 1, label %111
    i16 0, label %132
  ]

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %113 = load i8, ptr %112, align 4, !tbaa !59
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  %116 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  %117 = load i8, ptr %116, align 1, !tbaa !57
  %118 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  br i1 %115, label %127, label %119

119:                                              ; preds = %111
  %120 = and i8 %117, -2
  store i8 %120, ptr %116, align 1, !tbaa !57
  %121 = and i8 %113, -2
  store i8 %121, ptr %112, align 4, !tbaa !59
  %122 = load i8, ptr %118, align 1, !tbaa !60
  %123 = and i8 %122, -2
  store i8 %123, ptr %118, align 1, !tbaa !60
  %124 = icmp eq ptr %41, %22
  br i1 %124, label %125, label %178

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 32
  store i32 -1, ptr %126, align 8, !tbaa !196
  br label %178

127:                                              ; preds = %111
  %128 = or i8 %117, 1
  store i8 %128, ptr %116, align 1, !tbaa !57
  %129 = or disjoint i8 %113, 1
  store i8 %129, ptr %112, align 4, !tbaa !59
  %130 = load i8, ptr %118, align 1, !tbaa !60
  %131 = or i8 %130, 1
  store i8 %131, ptr %118, align 1, !tbaa !60
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %10, ptr noundef %39, ptr noundef %41) #19
  br label %178

132:                                              ; preds = %110
  %133 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  %134 = load i8, ptr %133, align 1, !tbaa !57
  %135 = xor i8 %134, 1
  store i8 %135, ptr %133, align 1, !tbaa !57
  br label %178

136:                                              ; preds = %110
  %137 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  %138 = load i8, ptr %137, align 1, !tbaa !60
  %139 = xor i8 %138, 1
  store i8 %139, ptr %137, align 1, !tbaa !60
  br label %178

140:                                              ; preds = %109
  %141 = getelementptr inbounds %struct.BPoint, ptr %42, i64 0, i32 3
  %142 = load i16, ptr %141, align 4, !tbaa !64
  %143 = and i16 %142, 1
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = and i16 %142, -2
  store i16 %146, ptr %141, align 4, !tbaa !64
  %147 = icmp eq ptr %42, %22
  br i1 %147, label %148, label %178

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 32
  store i32 -1, ptr %149, align 8, !tbaa !196
  br label %178

150:                                              ; preds = %140
  %151 = or disjoint i16 %142, 1
  store i16 %151, ptr %141, align 4, !tbaa !64
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %10, ptr noundef %39, ptr noundef %42) #19
  br label %178

152:                                              ; preds = %107
  call void @BKE_nurbList_flag_set(ptr noundef %21, i16 noundef signext 0) #19
  %153 = icmp eq ptr %41, null
  br i1 %153, label %174, label %154

154:                                              ; preds = %152
  switch i16 %44, label %167 [
    i16 1, label %155
    i16 0, label %165
  ]

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  %157 = load i8, ptr %156, align 1, !tbaa !57
  %158 = or i8 %157, 1
  store i8 %158, ptr %156, align 1, !tbaa !57
  %159 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %160 = load i8, ptr %159, align 4, !tbaa !59
  %161 = or i8 %160, 1
  store i8 %161, ptr %159, align 4, !tbaa !59
  %162 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  %163 = load i8, ptr %162, align 1, !tbaa !60
  %164 = or i8 %163, 1
  store i8 %164, ptr %162, align 1, !tbaa !60
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %10, ptr noundef %39, ptr noundef nonnull %41) #19
  br label %178

165:                                              ; preds = %154
  %166 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  br label %169

167:                                              ; preds = %154
  %168 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi ptr [ %168, %167 ], [ %166, %165 ]
  %171 = load i8, ptr %170, align 1, !tbaa !191
  %172 = or i8 %171, 1
  store i8 %172, ptr %170, align 1, !tbaa !191
  %173 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 32
  store i32 -1, ptr %173, align 8, !tbaa !196
  br label %178

174:                                              ; preds = %152
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %10, ptr noundef %39, ptr noundef %42) #19
  %175 = getelementptr inbounds %struct.BPoint, ptr %42, i64 0, i32 3
  %176 = load i16, ptr %175, align 4, !tbaa !64
  %177 = or i16 %176, 1
  store i16 %177, ptr %175, align 4, !tbaa !64
  br label %178

178:                                              ; preds = %100, %105, %90, %79, %96, %92, %174, %169, %155, %132, %136, %127, %125, %119, %145, %148, %150, %71, %66, %52
  %179 = call ptr @BKE_curve_nurb_active_get(ptr noundef %10) #19
  %180 = icmp eq ptr %39, %179
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 32
  store i32 -1, ptr %182, align 8, !tbaa !196
  call void @BKE_curve_nurb_active_set(ptr noundef %10, ptr noundef %39) #19
  br label %183

183:                                              ; preds = %181, %178
  %184 = load ptr, ptr %9, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %184) #19
  br label %185

185:                                              ; preds = %20, %183
  %186 = phi i8 [ 1, %183 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  ret i8 %186
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #6

declare ptr @BKE_curve_vert_active_get(ptr noundef) local_unnamed_addr #6

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #6

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_curve_nurb_vert_active_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_nurbList_flag_set(ptr noundef, i16 noundef signext) local_unnamed_addr #6

declare ptr @BKE_curve_nurb_active_get(ptr noundef) local_unnamed_addr #6

declare void @BKE_curve_nurb_active_set(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ed_editnurb_spin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %1, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !34
  %20 = and i16 %19, -2
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.Curve, ptr %15, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %4, %17, %22
  %26 = phi ptr [ %24, %22 ], [ null, %17 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #19
  call void @copy_m3_m4(ptr noundef nonnull %12, ptr noundef %0) #19
  %27 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %13, ptr noundef nonnull %12) #19
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %8, ptr noundef nonnull %28) #19
  %29 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  call void @axis_angle_to_mat3(ptr noundef nonnull %5, ptr noundef %2, float noundef 0x3FE921FB60000000) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  call void @unit_m3(ptr noundef nonnull %10) #19
  store float 0x3FF6A09E60000000, ptr %10, align 16, !tbaa !70
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  store float 0x3FF6A09E60000000, ptr %30, align 16, !tbaa !70
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef nonnull %8) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %6) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %5) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  call void @unit_m3(ptr noundef nonnull %11) #19
  %31 = load float, ptr %11, align 16, !tbaa !70
  %32 = fdiv float %31, 0x3FF6A09E60000000
  store float %32, ptr %11, align 16, !tbaa !70
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  %34 = load float, ptr %33, align 16, !tbaa !70
  %35 = fdiv float %34, 0x3FF6A09E60000000
  store float %35, ptr %33, align 16, !tbaa !70
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef nonnull %8) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %5) #19
  call void @mul_m3_m3m3(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  %36 = getelementptr inbounds %struct.Curve, ptr %15, i64 0, i32 4
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = getelementptr inbounds float, ptr %3, i64 2
  %39 = getelementptr inbounds float, ptr %3, i64 1
  %40 = getelementptr inbounds float, ptr %3, i64 2
  %41 = getelementptr inbounds float, ptr %3, i64 1
  %42 = getelementptr inbounds float, ptr %3, i64 2
  %43 = load ptr, ptr %36, align 8, !tbaa !47
  %44 = call zeroext i8 @ed_editnurb_extrude_flag(ptr noundef %43, i16 noundef signext 1), !range !284
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %349, label %53

46:                                               ; preds = %286
  %47 = load ptr, ptr %26, align 8, !tbaa !66
  %48 = icmp eq ptr %47, null
  br i1 %48, label %349, label %289

49:                                               ; preds = %286
  %50 = load ptr, ptr %36, align 8, !tbaa !47
  %51 = call zeroext i8 @ed_editnurb_extrude_flag(ptr noundef %50, i16 noundef signext 1), !range !284
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %349, label %53, !llvm.loop !285

53:                                               ; preds = %25, %49
  %54 = phi i32 [ %287, %49 ], [ 0, %25 ]
  %55 = load ptr, ptr %26, align 8, !tbaa !66
  %56 = icmp eq ptr %55, null
  br i1 %56, label %107, label %57

57:                                               ; preds = %53, %104
  %58 = phi ptr [ %105, %104 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 2
  %60 = load i16, ptr %59, align 8, !tbaa !50
  %61 = icmp eq i16 %60, 4
  br i1 %61, label %62, label %104

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !52
  %65 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !61
  %67 = mul nsw i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  br label %72

72:                                               ; preds = %101, %69
  %73 = phi i32 [ %75, %101 ], [ %67, %69 ]
  %74 = phi ptr [ %102, %101 ], [ %71, %69 ]
  %75 = add nsw i32 %73, -1
  %76 = getelementptr inbounds %struct.BPoint, ptr %74, i64 0, i32 3
  %77 = load i16, ptr %76, align 4, !tbaa !64
  %78 = and i16 %77, 1
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %72
  %81 = load float, ptr %3, align 4, !tbaa !70
  %82 = load float, ptr %74, align 4, !tbaa !70
  %83 = fsub float %82, %81
  store float %83, ptr %74, align 4, !tbaa !70
  %84 = load float, ptr %37, align 4, !tbaa !70
  %85 = getelementptr inbounds float, ptr %74, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !70
  %87 = fsub float %86, %84
  store float %87, ptr %85, align 4, !tbaa !70
  %88 = load float, ptr %38, align 4, !tbaa !70
  %89 = getelementptr inbounds float, ptr %74, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !70
  %91 = fsub float %90, %88
  store float %91, ptr %89, align 4, !tbaa !70
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %74) #19
  %92 = load float, ptr %3, align 4, !tbaa !70
  %93 = load float, ptr %74, align 4, !tbaa !70
  %94 = fadd float %92, %93
  store float %94, ptr %74, align 4, !tbaa !70
  %95 = load float, ptr %37, align 4, !tbaa !70
  %96 = load float, ptr %85, align 4, !tbaa !70
  %97 = fadd float %95, %96
  store float %97, ptr %85, align 4, !tbaa !70
  %98 = load float, ptr %38, align 4, !tbaa !70
  %99 = load float, ptr %89, align 4, !tbaa !70
  %100 = fadd float %98, %99
  store float %100, ptr %89, align 4, !tbaa !70
  br label %101

101:                                              ; preds = %80, %72
  %102 = getelementptr inbounds %struct.BPoint, ptr %74, i64 1
  %103 = icmp eq i32 %75, 0
  br i1 %103, label %104, label %72, !llvm.loop !286

104:                                              ; preds = %101, %62, %57
  %105 = load ptr, ptr %58, align 8, !tbaa !66
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %57, !llvm.loop !287

107:                                              ; preds = %104, %53
  %108 = and i32 %54, 1
  %109 = icmp eq i32 %108, 0
  %110 = load ptr, ptr %26, align 8, !tbaa !66
  %111 = icmp eq ptr %110, null
  br i1 %109, label %112, label %199

112:                                              ; preds = %107
  br i1 %111, label %163, label %113

113:                                              ; preds = %112, %160
  %114 = phi ptr [ %161, %160 ], [ %110, %112 ]
  %115 = getelementptr inbounds %struct.Nurb, ptr %114, i64 0, i32 2
  %116 = load i16, ptr %115, align 8, !tbaa !50
  %117 = icmp eq i16 %116, 4
  br i1 %117, label %118, label %160

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.Nurb, ptr %114, i64 0, i32 6
  %120 = load i32, ptr %119, align 8, !tbaa !52
  %121 = getelementptr inbounds %struct.Nurb, ptr %114, i64 0, i32 7
  %122 = load i32, ptr %121, align 4, !tbaa !61
  %123 = mul nsw i32 %122, %120
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %160, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.Nurb, ptr %114, i64 0, i32 17
  %127 = load ptr, ptr %126, align 8, !tbaa !62
  br label %128

128:                                              ; preds = %157, %125
  %129 = phi i32 [ %131, %157 ], [ %123, %125 ]
  %130 = phi ptr [ %158, %157 ], [ %127, %125 ]
  %131 = add nsw i32 %129, -1
  %132 = getelementptr inbounds %struct.BPoint, ptr %130, i64 0, i32 3
  %133 = load i16, ptr %132, align 4, !tbaa !64
  %134 = and i16 %133, 1
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %128
  %137 = load float, ptr %3, align 4, !tbaa !70
  %138 = load float, ptr %130, align 4, !tbaa !70
  %139 = fsub float %138, %137
  store float %139, ptr %130, align 4, !tbaa !70
  %140 = load float, ptr %41, align 4, !tbaa !70
  %141 = getelementptr inbounds float, ptr %130, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !70
  %143 = fsub float %142, %140
  store float %143, ptr %141, align 4, !tbaa !70
  %144 = load float, ptr %42, align 4, !tbaa !70
  %145 = getelementptr inbounds float, ptr %130, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !70
  %147 = fsub float %146, %144
  store float %147, ptr %145, align 4, !tbaa !70
  call void @mul_m3_v3(ptr noundef nonnull %10, ptr noundef nonnull %130) #19
  %148 = load float, ptr %3, align 4, !tbaa !70
  %149 = load float, ptr %130, align 4, !tbaa !70
  %150 = fadd float %148, %149
  store float %150, ptr %130, align 4, !tbaa !70
  %151 = load float, ptr %41, align 4, !tbaa !70
  %152 = load float, ptr %141, align 4, !tbaa !70
  %153 = fadd float %151, %152
  store float %153, ptr %141, align 4, !tbaa !70
  %154 = load float, ptr %42, align 4, !tbaa !70
  %155 = load float, ptr %145, align 4, !tbaa !70
  %156 = fadd float %154, %155
  store float %156, ptr %145, align 4, !tbaa !70
  br label %157

157:                                              ; preds = %136, %128
  %158 = getelementptr inbounds %struct.BPoint, ptr %130, i64 1
  %159 = icmp eq i32 %131, 0
  br i1 %159, label %160, label %128, !llvm.loop !286

160:                                              ; preds = %157, %118, %113
  %161 = load ptr, ptr %114, align 8, !tbaa !66
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %113, !llvm.loop !287

163:                                              ; preds = %160, %112
  %164 = load ptr, ptr %26, align 8, !tbaa !66
  %165 = icmp eq ptr %164, null
  br i1 %165, label %286, label %166

166:                                              ; preds = %163, %196
  %167 = phi ptr [ %197, %196 ], [ %164, %163 ]
  %168 = getelementptr inbounds %struct.Nurb, ptr %167, i64 0, i32 2
  %169 = load i16, ptr %168, align 8, !tbaa !50
  %170 = icmp eq i16 %169, 4
  br i1 %170, label %171, label %196

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.Nurb, ptr %167, i64 0, i32 6
  %173 = load i32, ptr %172, align 8, !tbaa !52
  %174 = getelementptr inbounds %struct.Nurb, ptr %167, i64 0, i32 7
  %175 = load i32, ptr %174, align 4, !tbaa !61
  %176 = mul nsw i32 %175, %173
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %196, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.Nurb, ptr %167, i64 0, i32 17
  %180 = load ptr, ptr %179, align 8, !tbaa !62
  br label %181

181:                                              ; preds = %178, %193
  %182 = phi i32 [ %184, %193 ], [ %176, %178 ]
  %183 = phi ptr [ %194, %193 ], [ %180, %178 ]
  %184 = add nsw i32 %182, -1
  %185 = getelementptr inbounds %struct.BPoint, ptr %183, i64 0, i32 3
  %186 = load i16, ptr %185, align 4, !tbaa !64
  %187 = and i16 %186, 1
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %181
  %190 = getelementptr inbounds [4 x float], ptr %183, i64 0, i64 3
  %191 = load float, ptr %190, align 4, !tbaa !70
  %192 = fmul float %191, 0x3FD6A09E60000000
  store float %192, ptr %190, align 4, !tbaa !70
  br label %193

193:                                              ; preds = %189, %181
  %194 = getelementptr inbounds %struct.BPoint, ptr %183, i64 1
  %195 = icmp eq i32 %184, 0
  br i1 %195, label %196, label %181, !llvm.loop !288

196:                                              ; preds = %193, %171, %166
  %197 = load ptr, ptr %167, align 8, !tbaa !66
  %198 = icmp eq ptr %197, null
  br i1 %198, label %286, label %166, !llvm.loop !289

199:                                              ; preds = %107
  br i1 %111, label %250, label %200

200:                                              ; preds = %199, %247
  %201 = phi ptr [ %248, %247 ], [ %110, %199 ]
  %202 = getelementptr inbounds %struct.Nurb, ptr %201, i64 0, i32 2
  %203 = load i16, ptr %202, align 8, !tbaa !50
  %204 = icmp eq i16 %203, 4
  br i1 %204, label %205, label %247

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.Nurb, ptr %201, i64 0, i32 6
  %207 = load i32, ptr %206, align 8, !tbaa !52
  %208 = getelementptr inbounds %struct.Nurb, ptr %201, i64 0, i32 7
  %209 = load i32, ptr %208, align 4, !tbaa !61
  %210 = mul nsw i32 %209, %207
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %247, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.Nurb, ptr %201, i64 0, i32 17
  %214 = load ptr, ptr %213, align 8, !tbaa !62
  br label %215

215:                                              ; preds = %244, %212
  %216 = phi i32 [ %218, %244 ], [ %210, %212 ]
  %217 = phi ptr [ %245, %244 ], [ %214, %212 ]
  %218 = add nsw i32 %216, -1
  %219 = getelementptr inbounds %struct.BPoint, ptr %217, i64 0, i32 3
  %220 = load i16, ptr %219, align 4, !tbaa !64
  %221 = and i16 %220, 1
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %244, label %223

223:                                              ; preds = %215
  %224 = load float, ptr %3, align 4, !tbaa !70
  %225 = load float, ptr %217, align 4, !tbaa !70
  %226 = fsub float %225, %224
  store float %226, ptr %217, align 4, !tbaa !70
  %227 = load float, ptr %39, align 4, !tbaa !70
  %228 = getelementptr inbounds float, ptr %217, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !70
  %230 = fsub float %229, %227
  store float %230, ptr %228, align 4, !tbaa !70
  %231 = load float, ptr %40, align 4, !tbaa !70
  %232 = getelementptr inbounds float, ptr %217, i64 2
  %233 = load float, ptr %232, align 4, !tbaa !70
  %234 = fsub float %233, %231
  store float %234, ptr %232, align 4, !tbaa !70
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %217) #19
  %235 = load float, ptr %3, align 4, !tbaa !70
  %236 = load float, ptr %217, align 4, !tbaa !70
  %237 = fadd float %235, %236
  store float %237, ptr %217, align 4, !tbaa !70
  %238 = load float, ptr %39, align 4, !tbaa !70
  %239 = load float, ptr %228, align 4, !tbaa !70
  %240 = fadd float %238, %239
  store float %240, ptr %228, align 4, !tbaa !70
  %241 = load float, ptr %40, align 4, !tbaa !70
  %242 = load float, ptr %232, align 4, !tbaa !70
  %243 = fadd float %241, %242
  store float %243, ptr %232, align 4, !tbaa !70
  br label %244

244:                                              ; preds = %223, %215
  %245 = getelementptr inbounds %struct.BPoint, ptr %217, i64 1
  %246 = icmp eq i32 %218, 0
  br i1 %246, label %247, label %215, !llvm.loop !286

247:                                              ; preds = %244, %205, %200
  %248 = load ptr, ptr %201, align 8, !tbaa !66
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %200, !llvm.loop !287

250:                                              ; preds = %247, %199
  %251 = load ptr, ptr %26, align 8, !tbaa !66
  %252 = icmp eq ptr %251, null
  br i1 %252, label %286, label %253

253:                                              ; preds = %250, %283
  %254 = phi ptr [ %284, %283 ], [ %251, %250 ]
  %255 = getelementptr inbounds %struct.Nurb, ptr %254, i64 0, i32 2
  %256 = load i16, ptr %255, align 8, !tbaa !50
  %257 = icmp eq i16 %256, 4
  br i1 %257, label %258, label %283

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.Nurb, ptr %254, i64 0, i32 6
  %260 = load i32, ptr %259, align 8, !tbaa !52
  %261 = getelementptr inbounds %struct.Nurb, ptr %254, i64 0, i32 7
  %262 = load i32, ptr %261, align 4, !tbaa !61
  %263 = mul nsw i32 %262, %260
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %283, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.Nurb, ptr %254, i64 0, i32 17
  %267 = load ptr, ptr %266, align 8, !tbaa !62
  br label %268

268:                                              ; preds = %265, %280
  %269 = phi i32 [ %271, %280 ], [ %263, %265 ]
  %270 = phi ptr [ %281, %280 ], [ %267, %265 ]
  %271 = add nsw i32 %269, -1
  %272 = getelementptr inbounds %struct.BPoint, ptr %270, i64 0, i32 3
  %273 = load i16, ptr %272, align 4, !tbaa !64
  %274 = and i16 %273, 1
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %268
  %277 = getelementptr inbounds [4 x float], ptr %270, i64 0, i64 3
  %278 = load float, ptr %277, align 4, !tbaa !70
  %279 = fmul float %278, 0x4006A09E60000000
  store float %279, ptr %277, align 4, !tbaa !70
  br label %280

280:                                              ; preds = %276, %268
  %281 = getelementptr inbounds %struct.BPoint, ptr %270, i64 1
  %282 = icmp eq i32 %271, 0
  br i1 %282, label %283, label %268, !llvm.loop !288

283:                                              ; preds = %280, %258, %253
  %284 = load ptr, ptr %254, align 8, !tbaa !66
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %253, !llvm.loop !289

286:                                              ; preds = %283, %196, %250, %163
  %287 = add nuw nsw i32 %54, 1
  %288 = icmp eq i32 %287, 7
  br i1 %288, label %46, label %49, !llvm.loop !285

289:                                              ; preds = %46, %346
  %290 = phi ptr [ %347, %346 ], [ %47, %46 ]
  %291 = getelementptr inbounds %struct.Nurb, ptr %290, i64 0, i32 2
  %292 = load i16, ptr %291, align 8, !tbaa !50
  %293 = icmp eq i16 %292, 1
  %294 = getelementptr inbounds %struct.Nurb, ptr %290, i64 0, i32 6
  %295 = load i32, ptr %294, align 8, !tbaa !52
  br i1 %293, label %296, label %322

296:                                              ; preds = %289
  %297 = icmp eq i32 %295, 0
  br i1 %297, label %346, label %298

298:                                              ; preds = %296
  %299 = getelementptr inbounds %struct.Nurb, ptr %290, i64 0, i32 18
  %300 = load ptr, ptr %299, align 8, !tbaa !53
  br label %304

301:                                              ; preds = %317
  %302 = getelementptr inbounds %struct.BezTriple, ptr %306, i64 1
  %303 = icmp eq i32 %307, 0
  br i1 %303, label %346, label %304, !llvm.loop !54

304:                                              ; preds = %301, %298
  %305 = phi i32 [ %307, %301 ], [ %295, %298 ]
  %306 = phi ptr [ %302, %301 ], [ %300, %298 ]
  %307 = add nsw i32 %305, -1
  %308 = getelementptr inbounds %struct.BezTriple, ptr %306, i64 0, i32 7
  %309 = load i8, ptr %308, align 1, !tbaa !57
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %312, label %341

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.BezTriple, ptr %306, i64 0, i32 8
  %314 = load i8, ptr %313, align 4, !tbaa !59
  %315 = and i8 %314, 1
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %341

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.BezTriple, ptr %306, i64 0, i32 9
  %319 = load i8, ptr %318, align 1, !tbaa !60
  %320 = and i8 %319, 1
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %301, label %341

322:                                              ; preds = %289
  %323 = getelementptr inbounds %struct.Nurb, ptr %290, i64 0, i32 7
  %324 = load i32, ptr %323, align 4, !tbaa !61
  %325 = mul nsw i32 %324, %295
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %346, label %327

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.Nurb, ptr %290, i64 0, i32 17
  %329 = load ptr, ptr %328, align 8, !tbaa !62
  br label %334

330:                                              ; preds = %334
  %331 = add nsw i32 %335, -1
  %332 = getelementptr inbounds %struct.BPoint, ptr %336, i64 1
  %333 = icmp eq i32 %331, 0
  br i1 %333, label %346, label %334, !llvm.loop !63

334:                                              ; preds = %330, %327
  %335 = phi i32 [ %331, %330 ], [ %325, %327 ]
  %336 = phi ptr [ %332, %330 ], [ %329, %327 ]
  %337 = getelementptr inbounds %struct.BPoint, ptr %336, i64 0, i32 3
  %338 = load i16, ptr %337, align 4, !tbaa !64
  %339 = and i16 %338, 1
  %340 = icmp eq i16 %339, 0
  br i1 %340, label %330, label %341

341:                                              ; preds = %334, %317, %312, %304
  %342 = getelementptr inbounds %struct.Nurb, ptr %290, i64 0, i32 12
  store i16 4, ptr %342, align 2, !tbaa !73
  %343 = getelementptr inbounds %struct.Nurb, ptr %290, i64 0, i32 14
  %344 = load i16, ptr %343, align 2, !tbaa !74
  %345 = or i16 %344, 1
  store i16 %345, ptr %343, align 2, !tbaa !74
  call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %290) #19
  br label %346

346:                                              ; preds = %330, %301, %296, %322, %341
  %347 = load ptr, ptr %290, align 8, !tbaa !66
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %289, !llvm.loop !290

349:                                              ; preds = %49, %346, %25, %46
  %350 = phi i8 [ 1, %46 ], [ 0, %25 ], [ 1, %346 ], [ 1, %49 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  ret i8 %350
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @unit_m3(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_spin(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.95, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.96, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.97, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @spin_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @spin_invoke, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurf, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %9, ptr noundef nonnull @.str.98, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #19
  %11 = load ptr, ptr %8, align 8, !tbaa !199
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.101, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, float noundef -1.000000e+00, float noundef 1.000000e+00) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @spin_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %7 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  call void @RNA_float_get_array(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #19
  %10 = load ptr, ptr %8, align 8, !tbaa !200
  call void @RNA_float_get_array(ptr noundef %10, ptr noundef nonnull @.str.101, ptr noundef nonnull %4) #19
  %11 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 50
  %12 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  %13 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %3) #19
  %14 = icmp eq ptr %7, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %16) #19
  br label %18

17:                                               ; preds = %2
  call void @unit_m4(ptr noundef nonnull %5) #19
  br label %18

18:                                               ; preds = %17, %15
  %19 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %3), !range !284
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !175
  call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.213) #19
  br label %53

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = call ptr @BKE_animdata_from_id(ptr noundef %26) #19
  %28 = getelementptr inbounds %struct.Curve, ptr %26, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.EditNurb, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %24
  %34 = call ptr @BKE_animdata_from_id(ptr noundef %26) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %34, align 8, !tbaa !79
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.AnimData, ptr %34, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39, %36
  %44 = load ptr, ptr %27, align 8, !tbaa !79
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bAction, ptr %44, i64 0, i32 1
  call fastcc void @curve_rename_fcurves(ptr noundef %26, ptr noundef nonnull %47)
  br label %48

48:                                               ; preds = %46, %43
  %49 = getelementptr inbounds %struct.AnimData, ptr %27, i64 0, i32 5
  call fastcc void @curve_rename_fcurves(ptr noundef %26, ptr noundef nonnull %49)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef %6) #19
  br label %50

50:                                               ; preds = %39, %33, %24, %48
  %51 = load ptr, ptr %25, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %51) #19
  %52 = load ptr, ptr %25, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %52, i16 noundef signext 0) #19
  br label %53

53:                                               ; preds = %50, %21
  %54 = phi i32 [ 4, %50 ], [ 2, %21 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @spin_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 {
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %7 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.spin_invoke.axis, i64 12, i1 false)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 2, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !70
  store float %11, ptr %4, align 4, !tbaa !70
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 2, i64 2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !70
  %14 = getelementptr inbounds float, ptr %4, i64 1
  store float %13, ptr %14, align 4, !tbaa !70
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 2, i64 2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !70
  %17 = getelementptr inbounds float, ptr %4, i64 2
  store float %16, ptr %17, align 4, !tbaa !70
  br label %18

18:                                               ; preds = %9, %3
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !200
  %21 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %5, ptr noundef %6) #19
  tail call void @RNA_float_set_array(ptr noundef %20, ptr noundef nonnull @.str.98, ptr noundef %21) #19
  %22 = load ptr, ptr %19, align 8, !tbaa !200
  call void @RNA_float_set_array(ptr noundef %22, ptr noundef nonnull @.str.101, ptr noundef nonnull %4) #19
  %23 = call i32 @spin_exec(ptr noundef %0, ptr noundef %1), !range !291
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret i32 %23
}

declare i32 @ED_operator_editsurf(ptr noundef) #6

declare ptr @RNA_def_float_vector_xyz(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_vertex_add(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.104, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.105, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_vertex_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @add_vertex_invoke, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %9, ptr noundef nonnull @.str.107, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, float noundef -1.000000e+04, float noundef 1.000000e+04) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_vertex_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.107, ptr noundef nonnull %3) #19
  %6 = call fastcc i32 @addvert_Nurb(ptr noundef %0, i16 noundef signext 0, ptr noundef nonnull %3), !range !291
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_vertex_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #5 {
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.ViewContext, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [2 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %5) #19
  %13 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !280
  %15 = icmp eq ptr %14, null
  br i1 %15, label %76, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %18, ptr noundef nonnull @.str.107) #19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %76

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  %22 = load ptr, ptr %5, align 8, !tbaa !292
  %23 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 20
  %24 = load ptr, ptr %23, align 8, !tbaa !293
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 54
  %26 = load i16, ptr %25, align 2, !tbaa !312
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 51
  %31 = load i8, ptr %30, align 1, !tbaa !319
  %32 = icmp ne i8 %31, 3
  br label %33

33:                                               ; preds = %29, %21
  %34 = phi i1 [ true, %21 ], [ %32, %29 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %35 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !278
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.Curve, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  call fastcc void @findselectedNurbvert(ptr noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %41 = load ptr, ptr %8, align 8, !tbaa !66
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 47
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %44, ptr noundef nonnull %45) #19
  br label %62

46:                                               ; preds = %33
  %47 = load ptr, ptr %9, align 8, !tbaa !66
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %50, ptr noundef nonnull %47) #19
  br label %62

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !320
  %54 = call ptr @ED_view3d_cursor3d_get(ptr noundef %22, ptr noundef %53) #19
  %55 = load float, ptr %54, align 4, !tbaa !70
  store float %55, ptr %6, align 4, !tbaa !70
  %56 = getelementptr inbounds float, ptr %54, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !70
  %58 = getelementptr inbounds float, ptr %6, i64 1
  store float %57, ptr %58, align 4, !tbaa !70
  %59 = getelementptr inbounds float, ptr %54, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !70
  %61 = getelementptr inbounds float, ptr %6, i64 2
  store float %60, ptr %61, align 4, !tbaa !70
  br label %62

62:                                               ; preds = %49, %51, %43
  %63 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !321
  %65 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_view3d_win_to_3d_int(ptr noundef %64, ptr noundef nonnull %6, ptr noundef nonnull %65, ptr noundef nonnull %6) #19
  br i1 %34, label %74, label %66

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %67 = load i32, ptr %65, align 4, !tbaa !102
  %68 = sitofp i32 %67 to float
  store float %68, ptr %10, align 4, !tbaa !70
  %69 = getelementptr inbounds float, ptr %10, i64 1
  %70 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %71 = load i32, ptr %70, align 4, !tbaa !102
  %72 = sitofp i32 %71 to float
  store float %72, ptr %69, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #19
  %73 = call zeroext i8 @snapObjectsContext(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %11, i32 noundef 2) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %74

74:                                               ; preds = %66, %62
  %75 = load ptr, ptr %17, align 8, !tbaa !200
  call void @RNA_float_set_array(ptr noundef %75, ptr noundef nonnull @.str.107, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  br label %76

76:                                               ; preds = %74, %16, %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %77 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !200
  call void @RNA_float_get_array(ptr noundef %78, ptr noundef nonnull @.str.107, ptr noundef nonnull %4) #19
  %79 = call fastcc i32 @addvert_Nurb(ptr noundef %0, i16 noundef signext 0, ptr noundef nonnull %4), !range !291
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_extrude(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.110, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.111, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.112, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @extrude_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.113, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.18) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @extrude_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %82

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  br label %12

12:                                               ; preds = %10, %79
  %13 = phi i1 [ %9, %10 ], [ %81, %79 ]
  %14 = phi ptr [ %8, %10 ], [ %80, %79 ]
  %15 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !61
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %79

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !50
  %21 = icmp eq i16 %20, 1
  %22 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !52
  %24 = icmp eq i32 %23, 0
  br i1 %21, label %25, label %59

25:                                               ; preds = %18
  br i1 %24, label %76, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = load i16, ptr %11, align 8, !tbaa !221
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br label %32

32:                                               ; preds = %55, %26
  %33 = phi i32 [ %23, %26 ], [ %36, %55 ]
  %34 = phi i32 [ 0, %26 ], [ %56, %55 ]
  %35 = phi ptr [ %28, %26 ], [ %57, %55 ]
  %36 = add nsw i32 %33, -1
  %37 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 0, i32 8
  %38 = load i8, ptr %37, align 4, !tbaa !59
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %31, label %42, label %41

41:                                               ; preds = %32
  br i1 %40, label %55, label %53

42:                                               ; preds = %32
  br i1 %40, label %43, label %53

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 0, i32 7
  %45 = load i8, ptr %44, align 1, !tbaa !57
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 0, i32 9
  %50 = load i8, ptr %49, align 1, !tbaa !60
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48, %43, %42, %41
  %54 = add nsw i32 %34, 1
  br label %55

55:                                               ; preds = %53, %48, %41
  %56 = phi i32 [ %54, %53 ], [ %34, %41 ], [ %34, %48 ]
  %57 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 1
  %58 = icmp eq i32 %36, 0
  br i1 %58, label %76, label %32, !llvm.loop !255

59:                                               ; preds = %18
  br i1 %24, label %76, label %60

60:                                               ; preds = %59
  %61 = mul nuw nsw i32 %23, %16
  %62 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !62
  br label %64

64:                                               ; preds = %64, %60
  %65 = phi i32 [ %73, %64 ], [ 0, %60 ]
  %66 = phi i32 [ %68, %64 ], [ %61, %60 ]
  %67 = phi ptr [ %74, %64 ], [ %63, %60 ]
  %68 = add nsw i32 %66, -1
  %69 = getelementptr inbounds %struct.BPoint, ptr %67, i64 0, i32 3
  %70 = load i16, ptr %69, align 4, !tbaa !64
  %71 = and i16 %70, 1
  %72 = zext nneg i16 %71 to i32
  %73 = add i32 %65, %72
  %74 = getelementptr inbounds %struct.BPoint, ptr %67, i64 1
  %75 = icmp eq i32 %68, 0
  br i1 %75, label %76, label %64, !llvm.loop !256

76:                                               ; preds = %64, %55, %25, %59
  %77 = phi i32 [ 0, %25 ], [ 0, %59 ], [ %56, %55 ], [ %73, %64 ]
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %12, %76
  %80 = load ptr, ptr %14, align 8, !tbaa !66
  %81 = icmp ne ptr %80, null
  br i1 %81, label %12, label %82, !llvm.loop !322

82:                                               ; preds = %79, %76, %2
  %83 = phi i1 [ %9, %2 ], [ %81, %79 ], [ %13, %76 ]
  %84 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %85 = load i16, ptr %84, align 8, !tbaa !34
  %86 = icmp eq i16 %85, 2
  %87 = or i1 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = tail call fastcc i32 @addvert_Nurb(ptr noundef %0, i16 noundef signext 101, ptr noundef null), !range !291
  br label %121

90:                                               ; preds = %82
  %91 = tail call zeroext i8 @ed_editnurb_extrude_flag(ptr noundef nonnull %7, i16 noundef signext 1), !range !284
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %121, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %4, align 8, !tbaa !46
  %95 = tail call ptr @BKE_animdata_from_id(ptr noundef %94) #19
  %96 = getelementptr inbounds %struct.Curve, ptr %94, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !47
  %98 = getelementptr inbounds %struct.EditNurb, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !77
  %100 = icmp eq ptr %99, null
  br i1 %100, label %118, label %101

101:                                              ; preds = %93
  %102 = tail call ptr @BKE_animdata_from_id(ptr noundef %94) #19
  %103 = icmp eq ptr %102, null
  br i1 %103, label %118, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %102, align 8, !tbaa !79
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.AnimData, ptr %102, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !81
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %107, %104
  %112 = load ptr, ptr %95, align 8, !tbaa !79
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.bAction, ptr %112, i64 0, i32 1
  tail call fastcc void @curve_rename_fcurves(ptr noundef %94, ptr noundef nonnull %115)
  br label %116

116:                                              ; preds = %114, %111
  %117 = getelementptr inbounds %struct.AnimData, ptr %95, i64 0, i32 5
  tail call fastcc void @curve_rename_fcurves(ptr noundef %94, ptr noundef nonnull %117)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef %3) #19
  br label %118

118:                                              ; preds = %107, %101, %93, %116
  %119 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %119) #19
  %120 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %120, i16 noundef signext 0) #19
  br label %121

121:                                              ; preds = %90, %118, %88
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_cyclic_toggle(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.119, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.120, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @toggle_cyclic_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @toggle_cyclic_invoke, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.122, ptr noundef nonnull @CURVE_OT_cyclic_toggle.direction_items, i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @toggle_cyclic_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !34
  %10 = and i16 %9, -2
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %7, %12
  %16 = phi ptr [ %14, %12 ], [ null, %7 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.122) #19
  %20 = load ptr, ptr %16, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %158, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  %24 = icmp eq i32 %19, 1
  br label %25

25:                                               ; preds = %22, %155
  %26 = phi ptr [ %20, %22 ], [ %156, %155 ]
  %27 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !52
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !61
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %155

34:                                               ; preds = %30, %25
  %35 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !50
  switch i16 %36, label %93 [
    i16 0, label %37
    i16 1, label %57
  ]

37:                                               ; preds = %34
  %38 = icmp eq i32 %28, 0
  br i1 %38, label %155, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  br label %46

42:                                               ; preds = %46
  %43 = getelementptr inbounds %struct.BPoint, ptr %48, i64 1
  %44 = add nsw i32 %47, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %155, label %46, !llvm.loop !323

46:                                               ; preds = %39, %42
  %47 = phi i32 [ %44, %42 ], [ %28, %39 ]
  %48 = phi ptr [ %43, %42 ], [ %41, %39 ]
  %49 = getelementptr inbounds %struct.BPoint, ptr %48, i64 0, i32 3
  %50 = load i16, ptr %49, align 4, !tbaa !64
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %42, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 13
  %55 = load i16, ptr %54, align 4, !tbaa !69
  %56 = xor i16 %55, 1
  store i16 %56, ptr %54, align 4, !tbaa !69
  br label %155

57:                                               ; preds = %34
  %58 = icmp eq i32 %28, 0
  br i1 %58, label %92, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !53
  %62 = load i16, ptr %23, align 8, !tbaa !221
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br label %65

65:                                               ; preds = %59, %89
  %66 = phi i32 [ %28, %59 ], [ %68, %89 ]
  %67 = phi ptr [ %61, %59 ], [ %90, %89 ]
  %68 = add nsw i32 %66, -1
  %69 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 0, i32 8
  %70 = load i8, ptr %69, align 4, !tbaa !59
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %64, label %74, label %73

73:                                               ; preds = %65
  br i1 %72, label %89, label %85

74:                                               ; preds = %65
  br i1 %72, label %75, label %85

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 0, i32 7
  %77 = load i8, ptr %76, align 1, !tbaa !57
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 0, i32 9
  %82 = load i8, ptr %81, align 1, !tbaa !60
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80, %75, %74, %73
  %86 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 13
  %87 = load i16, ptr %86, align 4, !tbaa !69
  %88 = xor i16 %87, 1
  store i16 %88, ptr %86, align 4, !tbaa !69
  br label %92

89:                                               ; preds = %80, %73
  %90 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 1
  %91 = icmp eq i32 %68, 0
  br i1 %91, label %92, label %65, !llvm.loop !324

92:                                               ; preds = %89, %57, %85
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %26) #19
  br label %155

93:                                               ; preds = %34
  %94 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 7
  %95 = load i32, ptr %94, align 4, !tbaa !61
  %96 = icmp eq i32 %95, 1
  %97 = icmp eq i16 %36, 4
  %98 = and i1 %97, %96
  br i1 %98, label %99, label %123

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 15
  %101 = load ptr, ptr %100, align 8, !tbaa !67
  %102 = icmp eq ptr %101, null
  %103 = icmp eq i32 %28, 0
  %104 = or i1 %102, %103
  br i1 %104, label %155, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  br label %112

108:                                              ; preds = %112
  %109 = getelementptr inbounds %struct.BPoint, ptr %114, i64 1
  %110 = add nsw i32 %113, -1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %155, label %112, !llvm.loop !325

112:                                              ; preds = %105, %108
  %113 = phi i32 [ %110, %108 ], [ %28, %105 ]
  %114 = phi ptr [ %109, %108 ], [ %107, %105 ]
  %115 = getelementptr inbounds %struct.BPoint, ptr %114, i64 0, i32 3
  %116 = load i16, ptr %115, align 4, !tbaa !64
  %117 = and i16 %116, 1
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %108, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 13
  %121 = load i16, ptr %120, align 4, !tbaa !69
  %122 = xor i16 %121, 1
  store i16 %122, ptr %120, align 4, !tbaa !69
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %26) #19
  br label %155

123:                                              ; preds = %93
  br i1 %97, label %124, label %155

124:                                              ; preds = %123
  %125 = mul nsw i32 %95, %28
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %155, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 17
  %129 = load ptr, ptr %128, align 8, !tbaa !62
  br label %134

130:                                              ; preds = %134
  %131 = getelementptr inbounds %struct.BPoint, ptr %136, i64 1
  %132 = add nsw i32 %135, -1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %155, label %134, !llvm.loop !326

134:                                              ; preds = %127, %130
  %135 = phi i32 [ %132, %130 ], [ %125, %127 ]
  %136 = phi ptr [ %131, %130 ], [ %129, %127 ]
  %137 = getelementptr inbounds %struct.BPoint, ptr %136, i64 0, i32 3
  %138 = load i16, ptr %137, align 4, !tbaa !64
  %139 = and i16 %138, 1
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %130, label %141

141:                                              ; preds = %134
  switch i32 %19, label %155 [
    i32 0, label %142
    i32 1, label %148
  ]

142:                                              ; preds = %141
  br i1 %29, label %143, label %147

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 13
  %145 = load i16, ptr %144, align 4, !tbaa !69
  %146 = xor i16 %145, 1
  store i16 %146, ptr %144, align 4, !tbaa !69
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %26) #19
  br label %147

147:                                              ; preds = %143, %142
  br i1 %24, label %148, label %155

148:                                              ; preds = %141, %147
  %149 = load i32, ptr %94, align 4, !tbaa !61
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 14
  %153 = load i16, ptr %152, align 2, !tbaa !74
  %154 = xor i16 %153, 1
  store i16 %154, ptr %152, align 2, !tbaa !74
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %26) #19
  br label %155

155:                                              ; preds = %42, %130, %108, %37, %124, %141, %30, %92, %123, %147, %148, %151, %99, %119, %53
  %156 = load ptr, ptr %26, align 8, !tbaa !66
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %25, !llvm.loop !327

158:                                              ; preds = %155, %15
  %159 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %159) #19
  %160 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %160, i16 noundef signext 0) #19
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @toggle_cyclic_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = and i16 %8, -2
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %3, %6, %11
  %17 = phi ptr [ %15, %11 ], [ null, %6 ], [ null, %3 ]
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !34
  %20 = icmp eq i16 %19, 3
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %21, %44
  %25 = phi ptr [ %45, %44 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !52
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !61
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %44

33:                                               ; preds = %29, %24
  %34 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 2
  %35 = load i16, ptr %34, align 8, !tbaa !50
  %36 = icmp eq i16 %35, 4
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.123, i32 noundef 0) #19
  %39 = tail call ptr @uiPupMenuLayout(ptr noundef %38) #19
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !328
  %42 = getelementptr inbounds %struct.wmOperatorType, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !168
  tail call void @uiItemsEnumO(ptr noundef %39, ptr noundef %43, ptr noundef nonnull @.str.122) #19
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %38) #19
  br label %49

44:                                               ; preds = %29, %33
  %45 = load ptr, ptr %25, align 8, !tbaa !66
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %24, !llvm.loop !329

47:                                               ; preds = %44, %21, %16
  %48 = tail call i32 @toggle_cyclic_exec(ptr noundef %0, ptr noundef %1)
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi i32 [ 32, %37 ], [ 4, %47 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.126, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.127, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_linked_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_linked_invoke, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %98, label %10

10:                                               ; preds = %2, %95
  %11 = phi ptr [ %96, %95 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !50
  %14 = icmp eq i16 %13, 1
  %15 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !52
  br i1 %14, label %17, label %63

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %95, label %24

21:                                               ; preds = %37
  %22 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 1
  %23 = icmp eq i32 %27, 0
  br i1 %23, label %95, label %24, !llvm.loop !330

24:                                               ; preds = %17, %21
  %25 = phi i32 [ %27, %21 ], [ %16, %17 ]
  %26 = phi ptr [ %22, %21 ], [ %19, %17 ]
  %27 = add nsw i32 %25, -1
  %28 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 7
  %29 = load i8, ptr %28, align 1, !tbaa !57
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 8
  %34 = load i8, ptr %33, align 4, !tbaa !59
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 9
  %39 = load i8, ptr %38, align 1, !tbaa !60
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %21, label %42

42:                                               ; preds = %37, %32, %24
  br label %43

43:                                               ; preds = %42, %60
  %44 = phi i32 [ %46, %60 ], [ %16, %42 ]
  %45 = phi ptr [ %61, %60 ], [ %19, %42 ]
  %46 = add nsw i32 %44, -1
  %47 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 10
  %48 = load i8, ptr %47, align 2, !tbaa !157
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 7
  %52 = load i8, ptr %51, align 1, !tbaa !57
  %53 = or i8 %52, 1
  store i8 %53, ptr %51, align 1, !tbaa !57
  %54 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 8
  %55 = load i8, ptr %54, align 4, !tbaa !59
  %56 = or i8 %55, 1
  store i8 %56, ptr %54, align 4, !tbaa !59
  %57 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 9
  %58 = load i8, ptr %57, align 1, !tbaa !60
  %59 = or i8 %58, 1
  store i8 %59, ptr %57, align 1, !tbaa !60
  br label %60

60:                                               ; preds = %43, %50
  %61 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 1
  %62 = icmp eq i32 %46, 0
  br i1 %62, label %95, label %43, !llvm.loop !331

63:                                               ; preds = %10
  %64 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %65 = load ptr, ptr %64, align 8, !tbaa !62
  %66 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %67 = load i32, ptr %66, align 4, !tbaa !61
  %68 = mul nsw i32 %67, %16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %95, label %74

70:                                               ; preds = %74
  %71 = getelementptr inbounds %struct.BPoint, ptr %76, i64 1
  %72 = add nsw i32 %75, -1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %95, label %74, !llvm.loop !332

74:                                               ; preds = %63, %70
  %75 = phi i32 [ %72, %70 ], [ %68, %63 ]
  %76 = phi ptr [ %71, %70 ], [ %65, %63 ]
  %77 = getelementptr inbounds %struct.BPoint, ptr %76, i64 0, i32 3
  %78 = load i16, ptr %77, align 4, !tbaa !64
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %70, label %81

81:                                               ; preds = %74, %92
  %82 = phi i32 [ %84, %92 ], [ %68, %74 ]
  %83 = phi ptr [ %93, %92 ], [ %65, %74 ]
  %84 = add nsw i32 %82, -1
  %85 = getelementptr inbounds %struct.BPoint, ptr %83, i64 0, i32 4
  %86 = load i16, ptr %85, align 2, !tbaa !159
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.BPoint, ptr %83, i64 0, i32 3
  %90 = load i16, ptr %89, align 4, !tbaa !64
  %91 = or i16 %90, 1
  store i16 %91, ptr %89, align 4, !tbaa !64
  br label %92

92:                                               ; preds = %81, %88
  %93 = getelementptr inbounds %struct.BPoint, ptr %83, i64 1
  %94 = icmp eq i32 %84, 0
  br i1 %94, label %95, label %81, !llvm.loop !333

95:                                               ; preds = %70, %92, %21, %60, %63, %17
  %96 = load ptr, ptr %11, align 8, !tbaa !66
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %10, !llvm.loop !334

98:                                               ; preds = %95, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #19
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_linked_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #5 {
  %4 = tail call i32 @select_linked_exec(ptr noundef %0, ptr poison)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.128, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.129, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.130, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_linked_pick_invoke, ptr %4, align 8, !tbaa !198
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve_region_view3d, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.131, i32 noundef 0, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #5 {
  %4 = alloca %struct.anon.0, align 8
  %5 = alloca %struct.ViewContext, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !200
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.131) #19
  %10 = icmp eq i32 %9, 0
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #19
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %5) #19
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %12 = call float @ED_view3d_select_dist_px() #19
  %13 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 3
  store float %12, ptr %13, align 8, !tbaa !274
  %14 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 4
  store i32 0, ptr %14, align 4, !tbaa !276
  %15 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 5
  store i32 1, ptr %15, align 8, !tbaa !277
  %16 = load i32, ptr %11, align 4, !tbaa !102
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 6
  store float %17, ptr %18, align 4, !tbaa !70
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !102
  %21 = sitofp i32 %20 to float
  %22 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 6, i64 1
  store float %21, ptr %22, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !278
  %25 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !280
  call void @ED_view3d_init_mats_rv3d(ptr noundef %24, ptr noundef %26) #19
  call void @nurbs_foreachScreenVert(ptr noundef nonnull %5, ptr noundef nonnull @findnearestNurbvert__doClosest, ptr noundef nonnull %4, i32 noundef 7) #19
  %27 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !281
  %29 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !282
  %31 = load ptr, ptr %4, align 8, !tbaa !283
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #19
  %32 = icmp eq ptr %30, null
  br i1 %32, label %69, label %33

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !52
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %97, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  br label %40

40:                                               ; preds = %37, %66
  %41 = phi i32 [ %43, %66 ], [ %35, %37 ]
  %42 = phi ptr [ %67, %66 ], [ %39, %37 ]
  %43 = add nsw i32 %41, -1
  %44 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 10
  %45 = load i8, ptr %44, align 2, !tbaa !157
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 7
  %49 = load i8, ptr %48, align 1, !tbaa !57
  %50 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 8
  %51 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 9
  br i1 %10, label %52, label %58

52:                                               ; preds = %47
  %53 = or i8 %49, 1
  store i8 %53, ptr %48, align 1, !tbaa !57
  %54 = load i8, ptr %50, align 4, !tbaa !59
  %55 = or i8 %54, 1
  store i8 %55, ptr %50, align 4, !tbaa !59
  %56 = load i8, ptr %51, align 1, !tbaa !60
  %57 = or i8 %56, 1
  br label %64

58:                                               ; preds = %47
  %59 = and i8 %49, -2
  store i8 %59, ptr %48, align 1, !tbaa !57
  %60 = load i8, ptr %50, align 4, !tbaa !59
  %61 = and i8 %60, -2
  store i8 %61, ptr %50, align 4, !tbaa !59
  %62 = load i8, ptr %51, align 1, !tbaa !60
  %63 = and i8 %62, -2
  br label %64

64:                                               ; preds = %58, %52
  %65 = phi i8 [ %57, %52 ], [ %63, %58 ]
  store i8 %65, ptr %51, align 1, !tbaa !60
  br label %66

66:                                               ; preds = %64, %40
  %67 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 1
  %68 = icmp eq i32 %43, 0
  br i1 %68, label %97, label %40, !llvm.loop !335

69:                                               ; preds = %3
  %70 = icmp eq ptr %31, null
  br i1 %70, label %97, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !52
  %74 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 7
  %75 = load i32, ptr %74, align 4, !tbaa !61
  %76 = mul nsw i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.Nurb, ptr %28, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  %81 = zext i1 %10 to i16
  br label %82

82:                                               ; preds = %78, %94
  %83 = phi i32 [ %85, %94 ], [ %76, %78 ]
  %84 = phi ptr [ %95, %94 ], [ %80, %78 ]
  %85 = add nsw i32 %83, -1
  %86 = getelementptr inbounds %struct.BPoint, ptr %84, i64 0, i32 4
  %87 = load i16, ptr %86, align 2, !tbaa !159
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.BPoint, ptr %84, i64 0, i32 3
  %91 = load i16, ptr %90, align 4, !tbaa !64
  %92 = and i16 %91, -2
  %93 = or disjoint i16 %92, %81
  store i16 %93, ptr %90, align 4, !tbaa !64
  br label %94

94:                                               ; preds = %89, %82
  %95 = getelementptr inbounds %struct.BPoint, ptr %84, i64 1
  %96 = icmp eq i32 %85, 0
  br i1 %96, label %97, label %82, !llvm.loop !336

97:                                               ; preds = %66, %94, %33, %71, %69
  %98 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %99) #19
  br i1 %10, label %102, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %98, align 8, !tbaa !46
  call void @BKE_curve_nurb_vert_active_validate(ptr noundef %101) #19
  br label %102

102:                                              ; preds = %100, %97
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  ret i32 4
}

declare i32 @ED_operator_editsurfcurve_region_view3d(ptr noundef) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_row(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.134, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.135, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.136, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_row_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurf, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_row_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %5, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = and i16 %11, -2
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  br label %17

17:                                               ; preds = %2, %9, %14
  %18 = phi ptr [ %16, %14 ], [ null, %9 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !66
  %19 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %81, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @select_row_exec.last, align 8, !tbaa !66
  %23 = load ptr, ptr %4, align 8, !tbaa !66
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, ptr @select_row_exec.direction, align 4, !tbaa !102
  %27 = sub nuw nsw i32 1, %26
  store i32 %27, ptr @select_row_exec.direction, align 4, !tbaa !102
  call void @BKE_nurbList_flag_set(ptr noundef %18, i16 noundef signext 0) #19
  br label %28

28:                                               ; preds = %25, %21
  %29 = load ptr, ptr %4, align 8, !tbaa !66
  store ptr %29, ptr @select_row_exec.last, align 8, !tbaa !66
  %30 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 32
  %31 = load i32, ptr %30, align 8, !tbaa !196
  %32 = load ptr, ptr %3, align 8, !tbaa !66
  %33 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !52
  %35 = srem i32 %31, %34
  %36 = sdiv i32 %31, %34
  %37 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  store ptr %38, ptr %4, align 8, !tbaa !66
  %39 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !61
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %28
  %43 = load ptr, ptr %4, align 8, !tbaa !66
  %44 = icmp sgt i32 %34, 0
  %45 = load i32, ptr @select_row_exec.direction, align 4
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %42, %75
  %48 = phi i32 [ 0, %42 ], [ %77, %75 ]
  %49 = phi ptr [ %43, %42 ], [ %76, %75 ]
  br i1 %44, label %50, label %75

50:                                               ; preds = %47
  %51 = icmp eq i32 %48, %36
  br label %52

52:                                               ; preds = %50, %70
  %53 = phi i32 [ 0, %50 ], [ %71, %70 ]
  %54 = phi ptr [ %49, %50 ], [ %72, %70 ]
  br i1 %46, label %60, label %55

55:                                               ; preds = %52
  br i1 %51, label %56, label %70

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.BPoint, ptr %54, i64 0, i32 4
  %58 = load i16, ptr %57, align 2, !tbaa !159
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %66, label %70

60:                                               ; preds = %52
  %61 = icmp eq i32 %53, %35
  br i1 %61, label %62, label %70

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.BPoint, ptr %54, i64 0, i32 4
  %64 = load i16, ptr %63, align 2, !tbaa !159
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %56
  %67 = getelementptr inbounds %struct.BPoint, ptr %54, i64 0, i32 3
  %68 = load i16, ptr %67, align 4, !tbaa !64
  %69 = or i16 %68, 1
  store i16 %69, ptr %67, align 4, !tbaa !64
  br label %70

70:                                               ; preds = %66, %62, %56, %55, %60
  %71 = add nuw nsw i32 %53, 1
  %72 = getelementptr inbounds %struct.BPoint, ptr %54, i64 1
  %73 = icmp eq i32 %71, %34
  br i1 %73, label %74, label %52, !llvm.loop !337

74:                                               ; preds = %70
  store ptr %72, ptr %4, align 8, !tbaa !66
  br label %75

75:                                               ; preds = %74, %47
  %76 = phi ptr [ %72, %74 ], [ %49, %47 ]
  %77 = add nuw nsw i32 %48, 1
  %78 = icmp eq i32 %77, %40
  br i1 %78, label %79, label %47, !llvm.loop !338

79:                                               ; preds = %75, %28
  %80 = load ptr, ptr %6, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %80) #19
  br label %81

81:                                               ; preds = %17, %79
  %82 = phi i32 [ 4, %79 ], [ 2, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 %82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_next(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.137, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.138, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.139, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_next_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_next_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  tail call fastcc void @select_adjacent_cp(ptr noundef %16, i16 noundef signext 1)
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %18) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_previous(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.140, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.142, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_previous_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_previous_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  tail call fastcc void @select_adjacent_cp(ptr noundef %16, i16 noundef signext -1)
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %18) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.143, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.145, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_more_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i16 %18, 3
  br i1 %19, label %20, label %145

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !66
  %22 = icmp eq ptr %21, null
  br i1 %22, label %146, label %23

23:                                               ; preds = %20, %141
  %24 = phi ptr [ %143, %141 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.Nurb, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.Nurb, ptr %24, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !61
  %29 = mul nsw i32 %28, %26
  %30 = getelementptr inbounds %struct.Nurb, ptr %24, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %33 = ashr i32 %29, 5
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 2
  %37 = tail call ptr %32(i64 noundef %36, ptr noundef nonnull @.str.219) #19
  %38 = icmp sgt i32 %29, 0
  br i1 %38, label %39, label %141

39:                                               ; preds = %23, %135
  %40 = phi i32 [ %139, %135 ], [ %29, %23 ]
  %41 = phi ptr [ %138, %135 ], [ %31, %23 ]
  %42 = lshr i32 %40, 5
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %37, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !102
  %46 = and i32 %40, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %135

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.BPoint, ptr %41, i64 0, i32 4
  %52 = load i16, ptr %51, align 2, !tbaa !159
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %135

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.BPoint, ptr %41, i64 0, i32 3
  %56 = load i16, ptr %55, align 4, !tbaa !64
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %135, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %25, align 8, !tbaa !52
  %61 = srem i32 %40, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = getelementptr %struct.BPoint, ptr %41, i64 -1, i32 3
  %65 = load i16, ptr %64, align 4, !tbaa !64
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr %struct.BPoint, ptr %41, i64 -1, i32 4
  %70 = load i16, ptr %69, align 2, !tbaa !159
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = or disjoint i16 %65, 1
  store i16 %73, ptr %64, align 4, !tbaa !64
  br label %74

74:                                               ; preds = %72, %68, %63, %59
  %75 = icmp sgt i32 %40, %60
  br i1 %75, label %76, label %96

76:                                               ; preds = %74
  %77 = sext i32 %60 to i64
  %78 = getelementptr inbounds %struct.BPoint, ptr %41, i64 %77, i32 3
  %79 = load i16, ptr %78, align 4, !tbaa !64
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.BPoint, ptr %41, i64 %77, i32 4
  %84 = load i16, ptr %83, align 2, !tbaa !159
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = or disjoint i16 %79, 1
  store i16 %87, ptr %78, align 4, !tbaa !64
  %88 = sub nsw i32 %40, %60
  %89 = and i32 %88, 31
  %90 = shl nuw i32 1, %89
  %91 = ashr i32 %88, 5
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %37, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !102
  %95 = or i32 %94, %90
  store i32 %95, ptr %93, align 4, !tbaa !102
  br label %96

96:                                               ; preds = %76, %82, %86, %74
  %97 = load i32, ptr %25, align 8, !tbaa !52
  %98 = add nsw i32 %97, %40
  %99 = load i32, ptr %27, align 4, !tbaa !61
  %100 = mul nsw i32 %99, %97
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = sext i32 %97 to i64
  %104 = sub nsw i64 0, %103
  %105 = getelementptr inbounds %struct.BPoint, ptr %41, i64 %104, i32 3
  %106 = load i16, ptr %105, align 4, !tbaa !64
  %107 = and i16 %106, 1
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.BPoint, ptr %41, i64 %104, i32 4
  %111 = load i16, ptr %110, align 2, !tbaa !159
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = or disjoint i16 %106, 1
  store i16 %114, ptr %105, align 4, !tbaa !64
  br label %115

115:                                              ; preds = %113, %109, %102, %96
  %116 = srem i32 %40, %97
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %135, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.BPoint, ptr %41, i64 1, i32 3
  %120 = load i16, ptr %119, align 4, !tbaa !64
  %121 = and i16 %120, 1
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.BPoint, ptr %41, i64 1, i32 4
  %125 = load i16, ptr %124, align 2, !tbaa !159
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = or disjoint i16 %120, 1
  store i16 %128, ptr %119, align 4, !tbaa !64
  br label %129

129:                                              ; preds = %127, %123, %118
  %130 = phi i1 [ false, %118 ], [ true, %127 ], [ false, %123 ]
  %131 = zext i1 %130 to i64
  %132 = getelementptr inbounds %struct.BPoint, ptr %41, i64 %131
  %133 = sext i1 %130 to i32
  %134 = add nsw i32 %40, %133
  br label %135

135:                                              ; preds = %129, %115, %54, %50, %39
  %136 = phi ptr [ %41, %39 ], [ %41, %115 ], [ %41, %54 ], [ %41, %50 ], [ %132, %129 ]
  %137 = phi i32 [ %40, %39 ], [ %40, %115 ], [ %40, %54 ], [ %40, %50 ], [ %134, %129 ]
  %138 = getelementptr inbounds %struct.BPoint, ptr %136, i64 1
  %139 = add nsw i32 %137, -1
  %140 = icmp sgt i32 %137, 1
  br i1 %140, label %39, label %141, !llvm.loop !339

141:                                              ; preds = %135, %23
  %142 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %142(ptr noundef %37) #19
  %143 = load ptr, ptr %24, align 8, !tbaa !66
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %23, !llvm.loop !340

145:                                              ; preds = %15
  tail call fastcc void @select_adjacent_cp(ptr noundef %16, i16 noundef signext 1)
  tail call fastcc void @select_adjacent_cp(ptr noundef %16, i16 noundef signext -1)
  br label %146

146:                                              ; preds = %141, %20, %145
  %147 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %148 = load ptr, ptr %147, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %148) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.146, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.147, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.148, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_less_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp ne ptr %3, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !34
  %15 = icmp eq i16 %14, 3
  %16 = load ptr, ptr %12, align 8, !tbaa !66
  %17 = icmp eq ptr %16, null
  br i1 %15, label %19, label %18

18:                                               ; preds = %2
  br i1 %17, label %292, label %159

19:                                               ; preds = %2
  br i1 %17, label %292, label %20

20:                                               ; preds = %19, %155
  %21 = phi ptr [ %157, %155 ], [ %16, %19 ]
  %22 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !61
  %26 = mul nsw i32 %25, %23
  %27 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %30 = ashr i32 %26, 5
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call ptr %29(i64 noundef %33, ptr noundef nonnull @.str.219) #19
  %35 = icmp eq i32 %26, 0
  br i1 %35, label %155, label %36

36:                                               ; preds = %20, %152
  %37 = phi i32 [ %39, %152 ], [ %26, %20 ]
  %38 = phi ptr [ %153, %152 ], [ %28, %20 ]
  %39 = add nsw i32 %37, -1
  %40 = getelementptr inbounds %struct.BPoint, ptr %38, i64 0, i32 4
  %41 = load i16, ptr %40, align 2, !tbaa !159
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %152

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.BPoint, ptr %38, i64 0, i32 3
  %45 = load i16, ptr %44, align 4, !tbaa !64
  %46 = and i16 %45, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %152, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %22, align 8, !tbaa !52
  %50 = srem i32 %37, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = ashr i32 %37, 5
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %34, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !102
  %57 = and i32 %37, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = getelementptr %struct.BPoint, ptr %38, i64 -1, i32 4
  %63 = load i16, ptr %62, align 2, !tbaa !159
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = getelementptr %struct.BPoint, ptr %38, i64 -1, i32 3
  %67 = load i16, ptr %66, align 4, !tbaa !64
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %52
  br label %71

71:                                               ; preds = %61, %65, %70, %48
  %72 = phi i32 [ 1, %48 ], [ 1, %70 ], [ 0, %65 ], [ 0, %61 ]
  %73 = icmp eq i32 %50, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = add nuw nsw i32 %72, 1
  br label %86

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.BPoint, ptr %38, i64 1, i32 4
  %78 = load i16, ptr %77, align 2, !tbaa !159
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.BPoint, ptr %38, i64 1, i32 3
  %82 = load i16, ptr %81, align 4, !tbaa !64
  %83 = and i16 %82, 1
  %84 = zext nneg i16 %83 to i32
  %85 = add nuw nsw i32 %72, %84
  br label %86

86:                                               ; preds = %80, %76, %74
  %87 = phi i32 [ %75, %74 ], [ %72, %76 ], [ %85, %80 ]
  %88 = load i32, ptr %24, align 4, !tbaa !61
  %89 = add i32 %88, -1
  %90 = mul i32 %89, %49
  %91 = icmp sgt i32 %37, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = add nuw nsw i32 %87, 1
  br label %117

94:                                               ; preds = %86
  %95 = sext i32 %49 to i64
  %96 = sub nsw i64 0, %95
  %97 = add nsw i32 %49, %39
  %98 = ashr i32 %97, 5
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %34, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !102
  %102 = and i32 %97, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.BPoint, ptr %38, i64 %96, i32 4
  %108 = load i16, ptr %107, align 2, !tbaa !159
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.BPoint, ptr %38, i64 %96, i32 3
  %112 = load i16, ptr %111, align 4, !tbaa !64
  %113 = and i16 %112, 1
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %110, %94
  %116 = add nuw nsw i32 %87, 1
  br label %117

117:                                              ; preds = %106, %110, %115, %92
  %118 = phi i32 [ %93, %92 ], [ %116, %115 ], [ %87, %110 ], [ %87, %106 ]
  %119 = icmp sgt i32 %37, %49
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = add nsw i32 %118, 1
  br label %133

122:                                              ; preds = %117
  %123 = sext i32 %49 to i64
  %124 = getelementptr inbounds %struct.BPoint, ptr %38, i64 %123, i32 4
  %125 = load i16, ptr %124, align 2, !tbaa !159
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.BPoint, ptr %38, i64 %123, i32 3
  %129 = load i16, ptr %128, align 4, !tbaa !64
  %130 = and i16 %129, 1
  %131 = zext nneg i16 %130 to i32
  %132 = add nsw i32 %118, %131
  br label %133

133:                                              ; preds = %122, %127, %120
  %134 = phi i32 [ %121, %120 ], [ %118, %122 ], [ %132, %127 ]
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %152, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.BPoint, ptr %38, i64 0, i32 4
  %138 = load i16, ptr %137, align 2, !tbaa !159
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.BPoint, ptr %38, i64 0, i32 3
  %142 = load i16, ptr %141, align 4, !tbaa !64
  %143 = and i16 %142, -2
  store i16 %143, ptr %141, align 4, !tbaa !64
  br label %144

144:                                              ; preds = %136, %140
  %145 = and i32 %39, 31
  %146 = shl nuw i32 1, %145
  %147 = ashr i32 %39, 5
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %34, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !102
  %151 = or i32 %150, %146
  store i32 %151, ptr %149, align 4, !tbaa !102
  br label %152

152:                                              ; preds = %36, %43, %133, %144
  %153 = getelementptr inbounds %struct.BPoint, ptr %38, i64 1
  %154 = icmp eq i32 %39, 0
  br i1 %154, label %155, label %36, !llvm.loop !341

155:                                              ; preds = %152, %20
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %156(ptr noundef %34) #19
  %157 = load ptr, ptr %21, align 8, !tbaa !66
  %158 = icmp eq ptr %157, null
  br i1 %158, label %292, label %20, !llvm.loop !342

159:                                              ; preds = %18, %289
  %160 = phi ptr [ %290, %289 ], [ %16, %18 ]
  %161 = getelementptr inbounds %struct.Nurb, ptr %160, i64 0, i32 2
  %162 = load i16, ptr %161, align 8, !tbaa !50
  %163 = icmp eq i16 %162, 1
  %164 = getelementptr inbounds %struct.Nurb, ptr %160, i64 0, i32 6
  %165 = load i32, ptr %164, align 8, !tbaa !52
  br i1 %163, label %166, label %231

166:                                              ; preds = %159
  %167 = icmp eq i32 %165, 0
  br i1 %167, label %289, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.Nurb, ptr %160, i64 0, i32 18
  %170 = load ptr, ptr %169, align 8, !tbaa !53
  br label %171

171:                                              ; preds = %168, %227
  %172 = phi i32 [ %228, %227 ], [ 0, %168 ]
  %173 = phi i32 [ %175, %227 ], [ %165, %168 ]
  %174 = phi ptr [ %229, %227 ], [ %170, %168 ]
  %175 = add nsw i32 %173, -1
  %176 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 0, i32 10
  %177 = load i8, ptr %176, align 2, !tbaa !157
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %227

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 0, i32 8
  %181 = load i8, ptr %180, align 4, !tbaa !59
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %227, label %184

184:                                              ; preds = %179
  %185 = icmp eq i32 %172, 1
  %186 = zext i1 %185 to i32
  %187 = icmp eq i32 %173, %165
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = select i1 %185, i32 2, i32 1
  br label %201

190:                                              ; preds = %184
  %191 = getelementptr %struct.BezTriple, ptr %174, i64 -1, i32 10
  %192 = load i8, ptr %191, align 2, !tbaa !157
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = getelementptr %struct.BezTriple, ptr %174, i64 -1, i32 8
  %196 = load i8, ptr %195, align 4, !tbaa !59
  %197 = and i8 %196, 1
  %198 = icmp eq i8 %197, 0
  %199 = select i1 %185, i32 2, i32 1
  %200 = select i1 %198, i32 %186, i32 %199
  br label %201

201:                                              ; preds = %194, %190, %188
  %202 = phi i32 [ %189, %188 ], [ %186, %190 ], [ %200, %194 ]
  %203 = icmp eq i32 %175, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = add nuw nsw i32 %202, 1
  br label %216

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 1, i32 10
  %208 = load i8, ptr %207, align 2, !tbaa !157
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 1, i32 8
  %212 = load i8, ptr %211, align 4, !tbaa !59
  %213 = and i8 %212, 1
  %214 = zext nneg i8 %213 to i32
  %215 = add nuw nsw i32 %202, %214
  br label %216

216:                                              ; preds = %210, %206, %204
  %217 = phi i32 [ %205, %204 ], [ %202, %206 ], [ %215, %210 ]
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %227, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 0, i32 7
  %221 = load i8, ptr %220, align 1, !tbaa !57
  %222 = and i8 %221, -2
  store i8 %222, ptr %220, align 1, !tbaa !57
  %223 = and i8 %181, -2
  store i8 %223, ptr %180, align 4, !tbaa !59
  %224 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 0, i32 9
  %225 = load i8, ptr %224, align 1, !tbaa !60
  %226 = and i8 %225, -2
  store i8 %226, ptr %224, align 1, !tbaa !60
  br label %227

227:                                              ; preds = %219, %171, %179, %216
  %228 = phi i32 [ 0, %216 ], [ 0, %179 ], [ 0, %171 ], [ 1, %219 ]
  %229 = getelementptr inbounds %struct.BezTriple, ptr %174, i64 1
  %230 = icmp eq i32 %175, 0
  br i1 %230, label %289, label %171, !llvm.loop !343

231:                                              ; preds = %159
  %232 = getelementptr inbounds %struct.Nurb, ptr %160, i64 0, i32 7
  %233 = load i32, ptr %232, align 4, !tbaa !61
  %234 = mul nsw i32 %233, %165
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %289, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.Nurb, ptr %160, i64 0, i32 17
  %238 = load ptr, ptr %237, align 8, !tbaa !62
  br label %239

239:                                              ; preds = %236, %285
  %240 = phi i32 [ %286, %285 ], [ 0, %236 ]
  %241 = phi i32 [ %243, %285 ], [ %234, %236 ]
  %242 = phi ptr [ %287, %285 ], [ %238, %236 ]
  %243 = add nsw i32 %241, -1
  %244 = icmp eq i32 %240, 0
  br i1 %244, label %245, label %285

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.BPoint, ptr %242, i64 0, i32 4
  %247 = load i16, ptr %246, align 2, !tbaa !159
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %249, label %285

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.BPoint, ptr %242, i64 0, i32 3
  %251 = load i16, ptr %250, align 4, !tbaa !64
  %252 = and i16 %251, 1
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %285, label %254

254:                                              ; preds = %249
  %255 = icmp eq i32 %241, %234
  br i1 %255, label %265, label %256

256:                                              ; preds = %254
  %257 = getelementptr %struct.BPoint, ptr %242, i64 -1, i32 4
  %258 = load i16, ptr %257, align 2, !tbaa !159
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = getelementptr %struct.BPoint, ptr %242, i64 -1, i32 3
  %262 = load i16, ptr %261, align 4, !tbaa !64
  %263 = and i16 %262, 1
  %264 = zext nneg i16 %263 to i32
  br label %265

265:                                              ; preds = %260, %256, %254
  %266 = phi i32 [ 1, %254 ], [ 0, %256 ], [ %264, %260 ]
  %267 = icmp eq i32 %243, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = add nuw nsw i32 %266, 1
  br label %280

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.BPoint, ptr %242, i64 1, i32 4
  %272 = load i16, ptr %271, align 2, !tbaa !159
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.BPoint, ptr %242, i64 1, i32 3
  %276 = load i16, ptr %275, align 4, !tbaa !64
  %277 = and i16 %276, 1
  %278 = zext nneg i16 %277 to i32
  %279 = add nuw nsw i32 %266, %278
  br label %280

280:                                              ; preds = %274, %270, %268
  %281 = phi i32 [ %269, %268 ], [ %266, %270 ], [ %279, %274 ]
  %282 = icmp eq i32 %281, 2
  br i1 %282, label %285, label %283

283:                                              ; preds = %280
  %284 = and i16 %251, -2
  store i16 %284, ptr %250, align 4, !tbaa !64
  br label %285

285:                                              ; preds = %283, %239, %245, %249, %280
  %286 = phi i32 [ 0, %280 ], [ 0, %249 ], [ 0, %245 ], [ 0, %239 ], [ 1, %283 ]
  %287 = getelementptr inbounds %struct.BPoint, ptr %242, i64 1
  %288 = icmp eq i32 %243, 0
  br i1 %288, label %289, label %239, !llvm.loop !344

289:                                              ; preds = %285, %227, %231, %166
  %290 = load ptr, ptr %160, align 8, !tbaa !66
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %159, !llvm.loop !345

292:                                              ; preds = %289, %155, %18, %19
  %293 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %294 = load ptr, ptr %293, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %294) #19
  %295 = load ptr, ptr %293, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %295) #19
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_select_random(ptr noundef %0) local_unnamed_addr #5 {
  store ptr @.str.149, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.150, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.151, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_select_random_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.152, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, float noundef 0.000000e+00, float noundef 1.000000e+02) #19
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @curve_select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.198) #19
  %20 = icmp eq i32 %19, 1
  %21 = load ptr, ptr %17, align 8, !tbaa !200
  %22 = tail call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.152) #19
  %23 = fdiv float %22, 1.000000e+02
  %24 = load ptr, ptr %16, align 8, !tbaa !66
  %25 = icmp eq ptr %24, null
  br i1 %25, label %107, label %26

26:                                               ; preds = %15
  %27 = zext i1 %20 to i16
  br label %28

28:                                               ; preds = %26, %104
  %29 = phi ptr [ %105, %104 ], [ %24, %26 ]
  %30 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !50
  %32 = icmp eq i16 %31, 1
  %33 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !52
  br i1 %32, label %35, label %75

35:                                               ; preds = %28
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %104, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  br label %40

40:                                               ; preds = %37, %72
  %41 = phi i32 [ %43, %72 ], [ %34, %37 ]
  %42 = phi ptr [ %73, %72 ], [ %39, %37 ]
  %43 = add nsw i32 %41, -1
  %44 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 10
  %45 = load i8, ptr %44, align 2, !tbaa !157
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %40
  %48 = tail call float @BLI_frand() #19
  %49 = fcmp olt float %48, %23
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load i8, ptr %44, align 2, !tbaa !157
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 7
  %55 = load i8, ptr %54, align 1, !tbaa !57
  %56 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 8
  %57 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 9
  br i1 %20, label %58, label %64

58:                                               ; preds = %53
  %59 = or i8 %55, 1
  store i8 %59, ptr %54, align 1, !tbaa !57
  %60 = load i8, ptr %56, align 4, !tbaa !59
  %61 = or i8 %60, 1
  store i8 %61, ptr %56, align 4, !tbaa !59
  %62 = load i8, ptr %57, align 1, !tbaa !60
  %63 = or i8 %62, 1
  br label %70

64:                                               ; preds = %53
  %65 = and i8 %55, -2
  store i8 %65, ptr %54, align 1, !tbaa !57
  %66 = load i8, ptr %56, align 4, !tbaa !59
  %67 = and i8 %66, -2
  store i8 %67, ptr %56, align 4, !tbaa !59
  %68 = load i8, ptr %57, align 1, !tbaa !60
  %69 = and i8 %68, -2
  br label %70

70:                                               ; preds = %58, %64
  %71 = phi i8 [ %69, %64 ], [ %63, %58 ]
  store i8 %71, ptr %57, align 1, !tbaa !60
  br label %72

72:                                               ; preds = %70, %50, %47, %40
  %73 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 1
  %74 = icmp eq i32 %43, 0
  br i1 %74, label %104, label %40, !llvm.loop !346

75:                                               ; preds = %28
  %76 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 7
  %77 = load i32, ptr %76, align 4, !tbaa !61
  %78 = mul nsw i32 %77, %34
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %104, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 17
  %82 = load ptr, ptr %81, align 8, !tbaa !62
  br label %83

83:                                               ; preds = %80, %101
  %84 = phi i32 [ %86, %101 ], [ %78, %80 ]
  %85 = phi ptr [ %102, %101 ], [ %82, %80 ]
  %86 = add nsw i32 %84, -1
  %87 = getelementptr inbounds %struct.BPoint, ptr %85, i64 0, i32 4
  %88 = load i16, ptr %87, align 2, !tbaa !159
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = tail call float @BLI_frand() #19
  %92 = fcmp olt float %91, %23
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i16, ptr %87, align 2, !tbaa !159
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.BPoint, ptr %85, i64 0, i32 3
  %98 = load i16, ptr %97, align 4, !tbaa !64
  %99 = and i16 %98, -2
  %100 = or disjoint i16 %99, %27
  store i16 %100, ptr %97, align 4, !tbaa !64
  br label %101

101:                                              ; preds = %96, %93, %90, %83
  %102 = getelementptr inbounds %struct.BPoint, ptr %85, i64 1
  %103 = icmp eq i32 %86, 0
  br i1 %103, label %104, label %83, !llvm.loop !347

104:                                              ; preds = %101, %72, %75, %35
  %105 = load ptr, ptr %29, align 8, !tbaa !66
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %28, !llvm.loop !348

107:                                              ; preds = %104, %15
  %108 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %109) #19
  %110 = load ptr, ptr %108, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %110) #19
  ret i32 4
}

declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_curve_select_nth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !66
  %5 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %93, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr %4, align 8, !tbaa !66
  br i1 %11, label %46, label %13

13:                                               ; preds = %7
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %10 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 72
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %93, label %22

22:                                               ; preds = %13
  %23 = sext i32 %20 to i64
  %24 = getelementptr %struct.BezTriple, ptr %10, i64 %23
  br label %25

25:                                               ; preds = %22, %44
  %26 = phi i32 [ %29, %44 ], [ %20, %22 ]
  %27 = phi ptr [ %28, %44 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 -1
  %29 = add nsw i32 %26, -1
  %30 = sub nsw i32 %18, %29
  %31 = call i32 @llvm.abs.i32(i32 %30, i1 true)
  %32 = srem i32 %31, %1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %25
  %35 = getelementptr %struct.BezTriple, ptr %27, i64 -1, i32 7
  %36 = load i8, ptr %35, align 1, !tbaa !57
  %37 = and i8 %36, -2
  store i8 %37, ptr %35, align 1, !tbaa !57
  %38 = getelementptr %struct.BezTriple, ptr %27, i64 -1, i32 8
  %39 = load i8, ptr %38, align 4, !tbaa !59
  %40 = and i8 %39, -2
  store i8 %40, ptr %38, align 4, !tbaa !59
  %41 = getelementptr %struct.BezTriple, ptr %27, i64 -1, i32 9
  %42 = load i8, ptr %41, align 1, !tbaa !60
  %43 = and i8 %42, -2
  store i8 %43, ptr %41, align 1, !tbaa !60
  br label %44

44:                                               ; preds = %34, %25
  %45 = icmp eq i32 %29, 0
  br i1 %45, label %93, label %25, !llvm.loop !349

46:                                               ; preds = %7
  %47 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = ptrtoint ptr %12 to i64
  %50 = ptrtoint ptr %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 36
  %53 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !52
  %55 = sext i32 %54 to i64
  %56 = sdiv i64 %52, %55
  %57 = trunc i64 %56 to i32
  %58 = srem i64 %52, %55
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 7
  %61 = load i32, ptr %60, align 4, !tbaa !61
  %62 = mul nsw i32 %61, %54
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %46
  %65 = add nsw i32 %61, -1
  %66 = sext i32 %62 to i64
  %67 = getelementptr %struct.BPoint, ptr %48, i64 %66
  br label %68

68:                                               ; preds = %64, %87
  %69 = phi i32 [ %75, %87 ], [ %62, %64 ]
  %70 = phi i32 [ %91, %87 ], [ %54, %64 ]
  %71 = phi i32 [ %90, %87 ], [ %65, %64 ]
  %72 = phi ptr [ %73, %87 ], [ %67, %64 ]
  %73 = getelementptr inbounds %struct.BPoint, ptr %72, i64 -1
  %74 = add nsw i32 %70, -1
  %75 = add nsw i32 %69, -1
  %76 = sub nsw i32 %74, %59
  %77 = call i32 @llvm.abs.i32(i32 %76, i1 true)
  %78 = sub nsw i32 %71, %57
  %79 = call i32 @llvm.abs.i32(i32 %78, i1 true)
  %80 = add nuw nsw i32 %77, %79
  %81 = srem i32 %80, %1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %68
  %84 = getelementptr %struct.BPoint, ptr %72, i64 -1, i32 3
  %85 = load i16, ptr %84, align 4, !tbaa !64
  %86 = and i16 %85, -2
  store i16 %86, ptr %84, align 4, !tbaa !64
  br label %87

87:                                               ; preds = %83, %68
  %88 = icmp slt i32 %70, 2
  %89 = sext i1 %88 to i32
  %90 = add nsw i32 %71, %89
  %91 = select i1 %88, i32 %54, i32 %74
  %92 = icmp eq i32 %75, 0
  br i1 %92, label %93, label %68, !llvm.loop !350

93:                                               ; preds = %44, %87, %13, %46, %2
  %94 = phi i8 [ 0, %2 ], [ 1, %46 ], [ 1, %13 ], [ 1, %87 ], [ 1, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i8 %94
}

declare zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_select_nth(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.155, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.156, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.157, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_nth_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.158, i32 noundef 2, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 100) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @select_nth_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.158) #19
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call zeroext i8 @ED_curve_select_nth(ptr noundef %8, i32 noundef %6), !range !284
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i16 %13, 3
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !175
  br i1 %14, label %17, label %18

17:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.220) #19
  br label %21

18:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.221) #19
  br label %21

19:                                               ; preds = %2
  %20 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %20) #19
  br label %21

21:                                               ; preds = %17, %18, %19
  %22 = phi i32 [ 4, %19 ], [ 2, %18 ], [ 2, %17 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_duplicate(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.160, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.161, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.162, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @duplicate_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @duplicate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call fastcc void @adduplicateflagNurb(ptr noundef %4, ptr noundef nonnull %3, i8 noundef zeroext 0)
  %5 = load ptr, ptr %3, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %4, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = and i16 %11, -2
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  br label %19

19:                                               ; preds = %7, %9, %14
  %20 = phi ptr [ %18, %14 ], [ null, %9 ], [ null, %7 ]
  call void @BLI_movelisttolist(ptr noundef %20, ptr noundef nonnull %3) #19
  %21 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %22) #19
  br label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !175
  call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.222) #19
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi i32 [ 4, %19 ], [ 2, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.163, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.164, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.165, ptr %3, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_delete_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.67, ptr noundef nonnull @curve_delete_type_items, i32 noundef 0, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.166) #19
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rna_curve_delete_type_itemf) #19
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !253
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @curve_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !200
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.67) #19
  switch i32 %8, label %702 [
    i32 0, label %9
    i32 1, label %701
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i16 %11, 3
  %13 = load ptr, ptr %4, align 8, !tbaa !46
  br i1 %12, label %14, label %318

14:                                               ; preds = %9
  %15 = icmp eq ptr %3, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %18, %16 ], [ null, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = icmp eq ptr %21, null
  br i1 %22, label %702, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %25 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %26 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %27 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %28 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  br label %29

29:                                               ; preds = %23, %316
  %30 = phi ptr [ %21, %23 ], [ %31, %316 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !152
  %32 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !52
  %36 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = mul nsw i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %43

40:                                               ; preds = %43
  %41 = getelementptr inbounds %struct.BPoint, ptr %45, i64 1
  %42 = icmp eq i32 %46, 0
  br i1 %42, label %51, label %43, !llvm.loop !351

43:                                               ; preds = %29, %40
  %44 = phi i32 [ %46, %40 ], [ %38, %29 ]
  %45 = phi ptr [ %41, %40 ], [ %33, %29 ]
  %46 = add nsw i32 %44, -1
  %47 = getelementptr inbounds %struct.BPoint, ptr %45, i64 0, i32 3
  %48 = load i16, ptr %47, align 4, !tbaa !64
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %40

51:                                               ; preds = %40, %43, %29
  %52 = phi i32 [ 0, %29 ], [ 0, %40 ], [ %46, %43 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = icmp sgt i32 %37, 0
  br i1 %55, label %56, label %125

56:                                               ; preds = %54
  %57 = icmp sgt i32 %35, 0
  br label %95

58:                                               ; preds = %51
  tail call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef nonnull %30) #19
  %59 = load ptr, ptr %28, align 8, !tbaa !47
  %60 = getelementptr inbounds %struct.EditNurb, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !77
  %62 = icmp eq ptr %61, null
  br i1 %62, label %94, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !53
  %66 = icmp eq ptr %65, null
  %67 = load i32, ptr %34, align 8, !tbaa !52
  br i1 %66, label %79, label %68

68:                                               ; preds = %63
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %68, %70
  %71 = phi ptr [ %77, %70 ], [ %65, %68 ]
  %72 = phi i32 [ %73, %70 ], [ %67, %68 ]
  %73 = add nsw i32 %72, -1
  %74 = load ptr, ptr %60, align 8, !tbaa !77
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %76 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %74, ptr noundef nonnull %71, ptr noundef null, ptr noundef %75) #19
  %77 = getelementptr inbounds %struct.BezTriple, ptr %71, i64 1
  %78 = icmp eq i32 %73, 0
  br i1 %78, label %94, label %70, !llvm.loop !272

79:                                               ; preds = %63
  %80 = load i32, ptr %36, align 4, !tbaa !61
  %81 = mul nsw i32 %80, %67
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %32, align 8, !tbaa !62
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi ptr [ %92, %85 ], [ %84, %83 ]
  %87 = phi i32 [ %88, %85 ], [ %81, %83 ]
  %88 = add nsw i32 %87, -1
  %89 = load ptr, ptr %60, align 8, !tbaa !77
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %91 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %89, ptr noundef %86, ptr noundef null, ptr noundef %90) #19
  %92 = getelementptr inbounds %struct.BPoint, ptr %86, i64 1
  %93 = icmp eq i32 %88, 0
  br i1 %93, label %94, label %85, !llvm.loop !273

94:                                               ; preds = %70, %85, %58, %68, %79
  tail call void @BKE_nurb_free(ptr noundef nonnull %30) #19
  br label %316

95:                                               ; preds = %56, %120
  %96 = phi i1 [ %55, %56 ], [ %123, %120 ]
  %97 = phi i32 [ 0, %56 ], [ %122, %120 ]
  %98 = phi ptr [ %33, %56 ], [ %113, %120 ]
  %99 = phi i32 [ 0, %56 ], [ %121, %120 ]
  br i1 %57, label %100, label %112

100:                                              ; preds = %95, %100
  %101 = phi i32 [ %108, %100 ], [ 0, %95 ]
  %102 = phi i32 [ %109, %100 ], [ 0, %95 ]
  %103 = phi ptr [ %110, %100 ], [ %98, %95 ]
  %104 = getelementptr inbounds %struct.BPoint, ptr %103, i64 0, i32 3
  %105 = load i16, ptr %104, align 4, !tbaa !64
  %106 = and i16 %105, 1
  %107 = zext nneg i16 %106 to i32
  %108 = add i32 %101, %107
  %109 = add nuw nsw i32 %102, 1
  %110 = getelementptr inbounds %struct.BPoint, ptr %103, i64 1
  %111 = icmp eq i32 %109, %35
  br i1 %111, label %112, label %100, !llvm.loop !352

112:                                              ; preds = %100, %95
  %113 = phi ptr [ %98, %95 ], [ %110, %100 ]
  %114 = phi i32 [ 0, %95 ], [ %108, %100 ]
  %115 = icmp eq i32 %114, %35
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = add nsw i32 %99, 1
  br label %120

118:                                              ; preds = %112
  %119 = icmp sgt i32 %114, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %99, %118 ]
  %122 = add nuw nsw i32 %97, 1
  %123 = icmp slt i32 %122, %37
  %124 = icmp eq i32 %122, %37
  br i1 %124, label %125, label %95, !llvm.loop !353

125:                                              ; preds = %120, %118, %54
  %126 = phi i1 [ %55, %54 ], [ %123, %120 ], [ %96, %118 ]
  %127 = phi i32 [ 0, %54 ], [ %121, %120 ], [ 0, %118 ]
  br i1 %126, label %128, label %135

128:                                              ; preds = %125
  %129 = icmp sgt i32 %35, 0
  br i1 %129, label %130, label %233

130:                                              ; preds = %128
  %131 = icmp sgt i32 %37, 0
  %132 = zext nneg i32 %35 to i64
  %133 = zext nneg i32 %35 to i64
  %134 = zext nneg i32 %35 to i64
  br label %203

135:                                              ; preds = %125
  %136 = sub nsw i32 %37, %127
  %137 = icmp eq i32 %127, 0
  br i1 %137, label %316, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %140 = mul nsw i32 %136, %35
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, 36
  %143 = tail call ptr %139(i64 noundef %142, ptr noundef nonnull @.str.223) #19
  %144 = load i32, ptr %36, align 4, !tbaa !61
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %199

146:                                              ; preds = %138, %191
  %147 = phi i32 [ %196, %191 ], [ 0, %138 ]
  %148 = phi ptr [ %192, %191 ], [ %143, %138 ]
  %149 = phi ptr [ %195, %191 ], [ %33, %138 ]
  %150 = getelementptr inbounds %struct.BPoint, ptr %149, i64 0, i32 3
  %151 = load i16, ptr %150, align 4, !tbaa !64
  %152 = and i16 %151, 1
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %183

154:                                              ; preds = %146
  %155 = load i32, ptr %34, align 8, !tbaa !52
  %156 = sext i32 %155 to i64
  %157 = mul nsw i64 %156, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %148, ptr align 4 %149, i64 %157, i1 false)
  %158 = load ptr, ptr %25, align 8, !tbaa !47
  %159 = load i32, ptr %34, align 8, !tbaa !52
  %160 = getelementptr inbounds %struct.EditNurb, ptr %158, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !77
  %162 = icmp ne ptr %161, null
  %163 = icmp sgt i32 %159, 0
  %164 = and i1 %163, %162
  br i1 %164, label %165, label %179

165:                                              ; preds = %154, %174
  %166 = phi ptr [ %176, %174 ], [ %149, %154 ]
  %167 = phi i32 [ %177, %174 ], [ 0, %154 ]
  %168 = phi ptr [ %175, %174 ], [ %148, %154 ]
  %169 = load ptr, ptr %160, align 8, !tbaa !77
  %170 = tail call ptr @BLI_ghash_popkey(ptr noundef %169, ptr noundef %166, ptr noundef null) #19
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %165
  %173 = load ptr, ptr %160, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %173, ptr noundef %168, ptr noundef nonnull %170) #19
  br label %174

174:                                              ; preds = %172, %165
  %175 = getelementptr inbounds i8, ptr %168, i64 36
  %176 = getelementptr inbounds i8, ptr %166, i64 36
  %177 = add nuw nsw i32 %167, 1
  %178 = icmp eq i32 %177, %159
  br i1 %178, label %179, label %165, !llvm.loop !182

179:                                              ; preds = %174, %154
  %180 = load i32, ptr %34, align 8, !tbaa !52
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.BPoint, ptr %148, i64 %181
  br label %191

183:                                              ; preds = %146
  %184 = load ptr, ptr %24, align 8, !tbaa !47
  %185 = getelementptr inbounds %struct.EditNurb, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !77
  %187 = icmp eq ptr %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %190 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef nonnull %186, ptr noundef %149, ptr noundef null, ptr noundef %189) #19
  br label %191

191:                                              ; preds = %188, %183, %179
  %192 = phi ptr [ %182, %179 ], [ %148, %183 ], [ %148, %188 ]
  %193 = load i32, ptr %34, align 8, !tbaa !52
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.BPoint, ptr %149, i64 %194
  %196 = add nuw nsw i32 %147, 1
  %197 = load i32, ptr %36, align 4, !tbaa !61
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %146, label %199, !llvm.loop !354

199:                                              ; preds = %191, %138
  store i32 %136, ptr %36, align 4, !tbaa !61
  %200 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %201 = load ptr, ptr %32, align 8, !tbaa !62
  tail call void %200(ptr noundef %201) #19
  store ptr %143, ptr %32, align 8, !tbaa !62
  %202 = tail call zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef nonnull %30) #19
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %30) #19
  br label %316

203:                                              ; preds = %130, %228
  %204 = phi i64 [ 0, %130 ], [ %230, %228 ]
  %205 = phi i1 [ %129, %130 ], [ %231, %228 ]
  %206 = phi i32 [ 0, %130 ], [ %229, %228 ]
  br i1 %131, label %207, label %221

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.BPoint, ptr %33, i64 %204
  br label %209

209:                                              ; preds = %207, %209
  %210 = phi i32 [ %217, %209 ], [ 0, %207 ]
  %211 = phi i32 [ %218, %209 ], [ 0, %207 ]
  %212 = phi ptr [ %219, %209 ], [ %208, %207 ]
  %213 = getelementptr inbounds %struct.BPoint, ptr %212, i64 0, i32 3
  %214 = load i16, ptr %213, align 4, !tbaa !64
  %215 = and i16 %214, 1
  %216 = zext nneg i16 %215 to i32
  %217 = add i32 %210, %216
  %218 = add nuw nsw i32 %211, 1
  %219 = getelementptr inbounds %struct.BPoint, ptr %212, i64 %132
  %220 = icmp eq i32 %218, %37
  br i1 %220, label %221, label %209, !llvm.loop !355

221:                                              ; preds = %209, %203
  %222 = phi i32 [ 0, %203 ], [ %217, %209 ]
  %223 = icmp eq i32 %222, %37
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = add nsw i32 %206, 1
  br label %228

226:                                              ; preds = %221
  %227 = icmp sgt i32 %222, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %206, %226 ]
  %230 = add nuw nsw i64 %204, 1
  %231 = icmp ult i64 %230, %133
  %232 = icmp eq i64 %230, %134
  br i1 %232, label %233, label %203, !llvm.loop !356

233:                                              ; preds = %228, %226, %128
  %234 = phi i1 [ %129, %128 ], [ %231, %228 ], [ %205, %226 ]
  %235 = phi i32 [ 0, %128 ], [ %229, %228 ], [ 0, %226 ]
  br i1 %234, label %316, label %236

236:                                              ; preds = %233
  %237 = sub nsw i32 %35, %235
  %238 = icmp eq i32 %235, 0
  br i1 %238, label %316, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %241 = mul nsw i32 %237, %37
  %242 = sext i32 %241 to i64
  %243 = mul nsw i64 %242, 36
  %244 = tail call ptr %240(i64 noundef %243, ptr noundef nonnull @.str.223) #19
  %245 = load i32, ptr %36, align 4, !tbaa !61
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %294

247:                                              ; preds = %239, %288
  %248 = phi i32 [ %291, %288 ], [ 0, %239 ]
  %249 = phi ptr [ %290, %288 ], [ %244, %239 ]
  %250 = phi ptr [ %289, %288 ], [ %33, %239 ]
  %251 = load i32, ptr %34, align 8, !tbaa !52
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %288

253:                                              ; preds = %247, %282
  %254 = phi i32 [ %284, %282 ], [ 0, %247 ]
  %255 = phi ptr [ %283, %282 ], [ %249, %247 ]
  %256 = phi ptr [ %285, %282 ], [ %250, %247 ]
  %257 = getelementptr inbounds %struct.BPoint, ptr %256, i64 0, i32 3
  %258 = load i16, ptr %257, align 4, !tbaa !64
  %259 = and i16 %258, 1
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %253
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %255, ptr noundef nonnull align 4 dereferenceable(36) %256, i64 36, i1 false), !tbaa.struct !190
  %262 = load ptr, ptr %27, align 8, !tbaa !47
  %263 = getelementptr inbounds %struct.EditNurb, ptr %262, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !77
  %265 = icmp eq ptr %264, null
  br i1 %265, label %272, label %266

266:                                              ; preds = %261
  %267 = load ptr, ptr %263, align 8, !tbaa !77
  %268 = tail call ptr @BLI_ghash_popkey(ptr noundef %267, ptr noundef %256, ptr noundef null) #19
  %269 = icmp eq ptr %268, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %266
  %271 = load ptr, ptr %263, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %271, ptr noundef %255, ptr noundef nonnull %268) #19
  br label %272

272:                                              ; preds = %270, %266, %261
  %273 = getelementptr inbounds %struct.BPoint, ptr %255, i64 1
  br label %282

274:                                              ; preds = %253
  %275 = load ptr, ptr %26, align 8, !tbaa !47
  %276 = getelementptr inbounds %struct.EditNurb, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !77
  %278 = icmp eq ptr %277, null
  br i1 %278, label %282, label %279

279:                                              ; preds = %274
  %280 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %281 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef nonnull %277, ptr noundef %256, ptr noundef null, ptr noundef %280) #19
  br label %282

282:                                              ; preds = %279, %274, %272
  %283 = phi ptr [ %273, %272 ], [ %255, %274 ], [ %255, %279 ]
  %284 = add nuw nsw i32 %254, 1
  %285 = getelementptr inbounds %struct.BPoint, ptr %256, i64 1
  %286 = load i32, ptr %34, align 8, !tbaa !52
  %287 = icmp slt i32 %284, %286
  br i1 %287, label %253, label %288, !llvm.loop !357

288:                                              ; preds = %282, %247
  %289 = phi ptr [ %250, %247 ], [ %285, %282 ]
  %290 = phi ptr [ %249, %247 ], [ %283, %282 ]
  %291 = add nuw nsw i32 %248, 1
  %292 = load i32, ptr %36, align 4, !tbaa !61
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %247, label %294, !llvm.loop !358

294:                                              ; preds = %288, %239
  %295 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %296 = load ptr, ptr %32, align 8, !tbaa !62
  tail call void %295(ptr noundef %296) #19
  store ptr %244, ptr %32, align 8, !tbaa !62
  %297 = icmp eq i32 %237, 1
  br i1 %297, label %298, label %313

298:                                              ; preds = %294
  %299 = load i32, ptr %36, align 4, !tbaa !61
  %300 = icmp sgt i32 %299, 1
  br i1 %300, label %301, label %313

301:                                              ; preds = %298
  store i32 %299, ptr %34, align 8, !tbaa !52
  store i32 1, ptr %36, align 4, !tbaa !61
  %302 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 11
  %303 = load i16, ptr %302, align 8, !tbaa !68
  %304 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 12
  %305 = load i16, ptr %304, align 2, !tbaa !73
  store i16 %305, ptr %302, align 8, !tbaa !68
  store i16 %303, ptr %304, align 2, !tbaa !73
  %306 = tail call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %30) #19
  %307 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 16
  %308 = load ptr, ptr %307, align 8, !tbaa !72
  %309 = icmp eq ptr %308, null
  br i1 %309, label %312, label %310

310:                                              ; preds = %301
  %311 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %311(ptr noundef nonnull %308) #19
  br label %312

312:                                              ; preds = %310, %301
  store ptr null, ptr %307, align 8, !tbaa !72
  br label %315

313:                                              ; preds = %298, %294
  store i32 %237, ptr %34, align 8, !tbaa !52
  %314 = tail call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %30) #19
  br label %315

315:                                              ; preds = %313, %312
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %30) #19
  br label %316

316:                                              ; preds = %315, %236, %233, %199, %135, %94
  %317 = icmp eq ptr %31, null
  br i1 %317, label %702, label %29, !llvm.loop !359

318:                                              ; preds = %9
  %319 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %320 = load ptr, ptr %319, align 8, !tbaa !47
  %321 = load ptr, ptr %320, align 8, !tbaa !89
  %322 = icmp eq ptr %321, null
  br i1 %322, label %469, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 31
  %325 = getelementptr inbounds %struct.EditNurb, ptr %320, i64 0, i32 1
  %326 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 16
  %327 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 31
  %328 = getelementptr inbounds %struct.EditNurb, ptr %320, i64 0, i32 1
  br label %329

329:                                              ; preds = %323, %466
  %330 = phi i32 [ 0, %323 ], [ %467, %466 ]
  %331 = phi ptr [ %321, %323 ], [ %332, %466 ]
  %332 = load ptr, ptr %331, align 8, !tbaa !152
  %333 = getelementptr inbounds %struct.Nurb, ptr %331, i64 0, i32 2
  %334 = load i16, ptr %333, align 8, !tbaa !50
  %335 = icmp eq i16 %334, 1
  %336 = getelementptr inbounds %struct.Nurb, ptr %331, i64 0, i32 6
  %337 = load i32, ptr %336, align 8, !tbaa !52
  br i1 %335, label %338, label %408

338:                                              ; preds = %329
  %339 = getelementptr inbounds %struct.Nurb, ptr %331, i64 0, i32 18
  %340 = icmp eq i32 %337, 0
  br i1 %340, label %466, label %341

341:                                              ; preds = %338
  %342 = load ptr, ptr %339, align 8, !tbaa !53
  %343 = load i16, ptr %326, align 8, !tbaa !221
  %344 = and i16 %343, 1
  %345 = icmp eq i16 %344, 0
  br label %346

346:                                              ; preds = %341, %365
  %347 = phi i32 [ %337, %341 ], [ %366, %365 ]
  %348 = phi ptr [ %342, %341 ], [ %367, %365 ]
  %349 = getelementptr inbounds %struct.BezTriple, ptr %348, i64 0, i32 8
  %350 = load i8, ptr %349, align 4, !tbaa !59
  %351 = and i8 %350, 1
  %352 = icmp eq i8 %351, 0
  br i1 %345, label %354, label %353

353:                                              ; preds = %346
  br i1 %352, label %466, label %365

354:                                              ; preds = %346
  br i1 %352, label %355, label %365

355:                                              ; preds = %354
  %356 = getelementptr inbounds %struct.BezTriple, ptr %348, i64 0, i32 7
  %357 = load i8, ptr %356, align 1, !tbaa !57
  %358 = and i8 %357, 1
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.BezTriple, ptr %348, i64 0, i32 9
  %362 = load i8, ptr %361, align 1, !tbaa !60
  %363 = and i8 %362, 1
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %466, label %365

365:                                              ; preds = %360, %355, %354, %353
  %366 = add nsw i32 %347, -1
  %367 = getelementptr inbounds %struct.BezTriple, ptr %348, i64 1
  %368 = icmp eq i32 %366, 0
  br i1 %368, label %369, label %346, !llvm.loop !360

369:                                              ; preds = %365
  %370 = load i32, ptr %327, align 4, !tbaa !195
  %371 = icmp eq i32 %370, %330
  br i1 %371, label %372, label %373

372:                                              ; preds = %369
  store i32 -1, ptr %327, align 4, !tbaa !195
  br label %373

373:                                              ; preds = %372, %369
  tail call void @BLI_remlink(ptr noundef nonnull %320, ptr noundef nonnull %331) #19
  %374 = load ptr, ptr %328, align 8, !tbaa !77
  %375 = icmp eq ptr %374, null
  br i1 %375, label %465, label %376

376:                                              ; preds = %373
  %377 = load ptr, ptr %339, align 8, !tbaa !53
  %378 = icmp eq ptr %377, null
  %379 = load i32, ptr %336, align 8, !tbaa !52
  br i1 %378, label %391, label %380

380:                                              ; preds = %376
  %381 = icmp eq i32 %379, 0
  br i1 %381, label %465, label %382

382:                                              ; preds = %380, %382
  %383 = phi ptr [ %389, %382 ], [ %377, %380 ]
  %384 = phi i32 [ %385, %382 ], [ %379, %380 ]
  %385 = add nsw i32 %384, -1
  %386 = load ptr, ptr %328, align 8, !tbaa !77
  %387 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %388 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %386, ptr noundef nonnull %383, ptr noundef null, ptr noundef %387) #19
  %389 = getelementptr inbounds %struct.BezTriple, ptr %383, i64 1
  %390 = icmp eq i32 %385, 0
  br i1 %390, label %465, label %382, !llvm.loop !272

391:                                              ; preds = %376
  %392 = getelementptr inbounds %struct.Nurb, ptr %331, i64 0, i32 7
  %393 = load i32, ptr %392, align 4, !tbaa !61
  %394 = mul nsw i32 %393, %379
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %465, label %396

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.Nurb, ptr %331, i64 0, i32 17
  %398 = load ptr, ptr %397, align 8, !tbaa !62
  br label %399

399:                                              ; preds = %399, %396
  %400 = phi ptr [ %406, %399 ], [ %398, %396 ]
  %401 = phi i32 [ %402, %399 ], [ %394, %396 ]
  %402 = add nsw i32 %401, -1
  %403 = load ptr, ptr %328, align 8, !tbaa !77
  %404 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %405 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %403, ptr noundef %400, ptr noundef null, ptr noundef %404) #19
  %406 = getelementptr inbounds %struct.BPoint, ptr %400, i64 1
  %407 = icmp eq i32 %402, 0
  br i1 %407, label %465, label %399, !llvm.loop !273

408:                                              ; preds = %329
  %409 = getelementptr inbounds %struct.Nurb, ptr %331, i64 0, i32 17
  %410 = getelementptr inbounds %struct.Nurb, ptr %331, i64 0, i32 7
  %411 = load i32, ptr %410, align 4, !tbaa !61
  %412 = mul nsw i32 %411, %337
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %466, label %414

414:                                              ; preds = %408
  %415 = load ptr, ptr %409, align 8, !tbaa !62
  br label %416

416:                                              ; preds = %414, %423
  %417 = phi i32 [ %424, %423 ], [ %412, %414 ]
  %418 = phi ptr [ %425, %423 ], [ %415, %414 ]
  %419 = getelementptr inbounds %struct.BPoint, ptr %418, i64 0, i32 3
  %420 = load i16, ptr %419, align 4, !tbaa !64
  %421 = and i16 %420, 1
  %422 = icmp eq i16 %421, 0
  br i1 %422, label %466, label %423

423:                                              ; preds = %416
  %424 = add nsw i32 %417, -1
  %425 = getelementptr inbounds %struct.BPoint, ptr %418, i64 1
  %426 = icmp eq i32 %424, 0
  br i1 %426, label %427, label %416, !llvm.loop !361

427:                                              ; preds = %423
  %428 = load i32, ptr %324, align 4, !tbaa !195
  %429 = icmp eq i32 %428, %330
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  store i32 -1, ptr %324, align 4, !tbaa !195
  br label %431

431:                                              ; preds = %430, %427
  tail call void @BLI_remlink(ptr noundef nonnull %320, ptr noundef nonnull %331) #19
  %432 = load ptr, ptr %325, align 8, !tbaa !77
  %433 = icmp eq ptr %432, null
  br i1 %433, label %465, label %434

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.Nurb, ptr %331, i64 0, i32 18
  %436 = load ptr, ptr %435, align 8, !tbaa !53
  %437 = icmp eq ptr %436, null
  %438 = load i32, ptr %336, align 8, !tbaa !52
  br i1 %437, label %450, label %439

439:                                              ; preds = %434
  %440 = icmp eq i32 %438, 0
  br i1 %440, label %465, label %441

441:                                              ; preds = %439, %441
  %442 = phi ptr [ %448, %441 ], [ %436, %439 ]
  %443 = phi i32 [ %444, %441 ], [ %438, %439 ]
  %444 = add nsw i32 %443, -1
  %445 = load ptr, ptr %325, align 8, !tbaa !77
  %446 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %447 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %445, ptr noundef nonnull %442, ptr noundef null, ptr noundef %446) #19
  %448 = getelementptr inbounds %struct.BezTriple, ptr %442, i64 1
  %449 = icmp eq i32 %444, 0
  br i1 %449, label %465, label %441, !llvm.loop !272

450:                                              ; preds = %434
  %451 = load i32, ptr %410, align 4, !tbaa !61
  %452 = mul nsw i32 %451, %438
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %465, label %454

454:                                              ; preds = %450
  %455 = load ptr, ptr %409, align 8, !tbaa !62
  br label %456

456:                                              ; preds = %456, %454
  %457 = phi ptr [ %463, %456 ], [ %455, %454 ]
  %458 = phi i32 [ %459, %456 ], [ %452, %454 ]
  %459 = add nsw i32 %458, -1
  %460 = load ptr, ptr %325, align 8, !tbaa !77
  %461 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %462 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %460, ptr noundef %457, ptr noundef null, ptr noundef %461) #19
  %463 = getelementptr inbounds %struct.BPoint, ptr %457, i64 1
  %464 = icmp eq i32 %459, 0
  br i1 %464, label %465, label %456, !llvm.loop !273

465:                                              ; preds = %441, %456, %382, %399, %450, %439, %431, %391, %380, %373
  tail call void @BKE_nurb_free(ptr noundef nonnull %331) #19
  br label %466

466:                                              ; preds = %416, %360, %353, %465, %408, %338
  %467 = add nuw nsw i32 %330, 1
  %468 = icmp eq ptr %332, null
  br i1 %468, label %469, label %329, !llvm.loop !362

469:                                              ; preds = %466, %318
  %470 = load ptr, ptr %320, align 8, !tbaa !89
  %471 = icmp eq ptr %470, null
  br i1 %471, label %702, label %472

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct.EditNurb, ptr %320, i64 0, i32 1
  %474 = getelementptr inbounds %struct.EditNurb, ptr %320, i64 0, i32 1
  %475 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 16
  %476 = getelementptr inbounds %struct.EditNurb, ptr %320, i64 0, i32 1
  %477 = getelementptr inbounds %struct.EditNurb, ptr %320, i64 0, i32 1
  br label %478

478:                                              ; preds = %472, %699
  %479 = phi ptr [ %470, %472 ], [ %480, %699 ]
  %480 = load ptr, ptr %479, align 8, !tbaa !152
  %481 = getelementptr inbounds %struct.Nurb, ptr %479, i64 0, i32 2
  %482 = load i16, ptr %481, align 8, !tbaa !50
  %483 = icmp eq i16 %482, 1
  br i1 %483, label %484, label %597

484:                                              ; preds = %478
  %485 = getelementptr inbounds %struct.Nurb, ptr %479, i64 0, i32 18
  %486 = getelementptr inbounds %struct.Nurb, ptr %479, i64 0, i32 6
  %487 = load i32, ptr %486, align 8, !tbaa !52
  %488 = icmp sgt i32 %487, 0
  br i1 %488, label %489, label %560

489:                                              ; preds = %484
  %490 = load ptr, ptr %485, align 8, !tbaa !53
  br label %491

491:                                              ; preds = %489, %553
  %492 = phi i32 [ %558, %553 ], [ %487, %489 ]
  %493 = phi i32 [ %556, %553 ], [ 0, %489 ]
  %494 = phi i32 [ %557, %553 ], [ 0, %489 ]
  %495 = phi ptr [ %554, %553 ], [ %490, %489 ]
  %496 = load i16, ptr %475, align 8, !tbaa !221
  %497 = and i16 %496, 1
  %498 = icmp eq i16 %497, 0
  %499 = getelementptr inbounds %struct.BezTriple, ptr %495, i64 0, i32 8
  %500 = load i8, ptr %499, align 4, !tbaa !59
  %501 = and i8 %500, 1
  %502 = icmp eq i8 %501, 0
  br i1 %498, label %504, label %503

503:                                              ; preds = %491
  br i1 %502, label %551, label %515

504:                                              ; preds = %491
  br i1 %502, label %505, label %515

505:                                              ; preds = %504
  %506 = getelementptr inbounds %struct.BezTriple, ptr %495, i64 0, i32 7
  %507 = load i8, ptr %506, align 1, !tbaa !57
  %508 = and i8 %507, 1
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %505
  %511 = getelementptr inbounds %struct.BezTriple, ptr %495, i64 0, i32 9
  %512 = load i8, ptr %511, align 1, !tbaa !60
  %513 = and i8 %512, 1
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %551, label %515

515:                                              ; preds = %510, %505, %504, %503
  %516 = getelementptr inbounds %struct.BezTriple, ptr %495, i64 1
  %517 = xor i32 %494, -1
  %518 = add i32 %492, %517
  %519 = sext i32 %518 to i64
  %520 = mul nsw i64 %519, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %495, ptr nonnull align 4 %516, i64 %520, i1 false)
  %521 = load ptr, ptr %476, align 8, !tbaa !77
  %522 = icmp eq ptr %521, null
  br i1 %522, label %526, label %523

523:                                              ; preds = %515
  %524 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %525 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef nonnull %521, ptr noundef %495, ptr noundef null, ptr noundef %524) #19
  br label %526

526:                                              ; preds = %523, %515
  %527 = load i32, ptr %486, align 8, !tbaa !52
  %528 = add i32 %527, %517
  %529 = load ptr, ptr %476, align 8, !tbaa !77
  %530 = icmp ne ptr %529, null
  %531 = icmp sgt i32 %528, 0
  %532 = and i1 %530, %531
  br i1 %532, label %533, label %547

533:                                              ; preds = %526, %542
  %534 = phi ptr [ %544, %542 ], [ %516, %526 ]
  %535 = phi i32 [ %545, %542 ], [ 0, %526 ]
  %536 = phi ptr [ %543, %542 ], [ %495, %526 ]
  %537 = load ptr, ptr %476, align 8, !tbaa !77
  %538 = tail call ptr @BLI_ghash_popkey(ptr noundef %537, ptr noundef nonnull %534, ptr noundef null) #19
  %539 = icmp eq ptr %538, null
  br i1 %539, label %542, label %540

540:                                              ; preds = %533
  %541 = load ptr, ptr %476, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %541, ptr noundef %536, ptr noundef nonnull %538) #19
  br label %542

542:                                              ; preds = %540, %533
  %543 = getelementptr inbounds i8, ptr %536, i64 72
  %544 = getelementptr inbounds i8, ptr %534, i64 72
  %545 = add nuw nsw i32 %535, 1
  %546 = icmp eq i32 %545, %528
  br i1 %546, label %547, label %533, !llvm.loop !182

547:                                              ; preds = %542, %526
  %548 = load i32, ptr %486, align 8, !tbaa !52
  %549 = add nsw i32 %548, -1
  store i32 %549, ptr %486, align 8, !tbaa !52
  %550 = add nsw i32 %494, -1
  br label %553

551:                                              ; preds = %510, %503
  %552 = getelementptr inbounds %struct.BezTriple, ptr %495, i64 1
  br label %553

553:                                              ; preds = %551, %547
  %554 = phi ptr [ %495, %547 ], [ %552, %551 ]
  %555 = phi i32 [ %550, %547 ], [ %494, %551 ]
  %556 = phi i32 [ 1, %547 ], [ %493, %551 ]
  %557 = add nsw i32 %555, 1
  %558 = load i32, ptr %486, align 8, !tbaa !52
  %559 = icmp slt i32 %557, %558
  br i1 %559, label %491, label %560, !llvm.loop !363

560:                                              ; preds = %553, %484
  %561 = phi i32 [ 0, %484 ], [ %556, %553 ]
  %562 = phi i32 [ %487, %484 ], [ %558, %553 ]
  %563 = icmp eq i32 %561, 0
  br i1 %563, label %699, label %564

564:                                              ; preds = %560
  %565 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %566 = sext i32 %562 to i64
  %567 = mul nsw i64 %566, 72
  %568 = tail call ptr %565(i64 noundef %567, ptr noundef nonnull @.str.224) #19
  %569 = load ptr, ptr %485, align 8, !tbaa !53
  %570 = load i32, ptr %486, align 8, !tbaa !52
  %571 = sext i32 %570 to i64
  %572 = mul nsw i64 %571, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %568, ptr align 4 %569, i64 %572, i1 false)
  %573 = load i32, ptr %486, align 8, !tbaa !52
  %574 = load ptr, ptr %477, align 8, !tbaa !77
  %575 = icmp ne ptr %574, null
  %576 = icmp sgt i32 %573, 0
  %577 = and i1 %576, %575
  br i1 %577, label %578, label %594

578:                                              ; preds = %564
  %579 = load ptr, ptr %485, align 8, !tbaa !53
  br label %580

580:                                              ; preds = %578, %589
  %581 = phi ptr [ %591, %589 ], [ %579, %578 ]
  %582 = phi i32 [ %592, %589 ], [ 0, %578 ]
  %583 = phi ptr [ %590, %589 ], [ %568, %578 ]
  %584 = load ptr, ptr %477, align 8, !tbaa !77
  %585 = tail call ptr @BLI_ghash_popkey(ptr noundef %584, ptr noundef %581, ptr noundef null) #19
  %586 = icmp eq ptr %585, null
  br i1 %586, label %589, label %587

587:                                              ; preds = %580
  %588 = load ptr, ptr %477, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %588, ptr noundef %583, ptr noundef nonnull %585) #19
  br label %589

589:                                              ; preds = %587, %580
  %590 = getelementptr inbounds i8, ptr %583, i64 72
  %591 = getelementptr inbounds i8, ptr %581, i64 72
  %592 = add nuw nsw i32 %582, 1
  %593 = icmp eq i32 %592, %573
  br i1 %593, label %594, label %580, !llvm.loop !182

594:                                              ; preds = %589, %564
  %595 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %596 = load ptr, ptr %485, align 8, !tbaa !53
  tail call void %595(ptr noundef %596) #19
  store ptr %568, ptr %485, align 8, !tbaa !53
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %479) #19
  br label %699

597:                                              ; preds = %478
  %598 = getelementptr inbounds %struct.Nurb, ptr %479, i64 0, i32 7
  %599 = load i32, ptr %598, align 4, !tbaa !61
  %600 = icmp eq i32 %599, 1
  br i1 %600, label %601, label %699

601:                                              ; preds = %597
  %602 = getelementptr inbounds %struct.Nurb, ptr %479, i64 0, i32 17
  %603 = getelementptr inbounds %struct.Nurb, ptr %479, i64 0, i32 6
  %604 = load i32, ptr %603, align 8, !tbaa !52
  %605 = icmp sgt i32 %604, 0
  br i1 %605, label %606, label %660

606:                                              ; preds = %601
  %607 = load ptr, ptr %602, align 8, !tbaa !62
  br label %608

608:                                              ; preds = %606, %653
  %609 = phi i32 [ %658, %653 ], [ %604, %606 ]
  %610 = phi i32 [ %656, %653 ], [ 0, %606 ]
  %611 = phi i32 [ %657, %653 ], [ 0, %606 ]
  %612 = phi ptr [ %654, %653 ], [ %607, %606 ]
  %613 = getelementptr inbounds %struct.BPoint, ptr %612, i64 0, i32 3
  %614 = load i16, ptr %613, align 4, !tbaa !64
  %615 = and i16 %614, 1
  %616 = icmp eq i16 %615, 0
  %617 = getelementptr inbounds %struct.BPoint, ptr %612, i64 1
  br i1 %616, label %653, label %618

618:                                              ; preds = %608
  %619 = xor i32 %611, -1
  %620 = add i32 %609, %619
  %621 = sext i32 %620 to i64
  %622 = mul nsw i64 %621, 36
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %612, ptr nonnull align 4 %617, i64 %622, i1 false)
  %623 = load ptr, ptr %473, align 8, !tbaa !77
  %624 = icmp eq ptr %623, null
  br i1 %624, label %628, label %625

625:                                              ; preds = %618
  %626 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %627 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef nonnull %623, ptr noundef %612, ptr noundef null, ptr noundef %626) #19
  br label %628

628:                                              ; preds = %625, %618
  %629 = load i32, ptr %603, align 8, !tbaa !52
  %630 = add i32 %629, %619
  %631 = load ptr, ptr %473, align 8, !tbaa !77
  %632 = icmp ne ptr %631, null
  %633 = icmp sgt i32 %630, 0
  %634 = and i1 %632, %633
  br i1 %634, label %635, label %649

635:                                              ; preds = %628, %644
  %636 = phi ptr [ %646, %644 ], [ %617, %628 ]
  %637 = phi i32 [ %647, %644 ], [ 0, %628 ]
  %638 = phi ptr [ %645, %644 ], [ %612, %628 ]
  %639 = load ptr, ptr %473, align 8, !tbaa !77
  %640 = tail call ptr @BLI_ghash_popkey(ptr noundef %639, ptr noundef nonnull %636, ptr noundef null) #19
  %641 = icmp eq ptr %640, null
  br i1 %641, label %644, label %642

642:                                              ; preds = %635
  %643 = load ptr, ptr %473, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %643, ptr noundef %638, ptr noundef nonnull %640) #19
  br label %644

644:                                              ; preds = %642, %635
  %645 = getelementptr inbounds i8, ptr %638, i64 36
  %646 = getelementptr inbounds i8, ptr %636, i64 36
  %647 = add nuw nsw i32 %637, 1
  %648 = icmp eq i32 %647, %630
  br i1 %648, label %649, label %635, !llvm.loop !182

649:                                              ; preds = %644, %628
  %650 = load i32, ptr %603, align 8, !tbaa !52
  %651 = add nsw i32 %650, -1
  store i32 %651, ptr %603, align 8, !tbaa !52
  %652 = add nsw i32 %611, -1
  br label %653

653:                                              ; preds = %608, %649
  %654 = phi ptr [ %612, %649 ], [ %617, %608 ]
  %655 = phi i32 [ %652, %649 ], [ %611, %608 ]
  %656 = phi i32 [ 1, %649 ], [ %610, %608 ]
  %657 = add nsw i32 %655, 1
  %658 = load i32, ptr %603, align 8, !tbaa !52
  %659 = icmp slt i32 %657, %658
  br i1 %659, label %608, label %660, !llvm.loop !364

660:                                              ; preds = %653, %601
  %661 = phi i32 [ 0, %601 ], [ %656, %653 ]
  %662 = phi i32 [ %604, %601 ], [ %658, %653 ]
  %663 = icmp eq i32 %661, 0
  br i1 %663, label %697, label %664

664:                                              ; preds = %660
  %665 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %666 = sext i32 %662 to i64
  %667 = mul nsw i64 %666, 36
  %668 = tail call ptr %665(i64 noundef %667, ptr noundef nonnull @.str.225) #19
  %669 = load ptr, ptr %602, align 8, !tbaa !62
  %670 = load i32, ptr %603, align 8, !tbaa !52
  %671 = sext i32 %670 to i64
  %672 = mul nsw i64 %671, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %668, ptr align 4 %669, i64 %672, i1 false)
  %673 = load i32, ptr %603, align 8, !tbaa !52
  %674 = load ptr, ptr %474, align 8, !tbaa !77
  %675 = icmp ne ptr %674, null
  %676 = icmp sgt i32 %673, 0
  %677 = and i1 %676, %675
  br i1 %677, label %678, label %694

678:                                              ; preds = %664
  %679 = load ptr, ptr %602, align 8, !tbaa !62
  br label %680

680:                                              ; preds = %678, %689
  %681 = phi ptr [ %691, %689 ], [ %679, %678 ]
  %682 = phi i32 [ %692, %689 ], [ 0, %678 ]
  %683 = phi ptr [ %690, %689 ], [ %668, %678 ]
  %684 = load ptr, ptr %474, align 8, !tbaa !77
  %685 = tail call ptr @BLI_ghash_popkey(ptr noundef %684, ptr noundef %681, ptr noundef null) #19
  %686 = icmp eq ptr %685, null
  br i1 %686, label %689, label %687

687:                                              ; preds = %680
  %688 = load ptr, ptr %474, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %688, ptr noundef %683, ptr noundef nonnull %685) #19
  br label %689

689:                                              ; preds = %687, %680
  %690 = getelementptr inbounds i8, ptr %683, i64 36
  %691 = getelementptr inbounds i8, ptr %681, i64 36
  %692 = add nuw nsw i32 %682, 1
  %693 = icmp eq i32 %692, %673
  br i1 %693, label %694, label %680, !llvm.loop !182

694:                                              ; preds = %689, %664
  %695 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %696 = load ptr, ptr %602, align 8, !tbaa !62
  tail call void %695(ptr noundef %696) #19
  store ptr %668, ptr %602, align 8, !tbaa !62
  br label %697

697:                                              ; preds = %694, %660
  %698 = tail call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %479) #19
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %479) #19
  br label %699

699:                                              ; preds = %697, %597, %594, %560
  %700 = icmp eq ptr %480, null
  br i1 %700, label %702, label %478, !llvm.loop !365

701:                                              ; preds = %2
  tail call fastcc void @curve_delete_segments(ptr noundef %3, i8 noundef zeroext 0)
  br label %702

702:                                              ; preds = %699, %316, %469, %19, %2, %701
  %703 = phi i1 [ true, %701 ], [ false, %2 ], [ true, %19 ], [ true, %469 ], [ true, %316 ], [ true, %699 ]
  %704 = phi i32 [ 4, %701 ], [ 2, %2 ], [ 4, %19 ], [ 4, %469 ], [ 4, %316 ], [ 4, %699 ]
  br i1 %703, label %705, label %735

705:                                              ; preds = %702
  %706 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 32
  store i32 -1, ptr %706, align 8, !tbaa !196
  %707 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 31
  store i32 -1, ptr %707, align 4, !tbaa !195
  %708 = load ptr, ptr %4, align 8, !tbaa !46
  %709 = tail call ptr @BKE_animdata_from_id(ptr noundef %708) #19
  %710 = getelementptr inbounds %struct.Curve, ptr %708, i64 0, i32 4
  %711 = load ptr, ptr %710, align 8, !tbaa !47
  %712 = getelementptr inbounds %struct.EditNurb, ptr %711, i64 0, i32 1
  %713 = load ptr, ptr %712, align 8, !tbaa !77
  %714 = icmp eq ptr %713, null
  br i1 %714, label %732, label %715

715:                                              ; preds = %705
  %716 = tail call ptr @BKE_animdata_from_id(ptr noundef %708) #19
  %717 = icmp eq ptr %716, null
  br i1 %717, label %732, label %718

718:                                              ; preds = %715
  %719 = load ptr, ptr %716, align 8, !tbaa !79
  %720 = icmp eq ptr %719, null
  br i1 %720, label %721, label %725

721:                                              ; preds = %718
  %722 = getelementptr inbounds %struct.AnimData, ptr %716, i64 0, i32 5
  %723 = load ptr, ptr %722, align 8, !tbaa !81
  %724 = icmp eq ptr %723, null
  br i1 %724, label %732, label %725

725:                                              ; preds = %721, %718
  %726 = load ptr, ptr %709, align 8, !tbaa !79
  %727 = icmp eq ptr %726, null
  br i1 %727, label %730, label %728

728:                                              ; preds = %725
  %729 = getelementptr inbounds %struct.bAction, ptr %726, i64 0, i32 1
  tail call fastcc void @curve_rename_fcurves(ptr noundef %708, ptr noundef nonnull %729)
  br label %730

730:                                              ; preds = %728, %725
  %731 = getelementptr inbounds %struct.AnimData, ptr %709, i64 0, i32 5
  tail call fastcc void @curve_rename_fcurves(ptr noundef %708, ptr noundef nonnull %731)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef %3) #19
  br label %732

732:                                              ; preds = %721, %715, %705, %730
  %733 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %733) #19
  %734 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %734, i16 noundef signext 0) #19
  br label %735

735:                                              ; preds = %702, %732
  ret i32 %704
}

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal ptr @rna_curve_delete_type_itemf(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #5 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !102
  %7 = icmp eq ptr %0, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @curve_delete_type_items, i32 noundef 0) #19
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @curve_delete_type_items, i32 noundef 1) #19
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  store i8 1, ptr %3, align 1, !tbaa !191
  %9 = load ptr, ptr %5, align 8, !tbaa !66
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ @curve_delete_type_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_shade_smooth(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.167, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.168, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.169, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shade_smooth_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @shade_smooth_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %15

15:                                               ; preds = %2, %5, %10
  %16 = phi ptr [ %14, %10 ], [ null, %5 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(20) @.str.171) #20
  %19 = icmp ne i32 %18, 0
  %20 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !34
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %23, label %92

23:                                               ; preds = %15
  %24 = load ptr, ptr %16, align 8, !tbaa !66
  %25 = icmp eq ptr %24, null
  br i1 %25, label %88, label %26

26:                                               ; preds = %23
  %27 = zext i1 %19 to i16
  br label %28

28:                                               ; preds = %26, %85
  %29 = phi ptr [ %86, %85 ], [ %24, %26 ]
  %30 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !50
  %32 = icmp eq i16 %31, 1
  %33 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !52
  br i1 %32, label %35, label %61

35:                                               ; preds = %28
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %85, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  br label %43

40:                                               ; preds = %56
  %41 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 1
  %42 = icmp eq i32 %46, 0
  br i1 %42, label %85, label %43, !llvm.loop !54

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %46, %40 ], [ %34, %37 ]
  %45 = phi ptr [ %41, %40 ], [ %39, %37 ]
  %46 = add nsw i32 %44, -1
  %47 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 7
  %48 = load i8, ptr %47, align 1, !tbaa !57
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 8
  %53 = load i8, ptr %52, align 4, !tbaa !59
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 9
  %58 = load i8, ptr %57, align 1, !tbaa !60
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %40, label %80

61:                                               ; preds = %28
  %62 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !61
  %64 = mul nsw i32 %63, %34
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !62
  br label %73

69:                                               ; preds = %73
  %70 = add nsw i32 %74, -1
  %71 = getelementptr inbounds %struct.BPoint, ptr %75, i64 1
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %85, label %73, !llvm.loop !63

73:                                               ; preds = %69, %66
  %74 = phi i32 [ %70, %69 ], [ %64, %66 ]
  %75 = phi ptr [ %71, %69 ], [ %68, %66 ]
  %76 = getelementptr inbounds %struct.BPoint, ptr %75, i64 0, i32 3
  %77 = load i16, ptr %76, align 4, !tbaa !64
  %78 = and i16 %77, 1
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %69, label %80

80:                                               ; preds = %73, %56, %51, %43
  %81 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 5
  %82 = load i16, ptr %81, align 2, !tbaa !366
  %83 = and i16 %82, -2
  %84 = or disjoint i16 %83, %27
  store i16 %84, ptr %81, align 2, !tbaa !366
  br label %85

85:                                               ; preds = %69, %40, %80, %35, %61
  %86 = load ptr, ptr %29, align 8, !tbaa !66
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %28, !llvm.loop !367

88:                                               ; preds = %85, %23
  %89 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %90) #19
  %91 = load ptr, ptr %89, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %91, i16 noundef signext 0) #19
  br label %92

92:                                               ; preds = %15, %88
  %93 = phi i32 [ 4, %88 ], [ 2, %15 ]
  ret i32 %93
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_shade_flat(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.170, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.171, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shade_smooth_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @join_curve_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %11 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %6) #19
  br label %12

12:                                               ; preds = %17, %2
  %13 = phi i8 [ 0, %2 ], [ %23, %17 ]
  %14 = phi ptr [ %6, %2 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !368
  %20 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = icmp eq ptr %21, %10
  %23 = select i1 %22, i8 1, i8 %13
  br i1 %22, label %24, label %12

24:                                               ; preds = %17, %12
  %25 = phi i8 [ %23, %17 ], [ %13, %12 ]
  call void @BLI_freelistN(ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !175
  call void @BKE_report(ptr noundef %29, i32 noundef 16, ptr noundef nonnull @.str.173) #19
  br label %123

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %32 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %31) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  %33 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %7) #19
  %34 = load ptr, ptr %7, align 8, !tbaa !66
  %35 = icmp eq ptr %34, null
  br i1 %35, label %119, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %38 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 31
  br label %39

39:                                               ; preds = %36, %116
  %40 = phi ptr [ %34, %36 ], [ %117, %116 ]
  %41 = getelementptr inbounds %struct.CollectionPointerLink, ptr %40, i64 0, i32 2, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !368
  %43 = getelementptr inbounds %struct.Base, ptr %42, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !173
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !34
  %47 = load i16, ptr %37, align 8, !tbaa !34
  %48 = icmp ne i16 %46, %47
  %49 = icmp eq ptr %44, %10
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %116, label %51

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.Curve, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !372
  %56 = icmp eq ptr %55, null
  br i1 %56, label %115, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %58) #19
  %59 = load ptr, ptr %54, align 8, !tbaa !66
  %60 = icmp eq ptr %59, null
  br i1 %60, label %115, label %61

61:                                               ; preds = %57, %112
  %62 = phi ptr [ %113, %112 ], [ %59, %57 ]
  %63 = call ptr @BKE_nurb_duplicate(ptr noundef nonnull %62) #19
  %64 = load i32, ptr %38, align 8, !tbaa !373
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct.Nurb, ptr %63, i64 0, i32 3
  br i1 %65, label %76, label %67

67:                                               ; preds = %61
  %68 = load i16, ptr %66, align 2, !tbaa !374
  %69 = icmp slt i16 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = zext nneg i16 %68 to i32
  %72 = icmp sgt i32 %64, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = trunc i32 %64 to i16
  %75 = add i16 %74, -1
  br label %76

76:                                               ; preds = %61, %67, %73
  %77 = phi i16 [ %75, %73 ], [ 0, %67 ], [ 0, %61 ]
  store i16 %77, ptr %66, align 2, !tbaa !374
  br label %78

78:                                               ; preds = %76, %70
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %63) #19
  %79 = getelementptr inbounds %struct.Nurb, ptr %63, i64 0, i32 18
  %80 = load ptr, ptr %79, align 8, !tbaa !53
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.Nurb, ptr %63, i64 0, i32 6
  %84 = load i32, ptr %83, align 8, !tbaa !52
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82, %86
  %87 = phi i32 [ %89, %86 ], [ %84, %82 ]
  %88 = phi ptr [ %92, %86 ], [ %80, %82 ]
  %89 = add nsw i32 %87, -1
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %88) #19
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %88, i64 0, i64 1
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %90) #19
  %91 = getelementptr inbounds [3 x [3 x float]], ptr %88, i64 0, i64 2
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %91) #19
  %92 = getelementptr inbounds %struct.BezTriple, ptr %88, i64 1
  %93 = icmp eq i32 %89, 0
  br i1 %93, label %94, label %86, !llvm.loop !375

94:                                               ; preds = %86, %82
  call void @BKE_nurb_handles_calc(ptr noundef %63) #19
  br label %95

95:                                               ; preds = %94, %78
  %96 = getelementptr inbounds %struct.Nurb, ptr %63, i64 0, i32 17
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = icmp eq ptr %97, null
  br i1 %98, label %112, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.Nurb, ptr %63, i64 0, i32 6
  %101 = load i32, ptr %100, align 8, !tbaa !52
  %102 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 7
  %103 = load i32, ptr %102, align 4, !tbaa !61
  %104 = mul nsw i32 %103, %101
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %99, %106
  %107 = phi i32 [ %109, %106 ], [ %104, %99 ]
  %108 = phi ptr [ %110, %106 ], [ %97, %99 ]
  %109 = add nsw i32 %107, -1
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %108) #19
  %110 = getelementptr inbounds %struct.BPoint, ptr %108, i64 1
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %112, label %106, !llvm.loop !376

112:                                              ; preds = %106, %99, %95
  %113 = load ptr, ptr %62, align 8, !tbaa !66
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %61, !llvm.loop !377

115:                                              ; preds = %112, %57, %51
  call void @ED_base_object_free_and_unlink(ptr noundef %8, ptr noundef %9, ptr noundef %42) #19
  br label %116

116:                                              ; preds = %115, %39
  %117 = load ptr, ptr %40, align 8, !tbaa !66
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %39, !llvm.loop !378

119:                                              ; preds = %116, %30
  call void @BLI_freelistN(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  %120 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = getelementptr inbounds %struct.Curve, ptr %121, i64 0, i32 3
  call void @BLI_movelisttolist(ptr noundef nonnull %122, ptr noundef nonnull %3) #19
  call void @DAG_relations_tag_update(ptr noundef %8) #19
  call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 4) #19
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 13) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %9) #19
  br label %123

123:                                              ; preds = %119, %27
  %124 = phi i32 [ 2, %27 ], [ 4, %119 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret i32 %124
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #6

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #6

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #6

declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #6

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_nurb_handles_calc(ptr noundef) local_unnamed_addr #6

declare void @ED_base_object_free_and_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #6

declare void @ED_object_editmode_enter(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_tilt_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.174, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.175, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.176, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_tilt_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_tilt_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp ne ptr %3, null
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = and i16 %8, -2
  %10 = icmp eq i16 %9, 2
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %82, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  br label %17

17:                                               ; preds = %15, %79
  %18 = phi ptr [ %13, %15 ], [ %80, %79 ]
  %19 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = icmp eq ptr %20, null
  br i1 %21, label %55, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %79, label %26

26:                                               ; preds = %22
  %27 = load i16, ptr %16, align 8, !tbaa !221
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br label %30

30:                                               ; preds = %26, %52
  %31 = phi i32 [ %24, %26 ], [ %33, %52 ]
  %32 = phi ptr [ %20, %26 ], [ %53, %52 ]
  %33 = add nsw i32 %31, -1
  %34 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 8
  %35 = load i8, ptr %34, align 4, !tbaa !59
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %29, label %39, label %38

38:                                               ; preds = %30
  br i1 %37, label %52, label %50

39:                                               ; preds = %30
  br i1 %37, label %40, label %50

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 7
  %42 = load i8, ptr %41, align 1, !tbaa !57
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 9
  %47 = load i8, ptr %46, align 1, !tbaa !60
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45, %40, %39, %38
  %51 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 0, i32 1
  store float 0.000000e+00, ptr %51, align 4, !tbaa !124
  br label %52

52:                                               ; preds = %50, %45, %38
  %53 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 1
  %54 = icmp eq i32 %33, 0
  br i1 %54, label %79, label %30, !llvm.loop !379

55:                                               ; preds = %17
  %56 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !62
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !52
  %62 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !61
  %64 = mul nsw i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %59, %76
  %67 = phi i32 [ %69, %76 ], [ %64, %59 ]
  %68 = phi ptr [ %77, %76 ], [ %57, %59 ]
  %69 = add nsw i32 %67, -1
  %70 = getelementptr inbounds %struct.BPoint, ptr %68, i64 0, i32 3
  %71 = load i16, ptr %70, align 4, !tbaa !64
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.BPoint, ptr %68, i64 0, i32 1
  store float 0.000000e+00, ptr %75, align 4, !tbaa !126
  br label %76

76:                                               ; preds = %74, %66
  %77 = getelementptr inbounds %struct.BPoint, ptr %68, i64 1
  %78 = icmp eq i32 %69, 0
  br i1 %78, label %79, label %66, !llvm.loop !380

79:                                               ; preds = %52, %76, %22, %59, %55
  %80 = load ptr, ptr %18, align 8, !tbaa !66
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %17, !llvm.loop !381

82:                                               ; preds = %79, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #19
  %83 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %83, i16 noundef signext 0) #19
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @undo_push_curve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_data, ptr noundef nonnull @free_undoCurve, ptr noundef nonnull @undoCurve_to_editCurve, ptr noundef nonnull @editCurve_to_undoCurve, ptr noundef null) #19
  ret void
}

declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal ptr @get_data(ptr noundef %0) #5 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal void @free_undoCurve(ptr noundef %0) #5 {
  tail call void @BKE_nurbList_free(ptr noundef %0) #19
  %2 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !382
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void @BLI_ghash_free(ptr noundef nonnull %3, ptr noundef null, ptr noundef %6) #19
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 3
  tail call void @free_fcurves(ptr noundef nonnull %8) #19
  %9 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 4
  tail call void @free_fcurves(ptr noundef nonnull %9) #19
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %10(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @undoCurve_to_editCurve(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #5 {
  %4 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %2) #19
  %5 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = tail call ptr @BKE_animdata_from_id(ptr noundef %2) #19
  tail call void @BKE_nurbList_free(ptr noundef %4) #19
  %8 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !382
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.EditNurb, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void @BLI_ghash_free(ptr noundef %13, ptr noundef null, ptr noundef %14) #19
  %15 = load ptr, ptr %8, align 8, !tbaa !382
  %16 = tail call fastcc ptr @dupli_keyIndexHash(ptr noundef %15)
  store ptr %16, ptr %12, align 8, !tbaa !77
  br label %17

17:                                               ; preds = %11, %3
  %18 = icmp eq ptr %7, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %7, align 8, !tbaa !79
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bAction, ptr %20, i64 0, i32 1
  tail call void @free_fcurves(ptr noundef nonnull %23) #19
  %24 = load ptr, ptr %7, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.bAction, ptr %24, i64 0, i32 1
  %26 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 3
  tail call void @copy_fcurves(ptr noundef nonnull %25, ptr noundef nonnull %26) #19
  br label %27

27:                                               ; preds = %22, %19
  %28 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %28) #19
  %29 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 4
  tail call void @copy_fcurves(ptr noundef nonnull %28, ptr noundef nonnull %29) #19
  br label %30

30:                                               ; preds = %27, %17
  %31 = load ptr, ptr %0, align 8, !tbaa !66
  %32 = icmp eq ptr %31, null
  br i1 %32, label %92, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.EditNurb, ptr %6, i64 0, i32 1
  br label %35

35:                                               ; preds = %33, %89
  %36 = phi ptr [ %31, %33 ], [ %90, %89 ]
  %37 = tail call ptr @BKE_nurb_duplicate(ptr noundef nonnull %36) #19
  %38 = load ptr, ptr %34, align 8, !tbaa !77
  %39 = icmp eq ptr %38, null
  br i1 %39, label %89, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Nurb, ptr %36, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !53
  %43 = icmp eq ptr %42, null
  %44 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !52
  br i1 %43, label %65, label %46

46:                                               ; preds = %40
  %47 = icmp sgt i32 %45, 0
  br i1 %47, label %48, label %89

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  br label %51

51:                                               ; preds = %60, %48
  %52 = phi ptr [ %62, %60 ], [ %42, %48 ]
  %53 = phi i32 [ %63, %60 ], [ 0, %48 ]
  %54 = phi ptr [ %61, %60 ], [ %50, %48 ]
  %55 = load ptr, ptr %34, align 8, !tbaa !77
  %56 = tail call ptr @BLI_ghash_popkey(ptr noundef %55, ptr noundef nonnull %52, ptr noundef null) #19
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %34, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %59, ptr noundef %54, ptr noundef nonnull %56) #19
  br label %60

60:                                               ; preds = %58, %51
  %61 = getelementptr inbounds i8, ptr %54, i64 72
  %62 = getelementptr inbounds i8, ptr %52, i64 72
  %63 = add nuw nsw i32 %53, 1
  %64 = icmp eq i32 %63, %45
  br i1 %64, label %89, label %51, !llvm.loop !182

65:                                               ; preds = %40
  %66 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 7
  %67 = load i32, ptr %66, align 4, !tbaa !61
  %68 = mul nsw i32 %67, %45
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !62
  %73 = getelementptr inbounds %struct.Nurb, ptr %36, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !62
  br label %75

75:                                               ; preds = %70, %84
  %76 = phi ptr [ %86, %84 ], [ %74, %70 ]
  %77 = phi i32 [ %87, %84 ], [ 0, %70 ]
  %78 = phi ptr [ %85, %84 ], [ %72, %70 ]
  %79 = load ptr, ptr %34, align 8, !tbaa !77
  %80 = tail call ptr @BLI_ghash_popkey(ptr noundef %79, ptr noundef %76, ptr noundef null) #19
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr %34, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %83, ptr noundef %78, ptr noundef nonnull %80) #19
  br label %84

84:                                               ; preds = %82, %75
  %85 = getelementptr inbounds i8, ptr %78, i64 36
  %86 = getelementptr inbounds i8, ptr %76, i64 36
  %87 = add nuw nsw i32 %77, 1
  %88 = icmp eq i32 %87, %68
  br i1 %88, label %89, label %75, !llvm.loop !182

89:                                               ; preds = %60, %84, %46, %65, %35
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %37) #19
  %90 = load ptr, ptr %36, align 8, !tbaa !66
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %35, !llvm.loop !384

92:                                               ; preds = %89, %30
  %93 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !385
  %95 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 32
  store i32 %94, ptr %95, align 8, !tbaa !196
  %96 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 5
  %97 = load i32, ptr %96, align 8, !tbaa !386
  %98 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 31
  store i32 %97, ptr %98, align 4, !tbaa !195
  %99 = tail call ptr @BKE_animdata_from_id(ptr noundef %2) #19
  %100 = load ptr, ptr %5, align 8, !tbaa !47
  %101 = getelementptr inbounds %struct.EditNurb, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !77
  %103 = icmp eq ptr %102, null
  br i1 %103, label %121, label %104

104:                                              ; preds = %92
  %105 = tail call ptr @BKE_animdata_from_id(ptr noundef %2) #19
  %106 = icmp eq ptr %105, null
  br i1 %106, label %121, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %105, align 8, !tbaa !79
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.AnimData, ptr %105, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !81
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %110, %107
  %115 = load ptr, ptr %99, align 8, !tbaa !79
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.bAction, ptr %115, i64 0, i32 1
  tail call fastcc void @curve_rename_fcurves(ptr noundef %2, ptr noundef nonnull %118)
  br label %119

119:                                              ; preds = %117, %114
  %120 = getelementptr inbounds %struct.AnimData, ptr %99, i64 0, i32 5
  tail call fastcc void @curve_rename_fcurves(ptr noundef %2, ptr noundef nonnull %120)
  br label %121

121:                                              ; preds = %92, %104, %110, %119
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @editCurve_to_undoCurve(ptr nocapture readnone %0, ptr noundef %1) #5 {
  %3 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %1) #19
  %4 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = tail call ptr @BKE_animdata_from_id(ptr noundef %1) #19
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %8 = tail call ptr %7(i64 noundef 72, ptr noundef nonnull @.str.232) #19
  %9 = getelementptr inbounds %struct.EditNurb, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc ptr @dupli_keyIndexHash(ptr noundef nonnull %10)
  %14 = getelementptr inbounds %struct.UndoCurve, ptr %8, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !382
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ undef, %2 ], [ %13, %12 ]
  %17 = icmp eq ptr %6, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.UndoCurve, ptr %8, i64 0, i32 3
  %23 = getelementptr inbounds %struct.bAction, ptr %19, i64 0, i32 1
  tail call void @copy_fcurves(ptr noundef nonnull %22, ptr noundef nonnull %23) #19
  br label %24

24:                                               ; preds = %21, %18
  %25 = getelementptr inbounds %struct.UndoCurve, ptr %8, i64 0, i32 4
  %26 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  tail call void @copy_fcurves(ptr noundef nonnull %25, ptr noundef nonnull %26) #19
  br label %27

27:                                               ; preds = %24, %15
  %28 = load ptr, ptr %3, align 8, !tbaa !66
  %29 = icmp eq ptr %28, null
  br i1 %29, label %89, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.UndoCurve, ptr %8, i64 0, i32 2
  %32 = icmp ne ptr %16, null
  %33 = icmp ne ptr %16, null
  br label %34

34:                                               ; preds = %30, %86
  %35 = phi ptr [ %28, %30 ], [ %87, %86 ]
  %36 = tail call ptr @BKE_nurb_duplicate(ptr noundef nonnull %35) #19
  %37 = load ptr, ptr %31, align 8, !tbaa !382
  %38 = icmp eq ptr %37, null
  br i1 %38, label %86, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 18
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.Nurb, ptr %36, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !52
  br i1 %42, label %63, label %45

45:                                               ; preds = %39
  %46 = icmp sgt i32 %44, 0
  %47 = and i1 %32, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.Nurb, ptr %36, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  br label %51

51:                                               ; preds = %58, %48
  %52 = phi ptr [ %60, %58 ], [ %41, %48 ]
  %53 = phi i32 [ %61, %58 ], [ 0, %48 ]
  %54 = phi ptr [ %59, %58 ], [ %50, %48 ]
  %55 = tail call ptr @BLI_ghash_popkey(ptr noundef nonnull %16, ptr noundef nonnull %52, ptr noundef null) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  tail call void @BLI_ghash_insert(ptr noundef nonnull %16, ptr noundef %54, ptr noundef nonnull %55) #19
  br label %58

58:                                               ; preds = %57, %51
  %59 = getelementptr inbounds i8, ptr %54, i64 72
  %60 = getelementptr inbounds i8, ptr %52, i64 72
  %61 = add nuw nsw i32 %53, 1
  %62 = icmp eq i32 %61, %44
  br i1 %62, label %86, label %51, !llvm.loop !182

63:                                               ; preds = %39
  %64 = getelementptr inbounds %struct.Nurb, ptr %36, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !61
  %66 = mul nsw i32 %65, %44
  %67 = icmp sgt i32 %66, 0
  %68 = and i1 %33, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.Nurb, ptr %36, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !62
  br label %74

74:                                               ; preds = %69, %81
  %75 = phi ptr [ %83, %81 ], [ %73, %69 ]
  %76 = phi i32 [ %84, %81 ], [ 0, %69 ]
  %77 = phi ptr [ %82, %81 ], [ %71, %69 ]
  %78 = tail call ptr @BLI_ghash_popkey(ptr noundef nonnull %16, ptr noundef %75, ptr noundef null) #19
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  tail call void @BLI_ghash_insert(ptr noundef nonnull %16, ptr noundef %77, ptr noundef nonnull %78) #19
  br label %81

81:                                               ; preds = %80, %74
  %82 = getelementptr inbounds i8, ptr %77, i64 36
  %83 = getelementptr inbounds i8, ptr %75, i64 36
  %84 = add nuw nsw i32 %76, 1
  %85 = icmp eq i32 %84, %66
  br i1 %85, label %86, label %74, !llvm.loop !182

86:                                               ; preds = %58, %81, %45, %63, %34
  tail call void @BLI_addtail(ptr noundef %8, ptr noundef %36) #19
  %87 = load ptr, ptr %35, align 8, !tbaa !66
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %34, !llvm.loop !387

89:                                               ; preds = %86, %27
  %90 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 32
  %91 = load i32, ptr %90, align 8, !tbaa !196
  %92 = getelementptr inbounds %struct.UndoCurve, ptr %8, i64 0, i32 1
  store i32 %91, ptr %92, align 8, !tbaa !385
  %93 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 31
  %94 = load i32, ptr %93, align 4, !tbaa !195
  %95 = getelementptr inbounds %struct.UndoCurve, ptr %8, i64 0, i32 5
  store i32 %94, ptr %95, align 8, !tbaa !386
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_curve_beztcpy(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = sext i32 %3 to i64
  %6 = mul nsw i64 %5, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %6, i1 false)
  %7 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp ne ptr %8, null
  %10 = icmp sgt i32 %3, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %26

12:                                               ; preds = %4, %21
  %13 = phi ptr [ %23, %21 ], [ %2, %4 ]
  %14 = phi i32 [ %24, %21 ], [ 0, %4 ]
  %15 = phi ptr [ %22, %21 ], [ %1, %4 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !77
  %17 = tail call ptr @BLI_ghash_popkey(ptr noundef %16, ptr noundef %13, ptr noundef null) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %20, ptr noundef %15, ptr noundef nonnull %17) #19
  br label %21

21:                                               ; preds = %19, %12
  %22 = getelementptr inbounds i8, ptr %15, i64 72
  %23 = getelementptr inbounds i8, ptr %13, i64 72
  %24 = add nuw nsw i32 %14, 1
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %26, label %12, !llvm.loop !182

26:                                               ; preds = %21, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_curve_active_center(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !66
  %5 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i16 %10, 1
  %12 = load ptr, ptr %4, align 8, !tbaa !66
  br i1 %11, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !70
  store float %15, ptr %1, align 4, !tbaa !70
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !70
  %18 = getelementptr inbounds float, ptr %1, i64 1
  store float %17, ptr %18, align 4, !tbaa !70
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1, i64 2
  br label %26

20:                                               ; preds = %7
  %21 = load float, ptr %12, align 4, !tbaa !70
  store float %21, ptr %1, align 4, !tbaa !70
  %22 = getelementptr inbounds float, ptr %12, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !70
  %24 = getelementptr inbounds float, ptr %1, i64 1
  store float %23, ptr %24, align 4, !tbaa !70
  %25 = getelementptr inbounds float, ptr %12, i64 2
  br label %26

26:                                               ; preds = %20, %13
  %27 = phi ptr [ %19, %13 ], [ %25, %20 ]
  %28 = load float, ptr %27, align 4, !tbaa !70
  %29 = getelementptr inbounds float, ptr %1, i64 2
  store float %28, ptr %29, align 4, !tbaa !70
  br label %30

30:                                               ; preds = %26, %2
  %31 = phi i8 [ 0, %2 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i8 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_match_texture_space(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.177, ptr %0, align 8, !tbaa !165
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.178, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.179, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @match_texture_space_exec, ptr %4, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @match_texture_space_poll, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @match_texture_space_exec(ptr noundef %0, ptr nocapture readnone %1) #5 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !388
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @BKE_displist_make_curveTypes(ptr noundef %7, ptr noundef %8, i8 noundef zeroext 0) #19
  br label %15

15:                                               ; preds = %14, %2
  %16 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %16, align 4, !tbaa !70
  %17 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %17, align 4, !tbaa !70
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !70
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %18, align 4, !tbaa !70
  %19 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %19, align 4, !tbaa !70
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !70
  %20 = load ptr, ptr %11, align 8, !tbaa !388
  call void @BKE_displist_minmax(ptr noundef %20, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %21 = load float, ptr %4, align 4, !tbaa !70
  %22 = load float, ptr %3, align 4, !tbaa !70
  %23 = fsub float %21, %22
  %24 = fmul float %23, 5.000000e-01
  store float %24, ptr %5, align 4, !tbaa !70
  %25 = load float, ptr %19, align 4, !tbaa !70
  %26 = load float, ptr %17, align 4, !tbaa !70
  %27 = fsub float %25, %26
  %28 = fmul float %27, 5.000000e-01
  %29 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %28, ptr %29, align 4, !tbaa !70
  %30 = load float, ptr %18, align 4, !tbaa !70
  %31 = load float, ptr %16, align 4, !tbaa !70
  %32 = fsub float %30, %31
  %33 = fmul float %32, 5.000000e-01
  %34 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %33, ptr %34, align 4, !tbaa !70
  br label %35

35:                                               ; preds = %15, %50
  %36 = phi i64 [ 0, %15 ], [ %51, %50 ]
  %37 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !70
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = fcmp ogt float %38, 0.000000e+00
  %42 = fcmp olt float %38, 0x3EE4F8B580000000
  %43 = and i1 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = fcmp olt float %38, 0.000000e+00
  %46 = fcmp ogt float %38, 0xBEE4F8B580000000
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40, %35
  %49 = phi float [ 1.000000e+00, %35 ], [ 0x3EE4F8B580000000, %40 ], [ 0xBEE4F8B580000000, %44 ]
  store float %49, ptr %37, align 4, !tbaa !70
  br label %50

50:                                               ; preds = %48, %44
  %51 = add nuw nsw i64 %36, 1
  %52 = icmp eq i64 %51, 3
  br i1 %52, label %53, label %35, !llvm.loop !389

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 11
  %55 = load float, ptr %6, align 4, !tbaa !70
  store float %55, ptr %54, align 4, !tbaa !70
  %56 = getelementptr inbounds float, ptr %6, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !70
  %58 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 11, i64 1
  store float %57, ptr %58, align 4, !tbaa !70
  %59 = getelementptr inbounds float, ptr %6, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !70
  %61 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 11, i64 2
  store float %60, ptr %61, align 4, !tbaa !70
  %62 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 12
  %63 = load float, ptr %5, align 4, !tbaa !70
  store float %63, ptr %62, align 4, !tbaa !70
  %64 = load float, ptr %29, align 4, !tbaa !70
  %65 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 12, i64 1
  store float %64, ptr %65, align 4, !tbaa !70
  %66 = load float, ptr %34, align 4, !tbaa !70
  %67 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 12, i64 2
  store float %66, ptr %67, align 4, !tbaa !70
  %68 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 13
  store float 0.000000e+00, ptr %68, align 4, !tbaa !70
  %69 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 13, i64 1
  store float 0.000000e+00, ptr %69, align 4, !tbaa !70
  %70 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 13, i64 2
  store float 0.000000e+00, ptr %70, align 4, !tbaa !70
  %71 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 15
  %72 = load i16, ptr %71, align 2, !tbaa !390
  %73 = and i16 %72, -2
  store i16 %73, ptr %71, align 2, !tbaa !390
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @match_texture_space_poll(ptr noundef %0) #5 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = icmp eq i16 %6, 4
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %4, %9, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %9 ], [ 1, %4 ]
  ret i32 %13
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @fcurve_path_rename(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #5 {
  %6 = load ptr, ptr %3, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %10 = shl i64 %9, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  br label %13

13:                                               ; preds = %8, %42
  %14 = phi ptr [ %6, %8 ], [ %15, %42 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = tail call i32 @strncmp(ptr noundef %17, ptr noundef %1, i64 noundef %11) #20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %17, i64 %11
  %22 = tail call ptr @copy_fcurve(ptr noundef nonnull %14) #19
  %23 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  %25 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.188, ptr noundef %2, ptr noundef %21) #19
  store ptr %25, ptr %23, align 8, !tbaa !92
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %22) #19
  %26 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !391
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr %0, align 8, !tbaa !79
  br i1 %28, label %33, label %30

30:                                               ; preds = %20
  tail call void @action_groups_remove_channel(ptr noundef %29, ptr noundef nonnull %14) #19
  %31 = load ptr, ptr %0, align 8, !tbaa !79
  %32 = load ptr, ptr %26, align 8, !tbaa !391
  tail call void @action_groups_add_channel(ptr noundef %31, ptr noundef %32, ptr noundef %22) #19
  br label %40

33:                                               ; preds = %20
  %34 = icmp eq ptr %29, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.bAction, ptr %29, i64 0, i32 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @BLI_remlink(ptr noundef nonnull %36, ptr noundef nonnull %14) #19
  br label %40

39:                                               ; preds = %35, %33
  tail call void @BLI_remlink(ptr noundef nonnull %12, ptr noundef nonnull %14) #19
  br label %40

40:                                               ; preds = %38, %39, %30
  tail call void @free_fcurve(ptr noundef nonnull %14) #19
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %41(ptr noundef %24) #19
  br label %42

42:                                               ; preds = %13, %40
  %43 = icmp eq ptr %15, null
  br i1 %43, label %44, label %13, !llvm.loop !392

44:                                               ; preds = %42, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #6

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #6

declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @free_fcurve(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @initialize_index_map(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %2, %24
  %11 = phi ptr [ %27, %24 ], [ %8, %2 ]
  %12 = phi i32 [ %26, %24 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !52
  br i1 %15, label %20, label %18

18:                                               ; preds = %10
  %19 = mul nsw i32 %17, 3
  br label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = mul nsw i32 %22, %17
  br label %24

24:                                               ; preds = %18, %20
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  %26 = add nsw i32 %25, %12
  %27 = load ptr, ptr %11, align 8, !tbaa !66
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !llvm.loop !393

29:                                               ; preds = %24, %2
  %30 = phi i32 [ 0, %2 ], [ %26, %24 ]
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %32 = sext i32 %30 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call ptr %31(i64 noundef %33, ptr noundef nonnull @.str.189) #19
  %35 = icmp sgt i32 %30, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = zext nneg i32 %30 to i64
  %38 = shl nuw nsw i64 %37, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %34, i8 -1, i64 %38, i1 false), !tbaa !102
  br label %39

39:                                               ; preds = %36, %29
  %40 = load ptr, ptr %6, align 8, !tbaa !66
  %41 = icmp eq ptr %40, null
  br i1 %41, label %129, label %42

42:                                               ; preds = %39
  %43 = getelementptr i32, ptr %34, i64 1
  %44 = getelementptr i32, ptr %34, i64 1
  %45 = getelementptr inbounds %struct.EditNurb, ptr %6, i64 0, i32 1
  %46 = getelementptr inbounds %struct.EditNurb, ptr %6, i64 0, i32 1
  %47 = getelementptr i32, ptr %34, i64 2
  br label %48

48:                                               ; preds = %42, %125
  %49 = phi ptr [ %40, %42 ], [ %127, %125 ]
  %50 = phi i32 [ 0, %42 ], [ %126, %125 ]
  %51 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !53
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !52
  br i1 %53, label %100, label %56

56:                                               ; preds = %48
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %125, label %58

58:                                               ; preds = %56, %96
  %59 = phi i32 [ %62, %96 ], [ %55, %56 ]
  %60 = phi ptr [ %98, %96 ], [ %52, %56 ]
  %61 = phi i32 [ %97, %96 ], [ %50, %56 ]
  %62 = add nsw i32 %59, -1
  %63 = load ptr, ptr %45, align 8, !tbaa !77
  %64 = tail call ptr @BLI_ghash_lookup(ptr noundef %63, ptr noundef nonnull %60) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %96, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.CVKeyIndex, ptr %64, i64 0, i32 5
  %68 = load i8, ptr %67, align 8, !tbaa !85
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = add nsw i32 %61, 2
  %72 = getelementptr inbounds %struct.CVKeyIndex, ptr %64, i64 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !148
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %34, i64 %74
  store i32 %71, ptr %75, align 4, !tbaa !102
  %76 = add nsw i32 %61, 1
  %77 = load i32, ptr %72, align 4, !tbaa !148
  %78 = sext i32 %77 to i64
  %79 = getelementptr i32, ptr %43, i64 %78
  store i32 %76, ptr %79, align 4, !tbaa !102
  br label %90

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.CVKeyIndex, ptr %64, i64 0, i32 4
  %82 = load i32, ptr %81, align 4, !tbaa !148
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %34, i64 %83
  store i32 %61, ptr %84, align 4, !tbaa !102
  %85 = add nsw i32 %61, 1
  %86 = load i32, ptr %81, align 4, !tbaa !148
  %87 = sext i32 %86 to i64
  %88 = getelementptr i32, ptr %44, i64 %87
  store i32 %85, ptr %88, align 4, !tbaa !102
  %89 = add nsw i32 %61, 2
  br label %90

90:                                               ; preds = %80, %70
  %91 = phi ptr [ %72, %70 ], [ %81, %80 ]
  %92 = phi i32 [ %61, %70 ], [ %89, %80 ]
  %93 = load i32, ptr %91, align 4, !tbaa !148
  %94 = sext i32 %93 to i64
  %95 = getelementptr i32, ptr %47, i64 %94
  store i32 %92, ptr %95, align 4, !tbaa !102
  br label %96

96:                                               ; preds = %90, %58
  %97 = add nsw i32 %61, 3
  %98 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 1
  %99 = icmp eq i32 %62, 0
  br i1 %99, label %125, label %58, !llvm.loop !394

100:                                              ; preds = %48
  %101 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 7
  %102 = load i32, ptr %101, align 4, !tbaa !61
  %103 = mul nsw i32 %102, %55
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  br label %108

108:                                              ; preds = %105, %121
  %109 = phi i32 [ %112, %121 ], [ %103, %105 ]
  %110 = phi ptr [ %123, %121 ], [ %107, %105 ]
  %111 = phi i32 [ %122, %121 ], [ %50, %105 ]
  %112 = add nsw i32 %109, -1
  %113 = load ptr, ptr %46, align 8, !tbaa !77
  %114 = tail call ptr @BLI_ghash_lookup(ptr noundef %113, ptr noundef %110) #19
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.CVKeyIndex, ptr %114, i64 0, i32 4
  %118 = load i32, ptr %117, align 4, !tbaa !148
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, ptr %34, i64 %119
  store i32 %111, ptr %120, align 4, !tbaa !102
  br label %121

121:                                              ; preds = %116, %108
  %122 = add nsw i32 %111, 1
  %123 = getelementptr inbounds %struct.BPoint, ptr %110, i64 1
  %124 = icmp eq i32 %112, 0
  br i1 %124, label %125, label %108, !llvm.loop !395

125:                                              ; preds = %96, %121, %56, %100
  %126 = phi i32 [ %50, %100 ], [ %50, %56 ], [ %122, %121 ], [ %97, %96 ]
  %127 = load ptr, ptr %49, align 8, !tbaa !66
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %48, !llvm.loop !396

129:                                              ; preds = %125, %39
  store i32 %30, ptr %1, align 4, !tbaa !102
  ret ptr %34
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @BKE_nurbList_verts_count(ptr noundef) local_unnamed_addr #6

declare void @BKE_nurb_handle_calc(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #6

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #6

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @adduplicateflagNurb(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #5 {
  %4 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.ListBase, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %743, label %16

16:                                               ; preds = %3
  %17 = icmp eq i8 %2, 0
  %18 = select i1 %17, i16 -6, i16 -5
  %19 = icmp eq i8 %2, 0
  %20 = icmp eq i8 %2, 0
  br label %21

21:                                               ; preds = %16, %739
  %22 = phi ptr [ %14, %16 ], [ %741, %739 ]
  %23 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !50
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %175

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 18
  %28 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !52
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %142

31:                                               ; preds = %26
  %32 = load ptr, ptr %27, align 8, !tbaa !53
  %33 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 13
  br label %34

34:                                               ; preds = %31, %136
  %35 = phi i32 [ %29, %31 ], [ %140, %136 ]
  %36 = phi i32 [ 0, %31 ], [ %137, %136 ]
  %37 = phi i32 [ 0, %31 ], [ %138, %136 ]
  %38 = phi ptr [ %32, %31 ], [ %139, %136 ]
  %39 = add i32 %35, -1
  %40 = tail call i32 @llvm.smax.i32(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %34, %70
  %42 = phi ptr [ %72, %70 ], [ %38, %34 ]
  %43 = phi i32 [ %71, %70 ], [ %37, %34 ]
  %44 = phi i32 [ %43, %70 ], [ -1, %34 ]
  %45 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 7
  %46 = load i8, ptr %45, align 1, !tbaa !57
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 8
  %51 = load i8, ptr %50, align 4, !tbaa !59
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 9
  %56 = load i8, ptr %55, align 1, !tbaa !60
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %49, %41, %54
  br i1 %20, label %60, label %68

60:                                               ; preds = %59
  %61 = and i8 %46, -2
  store i8 %61, ptr %45, align 1, !tbaa !57
  %62 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 8
  %63 = load i8, ptr %62, align 4, !tbaa !59
  %64 = and i8 %63, -2
  store i8 %64, ptr %62, align 4, !tbaa !59
  %65 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 9
  %66 = load i8, ptr %65, align 1, !tbaa !60
  %67 = and i8 %66, -2
  store i8 %67, ptr %65, align 1, !tbaa !60
  br label %68

68:                                               ; preds = %60, %59
  %69 = icmp eq i32 %43, %40
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = add i32 %43, 1
  %72 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 1
  br label %41, !llvm.loop !397

73:                                               ; preds = %68, %54
  %74 = phi i32 [ %40, %68 ], [ %43, %54 ]
  %75 = phi i32 [ %40, %68 ], [ %44, %54 ]
  %76 = icmp slt i32 %75, %37
  br i1 %76, label %136, label %77

77:                                               ; preds = %73
  %78 = sub nsw i32 %75, %37
  %79 = add nsw i32 %78, 1
  %80 = icmp ne i32 %37, 0
  %81 = icmp eq i32 %79, %35
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = load i16, ptr %33, align 4, !tbaa !69
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %136

87:                                               ; preds = %83, %77
  %88 = add nsw i32 %35, -1
  %89 = icmp eq i32 %75, %88
  %90 = select i1 %89, i32 %36, i32 0
  %91 = add nsw i32 %79, %90
  %92 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %22, i32 noundef %91, i32 noundef 1) #19
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %92) #19
  %93 = getelementptr inbounds %struct.Nurb, ptr %92, i64 0, i32 18
  %94 = load ptr, ptr %93, align 8, !tbaa !53
  %95 = load ptr, ptr %27, align 8, !tbaa !53
  %96 = sext i32 %37 to i64
  %97 = getelementptr inbounds %struct.BezTriple, ptr %95, i64 %96
  %98 = sext i32 %79 to i64
  %99 = mul nsw i64 %98, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %94, ptr align 4 %97, i64 %99, i1 false)
  %100 = icmp eq i32 %90, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %87
  %102 = load ptr, ptr %93, align 8, !tbaa !53
  %103 = getelementptr inbounds %struct.BezTriple, ptr %102, i64 %98
  %104 = load ptr, ptr %27, align 8, !tbaa !53
  %105 = sext i32 %36 to i64
  %106 = mul nsw i64 %105, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %103, ptr align 4 %104, i64 %106, i1 false)
  br label %107

107:                                              ; preds = %101, %87
  %108 = phi i32 [ 0, %101 ], [ %36, %87 ]
  %109 = load i32, ptr %28, align 8, !tbaa !52
  %110 = icmp eq i32 %91, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.Nurb, ptr %92, i64 0, i32 13
  %113 = load i16, ptr %112, align 4, !tbaa !69
  %114 = and i16 %113, -2
  store i16 %114, ptr %112, align 4, !tbaa !69
  br label %115

115:                                              ; preds = %111, %107
  %116 = getelementptr inbounds %struct.Nurb, ptr %92, i64 0, i32 6
  %117 = load i32, ptr %116, align 8, !tbaa !52
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load ptr, ptr %93, align 8, !tbaa !53
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi i32 [ %133, %121 ], [ 0, %119 ]
  %123 = phi ptr [ %134, %121 ], [ %120, %119 ]
  %124 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 0, i32 7
  %125 = load i8, ptr %124, align 1, !tbaa !57
  %126 = or i8 %125, 1
  store i8 %126, ptr %124, align 1, !tbaa !57
  %127 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 0, i32 8
  %128 = load i8, ptr %127, align 4, !tbaa !59
  %129 = or i8 %128, 1
  store i8 %129, ptr %127, align 4, !tbaa !59
  %130 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 0, i32 9
  %131 = load i8, ptr %130, align 1, !tbaa !60
  %132 = or i8 %131, 1
  store i8 %132, ptr %130, align 1, !tbaa !60
  %133 = add nuw nsw i32 %122, 1
  %134 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 1
  %135 = icmp eq i32 %133, %117
  br i1 %135, label %136, label %121, !llvm.loop !398

136:                                              ; preds = %121, %115, %83, %73
  %137 = phi i32 [ %36, %73 ], [ %79, %83 ], [ %108, %115 ], [ %108, %121 ]
  %138 = add nsw i32 %74, 1
  %139 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 1
  %140 = load i32, ptr %28, align 8, !tbaa !52
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %34, label %142, !llvm.loop !399

142:                                              ; preds = %136, %26
  %143 = phi i32 [ 0, %26 ], [ %137, %136 ]
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %739, label %145

145:                                              ; preds = %142
  %146 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %22, i32 noundef %143, i32 noundef 1) #19
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %146) #19
  %147 = getelementptr inbounds %struct.Nurb, ptr %146, i64 0, i32 18
  %148 = load ptr, ptr %147, align 8, !tbaa !53
  %149 = load ptr, ptr %27, align 8, !tbaa !53
  %150 = sext i32 %143 to i64
  %151 = mul nsw i64 %150, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %148, ptr align 4 %149, i64 %151, i1 false)
  %152 = getelementptr inbounds %struct.Nurb, ptr %146, i64 0, i32 13
  %153 = load i16, ptr %152, align 4, !tbaa !69
  %154 = and i16 %153, -2
  store i16 %154, ptr %152, align 4, !tbaa !69
  %155 = getelementptr inbounds %struct.Nurb, ptr %146, i64 0, i32 6
  %156 = load i32, ptr %155, align 8, !tbaa !52
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %739

158:                                              ; preds = %145
  %159 = load ptr, ptr %147, align 8, !tbaa !53
  br label %160

160:                                              ; preds = %158, %160
  %161 = phi i32 [ %172, %160 ], [ 0, %158 ]
  %162 = phi ptr [ %173, %160 ], [ %159, %158 ]
  %163 = getelementptr inbounds %struct.BezTriple, ptr %162, i64 0, i32 7
  %164 = load i8, ptr %163, align 1, !tbaa !57
  %165 = or i8 %164, 1
  store i8 %165, ptr %163, align 1, !tbaa !57
  %166 = getelementptr inbounds %struct.BezTriple, ptr %162, i64 0, i32 8
  %167 = load i8, ptr %166, align 4, !tbaa !59
  %168 = or i8 %167, 1
  store i8 %168, ptr %166, align 4, !tbaa !59
  %169 = getelementptr inbounds %struct.BezTriple, ptr %162, i64 0, i32 9
  %170 = load i8, ptr %169, align 1, !tbaa !60
  %171 = or i8 %170, 1
  store i8 %171, ptr %169, align 1, !tbaa !60
  %172 = add nuw nsw i32 %161, 1
  %173 = getelementptr inbounds %struct.BezTriple, ptr %162, i64 1
  %174 = icmp eq i32 %172, %156
  br i1 %174, label %739, label %160, !llvm.loop !400

175:                                              ; preds = %21
  %176 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 7
  %177 = load i32, ptr %176, align 4, !tbaa !61
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %306

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 17
  %181 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 6
  %182 = load i32, ptr %181, align 8, !tbaa !52
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %279

184:                                              ; preds = %179
  %185 = load ptr, ptr %180, align 8, !tbaa !62
  %186 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 13
  br label %187

187:                                              ; preds = %184, %273
  %188 = phi i32 [ %182, %184 ], [ %277, %273 ]
  %189 = phi i32 [ 0, %184 ], [ %274, %273 ]
  %190 = phi i32 [ 0, %184 ], [ %275, %273 ]
  %191 = phi ptr [ %185, %184 ], [ %276, %273 ]
  %192 = getelementptr inbounds %struct.BPoint, ptr %191, i64 0, i32 3
  %193 = load i16, ptr %192, align 4, !tbaa !64
  %194 = and i16 %193, 1
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %215, label %196

196:                                              ; preds = %187
  %197 = add i32 %188, -1
  %198 = tail call i32 @llvm.smax.i32(i32 %190, i32 %197)
  br label %199

199:                                              ; preds = %196, %208
  %200 = phi i16 [ %193, %196 ], [ %212, %208 ]
  %201 = phi ptr [ %192, %196 ], [ %211, %208 ]
  %202 = phi i32 [ %190, %196 ], [ %209, %208 ]
  %203 = phi ptr [ %191, %196 ], [ %210, %208 ]
  br i1 %19, label %204, label %206

204:                                              ; preds = %199
  %205 = and i16 %200, -2
  store i16 %205, ptr %201, align 4, !tbaa !64
  br label %206

206:                                              ; preds = %204, %199
  %207 = icmp eq i32 %202, %198
  br i1 %207, label %215, label %208

208:                                              ; preds = %206
  %209 = add i32 %202, 1
  %210 = getelementptr inbounds %struct.BPoint, ptr %203, i64 1
  %211 = getelementptr inbounds %struct.BPoint, ptr %203, i64 1, i32 3
  %212 = load i16, ptr %211, align 4, !tbaa !64
  %213 = and i16 %212, 1
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %199, !llvm.loop !401

215:                                              ; preds = %208, %206, %187
  %216 = phi ptr [ %191, %187 ], [ %203, %206 ], [ %210, %208 ]
  %217 = phi i32 [ %190, %187 ], [ %198, %206 ], [ %209, %208 ]
  %218 = phi i32 [ -1, %187 ], [ %198, %206 ], [ %202, %208 ]
  %219 = icmp slt i32 %218, %190
  br i1 %219, label %273, label %220

220:                                              ; preds = %215
  %221 = sub nsw i32 %218, %190
  %222 = add nsw i32 %221, 1
  %223 = icmp ne i32 %190, 0
  %224 = icmp eq i32 %222, %188
  %225 = select i1 %223, i1 true, i1 %224
  br i1 %225, label %230, label %226

226:                                              ; preds = %220
  %227 = load i16, ptr %186, align 4, !tbaa !69
  %228 = and i16 %227, 1
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %230, label %273

230:                                              ; preds = %226, %220
  %231 = add nsw i32 %188, -1
  %232 = icmp eq i32 %218, %231
  %233 = select i1 %232, i32 %189, i32 0
  %234 = add nsw i32 %222, %233
  %235 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %22, i32 noundef %234, i32 noundef 1) #19
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %235) #19
  %236 = getelementptr inbounds %struct.Nurb, ptr %235, i64 0, i32 17
  %237 = load ptr, ptr %236, align 8, !tbaa !62
  %238 = load ptr, ptr %180, align 8, !tbaa !62
  %239 = sext i32 %190 to i64
  %240 = getelementptr inbounds %struct.BPoint, ptr %238, i64 %239
  %241 = sext i32 %222 to i64
  %242 = mul nsw i64 %241, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %237, ptr align 4 %240, i64 %242, i1 false)
  %243 = icmp eq i32 %233, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %230
  %245 = load ptr, ptr %236, align 8, !tbaa !62
  %246 = getelementptr inbounds %struct.BPoint, ptr %245, i64 %241
  %247 = load ptr, ptr %180, align 8, !tbaa !62
  %248 = sext i32 %189 to i64
  %249 = mul nsw i64 %248, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %246, ptr align 4 %247, i64 %249, i1 false)
  br label %250

250:                                              ; preds = %244, %230
  %251 = phi i32 [ 0, %244 ], [ %189, %230 ]
  %252 = load i32, ptr %181, align 8, !tbaa !52
  %253 = icmp eq i32 %234, %252
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.Nurb, ptr %235, i64 0, i32 13
  %256 = load i16, ptr %255, align 4, !tbaa !69
  %257 = and i16 %256, -2
  store i16 %257, ptr %255, align 4, !tbaa !69
  br label %258

258:                                              ; preds = %254, %250
  %259 = getelementptr inbounds %struct.Nurb, ptr %235, i64 0, i32 6
  %260 = load i32, ptr %259, align 8, !tbaa !52
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %273

262:                                              ; preds = %258
  %263 = load ptr, ptr %236, align 8, !tbaa !62
  br label %264

264:                                              ; preds = %262, %264
  %265 = phi i32 [ %270, %264 ], [ 0, %262 ]
  %266 = phi ptr [ %271, %264 ], [ %263, %262 ]
  %267 = getelementptr inbounds %struct.BPoint, ptr %266, i64 0, i32 3
  %268 = load i16, ptr %267, align 4, !tbaa !64
  %269 = or i16 %268, 1
  store i16 %269, ptr %267, align 4, !tbaa !64
  %270 = add nuw nsw i32 %265, 1
  %271 = getelementptr inbounds %struct.BPoint, ptr %266, i64 1
  %272 = icmp eq i32 %270, %260
  br i1 %272, label %273, label %264, !llvm.loop !402

273:                                              ; preds = %264, %258, %226, %215
  %274 = phi i32 [ %189, %215 ], [ %222, %226 ], [ %251, %258 ], [ %251, %264 ]
  %275 = add nsw i32 %217, 1
  %276 = getelementptr inbounds %struct.BPoint, ptr %216, i64 1
  %277 = load i32, ptr %181, align 8, !tbaa !52
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %187, label %279, !llvm.loop !403

279:                                              ; preds = %273, %179
  %280 = phi i32 [ 0, %179 ], [ %274, %273 ]
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %739, label %282

282:                                              ; preds = %279
  %283 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %22, i32 noundef %280, i32 noundef 1) #19
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %283) #19
  %284 = getelementptr inbounds %struct.Nurb, ptr %283, i64 0, i32 17
  %285 = load ptr, ptr %284, align 8, !tbaa !62
  %286 = load ptr, ptr %180, align 8, !tbaa !62
  %287 = sext i32 %280 to i64
  %288 = mul nsw i64 %287, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %285, ptr align 4 %286, i64 %288, i1 false)
  %289 = getelementptr inbounds %struct.Nurb, ptr %283, i64 0, i32 13
  %290 = load i16, ptr %289, align 4, !tbaa !69
  %291 = and i16 %290, -2
  store i16 %291, ptr %289, align 4, !tbaa !69
  %292 = getelementptr inbounds %struct.Nurb, ptr %283, i64 0, i32 6
  %293 = load i32, ptr %292, align 8, !tbaa !52
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %739

295:                                              ; preds = %282
  %296 = load ptr, ptr %284, align 8, !tbaa !62
  br label %297

297:                                              ; preds = %295, %297
  %298 = phi i32 [ %303, %297 ], [ 0, %295 ]
  %299 = phi ptr [ %304, %297 ], [ %296, %295 ]
  %300 = getelementptr inbounds %struct.BPoint, ptr %299, i64 0, i32 3
  %301 = load i16, ptr %300, align 4, !tbaa !64
  %302 = or i16 %301, 1
  store i16 %302, ptr %300, align 4, !tbaa !64
  %303 = add nuw nsw i32 %298, 1
  %304 = getelementptr inbounds %struct.BPoint, ptr %299, i64 1
  %305 = icmp eq i32 %303, %293
  br i1 %305, label %739, label %297, !llvm.loop !404

306:                                              ; preds = %175
  %307 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 6
  %308 = load i32, ptr %307, align 8, !tbaa !52
  %309 = mul nsw i32 %308, %177
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %739, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 17
  %313 = load ptr, ptr %312, align 8, !tbaa !62
  br label %318

314:                                              ; preds = %318
  %315 = add nsw i32 %319, -1
  %316 = getelementptr inbounds %struct.BPoint, ptr %320, i64 1
  %317 = icmp eq i32 %315, 0
  br i1 %317, label %739, label %318, !llvm.loop !63

318:                                              ; preds = %314, %311
  %319 = phi i32 [ %315, %314 ], [ %309, %311 ]
  %320 = phi ptr [ %316, %314 ], [ %313, %311 ]
  %321 = getelementptr inbounds %struct.BPoint, ptr %320, i64 0, i32 3
  %322 = load i16, ptr %321, align 4, !tbaa !64
  %323 = and i16 %322, 1
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %314, label %325

325:                                              ; preds = %318
  %326 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %327 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 6
  %328 = load i32, ptr %327, align 8, !tbaa !52
  %329 = sext i32 %328 to i64
  %330 = tail call ptr %326(i64 noundef %329, ptr noundef nonnull @.str.195) #19
  %331 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 17
  %332 = load i32, ptr %176, align 4, !tbaa !61
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %325
  %335 = load ptr, ptr %331, align 8, !tbaa !62
  br label %341

336:                                              ; preds = %363, %325
  %337 = load i32, ptr %327, align 8, !tbaa !52
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %387

339:                                              ; preds = %336
  %340 = zext nneg i32 %337 to i64
  br label %368

341:                                              ; preds = %334, %363
  %342 = phi i32 [ %365, %363 ], [ 0, %334 ]
  %343 = phi ptr [ %364, %363 ], [ %335, %334 ]
  %344 = load i32, ptr %327, align 8, !tbaa !52
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %363

346:                                              ; preds = %341, %357
  %347 = phi i64 [ %358, %357 ], [ 0, %341 ]
  %348 = phi ptr [ %359, %357 ], [ %343, %341 ]
  %349 = getelementptr inbounds %struct.BPoint, ptr %348, i64 0, i32 3
  %350 = load i16, ptr %349, align 4, !tbaa !64
  %351 = and i16 %350, 1
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %357, label %353

353:                                              ; preds = %346
  %354 = getelementptr inbounds i8, ptr %330, i64 %347
  %355 = load i8, ptr %354, align 1, !tbaa !191
  %356 = add i8 %355, 1
  store i8 %356, ptr %354, align 1, !tbaa !191
  br label %357

357:                                              ; preds = %346, %353
  %358 = add nuw nsw i64 %347, 1
  %359 = getelementptr inbounds %struct.BPoint, ptr %348, i64 1
  %360 = load i32, ptr %327, align 8, !tbaa !52
  %361 = sext i32 %360 to i64
  %362 = icmp slt i64 %358, %361
  br i1 %362, label %346, label %363, !llvm.loop !405

363:                                              ; preds = %357, %341
  %364 = phi ptr [ %343, %341 ], [ %359, %357 ]
  %365 = add nuw nsw i32 %342, 1
  %366 = load i32, ptr %176, align 4, !tbaa !61
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %341, label %336, !llvm.loop !406

368:                                              ; preds = %339, %382
  %369 = phi i64 [ 0, %339 ], [ %385, %382 ]
  %370 = phi i32 [ 0, %339 ], [ %384, %382 ]
  %371 = phi i32 [ 0, %339 ], [ %383, %382 ]
  %372 = getelementptr inbounds i8, ptr %330, i64 %369
  %373 = load i8, ptr %372, align 1, !tbaa !191
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %382, label %375

375:                                              ; preds = %368
  %376 = icmp eq i32 %370, 0
  %377 = zext i8 %373 to i32
  %378 = icmp eq i32 %370, %377
  %379 = or i1 %376, %378
  br i1 %379, label %380, label %387

380:                                              ; preds = %375
  %381 = add nsw i32 %371, 1
  br label %382

382:                                              ; preds = %368, %380
  %383 = phi i32 [ %371, %368 ], [ %381, %380 ]
  %384 = phi i32 [ %370, %368 ], [ %377, %380 ]
  %385 = add nuw nsw i64 %369, 1
  %386 = icmp eq i64 %385, %340
  br i1 %386, label %387, label %368, !llvm.loop !407

387:                                              ; preds = %382, %375, %336
  %388 = phi i32 [ 0, %336 ], [ %383, %382 ], [ %371, %375 ]
  %389 = phi i32 [ 0, %336 ], [ %384, %382 ], [ 0, %375 ]
  %390 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %390(ptr noundef %330) #19
  %391 = icmp eq i32 %388, 0
  %392 = icmp eq i32 %389, 0
  %393 = select i1 %391, i1 true, i1 %392
  br i1 %393, label %461, label %394

394:                                              ; preds = %387
  br i1 %17, label %467, label %395

395:                                              ; preds = %394
  %396 = load ptr, ptr %331, align 8, !tbaa !62
  %397 = load i32, ptr %176, align 4, !tbaa !61
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %399, label %467

399:                                              ; preds = %395
  %400 = load i32, ptr %327, align 8, !tbaa !52
  %401 = icmp sgt i32 %400, 0
  br label %402

402:                                              ; preds = %399, %424
  %403 = phi i1 [ %398, %399 ], [ %426, %424 ]
  %404 = phi i32 [ 0, %399 ], [ %425, %424 ]
  %405 = phi ptr [ %396, %399 ], [ %419, %424 ]
  br i1 %401, label %406, label %418

406:                                              ; preds = %402, %406
  %407 = phi i32 [ %414, %406 ], [ 0, %402 ]
  %408 = phi i32 [ %415, %406 ], [ 0, %402 ]
  %409 = phi ptr [ %416, %406 ], [ %405, %402 ]
  %410 = getelementptr inbounds %struct.BPoint, ptr %409, i64 0, i32 3
  %411 = load i16, ptr %410, align 4, !tbaa !64
  %412 = and i16 %411, 1
  %413 = zext nneg i16 %412 to i32
  %414 = add i32 %407, %413
  %415 = add nuw nsw i32 %408, 1
  %416 = getelementptr inbounds %struct.BPoint, ptr %409, i64 1
  %417 = icmp eq i32 %415, %400
  br i1 %417, label %418, label %406, !llvm.loop !352

418:                                              ; preds = %406, %402
  %419 = phi ptr [ %405, %402 ], [ %416, %406 ]
  %420 = phi i32 [ 0, %402 ], [ %414, %406 ]
  %421 = icmp ne i32 %420, %400
  %422 = icmp sgt i32 %420, 0
  %423 = and i1 %421, %422
  br i1 %423, label %428, label %424

424:                                              ; preds = %418
  %425 = add nuw nsw i32 %404, 1
  %426 = icmp slt i32 %425, %397
  %427 = icmp eq i32 %425, %397
  br i1 %427, label %467, label %402, !llvm.loop !353

428:                                              ; preds = %418
  br i1 %403, label %429, label %467

429:                                              ; preds = %428
  %430 = load i32, ptr %327, align 8, !tbaa !52
  %431 = icmp sgt i32 %430, 0
  br i1 %431, label %432, label %467

432:                                              ; preds = %429
  %433 = zext nneg i32 %430 to i64
  %434 = zext nneg i32 %430 to i64
  %435 = zext nneg i32 %430 to i64
  br label %436

436:                                              ; preds = %432, %456
  %437 = phi i64 [ 0, %432 ], [ %457, %456 ]
  %438 = phi i1 [ %431, %432 ], [ %458, %456 ]
  %439 = getelementptr inbounds %struct.BPoint, ptr %396, i64 %437
  br label %440

440:                                              ; preds = %436, %440
  %441 = phi i32 [ %448, %440 ], [ 0, %436 ]
  %442 = phi i32 [ %449, %440 ], [ 0, %436 ]
  %443 = phi ptr [ %450, %440 ], [ %439, %436 ]
  %444 = getelementptr inbounds %struct.BPoint, ptr %443, i64 0, i32 3
  %445 = load i16, ptr %444, align 4, !tbaa !64
  %446 = and i16 %445, 1
  %447 = zext nneg i16 %446 to i32
  %448 = add i32 %441, %447
  %449 = add nuw nsw i32 %442, 1
  %450 = getelementptr inbounds %struct.BPoint, ptr %443, i64 %433
  %451 = icmp eq i32 %449, %397
  br i1 %451, label %452, label %440, !llvm.loop !355

452:                                              ; preds = %440
  %453 = icmp ne i32 %448, %397
  %454 = icmp sgt i32 %448, 0
  %455 = and i1 %453, %454
  br i1 %455, label %460, label %456

456:                                              ; preds = %452
  %457 = add nuw nsw i64 %437, 1
  %458 = icmp ult i64 %457, %434
  %459 = icmp eq i64 %457, %435
  br i1 %459, label %467, label %436, !llvm.loop !356

460:                                              ; preds = %452
  br i1 %438, label %461, label %467

461:                                              ; preds = %460, %387
  %462 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !408
  %463 = and i32 %462, 1
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %739, label %465

465:                                              ; preds = %461
  %466 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %739

467:                                              ; preds = %424, %456, %395, %429, %460, %428, %394
  %468 = load i32, ptr %327, align 8, !tbaa !52
  %469 = load i32, ptr %176, align 4, !tbaa !61
  %470 = mul nsw i32 %469, %468
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %472, label %676

472:                                              ; preds = %467
  %473 = load ptr, ptr %331, align 8, !tbaa !62
  %474 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 14
  %475 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 13
  br label %476

476:                                              ; preds = %472, %666
  %477 = phi i64 [ 0, %472 ], [ %669, %666 ]
  %478 = phi i32 [ %469, %472 ], [ %672, %666 ]
  %479 = phi i32 [ %468, %472 ], [ %671, %666 ]
  %480 = phi i32 [ 0, %472 ], [ %668, %666 ]
  %481 = phi i32 [ 0, %472 ], [ %667, %666 ]
  %482 = phi ptr [ %473, %472 ], [ %670, %666 ]
  %483 = trunc i64 %477 to i32
  %484 = getelementptr inbounds %struct.BPoint, ptr %482, i64 0, i32 3
  %485 = load i16, ptr %484, align 4, !tbaa !64
  %486 = and i16 %485, 5
  %487 = icmp eq i16 %486, 1
  %488 = icmp sgt i32 %479, -1
  %489 = and i1 %487, %488
  br i1 %489, label %490, label %530

490:                                              ; preds = %476
  %491 = trunc i64 %477 to i32
  %492 = srem i32 %491, %479
  %493 = zext nneg i32 %479 to i64
  %494 = trunc i64 %477 to i32
  br label %495

495:                                              ; preds = %490, %525
  %496 = phi i32 [ %492, %490 ], [ %527, %525 ]
  %497 = phi ptr [ %482, %490 ], [ %528, %525 ]
  %498 = phi i32 [ 0, %490 ], [ %526, %525 ]
  %499 = phi i32 [ 0, %490 ], [ %505, %525 ]
  %500 = getelementptr inbounds %struct.BPoint, ptr %497, i64 0, i32 3
  %501 = load i16, ptr %500, align 4, !tbaa !64
  %502 = and i16 %501, 1
  %503 = icmp eq i16 %502, 0
  br i1 %503, label %530, label %504

504:                                              ; preds = %495
  %505 = add nuw nsw i32 %499, 1
  %506 = udiv i32 %494, %479
  %507 = icmp slt i32 %506, %478
  br i1 %507, label %508, label %525

508:                                              ; preds = %504
  %509 = icmp eq i32 %499, 0
  %510 = zext i1 %509 to i32
  br label %511

511:                                              ; preds = %508, %519
  %512 = phi i32 [ %506, %508 ], [ %522, %519 ]
  %513 = phi ptr [ %497, %508 ], [ %523, %519 ]
  %514 = phi i32 [ %498, %508 ], [ %521, %519 ]
  %515 = getelementptr inbounds %struct.BPoint, ptr %513, i64 0, i32 3
  %516 = load i16, ptr %515, align 4, !tbaa !64
  %517 = and i16 %516, 1
  %518 = icmp eq i16 %517, 0
  br i1 %518, label %525, label %519

519:                                              ; preds = %511
  %520 = or i16 %516, 4
  store i16 %520, ptr %515, align 4, !tbaa !64
  %521 = add nsw i32 %514, %510
  %522 = add nuw nsw i32 %512, 1
  %523 = getelementptr inbounds %struct.BPoint, ptr %513, i64 %493
  %524 = icmp slt i32 %522, %478
  br i1 %524, label %511, label %525, !llvm.loop !409

525:                                              ; preds = %519, %511, %504
  %526 = phi i32 [ %498, %504 ], [ %521, %519 ], [ %514, %511 ]
  %527 = add nuw nsw i32 %496, 1
  %528 = getelementptr inbounds %struct.BPoint, ptr %497, i64 1
  %529 = icmp slt i32 %527, %479
  br i1 %529, label %495, label %530, !llvm.loop !410

530:                                              ; preds = %495, %525, %476
  %531 = phi i32 [ 0, %476 ], [ %505, %525 ], [ %499, %495 ]
  %532 = phi i32 [ 0, %476 ], [ %526, %525 ], [ %498, %495 ]
  %533 = add nsw i32 %532, %531
  %534 = icmp sgt i32 %533, 2
  br i1 %534, label %535, label %666

535:                                              ; preds = %530
  %536 = icmp eq i64 %477, 0
  br i1 %536, label %537, label %557

537:                                              ; preds = %535
  %538 = icmp eq i32 %531, %479
  br i1 %538, label %539, label %544

539:                                              ; preds = %537
  %540 = load i16, ptr %474, align 2, !tbaa !74
  %541 = and i16 %540, 1
  %542 = icmp eq i16 %541, 0
  %543 = select i1 %542, i32 %480, i32 %532
  br label %544

544:                                              ; preds = %539, %537
  %545 = phi i32 [ %480, %537 ], [ %543, %539 ]
  %546 = icmp eq i32 %532, %478
  br i1 %546, label %547, label %552

547:                                              ; preds = %544
  %548 = load i16, ptr %475, align 4, !tbaa !69
  %549 = and i16 %548, 1
  %550 = icmp eq i16 %549, 0
  %551 = select i1 %550, i32 %481, i32 %531
  br label %552

552:                                              ; preds = %547, %544
  %553 = phi i32 [ %481, %544 ], [ %551, %547 ]
  %554 = icmp ne i32 %553, 0
  %555 = icmp ne i32 %545, 0
  %556 = select i1 %554, i1 true, i1 %555
  br i1 %556, label %666, label %557

557:                                              ; preds = %552, %535
  %558 = phi i32 [ 0, %552 ], [ %481, %535 ]
  %559 = phi i32 [ 0, %552 ], [ %480, %535 ]
  %560 = add nuw nsw i32 %531, %483
  %561 = icmp eq i32 %560, %479
  %562 = icmp ne i32 %558, 0
  %563 = select i1 %561, i1 %562, i1 false
  br i1 %563, label %564, label %602

564:                                              ; preds = %557
  %565 = add nsw i32 %558, %531
  %566 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %22, i32 noundef %565, i32 noundef %532) #19
  %567 = icmp sgt i32 %532, 0
  br i1 %567, label %568, label %649

568:                                              ; preds = %564
  %569 = getelementptr inbounds %struct.Nurb, ptr %566, i64 0, i32 17
  %570 = getelementptr inbounds %struct.Nurb, ptr %566, i64 0, i32 6
  %571 = zext nneg i32 %531 to i64
  %572 = mul nuw nsw i64 %571, 36
  %573 = sext i32 %558 to i64
  %574 = mul nsw i64 %573, 36
  %575 = trunc i64 %477 to i32
  br label %576

576:                                              ; preds = %568, %576
  %577 = phi i32 [ 0, %568 ], [ %600, %576 ]
  %578 = load ptr, ptr %569, align 8, !tbaa !62
  %579 = load i32, ptr %570, align 8, !tbaa !52
  %580 = mul nsw i32 %579, %577
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.BPoint, ptr %578, i64 %581
  %583 = load ptr, ptr %331, align 8, !tbaa !62
  %584 = load i32, ptr %327, align 8, !tbaa !52
  %585 = mul nsw i32 %584, %577
  %586 = add nsw i32 %585, %575
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.BPoint, ptr %583, i64 %587
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %582, ptr align 4 %588, i64 %572, i1 false)
  %589 = load ptr, ptr %569, align 8, !tbaa !62
  %590 = load i32, ptr %570, align 8, !tbaa !52
  %591 = mul nsw i32 %590, %577
  %592 = add nsw i32 %591, %531
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.BPoint, ptr %589, i64 %593
  %595 = load ptr, ptr %331, align 8, !tbaa !62
  %596 = load i32, ptr %327, align 8, !tbaa !52
  %597 = mul nsw i32 %596, %577
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.BPoint, ptr %595, i64 %598
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %594, ptr align 4 %599, i64 %574, i1 false)
  %600 = add nuw nsw i32 %577, 1
  %601 = icmp eq i32 %600, %532
  br i1 %601, label %649, label %576, !llvm.loop !411

602:                                              ; preds = %557
  %603 = trunc i64 %477 to i32
  %604 = sdiv i32 %603, %479
  %605 = add nsw i32 %604, %532
  %606 = icmp eq i32 %605, %478
  %607 = icmp ne i32 %559, 0
  %608 = select i1 %606, i1 %607, i1 false
  br i1 %608, label %609, label %625

609:                                              ; preds = %602
  %610 = add nsw i32 %559, %532
  %611 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %22, i32 noundef %531, i32 noundef %610) #19
  %612 = getelementptr inbounds %struct.Nurb, ptr %611, i64 0, i32 17
  %613 = load ptr, ptr %612, align 8, !tbaa !62
  %614 = load ptr, ptr %331, align 8, !tbaa !62
  %615 = getelementptr inbounds %struct.BPoint, ptr %614, i64 %477
  %616 = mul nsw i32 %532, %531
  %617 = sext i32 %616 to i64
  %618 = mul nsw i64 %617, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %613, ptr align 4 %615, i64 %618, i1 false)
  %619 = load ptr, ptr %612, align 8, !tbaa !62
  %620 = getelementptr inbounds %struct.BPoint, ptr %619, i64 %617
  %621 = load ptr, ptr %331, align 8, !tbaa !62
  %622 = mul nsw i32 %559, %531
  %623 = sext i32 %622 to i64
  %624 = mul nsw i64 %623, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %620, ptr align 4 %621, i64 %624, i1 false)
  br label %649

625:                                              ; preds = %602
  %626 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %22, i32 noundef %531, i32 noundef %532) #19
  %627 = icmp sgt i32 %532, 0
  br i1 %627, label %628, label %649

628:                                              ; preds = %625
  %629 = getelementptr inbounds %struct.Nurb, ptr %626, i64 0, i32 17
  %630 = zext nneg i32 %531 to i64
  %631 = mul nuw nsw i64 %630, 36
  %632 = sext i32 %531 to i64
  %633 = zext nneg i32 %532 to i64
  %634 = trunc i64 %477 to i32
  br label %635

635:                                              ; preds = %628, %635
  %636 = phi i64 [ 0, %628 ], [ %647, %635 ]
  %637 = load ptr, ptr %629, align 8, !tbaa !62
  %638 = mul nsw i64 %636, %632
  %639 = getelementptr inbounds %struct.BPoint, ptr %637, i64 %638
  %640 = load ptr, ptr %331, align 8, !tbaa !62
  %641 = load i32, ptr %327, align 8, !tbaa !52
  %642 = trunc i64 %636 to i32
  %643 = mul nsw i32 %641, %642
  %644 = add nsw i32 %643, %634
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.BPoint, ptr %640, i64 %645
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %639, ptr align 4 %646, i64 %631, i1 false)
  %647 = add nuw nsw i64 %636, 1
  %648 = icmp eq i64 %647, %633
  br i1 %648, label %649, label %635, !llvm.loop !412

649:                                              ; preds = %635, %576, %625, %564, %609
  %650 = phi ptr [ %611, %609 ], [ %566, %564 ], [ %626, %625 ], [ %566, %576 ], [ %626, %635 ]
  %651 = phi i32 [ 0, %609 ], [ 0, %564 ], [ %558, %625 ], [ 0, %576 ], [ %558, %635 ]
  %652 = phi i32 [ 0, %609 ], [ 0, %564 ], [ %559, %625 ], [ 0, %576 ], [ %559, %635 ]
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %650) #19
  %653 = load i32, ptr %327, align 8, !tbaa !52
  %654 = icmp eq i32 %531, %653
  br i1 %654, label %659, label %655

655:                                              ; preds = %649
  %656 = getelementptr inbounds %struct.Nurb, ptr %650, i64 0, i32 13
  %657 = load i16, ptr %656, align 4, !tbaa !69
  %658 = and i16 %657, -2
  store i16 %658, ptr %656, align 4, !tbaa !69
  br label %659

659:                                              ; preds = %655, %649
  %660 = load i32, ptr %176, align 4, !tbaa !61
  %661 = icmp eq i32 %532, %660
  br i1 %661, label %666, label %662

662:                                              ; preds = %659
  %663 = getelementptr inbounds %struct.Nurb, ptr %650, i64 0, i32 14
  %664 = load i16, ptr %663, align 2, !tbaa !74
  %665 = and i16 %664, -2
  store i16 %665, ptr %663, align 2, !tbaa !74
  br label %666

666:                                              ; preds = %530, %662, %659, %552
  %667 = phi i32 [ %553, %552 ], [ %651, %662 ], [ %651, %659 ], [ %481, %530 ]
  %668 = phi i32 [ %545, %552 ], [ %652, %662 ], [ %652, %659 ], [ %480, %530 ]
  %669 = add nuw nsw i64 %477, 1
  %670 = getelementptr inbounds %struct.BPoint, ptr %482, i64 1
  %671 = load i32, ptr %327, align 8, !tbaa !52
  %672 = load i32, ptr %176, align 4, !tbaa !61
  %673 = mul nsw i32 %672, %671
  %674 = sext i32 %673 to i64
  %675 = icmp slt i64 %669, %674
  br i1 %675, label %476, label %676, !llvm.loop !413

676:                                              ; preds = %666, %467
  %677 = phi i32 [ 0, %467 ], [ %667, %666 ]
  %678 = phi i32 [ 0, %467 ], [ %668, %666 ]
  %679 = phi i32 [ %468, %467 ], [ %671, %666 ]
  %680 = phi i32 [ %469, %467 ], [ %672, %666 ]
  %681 = icmp ne i32 %677, 0
  %682 = icmp ne i32 %678, 0
  %683 = select i1 %681, i1 true, i1 %682
  br i1 %683, label %684, label %723

684:                                              ; preds = %676
  %685 = icmp eq i32 %677, 0
  %686 = select i1 %685, i32 %679, i32 %677
  %687 = icmp eq i32 %678, 0
  %688 = select i1 %687, i32 %680, i32 %678
  %689 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %22, i32 noundef %686, i32 noundef %688) #19
  %690 = icmp sgt i32 %688, 0
  br i1 %690, label %691, label %709

691:                                              ; preds = %684
  %692 = getelementptr inbounds %struct.Nurb, ptr %689, i64 0, i32 17
  %693 = sext i32 %686 to i64
  %694 = mul nsw i64 %693, 36
  %695 = sext i32 %686 to i64
  %696 = zext nneg i32 %688 to i64
  br label %697

697:                                              ; preds = %691, %697
  %698 = phi i64 [ 0, %691 ], [ %707, %697 ]
  %699 = load ptr, ptr %692, align 8, !tbaa !62
  %700 = mul nsw i64 %698, %695
  %701 = getelementptr inbounds %struct.BPoint, ptr %699, i64 %700
  %702 = load ptr, ptr %331, align 8, !tbaa !62
  %703 = load i32, ptr %327, align 8, !tbaa !52
  %704 = sext i32 %703 to i64
  %705 = mul nsw i64 %698, %704
  %706 = getelementptr inbounds %struct.BPoint, ptr %702, i64 %705
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %701, ptr align 4 %706, i64 %694, i1 false)
  %707 = add nuw nsw i64 %698, 1
  %708 = icmp eq i64 %707, %696
  br i1 %708, label %709, label %697, !llvm.loop !414

709:                                              ; preds = %697, %684
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %689) #19
  %710 = load i32, ptr %327, align 8, !tbaa !52
  %711 = icmp eq i32 %686, %710
  br i1 %711, label %716, label %712

712:                                              ; preds = %709
  %713 = getelementptr inbounds %struct.Nurb, ptr %689, i64 0, i32 13
  %714 = load i16, ptr %713, align 4, !tbaa !69
  %715 = and i16 %714, -2
  store i16 %715, ptr %713, align 4, !tbaa !69
  br label %716

716:                                              ; preds = %712, %709
  %717 = load i32, ptr %176, align 4, !tbaa !61
  %718 = icmp eq i32 %688, %717
  br i1 %718, label %723, label %719

719:                                              ; preds = %716
  %720 = getelementptr inbounds %struct.Nurb, ptr %689, i64 0, i32 14
  %721 = load i16, ptr %720, align 2, !tbaa !74
  %722 = and i16 %721, -2
  store i16 %722, ptr %720, align 2, !tbaa !74
  br label %723

723:                                              ; preds = %716, %719, %676
  %724 = load i32, ptr %327, align 8, !tbaa !52
  %725 = load i32, ptr %176, align 4, !tbaa !61
  %726 = mul nsw i32 %725, %724
  %727 = icmp sgt i32 %726, 0
  br i1 %727, label %728, label %739

728:                                              ; preds = %723
  %729 = load ptr, ptr %331, align 8, !tbaa !62
  br label %730

730:                                              ; preds = %728, %730
  %731 = phi i32 [ %736, %730 ], [ 0, %728 ]
  %732 = phi ptr [ %737, %730 ], [ %729, %728 ]
  %733 = getelementptr inbounds %struct.BPoint, ptr %732, i64 0, i32 3
  %734 = load i16, ptr %733, align 4, !tbaa !64
  %735 = and i16 %734, %18
  store i16 %735, ptr %733, align 4, !tbaa !64
  %736 = add nuw nsw i32 %731, 1
  %737 = getelementptr inbounds %struct.BPoint, ptr %732, i64 1
  %738 = icmp eq i32 %736, %726
  br i1 %738, label %739, label %730, !llvm.loop !415

739:                                              ; preds = %314, %730, %297, %160, %723, %282, %145, %306, %279, %465, %461, %142
  %740 = getelementptr inbounds %struct.Nurb, ptr %22, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !66
  %742 = icmp eq ptr %741, null
  br i1 %742, label %743, label %21, !llvm.loop !416

743:                                              ; preds = %739, %3
  %744 = load ptr, ptr %1, align 8, !tbaa !89
  %745 = icmp eq ptr %744, null
  br i1 %745, label %797, label %746

746:                                              ; preds = %743
  %747 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 32
  store i32 -1, ptr %747, align 8, !tbaa !196
  %748 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 31
  store i32 -1, ptr %748, align 4, !tbaa !195
  %749 = load ptr, ptr %1, align 8, !tbaa !66
  %750 = icmp eq ptr %749, null
  br i1 %750, label %797, label %751

751:                                              ; preds = %746
  %752 = icmp eq i8 %2, 0
  br label %753

753:                                              ; preds = %751, %794
  %754 = phi ptr [ %749, %751 ], [ %795, %794 ]
  %755 = getelementptr inbounds %struct.Nurb, ptr %754, i64 0, i32 2
  %756 = load i16, ptr %755, align 8, !tbaa !50
  %757 = icmp eq i16 %756, 1
  br i1 %757, label %758, label %768

758:                                              ; preds = %753
  br i1 %752, label %794, label %759

759:                                              ; preds = %758
  %760 = getelementptr inbounds %struct.Nurb, ptr %754, i64 0, i32 18
  %761 = load ptr, ptr %760, align 8, !tbaa !53
  tail call void @BKE_nurb_handle_calc_simple(ptr noundef nonnull %754, ptr noundef %761) #19
  %762 = load ptr, ptr %760, align 8, !tbaa !53
  %763 = getelementptr inbounds %struct.Nurb, ptr %754, i64 0, i32 6
  %764 = load i32, ptr %763, align 8, !tbaa !52
  %765 = sext i32 %764 to i64
  %766 = getelementptr %struct.BezTriple, ptr %762, i64 %765
  %767 = getelementptr %struct.BezTriple, ptr %766, i64 -1
  tail call void @BKE_nurb_handle_calc_simple(ptr noundef nonnull %754, ptr noundef %767) #19
  br label %794

768:                                              ; preds = %753
  %769 = getelementptr inbounds %struct.Nurb, ptr %754, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %769, i8 0, i64 16, i1 false)
  %770 = tail call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %754) #19
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %754) #19
  %771 = load i16, ptr %5, align 8, !tbaa !34
  %772 = icmp eq i16 %771, 3
  br i1 %772, label %773, label %794

773:                                              ; preds = %768
  %774 = getelementptr inbounds %struct.Nurb, ptr %754, i64 0, i32 6
  %775 = load i32, ptr %774, align 8, !tbaa !52
  %776 = getelementptr inbounds %struct.Nurb, ptr %754, i64 0, i32 7
  %777 = load i32, ptr %776, align 4, !tbaa !61
  %778 = mul nsw i32 %777, %775
  %779 = icmp sgt i32 %778, 0
  br i1 %779, label %780, label %792

780:                                              ; preds = %773
  %781 = getelementptr inbounds %struct.Nurb, ptr %754, i64 0, i32 17
  %782 = load ptr, ptr %781, align 8, !tbaa !62
  br label %783

783:                                              ; preds = %780, %783
  %784 = phi i32 [ %789, %783 ], [ 0, %780 ]
  %785 = phi ptr [ %790, %783 ], [ %782, %780 ]
  %786 = getelementptr inbounds %struct.BPoint, ptr %785, i64 0, i32 3
  %787 = load i16, ptr %786, align 4, !tbaa !64
  %788 = and i16 %787, -5
  store i16 %788, ptr %786, align 4, !tbaa !64
  %789 = add nuw nsw i32 %784, 1
  %790 = getelementptr inbounds %struct.BPoint, ptr %785, i64 1
  %791 = icmp eq i32 %789, %778
  br i1 %791, label %792, label %783, !llvm.loop !417

792:                                              ; preds = %783, %773
  %793 = tail call zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef nonnull %754) #19
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %754) #19
  br label %794

794:                                              ; preds = %759, %758, %792, %768
  %795 = load ptr, ptr %754, align 8, !tbaa !66
  %796 = icmp eq ptr %795, null
  br i1 %796, label %797, label %753, !llvm.loop !418

797:                                              ; preds = %794, %746, %743
  ret void
}

declare ptr @ED_object_add_duplicate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @BKE_curve_copy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @curve_delete_segments(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #5 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %12 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %13 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %14 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %15 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %16 = icmp eq i8 %1, 0
  %17 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %18 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %19 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %20 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %21 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %22 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %23 = icmp eq i8 %1, 0
  %24 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %25 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %26 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  %27 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %28 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %29 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %30 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %31 = icmp eq i8 %1, 0
  %32 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  %33 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  %34 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  br label %41

35:                                               ; preds = %1348, %2
  %36 = load ptr, ptr %3, align 8, !tbaa !66
  %37 = icmp eq ptr %36, null
  br i1 %37, label %1351, label %38

38:                                               ; preds = %35
  %39 = icmp eq i8 %1, 0
  %40 = icmp eq i8 %1, 0
  br label %1356

41:                                               ; preds = %10, %1348
  %42 = phi ptr [ %8, %10 ], [ %1349, %1348 ]
  %43 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 2
  %44 = load i16, ptr %43, align 8, !tbaa !50
  %45 = icmp eq i16 %44, 1
  br i1 %45, label %46, label %472

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 18
  %48 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !52
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %355

51:                                               ; preds = %46
  %52 = load ptr, ptr %47, align 8, !tbaa !53
  %53 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 13
  %54 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 13
  %55 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 13
  br label %56

56:                                               ; preds = %51, %346
  %57 = phi i32 [ %49, %51 ], [ %353, %346 ]
  %58 = phi i32 [ 0, %51 ], [ %350, %346 ]
  %59 = phi i32 [ -1, %51 ], [ %349, %346 ]
  %60 = phi i32 [ -1, %51 ], [ %348, %346 ]
  %61 = phi i32 [ -1, %51 ], [ %347, %346 ]
  %62 = phi i32 [ 0, %51 ], [ %351, %346 ]
  %63 = phi ptr [ %52, %51 ], [ %352, %346 ]
  %64 = load i16, ptr %26, align 8, !tbaa !221
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  %67 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 0, i32 8
  %68 = load i8, ptr %67, align 4, !tbaa !59
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  br i1 %66, label %72, label %71

71:                                               ; preds = %56
  br i1 %70, label %83, label %88

72:                                               ; preds = %56
  br i1 %70, label %73, label %88

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 0, i32 7
  %75 = load i8, ptr %74, align 1, !tbaa !57
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 0, i32 9
  %80 = load i8, ptr %79, align 1, !tbaa !60
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78, %71
  %84 = icmp eq i32 %61, -1
  %85 = select i1 %84, i32 %62, i32 %61
  %86 = add nsw i32 %57, -1
  %87 = icmp slt i32 %62, %86
  br i1 %87, label %346, label %108

88:                                               ; preds = %78, %73, %72, %71
  %89 = add nsw i32 %57, -1
  %90 = icmp slt i32 %62, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 1, i32 8
  %93 = load i8, ptr %92, align 4, !tbaa !59
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %66, label %97, label %96

96:                                               ; preds = %91
  br i1 %95, label %346, label %108

97:                                               ; preds = %91
  br i1 %95, label %98, label %108

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 1, i32 7
  %100 = load i8, ptr %99, align 1, !tbaa !57
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 1, i32 9
  %105 = load i8, ptr %104, align 1, !tbaa !60
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %346, label %108

108:                                              ; preds = %88, %96, %97, %98, %103, %83
  %109 = phi i32 [ %61, %96 ], [ %61, %97 ], [ %61, %98 ], [ %61, %103 ], [ %61, %88 ], [ %85, %83 ]
  %110 = phi i32 [ %60, %96 ], [ %60, %97 ], [ %60, %98 ], [ %60, %103 ], [ %60, %88 ], [ %62, %83 ]
  %111 = icmp sgt i32 %109, -1
  br i1 %111, label %112, label %346

112:                                              ; preds = %108
  %113 = icmp slt i32 %109, 2
  %114 = add nsw i32 %57, -1
  %115 = icmp eq i32 %62, %114
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = icmp ne i32 %109, 1
  %119 = icmp eq i32 %110, %62
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i16, ptr %55, align 4, !tbaa !69
  %123 = and i16 %122, -2
  store i16 %123, ptr %55, align 4, !tbaa !69
  br label %124

124:                                              ; preds = %121, %117
  %125 = add nuw nsw i32 %62, 1
  %126 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %125, i32 noundef 1) #19
  br label %303

127:                                              ; preds = %112
  %128 = icmp eq i32 %109, 0
  br i1 %128, label %129, label %205

129:                                              ; preds = %127
  %130 = add nsw i32 %110, 1
  %131 = add nsw i32 %110, 2
  %132 = load ptr, ptr %47, align 8, !tbaa !53
  %133 = sext i32 %57 to i64
  %134 = getelementptr %struct.BezTriple, ptr %132, i64 %133
  %135 = load i16, ptr %54, align 4, !tbaa !69
  %136 = and i16 %135, 1
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %203, label %138

138:                                              ; preds = %129
  %139 = getelementptr %struct.BezTriple, ptr %134, i64 -1, i32 8
  %140 = load i8, ptr %139, align 4, !tbaa !59
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %66, label %144, label %143

143:                                              ; preds = %138
  br i1 %142, label %202, label %155

144:                                              ; preds = %138
  br i1 %142, label %145, label %155

145:                                              ; preds = %144
  %146 = getelementptr %struct.BezTriple, ptr %134, i64 -1, i32 7
  %147 = load i8, ptr %146, align 1, !tbaa !57
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = getelementptr %struct.BezTriple, ptr %134, i64 -1, i32 9
  %152 = load i8, ptr %151, align 1, !tbaa !60
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %202, label %155

155:                                              ; preds = %150, %145, %144, %143
  %156 = getelementptr %struct.BezTriple, ptr %134, i64 -2, i32 8
  %157 = load i8, ptr %156, align 4, !tbaa !59
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  br i1 %66, label %161, label %160

160:                                              ; preds = %155
  br i1 %159, label %202, label %172

161:                                              ; preds = %155
  br i1 %159, label %162, label %172

162:                                              ; preds = %161
  %163 = getelementptr %struct.BezTriple, ptr %134, i64 -2, i32 7
  %164 = load i8, ptr %163, align 1, !tbaa !57
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = getelementptr %struct.BezTriple, ptr %134, i64 -2, i32 9
  %169 = load i8, ptr %168, align 1, !tbaa !60
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %202, label %172

172:                                              ; preds = %167, %162, %161, %160
  %173 = add nsw i32 %110, 3
  %174 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %173, i32 noundef 1) #19
  %175 = getelementptr inbounds %struct.Nurb, ptr %174, i64 0, i32 18
  %176 = load ptr, ptr %175, align 8, !tbaa !53
  %177 = getelementptr inbounds %struct.BezTriple, ptr %176, i64 1
  %178 = load ptr, ptr %47, align 8, !tbaa !53
  %179 = sext i32 %131 to i64
  %180 = mul nsw i64 %179, 72
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %177, ptr align 4 %178, i64 %180, i1 false)
  %181 = load ptr, ptr %29, align 8, !tbaa !77
  %182 = icmp ne ptr %181, null
  %183 = icmp sgt i32 %110, -2
  %184 = and i1 %183, %182
  br i1 %184, label %185, label %199

185:                                              ; preds = %172, %194
  %186 = phi ptr [ %196, %194 ], [ %178, %172 ]
  %187 = phi i32 [ %197, %194 ], [ 0, %172 ]
  %188 = phi ptr [ %195, %194 ], [ %177, %172 ]
  %189 = load ptr, ptr %29, align 8, !tbaa !77
  %190 = call ptr @BLI_ghash_popkey(ptr noundef %189, ptr noundef %186, ptr noundef null) #19
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %185
  %193 = load ptr, ptr %29, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %193, ptr noundef nonnull %188, ptr noundef nonnull %190) #19
  br label %194

194:                                              ; preds = %192, %185
  %195 = getelementptr inbounds i8, ptr %188, i64 72
  %196 = getelementptr inbounds i8, ptr %186, i64 72
  %197 = add nuw nsw i32 %187, 1
  %198 = icmp eq i32 %197, %131
  br i1 %198, label %199, label %185, !llvm.loop !182

199:                                              ; preds = %194, %172
  %200 = load i32, ptr %48, align 8, !tbaa !52
  %201 = add nsw i32 %200, -1
  br label %303

202:                                              ; preds = %167, %160, %150, %143
  br i1 %137, label %203, label %303

203:                                              ; preds = %129, %202
  %204 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %131, i32 noundef 1) #19
  br label %303

205:                                              ; preds = %127
  %206 = add nsw i32 %57, -1
  %207 = icmp eq i32 %110, %206
  %208 = add nsw i32 %109, -1
  br i1 %207, label %209, label %298

209:                                              ; preds = %205
  %210 = sub nsw i32 %110, %208
  %211 = add nsw i32 %210, 1
  %212 = load ptr, ptr %47, align 8, !tbaa !53
  %213 = load i16, ptr %53, align 4, !tbaa !69
  %214 = and i16 %213, 1
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %266, label %216

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.BezTriple, ptr %212, i64 0, i32 8
  %218 = load i8, ptr %217, align 4, !tbaa !59
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  br i1 %66, label %222, label %221

221:                                              ; preds = %216
  br i1 %220, label %266, label %233

222:                                              ; preds = %216
  br i1 %220, label %223, label %233

223:                                              ; preds = %222
  %224 = getelementptr inbounds %struct.BezTriple, ptr %212, i64 0, i32 7
  %225 = load i8, ptr %224, align 1, !tbaa !57
  %226 = and i8 %225, 1
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.BezTriple, ptr %212, i64 0, i32 9
  %230 = load i8, ptr %229, align 1, !tbaa !60
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %266, label %233

233:                                              ; preds = %228, %223, %222, %221
  %234 = getelementptr inbounds %struct.BezTriple, ptr %212, i64 1, i32 8
  %235 = load i8, ptr %234, align 4, !tbaa !59
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  br i1 %66, label %239, label %238

238:                                              ; preds = %233
  br i1 %237, label %266, label %250

239:                                              ; preds = %233
  br i1 %237, label %240, label %250

240:                                              ; preds = %239
  %241 = getelementptr inbounds %struct.BezTriple, ptr %212, i64 1, i32 7
  %242 = load i8, ptr %241, align 1, !tbaa !57
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.BezTriple, ptr %212, i64 1, i32 9
  %247 = load i8, ptr %246, align 1, !tbaa !60
  %248 = and i8 %247, 1
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %266, label %250

250:                                              ; preds = %245, %240, %239, %238
  %251 = add nsw i32 %210, 2
  %252 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %251, i32 noundef 1) #19
  %253 = getelementptr inbounds %struct.Nurb, ptr %252, i64 0, i32 18
  %254 = load ptr, ptr %253, align 8, !tbaa !53
  %255 = sext i32 %211 to i64
  %256 = getelementptr inbounds %struct.BezTriple, ptr %254, i64 %255
  %257 = load ptr, ptr %47, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %256, ptr noundef nonnull align 4 dereferenceable(72) %257, i64 72, i1 false)
  %258 = load ptr, ptr %27, align 8, !tbaa !77
  %259 = icmp eq ptr %258, null
  br i1 %259, label %303, label %260

260:                                              ; preds = %250
  %261 = load ptr, ptr %27, align 8, !tbaa !77
  %262 = call ptr @BLI_ghash_popkey(ptr noundef %261, ptr noundef %257, ptr noundef null) #19
  %263 = icmp eq ptr %262, null
  br i1 %263, label %303, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr %27, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %265, ptr noundef %256, ptr noundef nonnull %262) #19
  br label %303

266:                                              ; preds = %245, %238, %228, %221, %209
  %267 = icmp eq i32 %58, 0
  br i1 %267, label %296, label %268

268:                                              ; preds = %266
  %269 = add nsw i32 %211, %58
  %270 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %269, i32 noundef 1) #19
  %271 = getelementptr inbounds %struct.Nurb, ptr %270, i64 0, i32 18
  %272 = load ptr, ptr %271, align 8, !tbaa !53
  %273 = sext i32 %211 to i64
  %274 = getelementptr inbounds %struct.BezTriple, ptr %272, i64 %273
  %275 = load ptr, ptr %47, align 8, !tbaa !53
  %276 = sext i32 %58 to i64
  %277 = mul nsw i64 %276, 72
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %274, ptr align 4 %275, i64 %277, i1 false)
  %278 = load ptr, ptr %28, align 8, !tbaa !77
  %279 = icmp ne ptr %278, null
  %280 = icmp sgt i32 %58, 0
  %281 = and i1 %280, %279
  br i1 %281, label %282, label %303

282:                                              ; preds = %268, %291
  %283 = phi ptr [ %293, %291 ], [ %275, %268 ]
  %284 = phi i32 [ %294, %291 ], [ 0, %268 ]
  %285 = phi ptr [ %292, %291 ], [ %274, %268 ]
  %286 = load ptr, ptr %28, align 8, !tbaa !77
  %287 = call ptr @BLI_ghash_popkey(ptr noundef %286, ptr noundef %283, ptr noundef null) #19
  %288 = icmp eq ptr %287, null
  br i1 %288, label %291, label %289

289:                                              ; preds = %282
  %290 = load ptr, ptr %28, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %290, ptr noundef %285, ptr noundef nonnull %287) #19
  br label %291

291:                                              ; preds = %289, %282
  %292 = getelementptr inbounds i8, ptr %285, i64 72
  %293 = getelementptr inbounds i8, ptr %283, i64 72
  %294 = add nuw nsw i32 %284, 1
  %295 = icmp eq i32 %294, %58
  br i1 %295, label %303, label %282, !llvm.loop !182

296:                                              ; preds = %266
  %297 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %211, i32 noundef 1) #19
  br label %303

298:                                              ; preds = %205
  %299 = add nsw i32 %110, 1
  %300 = sub nsw i32 %299, %208
  %301 = add nsw i32 %300, 1
  %302 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %301, i32 noundef 1) #19
  br label %303

303:                                              ; preds = %291, %264, %260, %268, %250, %202, %203, %199, %296, %298, %124
  %304 = phi ptr [ %126, %124 ], [ %174, %199 ], [ %204, %203 ], [ %297, %296 ], [ %302, %298 ], [ null, %202 ], [ %252, %250 ], [ %270, %268 ], [ %252, %260 ], [ %252, %264 ], [ %270, %291 ]
  %305 = phi i32 [ 0, %124 ], [ %201, %199 ], [ 0, %203 ], [ %208, %296 ], [ %208, %298 ], [ 0, %202 ], [ %208, %250 ], [ %208, %268 ], [ %208, %260 ], [ %208, %264 ], [ %208, %291 ]
  %306 = phi i32 [ %62, %124 ], [ %130, %199 ], [ %130, %203 ], [ %110, %296 ], [ %299, %298 ], [ %130, %202 ], [ %110, %250 ], [ %110, %268 ], [ %110, %260 ], [ %110, %264 ], [ %110, %291 ]
  %307 = phi i32 [ %125, %124 ], [ 1, %199 ], [ %131, %203 ], [ %211, %296 ], [ %301, %298 ], [ %131, %202 ], [ %211, %250 ], [ %211, %268 ], [ %211, %260 ], [ %211, %264 ], [ %211, %291 ]
  %308 = phi i32 [ %58, %124 ], [ %58, %199 ], [ %58, %203 ], [ 0, %296 ], [ %58, %298 ], [ %131, %202 ], [ %58, %250 ], [ 0, %268 ], [ %58, %260 ], [ %58, %264 ], [ 0, %291 ]
  %309 = icmp eq ptr %304, null
  br i1 %309, label %346, label %310

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.Nurb, ptr %304, i64 0, i32 18
  %312 = load ptr, ptr %311, align 8, !tbaa !53
  %313 = load ptr, ptr %47, align 8, !tbaa !53
  %314 = sext i32 %305 to i64
  %315 = getelementptr inbounds %struct.BezTriple, ptr %313, i64 %314
  %316 = sext i32 %307 to i64
  %317 = mul nsw i64 %316, 72
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %312, ptr align 4 %315, i64 %317, i1 false)
  %318 = load ptr, ptr %30, align 8, !tbaa !77
  %319 = icmp ne ptr %318, null
  %320 = icmp sgt i32 %307, 0
  %321 = and i1 %320, %319
  br i1 %321, label %322, label %336

322:                                              ; preds = %310, %331
  %323 = phi ptr [ %333, %331 ], [ %315, %310 ]
  %324 = phi i32 [ %334, %331 ], [ 0, %310 ]
  %325 = phi ptr [ %332, %331 ], [ %312, %310 ]
  %326 = load ptr, ptr %30, align 8, !tbaa !77
  %327 = call ptr @BLI_ghash_popkey(ptr noundef %326, ptr noundef %323, ptr noundef null) #19
  %328 = icmp eq ptr %327, null
  br i1 %328, label %331, label %329

329:                                              ; preds = %322
  %330 = load ptr, ptr %30, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %330, ptr noundef %325, ptr noundef nonnull %327) #19
  br label %331

331:                                              ; preds = %329, %322
  %332 = getelementptr inbounds i8, ptr %325, i64 72
  %333 = getelementptr inbounds i8, ptr %323, i64 72
  %334 = add nuw nsw i32 %324, 1
  %335 = icmp eq i32 %334, %307
  br i1 %335, label %336, label %322, !llvm.loop !182

336:                                              ; preds = %331, %310
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %304) #19
  %337 = icmp eq i32 %305, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %336
  %339 = load i32, ptr %48, align 8, !tbaa !52
  %340 = add nsw i32 %339, -1
  %341 = icmp eq i32 %306, %340
  br i1 %341, label %346, label %342

342:                                              ; preds = %338, %336
  %343 = getelementptr inbounds %struct.Nurb, ptr %304, i64 0, i32 13
  %344 = load i16, ptr %343, align 4, !tbaa !69
  %345 = and i16 %344, -2
  store i16 %345, ptr %343, align 4, !tbaa !69
  br label %346

346:                                              ; preds = %303, %342, %338, %108, %96, %103, %83
  %347 = phi i32 [ %109, %108 ], [ %61, %96 ], [ %61, %103 ], [ %85, %83 ], [ -1, %338 ], [ -1, %342 ], [ -1, %303 ]
  %348 = phi i32 [ %110, %108 ], [ %60, %96 ], [ %60, %103 ], [ %62, %83 ], [ -1, %338 ], [ -1, %342 ], [ -1, %303 ]
  %349 = phi i32 [ %59, %108 ], [ %59, %96 ], [ %59, %103 ], [ %59, %83 ], [ %307, %338 ], [ %307, %342 ], [ %307, %303 ]
  %350 = phi i32 [ %58, %108 ], [ %58, %96 ], [ %58, %103 ], [ %58, %83 ], [ %308, %338 ], [ %308, %342 ], [ %308, %303 ]
  %351 = add nuw nsw i32 %62, 1
  %352 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 1
  %353 = load i32, ptr %48, align 8, !tbaa !52
  %354 = icmp slt i32 %351, %353
  br i1 %354, label %56, label %355, !llvm.loop !419

355:                                              ; preds = %346, %46
  %356 = phi i32 [ -1, %46 ], [ %349, %346 ]
  %357 = phi i32 [ %49, %46 ], [ %353, %346 ]
  %358 = icmp ne i32 %356, -1
  %359 = select i1 %31, i1 %358, i1 false
  %360 = icmp sgt i32 %357, 2
  %361 = and i1 %359, %360
  br i1 %361, label %362, label %1348

362:                                              ; preds = %355
  %363 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 13
  %364 = load i16, ptr %363, align 4, !tbaa !69
  %365 = and i16 %364, 1
  %366 = icmp eq i16 %365, 0
  br i1 %366, label %367, label %1348

367:                                              ; preds = %362
  %368 = load ptr, ptr %47, align 8, !tbaa !53
  %369 = load i16, ptr %32, align 8, !tbaa !221
  %370 = and i16 %369, 1
  %371 = icmp eq i16 %370, 0
  %372 = getelementptr inbounds %struct.BezTriple, ptr %368, i64 0, i32 8
  %373 = load i8, ptr %372, align 4, !tbaa !59
  %374 = and i8 %373, 1
  %375 = icmp eq i8 %374, 0
  br i1 %371, label %377, label %376

376:                                              ; preds = %367
  br i1 %375, label %418, label %388

377:                                              ; preds = %367
  br i1 %375, label %378, label %388

378:                                              ; preds = %377
  %379 = getelementptr inbounds %struct.BezTriple, ptr %368, i64 0, i32 7
  %380 = load i8, ptr %379, align 1, !tbaa !57
  %381 = and i8 %380, 1
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.BezTriple, ptr %368, i64 0, i32 9
  %385 = load i8, ptr %384, align 1, !tbaa !60
  %386 = and i8 %385, 1
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %418, label %388

388:                                              ; preds = %383, %378, %377, %376
  %389 = getelementptr inbounds %struct.BezTriple, ptr %368, i64 1, i32 8
  %390 = load i8, ptr %389, align 4, !tbaa !59
  %391 = and i8 %390, 1
  %392 = icmp eq i8 %391, 0
  br i1 %371, label %394, label %393

393:                                              ; preds = %388
  br i1 %392, label %418, label %405

394:                                              ; preds = %388
  br i1 %392, label %395, label %405

395:                                              ; preds = %394
  %396 = getelementptr inbounds %struct.BezTriple, ptr %368, i64 1, i32 7
  %397 = load i8, ptr %396, align 1, !tbaa !57
  %398 = and i8 %397, 1
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.BezTriple, ptr %368, i64 1, i32 9
  %402 = load i8, ptr %401, align 1, !tbaa !60
  %403 = and i8 %402, 1
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %418, label %405

405:                                              ; preds = %400, %395, %394, %393
  %406 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef 1, i32 noundef 1) #19
  %407 = getelementptr inbounds %struct.Nurb, ptr %406, i64 0, i32 18
  %408 = load ptr, ptr %407, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %408, ptr noundef nonnull align 4 dereferenceable(72) %368, i64 72, i1 false)
  %409 = load ptr, ptr %33, align 8, !tbaa !77
  %410 = icmp eq ptr %409, null
  br i1 %410, label %417, label %411

411:                                              ; preds = %405
  %412 = load ptr, ptr %33, align 8, !tbaa !77
  %413 = call ptr @BLI_ghash_popkey(ptr noundef %412, ptr noundef %368, ptr noundef null) #19
  %414 = icmp eq ptr %413, null
  br i1 %414, label %417, label %415

415:                                              ; preds = %411
  %416 = load ptr, ptr %33, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %416, ptr noundef %408, ptr noundef nonnull %413) #19
  br label %417

417:                                              ; preds = %415, %411, %405
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %406) #19
  br label %418

418:                                              ; preds = %417, %400, %393, %383, %376
  %419 = load ptr, ptr %47, align 8, !tbaa !53
  %420 = load i32, ptr %48, align 8, !tbaa !52
  %421 = sext i32 %420 to i64
  %422 = getelementptr %struct.BezTriple, ptr %419, i64 %421
  %423 = getelementptr %struct.BezTriple, ptr %422, i64 -1
  %424 = load i16, ptr %32, align 8, !tbaa !221
  %425 = and i16 %424, 1
  %426 = icmp eq i16 %425, 0
  %427 = getelementptr %struct.BezTriple, ptr %422, i64 -1, i32 8
  %428 = load i8, ptr %427, align 4, !tbaa !59
  %429 = and i8 %428, 1
  %430 = icmp eq i8 %429, 0
  br i1 %426, label %432, label %431

431:                                              ; preds = %418
  br i1 %430, label %1348, label %443

432:                                              ; preds = %418
  br i1 %430, label %433, label %443

433:                                              ; preds = %432
  %434 = getelementptr %struct.BezTriple, ptr %422, i64 -1, i32 7
  %435 = load i8, ptr %434, align 1, !tbaa !57
  %436 = and i8 %435, 1
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %438, label %443

438:                                              ; preds = %433
  %439 = getelementptr %struct.BezTriple, ptr %422, i64 -1, i32 9
  %440 = load i8, ptr %439, align 1, !tbaa !60
  %441 = and i8 %440, 1
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %1348, label %443

443:                                              ; preds = %438, %433, %432, %431
  %444 = getelementptr %struct.BezTriple, ptr %422, i64 -2, i32 8
  %445 = load i8, ptr %444, align 4, !tbaa !59
  %446 = and i8 %445, 1
  %447 = icmp eq i8 %446, 0
  br i1 %426, label %449, label %448

448:                                              ; preds = %443
  br i1 %447, label %1348, label %460

449:                                              ; preds = %443
  br i1 %447, label %450, label %460

450:                                              ; preds = %449
  %451 = getelementptr %struct.BezTriple, ptr %422, i64 -2, i32 7
  %452 = load i8, ptr %451, align 1, !tbaa !57
  %453 = and i8 %452, 1
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %450
  %456 = getelementptr %struct.BezTriple, ptr %422, i64 -2, i32 9
  %457 = load i8, ptr %456, align 1, !tbaa !60
  %458 = and i8 %457, 1
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %1348, label %460

460:                                              ; preds = %455, %450, %449, %448
  %461 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef 1, i32 noundef 1) #19
  %462 = getelementptr inbounds %struct.Nurb, ptr %461, i64 0, i32 18
  %463 = load ptr, ptr %462, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %463, ptr noundef nonnull align 4 dereferenceable(72) %423, i64 72, i1 false)
  %464 = load ptr, ptr %34, align 8, !tbaa !77
  %465 = icmp eq ptr %464, null
  br i1 %465, label %1346, label %466

466:                                              ; preds = %460
  %467 = load ptr, ptr %34, align 8, !tbaa !77
  %468 = call ptr @BLI_ghash_popkey(ptr noundef %467, ptr noundef %423, ptr noundef null) #19
  %469 = icmp eq ptr %468, null
  br i1 %469, label %1346, label %470

470:                                              ; preds = %466
  %471 = load ptr, ptr %34, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %471, ptr noundef %463, ptr noundef nonnull %468) #19
  br label %1346

472:                                              ; preds = %41
  %473 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 7
  %474 = load i32, ptr %473, align 4, !tbaa !61
  %475 = icmp sgt i32 %474, 0
  br i1 %475, label %476, label %1348

476:                                              ; preds = %472
  %477 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 6
  %478 = load i32, ptr %477, align 8, !tbaa !52
  %479 = icmp sgt i32 %478, 0
  br i1 %479, label %480, label %512

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 17
  %482 = load ptr, ptr %481, align 8, !tbaa !62
  %483 = zext nneg i32 %478 to i64
  %484 = zext nneg i32 %478 to i64
  %485 = zext nneg i32 %478 to i64
  br label %486

486:                                              ; preds = %480, %506
  %487 = phi i64 [ 0, %480 ], [ %507, %506 ]
  %488 = phi i1 [ %479, %480 ], [ %508, %506 ]
  %489 = getelementptr inbounds %struct.BPoint, ptr %482, i64 %487
  br label %490

490:                                              ; preds = %486, %490
  %491 = phi i32 [ %498, %490 ], [ 0, %486 ]
  %492 = phi i32 [ %499, %490 ], [ 0, %486 ]
  %493 = phi ptr [ %500, %490 ], [ %489, %486 ]
  %494 = getelementptr inbounds %struct.BPoint, ptr %493, i64 0, i32 3
  %495 = load i16, ptr %494, align 4, !tbaa !64
  %496 = and i16 %495, 1
  %497 = zext nneg i16 %496 to i32
  %498 = add i32 %491, %497
  %499 = add nuw nsw i32 %492, 1
  %500 = getelementptr inbounds %struct.BPoint, ptr %493, i64 %483
  %501 = icmp eq i32 %499, %474
  br i1 %501, label %502, label %490, !llvm.loop !355

502:                                              ; preds = %490
  %503 = icmp ne i32 %498, %474
  %504 = icmp sgt i32 %498, 0
  %505 = and i1 %503, %504
  br i1 %505, label %510, label %506

506:                                              ; preds = %502
  %507 = add nuw nsw i64 %487, 1
  %508 = icmp ult i64 %507, %484
  %509 = icmp eq i64 %507, %485
  br i1 %509, label %512, label %486, !llvm.loop !356

510:                                              ; preds = %502
  %511 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 6
  br i1 %488, label %923, label %514

512:                                              ; preds = %506, %476
  %513 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 6
  br label %514

514:                                              ; preds = %512, %510
  %515 = phi ptr [ %513, %512 ], [ %511, %510 ]
  %516 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 17
  %517 = load i32, ptr %515, align 8, !tbaa !52
  %518 = icmp sgt i32 %517, 0
  br i1 %518, label %519, label %824

519:                                              ; preds = %514
  %520 = load ptr, ptr %516, align 8, !tbaa !62
  %521 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 13
  %522 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 13
  %523 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 13
  br label %524

524:                                              ; preds = %519, %815
  %525 = phi i32 [ %517, %519 ], [ %822, %815 ]
  %526 = phi i32 [ 0, %519 ], [ %819, %815 ]
  %527 = phi i32 [ -1, %519 ], [ %818, %815 ]
  %528 = phi i32 [ -1, %519 ], [ %817, %815 ]
  %529 = phi i32 [ -1, %519 ], [ %816, %815 ]
  %530 = phi i32 [ 0, %519 ], [ %820, %815 ]
  %531 = phi ptr [ %520, %519 ], [ %821, %815 ]
  %532 = getelementptr inbounds %struct.BPoint, ptr %531, i64 0, i32 3
  %533 = load i16, ptr %532, align 4, !tbaa !64
  %534 = and i16 %533, 1
  %535 = icmp eq i16 %534, 0
  br i1 %535, label %536, label %541

536:                                              ; preds = %524
  %537 = icmp eq i32 %529, -1
  %538 = select i1 %537, i32 %530, i32 %529
  %539 = add nsw i32 %525, -1
  %540 = icmp slt i32 %530, %539
  br i1 %540, label %815, label %549

541:                                              ; preds = %524
  %542 = add nsw i32 %525, -1
  %543 = icmp slt i32 %530, %542
  br i1 %543, label %544, label %549

544:                                              ; preds = %541
  %545 = getelementptr inbounds %struct.BPoint, ptr %531, i64 1, i32 3
  %546 = load i16, ptr %545, align 4, !tbaa !64
  %547 = and i16 %546, 1
  %548 = icmp eq i16 %547, 0
  br i1 %548, label %815, label %549

549:                                              ; preds = %541, %544, %536
  %550 = phi i32 [ %529, %544 ], [ %529, %541 ], [ %538, %536 ]
  %551 = phi i32 [ %528, %544 ], [ %528, %541 ], [ %530, %536 ]
  %552 = icmp sgt i32 %550, -1
  br i1 %552, label %553, label %815

553:                                              ; preds = %549
  %554 = icmp slt i32 %550, 2
  %555 = add nsw i32 %525, -1
  %556 = icmp eq i32 %530, %555
  %557 = select i1 %554, i1 %556, i1 false
  br i1 %557, label %558, label %569

558:                                              ; preds = %553
  %559 = icmp ne i32 %550, 1
  %560 = icmp eq i32 %551, %530
  %561 = select i1 %559, i1 true, i1 %560
  br i1 %561, label %565, label %562

562:                                              ; preds = %558
  %563 = load i16, ptr %523, align 4, !tbaa !69
  %564 = and i16 %563, -2
  store i16 %564, ptr %523, align 4, !tbaa !69
  br label %565

565:                                              ; preds = %562, %558
  %566 = add nuw nsw i32 %530, 1
  %567 = load i32, ptr %473, align 4, !tbaa !61
  %568 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %566, i32 noundef %567) #19
  br label %755

569:                                              ; preds = %553
  %570 = icmp eq i32 %550, 0
  br i1 %570, label %571, label %643

571:                                              ; preds = %569
  %572 = add nsw i32 %551, 1
  %573 = add nsw i32 %551, 2
  %574 = load ptr, ptr %516, align 8, !tbaa !62
  %575 = sext i32 %525 to i64
  %576 = getelementptr %struct.BPoint, ptr %574, i64 %575
  %577 = load i16, ptr %522, align 4, !tbaa !69
  %578 = and i16 %577, 1
  %579 = icmp eq i16 %578, 0
  br i1 %579, label %640, label %580

580:                                              ; preds = %571
  %581 = getelementptr %struct.BPoint, ptr %576, i64 -1, i32 3
  %582 = load i16, ptr %581, align 4, !tbaa !64
  %583 = and i16 %582, 1
  %584 = icmp eq i16 %583, 0
  br i1 %584, label %639, label %585

585:                                              ; preds = %580
  %586 = getelementptr %struct.BPoint, ptr %576, i64 -2, i32 3
  %587 = load i16, ptr %586, align 4, !tbaa !64
  %588 = and i16 %587, 1
  %589 = icmp eq i16 %588, 0
  br i1 %589, label %639, label %590

590:                                              ; preds = %585
  %591 = add nsw i32 %551, 3
  %592 = load i32, ptr %473, align 4, !tbaa !61
  %593 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %591, i32 noundef %592) #19
  %594 = load i32, ptr %473, align 4, !tbaa !61
  %595 = icmp sgt i32 %594, 0
  br i1 %595, label %596, label %636

596:                                              ; preds = %590
  %597 = getelementptr inbounds %struct.Nurb, ptr %593, i64 0, i32 17
  %598 = getelementptr inbounds %struct.Nurb, ptr %593, i64 0, i32 6
  %599 = sext i32 %573 to i64
  %600 = mul nsw i64 %599, 36
  %601 = icmp sgt i32 %551, -2
  br label %602

602:                                              ; preds = %596, %632
  %603 = phi i32 [ 0, %596 ], [ %633, %632 ]
  %604 = load ptr, ptr %597, align 8, !tbaa !62
  %605 = load i32, ptr %598, align 8, !tbaa !52
  %606 = mul nsw i32 %605, %603
  %607 = sext i32 %606 to i64
  %608 = getelementptr %struct.BPoint, ptr %604, i64 %607
  %609 = getelementptr %struct.BPoint, ptr %608, i64 1
  %610 = load ptr, ptr %516, align 8, !tbaa !62
  %611 = load i32, ptr %515, align 8, !tbaa !52
  %612 = mul nsw i32 %611, %603
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.BPoint, ptr %610, i64 %613
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %609, ptr align 4 %614, i64 %600, i1 false)
  %615 = load ptr, ptr %21, align 8, !tbaa !77
  %616 = icmp ne ptr %615, null
  %617 = and i1 %601, %616
  br i1 %617, label %618, label %632

618:                                              ; preds = %602, %627
  %619 = phi ptr [ %629, %627 ], [ %614, %602 ]
  %620 = phi i32 [ %630, %627 ], [ 0, %602 ]
  %621 = phi ptr [ %628, %627 ], [ %609, %602 ]
  %622 = load ptr, ptr %21, align 8, !tbaa !77
  %623 = call ptr @BLI_ghash_popkey(ptr noundef %622, ptr noundef %619, ptr noundef null) #19
  %624 = icmp eq ptr %623, null
  br i1 %624, label %627, label %625

625:                                              ; preds = %618
  %626 = load ptr, ptr %21, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %626, ptr noundef %621, ptr noundef nonnull %623) #19
  br label %627

627:                                              ; preds = %625, %618
  %628 = getelementptr inbounds i8, ptr %621, i64 36
  %629 = getelementptr inbounds i8, ptr %619, i64 36
  %630 = add nuw nsw i32 %620, 1
  %631 = icmp eq i32 %630, %573
  br i1 %631, label %632, label %618, !llvm.loop !182

632:                                              ; preds = %627, %602
  %633 = add nuw nsw i32 %603, 1
  %634 = load i32, ptr %473, align 4, !tbaa !61
  %635 = icmp slt i32 %633, %634
  br i1 %635, label %602, label %636, !llvm.loop !420

636:                                              ; preds = %632, %590
  %637 = load i32, ptr %515, align 8, !tbaa !52
  %638 = add nsw i32 %637, -1
  br label %755

639:                                              ; preds = %585, %580
  br i1 %579, label %640, label %755

640:                                              ; preds = %571, %639
  %641 = load i32, ptr %473, align 4, !tbaa !61
  %642 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %573, i32 noundef %641) #19
  br label %755

643:                                              ; preds = %569
  %644 = add nsw i32 %525, -1
  %645 = icmp eq i32 %551, %644
  %646 = add nsw i32 %550, -1
  br i1 %645, label %647, label %749

647:                                              ; preds = %643
  %648 = sub nsw i32 %551, %646
  %649 = add nsw i32 %648, 1
  %650 = load ptr, ptr %516, align 8, !tbaa !62
  %651 = load i16, ptr %521, align 4, !tbaa !69
  %652 = and i16 %651, 1
  %653 = icmp eq i16 %652, 0
  br i1 %653, label %698, label %654

654:                                              ; preds = %647
  %655 = getelementptr inbounds %struct.BPoint, ptr %650, i64 0, i32 3
  %656 = load i16, ptr %655, align 4, !tbaa !64
  %657 = and i16 %656, 1
  %658 = icmp eq i16 %657, 0
  br i1 %658, label %698, label %659

659:                                              ; preds = %654
  %660 = getelementptr inbounds %struct.BPoint, ptr %650, i64 1, i32 3
  %661 = load i16, ptr %660, align 4, !tbaa !64
  %662 = and i16 %661, 1
  %663 = icmp eq i16 %662, 0
  br i1 %663, label %698, label %664

664:                                              ; preds = %659
  %665 = add nsw i32 %648, 2
  %666 = load i32, ptr %473, align 4, !tbaa !61
  %667 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %665, i32 noundef %666) #19
  %668 = load i32, ptr %473, align 4, !tbaa !61
  %669 = icmp sgt i32 %668, 0
  br i1 %669, label %670, label %755

670:                                              ; preds = %664
  %671 = getelementptr inbounds %struct.Nurb, ptr %667, i64 0, i32 17
  %672 = getelementptr inbounds %struct.Nurb, ptr %667, i64 0, i32 6
  br label %673

673:                                              ; preds = %670, %694
  %674 = phi i32 [ 0, %670 ], [ %695, %694 ]
  %675 = load ptr, ptr %671, align 8, !tbaa !62
  %676 = load i32, ptr %672, align 8, !tbaa !52
  %677 = mul nsw i32 %676, %674
  %678 = add nsw i32 %677, %649
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.BPoint, ptr %675, i64 %679
  %681 = load ptr, ptr %516, align 8, !tbaa !62
  %682 = load i32, ptr %515, align 8, !tbaa !52
  %683 = mul nsw i32 %682, %674
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.BPoint, ptr %681, i64 %684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %680, ptr noundef nonnull align 4 dereferenceable(36) %685, i64 36, i1 false)
  %686 = load ptr, ptr %19, align 8, !tbaa !77
  %687 = icmp eq ptr %686, null
  br i1 %687, label %694, label %688

688:                                              ; preds = %673
  %689 = load ptr, ptr %19, align 8, !tbaa !77
  %690 = call ptr @BLI_ghash_popkey(ptr noundef %689, ptr noundef %685, ptr noundef null) #19
  %691 = icmp eq ptr %690, null
  br i1 %691, label %694, label %692

692:                                              ; preds = %688
  %693 = load ptr, ptr %19, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %693, ptr noundef %680, ptr noundef nonnull %690) #19
  br label %694

694:                                              ; preds = %692, %688, %673
  %695 = add nuw nsw i32 %674, 1
  %696 = load i32, ptr %473, align 4, !tbaa !61
  %697 = icmp slt i32 %695, %696
  br i1 %697, label %673, label %755, !llvm.loop !421

698:                                              ; preds = %659, %654, %647
  %699 = icmp eq i32 %526, 0
  br i1 %699, label %746, label %700

700:                                              ; preds = %698
  %701 = add nsw i32 %649, %526
  %702 = load i32, ptr %473, align 4, !tbaa !61
  %703 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %701, i32 noundef %702) #19
  %704 = load i32, ptr %473, align 4, !tbaa !61
  %705 = icmp sgt i32 %704, 0
  br i1 %705, label %706, label %755

706:                                              ; preds = %700
  %707 = getelementptr inbounds %struct.Nurb, ptr %703, i64 0, i32 17
  %708 = getelementptr inbounds %struct.Nurb, ptr %703, i64 0, i32 6
  %709 = sext i32 %526 to i64
  %710 = mul nsw i64 %709, 36
  %711 = icmp sgt i32 %526, 0
  br label %712

712:                                              ; preds = %706, %742
  %713 = phi i32 [ 0, %706 ], [ %743, %742 ]
  %714 = load ptr, ptr %707, align 8, !tbaa !62
  %715 = load i32, ptr %708, align 8, !tbaa !52
  %716 = mul nsw i32 %715, %713
  %717 = add nsw i32 %716, %649
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds %struct.BPoint, ptr %714, i64 %718
  %720 = load ptr, ptr %516, align 8, !tbaa !62
  %721 = load i32, ptr %515, align 8, !tbaa !52
  %722 = mul nsw i32 %721, %713
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.BPoint, ptr %720, i64 %723
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %719, ptr align 4 %724, i64 %710, i1 false)
  %725 = load ptr, ptr %20, align 8, !tbaa !77
  %726 = icmp ne ptr %725, null
  %727 = and i1 %711, %726
  br i1 %727, label %728, label %742

728:                                              ; preds = %712, %737
  %729 = phi ptr [ %739, %737 ], [ %724, %712 ]
  %730 = phi i32 [ %740, %737 ], [ 0, %712 ]
  %731 = phi ptr [ %738, %737 ], [ %719, %712 ]
  %732 = load ptr, ptr %20, align 8, !tbaa !77
  %733 = call ptr @BLI_ghash_popkey(ptr noundef %732, ptr noundef %729, ptr noundef null) #19
  %734 = icmp eq ptr %733, null
  br i1 %734, label %737, label %735

735:                                              ; preds = %728
  %736 = load ptr, ptr %20, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %736, ptr noundef %731, ptr noundef nonnull %733) #19
  br label %737

737:                                              ; preds = %735, %728
  %738 = getelementptr inbounds i8, ptr %731, i64 36
  %739 = getelementptr inbounds i8, ptr %729, i64 36
  %740 = add nuw nsw i32 %730, 1
  %741 = icmp eq i32 %740, %526
  br i1 %741, label %742, label %728, !llvm.loop !182

742:                                              ; preds = %737, %712
  %743 = add nuw nsw i32 %713, 1
  %744 = load i32, ptr %473, align 4, !tbaa !61
  %745 = icmp slt i32 %743, %744
  br i1 %745, label %712, label %755, !llvm.loop !422

746:                                              ; preds = %698
  %747 = load i32, ptr %473, align 4, !tbaa !61
  %748 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %649, i32 noundef %747) #19
  br label %755

749:                                              ; preds = %643
  %750 = add nsw i32 %551, 1
  %751 = sub nsw i32 %750, %646
  %752 = add nsw i32 %751, 1
  %753 = load i32, ptr %473, align 4, !tbaa !61
  %754 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %752, i32 noundef %753) #19
  br label %755

755:                                              ; preds = %694, %742, %664, %700, %639, %640, %636, %746, %749, %565
  %756 = phi ptr [ %568, %565 ], [ %593, %636 ], [ %642, %640 ], [ %748, %746 ], [ %754, %749 ], [ null, %639 ], [ %703, %700 ], [ %667, %664 ], [ %703, %742 ], [ %667, %694 ]
  %757 = phi i32 [ 0, %565 ], [ %638, %636 ], [ 0, %640 ], [ %646, %746 ], [ %646, %749 ], [ 0, %639 ], [ %646, %700 ], [ %646, %664 ], [ %646, %742 ], [ %646, %694 ]
  %758 = phi i32 [ %530, %565 ], [ %572, %636 ], [ %572, %640 ], [ %551, %746 ], [ %750, %749 ], [ %572, %639 ], [ %551, %700 ], [ %551, %664 ], [ %551, %742 ], [ %551, %694 ]
  %759 = phi i32 [ %566, %565 ], [ 1, %636 ], [ %573, %640 ], [ %649, %746 ], [ %752, %749 ], [ %573, %639 ], [ %649, %700 ], [ %649, %664 ], [ %649, %742 ], [ %649, %694 ]
  %760 = phi i32 [ %526, %565 ], [ %526, %636 ], [ %526, %640 ], [ 0, %746 ], [ %526, %749 ], [ %573, %639 ], [ %526, %700 ], [ %526, %664 ], [ %526, %742 ], [ %526, %694 ]
  %761 = icmp eq ptr %756, null
  br i1 %761, label %815, label %762

762:                                              ; preds = %755
  %763 = load i32, ptr %473, align 4, !tbaa !61
  %764 = icmp sgt i32 %763, 0
  br i1 %764, label %765, label %805

765:                                              ; preds = %762
  %766 = getelementptr inbounds %struct.Nurb, ptr %756, i64 0, i32 17
  %767 = getelementptr inbounds %struct.Nurb, ptr %756, i64 0, i32 6
  %768 = sext i32 %759 to i64
  %769 = mul nsw i64 %768, 36
  %770 = icmp sgt i32 %759, 0
  br label %771

771:                                              ; preds = %765, %801
  %772 = phi i32 [ 0, %765 ], [ %802, %801 ]
  %773 = load ptr, ptr %766, align 8, !tbaa !62
  %774 = load i32, ptr %767, align 8, !tbaa !52
  %775 = mul nsw i32 %774, %772
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds %struct.BPoint, ptr %773, i64 %776
  %778 = load ptr, ptr %516, align 8, !tbaa !62
  %779 = load i32, ptr %515, align 8, !tbaa !52
  %780 = mul nsw i32 %779, %772
  %781 = add nsw i32 %780, %757
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds %struct.BPoint, ptr %778, i64 %782
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %777, ptr align 4 %783, i64 %769, i1 false)
  %784 = load ptr, ptr %22, align 8, !tbaa !77
  %785 = icmp ne ptr %784, null
  %786 = and i1 %770, %785
  br i1 %786, label %787, label %801

787:                                              ; preds = %771, %796
  %788 = phi ptr [ %798, %796 ], [ %783, %771 ]
  %789 = phi i32 [ %799, %796 ], [ 0, %771 ]
  %790 = phi ptr [ %797, %796 ], [ %777, %771 ]
  %791 = load ptr, ptr %22, align 8, !tbaa !77
  %792 = call ptr @BLI_ghash_popkey(ptr noundef %791, ptr noundef %788, ptr noundef null) #19
  %793 = icmp eq ptr %792, null
  br i1 %793, label %796, label %794

794:                                              ; preds = %787
  %795 = load ptr, ptr %22, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %795, ptr noundef %790, ptr noundef nonnull %792) #19
  br label %796

796:                                              ; preds = %794, %787
  %797 = getelementptr inbounds i8, ptr %790, i64 36
  %798 = getelementptr inbounds i8, ptr %788, i64 36
  %799 = add nuw nsw i32 %789, 1
  %800 = icmp eq i32 %799, %759
  br i1 %800, label %801, label %787, !llvm.loop !182

801:                                              ; preds = %796, %771
  %802 = add nuw nsw i32 %772, 1
  %803 = load i32, ptr %473, align 4, !tbaa !61
  %804 = icmp slt i32 %802, %803
  br i1 %804, label %771, label %805, !llvm.loop !423

805:                                              ; preds = %801, %762
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %756) #19
  %806 = icmp eq i32 %757, 0
  br i1 %806, label %807, label %811

807:                                              ; preds = %805
  %808 = load i32, ptr %515, align 8, !tbaa !52
  %809 = add nsw i32 %808, -1
  %810 = icmp eq i32 %758, %809
  br i1 %810, label %815, label %811

811:                                              ; preds = %807, %805
  %812 = getelementptr inbounds %struct.Nurb, ptr %756, i64 0, i32 13
  %813 = load i16, ptr %812, align 4, !tbaa !69
  %814 = and i16 %813, -2
  store i16 %814, ptr %812, align 4, !tbaa !69
  br label %815

815:                                              ; preds = %755, %811, %807, %549, %544, %536
  %816 = phi i32 [ %550, %549 ], [ %529, %544 ], [ %538, %536 ], [ -1, %807 ], [ -1, %811 ], [ -1, %755 ]
  %817 = phi i32 [ %551, %549 ], [ %528, %544 ], [ %530, %536 ], [ -1, %807 ], [ -1, %811 ], [ -1, %755 ]
  %818 = phi i32 [ %527, %549 ], [ %527, %544 ], [ %527, %536 ], [ %759, %807 ], [ %759, %811 ], [ %759, %755 ]
  %819 = phi i32 [ %526, %549 ], [ %526, %544 ], [ %526, %536 ], [ %760, %807 ], [ %760, %811 ], [ %760, %755 ]
  %820 = add nuw nsw i32 %530, 1
  %821 = getelementptr inbounds %struct.BPoint, ptr %531, i64 1
  %822 = load i32, ptr %515, align 8, !tbaa !52
  %823 = icmp slt i32 %820, %822
  br i1 %823, label %524, label %824, !llvm.loop !424

824:                                              ; preds = %815, %514
  %825 = phi i32 [ -1, %514 ], [ %818, %815 ]
  %826 = phi i32 [ %517, %514 ], [ %822, %815 ]
  %827 = icmp ne i32 %825, -1
  %828 = select i1 %23, i1 %827, i1 false
  %829 = icmp sgt i32 %826, 2
  %830 = and i1 %828, %829
  br i1 %830, label %831, label %1348

831:                                              ; preds = %824
  %832 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 13
  %833 = load i16, ptr %832, align 4, !tbaa !69
  %834 = and i16 %833, 1
  %835 = icmp eq i16 %834, 0
  br i1 %835, label %836, label %1348

836:                                              ; preds = %831
  %837 = load ptr, ptr %516, align 8, !tbaa !62
  %838 = getelementptr inbounds %struct.BPoint, ptr %837, i64 0, i32 3
  %839 = load i16, ptr %838, align 4, !tbaa !64
  %840 = and i16 %839, 1
  %841 = icmp eq i16 %840, 0
  br i1 %841, label %878, label %842

842:                                              ; preds = %836
  %843 = getelementptr inbounds %struct.BPoint, ptr %837, i64 1, i32 3
  %844 = load i16, ptr %843, align 4, !tbaa !64
  %845 = and i16 %844, 1
  %846 = icmp eq i16 %845, 0
  br i1 %846, label %878, label %847

847:                                              ; preds = %842
  %848 = load i32, ptr %473, align 4, !tbaa !61
  %849 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef 1, i32 noundef %848) #19
  %850 = load i32, ptr %473, align 4, !tbaa !61
  %851 = icmp sgt i32 %850, 0
  br i1 %851, label %852, label %877

852:                                              ; preds = %847
  %853 = getelementptr inbounds %struct.Nurb, ptr %849, i64 0, i32 17
  br label %854

854:                                              ; preds = %852, %872
  %855 = phi i64 [ 0, %852 ], [ %873, %872 ]
  %856 = load ptr, ptr %853, align 8, !tbaa !62
  %857 = getelementptr inbounds %struct.BPoint, ptr %856, i64 %855
  %858 = load ptr, ptr %516, align 8, !tbaa !62
  %859 = load i32, ptr %515, align 8, !tbaa !52
  %860 = trunc i64 %855 to i32
  %861 = mul nsw i32 %859, %860
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds %struct.BPoint, ptr %858, i64 %862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %857, ptr noundef nonnull align 4 dereferenceable(36) %863, i64 36, i1 false)
  %864 = load ptr, ptr %24, align 8, !tbaa !77
  %865 = icmp eq ptr %864, null
  br i1 %865, label %872, label %866

866:                                              ; preds = %854
  %867 = load ptr, ptr %24, align 8, !tbaa !77
  %868 = call ptr @BLI_ghash_popkey(ptr noundef %867, ptr noundef %863, ptr noundef null) #19
  %869 = icmp eq ptr %868, null
  br i1 %869, label %872, label %870

870:                                              ; preds = %866
  %871 = load ptr, ptr %24, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %871, ptr noundef %857, ptr noundef nonnull %868) #19
  br label %872

872:                                              ; preds = %870, %866, %854
  %873 = add nuw nsw i64 %855, 1
  %874 = load i32, ptr %473, align 4, !tbaa !61
  %875 = sext i32 %874 to i64
  %876 = icmp slt i64 %873, %875
  br i1 %876, label %854, label %877, !llvm.loop !425

877:                                              ; preds = %872, %847
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %849) #19
  br label %878

878:                                              ; preds = %877, %842, %836
  %879 = load ptr, ptr %516, align 8, !tbaa !62
  %880 = load i32, ptr %515, align 8, !tbaa !52
  %881 = sext i32 %880 to i64
  %882 = getelementptr %struct.BPoint, ptr %879, i64 %881
  %883 = getelementptr %struct.BPoint, ptr %882, i64 -1, i32 3
  %884 = load i16, ptr %883, align 4, !tbaa !64
  %885 = and i16 %884, 1
  %886 = icmp eq i16 %885, 0
  br i1 %886, label %1348, label %887

887:                                              ; preds = %878
  %888 = getelementptr %struct.BPoint, ptr %882, i64 -2, i32 3
  %889 = load i16, ptr %888, align 4, !tbaa !64
  %890 = and i16 %889, 1
  %891 = icmp eq i16 %890, 0
  br i1 %891, label %1348, label %892

892:                                              ; preds = %887
  %893 = load i32, ptr %473, align 4, !tbaa !61
  %894 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef 1, i32 noundef %893) #19
  %895 = load i32, ptr %473, align 4, !tbaa !61
  %896 = icmp sgt i32 %895, 0
  br i1 %896, label %897, label %1346

897:                                              ; preds = %892
  %898 = getelementptr inbounds %struct.Nurb, ptr %894, i64 0, i32 17
  br label %899

899:                                              ; preds = %897, %919
  %900 = phi i64 [ 0, %897 ], [ %905, %919 ]
  %901 = load ptr, ptr %898, align 8, !tbaa !62
  %902 = getelementptr inbounds %struct.BPoint, ptr %901, i64 %900
  %903 = load ptr, ptr %516, align 8, !tbaa !62
  %904 = load i32, ptr %515, align 8, !tbaa !52
  %905 = add nuw nsw i64 %900, 1
  %906 = trunc i64 %905 to i32
  %907 = mul i32 %904, %906
  %908 = sext i32 %907 to i64
  %909 = getelementptr %struct.BPoint, ptr %903, i64 %908
  %910 = getelementptr %struct.BPoint, ptr %909, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %902, ptr noundef nonnull align 4 dereferenceable(36) %910, i64 36, i1 false)
  %911 = load ptr, ptr %25, align 8, !tbaa !77
  %912 = icmp eq ptr %911, null
  br i1 %912, label %919, label %913

913:                                              ; preds = %899
  %914 = load ptr, ptr %25, align 8, !tbaa !77
  %915 = call ptr @BLI_ghash_popkey(ptr noundef %914, ptr noundef %910, ptr noundef null) #19
  %916 = icmp eq ptr %915, null
  br i1 %916, label %919, label %917

917:                                              ; preds = %913
  %918 = load ptr, ptr %25, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %918, ptr noundef %902, ptr noundef nonnull %915) #19
  br label %919

919:                                              ; preds = %917, %913, %899
  %920 = load i32, ptr %473, align 4, !tbaa !61
  %921 = sext i32 %920 to i64
  %922 = icmp slt i64 %905, %921
  br i1 %922, label %899, label %1346, !llvm.loop !426

923:                                              ; preds = %510
  %924 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 17
  %925 = load ptr, ptr %924, align 8, !tbaa !62
  br label %926

926:                                              ; preds = %923, %946
  %927 = phi i1 [ true, %923 ], [ %948, %946 ]
  %928 = phi i32 [ 0, %923 ], [ %947, %946 ]
  %929 = phi ptr [ %925, %923 ], [ %940, %946 ]
  br label %930

930:                                              ; preds = %926, %930
  %931 = phi i32 [ %938, %930 ], [ 0, %926 ]
  %932 = phi i32 [ %939, %930 ], [ 0, %926 ]
  %933 = phi ptr [ %940, %930 ], [ %929, %926 ]
  %934 = getelementptr inbounds %struct.BPoint, ptr %933, i64 0, i32 3
  %935 = load i16, ptr %934, align 4, !tbaa !64
  %936 = and i16 %935, 1
  %937 = zext nneg i16 %936 to i32
  %938 = add i32 %931, %937
  %939 = add nuw nsw i32 %932, 1
  %940 = getelementptr inbounds %struct.BPoint, ptr %933, i64 1
  %941 = icmp eq i32 %939, %478
  br i1 %941, label %942, label %930, !llvm.loop !352

942:                                              ; preds = %930
  %943 = icmp ne i32 %938, %478
  %944 = icmp sgt i32 %938, 0
  %945 = and i1 %943, %944
  br i1 %945, label %950, label %946

946:                                              ; preds = %942
  %947 = add nuw nsw i32 %928, 1
  %948 = icmp slt i32 %947, %474
  %949 = icmp eq i32 %947, %474
  br i1 %949, label %951, label %926, !llvm.loop !353

950:                                              ; preds = %942
  br i1 %927, label %1318, label %951

951:                                              ; preds = %946, %950
  %952 = load i32, ptr %473, align 4, !tbaa !61
  %953 = icmp sgt i32 %952, 0
  br i1 %953, label %954, label %1216

954:                                              ; preds = %951
  %955 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 14
  %956 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 14
  %957 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 14
  br label %958

958:                                              ; preds = %954, %1205
  %959 = phi i32 [ %952, %954 ], [ %1214, %1205 ]
  %960 = phi i32 [ 0, %954 ], [ %1209, %1205 ]
  %961 = phi i32 [ -1, %954 ], [ %1208, %1205 ]
  %962 = phi i32 [ -1, %954 ], [ %1207, %1205 ]
  %963 = phi i32 [ -1, %954 ], [ %1206, %1205 ]
  %964 = phi i32 [ 0, %954 ], [ %1210, %1205 ]
  %965 = phi ptr [ %925, %954 ], [ %1213, %1205 ]
  %966 = getelementptr inbounds %struct.BPoint, ptr %965, i64 0, i32 3
  %967 = load i16, ptr %966, align 4, !tbaa !64
  %968 = and i16 %967, 1
  %969 = icmp eq i16 %968, 0
  br i1 %969, label %970, label %975

970:                                              ; preds = %958
  %971 = icmp eq i32 %963, -1
  %972 = select i1 %971, i32 %964, i32 %963
  %973 = add nsw i32 %959, -1
  %974 = icmp slt i32 %964, %973
  br i1 %974, label %1205, label %985

975:                                              ; preds = %958
  %976 = add nsw i32 %959, -1
  %977 = icmp slt i32 %964, %976
  br i1 %977, label %978, label %985

978:                                              ; preds = %975
  %979 = load i32, ptr %511, align 8, !tbaa !52
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds %struct.BPoint, ptr %965, i64 %980, i32 3
  %982 = load i16, ptr %981, align 4, !tbaa !64
  %983 = and i16 %982, 1
  %984 = icmp eq i16 %983, 0
  br i1 %984, label %1205, label %985

985:                                              ; preds = %975, %978, %970
  %986 = phi i32 [ %963, %978 ], [ %963, %975 ], [ %972, %970 ]
  %987 = phi i32 [ %962, %978 ], [ %962, %975 ], [ %964, %970 ]
  %988 = icmp sgt i32 %986, -1
  br i1 %988, label %989, label %1205

989:                                              ; preds = %985
  %990 = icmp slt i32 %986, 2
  %991 = add nsw i32 %959, -1
  %992 = icmp eq i32 %964, %991
  %993 = select i1 %990, i1 %992, i1 false
  br i1 %993, label %994, label %1005

994:                                              ; preds = %989
  %995 = icmp ne i32 %986, 1
  %996 = icmp eq i32 %987, %964
  %997 = select i1 %995, i1 true, i1 %996
  br i1 %997, label %1001, label %998

998:                                              ; preds = %994
  %999 = load i16, ptr %957, align 2, !tbaa !74
  %1000 = and i16 %999, -2
  store i16 %1000, ptr %957, align 2, !tbaa !74
  br label %1001

1001:                                             ; preds = %998, %994
  %1002 = add nuw nsw i32 %964, 1
  %1003 = load i32, ptr %511, align 8, !tbaa !52
  %1004 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %1003, i32 noundef %1002) #19
  br label %1159

1005:                                             ; preds = %989
  %1006 = icmp eq i32 %986, 0
  %1007 = load i32, ptr %511, align 8, !tbaa !52
  br i1 %1006, label %1008, label %1067

1008:                                             ; preds = %1005
  %1009 = add nsw i32 %987, 1
  %1010 = add nsw i32 %987, 2
  %1011 = load ptr, ptr %924, align 8, !tbaa !62
  %1012 = add i32 %959, -2
  %1013 = mul i32 %1007, %1012
  %1014 = sext i32 %1013 to i64
  %1015 = load i16, ptr %956, align 2, !tbaa !74
  %1016 = and i16 %1015, 1
  %1017 = icmp eq i16 %1016, 0
  br i1 %1017, label %1065, label %1018

1018:                                             ; preds = %1008
  %1019 = add i32 %959, -1
  %1020 = mul i32 %1007, %1019
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds %struct.BPoint, ptr %1011, i64 %1021, i32 3
  %1023 = load i16, ptr %1022, align 4, !tbaa !64
  %1024 = and i16 %1023, 1
  %1025 = icmp eq i16 %1024, 0
  br i1 %1025, label %1064, label %1026

1026:                                             ; preds = %1018
  %1027 = getelementptr inbounds %struct.BPoint, ptr %1011, i64 %1014, i32 3
  %1028 = load i16, ptr %1027, align 4, !tbaa !64
  %1029 = and i16 %1028, 1
  %1030 = icmp eq i16 %1029, 0
  br i1 %1030, label %1064, label %1031

1031:                                             ; preds = %1026
  %1032 = add nsw i32 %987, 3
  %1033 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %1007, i32 noundef %1032) #19
  %1034 = getelementptr inbounds %struct.Nurb, ptr %1033, i64 0, i32 17
  %1035 = load ptr, ptr %1034, align 8, !tbaa !62
  %1036 = load i32, ptr %511, align 8, !tbaa !52
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds %struct.BPoint, ptr %1035, i64 %1037
  %1039 = load ptr, ptr %924, align 8, !tbaa !62
  %1040 = mul nsw i32 %1036, %1010
  %1041 = sext i32 %1040 to i64
  %1042 = mul nsw i64 %1041, 36
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1038, ptr align 4 %1039, i64 %1042, i1 false)
  %1043 = load ptr, ptr %14, align 8, !tbaa !77
  %1044 = icmp ne ptr %1043, null
  %1045 = icmp sgt i32 %1040, 0
  %1046 = and i1 %1045, %1044
  br i1 %1046, label %1047, label %1061

1047:                                             ; preds = %1031, %1056
  %1048 = phi ptr [ %1058, %1056 ], [ %1039, %1031 ]
  %1049 = phi i32 [ %1059, %1056 ], [ 0, %1031 ]
  %1050 = phi ptr [ %1057, %1056 ], [ %1038, %1031 ]
  %1051 = load ptr, ptr %14, align 8, !tbaa !77
  %1052 = call ptr @BLI_ghash_popkey(ptr noundef %1051, ptr noundef %1048, ptr noundef null) #19
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1056, label %1054

1054:                                             ; preds = %1047
  %1055 = load ptr, ptr %14, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %1055, ptr noundef %1050, ptr noundef nonnull %1052) #19
  br label %1056

1056:                                             ; preds = %1054, %1047
  %1057 = getelementptr inbounds i8, ptr %1050, i64 36
  %1058 = getelementptr inbounds i8, ptr %1048, i64 36
  %1059 = add nuw nsw i32 %1049, 1
  %1060 = icmp eq i32 %1059, %1040
  br i1 %1060, label %1061, label %1047, !llvm.loop !182

1061:                                             ; preds = %1056, %1031
  %1062 = load i32, ptr %473, align 4, !tbaa !61
  %1063 = add nsw i32 %1062, -1
  br label %1159

1064:                                             ; preds = %1026, %1018
  br i1 %1017, label %1065, label %1159

1065:                                             ; preds = %1008, %1064
  %1066 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %1007, i32 noundef %1010) #19
  br label %1159

1067:                                             ; preds = %1005
  %1068 = add nsw i32 %959, -1
  %1069 = icmp eq i32 %987, %1068
  %1070 = add nsw i32 %986, -1
  br i1 %1069, label %1071, label %1154

1071:                                             ; preds = %1067
  %1072 = sub nsw i32 %987, %1070
  %1073 = add nsw i32 %1072, 1
  %1074 = load ptr, ptr %924, align 8, !tbaa !62
  %1075 = sext i32 %1007 to i64
  %1076 = load i16, ptr %955, align 2, !tbaa !74
  %1077 = and i16 %1076, 1
  %1078 = icmp eq i16 %1077, 0
  br i1 %1078, label %1119, label %1079

1079:                                             ; preds = %1071
  %1080 = getelementptr inbounds %struct.BPoint, ptr %1074, i64 0, i32 3
  %1081 = load i16, ptr %1080, align 4, !tbaa !64
  %1082 = and i16 %1081, 1
  %1083 = icmp eq i16 %1082, 0
  br i1 %1083, label %1119, label %1084

1084:                                             ; preds = %1079
  %1085 = getelementptr inbounds %struct.BPoint, ptr %1074, i64 %1075, i32 3
  %1086 = load i16, ptr %1085, align 4, !tbaa !64
  %1087 = and i16 %1086, 1
  %1088 = icmp eq i16 %1087, 0
  br i1 %1088, label %1119, label %1089

1089:                                             ; preds = %1084
  %1090 = add nsw i32 %1072, 2
  %1091 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %1007, i32 noundef %1090) #19
  %1092 = getelementptr inbounds %struct.Nurb, ptr %1091, i64 0, i32 17
  %1093 = load ptr, ptr %1092, align 8, !tbaa !62
  %1094 = load i32, ptr %511, align 8, !tbaa !52
  %1095 = mul nsw i32 %1094, %1073
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds %struct.BPoint, ptr %1093, i64 %1096
  %1098 = load ptr, ptr %924, align 8, !tbaa !62
  %1099 = sext i32 %1094 to i64
  %1100 = mul nsw i64 %1099, 36
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1097, ptr align 4 %1098, i64 %1100, i1 false)
  %1101 = load ptr, ptr %12, align 8, !tbaa !77
  %1102 = icmp ne ptr %1101, null
  %1103 = icmp sgt i32 %1094, 0
  %1104 = and i1 %1103, %1102
  br i1 %1104, label %1105, label %1159

1105:                                             ; preds = %1089, %1114
  %1106 = phi ptr [ %1116, %1114 ], [ %1098, %1089 ]
  %1107 = phi i32 [ %1117, %1114 ], [ 0, %1089 ]
  %1108 = phi ptr [ %1115, %1114 ], [ %1097, %1089 ]
  %1109 = load ptr, ptr %12, align 8, !tbaa !77
  %1110 = call ptr @BLI_ghash_popkey(ptr noundef %1109, ptr noundef %1106, ptr noundef null) #19
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %1114, label %1112

1112:                                             ; preds = %1105
  %1113 = load ptr, ptr %12, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %1113, ptr noundef %1108, ptr noundef nonnull %1110) #19
  br label %1114

1114:                                             ; preds = %1112, %1105
  %1115 = getelementptr inbounds i8, ptr %1108, i64 36
  %1116 = getelementptr inbounds i8, ptr %1106, i64 36
  %1117 = add nuw nsw i32 %1107, 1
  %1118 = icmp eq i32 %1117, %1094
  br i1 %1118, label %1159, label %1105, !llvm.loop !182

1119:                                             ; preds = %1084, %1079, %1071
  %1120 = icmp eq i32 %960, 0
  br i1 %1120, label %1152, label %1121

1121:                                             ; preds = %1119
  %1122 = add nsw i32 %1073, %960
  %1123 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %1007, i32 noundef %1122) #19
  %1124 = getelementptr inbounds %struct.Nurb, ptr %1123, i64 0, i32 17
  %1125 = load ptr, ptr %1124, align 8, !tbaa !62
  %1126 = load i32, ptr %511, align 8, !tbaa !52
  %1127 = mul nsw i32 %1126, %1073
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds %struct.BPoint, ptr %1125, i64 %1128
  %1130 = load ptr, ptr %924, align 8, !tbaa !62
  %1131 = mul nsw i32 %1126, %960
  %1132 = sext i32 %1131 to i64
  %1133 = mul nsw i64 %1132, 36
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1129, ptr align 4 %1130, i64 %1133, i1 false)
  %1134 = load ptr, ptr %13, align 8, !tbaa !77
  %1135 = icmp ne ptr %1134, null
  %1136 = icmp sgt i32 %1131, 0
  %1137 = and i1 %1136, %1135
  br i1 %1137, label %1138, label %1159

1138:                                             ; preds = %1121, %1147
  %1139 = phi ptr [ %1149, %1147 ], [ %1130, %1121 ]
  %1140 = phi i32 [ %1150, %1147 ], [ 0, %1121 ]
  %1141 = phi ptr [ %1148, %1147 ], [ %1129, %1121 ]
  %1142 = load ptr, ptr %13, align 8, !tbaa !77
  %1143 = call ptr @BLI_ghash_popkey(ptr noundef %1142, ptr noundef %1139, ptr noundef null) #19
  %1144 = icmp eq ptr %1143, null
  br i1 %1144, label %1147, label %1145

1145:                                             ; preds = %1138
  %1146 = load ptr, ptr %13, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %1146, ptr noundef %1141, ptr noundef nonnull %1143) #19
  br label %1147

1147:                                             ; preds = %1145, %1138
  %1148 = getelementptr inbounds i8, ptr %1141, i64 36
  %1149 = getelementptr inbounds i8, ptr %1139, i64 36
  %1150 = add nuw nsw i32 %1140, 1
  %1151 = icmp eq i32 %1150, %1131
  br i1 %1151, label %1159, label %1138, !llvm.loop !182

1152:                                             ; preds = %1119
  %1153 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %1007, i32 noundef %1073) #19
  br label %1159

1154:                                             ; preds = %1067
  %1155 = add nsw i32 %987, 1
  %1156 = sub nsw i32 %1155, %1070
  %1157 = add nsw i32 %1156, 1
  %1158 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %1007, i32 noundef %1157) #19
  br label %1159

1159:                                             ; preds = %1114, %1147, %1121, %1089, %1064, %1065, %1061, %1152, %1154, %1001
  %1160 = phi ptr [ %1004, %1001 ], [ %1033, %1061 ], [ %1066, %1065 ], [ %1153, %1152 ], [ %1158, %1154 ], [ null, %1064 ], [ %1091, %1089 ], [ %1123, %1121 ], [ %1123, %1147 ], [ %1091, %1114 ]
  %1161 = phi i32 [ 0, %1001 ], [ %1063, %1061 ], [ 0, %1065 ], [ %1070, %1152 ], [ %1070, %1154 ], [ 0, %1064 ], [ %1070, %1089 ], [ %1070, %1121 ], [ %1070, %1147 ], [ %1070, %1114 ]
  %1162 = phi i32 [ %964, %1001 ], [ %1009, %1061 ], [ %1009, %1065 ], [ %987, %1152 ], [ %1155, %1154 ], [ %1009, %1064 ], [ %987, %1089 ], [ %987, %1121 ], [ %987, %1147 ], [ %987, %1114 ]
  %1163 = phi i32 [ %1002, %1001 ], [ 1, %1061 ], [ %1010, %1065 ], [ %1073, %1152 ], [ %1157, %1154 ], [ %1010, %1064 ], [ %1073, %1089 ], [ %1073, %1121 ], [ %1073, %1147 ], [ %1073, %1114 ]
  %1164 = phi i32 [ %960, %1001 ], [ %960, %1061 ], [ %960, %1065 ], [ 0, %1152 ], [ %960, %1154 ], [ %1010, %1064 ], [ %960, %1089 ], [ 0, %1121 ], [ 0, %1147 ], [ %960, %1114 ]
  %1165 = icmp eq ptr %1160, null
  br i1 %1165, label %1205, label %1166

1166:                                             ; preds = %1159
  %1167 = getelementptr inbounds %struct.Nurb, ptr %1160, i64 0, i32 17
  %1168 = load ptr, ptr %1167, align 8, !tbaa !62
  %1169 = load ptr, ptr %924, align 8, !tbaa !62
  %1170 = load i32, ptr %511, align 8, !tbaa !52
  %1171 = mul nsw i32 %1170, %1161
  %1172 = sext i32 %1171 to i64
  %1173 = getelementptr inbounds %struct.BPoint, ptr %1169, i64 %1172
  %1174 = mul nsw i32 %1170, %1163
  %1175 = sext i32 %1174 to i64
  %1176 = mul nsw i64 %1175, 36
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1168, ptr align 4 %1173, i64 %1176, i1 false)
  %1177 = load ptr, ptr %15, align 8, !tbaa !77
  %1178 = icmp ne ptr %1177, null
  %1179 = icmp sgt i32 %1174, 0
  %1180 = and i1 %1179, %1178
  br i1 %1180, label %1181, label %1195

1181:                                             ; preds = %1166, %1190
  %1182 = phi ptr [ %1192, %1190 ], [ %1173, %1166 ]
  %1183 = phi i32 [ %1193, %1190 ], [ 0, %1166 ]
  %1184 = phi ptr [ %1191, %1190 ], [ %1168, %1166 ]
  %1185 = load ptr, ptr %15, align 8, !tbaa !77
  %1186 = call ptr @BLI_ghash_popkey(ptr noundef %1185, ptr noundef %1182, ptr noundef null) #19
  %1187 = icmp eq ptr %1186, null
  br i1 %1187, label %1190, label %1188

1188:                                             ; preds = %1181
  %1189 = load ptr, ptr %15, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %1189, ptr noundef %1184, ptr noundef nonnull %1186) #19
  br label %1190

1190:                                             ; preds = %1188, %1181
  %1191 = getelementptr inbounds i8, ptr %1184, i64 36
  %1192 = getelementptr inbounds i8, ptr %1182, i64 36
  %1193 = add nuw nsw i32 %1183, 1
  %1194 = icmp eq i32 %1193, %1174
  br i1 %1194, label %1195, label %1181, !llvm.loop !182

1195:                                             ; preds = %1190, %1166
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %1160) #19
  %1196 = icmp eq i32 %1161, 0
  br i1 %1196, label %1197, label %1201

1197:                                             ; preds = %1195
  %1198 = load i32, ptr %473, align 4, !tbaa !61
  %1199 = add nsw i32 %1198, -1
  %1200 = icmp eq i32 %1162, %1199
  br i1 %1200, label %1205, label %1201

1201:                                             ; preds = %1197, %1195
  %1202 = getelementptr inbounds %struct.Nurb, ptr %1160, i64 0, i32 14
  %1203 = load i16, ptr %1202, align 2, !tbaa !74
  %1204 = and i16 %1203, -2
  store i16 %1204, ptr %1202, align 2, !tbaa !74
  br label %1205

1205:                                             ; preds = %1159, %1201, %1197, %985, %978, %970
  %1206 = phi i32 [ %986, %985 ], [ %963, %978 ], [ %972, %970 ], [ -1, %1197 ], [ -1, %1201 ], [ -1, %1159 ]
  %1207 = phi i32 [ %987, %985 ], [ %962, %978 ], [ %964, %970 ], [ -1, %1197 ], [ -1, %1201 ], [ -1, %1159 ]
  %1208 = phi i32 [ %961, %985 ], [ %961, %978 ], [ %961, %970 ], [ %1163, %1197 ], [ %1163, %1201 ], [ %1163, %1159 ]
  %1209 = phi i32 [ %960, %985 ], [ %960, %978 ], [ %960, %970 ], [ %1164, %1197 ], [ %1164, %1201 ], [ %1164, %1159 ]
  %1210 = add nuw nsw i32 %964, 1
  %1211 = load i32, ptr %511, align 8, !tbaa !52
  %1212 = sext i32 %1211 to i64
  %1213 = getelementptr inbounds %struct.BPoint, ptr %965, i64 %1212
  %1214 = load i32, ptr %473, align 4, !tbaa !61
  %1215 = icmp slt i32 %1210, %1214
  br i1 %1215, label %958, label %1216, !llvm.loop !427

1216:                                             ; preds = %1205, %951
  %1217 = phi i32 [ -1, %951 ], [ %1208, %1205 ]
  %1218 = phi i32 [ %952, %951 ], [ %1214, %1205 ]
  %1219 = icmp ne i32 %1217, -1
  %1220 = select i1 %16, i1 %1219, i1 false
  %1221 = icmp sgt i32 %1218, 2
  %1222 = and i1 %1220, %1221
  br i1 %1222, label %1223, label %1348

1223:                                             ; preds = %1216
  %1224 = getelementptr inbounds %struct.Nurb, ptr %42, i64 0, i32 14
  %1225 = load i16, ptr %1224, align 2, !tbaa !74
  %1226 = and i16 %1225, 1
  %1227 = icmp eq i16 %1226, 0
  br i1 %1227, label %1228, label %1348

1228:                                             ; preds = %1223
  %1229 = load ptr, ptr %924, align 8, !tbaa !62
  %1230 = load i32, ptr %511, align 8, !tbaa !52
  %1231 = getelementptr inbounds %struct.BPoint, ptr %1229, i64 0, i32 3
  %1232 = load i16, ptr %1231, align 4, !tbaa !64
  %1233 = and i16 %1232, 1
  %1234 = icmp eq i16 %1233, 0
  br i1 %1234, label %1268, label %1235

1235:                                             ; preds = %1228
  %1236 = sext i32 %1230 to i64
  %1237 = getelementptr inbounds %struct.BPoint, ptr %1229, i64 %1236, i32 3
  %1238 = load i16, ptr %1237, align 4, !tbaa !64
  %1239 = and i16 %1238, 1
  %1240 = icmp eq i16 %1239, 0
  br i1 %1240, label %1268, label %1241

1241:                                             ; preds = %1235
  %1242 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %1230, i32 noundef 1) #19
  %1243 = getelementptr inbounds %struct.Nurb, ptr %1242, i64 0, i32 17
  %1244 = load ptr, ptr %1243, align 8, !tbaa !62
  %1245 = load ptr, ptr %924, align 8, !tbaa !62
  %1246 = load i32, ptr %511, align 8, !tbaa !52
  %1247 = sext i32 %1246 to i64
  %1248 = mul nsw i64 %1247, 36
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1244, ptr align 4 %1245, i64 %1248, i1 false)
  %1249 = load ptr, ptr %17, align 8, !tbaa !77
  %1250 = icmp ne ptr %1249, null
  %1251 = icmp sgt i32 %1246, 0
  %1252 = and i1 %1251, %1250
  br i1 %1252, label %1253, label %1267

1253:                                             ; preds = %1241, %1262
  %1254 = phi ptr [ %1264, %1262 ], [ %1245, %1241 ]
  %1255 = phi i32 [ %1265, %1262 ], [ 0, %1241 ]
  %1256 = phi ptr [ %1263, %1262 ], [ %1244, %1241 ]
  %1257 = load ptr, ptr %17, align 8, !tbaa !77
  %1258 = call ptr @BLI_ghash_popkey(ptr noundef %1257, ptr noundef %1254, ptr noundef null) #19
  %1259 = icmp eq ptr %1258, null
  br i1 %1259, label %1262, label %1260

1260:                                             ; preds = %1253
  %1261 = load ptr, ptr %17, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %1261, ptr noundef %1256, ptr noundef nonnull %1258) #19
  br label %1262

1262:                                             ; preds = %1260, %1253
  %1263 = getelementptr inbounds i8, ptr %1256, i64 36
  %1264 = getelementptr inbounds i8, ptr %1254, i64 36
  %1265 = add nuw nsw i32 %1255, 1
  %1266 = icmp eq i32 %1265, %1246
  br i1 %1266, label %1267, label %1253, !llvm.loop !182

1267:                                             ; preds = %1262, %1241
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %1242) #19
  br label %1268

1268:                                             ; preds = %1267, %1235, %1228
  %1269 = load ptr, ptr %924, align 8, !tbaa !62
  %1270 = load i32, ptr %511, align 8, !tbaa !52
  %1271 = load i32, ptr %473, align 4, !tbaa !61
  %1272 = add i32 %1271, -1
  %1273 = mul i32 %1272, %1270
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds %struct.BPoint, ptr %1269, i64 %1274, i32 3
  %1276 = load i16, ptr %1275, align 4, !tbaa !64
  %1277 = and i16 %1276, 1
  %1278 = icmp eq i16 %1277, 0
  br i1 %1278, label %1348, label %1279

1279:                                             ; preds = %1268
  %1280 = add i32 %1271, -2
  %1281 = mul i32 %1280, %1270
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds %struct.BPoint, ptr %1269, i64 %1282, i32 3
  %1284 = load i16, ptr %1283, align 4, !tbaa !64
  %1285 = and i16 %1284, 1
  %1286 = icmp eq i16 %1285, 0
  br i1 %1286, label %1348, label %1287

1287:                                             ; preds = %1279
  %1288 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %1270, i32 noundef 1) #19
  %1289 = getelementptr inbounds %struct.Nurb, ptr %1288, i64 0, i32 17
  %1290 = load ptr, ptr %1289, align 8, !tbaa !62
  %1291 = load ptr, ptr %924, align 8, !tbaa !62
  %1292 = load i32, ptr %511, align 8, !tbaa !52
  %1293 = load i32, ptr %473, align 4, !tbaa !61
  %1294 = add i32 %1293, -1
  %1295 = mul i32 %1294, %1292
  %1296 = sext i32 %1295 to i64
  %1297 = getelementptr inbounds %struct.BPoint, ptr %1291, i64 %1296
  %1298 = sext i32 %1292 to i64
  %1299 = mul nsw i64 %1298, 36
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1290, ptr align 4 %1297, i64 %1299, i1 false)
  %1300 = load ptr, ptr %18, align 8, !tbaa !77
  %1301 = icmp ne ptr %1300, null
  %1302 = icmp sgt i32 %1292, 0
  %1303 = and i1 %1302, %1301
  br i1 %1303, label %1304, label %1346

1304:                                             ; preds = %1287, %1313
  %1305 = phi ptr [ %1315, %1313 ], [ %1297, %1287 ]
  %1306 = phi i32 [ %1316, %1313 ], [ 0, %1287 ]
  %1307 = phi ptr [ %1314, %1313 ], [ %1290, %1287 ]
  %1308 = load ptr, ptr %18, align 8, !tbaa !77
  %1309 = call ptr @BLI_ghash_popkey(ptr noundef %1308, ptr noundef %1305, ptr noundef null) #19
  %1310 = icmp eq ptr %1309, null
  br i1 %1310, label %1313, label %1311

1311:                                             ; preds = %1304
  %1312 = load ptr, ptr %18, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %1312, ptr noundef %1307, ptr noundef nonnull %1309) #19
  br label %1313

1313:                                             ; preds = %1311, %1304
  %1314 = getelementptr inbounds i8, ptr %1307, i64 36
  %1315 = getelementptr inbounds i8, ptr %1305, i64 36
  %1316 = add nuw nsw i32 %1306, 1
  %1317 = icmp eq i32 %1316, %1292
  br i1 %1317, label %1346, label %1304, !llvm.loop !182

1318:                                             ; preds = %950
  %1319 = call ptr @BKE_nurb_copy(ptr noundef nonnull %42, i32 noundef %478, i32 noundef %474) #19
  %1320 = getelementptr inbounds %struct.Nurb, ptr %1319, i64 0, i32 17
  %1321 = load ptr, ptr %1320, align 8, !tbaa !62
  %1322 = load ptr, ptr %924, align 8, !tbaa !62
  %1323 = load i32, ptr %511, align 8, !tbaa !52
  %1324 = load i32, ptr %473, align 4, !tbaa !61
  %1325 = mul nsw i32 %1324, %1323
  %1326 = sext i32 %1325 to i64
  %1327 = mul nsw i64 %1326, 36
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1321, ptr align 4 %1322, i64 %1327, i1 false)
  %1328 = load ptr, ptr %11, align 8, !tbaa !77
  %1329 = icmp ne ptr %1328, null
  %1330 = icmp sgt i32 %1325, 0
  %1331 = and i1 %1330, %1329
  br i1 %1331, label %1332, label %1346

1332:                                             ; preds = %1318, %1341
  %1333 = phi ptr [ %1343, %1341 ], [ %1322, %1318 ]
  %1334 = phi i32 [ %1344, %1341 ], [ 0, %1318 ]
  %1335 = phi ptr [ %1342, %1341 ], [ %1321, %1318 ]
  %1336 = load ptr, ptr %11, align 8, !tbaa !77
  %1337 = call ptr @BLI_ghash_popkey(ptr noundef %1336, ptr noundef %1333, ptr noundef null) #19
  %1338 = icmp eq ptr %1337, null
  br i1 %1338, label %1341, label %1339

1339:                                             ; preds = %1332
  %1340 = load ptr, ptr %11, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %1340, ptr noundef %1335, ptr noundef nonnull %1337) #19
  br label %1341

1341:                                             ; preds = %1339, %1332
  %1342 = getelementptr inbounds i8, ptr %1335, i64 36
  %1343 = getelementptr inbounds i8, ptr %1333, i64 36
  %1344 = add nuw nsw i32 %1334, 1
  %1345 = icmp eq i32 %1344, %1325
  br i1 %1345, label %1346, label %1332, !llvm.loop !182

1346:                                             ; preds = %919, %1313, %1341, %1318, %1287, %892, %460, %466, %470
  %1347 = phi ptr [ %461, %470 ], [ %461, %466 ], [ %461, %460 ], [ %894, %892 ], [ %1288, %1287 ], [ %1319, %1318 ], [ %1319, %1341 ], [ %1288, %1313 ], [ %894, %919 ]
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %1347) #19
  br label %1348

1348:                                             ; preds = %1346, %878, %887, %831, %824, %1216, %1223, %1279, %1268, %431, %438, %448, %455, %362, %355, %472
  %1349 = load ptr, ptr %42, align 8, !tbaa !66
  %1350 = icmp eq ptr %1349, null
  br i1 %1350, label %35, label %41, !llvm.loop !428

1351:                                             ; preds = %1413, %35
  %1352 = load ptr, ptr %7, align 8, !tbaa !66
  %1353 = icmp eq ptr %1352, null
  br i1 %1353, label %1457, label %1354

1354:                                             ; preds = %1351
  %1355 = getelementptr inbounds %struct.EditNurb, ptr %7, i64 0, i32 1
  br label %1416

1356:                                             ; preds = %38, %1413
  %1357 = phi ptr [ %36, %38 ], [ %1414, %1413 ]
  %1358 = getelementptr inbounds %struct.Nurb, ptr %1357, i64 0, i32 2
  %1359 = load i16, ptr %1358, align 8, !tbaa !50
  %1360 = icmp eq i16 %1359, 1
  br i1 %1360, label %1361, label %1385

1361:                                             ; preds = %1356
  br i1 %40, label %1384, label %1362

1362:                                             ; preds = %1361
  %1363 = getelementptr inbounds %struct.Nurb, ptr %1357, i64 0, i32 6
  %1364 = load i32, ptr %1363, align 8, !tbaa !52
  %1365 = icmp sgt i32 %1364, 0
  br i1 %1365, label %1366, label %1384

1366:                                             ; preds = %1362
  %1367 = getelementptr inbounds %struct.Nurb, ptr %1357, i64 0, i32 18
  %1368 = load ptr, ptr %1367, align 8, !tbaa !53
  br label %1369

1369:                                             ; preds = %1366, %1369
  %1370 = phi i32 [ %1381, %1369 ], [ 0, %1366 ]
  %1371 = phi ptr [ %1382, %1369 ], [ %1368, %1366 ]
  %1372 = getelementptr inbounds %struct.BezTriple, ptr %1371, i64 0, i32 7
  %1373 = load i8, ptr %1372, align 1, !tbaa !57
  %1374 = and i8 %1373, -2
  store i8 %1374, ptr %1372, align 1, !tbaa !57
  %1375 = getelementptr inbounds %struct.BezTriple, ptr %1371, i64 0, i32 8
  %1376 = load i8, ptr %1375, align 4, !tbaa !59
  %1377 = and i8 %1376, -2
  store i8 %1377, ptr %1375, align 4, !tbaa !59
  %1378 = getelementptr inbounds %struct.BezTriple, ptr %1371, i64 0, i32 9
  %1379 = load i8, ptr %1378, align 1, !tbaa !60
  %1380 = and i8 %1379, -2
  store i8 %1380, ptr %1378, align 1, !tbaa !60
  %1381 = add nuw nsw i32 %1370, 1
  %1382 = getelementptr inbounds %struct.BezTriple, ptr %1371, i64 1
  %1383 = icmp eq i32 %1381, %1364
  br i1 %1383, label %1384, label %1369, !llvm.loop !429

1384:                                             ; preds = %1369, %1362, %1361
  call void @BKE_nurb_handles_calc(ptr noundef nonnull %1357) #19
  br label %1413

1385:                                             ; preds = %1356
  br i1 %39, label %1405, label %1386

1386:                                             ; preds = %1385
  %1387 = getelementptr inbounds %struct.Nurb, ptr %1357, i64 0, i32 6
  %1388 = load i32, ptr %1387, align 8, !tbaa !52
  %1389 = getelementptr inbounds %struct.Nurb, ptr %1357, i64 0, i32 7
  %1390 = load i32, ptr %1389, align 4, !tbaa !61
  %1391 = mul nsw i32 %1390, %1388
  %1392 = icmp sgt i32 %1391, 0
  br i1 %1392, label %1393, label %1405

1393:                                             ; preds = %1386
  %1394 = getelementptr inbounds %struct.Nurb, ptr %1357, i64 0, i32 17
  %1395 = load ptr, ptr %1394, align 8, !tbaa !62
  br label %1396

1396:                                             ; preds = %1393, %1396
  %1397 = phi i32 [ %1402, %1396 ], [ 0, %1393 ]
  %1398 = phi ptr [ %1403, %1396 ], [ %1395, %1393 ]
  %1399 = getelementptr inbounds %struct.BPoint, ptr %1398, i64 0, i32 3
  %1400 = load i16, ptr %1399, align 4, !tbaa !64
  %1401 = and i16 %1400, -2
  store i16 %1401, ptr %1399, align 4, !tbaa !64
  %1402 = add nuw nsw i32 %1397, 1
  %1403 = getelementptr inbounds %struct.BPoint, ptr %1398, i64 1
  %1404 = icmp eq i32 %1402, %1391
  br i1 %1404, label %1405, label %1396, !llvm.loop !430

1405:                                             ; preds = %1396, %1386, %1385
  %1406 = getelementptr inbounds %struct.Nurb, ptr %1357, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1406, i8 0, i64 16, i1 false)
  %1407 = call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %1357) #19
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %1357) #19
  %1408 = getelementptr inbounds %struct.Nurb, ptr %1357, i64 0, i32 7
  %1409 = load i32, ptr %1408, align 4, !tbaa !61
  %1410 = icmp sgt i32 %1409, 1
  br i1 %1410, label %1411, label %1413

1411:                                             ; preds = %1405
  %1412 = call zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef nonnull %1357) #19
  call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %1357) #19
  br label %1413

1413:                                             ; preds = %1384, %1411, %1405
  %1414 = load ptr, ptr %1357, align 8, !tbaa !66
  %1415 = icmp eq ptr %1414, null
  br i1 %1415, label %1351, label %1356, !llvm.loop !431

1416:                                             ; preds = %1354, %1454
  %1417 = phi ptr [ %1352, %1354 ], [ %1455, %1454 ]
  %1418 = load ptr, ptr %1355, align 8, !tbaa !77
  %1419 = icmp eq ptr %1418, null
  br i1 %1419, label %1454, label %1420

1420:                                             ; preds = %1416
  %1421 = getelementptr inbounds %struct.Nurb, ptr %1417, i64 0, i32 18
  %1422 = load ptr, ptr %1421, align 8, !tbaa !53
  %1423 = icmp eq ptr %1422, null
  %1424 = getelementptr inbounds %struct.Nurb, ptr %1417, i64 0, i32 6
  %1425 = load i32, ptr %1424, align 8, !tbaa !52
  br i1 %1423, label %1437, label %1426

1426:                                             ; preds = %1420
  %1427 = icmp eq i32 %1425, 0
  br i1 %1427, label %1454, label %1428

1428:                                             ; preds = %1426, %1428
  %1429 = phi ptr [ %1435, %1428 ], [ %1422, %1426 ]
  %1430 = phi i32 [ %1431, %1428 ], [ %1425, %1426 ]
  %1431 = add nsw i32 %1430, -1
  %1432 = load ptr, ptr %1355, align 8, !tbaa !77
  %1433 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %1434 = call zeroext i8 @BLI_ghash_remove(ptr noundef %1432, ptr noundef nonnull %1429, ptr noundef null, ptr noundef %1433) #19
  %1435 = getelementptr inbounds %struct.BezTriple, ptr %1429, i64 1
  %1436 = icmp eq i32 %1431, 0
  br i1 %1436, label %1454, label %1428, !llvm.loop !272

1437:                                             ; preds = %1420
  %1438 = getelementptr inbounds %struct.Nurb, ptr %1417, i64 0, i32 7
  %1439 = load i32, ptr %1438, align 4, !tbaa !61
  %1440 = mul nsw i32 %1439, %1425
  %1441 = icmp eq i32 %1440, 0
  br i1 %1441, label %1454, label %1442

1442:                                             ; preds = %1437
  %1443 = getelementptr inbounds %struct.Nurb, ptr %1417, i64 0, i32 17
  %1444 = load ptr, ptr %1443, align 8, !tbaa !62
  br label %1445

1445:                                             ; preds = %1445, %1442
  %1446 = phi ptr [ %1452, %1445 ], [ %1444, %1442 ]
  %1447 = phi i32 [ %1448, %1445 ], [ %1440, %1442 ]
  %1448 = add nsw i32 %1447, -1
  %1449 = load ptr, ptr %1355, align 8, !tbaa !77
  %1450 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %1451 = call zeroext i8 @BLI_ghash_remove(ptr noundef %1449, ptr noundef %1446, ptr noundef null, ptr noundef %1450) #19
  %1452 = getelementptr inbounds %struct.BPoint, ptr %1446, i64 1
  %1453 = icmp eq i32 %1448, 0
  br i1 %1453, label %1454, label %1445, !llvm.loop !273

1454:                                             ; preds = %1428, %1445, %1416, %1426, %1437
  %1455 = load ptr, ptr %1417, align 8, !tbaa !66
  %1456 = icmp eq ptr %1455, null
  br i1 %1456, label %1457, label %1416, !llvm.loop !432

1457:                                             ; preds = %1454, %1351
  call void @BKE_nurbList_free(ptr noundef nonnull %7) #19
  call void @BLI_movelisttolist(ptr noundef nonnull %7, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret void
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #6

declare ptr @BKE_nurb_copy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @BKE_nurb_handle_calc_simple(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef) local_unnamed_addr #6

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_nurb_direction_switch(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @keyData_switchDirectionNurb(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.EditNurb, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %296, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = and i32 %14, 1
  %16 = add i32 %15, %14
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %185, label %19

19:                                               ; preds = %12
  %20 = sdiv i32 %16, 2
  %21 = sext i32 %14 to i64
  %22 = getelementptr %struct.BezTriple, ptr %10, i64 %21
  br label %23

23:                                               ; preds = %19, %60
  %24 = phi i32 [ %28, %60 ], [ %20, %19 ]
  %25 = phi ptr [ %27, %60 ], [ %22, %19 ]
  %26 = phi ptr [ %61, %60 ], [ %10, %19 ]
  %27 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 -1
  %28 = add nsw i32 %24, -1
  %29 = load ptr, ptr %5, align 8, !tbaa !77
  %30 = tail call ptr @BLI_ghash_lookup(ptr noundef %29, ptr noundef nonnull %26) #19
  %31 = load ptr, ptr %5, align 8, !tbaa !77
  %32 = tail call ptr @BLI_ghash_lookup(ptr noundef %31, ptr noundef nonnull %27) #19
  %33 = icmp eq ptr %30, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.CVKeyIndex, ptr %30, i64 0, i32 5
  %36 = load i8, ptr %35, align 8, !tbaa !85
  %37 = icmp eq i8 %36, 0
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %35, align 8, !tbaa !85
  br label %39

39:                                               ; preds = %34, %23
  %40 = icmp eq ptr %26, %27
  br i1 %40, label %60, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %5, align 8, !tbaa !77
  %43 = tail call ptr @BLI_ghash_popkey(ptr noundef %42, ptr noundef nonnull %26, ptr noundef null) #19
  %44 = load ptr, ptr %5, align 8, !tbaa !77
  %45 = tail call ptr @BLI_ghash_popkey(ptr noundef %44, ptr noundef nonnull %27, ptr noundef null) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %5, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %48, ptr noundef nonnull %26, ptr noundef nonnull %45) #19
  br label %49

49:                                               ; preds = %47, %41
  %50 = icmp eq ptr %43, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  %52 = load ptr, ptr %5, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %52, ptr noundef nonnull %27, ptr noundef nonnull %43) #19
  br label %53

53:                                               ; preds = %49, %51
  %54 = icmp eq ptr %32, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.CVKeyIndex, ptr %32, i64 0, i32 5
  %57 = load i8, ptr %56, align 8, !tbaa !85
  %58 = icmp eq i8 %57, 0
  %59 = zext i1 %58 to i8
  store i8 %59, ptr %56, align 8, !tbaa !85
  br label %60

60:                                               ; preds = %55, %53, %39
  %61 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 1
  %62 = icmp eq i32 %28, 0
  br i1 %62, label %185, label %23, !llvm.loop !433

63:                                               ; preds = %8
  %64 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !61
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %64, align 4, !tbaa !61
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %185

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  %72 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 6
  br label %126

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !52
  %76 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !62
  %78 = sext i32 %75 to i64
  %79 = getelementptr %struct.BPoint, ptr %77, i64 %78
  %80 = getelementptr inbounds %struct.BPoint, ptr %79, i64 -1
  %81 = icmp ne ptr %77, %80
  %82 = icmp sgt i32 %75, 1
  %83 = and i1 %81, %82
  br i1 %83, label %84, label %185

84:                                               ; preds = %73
  %85 = sdiv i32 %75, 2
  br label %86

86:                                               ; preds = %84, %119
  %87 = phi ptr [ %122, %119 ], [ %80, %84 ]
  %88 = phi ptr [ %121, %119 ], [ %77, %84 ]
  %89 = phi i32 [ %120, %119 ], [ %85, %84 ]
  %90 = load ptr, ptr %5, align 8, !tbaa !77
  %91 = tail call ptr @BLI_ghash_lookup(ptr noundef %90, ptr noundef %88) #19
  %92 = load ptr, ptr %5, align 8, !tbaa !77
  %93 = tail call ptr @BLI_ghash_lookup(ptr noundef %92, ptr noundef nonnull %87) #19
  %94 = icmp eq ptr %91, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.CVKeyIndex, ptr %91, i64 0, i32 5
  %97 = load i8, ptr %96, align 8, !tbaa !85
  %98 = icmp eq i8 %97, 0
  %99 = zext i1 %98 to i8
  store i8 %99, ptr %96, align 8, !tbaa !85
  br label %100

100:                                              ; preds = %95, %86
  %101 = icmp eq ptr %93, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.CVKeyIndex, ptr %93, i64 0, i32 5
  %104 = load i8, ptr %103, align 8, !tbaa !85
  %105 = icmp eq i8 %104, 0
  %106 = zext i1 %105 to i8
  store i8 %106, ptr %103, align 8, !tbaa !85
  br label %107

107:                                              ; preds = %102, %100
  %108 = load ptr, ptr %5, align 8, !tbaa !77
  %109 = tail call ptr @BLI_ghash_popkey(ptr noundef %108, ptr noundef %88, ptr noundef null) #19
  %110 = load ptr, ptr %5, align 8, !tbaa !77
  %111 = tail call ptr @BLI_ghash_popkey(ptr noundef %110, ptr noundef nonnull %87, ptr noundef null) #19
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = load ptr, ptr %5, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %114, ptr noundef %88, ptr noundef nonnull %111) #19
  br label %115

115:                                              ; preds = %113, %107
  %116 = icmp eq ptr %109, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %115
  %118 = load ptr, ptr %5, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %118, ptr noundef nonnull %87, ptr noundef nonnull %109) #19
  br label %119

119:                                              ; preds = %115, %117
  %120 = add nsw i32 %89, -1
  %121 = getelementptr inbounds %struct.BPoint, ptr %88, i64 1
  %122 = getelementptr inbounds %struct.BPoint, ptr %87, i64 -1
  %123 = icmp ne ptr %121, %122
  %124 = icmp sgt i32 %89, 1
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %86, label %185, !llvm.loop !434

126:                                              ; preds = %70, %181
  %127 = phi i32 [ 0, %70 ], [ %182, %181 ]
  %128 = load ptr, ptr %71, align 8, !tbaa !62
  %129 = load i32, ptr %72, align 8, !tbaa !52
  %130 = mul nsw i32 %129, %127
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.BPoint, ptr %128, i64 %131
  %133 = sext i32 %129 to i64
  %134 = getelementptr %struct.BPoint, ptr %132, i64 %133
  %135 = getelementptr inbounds %struct.BPoint, ptr %134, i64 -1
  %136 = icmp ne ptr %132, %135
  %137 = icmp sgt i32 %129, 1
  %138 = and i1 %136, %137
  br i1 %138, label %139, label %181

139:                                              ; preds = %126
  %140 = sdiv i32 %129, 2
  br label %141

141:                                              ; preds = %139, %174
  %142 = phi ptr [ %177, %174 ], [ %135, %139 ]
  %143 = phi ptr [ %176, %174 ], [ %132, %139 ]
  %144 = phi i32 [ %175, %174 ], [ %140, %139 ]
  %145 = load ptr, ptr %5, align 8, !tbaa !77
  %146 = tail call ptr @BLI_ghash_lookup(ptr noundef %145, ptr noundef %143) #19
  %147 = load ptr, ptr %5, align 8, !tbaa !77
  %148 = tail call ptr @BLI_ghash_lookup(ptr noundef %147, ptr noundef nonnull %142) #19
  %149 = icmp eq ptr %146, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.CVKeyIndex, ptr %146, i64 0, i32 5
  %152 = load i8, ptr %151, align 8, !tbaa !85
  %153 = icmp eq i8 %152, 0
  %154 = zext i1 %153 to i8
  store i8 %154, ptr %151, align 8, !tbaa !85
  br label %155

155:                                              ; preds = %150, %141
  %156 = icmp eq ptr %148, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.CVKeyIndex, ptr %148, i64 0, i32 5
  %159 = load i8, ptr %158, align 8, !tbaa !85
  %160 = icmp eq i8 %159, 0
  %161 = zext i1 %160 to i8
  store i8 %161, ptr %158, align 8, !tbaa !85
  br label %162

162:                                              ; preds = %157, %155
  %163 = load ptr, ptr %5, align 8, !tbaa !77
  %164 = tail call ptr @BLI_ghash_popkey(ptr noundef %163, ptr noundef %143, ptr noundef null) #19
  %165 = load ptr, ptr %5, align 8, !tbaa !77
  %166 = tail call ptr @BLI_ghash_popkey(ptr noundef %165, ptr noundef nonnull %142, ptr noundef null) #19
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %162
  %169 = load ptr, ptr %5, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %169, ptr noundef %143, ptr noundef nonnull %166) #19
  br label %170

170:                                              ; preds = %168, %162
  %171 = icmp eq ptr %164, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %170
  %173 = load ptr, ptr %5, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %173, ptr noundef nonnull %142, ptr noundef nonnull %164) #19
  br label %174

174:                                              ; preds = %170, %172
  %175 = add nsw i32 %144, -1
  %176 = getelementptr inbounds %struct.BPoint, ptr %143, i64 1
  %177 = getelementptr inbounds %struct.BPoint, ptr %142, i64 -1
  %178 = icmp ne ptr %176, %177
  %179 = icmp sgt i32 %144, 1
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %141, label %181, !llvm.loop !435

181:                                              ; preds = %174, %126
  %182 = add nuw nsw i32 %127, 1
  %183 = load i32, ptr %64, align 4, !tbaa !61
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %126, label %185, !llvm.loop !436

185:                                              ; preds = %60, %181, %119, %12, %67, %73
  %186 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %187 = load ptr, ptr %186, align 8, !tbaa !114
  %188 = icmp eq ptr %187, null
  br i1 %188, label %296, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %3, align 8, !tbaa !47
  %191 = getelementptr inbounds %struct.Key, ptr %187, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !66
  %193 = icmp eq ptr %192, null
  br i1 %193, label %296, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.EditNurb, ptr %190, i64 0, i32 1
  %196 = getelementptr inbounds %struct.EditNurb, ptr %190, i64 0, i32 1
  br label %200

197:                                              ; preds = %292, %200
  %198 = load ptr, ptr %201, align 8, !tbaa !66
  %199 = icmp eq ptr %198, null
  br i1 %199, label %296, label %200, !llvm.loop !437

200:                                              ; preds = %194, %197
  %201 = phi ptr [ %192, %194 ], [ %198, %197 ]
  %202 = load ptr, ptr %190, align 8, !tbaa !66
  %203 = icmp eq ptr %202, null
  br i1 %203, label %197, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.KeyBlock, ptr %201, i64 0, i32 10
  %206 = load ptr, ptr %205, align 8, !tbaa !130
  br label %207

207:                                              ; preds = %204, %292
  %208 = phi ptr [ %294, %292 ], [ %202, %204 ]
  %209 = phi ptr [ %293, %292 ], [ %206, %204 ]
  %210 = getelementptr inbounds %struct.Nurb, ptr %208, i64 0, i32 18
  %211 = load ptr, ptr %210, align 8, !tbaa !53
  %212 = icmp eq ptr %211, null
  %213 = getelementptr inbounds %struct.Nurb, ptr %208, i64 0, i32 6
  %214 = load i32, ptr %213, align 8, !tbaa !52
  br i1 %212, label %256, label %215

215:                                              ; preds = %207
  %216 = icmp eq ptr %208, %1
  br i1 %216, label %217, label %252

217:                                              ; preds = %215
  %218 = icmp eq i32 %214, 0
  br i1 %218, label %292, label %219

219:                                              ; preds = %217, %248
  %220 = phi i32 [ %223, %248 ], [ %214, %217 ]
  %221 = phi ptr [ %250, %248 ], [ %211, %217 ]
  %222 = phi ptr [ %249, %248 ], [ %209, %217 ]
  %223 = add nsw i32 %220, -1
  %224 = load ptr, ptr %195, align 8, !tbaa !77
  %225 = tail call ptr @BLI_ghash_lookup(ptr noundef %224, ptr noundef nonnull %221) #19
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %219
  %228 = load ptr, ptr %225, align 8, !tbaa !122
  br label %229

229:                                              ; preds = %227, %219
  %230 = phi ptr [ %228, %227 ], [ null, %219 ]
  %231 = icmp eq ptr %230, null
  br i1 %231, label %248, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds float, ptr %222, i64 6
  %234 = load float, ptr %222, align 4, !tbaa !70
  %235 = load float, ptr %233, align 4, !tbaa !70
  store float %235, ptr %222, align 4, !tbaa !70
  store float %234, ptr %233, align 4, !tbaa !70
  %236 = getelementptr inbounds float, ptr %222, i64 1
  %237 = load float, ptr %236, align 4, !tbaa !70
  %238 = getelementptr inbounds float, ptr %222, i64 7
  %239 = load float, ptr %238, align 4, !tbaa !70
  store float %239, ptr %236, align 4, !tbaa !70
  store float %237, ptr %238, align 4, !tbaa !70
  %240 = getelementptr inbounds float, ptr %222, i64 2
  %241 = load float, ptr %240, align 4, !tbaa !70
  %242 = getelementptr inbounds float, ptr %222, i64 8
  %243 = load float, ptr %242, align 4, !tbaa !70
  store float %243, ptr %240, align 4, !tbaa !70
  store float %241, ptr %242, align 4, !tbaa !70
  %244 = getelementptr inbounds float, ptr %222, i64 9
  %245 = load float, ptr %244, align 4, !tbaa !70
  %246 = fneg float %245
  store float %246, ptr %244, align 4, !tbaa !70
  %247 = getelementptr inbounds float, ptr %222, i64 12
  br label %248

248:                                              ; preds = %232, %229
  %249 = phi ptr [ %247, %232 ], [ %222, %229 ]
  %250 = getelementptr inbounds %struct.BezTriple, ptr %221, i64 1
  %251 = icmp eq i32 %223, 0
  br i1 %251, label %292, label %219, !llvm.loop !438

252:                                              ; preds = %215
  %253 = mul nsw i32 %214, 12
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, ptr %209, i64 %254
  br label %292

256:                                              ; preds = %207
  %257 = getelementptr inbounds %struct.Nurb, ptr %208, i64 0, i32 7
  %258 = load i32, ptr %257, align 4, !tbaa !61
  %259 = mul nsw i32 %258, %214
  %260 = icmp eq ptr %208, %1
  br i1 %260, label %261, label %288

261:                                              ; preds = %256
  %262 = icmp eq i32 %259, 0
  br i1 %262, label %292, label %263

263:                                              ; preds = %261
  %264 = getelementptr inbounds %struct.Nurb, ptr %208, i64 0, i32 17
  %265 = load ptr, ptr %264, align 8, !tbaa !62
  br label %266

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %270, %284 ], [ %259, %263 ]
  %268 = phi ptr [ %286, %284 ], [ %265, %263 ]
  %269 = phi ptr [ %285, %284 ], [ %209, %263 ]
  %270 = add nsw i32 %267, -1
  %271 = load ptr, ptr %196, align 8, !tbaa !77
  %272 = tail call ptr @BLI_ghash_lookup(ptr noundef %271, ptr noundef %268) #19
  %273 = icmp eq ptr %272, null
  br i1 %273, label %276, label %274

274:                                              ; preds = %266
  %275 = load ptr, ptr %272, align 8, !tbaa !122
  br label %276

276:                                              ; preds = %274, %266
  %277 = phi ptr [ %275, %274 ], [ null, %266 ]
  %278 = icmp eq ptr %277, null
  br i1 %278, label %284, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds float, ptr %269, i64 3
  %281 = load float, ptr %280, align 4, !tbaa !70
  %282 = fneg float %281
  store float %282, ptr %280, align 4, !tbaa !70
  %283 = getelementptr inbounds float, ptr %269, i64 4
  br label %284

284:                                              ; preds = %279, %276
  %285 = phi ptr [ %283, %279 ], [ %269, %276 ]
  %286 = getelementptr inbounds %struct.BPoint, ptr %268, i64 1
  %287 = icmp eq i32 %270, 0
  br i1 %287, label %292, label %266, !llvm.loop !439

288:                                              ; preds = %256
  %289 = shl nsw i32 %259, 2
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds float, ptr %209, i64 %290
  br label %292

292:                                              ; preds = %248, %284, %217, %261, %288, %252
  %293 = phi ptr [ %255, %252 ], [ %291, %288 ], [ %209, %261 ], [ %209, %217 ], [ %285, %284 ], [ %249, %248 ]
  %294 = load ptr, ptr %208, align 8, !tbaa !66
  %295 = icmp eq ptr %294, null
  br i1 %295, label %197, label %207, !llvm.loop !440

296:                                              ; preds = %197, %189, %185, %2
  ret void
}

declare ptr @BLI_ghash_popkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @curve_smooth_value(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %286, label %6

6:                                                ; preds = %3
  %7 = zext nneg i32 %1 to i64
  %8 = zext nneg i32 %1 to i64
  %9 = zext nneg i32 %1 to i64
  %10 = zext nneg i32 %1 to i64
  %11 = zext nneg i32 %1 to i64
  %12 = zext nneg i32 %1 to i64
  %13 = zext nneg i32 %1 to i64
  %14 = zext nneg i32 %1 to i64
  %15 = zext nneg i32 %1 to i64
  %16 = zext nneg i32 %1 to i64
  %17 = zext nneg i32 %2 to i64
  %18 = zext nneg i32 %2 to i64
  %19 = zext nneg i32 %2 to i64
  %20 = zext nneg i32 %2 to i64
  %21 = zext nneg i32 %2 to i64
  %22 = zext nneg i32 %2 to i64
  %23 = zext nneg i32 %2 to i64
  %24 = zext i32 %2 to i64
  br label %25

25:                                               ; preds = %6, %283
  %26 = phi ptr [ %4, %6 ], [ %284, %283 ]
  %27 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = icmp eq ptr %28, null
  br i1 %29, label %156, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !52
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %283

34:                                               ; preds = %30
  %35 = getelementptr %struct.BezTriple, ptr %28, i64 -1
  %36 = getelementptr %struct.BezTriple, ptr %28, i64 1
  %37 = getelementptr %struct.BezTriple, ptr %28, i64 -1
  %38 = getelementptr inbounds i8, ptr %28, i64 %7
  %39 = getelementptr i8, ptr %37, i64 %8
  %40 = add nsw i32 %32, -1
  %41 = getelementptr i8, ptr %36, i64 %9
  %42 = getelementptr i8, ptr %28, i64 %10
  %43 = getelementptr i8, ptr %35, i64 %12
  %44 = getelementptr i8, ptr %28, i64 %14
  %45 = getelementptr i8, ptr %28, i64 %15
  %46 = getelementptr i8, ptr %28, i64 %16
  %47 = add nsw i32 %32, -1
  br label %48

48:                                               ; preds = %34, %152
  %49 = phi i32 [ 0, %34 ], [ %154, %152 ]
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 %50
  br label %52

52:                                               ; preds = %48, %59
  %53 = phi i32 [ %49, %48 ], [ %60, %59 ]
  %54 = phi ptr [ %51, %48 ], [ %61, %59 ]
  %55 = getelementptr inbounds %struct.BezTriple, ptr %54, i64 0, i32 8
  %56 = load i8, ptr %55, align 4, !tbaa !59
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = add nsw i32 %53, 1
  %61 = getelementptr inbounds %struct.BezTriple, ptr %54, i64 1
  %62 = icmp slt i32 %60, %32
  br i1 %62, label %52, label %63, !llvm.loop !441

63:                                               ; preds = %52, %59
  %64 = phi i32 [ -1, %59 ], [ %53, %52 ]
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 %66
  %68 = icmp slt i32 %65, %32
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 %66, i32 8
  %71 = load i8, ptr %70, align 4, !tbaa !59
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %85, label %80

74:                                               ; preds = %80
  %75 = getelementptr inbounds %struct.BezTriple, ptr %81, i64 1
  %76 = getelementptr inbounds %struct.BezTriple, ptr %81, i64 1, i32 8
  %77 = load i8, ptr %76, align 4, !tbaa !59
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %85, label %80, !llvm.loop !442

80:                                               ; preds = %69, %74
  %81 = phi ptr [ %75, %74 ], [ %67, %69 ]
  %82 = phi i32 [ %83, %74 ], [ %65, %69 ]
  %83 = add nsw i32 %82, 1
  %84 = icmp eq i32 %83, %32
  br i1 %84, label %85, label %74, !llvm.loop !442

85:                                               ; preds = %74, %80, %69, %63
  %86 = phi i32 [ %64, %63 ], [ %64, %69 ], [ %47, %80 ], [ %82, %74 ]
  %87 = icmp eq i32 %64, -1
  br i1 %87, label %152, label %88

88:                                               ; preds = %85
  %89 = icmp eq i32 %64, %86
  br i1 %89, label %90, label %113

90:                                               ; preds = %88
  %91 = icmp sgt i32 %64, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  %93 = zext nneg i32 %64 to i64
  %94 = getelementptr %struct.BezTriple, ptr %43, i64 %93
  %95 = load float, ptr %94, align 4, !tbaa !70
  br label %96

96:                                               ; preds = %90, %92
  %97 = phi float [ %95, %92 ], [ 0x47EFFFFFE0000000, %90 ]
  %98 = icmp slt i32 %86, %32
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = getelementptr inbounds i8, ptr %67, i64 %13
  %101 = load float, ptr %100, align 4, !tbaa !70
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi float [ %101, %99 ], [ 0x47EFFFFFE0000000, %96 ]
  %104 = fcmp une float %97, 0x47EFFFFFE0000000
  %105 = fcmp oge float %103, 0x47EFFFFFE0000000
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = fadd float %97, %103
  %109 = fmul float %108, 5.000000e-01
  br label %147

110:                                              ; preds = %102
  br i1 %104, label %147, label %111

111:                                              ; preds = %110
  %112 = fcmp une float %103, 0x47EFFFFFE0000000
  br i1 %112, label %147, label %152

113:                                              ; preds = %88
  %114 = icmp eq i32 %64, 0
  %115 = sext i32 %64 to i64
  %116 = getelementptr %struct.BezTriple, ptr %39, i64 %115
  %117 = tail call i32 @llvm.umax.i32(i32 %64, i32 1)
  %118 = select i1 %114, ptr %38, ptr %116
  %119 = load float, ptr %118, align 4, !tbaa !70
  %120 = icmp eq i32 %86, %40
  %121 = sext i32 %86 to i64
  %122 = sext i1 %120 to i32
  %123 = add nsw i32 %86, %122
  %124 = select i1 %120, ptr %42, ptr %41
  %125 = getelementptr %struct.BezTriple, ptr %124, i64 %121
  %126 = load float, ptr %125, align 4, !tbaa !70
  %127 = sub nsw i32 %123, %117
  %128 = sitofp i32 %127 to float
  %129 = fadd float %128, 2.000000e+00
  %130 = icmp sgt i32 %117, %123
  br i1 %130, label %152, label %131

131:                                              ; preds = %113
  %132 = sext i32 %117 to i64
  %133 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 %132
  br label %134

134:                                              ; preds = %131, %134
  %135 = phi i32 [ %137, %134 ], [ %117, %131 ]
  %136 = phi ptr [ %145, %134 ], [ %133, %131 ]
  %137 = add i32 %135, 1
  %138 = sub nsw i32 %137, %117
  %139 = sitofp i32 %138 to float
  %140 = fdiv float %139, %129
  %141 = fsub float 1.000000e+00, %140
  %142 = fmul float %126, %140
  %143 = tail call float @llvm.fmuladd.f32(float %119, float %141, float %142)
  %144 = getelementptr inbounds i8, ptr %136, i64 %11
  store float %143, ptr %144, align 4, !tbaa !70
  %145 = getelementptr inbounds %struct.BezTriple, ptr %136, i64 1
  %146 = icmp eq i32 %135, %123
  br i1 %146, label %152, label %134, !llvm.loop !443

147:                                              ; preds = %111, %110, %107
  %148 = phi ptr [ %46, %107 ], [ %45, %110 ], [ %44, %111 ]
  %149 = phi float [ %109, %107 ], [ %97, %110 ], [ %103, %111 ]
  %150 = sext i32 %64 to i64
  %151 = getelementptr %struct.BezTriple, ptr %148, i64 %150
  store float %149, ptr %151, align 4, !tbaa !70
  br label %152

152:                                              ; preds = %134, %147, %113, %85, %111
  %153 = phi i32 [ %86, %111 ], [ %32, %85 ], [ %86, %113 ], [ %86, %147 ], [ %86, %134 ]
  %154 = add nsw i32 %153, 1
  %155 = icmp slt i32 %154, %32
  br i1 %155, label %48, label %283, !llvm.loop !444

156:                                              ; preds = %25
  %157 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 17
  %158 = load ptr, ptr %157, align 8, !tbaa !62
  %159 = icmp eq ptr %158, null
  br i1 %159, label %283, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.Nurb, ptr %26, i64 0, i32 6
  %162 = load i32, ptr %161, align 8, !tbaa !52
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %283

164:                                              ; preds = %160
  %165 = getelementptr %struct.BPoint, ptr %158, i64 -1
  %166 = getelementptr %struct.BPoint, ptr %158, i64 1
  %167 = getelementptr %struct.BPoint, ptr %158, i64 -1
  %168 = getelementptr inbounds i8, ptr %158, i64 %17
  %169 = getelementptr i8, ptr %167, i64 %18
  %170 = add nsw i32 %162, -1
  %171 = getelementptr i8, ptr %166, i64 %19
  %172 = getelementptr i8, ptr %158, i64 %20
  %173 = getelementptr i8, ptr %165, i64 %22
  %174 = add nsw i32 %162, -1
  %175 = getelementptr i8, ptr %158, i64 %24
  br label %176

176:                                              ; preds = %164, %279
  %177 = phi i32 [ 0, %164 ], [ %281, %279 ]
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.BPoint, ptr %158, i64 %178
  br label %180

180:                                              ; preds = %176, %187
  %181 = phi i32 [ %177, %176 ], [ %188, %187 ]
  %182 = phi ptr [ %179, %176 ], [ %189, %187 ]
  %183 = getelementptr inbounds %struct.BPoint, ptr %182, i64 0, i32 3
  %184 = load i16, ptr %183, align 4, !tbaa !64
  %185 = and i16 %184, 1
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180
  %188 = add nsw i32 %181, 1
  %189 = getelementptr inbounds %struct.BPoint, ptr %182, i64 1
  %190 = icmp slt i32 %188, %162
  br i1 %190, label %180, label %191, !llvm.loop !445

191:                                              ; preds = %180, %187
  %192 = phi i32 [ -1, %187 ], [ %181, %180 ]
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.BPoint, ptr %158, i64 %194
  %196 = icmp slt i32 %193, %162
  br i1 %196, label %197, label %213

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.BPoint, ptr %158, i64 %194, i32 3
  %199 = load i16, ptr %198, align 4, !tbaa !64
  %200 = and i16 %199, 1
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %213, label %208

202:                                              ; preds = %208
  %203 = getelementptr inbounds %struct.BPoint, ptr %209, i64 1
  %204 = getelementptr inbounds %struct.BPoint, ptr %209, i64 1, i32 3
  %205 = load i16, ptr %204, align 4, !tbaa !64
  %206 = and i16 %205, 1
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %213, label %208, !llvm.loop !446

208:                                              ; preds = %197, %202
  %209 = phi ptr [ %203, %202 ], [ %195, %197 ]
  %210 = phi i32 [ %211, %202 ], [ %193, %197 ]
  %211 = add nsw i32 %210, 1
  %212 = icmp eq i32 %211, %162
  br i1 %212, label %213, label %202, !llvm.loop !446

213:                                              ; preds = %202, %208, %197, %191
  %214 = phi i32 [ %192, %191 ], [ %192, %197 ], [ %174, %208 ], [ %210, %202 ]
  %215 = icmp eq i32 %192, -1
  br i1 %215, label %279, label %216

216:                                              ; preds = %213
  %217 = icmp eq i32 %192, %214
  br i1 %217, label %218, label %241

218:                                              ; preds = %216
  %219 = icmp sgt i32 %192, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %218
  %221 = zext nneg i32 %192 to i64
  %222 = getelementptr %struct.BPoint, ptr %173, i64 %221
  %223 = load float, ptr %222, align 4, !tbaa !70
  br label %224

224:                                              ; preds = %218, %220
  %225 = phi float [ %223, %220 ], [ 0x47EFFFFFE0000000, %218 ]
  %226 = icmp slt i32 %214, %162
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %195, i64 %23
  %229 = load float, ptr %228, align 4, !tbaa !70
  br label %230

230:                                              ; preds = %227, %224
  %231 = phi float [ %229, %227 ], [ 0x47EFFFFFE0000000, %224 ]
  %232 = fcmp une float %225, 0x47EFFFFFE0000000
  %233 = fcmp une float %231, 0x47EFFFFFE0000000
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = fadd float %225, %231
  %237 = fmul float %236, 5.000000e-01
  br label %275

238:                                              ; preds = %230
  %239 = select i1 %232, i1 true, i1 %233
  %240 = select i1 %232, float %225, float %231
  br i1 %239, label %275, label %279

241:                                              ; preds = %216
  %242 = icmp eq i32 %192, 0
  %243 = sext i32 %192 to i64
  %244 = getelementptr %struct.BPoint, ptr %169, i64 %243
  %245 = tail call i32 @llvm.umax.i32(i32 %192, i32 1)
  %246 = select i1 %242, ptr %168, ptr %244
  %247 = load float, ptr %246, align 4, !tbaa !70
  %248 = icmp eq i32 %214, %170
  %249 = sext i32 %214 to i64
  %250 = sext i1 %248 to i32
  %251 = add nsw i32 %214, %250
  %252 = select i1 %248, ptr %172, ptr %171
  %253 = getelementptr %struct.BPoint, ptr %252, i64 %249
  %254 = load float, ptr %253, align 4, !tbaa !70
  %255 = sub nsw i32 %251, %245
  %256 = sitofp i32 %255 to float
  %257 = fadd float %256, 2.000000e+00
  %258 = icmp sgt i32 %245, %251
  br i1 %258, label %279, label %259

259:                                              ; preds = %241
  %260 = sext i32 %245 to i64
  %261 = getelementptr inbounds %struct.BPoint, ptr %158, i64 %260
  br label %262

262:                                              ; preds = %259, %262
  %263 = phi i32 [ %265, %262 ], [ %245, %259 ]
  %264 = phi ptr [ %273, %262 ], [ %261, %259 ]
  %265 = add i32 %263, 1
  %266 = sub nsw i32 %265, %245
  %267 = sitofp i32 %266 to float
  %268 = fdiv float %267, %257
  %269 = fsub float 1.000000e+00, %268
  %270 = fmul float %254, %268
  %271 = tail call float @llvm.fmuladd.f32(float %247, float %269, float %270)
  %272 = getelementptr inbounds i8, ptr %264, i64 %21
  store float %271, ptr %272, align 4, !tbaa !70
  %273 = getelementptr inbounds %struct.BPoint, ptr %264, i64 1
  %274 = icmp eq i32 %263, %251
  br i1 %274, label %279, label %262, !llvm.loop !447

275:                                              ; preds = %238, %235
  %276 = phi float [ %237, %235 ], [ %240, %238 ]
  %277 = sext i32 %192 to i64
  %278 = getelementptr %struct.BPoint, ptr %175, i64 %277
  store float %276, ptr %278, align 4, !tbaa !70
  br label %279

279:                                              ; preds = %262, %238, %275, %241, %213
  %280 = phi i32 [ %162, %213 ], [ %214, %241 ], [ %214, %275 ], [ %214, %238 ], [ %214, %262 ]
  %281 = add nsw i32 %280, 1
  %282 = icmp slt i32 %281, %162
  br i1 %282, label %176, label %283, !llvm.loop !448

283:                                              ; preds = %152, %279, %30, %160, %156
  %284 = load ptr, ptr %26, align 8, !tbaa !66
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %25, !llvm.loop !449

286:                                              ; preds = %283, %3
  ret void
}

declare void @BKE_curve_nurb_vert_active_validate(ptr noundef) local_unnamed_addr #6

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BKE_nurb_bezt_get_next(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

declare ptr @BKE_nurb_bpoint_get_next(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @interp_v4_v4v4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

declare zeroext i8 @BKE_nurb_type_convert(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #6

declare void @BKE_nurbList_handles_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @BKE_nurbList_handles_recalculate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

declare void @BKE_nurb_free(ptr noundef) local_unnamed_addr #6

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc void @rotate_direction_nurb(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !61
  store i32 %5, ptr %2, align 8, !tbaa !52
  store i32 %3, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 12
  %9 = load i16, ptr %8, align 2, !tbaa !73
  store i16 %9, ptr %6, align 8, !tbaa !68
  store i16 %7, ptr %8, align 2, !tbaa !73
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 4, !tbaa !450
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !451
  store i16 %13, ptr %10, align 4, !tbaa !450
  store i16 %11, ptr %12, align 2, !tbaa !451
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %15 = load i16, ptr %14, align 4, !tbaa !69
  %16 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %17 = load i16, ptr %16, align 2, !tbaa !74
  store i16 %17, ptr %14, align 4, !tbaa !69
  store i16 %15, ptr %16, align 2, !tbaa !74
  %18 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  store ptr %21, ptr %18, align 8, !tbaa !67
  store ptr %19, ptr %20, align 8, !tbaa !72
  %22 = sext i16 %7 to i32
  %23 = add nsw i32 %3, %22
  %24 = and i16 %15, 1
  %25 = icmp eq i16 %24, 0
  %26 = add nsw i32 %22, -1
  %27 = select i1 %25, i32 0, i32 %26
  %28 = add nsw i32 %23, %27
  %29 = icmp eq ptr %19, null
  %30 = icmp eq i32 %28, 0
  %31 = or i1 %29, %30
  br i1 %31, label %86, label %32

32:                                               ; preds = %1
  %33 = add nsw i32 %28, -1
  %34 = icmp sgt i32 %28, 1
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = lshr i32 %28, 1
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds float, ptr %19, i64 %37
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %46, %39 ], [ %19, %35 ]
  %41 = phi i32 [ %45, %39 ], [ %36, %35 ]
  %42 = phi ptr [ %47, %39 ], [ %38, %35 ]
  %43 = load float, ptr %40, align 4, !tbaa !70
  %44 = load float, ptr %42, align 4, !tbaa !70
  store float %44, ptr %40, align 4, !tbaa !70
  store float %43, ptr %42, align 4, !tbaa !70
  %45 = add nsw i32 %41, -1
  %46 = getelementptr inbounds float, ptr %40, i64 1
  %47 = getelementptr inbounds float, ptr %42, i64 -1
  %48 = icmp ne ptr %46, %47
  %49 = icmp sgt i32 %41, 1
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %39, label %51, !llvm.loop !452

51:                                               ; preds = %39, %32
  %52 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %53 = sext i32 %28 to i64
  %54 = shl nsw i64 %53, 2
  %55 = tail call ptr %52(i64 noundef %54, ptr noundef nonnull @.str.212) #19
  %56 = icmp eq i32 %28, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %51, %57
  %58 = phi ptr [ %62, %57 ], [ %19, %51 ]
  %59 = phi i32 [ %61, %57 ], [ %28, %51 ]
  %60 = phi ptr [ %67, %57 ], [ %55, %51 ]
  %61 = add nsw i32 %59, -1
  %62 = getelementptr inbounds float, ptr %58, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !70
  %64 = load float, ptr %58, align 4, !tbaa !70
  %65 = fsub float %63, %64
  %66 = tail call float @llvm.fabs.f32(float %65)
  store float %66, ptr %60, align 4, !tbaa !70
  %67 = getelementptr inbounds float, ptr %60, i64 1
  %68 = icmp eq i32 %61, 0
  br i1 %68, label %69, label %57, !llvm.loop !453

69:                                               ; preds = %57, %51
  store float 0.000000e+00, ptr %19, align 4, !tbaa !70
  %70 = icmp eq i32 %33, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %69
  %72 = load float, ptr %19, align 4
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi float [ %72, %71 ], [ %81, %73 ]
  %75 = phi ptr [ %19, %71 ], [ %78, %73 ]
  %76 = phi i32 [ %33, %71 ], [ %79, %73 ]
  %77 = phi ptr [ %55, %71 ], [ %82, %73 ]
  %78 = getelementptr inbounds float, ptr %75, i64 1
  %79 = add nsw i32 %76, -1
  %80 = load float, ptr %77, align 4, !tbaa !70
  %81 = fadd float %74, %80
  store float %81, ptr %78, align 4, !tbaa !70
  %82 = getelementptr inbounds float, ptr %77, i64 1
  %83 = icmp eq i32 %79, 0
  br i1 %83, label %84, label %73, !llvm.loop !454

84:                                               ; preds = %73, %69
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %85(ptr noundef %55) #19
  br label %86

86:                                               ; preds = %1, %84
  %87 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !66
  %88 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %89 = load ptr, ptr %88, align 8, !tbaa !62
  %90 = tail call ptr %87(ptr noundef %89) #19
  %91 = load i32, ptr %4, align 4, !tbaa !61
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %86
  %94 = load ptr, ptr %88, align 8, !tbaa !62
  br label %95

95:                                               ; preds = %93, %116
  %96 = phi i64 [ 0, %93 ], [ %118, %116 ]
  %97 = phi ptr [ %94, %93 ], [ %117, %116 ]
  %98 = load i32, ptr %2, align 8, !tbaa !52
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = getelementptr %struct.BPoint, ptr %90, i64 %96
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i32 [ %98, %100 ], [ %114, %102 ]
  %104 = phi ptr [ %97, %100 ], [ %113, %102 ]
  %105 = phi i32 [ 0, %100 ], [ %112, %102 ]
  %106 = xor i32 %105, -1
  %107 = add i32 %103, %106
  %108 = load i32, ptr %4, align 4, !tbaa !61
  %109 = mul nsw i32 %108, %107
  %110 = sext i32 %109 to i64
  %111 = getelementptr %struct.BPoint, ptr %101, i64 %110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %104, ptr noundef nonnull align 4 dereferenceable(36) %111, i64 36, i1 false), !tbaa.struct !190
  %112 = add nuw nsw i32 %105, 1
  %113 = getelementptr inbounds %struct.BPoint, ptr %104, i64 1
  %114 = load i32, ptr %2, align 8, !tbaa !52
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %102, label %116, !llvm.loop !455

116:                                              ; preds = %102, %95
  %117 = phi ptr [ %97, %95 ], [ %113, %102 ]
  %118 = add nuw nsw i64 %96, 1
  %119 = load i32, ptr %4, align 4, !tbaa !61
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %95, label %122, !llvm.loop !456

122:                                              ; preds = %116, %86
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  tail call void %123(ptr noundef %90) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

declare float @ED_view3d_select_dist_px() local_unnamed_addr #6

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @nurbs_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestNurbvert__doClosest(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #14 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 4, !tbaa !64
  br label %24

11:                                               ; preds = %6
  switch i32 %4, label %20 [
    i32 0, label %12
    i32 1, label %16
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %14 = load i8, ptr %13, align 1, !tbaa !57
  %15 = zext i8 %14 to i16
  br label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %18 = load i8, ptr %17, align 4, !tbaa !59
  %19 = zext i8 %18 to i16
  br label %24

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %22 = load i8, ptr %21, align 1, !tbaa !60
  %23 = zext i8 %22 to i16
  br label %24

24:                                               ; preds = %12, %20, %16, %8
  %25 = phi i16 [ %10, %8 ], [ %15, %12 ], [ %19, %16 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 6
  %27 = load float, ptr %5, align 4, !tbaa !70
  %28 = load float, ptr %26, align 4, !tbaa !70
  %29 = fsub float %27, %28
  %30 = getelementptr inbounds float, ptr %5, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !70
  %32 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 6, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !70
  %34 = fsub float %31, %33
  %35 = tail call float @llvm.fabs.f32(float %29)
  %36 = tail call float @llvm.fabs.f32(float %34)
  %37 = fadd float %35, %36
  %38 = and i16 %25, 1
  %39 = zext nneg i16 %38 to i32
  %40 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !277
  %42 = icmp eq i32 %41, %39
  %43 = fadd float %37, 5.000000e+00
  %44 = select i1 %42, float %43, float %37
  %45 = icmp ne ptr %3, null
  %46 = icmp eq i32 %4, 1
  %47 = and i1 %45, %46
  %48 = fadd float %44, 3.000000e+00
  %49 = select i1 %47, float %48, float %44
  %50 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !274
  %52 = fcmp olt float %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %24
  store float %49, ptr %50, align 8, !tbaa !274
  store ptr %2, ptr %0, align 8, !tbaa !283
  %54 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 1
  store ptr %3, ptr %54, align 8, !tbaa !282
  %55 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 2
  store ptr %1, ptr %55, align 8, !tbaa !281
  %56 = select i1 %45, i32 %4, i32 0
  %57 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 4
  store i32 %56, ptr %57, align 4, !tbaa !276
  br label %58

58:                                               ; preds = %53, %24
  ret void
}

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #6

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @unit_m4(ptr noundef) local_unnamed_addr #6

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #6

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @addvert_Nurb(ptr noundef %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4 x [4 x float]], align 16
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  %13 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47
  %14 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %13) #19
  call fastcc void @findselectedNurbvert(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %15 = load ptr, ptr %4, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !50
  %20 = icmp eq i16 %19, 1
  %21 = load ptr, ptr %5, align 8
  %22 = icmp eq ptr %21, null
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = icmp ne i16 %19, 1
  %26 = load ptr, ptr %6, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %115

29:                                               ; preds = %24, %17, %3
  %30 = icmp eq i16 %1, 101
  br i1 %30, label %110, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 31
  %33 = load i32, ptr %32, align 4, !tbaa !195
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call ptr @BLI_findlink(ptr noundef %12, i32 noundef %33) #19
  store ptr %36, ptr %4, align 8, !tbaa !66
  br label %37

37:                                               ; preds = %35, %31
  %38 = load ptr, ptr %4, align 8, !tbaa !66
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Nurb, ptr %38, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !50
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %44, label %91

44:                                               ; preds = %40, %37
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %46 = call ptr %45(i64 noundef 72, ptr noundef nonnull @.str.214) #19
  %47 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 3
  store float 1.000000e+00, ptr %47, align 4, !tbaa !206
  %48 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 1
  store float 0.000000e+00, ptr %48, align 4, !tbaa !124
  %49 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 7
  %50 = load i8, ptr %49, align 1, !tbaa !57
  %51 = or i8 %50, 1
  store i8 %51, ptr %49, align 1, !tbaa !57
  %52 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 8
  %53 = load i8, ptr %52, align 4, !tbaa !59
  %54 = or i8 %53, 1
  store i8 %54, ptr %52, align 4, !tbaa !59
  %55 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 9
  %56 = load i8, ptr %55, align 1, !tbaa !60
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 1, !tbaa !60
  %58 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 5
  store i8 1, ptr %58, align 1, !tbaa !457
  %59 = getelementptr inbounds %struct.BezTriple, ptr %46, i64 0, i32 6
  store i8 1, ptr %59, align 2, !tbaa !458
  %60 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %61 = call ptr %60(i64 noundef 88, ptr noundef nonnull @.str.215) #19
  br i1 %39, label %62, label %70

62:                                               ; preds = %44
  %63 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 2
  store i16 1, ptr %63, align 8, !tbaa !50
  %64 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 27
  %65 = load i16, ptr %64, align 4, !tbaa !459
  %66 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 9
  store i16 %65, ptr %66, align 4, !tbaa !450
  %67 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 5
  %68 = load i16, ptr %67, align 2, !tbaa !366
  %69 = or i16 %68, 1
  store i16 %69, ptr %67, align 2, !tbaa !366
  br label %71

70:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %61, ptr noundef nonnull align 8 dereferenceable(88) %38, i64 88, i1 false)
  br label %71

71:                                               ; preds = %70, %62
  call void @BLI_addtail(ptr noundef %12, ptr noundef %61) #19
  %72 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 18
  store ptr %46, ptr %72, align 8, !tbaa !53
  %73 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 6
  store i32 1, ptr %73, align 8, !tbaa !52
  %74 = getelementptr inbounds [3 x [3 x float]], ptr %46, i64 0, i64 1
  %75 = load float, ptr %2, align 4, !tbaa !70
  store float %75, ptr %74, align 4, !tbaa !70
  %76 = getelementptr inbounds float, ptr %2, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !70
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %46, i64 0, i64 1, i64 1
  store float %77, ptr %78, align 4, !tbaa !70
  %79 = getelementptr inbounds float, ptr %2, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !70
  %81 = getelementptr inbounds [3 x [3 x float]], ptr %46, i64 0, i64 1, i64 2
  store float %80, ptr %81, align 4, !tbaa !70
  %82 = fadd float %75, -1.000000e+00
  store float %82, ptr %46, align 4, !tbaa !70
  %83 = getelementptr inbounds float, ptr %46, i64 1
  store float %77, ptr %83, align 4, !tbaa !70
  %84 = getelementptr inbounds float, ptr %46, i64 2
  store float %80, ptr %84, align 4, !tbaa !70
  %85 = getelementptr inbounds [3 x [3 x float]], ptr %46, i64 0, i64 2
  %86 = fadd float %75, 1.000000e+00
  store float %86, ptr %85, align 4, !tbaa !70
  %87 = fadd float %77, 0.000000e+00
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %46, i64 0, i64 2, i64 1
  store float %87, ptr %88, align 4, !tbaa !70
  %89 = fadd float %80, 0.000000e+00
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %46, i64 0, i64 2, i64 2
  store float %89, ptr %90, align 4, !tbaa !70
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %46) #19
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %74) #19
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %85) #19
  store ptr %61, ptr %4, align 8, !tbaa !66
  br label %110

91:                                               ; preds = %40
  %92 = getelementptr inbounds %struct.Nurb, ptr %38, i64 0, i32 7
  %93 = load i32, ptr %92, align 4, !tbaa !61
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %97 = call ptr %96(i64 noundef 36, ptr noundef nonnull @.str.216) #19
  %98 = getelementptr inbounds %struct.BPoint, ptr %97, i64 0, i32 5
  store float 1.000000e+00, ptr %98, align 4, !tbaa !208
  %99 = getelementptr inbounds %struct.BPoint, ptr %97, i64 0, i32 1
  store float 0.000000e+00, ptr %99, align 4, !tbaa !126
  %100 = getelementptr inbounds %struct.BPoint, ptr %97, i64 0, i32 3
  %101 = load i16, ptr %100, align 4, !tbaa !64
  %102 = or i16 %101, 1
  store i16 %102, ptr %100, align 4, !tbaa !64
  %103 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %104 = call ptr %103(i64 noundef 88, ptr noundef nonnull @.str.215) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %104, ptr noundef nonnull align 8 dereferenceable(88) %38, i64 88, i1 false)
  call void @BLI_addtail(ptr noundef %12, ptr noundef %104) #19
  %105 = getelementptr inbounds %struct.Nurb, ptr %104, i64 0, i32 17
  store ptr %97, ptr %105, align 8, !tbaa !62
  %106 = getelementptr inbounds %struct.Nurb, ptr %104, i64 0, i32 11
  store i16 2, ptr %106, align 8, !tbaa !68
  %107 = getelementptr inbounds %struct.Nurb, ptr %104, i64 0, i32 6
  store i32 1, ptr %107, align 8, !tbaa !52
  call void @mul_v3_m4v3(ptr noundef %97, ptr noundef nonnull %7, ptr noundef %2) #19
  %108 = getelementptr inbounds [4 x float], ptr %97, i64 0, i64 3
  store float 1.000000e+00, ptr %108, align 4, !tbaa !70
  %109 = getelementptr inbounds %struct.Nurb, ptr %104, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %109, i8 0, i64 16, i1 false)
  call void @BKE_nurb_knot_calc_u(ptr noundef %104) #19
  store ptr %104, ptr %4, align 8, !tbaa !66
  br label %110

110:                                              ; preds = %71, %95, %91, %29
  %111 = phi ptr [ %46, %71 ], [ null, %95 ], [ null, %91 ], [ null, %29 ]
  %112 = phi ptr [ null, %71 ], [ %97, %95 ], [ null, %91 ], [ null, %29 ]
  %113 = phi i1 [ false, %71 ], [ false, %95 ], [ true, %91 ], [ true, %29 ]
  %114 = phi ptr [ %61, %71 ], [ %104, %95 ], [ null, %91 ], [ null, %29 ]
  br i1 %113, label %587, label %115

115:                                              ; preds = %110, %24
  %116 = phi ptr [ %111, %110 ], [ null, %24 ]
  %117 = phi ptr [ %112, %110 ], [ null, %24 ]
  %118 = phi i1 [ false, %110 ], [ true, %24 ]
  %119 = phi ptr [ %114, %110 ], [ null, %24 ]
  br i1 %118, label %120, label %548

120:                                              ; preds = %115
  %121 = load ptr, ptr %4, align 8, !tbaa !66
  %122 = getelementptr inbounds %struct.Nurb, ptr %121, i64 0, i32 2
  %123 = load i16, ptr %122, align 8, !tbaa !50
  %124 = icmp eq i16 %123, 1
  br i1 %124, label %125, label %397

125:                                              ; preds = %120
  %126 = load ptr, ptr %5, align 8, !tbaa !66
  %127 = getelementptr inbounds %struct.Nurb, ptr %121, i64 0, i32 18
  %128 = load ptr, ptr %127, align 8, !tbaa !53
  %129 = getelementptr inbounds %struct.Nurb, ptr %121, i64 0, i32 6
  %130 = load i32, ptr %129, align 8, !tbaa !52
  %131 = sext i32 %130 to i64
  %132 = getelementptr %struct.BezTriple, ptr %128, i64 %131
  %133 = getelementptr %struct.BezTriple, ptr %132, i64 -1
  %134 = icmp eq ptr %126, %133
  br i1 %134, label %135, label %204

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.BezTriple, ptr %126, i64 0, i32 7
  %137 = load i8, ptr %136, align 1, !tbaa !57
  %138 = and i8 %137, -2
  store i8 %138, ptr %136, align 1, !tbaa !57
  %139 = getelementptr inbounds %struct.BezTriple, ptr %126, i64 0, i32 8
  %140 = load i8, ptr %139, align 4, !tbaa !59
  %141 = and i8 %140, -2
  store i8 %141, ptr %139, align 4, !tbaa !59
  %142 = getelementptr inbounds %struct.BezTriple, ptr %126, i64 0, i32 9
  %143 = load i8, ptr %142, align 1, !tbaa !60
  %144 = and i8 %143, -2
  store i8 %144, ptr %142, align 1, !tbaa !60
  %145 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %146 = add nsw i32 %130, 1
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %147, 72
  %149 = call ptr %145(i64 noundef %148, ptr noundef nonnull @.str.214) #19
  %150 = load ptr, ptr %127, align 8, !tbaa !53
  %151 = load i32, ptr %129, align 8, !tbaa !52
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, 72
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %149, ptr align 4 %150, i64 %153, i1 false)
  %154 = getelementptr inbounds %struct.EditNurb, ptr %12, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !77
  %156 = icmp ne ptr %155, null
  %157 = icmp sgt i32 %151, 0
  %158 = and i1 %157, %156
  br i1 %158, label %159, label %173

159:                                              ; preds = %135, %168
  %160 = phi ptr [ %170, %168 ], [ %150, %135 ]
  %161 = phi i32 [ %171, %168 ], [ 0, %135 ]
  %162 = phi ptr [ %169, %168 ], [ %149, %135 ]
  %163 = load ptr, ptr %154, align 8, !tbaa !77
  %164 = call ptr @BLI_ghash_popkey(ptr noundef %163, ptr noundef %160, ptr noundef null) #19
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %159
  %167 = load ptr, ptr %154, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %167, ptr noundef %162, ptr noundef nonnull %164) #19
  br label %168

168:                                              ; preds = %166, %159
  %169 = getelementptr inbounds i8, ptr %162, i64 72
  %170 = getelementptr inbounds i8, ptr %160, i64 72
  %171 = add nuw nsw i32 %161, 1
  %172 = icmp eq i32 %171, %151
  br i1 %172, label %173, label %159, !llvm.loop !182

173:                                              ; preds = %168, %135
  %174 = load i32, ptr %129, align 8, !tbaa !52
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.BezTriple, ptr %149, i64 %175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %176, ptr noundef nonnull align 4 dereferenceable(72) %126, i64 72, i1 false), !tbaa.struct !460
  %177 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !70
  %179 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 1, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !70
  %181 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 1, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !70
  %183 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %184 = load ptr, ptr %127, align 8, !tbaa !53
  call void %183(ptr noundef %184) #19
  store ptr %149, ptr %127, align 8, !tbaa !53
  %185 = load i32, ptr %129, align 8, !tbaa !52
  %186 = sext i32 %185 to i64
  %187 = getelementptr %struct.BezTriple, ptr %149, i64 %186
  %188 = getelementptr inbounds %struct.BezTriple, ptr %149, i64 %186, i32 7
  %189 = load i8, ptr %188, align 1, !tbaa !57
  %190 = or i8 %189, 1
  store i8 %190, ptr %188, align 1, !tbaa !57
  %191 = getelementptr inbounds %struct.BezTriple, ptr %149, i64 %186, i32 8
  %192 = load i8, ptr %191, align 4, !tbaa !59
  %193 = or i8 %192, 1
  store i8 %193, ptr %191, align 4, !tbaa !59
  %194 = getelementptr inbounds %struct.BezTriple, ptr %149, i64 %186, i32 9
  %195 = load i8, ptr %194, align 1, !tbaa !60
  %196 = or i8 %195, 1
  store i8 %196, ptr %194, align 1, !tbaa !60
  %197 = getelementptr inbounds %struct.BezTriple, ptr %149, i64 %186, i32 6
  %198 = load i8, ptr %197, align 2, !tbaa !458
  %199 = getelementptr inbounds %struct.BezTriple, ptr %149, i64 %186, i32 5
  store i8 %198, ptr %199, align 1, !tbaa !457
  %200 = getelementptr %struct.BezTriple, ptr %187, i64 -1
  store ptr %200, ptr %5, align 8, !tbaa !66
  %201 = icmp sgt i32 %185, 1
  %202 = select i1 %201, ptr %200, ptr null
  %203 = select i1 %201, ptr %187, ptr null
  br label %306

204:                                              ; preds = %125
  %205 = icmp eq ptr %126, %128
  br i1 %205, label %206, label %269

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct.BezTriple, ptr %126, i64 0, i32 7
  %208 = load i8, ptr %207, align 1, !tbaa !57
  %209 = and i8 %208, -2
  store i8 %209, ptr %207, align 1, !tbaa !57
  %210 = getelementptr inbounds %struct.BezTriple, ptr %126, i64 0, i32 8
  %211 = load i8, ptr %210, align 4, !tbaa !59
  %212 = and i8 %211, -2
  store i8 %212, ptr %210, align 4, !tbaa !59
  %213 = getelementptr inbounds %struct.BezTriple, ptr %126, i64 0, i32 9
  %214 = load i8, ptr %213, align 1, !tbaa !60
  %215 = and i8 %214, -2
  store i8 %215, ptr %213, align 1, !tbaa !60
  %216 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %217 = add nsw i32 %130, 1
  %218 = sext i32 %217 to i64
  %219 = mul nsw i64 %218, 72
  %220 = call ptr %216(i64 noundef %219, ptr noundef nonnull @.str.214) #19
  %221 = getelementptr inbounds %struct.BezTriple, ptr %220, i64 1
  %222 = load i32, ptr %129, align 8, !tbaa !52
  %223 = sext i32 %222 to i64
  %224 = mul nsw i64 %223, 72
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %221, ptr align 4 %126, i64 %224, i1 false)
  %225 = getelementptr inbounds %struct.EditNurb, ptr %12, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !77
  %227 = icmp ne ptr %226, null
  %228 = icmp sgt i32 %222, 0
  %229 = and i1 %228, %227
  br i1 %229, label %230, label %244

230:                                              ; preds = %206, %239
  %231 = phi ptr [ %241, %239 ], [ %126, %206 ]
  %232 = phi i32 [ %242, %239 ], [ 0, %206 ]
  %233 = phi ptr [ %240, %239 ], [ %221, %206 ]
  %234 = load ptr, ptr %225, align 8, !tbaa !77
  %235 = call ptr @BLI_ghash_popkey(ptr noundef %234, ptr noundef %231, ptr noundef null) #19
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237

237:                                              ; preds = %230
  %238 = load ptr, ptr %225, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %238, ptr noundef nonnull %233, ptr noundef nonnull %235) #19
  br label %239

239:                                              ; preds = %237, %230
  %240 = getelementptr inbounds i8, ptr %233, i64 72
  %241 = getelementptr inbounds i8, ptr %231, i64 72
  %242 = add nuw nsw i32 %232, 1
  %243 = icmp eq i32 %242, %222
  br i1 %243, label %244, label %230, !llvm.loop !182

244:                                              ; preds = %239, %206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %220, ptr noundef nonnull align 4 dereferenceable(72) %126, i64 72, i1 false), !tbaa.struct !460
  %245 = getelementptr inbounds %struct.BezTriple, ptr %220, i64 0, i32 7
  %246 = load i8, ptr %245, align 1, !tbaa !57
  %247 = or i8 %246, 1
  store i8 %247, ptr %245, align 1, !tbaa !57
  %248 = getelementptr inbounds %struct.BezTriple, ptr %220, i64 0, i32 8
  %249 = load i8, ptr %248, align 4, !tbaa !59
  %250 = or i8 %249, 1
  store i8 %250, ptr %248, align 4, !tbaa !59
  %251 = getelementptr inbounds %struct.BezTriple, ptr %220, i64 0, i32 9
  %252 = load i8, ptr %251, align 1, !tbaa !60
  %253 = or i8 %252, 1
  store i8 %253, ptr %251, align 1, !tbaa !60
  %254 = getelementptr inbounds %struct.BezTriple, ptr %220, i64 0, i32 5
  %255 = load i8, ptr %254, align 1, !tbaa !457
  %256 = getelementptr inbounds %struct.BezTriple, ptr %220, i64 0, i32 6
  store i8 %255, ptr %256, align 2, !tbaa !458
  %257 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 1
  %258 = load float, ptr %257, align 4, !tbaa !70
  %259 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 1, i64 1
  %260 = load float, ptr %259, align 4, !tbaa !70
  %261 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 1, i64 2
  %262 = load float, ptr %261, align 4, !tbaa !70
  %263 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %264 = load ptr, ptr %127, align 8, !tbaa !53
  call void %263(ptr noundef %264) #19
  store ptr %220, ptr %127, align 8, !tbaa !53
  store ptr %221, ptr %5, align 8, !tbaa !66
  %265 = load i32, ptr %129, align 8, !tbaa !52
  %266 = icmp sgt i32 %265, 1
  %267 = select i1 %266, ptr %220, ptr null
  %268 = select i1 %266, ptr %221, ptr null
  br label %306

269:                                              ; preds = %204
  %270 = icmp eq i16 %1, 101
  br i1 %270, label %305, label %271

271:                                              ; preds = %269
  %272 = getelementptr inbounds %struct.BezTriple, ptr %126, i64 0, i32 7
  %273 = load i8, ptr %272, align 1, !tbaa !57
  %274 = and i8 %273, -2
  store i8 %274, ptr %272, align 1, !tbaa !57
  %275 = getelementptr inbounds %struct.BezTriple, ptr %126, i64 0, i32 8
  %276 = load i8, ptr %275, align 4, !tbaa !59
  %277 = and i8 %276, -2
  store i8 %277, ptr %275, align 4, !tbaa !59
  %278 = getelementptr inbounds %struct.BezTriple, ptr %126, i64 0, i32 9
  %279 = load i8, ptr %278, align 1, !tbaa !60
  %280 = and i8 %279, -2
  store i8 %280, ptr %278, align 1, !tbaa !60
  %281 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %282 = call ptr %281(i64 noundef 72, ptr noundef nonnull @.str.214) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %282, ptr noundef nonnull align 4 dereferenceable(72) %126, i64 72, i1 false), !tbaa.struct !460
  %283 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 7
  %284 = load i8, ptr %283, align 1, !tbaa !57
  %285 = or i8 %284, 1
  store i8 %285, ptr %283, align 1, !tbaa !57
  %286 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 8
  %287 = load i8, ptr %286, align 4, !tbaa !59
  %288 = or i8 %287, 1
  store i8 %288, ptr %286, align 4, !tbaa !59
  %289 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 9
  %290 = load i8, ptr %289, align 1, !tbaa !60
  %291 = or i8 %290, 1
  store i8 %291, ptr %289, align 1, !tbaa !60
  %292 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 5
  %293 = load i8, ptr %292, align 1, !tbaa !457
  %294 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 6
  store i8 %293, ptr %294, align 2, !tbaa !458
  %295 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 1
  %296 = load float, ptr %295, align 4, !tbaa !70
  %297 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 1, i64 1
  %298 = load float, ptr %297, align 4, !tbaa !70
  %299 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 1, i64 2
  %300 = load float, ptr %299, align 4, !tbaa !70
  %301 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %302 = call ptr %301(i64 noundef 88, ptr noundef nonnull @.str.215) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %302, ptr noundef nonnull align 8 dereferenceable(88) %121, i64 88, i1 false)
  call void @BLI_addtail(ptr noundef %12, ptr noundef %302) #19
  %303 = getelementptr inbounds %struct.Nurb, ptr %302, i64 0, i32 18
  store ptr %282, ptr %303, align 8, !tbaa !53
  %304 = getelementptr inbounds %struct.Nurb, ptr %302, i64 0, i32 6
  store i32 1, ptr %304, align 8, !tbaa !52
  store ptr %302, ptr %4, align 8, !tbaa !66
  store ptr %282, ptr %5, align 8, !tbaa !66
  br label %306

305:                                              ; preds = %269
  store ptr null, ptr %5, align 8, !tbaa !66
  br label %306

306:                                              ; preds = %244, %173, %305, %271
  %307 = phi float [ %182, %173 ], [ %262, %244 ], [ 0.000000e+00, %305 ], [ %300, %271 ]
  %308 = phi float [ %180, %173 ], [ %260, %244 ], [ 0.000000e+00, %305 ], [ %298, %271 ]
  %309 = phi float [ %178, %173 ], [ %258, %244 ], [ 1.000000e+00, %305 ], [ %296, %271 ]
  %310 = phi ptr [ %187, %173 ], [ %220, %244 ], [ %116, %305 ], [ %282, %271 ]
  %311 = phi i8 [ 1, %173 ], [ 1, %244 ], [ 0, %305 ], [ 1, %271 ]
  %312 = phi ptr [ %202, %173 ], [ null, %244 ], [ null, %305 ], [ null, %271 ]
  %313 = phi ptr [ %203, %173 ], [ %267, %244 ], [ null, %305 ], [ null, %271 ]
  %314 = phi ptr [ null, %173 ], [ %268, %244 ], [ null, %305 ], [ null, %271 ]
  %315 = phi ptr [ %119, %173 ], [ %119, %244 ], [ %119, %305 ], [ %302, %271 ]
  %316 = load ptr, ptr %5, align 8, !tbaa !66
  %317 = icmp eq ptr %316, null
  br i1 %317, label %548, label %318

318:                                              ; preds = %306
  %319 = icmp eq ptr %315, null
  br i1 %319, label %320, label %325

320:                                              ; preds = %318
  %321 = load ptr, ptr %4, align 8, !tbaa !66
  %322 = getelementptr inbounds %struct.Nurb, ptr %321, i64 0, i32 6
  %323 = load i32, ptr %322, align 8, !tbaa !52
  %324 = add nsw i32 %323, 1
  store i32 %324, ptr %322, align 8, !tbaa !52
  br label %325

325:                                              ; preds = %320, %318
  %326 = icmp eq i16 %1, 101
  br i1 %326, label %327, label %353

327:                                              ; preds = %325
  %328 = load float, ptr %316, align 4, !tbaa !70
  store float %328, ptr %310, align 4, !tbaa !70
  %329 = getelementptr inbounds float, ptr %316, i64 1
  %330 = load float, ptr %329, align 4, !tbaa !70
  %331 = getelementptr inbounds float, ptr %310, i64 1
  store float %330, ptr %331, align 4, !tbaa !70
  %332 = getelementptr inbounds float, ptr %316, i64 2
  %333 = load float, ptr %332, align 4, !tbaa !70
  %334 = getelementptr inbounds float, ptr %310, i64 2
  store float %333, ptr %334, align 4, !tbaa !70
  %335 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 1
  %336 = getelementptr inbounds [3 x [3 x float]], ptr %316, i64 0, i64 1
  %337 = load float, ptr %336, align 4, !tbaa !70
  store float %337, ptr %335, align 4, !tbaa !70
  %338 = getelementptr inbounds [3 x [3 x float]], ptr %316, i64 0, i64 1, i64 1
  %339 = load float, ptr %338, align 4, !tbaa !70
  %340 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 1, i64 1
  store float %339, ptr %340, align 4, !tbaa !70
  %341 = getelementptr inbounds [3 x [3 x float]], ptr %316, i64 0, i64 1, i64 2
  %342 = load float, ptr %341, align 4, !tbaa !70
  %343 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 1, i64 2
  store float %342, ptr %343, align 4, !tbaa !70
  %344 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 2
  %345 = getelementptr inbounds [3 x [3 x float]], ptr %316, i64 0, i64 2
  %346 = load float, ptr %345, align 4, !tbaa !70
  store float %346, ptr %344, align 4, !tbaa !70
  %347 = getelementptr inbounds [3 x [3 x float]], ptr %316, i64 0, i64 2, i64 1
  %348 = load float, ptr %347, align 4, !tbaa !70
  %349 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 2, i64 1
  store float %348, ptr %349, align 4, !tbaa !70
  %350 = getelementptr inbounds [3 x [3 x float]], ptr %316, i64 0, i64 2, i64 2
  %351 = load float, ptr %350, align 4, !tbaa !70
  %352 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 2, i64 2
  store float %351, ptr %352, align 4, !tbaa !70
  br label %548

353:                                              ; preds = %325
  %354 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 1
  call void @mul_v3_m4v3(ptr noundef nonnull %354, ptr noundef nonnull %7, ptr noundef %2) #19
  %355 = icmp eq ptr %313, null
  br i1 %355, label %361, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.BezTriple, ptr %313, i64 0, i32 5
  %358 = load i8, ptr %357, align 1, !tbaa !457
  %359 = getelementptr inbounds %struct.BezTriple, ptr %313, i64 0, i32 6
  %360 = load i8, ptr %359, align 2, !tbaa !458
  store i8 1, ptr %359, align 2, !tbaa !458
  store i8 1, ptr %357, align 1, !tbaa !457
  call void @BKE_nurb_handle_calc(ptr noundef nonnull %313, ptr noundef %312, ptr noundef %314, i8 noundef zeroext 0) #19
  store i8 %358, ptr %357, align 1, !tbaa !457
  store i8 %360, ptr %359, align 2, !tbaa !458
  br label %393

361:                                              ; preds = %353
  %362 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 1, i64 2
  %363 = load float, ptr %362, align 4, !tbaa !70
  %364 = fsub float %363, %307
  %365 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 1, i64 1
  %366 = load float, ptr %365, align 4, !tbaa !70
  %367 = fsub float %366, %308
  %368 = load float, ptr %354, align 4, !tbaa !70
  %369 = fsub float %368, %309
  %370 = load ptr, ptr %5, align 8, !tbaa !66
  %371 = load float, ptr %370, align 4, !tbaa !70
  %372 = fadd float %369, %371
  store float %372, ptr %310, align 4, !tbaa !70
  %373 = getelementptr inbounds float, ptr %370, i64 1
  %374 = load float, ptr %373, align 4, !tbaa !70
  %375 = fadd float %367, %374
  %376 = getelementptr inbounds float, ptr %310, i64 1
  store float %375, ptr %376, align 4, !tbaa !70
  %377 = getelementptr inbounds float, ptr %370, i64 2
  %378 = load float, ptr %377, align 4, !tbaa !70
  %379 = fadd float %364, %378
  %380 = getelementptr inbounds float, ptr %310, i64 2
  store float %379, ptr %380, align 4, !tbaa !70
  %381 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 2
  %382 = getelementptr inbounds [3 x [3 x float]], ptr %370, i64 0, i64 2
  %383 = load float, ptr %382, align 4, !tbaa !70
  %384 = fadd float %369, %383
  store float %384, ptr %381, align 4, !tbaa !70
  %385 = getelementptr inbounds [3 x [3 x float]], ptr %370, i64 0, i64 2, i64 1
  %386 = load float, ptr %385, align 4, !tbaa !70
  %387 = fadd float %367, %386
  %388 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 2, i64 1
  store float %387, ptr %388, align 4, !tbaa !70
  %389 = getelementptr inbounds [3 x [3 x float]], ptr %370, i64 0, i64 2, i64 2
  %390 = load float, ptr %389, align 4, !tbaa !70
  %391 = fadd float %364, %390
  %392 = getelementptr inbounds [3 x [3 x float]], ptr %310, i64 0, i64 2, i64 2
  store float %391, ptr %392, align 4, !tbaa !70
  br label %393

393:                                              ; preds = %361, %356
  br i1 %319, label %395, label %394

394:                                              ; preds = %393
  call void @BKE_nurb_handles_calc(ptr noundef nonnull %315) #19
  br label %548

395:                                              ; preds = %393
  %396 = load ptr, ptr %4, align 8, !tbaa !66
  call void @BKE_nurb_handles_calc(ptr noundef %396) #19
  br label %548

397:                                              ; preds = %120
  br i1 %118, label %398, label %548

398:                                              ; preds = %397
  %399 = getelementptr inbounds %struct.Nurb, ptr %121, i64 0, i32 7
  %400 = load i32, ptr %399, align 4, !tbaa !61
  %401 = icmp eq i32 %400, 1
  br i1 %401, label %402, label %548

402:                                              ; preds = %398
  %403 = load ptr, ptr %6, align 8, !tbaa !66
  %404 = getelementptr inbounds %struct.Nurb, ptr %121, i64 0, i32 17
  %405 = load ptr, ptr %404, align 8, !tbaa !62
  %406 = getelementptr inbounds %struct.Nurb, ptr %121, i64 0, i32 6
  %407 = load i32, ptr %406, align 8, !tbaa !52
  %408 = sext i32 %407 to i64
  %409 = getelementptr %struct.BPoint, ptr %405, i64 %408
  %410 = getelementptr %struct.BPoint, ptr %409, i64 -1
  %411 = icmp eq ptr %403, %410
  br i1 %411, label %412, label %455

412:                                              ; preds = %402
  %413 = getelementptr inbounds %struct.BPoint, ptr %403, i64 0, i32 3
  store i16 0, ptr %413, align 4, !tbaa !64
  %414 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %415 = add nsw i32 %407, 1
  %416 = sext i32 %415 to i64
  %417 = mul nsw i64 %416, 36
  %418 = call ptr %414(i64 noundef %417, ptr noundef nonnull @.str.217) #19
  %419 = load ptr, ptr %404, align 8, !tbaa !62
  %420 = load i32, ptr %406, align 8, !tbaa !52
  %421 = sext i32 %420 to i64
  %422 = mul nsw i64 %421, 36
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %418, ptr align 4 %419, i64 %422, i1 false)
  %423 = getelementptr inbounds %struct.EditNurb, ptr %12, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !77
  %425 = icmp ne ptr %424, null
  %426 = icmp sgt i32 %420, 0
  %427 = and i1 %426, %425
  br i1 %427, label %428, label %442

428:                                              ; preds = %412, %437
  %429 = phi ptr [ %439, %437 ], [ %419, %412 ]
  %430 = phi i32 [ %440, %437 ], [ 0, %412 ]
  %431 = phi ptr [ %438, %437 ], [ %418, %412 ]
  %432 = load ptr, ptr %423, align 8, !tbaa !77
  %433 = call ptr @BLI_ghash_popkey(ptr noundef %432, ptr noundef %429, ptr noundef null) #19
  %434 = icmp eq ptr %433, null
  br i1 %434, label %437, label %435

435:                                              ; preds = %428
  %436 = load ptr, ptr %423, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %436, ptr noundef %431, ptr noundef nonnull %433) #19
  br label %437

437:                                              ; preds = %435, %428
  %438 = getelementptr inbounds i8, ptr %431, i64 36
  %439 = getelementptr inbounds i8, ptr %429, i64 36
  %440 = add nuw nsw i32 %430, 1
  %441 = icmp eq i32 %440, %420
  br i1 %441, label %442, label %428, !llvm.loop !182

442:                                              ; preds = %437, %412
  %443 = load i32, ptr %406, align 8, !tbaa !52
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.BPoint, ptr %418, i64 %444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %445, ptr noundef nonnull align 4 dereferenceable(36) %403, i64 36, i1 false), !tbaa.struct !190
  %446 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %447 = load ptr, ptr %404, align 8, !tbaa !62
  call void %446(ptr noundef %447) #19
  store ptr %418, ptr %404, align 8, !tbaa !62
  %448 = load i32, ptr %406, align 8, !tbaa !52
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.BPoint, ptr %418, i64 %449
  %451 = getelementptr inbounds %struct.BPoint, ptr %418, i64 %449, i32 3
  %452 = load i16, ptr %451, align 4, !tbaa !64
  %453 = or i16 %452, 1
  store i16 %453, ptr %451, align 4, !tbaa !64
  %454 = getelementptr inbounds %struct.BPoint, ptr %450, i64 -1
  store ptr %454, ptr %6, align 8, !tbaa !66
  br label %509

455:                                              ; preds = %402
  %456 = icmp eq ptr %403, %405
  br i1 %456, label %457, label %493

457:                                              ; preds = %455
  %458 = getelementptr inbounds %struct.BPoint, ptr %403, i64 0, i32 3
  store i16 0, ptr %458, align 4, !tbaa !64
  %459 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %460 = add nsw i32 %407, 1
  %461 = sext i32 %460 to i64
  %462 = mul nsw i64 %461, 36
  %463 = call ptr %459(i64 noundef %462, ptr noundef nonnull @.str.218) #19
  %464 = getelementptr inbounds %struct.BPoint, ptr %463, i64 1
  %465 = load i32, ptr %406, align 8, !tbaa !52
  %466 = sext i32 %465 to i64
  %467 = mul nsw i64 %466, 36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %464, ptr align 4 %403, i64 %467, i1 false)
  %468 = getelementptr inbounds %struct.EditNurb, ptr %12, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !77
  %470 = icmp ne ptr %469, null
  %471 = icmp sgt i32 %465, 0
  %472 = and i1 %471, %470
  br i1 %472, label %473, label %487

473:                                              ; preds = %457, %482
  %474 = phi ptr [ %484, %482 ], [ %403, %457 ]
  %475 = phi i32 [ %485, %482 ], [ 0, %457 ]
  %476 = phi ptr [ %483, %482 ], [ %464, %457 ]
  %477 = load ptr, ptr %468, align 8, !tbaa !77
  %478 = call ptr @BLI_ghash_popkey(ptr noundef %477, ptr noundef %474, ptr noundef null) #19
  %479 = icmp eq ptr %478, null
  br i1 %479, label %482, label %480

480:                                              ; preds = %473
  %481 = load ptr, ptr %468, align 8, !tbaa !77
  call void @BLI_ghash_insert(ptr noundef %481, ptr noundef nonnull %476, ptr noundef nonnull %478) #19
  br label %482

482:                                              ; preds = %480, %473
  %483 = getelementptr inbounds i8, ptr %476, i64 36
  %484 = getelementptr inbounds i8, ptr %474, i64 36
  %485 = add nuw nsw i32 %475, 1
  %486 = icmp eq i32 %485, %465
  br i1 %486, label %487, label %473, !llvm.loop !182

487:                                              ; preds = %482, %457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %463, ptr noundef nonnull align 4 dereferenceable(36) %403, i64 36, i1 false), !tbaa.struct !190
  %488 = getelementptr inbounds %struct.BPoint, ptr %463, i64 0, i32 3
  %489 = load i16, ptr %488, align 4, !tbaa !64
  %490 = or i16 %489, 1
  store i16 %490, ptr %488, align 4, !tbaa !64
  %491 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %492 = load ptr, ptr %404, align 8, !tbaa !62
  call void %491(ptr noundef %492) #19
  store ptr %463, ptr %404, align 8, !tbaa !62
  store ptr %464, ptr %6, align 8, !tbaa !66
  br label %509

493:                                              ; preds = %455
  %494 = icmp eq i16 %1, 101
  br i1 %494, label %508, label %495

495:                                              ; preds = %493
  %496 = getelementptr inbounds %struct.BPoint, ptr %403, i64 0, i32 3
  store i16 0, ptr %496, align 4, !tbaa !64
  %497 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %498 = call ptr %497(i64 noundef 36, ptr noundef nonnull @.str.216) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %498, ptr noundef nonnull align 4 dereferenceable(36) %403, i64 36, i1 false), !tbaa.struct !190
  %499 = getelementptr inbounds %struct.BPoint, ptr %498, i64 0, i32 3
  %500 = load i16, ptr %499, align 4, !tbaa !64
  %501 = or i16 %500, 1
  store i16 %501, ptr %499, align 4, !tbaa !64
  %502 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !66
  %503 = call ptr %502(i64 noundef 88, ptr noundef nonnull @.str.215) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %503, ptr noundef nonnull align 8 dereferenceable(88) %121, i64 88, i1 false)
  call void @BLI_addtail(ptr noundef %12, ptr noundef %503) #19
  %504 = getelementptr inbounds %struct.Nurb, ptr %503, i64 0, i32 17
  store ptr %498, ptr %504, align 8, !tbaa !62
  %505 = getelementptr inbounds %struct.Nurb, ptr %503, i64 0, i32 11
  store i16 2, ptr %505, align 8, !tbaa !68
  %506 = getelementptr inbounds %struct.Nurb, ptr %503, i64 0, i32 6
  store i32 1, ptr %506, align 8, !tbaa !52
  %507 = getelementptr inbounds %struct.Nurb, ptr %503, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %507, i8 0, i64 16, i1 false)
  store ptr %503, ptr %4, align 8, !tbaa !66
  store ptr %498, ptr %6, align 8, !tbaa !66
  br label %509

508:                                              ; preds = %493
  store ptr null, ptr %6, align 8, !tbaa !66
  br label %509

509:                                              ; preds = %487, %508, %495, %442
  %510 = phi ptr [ %450, %442 ], [ %463, %487 ], [ %498, %495 ], [ %117, %508 ]
  %511 = phi i8 [ 1, %442 ], [ 1, %487 ], [ 1, %495 ], [ 0, %508 ]
  %512 = phi ptr [ %119, %442 ], [ %119, %487 ], [ %503, %495 ], [ %119, %508 ]
  %513 = load ptr, ptr %6, align 8, !tbaa !66
  %514 = icmp eq ptr %513, null
  br i1 %514, label %548, label %515

515:                                              ; preds = %509
  %516 = icmp eq i16 %1, 101
  br i1 %516, label %517, label %525

517:                                              ; preds = %515
  %518 = load float, ptr %513, align 4, !tbaa !70
  store float %518, ptr %510, align 4, !tbaa !70
  %519 = getelementptr inbounds float, ptr %513, i64 1
  %520 = load float, ptr %519, align 4, !tbaa !70
  %521 = getelementptr inbounds float, ptr %510, i64 1
  store float %520, ptr %521, align 4, !tbaa !70
  %522 = getelementptr inbounds float, ptr %513, i64 2
  %523 = load float, ptr %522, align 4, !tbaa !70
  %524 = getelementptr inbounds float, ptr %510, i64 2
  store float %523, ptr %524, align 4, !tbaa !70
  br label %540

525:                                              ; preds = %515
  call void @mul_v3_m4v3(ptr noundef %510, ptr noundef nonnull %7, ptr noundef %2) #19
  %526 = getelementptr inbounds [4 x float], ptr %510, i64 0, i64 3
  store float 1.000000e+00, ptr %526, align 4, !tbaa !70
  %527 = icmp eq ptr %512, null
  br i1 %527, label %528, label %547

528:                                              ; preds = %525
  %529 = load ptr, ptr %4, align 8, !tbaa !66
  %530 = getelementptr inbounds %struct.Nurb, ptr %529, i64 0, i32 11
  %531 = load i16, ptr %530, align 8, !tbaa !68
  %532 = icmp slt i16 %531, 4
  br i1 %532, label %533, label %540

533:                                              ; preds = %528
  %534 = sext i16 %531 to i32
  %535 = getelementptr inbounds %struct.Nurb, ptr %529, i64 0, i32 6
  %536 = load i32, ptr %535, align 8, !tbaa !52
  %537 = icmp slt i32 %536, %534
  br i1 %537, label %540, label %538

538:                                              ; preds = %533
  %539 = add i16 %531, 1
  store i16 %539, ptr %530, align 8, !tbaa !68
  br label %540

540:                                              ; preds = %528, %533, %538, %517
  %541 = icmp eq ptr %512, null
  br i1 %541, label %542, label %547

542:                                              ; preds = %540
  %543 = load ptr, ptr %4, align 8, !tbaa !66
  %544 = getelementptr inbounds %struct.Nurb, ptr %543, i64 0, i32 6
  %545 = load i32, ptr %544, align 8, !tbaa !52
  %546 = add nsw i32 %545, 1
  store i32 %546, ptr %544, align 8, !tbaa !52
  call void @BKE_nurb_knot_calc_u(ptr noundef %543) #19
  br label %548

547:                                              ; preds = %525, %540
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %512) #19
  br label %548

548:                                              ; preds = %115, %397, %398, %542, %547, %509, %306, %394, %395, %327
  %549 = phi ptr [ %116, %397 ], [ %116, %547 ], [ %116, %542 ], [ %116, %509 ], [ %116, %398 ], [ %310, %327 ], [ %310, %394 ], [ %310, %395 ], [ %310, %306 ], [ %116, %115 ]
  %550 = phi ptr [ %117, %397 ], [ %510, %547 ], [ %510, %542 ], [ %510, %509 ], [ %117, %398 ], [ %117, %327 ], [ %117, %394 ], [ %117, %395 ], [ %117, %306 ], [ %117, %115 ]
  %551 = phi i8 [ 1, %397 ], [ %511, %547 ], [ %511, %542 ], [ %511, %509 ], [ 0, %398 ], [ %311, %327 ], [ %311, %394 ], [ %311, %395 ], [ %311, %306 ], [ 1, %115 ]
  %552 = icmp eq i8 %551, 0
  br i1 %552, label %587, label %553

553:                                              ; preds = %548
  %554 = load ptr, ptr %4, align 8, !tbaa !66
  %555 = getelementptr inbounds %struct.Nurb, ptr %554, i64 0, i32 18
  %556 = load ptr, ptr %555, align 8, !tbaa !53
  %557 = icmp eq ptr %556, null
  %558 = select i1 %557, ptr %550, ptr %549
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %10, ptr noundef %554, ptr noundef %558) #19
  %559 = load ptr, ptr %4, align 8, !tbaa !66
  call void @BKE_nurb_test2D(ptr noundef %559) #19
  %560 = load ptr, ptr %9, align 8, !tbaa !46
  %561 = call ptr @BKE_animdata_from_id(ptr noundef %560) #19
  %562 = getelementptr inbounds %struct.Curve, ptr %560, i64 0, i32 4
  %563 = load ptr, ptr %562, align 8, !tbaa !47
  %564 = getelementptr inbounds %struct.EditNurb, ptr %563, i64 0, i32 1
  %565 = load ptr, ptr %564, align 8, !tbaa !77
  %566 = icmp eq ptr %565, null
  br i1 %566, label %584, label %567

567:                                              ; preds = %553
  %568 = call ptr @BKE_animdata_from_id(ptr noundef %560) #19
  %569 = icmp eq ptr %568, null
  br i1 %569, label %584, label %570

570:                                              ; preds = %567
  %571 = load ptr, ptr %568, align 8, !tbaa !79
  %572 = icmp eq ptr %571, null
  br i1 %572, label %573, label %577

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct.AnimData, ptr %568, i64 0, i32 5
  %575 = load ptr, ptr %574, align 8, !tbaa !81
  %576 = icmp eq ptr %575, null
  br i1 %576, label %584, label %577

577:                                              ; preds = %573, %570
  %578 = load ptr, ptr %561, align 8, !tbaa !79
  %579 = icmp eq ptr %578, null
  br i1 %579, label %582, label %580

580:                                              ; preds = %577
  %581 = getelementptr inbounds %struct.bAction, ptr %578, i64 0, i32 1
  call fastcc void @curve_rename_fcurves(ptr noundef %560, ptr noundef nonnull %581)
  br label %582

582:                                              ; preds = %580, %577
  %583 = getelementptr inbounds %struct.AnimData, ptr %561, i64 0, i32 5
  call fastcc void @curve_rename_fcurves(ptr noundef %560, ptr noundef nonnull %583)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef %8) #19
  br label %584

584:                                              ; preds = %573, %567, %553, %582
  %585 = load ptr, ptr %9, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %585) #19
  %586 = load ptr, ptr %9, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %586, i16 noundef signext 0) #19
  br label %587

587:                                              ; preds = %548, %110, %584
  %588 = phi i32 [ 4, %584 ], [ 2, %110 ], [ 2, %548 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i32 %588
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @findselectedNurbvert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #15 {
  store ptr null, ptr %1, align 8, !tbaa !66
  store ptr null, ptr %2, align 8, !tbaa !66
  store ptr null, ptr %3, align 8, !tbaa !66
  %5 = load ptr, ptr %0, align 8, !tbaa !66
  %6 = icmp eq ptr %5, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %4, %85
  %8 = phi ptr [ %86, %85 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !52
  br i1 %11, label %14, label %53

14:                                               ; preds = %7
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %85, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  br label %19

19:                                               ; preds = %16, %50
  %20 = phi i32 [ %22, %50 ], [ %13, %16 ]
  %21 = phi ptr [ %51, %50 ], [ %18, %16 ]
  %22 = add nsw i32 %20, -1
  %23 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  %24 = load i8, ptr %23, align 1, !tbaa !57
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  %29 = load i8, ptr %28, align 4, !tbaa !59
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %34 = load i8, ptr %33, align 1, !tbaa !60
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %32, %27, %19
  %38 = load ptr, ptr %1, align 8, !tbaa !66
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %8
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %37
  %43 = load ptr, ptr %2, align 8, !tbaa !66
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr %3, align 8, !tbaa !66
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %42
  store ptr null, ptr %3, align 8, !tbaa !66
  store ptr null, ptr %2, align 8, !tbaa !66
  br label %50

49:                                               ; preds = %45
  store ptr %21, ptr %2, align 8, !tbaa !66
  store ptr %8, ptr %1, align 8, !tbaa !66
  br label %50

50:                                               ; preds = %49, %48, %32
  %51 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %52 = icmp eq i32 %22, 0
  br i1 %52, label %85, label %19, !llvm.loop !461

53:                                               ; preds = %7
  %54 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 7
  %55 = load i32, ptr %54, align 4, !tbaa !61
  %56 = mul nsw i32 %55, %13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  br label %61

61:                                               ; preds = %58, %82
  %62 = phi i32 [ %64, %82 ], [ %56, %58 ]
  %63 = phi ptr [ %83, %82 ], [ %60, %58 ]
  %64 = add nsw i32 %62, -1
  %65 = getelementptr inbounds %struct.BPoint, ptr %63, i64 0, i32 3
  %66 = load i16, ptr %65, align 4, !tbaa !64
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %61
  %70 = load ptr, ptr %1, align 8, !tbaa !66
  %71 = icmp eq ptr %70, null
  %72 = icmp eq ptr %70, %8
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load ptr, ptr %2, align 8, !tbaa !66
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load ptr, ptr %3, align 8, !tbaa !66
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77, %74
  store ptr null, ptr %3, align 8, !tbaa !66
  store ptr null, ptr %2, align 8, !tbaa !66
  br label %82

81:                                               ; preds = %77
  store ptr %63, ptr %3, align 8, !tbaa !66
  store ptr %8, ptr %1, align 8, !tbaa !66
  br label %82

82:                                               ; preds = %81, %80, %61
  %83 = getelementptr inbounds %struct.BPoint, ptr %63, i64 1
  %84 = icmp eq i32 %64, 0
  br i1 %84, label %85, label %61, !llvm.loop !462

85:                                               ; preds = %82, %50, %53, %14
  %86 = load ptr, ptr %8, align 8, !tbaa !66
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %7, !llvm.loop !463

88:                                               ; preds = %69, %37
  %89 = phi ptr [ %1, %37 ], [ %3, %69 ]
  %90 = phi ptr [ %3, %37 ], [ %2, %69 ]
  %91 = phi ptr [ %2, %37 ], [ %1, %69 ]
  store ptr null, ptr %89, align 8, !tbaa !66
  store ptr null, ptr %90, align 8, !tbaa !66
  store ptr null, ptr %91, align 8, !tbaa !66
  br label %92

92:                                               ; preds = %85, %88, %4
  ret void
}

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @ED_view3d_win_to_3d_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @snapObjectsContext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #6

declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @select_adjacent_cp(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #9 {
  %3 = sext i16 %1 to i32
  %4 = icmp eq i16 %1, 0
  br i1 %4, label %134, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %134, label %8

8:                                                ; preds = %5
  %9 = icmp slt i16 %1, 0
  %10 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %11 = sext i16 %1 to i64
  %12 = sext i16 %1 to i64
  %13 = icmp slt i16 %1, 0
  %14 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %15 = sext i16 %1 to i64
  %16 = sext i16 %1 to i64
  br label %17

17:                                               ; preds = %8, %131
  %18 = phi ptr [ %6, %8 ], [ %132, %131 ]
  %19 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !50
  %21 = icmp eq i16 %20, 1
  %22 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !52
  br i1 %21, label %24, label %79

24:                                               ; preds = %17
  %25 = icmp ne i32 %23, 0
  %26 = icmp sgt i32 %23, %14
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %131

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = sext i32 %23 to i64
  %32 = getelementptr %struct.BezTriple, ptr %30, i64 %31
  %33 = getelementptr %struct.BezTriple, ptr %32, i64 -1
  %34 = select i1 %13, ptr %33, ptr %30
  %35 = sdiv i32 %3, %14
  %36 = sub nsw i32 %3, %35
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 0, %37
  br label %39

39:                                               ; preds = %28, %71
  %40 = phi i32 [ %23, %28 ], [ %43, %71 ]
  %41 = phi ptr [ %34, %28 ], [ %75, %71 ]
  %42 = phi i8 [ 0, %28 ], [ %72, %71 ]
  %43 = add nsw i32 %40, -1
  %44 = icmp eq i8 %42, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 10
  %47 = load i8, ptr %46, align 2, !tbaa !157
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %51 = load i8, ptr %50, align 4, !tbaa !59
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 %15, i32 8
  %56 = load i8, ptr %55, align 4, !tbaa !59
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 %15, i32 10
  %61 = load i8, ptr %60, align 2, !tbaa !157
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 %15, i32 7
  %65 = load i8, ptr %64, align 1, !tbaa !57
  %66 = or i8 %65, 1
  store i8 %66, ptr %64, align 1, !tbaa !57
  %67 = or disjoint i8 %56, 1
  store i8 %67, ptr %55, align 4, !tbaa !59
  %68 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 %15, i32 9
  %69 = load i8, ptr %68, align 1, !tbaa !60
  %70 = or i8 %69, 1
  store i8 %70, ptr %68, align 1, !tbaa !60
  br label %71

71:                                               ; preds = %39, %45, %49, %63, %59, %54
  %72 = phi i8 [ %42, %54 ], [ 1, %63 ], [ %42, %59 ], [ 0, %49 ], [ 0, %45 ], [ 0, %39 ]
  %73 = phi i64 [ %15, %54 ], [ %15, %63 ], [ %15, %59 ], [ %16, %49 ], [ %16, %45 ], [ %16, %39 ]
  %74 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 %73
  %75 = getelementptr inbounds %struct.BezTriple, ptr %74, i64 %38
  %76 = icmp ne i32 %43, 0
  %77 = icmp sgt i32 %43, %14
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %39, label %131, !llvm.loop !464

79:                                               ; preds = %17
  %80 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 7
  %81 = load i32, ptr %80, align 4, !tbaa !61
  %82 = mul nsw i32 %81, %23
  %83 = icmp ne i32 %82, 0
  %84 = icmp sgt i32 %82, %10
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %131

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 17
  %88 = load ptr, ptr %87, align 8, !tbaa !62
  %89 = sext i32 %82 to i64
  %90 = getelementptr %struct.BPoint, ptr %88, i64 %89
  %91 = getelementptr %struct.BPoint, ptr %90, i64 -1
  %92 = select i1 %9, ptr %91, ptr %88
  %93 = sdiv i32 %3, %10
  %94 = sub nsw i32 %3, %93
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 0, %95
  br label %97

97:                                               ; preds = %86, %123
  %98 = phi i32 [ %82, %86 ], [ %101, %123 ]
  %99 = phi i8 [ 0, %86 ], [ %125, %123 ]
  %100 = phi ptr [ %92, %86 ], [ %127, %123 ]
  %101 = add nsw i32 %98, -1
  %102 = icmp eq i8 %99, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.BPoint, ptr %100, i64 0, i32 4
  %105 = load i16, ptr %104, align 2, !tbaa !159
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.BPoint, ptr %100, i64 0, i32 3
  %109 = load i16, ptr %108, align 4, !tbaa !64
  %110 = and i16 %109, 1
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.BPoint, ptr %100, i64 %11, i32 3
  %114 = load i16, ptr %113, align 4, !tbaa !64
  %115 = and i16 %114, 1
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.BPoint, ptr %100, i64 %11, i32 4
  %119 = load i16, ptr %118, align 2, !tbaa !159
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = or disjoint i16 %114, 1
  store i16 %122, ptr %113, align 4, !tbaa !64
  br label %123

123:                                              ; preds = %97, %103, %107, %121, %117, %112
  %124 = phi i64 [ %11, %112 ], [ %11, %117 ], [ %11, %121 ], [ %12, %107 ], [ %12, %103 ], [ %12, %97 ]
  %125 = phi i8 [ %99, %112 ], [ %99, %117 ], [ 1, %121 ], [ 0, %107 ], [ 0, %103 ], [ 0, %97 ]
  %126 = getelementptr inbounds %struct.BPoint, ptr %100, i64 %124
  %127 = getelementptr inbounds %struct.BPoint, ptr %126, i64 %96
  %128 = icmp ne i32 %101, 0
  %129 = icmp sgt i32 %101, %10
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %97, label %131, !llvm.loop !465

131:                                              ; preds = %123, %71, %79, %24
  %132 = load ptr, ptr %18, align 8, !tbaa !66
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %17, !llvm.loop !466

134:                                              ; preds = %131, %5, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

declare float @BLI_frand() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @free_fcurves(ptr noundef) local_unnamed_addr #6

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @dupli_keyIndexHash(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @BLI_ghash_size(ptr noundef %0) #19
  %3 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.230, i32 noundef %2) #19
  %4 = tail call ptr @BLI_ghashIterator_new(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !467
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %16, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct._gh_Entry, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !469
  %12 = getelementptr inbounds %struct._gh_Entry, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !471
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %15 = tail call ptr %14(i64 noundef 40, ptr noundef nonnull @.str.231) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false)
  tail call void @BLI_ghash_insert(ptr noundef %3, ptr noundef %11, ptr noundef %15) #19
  tail call void @BLI_ghashIterator_step(ptr noundef %4) #19
  %16 = load ptr, ptr %5, align 8, !tbaa !467
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !472

18:                                               ; preds = %8, %1
  tail call void @BLI_ghashIterator_free(ptr noundef %4) #19
  ret ptr %3
}

declare void @copy_fcurves(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #6

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #6

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #6

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #6

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @BKE_displist_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !40, i64 136}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!35, !37, i64 296}
!47 = !{!48, !37, i64 152}
!48 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !43, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !44, i64 252, !44, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !49, i64 504, !44, i64 512, !44, i64 516, !44, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!49 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!50 = !{!51, !40, i64 16}
!51 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!52 = !{!51, !41, i64 24}
!53 = !{!51, !37, i64 72}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !38, i64 51}
!58 = !{!"BezTriple", !38, i64 0, !44, i64 36, !44, i64 40, !44, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !44, i64 56, !44, i64 60, !44, i64 64, !38, i64 68}
!59 = !{!58, !38, i64 52}
!60 = !{!58, !38, i64 53}
!61 = !{!51, !41, i64 28}
!62 = !{!51, !37, i64 64}
!63 = distinct !{!63, !55, !56}
!64 = !{!65, !40, i64 24}
!65 = !{!"BPoint", !38, i64 0, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !44, i64 28, !44, i64 32}
!66 = !{!37, !37, i64 0}
!67 = !{!51, !37, i64 48}
!68 = !{!51, !40, i64 40}
!69 = !{!51, !40, i64 44}
!70 = !{!44, !44, i64 0}
!71 = distinct !{!71, !55, !56}
!72 = !{!51, !37, i64 56}
!73 = !{!51, !40, i64 42}
!74 = !{!51, !40, i64 46}
!75 = distinct !{!75, !55, !56}
!76 = distinct !{!76, !55, !56}
!77 = !{!78, !37, i64 16}
!78 = !{!"EditNurb", !43, i64 0, !37, i64 16, !41, i64 24, !38, i64 28}
!79 = !{!80, !37, i64 0}
!80 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !37, i64 40, !43, i64 48, !43, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !44, i64 92}
!81 = !{!80, !37, i64 48}
!82 = !{!83, !41, i64 12}
!83 = !{!"", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !37, i64 32}
!84 = !{!83, !41, i64 16}
!85 = !{!83, !38, i64 24}
!86 = distinct !{!86, !55, !56}
!87 = distinct !{!87, !55, !56}
!88 = distinct !{!88, !55, !56}
!89 = !{!43, !37, i64 0}
!90 = !{!91, !37, i64 0}
!91 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !37, i64 48, !37, i64 56, !41, i64 64, !44, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !37, i64 80, !41, i64 88, !38, i64 92, !44, i64 104, !44, i64 108}
!92 = !{!91, !37, i64 80}
!93 = distinct !{!93, !55, !56}
!94 = distinct !{!94, !55, !56}
!95 = distinct !{!95, !55, !56}
!96 = !{i64 0, i64 8, !66, i64 8, i64 8, !66}
!97 = !{!98, !37, i64 0}
!98 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!99 = !{!35, !37, i64 216}
!100 = !{!35, !40, i64 138}
!101 = !{!35, !41, i64 140}
!102 = !{!41, !41, i64 0}
!103 = !{!35, !41, i64 144}
!104 = !{!35, !41, i64 148}
!105 = !{!106, !41, i64 16}
!106 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!107 = !{!108, !41, i64 272}
!108 = !{!"HookModifierData", !106, i64 0, !37, i64 112, !38, i64 120, !38, i64 184, !38, i64 248, !44, i64 260, !37, i64 264, !41, i64 272, !44, i64 276, !38, i64 280}
!109 = !{!108, !37, i64 264}
!110 = distinct !{!110, !55, !56}
!111 = distinct !{!111, !55, !56}
!112 = distinct !{!112, !55, !56}
!113 = distinct !{!113, !55, !56}
!114 = !{!48, !37, i64 192}
!115 = !{!78, !41, i64 24}
!116 = !{!117, !40, i64 208}
!117 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !43, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !41, i64 220}
!118 = !{!119, !40, i64 28}
!119 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !44, i64 176, !44, i64 180}
!120 = distinct !{!120, !55, !56}
!121 = distinct !{!121, !55, !56}
!122 = !{!83, !37, i64 0}
!123 = distinct !{!123, !55, !56}
!124 = !{!58, !44, i64 36}
!125 = distinct !{!125, !55, !56}
!126 = !{!65, !44, i64 16}
!127 = distinct !{!127, !55, !56}
!128 = distinct !{!128, !55, !56}
!129 = !{!117, !41, i64 168}
!130 = !{!119, !37, i64 40}
!131 = !{!117, !37, i64 128}
!132 = distinct !{!132, !55, !56}
!133 = distinct !{!133, !55, !56}
!134 = distinct !{!134, !55, !56}
!135 = !{!83, !41, i64 8}
!136 = distinct !{!136, !55, !56}
!137 = distinct !{!137, !55, !56}
!138 = distinct !{!138, !55, !56}
!139 = distinct !{!139, !55, !56}
!140 = distinct !{!140, !55, !56}
!141 = distinct !{!141, !55, !56}
!142 = distinct !{!142, !55, !56}
!143 = !{!119, !41, i64 32}
!144 = distinct !{!144, !55, !56}
!145 = distinct !{!145, !55, !56}
!146 = !{!35, !40, i64 1266}
!147 = !{!78, !37, i64 0}
!148 = !{!83, !41, i64 20}
!149 = !{!83, !37, i64 32}
!150 = distinct !{!150, !55, !56}
!151 = distinct !{!151, !55, !56}
!152 = !{!51, !37, i64 0}
!153 = distinct !{!153, !55, !56}
!154 = distinct !{!154, !55, !56}
!155 = distinct !{!155, !55, !56}
!156 = distinct !{!156, !55, !56}
!157 = !{!58, !38, i64 54}
!158 = distinct !{!158, !55, !56}
!159 = !{!65, !40, i64 26}
!160 = distinct !{!160, !55, !56}
!161 = distinct !{!161, !55, !56}
!162 = distinct !{!162, !55, !56}
!163 = distinct !{!163, !55, !56}
!164 = distinct !{!164, !55, !56}
!165 = !{!166, !37, i64 0}
!166 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !167, i64 152, !40, i64 184}
!167 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!168 = !{!166, !37, i64 8}
!169 = !{!166, !37, i64 24}
!170 = !{!166, !37, i64 32}
!171 = !{!166, !37, i64 72}
!172 = !{!166, !40, i64 184}
!173 = !{!174, !37, i64 32}
!174 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!175 = !{!176, !37, i64 120}
!176 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!177 = !{!48, !41, i64 100}
!178 = distinct !{!178, !55, !56}
!179 = distinct !{!179, !55, !56}
!180 = distinct !{!180, !55, !56}
!181 = distinct !{!181, !55, !56}
!182 = distinct !{!182, !55, !56}
!183 = distinct !{!183, !55, !56}
!184 = distinct !{!184, !55, !56}
!185 = distinct !{!185, !55, !56}
!186 = distinct !{!186, !55, !56}
!187 = distinct !{!187, !55, !56}
!188 = distinct !{!188, !55, !56}
!189 = distinct !{!189, !55, !56}
!190 = !{i64 0, i64 16, !191, i64 16, i64 4, !70, i64 20, i64 4, !70, i64 24, i64 2, !192, i64 26, i64 2, !192, i64 28, i64 4, !70, i64 32, i64 4, !70}
!191 = !{!38, !38, i64 0}
!192 = !{!40, !40, i64 0}
!193 = distinct !{!193, !55, !56}
!194 = distinct !{!194, !55, !56}
!195 = !{!48, !41, i64 292}
!196 = !{!48, !41, i64 296}
!197 = distinct !{!197, !55, !56}
!198 = !{!166, !37, i64 48}
!199 = !{!166, !37, i64 88}
!200 = !{!176, !37, i64 112}
!201 = !{!58, !44, i64 40}
!202 = distinct !{!202, !55, !56}
!203 = !{!65, !44, i64 20}
!204 = distinct !{!204, !55, !56}
!205 = distinct !{!205, !55, !56}
!206 = !{!58, !44, i64 44}
!207 = distinct !{!207, !55, !56}
!208 = !{!65, !44, i64 28}
!209 = distinct !{!209, !55, !56}
!210 = distinct !{!210, !55, !56}
!211 = distinct !{!211, !55, !56}
!212 = distinct !{!212, !55, !56}
!213 = distinct !{!213, !55, !56}
!214 = distinct !{!214, !55, !56}
!215 = distinct !{!215, !55, !56}
!216 = distinct !{!216, !55, !56}
!217 = distinct !{!217, !55, !56}
!218 = distinct !{!218, !55, !56}
!219 = distinct !{!219, !55, !56}
!220 = distinct !{!220, !55, !56}
!221 = !{!48, !40, i64 248}
!222 = distinct !{!222, !55, !56}
!223 = distinct !{!223, !55, !56}
!224 = !{!51, !40, i64 20}
!225 = distinct !{!225, !55, !56}
!226 = distinct !{!226, !55, !56}
!227 = distinct !{!227, !55, !56}
!228 = distinct !{!228, !55, !56}
!229 = distinct !{!229, !55, !56}
!230 = distinct !{!230, !55, !56}
!231 = distinct !{!231, !55, !56}
!232 = distinct !{!232, !55, !56}
!233 = distinct !{!233, !55, !56}
!234 = distinct !{!234, !55, !56}
!235 = distinct !{!235, !55, !56}
!236 = distinct !{!236, !55, !56}
!237 = distinct !{!237, !55, !56}
!238 = distinct !{!238, !55, !56}
!239 = distinct !{!239, !55, !56}
!240 = distinct !{!240, !55, !56}
!241 = distinct !{!241, !55, !56}
!242 = distinct !{!242, !55, !56}
!243 = distinct !{!243, !55, !56}
!244 = distinct !{!244, !55, !56}
!245 = distinct !{!245, !55, !56}
!246 = distinct !{!246, !55, !56}
!247 = distinct !{!247, !55, !56}
!248 = distinct !{!248, !55, !56}
!249 = distinct !{!249, !55, !56}
!250 = distinct !{!250, !55, !56}
!251 = distinct !{!251, !55, !56}
!252 = distinct !{!252, !55, !56}
!253 = !{!166, !37, i64 104}
!254 = distinct !{!254, !55, !56}
!255 = distinct !{!255, !55, !56}
!256 = distinct !{!256, !55, !56}
!257 = distinct !{!257, !55, !56}
!258 = !{!259, !37, i64 16}
!259 = !{!"NurbSort", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24}
!260 = distinct !{!260, !55, !56}
!261 = distinct !{!261, !55, !56}
!262 = !{!43, !37, i64 8}
!263 = !{!259, !37, i64 0}
!264 = distinct !{!264, !55, !56}
!265 = distinct !{!265, !55, !56}
!266 = distinct !{!266, !55, !56}
!267 = distinct !{!267, !55, !56}
!268 = distinct !{!268, !55, !56}
!269 = distinct !{!269, !55, !56}
!270 = distinct !{!270, !55, !56}
!271 = distinct !{!271, !55, !56}
!272 = distinct !{!272, !55, !56}
!273 = distinct !{!273, !55, !56}
!274 = !{!275, !44, i64 24}
!275 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !41, i64 28, !41, i64 32, !38, i64 36}
!276 = !{!275, !41, i64 28}
!277 = !{!275, !41, i64 32}
!278 = !{!279, !37, i64 16}
!279 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!280 = !{!279, !37, i64 40}
!281 = !{!275, !37, i64 16}
!282 = !{!275, !37, i64 8}
!283 = !{!275, !37, i64 0}
!284 = !{i8 0, i8 2}
!285 = distinct !{!285, !55, !56}
!286 = distinct !{!286, !55, !56}
!287 = distinct !{!287, !55, !56}
!288 = distinct !{!288, !55, !56}
!289 = distinct !{!289, !55, !56}
!290 = distinct !{!290, !55, !56}
!291 = !{i32 2, i32 5}
!292 = !{!279, !37, i64 0}
!293 = !{!294, !37, i64 264}
!294 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !295, i64 280, !304, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !305, i64 4400, !306, i64 4416, !309, i64 4600, !37, i64 4608, !310, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !297, i64 4664, !298, i64 4824, !311, i64 4888, !37, i64 4952}
!295 = !{!"RenderData", !296, i64 0, !37, i64 248, !37, i64 256, !299, i64 264, !300, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !301, i64 544, !301, i64 560, !302, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !303, i64 2616, !41, i64 3976, !41, i64 3980}
!296 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !297, i64 24, !298, i64 184}
!297 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!298 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!299 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!300 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!301 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!302 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!303 = !{!"BakeData", !296, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!304 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!305 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!306 = !{!"GameData", !305, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !307, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !308, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!307 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!308 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!309 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!310 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!311 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!312 = !{!313, !40, i64 434}
!313 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !314, i64 64, !316, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !317, i64 480, !318, i64 608}
!314 = !{!"ImagePaintSettings", !315, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!315 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!316 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!317 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!318 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!319 = !{!313, !38, i64 431}
!320 = !{!279, !37, i64 32}
!321 = !{!279, !37, i64 24}
!322 = distinct !{!322, !55, !56}
!323 = distinct !{!323, !55, !56}
!324 = distinct !{!324, !55, !56}
!325 = distinct !{!325, !55, !56}
!326 = distinct !{!326, !55, !56}
!327 = distinct !{!327, !55, !56}
!328 = !{!176, !37, i64 88}
!329 = distinct !{!329, !55, !56}
!330 = distinct !{!330, !55, !56}
!331 = distinct !{!331, !55, !56}
!332 = distinct !{!332, !55, !56}
!333 = distinct !{!333, !55, !56}
!334 = distinct !{!334, !55, !56}
!335 = distinct !{!335, !55, !56}
!336 = distinct !{!336, !55, !56}
!337 = distinct !{!337, !55, !56}
!338 = distinct !{!338, !55, !56}
!339 = distinct !{!339, !55, !56}
!340 = distinct !{!340, !55, !56}
!341 = distinct !{!341, !55, !56}
!342 = distinct !{!342, !55, !56}
!343 = distinct !{!343, !55, !56}
!344 = distinct !{!344, !55, !56}
!345 = distinct !{!345, !55, !56}
!346 = distinct !{!346, !55, !56}
!347 = distinct !{!347, !55, !56}
!348 = distinct !{!348, !55, !56}
!349 = distinct !{!349, !55, !56}
!350 = distinct !{!350, !55, !56}
!351 = distinct !{!351, !55, !56}
!352 = distinct !{!352, !55, !56}
!353 = distinct !{!353, !55, !56}
!354 = distinct !{!354, !55, !56}
!355 = distinct !{!355, !55, !56}
!356 = distinct !{!356, !55, !56}
!357 = distinct !{!357, !55, !56}
!358 = distinct !{!358, !55, !56}
!359 = distinct !{!359, !55, !56}
!360 = distinct !{!360, !55, !56}
!361 = distinct !{!361, !55, !56}
!362 = distinct !{!362, !55, !56}
!363 = distinct !{!363, !55, !56}
!364 = distinct !{!364, !55, !56}
!365 = distinct !{!365, !55, !56}
!366 = !{!51, !40, i64 22}
!367 = distinct !{!367, !55, !56}
!368 = !{!369, !37, i64 32}
!369 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !370, i64 16}
!370 = !{!"PointerRNA", !371, i64 0, !37, i64 8, !37, i64 16}
!371 = !{!"", !37, i64 0}
!372 = !{!48, !37, i64 136}
!373 = !{!35, !41, i64 456}
!374 = !{!51, !40, i64 18}
!375 = distinct !{!375, !55, !56}
!376 = distinct !{!376, !55, !56}
!377 = distinct !{!377, !55, !56}
!378 = distinct !{!378, !55, !56}
!379 = distinct !{!379, !55, !56}
!380 = distinct !{!380, !55, !56}
!381 = distinct !{!381, !55, !56}
!382 = !{!383, !37, i64 24}
!383 = !{!"", !43, i64 0, !41, i64 16, !37, i64 24, !43, i64 32, !43, i64 48, !41, i64 64}
!384 = distinct !{!384, !55, !56}
!385 = !{!383, !41, i64 16}
!386 = !{!383, !41, i64 64}
!387 = distinct !{!387, !55, !56}
!388 = !{!35, !37, i64 1280}
!389 = distinct !{!389, !55, !56}
!390 = !{!48, !40, i64 246}
!391 = !{!91, !37, i64 16}
!392 = distinct !{!392, !55, !56}
!393 = distinct !{!393, !55, !56}
!394 = distinct !{!394, !55, !56}
!395 = distinct !{!395, !55, !56}
!396 = distinct !{!396, !55, !56}
!397 = distinct !{!397, !55, !56}
!398 = distinct !{!398, !55, !56}
!399 = distinct !{!399, !55, !56}
!400 = distinct !{!400, !55, !56}
!401 = distinct !{!401, !55, !56}
!402 = distinct !{!402, !55, !56}
!403 = distinct !{!403, !55, !56}
!404 = distinct !{!404, !55, !56}
!405 = distinct !{!405, !55, !56}
!406 = distinct !{!406, !55, !56}
!407 = distinct !{!407, !55, !56}
!408 = !{!98, !41, i64 2100}
!409 = distinct !{!409, !55, !56}
!410 = distinct !{!410, !55, !56}
!411 = distinct !{!411, !55, !56}
!412 = distinct !{!412, !55, !56}
!413 = distinct !{!413, !55, !56}
!414 = distinct !{!414, !55, !56}
!415 = distinct !{!415, !55, !56}
!416 = distinct !{!416, !55, !56}
!417 = distinct !{!417, !55, !56}
!418 = distinct !{!418, !55, !56}
!419 = distinct !{!419, !55, !56}
!420 = distinct !{!420, !55, !56}
!421 = distinct !{!421, !55, !56}
!422 = distinct !{!422, !55, !56}
!423 = distinct !{!423, !55, !56}
!424 = distinct !{!424, !55, !56}
!425 = distinct !{!425, !55, !56}
!426 = distinct !{!426, !55, !56}
!427 = distinct !{!427, !55, !56}
!428 = distinct !{!428, !55, !56}
!429 = distinct !{!429, !55, !56}
!430 = distinct !{!430, !55, !56}
!431 = distinct !{!431, !55, !56}
!432 = distinct !{!432, !55, !56}
!433 = distinct !{!433, !55, !56}
!434 = distinct !{!434, !55, !56}
!435 = distinct !{!435, !55, !56}
!436 = distinct !{!436, !55, !56}
!437 = distinct !{!437, !55, !56}
!438 = distinct !{!438, !55, !56}
!439 = distinct !{!439, !55, !56}
!440 = distinct !{!440, !55, !56}
!441 = distinct !{!441, !55, !56}
!442 = distinct !{!442, !55, !56}
!443 = distinct !{!443, !55, !56}
!444 = distinct !{!444, !55, !56}
!445 = distinct !{!445, !55, !56}
!446 = distinct !{!446, !55, !56}
!447 = distinct !{!447, !55, !56}
!448 = distinct !{!448, !55, !56}
!449 = distinct !{!449, !55, !56}
!450 = !{!51, !40, i64 36}
!451 = !{!51, !40, i64 38}
!452 = distinct !{!452, !55, !56}
!453 = distinct !{!453, !55, !56}
!454 = distinct !{!454, !55, !56}
!455 = distinct !{!455, !55, !56}
!456 = distinct !{!456, !55, !56}
!457 = !{!58, !38, i64 49}
!458 = !{!58, !38, i64 50}
!459 = !{!48, !40, i64 284}
!460 = !{i64 0, i64 36, !191, i64 36, i64 4, !70, i64 40, i64 4, !70, i64 44, i64 4, !70, i64 48, i64 1, !191, i64 49, i64 1, !191, i64 50, i64 1, !191, i64 51, i64 1, !191, i64 52, i64 1, !191, i64 53, i64 1, !191, i64 54, i64 1, !191, i64 55, i64 1, !191, i64 56, i64 4, !70, i64 60, i64 4, !70, i64 64, i64 4, !70, i64 68, i64 4, !191}
!461 = distinct !{!461, !55, !56}
!462 = distinct !{!462, !55, !56}
!463 = distinct !{!463, !55, !56}
!464 = distinct !{!464, !55, !56}
!465 = distinct !{!465, !55, !56}
!466 = distinct !{!466, !55, !56}
!467 = !{!468, !37, i64 8}
!468 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !41, i64 16}
!469 = !{!470, !37, i64 8}
!470 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
!471 = !{!470, !37, i64 16}
!472 = distinct !{!472, !55, !56}
