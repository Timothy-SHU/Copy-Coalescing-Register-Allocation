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
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
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
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.anon.0 = type { ptr, ptr, ptr, float, i32, i32, [2 x float] }
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
%struct.NurbSort = type { ptr, ptr, ptr, [3 x float] }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %20 = load i8, ptr %19, align 1, !tbaa !56
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 8
  %25 = load i8, ptr %24, align 4, !tbaa !58
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 0, i32 9
  %30 = load i8, ptr %29, align 1, !tbaa !59
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %12, label %52

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !60
  %36 = mul nsw i32 %35, %6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  br label %45

41:                                               ; preds = %45
  %42 = add nsw i32 %46, -1
  %43 = getelementptr inbounds %struct.BPoint, ptr %47, i64 1
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %52, label %45, !llvm.loop !62

45:                                               ; preds = %38, %41
  %46 = phi i32 [ %42, %41 ], [ %36, %38 ]
  %47 = phi ptr [ %43, %41 ], [ %40, %38 ]
  %48 = getelementptr inbounds %struct.BPoint, ptr %47, i64 0, i32 3
  %49 = load i16, ptr %48, align 4, !tbaa !63
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %41, label %52

52:                                               ; preds = %45, %41, %28, %23, %15, %12, %33, %7
  %53 = phi i32 [ 0, %7 ], [ 0, %33 ], [ 1, %28 ], [ 1, %23 ], [ 1, %15 ], [ 0, %12 ], [ 1, %45 ], [ 0, %41 ]
  ret i32 %53
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @printknots(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call ptr @object_editcurve_get(ptr noundef %0) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %1, %75
  %6 = phi ptr [ %76, %75 ], [ %3, %1 ]
  %7 = tail call i32 @isNurbsel(ptr noundef nonnull %6) #22, !range !66
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %75, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !50
  %12 = icmp eq i16 %11, 4
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 11
  %19 = load i16, ptr %18, align 8, !tbaa !68
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !52
  %23 = add nsw i32 %22, %20
  %24 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 13
  %25 = load i16, ptr %24, align 4, !tbaa !69
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  %28 = add nsw i32 %20, -1
  %29 = select i1 %27, i32 0, i32 %28
  %30 = add nsw i32 %23, %29
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %17
  %33 = zext nneg i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %42, %34 ]
  %36 = load ptr, ptr %14, align 8, !tbaa !67
  %37 = getelementptr inbounds float, ptr %36, i64 %35
  %38 = load float, ptr %37, align 4, !tbaa !70
  %39 = fpext float %38 to double
  %40 = trunc i64 %35 to i32
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %40, double noundef %39) #22
  %42 = add nuw nsw i64 %35, 1
  %43 = icmp eq i64 %42, %33
  br i1 %43, label %44, label %34, !llvm.loop !71

44:                                               ; preds = %34, %17, %13
  %45 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 16
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = icmp eq ptr %46, null
  br i1 %47, label %75, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 12
  %50 = load i16, ptr %49, align 2, !tbaa !73
  %51 = sext i16 %50 to i32
  %52 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 7
  %53 = load i32, ptr %52, align 4, !tbaa !60
  %54 = add nsw i32 %53, %51
  %55 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 14
  %56 = load i16, ptr %55, align 2, !tbaa !74
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  %59 = add nsw i32 %51, -1
  %60 = select i1 %58, i32 0, i32 %59
  %61 = add nsw i32 %54, %60
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %48
  %64 = zext nneg i32 %61 to i64
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %73, %65 ]
  %67 = load ptr, ptr %45, align 8, !tbaa !72
  %68 = getelementptr inbounds float, ptr %67, i64 %66
  %69 = load float, ptr %68, align 4, !tbaa !70
  %70 = fpext float %69 to double
  %71 = trunc i64 %66 to i32
  %72 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %71, double noundef %70) #22
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp eq i64 %73, %64
  br i1 %74, label %75, label %65, !llvm.loop !75

75:                                               ; preds = %65, %48, %5, %9, %44
  %76 = load ptr, ptr %6, align 8, !tbaa !65
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %5, !llvm.loop !76

78:                                               ; preds = %75, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_curve_updateAnimPaths(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.EditNurb, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @curve_is_animated(ptr noundef nonnull %0) #22, !range !79
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8, !tbaa !80
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bAction, ptr %12, i64 0, i32 1
  tail call fastcc void @curve_rename_fcurves(ptr noundef nonnull %0, ptr noundef nonnull %15) #22
  br label %16

16:                                               ; preds = %14, %11
  %17 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 5
  tail call fastcc void @curve_rename_fcurves(ptr noundef nonnull %0, ptr noundef nonnull %17) #22
  br label %18

18:                                               ; preds = %8, %1, %16
  %19 = phi i32 [ 1, %16 ], [ 0, %1 ], [ 0, %8 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @curve_is_animated(ptr noundef %0) unnamed_addr #5 !PGOFuncName !82 {
  %2 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !80
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %4, %7, %1
  %13 = phi i8 [ 0, %1 ], [ 1, %4 ], [ %11, %7 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_rename_fcurves(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !84 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #24
  %10 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %11 = load ptr, ptr %9, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %80, label %13

13:                                               ; preds = %2, %76
  %14 = phi ptr [ %78, %76 ], [ %11, %2 ]
  %15 = phi i32 [ %77, %76 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !52
  br i1 %18, label %50, label %21

21:                                               ; preds = %13
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %76, label %23

23:                                               ; preds = %21, %46
  %24 = phi i32 [ %27, %46 ], [ %20, %21 ]
  %25 = phi ptr [ %47, %46 ], [ %17, %21 ]
  %26 = phi i32 [ %48, %46 ], [ 0, %21 ]
  %27 = add nsw i32 %24, -1
  %28 = call fastcc ptr @getCVKeyIndex(ptr noundef nonnull %9, ptr noundef nonnull %25) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %23
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.180, i32 noundef %15, i32 noundef %26) #23
  %32 = getelementptr inbounds %struct.CVKeyIndex, ptr %28, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !85
  %34 = getelementptr inbounds %struct.CVKeyIndex, ptr %28, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !87
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.180, i32 noundef %33, i32 noundef %35) #23
  %37 = getelementptr inbounds %struct.CVKeyIndex, ptr %28, i64 0, i32 5
  %38 = load i8, ptr %37, align 8, !tbaa !88
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  %41 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 64, ptr noundef nonnull @.str.181, ptr noundef nonnull %4) #23
  %42 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.182, ptr noundef nonnull %3) #23
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %5) #22
  %43 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 64, ptr noundef nonnull @.str.182, ptr noundef nonnull %4) #23
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.181, ptr noundef nonnull %3) #23
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #24
  br label %45

45:                                               ; preds = %40, %30
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %5) #22
  store i32 %15, ptr %32, align 4, !tbaa !85
  store i32 %26, ptr %34, align 8, !tbaa !87
  br label %46

46:                                               ; preds = %45, %23
  %47 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 1
  %48 = add nuw nsw i32 %26, 1
  %49 = icmp eq i32 %27, 0
  br i1 %49, label %76, label %23, !llvm.loop !89

50:                                               ; preds = %13
  %51 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %52 = load i32, ptr %51, align 4, !tbaa !60
  %53 = mul nsw i32 %52, %20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !61
  br label %58

58:                                               ; preds = %55, %72
  %59 = phi i32 [ %62, %72 ], [ %53, %55 ]
  %60 = phi ptr [ %73, %72 ], [ %57, %55 ]
  %61 = phi i32 [ %74, %72 ], [ 0, %55 ]
  %62 = add nsw i32 %59, -1
  %63 = call fastcc ptr @getCVKeyIndex(ptr noundef nonnull %9, ptr noundef %60) #22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.183, i32 noundef %15, i32 noundef %61) #23
  %67 = getelementptr inbounds %struct.CVKeyIndex, ptr %63, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !85
  %69 = getelementptr inbounds %struct.CVKeyIndex, ptr %63, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !87
  %71 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.183, i32 noundef %68, i32 noundef %70) #23
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %5) #22
  store i32 %15, ptr %67, align 4, !tbaa !85
  store i32 %61, ptr %69, align 8, !tbaa !87
  br label %72

72:                                               ; preds = %65, %58
  %73 = getelementptr inbounds %struct.BPoint, ptr %60, i64 1
  %74 = add nuw nsw i32 %61, 1
  %75 = icmp eq i32 %62, 0
  br i1 %75, label %76, label %58, !llvm.loop !90

76:                                               ; preds = %46, %72, %21, %50
  %77 = add nuw nsw i32 %15, 1
  %78 = load ptr, ptr %14, align 8, !tbaa !65
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %13, !llvm.loop !91

80:                                               ; preds = %76, %2
  %81 = load ptr, ptr %1, align 8, !tbaa !92
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %103, %80
  %84 = load ptr, ptr %9, align 8, !tbaa !65
  %85 = icmp eq ptr %84, null
  br i1 %85, label %133, label %105

86:                                               ; preds = %80, %103
  %87 = phi ptr [ %88, %103 ], [ %81, %80 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !93
  %89 = getelementptr inbounds %struct.FCurve, ptr %87, i64 0, i32 12
  %90 = load ptr, ptr %89, align 8, !tbaa !95
  %91 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(8) @.str.184, i64 noundef 7) #25
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %90, i32 noundef 46) #25
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(15) @.str.185, i64 noundef 14) #25
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(8) @.str.186, i64 noundef 7) #25
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %96
  call fastcc void @fcurve_remove(ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull %87) #22
  br label %103

103:                                              ; preds = %93, %99, %102, %86
  %104 = icmp eq ptr %88, null
  br i1 %104, label %83, label %86, !llvm.loop !96

105:                                              ; preds = %83, %129
  %106 = phi ptr [ %131, %129 ], [ %84, %83 ]
  %107 = phi i32 [ %130, %129 ], [ 0, %83 ]
  %108 = getelementptr inbounds %struct.Nurb, ptr %106, i64 0, i32 6
  %109 = load i32, ptr %108, align 8, !tbaa !52
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.Nurb, ptr %106, i64 0, i32 18
  %113 = load ptr, ptr %112, align 8, !tbaa !53
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = call fastcc ptr @getCVKeyIndex(ptr noundef nonnull %9, ptr noundef nonnull %113) #22
  br label %121

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.Nurb, ptr %106, i64 0, i32 17
  %119 = load ptr, ptr %118, align 8, !tbaa !61
  %120 = call fastcc ptr @getCVKeyIndex(ptr noundef nonnull %9, ptr noundef %119) #22
  br label %121

121:                                              ; preds = %115, %117
  %122 = phi ptr [ %116, %115 ], [ %120, %117 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.187, i32 noundef %107) #23
  %126 = getelementptr inbounds %struct.CVKeyIndex, ptr %122, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !85
  %128 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.187, i32 noundef %127) #23
  call fastcc void @fcurve_path_rename(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %5) #22
  br label %129

129:                                              ; preds = %105, %121, %124
  %130 = add nuw nsw i32 %107, 1
  %131 = load ptr, ptr %106, align 8, !tbaa !65
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %105, !llvm.loop !97

133:                                              ; preds = %129, %83
  %134 = load ptr, ptr %1, align 8, !tbaa !92
  %135 = icmp eq ptr %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %133, %145
  %137 = phi ptr [ %138, %145 ], [ %134, %133 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !93
  %139 = getelementptr inbounds %struct.FCurve, ptr %137, i64 0, i32 12
  %140 = load ptr, ptr %139, align 8, !tbaa !95
  %141 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %140, ptr noundef nonnull dereferenceable(8) @.str.184, i64 noundef 7) #25
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  call fastcc void @fcurve_remove(ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull %137) #22
  br label %145

144:                                              ; preds = %136
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef nonnull %137) #23
  br label %145

145:                                              ; preds = %143, %144
  %146 = icmp eq ptr %138, null
  br i1 %146, label %147, label %136, !llvm.loop !98

147:                                              ; preds = %145, %133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @load_editNurb(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @object_editcurve_get(ptr noundef %0) #22
  %5 = icmp eq ptr %0, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = and i16 %8, -2
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !99
  tail call fastcc void @remap_hooks_and_vertex_parents(ptr noundef nonnull %0) #22
  %15 = load ptr, ptr %4, align 8, !tbaa !65
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %11, %25
  %18 = phi ptr [ %26, %25 ], [ %15, %11 ]
  %19 = call ptr @BKE_nurb_duplicate(ptr noundef nonnull %18) #23
  call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %19) #23
  %20 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i16 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %18) #23
  br label %25

25:                                               ; preds = %17, %23
  %26 = load ptr, ptr %18, align 8, !tbaa !65
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !100

28:                                               ; preds = %25, %11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !99
  call fastcc void @calc_shapeKeys(ptr noundef nonnull %0) #22
  %29 = load ptr, ptr %12, align 8, !tbaa !46
  %30 = call i32 @ED_curve_updateAnimPaths(ptr noundef %29) #22, !range !66
  call void @BKE_nurbList_free(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  br label %31

31:                                               ; preds = %6, %28, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_hooks_and_vertex_parents(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !101 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  %7 = getelementptr inbounds %struct.EditNurb, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %133, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @G, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = icmp eq ptr %13, null
  br i1 %14, label %133, label %15

15:                                               ; preds = %10, %125
  %16 = phi ptr [ %127, %125 ], [ %13, %10 ]
  %17 = phi ptr [ %126, %125 ], [ null, %10 ]
  %18 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 4
  %27 = load i16, ptr %26, align 2, !tbaa !105
  %28 = add i16 %27, -5
  %29 = icmp ult i16 %28, 2
  br i1 %29, label %30, label %66

30:                                               ; preds = %25
  %31 = icmp eq ptr %17, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = call fastcc ptr @initialize_index_map(ptr noundef %0, ptr noundef nonnull %2) #22
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %33, %32 ], [ %17, %30 ]
  %36 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !106
  %38 = load i32, ptr %2, align 4, !tbaa !107
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = sext i32 %37 to i64
  %42 = getelementptr inbounds i32, ptr %35, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !107
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 %43, ptr %36, align 4, !tbaa !106
  br label %46

46:                                               ; preds = %40, %45, %34
  %47 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !108
  %49 = icmp slt i32 %48, %38
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i32, ptr %35, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !107
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 %53, ptr %47, align 8, !tbaa !108
  br label %56

56:                                               ; preds = %50, %55, %46
  %57 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 7
  %58 = load i32, ptr %57, align 4, !tbaa !109
  %59 = icmp slt i32 %58, %38
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds i32, ptr %35, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !107
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 %63, ptr %57, align 4, !tbaa !109
  br label %66

66:                                               ; preds = %25, %56, %65, %60, %21, %15
  %67 = phi ptr [ %35, %65 ], [ %35, %60 ], [ %35, %56 ], [ %17, %21 ], [ %17, %15 ], [ %17, %25 ]
  %68 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = icmp eq ptr %69, %4
  br i1 %70, label %71, label %125

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 26
  %73 = load ptr, ptr %72, align 8, !tbaa !65
  %74 = icmp eq ptr %73, null
  br i1 %74, label %125, label %75

75:                                               ; preds = %71, %121
  %76 = phi ptr [ %123, %121 ], [ %73, %71 ]
  %77 = phi ptr [ %122, %121 ], [ %67, %71 ]
  %78 = getelementptr inbounds %struct.ModifierData, ptr %76, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !110
  %80 = icmp eq i32 %79, 9
  br i1 %80, label %81, label %121

81:                                               ; preds = %75
  %82 = icmp eq ptr %77, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = call fastcc ptr @initialize_index_map(ptr noundef %0, ptr noundef nonnull %2) #22
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi ptr [ %84, %83 ], [ %77, %81 ]
  %87 = getelementptr inbounds %struct.HookModifierData, ptr %76, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !112
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.HookModifierData, ptr %76, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !114
  %93 = load i32, ptr %2, align 4, !tbaa !107
  br label %94

94:                                               ; preds = %90, %113
  %95 = phi i32 [ %88, %90 ], [ %114, %113 ]
  %96 = phi i64 [ 0, %90 ], [ %116, %113 ]
  %97 = phi i32 [ 0, %90 ], [ %115, %113 ]
  %98 = getelementptr inbounds i32, ptr %92, i64 %96
  %99 = load i32, ptr %98, align 4, !tbaa !107
  %100 = icmp slt i32 %99, %93
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = sext i32 %99 to i64
  %103 = getelementptr inbounds i32, ptr %86, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !107
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %113, label %106

106:                                              ; preds = %101
  %107 = add nsw i32 %97, 1
  %108 = sext i32 %97 to i64
  %109 = getelementptr inbounds i32, ptr %92, i64 %108
  store i32 %104, ptr %109, align 4, !tbaa !107
  %110 = load i32, ptr %87, align 8, !tbaa !112
  br label %113

111:                                              ; preds = %94
  %112 = add nsw i32 %97, 1
  br label %113

113:                                              ; preds = %111, %106, %101
  %114 = phi i32 [ %110, %106 ], [ %95, %101 ], [ %95, %111 ]
  %115 = phi i32 [ %107, %106 ], [ %97, %101 ], [ %112, %111 ]
  %116 = add nuw nsw i64 %96, 1
  %117 = sext i32 %114 to i64
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %94, label %119, !llvm.loop !115

119:                                              ; preds = %113, %85
  %120 = phi i32 [ 0, %85 ], [ %115, %113 ]
  store i32 %120, ptr %87, align 8, !tbaa !112
  br label %121

121:                                              ; preds = %75, %119
  %122 = phi ptr [ %86, %119 ], [ %77, %75 ]
  %123 = load ptr, ptr %76, align 8, !tbaa !65
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %75, !llvm.loop !116

125:                                              ; preds = %121, %71, %66
  %126 = phi ptr [ %67, %66 ], [ %67, %71 ], [ %122, %121 ]
  %127 = load ptr, ptr %16, align 8, !tbaa !65
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %15, !llvm.loop !117

129:                                              ; preds = %125
  %130 = icmp eq ptr %126, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %132(ptr noundef nonnull %126) #23
  br label %133

133:                                              ; preds = %10, %129, %131, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_nurb_duplicate(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_shapeKeys(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = icmp eq ptr %5, null
  br i1 %6, label %395, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 6
  %11 = getelementptr inbounds %struct.EditNurb, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !120
  %13 = add nsw i32 %12, -1
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %10, i32 noundef %13) #23
  %15 = tail call i32 @BKE_nurbList_verts_count(ptr noundef %9) #23
  %16 = load ptr, ptr %4, align 8, !tbaa !119
  %17 = getelementptr inbounds %struct.Key, ptr %16, i64 0, i32 9
  %18 = load i16, ptr %17, align 8, !tbaa !121
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %144

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.Key, ptr %16, i64 0, i32 6
  br label %22

22:                                               ; preds = %26, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = icmp eq ptr %24, null
  br i1 %25, label %144, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %11, align 8, !tbaa !120
  %28 = add nsw i32 %27, -1
  %29 = getelementptr inbounds %struct.KeyBlock, ptr %24, i64 0, i32 6
  %30 = load i16, ptr %29, align 4, !tbaa !123
  %31 = sext i16 %30 to i32
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %22, !llvm.loop !125

33:                                               ; preds = %26
  %34 = load ptr, ptr %9, align 8, !tbaa !65
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %33, %51
  %37 = phi ptr [ %54, %51 ], [ %34, %33 ]
  %38 = phi i32 [ %53, %51 ], [ 0, %33 ]
  %39 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !52
  br i1 %41, label %46, label %44

44:                                               ; preds = %36
  %45 = shl nsw i32 %43, 2
  br label %51

46:                                               ; preds = %36
  %47 = shl nsw i32 %43, 1
  %48 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !60
  %50 = mul nsw i32 %47, %49
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  %53 = add nsw i32 %52, %38
  %54 = load ptr, ptr %37, align 8, !tbaa !65
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %36, !llvm.loop !126

56:                                               ; preds = %51
  %57 = sext i32 %53 to i64
  %58 = mul nsw i64 %57, 12
  br label %59

59:                                               ; preds = %56, %33
  %60 = phi i64 [ 0, %33 ], [ %58, %56 ]
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %62 = tail call ptr %61(i64 noundef %60, ptr noundef nonnull @.str.190) #23
  %63 = load ptr, ptr %9, align 8, !tbaa !65
  %64 = icmp eq ptr %63, null
  br i1 %64, label %144, label %65

65:                                               ; preds = %59, %140
  %66 = phi ptr [ %142, %140 ], [ %63, %59 ]
  %67 = phi i32 [ %141, %140 ], [ 0, %59 ]
  %68 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 18
  %69 = load ptr, ptr %68, align 8, !tbaa !53
  %70 = icmp eq ptr %69, null
  %71 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !52
  br i1 %70, label %110, label %73

73:                                               ; preds = %65
  %74 = icmp eq i32 %72, 0
  br i1 %74, label %140, label %75

75:                                               ; preds = %73, %106
  %76 = phi i32 [ %79, %106 ], [ %72, %73 ]
  %77 = phi i32 [ %107, %106 ], [ %67, %73 ]
  %78 = phi ptr [ %108, %106 ], [ %69, %73 ]
  %79 = add nsw i32 %76, -1
  %80 = tail call fastcc ptr @getKeyIndexOrig_bezt(ptr noundef nonnull %9, ptr noundef nonnull %78) #22
  %81 = icmp eq ptr %80, null
  br i1 %81, label %104, label %82

82:                                               ; preds = %75
  %83 = sext i32 %77 to i64
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ 0, %82 ], [ %91, %84 ]
  %86 = phi i64 [ %83, %82 ], [ %90, %84 ]
  %87 = getelementptr inbounds [3 x float], ptr %62, i64 %86
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %78, i64 0, i64 %85
  %89 = getelementptr inbounds [3 x [3 x float]], ptr %80, i64 0, i64 %85
  tail call fastcc void @sub_v3_v3v3(ptr noundef %87, ptr noundef nonnull %88, ptr noundef nonnull %89) #22
  %90 = add nsw i64 %86, 1
  %91 = add nuw nsw i64 %85, 1
  %92 = icmp eq i64 %91, 3
  br i1 %92, label %93, label %84, !llvm.loop !127

93:                                               ; preds = %84
  %94 = trunc i64 %86 to i32
  %95 = getelementptr inbounds %struct.BezTriple, ptr %78, i64 0, i32 1
  %96 = load float, ptr %95, align 4, !tbaa !128
  %97 = getelementptr inbounds %struct.BezTriple, ptr %80, i64 0, i32 1
  %98 = load float, ptr %97, align 4, !tbaa !128
  %99 = fsub float %96, %98
  %100 = add nsw i32 %94, 2
  %101 = shl i64 %90, 32
  %102 = ashr exact i64 %101, 32
  %103 = getelementptr inbounds [3 x float], ptr %62, i64 %102
  store float %99, ptr %103, align 4, !tbaa !70
  br label %106

104:                                              ; preds = %75
  %105 = add nsw i32 %77, 4
  br label %106

106:                                              ; preds = %104, %93
  %107 = phi i32 [ %100, %93 ], [ %105, %104 ]
  %108 = getelementptr inbounds %struct.BezTriple, ptr %78, i64 1
  %109 = icmp eq i32 %79, 0
  br i1 %109, label %140, label %75, !llvm.loop !129

110:                                              ; preds = %65
  %111 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 7
  %112 = load i32, ptr %111, align 4, !tbaa !60
  %113 = mul nsw i32 %112, %72
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 17
  %117 = load ptr, ptr %116, align 8, !tbaa !61
  %118 = sext i32 %67 to i64
  br label %119

119:                                              ; preds = %115, %134
  %120 = phi i64 [ %118, %115 ], [ %135, %134 ]
  %121 = phi i32 [ %113, %115 ], [ %123, %134 ]
  %122 = phi ptr [ %117, %115 ], [ %136, %134 ]
  %123 = add nsw i32 %121, -1
  %124 = tail call fastcc ptr @getKeyIndexOrig_bp(ptr noundef nonnull %9, ptr noundef %122) #22
  %125 = icmp eq ptr %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %119
  %127 = getelementptr inbounds [3 x float], ptr %62, i64 %120
  tail call fastcc void @sub_v3_v3v3(ptr noundef %127, ptr noundef %122, ptr noundef nonnull %124) #22
  %128 = getelementptr inbounds %struct.BPoint, ptr %122, i64 0, i32 1
  %129 = load float, ptr %128, align 4, !tbaa !130
  %130 = getelementptr inbounds %struct.BPoint, ptr %124, i64 0, i32 1
  %131 = load float, ptr %130, align 4, !tbaa !130
  %132 = fsub float %129, %131
  %133 = getelementptr [3 x float], ptr %127, i64 1
  store float %132, ptr %133, align 4, !tbaa !70
  br label %134

134:                                              ; preds = %126, %119
  %135 = add nsw i64 %120, 2
  %136 = getelementptr inbounds %struct.BPoint, ptr %122, i64 1
  %137 = icmp eq i32 %123, 0
  br i1 %137, label %138, label %119, !llvm.loop !131

138:                                              ; preds = %134
  %139 = trunc i64 %135 to i32
  br label %140

140:                                              ; preds = %106, %138, %73, %110
  %141 = phi i32 [ %67, %110 ], [ %67, %73 ], [ %139, %138 ], [ %107, %106 ]
  %142 = load ptr, ptr %66, align 8, !tbaa !65
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %65, !llvm.loop !132

144:                                              ; preds = %22, %140, %59, %7
  %145 = phi ptr [ null, %7 ], [ %62, %59 ], [ %62, %140 ], [ null, %22 ]
  %146 = load ptr, ptr %4, align 8, !tbaa !119
  %147 = getelementptr inbounds %struct.Key, ptr %146, i64 0, i32 6
  %148 = load ptr, ptr %147, align 8, !tbaa !65
  %149 = icmp eq ptr %148, null
  br i1 %149, label %391, label %150

150:                                              ; preds = %144
  %151 = icmp eq ptr %145, null
  br label %152

152:                                              ; preds = %150, %388
  %153 = phi ptr [ %148, %150 ], [ %389, %388 ]
  %154 = icmp eq ptr %153, %14
  %155 = select i1 %151, i1 true, i1 %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %152
  %157 = load i32, ptr %11, align 8, !tbaa !120
  %158 = add nsw i32 %157, -1
  %159 = getelementptr inbounds %struct.KeyBlock, ptr %153, i64 0, i32 6
  %160 = load i16, ptr %159, align 4, !tbaa !123
  %161 = sext i16 %160 to i32
  %162 = icmp eq i32 %158, %161
  br label %163

163:                                              ; preds = %156, %152
  %164 = phi i1 [ false, %152 ], [ %162, %156 ]
  %165 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %166 = load ptr, ptr %4, align 8, !tbaa !119
  %167 = getelementptr inbounds %struct.Key, ptr %166, i64 0, i32 4
  %168 = load i32, ptr %167, align 8, !tbaa !133
  %169 = mul nsw i32 %168, %15
  %170 = sext i32 %169 to i64
  %171 = tail call ptr %165(i64 noundef %170, ptr noundef nonnull @.str.190) #23
  %172 = getelementptr inbounds %struct.KeyBlock, ptr %153, i64 0, i32 10
  %173 = load ptr, ptr %172, align 8, !tbaa !134
  %174 = load ptr, ptr %9, align 8, !tbaa !65
  %175 = icmp eq ptr %174, null
  br i1 %175, label %380, label %176

176:                                              ; preds = %163
  %177 = icmp eq ptr %173, null
  br label %178

178:                                              ; preds = %176, %375
  %179 = phi ptr [ %174, %176 ], [ %378, %375 ]
  %180 = phi ptr [ %171, %176 ], [ %377, %375 ]
  %181 = phi i32 [ 0, %176 ], [ %376, %375 ]
  br i1 %154, label %182, label %259

182:                                              ; preds = %178
  %183 = load ptr, ptr %4, align 8, !tbaa !119
  %184 = getelementptr inbounds %struct.Key, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !135
  %186 = icmp ne ptr %14, %185
  %187 = getelementptr inbounds %struct.Nurb, ptr %179, i64 0, i32 18
  %188 = load ptr, ptr %187, align 8, !tbaa !53
  %189 = icmp eq ptr %188, null
  %190 = getelementptr inbounds %struct.Nurb, ptr %179, i64 0, i32 6
  %191 = load i32, ptr %190, align 8, !tbaa !52
  br i1 %189, label %231, label %192

192:                                              ; preds = %182
  %193 = icmp eq i32 %191, 0
  br i1 %193, label %375, label %194

194:                                              ; preds = %192
  %195 = shl i32 %191, 2
  br label %196

196:                                              ; preds = %194, %222
  %197 = phi i32 [ %225, %222 ], [ %191, %194 ]
  %198 = phi ptr [ %228, %222 ], [ %180, %194 ]
  %199 = phi ptr [ %229, %222 ], [ %188, %194 ]
  %200 = tail call fastcc ptr @getKeyIndexOrig_bezt(ptr noundef nonnull %9, ptr noundef nonnull %199) #22
  %201 = icmp ne ptr %200, null
  %202 = select i1 %186, i1 %201, i1 false
  br label %203

203:                                              ; preds = %212, %196
  %204 = phi i64 [ 0, %196 ], [ %213, %212 ]
  %205 = phi ptr [ %198, %196 ], [ %214, %212 ]
  %206 = getelementptr inbounds [3 x [3 x float]], ptr %199, i64 0, i64 %204
  tail call fastcc void @copy_v3_v3(ptr noundef %205, ptr noundef nonnull %206) #22
  br i1 %202, label %207, label %215

207:                                              ; preds = %203
  %208 = getelementptr inbounds [3 x [3 x float]], ptr %200, i64 0, i64 %204
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %206, ptr noundef nonnull %208) #22
  %209 = getelementptr inbounds float, ptr %205, i64 3
  %210 = add nuw nsw i64 %204, 1
  %211 = icmp eq i64 %210, 3
  br i1 %211, label %219, label %212

212:                                              ; preds = %207, %215
  %213 = phi i64 [ %210, %207 ], [ %217, %215 ]
  %214 = phi ptr [ %209, %207 ], [ %216, %215 ]
  br label %203, !llvm.loop !136

215:                                              ; preds = %203
  %216 = getelementptr inbounds float, ptr %205, i64 3
  %217 = add nuw nsw i64 %204, 1
  %218 = icmp eq i64 %217, 3
  br i1 %218, label %222, label %212

219:                                              ; preds = %207
  %220 = getelementptr inbounds %struct.BezTriple, ptr %199, i64 0, i32 1
  %221 = load float, ptr %220, align 4, !tbaa !128
  store float %221, ptr %209, align 4, !tbaa !70
  br label %222

222:                                              ; preds = %215, %219
  %223 = phi ptr [ %200, %219 ], [ %199, %215 ]
  %224 = phi ptr [ %220, %219 ], [ %216, %215 ]
  %225 = add nsw i32 %197, -1
  %226 = getelementptr inbounds %struct.BezTriple, ptr %223, i64 0, i32 1
  %227 = load float, ptr %226, align 4, !tbaa !128
  store float %227, ptr %224, align 4, !tbaa !70
  %228 = getelementptr inbounds float, ptr %205, i64 6
  %229 = getelementptr inbounds %struct.BezTriple, ptr %199, i64 1
  %230 = icmp eq i32 %225, 0
  br i1 %230, label %371, label %196, !llvm.loop !137

231:                                              ; preds = %182
  %232 = getelementptr inbounds %struct.Nurb, ptr %179, i64 0, i32 7
  %233 = load i32, ptr %232, align 4, !tbaa !60
  %234 = mul nsw i32 %233, %191
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %375, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.Nurb, ptr %179, i64 0, i32 17
  %238 = load ptr, ptr %237, align 8, !tbaa !61
  %239 = shl i32 %191, 1
  %240 = mul i32 %239, %233
  br label %241

241:                                              ; preds = %236, %255
  %242 = phi i32 [ %245, %255 ], [ %234, %236 ]
  %243 = phi ptr [ %256, %255 ], [ %180, %236 ]
  %244 = phi ptr [ %257, %255 ], [ %238, %236 ]
  %245 = add nsw i32 %242, -1
  %246 = tail call fastcc ptr @getKeyIndexOrig_bp(ptr noundef nonnull %9, ptr noundef %244) #22
  tail call fastcc void @copy_v3_v3(ptr noundef %243, ptr noundef %244) #22
  %247 = getelementptr inbounds %struct.BPoint, ptr %244, i64 0, i32 1
  %248 = load float, ptr %247, align 4, !tbaa !130
  %249 = getelementptr inbounds float, ptr %243, i64 3
  store float %248, ptr %249, align 4, !tbaa !70
  %250 = icmp ne ptr %246, null
  %251 = select i1 %186, i1 %250, i1 false
  br i1 %251, label %252, label %255

252:                                              ; preds = %241
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %244, ptr noundef nonnull %246) #22
  %253 = getelementptr inbounds %struct.BPoint, ptr %246, i64 0, i32 1
  %254 = load float, ptr %253, align 4, !tbaa !130
  store float %254, ptr %247, align 4, !tbaa !130
  br label %255

255:                                              ; preds = %252, %241
  %256 = getelementptr inbounds float, ptr %243, i64 4
  %257 = getelementptr inbounds %struct.BPoint, ptr %244, i64 1
  %258 = icmp eq i32 %245, 0
  br i1 %258, label %369, label %241, !llvm.loop !138

259:                                              ; preds = %178
  br i1 %177, label %375, label %260

260:                                              ; preds = %259
  %261 = getelementptr inbounds %struct.Nurb, ptr %179, i64 0, i32 18
  %262 = load ptr, ptr %261, align 8, !tbaa !53
  %263 = icmp eq ptr %262, null
  %264 = getelementptr inbounds %struct.Nurb, ptr %179, i64 0, i32 6
  %265 = load i32, ptr %264, align 8, !tbaa !52
  br i1 %263, label %330, label %266

266:                                              ; preds = %260
  %267 = icmp eq i32 %265, 0
  br i1 %267, label %375, label %268

268:                                              ; preds = %266, %324
  %269 = phi i32 [ %273, %324 ], [ %265, %266 ]
  %270 = phi ptr [ %327, %324 ], [ %180, %266 ]
  %271 = phi i32 [ %325, %324 ], [ %181, %266 ]
  %272 = phi ptr [ %328, %324 ], [ %262, %266 ]
  %273 = add nsw i32 %269, -1
  %274 = tail call fastcc i32 @getKeyIndexOrig_keyIndex(ptr noundef nonnull %9, ptr noundef nonnull %272) #22
  %275 = icmp sgt i32 %274, -1
  br i1 %275, label %276, label %313

276:                                              ; preds = %268
  %277 = zext nneg i32 %274 to i64
  %278 = getelementptr inbounds float, ptr %173, i64 %277
  %279 = sext i32 %271 to i64
  br label %280

280:                                              ; preds = %292, %276
  %281 = phi i64 [ %279, %276 ], [ %293, %292 ]
  %282 = phi i32 [ 0, %276 ], [ %294, %292 ]
  %283 = phi ptr [ %278, %276 ], [ %295, %292 ]
  %284 = phi ptr [ %270, %276 ], [ %296, %292 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %284, ptr noundef %283) #22
  br i1 %164, label %285, label %297

285:                                              ; preds = %280
  %286 = getelementptr inbounds [3 x float], ptr %145, i64 %281
  tail call fastcc void @add_v3_v3(ptr noundef %284, ptr noundef %286) #22
  %287 = getelementptr inbounds float, ptr %284, i64 3
  %288 = getelementptr inbounds float, ptr %283, i64 3
  %289 = add nuw nsw i32 %282, 1
  %290 = add nsw i64 %281, 1
  %291 = icmp eq i32 %289, 3
  br i1 %291, label %306, label %292

292:                                              ; preds = %285, %297
  %293 = phi i64 [ %290, %285 ], [ %301, %297 ]
  %294 = phi i32 [ %289, %285 ], [ %300, %297 ]
  %295 = phi ptr [ %288, %285 ], [ %299, %297 ]
  %296 = phi ptr [ %287, %285 ], [ %298, %297 ]
  br label %280, !llvm.loop !139

297:                                              ; preds = %280
  %298 = getelementptr inbounds float, ptr %284, i64 3
  %299 = getelementptr inbounds float, ptr %283, i64 3
  %300 = add nuw nsw i32 %282, 1
  %301 = add nsw i64 %281, 1
  %302 = icmp eq i32 %300, 3
  br i1 %302, label %303, label %292

303:                                              ; preds = %297
  %304 = trunc i64 %301 to i32
  %305 = load float, ptr %299, align 4, !tbaa !70
  store float %305, ptr %298, align 4, !tbaa !70
  br label %324

306:                                              ; preds = %285
  %307 = load float, ptr %288, align 4, !tbaa !70
  store float %307, ptr %287, align 4, !tbaa !70
  %308 = trunc i64 %281 to i32
  %309 = shl i64 %290, 32
  %310 = ashr exact i64 %309, 32
  %311 = getelementptr inbounds [3 x float], ptr %145, i64 %310
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %287, ptr noundef %311) #22
  %312 = add nsw i32 %308, 2
  br label %324

313:                                              ; preds = %268, %313
  %314 = phi i64 [ %318, %313 ], [ 0, %268 ]
  %315 = phi ptr [ %317, %313 ], [ %270, %268 ]
  %316 = getelementptr inbounds [3 x [3 x float]], ptr %272, i64 0, i64 %314
  tail call fastcc void @copy_v3_v3(ptr noundef %315, ptr noundef nonnull %316) #22
  %317 = getelementptr inbounds float, ptr %315, i64 3
  %318 = add nuw nsw i64 %314, 1
  %319 = icmp eq i64 %318, 3
  br i1 %319, label %320, label %313, !llvm.loop !140

320:                                              ; preds = %313
  %321 = add i32 %271, 3
  %322 = getelementptr inbounds %struct.BezTriple, ptr %272, i64 0, i32 1
  %323 = load float, ptr %322, align 4, !tbaa !128
  store float %323, ptr %317, align 4, !tbaa !70
  br label %324

324:                                              ; preds = %303, %306, %320
  %325 = phi i32 [ %321, %320 ], [ %312, %306 ], [ %304, %303 ]
  %326 = phi ptr [ %317, %320 ], [ %287, %306 ], [ %298, %303 ]
  %327 = getelementptr inbounds float, ptr %326, i64 3
  %328 = getelementptr inbounds %struct.BezTriple, ptr %272, i64 1
  %329 = icmp eq i32 %273, 0
  br i1 %329, label %375, label %268, !llvm.loop !141

330:                                              ; preds = %260
  %331 = getelementptr inbounds %struct.Nurb, ptr %179, i64 0, i32 7
  %332 = load i32, ptr %331, align 4, !tbaa !60
  %333 = mul nsw i32 %332, %265
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %375, label %335

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.Nurb, ptr %179, i64 0, i32 17
  %337 = load ptr, ptr %336, align 8, !tbaa !61
  %338 = sext i32 %181 to i64
  br label %339

339:                                              ; preds = %335, %364
  %340 = phi i64 [ %338, %335 ], [ %367, %364 ]
  %341 = phi i32 [ %333, %335 ], [ %344, %364 ]
  %342 = phi ptr [ %180, %335 ], [ %365, %364 ]
  %343 = phi ptr [ %337, %335 ], [ %366, %364 ]
  %344 = add nsw i32 %341, -1
  %345 = tail call fastcc i32 @getKeyIndexOrig_keyIndex(ptr noundef nonnull %9, ptr noundef %343) #22
  %346 = icmp sgt i32 %345, -1
  br i1 %346, label %347, label %360

347:                                              ; preds = %339
  %348 = zext nneg i32 %345 to i64
  %349 = getelementptr inbounds float, ptr %173, i64 %348
  tail call fastcc void @copy_v3_v3(ptr noundef %342, ptr noundef nonnull %349) #22
  %350 = getelementptr inbounds float, ptr %349, i64 3
  %351 = load float, ptr %350, align 4, !tbaa !70
  %352 = getelementptr inbounds float, ptr %342, i64 3
  store float %351, ptr %352, align 4, !tbaa !70
  br i1 %164, label %353, label %364

353:                                              ; preds = %347
  %354 = getelementptr inbounds [3 x float], ptr %145, i64 %340
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %342, ptr noundef %354) #22
  %355 = add nsw i64 %340, 1
  %356 = getelementptr inbounds [3 x float], ptr %145, i64 %355
  %357 = load float, ptr %356, align 4, !tbaa !70
  %358 = load float, ptr %352, align 4, !tbaa !70
  %359 = fadd float %357, %358
  store float %359, ptr %352, align 4, !tbaa !70
  br label %364

360:                                              ; preds = %339
  tail call fastcc void @copy_v3_v3(ptr noundef %342, ptr noundef %343) #22
  %361 = getelementptr inbounds %struct.BPoint, ptr %343, i64 0, i32 1
  %362 = load float, ptr %361, align 4, !tbaa !130
  %363 = getelementptr inbounds float, ptr %342, i64 3
  store float %362, ptr %363, align 4, !tbaa !70
  br label %364

364:                                              ; preds = %347, %353, %360
  %365 = getelementptr inbounds float, ptr %342, i64 4
  %366 = getelementptr inbounds %struct.BPoint, ptr %343, i64 1
  %367 = add nsw i64 %340, 2
  %368 = icmp eq i32 %344, 0
  br i1 %368, label %373, label %339, !llvm.loop !142

369:                                              ; preds = %255
  %370 = add i32 %181, %240
  br label %375

371:                                              ; preds = %222
  %372 = add i32 %181, %195
  br label %375

373:                                              ; preds = %364
  %374 = trunc i64 %367 to i32
  br label %375

375:                                              ; preds = %324, %373, %371, %369, %266, %330, %192, %231, %259
  %376 = phi i32 [ %181, %259 ], [ %181, %231 ], [ %181, %192 ], [ %181, %330 ], [ %181, %266 ], [ %370, %369 ], [ %372, %371 ], [ %374, %373 ], [ %325, %324 ]
  %377 = phi ptr [ %180, %259 ], [ %180, %231 ], [ %180, %192 ], [ %180, %330 ], [ %180, %266 ], [ %256, %369 ], [ %228, %371 ], [ %365, %373 ], [ %327, %324 ]
  %378 = load ptr, ptr %179, align 8, !tbaa !65
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %178, !llvm.loop !143

380:                                              ; preds = %375, %163
  br i1 %164, label %381, label %382

381:                                              ; preds = %380
  tail call fastcc void @calc_keyHandles(ptr noundef nonnull %9, ptr noundef %171) #22
  br label %382

382:                                              ; preds = %381, %380
  %383 = getelementptr inbounds %struct.KeyBlock, ptr %153, i64 0, i32 8
  store i32 %15, ptr %383, align 8, !tbaa !144
  %384 = load ptr, ptr %172, align 8, !tbaa !134
  %385 = icmp eq ptr %384, null
  br i1 %385, label %388, label %386

386:                                              ; preds = %382
  %387 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %387(ptr noundef nonnull %384) #23
  br label %388

388:                                              ; preds = %386, %382
  store ptr %171, ptr %172, align 8, !tbaa !134
  %389 = load ptr, ptr %153, align 8, !tbaa !65
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %152, !llvm.loop !145

391:                                              ; preds = %388, %144
  %392 = icmp eq ptr %145, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %391
  %394 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %394(ptr noundef nonnull %145) #23
  br label %395

395:                                              ; preds = %391, %393, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_editNurb(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = and i16 %7, -2
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = tail call ptr @BKE_keyblock_from_object(ptr noundef nonnull %0) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  tail call void @undo_editmode_clear() #23
  %14 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  tail call void @BKE_key_convert_to_curve(ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %14) #23
  br label %15

15:                                               ; preds = %13, %10
  %16 = icmp eq ptr %5, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  tail call void @BKE_nurbList_free(ptr noundef nonnull %5) #23
  tail call void @BKE_curve_editNurb_keyIndex_free(ptr noundef nonnull %5) #23
  %18 = getelementptr inbounds %struct.EditNurb, ptr %5, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !77
  br label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %21 = tail call ptr %20(i64 noundef 32, ptr noundef nonnull @.str.2) #23
  store ptr %21, ptr %4, align 8, !tbaa !47
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %5, %17 ], [ %21, %19 ]
  %24 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %30, %27 ], [ %25, %22 ]
  %29 = tail call ptr @BKE_nurb_duplicate(ptr noundef nonnull %28) #23
  tail call void @BKE_nurb_test2D(ptr noundef %29) #23
  tail call void @BLI_addtail(ptr noundef %23, ptr noundef %29) #23
  %30 = load ptr, ptr %28, align 8, !tbaa !65
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !146

32:                                               ; preds = %27, %22
  br i1 %12, label %38, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 115
  %35 = load i16, ptr %34, align 2, !tbaa !147
  %36 = sext i16 %35 to i32
  %37 = getelementptr inbounds %struct.EditNurb, ptr %23, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !120
  br label %38

38:                                               ; preds = %33, %32
  tail call fastcc void @init_editNurb_keyIndex(ptr noundef %23, ptr noundef nonnull %24) #22
  br label %39

39:                                               ; preds = %1, %38
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_keyblock_from_object(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @undo_editmode_clear() local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_key_convert_to_curve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_curve_editNurb_keyIndex_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_editNurb_keyIndex(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !148 {
  %3 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %75

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !92
  %8 = load ptr, ptr %0, align 8, !tbaa !149
  %9 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.191) #23
  %10 = icmp eq ptr %7, null
  br i1 %10, label %74, label %11

11:                                               ; preds = %6, %67
  %12 = phi i32 [ %69, %67 ], [ 0, %6 ]
  %13 = phi i32 [ %72, %67 ], [ 0, %6 ]
  %14 = phi i32 [ %68, %67 ], [ 0, %6 ]
  %15 = phi ptr [ %70, %67 ], [ %8, %6 ]
  %16 = phi ptr [ %71, %67 ], [ %7, %6 ]
  %17 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !52
  br i1 %19, label %42, label %22

22:                                               ; preds = %11
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i32 [ %37, %27 ], [ %12, %24 ]
  %29 = phi i32 [ %40, %27 ], [ 0, %24 ]
  %30 = phi i32 [ %36, %27 ], [ %14, %24 ]
  %31 = phi i32 [ %34, %27 ], [ %21, %24 ]
  %32 = phi ptr [ %39, %27 ], [ %18, %24 ]
  %33 = phi ptr [ %38, %27 ], [ %26, %24 ]
  %34 = add nsw i32 %31, -1
  %35 = tail call fastcc ptr @init_cvKeyIndex(ptr noundef nonnull %32, i32 noundef %30, i32 noundef %13, i32 noundef %29, i32 noundef %28, ptr noundef nonnull %16) #22
  tail call void @BLI_ghash_insert(ptr noundef %9, ptr noundef %33, ptr noundef %35) #23
  %36 = add nsw i32 %30, 12
  %37 = add nsw i32 %28, 3
  %38 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 1
  %39 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 1
  %40 = add nuw nsw i32 %29, 1
  %41 = icmp eq i32 %34, 0
  br i1 %41, label %67, label %27, !llvm.loop !150

42:                                               ; preds = %11
  %43 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !60
  %45 = mul nsw i32 %44, %21
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  %50 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  br label %52

52:                                               ; preds = %47, %52
  %53 = phi i32 [ %65, %52 ], [ %12, %47 ]
  %54 = phi i32 [ %64, %52 ], [ 0, %47 ]
  %55 = phi i32 [ %61, %52 ], [ %14, %47 ]
  %56 = phi i32 [ %59, %52 ], [ %45, %47 ]
  %57 = phi ptr [ %63, %52 ], [ %49, %47 ]
  %58 = phi ptr [ %62, %52 ], [ %51, %47 ]
  %59 = add nsw i32 %56, -1
  %60 = tail call fastcc ptr @init_cvKeyIndex(ptr noundef %57, i32 noundef %55, i32 noundef %13, i32 noundef %54, i32 noundef %53, ptr noundef nonnull %16) #22
  tail call void @BLI_ghash_insert(ptr noundef %9, ptr noundef %58, ptr noundef %60) #23
  %61 = add nsw i32 %55, 4
  %62 = getelementptr inbounds %struct.BPoint, ptr %58, i64 1
  %63 = getelementptr inbounds %struct.BPoint, ptr %57, i64 1
  %64 = add nuw nsw i32 %54, 1
  %65 = add nsw i32 %53, 1
  %66 = icmp eq i32 %59, 0
  br i1 %66, label %67, label %52, !llvm.loop !151

67:                                               ; preds = %27, %52, %22, %42
  %68 = phi i32 [ %14, %42 ], [ %14, %22 ], [ %61, %52 ], [ %36, %27 ]
  %69 = phi i32 [ %12, %42 ], [ %12, %22 ], [ %65, %52 ], [ %37, %27 ]
  %70 = load ptr, ptr %15, align 8, !tbaa !152
  %71 = load ptr, ptr %16, align 8, !tbaa !152
  %72 = add nuw nsw i32 %13, 1
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %11, !llvm.loop !153

74:                                               ; preds = %67, %6
  store ptr %9, ptr %3, align 8, !tbaa !77
  br label %75

75:                                               ; preds = %2, %74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_editNurb(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @BKE_curve_editNurb_free(ptr noundef %3) #23
  ret void
}

; Function Attrs: optsize
declare void @BKE_curve_editNurb_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_curve_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
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
  %17 = load i8, ptr %16, align 1, !tbaa !56
  %18 = and i8 %17, -2
  store i8 %18, ptr %16, align 1, !tbaa !56
  %19 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 8
  %20 = load i8, ptr %19, align 4, !tbaa !58
  %21 = and i8 %20, -2
  store i8 %21, ptr %19, align 4, !tbaa !58
  %22 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 9
  %23 = load i8, ptr %22, align 1, !tbaa !59
  %24 = and i8 %23, -2
  store i8 %24, ptr %22, align 1, !tbaa !59
  %25 = add nuw nsw i32 %15, 1
  %26 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %27 = icmp eq i32 %25, %11
  br i1 %27, label %48, label %13, !llvm.loop !154

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  %36 = load i32, ptr %35, align 4, !tbaa !60
  %37 = mul nsw i32 %36, %34
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32, %39
  %40 = phi ptr [ %46, %39 ], [ %30, %32 ]
  %41 = phi i32 [ %45, %39 ], [ 0, %32 ]
  %42 = getelementptr inbounds %struct.BPoint, ptr %40, i64 0, i32 3
  %43 = load i16, ptr %42, align 4, !tbaa !63
  %44 = and i16 %43, -2
  store i16 %44, ptr %42, align 4, !tbaa !63
  %45 = add nuw nsw i32 %41, 1
  %46 = getelementptr inbounds %struct.BPoint, ptr %40, i64 1
  %47 = icmp eq i32 %45, %37
  br i1 %47, label %48, label %39, !llvm.loop !155

48:                                               ; preds = %13, %39, %9, %32, %28
  %49 = load ptr, ptr %5, align 8, !tbaa !65
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %4, !llvm.loop !156

51:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_curve_select_all(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
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
  %21 = load i8, ptr %20, align 1, !tbaa !56
  %22 = or i8 %21, 1
  store i8 %22, ptr %20, align 1, !tbaa !56
  %23 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 8
  %24 = load i8, ptr %23, align 4, !tbaa !58
  %25 = or i8 %24, 1
  store i8 %25, ptr %23, align 4, !tbaa !58
  %26 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 9
  %27 = load i8, ptr %26, align 1, !tbaa !59
  %28 = or i8 %27, 1
  store i8 %28, ptr %26, align 1, !tbaa !59
  br label %29

29:                                               ; preds = %13, %19
  %30 = add nuw nsw i32 %15, 1
  %31 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %32 = icmp eq i32 %30, %11
  br i1 %32, label %58, label %13, !llvm.loop !158

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !52
  %40 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !60
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
  %52 = load i16, ptr %51, align 4, !tbaa !63
  %53 = or i16 %52, 1
  store i16 %53, ptr %51, align 4, !tbaa !63
  br label %54

54:                                               ; preds = %44, %50
  %55 = add nuw nsw i32 %46, 1
  %56 = getelementptr inbounds %struct.BPoint, ptr %45, i64 1
  %57 = icmp eq i32 %55, %42
  br i1 %57, label %58, label %44, !llvm.loop !160

58:                                               ; preds = %29, %54, %9, %37, %33
  %59 = load ptr, ptr %5, align 8, !tbaa !65
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %4, !llvm.loop !161

61:                                               ; preds = %58, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_curve_select_swap(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %5, %55
  %8 = phi ptr [ %3, %5 ], [ %56, %55 ]
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !52
  br i1 %11, label %14, label %40

14:                                               ; preds = %7
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %55, label %16

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
  %28 = load i8, ptr %27, align 4, !tbaa !58
  %29 = xor i8 %28, 1
  store i8 %29, ptr %27, align 4, !tbaa !58
  br i1 %6, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 7
  %32 = load i8, ptr %31, align 1, !tbaa !56
  %33 = xor i8 %32, 1
  store i8 %33, ptr %31, align 1, !tbaa !56
  %34 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !59
  %36 = xor i8 %35, 1
  store i8 %36, ptr %34, align 1, !tbaa !59
  br label %37

37:                                               ; preds = %26, %30, %19
  %38 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %39 = icmp eq i32 %22, 0
  br i1 %39, label %55, label %19, !llvm.loop !162

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !60
  %43 = mul nsw i32 %42, %13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  br label %48

48:                                               ; preds = %45, %48
  %49 = phi i32 [ %51, %48 ], [ %43, %45 ]
  %50 = phi ptr [ %53, %48 ], [ %47, %45 ]
  %51 = add nsw i32 %49, -1
  %52 = tail call fastcc zeroext i8 @swap_selection_bpoint(ptr noundef %50) #22, !range !79
  %53 = getelementptr inbounds %struct.BPoint, ptr %50, i64 1
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %55, label %48, !llvm.loop !163

55:                                               ; preds = %48, %37, %40, %14
  %56 = load ptr, ptr %8, align 8, !tbaa !65
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %7, !llvm.loop !164

58:                                               ; preds = %55, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @swap_selection_bpoint(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.BPoint, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 4, !tbaa !63
  %4 = trunc i16 %3 to i8
  %5 = and i8 %4, 1
  %6 = xor i8 %5, 1
  %7 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %0, i8 noundef zeroext %6, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_separate(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @separate_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @separate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !174 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #23
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = tail call ptr @CTX_data_active_base(ptr noundef %0) #23
  %7 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !175
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !177
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.193) #23
  br label %36

17:                                               ; preds = %2
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #23
  call fastcc void @adduplicateflagNurb(ptr noundef nonnull %8, ptr noundef nonnull %3, i8 noundef zeroext 1) #22
  %18 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %3) #22, !range !79
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  call void @WM_cursor_wait(i8 noundef zeroext 0) #23
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !177
  call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.194) #23
  br label %36

23:                                               ; preds = %17
  %24 = call ptr @ED_object_add_duplicate(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, i32 noundef 0) #23
  call void @DAG_relations_tag_update(ptr noundef %4) #23
  %25 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !175
  %27 = call ptr @BKE_curve_copy(ptr noundef nonnull %10) #23
  %28 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  store ptr %27, ptr %28, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 4
  store ptr null, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !179
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr %30, align 4, !tbaa !179
  call void @make_editNurb(ptr noundef %26) #22
  %33 = load ptr, ptr %29, align 8, !tbaa !47
  call void @BKE_nurbList_free(ptr noundef %33) #23
  call void @BKE_curve_editNurb_keyIndex_free(ptr noundef %33) #23
  %34 = getelementptr inbounds %struct.EditNurb, ptr %33, i64 0, i32 1
  store ptr null, ptr %34, align 8, !tbaa !77
  call void @BLI_movelisttolist(ptr noundef %33, ptr noundef nonnull %3) #23
  call void @load_editNurb(ptr noundef %26) #22
  call void @free_editNurb(ptr noundef %26) #22
  call fastcc void @curve_delete_segments(ptr noundef nonnull %8, i8 noundef zeroext 1) #22
  call void @DAG_id_tag_update(ptr noundef nonnull %8, i16 noundef signext 2) #23
  call void @DAG_id_tag_update(ptr noundef %26, i16 noundef signext 2) #23
  %35 = load ptr, ptr %9, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %35) #23
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %26) #23
  call void @WM_cursor_wait(i8 noundef zeroext 0) #23
  br label %36

36:                                               ; preds = %23, %20, %14
  %37 = phi i32 [ 2, %14 ], [ 2, %20 ], [ 4, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret i32 %37
}

; Function Attrs: optsize
declare i32 @ED_operator_editsurfcurve(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_split_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @curve_split_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !180 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %5 = tail call ptr @object_editcurve_get(ptr noundef %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call fastcc void @adduplicateflagNurb(ptr noundef %4, ptr noundef nonnull %3, i8 noundef zeroext 1) #22
  %6 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %3) #22, !range !79
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  call fastcc void @curve_delete_segments(ptr noundef %4, i8 noundef zeroext 1) #22
  call void @BLI_movelisttolist(ptr noundef %5, ptr noundef nonnull %3) #23
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = call i32 @ED_curve_updateAnimPaths(ptr noundef %10) #22, !range !66
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef nonnull %4) #23
  br label %14

14:                                               ; preds = %13, %8
  %15 = load ptr, ptr %9, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %15) #23
  %16 = load ptr, ptr %9, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %16, i16 noundef signext 0) #23
  br label %20

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.197) #23
  br label %20

20:                                               ; preds = %14, %17
  %21 = phi i32 [ 4, %14 ], [ 2, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ed_editnurb_translate_flag(ptr nocapture noundef readonly %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %72, label %6

6:                                                ; preds = %3
  %7 = zext i16 %1 to i32
  br label %8

8:                                                ; preds = %6, %69
  %9 = phi ptr [ %4, %6 ], [ %70, %69 ]
  %10 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !50
  %12 = icmp eq i16 %11, 1
  %13 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !52
  br i1 %12, label %15, label %49

15:                                               ; preds = %8
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %69, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %17, %46
  %21 = phi i32 [ %23, %46 ], [ %14, %17 ]
  %22 = phi ptr [ %47, %46 ], [ %19, %17 ]
  %23 = add nsw i32 %21, -1
  %24 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !56
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, %7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %22, ptr noundef %2) #22
  br label %30

30:                                               ; preds = %29, %20
  %31 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 8
  %32 = load i8, ptr %31, align 4, !tbaa !58
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, %7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %37, ptr noundef %2) #22
  br label %38

38:                                               ; preds = %36, %30
  %39 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 9
  %40 = load i8, ptr %39, align 1, !tbaa !59
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, %7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 2
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %45, ptr noundef %2) #22
  br label %46

46:                                               ; preds = %44, %38
  %47 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 1
  %48 = icmp eq i32 %23, 0
  br i1 %48, label %69, label %20, !llvm.loop !181

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 7
  %51 = load i32, ptr %50, align 4, !tbaa !60
  %52 = mul nsw i32 %51, %14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !61
  br label %57

57:                                               ; preds = %54, %66
  %58 = phi i32 [ %60, %66 ], [ %52, %54 ]
  %59 = phi ptr [ %67, %66 ], [ %56, %54 ]
  %60 = add nsw i32 %58, -1
  %61 = getelementptr inbounds %struct.BPoint, ptr %59, i64 0, i32 3
  %62 = load i16, ptr %61, align 4, !tbaa !63
  %63 = and i16 %62, %1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %59, ptr noundef %2) #22
  br label %66

66:                                               ; preds = %65, %57
  %67 = getelementptr inbounds %struct.BPoint, ptr %59, i64 1
  %68 = icmp eq i32 %60, 0
  br i1 %68, label %69, label %57, !llvm.loop !182

69:                                               ; preds = %66, %46, %49, %15
  tail call void @BKE_nurb_test2D(ptr noundef nonnull %9) #23
  %70 = load ptr, ptr %9, align 8, !tbaa !65
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %8, !llvm.loop !183

72:                                               ; preds = %69, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !184 {
  %3 = load float, ptr %1, align 4, !tbaa !70
  %4 = load float, ptr %0, align 4, !tbaa !70
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !70
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !70
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !70
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !70
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !70
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ed_editnurb_extrude_flag(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %188, label %7

7:                                                ; preds = %2
  %8 = sext i16 %1 to i32
  br label %9

9:                                                ; preds = %7, %184
  %10 = phi ptr [ %5, %7 ], [ %186, %184 ]
  %11 = phi i8 [ 0, %7 ], [ %185, %184 ]
  %12 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !60
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %61

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 17
  %17 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !52
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !61
  br label %22

22:                                               ; preds = %20, %29
  %23 = phi i32 [ %31, %29 ], [ %18, %20 ]
  %24 = phi ptr [ %30, %29 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.BPoint, ptr %24, i64 0, i32 3
  %26 = load i16, ptr %25, align 4, !tbaa !63
  %27 = and i16 %26, %1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %184, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.BPoint, ptr %24, i64 1
  %31 = add nsw i32 %23, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %22, !llvm.loop !185

33:                                               ; preds = %29, %15
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %35 = shl nsw i32 %18, 1
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %36, 36
  %38 = tail call ptr %34(i64 noundef %37, ptr noundef nonnull @.str.9) #23
  %39 = load ptr, ptr %16, align 8, !tbaa !61
  %40 = load i32, ptr %17, align 8, !tbaa !52
  tail call void @ED_curve_bpcpy(ptr noundef nonnull %0, ptr noundef %38, ptr noundef %39, i32 noundef %40) #22
  %41 = load i32, ptr %17, align 8, !tbaa !52
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.BPoint, ptr %38, i64 %42
  %44 = load ptr, ptr %16, align 8, !tbaa !61
  tail call void @ED_curve_bpcpy(ptr noundef nonnull %0, ptr noundef %43, ptr noundef %44, i32 noundef %41) #22
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %46 = load ptr, ptr %16, align 8, !tbaa !61
  tail call void %45(ptr noundef %46) #23
  store ptr %38, ptr %16, align 8, !tbaa !61
  %47 = load i32, ptr %17, align 8, !tbaa !52
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %33, %49
  %50 = phi i32 [ %53, %49 ], [ %47, %33 ]
  %51 = phi ptr [ %57, %49 ], [ %38, %33 ]
  %52 = phi ptr [ %56, %49 ], [ %43, %33 ]
  %53 = add nsw i32 %50, -1
  %54 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %52, i8 noundef zeroext 1, i16 noundef signext %1, i8 noundef zeroext 1) #22, !range !79
  %55 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %51, i8 noundef zeroext 0, i16 noundef signext %1, i8 noundef zeroext 1) #22, !range !79
  %56 = getelementptr inbounds %struct.BPoint, ptr %52, i64 1
  %57 = getelementptr inbounds %struct.BPoint, ptr %51, i64 1
  %58 = icmp eq i32 %53, 0
  br i1 %58, label %59, label %49, !llvm.loop !186

59:                                               ; preds = %49, %33
  store i32 2, ptr %12, align 4, !tbaa !60
  %60 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 12
  store i16 2, ptr %60, align 2, !tbaa !73
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %10) #23
  br label %184

61:                                               ; preds = %9
  %62 = call fastcc signext i16 @isNurbselUV(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %8) #22, !range !187
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %184, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 17
  %66 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !52
  %68 = mul nsw i32 %67, %13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %65, align 8, !tbaa !61
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi i32 [ %75, %72 ], [ %68, %70 ]
  %74 = phi ptr [ %77, %72 ], [ %71, %70 ]
  %75 = add nsw i32 %73, -1
  %76 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %74, i8 noundef zeroext 0, i16 noundef signext %1, i8 noundef zeroext 1) #22, !range !79
  %77 = getelementptr inbounds %struct.BPoint, ptr %74, i64 1
  %78 = icmp eq i32 %75, 0
  br i1 %78, label %79, label %72, !llvm.loop !188

79:                                               ; preds = %72, %64
  %80 = load i32, ptr %3, align 4, !tbaa !107
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, ptr %66, align 8, !tbaa !52
  %84 = load i32, ptr %12, align 4, !tbaa !60
  br label %90

85:                                               ; preds = %79
  %86 = load i32, ptr %12, align 4, !tbaa !60
  %87 = add nsw i32 %86, -1
  %88 = icmp eq i32 %80, %87
  %89 = load i32, ptr %66, align 8, !tbaa !52
  br i1 %88, label %90, label %133

90:                                               ; preds = %82, %85
  %91 = phi i32 [ %84, %82 ], [ %86, %85 ]
  %92 = phi i32 [ %83, %82 ], [ %89, %85 ]
  %93 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %94 = add nsw i32 %91, 1
  %95 = mul nsw i32 %94, %92
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, 36
  %98 = tail call ptr %93(i64 noundef %97, ptr noundef nonnull @.str.9) #23
  %99 = load i32, ptr %12, align 4, !tbaa !60
  %100 = load i32, ptr %66, align 8, !tbaa !52
  %101 = mul nsw i32 %100, %99
  br i1 %81, label %102, label %108

102:                                              ; preds = %90
  %103 = sext i32 %100 to i64
  %104 = getelementptr inbounds %struct.BPoint, ptr %98, i64 %103
  %105 = load ptr, ptr %65, align 8, !tbaa !61
  tail call void @ED_curve_bpcpy(ptr noundef nonnull %0, ptr noundef %104, ptr noundef %105, i32 noundef %101) #22
  %106 = load ptr, ptr %65, align 8, !tbaa !61
  %107 = load i32, ptr %66, align 8, !tbaa !52
  tail call void @ED_curve_bpcpy(ptr noundef nonnull %0, ptr noundef %98, ptr noundef %106, i32 noundef %107) #22
  br label %117

108:                                              ; preds = %90
  %109 = load ptr, ptr %65, align 8, !tbaa !61
  tail call void @ED_curve_bpcpy(ptr noundef nonnull %0, ptr noundef %98, ptr noundef %109, i32 noundef %101) #22
  %110 = sext i32 %101 to i64
  %111 = getelementptr inbounds %struct.BPoint, ptr %98, i64 %110
  %112 = load ptr, ptr %65, align 8, !tbaa !61
  %113 = load i32, ptr %66, align 8, !tbaa !52
  %114 = sub nsw i32 %101, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.BPoint, ptr %112, i64 %115
  tail call void @ED_curve_bpcpy(ptr noundef nonnull %0, ptr noundef %111, ptr noundef %116, i32 noundef %113) #22
  br label %117

117:                                              ; preds = %108, %102
  %118 = phi ptr [ %98, %102 ], [ %111, %108 ]
  %119 = load i32, ptr %66, align 8, !tbaa !52
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %117, %121
  %122 = phi i32 [ %124, %121 ], [ %119, %117 ]
  %123 = phi ptr [ %126, %121 ], [ %118, %117 ]
  %124 = add nsw i32 %122, -1
  %125 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %123, i8 noundef zeroext 1, i16 noundef signext %1, i8 noundef zeroext 1) #22, !range !79
  %126 = getelementptr inbounds %struct.BPoint, ptr %123, i64 1
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %128, label %121, !llvm.loop !189

128:                                              ; preds = %121, %117
  %129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %130 = load ptr, ptr %65, align 8, !tbaa !61
  tail call void %129(ptr noundef %130) #23
  store ptr %98, ptr %65, align 8, !tbaa !61
  %131 = load i32, ptr %12, align 4, !tbaa !60
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr %12, align 4, !tbaa !60
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %10) #23
  br label %184

133:                                              ; preds = %85
  %134 = load i32, ptr %4, align 4
  %135 = icmp eq i32 %134, 0
  %136 = add nsw i32 %89, -1
  %137 = icmp eq i32 %134, %136
  %138 = select i1 %135, i1 true, i1 %137
  br i1 %138, label %139, label %184

139:                                              ; preds = %133
  %140 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %141 = add nsw i32 %89, 1
  %142 = mul nsw i32 %141, %86
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, 36
  %145 = tail call ptr %140(i64 noundef %144, ptr noundef nonnull @.str.9) #23
  %146 = load i32, ptr %12, align 4, !tbaa !60
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %139
  %149 = load ptr, ptr %65, align 8, !tbaa !61
  br label %150

150:                                              ; preds = %148, %174
  %151 = phi i32 [ 0, %148 ], [ %176, %174 ]
  %152 = phi ptr [ %145, %148 ], [ %175, %174 ]
  %153 = phi ptr [ %149, %148 ], [ %164, %174 ]
  br i1 %135, label %154, label %159

154:                                              ; preds = %150
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %152, ptr noundef nonnull align 4 dereferenceable(36) %153, i64 36, i1 false), !tbaa.struct !190
  %155 = getelementptr inbounds %struct.BPoint, ptr %152, i64 0, i32 3
  %156 = load i16, ptr %155, align 4, !tbaa !63
  %157 = or i16 %156, %1
  store i16 %157, ptr %155, align 4, !tbaa !63
  %158 = getelementptr inbounds %struct.BPoint, ptr %152, i64 1
  br label %159

159:                                              ; preds = %154, %150
  %160 = phi ptr [ %158, %154 ], [ %152, %150 ]
  %161 = load i32, ptr %66, align 8, !tbaa !52
  tail call void @ED_curve_bpcpy(ptr noundef nonnull %0, ptr noundef %160, ptr noundef %153, i32 noundef %161) #22
  %162 = load i32, ptr %66, align 8, !tbaa !52
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.BPoint, ptr %153, i64 %163
  %165 = getelementptr inbounds %struct.BPoint, ptr %160, i64 %163
  %166 = add nsw i32 %162, -1
  %167 = icmp eq i32 %134, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.BPoint, ptr %164, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %165, ptr noundef nonnull align 4 dereferenceable(36) %169, i64 36, i1 false), !tbaa.struct !190
  %170 = getelementptr inbounds %struct.BPoint, ptr %160, i64 %163, i32 3
  %171 = load i16, ptr %170, align 4, !tbaa !63
  %172 = or i16 %171, %1
  store i16 %172, ptr %170, align 4, !tbaa !63
  %173 = getelementptr inbounds %struct.BPoint, ptr %165, i64 1
  br label %174

174:                                              ; preds = %159, %168
  %175 = phi ptr [ %173, %168 ], [ %165, %159 ]
  %176 = add nuw nsw i32 %151, 1
  %177 = load i32, ptr %12, align 4, !tbaa !60
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %150, label %179, !llvm.loop !193

179:                                              ; preds = %174, %139
  %180 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %181 = load ptr, ptr %65, align 8, !tbaa !61
  tail call void %180(ptr noundef %181) #23
  store ptr %145, ptr %65, align 8, !tbaa !61
  %182 = load i32, ptr %66, align 8, !tbaa !52
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %66, align 8, !tbaa !52
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %10) #23
  br label %184

184:                                              ; preds = %22, %133, %61, %179, %128, %59
  %185 = phi i8 [ 1, %59 ], [ 1, %128 ], [ 1, %179 ], [ %11, %61 ], [ %11, %133 ], [ %11, %22 ]
  %186 = load ptr, ptr %10, align 8, !tbaa !65
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %9, !llvm.loop !194

188:                                              ; preds = %184, %2
  %189 = phi i8 [ 0, %2 ], [ %185, %184 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i8 %189
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_curve_bpcpy(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = sext i32 %3 to i64
  %6 = mul nsw i64 %5, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %6, i1 false)
  tail call fastcc void @keyIndex_updateBP(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @select_bpoint(ptr nocapture noundef %0, i8 noundef zeroext %1, i16 noundef signext %2, i8 noundef zeroext %3) unnamed_addr #10 !PGOFuncName !195 {
  %5 = getelementptr inbounds %struct.BPoint, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 2, !tbaa !159
  %7 = icmp eq i16 %6, 0
  %8 = icmp eq i8 %3, 1
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = icmp eq i8 %1, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.BPoint, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 4, !tbaa !63
  %15 = or i16 %14, %2
  store i16 %15, ptr %13, align 4, !tbaa !63
  br label %21

16:                                               ; preds = %10
  %17 = xor i16 %2, -1
  %18 = getelementptr inbounds %struct.BPoint, ptr %0, i64 0, i32 3
  %19 = load i16, ptr %18, align 4, !tbaa !63
  %20 = and i16 %19, %17
  store i16 %20, ptr %18, align 4, !tbaa !63
  br label %21

21:                                               ; preds = %4, %16, %12
  %22 = phi i8 [ 1, %12 ], [ 1, %16 ], [ 0, %4 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @BKE_nurb_knot_calc_v(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i16 @isNurbselUV(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #12 !PGOFuncName !196 {
  store i32 -1, ptr %2, align 4, !tbaa !107
  store i32 -1, ptr %1, align 4, !tbaa !107
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  br label %12

12:                                               ; preds = %10, %49
  %13 = phi i32 [ %8, %10 ], [ %51, %49 ]
  %14 = phi i32 [ -1, %10 ], [ %52, %49 ]
  %15 = phi i32 [ 0, %10 ], [ %53, %49 ]
  %16 = phi ptr [ %6, %10 ], [ %50, %49 ]
  %17 = load i32, ptr %11, align 8, !tbaa !52
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %24, label %40

19:                                               ; preds = %49, %4
  %20 = phi i32 [ -1, %4 ], [ %52, %49 ]
  %21 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !52
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %55, label %96

24:                                               ; preds = %12, %24
  %25 = phi i32 [ %34, %24 ], [ 0, %12 ]
  %26 = phi i32 [ %35, %24 ], [ 0, %12 ]
  %27 = phi ptr [ %36, %24 ], [ %16, %12 ]
  %28 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 3
  %29 = load i16, ptr %28, align 4, !tbaa !63
  %30 = sext i16 %29 to i32
  %31 = and i32 %30, %3
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %25, %33
  %35 = add nuw nsw i32 %26, 1
  %36 = getelementptr inbounds %struct.BPoint, ptr %27, i64 1
  %37 = icmp eq i32 %35, %17
  br i1 %37, label %38, label %24, !llvm.loop !197

38:                                               ; preds = %24
  %39 = icmp eq i32 %34, %17
  br i1 %39, label %42, label %47

40:                                               ; preds = %12
  %41 = icmp eq i32 %17, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %40, %38
  %43 = phi ptr [ %16, %40 ], [ %36, %38 ]
  %44 = icmp eq i32 %14, -1
  br i1 %44, label %45, label %107

45:                                               ; preds = %42
  store i32 %15, ptr %1, align 4, !tbaa !107
  %46 = load i32, ptr %7, align 4, !tbaa !60
  br label %49

47:                                               ; preds = %38
  %48 = icmp ugt i32 %34, 1
  br i1 %48, label %107, label %49

49:                                               ; preds = %40, %45, %47
  %50 = phi ptr [ %43, %45 ], [ %36, %47 ], [ %16, %40 ]
  %51 = phi i32 [ %46, %45 ], [ %13, %47 ], [ %13, %40 ]
  %52 = phi i32 [ %15, %45 ], [ %14, %47 ], [ %14, %40 ]
  %53 = add nuw nsw i32 %15, 1
  %54 = icmp slt i32 %53, %51
  br i1 %54, label %12, label %19, !llvm.loop !198

55:                                               ; preds = %19, %89
  %56 = phi i32 [ %90, %89 ], [ %22, %19 ]
  %57 = phi i64 [ %91, %89 ], [ 0, %19 ]
  %58 = load i32, ptr %7, align 4, !tbaa !60
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.BPoint, ptr %6, i64 %57
  %62 = sext i32 %56 to i64
  br label %63

63:                                               ; preds = %60, %63
  %64 = phi i32 [ 0, %60 ], [ %73, %63 ]
  %65 = phi i32 [ 0, %60 ], [ %74, %63 ]
  %66 = phi ptr [ %61, %60 ], [ %75, %63 ]
  %67 = getelementptr inbounds %struct.BPoint, ptr %66, i64 0, i32 3
  %68 = load i16, ptr %67, align 4, !tbaa !63
  %69 = sext i16 %68 to i32
  %70 = and i32 %69, %3
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = add nuw nsw i32 %64, %72
  %74 = add nuw nsw i32 %65, 1
  %75 = getelementptr inbounds %struct.BPoint, ptr %66, i64 %62
  %76 = icmp eq i32 %74, %58
  br i1 %76, label %77, label %63, !llvm.loop !199

77:                                               ; preds = %63
  %78 = icmp eq i32 %73, %58
  br i1 %78, label %81, label %87

79:                                               ; preds = %55
  %80 = icmp eq i32 %58, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %79, %77
  %82 = load i32, ptr %2, align 4, !tbaa !107
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = trunc i64 %57 to i32
  store i32 %85, ptr %2, align 4, !tbaa !107
  %86 = load i32, ptr %21, align 8, !tbaa !52
  br label %89

87:                                               ; preds = %77
  %88 = icmp ugt i32 %73, 1
  br i1 %88, label %107, label %89

89:                                               ; preds = %79, %84, %87
  %90 = phi i32 [ %86, %84 ], [ %56, %87 ], [ %56, %79 ]
  %91 = add nuw nsw i64 %57, 1
  %92 = sext i32 %90 to i64
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %55, label %94, !llvm.loop !200

94:                                               ; preds = %89
  %95 = load i32, ptr %1, align 4, !tbaa !107
  br label %96

96:                                               ; preds = %94, %19
  %97 = phi i32 [ %95, %94 ], [ %20, %19 ]
  %98 = icmp eq i32 %97, -1
  %99 = load i32, ptr %2, align 4, !tbaa !107
  br i1 %98, label %100, label %102

100:                                              ; preds = %96
  %101 = icmp sgt i32 %99, -1
  br i1 %101, label %107, label %106

102:                                              ; preds = %96
  %103 = icmp eq i32 %99, -1
  %104 = icmp sgt i32 %97, -1
  %105 = and i1 %104, %103
  br i1 %105, label %107, label %106

106:                                              ; preds = %100, %102
  br label %107

107:                                              ; preds = %47, %42, %87, %81, %102, %100, %106
  %108 = phi i16 [ 0, %106 ], [ 1, %100 ], [ 1, %102 ], [ 0, %81 ], [ 0, %87 ], [ 0, %42 ], [ 0, %47 ]
  ret i16 %108
}

; Function Attrs: optsize
declare void @BKE_nurb_knot_calc_u(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_switch_direction(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @switch_direction_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @switch_direction_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !201 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 31
  %12 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 32
  br label %13

13:                                               ; preds = %10, %29
  %14 = phi ptr [ %8, %10 ], [ %31, %29 ]
  %15 = phi i32 [ 0, %10 ], [ %30, %29 ]
  %16 = tail call i32 @isNurbsel(ptr noundef nonnull %14) #22, !range !66
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  tail call void @BKE_nurb_direction_switch(ptr noundef nonnull %14) #23
  tail call fastcc void @keyData_switchDirectionNurb(ptr noundef %5, ptr noundef nonnull %14) #22
  %19 = load i32, ptr %11, align 4, !tbaa !202
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, ptr %12, align 8, !tbaa !203
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !52
  %27 = xor i32 %22, -1
  %28 = add i32 %26, %27
  store i32 %28, ptr %12, align 8, !tbaa !203
  br label %29

29:                                               ; preds = %13, %24, %21, %18
  %30 = add nuw nsw i32 %15, 1
  %31 = load ptr, ptr %14, align 8, !tbaa !65
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %13, !llvm.loop !204

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !46
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi ptr [ %34, %33 ], [ %5, %2 ]
  %37 = tail call i32 @ED_curve_updateAnimPaths(ptr noundef %36) #22, !range !66
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef nonnull %3) #23
  br label %40

40:                                               ; preds = %39, %35
  %41 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %41, i16 noundef signext 0) #23
  %42 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %42) #23
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_spline_weight_set(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_goal_weight_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = tail call ptr @RNA_def_float_factor(ptr noundef %9, ptr noundef nonnull @.str.16, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, float noundef 0.000000e+00, float noundef 1.000000e+00) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_goal_weight_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !207 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.16) #23
  %8 = load ptr, ptr %4, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %59, label %10

10:                                               ; preds = %2, %56
  %11 = phi ptr [ %57, %56 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %15, %28
  %20 = phi i32 [ %29, %28 ], [ 0, %15 ]
  %21 = phi ptr [ %30, %28 ], [ %13, %15 ]
  %22 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  %23 = load i8, ptr %22, align 4, !tbaa !58
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 2
  store float %7, ptr %27, align 4, !tbaa !209
  br label %28

28:                                               ; preds = %19, %26
  %29 = add nuw nsw i32 %20, 1
  %30 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %31 = icmp eq i32 %29, %17
  br i1 %31, label %56, label %19, !llvm.loop !210

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !60
  %41 = mul nsw i32 %40, %38
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %36, %52
  %44 = phi i32 [ %53, %52 ], [ 0, %36 ]
  %45 = phi ptr [ %54, %52 ], [ %34, %36 ]
  %46 = getelementptr inbounds %struct.BPoint, ptr %45, i64 0, i32 3
  %47 = load i16, ptr %46, align 4, !tbaa !63
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.BPoint, ptr %45, i64 0, i32 2
  store float %7, ptr %51, align 4, !tbaa !211
  br label %52

52:                                               ; preds = %43, %50
  %53 = add nuw nsw i32 %44, 1
  %54 = getelementptr inbounds %struct.BPoint, ptr %45, i64 1
  %55 = icmp eq i32 %53, %41
  br i1 %55, label %56, label %43, !llvm.loop !212

56:                                               ; preds = %28, %52, %15, %36, %32
  %57 = load ptr, ptr %11, align 8, !tbaa !65
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %10, !llvm.loop !213

59:                                               ; preds = %56, %2
  %60 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %61, i16 noundef signext 0) #23
  %62 = load ptr, ptr %60, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %62) #23
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare ptr @RNA_def_float_factor(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_radius_set(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_radius_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_props_popup, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.22, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, float noundef 0x3F1A36E2E0000000, float noundef 1.000000e+01) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_radius_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !214 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.22) #23
  %8 = load ptr, ptr %4, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %59, label %10

10:                                               ; preds = %2, %56
  %11 = phi ptr [ %57, %56 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %15, %28
  %20 = phi i32 [ %29, %28 ], [ 0, %15 ]
  %21 = phi ptr [ %30, %28 ], [ %13, %15 ]
  %22 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  %23 = load i8, ptr %22, align 4, !tbaa !58
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 3
  store float %7, ptr %27, align 4, !tbaa !215
  br label %28

28:                                               ; preds = %19, %26
  %29 = add nuw nsw i32 %20, 1
  %30 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %31 = icmp eq i32 %29, %17
  br i1 %31, label %56, label %19, !llvm.loop !216

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !60
  %41 = mul nsw i32 %40, %38
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %36, %52
  %44 = phi i32 [ %53, %52 ], [ 0, %36 ]
  %45 = phi ptr [ %54, %52 ], [ %34, %36 ]
  %46 = getelementptr inbounds %struct.BPoint, ptr %45, i64 0, i32 3
  %47 = load i16, ptr %46, align 4, !tbaa !63
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.BPoint, ptr %45, i64 0, i32 5
  store float %7, ptr %51, align 4, !tbaa !217
  br label %52

52:                                               ; preds = %43, %50
  %53 = add nuw nsw i32 %44, 1
  %54 = getelementptr inbounds %struct.BPoint, ptr %45, i64 1
  %55 = icmp eq i32 %53, %41
  br i1 %55, label %56, label %43, !llvm.loop !218

56:                                               ; preds = %28, %52, %15, %36, %32
  %57 = load ptr, ptr %11, align 8, !tbaa !65
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %10, !llvm.loop !219

59:                                               ; preds = %56, %2
  %60 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %61) #23
  %62 = load ptr, ptr %60, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %62, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_smooth(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @smooth_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @smooth_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !220 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %115, label %7

7:                                                ; preds = %2, %112
  %8 = phi ptr [ %113, %112 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !65
  %14 = tail call ptr %13(ptr noundef nonnull %10) #23
  %15 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 13
  %16 = load i16, ptr %15, align 4, !tbaa !69
  %17 = and i16 %16, 1
  %18 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !52
  %20 = add nsw i16 %17, -1
  %21 = sext i16 %20 to i32
  %22 = add nsw i32 %19, %21
  %23 = xor i16 %17, 1
  %24 = zext nneg i16 %23 to i32
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %12
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %27(ptr noundef %14) #23
  br label %112

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %30 = zext nneg i16 %23 to i64
  %31 = zext nneg i32 %22 to i64
  br label %32

32:                                               ; preds = %28, %55
  %33 = phi i64 [ %30, %28 ], [ %56, %55 ]
  %34 = phi i8 [ 0, %28 ], [ %57, %55 ]
  %35 = load ptr, ptr %9, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 %33, i32 8
  %37 = load i8, ptr %36, align 4, !tbaa !58
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = add nuw nsw i64 %33, 1
  br label %55

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 %33
  %44 = load i32, ptr %29, align 8, !tbaa !52
  %45 = trunc i64 %33 to i32
  %46 = add i32 %45, -1
  %47 = tail call fastcc i32 @mod_i(i32 noundef %46, i32 noundef %44) #22
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 %48
  %50 = add nuw nsw i64 %33, 1
  %51 = trunc i64 %50 to i32
  %52 = tail call fastcc i32 @mod_i(i32 noundef %51, i32 noundef %44) #22
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 %53
  tail call fastcc void @smooth_single_bezt(ptr noundef %43, ptr noundef %49, ptr noundef %54) #22
  br label %55

55:                                               ; preds = %40, %42
  %56 = phi i64 [ %41, %40 ], [ %50, %42 ]
  %57 = phi i8 [ %34, %40 ], [ 1, %42 ]
  %58 = icmp eq i64 %56, %31
  br i1 %58, label %59, label %32, !llvm.loop !221

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %60(ptr noundef %14) #23
  %61 = icmp eq i8 %57, 0
  br i1 %61, label %112, label %62

62:                                               ; preds = %59
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %8) #23
  br label %112

63:                                               ; preds = %7
  %64 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  %66 = icmp eq ptr %65, null
  br i1 %66, label %112, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !65
  %69 = tail call ptr %68(ptr noundef nonnull %65) #23
  %70 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 13
  %71 = load i16, ptr %70, align 4, !tbaa !69
  %72 = and i16 %71, 1
  %73 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !52
  %75 = add nsw i16 %72, -1
  %76 = sext i16 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = xor i16 %72, 1
  %79 = zext nneg i16 %78 to i32
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %83 = zext nneg i16 %78 to i64
  %84 = zext nneg i32 %77 to i64
  br label %85

85:                                               ; preds = %81, %107
  %86 = phi i64 [ %83, %81 ], [ %108, %107 ]
  %87 = load ptr, ptr %64, align 8, !tbaa !61
  %88 = getelementptr inbounds %struct.BPoint, ptr %87, i64 %86, i32 3
  %89 = load i16, ptr %88, align 4, !tbaa !63
  %90 = and i16 %89, 1
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = add nuw nsw i64 %86, 1
  br label %107

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.BPoint, ptr %87, i64 %86
  %96 = load i32, ptr %82, align 8, !tbaa !52
  %97 = trunc i64 %86 to i32
  %98 = add i32 %97, -1
  %99 = tail call fastcc i32 @mod_i(i32 noundef %98, i32 noundef %96) #22
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.BPoint, ptr %69, i64 %100
  %102 = add nuw nsw i64 %86, 1
  %103 = trunc i64 %102 to i32
  %104 = tail call fastcc i32 @mod_i(i32 noundef %103, i32 noundef %96) #22
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.BPoint, ptr %69, i64 %105
  tail call fastcc void @smooth_single_bp(ptr noundef %95, ptr noundef %101, ptr noundef %106) #22
  br label %107

107:                                              ; preds = %92, %94
  %108 = phi i64 [ %93, %92 ], [ %102, %94 ]
  %109 = icmp eq i64 %108, %84
  br i1 %109, label %110, label %85, !llvm.loop !222

110:                                              ; preds = %107, %67
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %111(ptr noundef %69) #23
  br label %112

112:                                              ; preds = %26, %59, %62, %110, %63
  %113 = load ptr, ptr %8, align 8, !tbaa !65
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %7, !llvm.loop !223

115:                                              ; preds = %112, %2
  %116 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %117) #23
  %118 = load ptr, ptr %116, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %118, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_smooth_weight(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_smooth_weight_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @curve_smooth_weight_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !224 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  tail call fastcc void @curve_smooth_value(ptr noundef %4, i32 noundef 40, i32 noundef 20) #22
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %6) #23
  %7 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_smooth_radius(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_smooth_radius_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @curve_smooth_radius_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !225 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  tail call fastcc void @curve_smooth_value(ptr noundef %4, i32 noundef 44, i32 noundef 28) #22
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %6) #23
  %7 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_smooth_tilt(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_smooth_tilt_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @curve_smooth_tilt_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !226 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  tail call fastcc void @curve_smooth_value(ptr noundef %4, i32 noundef 36, i32 noundef 16) #22
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %6) #23
  %7 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @selectend_nurb(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #9 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %76, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @object_editcurve_get(ptr noundef nonnull %0) #22
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 32
  store i32 -1, ptr %10, align 8, !tbaa !203
  %11 = load ptr, ptr %7, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %76, label %13

13:                                               ; preds = %6
  %14 = icmp eq i32 %1, 0
  %15 = icmp eq i8 %2, 0
  br label %16

16:                                               ; preds = %13, %73
  %17 = phi ptr [ %11, %13 ], [ %74, %73 ]
  %18 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !50
  %20 = icmp eq i16 %19, 1
  %21 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !52
  br i1 %20, label %23, label %42

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = sext i32 %22 to i64
  %27 = getelementptr %struct.BezTriple, ptr %25, i64 %26
  %28 = getelementptr %struct.BezTriple, ptr %27, i64 -1
  %29 = select i1 %14, ptr %28, ptr %25
  br label %30

30:                                               ; preds = %39, %23
  %31 = phi i32 [ %22, %23 ], [ %32, %39 ]
  %32 = add nsw i32 %31, -1
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %30
  br i1 %15, label %37, label %35

35:                                               ; preds = %34
  %36 = tail call fastcc zeroext i8 @swap_selection_beztriple(ptr noundef %29) #22, !range !79
  br label %39

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef %29, i8 noundef zeroext %3, i32 noundef 0) #22
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i8 [ %36, %35 ], [ %38, %37 ]
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %30, label %73

42:                                               ; preds = %16
  %43 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !60
  %45 = mul nsw i32 %44, %22
  %46 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  %48 = sext i32 %45 to i64
  %49 = getelementptr %struct.BPoint, ptr %47, i64 %48
  %50 = getelementptr %struct.BPoint, ptr %49, i64 -1
  %51 = select i1 %14, ptr %50, ptr %47
  %52 = icmp eq i32 %45, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.BPoint, ptr %51, i64 0, i32 4
  br label %55

55:                                               ; preds = %72, %53
  %56 = phi i32 [ %45, %53 ], [ %57, %72 ]
  %57 = add nsw i32 %56, -1
  %58 = load i16, ptr %54, align 2, !tbaa !159
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  br i1 %15, label %63, label %61

61:                                               ; preds = %60
  %62 = tail call fastcc zeroext i8 @swap_selection_bpoint(ptr noundef nonnull %51) #22, !range !79
  br label %65

63:                                               ; preds = %60
  %64 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %51, i8 noundef zeroext %3, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i8 [ %62, %61 ], [ %64, %63 ]
  %67 = icmp ne i8 %66, 0
  %68 = icmp eq i32 %57, 0
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %73, label %72

70:                                               ; preds = %55
  %71 = icmp eq i32 %57, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %70, %65
  br label %55, !llvm.loop !227

73:                                               ; preds = %70, %65, %39, %30, %42
  %74 = load ptr, ptr %17, align 8, !tbaa !65
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %16, !llvm.loop !228

76:                                               ; preds = %73, %6, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @swap_selection_beztriple(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !229 {
  %2 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !58
  %4 = and i8 %3, 1
  %5 = xor i8 %4, 1
  %6 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %0, i8 noundef zeroext %5, i32 noundef 0) #22
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @select_beztriple(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #10 !PGOFuncName !230 {
  %4 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 2, !tbaa !157
  %6 = icmp eq i8 %5, 0
  %7 = icmp eq i32 %2, 1
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = icmp eq i8 %1, 1
  %11 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 1, !tbaa !56
  %13 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  br i1 %10, label %15, label %21

15:                                               ; preds = %9
  %16 = or i8 %12, 1
  store i8 %16, ptr %11, align 1, !tbaa !56
  %17 = load i8, ptr %13, align 4, !tbaa !58
  %18 = or i8 %17, 1
  store i8 %18, ptr %13, align 4, !tbaa !58
  %19 = load i8, ptr %14, align 1, !tbaa !59
  %20 = or i8 %19, 1
  br label %27

21:                                               ; preds = %9
  %22 = and i8 %12, -2
  store i8 %22, ptr %11, align 1, !tbaa !56
  %23 = load i8, ptr %13, align 4, !tbaa !58
  %24 = and i8 %23, -2
  store i8 %24, ptr %13, align 4, !tbaa !58
  %25 = load i8, ptr %14, align 1, !tbaa !59
  %26 = and i8 %25, -2
  br label %27

27:                                               ; preds = %15, %21
  %28 = phi i8 [ %26, %21 ], [ %20, %15 ]
  store i8 %28, ptr %14, align 1, !tbaa !59
  br label %29

29:                                               ; preds = %27, %3
  %30 = phi i8 [ 0, %3 ], [ 1, %27 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_de_select_first(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @de_select_first_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @de_select_first_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !231 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  tail call void @selectend_nurb(ptr noundef %3, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #23
  %6 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %6) #23
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editcurve(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_de_select_last(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @de_select_last_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @de_select_last_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !232 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  tail call void @selectend_nurb(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #23
  %6 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %6) #23
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_select_all(ptr noundef %0) local_unnamed_addr #5 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @de_select_all_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @de_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !233 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.198) #23
  switch i32 %9, label %26 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %16
    i32 3, label %19
  ]

10:                                               ; preds = %2
  %11 = tail call fastcc zeroext i8 @nurb_has_selected_cps(ptr noundef %6) #22, !range !79
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2, %10
  %14 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  tail call void @ED_curve_select_all(ptr noundef %15) #22
  br label %26

16:                                               ; preds = %2, %10
  %17 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  tail call void @ED_curve_deselect_all(ptr noundef %18) #22
  br label %26

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  %23 = load i16, ptr %22, align 8, !tbaa !234
  %24 = trunc i16 %23 to i8
  %25 = and i8 %24, 1
  tail call void @ED_curve_select_swap(ptr noundef %21, i8 noundef zeroext %25) #22
  br label %26

26:                                               ; preds = %2, %19, %16, %13
  %27 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %27) #23
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %5) #23
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_hide(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @hide_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !235 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.48) #23
  %10 = load ptr, ptr %6, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %123, label %12

12:                                               ; preds = %2
  %13 = and i32 %9, 255
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  br label %16

16:                                               ; preds = %12, %120
  %17 = phi ptr [ %10, %12 ], [ %121, %120 ]
  %18 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !50
  %20 = icmp eq i16 %19, 1
  %21 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !52
  br i1 %20, label %23, label %80

23:                                               ; preds = %16
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %118, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %25, %69
  %29 = phi i32 [ %32, %69 ], [ %22, %25 ]
  %30 = phi i32 [ %74, %69 ], [ 0, %25 ]
  %31 = phi ptr [ %75, %69 ], [ %27, %25 ]
  %32 = add nsw i32 %29, -1
  %33 = load i16, ptr %15, align 8, !tbaa !234
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  %36 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 8
  %37 = load i8, ptr %36, align 4, !tbaa !58
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %14, label %40, label %53

40:                                               ; preds = %28
  br i1 %35, label %42, label %41

41:                                               ; preds = %40
  br i1 %39, label %69, label %66

42:                                               ; preds = %40
  br i1 %39, label %43, label %66

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %45 = load i8, ptr %44, align 1, !tbaa !56
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %50 = load i8, ptr %49, align 1, !tbaa !59
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %69, label %66

53:                                               ; preds = %28
  br i1 %35, label %55, label %54

54:                                               ; preds = %53
  br i1 %39, label %66, label %69

55:                                               ; preds = %53
  br i1 %39, label %56, label %69

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %63 = load i8, ptr %62, align 1, !tbaa !59
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54, %61, %41, %42, %43, %48
  %67 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %31, i8 noundef zeroext 0, i32 noundef 1) #22
  %68 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 10
  store i8 1, ptr %68, align 2, !tbaa !157
  br label %69

69:                                               ; preds = %66, %41, %48, %54, %55, %56, %61
  %70 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 10
  %71 = load i8, ptr %70, align 2, !tbaa !157
  %72 = icmp ne i8 %71, 0
  %73 = zext i1 %72 to i32
  %74 = add nuw nsw i32 %30, %73
  %75 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 1
  %76 = icmp eq i32 %32, 0
  br i1 %76, label %77, label %28, !llvm.loop !236

77:                                               ; preds = %69
  %78 = load i32, ptr %21, align 8, !tbaa !52
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %118, label %120

80:                                               ; preds = %16
  %81 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 7
  %82 = load i32, ptr %81, align 4, !tbaa !60
  %83 = mul nsw i32 %82, %22
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %114, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 17
  %87 = load ptr, ptr %86, align 8, !tbaa !61
  br label %88

88:                                               ; preds = %85, %102
  %89 = phi i32 [ %92, %102 ], [ %83, %85 ]
  %90 = phi i32 [ %107, %102 ], [ 0, %85 ]
  %91 = phi ptr [ %108, %102 ], [ %87, %85 ]
  %92 = add nsw i32 %89, -1
  %93 = getelementptr inbounds %struct.BPoint, ptr %91, i64 0, i32 3
  %94 = load i16, ptr %93, align 4, !tbaa !63
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  br i1 %14, label %97, label %98

97:                                               ; preds = %88
  br i1 %96, label %102, label %99

98:                                               ; preds = %88
  br i1 %96, label %99, label %102

99:                                               ; preds = %98, %97
  %100 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %91, i8 noundef zeroext 0, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  %101 = getelementptr inbounds %struct.BPoint, ptr %91, i64 0, i32 4
  store i16 1, ptr %101, align 2, !tbaa !159
  br label %102

102:                                              ; preds = %99, %97, %98
  %103 = getelementptr inbounds %struct.BPoint, ptr %91, i64 0, i32 4
  %104 = load i16, ptr %103, align 2, !tbaa !159
  %105 = icmp ne i16 %104, 0
  %106 = zext i1 %105 to i32
  %107 = add nuw nsw i32 %90, %106
  %108 = getelementptr inbounds %struct.BPoint, ptr %91, i64 1
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %110, label %88, !llvm.loop !237

110:                                              ; preds = %102
  %111 = load i32, ptr %21, align 8, !tbaa !52
  %112 = load i32, ptr %81, align 4, !tbaa !60
  %113 = mul nsw i32 %112, %111
  br label %114

114:                                              ; preds = %110, %80
  %115 = phi i32 [ %113, %110 ], [ 0, %80 ]
  %116 = phi i32 [ %107, %110 ], [ 0, %80 ]
  %117 = icmp eq i32 %116, %115
  br i1 %117, label %118, label %120

118:                                              ; preds = %114, %77, %23
  %119 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 4
  store i16 1, ptr %119, align 4, !tbaa !238
  br label %120

120:                                              ; preds = %118, %77, %114
  %121 = load ptr, ptr %17, align 8, !tbaa !65
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %16, !llvm.loop !239

123:                                              ; preds = %120, %2
  %124 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %124, i16 noundef signext 0) #23
  %125 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %125) #23
  %126 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %126) #23
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reveal_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !240 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %2, %52
  %8 = phi ptr [ %53, %52 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 4
  store i16 0, ptr %9, align 4, !tbaa !238
  %10 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !50
  %12 = icmp eq i16 %11, 1
  %13 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !52
  br i1 %12, label %15, label %32

15:                                               ; preds = %7
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %17, %29
  %21 = phi i32 [ %23, %29 ], [ %14, %17 ]
  %22 = phi ptr [ %30, %29 ], [ %19, %17 ]
  %23 = add nsw i32 %21, -1
  %24 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 10
  %25 = load i8, ptr %24, align 2, !tbaa !157
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %22, i8 noundef zeroext 1, i32 noundef 1) #22
  store i8 0, ptr %24, align 2, !tbaa !157
  br label %29

29:                                               ; preds = %27, %20
  %30 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 1
  %31 = icmp eq i32 %23, 0
  br i1 %31, label %52, label %20, !llvm.loop !241

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !60
  %35 = mul nsw i32 %34, %14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  br label %40

40:                                               ; preds = %37, %49
  %41 = phi i32 [ %43, %49 ], [ %35, %37 ]
  %42 = phi ptr [ %50, %49 ], [ %39, %37 ]
  %43 = add nsw i32 %41, -1
  %44 = getelementptr inbounds %struct.BPoint, ptr %42, i64 0, i32 4
  %45 = load i16, ptr %44, align 2, !tbaa !159
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %42, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  store i16 0, ptr %44, align 2, !tbaa !159
  br label %49

49:                                               ; preds = %47, %40
  %50 = getelementptr inbounds %struct.BPoint, ptr %42, i64 1
  %51 = icmp eq i32 %43, 0
  br i1 %51, label %52, label %40, !llvm.loop !242

52:                                               ; preds = %49, %29, %32, %15
  %53 = load ptr, ptr %8, align 8, !tbaa !65
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %7, !llvm.loop !243

55:                                               ; preds = %52, %2
  %56 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %57, i16 noundef signext 0) #23
  %58 = load ptr, ptr %56, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %58) #23
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_subdivide(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @subdivide_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef 10) #23
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @subdivide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !244 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.57) #23
  tail call fastcc void @subdividenurb(ptr noundef %3, i32 noundef %6) #22
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call i32 @ED_curve_updateAnimPaths(ptr noundef %8) #22, !range !66
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef nonnull %3) #23
  br label %12

12:                                               ; preds = %11, %2
  %13 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %13) #23
  %14 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %14, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_spline_type_set(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.65, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.66, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_spline_type_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.67, ptr noundef nonnull @CURVE_OT_spline_type_set.type_items, i32 noundef 0, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !245
  %12 = load ptr, ptr %8, align 8, !tbaa !206
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_spline_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !246 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.70) #23
  %8 = trunc i32 %7 to i8
  %9 = load ptr, ptr %5, align 8, !tbaa !208
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.67) #23
  %11 = and i32 %10, -2
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %62, label %16

16:                                               ; preds = %13
  %17 = trunc i32 %10 to i16
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %19

19:                                               ; preds = %40, %16
  %20 = phi ptr [ %45, %40 ], [ %14, %16 ]
  %21 = phi i1 [ false, %40 ], [ true, %16 ]
  %22 = phi i8 [ %44, %40 ], [ 0, %16 ]
  br label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !177
  tail call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.203) #23
  br label %62

26:                                               ; preds = %19, %37
  %27 = phi ptr [ %38, %37 ], [ %20, %19 ]
  %28 = tail call i32 @isNurbsel(ptr noundef nonnull %27) #22, !range !66
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Nurb, ptr %27, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !52
  %33 = tail call zeroext i8 @BKE_nurb_type_convert(ptr noundef nonnull %27, i16 noundef signext %17, i8 noundef zeroext %8) #23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load ptr, ptr %18, align 8, !tbaa !177
  tail call void @BKE_report(ptr noundef %36, i32 noundef 32, ptr noundef nonnull @.str.204) #23
  br label %37

37:                                               ; preds = %35, %26
  %38 = load ptr, ptr %27, align 8, !tbaa !65
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %26, !llvm.loop !247

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.Nurb, ptr %27, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !52
  %43 = icmp eq i32 %32, %42
  %44 = select i1 %43, i8 %22, i8 1
  %45 = load ptr, ptr %27, align 8, !tbaa !65
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %19, !llvm.loop !247

47:                                               ; preds = %37
  br i1 %21, label %62, label %48

48:                                               ; preds = %40, %47
  %49 = phi i8 [ %22, %47 ], [ %44, %40 ]
  %50 = icmp eq i8 %49, 0
  %51 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = tail call i32 @ED_curve_updateAnimPaths(ptr noundef %52) #22, !range !66
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef nonnull %3) #23
  br label %56

56:                                               ; preds = %55, %48
  %57 = load ptr, ptr %51, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %57, i16 noundef signext 0) #23
  %58 = load ptr, ptr %51, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %58) #23
  br i1 %50, label %62, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %51, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.Curve, ptr %60, i64 0, i32 32
  store i32 -1, ptr %61, align 8, !tbaa !203
  br label %62

62:                                               ; preds = %13, %47, %56, %59, %23
  %63 = phi i32 [ 2, %23 ], [ 4, %59 ], [ 4, %56 ], [ 2, %47 ], [ 2, %13 ]
  ret i32 %63
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_handle_type_set(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.83, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.84, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.85, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !205
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_handle_type_exec, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.67, ptr noundef nonnull @CURVE_OT_handle_type_set.editcurve_handle_type_items, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !245
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_handle_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !248 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.67) #23
  %8 = trunc i32 %7 to i8
  tail call void @BKE_nurbList_handles_set(ptr noundef %4, i8 noundef zeroext %8) #23
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %10) #23
  %11 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_normals_make_consistent(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.86, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.88, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_normals_make_consistent_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @curve_normals_make_consistent_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !249 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.89) #23
  %8 = trunc i32 %7 to i8
  tail call void @BKE_nurbList_handles_recalculate(ptr noundef %4, i8 noundef zeroext %8, i8 noundef zeroext 1) #23
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %10) #23
  %11 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_make_segment(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.93, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.94, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_segment_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_segment_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !250 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i16 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !92
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %50, %2, %10
  %14 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  br label %55

15:                                               ; preds = %10, %50
  %16 = phi ptr [ %51, %50 ], [ %11, %10 ]
  %17 = tail call i32 @isNurbsel(ptr noundef nonnull %16) #22, !range !66
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !60
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %53, label %27

27:                                               ; preds = %23, %19
  %28 = tail call fastcc i32 @isNurbsel_count(ptr noundef %5, ptr noundef nonnull %16) #22
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %53, label %30

30:                                               ; preds = %27
  %31 = icmp eq i32 %28, 1
  br i1 %31, label %32, label %50

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !60
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.BPoint, ptr %38, i64 0, i32 3
  %40 = load i16, ptr %39, align 4, !tbaa !63
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = sext i32 %21 to i64
  %45 = getelementptr %struct.BPoint, ptr %38, i64 %44
  %46 = getelementptr %struct.BPoint, ptr %45, i64 -1, i32 3
  %47 = load i16, ptr %46, align 4, !tbaa !63
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %30, %43, %36, %32, %15
  %51 = load ptr, ptr %16, align 8, !tbaa !152
  %52 = icmp eq ptr %51, null
  br i1 %52, label %13, label %15, !llvm.loop !251

53:                                               ; preds = %23, %27, %43
  %54 = tail call fastcc i32 @merge_nurb(ptr noundef %0, ptr noundef %1) #22, !range !252
  br label %371

55:                                               ; preds = %13, %200
  %56 = phi ptr [ %201, %200 ], [ null, %13 ]
  %57 = phi ptr [ %202, %200 ], [ null, %13 ]
  %58 = phi ptr [ %59, %200 ], [ %6, %13 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !65
  %60 = icmp eq ptr %59, null
  br i1 %60, label %206, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.Nurb, ptr %59, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !52
  %64 = icmp eq i32 %63, 1
  %65 = getelementptr inbounds %struct.Nurb, ptr %59, i64 0, i32 13
  %66 = load i16, ptr %65, align 4, !tbaa !69
  br i1 %64, label %67, label %69

67:                                               ; preds = %61
  %68 = and i16 %66, -2
  store i16 %68, ptr %65, align 4, !tbaa !69
  br label %69

69:                                               ; preds = %61, %67
  %70 = phi i16 [ %68, %67 ], [ %66, %61 ]
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %200

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Nurb, ptr %59, i64 0, i32 2
  %75 = load i16, ptr %74, align 8, !tbaa !50
  %76 = icmp eq i16 %75, 1
  br i1 %76, label %77, label %167

77:                                               ; preds = %73
  %78 = load i16, ptr %14, align 8, !tbaa !234
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  %81 = getelementptr inbounds %struct.Nurb, ptr %59, i64 0, i32 18
  %82 = load ptr, ptr %81, align 8, !tbaa !53
  %83 = sext i32 %63 to i64
  %84 = getelementptr %struct.BezTriple, ptr %82, i64 %83
  %85 = getelementptr %struct.BezTriple, ptr %84, i64 -1, i32 8
  %86 = load i8, ptr %85, align 4, !tbaa !58
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %80, label %90, label %89

89:                                               ; preds = %77
  br i1 %88, label %123, label %101

90:                                               ; preds = %77
  br i1 %88, label %91, label %101

91:                                               ; preds = %90
  %92 = getelementptr %struct.BezTriple, ptr %84, i64 -1, i32 7
  %93 = load i8, ptr %92, align 1, !tbaa !56
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = getelementptr %struct.BezTriple, ptr %84, i64 -1, i32 9
  %98 = load i8, ptr %97, align 1, !tbaa !59
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %128, label %101

101:                                              ; preds = %96, %91, %90, %89
  %102 = icmp eq ptr %57, null
  br i1 %102, label %200, label %103

103:                                              ; preds = %101
  %104 = icmp eq ptr %56, null
  br i1 %104, label %105, label %200

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 8
  %107 = load i8, ptr %106, align 4, !tbaa !58
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  br i1 %80, label %111, label %110

110:                                              ; preds = %105
  br i1 %109, label %122, label %200

111:                                              ; preds = %105
  br i1 %109, label %112, label %200

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 7
  %114 = load i8, ptr %113, align 1, !tbaa !56
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %200

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 9
  %119 = load i8, ptr %118, align 1, !tbaa !59
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %200

122:                                              ; preds = %117, %110
  tail call void @BKE_nurb_direction_switch(ptr noundef nonnull %59) #23
  tail call fastcc void @keyData_switchDirectionNurb(ptr noundef nonnull %5, ptr noundef nonnull %59) #22
  br label %200

123:                                              ; preds = %89
  %124 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 8
  %125 = load i8, ptr %124, align 4, !tbaa !58
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %200, label %143

128:                                              ; preds = %96
  %129 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 8
  %130 = load i8, ptr %129, align 4, !tbaa !58
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 7
  %135 = load i8, ptr %134, align 1, !tbaa !56
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.BezTriple, ptr %82, i64 0, i32 9
  %140 = load i8, ptr %139, align 1, !tbaa !59
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %200, label %143

143:                                              ; preds = %138, %133, %128, %123
  %144 = icmp eq ptr %56, null
  br i1 %144, label %200, label %145

145:                                              ; preds = %143
  %146 = icmp eq ptr %57, null
  br i1 %146, label %147, label %200

147:                                              ; preds = %145
  %148 = sext i32 %63 to i64
  %149 = getelementptr %struct.BezTriple, ptr %82, i64 %148
  %150 = getelementptr %struct.BezTriple, ptr %149, i64 -1, i32 8
  %151 = load i8, ptr %150, align 4, !tbaa !58
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  br i1 %80, label %155, label %154

154:                                              ; preds = %147
  br i1 %153, label %166, label %200

155:                                              ; preds = %147
  br i1 %153, label %156, label %200

156:                                              ; preds = %155
  %157 = getelementptr %struct.BezTriple, ptr %149, i64 -1, i32 7
  %158 = load i8, ptr %157, align 1, !tbaa !56
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %200

161:                                              ; preds = %156
  %162 = getelementptr %struct.BezTriple, ptr %149, i64 -1, i32 9
  %163 = load i8, ptr %162, align 1, !tbaa !59
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %200

166:                                              ; preds = %161, %154
  tail call void @BKE_nurb_direction_switch(ptr noundef nonnull %59) #23
  tail call fastcc void @keyData_switchDirectionNurb(ptr noundef nonnull %5, ptr noundef nonnull %59) #22
  br label %200

167:                                              ; preds = %73
  %168 = getelementptr inbounds %struct.Nurb, ptr %59, i64 0, i32 7
  %169 = load i32, ptr %168, align 4, !tbaa !60
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %200

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.Nurb, ptr %59, i64 0, i32 17
  %173 = load ptr, ptr %172, align 8, !tbaa !61
  %174 = sext i32 %63 to i64
  %175 = getelementptr %struct.BPoint, ptr %173, i64 %174
  %176 = getelementptr %struct.BPoint, ptr %175, i64 -1, i32 3
  %177 = load i16, ptr %176, align 4, !tbaa !63
  %178 = and i16 %177, 1
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %171
  %181 = icmp eq ptr %57, null
  br i1 %181, label %200, label %182

182:                                              ; preds = %180
  %183 = icmp eq ptr %56, null
  br i1 %183, label %184, label %200

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.BPoint, ptr %173, i64 0, i32 3
  %186 = load i16, ptr %185, align 4, !tbaa !63
  %187 = and i16 %186, 1
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %184
  tail call void @BKE_nurb_direction_switch(ptr noundef nonnull %59) #23
  tail call fastcc void @keyData_switchDirectionNurb(ptr noundef %5, ptr noundef nonnull %59) #22
  br label %200

190:                                              ; preds = %171
  %191 = getelementptr inbounds %struct.BPoint, ptr %173, i64 0, i32 3
  %192 = load i16, ptr %191, align 4, !tbaa !63
  %193 = and i16 %192, 1
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = icmp eq ptr %56, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %195
  %198 = icmp eq ptr %57, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %197
  tail call void @BKE_nurb_direction_switch(ptr noundef nonnull %59) #23
  tail call fastcc void @keyData_switchDirectionNurb(ptr noundef %5, ptr noundef nonnull %59) #22
  br label %200

200:                                              ; preds = %195, %180, %143, %101, %123, %138, %145, %166, %161, %156, %155, %154, %110, %111, %112, %117, %122, %103, %182, %189, %184, %199, %197, %190, %167, %69
  %201 = phi ptr [ %59, %110 ], [ %59, %122 ], [ %59, %111 ], [ %59, %112 ], [ %59, %117 ], [ %56, %103 ], [ %56, %154 ], [ %56, %166 ], [ %56, %155 ], [ %56, %156 ], [ %56, %161 ], [ %56, %145 ], [ %56, %123 ], [ %56, %138 ], [ %59, %189 ], [ %59, %184 ], [ %56, %182 ], [ %56, %199 ], [ %56, %197 ], [ %56, %190 ], [ %56, %167 ], [ %56, %69 ], [ %56, %101 ], [ %59, %143 ], [ %56, %180 ], [ %59, %195 ]
  %202 = phi ptr [ %57, %110 ], [ %57, %122 ], [ %57, %111 ], [ %57, %112 ], [ %57, %117 ], [ %57, %103 ], [ %59, %154 ], [ %59, %166 ], [ %59, %155 ], [ %59, %156 ], [ %59, %161 ], [ %57, %145 ], [ %57, %123 ], [ %57, %138 ], [ %57, %189 ], [ %57, %184 ], [ %57, %182 ], [ %59, %199 ], [ %57, %197 ], [ %57, %190 ], [ %57, %167 ], [ %57, %69 ], [ %59, %101 ], [ %57, %143 ], [ %59, %180 ], [ %57, %195 ]
  %203 = icmp ne ptr %201, null
  %204 = icmp ne ptr %202, null
  %205 = select i1 %203, i1 %204, i1 false
  br i1 %205, label %206, label %55, !llvm.loop !253

206:                                              ; preds = %200, %55
  %207 = phi ptr [ %201, %200 ], [ %56, %55 ]
  %208 = phi ptr [ %202, %200 ], [ %57, %55 ]
  %209 = icmp ne ptr %207, null
  %210 = icmp ne ptr %208, null
  %211 = select i1 %209, i1 %210, i1 false
  %212 = icmp ne ptr %207, %208
  %213 = select i1 %211, i1 %212, i1 false
  br i1 %213, label %214, label %281

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.Nurb, ptr %207, i64 0, i32 2
  %216 = load i16, ptr %215, align 8, !tbaa !50
  %217 = getelementptr inbounds %struct.Nurb, ptr %208, i64 0, i32 2
  %218 = load i16, ptr %217, align 8, !tbaa !50
  %219 = icmp eq i16 %216, %218
  br i1 %219, label %220, label %360

220:                                              ; preds = %214
  %221 = icmp eq i16 %216, 1
  %222 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %223 = getelementptr inbounds %struct.Nurb, ptr %207, i64 0, i32 6
  %224 = load i32, ptr %223, align 8, !tbaa !52
  %225 = getelementptr inbounds %struct.Nurb, ptr %208, i64 0, i32 6
  %226 = load i32, ptr %225, align 8, !tbaa !52
  %227 = add nsw i32 %226, %224
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  br i1 %221, label %230, label %250

230:                                              ; preds = %220
  %231 = mul nsw i64 %228, 72
  %232 = tail call ptr %222(i64 noundef %231, ptr noundef nonnull @.str.205) #23
  %233 = load ptr, ptr %229, align 8, !tbaa !47
  %234 = getelementptr inbounds %struct.Nurb, ptr %208, i64 0, i32 18
  %235 = load ptr, ptr %234, align 8, !tbaa !53
  %236 = load i32, ptr %225, align 8, !tbaa !52
  tail call void @ED_curve_beztcpy(ptr noundef %233, ptr noundef %232, ptr noundef %235, i32 noundef %236) #22
  %237 = load ptr, ptr %229, align 8, !tbaa !47
  %238 = load i32, ptr %225, align 8, !tbaa !52
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.BezTriple, ptr %232, i64 %239
  %241 = getelementptr inbounds %struct.Nurb, ptr %207, i64 0, i32 18
  %242 = load ptr, ptr %241, align 8, !tbaa !53
  %243 = load i32, ptr %223, align 8, !tbaa !52
  tail call void @ED_curve_beztcpy(ptr noundef %237, ptr noundef %240, ptr noundef %242, i32 noundef %243) #22
  %244 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %245 = load ptr, ptr %241, align 8, !tbaa !53
  tail call void %244(ptr noundef %245) #23
  store ptr %232, ptr %241, align 8, !tbaa !53
  %246 = load i32, ptr %225, align 8, !tbaa !52
  %247 = load i32, ptr %223, align 8, !tbaa !52
  %248 = add nsw i32 %247, %246
  store i32 %248, ptr %223, align 8, !tbaa !52
  tail call void @BLI_remlink(ptr noundef %6, ptr noundef nonnull %208) #23
  %249 = load ptr, ptr %229, align 8, !tbaa !47
  tail call fastcc void @keyIndex_delNurb(ptr noundef %249, ptr noundef nonnull %208) #22
  tail call void @BKE_nurb_free(ptr noundef nonnull %208) #23
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %207) #23
  br label %280

250:                                              ; preds = %220
  %251 = mul nsw i64 %228, 36
  %252 = tail call ptr %222(i64 noundef %251, ptr noundef nonnull @.str.206) #23
  %253 = load ptr, ptr %229, align 8, !tbaa !47
  %254 = getelementptr inbounds %struct.Nurb, ptr %208, i64 0, i32 17
  %255 = load ptr, ptr %254, align 8, !tbaa !61
  %256 = load i32, ptr %225, align 8, !tbaa !52
  tail call void @ED_curve_bpcpy(ptr noundef %253, ptr noundef %252, ptr noundef %255, i32 noundef %256) #22
  %257 = load ptr, ptr %229, align 8, !tbaa !47
  %258 = load i32, ptr %225, align 8, !tbaa !52
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.BPoint, ptr %252, i64 %259
  %261 = getelementptr inbounds %struct.Nurb, ptr %207, i64 0, i32 17
  %262 = load ptr, ptr %261, align 8, !tbaa !61
  %263 = load i32, ptr %223, align 8, !tbaa !52
  tail call void @ED_curve_bpcpy(ptr noundef %257, ptr noundef %260, ptr noundef %262, i32 noundef %263) #22
  %264 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %265 = load ptr, ptr %261, align 8, !tbaa !61
  tail call void %264(ptr noundef %265) #23
  store ptr %252, ptr %261, align 8, !tbaa !61
  %266 = load i32, ptr %225, align 8, !tbaa !52
  %267 = load i32, ptr %223, align 8, !tbaa !52
  %268 = add nsw i32 %267, %266
  store i32 %268, ptr %223, align 8, !tbaa !52
  tail call void @BLI_remlink(ptr noundef %6, ptr noundef nonnull %208) #23
  %269 = load i16, ptr %215, align 8, !tbaa !50
  %270 = icmp eq i16 %269, 4
  br i1 %270, label %271, label %278

271:                                              ; preds = %250
  %272 = getelementptr inbounds %struct.Nurb, ptr %207, i64 0, i32 15
  %273 = load ptr, ptr %272, align 8, !tbaa !67
  %274 = icmp eq ptr %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %271
  %276 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %276(ptr noundef nonnull %273) #23
  store ptr null, ptr %272, align 8, !tbaa !67
  br label %277

277:                                              ; preds = %275, %271
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %207) #23
  br label %278

278:                                              ; preds = %277, %250
  %279 = load ptr, ptr %229, align 8, !tbaa !47
  tail call fastcc void @keyIndex_delNurb(ptr noundef %279, ptr noundef nonnull %208) #22
  tail call void @BKE_nurb_free(ptr noundef nonnull %208) #23
  br label %280

280:                                              ; preds = %278, %230
  tail call void @BKE_curve_nurb_active_set(ptr noundef nonnull %5, ptr noundef nonnull %207) #23
  br label %363

281:                                              ; preds = %206
  %282 = xor i1 %209, %210
  br i1 %282, label %283, label %360

283:                                              ; preds = %281
  %284 = select i1 %210, ptr %208, ptr %207
  %285 = getelementptr inbounds %struct.Nurb, ptr %284, i64 0, i32 13
  %286 = load i16, ptr %285, align 4, !tbaa !69
  %287 = and i16 %286, 1
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %289, label %360

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.Nurb, ptr %284, i64 0, i32 6
  %291 = load i32, ptr %290, align 8, !tbaa !52
  %292 = icmp sgt i32 %291, 1
  br i1 %292, label %293, label %360

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.Nurb, ptr %284, i64 0, i32 2
  %295 = load i16, ptr %294, align 8, !tbaa !50
  switch i16 %295, label %360 [
    i16 1, label %296
    i16 4, label %344
  ]

296:                                              ; preds = %293
  %297 = load i16, ptr %14, align 8, !tbaa !234
  %298 = and i16 %297, 1
  %299 = icmp eq i16 %298, 0
  %300 = getelementptr inbounds %struct.Nurb, ptr %284, i64 0, i32 18
  %301 = load ptr, ptr %300, align 8, !tbaa !53
  %302 = getelementptr inbounds %struct.BezTriple, ptr %301, i64 0, i32 8
  %303 = load i8, ptr %302, align 4, !tbaa !58
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  br i1 %299, label %307, label %306

306:                                              ; preds = %296
  br i1 %305, label %360, label %318

307:                                              ; preds = %296
  br i1 %305, label %308, label %325

308:                                              ; preds = %307
  %309 = getelementptr inbounds %struct.BezTriple, ptr %301, i64 0, i32 7
  %310 = load i8, ptr %309, align 1, !tbaa !56
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %313, label %325

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.BezTriple, ptr %301, i64 0, i32 9
  %315 = load i8, ptr %314, align 1, !tbaa !59
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %360, label %325

318:                                              ; preds = %306
  %319 = zext nneg i32 %291 to i64
  %320 = getelementptr %struct.BezTriple, ptr %301, i64 %319
  %321 = getelementptr %struct.BezTriple, ptr %320, i64 -1, i32 8
  %322 = load i8, ptr %321, align 4, !tbaa !58
  %323 = and i8 %322, 1
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %360, label %342

325:                                              ; preds = %313, %308, %307
  %326 = zext nneg i32 %291 to i64
  %327 = getelementptr %struct.BezTriple, ptr %301, i64 %326
  %328 = getelementptr %struct.BezTriple, ptr %327, i64 -1, i32 8
  %329 = load i8, ptr %328, align 4, !tbaa !58
  %330 = and i8 %329, 1
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %332, label %342

332:                                              ; preds = %325
  %333 = getelementptr %struct.BezTriple, ptr %327, i64 -1, i32 7
  %334 = load i8, ptr %333, align 1, !tbaa !56
  %335 = and i8 %334, 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %332
  %338 = getelementptr %struct.BezTriple, ptr %327, i64 -1, i32 9
  %339 = load i8, ptr %338, align 1, !tbaa !59
  %340 = and i8 %339, 1
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %360, label %342

342:                                              ; preds = %337, %332, %325, %318
  %343 = or disjoint i16 %286, 1
  store i16 %343, ptr %285, align 4, !tbaa !69
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %284) #23
  br label %363

344:                                              ; preds = %293
  %345 = getelementptr inbounds %struct.Nurb, ptr %284, i64 0, i32 17
  %346 = load ptr, ptr %345, align 8, !tbaa !61
  %347 = getelementptr inbounds %struct.BPoint, ptr %346, i64 0, i32 3
  %348 = load i16, ptr %347, align 4, !tbaa !63
  %349 = and i16 %348, 1
  %350 = icmp eq i16 %349, 0
  br i1 %350, label %360, label %351

351:                                              ; preds = %344
  %352 = zext nneg i32 %291 to i64
  %353 = getelementptr %struct.BPoint, ptr %346, i64 %352
  %354 = getelementptr %struct.BPoint, ptr %353, i64 -1, i32 3
  %355 = load i16, ptr %354, align 4, !tbaa !63
  %356 = and i16 %355, 1
  %357 = icmp eq i16 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %351
  %359 = or disjoint i16 %286, 1
  store i16 %359, ptr %285, align 4, !tbaa !69
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %284) #23
  br label %363

360:                                              ; preds = %293, %306, %313, %318, %337, %214, %283, %289, %344, %351, %281
  %361 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %362 = load ptr, ptr %361, align 8, !tbaa !177
  tail call void @BKE_report(ptr noundef %362, i32 noundef 32, ptr noundef nonnull @.str.207) #23
  br label %371

363:                                              ; preds = %280, %342, %358
  %364 = load ptr, ptr %4, align 8, !tbaa !46
  %365 = tail call i32 @ED_curve_updateAnimPaths(ptr noundef %364) #22, !range !66
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %363
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef nonnull %3) #23
  br label %368

368:                                              ; preds = %367, %363
  %369 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %369) #23
  %370 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %370, i16 noundef signext 0) #23
  br label %371

371:                                              ; preds = %368, %360, %53
  %372 = phi i32 [ %54, %53 ], [ 4, %368 ], [ 2, %360 ]
  ret i32 %372
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @mouse_nurb(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #5 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [2 x i32], align 8
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = tail call ptr @object_editcurve_get(ptr noundef %11) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !65
  %15 = tail call ptr @BKE_curve_vert_active_get(ptr noundef %13) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #23
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #23
  %16 = load <2 x i32>, ptr %1, align 4, !tbaa !107
  store <2 x i32> %16, ptr %10, align 8, !tbaa !107
  %17 = call fastcc signext i16 @findnearestNurbvert(ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #22
  %18 = load ptr, ptr %8, align 8, !tbaa !65
  %19 = icmp ne ptr %18, null
  %20 = load ptr, ptr %9, align 8
  %21 = icmp ne ptr %20, null
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %128

23:                                               ; preds = %5
  %24 = icmp eq i8 %2, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %23
  br i1 %19, label %26, label %39

26:                                               ; preds = %25
  switch i16 %17, label %32 [
    i16 1, label %27
    i16 0, label %30
  ]

27:                                               ; preds = %26
  %28 = call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %18, i8 noundef zeroext 1, i32 noundef 1) #22
  %29 = load ptr, ptr %7, align 8, !tbaa !65
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %13, ptr noundef %29, ptr noundef nonnull %18) #23
  br label %120

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 7
  br label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 9
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %33, %32 ], [ %31, %30 ]
  %36 = load i8, ptr %35, align 1, !tbaa !191
  %37 = or i8 %36, 1
  store i8 %37, ptr %35, align 1, !tbaa !191
  %38 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 32
  store i32 -1, ptr %38, align 8, !tbaa !203
  br label %120

39:                                               ; preds = %25
  %40 = load ptr, ptr %7, align 8, !tbaa !65
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %13, ptr noundef %40, ptr noundef %20) #23
  %41 = call fastcc zeroext i8 @select_bpoint(ptr noundef %20, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  br label %120

42:                                               ; preds = %23
  %43 = icmp eq i8 %3, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %42
  br i1 %19, label %45, label %59

45:                                               ; preds = %44
  switch i16 %17, label %55 [
    i16 1, label %46
    i16 0, label %51
  ]

46:                                               ; preds = %45
  %47 = call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %18, i8 noundef zeroext 0, i32 noundef 1) #22
  %48 = icmp eq ptr %18, %15
  br i1 %48, label %49, label %120

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 32
  store i32 -1, ptr %50, align 8, !tbaa !203
  br label %120

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 7
  %53 = load i8, ptr %52, align 1, !tbaa !56
  %54 = and i8 %53, -2
  store i8 %54, ptr %52, align 1, !tbaa !56
  br label %120

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 9
  %57 = load i8, ptr %56, align 1, !tbaa !59
  %58 = and i8 %57, -2
  store i8 %58, ptr %56, align 1, !tbaa !59
  br label %120

59:                                               ; preds = %44
  %60 = call fastcc zeroext i8 @select_bpoint(ptr noundef %20, i8 noundef zeroext 0, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  %61 = icmp eq ptr %20, %15
  br i1 %61, label %62, label %120

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 32
  store i32 -1, ptr %63, align 8, !tbaa !203
  br label %120

64:                                               ; preds = %42
  %65 = icmp eq i8 %4, 0
  br i1 %65, label %102, label %66

66:                                               ; preds = %64
  br i1 %19, label %67, label %89

67:                                               ; preds = %66
  switch i16 %17, label %85 [
    i16 1, label %68
    i16 0, label %81
  ]

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 8
  %70 = load i8, ptr %69, align 4, !tbaa !58
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %18, i8 noundef zeroext 0, i32 noundef 1) #22
  %75 = icmp eq ptr %18, %15
  br i1 %75, label %76, label %120

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 32
  store i32 -1, ptr %77, align 8, !tbaa !203
  br label %120

78:                                               ; preds = %68
  %79 = call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %18, i8 noundef zeroext 1, i32 noundef 1) #22
  %80 = load ptr, ptr %7, align 8, !tbaa !65
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %13, ptr noundef %80, ptr noundef nonnull %18) #23
  br label %120

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 7
  %83 = load i8, ptr %82, align 1, !tbaa !56
  %84 = xor i8 %83, 1
  store i8 %84, ptr %82, align 1, !tbaa !56
  br label %120

85:                                               ; preds = %67
  %86 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 9
  %87 = load i8, ptr %86, align 1, !tbaa !59
  %88 = xor i8 %87, 1
  store i8 %88, ptr %86, align 1, !tbaa !59
  br label %120

89:                                               ; preds = %66
  %90 = getelementptr inbounds %struct.BPoint, ptr %20, i64 0, i32 3
  %91 = load i16, ptr %90, align 4, !tbaa !63
  %92 = and i16 %91, 1
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %20, i8 noundef zeroext 0, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  %96 = icmp eq ptr %20, %15
  br i1 %96, label %97, label %120

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 32
  store i32 -1, ptr %98, align 8, !tbaa !203
  br label %120

99:                                               ; preds = %89
  %100 = call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %20, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  %101 = load ptr, ptr %7, align 8, !tbaa !65
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %13, ptr noundef %101, ptr noundef nonnull %20) #23
  br label %120

102:                                              ; preds = %64
  call void @BKE_nurbList_flag_set(ptr noundef %14, i16 noundef signext 0) #23
  %103 = icmp eq ptr %18, null
  br i1 %103, label %117, label %104

104:                                              ; preds = %102
  switch i16 %17, label %110 [
    i16 1, label %105
    i16 0, label %108
  ]

105:                                              ; preds = %104
  %106 = call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %18, i8 noundef zeroext 1, i32 noundef 1) #22
  %107 = load ptr, ptr %7, align 8, !tbaa !65
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %13, ptr noundef %107, ptr noundef nonnull %18) #23
  br label %120

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 7
  br label %112

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 9
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi ptr [ %111, %110 ], [ %109, %108 ]
  %114 = load i8, ptr %113, align 1, !tbaa !191
  %115 = or i8 %114, 1
  store i8 %115, ptr %113, align 1, !tbaa !191
  %116 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 32
  store i32 -1, ptr %116, align 8, !tbaa !203
  br label %120

117:                                              ; preds = %102
  %118 = load ptr, ptr %7, align 8, !tbaa !65
  call void @BKE_curve_nurb_vert_active_set(ptr noundef %13, ptr noundef %118, ptr noundef %20) #23
  %119 = call fastcc zeroext i8 @select_bpoint(ptr noundef %20, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  br label %120

120:                                              ; preds = %59, %62, %49, %46, %55, %51, %117, %112, %105, %81, %85, %78, %76, %73, %94, %97, %99, %39, %34, %27
  %121 = load ptr, ptr %7, align 8, !tbaa !65
  %122 = call ptr @BKE_curve_nurb_active_get(ptr noundef %13) #23
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 32
  store i32 -1, ptr %125, align 8, !tbaa !203
  call void @BKE_curve_nurb_active_set(ptr noundef %13, ptr noundef %121) #23
  br label %126

126:                                              ; preds = %124, %120
  %127 = load ptr, ptr %12, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %127) #23
  br label %128

128:                                              ; preds = %5, %126
  %129 = phi i8 [ 1, %126 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #24
  ret i8 %129
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_curve_vert_active_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @findnearestNurbvert(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #5 !PGOFuncName !254 {
  %6 = alloca %struct.anon.0, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %7 = tail call float @ED_view3d_select_dist_px() #23
  %8 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 3
  store float %7, ptr %8, align 8, !tbaa !255
  %9 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !257
  %10 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 5
  store i32 1, ptr %10, align 8, !tbaa !258
  %11 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 6
  %12 = load <2 x i32>, ptr %1, align 4, !tbaa !107
  %13 = sitofp <2 x i32> %12 to <2 x float>
  store <2 x float> %13, ptr %11, align 4, !tbaa !70
  %14 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !259
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !261
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %15, ptr noundef %17) #23
  call void @nurbs_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @findnearestNurbvert__doClosest, ptr noundef nonnull %6, i32 noundef 7) #23
  %18 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !262
  store ptr %19, ptr %2, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.anon.0, ptr %6, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !263
  store ptr %21, ptr %3, align 8, !tbaa !65
  %22 = load ptr, ptr %6, align 8, !tbaa !264
  store ptr %22, ptr %4, align 8, !tbaa !65
  %23 = load i32, ptr %9, align 4, !tbaa !257
  %24 = trunc i32 %23 to i16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #24
  ret i16 %24
}

; Function Attrs: optsize
declare void @BKE_curve_nurb_vert_active_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_nurbList_flag_set(ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_curve_nurb_active_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_curve_nurb_active_set(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
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
  %16 = tail call ptr @object_editcurve_get(ptr noundef %1) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #24
  call void @copy_m3_m4(ptr noundef nonnull %12, ptr noundef %0) #23
  %17 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %13, ptr noundef nonnull %12) #23
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %8, ptr noundef nonnull %18) #23
  %19 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  call void @axis_angle_to_mat3(ptr noundef nonnull %5, ptr noundef %2, float noundef 0x3FE921FB60000000) #23
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8) #23
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %6) #23
  call void @unit_m3(ptr noundef nonnull %10) #23
  store float 0x3FF6A09E60000000, ptr %10, align 16, !tbaa !70
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  store float 0x3FF6A09E60000000, ptr %20, align 16, !tbaa !70
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef nonnull %8) #23
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %6) #23
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %5) #23
  call void @mul_m3_m3m3(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %6) #23
  call void @unit_m3(ptr noundef nonnull %11) #23
  %21 = load float, ptr %11, align 16, !tbaa !70
  %22 = fdiv float %21, 0x3FF6A09E60000000
  store float %22, ptr %11, align 16, !tbaa !70
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  %24 = load float, ptr %23, align 16, !tbaa !70
  %25 = fdiv float %24, 0x3FF6A09E60000000
  store float %25, ptr %23, align 16, !tbaa !70
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef nonnull %8) #23
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6) #23
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %5) #23
  call void @mul_m3_m3m3(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %6) #23
  %26 = getelementptr inbounds %struct.Curve, ptr %15, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = call zeroext i8 @ed_editnurb_extrude_flag(ptr noundef %27, i16 noundef signext 1) #22, !range !79
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %57, label %37

30:                                               ; preds = %37
  %31 = load ptr, ptr %16, align 8, !tbaa !65
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %45

33:                                               ; preds = %37
  %34 = load ptr, ptr %26, align 8, !tbaa !47
  %35 = call zeroext i8 @ed_editnurb_extrude_flag(ptr noundef %34, i16 noundef signext 1) #22, !range !79
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %57, label %37, !llvm.loop !265

37:                                               ; preds = %4, %33
  %38 = phi i32 [ %43, %33 ], [ 0, %4 ]
  call fastcc void @rotateflagNurb(ptr noundef %16, ptr noundef %3, ptr noundef nonnull %9) #22
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr %10, ptr %11
  %42 = select i1 %40, float 0x3FD6A09E60000000, float 0x4006A09E60000000
  call fastcc void @rotateflagNurb(ptr noundef %16, ptr noundef %3, ptr noundef nonnull %41) #22
  call fastcc void @weightflagNurb(ptr noundef %16, float noundef %42) #22
  %43 = add nuw nsw i32 %38, 1
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %30, label %33, !llvm.loop !265

45:                                               ; preds = %30, %54
  %46 = phi ptr [ %55, %54 ], [ %31, %30 ]
  %47 = call i32 @isNurbsel(ptr noundef nonnull %46) #22, !range !66
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 12
  store i16 4, ptr %50, align 2, !tbaa !73
  %51 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 14
  %52 = load i16, ptr %51, align 2, !tbaa !74
  %53 = or i16 %52, 1
  store i16 %53, ptr %51, align 2, !tbaa !74
  call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %46) #23
  br label %54

54:                                               ; preds = %45, %49
  %55 = load ptr, ptr %46, align 8, !tbaa !65
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %45, !llvm.loop !266

57:                                               ; preds = %33, %54, %4, %30
  %58 = phi i8 [ 1, %30 ], [ 0, %4 ], [ 1, %54 ], [ 1, %33 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #24
  ret i8 %58
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rotateflagNurb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #5 !PGOFuncName !267 {
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %3, %33
  %7 = phi ptr [ %34, %33 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i16 %9, 4
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !60
  %16 = mul nsw i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  br label %21

21:                                               ; preds = %18, %30
  %22 = phi i32 [ %24, %30 ], [ %16, %18 ]
  %23 = phi ptr [ %31, %30 ], [ %20, %18 ]
  %24 = add nsw i32 %22, -1
  %25 = getelementptr inbounds %struct.BPoint, ptr %23, i64 0, i32 3
  %26 = load i16, ptr %25, align 4, !tbaa !63
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  tail call fastcc void @sub_v3_v3(ptr noundef nonnull %23, ptr noundef %1) #22
  tail call void @mul_m3_v3(ptr noundef %2, ptr noundef nonnull %23) #23
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %23, ptr noundef %1) #22
  br label %30

30:                                               ; preds = %29, %21
  %31 = getelementptr inbounds %struct.BPoint, ptr %23, i64 1
  %32 = icmp eq i32 %24, 0
  br i1 %32, label %33, label %21, !llvm.loop !268

33:                                               ; preds = %30, %11, %6
  %34 = load ptr, ptr %7, align 8, !tbaa !65
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %6, !llvm.loop !269

36:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @weightflagNurb(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #9 !PGOFuncName !270 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %2, %35
  %6 = phi ptr [ %36, %35 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i16 %8, 4
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !60
  %15 = mul nsw i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  br label %20

20:                                               ; preds = %17, %32
  %21 = phi i32 [ %23, %32 ], [ %15, %17 ]
  %22 = phi ptr [ %33, %32 ], [ %19, %17 ]
  %23 = add nsw i32 %21, -1
  %24 = getelementptr inbounds %struct.BPoint, ptr %22, i64 0, i32 3
  %25 = load i16, ptr %24, align 4, !tbaa !63
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds [4 x float], ptr %22, i64 0, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !70
  %31 = fmul float %30, %1
  store float %31, ptr %29, align 4, !tbaa !70
  br label %32

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds %struct.BPoint, ptr %22, i64 1
  %34 = icmp eq i32 %23, 0
  br i1 %34, label %35, label %20, !llvm.loop !271

35:                                               ; preds = %32, %10, %5
  %36 = load ptr, ptr %6, align 8, !tbaa !65
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %5, !llvm.loop !272

38:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_spin(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.95, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.96, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.97, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @spin_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @spin_invoke, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurf, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %9, ptr noundef nonnull @.str.98, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #23
  %11 = load ptr, ptr %8, align 8, !tbaa !206
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.101, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, float noundef -1.000000e+00, float noundef 1.000000e+00) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @spin_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !273 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %7 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !208
  call void @RNA_float_get_array(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #23
  %10 = load ptr, ptr %8, align 8, !tbaa !208
  call void @RNA_float_get_array(ptr noundef %10, ptr noundef nonnull @.str.101, ptr noundef nonnull %4) #23
  %11 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 50
  %12 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  %13 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %12) #23
  call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %3) #23
  %14 = icmp eq ptr %7, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %16) #23
  br label %18

17:                                               ; preds = %2
  call void @unit_m4(ptr noundef nonnull %5) #23
  br label %18

18:                                               ; preds = %17, %15
  %19 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !79
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !177
  call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.213) #23
  br label %33

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = call i32 @ED_curve_updateAnimPaths(ptr noundef %26) #22, !range !66
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef nonnull %6) #23
  br label %30

30:                                               ; preds = %29, %24
  %31 = load ptr, ptr %25, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %31) #23
  %32 = load ptr, ptr %25, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %32, i16 noundef signext 0) #23
  br label %33

33:                                               ; preds = %30, %21
  %34 = phi i32 [ 4, %30 ], [ 2, %21 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @spin_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 !PGOFuncName !274 {
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #23
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #23
  %7 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.spin_invoke.axis, i64 12, i1 false)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 2, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %10) #22
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %5, ptr noundef %6) #23
  tail call void @RNA_float_set_array(ptr noundef %13, ptr noundef nonnull @.str.98, ptr noundef %14) #23
  %15 = load ptr, ptr %12, align 8, !tbaa !208
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.101, ptr noundef nonnull %4) #23
  %16 = call i32 @spin_exec(ptr noundef %0, ptr noundef %1) #22, !range !252
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @ED_operator_editsurf(ptr noundef) #6

; Function Attrs: optsize
declare ptr @RNA_def_float_vector_xyz(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_vertex_add(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.104, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.105, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_vertex_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @add_vertex_invoke, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %9, ptr noundef nonnull @.str.107, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, float noundef -1.000000e+04, float noundef 1.000000e+04) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_vertex_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !275 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.107, ptr noundef nonnull %3) #23
  %6 = call fastcc i32 @addvert_Nurb(ptr noundef %0, i16 noundef signext 0, ptr noundef nonnull %3) #22, !range !252
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_vertex_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #5 !PGOFuncName !276 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [2 x float], align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #24
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #23
  %12 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !261
  %14 = icmp eq ptr %13, null
  br i1 %14, label %67, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !208
  %18 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %17, ptr noundef nonnull @.str.107) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  %21 = load ptr, ptr %4, align 8, !tbaa !277
  %22 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !278
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %23, i64 0, i32 54
  %25 = load i16, ptr %24, align 2, !tbaa !297
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %23, i64 0, i32 51
  %30 = load i8, ptr %29, align 1, !tbaa !304
  %31 = icmp ne i8 %30, 3
  br label %32

32:                                               ; preds = %28, %20
  %33 = phi i1 [ true, %20 ], [ %31, %28 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %34 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !259
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.Curve, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  call fastcc void @findselectedNurbvert(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  %40 = load ptr, ptr %7, align 8, !tbaa !65
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load ptr, ptr %34, align 8, !tbaa !259
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 47
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %40, i64 0, i64 1
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %44, ptr noundef nonnull %45) #23
  br label %57

46:                                               ; preds = %32
  %47 = load ptr, ptr %8, align 8, !tbaa !65
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %34, align 8, !tbaa !259
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %51, ptr noundef nonnull %47) #23
  br label %57

52:                                               ; preds = %46
  %53 = load ptr, ptr %4, align 8, !tbaa !277
  %54 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !305
  %56 = call ptr @ED_view3d_cursor3d_get(ptr noundef %53, ptr noundef %55) #23
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %56) #22
  br label %57

57:                                               ; preds = %49, %52, %42
  %58 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !306
  %60 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_view3d_win_to_3d_int(ptr noundef %59, ptr noundef nonnull %5, ptr noundef nonnull %60, ptr noundef nonnull %5) #23
  br i1 %33, label %65, label %61

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  %62 = load <2 x i32>, ptr %60, align 4, !tbaa !107
  %63 = sitofp <2 x i32> %62 to <2 x float>
  store <2 x float> %63, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #24
  %64 = call zeroext i8 @snapObjectsContext(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %10, i32 noundef 2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  br label %65

65:                                               ; preds = %61, %57
  %66 = load ptr, ptr %16, align 8, !tbaa !208
  call void @RNA_float_set_array(ptr noundef %66, ptr noundef nonnull @.str.107, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  br label %67

67:                                               ; preds = %65, %15, %3
  %68 = call i32 @add_vertex_exec(ptr noundef %0, ptr noundef %1) #22, !range !252
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #24
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_extrude(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.110, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.111, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.112, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @extrude_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.113, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.18) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @extrude_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !307 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2, %18
  %11 = phi ptr [ %19, %18 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !60
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @isNurbsel_count(ptr noundef %5, ptr noundef nonnull %11) #22
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %25, label %18

18:                                               ; preds = %10, %15
  %19 = load ptr, ptr %11, align 8, !tbaa !65
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !308

21:                                               ; preds = %18, %2
  %22 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !34
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %15, %21
  %26 = tail call fastcc i32 @addvert_Nurb(ptr noundef %0, i16 noundef signext 101, ptr noundef null) #22, !range !252
  br label %38

27:                                               ; preds = %21
  %28 = tail call zeroext i8 @ed_editnurb_extrude_flag(ptr noundef nonnull %7, i16 noundef signext 1) #22, !range !79
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 8, !tbaa !46
  %32 = tail call i32 @ED_curve_updateAnimPaths(ptr noundef %31) #22, !range !66
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef nonnull %3) #23
  br label %35

35:                                               ; preds = %34, %30
  %36 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %36) #23
  %37 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 0) #23
  br label %38

38:                                               ; preds = %27, %35, %25
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_cyclic_toggle(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.119, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.120, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @toggle_cyclic_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @toggle_cyclic_invoke, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.122, ptr noundef nonnull @CURVE_OT_cyclic_toggle.direction_items, i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @toggle_cyclic_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !309 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.122) #23
  %10 = load ptr, ptr %6, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %145, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  br label %14

14:                                               ; preds = %12, %142
  %15 = phi ptr [ %10, %12 ], [ %143, %142 ]
  %16 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !60
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %142

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !50
  switch i16 %25, label %82 [
    i16 0, label %26
    i16 1, label %46
  ]

26:                                               ; preds = %23
  %27 = icmp eq i32 %17, 0
  br i1 %27, label %142, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  br label %35

31:                                               ; preds = %35
  %32 = getelementptr inbounds %struct.BPoint, ptr %37, i64 1
  %33 = add nsw i32 %36, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %142, label %35, !llvm.loop !310

35:                                               ; preds = %28, %31
  %36 = phi i32 [ %33, %31 ], [ %17, %28 ]
  %37 = phi ptr [ %32, %31 ], [ %30, %28 ]
  %38 = getelementptr inbounds %struct.BPoint, ptr %37, i64 0, i32 3
  %39 = load i16, ptr %38, align 4, !tbaa !63
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %31, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 13
  %44 = load i16, ptr %43, align 4, !tbaa !69
  %45 = xor i16 %44, 1
  store i16 %45, ptr %43, align 4, !tbaa !69
  br label %142

46:                                               ; preds = %23
  %47 = icmp eq i32 %17, 0
  br i1 %47, label %81, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  %51 = load i16, ptr %13, align 8, !tbaa !234
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br label %54

54:                                               ; preds = %48, %78
  %55 = phi i32 [ %17, %48 ], [ %57, %78 ]
  %56 = phi ptr [ %50, %48 ], [ %79, %78 ]
  %57 = add nsw i32 %55, -1
  %58 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 0, i32 8
  %59 = load i8, ptr %58, align 4, !tbaa !58
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %53, label %63, label %62

62:                                               ; preds = %54
  br i1 %61, label %78, label %74

63:                                               ; preds = %54
  br i1 %61, label %64, label %74

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 0, i32 7
  %66 = load i8, ptr %65, align 1, !tbaa !56
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 0, i32 9
  %71 = load i8, ptr %70, align 1, !tbaa !59
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69, %64, %63, %62
  %75 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 13
  %76 = load i16, ptr %75, align 4, !tbaa !69
  %77 = xor i16 %76, 1
  store i16 %77, ptr %75, align 4, !tbaa !69
  br label %81

78:                                               ; preds = %69, %62
  %79 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 1
  %80 = icmp eq i32 %57, 0
  br i1 %80, label %81, label %54, !llvm.loop !311

81:                                               ; preds = %78, %46, %74
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %15) #23
  br label %142

82:                                               ; preds = %23
  %83 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 7
  %84 = load i32, ptr %83, align 4, !tbaa !60
  %85 = icmp eq i32 %84, 1
  %86 = icmp eq i16 %25, 4
  %87 = and i1 %86, %85
  br i1 %87, label %88, label %112

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 15
  %90 = load ptr, ptr %89, align 8, !tbaa !67
  %91 = icmp eq ptr %90, null
  %92 = icmp eq i32 %17, 0
  %93 = or i1 %91, %92
  br i1 %93, label %142, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 17
  %96 = load ptr, ptr %95, align 8, !tbaa !61
  br label %101

97:                                               ; preds = %101
  %98 = getelementptr inbounds %struct.BPoint, ptr %103, i64 1
  %99 = add nsw i32 %102, -1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %142, label %101, !llvm.loop !312

101:                                              ; preds = %94, %97
  %102 = phi i32 [ %99, %97 ], [ %17, %94 ]
  %103 = phi ptr [ %98, %97 ], [ %96, %94 ]
  %104 = getelementptr inbounds %struct.BPoint, ptr %103, i64 0, i32 3
  %105 = load i16, ptr %104, align 4, !tbaa !63
  %106 = and i16 %105, 1
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %97, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 13
  %110 = load i16, ptr %109, align 4, !tbaa !69
  %111 = xor i16 %110, 1
  store i16 %111, ptr %109, align 4, !tbaa !69
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %15) #23
  br label %142

112:                                              ; preds = %82
  br i1 %86, label %113, label %142

113:                                              ; preds = %112
  %114 = mul nsw i32 %84, %17
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %142, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 17
  %118 = load ptr, ptr %117, align 8, !tbaa !61
  br label %123

119:                                              ; preds = %123
  %120 = getelementptr inbounds %struct.BPoint, ptr %125, i64 1
  %121 = add nsw i32 %124, -1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %142, label %123, !llvm.loop !313

123:                                              ; preds = %116, %119
  %124 = phi i32 [ %121, %119 ], [ %114, %116 ]
  %125 = phi ptr [ %120, %119 ], [ %118, %116 ]
  %126 = getelementptr inbounds %struct.BPoint, ptr %125, i64 0, i32 3
  %127 = load i16, ptr %126, align 4, !tbaa !63
  %128 = and i16 %127, 1
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %119, label %130

130:                                              ; preds = %123
  switch i32 %9, label %142 [
    i32 0, label %131
    i32 1, label %136
  ]

131:                                              ; preds = %130
  br i1 %18, label %132, label %142

132:                                              ; preds = %131
  %133 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 13
  %134 = load i16, ptr %133, align 4, !tbaa !69
  %135 = xor i16 %134, 1
  store i16 %135, ptr %133, align 4, !tbaa !69
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %15) #23
  br label %142

136:                                              ; preds = %130
  %137 = icmp sgt i32 %84, 1
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 14
  %140 = load i16, ptr %139, align 2, !tbaa !74
  %141 = xor i16 %140, 1
  store i16 %141, ptr %139, align 2, !tbaa !74
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %15) #23
  br label %142

142:                                              ; preds = %31, %119, %97, %26, %113, %131, %132, %130, %19, %81, %112, %136, %138, %88, %108, %42
  %143 = load ptr, ptr %15, align 8, !tbaa !65
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %14, !llvm.loop !314

145:                                              ; preds = %142, %2
  %146 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %146) #23
  %147 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %147, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @toggle_cyclic_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 !PGOFuncName !315 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i16 %6, 3
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  %9 = tail call ptr @object_editcurve_get(ptr noundef nonnull %4) #22
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8, %32
  %13 = phi ptr [ %33, %32 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !52
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !60
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !50
  %24 = icmp eq i16 %23, 4
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.123, i32 noundef 0) #23
  %27 = tail call ptr @uiPupMenuLayout(ptr noundef %26) #23
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !316
  %30 = getelementptr inbounds %struct.wmOperatorType, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !169
  tail call void @uiItemsEnumO(ptr noundef %27, ptr noundef %31, ptr noundef nonnull @.str.122) #23
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %26) #23
  br label %37

32:                                               ; preds = %17, %21
  %33 = load ptr, ptr %13, align 8, !tbaa !65
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !317

35:                                               ; preds = %32, %8, %3
  %36 = tail call i32 @toggle_cyclic_exec(ptr noundef %0, ptr noundef %1) #22
  br label %37

37:                                               ; preds = %35, %25
  %38 = phi i32 [ 32, %25 ], [ 4, %35 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.126, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.127, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_linked_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_linked_invoke, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !318 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %80, label %10

10:                                               ; preds = %2, %75
  %11 = phi ptr [ %76, %75 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !50
  %14 = icmp eq i16 %13, 1
  %15 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !52
  br i1 %14, label %17, label %50

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %75, label %24

21:                                               ; preds = %37
  %22 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 1
  %23 = icmp eq i32 %27, 0
  br i1 %23, label %75, label %24, !llvm.loop !319

24:                                               ; preds = %17, %21
  %25 = phi i32 [ %27, %21 ], [ %16, %17 ]
  %26 = phi ptr [ %22, %21 ], [ %19, %17 ]
  %27 = add nsw i32 %25, -1
  %28 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 7
  %29 = load i8, ptr %28, align 1, !tbaa !56
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 8
  %34 = load i8, ptr %33, align 4, !tbaa !58
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 9
  %39 = load i8, ptr %38, align 1, !tbaa !59
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %21, label %42

42:                                               ; preds = %37, %32, %24
  br label %43

43:                                               ; preds = %42, %43
  %44 = phi i32 [ %46, %43 ], [ %16, %42 ]
  %45 = phi ptr [ %48, %43 ], [ %19, %42 ]
  %46 = add nsw i32 %44, -1
  %47 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef %45, i8 noundef zeroext 1, i32 noundef 0) #22
  %48 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 1
  %49 = icmp eq i32 %46, 0
  br i1 %49, label %75, label %43, !llvm.loop !320

50:                                               ; preds = %10
  %51 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %54 = load i32, ptr %53, align 4, !tbaa !60
  %55 = mul nsw i32 %54, %16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %61

57:                                               ; preds = %61
  %58 = getelementptr inbounds %struct.BPoint, ptr %63, i64 1
  %59 = add nsw i32 %62, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %61, !llvm.loop !321

61:                                               ; preds = %50, %57
  %62 = phi i32 [ %59, %57 ], [ %55, %50 ]
  %63 = phi ptr [ %58, %57 ], [ %52, %50 ]
  %64 = getelementptr inbounds %struct.BPoint, ptr %63, i64 0, i32 3
  %65 = load i16, ptr %64, align 4, !tbaa !63
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %57, label %68

68:                                               ; preds = %61, %68
  %69 = phi i32 [ %71, %68 ], [ %55, %61 ]
  %70 = phi ptr [ %73, %68 ], [ %52, %61 ]
  %71 = add nsw i32 %69, -1
  %72 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %70, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  %73 = getelementptr inbounds %struct.BPoint, ptr %70, i64 1
  %74 = icmp eq i32 %71, 0
  br i1 %74, label %75, label %68, !llvm.loop !322

75:                                               ; preds = %57, %68, %21, %43, %50, %17
  %76 = load ptr, ptr %11, align 8, !tbaa !65
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %10, !llvm.loop !323

78:                                               ; preds = %75
  %79 = load ptr, ptr %4, align 8, !tbaa !46
  br label %80

80:                                               ; preds = %78, %2
  %81 = phi ptr [ %79, %78 ], [ %5, %2 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %81) #23
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_linked_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #5 !PGOFuncName !324 {
  %4 = tail call i32 @select_linked_exec(ptr noundef %0, ptr poison) #22
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.128, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.129, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.130, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_linked_pick_invoke, ptr %4, align 8, !tbaa !205
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve_region_view3d, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.131, i32 noundef 0, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #5 !PGOFuncName !325 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.131) #23
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i8
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #23
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #23
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %15 = call fastcc signext i16 @findnearestNurbvert(ptr noundef nonnull %4, ptr noundef nonnull %14, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %16 = load ptr, ptr %6, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.Nurb, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Nurb, ptr %19, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i32 [ %29, %26 ], [ %21, %23 ]
  %28 = phi ptr [ %31, %26 ], [ %25, %23 ]
  %29 = add nsw i32 %27, -1
  %30 = call fastcc zeroext i8 @select_beztriple(ptr noundef %28, i8 noundef zeroext %13, i32 noundef 0) #22
  %31 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 1
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %54, label %26, !llvm.loop !326

33:                                               ; preds = %3
  %34 = load ptr, ptr %7, align 8, !tbaa !65
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !52
  %40 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !60
  %42 = mul nsw i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.Nurb, ptr %37, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi i32 [ %50, %47 ], [ %42, %44 ]
  %49 = phi ptr [ %52, %47 ], [ %46, %44 ]
  %50 = add nsw i32 %48, -1
  %51 = call fastcc zeroext i8 @select_bpoint(ptr noundef %49, i8 noundef zeroext %13, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  %52 = getelementptr inbounds %struct.BPoint, ptr %49, i64 1
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %54, label %47, !llvm.loop !327

54:                                               ; preds = %26, %47, %18, %36, %33
  %55 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %56) #23
  br i1 %12, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8, !tbaa !46
  call void @BKE_curve_nurb_vert_active_validate(ptr noundef %58) #23
  br label %59

59:                                               ; preds = %57, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #24
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editsurfcurve_region_view3d(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_row(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.134, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.135, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.136, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_row_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurf, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_row_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !328 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = tail call ptr @object_editcurve_get(ptr noundef %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !65
  %9 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %69, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr @select_row_exec.last, align 8, !tbaa !65
  %13 = load ptr, ptr %4, align 8, !tbaa !65
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, ptr @select_row_exec.direction, align 4, !tbaa !107
  %17 = sub nuw nsw i32 1, %16
  store i32 %17, ptr @select_row_exec.direction, align 4, !tbaa !107
  call void @BKE_nurbList_flag_set(ptr noundef %8, i16 noundef signext 0) #23
  %18 = load ptr, ptr %4, align 8, !tbaa !65
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi ptr [ %18, %15 ], [ %13, %11 ]
  store ptr %20, ptr @select_row_exec.last, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 32
  %22 = load i32, ptr %21, align 8, !tbaa !203
  %23 = load ptr, ptr %3, align 8, !tbaa !65
  %24 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !52
  %26 = srem i32 %22, %25
  %27 = sdiv i32 %22, %25
  %28 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  store ptr %29, ptr %4, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !60
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %19, %60
  %34 = phi ptr [ %61, %60 ], [ %23, %19 ]
  %35 = phi ptr [ %62, %60 ], [ %29, %19 ]
  %36 = phi i32 [ %63, %60 ], [ 0, %19 ]
  %37 = getelementptr inbounds %struct.Nurb, ptr %34, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !52
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = icmp eq i32 %36, %27
  br label %42

42:                                               ; preds = %40, %52
  %43 = phi ptr [ %35, %40 ], [ %55, %52 ]
  %44 = phi i32 [ 0, %40 ], [ %53, %52 ]
  %45 = load i32, ptr @select_row_exec.direction, align 4, !tbaa !107
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br i1 %41, label %50, label %52

48:                                               ; preds = %42
  %49 = icmp eq i32 %44, %26
  br i1 %49, label %50, label %52

50:                                               ; preds = %48, %47
  %51 = call fastcc zeroext i8 @select_bpoint(ptr noundef %43, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  br label %52

52:                                               ; preds = %50, %47, %48
  %53 = add nuw nsw i32 %44, 1
  %54 = load ptr, ptr %4, align 8, !tbaa !65
  %55 = getelementptr inbounds %struct.BPoint, ptr %54, i64 1
  store ptr %55, ptr %4, align 8, !tbaa !65
  %56 = load ptr, ptr %3, align 8, !tbaa !65
  %57 = getelementptr inbounds %struct.Nurb, ptr %56, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !52
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %42, label %60, !llvm.loop !329

60:                                               ; preds = %52, %33
  %61 = phi ptr [ %34, %33 ], [ %56, %52 ]
  %62 = phi ptr [ %35, %33 ], [ %55, %52 ]
  %63 = add nuw nsw i32 %36, 1
  %64 = getelementptr inbounds %struct.Nurb, ptr %61, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !60
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %33, label %67, !llvm.loop !330

67:                                               ; preds = %60, %19
  %68 = load ptr, ptr %6, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %68) #23
  br label %69

69:                                               ; preds = %2, %67
  %70 = phi i32 [ 4, %67 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i32 %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_next(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.137, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.138, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.139, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_next_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_next_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !331 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  tail call fastcc void @select_adjacent_cp(ptr noundef %4, i16 noundef signext 1) #22
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %6) #23
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_previous(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.140, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.142, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_previous_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_previous_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !332 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  tail call fastcc void @select_adjacent_cp(ptr noundef %4, i16 noundef signext -1) #22
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %6) #23
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.143, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.145, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_more_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !333 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i16 %6, 3
  br i1 %7, label %8, label %130

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %131, label %11

11:                                               ; preds = %8, %126
  %12 = phi ptr [ %128, %126 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !60
  %17 = mul nsw i32 %16, %14
  %18 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %21 = ashr i32 %17, 5
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr %20(i64 noundef %24, ptr noundef nonnull @.str.219) #23
  %26 = icmp sgt i32 %17, 0
  br i1 %26, label %27, label %126

27:                                               ; preds = %11, %120
  %28 = phi i32 [ %124, %120 ], [ %17, %11 ]
  %29 = phi ptr [ %123, %120 ], [ %19, %11 ]
  %30 = lshr i32 %28, 5
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %25, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !107
  %34 = and i32 %28, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %120

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.BPoint, ptr %29, i64 0, i32 4
  %40 = load i16, ptr %39, align 2, !tbaa !159
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %120

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.BPoint, ptr %29, i64 0, i32 3
  %44 = load i16, ptr %43, align 4, !tbaa !63
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %120, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %13, align 8, !tbaa !52
  %49 = srem i32 %28, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr %struct.BPoint, ptr %29, i64 -1, i32 3
  %53 = load i16, ptr %52, align 4, !tbaa !63
  %54 = and i16 %53, 1
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.BPoint, ptr %29, i64 -1
  %58 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %57, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  %59 = load i32, ptr %13, align 8, !tbaa !52
  br label %60

60:                                               ; preds = %51, %56, %47
  %61 = phi i32 [ %48, %51 ], [ %59, %56 ], [ %48, %47 ]
  %62 = icmp sgt i32 %28, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = sext i32 %61 to i64
  %65 = getelementptr inbounds %struct.BPoint, ptr %29, i64 %64, i32 3
  %66 = load i16, ptr %65, align 4, !tbaa !63
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.BPoint, ptr %29, i64 %64
  %71 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %70, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  %72 = icmp eq i8 %71, 0
  %73 = load i32, ptr %13, align 8, !tbaa !52
  br i1 %72, label %84, label %74

74:                                               ; preds = %69
  %75 = sub nsw i32 %28, %73
  %76 = and i32 %75, 31
  %77 = shl nuw i32 1, %76
  %78 = ashr i32 %75, 5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %25, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !107
  %82 = or i32 %77, %81
  store i32 %82, ptr %80, align 4, !tbaa !107
  %83 = load i32, ptr %13, align 8, !tbaa !52
  br label %84

84:                                               ; preds = %63, %69, %74, %60
  %85 = phi i32 [ %61, %63 ], [ %73, %69 ], [ %83, %74 ], [ %61, %60 ]
  %86 = add nsw i32 %85, %28
  %87 = load i32, ptr %15, align 4, !tbaa !60
  %88 = mul nsw i32 %87, %85
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = sext i32 %85 to i64
  %92 = sub nsw i64 0, %91
  %93 = getelementptr inbounds %struct.BPoint, ptr %29, i64 %92, i32 3
  %94 = load i16, ptr %93, align 4, !tbaa !63
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.BPoint, ptr %29, i64 %92
  %99 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %98, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  %100 = load i32, ptr %13, align 8, !tbaa !52
  br label %101

101:                                              ; preds = %90, %97, %84
  %102 = phi i32 [ %85, %90 ], [ %100, %97 ], [ %85, %84 ]
  %103 = srem i32 %28, %102
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %120, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.BPoint, ptr %29, i64 1
  %107 = getelementptr inbounds %struct.BPoint, ptr %29, i64 1, i32 3
  %108 = load i16, ptr %107, align 4, !tbaa !63
  %109 = and i16 %108, 1
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %106, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  %113 = zext nneg i8 %112 to i16
  br label %114

114:                                              ; preds = %111, %105
  %115 = phi i16 [ 0, %105 ], [ %113, %111 ]
  %116 = icmp ne i16 %115, 0
  %117 = select i1 %116, ptr %106, ptr %29
  %118 = sext i1 %116 to i32
  %119 = add nsw i32 %28, %118
  br label %120

120:                                              ; preds = %114, %101, %42, %38, %27
  %121 = phi ptr [ %29, %27 ], [ %29, %101 ], [ %29, %42 ], [ %29, %38 ], [ %117, %114 ]
  %122 = phi i32 [ %28, %27 ], [ %28, %101 ], [ %28, %42 ], [ %28, %38 ], [ %119, %114 ]
  %123 = getelementptr inbounds %struct.BPoint, ptr %121, i64 1
  %124 = add nsw i32 %122, -1
  %125 = icmp sgt i32 %122, 1
  br i1 %125, label %27, label %126, !llvm.loop !334

126:                                              ; preds = %120, %11
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %127(ptr noundef %25) #23
  %128 = load ptr, ptr %12, align 8, !tbaa !65
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %11, !llvm.loop !335

130:                                              ; preds = %2
  tail call fastcc void @select_adjacent_cp(ptr noundef %4, i16 noundef signext 1) #22
  tail call fastcc void @select_adjacent_cp(ptr noundef %4, i16 noundef signext -1) #22
  br label %131

131:                                              ; preds = %126, %8, %130
  %132 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %133) #23
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.146, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.147, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.148, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_less_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !336 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i16 %6, 3
  %8 = load ptr, ptr %4, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %7, label %11, label %10

10:                                               ; preds = %2
  br i1 %9, label %275, label %143

11:                                               ; preds = %2
  br i1 %9, label %275, label %12

12:                                               ; preds = %11, %139
  %13 = phi ptr [ %141, %139 ], [ %8, %11 ]
  %14 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !60
  %18 = mul nsw i32 %17, %15
  %19 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %22 = ashr i32 %18, 5
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr %21(i64 noundef %25, ptr noundef nonnull @.str.219) #23
  %27 = icmp eq i32 %18, 0
  br i1 %27, label %139, label %28

28:                                               ; preds = %12, %136
  %29 = phi i32 [ %31, %136 ], [ %18, %12 ]
  %30 = phi ptr [ %137, %136 ], [ %20, %12 ]
  %31 = add nsw i32 %29, -1
  %32 = getelementptr inbounds %struct.BPoint, ptr %30, i64 0, i32 4
  %33 = load i16, ptr %32, align 2, !tbaa !159
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %136

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.BPoint, ptr %30, i64 0, i32 3
  %37 = load i16, ptr %36, align 4, !tbaa !63
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %136, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %14, align 8, !tbaa !52
  %42 = srem i32 %29, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %40
  %45 = ashr i32 %29, 5
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %26, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !107
  %49 = and i32 %29, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = getelementptr %struct.BPoint, ptr %30, i64 -1, i32 4
  %55 = load i16, ptr %54, align 2, !tbaa !159
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = getelementptr %struct.BPoint, ptr %30, i64 -1, i32 3
  %59 = load i16, ptr %58, align 4, !tbaa !63
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57, %44
  br label %63

63:                                               ; preds = %53, %57, %62
  %64 = phi i32 [ 1, %62 ], [ 0, %57 ], [ 0, %53 ]
  %65 = icmp eq i32 %42, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = add nuw nsw i32 %64, 1
  br label %79

68:                                               ; preds = %40, %63
  %69 = phi i32 [ %64, %63 ], [ 1, %40 ]
  %70 = getelementptr inbounds %struct.BPoint, ptr %30, i64 1, i32 4
  %71 = load i16, ptr %70, align 2, !tbaa !159
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.BPoint, ptr %30, i64 1, i32 3
  %75 = load i16, ptr %74, align 4, !tbaa !63
  %76 = and i16 %75, 1
  %77 = zext nneg i16 %76 to i32
  %78 = add nuw nsw i32 %69, %77
  br label %79

79:                                               ; preds = %73, %68, %66
  %80 = phi i32 [ %67, %66 ], [ %69, %68 ], [ %78, %73 ]
  %81 = load i32, ptr %16, align 4, !tbaa !60
  %82 = add i32 %81, -1
  %83 = mul i32 %82, %41
  %84 = icmp sgt i32 %29, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = add nuw nsw i32 %80, 1
  br label %110

87:                                               ; preds = %79
  %88 = sext i32 %41 to i64
  %89 = sub nsw i64 0, %88
  %90 = add nsw i32 %41, %31
  %91 = ashr i32 %90, 5
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %26, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !107
  %95 = and i32 %90, 31
  %96 = shl nuw i32 1, %95
  %97 = and i32 %94, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.BPoint, ptr %30, i64 %89, i32 4
  %101 = load i16, ptr %100, align 2, !tbaa !159
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.BPoint, ptr %30, i64 %89, i32 3
  %105 = load i16, ptr %104, align 4, !tbaa !63
  %106 = and i16 %105, 1
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103, %87
  %109 = add nuw nsw i32 %80, 1
  br label %110

110:                                              ; preds = %99, %103, %108, %85
  %111 = phi i32 [ %86, %85 ], [ %109, %108 ], [ %80, %103 ], [ %80, %99 ]
  %112 = icmp sgt i32 %29, %41
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = sext i32 %41 to i64
  %115 = getelementptr inbounds %struct.BPoint, ptr %30, i64 %114, i32 4
  %116 = load i16, ptr %115, align 2, !tbaa !159
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.BPoint, ptr %30, i64 %114, i32 3
  %120 = load i16, ptr %119, align 4, !tbaa !63
  %121 = and i16 %120, 1
  %122 = zext nneg i16 %121 to i32
  br label %123

123:                                              ; preds = %110, %118
  %124 = phi i32 [ %122, %118 ], [ 1, %110 ]
  %125 = add nuw nsw i32 %111, %124
  %126 = icmp eq i32 %125, 4
  br i1 %126, label %136, label %127

127:                                              ; preds = %113, %123
  %128 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %30, i8 noundef zeroext 0, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  %129 = and i32 %31, 31
  %130 = shl nuw i32 1, %129
  %131 = ashr i32 %31, 5
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %26, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !107
  %135 = or i32 %134, %130
  store i32 %135, ptr %133, align 4, !tbaa !107
  br label %136

136:                                              ; preds = %28, %35, %123, %127
  %137 = getelementptr inbounds %struct.BPoint, ptr %30, i64 1
  %138 = icmp eq i32 %31, 0
  br i1 %138, label %139, label %28, !llvm.loop !337

139:                                              ; preds = %136, %12
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %140(ptr noundef %26) #23
  %141 = load ptr, ptr %13, align 8, !tbaa !65
  %142 = icmp eq ptr %141, null
  br i1 %142, label %275, label %12, !llvm.loop !338

143:                                              ; preds = %10, %272
  %144 = phi ptr [ %273, %272 ], [ %8, %10 ]
  %145 = getelementptr inbounds %struct.Nurb, ptr %144, i64 0, i32 2
  %146 = load i16, ptr %145, align 8, !tbaa !50
  %147 = icmp eq i16 %146, 1
  %148 = getelementptr inbounds %struct.Nurb, ptr %144, i64 0, i32 6
  %149 = load i32, ptr %148, align 8, !tbaa !52
  br i1 %147, label %150, label %210

150:                                              ; preds = %143
  %151 = icmp eq i32 %149, 0
  br i1 %151, label %272, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.Nurb, ptr %144, i64 0, i32 18
  %154 = load ptr, ptr %153, align 8, !tbaa !53
  br label %155

155:                                              ; preds = %152, %206
  %156 = phi i32 [ %207, %206 ], [ 0, %152 ]
  %157 = phi i32 [ %159, %206 ], [ %149, %152 ]
  %158 = phi ptr [ %208, %206 ], [ %154, %152 ]
  %159 = add nsw i32 %157, -1
  %160 = getelementptr inbounds %struct.BezTriple, ptr %158, i64 0, i32 10
  %161 = load i8, ptr %160, align 2, !tbaa !157
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %206

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.BezTriple, ptr %158, i64 0, i32 8
  %165 = load i8, ptr %164, align 4, !tbaa !58
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %206, label %168

168:                                              ; preds = %163
  %169 = icmp eq i32 %156, 1
  %170 = zext i1 %169 to i32
  %171 = load i32, ptr %148, align 8, !tbaa !52
  %172 = icmp eq i32 %157, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = select i1 %169, i32 2, i32 1
  br label %186

175:                                              ; preds = %168
  %176 = getelementptr %struct.BezTriple, ptr %158, i64 -1, i32 10
  %177 = load i8, ptr %176, align 2, !tbaa !157
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = getelementptr %struct.BezTriple, ptr %158, i64 -1, i32 8
  %181 = load i8, ptr %180, align 4, !tbaa !58
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  %184 = select i1 %169, i32 2, i32 1
  %185 = select i1 %183, i32 %170, i32 %184
  br label %186

186:                                              ; preds = %179, %175, %173
  %187 = phi i32 [ %174, %173 ], [ %170, %175 ], [ %185, %179 ]
  %188 = icmp eq i32 %159, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = add nuw nsw i32 %187, 1
  br label %201

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.BezTriple, ptr %158, i64 1, i32 10
  %193 = load i8, ptr %192, align 2, !tbaa !157
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.BezTriple, ptr %158, i64 1, i32 8
  %197 = load i8, ptr %196, align 4, !tbaa !58
  %198 = and i8 %197, 1
  %199 = zext nneg i8 %198 to i32
  %200 = add nuw nsw i32 %187, %199
  br label %201

201:                                              ; preds = %195, %191, %189
  %202 = phi i32 [ %190, %189 ], [ %187, %191 ], [ %200, %195 ]
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %206, label %204

204:                                              ; preds = %201
  %205 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %158, i8 noundef zeroext 0, i32 noundef 0) #22
  br label %206

206:                                              ; preds = %155, %163, %201, %204
  %207 = phi i32 [ 1, %204 ], [ 0, %201 ], [ 0, %163 ], [ 0, %155 ]
  %208 = getelementptr inbounds %struct.BezTriple, ptr %158, i64 1
  %209 = icmp eq i32 %159, 0
  br i1 %209, label %272, label %155, !llvm.loop !339

210:                                              ; preds = %143
  %211 = getelementptr inbounds %struct.Nurb, ptr %144, i64 0, i32 7
  %212 = load i32, ptr %211, align 4, !tbaa !60
  %213 = mul nsw i32 %212, %149
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %272, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.Nurb, ptr %144, i64 0, i32 17
  %217 = load ptr, ptr %216, align 8, !tbaa !61
  br label %218

218:                                              ; preds = %215, %268
  %219 = phi i32 [ %269, %268 ], [ 0, %215 ]
  %220 = phi i32 [ %222, %268 ], [ %213, %215 ]
  %221 = phi ptr [ %270, %268 ], [ %217, %215 ]
  %222 = add nsw i32 %220, -1
  %223 = icmp eq i32 %219, 0
  br i1 %223, label %224, label %268

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.BPoint, ptr %221, i64 0, i32 4
  %226 = load i16, ptr %225, align 2, !tbaa !159
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %228, label %268

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.BPoint, ptr %221, i64 0, i32 3
  %230 = load i16, ptr %229, align 4, !tbaa !63
  %231 = and i16 %230, 1
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %268, label %233

233:                                              ; preds = %228
  %234 = load i32, ptr %148, align 8, !tbaa !52
  %235 = load i32, ptr %211, align 4, !tbaa !60
  %236 = mul nsw i32 %235, %234
  %237 = icmp eq i32 %220, %236
  br i1 %237, label %247, label %238

238:                                              ; preds = %233
  %239 = getelementptr %struct.BPoint, ptr %221, i64 -1, i32 4
  %240 = load i16, ptr %239, align 2, !tbaa !159
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = getelementptr %struct.BPoint, ptr %221, i64 -1, i32 3
  %244 = load i16, ptr %243, align 4, !tbaa !63
  %245 = and i16 %244, 1
  %246 = zext nneg i16 %245 to i32
  br label %247

247:                                              ; preds = %242, %233
  %248 = phi i32 [ 1, %233 ], [ %246, %242 ]
  %249 = icmp eq i32 %222, 0
  br i1 %249, label %264, label %252

250:                                              ; preds = %238
  %251 = icmp eq i32 %222, 0
  br i1 %251, label %266, label %252

252:                                              ; preds = %250, %247
  %253 = phi i32 [ 0, %250 ], [ %248, %247 ]
  %254 = getelementptr inbounds %struct.BPoint, ptr %221, i64 1, i32 4
  %255 = load i16, ptr %254, align 2, !tbaa !159
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.BPoint, ptr %221, i64 1, i32 3
  %259 = load i16, ptr %258, align 4, !tbaa !63
  %260 = and i16 %259, 1
  %261 = icmp ne i16 %260, 0
  %262 = icmp eq i32 %253, 1
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %268, label %266

264:                                              ; preds = %247
  %265 = icmp eq i32 %248, 1
  br i1 %265, label %272, label %266

266:                                              ; preds = %250, %257, %252, %264
  %267 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %221, i8 noundef zeroext 0, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  br label %268

268:                                              ; preds = %257, %218, %224, %228, %266
  %269 = phi i32 [ 1, %266 ], [ 0, %228 ], [ 0, %224 ], [ 0, %218 ], [ 0, %257 ]
  %270 = getelementptr inbounds %struct.BPoint, ptr %221, i64 1
  %271 = icmp eq i32 %222, 0
  br i1 %271, label %272, label %218, !llvm.loop !340

272:                                              ; preds = %264, %268, %206, %210, %150
  %273 = load ptr, ptr %144, align 8, !tbaa !65
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %143, !llvm.loop !341

275:                                              ; preds = %272, %139, %10, %11
  %276 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %277 = load ptr, ptr %276, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %277) #23
  %278 = load ptr, ptr %276, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %278) #23
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_select_random(ptr noundef %0) local_unnamed_addr #5 {
  store ptr @.str.149, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.150, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.151, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_select_random_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.152, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, float noundef 0.000000e+00, float noundef 1.000000e+02) #23
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @curve_select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !342 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.198) #23
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i8
  %10 = load ptr, ptr %5, align 8, !tbaa !208
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.152) #23
  %12 = fdiv float %11, 1.000000e+02
  tail call fastcc void @curve_select_random(ptr noundef %4, float noundef %12, i8 noundef zeroext %9) #22
  %13 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_vert_active_validate(ptr noundef %14) #23
  %15 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %15) #23
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_curve_select_nth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !65
  %5 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr %4, align 8, !tbaa !65
  br i1 %11, label %14, label %13

13:                                               ; preds = %7
  call fastcc void @select_nth_bezt(ptr noundef nonnull %8, ptr noundef %12, i32 noundef %1) #22
  br label %15

14:                                               ; preds = %7
  call fastcc void @select_nth_bp(ptr noundef nonnull %8, ptr noundef %12, i32 noundef %1) #22
  br label %15

15:                                               ; preds = %13, %14, %2
  %16 = phi i8 [ 0, %2 ], [ 1, %14 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i8 %16
}

; Function Attrs: optsize
declare zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @select_nth_bezt(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !343 {
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 72
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !52
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %3
  %15 = sext i32 %12 to i64
  %16 = getelementptr %struct.BezTriple, ptr %5, i64 %15
  br label %17

17:                                               ; preds = %14, %28
  %18 = phi i32 [ %21, %28 ], [ %12, %14 ]
  %19 = phi ptr [ %20, %28 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 -1
  %21 = add nsw i32 %18, -1
  %22 = sub nsw i32 %10, %21
  %23 = tail call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = srem i32 %23, %2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %20, i8 noundef zeroext 0, i32 noundef 1) #22
  br label %28

28:                                               ; preds = %26, %17
  %29 = icmp eq i32 %21, 0
  br i1 %29, label %30, label %17, !llvm.loop !344

30:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @select_nth_bp(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !345 {
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 36
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = sext i32 %11 to i64
  %13 = sdiv i64 %9, %12
  %14 = trunc i64 %13 to i32
  %15 = srem i64 %9, %12
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !60
  %19 = mul nsw i32 %18, %11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %3
  %22 = add nsw i32 %18, -1
  %23 = sext i32 %19 to i64
  %24 = getelementptr %struct.BPoint, ptr %5, i64 %23
  br label %25

25:                                               ; preds = %21, %47
  %26 = phi i32 [ %32, %47 ], [ %19, %21 ]
  %27 = phi ptr [ %30, %47 ], [ %24, %21 ]
  %28 = phi i32 [ %49, %47 ], [ %11, %21 ]
  %29 = phi i32 [ %48, %47 ], [ %22, %21 ]
  %30 = getelementptr inbounds %struct.BPoint, ptr %27, i64 -1
  %31 = add nsw i32 %28, -1
  %32 = add nsw i32 %26, -1
  %33 = sub nsw i32 %31, %16
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = sub nsw i32 %29, %14
  %36 = tail call i32 @llvm.abs.i32(i32 %35, i1 true)
  %37 = add nuw nsw i32 %34, %36
  %38 = srem i32 %37, %2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %25
  %41 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %30, i8 noundef zeroext 0, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  br label %42

42:                                               ; preds = %40, %25
  %43 = icmp slt i32 %28, 2
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i32, ptr %10, align 8, !tbaa !52
  %46 = add nsw i32 %29, -1
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %46, %44 ], [ %29, %42 ]
  %49 = phi i32 [ %45, %44 ], [ %31, %42 ]
  %50 = icmp eq i32 %32, 0
  br i1 %50, label %51, label %25, !llvm.loop !346

51:                                               ; preds = %47, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_select_nth(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.155, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.156, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.157, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_nth_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.158, i32 noundef 2, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 100) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_nth_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !347 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.158) #23
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call zeroext i8 @ED_curve_select_nth(ptr noundef %8, i32 noundef %6) #22, !range !79
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i16 %13, 3
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !177
  br i1 %14, label %17, label %18

17:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.220) #23
  br label %21

18:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.221) #23
  br label %21

19:                                               ; preds = %2
  %20 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %20) #23
  br label %21

21:                                               ; preds = %17, %18, %19
  %22 = phi i32 [ 4, %19 ], [ 2, %18 ], [ 2, %17 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_duplicate(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.160, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.161, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.162, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @duplicate_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @duplicate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !348 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call fastcc void @adduplicateflagNurb(ptr noundef %4, ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  %5 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %3) #22, !range !79
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = call ptr @object_editcurve_get(ptr noundef %4) #22
  call void @BLI_movelisttolist(ptr noundef %8, ptr noundef nonnull %3) #23
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %10) #23
  br label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !177
  call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.222) #23
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i32 [ 4, %7 ], [ 2, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #5 {
  store ptr @.str.163, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.164, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.165, ptr %3, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @curve_delete_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.67, ptr noundef nonnull @curve_delete_type_items, i32 noundef 0, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.166) #23
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rna_curve_delete_type_itemf) #23
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !245
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @curve_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !349 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.67) #23
  switch i32 %8, label %21 [
    i32 0, label %9
    i32 1, label %10
  ]

9:                                                ; preds = %2
  tail call fastcc void @curve_delete_vertices(ptr noundef nonnull %3) #22
  br label %11

10:                                               ; preds = %2
  tail call fastcc void @curve_delete_segments(ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  br label %11

11:                                               ; preds = %9, %10
  %12 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 32
  store i32 -1, ptr %12, align 8, !tbaa !203
  %13 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 31
  store i32 -1, ptr %13, align 4, !tbaa !202
  %14 = load ptr, ptr %4, align 8, !tbaa !46
  %15 = tail call i32 @ED_curve_updateAnimPaths(ptr noundef %14) #22, !range !66
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef nonnull %3) #23
  br label %18

18:                                               ; preds = %17, %11
  %19 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %19) #23
  %20 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %20, i16 noundef signext 0) #23
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi i32 [ 4, %18 ], [ 2, %2 ]
  ret i32 %22
}

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_curve_delete_type_itemf(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #5 !PGOFuncName !350 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  store i32 0, ptr %6, align 4, !tbaa !107
  %7 = icmp eq ptr %0, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @curve_delete_type_items, i32 noundef 0) #23
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @curve_delete_type_items, i32 noundef 1) #23
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  store i8 1, ptr %3, align 1, !tbaa !191
  %9 = load ptr, ptr %5, align 8, !tbaa !65
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ @curve_delete_type_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_shade_smooth(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.167, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.168, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.169, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shade_smooth_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @shade_smooth_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !351 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(20) @.str.171) #25
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = tail call ptr @object_editcurve_get(ptr noundef nonnull %3) #22
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = zext i1 %6 to i16
  br label %16

16:                                               ; preds = %14, %25
  %17 = phi ptr [ %26, %25 ], [ %12, %14 ]
  %18 = tail call i32 @isNurbsel(ptr noundef nonnull %17) #22, !range !66
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Nurb, ptr %17, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !352
  %23 = and i16 %22, -2
  %24 = or disjoint i16 %23, %15
  store i16 %24, ptr %21, align 2, !tbaa !352
  br label %25

25:                                               ; preds = %20, %16
  %26 = load ptr, ptr %17, align 8, !tbaa !65
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !353

28:                                               ; preds = %25, %10
  %29 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %30) #23
  %31 = load ptr, ptr %29, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %31, i16 noundef signext 0) #23
  br label %32

32:                                               ; preds = %2, %28
  %33 = phi i32 [ 4, %28 ], [ 2, %2 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_shade_flat(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.170, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.171, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shade_smooth_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editsurfcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @join_curve_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #23
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #23
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %11 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %12

12:                                               ; preds = %16, %2
  %13 = phi ptr [ %6, %2 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !354
  %19 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !175
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %22, label %12

22:                                               ; preds = %16
  call void @BLI_freelistN(ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #22
  %23 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  %24 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %23) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  %25 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %7) #23
  %26 = load ptr, ptr %7, align 8, !tbaa !65
  %27 = icmp eq ptr %26, null
  br i1 %27, label %114, label %31

28:                                               ; preds = %12
  call void @BLI_freelistN(ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !177
  call void @BKE_report(ptr noundef %30, i32 noundef 16, ptr noundef nonnull @.str.173) #23
  br label %118

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %33 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 31
  br label %34

34:                                               ; preds = %31, %111
  %35 = phi ptr [ %26, %31 ], [ %112, %111 ]
  %36 = getelementptr inbounds %struct.CollectionPointerLink, ptr %35, i64 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !354
  %38 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !175
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 3
  %41 = load i16, ptr %40, align 8, !tbaa !34
  %42 = load i16, ptr %32, align 8, !tbaa !34
  %43 = icmp ne i16 %41, %42
  %44 = icmp eq ptr %39, %10
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %111, label %46

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.Curve, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !358
  %51 = icmp eq ptr %50, null
  br i1 %51, label %110, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %53) #23
  %54 = load ptr, ptr %49, align 8, !tbaa !65
  %55 = icmp eq ptr %54, null
  br i1 %55, label %110, label %56

56:                                               ; preds = %52, %107
  %57 = phi ptr [ %108, %107 ], [ %54, %52 ]
  %58 = call ptr @BKE_nurb_duplicate(ptr noundef nonnull %57) #23
  %59 = load i32, ptr %33, align 8, !tbaa !359
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 3
  br i1 %60, label %71, label %62

62:                                               ; preds = %56
  %63 = load i16, ptr %61, align 2, !tbaa !360
  %64 = icmp slt i16 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = zext nneg i16 %63 to i32
  %67 = icmp sgt i32 %59, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = trunc i32 %59 to i16
  %70 = add i16 %69, -1
  br label %71

71:                                               ; preds = %56, %62, %68
  %72 = phi i16 [ %70, %68 ], [ 0, %62 ], [ 0, %56 ]
  store i16 %72, ptr %61, align 2, !tbaa !360
  br label %73

73:                                               ; preds = %71, %65
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %58) #23
  %74 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 18
  %75 = load ptr, ptr %74, align 8, !tbaa !53
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 6
  %79 = load i32, ptr %78, align 8, !tbaa !52
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77, %81
  %82 = phi i32 [ %84, %81 ], [ %79, %77 ]
  %83 = phi ptr [ %87, %81 ], [ %75, %77 ]
  %84 = add nsw i32 %82, -1
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %83) #23
  %85 = getelementptr inbounds [3 x [3 x float]], ptr %83, i64 0, i64 1
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %85) #23
  %86 = getelementptr inbounds [3 x [3 x float]], ptr %83, i64 0, i64 2
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %86) #23
  %87 = getelementptr inbounds %struct.BezTriple, ptr %83, i64 1
  %88 = icmp eq i32 %84, 0
  br i1 %88, label %89, label %81, !llvm.loop !361

89:                                               ; preds = %81, %77
  call void @BKE_nurb_handles_calc(ptr noundef %58) #23
  br label %90

90:                                               ; preds = %89, %73
  %91 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !61
  %93 = icmp eq ptr %92, null
  br i1 %93, label %107, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.Nurb, ptr %58, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !52
  %97 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 7
  %98 = load i32, ptr %97, align 4, !tbaa !60
  %99 = mul nsw i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %94, %101
  %102 = phi i32 [ %104, %101 ], [ %99, %94 ]
  %103 = phi ptr [ %105, %101 ], [ %92, %94 ]
  %104 = add nsw i32 %102, -1
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %103) #23
  %105 = getelementptr inbounds %struct.BPoint, ptr %103, i64 1
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %107, label %101, !llvm.loop !362

107:                                              ; preds = %101, %94, %90
  %108 = load ptr, ptr %57, align 8, !tbaa !65
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %56, !llvm.loop !363

110:                                              ; preds = %107, %52, %46
  call void @ED_base_object_free_and_unlink(ptr noundef %8, ptr noundef %9, ptr noundef %37) #23
  br label %111

111:                                              ; preds = %110, %34
  %112 = load ptr, ptr %35, align 8, !tbaa !65
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %34, !llvm.loop !364

114:                                              ; preds = %111, %22
  call void @BLI_freelistN(ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  %115 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  %117 = getelementptr inbounds %struct.Curve, ptr %116, i64 0, i32 3
  call void @BLI_movelisttolist(ptr noundef nonnull %117, ptr noundef nonnull %3) #23
  call void @DAG_relations_tag_update(ptr noundef %8) #23
  call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 4) #23
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 13) #23
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %9) #23
  br label %118

118:                                              ; preds = %114, %28
  %119 = phi i32 [ 2, %28 ], [ 4, %114 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret i32 %119
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !365 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_nurb_handles_calc(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ED_base_object_free_and_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ED_object_editmode_enter(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_tilt_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.174, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.175, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.176, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_tilt_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editcurve, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clear_tilt_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !366 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 16
  br label %11

11:                                               ; preds = %9, %73
  %12 = phi ptr [ %7, %9 ], [ %74, %73 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !52
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %73, label %20

20:                                               ; preds = %16
  %21 = load i16, ptr %10, align 8, !tbaa !234
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br label %24

24:                                               ; preds = %20, %46
  %25 = phi i32 [ %18, %20 ], [ %27, %46 ]
  %26 = phi ptr [ %14, %20 ], [ %47, %46 ]
  %27 = add nsw i32 %25, -1
  %28 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 8
  %29 = load i8, ptr %28, align 4, !tbaa !58
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %23, label %33, label %32

32:                                               ; preds = %24
  br i1 %31, label %46, label %44

33:                                               ; preds = %24
  br i1 %31, label %34, label %44

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 7
  %36 = load i8, ptr %35, align 1, !tbaa !56
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 9
  %41 = load i8, ptr %40, align 1, !tbaa !59
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39, %34, %33, %32
  %45 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 0, i32 1
  store float 0.000000e+00, ptr %45, align 4, !tbaa !128
  br label %46

46:                                               ; preds = %44, %39, %32
  %47 = getelementptr inbounds %struct.BezTriple, ptr %26, i64 1
  %48 = icmp eq i32 %27, 0
  br i1 %48, label %73, label %24, !llvm.loop !367

49:                                               ; preds = %11
  %50 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !52
  %56 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 7
  %57 = load i32, ptr %56, align 4, !tbaa !60
  %58 = mul nsw i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %53, %70
  %61 = phi i32 [ %63, %70 ], [ %58, %53 ]
  %62 = phi ptr [ %71, %70 ], [ %51, %53 ]
  %63 = add nsw i32 %61, -1
  %64 = getelementptr inbounds %struct.BPoint, ptr %62, i64 0, i32 3
  %65 = load i16, ptr %64, align 4, !tbaa !63
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.BPoint, ptr %62, i64 0, i32 1
  store float 0.000000e+00, ptr %69, align 4, !tbaa !130
  br label %70

70:                                               ; preds = %68, %60
  %71 = getelementptr inbounds %struct.BPoint, ptr %62, i64 1
  %72 = icmp eq i32 %63, 0
  br i1 %72, label %73, label %60, !llvm.loop !368

73:                                               ; preds = %46, %70, %16, %53, %49
  %74 = load ptr, ptr %12, align 8, !tbaa !65
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %11, !llvm.loop !369

76:                                               ; preds = %73, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #23
  %77 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %77, i16 noundef signext 0) #23
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_push_curve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_data, ptr noundef nonnull @free_undoCurve, ptr noundef nonnull @undoCurve_to_editCurve, ptr noundef nonnull @editCurve_to_undoCurve, ptr noundef null) #23
  ret void
}

; Function Attrs: optsize
declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @get_data(ptr noundef %0) #5 !PGOFuncName !370 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_undoCurve(ptr noundef %0) #5 !PGOFuncName !371 {
  tail call void @BKE_nurbList_free(ptr noundef %0) #23
  %2 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !372
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void @BLI_ghash_free(ptr noundef nonnull %3, ptr noundef null, ptr noundef %6) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 3
  tail call void @free_fcurves(ptr noundef nonnull %8) #23
  %9 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 4
  tail call void @free_fcurves(ptr noundef nonnull %9) #23
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %10(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @undoCurve_to_editCurve(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #5 !PGOFuncName !374 {
  %4 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %2) #23
  %5 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = tail call ptr @BKE_animdata_from_id(ptr noundef %2) #23
  tail call void @BKE_nurbList_free(ptr noundef %4) #23
  %8 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !372
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.EditNurb, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void @BLI_ghash_free(ptr noundef %13, ptr noundef null, ptr noundef %14) #23
  %15 = load ptr, ptr %8, align 8, !tbaa !372
  %16 = tail call fastcc ptr @dupli_keyIndexHash(ptr noundef %15) #22
  store ptr %16, ptr %12, align 8, !tbaa !77
  br label %17

17:                                               ; preds = %11, %3
  %18 = icmp eq ptr %7, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %7, align 8, !tbaa !80
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bAction, ptr %20, i64 0, i32 1
  tail call void @free_fcurves(ptr noundef nonnull %23) #23
  %24 = load ptr, ptr %7, align 8, !tbaa !80
  %25 = getelementptr inbounds %struct.bAction, ptr %24, i64 0, i32 1
  %26 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 3
  tail call void @copy_fcurves(ptr noundef nonnull %25, ptr noundef nonnull %26) #23
  br label %27

27:                                               ; preds = %22, %19
  %28 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %28) #23
  %29 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 4
  tail call void @copy_fcurves(ptr noundef nonnull %28, ptr noundef nonnull %29) #23
  br label %30

30:                                               ; preds = %27, %17
  %31 = load ptr, ptr %0, align 8, !tbaa !65
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.EditNurb, ptr %6, i64 0, i32 1
  br label %35

35:                                               ; preds = %33, %41
  %36 = phi ptr [ %31, %33 ], [ %42, %41 ]
  %37 = tail call ptr @BKE_nurb_duplicate(ptr noundef nonnull %36) #23
  %38 = load ptr, ptr %34, align 8, !tbaa !77
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call fastcc void @keyIndex_updateNurb(ptr noundef nonnull %6, ptr noundef nonnull %36, ptr noundef %37) #22
  br label %41

41:                                               ; preds = %40, %35
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %37) #23
  %42 = load ptr, ptr %36, align 8, !tbaa !65
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %35, !llvm.loop !375

44:                                               ; preds = %41, %30
  %45 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !376
  %47 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 32
  store i32 %46, ptr %47, align 8, !tbaa !203
  %48 = getelementptr inbounds %struct.UndoCurve, ptr %0, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !377
  %50 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 31
  store i32 %49, ptr %50, align 4, !tbaa !202
  %51 = tail call i32 @ED_curve_updateAnimPaths(ptr noundef %2) #22, !range !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @editCurve_to_undoCurve(ptr nocapture readnone %0, ptr noundef %1) #5 !PGOFuncName !378 {
  %3 = alloca %struct.EditNurb, align 8
  %4 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %1) #23
  %5 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  %7 = tail call ptr @BKE_animdata_from_id(ptr noundef %1) #23
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %9 = tail call ptr %8(i64 noundef 72, ptr noundef nonnull @.str.232) #23
  %10 = getelementptr inbounds %struct.EditNurb, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = tail call fastcc ptr @dupli_keyIndexHash(ptr noundef nonnull %11) #22
  %15 = getelementptr inbounds %struct.UndoCurve, ptr %9, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !372
  %16 = getelementptr inbounds %struct.EditNurb, ptr %3, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !77
  br label %17

17:                                               ; preds = %13, %2
  %18 = icmp eq ptr %7, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %7, align 8, !tbaa !80
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.UndoCurve, ptr %9, i64 0, i32 3
  %24 = getelementptr inbounds %struct.bAction, ptr %20, i64 0, i32 1
  tail call void @copy_fcurves(ptr noundef nonnull %23, ptr noundef nonnull %24) #23
  br label %25

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.UndoCurve, ptr %9, i64 0, i32 4
  %27 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 5
  tail call void @copy_fcurves(ptr noundef nonnull %26, ptr noundef nonnull %27) #23
  br label %28

28:                                               ; preds = %25, %17
  %29 = load ptr, ptr %4, align 8, !tbaa !65
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.UndoCurve, ptr %9, i64 0, i32 2
  br label %33

33:                                               ; preds = %31, %39
  %34 = phi ptr [ %29, %31 ], [ %40, %39 ]
  %35 = tail call ptr @BKE_nurb_duplicate(ptr noundef nonnull %34) #23
  %36 = load ptr, ptr %32, align 8, !tbaa !372
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  call fastcc void @keyIndex_updateNurb(ptr noundef nonnull %3, ptr noundef nonnull %34, ptr noundef %35) #22
  br label %39

39:                                               ; preds = %38, %33
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %35) #23
  %40 = load ptr, ptr %34, align 8, !tbaa !65
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !llvm.loop !379

42:                                               ; preds = %39, %28
  %43 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 32
  %44 = load i32, ptr %43, align 8, !tbaa !203
  %45 = getelementptr inbounds %struct.UndoCurve, ptr %9, i64 0, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !376
  %46 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 31
  %47 = load i32, ptr %46, align 4, !tbaa !202
  %48 = getelementptr inbounds %struct.UndoCurve, ptr %9, i64 0, i32 5
  store i32 %47, ptr %48, align 8, !tbaa !377
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_curve_beztcpy(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = sext i32 %3 to i64
  %6 = mul nsw i64 %5, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %6, i1 false)
  tail call fastcc void @keyIndex_updateBezt(ptr noundef %0, ptr noundef %2, ptr noundef %1, i32 noundef %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_updateBezt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !380 {
  tail call fastcc void @keyIndex_updateCV(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 72) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_updateBP(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !381 {
  tail call fastcc void @keyIndex_updateCV(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 36) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_curve_active_center(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !65
  %5 = call zeroext i8 @BKE_curve_nurb_vert_active_get(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i16 %10, 1
  %12 = load ptr, ptr %4, align 8, !tbaa !65
  br i1 %11, label %13, label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %14) #22
  br label %16

15:                                               ; preds = %7
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %12) #22
  br label %16

16:                                               ; preds = %13, %15, %2
  %17 = phi i8 [ 0, %2 ], [ 1, %15 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !382 {
  %3 = load float, ptr %1, align 4, !tbaa !70
  store float %3, ptr %0, align 4, !tbaa !70
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !70
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CURVE_OT_match_texture_space(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  store ptr @.str.177, ptr %0, align 8, !tbaa !166
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.178, ptr %2, align 8, !tbaa !169
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.179, ptr %3, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @match_texture_space_exec, ptr %4, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @match_texture_space_poll, ptr %5, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @match_texture_space_exec(ptr noundef %0, ptr nocapture readnone %1) #5 !PGOFuncName !383 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #23
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #23
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !384
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  tail call void @BKE_displist_make_curveTypes(ptr noundef %7, ptr noundef nonnull %8, i8 noundef zeroext 0) #23
  %15 = load ptr, ptr %11, align 8, !tbaa !384
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi ptr [ %15, %14 ], [ %12, %2 ]
  %18 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %18, align 8, !tbaa !70
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 8, !tbaa !70
  %19 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %19, align 8, !tbaa !70
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !70
  call void @BKE_displist_minmax(ptr noundef %17, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %20 = load <2 x float>, ptr %4, align 8, !tbaa !70
  %21 = load <2 x float>, ptr %3, align 8, !tbaa !70
  %22 = fsub <2 x float> %20, %21
  %23 = fmul <2 x float> %22, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %23, ptr %5, align 8, !tbaa !70
  %24 = load float, ptr %19, align 8, !tbaa !70
  %25 = load float, ptr %18, align 8, !tbaa !70
  %26 = fsub float %24, %25
  %27 = fmul float %26, 5.000000e-01
  %28 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %27, ptr %28, align 8, !tbaa !70
  br label %29

29:                                               ; preds = %16, %44
  %30 = phi i64 [ 0, %16 ], [ %45, %44 ]
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !70
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = fcmp ogt float %32, 0.000000e+00
  %36 = fcmp olt float %32, 0x3EE4F8B580000000
  %37 = and i1 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = fcmp olt float %32, 0.000000e+00
  %40 = fcmp ogt float %32, 0xBEE4F8B580000000
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34, %29
  %43 = phi float [ 1.000000e+00, %29 ], [ 0x3EE4F8B580000000, %34 ], [ 0xBEE4F8B580000000, %38 ]
  store float %43, ptr %31, align 4, !tbaa !70
  br label %44

44:                                               ; preds = %42, %38
  %45 = add nuw nsw i64 %30, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %47, label %29, !llvm.loop !385

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %48, ptr noundef nonnull %6) #22
  %49 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %5) #22
  %50 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 13
  call fastcc void @zero_v3(ptr noundef nonnull %50) #22
  %51 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 15
  %52 = load i16, ptr %51, align 2, !tbaa !386
  %53 = and i16 %52, -2
  store i16 %53, ptr %51, align 2, !tbaa !386
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @match_texture_space_poll(ptr noundef %0) #5 !PGOFuncName !387 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #23
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @getCVKeyIndex(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !388 {
  %3 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = tail call ptr @BLI_ghash_lookup(ptr noundef %4, ptr noundef %1) #23
  ret ptr %5
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fcurve_path_rename(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #5 !PGOFuncName !389 {
  %6 = load ptr, ptr %3, align 8, !tbaa !92
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %10 = shl i64 %9, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  br label %13

13:                                               ; preds = %8, %42
  %14 = phi ptr [ %6, %8 ], [ %15, %42 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = tail call i32 @strncmp(ptr noundef %17, ptr noundef %1, i64 noundef %11) #25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %17, i64 %11
  %22 = tail call ptr @copy_fcurve(ptr noundef nonnull %14) #23
  %23 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !95
  %25 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.188, ptr noundef %2, ptr noundef %21) #23
  store ptr %25, ptr %23, align 8, !tbaa !95
  tail call void @BLI_addtail(ptr noundef %4, ptr noundef %22) #23
  %26 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !390
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr %0, align 8, !tbaa !80
  br i1 %28, label %33, label %30

30:                                               ; preds = %20
  tail call void @action_groups_remove_channel(ptr noundef %29, ptr noundef nonnull %14) #23
  %31 = load ptr, ptr %0, align 8, !tbaa !80
  %32 = load ptr, ptr %26, align 8, !tbaa !390
  tail call void @action_groups_add_channel(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %22) #23
  br label %40

33:                                               ; preds = %20
  %34 = icmp ne ptr %29, null
  %35 = getelementptr inbounds %struct.bAction, ptr %29, i64 0, i32 1
  %36 = icmp eq ptr %35, %3
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %14) #23
  br label %40

39:                                               ; preds = %33
  tail call void @BLI_remlink(ptr noundef nonnull %12, ptr noundef nonnull %14) #23
  br label %40

40:                                               ; preds = %38, %39, %30
  tail call void @free_fcurve(ptr noundef nonnull %14) #23
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %41(ptr noundef %24) #23
  br label %42

42:                                               ; preds = %13, %40
  %43 = icmp eq ptr %15, null
  br i1 %43, label %44, label %13, !llvm.loop !391

44:                                               ; preds = %42, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fcurve_remove(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #5 !PGOFuncName !392 {
  %4 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef %2) #23
  br label %9

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !80
  tail call void @action_groups_remove_channel(ptr noundef %8, ptr noundef %2) #23
  br label %9

9:                                                ; preds = %7, %6
  tail call void @free_fcurve(ptr noundef %2) #23
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_fcurve(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @initialize_index_map(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !393 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !65
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
  %22 = load i32, ptr %21, align 4, !tbaa !60
  %23 = mul nsw i32 %22, %17
  br label %24

24:                                               ; preds = %18, %20
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  %26 = add nsw i32 %25, %12
  %27 = load ptr, ptr %11, align 8, !tbaa !65
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !llvm.loop !394

29:                                               ; preds = %24, %2
  %30 = phi i32 [ 0, %2 ], [ %26, %24 ]
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %32 = sext i32 %30 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call ptr %31(i64 noundef %33, ptr noundef nonnull @.str.189) #23
  %35 = icmp sgt i32 %30, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = zext nneg i32 %30 to i64
  %38 = shl nuw nsw i64 %37, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %34, i8 -1, i64 %38, i1 false), !tbaa !107
  br label %39

39:                                               ; preds = %36, %29
  %40 = load ptr, ptr %6, align 8, !tbaa !65
  %41 = icmp eq ptr %40, null
  br i1 %41, label %124, label %42

42:                                               ; preds = %39
  %43 = getelementptr i32, ptr %34, i64 1
  %44 = getelementptr i32, ptr %34, i64 2
  br label %45

45:                                               ; preds = %42, %120
  %46 = phi ptr [ %40, %42 ], [ %122, %120 ]
  %47 = phi i32 [ 0, %42 ], [ %121, %120 ]
  %48 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 18
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !52
  br i1 %50, label %96, label %53

53:                                               ; preds = %45
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %120, label %55

55:                                               ; preds = %53, %92
  %56 = phi i32 [ %59, %92 ], [ %52, %53 ]
  %57 = phi ptr [ %94, %92 ], [ %49, %53 ]
  %58 = phi i32 [ %93, %92 ], [ %47, %53 ]
  %59 = add nsw i32 %56, -1
  %60 = tail call fastcc ptr @getCVKeyIndex(ptr noundef nonnull %6, ptr noundef nonnull %57) #22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %92, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.CVKeyIndex, ptr %60, i64 0, i32 5
  %64 = load i8, ptr %63, align 8, !tbaa !88
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = add nsw i32 %58, 2
  %68 = getelementptr inbounds %struct.CVKeyIndex, ptr %60, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !395
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %34, i64 %70
  store i32 %67, ptr %71, align 4, !tbaa !107
  %72 = add nsw i32 %58, 1
  %73 = load i32, ptr %68, align 4, !tbaa !395
  %74 = sext i32 %73 to i64
  %75 = getelementptr i32, ptr %43, i64 %74
  store i32 %72, ptr %75, align 4, !tbaa !107
  br label %86

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.CVKeyIndex, ptr %60, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !395
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %34, i64 %79
  store i32 %58, ptr %80, align 4, !tbaa !107
  %81 = add nsw i32 %58, 1
  %82 = load i32, ptr %77, align 4, !tbaa !395
  %83 = sext i32 %82 to i64
  %84 = getelementptr i32, ptr %43, i64 %83
  store i32 %81, ptr %84, align 4, !tbaa !107
  %85 = add nsw i32 %58, 2
  br label %86

86:                                               ; preds = %76, %66
  %87 = phi ptr [ %68, %66 ], [ %77, %76 ]
  %88 = phi i32 [ %58, %66 ], [ %85, %76 ]
  %89 = load i32, ptr %87, align 4, !tbaa !395
  %90 = sext i32 %89 to i64
  %91 = getelementptr i32, ptr %44, i64 %90
  store i32 %88, ptr %91, align 4, !tbaa !107
  br label %92

92:                                               ; preds = %86, %55
  %93 = add nsw i32 %58, 3
  %94 = getelementptr inbounds %struct.BezTriple, ptr %57, i64 1
  %95 = icmp eq i32 %59, 0
  br i1 %95, label %120, label %55, !llvm.loop !396

96:                                               ; preds = %45
  %97 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 7
  %98 = load i32, ptr %97, align 4, !tbaa !60
  %99 = mul nsw i32 %98, %52
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %120, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.Nurb, ptr %46, i64 0, i32 17
  %103 = load ptr, ptr %102, align 8, !tbaa !61
  br label %104

104:                                              ; preds = %101, %116
  %105 = phi i32 [ %108, %116 ], [ %99, %101 ]
  %106 = phi ptr [ %118, %116 ], [ %103, %101 ]
  %107 = phi i32 [ %117, %116 ], [ %47, %101 ]
  %108 = add nsw i32 %105, -1
  %109 = tail call fastcc ptr @getCVKeyIndex(ptr noundef nonnull %6, ptr noundef %106) #22
  %110 = icmp eq ptr %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.CVKeyIndex, ptr %109, i64 0, i32 4
  %113 = load i32, ptr %112, align 4, !tbaa !395
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, ptr %34, i64 %114
  store i32 %107, ptr %115, align 4, !tbaa !107
  br label %116

116:                                              ; preds = %111, %104
  %117 = add nsw i32 %107, 1
  %118 = getelementptr inbounds %struct.BPoint, ptr %106, i64 1
  %119 = icmp eq i32 %108, 0
  br i1 %119, label %120, label %104, !llvm.loop !397

120:                                              ; preds = %92, %116, %53, %96
  %121 = phi i32 [ %47, %96 ], [ %47, %53 ], [ %117, %116 ], [ %93, %92 ]
  %122 = load ptr, ptr %46, align 8, !tbaa !65
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %45, !llvm.loop !398

124:                                              ; preds = %120, %39
  store i32 %30, ptr %1, align 4, !tbaa !107
  ret ptr %34
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @BKE_nurbList_verts_count(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @getKeyIndexOrig_bezt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !399 {
  %3 = tail call fastcc ptr @getCVKeyIndex(ptr noundef %0, ptr noundef %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !400
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !401 {
  %4 = load float, ptr %1, align 4, !tbaa !70
  %5 = load float, ptr %2, align 4, !tbaa !70
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !70
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !70
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !70
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !70
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @getKeyIndexOrig_bp(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !402 {
  %3 = tail call fastcc ptr @getCVKeyIndex(ptr noundef %0, ptr noundef %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !400
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @getKeyIndexOrig_keyIndex(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !403 {
  %3 = tail call fastcc ptr @getCVKeyIndex(ptr noundef %0, ptr noundef %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CVKeyIndex, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !404
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i32 [ %7, %5 ], [ -1, %2 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_keyHandles(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !405 {
  %3 = alloca %struct.BezTriple, align 4
  %4 = alloca %struct.BezTriple, align 4
  %5 = alloca %struct.BezTriple, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %83, label %8

8:                                                ; preds = %2, %79
  %9 = phi ptr [ %81, %79 ], [ %6, %2 ]
  %10 = phi ptr [ %80, %79 ], [ %1, %2 ]
  %11 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %70, label %14

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #24
  %15 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 13
  %18 = load i16, ptr %17, align 4, !tbaa !69
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = add nsw i32 %16, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 %23
  %25 = mul nsw i32 %22, 12
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %10, i64 %26
  br label %28

28:                                               ; preds = %14, %21
  %29 = phi ptr [ %24, %21 ], [ null, %14 ]
  %30 = phi ptr [ %27, %21 ], [ null, %14 ]
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds float, ptr %10, i64 12
  %34 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 1
  br label %35

35:                                               ; preds = %32, %62
  %36 = phi i32 [ %43, %62 ], [ %16, %32 ]
  %37 = phi ptr [ %64, %62 ], [ %33, %32 ]
  %38 = phi ptr [ %42, %62 ], [ %30, %32 ]
  %39 = phi ptr [ %63, %62 ], [ %34, %32 ]
  %40 = phi ptr [ %41, %62 ], [ %29, %32 ]
  %41 = phi ptr [ %65, %62 ], [ %12, %32 ]
  %42 = phi ptr [ %66, %62 ], [ %10, %32 ]
  %43 = add nsw i32 %36, -1
  call fastcc void @key_to_bezt(ptr noundef %42, ptr noundef nonnull %41, ptr noundef nonnull %3) #22
  %44 = icmp eq ptr %39, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  call fastcc void @key_to_bezt(ptr noundef %37, ptr noundef nonnull %39, ptr noundef nonnull %5) #22
  br label %46

46:                                               ; preds = %45, %35
  %47 = icmp eq ptr %40, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  call fastcc void @key_to_bezt(ptr noundef %38, ptr noundef nonnull %40, ptr noundef nonnull %4) #22
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi ptr [ %4, %48 ], [ null, %46 ]
  %51 = select i1 %44, ptr null, ptr %5
  call void @BKE_nurb_handle_calc(ptr noundef nonnull %3, ptr noundef %50, ptr noundef %51, i8 noundef zeroext 0) #23
  call fastcc void @bezt_to_key(ptr noundef nonnull %3, ptr noundef %42) #22
  %52 = icmp eq i32 %43, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i16, ptr %17, align 4, !tbaa !69
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %11, align 8, !tbaa !53
  br label %62

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.BezTriple, ptr %39, i64 1
  %61 = getelementptr inbounds float, ptr %37, i64 12
  br label %62

62:                                               ; preds = %53, %57, %59
  %63 = phi ptr [ %58, %57 ], [ %60, %59 ], [ null, %53 ]
  %64 = phi ptr [ %10, %57 ], [ %61, %59 ], [ null, %53 ]
  %65 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 1
  %66 = getelementptr inbounds float, ptr %42, i64 12
  %67 = icmp eq i32 %43, 0
  br i1 %67, label %68, label %35, !llvm.loop !406

68:                                               ; preds = %62, %28
  %69 = phi ptr [ %10, %28 ], [ %66, %62 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #24
  br label %79

70:                                               ; preds = %8
  %71 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !52
  %73 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 7
  %74 = load i32, ptr %73, align 4, !tbaa !60
  %75 = shl i32 %72, 2
  %76 = mul i32 %75, %74
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr %10, i64 %77
  br label %79

79:                                               ; preds = %70, %68
  %80 = phi ptr [ %69, %68 ], [ %78, %70 ]
  %81 = load ptr, ptr %9, align 8, !tbaa !65
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %8, !llvm.loop !407

83:                                               ; preds = %79, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @key_to_bezt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !PGOFuncName !408 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 4 dereferenceable(36) %0, i64 36, i1 false)
  %4 = getelementptr inbounds float, ptr %0, i64 9
  %5 = load float, ptr %4, align 4, !tbaa !70
  %6 = getelementptr inbounds %struct.BezTriple, ptr %2, i64 0, i32 1
  store float %5, ptr %6, align 4, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurb_handle_calc(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bezt_to_key(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !PGOFuncName !409 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) %0, i64 36, i1 false)
  %3 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !128
  %5 = getelementptr inbounds float, ptr %1, i64 9
  store float %4, ptr %5, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @init_cvKeyIndex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #5 !PGOFuncName !410 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %8 = tail call ptr %7(i64 noundef 40, ptr noundef nonnull @.str.192) #23
  store ptr %0, ptr %8, align 8, !tbaa !400
  %9 = getelementptr inbounds %struct.CVKeyIndex, ptr %8, i64 0, i32 1
  store i32 %1, ptr %9, align 8, !tbaa !404
  %10 = getelementptr inbounds %struct.CVKeyIndex, ptr %8, i64 0, i32 2
  store i32 %2, ptr %10, align 4, !tbaa !85
  %11 = getelementptr inbounds %struct.CVKeyIndex, ptr %8, i64 0, i32 3
  store i32 %3, ptr %11, align 8, !tbaa !87
  %12 = getelementptr inbounds %struct.CVKeyIndex, ptr %8, i64 0, i32 4
  store i32 %4, ptr %12, align 4, !tbaa !395
  %13 = getelementptr inbounds %struct.CVKeyIndex, ptr %8, i64 0, i32 5
  store i8 0, ptr %13, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.CVKeyIndex, ptr %8, i64 0, i32 6
  store ptr %5, ptr %14, align 8, !tbaa !411
  ret ptr %8
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adduplicateflagNurb(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #5 !PGOFuncName !412 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @object_editcurve_get(ptr noundef %0) #22
  %7 = getelementptr inbounds %struct.ListBase, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !413
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %11 = icmp eq ptr %8, null
  br i1 %11, label %676, label %12

12:                                               ; preds = %3
  %13 = icmp eq i8 %2, 0
  br label %14

14:                                               ; preds = %12, %672
  %15 = phi ptr [ %8, %12 ], [ %674, %672 ]
  %16 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %157

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 18
  %21 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !52
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %672

24:                                               ; preds = %19
  %25 = load i32, ptr %4, align 4, !tbaa !107
  %26 = load ptr, ptr %20, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 13
  br label %28

28:                                               ; preds = %24, %125
  %29 = phi i32 [ %22, %24 ], [ %126, %125 ]
  %30 = phi i32 [ 0, %24 ], [ %128, %125 ]
  %31 = phi i32 [ 0, %24 ], [ %129, %125 ]
  %32 = phi ptr [ %26, %24 ], [ %130, %125 ]
  %33 = phi i32 [ %25, %24 ], [ %127, %125 ]
  br label %34

34:                                               ; preds = %28, %63
  %35 = phi i32 [ %59, %63 ], [ %29, %28 ]
  %36 = phi i32 [ %60, %63 ], [ %29, %28 ]
  %37 = phi ptr [ %65, %63 ], [ %32, %28 ]
  %38 = phi i32 [ %64, %63 ], [ %31, %28 ]
  %39 = phi i32 [ %38, %63 ], [ -1, %28 ]
  %40 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 7
  %41 = load i8, ptr %40, align 1, !tbaa !56
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !58
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 9
  %51 = load i8, ptr %50, align 1, !tbaa !59
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %44, %34, %49
  br i1 %13, label %55, label %58

55:                                               ; preds = %54
  %56 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %37, i8 noundef zeroext 0, i32 noundef 1) #22
  %57 = load i32, ptr %21, align 8, !tbaa !52
  br label %58

58:                                               ; preds = %55, %54
  %59 = phi i32 [ %57, %55 ], [ %35, %54 ]
  %60 = phi i32 [ %57, %55 ], [ %36, %54 ]
  %61 = add nsw i32 %60, -1
  %62 = icmp slt i32 %38, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = add nsw i32 %38, 1
  %65 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 1
  br label %34, !llvm.loop !414

66:                                               ; preds = %58, %49
  %67 = phi i32 [ %59, %58 ], [ %35, %49 ]
  %68 = phi i32 [ %60, %58 ], [ %36, %49 ]
  %69 = phi i32 [ %38, %58 ], [ %39, %49 ]
  %70 = icmp slt i32 %69, %31
  br i1 %70, label %125, label %71

71:                                               ; preds = %66
  %72 = sub nsw i32 %69, %31
  %73 = add nsw i32 %72, 1
  %74 = icmp ne i32 %31, 0
  %75 = icmp eq i32 %73, %68
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load i16, ptr %27, align 4, !tbaa !69
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %77, %71
  %82 = add nsw i32 %68, -1
  %83 = icmp eq i32 %69, %82
  %84 = select i1 %83, i32 %30, i32 0
  %85 = add nsw i32 %73, %84
  %86 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %15, i32 noundef %85, i32 noundef 1) #23
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %86) #23
  %87 = getelementptr inbounds %struct.Nurb, ptr %86, i64 0, i32 18
  %88 = load ptr, ptr %87, align 8, !tbaa !53
  %89 = load ptr, ptr %20, align 8, !tbaa !53
  %90 = sext i32 %31 to i64
  %91 = getelementptr inbounds %struct.BezTriple, ptr %89, i64 %90
  %92 = sext i32 %73 to i64
  %93 = mul nsw i64 %92, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %88, ptr align 4 %91, i64 %93, i1 false)
  %94 = icmp eq i32 %84, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %81
  %96 = load ptr, ptr %87, align 8, !tbaa !53
  %97 = getelementptr inbounds %struct.BezTriple, ptr %96, i64 %92
  %98 = load ptr, ptr %20, align 8, !tbaa !53
  %99 = sext i32 %30 to i64
  %100 = mul nsw i64 %99, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %97, ptr align 4 %98, i64 %100, i1 false)
  br label %101

101:                                              ; preds = %95, %81
  %102 = phi i32 [ 0, %95 ], [ %30, %81 ]
  %103 = load i32, ptr %21, align 8, !tbaa !52
  %104 = icmp eq i32 %85, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.Nurb, ptr %86, i64 0, i32 13
  %107 = load i16, ptr %106, align 4, !tbaa !69
  %108 = and i16 %107, -2
  store i16 %108, ptr %106, align 4, !tbaa !69
  br label %109

109:                                              ; preds = %105, %101
  %110 = getelementptr inbounds %struct.Nurb, ptr %86, i64 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !52
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load ptr, ptr %87, align 8, !tbaa !53
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i32 [ %119, %115 ], [ 0, %113 ]
  %117 = phi ptr [ %120, %115 ], [ %114, %113 ]
  %118 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef %117, i8 noundef zeroext 1, i32 noundef 1) #22
  %119 = add nuw nsw i32 %116, 1
  %120 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 1
  %121 = load i32, ptr %110, align 8, !tbaa !52
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %115, label %123, !llvm.loop !415

123:                                              ; preds = %115
  %124 = load i32, ptr %21, align 8, !tbaa !52
  br label %125

125:                                              ; preds = %123, %109, %77, %66
  %126 = phi i32 [ %67, %66 ], [ %67, %77 ], [ %103, %109 ], [ %124, %123 ]
  %127 = phi i32 [ %33, %66 ], [ %73, %77 ], [ %85, %109 ], [ %85, %123 ]
  %128 = phi i32 [ %30, %66 ], [ %73, %77 ], [ %102, %109 ], [ %102, %123 ]
  %129 = add nsw i32 %38, 1
  %130 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 1
  %131 = icmp slt i32 %129, %126
  br i1 %131, label %28, label %132, !llvm.loop !416

132:                                              ; preds = %125
  store i32 %127, ptr %4, align 4, !tbaa !107
  %133 = icmp eq i32 %128, 0
  br i1 %133, label %672, label %134

134:                                              ; preds = %132
  %135 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %15, i32 noundef %128, i32 noundef 1) #23
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %135) #23
  %136 = getelementptr inbounds %struct.Nurb, ptr %135, i64 0, i32 18
  %137 = load ptr, ptr %136, align 8, !tbaa !53
  %138 = load ptr, ptr %20, align 8, !tbaa !53
  %139 = sext i32 %128 to i64
  %140 = mul nsw i64 %139, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %137, ptr align 4 %138, i64 %140, i1 false)
  %141 = getelementptr inbounds %struct.Nurb, ptr %135, i64 0, i32 13
  %142 = load i16, ptr %141, align 4, !tbaa !69
  %143 = and i16 %142, -2
  store i16 %143, ptr %141, align 4, !tbaa !69
  %144 = getelementptr inbounds %struct.Nurb, ptr %135, i64 0, i32 6
  %145 = load i32, ptr %144, align 8, !tbaa !52
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %672

147:                                              ; preds = %134
  %148 = load ptr, ptr %136, align 8, !tbaa !53
  br label %149

149:                                              ; preds = %147, %149
  %150 = phi i32 [ %153, %149 ], [ 0, %147 ]
  %151 = phi ptr [ %154, %149 ], [ %148, %147 ]
  %152 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef %151, i8 noundef zeroext 1, i32 noundef 1) #22
  %153 = add nuw nsw i32 %150, 1
  %154 = getelementptr inbounds %struct.BezTriple, ptr %151, i64 1
  %155 = load i32, ptr %144, align 8, !tbaa !52
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %149, label %672, !llvm.loop !417

157:                                              ; preds = %14
  %158 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 7
  %159 = load i32, ptr %158, align 4, !tbaa !60
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %293

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 17
  %163 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 6
  %164 = load i32, ptr %163, align 8, !tbaa !52
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %672

166:                                              ; preds = %161
  %167 = load i32, ptr %4, align 4, !tbaa !107
  %168 = load ptr, ptr %162, align 8, !tbaa !61
  %169 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 13
  br label %170

170:                                              ; preds = %166, %261
  %171 = phi i32 [ %164, %166 ], [ %262, %261 ]
  %172 = phi i32 [ 0, %166 ], [ %264, %261 ]
  %173 = phi i32 [ 0, %166 ], [ %265, %261 ]
  %174 = phi ptr [ %168, %166 ], [ %266, %261 ]
  %175 = phi i32 [ %167, %166 ], [ %263, %261 ]
  %176 = getelementptr inbounds %struct.BPoint, ptr %174, i64 0, i32 3
  %177 = load i16, ptr %176, align 4, !tbaa !63
  %178 = and i16 %177, 1
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %200, label %180

180:                                              ; preds = %170, %193
  %181 = phi i32 [ %189, %193 ], [ %171, %170 ]
  %182 = phi i32 [ %190, %193 ], [ %171, %170 ]
  %183 = phi i32 [ %194, %193 ], [ %173, %170 ]
  %184 = phi ptr [ %195, %193 ], [ %174, %170 ]
  br i1 %13, label %185, label %188

185:                                              ; preds = %180
  %186 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %184, i8 noundef zeroext 0, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  %187 = load i32, ptr %163, align 8, !tbaa !52
  br label %188

188:                                              ; preds = %185, %180
  %189 = phi i32 [ %187, %185 ], [ %181, %180 ]
  %190 = phi i32 [ %187, %185 ], [ %182, %180 ]
  %191 = add nsw i32 %190, -1
  %192 = icmp slt i32 %183, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = add nsw i32 %183, 1
  %195 = getelementptr inbounds %struct.BPoint, ptr %184, i64 1
  %196 = getelementptr inbounds %struct.BPoint, ptr %184, i64 1, i32 3
  %197 = load i16, ptr %196, align 4, !tbaa !63
  %198 = and i16 %197, 1
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %180, !llvm.loop !418

200:                                              ; preds = %193, %188, %170
  %201 = phi i32 [ %171, %170 ], [ %189, %188 ], [ %189, %193 ]
  %202 = phi i32 [ %171, %170 ], [ %190, %188 ], [ %190, %193 ]
  %203 = phi ptr [ %174, %170 ], [ %195, %193 ], [ %184, %188 ]
  %204 = phi i32 [ %173, %170 ], [ %194, %193 ], [ %183, %188 ]
  %205 = phi i32 [ -1, %170 ], [ %183, %188 ], [ %183, %193 ]
  %206 = icmp slt i32 %205, %173
  br i1 %206, label %261, label %207

207:                                              ; preds = %200
  %208 = sub nsw i32 %205, %173
  %209 = add nsw i32 %208, 1
  %210 = icmp ne i32 %173, 0
  %211 = icmp eq i32 %209, %202
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %207
  %214 = load i16, ptr %169, align 4, !tbaa !69
  %215 = and i16 %214, 1
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %217, label %261

217:                                              ; preds = %213, %207
  %218 = add nsw i32 %202, -1
  %219 = icmp eq i32 %205, %218
  %220 = select i1 %219, i32 %172, i32 0
  %221 = add nsw i32 %209, %220
  %222 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %15, i32 noundef %221, i32 noundef 1) #23
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %222) #23
  %223 = getelementptr inbounds %struct.Nurb, ptr %222, i64 0, i32 17
  %224 = load ptr, ptr %223, align 8, !tbaa !61
  %225 = load ptr, ptr %162, align 8, !tbaa !61
  %226 = sext i32 %173 to i64
  %227 = getelementptr inbounds %struct.BPoint, ptr %225, i64 %226
  %228 = sext i32 %209 to i64
  %229 = mul nsw i64 %228, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %224, ptr align 4 %227, i64 %229, i1 false)
  %230 = icmp eq i32 %220, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %217
  %232 = load ptr, ptr %223, align 8, !tbaa !61
  %233 = getelementptr inbounds %struct.BPoint, ptr %232, i64 %228
  %234 = load ptr, ptr %162, align 8, !tbaa !61
  %235 = sext i32 %172 to i64
  %236 = mul nsw i64 %235, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %233, ptr align 4 %234, i64 %236, i1 false)
  br label %237

237:                                              ; preds = %231, %217
  %238 = phi i32 [ 0, %231 ], [ %172, %217 ]
  %239 = load i32, ptr %163, align 8, !tbaa !52
  %240 = icmp eq i32 %221, %239
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.Nurb, ptr %222, i64 0, i32 13
  %243 = load i16, ptr %242, align 4, !tbaa !69
  %244 = and i16 %243, -2
  store i16 %244, ptr %242, align 4, !tbaa !69
  br label %245

245:                                              ; preds = %241, %237
  %246 = getelementptr inbounds %struct.Nurb, ptr %222, i64 0, i32 6
  %247 = load i32, ptr %246, align 8, !tbaa !52
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %245
  %250 = load ptr, ptr %223, align 8, !tbaa !61
  br label %251

251:                                              ; preds = %249, %251
  %252 = phi i32 [ %255, %251 ], [ 0, %249 ]
  %253 = phi ptr [ %256, %251 ], [ %250, %249 ]
  %254 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %253, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  %255 = add nuw nsw i32 %252, 1
  %256 = getelementptr inbounds %struct.BPoint, ptr %253, i64 1
  %257 = load i32, ptr %246, align 8, !tbaa !52
  %258 = icmp slt i32 %255, %257
  br i1 %258, label %251, label %259, !llvm.loop !419

259:                                              ; preds = %251
  %260 = load i32, ptr %163, align 8, !tbaa !52
  br label %261

261:                                              ; preds = %259, %245, %213, %200
  %262 = phi i32 [ %201, %200 ], [ %201, %213 ], [ %239, %245 ], [ %260, %259 ]
  %263 = phi i32 [ %175, %200 ], [ %209, %213 ], [ %221, %245 ], [ %221, %259 ]
  %264 = phi i32 [ %172, %200 ], [ %209, %213 ], [ %238, %245 ], [ %238, %259 ]
  %265 = add nsw i32 %204, 1
  %266 = getelementptr inbounds %struct.BPoint, ptr %203, i64 1
  %267 = icmp slt i32 %265, %262
  br i1 %267, label %170, label %268, !llvm.loop !420

268:                                              ; preds = %261
  store i32 %263, ptr %4, align 4, !tbaa !107
  %269 = icmp eq i32 %264, 0
  br i1 %269, label %672, label %270

270:                                              ; preds = %268
  %271 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %15, i32 noundef %264, i32 noundef 1) #23
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %271) #23
  %272 = getelementptr inbounds %struct.Nurb, ptr %271, i64 0, i32 17
  %273 = load ptr, ptr %272, align 8, !tbaa !61
  %274 = load ptr, ptr %162, align 8, !tbaa !61
  %275 = sext i32 %264 to i64
  %276 = mul nsw i64 %275, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %273, ptr align 4 %274, i64 %276, i1 false)
  %277 = getelementptr inbounds %struct.Nurb, ptr %271, i64 0, i32 13
  %278 = load i16, ptr %277, align 4, !tbaa !69
  %279 = and i16 %278, -2
  store i16 %279, ptr %277, align 4, !tbaa !69
  %280 = getelementptr inbounds %struct.Nurb, ptr %271, i64 0, i32 6
  %281 = load i32, ptr %280, align 8, !tbaa !52
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %672

283:                                              ; preds = %270
  %284 = load ptr, ptr %272, align 8, !tbaa !61
  br label %285

285:                                              ; preds = %283, %285
  %286 = phi i32 [ %289, %285 ], [ 0, %283 ]
  %287 = phi ptr [ %290, %285 ], [ %284, %283 ]
  %288 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %287, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  %289 = add nuw nsw i32 %286, 1
  %290 = getelementptr inbounds %struct.BPoint, ptr %287, i64 1
  %291 = load i32, ptr %280, align 8, !tbaa !52
  %292 = icmp slt i32 %289, %291
  br i1 %292, label %285, label %672, !llvm.loop !421

293:                                              ; preds = %157
  %294 = tail call i32 @isNurbsel(ptr noundef nonnull %15) #22, !range !66
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %672, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %298 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 6
  %299 = load i32, ptr %298, align 8, !tbaa !52
  %300 = sext i32 %299 to i64
  %301 = tail call ptr %297(i64 noundef %300, ptr noundef nonnull @.str.195) #23
  %302 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 17
  %303 = load i32, ptr %158, align 4, !tbaa !60
  %304 = icmp sgt i32 %303, 0
  %305 = load i32, ptr %298, align 8, !tbaa !52
  br i1 %304, label %306, label %343

306:                                              ; preds = %296
  %307 = load ptr, ptr %302, align 8, !tbaa !61
  br label %308

308:                                              ; preds = %306, %336
  %309 = phi i32 [ %337, %336 ], [ %303, %306 ]
  %310 = phi i32 [ %338, %336 ], [ %305, %306 ]
  %311 = phi i32 [ %339, %336 ], [ %305, %306 ]
  %312 = phi i32 [ %341, %336 ], [ 0, %306 ]
  %313 = phi ptr [ %340, %336 ], [ %307, %306 ]
  %314 = icmp sgt i32 %311, 0
  br i1 %314, label %315, label %336

315:                                              ; preds = %308, %328
  %316 = phi i32 [ %329, %328 ], [ %310, %308 ]
  %317 = phi i64 [ %330, %328 ], [ 0, %308 ]
  %318 = phi ptr [ %331, %328 ], [ %313, %308 ]
  %319 = getelementptr inbounds %struct.BPoint, ptr %318, i64 0, i32 3
  %320 = load i16, ptr %319, align 4, !tbaa !63
  %321 = and i16 %320, 1
  %322 = icmp eq i16 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %315
  %324 = getelementptr inbounds i8, ptr %301, i64 %317
  %325 = load i8, ptr %324, align 1, !tbaa !191
  %326 = add i8 %325, 1
  store i8 %326, ptr %324, align 1, !tbaa !191
  %327 = load i32, ptr %298, align 8, !tbaa !52
  br label %328

328:                                              ; preds = %315, %323
  %329 = phi i32 [ %316, %315 ], [ %327, %323 ]
  %330 = add nuw nsw i64 %317, 1
  %331 = getelementptr inbounds %struct.BPoint, ptr %318, i64 1
  %332 = sext i32 %329 to i64
  %333 = icmp slt i64 %330, %332
  br i1 %333, label %315, label %334, !llvm.loop !422

334:                                              ; preds = %328
  %335 = load i32, ptr %158, align 4, !tbaa !60
  br label %336

336:                                              ; preds = %334, %308
  %337 = phi i32 [ %309, %308 ], [ %335, %334 ]
  %338 = phi i32 [ %310, %308 ], [ %329, %334 ]
  %339 = phi i32 [ %311, %308 ], [ %329, %334 ]
  %340 = phi ptr [ %313, %308 ], [ %331, %334 ]
  %341 = add nuw nsw i32 %312, 1
  %342 = icmp slt i32 %341, %337
  br i1 %342, label %308, label %343, !llvm.loop !423

343:                                              ; preds = %336, %296
  %344 = phi i32 [ %305, %296 ], [ %338, %336 ]
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %368

346:                                              ; preds = %343
  %347 = zext nneg i32 %344 to i64
  br label %348

348:                                              ; preds = %346, %363
  %349 = phi i64 [ 0, %346 ], [ %366, %363 ]
  %350 = phi i32 [ 0, %346 ], [ %365, %363 ]
  %351 = phi i32 [ 0, %346 ], [ %364, %363 ]
  %352 = getelementptr inbounds i8, ptr %301, i64 %349
  %353 = load i8, ptr %352, align 1, !tbaa !191
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %348
  %356 = icmp eq i32 %350, 0
  %357 = zext i8 %353 to i32
  %358 = icmp eq i32 %350, %357
  %359 = or i1 %356, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = add nsw i32 %351, 1
  br label %363

362:                                              ; preds = %355
  store i32 %351, ptr %4, align 4, !tbaa !107
  store i32 0, ptr %5, align 4, !tbaa !107
  br label %371

363:                                              ; preds = %348, %360
  %364 = phi i32 [ %351, %348 ], [ %361, %360 ]
  %365 = phi i32 [ %350, %348 ], [ %357, %360 ]
  %366 = add nuw nsw i64 %349, 1
  %367 = icmp ult i64 %366, %347
  br i1 %367, label %348, label %368, !llvm.loop !424

368:                                              ; preds = %363, %343
  %369 = phi i32 [ 0, %343 ], [ %364, %363 ]
  %370 = phi i32 [ 0, %343 ], [ %365, %363 ]
  store i32 %370, ptr %5, align 4, !tbaa !107
  store i32 %369, ptr %4, align 4, !tbaa !107
  br label %371

371:                                              ; preds = %368, %362
  %372 = phi i32 [ %370, %368 ], [ 0, %362 ]
  %373 = phi i32 [ %369, %368 ], [ %351, %362 ]
  %374 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %374(ptr noundef %301) #23
  %375 = icmp eq i32 %373, 0
  %376 = icmp eq i32 %372, 0
  %377 = select i1 %375, i1 true, i1 %376
  br i1 %377, label %387, label %378

378:                                              ; preds = %371
  br i1 %13, label %393, label %379

379:                                              ; preds = %378
  %380 = call fastcc zeroext i8 @isNurbselU(ptr noundef nonnull %15, ptr noundef nonnull %5) #22
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %382, label %393

382:                                              ; preds = %379
  %383 = call fastcc zeroext i8 @isNurbselV(ptr noundef nonnull %15, ptr noundef nonnull %4) #22
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %387, label %385

385:                                              ; preds = %382
  %386 = load i32, ptr %4, align 4
  br label %393

387:                                              ; preds = %382, %371
  %388 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !425
  %389 = and i32 %388, 1
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %672, label %391

391:                                              ; preds = %387
  %392 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %672

393:                                              ; preds = %385, %379, %378
  %394 = phi i32 [ %386, %385 ], [ %373, %379 ], [ %373, %378 ]
  %395 = load i32, ptr %5, align 4, !tbaa !107
  %396 = load i32, ptr %298, align 8, !tbaa !52
  %397 = load i32, ptr %158, align 4, !tbaa !60
  %398 = mul nsw i32 %397, %396
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %598

400:                                              ; preds = %393
  %401 = load ptr, ptr %302, align 8, !tbaa !61
  %402 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 14
  %403 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 13
  br label %404

404:                                              ; preds = %400, %588
  %405 = phi i32 [ %397, %400 ], [ %589, %588 ]
  %406 = phi i32 [ %396, %400 ], [ %590, %588 ]
  %407 = phi i64 [ 0, %400 ], [ %593, %588 ]
  %408 = phi i32 [ 0, %400 ], [ %592, %588 ]
  %409 = phi i32 [ 0, %400 ], [ %591, %588 ]
  %410 = phi ptr [ %401, %400 ], [ %594, %588 ]
  %411 = trunc i64 %407 to i32
  %412 = getelementptr inbounds %struct.BPoint, ptr %410, i64 0, i32 3
  %413 = load i16, ptr %412, align 4, !tbaa !63
  %414 = and i16 %413, 5
  %415 = icmp eq i16 %414, 1
  %416 = icmp sgt i32 %406, -1
  %417 = and i1 %415, %416
  br i1 %417, label %418, label %456

418:                                              ; preds = %404
  %419 = srem i32 %411, %406
  %420 = zext nneg i32 %406 to i64
  br label %421

421:                                              ; preds = %418, %451
  %422 = phi i32 [ %453, %451 ], [ %419, %418 ]
  %423 = phi ptr [ %454, %451 ], [ %410, %418 ]
  %424 = phi i32 [ %431, %451 ], [ 0, %418 ]
  %425 = phi i32 [ %452, %451 ], [ 0, %418 ]
  %426 = getelementptr inbounds %struct.BPoint, ptr %423, i64 0, i32 3
  %427 = load i16, ptr %426, align 4, !tbaa !63
  %428 = and i16 %427, 1
  %429 = icmp eq i16 %428, 0
  br i1 %429, label %456, label %430

430:                                              ; preds = %421
  %431 = add nuw nsw i32 %424, 1
  %432 = sdiv i32 %411, %406
  %433 = icmp slt i32 %432, %405
  br i1 %433, label %434, label %451

434:                                              ; preds = %430
  %435 = icmp eq i32 %424, 0
  %436 = zext i1 %435 to i32
  br label %437

437:                                              ; preds = %434, %445
  %438 = phi i32 [ %432, %434 ], [ %448, %445 ]
  %439 = phi ptr [ %423, %434 ], [ %449, %445 ]
  %440 = phi i32 [ %425, %434 ], [ %447, %445 ]
  %441 = getelementptr inbounds %struct.BPoint, ptr %439, i64 0, i32 3
  %442 = load i16, ptr %441, align 4, !tbaa !63
  %443 = and i16 %442, 1
  %444 = icmp eq i16 %443, 0
  br i1 %444, label %451, label %445

445:                                              ; preds = %437
  %446 = or i16 %442, 4
  store i16 %446, ptr %441, align 4, !tbaa !63
  %447 = add nsw i32 %440, %436
  %448 = add nsw i32 %438, 1
  %449 = getelementptr inbounds %struct.BPoint, ptr %439, i64 %420
  %450 = icmp slt i32 %448, %405
  br i1 %450, label %437, label %451, !llvm.loop !426

451:                                              ; preds = %445, %437, %430
  %452 = phi i32 [ %425, %430 ], [ %440, %437 ], [ %447, %445 ]
  %453 = add nuw nsw i32 %422, 1
  %454 = getelementptr inbounds %struct.BPoint, ptr %423, i64 1
  %455 = icmp slt i32 %453, %406
  br i1 %455, label %421, label %456, !llvm.loop !427

456:                                              ; preds = %421, %451, %404
  %457 = phi i32 [ 0, %404 ], [ %425, %421 ], [ %452, %451 ]
  %458 = phi i32 [ 0, %404 ], [ %424, %421 ], [ %431, %451 ]
  %459 = add nsw i32 %457, %458
  %460 = icmp sgt i32 %459, 2
  br i1 %460, label %461, label %588

461:                                              ; preds = %456
  %462 = icmp eq i64 %407, 0
  br i1 %462, label %463, label %483

463:                                              ; preds = %461
  %464 = icmp eq i32 %458, %406
  br i1 %464, label %465, label %470

465:                                              ; preds = %463
  %466 = load i16, ptr %402, align 2, !tbaa !74
  %467 = and i16 %466, 1
  %468 = icmp eq i16 %467, 0
  %469 = select i1 %468, i32 %408, i32 %457
  br label %470

470:                                              ; preds = %465, %463
  %471 = phi i32 [ %408, %463 ], [ %469, %465 ]
  %472 = icmp eq i32 %457, %405
  br i1 %472, label %473, label %478

473:                                              ; preds = %470
  %474 = load i16, ptr %403, align 4, !tbaa !69
  %475 = and i16 %474, 1
  %476 = icmp eq i16 %475, 0
  %477 = select i1 %476, i32 %409, i32 %458
  br label %478

478:                                              ; preds = %473, %470
  %479 = phi i32 [ %409, %470 ], [ %477, %473 ]
  %480 = icmp ne i32 %479, 0
  %481 = icmp ne i32 %471, 0
  %482 = select i1 %480, i1 true, i1 %481
  br i1 %482, label %588, label %547

483:                                              ; preds = %461
  %484 = add nsw i32 %458, %411
  %485 = icmp eq i32 %484, %406
  %486 = icmp ne i32 %409, 0
  %487 = select i1 %485, i1 %486, i1 false
  br i1 %487, label %488, label %525

488:                                              ; preds = %483
  %489 = add nsw i32 %458, %409
  %490 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %15, i32 noundef %489, i32 noundef %457) #23
  %491 = icmp sgt i32 %457, 0
  br i1 %491, label %492, label %571

492:                                              ; preds = %488
  %493 = getelementptr inbounds %struct.Nurb, ptr %490, i64 0, i32 17
  %494 = getelementptr inbounds %struct.Nurb, ptr %490, i64 0, i32 6
  %495 = sext i32 %458 to i64
  %496 = mul nsw i64 %495, 36
  %497 = sext i32 %409 to i64
  %498 = mul nsw i64 %497, 36
  br label %499

499:                                              ; preds = %492, %499
  %500 = phi i32 [ 0, %492 ], [ %523, %499 ]
  %501 = load ptr, ptr %493, align 8, !tbaa !61
  %502 = load i32, ptr %494, align 8, !tbaa !52
  %503 = mul nsw i32 %502, %500
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.BPoint, ptr %501, i64 %504
  %506 = load ptr, ptr %302, align 8, !tbaa !61
  %507 = load i32, ptr %298, align 8, !tbaa !52
  %508 = mul nsw i32 %507, %500
  %509 = add nsw i32 %508, %411
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.BPoint, ptr %506, i64 %510
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %505, ptr align 4 %511, i64 %496, i1 false)
  %512 = load ptr, ptr %493, align 8, !tbaa !61
  %513 = load i32, ptr %494, align 8, !tbaa !52
  %514 = mul nsw i32 %513, %500
  %515 = add nsw i32 %514, %458
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.BPoint, ptr %512, i64 %516
  %518 = load ptr, ptr %302, align 8, !tbaa !61
  %519 = load i32, ptr %298, align 8, !tbaa !52
  %520 = mul nsw i32 %519, %500
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.BPoint, ptr %518, i64 %521
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %517, ptr align 4 %522, i64 %498, i1 false)
  %523 = add nuw nsw i32 %500, 1
  %524 = icmp eq i32 %523, %457
  br i1 %524, label %571, label %499, !llvm.loop !428

525:                                              ; preds = %483
  %526 = sdiv i32 %411, %406
  %527 = add nsw i32 %526, %457
  %528 = icmp eq i32 %527, %405
  %529 = icmp ne i32 %408, 0
  %530 = select i1 %528, i1 %529, i1 false
  br i1 %530, label %531, label %547

531:                                              ; preds = %525
  %532 = add nsw i32 %457, %408
  %533 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %15, i32 noundef %458, i32 noundef %532) #23
  %534 = getelementptr inbounds %struct.Nurb, ptr %533, i64 0, i32 17
  %535 = load ptr, ptr %534, align 8, !tbaa !61
  %536 = load ptr, ptr %302, align 8, !tbaa !61
  %537 = getelementptr inbounds %struct.BPoint, ptr %536, i64 %407
  %538 = mul nsw i32 %457, %458
  %539 = sext i32 %538 to i64
  %540 = mul nsw i64 %539, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %535, ptr nonnull align 4 %537, i64 %540, i1 false)
  %541 = load ptr, ptr %534, align 8, !tbaa !61
  %542 = getelementptr inbounds %struct.BPoint, ptr %541, i64 %539
  %543 = load ptr, ptr %302, align 8, !tbaa !61
  %544 = mul nsw i32 %458, %408
  %545 = sext i32 %544 to i64
  %546 = mul nsw i64 %545, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %542, ptr align 4 %543, i64 %546, i1 false)
  br label %571

547:                                              ; preds = %478, %525
  %548 = phi i32 [ %409, %525 ], [ 0, %478 ]
  %549 = phi i32 [ %408, %525 ], [ 0, %478 ]
  %550 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %15, i32 noundef %458, i32 noundef %457) #23
  %551 = icmp sgt i32 %457, 0
  br i1 %551, label %552, label %571

552:                                              ; preds = %547
  %553 = getelementptr inbounds %struct.Nurb, ptr %550, i64 0, i32 17
  %554 = sext i32 %458 to i64
  %555 = mul nsw i64 %554, 36
  %556 = zext nneg i32 %457 to i64
  br label %557

557:                                              ; preds = %552, %557
  %558 = phi i64 [ 0, %552 ], [ %569, %557 ]
  %559 = load ptr, ptr %553, align 8, !tbaa !61
  %560 = mul nsw i64 %558, %554
  %561 = getelementptr inbounds %struct.BPoint, ptr %559, i64 %560
  %562 = load ptr, ptr %302, align 8, !tbaa !61
  %563 = load i32, ptr %298, align 8, !tbaa !52
  %564 = trunc i64 %558 to i32
  %565 = mul nsw i32 %563, %564
  %566 = add nsw i32 %565, %411
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.BPoint, ptr %562, i64 %567
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %561, ptr align 4 %568, i64 %555, i1 false)
  %569 = add nuw nsw i64 %558, 1
  %570 = icmp eq i64 %569, %556
  br i1 %570, label %571, label %557, !llvm.loop !429

571:                                              ; preds = %499, %557, %488, %547, %531
  %572 = phi ptr [ %533, %531 ], [ %550, %547 ], [ %490, %488 ], [ %550, %557 ], [ %490, %499 ]
  %573 = phi i32 [ 0, %531 ], [ %548, %547 ], [ 0, %488 ], [ %548, %557 ], [ 0, %499 ]
  %574 = phi i32 [ 0, %531 ], [ %549, %547 ], [ 0, %488 ], [ %549, %557 ], [ 0, %499 ]
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %572) #23
  %575 = load i32, ptr %298, align 8, !tbaa !52
  %576 = icmp eq i32 %458, %575
  br i1 %576, label %581, label %577

577:                                              ; preds = %571
  %578 = getelementptr inbounds %struct.Nurb, ptr %572, i64 0, i32 13
  %579 = load i16, ptr %578, align 4, !tbaa !69
  %580 = and i16 %579, -2
  store i16 %580, ptr %578, align 4, !tbaa !69
  br label %581

581:                                              ; preds = %577, %571
  %582 = load i32, ptr %158, align 4, !tbaa !60
  %583 = icmp eq i32 %457, %582
  br i1 %583, label %588, label %584

584:                                              ; preds = %581
  %585 = getelementptr inbounds %struct.Nurb, ptr %572, i64 0, i32 14
  %586 = load i16, ptr %585, align 2, !tbaa !74
  %587 = and i16 %586, -2
  store i16 %587, ptr %585, align 2, !tbaa !74
  br label %588

588:                                              ; preds = %456, %584, %581, %478
  %589 = phi i32 [ %405, %478 ], [ %582, %584 ], [ %457, %581 ], [ %405, %456 ]
  %590 = phi i32 [ %406, %478 ], [ %575, %584 ], [ %575, %581 ], [ %406, %456 ]
  %591 = phi i32 [ %479, %478 ], [ %573, %584 ], [ %573, %581 ], [ %409, %456 ]
  %592 = phi i32 [ %471, %478 ], [ %574, %584 ], [ %574, %581 ], [ %408, %456 ]
  %593 = add nuw nsw i64 %407, 1
  %594 = getelementptr inbounds %struct.BPoint, ptr %410, i64 1
  %595 = mul nsw i32 %589, %590
  %596 = sext i32 %595 to i64
  %597 = icmp slt i64 %593, %596
  br i1 %597, label %404, label %598, !llvm.loop !430

598:                                              ; preds = %588, %393
  %599 = phi i32 [ %395, %393 ], [ %457, %588 ]
  %600 = phi i32 [ %394, %393 ], [ %458, %588 ]
  %601 = phi i32 [ 0, %393 ], [ %591, %588 ]
  %602 = phi i32 [ 0, %393 ], [ %592, %588 ]
  %603 = phi i32 [ %396, %393 ], [ %590, %588 ]
  %604 = phi i32 [ %397, %393 ], [ %589, %588 ]
  store i32 %600, ptr %4, align 4
  store i32 %599, ptr %5, align 4, !tbaa !107
  %605 = icmp ne i32 %601, 0
  %606 = icmp ne i32 %602, 0
  %607 = select i1 %605, i1 true, i1 %606
  br i1 %607, label %608, label %646

608:                                              ; preds = %598
  %609 = icmp eq i32 %601, 0
  %610 = select i1 %609, i32 %603, i32 %601
  store i32 %610, ptr %4, align 4, !tbaa !107
  %611 = icmp eq i32 %602, 0
  %612 = select i1 %611, i32 %604, i32 %602
  store i32 %612, ptr %5, align 4, !tbaa !107
  %613 = tail call ptr @BKE_nurb_copy(ptr noundef nonnull %15, i32 noundef %610, i32 noundef %612) #23
  %614 = icmp sgt i32 %612, 0
  br i1 %614, label %615, label %632

615:                                              ; preds = %608
  %616 = getelementptr inbounds %struct.Nurb, ptr %613, i64 0, i32 17
  %617 = sext i32 %610 to i64
  %618 = mul nsw i64 %617, 36
  %619 = zext nneg i32 %612 to i64
  br label %620

620:                                              ; preds = %615, %620
  %621 = phi i64 [ 0, %615 ], [ %630, %620 ]
  %622 = load ptr, ptr %616, align 8, !tbaa !61
  %623 = mul nsw i64 %621, %617
  %624 = getelementptr inbounds %struct.BPoint, ptr %622, i64 %623
  %625 = load ptr, ptr %302, align 8, !tbaa !61
  %626 = load i32, ptr %298, align 8, !tbaa !52
  %627 = sext i32 %626 to i64
  %628 = mul nsw i64 %621, %627
  %629 = getelementptr inbounds %struct.BPoint, ptr %625, i64 %628
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %624, ptr align 4 %629, i64 %618, i1 false)
  %630 = add nuw nsw i64 %621, 1
  %631 = icmp eq i64 %630, %619
  br i1 %631, label %632, label %620, !llvm.loop !431

632:                                              ; preds = %620, %608
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %613) #23
  %633 = load i32, ptr %298, align 8, !tbaa !52
  %634 = icmp eq i32 %610, %633
  br i1 %634, label %639, label %635

635:                                              ; preds = %632
  %636 = getelementptr inbounds %struct.Nurb, ptr %613, i64 0, i32 13
  %637 = load i16, ptr %636, align 4, !tbaa !69
  %638 = and i16 %637, -2
  store i16 %638, ptr %636, align 4, !tbaa !69
  br label %639

639:                                              ; preds = %635, %632
  %640 = load i32, ptr %158, align 4, !tbaa !60
  %641 = icmp eq i32 %612, %640
  br i1 %641, label %646, label %642

642:                                              ; preds = %639
  %643 = getelementptr inbounds %struct.Nurb, ptr %613, i64 0, i32 14
  %644 = load i16, ptr %643, align 2, !tbaa !74
  %645 = and i16 %644, -2
  store i16 %645, ptr %643, align 2, !tbaa !74
  br label %646

646:                                              ; preds = %639, %642, %598
  %647 = phi i32 [ %612, %639 ], [ %640, %642 ], [ %604, %598 ]
  %648 = phi i32 [ %633, %639 ], [ %633, %642 ], [ %603, %598 ]
  %649 = mul nsw i32 %647, %648
  %650 = icmp sgt i32 %649, 0
  br i1 %650, label %651, label %672

651:                                              ; preds = %646
  %652 = load ptr, ptr %302, align 8, !tbaa !61
  br label %653

653:                                              ; preds = %651, %665
  %654 = phi i32 [ %666, %665 ], [ %647, %651 ]
  %655 = phi i32 [ %667, %665 ], [ %648, %651 ]
  %656 = phi i32 [ %668, %665 ], [ 0, %651 ]
  %657 = phi ptr [ %669, %665 ], [ %652, %651 ]
  %658 = getelementptr inbounds %struct.BPoint, ptr %657, i64 0, i32 3
  %659 = load i16, ptr %658, align 4, !tbaa !63
  %660 = and i16 %659, -5
  store i16 %660, ptr %658, align 4, !tbaa !63
  br i1 %13, label %661, label %665

661:                                              ; preds = %653
  %662 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %657, i8 noundef zeroext 0, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  %663 = load i32, ptr %298, align 8, !tbaa !52
  %664 = load i32, ptr %158, align 4, !tbaa !60
  br label %665

665:                                              ; preds = %653, %661
  %666 = phi i32 [ %654, %653 ], [ %664, %661 ]
  %667 = phi i32 [ %655, %653 ], [ %663, %661 ]
  %668 = add nuw nsw i32 %656, 1
  %669 = getelementptr inbounds %struct.BPoint, ptr %657, i64 1
  %670 = mul nsw i32 %666, %667
  %671 = icmp slt i32 %668, %670
  br i1 %671, label %653, label %672, !llvm.loop !432

672:                                              ; preds = %665, %285, %149, %161, %19, %646, %270, %134, %268, %391, %387, %293, %132
  %673 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 1
  %674 = load ptr, ptr %673, align 8, !tbaa !433
  %675 = icmp eq ptr %674, null
  br i1 %675, label %676, label %14, !llvm.loop !434

676:                                              ; preds = %672, %3
  %677 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %1) #22, !range !79
  %678 = icmp eq i8 %677, 0
  br i1 %678, label %679, label %731

679:                                              ; preds = %676
  %680 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 32
  store i32 -1, ptr %680, align 8, !tbaa !203
  %681 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 31
  store i32 -1, ptr %681, align 4, !tbaa !202
  %682 = load ptr, ptr %1, align 8, !tbaa !65
  %683 = icmp eq ptr %682, null
  br i1 %683, label %731, label %684

684:                                              ; preds = %679
  %685 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %686 = icmp eq i8 %2, 0
  br label %687

687:                                              ; preds = %684, %728
  %688 = phi ptr [ %682, %684 ], [ %729, %728 ]
  %689 = getelementptr inbounds %struct.Nurb, ptr %688, i64 0, i32 2
  %690 = load i16, ptr %689, align 8, !tbaa !50
  %691 = icmp eq i16 %690, 1
  br i1 %691, label %692, label %702

692:                                              ; preds = %687
  br i1 %686, label %728, label %693

693:                                              ; preds = %692
  %694 = getelementptr inbounds %struct.Nurb, ptr %688, i64 0, i32 18
  %695 = load ptr, ptr %694, align 8, !tbaa !53
  tail call void @BKE_nurb_handle_calc_simple(ptr noundef nonnull %688, ptr noundef %695) #23
  %696 = load ptr, ptr %694, align 8, !tbaa !53
  %697 = getelementptr inbounds %struct.Nurb, ptr %688, i64 0, i32 6
  %698 = load i32, ptr %697, align 8, !tbaa !52
  %699 = sext i32 %698 to i64
  %700 = getelementptr %struct.BezTriple, ptr %696, i64 %699
  %701 = getelementptr %struct.BezTriple, ptr %700, i64 -1
  tail call void @BKE_nurb_handle_calc_simple(ptr noundef nonnull %688, ptr noundef %701) #23
  br label %728

702:                                              ; preds = %687
  %703 = getelementptr inbounds %struct.Nurb, ptr %688, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %703, i8 0, i64 16, i1 false)
  %704 = tail call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %688) #23
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %688) #23
  %705 = load i16, ptr %685, align 8, !tbaa !34
  %706 = icmp eq i16 %705, 3
  br i1 %706, label %707, label %728

707:                                              ; preds = %702
  %708 = getelementptr inbounds %struct.Nurb, ptr %688, i64 0, i32 6
  %709 = load i32, ptr %708, align 8, !tbaa !52
  %710 = getelementptr inbounds %struct.Nurb, ptr %688, i64 0, i32 7
  %711 = load i32, ptr %710, align 4, !tbaa !60
  %712 = mul nsw i32 %711, %709
  %713 = icmp sgt i32 %712, 0
  br i1 %713, label %714, label %726

714:                                              ; preds = %707
  %715 = getelementptr inbounds %struct.Nurb, ptr %688, i64 0, i32 17
  %716 = load ptr, ptr %715, align 8, !tbaa !61
  br label %717

717:                                              ; preds = %714, %717
  %718 = phi i32 [ %723, %717 ], [ 0, %714 ]
  %719 = phi ptr [ %724, %717 ], [ %716, %714 ]
  %720 = getelementptr inbounds %struct.BPoint, ptr %719, i64 0, i32 3
  %721 = load i16, ptr %720, align 4, !tbaa !63
  %722 = and i16 %721, -5
  store i16 %722, ptr %720, align 4, !tbaa !63
  %723 = add nuw nsw i32 %718, 1
  %724 = getelementptr inbounds %struct.BPoint, ptr %719, i64 1
  %725 = icmp eq i32 %723, %712
  br i1 %725, label %726, label %717, !llvm.loop !435

726:                                              ; preds = %717, %707
  %727 = tail call zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef nonnull %688) #23
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %688) #23
  br label %728

728:                                              ; preds = %693, %692, %726, %702
  %729 = load ptr, ptr %688, align 8, !tbaa !65
  %730 = icmp eq ptr %729, null
  br i1 %730, label %731, label %687, !llvm.loop !436

731:                                              ; preds = %728, %679, %676
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !437 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @ED_object_add_duplicate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_curve_copy(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_delete_segments(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #5 !PGOFuncName !438 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1031, label %12

12:                                               ; preds = %2
  %13 = icmp eq i8 %1, 0
  %14 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 16
  br label %20

15:                                               ; preds = %974
  %16 = load ptr, ptr %3, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %1031, label %18

18:                                               ; preds = %15
  %19 = icmp eq i8 %1, 0
  br label %977

20:                                               ; preds = %12, %974
  %21 = phi ptr [ %10, %12 ], [ %975, %974 ]
  %22 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !50
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %378

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 18
  %27 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !52
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %974

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 13
  br label %33

33:                                               ; preds = %30, %262
  %34 = phi i32 [ %28, %30 ], [ %269, %262 ]
  %35 = phi i32 [ 0, %30 ], [ %266, %262 ]
  %36 = phi i32 [ -1, %30 ], [ %265, %262 ]
  %37 = phi i32 [ -1, %30 ], [ %264, %262 ]
  %38 = phi i32 [ -1, %30 ], [ %263, %262 ]
  %39 = phi i32 [ 0, %30 ], [ %267, %262 ]
  %40 = phi ptr [ %31, %30 ], [ %268, %262 ]
  %41 = load i16, ptr %14, align 8, !tbaa !234
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  %44 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 0, i32 8
  %45 = load i8, ptr %44, align 4, !tbaa !58
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %43, label %49, label %48

48:                                               ; preds = %33
  br i1 %47, label %60, label %68

49:                                               ; preds = %33
  br i1 %47, label %50, label %65

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 0, i32 7
  %52 = load i8, ptr %51, align 1, !tbaa !56
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 0, i32 9
  %57 = load i8, ptr %56, align 1, !tbaa !59
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %48
  %61 = icmp eq i32 %38, -1
  %62 = select i1 %61, i32 %39, i32 %38
  %63 = add nsw i32 %34, -1
  %64 = icmp slt i32 %39, %63
  br i1 %64, label %262, label %91

65:                                               ; preds = %55, %50, %49
  %66 = add nsw i32 %34, -1
  %67 = icmp slt i32 %39, %66
  br i1 %67, label %71, label %91

68:                                               ; preds = %48
  %69 = add nsw i32 %34, -1
  %70 = icmp slt i32 %39, %69
  br i1 %70, label %76, label %91

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 1, i32 8
  %73 = load i8, ptr %72, align 4, !tbaa !58
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %91

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 1, i32 8
  %78 = load i8, ptr %77, align 4, !tbaa !58
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %262, label %91

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 1, i32 7
  %83 = load i8, ptr %82, align 1, !tbaa !56
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 1, i32 9
  %88 = load i8, ptr %87, align 1, !tbaa !59
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %262, label %91

91:                                               ; preds = %68, %65, %76, %71, %81, %86, %60
  %92 = phi i32 [ %38, %76 ], [ %38, %71 ], [ %38, %81 ], [ %38, %86 ], [ %38, %65 ], [ %62, %60 ], [ %38, %68 ]
  %93 = phi i32 [ %37, %76 ], [ %37, %71 ], [ %37, %81 ], [ %37, %86 ], [ %37, %65 ], [ %39, %60 ], [ %37, %68 ]
  %94 = icmp sgt i32 %92, -1
  br i1 %94, label %95, label %262

95:                                               ; preds = %91
  %96 = icmp ult i32 %92, 2
  %97 = add nsw i32 %34, -1
  br i1 %96, label %98, label %166

98:                                               ; preds = %95
  %99 = icmp eq i32 %39, %97
  br i1 %99, label %100, label %109

100:                                              ; preds = %98
  %101 = icmp ne i32 %92, 1
  %102 = icmp eq i32 %93, %39
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i16, ptr %32, align 4, !tbaa !69
  %106 = and i16 %105, -2
  store i16 %106, ptr %32, align 4, !tbaa !69
  br label %107

107:                                              ; preds = %104, %100
  %108 = add nuw nsw i32 %39, 1
  br label %235

109:                                              ; preds = %98
  %110 = icmp eq i32 %92, 0
  br i1 %110, label %111, label %166

111:                                              ; preds = %109
  %112 = add nsw i32 %93, 1
  %113 = add nsw i32 %93, 2
  %114 = load ptr, ptr %26, align 8, !tbaa !53
  %115 = sext i32 %34 to i64
  %116 = getelementptr %struct.BezTriple, ptr %114, i64 %115
  %117 = load i16, ptr %32, align 4, !tbaa !69
  %118 = and i16 %117, 1
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %235, label %120

120:                                              ; preds = %111
  %121 = getelementptr %struct.BezTriple, ptr %116, i64 -1, i32 8
  %122 = load i8, ptr %121, align 4, !tbaa !58
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %43, label %126, label %125

125:                                              ; preds = %120
  br i1 %124, label %262, label %137

126:                                              ; preds = %120
  br i1 %124, label %127, label %142

127:                                              ; preds = %126
  %128 = getelementptr %struct.BezTriple, ptr %116, i64 -1, i32 7
  %129 = load i8, ptr %128, align 1, !tbaa !56
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = getelementptr %struct.BezTriple, ptr %116, i64 -1, i32 9
  %134 = load i8, ptr %133, align 1, !tbaa !59
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %262, label %142

137:                                              ; preds = %125
  %138 = getelementptr %struct.BezTriple, ptr %116, i64 -2, i32 8
  %139 = load i8, ptr %138, align 4, !tbaa !58
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %262, label %157

142:                                              ; preds = %132, %127, %126
  %143 = getelementptr %struct.BezTriple, ptr %116, i64 -2, i32 8
  %144 = load i8, ptr %143, align 4, !tbaa !58
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = getelementptr %struct.BezTriple, ptr %116, i64 -2, i32 7
  %149 = load i8, ptr %148, align 1, !tbaa !56
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = getelementptr %struct.BezTriple, ptr %116, i64 -2, i32 9
  %154 = load i8, ptr %153, align 1, !tbaa !59
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %262, label %157

157:                                              ; preds = %152, %147, %142, %137
  %158 = add nsw i32 %93, 3
  %159 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %158, i32 noundef 1) #23
  %160 = getelementptr inbounds %struct.Nurb, ptr %159, i64 0, i32 18
  %161 = load ptr, ptr %160, align 8, !tbaa !53
  %162 = getelementptr inbounds %struct.BezTriple, ptr %161, i64 1
  %163 = load ptr, ptr %26, align 8, !tbaa !53
  call void @ED_curve_beztcpy(ptr noundef nonnull %9, ptr noundef nonnull %162, ptr noundef %163, i32 noundef %113) #22
  %164 = load i32, ptr %27, align 8, !tbaa !52
  %165 = add nsw i32 %164, -1
  br label %242

166:                                              ; preds = %95, %109
  %167 = icmp eq i32 %93, %97
  %168 = add nsw i32 %92, -1
  br i1 %167, label %169, label %231

169:                                              ; preds = %166
  %170 = sub i32 %34, %92
  %171 = add nsw i32 %170, 1
  %172 = load ptr, ptr %26, align 8, !tbaa !53
  %173 = load i16, ptr %32, align 4, !tbaa !69
  %174 = and i16 %173, 1
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %221, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.BezTriple, ptr %172, i64 0, i32 8
  %178 = load i8, ptr %177, align 4, !tbaa !58
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  br i1 %43, label %182, label %181

181:                                              ; preds = %176
  br i1 %180, label %221, label %193

182:                                              ; preds = %176
  br i1 %180, label %183, label %198

183:                                              ; preds = %182
  %184 = getelementptr inbounds %struct.BezTriple, ptr %172, i64 0, i32 7
  %185 = load i8, ptr %184, align 1, !tbaa !56
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.BezTriple, ptr %172, i64 0, i32 9
  %190 = load i8, ptr %189, align 1, !tbaa !59
  %191 = and i8 %190, 1
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %221, label %198

193:                                              ; preds = %181
  %194 = getelementptr inbounds %struct.BezTriple, ptr %172, i64 1, i32 8
  %195 = load i8, ptr %194, align 4, !tbaa !58
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %221, label %213

198:                                              ; preds = %188, %183, %182
  %199 = getelementptr inbounds %struct.BezTriple, ptr %172, i64 1, i32 8
  %200 = load i8, ptr %199, align 4, !tbaa !58
  %201 = and i8 %200, 1
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.BezTriple, ptr %172, i64 1, i32 7
  %205 = load i8, ptr %204, align 1, !tbaa !56
  %206 = and i8 %205, 1
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.BezTriple, ptr %172, i64 1, i32 9
  %210 = load i8, ptr %209, align 1, !tbaa !59
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %208, %203, %198, %193
  %214 = add nsw i32 %170, 2
  %215 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %214, i32 noundef 1) #23
  %216 = getelementptr inbounds %struct.Nurb, ptr %215, i64 0, i32 18
  %217 = load ptr, ptr %216, align 8, !tbaa !53
  %218 = sext i32 %171 to i64
  %219 = getelementptr inbounds %struct.BezTriple, ptr %217, i64 %218
  %220 = load ptr, ptr %26, align 8, !tbaa !53
  call void @ED_curve_beztcpy(ptr noundef nonnull %9, ptr noundef %219, ptr noundef %220, i32 noundef 1) #22
  br label %242

221:                                              ; preds = %208, %193, %188, %181, %169
  %222 = icmp eq i32 %35, 0
  br i1 %222, label %235, label %223

223:                                              ; preds = %221
  %224 = add nsw i32 %171, %35
  %225 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %224, i32 noundef 1) #23
  %226 = getelementptr inbounds %struct.Nurb, ptr %225, i64 0, i32 18
  %227 = load ptr, ptr %226, align 8, !tbaa !53
  %228 = sext i32 %171 to i64
  %229 = getelementptr inbounds %struct.BezTriple, ptr %227, i64 %228
  %230 = load ptr, ptr %26, align 8, !tbaa !53
  call void @ED_curve_beztcpy(ptr noundef nonnull %9, ptr noundef %229, ptr noundef %230, i32 noundef %35) #22
  br label %242

231:                                              ; preds = %166
  %232 = add nsw i32 %93, 1
  %233 = sub nsw i32 %232, %168
  %234 = add nsw i32 %233, 1
  br label %235

235:                                              ; preds = %221, %111, %231, %107
  %236 = phi i32 [ %234, %231 ], [ %108, %107 ], [ %113, %111 ], [ %171, %221 ]
  %237 = phi i32 [ %168, %231 ], [ 0, %107 ], [ 0, %111 ], [ %168, %221 ]
  %238 = phi i32 [ %232, %231 ], [ %39, %107 ], [ %112, %111 ], [ %97, %221 ]
  %239 = phi i32 [ %35, %231 ], [ %35, %107 ], [ %35, %111 ], [ 0, %221 ]
  %240 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %236, i32 noundef 1) #23
  %241 = icmp eq ptr %240, null
  br i1 %241, label %262, label %242

242:                                              ; preds = %223, %213, %157, %235
  %243 = phi i32 [ %239, %235 ], [ 0, %223 ], [ %35, %213 ], [ %35, %157 ]
  %244 = phi i32 [ %236, %235 ], [ %171, %223 ], [ %171, %213 ], [ 1, %157 ]
  %245 = phi i32 [ %238, %235 ], [ %97, %223 ], [ %97, %213 ], [ %112, %157 ]
  %246 = phi i32 [ %237, %235 ], [ %168, %223 ], [ %168, %213 ], [ %165, %157 ]
  %247 = phi ptr [ %240, %235 ], [ %225, %223 ], [ %215, %213 ], [ %159, %157 ]
  %248 = getelementptr inbounds %struct.Nurb, ptr %247, i64 0, i32 18
  %249 = load ptr, ptr %248, align 8, !tbaa !53
  %250 = load ptr, ptr %26, align 8, !tbaa !53
  %251 = sext i32 %246 to i64
  %252 = getelementptr inbounds %struct.BezTriple, ptr %250, i64 %251
  call void @ED_curve_beztcpy(ptr noundef nonnull %9, ptr noundef %249, ptr noundef %252, i32 noundef %244) #22
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %247) #23
  %253 = icmp eq i32 %246, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %242
  %255 = load i32, ptr %27, align 8, !tbaa !52
  %256 = add nsw i32 %255, -1
  %257 = icmp eq i32 %245, %256
  br i1 %257, label %262, label %258

258:                                              ; preds = %254, %242
  %259 = getelementptr inbounds %struct.Nurb, ptr %247, i64 0, i32 13
  %260 = load i16, ptr %259, align 4, !tbaa !69
  %261 = and i16 %260, -2
  store i16 %261, ptr %259, align 4, !tbaa !69
  br label %262

262:                                              ; preds = %152, %137, %132, %125, %235, %258, %254, %91, %76, %86, %60
  %263 = phi i32 [ %92, %91 ], [ %38, %76 ], [ %38, %86 ], [ %62, %60 ], [ -1, %254 ], [ -1, %258 ], [ -1, %235 ], [ -1, %125 ], [ -1, %132 ], [ -1, %137 ], [ -1, %152 ]
  %264 = phi i32 [ %93, %91 ], [ %37, %76 ], [ %37, %86 ], [ %39, %60 ], [ -1, %254 ], [ -1, %258 ], [ -1, %235 ], [ -1, %125 ], [ -1, %132 ], [ -1, %137 ], [ -1, %152 ]
  %265 = phi i32 [ %36, %91 ], [ %36, %76 ], [ %36, %86 ], [ %36, %60 ], [ %244, %254 ], [ %244, %258 ], [ %236, %235 ], [ %113, %125 ], [ %113, %132 ], [ %113, %137 ], [ %113, %152 ]
  %266 = phi i32 [ %35, %91 ], [ %35, %76 ], [ %35, %86 ], [ %35, %60 ], [ %243, %254 ], [ %243, %258 ], [ %239, %235 ], [ %113, %125 ], [ %113, %132 ], [ %113, %137 ], [ %113, %152 ]
  %267 = add nuw nsw i32 %39, 1
  %268 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 1
  %269 = load i32, ptr %27, align 8, !tbaa !52
  %270 = icmp slt i32 %267, %269
  br i1 %270, label %33, label %271, !llvm.loop !439

271:                                              ; preds = %262
  %272 = icmp ne i32 %265, -1
  %273 = select i1 %13, i1 %272, i1 false
  %274 = icmp sgt i32 %269, 2
  %275 = and i1 %273, %274
  br i1 %275, label %276, label %974

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 13
  %278 = load i16, ptr %277, align 4, !tbaa !69
  %279 = and i16 %278, 1
  %280 = icmp eq i16 %279, 0
  br i1 %280, label %281, label %974

281:                                              ; preds = %276
  %282 = load ptr, ptr %26, align 8, !tbaa !53
  %283 = load i16, ptr %14, align 8, !tbaa !234
  %284 = and i16 %283, 1
  %285 = icmp eq i16 %284, 0
  %286 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 8
  %287 = load i8, ptr %286, align 4, !tbaa !58
  %288 = and i8 %287, 1
  %289 = icmp eq i8 %288, 0
  br i1 %285, label %291, label %290

290:                                              ; preds = %281
  br i1 %289, label %329, label %302

291:                                              ; preds = %281
  br i1 %289, label %292, label %307

292:                                              ; preds = %291
  %293 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 7
  %294 = load i8, ptr %293, align 1, !tbaa !56
  %295 = and i8 %294, 1
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 0, i32 9
  %299 = load i8, ptr %298, align 1, !tbaa !59
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %329, label %307

302:                                              ; preds = %290
  %303 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 1, i32 8
  %304 = load i8, ptr %303, align 4, !tbaa !58
  %305 = and i8 %304, 1
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %329, label %322

307:                                              ; preds = %297, %292, %291
  %308 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 1, i32 8
  %309 = load i8, ptr %308, align 4, !tbaa !58
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %307
  %313 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 1, i32 7
  %314 = load i8, ptr %313, align 1, !tbaa !56
  %315 = and i8 %314, 1
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.BezTriple, ptr %282, i64 1, i32 9
  %319 = load i8, ptr %318, align 1, !tbaa !59
  %320 = and i8 %319, 1
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %329, label %322

322:                                              ; preds = %317, %312, %307, %302
  %323 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef 1, i32 noundef 1) #23
  %324 = getelementptr inbounds %struct.Nurb, ptr %323, i64 0, i32 18
  %325 = load ptr, ptr %324, align 8, !tbaa !53
  call void @ED_curve_beztcpy(ptr noundef nonnull %9, ptr noundef %325, ptr noundef nonnull %282, i32 noundef 1) #22
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %323) #23
  %326 = load ptr, ptr %26, align 8, !tbaa !53
  %327 = load i32, ptr %27, align 8, !tbaa !52
  %328 = load i16, ptr %14, align 8, !tbaa !234
  br label %329

329:                                              ; preds = %322, %317, %302, %297, %290
  %330 = phi i16 [ %328, %322 ], [ %283, %317 ], [ %283, %302 ], [ %283, %297 ], [ %283, %290 ]
  %331 = phi i32 [ %327, %322 ], [ %269, %317 ], [ %269, %302 ], [ %269, %297 ], [ %269, %290 ]
  %332 = phi ptr [ %326, %322 ], [ %282, %317 ], [ %282, %302 ], [ %282, %297 ], [ %282, %290 ]
  %333 = sext i32 %331 to i64
  %334 = getelementptr %struct.BezTriple, ptr %332, i64 %333
  %335 = getelementptr %struct.BezTriple, ptr %334, i64 -1
  %336 = and i16 %330, 1
  %337 = icmp eq i16 %336, 0
  %338 = getelementptr %struct.BezTriple, ptr %334, i64 -1, i32 8
  %339 = load i8, ptr %338, align 4, !tbaa !58
  %340 = and i8 %339, 1
  %341 = icmp eq i8 %340, 0
  br i1 %337, label %343, label %342

342:                                              ; preds = %329
  br i1 %341, label %974, label %354

343:                                              ; preds = %329
  br i1 %341, label %344, label %359

344:                                              ; preds = %343
  %345 = getelementptr %struct.BezTriple, ptr %334, i64 -1, i32 7
  %346 = load i8, ptr %345, align 1, !tbaa !56
  %347 = and i8 %346, 1
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %349, label %359

349:                                              ; preds = %344
  %350 = getelementptr %struct.BezTriple, ptr %334, i64 -1, i32 9
  %351 = load i8, ptr %350, align 1, !tbaa !59
  %352 = and i8 %351, 1
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %974, label %359

354:                                              ; preds = %342
  %355 = getelementptr %struct.BezTriple, ptr %334, i64 -2, i32 8
  %356 = load i8, ptr %355, align 4, !tbaa !58
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %974, label %374

359:                                              ; preds = %349, %344, %343
  %360 = getelementptr %struct.BezTriple, ptr %334, i64 -2, i32 8
  %361 = load i8, ptr %360, align 4, !tbaa !58
  %362 = and i8 %361, 1
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %359
  %365 = getelementptr %struct.BezTriple, ptr %334, i64 -2, i32 7
  %366 = load i8, ptr %365, align 1, !tbaa !56
  %367 = and i8 %366, 1
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %369, label %374

369:                                              ; preds = %364
  %370 = getelementptr %struct.BezTriple, ptr %334, i64 -2, i32 9
  %371 = load i8, ptr %370, align 1, !tbaa !59
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %974, label %374

374:                                              ; preds = %369, %364, %359, %354
  %375 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef 1, i32 noundef 1) #23
  %376 = getelementptr inbounds %struct.Nurb, ptr %375, i64 0, i32 18
  %377 = load ptr, ptr %376, align 8, !tbaa !53
  call void @ED_curve_beztcpy(ptr noundef nonnull %9, ptr noundef %377, ptr noundef %335, i32 noundef 1) #22
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %375) #23
  br label %974

378:                                              ; preds = %20
  %379 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 7
  %380 = load i32, ptr %379, align 4, !tbaa !60
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %974

382:                                              ; preds = %378
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %383 = call fastcc zeroext i8 @isNurbselV(ptr noundef nonnull %21, ptr noundef nonnull %4) #22
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %707, label %385

385:                                              ; preds = %382
  %386 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 17
  %387 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 6
  %388 = load i32, ptr %387, align 8, !tbaa !52
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %973

390:                                              ; preds = %385
  %391 = load ptr, ptr %386, align 8, !tbaa !61
  %392 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 13
  br label %393

393:                                              ; preds = %390, %617
  %394 = phi i32 [ %388, %390 ], [ %624, %617 ]
  %395 = phi i32 [ 0, %390 ], [ %621, %617 ]
  %396 = phi i32 [ -1, %390 ], [ %620, %617 ]
  %397 = phi i32 [ -1, %390 ], [ %619, %617 ]
  %398 = phi i32 [ -1, %390 ], [ %618, %617 ]
  %399 = phi i32 [ 0, %390 ], [ %622, %617 ]
  %400 = phi ptr [ %391, %390 ], [ %623, %617 ]
  %401 = getelementptr inbounds %struct.BPoint, ptr %400, i64 0, i32 3
  %402 = load i16, ptr %401, align 4, !tbaa !63
  %403 = and i16 %402, 1
  %404 = icmp eq i16 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %393
  %406 = icmp eq i32 %398, -1
  %407 = select i1 %406, i32 %399, i32 %398
  %408 = add nsw i32 %394, -1
  %409 = icmp slt i32 %399, %408
  br i1 %409, label %617, label %418

410:                                              ; preds = %393
  %411 = add nsw i32 %394, -1
  %412 = icmp slt i32 %399, %411
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct.BPoint, ptr %400, i64 1, i32 3
  %415 = load i16, ptr %414, align 4, !tbaa !63
  %416 = and i16 %415, 1
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %617, label %418

418:                                              ; preds = %410, %413, %405
  %419 = phi i32 [ %398, %413 ], [ %398, %410 ], [ %407, %405 ]
  %420 = phi i32 [ %397, %413 ], [ %397, %410 ], [ %399, %405 ]
  %421 = icmp sgt i32 %419, -1
  br i1 %421, label %422, label %617

422:                                              ; preds = %418
  %423 = icmp ult i32 %419, 2
  %424 = add nsw i32 %394, -1
  br i1 %423, label %425, label %490

425:                                              ; preds = %422
  %426 = icmp eq i32 %399, %424
  br i1 %426, label %427, label %438

427:                                              ; preds = %425
  %428 = icmp ne i32 %419, 1
  %429 = icmp eq i32 %420, %399
  %430 = select i1 %428, i1 true, i1 %429
  br i1 %430, label %434, label %431

431:                                              ; preds = %427
  %432 = load i16, ptr %392, align 4, !tbaa !69
  %433 = and i16 %432, -2
  store i16 %433, ptr %392, align 4, !tbaa !69
  br label %434

434:                                              ; preds = %431, %427
  %435 = add nuw nsw i32 %399, 1
  %436 = load i32, ptr %379, align 4, !tbaa !60
  %437 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %435, i32 noundef %436) #23
  br label %571

438:                                              ; preds = %425
  %439 = icmp eq i32 %419, 0
  br i1 %439, label %440, label %490

440:                                              ; preds = %438
  %441 = add nsw i32 %420, 1
  %442 = add nsw i32 %420, 2
  %443 = load ptr, ptr %386, align 8, !tbaa !61
  %444 = sext i32 %394 to i64
  %445 = getelementptr %struct.BPoint, ptr %443, i64 %444
  %446 = load i16, ptr %392, align 4, !tbaa !69
  %447 = and i16 %446, 1
  %448 = icmp eq i16 %447, 0
  br i1 %448, label %487, label %449

449:                                              ; preds = %440
  %450 = getelementptr %struct.BPoint, ptr %445, i64 -1, i32 3
  %451 = load i16, ptr %450, align 4, !tbaa !63
  %452 = and i16 %451, 1
  %453 = icmp eq i16 %452, 0
  br i1 %453, label %617, label %454

454:                                              ; preds = %449
  %455 = getelementptr %struct.BPoint, ptr %445, i64 -2, i32 3
  %456 = load i16, ptr %455, align 4, !tbaa !63
  %457 = and i16 %456, 1
  %458 = icmp eq i16 %457, 0
  br i1 %458, label %617, label %459

459:                                              ; preds = %454
  %460 = add nsw i32 %420, 3
  %461 = load i32, ptr %379, align 4, !tbaa !60
  %462 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %460, i32 noundef %461) #23
  %463 = load i32, ptr %379, align 4, !tbaa !60
  %464 = icmp sgt i32 %463, 0
  br i1 %464, label %465, label %484

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.Nurb, ptr %462, i64 0, i32 17
  %467 = getelementptr inbounds %struct.Nurb, ptr %462, i64 0, i32 6
  br label %468

468:                                              ; preds = %465, %468
  %469 = phi i32 [ 0, %465 ], [ %481, %468 ]
  %470 = load ptr, ptr %466, align 8, !tbaa !61
  %471 = load i32, ptr %467, align 8, !tbaa !52
  %472 = mul nsw i32 %471, %469
  %473 = sext i32 %472 to i64
  %474 = getelementptr %struct.BPoint, ptr %470, i64 %473
  %475 = getelementptr %struct.BPoint, ptr %474, i64 1
  %476 = load ptr, ptr %386, align 8, !tbaa !61
  %477 = load i32, ptr %387, align 8, !tbaa !52
  %478 = mul nsw i32 %477, %469
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.BPoint, ptr %476, i64 %479
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %475, ptr noundef %480, i32 noundef %442) #22
  %481 = add nuw nsw i32 %469, 1
  %482 = load i32, ptr %379, align 4, !tbaa !60
  %483 = icmp slt i32 %481, %482
  br i1 %483, label %468, label %484, !llvm.loop !440

484:                                              ; preds = %468, %459
  %485 = load i32, ptr %387, align 8, !tbaa !52
  %486 = add nsw i32 %485, -1
  br label %571

487:                                              ; preds = %440
  %488 = load i32, ptr %379, align 4, !tbaa !60
  %489 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %442, i32 noundef %488) #23
  br label %571

490:                                              ; preds = %422, %438
  %491 = icmp eq i32 %420, %424
  %492 = add nsw i32 %419, -1
  br i1 %491, label %493, label %565

493:                                              ; preds = %490
  %494 = sub i32 %394, %419
  %495 = add nsw i32 %494, 1
  %496 = load ptr, ptr %386, align 8, !tbaa !61
  %497 = load i16, ptr %392, align 4, !tbaa !69
  %498 = and i16 %497, 1
  %499 = icmp eq i16 %498, 0
  br i1 %499, label %535, label %500

500:                                              ; preds = %493
  %501 = getelementptr inbounds %struct.BPoint, ptr %496, i64 0, i32 3
  %502 = load i16, ptr %501, align 4, !tbaa !63
  %503 = and i16 %502, 1
  %504 = icmp eq i16 %503, 0
  br i1 %504, label %535, label %505

505:                                              ; preds = %500
  %506 = getelementptr inbounds %struct.BPoint, ptr %496, i64 1, i32 3
  %507 = load i16, ptr %506, align 4, !tbaa !63
  %508 = and i16 %507, 1
  %509 = icmp eq i16 %508, 0
  br i1 %509, label %535, label %510

510:                                              ; preds = %505
  %511 = add nsw i32 %494, 2
  %512 = load i32, ptr %379, align 4, !tbaa !60
  %513 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %511, i32 noundef %512) #23
  %514 = load i32, ptr %379, align 4, !tbaa !60
  %515 = icmp sgt i32 %514, 0
  br i1 %515, label %516, label %571

516:                                              ; preds = %510
  %517 = getelementptr inbounds %struct.Nurb, ptr %513, i64 0, i32 17
  %518 = getelementptr inbounds %struct.Nurb, ptr %513, i64 0, i32 6
  br label %519

519:                                              ; preds = %516, %519
  %520 = phi i32 [ 0, %516 ], [ %532, %519 ]
  %521 = load ptr, ptr %517, align 8, !tbaa !61
  %522 = load i32, ptr %518, align 8, !tbaa !52
  %523 = mul nsw i32 %522, %520
  %524 = add nsw i32 %523, %495
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.BPoint, ptr %521, i64 %525
  %527 = load ptr, ptr %386, align 8, !tbaa !61
  %528 = load i32, ptr %387, align 8, !tbaa !52
  %529 = mul nsw i32 %528, %520
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.BPoint, ptr %527, i64 %530
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %526, ptr noundef %531, i32 noundef 1) #22
  %532 = add nuw nsw i32 %520, 1
  %533 = load i32, ptr %379, align 4, !tbaa !60
  %534 = icmp slt i32 %532, %533
  br i1 %534, label %519, label %580, !llvm.loop !441

535:                                              ; preds = %505, %500, %493
  %536 = icmp eq i32 %395, 0
  br i1 %536, label %562, label %537

537:                                              ; preds = %535
  %538 = add nsw i32 %495, %395
  %539 = load i32, ptr %379, align 4, !tbaa !60
  %540 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %538, i32 noundef %539) #23
  %541 = load i32, ptr %379, align 4, !tbaa !60
  %542 = icmp sgt i32 %541, 0
  br i1 %542, label %543, label %571

543:                                              ; preds = %537
  %544 = getelementptr inbounds %struct.Nurb, ptr %540, i64 0, i32 17
  %545 = getelementptr inbounds %struct.Nurb, ptr %540, i64 0, i32 6
  br label %546

546:                                              ; preds = %543, %546
  %547 = phi i32 [ 0, %543 ], [ %559, %546 ]
  %548 = load ptr, ptr %544, align 8, !tbaa !61
  %549 = load i32, ptr %545, align 8, !tbaa !52
  %550 = mul nsw i32 %549, %547
  %551 = add nsw i32 %550, %495
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.BPoint, ptr %548, i64 %552
  %554 = load ptr, ptr %386, align 8, !tbaa !61
  %555 = load i32, ptr %387, align 8, !tbaa !52
  %556 = mul nsw i32 %555, %547
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.BPoint, ptr %554, i64 %557
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %553, ptr noundef %558, i32 noundef %395) #22
  %559 = add nuw nsw i32 %547, 1
  %560 = load i32, ptr %379, align 4, !tbaa !60
  %561 = icmp slt i32 %559, %560
  br i1 %561, label %546, label %580, !llvm.loop !442

562:                                              ; preds = %535
  %563 = load i32, ptr %379, align 4, !tbaa !60
  %564 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %495, i32 noundef %563) #23
  br label %571

565:                                              ; preds = %490
  %566 = add nsw i32 %420, 1
  %567 = sub nsw i32 %566, %492
  %568 = add nsw i32 %567, 1
  %569 = load i32, ptr %379, align 4, !tbaa !60
  %570 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %568, i32 noundef %569) #23
  br label %571

571:                                              ; preds = %510, %537, %487, %484, %562, %565, %434
  %572 = phi ptr [ %437, %434 ], [ %462, %484 ], [ %489, %487 ], [ %564, %562 ], [ %570, %565 ], [ %540, %537 ], [ %513, %510 ]
  %573 = phi i32 [ 0, %434 ], [ %486, %484 ], [ 0, %487 ], [ %492, %562 ], [ %492, %565 ], [ %492, %537 ], [ %492, %510 ]
  %574 = phi i32 [ %399, %434 ], [ %441, %484 ], [ %441, %487 ], [ %424, %562 ], [ %566, %565 ], [ %424, %537 ], [ %424, %510 ]
  %575 = phi i32 [ %435, %434 ], [ 1, %484 ], [ %442, %487 ], [ %495, %562 ], [ %568, %565 ], [ %495, %537 ], [ %495, %510 ]
  %576 = phi i32 [ %395, %434 ], [ %395, %484 ], [ %395, %487 ], [ 0, %562 ], [ %395, %565 ], [ %395, %537 ], [ %395, %510 ]
  %577 = icmp eq ptr %572, null
  br i1 %577, label %617, label %578

578:                                              ; preds = %571
  %579 = load i32, ptr %379, align 4, !tbaa !60
  br label %580

580:                                              ; preds = %519, %546, %578
  %581 = phi i32 [ %579, %578 ], [ %560, %546 ], [ %533, %519 ]
  %582 = phi i32 [ %576, %578 ], [ %395, %546 ], [ %395, %519 ]
  %583 = phi i32 [ %575, %578 ], [ %495, %546 ], [ %495, %519 ]
  %584 = phi i32 [ %574, %578 ], [ %424, %546 ], [ %424, %519 ]
  %585 = phi i32 [ %573, %578 ], [ %492, %546 ], [ %492, %519 ]
  %586 = phi ptr [ %572, %578 ], [ %540, %546 ], [ %513, %519 ]
  %587 = icmp sgt i32 %581, 0
  br i1 %587, label %588, label %607

588:                                              ; preds = %580
  %589 = getelementptr inbounds %struct.Nurb, ptr %586, i64 0, i32 17
  %590 = getelementptr inbounds %struct.Nurb, ptr %586, i64 0, i32 6
  br label %591

591:                                              ; preds = %588, %591
  %592 = phi i32 [ 0, %588 ], [ %604, %591 ]
  %593 = load ptr, ptr %589, align 8, !tbaa !61
  %594 = load i32, ptr %590, align 8, !tbaa !52
  %595 = mul nsw i32 %594, %592
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.BPoint, ptr %593, i64 %596
  %598 = load ptr, ptr %386, align 8, !tbaa !61
  %599 = load i32, ptr %387, align 8, !tbaa !52
  %600 = mul nsw i32 %599, %592
  %601 = add nsw i32 %600, %585
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.BPoint, ptr %598, i64 %602
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %597, ptr noundef %603, i32 noundef %583) #22
  %604 = add nuw nsw i32 %592, 1
  %605 = load i32, ptr %379, align 4, !tbaa !60
  %606 = icmp slt i32 %604, %605
  br i1 %606, label %591, label %607, !llvm.loop !443

607:                                              ; preds = %591, %580
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %586) #23
  %608 = icmp eq i32 %585, 0
  br i1 %608, label %609, label %613

609:                                              ; preds = %607
  %610 = load i32, ptr %387, align 8, !tbaa !52
  %611 = add nsw i32 %610, -1
  %612 = icmp eq i32 %584, %611
  br i1 %612, label %617, label %613

613:                                              ; preds = %609, %607
  %614 = getelementptr inbounds %struct.Nurb, ptr %586, i64 0, i32 13
  %615 = load i16, ptr %614, align 4, !tbaa !69
  %616 = and i16 %615, -2
  store i16 %616, ptr %614, align 4, !tbaa !69
  br label %617

617:                                              ; preds = %454, %449, %571, %613, %609, %418, %413, %405
  %618 = phi i32 [ %419, %418 ], [ %398, %413 ], [ %407, %405 ], [ -1, %609 ], [ -1, %613 ], [ -1, %571 ], [ -1, %449 ], [ -1, %454 ]
  %619 = phi i32 [ %420, %418 ], [ %397, %413 ], [ %399, %405 ], [ -1, %609 ], [ -1, %613 ], [ -1, %571 ], [ -1, %449 ], [ -1, %454 ]
  %620 = phi i32 [ %396, %418 ], [ %396, %413 ], [ %396, %405 ], [ %583, %609 ], [ %583, %613 ], [ %575, %571 ], [ %442, %449 ], [ %442, %454 ]
  %621 = phi i32 [ %395, %418 ], [ %395, %413 ], [ %395, %405 ], [ %582, %609 ], [ %582, %613 ], [ %576, %571 ], [ %442, %449 ], [ %442, %454 ]
  %622 = add nuw nsw i32 %399, 1
  %623 = getelementptr inbounds %struct.BPoint, ptr %400, i64 1
  %624 = load i32, ptr %387, align 8, !tbaa !52
  %625 = icmp slt i32 %622, %624
  br i1 %625, label %393, label %626, !llvm.loop !444

626:                                              ; preds = %617
  %627 = icmp ne i32 %620, -1
  %628 = select i1 %13, i1 %627, i1 false
  %629 = icmp sgt i32 %624, 2
  %630 = and i1 %628, %629
  br i1 %630, label %631, label %973

631:                                              ; preds = %626
  %632 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 13
  %633 = load i16, ptr %632, align 4, !tbaa !69
  %634 = and i16 %633, 1
  %635 = icmp eq i16 %634, 0
  br i1 %635, label %636, label %973

636:                                              ; preds = %631
  %637 = load ptr, ptr %386, align 8, !tbaa !61
  %638 = getelementptr inbounds %struct.BPoint, ptr %637, i64 0, i32 3
  %639 = load i16, ptr %638, align 4, !tbaa !63
  %640 = and i16 %639, 1
  %641 = icmp eq i16 %640, 0
  br i1 %641, label %671, label %642

642:                                              ; preds = %636
  %643 = getelementptr inbounds %struct.BPoint, ptr %637, i64 1, i32 3
  %644 = load i16, ptr %643, align 4, !tbaa !63
  %645 = and i16 %644, 1
  %646 = icmp eq i16 %645, 0
  br i1 %646, label %671, label %647

647:                                              ; preds = %642
  %648 = load i32, ptr %379, align 4, !tbaa !60
  %649 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef 1, i32 noundef %648) #23
  %650 = load i32, ptr %379, align 4, !tbaa !60
  %651 = icmp sgt i32 %650, 0
  br i1 %651, label %652, label %668

652:                                              ; preds = %647
  %653 = getelementptr inbounds %struct.Nurb, ptr %649, i64 0, i32 17
  br label %654

654:                                              ; preds = %652, %654
  %655 = phi i64 [ 0, %652 ], [ %664, %654 ]
  %656 = load ptr, ptr %653, align 8, !tbaa !61
  %657 = getelementptr inbounds %struct.BPoint, ptr %656, i64 %655
  %658 = load ptr, ptr %386, align 8, !tbaa !61
  %659 = load i32, ptr %387, align 8, !tbaa !52
  %660 = trunc i64 %655 to i32
  %661 = mul nsw i32 %659, %660
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.BPoint, ptr %658, i64 %662
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %657, ptr noundef %663, i32 noundef 1) #22
  %664 = add nuw nsw i64 %655, 1
  %665 = load i32, ptr %379, align 4, !tbaa !60
  %666 = sext i32 %665 to i64
  %667 = icmp slt i64 %664, %666
  br i1 %667, label %654, label %668, !llvm.loop !445

668:                                              ; preds = %654, %647
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %649) #23
  %669 = load ptr, ptr %386, align 8, !tbaa !61
  %670 = load i32, ptr %387, align 8, !tbaa !52
  br label %671

671:                                              ; preds = %668, %642, %636
  %672 = phi i32 [ %670, %668 ], [ %624, %642 ], [ %624, %636 ]
  %673 = phi ptr [ %669, %668 ], [ %637, %642 ], [ %637, %636 ]
  %674 = sext i32 %672 to i64
  %675 = getelementptr %struct.BPoint, ptr %673, i64 %674
  %676 = getelementptr %struct.BPoint, ptr %675, i64 -1, i32 3
  %677 = load i16, ptr %676, align 4, !tbaa !63
  %678 = and i16 %677, 1
  %679 = icmp eq i16 %678, 0
  br i1 %679, label %973, label %680

680:                                              ; preds = %671
  %681 = getelementptr %struct.BPoint, ptr %675, i64 -2, i32 3
  %682 = load i16, ptr %681, align 4, !tbaa !63
  %683 = and i16 %682, 1
  %684 = icmp eq i16 %683, 0
  br i1 %684, label %973, label %685

685:                                              ; preds = %680
  %686 = load i32, ptr %379, align 4, !tbaa !60
  %687 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef 1, i32 noundef %686) #23
  %688 = load i32, ptr %379, align 4, !tbaa !60
  %689 = icmp sgt i32 %688, 0
  br i1 %689, label %690, label %971

690:                                              ; preds = %685
  %691 = getelementptr inbounds %struct.Nurb, ptr %687, i64 0, i32 17
  br label %692

692:                                              ; preds = %690, %692
  %693 = phi i64 [ 0, %690 ], [ %698, %692 ]
  %694 = load ptr, ptr %691, align 8, !tbaa !61
  %695 = getelementptr inbounds %struct.BPoint, ptr %694, i64 %693
  %696 = load ptr, ptr %386, align 8, !tbaa !61
  %697 = load i32, ptr %387, align 8, !tbaa !52
  %698 = add nuw nsw i64 %693, 1
  %699 = trunc i64 %698 to i32
  %700 = mul i32 %697, %699
  %701 = sext i32 %700 to i64
  %702 = getelementptr %struct.BPoint, ptr %696, i64 %701
  %703 = getelementptr %struct.BPoint, ptr %702, i64 -1
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %695, ptr noundef %703, i32 noundef 1) #22
  %704 = load i32, ptr %379, align 4, !tbaa !60
  %705 = sext i32 %704 to i64
  %706 = icmp slt i64 %698, %705
  br i1 %706, label %692, label %971, !llvm.loop !446

707:                                              ; preds = %382
  %708 = call fastcc zeroext i8 @isNurbselU(ptr noundef nonnull %21, ptr noundef nonnull %5) #22
  %709 = icmp eq i8 %708, 0
  br i1 %709, label %960, label %710

710:                                              ; preds = %707
  %711 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 17
  %712 = load i32, ptr %379, align 4, !tbaa !60
  %713 = icmp sgt i32 %712, 0
  br i1 %713, label %714, label %973

714:                                              ; preds = %710
  %715 = load ptr, ptr %711, align 8, !tbaa !61
  %716 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 6
  %717 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 14
  br label %718

718:                                              ; preds = %714, %886
  %719 = phi i32 [ %712, %714 ], [ %895, %886 ]
  %720 = phi i32 [ 0, %714 ], [ %890, %886 ]
  %721 = phi i32 [ -1, %714 ], [ %889, %886 ]
  %722 = phi i32 [ -1, %714 ], [ %888, %886 ]
  %723 = phi i32 [ -1, %714 ], [ %887, %886 ]
  %724 = phi i32 [ 0, %714 ], [ %891, %886 ]
  %725 = phi ptr [ %715, %714 ], [ %894, %886 ]
  %726 = getelementptr inbounds %struct.BPoint, ptr %725, i64 0, i32 3
  %727 = load i16, ptr %726, align 4, !tbaa !63
  %728 = and i16 %727, 1
  %729 = icmp eq i16 %728, 0
  br i1 %729, label %730, label %735

730:                                              ; preds = %718
  %731 = icmp eq i32 %723, -1
  %732 = select i1 %731, i32 %724, i32 %723
  %733 = add nsw i32 %719, -1
  %734 = icmp slt i32 %724, %733
  br i1 %734, label %886, label %745

735:                                              ; preds = %718
  %736 = add nsw i32 %719, -1
  %737 = icmp slt i32 %724, %736
  br i1 %737, label %738, label %745

738:                                              ; preds = %735
  %739 = load i32, ptr %716, align 8, !tbaa !52
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.BPoint, ptr %725, i64 %740, i32 3
  %742 = load i16, ptr %741, align 4, !tbaa !63
  %743 = and i16 %742, 1
  %744 = icmp eq i16 %743, 0
  br i1 %744, label %886, label %745

745:                                              ; preds = %735, %738, %730
  %746 = phi i32 [ %723, %738 ], [ %723, %735 ], [ %732, %730 ]
  %747 = phi i32 [ %722, %738 ], [ %722, %735 ], [ %724, %730 ]
  %748 = icmp sgt i32 %746, -1
  br i1 %748, label %749, label %886

749:                                              ; preds = %745
  %750 = icmp ult i32 %746, 2
  %751 = add nsw i32 %719, -1
  br i1 %750, label %752, label %804

752:                                              ; preds = %749
  %753 = icmp eq i32 %724, %751
  br i1 %753, label %754, label %765

754:                                              ; preds = %752
  %755 = icmp ne i32 %746, 1
  %756 = icmp eq i32 %747, %724
  %757 = select i1 %755, i1 true, i1 %756
  br i1 %757, label %761, label %758

758:                                              ; preds = %754
  %759 = load i16, ptr %717, align 2, !tbaa !74
  %760 = and i16 %759, -2
  store i16 %760, ptr %717, align 2, !tbaa !74
  br label %761

761:                                              ; preds = %758, %754
  %762 = add nuw nsw i32 %724, 1
  %763 = load i32, ptr %716, align 8, !tbaa !52
  %764 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %763, i32 noundef %762) #23
  br label %856

765:                                              ; preds = %752
  %766 = icmp eq i32 %746, 0
  br i1 %766, label %767, label %804

767:                                              ; preds = %765
  %768 = add nsw i32 %747, 1
  %769 = add nsw i32 %747, 2
  %770 = load ptr, ptr %711, align 8, !tbaa !61
  %771 = load i32, ptr %716, align 8, !tbaa !52
  %772 = add i32 %719, -2
  %773 = mul i32 %771, %772
  %774 = sext i32 %773 to i64
  %775 = load i16, ptr %717, align 2, !tbaa !74
  %776 = and i16 %775, 1
  %777 = icmp eq i16 %776, 0
  br i1 %777, label %802, label %778

778:                                              ; preds = %767
  %779 = mul i32 %771, %751
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds %struct.BPoint, ptr %770, i64 %780, i32 3
  %782 = load i16, ptr %781, align 4, !tbaa !63
  %783 = and i16 %782, 1
  %784 = icmp eq i16 %783, 0
  br i1 %784, label %886, label %785

785:                                              ; preds = %778
  %786 = getelementptr inbounds %struct.BPoint, ptr %770, i64 %774, i32 3
  %787 = load i16, ptr %786, align 4, !tbaa !63
  %788 = and i16 %787, 1
  %789 = icmp eq i16 %788, 0
  br i1 %789, label %886, label %790

790:                                              ; preds = %785
  %791 = add nsw i32 %747, 3
  %792 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %771, i32 noundef %791) #23
  %793 = getelementptr inbounds %struct.Nurb, ptr %792, i64 0, i32 17
  %794 = load ptr, ptr %793, align 8, !tbaa !61
  %795 = load i32, ptr %716, align 8, !tbaa !52
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds %struct.BPoint, ptr %794, i64 %796
  %798 = load ptr, ptr %711, align 8, !tbaa !61
  %799 = mul nsw i32 %795, %769
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %797, ptr noundef %798, i32 noundef %799) #22
  %800 = load i32, ptr %379, align 4, !tbaa !60
  %801 = add nsw i32 %800, -1
  br label %863

802:                                              ; preds = %767
  %803 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %771, i32 noundef %769) #23
  br label %856

804:                                              ; preds = %749, %765
  %805 = icmp eq i32 %747, %751
  %806 = add nsw i32 %746, -1
  %807 = load i32, ptr %716, align 8, !tbaa !52
  br i1 %805, label %808, label %851

808:                                              ; preds = %804
  %809 = sub i32 %719, %746
  %810 = add nsw i32 %809, 1
  %811 = load ptr, ptr %711, align 8, !tbaa !61
  %812 = sext i32 %807 to i64
  %813 = load i16, ptr %717, align 2, !tbaa !74
  %814 = and i16 %813, 1
  %815 = icmp eq i16 %814, 0
  br i1 %815, label %836, label %816

816:                                              ; preds = %808
  %817 = getelementptr inbounds %struct.BPoint, ptr %811, i64 0, i32 3
  %818 = load i16, ptr %817, align 4, !tbaa !63
  %819 = and i16 %818, 1
  %820 = icmp eq i16 %819, 0
  br i1 %820, label %836, label %821

821:                                              ; preds = %816
  %822 = getelementptr inbounds %struct.BPoint, ptr %811, i64 %812, i32 3
  %823 = load i16, ptr %822, align 4, !tbaa !63
  %824 = and i16 %823, 1
  %825 = icmp eq i16 %824, 0
  br i1 %825, label %836, label %826

826:                                              ; preds = %821
  %827 = add nsw i32 %809, 2
  %828 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %807, i32 noundef %827) #23
  %829 = getelementptr inbounds %struct.Nurb, ptr %828, i64 0, i32 17
  %830 = load ptr, ptr %829, align 8, !tbaa !61
  %831 = load i32, ptr %716, align 8, !tbaa !52
  %832 = mul nsw i32 %831, %810
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds %struct.BPoint, ptr %830, i64 %833
  %835 = load ptr, ptr %711, align 8, !tbaa !61
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %834, ptr noundef %835, i32 noundef %831) #22
  br label %863

836:                                              ; preds = %821, %816, %808
  %837 = icmp eq i32 %720, 0
  br i1 %837, label %849, label %838

838:                                              ; preds = %836
  %839 = add nsw i32 %810, %720
  %840 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %807, i32 noundef %839) #23
  %841 = getelementptr inbounds %struct.Nurb, ptr %840, i64 0, i32 17
  %842 = load ptr, ptr %841, align 8, !tbaa !61
  %843 = load i32, ptr %716, align 8, !tbaa !52
  %844 = mul nsw i32 %843, %810
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds %struct.BPoint, ptr %842, i64 %845
  %847 = load ptr, ptr %711, align 8, !tbaa !61
  %848 = mul nsw i32 %843, %720
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %846, ptr noundef %847, i32 noundef %848) #22
  br label %863

849:                                              ; preds = %836
  %850 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %807, i32 noundef %810) #23
  br label %856

851:                                              ; preds = %804
  %852 = add nsw i32 %747, 1
  %853 = sub nsw i32 %852, %806
  %854 = add nsw i32 %853, 1
  %855 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %807, i32 noundef %854) #23
  br label %856

856:                                              ; preds = %802, %849, %851, %761
  %857 = phi ptr [ %764, %761 ], [ %803, %802 ], [ %850, %849 ], [ %855, %851 ]
  %858 = phi i32 [ 0, %761 ], [ 0, %802 ], [ %806, %849 ], [ %806, %851 ]
  %859 = phi i32 [ %724, %761 ], [ %768, %802 ], [ %751, %849 ], [ %852, %851 ]
  %860 = phi i32 [ %762, %761 ], [ %769, %802 ], [ %810, %849 ], [ %854, %851 ]
  %861 = phi i32 [ %720, %761 ], [ %720, %802 ], [ 0, %849 ], [ %720, %851 ]
  %862 = icmp eq ptr %857, null
  br i1 %862, label %886, label %863

863:                                              ; preds = %838, %826, %790, %856
  %864 = phi i32 [ %861, %856 ], [ 0, %838 ], [ %720, %826 ], [ %720, %790 ]
  %865 = phi i32 [ %860, %856 ], [ %810, %838 ], [ %810, %826 ], [ 1, %790 ]
  %866 = phi i32 [ %859, %856 ], [ %751, %838 ], [ %751, %826 ], [ %768, %790 ]
  %867 = phi i32 [ %858, %856 ], [ %806, %838 ], [ %806, %826 ], [ %801, %790 ]
  %868 = phi ptr [ %857, %856 ], [ %840, %838 ], [ %828, %826 ], [ %792, %790 ]
  %869 = getelementptr inbounds %struct.Nurb, ptr %868, i64 0, i32 17
  %870 = load ptr, ptr %869, align 8, !tbaa !61
  %871 = load ptr, ptr %711, align 8, !tbaa !61
  %872 = load i32, ptr %716, align 8, !tbaa !52
  %873 = mul nsw i32 %872, %867
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds %struct.BPoint, ptr %871, i64 %874
  %876 = mul nsw i32 %872, %865
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %870, ptr noundef %875, i32 noundef %876) #22
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %868) #23
  %877 = icmp eq i32 %867, 0
  br i1 %877, label %878, label %882

878:                                              ; preds = %863
  %879 = load i32, ptr %379, align 4, !tbaa !60
  %880 = add nsw i32 %879, -1
  %881 = icmp eq i32 %866, %880
  br i1 %881, label %886, label %882

882:                                              ; preds = %878, %863
  %883 = getelementptr inbounds %struct.Nurb, ptr %868, i64 0, i32 14
  %884 = load i16, ptr %883, align 2, !tbaa !74
  %885 = and i16 %884, -2
  store i16 %885, ptr %883, align 2, !tbaa !74
  br label %886

886:                                              ; preds = %785, %778, %856, %882, %878, %745, %738, %730
  %887 = phi i32 [ %746, %745 ], [ %723, %738 ], [ %732, %730 ], [ -1, %878 ], [ -1, %882 ], [ -1, %856 ], [ -1, %778 ], [ -1, %785 ]
  %888 = phi i32 [ %747, %745 ], [ %722, %738 ], [ %724, %730 ], [ -1, %878 ], [ -1, %882 ], [ -1, %856 ], [ -1, %778 ], [ -1, %785 ]
  %889 = phi i32 [ %721, %745 ], [ %721, %738 ], [ %721, %730 ], [ %865, %878 ], [ %865, %882 ], [ %860, %856 ], [ %769, %778 ], [ %769, %785 ]
  %890 = phi i32 [ %720, %745 ], [ %720, %738 ], [ %720, %730 ], [ %864, %878 ], [ %864, %882 ], [ %861, %856 ], [ %769, %778 ], [ %769, %785 ]
  %891 = add nuw nsw i32 %724, 1
  %892 = load i32, ptr %716, align 8, !tbaa !52
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds %struct.BPoint, ptr %725, i64 %893
  %895 = load i32, ptr %379, align 4, !tbaa !60
  %896 = icmp slt i32 %891, %895
  br i1 %896, label %718, label %897, !llvm.loop !447

897:                                              ; preds = %886
  %898 = icmp ne i32 %889, -1
  %899 = select i1 %13, i1 %898, i1 false
  %900 = icmp sgt i32 %895, 2
  %901 = and i1 %899, %900
  br i1 %901, label %902, label %973

902:                                              ; preds = %897
  %903 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 14
  %904 = load i16, ptr %903, align 2, !tbaa !74
  %905 = and i16 %904, 1
  %906 = icmp eq i16 %905, 0
  br i1 %906, label %907, label %973

907:                                              ; preds = %902
  %908 = load ptr, ptr %711, align 8, !tbaa !61
  %909 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 6
  %910 = load i32, ptr %909, align 8, !tbaa !52
  %911 = getelementptr inbounds %struct.BPoint, ptr %908, i64 0, i32 3
  %912 = load i16, ptr %911, align 4, !tbaa !63
  %913 = and i16 %912, 1
  %914 = icmp eq i16 %913, 0
  br i1 %914, label %930, label %915

915:                                              ; preds = %907
  %916 = sext i32 %910 to i64
  %917 = getelementptr inbounds %struct.BPoint, ptr %908, i64 %916, i32 3
  %918 = load i16, ptr %917, align 4, !tbaa !63
  %919 = and i16 %918, 1
  %920 = icmp eq i16 %919, 0
  br i1 %920, label %930, label %921

921:                                              ; preds = %915
  %922 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %910, i32 noundef 1) #23
  %923 = getelementptr inbounds %struct.Nurb, ptr %922, i64 0, i32 17
  %924 = load ptr, ptr %923, align 8, !tbaa !61
  %925 = load ptr, ptr %711, align 8, !tbaa !61
  %926 = load i32, ptr %909, align 8, !tbaa !52
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %924, ptr noundef %925, i32 noundef %926) #22
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %922) #23
  %927 = load ptr, ptr %711, align 8, !tbaa !61
  %928 = load i32, ptr %909, align 8, !tbaa !52
  %929 = load i32, ptr %379, align 4, !tbaa !60
  br label %930

930:                                              ; preds = %921, %915, %907
  %931 = phi i32 [ %929, %921 ], [ %895, %915 ], [ %895, %907 ]
  %932 = phi i32 [ %928, %921 ], [ %910, %915 ], [ %910, %907 ]
  %933 = phi ptr [ %927, %921 ], [ %908, %915 ], [ %908, %907 ]
  %934 = add i32 %931, -1
  %935 = mul i32 %934, %932
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds %struct.BPoint, ptr %933, i64 %936, i32 3
  %938 = load i16, ptr %937, align 4, !tbaa !63
  %939 = and i16 %938, 1
  %940 = icmp eq i16 %939, 0
  br i1 %940, label %973, label %941

941:                                              ; preds = %930
  %942 = add i32 %931, -2
  %943 = mul i32 %942, %932
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds %struct.BPoint, ptr %933, i64 %944, i32 3
  %946 = load i16, ptr %945, align 4, !tbaa !63
  %947 = and i16 %946, 1
  %948 = icmp eq i16 %947, 0
  br i1 %948, label %973, label %949

949:                                              ; preds = %941
  %950 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %932, i32 noundef 1) #23
  %951 = getelementptr inbounds %struct.Nurb, ptr %950, i64 0, i32 17
  %952 = load ptr, ptr %951, align 8, !tbaa !61
  %953 = load ptr, ptr %711, align 8, !tbaa !61
  %954 = load i32, ptr %909, align 8, !tbaa !52
  %955 = load i32, ptr %379, align 4, !tbaa !60
  %956 = add i32 %955, -1
  %957 = mul i32 %956, %954
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds %struct.BPoint, ptr %953, i64 %958
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %952, ptr noundef %959, i32 noundef %954) #22
  br label %971

960:                                              ; preds = %707
  %961 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 6
  %962 = load i32, ptr %961, align 8, !tbaa !52
  %963 = call ptr @BKE_nurb_copy(ptr noundef nonnull %21, i32 noundef %962, i32 noundef %380) #23
  %964 = getelementptr inbounds %struct.Nurb, ptr %963, i64 0, i32 17
  %965 = load ptr, ptr %964, align 8, !tbaa !61
  %966 = getelementptr inbounds %struct.Nurb, ptr %21, i64 0, i32 17
  %967 = load ptr, ptr %966, align 8, !tbaa !61
  %968 = load i32, ptr %961, align 8, !tbaa !52
  %969 = load i32, ptr %379, align 4, !tbaa !60
  %970 = mul nsw i32 %969, %968
  call void @ED_curve_bpcpy(ptr noundef nonnull %9, ptr noundef %965, ptr noundef %967, i32 noundef %970) #22
  br label %971

971:                                              ; preds = %692, %685, %949, %960
  %972 = phi ptr [ %963, %960 ], [ %950, %949 ], [ %687, %685 ], [ %687, %692 ]
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %972) #23
  br label %973

973:                                              ; preds = %971, %710, %385, %930, %941, %902, %897, %626, %631, %680, %671
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  br label %974

974:                                              ; preds = %25, %342, %349, %354, %369, %374, %276, %271, %973, %378
  %975 = load ptr, ptr %21, align 8, !tbaa !65
  %976 = icmp eq ptr %975, null
  br i1 %976, label %15, label %20, !llvm.loop !448

977:                                              ; preds = %18, %1028
  %978 = phi ptr [ %16, %18 ], [ %1029, %1028 ]
  %979 = getelementptr inbounds %struct.Nurb, ptr %978, i64 0, i32 2
  %980 = load i16, ptr %979, align 8, !tbaa !50
  %981 = icmp eq i16 %980, 1
  br i1 %981, label %982, label %999

982:                                              ; preds = %977
  br i1 %19, label %998, label %983

983:                                              ; preds = %982
  %984 = getelementptr inbounds %struct.Nurb, ptr %978, i64 0, i32 6
  %985 = load i32, ptr %984, align 8, !tbaa !52
  %986 = icmp sgt i32 %985, 0
  br i1 %986, label %987, label %998

987:                                              ; preds = %983
  %988 = getelementptr inbounds %struct.Nurb, ptr %978, i64 0, i32 18
  %989 = load ptr, ptr %988, align 8, !tbaa !53
  br label %990

990:                                              ; preds = %987, %990
  %991 = phi i32 [ %994, %990 ], [ 0, %987 ]
  %992 = phi ptr [ %995, %990 ], [ %989, %987 ]
  %993 = call fastcc zeroext i8 @select_beztriple(ptr noundef %992, i8 noundef zeroext 0, i32 noundef 1) #22
  %994 = add nuw nsw i32 %991, 1
  %995 = getelementptr inbounds %struct.BezTriple, ptr %992, i64 1
  %996 = load i32, ptr %984, align 8, !tbaa !52
  %997 = icmp slt i32 %994, %996
  br i1 %997, label %990, label %998, !llvm.loop !449

998:                                              ; preds = %990, %983, %982
  call void @BKE_nurb_handles_calc(ptr noundef nonnull %978) #23
  br label %1028

999:                                              ; preds = %977
  br i1 %19, label %1020, label %1000

1000:                                             ; preds = %999
  %1001 = getelementptr inbounds %struct.Nurb, ptr %978, i64 0, i32 6
  %1002 = getelementptr inbounds %struct.Nurb, ptr %978, i64 0, i32 7
  %1003 = load i32, ptr %1001, align 8, !tbaa !52
  %1004 = load i32, ptr %1002, align 4, !tbaa !60
  %1005 = mul nsw i32 %1004, %1003
  %1006 = icmp sgt i32 %1005, 0
  br i1 %1006, label %1007, label %1020

1007:                                             ; preds = %1000
  %1008 = getelementptr inbounds %struct.Nurb, ptr %978, i64 0, i32 17
  %1009 = load ptr, ptr %1008, align 8, !tbaa !61
  br label %1010

1010:                                             ; preds = %1007, %1010
  %1011 = phi i32 [ %1014, %1010 ], [ 0, %1007 ]
  %1012 = phi ptr [ %1015, %1010 ], [ %1009, %1007 ]
  %1013 = call fastcc zeroext i8 @select_bpoint(ptr noundef %1012, i8 noundef zeroext 0, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  %1014 = add nuw nsw i32 %1011, 1
  %1015 = getelementptr inbounds %struct.BPoint, ptr %1012, i64 1
  %1016 = load i32, ptr %1001, align 8, !tbaa !52
  %1017 = load i32, ptr %1002, align 4, !tbaa !60
  %1018 = mul nsw i32 %1017, %1016
  %1019 = icmp slt i32 %1014, %1018
  br i1 %1019, label %1010, label %1020, !llvm.loop !450

1020:                                             ; preds = %1010, %1000, %999
  %1021 = getelementptr inbounds %struct.Nurb, ptr %978, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1021, i8 0, i64 16, i1 false)
  %1022 = call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %978) #23
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %978) #23
  %1023 = getelementptr inbounds %struct.Nurb, ptr %978, i64 0, i32 7
  %1024 = load i32, ptr %1023, align 4, !tbaa !60
  %1025 = icmp sgt i32 %1024, 1
  br i1 %1025, label %1026, label %1028

1026:                                             ; preds = %1020
  %1027 = call zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef nonnull %978) #23
  call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %978) #23
  br label %1028

1028:                                             ; preds = %998, %1026, %1020
  %1029 = load ptr, ptr %978, align 8, !tbaa !65
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1031, label %977, !llvm.loop !451

1031:                                             ; preds = %1028, %2, %15
  call fastcc void @keyIndex_delNurbList(ptr noundef nonnull %9, ptr noundef nonnull %9) #22
  call void @BKE_nurbList_free(ptr noundef nonnull %9) #23
  call void @BLI_movelisttolist(ptr noundef nonnull %9, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_nurb_copy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @isNurbselU(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #12 !PGOFuncName !452 {
  store i32 0, ptr %1, align 4, !tbaa !107
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %6, %40
  %11 = phi i32 [ %4, %6 ], [ %42, %40 ]
  %12 = phi i32 [ 0, %6 ], [ %43, %40 ]
  %13 = phi i32 [ 0, %6 ], [ %44, %40 ]
  %14 = phi ptr [ %8, %6 ], [ %41, %40 ]
  %15 = load i32, ptr %9, align 8, !tbaa !52
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %10, %17
  %18 = phi i32 [ %25, %17 ], [ 0, %10 ]
  %19 = phi i32 [ %26, %17 ], [ 0, %10 ]
  %20 = phi ptr [ %27, %17 ], [ %14, %10 ]
  %21 = getelementptr inbounds %struct.BPoint, ptr %20, i64 0, i32 3
  %22 = load i16, ptr %21, align 4, !tbaa !63
  %23 = and i16 %22, 1
  %24 = zext nneg i16 %23 to i32
  %25 = add i32 %18, %24
  %26 = add nuw nsw i32 %19, 1
  %27 = getelementptr inbounds %struct.BPoint, ptr %20, i64 1
  %28 = icmp eq i32 %26, %15
  br i1 %28, label %29, label %17, !llvm.loop !453

29:                                               ; preds = %17
  %30 = icmp eq i32 %25, %15
  br i1 %30, label %33, label %37

31:                                               ; preds = %10
  %32 = icmp eq i32 %15, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %14, %31 ], [ %27, %29 ]
  %35 = add nsw i32 %12, 1
  store i32 %35, ptr %1, align 4, !tbaa !107
  %36 = load i32, ptr %3, align 4, !tbaa !60
  br label %40

37:                                               ; preds = %29
  %38 = icmp sgt i32 %25, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i32 0, ptr %1, align 4, !tbaa !107
  br label %46

40:                                               ; preds = %31, %33, %37
  %41 = phi ptr [ %34, %33 ], [ %27, %37 ], [ %14, %31 ]
  %42 = phi i32 [ %36, %33 ], [ %11, %37 ], [ %11, %31 ]
  %43 = phi i32 [ %35, %33 ], [ %12, %37 ], [ %12, %31 ]
  %44 = add nuw nsw i32 %13, 1
  %45 = icmp slt i32 %44, %42
  br i1 %45, label %10, label %46, !llvm.loop !454

46:                                               ; preds = %40, %2, %39
  %47 = phi i8 [ 0, %39 ], [ 1, %2 ], [ 1, %40 ]
  ret i8 %47
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @isNurbselV(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #12 !PGOFuncName !455 {
  store i32 0, ptr %1, align 4, !tbaa !107
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  br label %10

10:                                               ; preds = %6, %41
  %11 = phi i32 [ %4, %6 ], [ %42, %41 ]
  %12 = phi i32 [ 0, %6 ], [ %43, %41 ]
  %13 = phi i64 [ 0, %6 ], [ %44, %41 ]
  %14 = load i32, ptr %9, align 4, !tbaa !60
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.BPoint, ptr %8, i64 %13
  %18 = sext i32 %11 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i32 [ 0, %16 ], [ %27, %19 ]
  %21 = phi i32 [ 0, %16 ], [ %28, %19 ]
  %22 = phi ptr [ %17, %16 ], [ %29, %19 ]
  %23 = getelementptr inbounds %struct.BPoint, ptr %22, i64 0, i32 3
  %24 = load i16, ptr %23, align 4, !tbaa !63
  %25 = and i16 %24, 1
  %26 = zext nneg i16 %25 to i32
  %27 = add i32 %20, %26
  %28 = add nuw nsw i32 %21, 1
  %29 = getelementptr inbounds %struct.BPoint, ptr %22, i64 %18
  %30 = icmp eq i32 %28, %14
  br i1 %30, label %31, label %19, !llvm.loop !456

31:                                               ; preds = %19
  %32 = icmp eq i32 %27, %14
  br i1 %32, label %35, label %38

33:                                               ; preds = %10
  %34 = icmp eq i32 %14, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %33, %31
  %36 = add nsw i32 %12, 1
  store i32 %36, ptr %1, align 4, !tbaa !107
  %37 = load i32, ptr %3, align 8, !tbaa !52
  br label %41

38:                                               ; preds = %31
  %39 = icmp sgt i32 %27, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  store i32 0, ptr %1, align 4, !tbaa !107
  br label %47

41:                                               ; preds = %33, %35, %38
  %42 = phi i32 [ %37, %35 ], [ %11, %38 ], [ %11, %33 ]
  %43 = phi i32 [ %36, %35 ], [ %12, %38 ], [ %12, %33 ]
  %44 = add nuw nsw i64 %13, 1
  %45 = sext i32 %42 to i64
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %10, label %47, !llvm.loop !457

47:                                               ; preds = %41, %2, %40
  %48 = phi i8 [ 0, %40 ], [ 1, %2 ], [ 1, %41 ]
  ret i8 %48
}

; Function Attrs: optsize
declare void @BKE_nurb_handle_calc_simple(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_delNurbList(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !458 {
  %3 = load ptr, ptr %1, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call fastcc void @keyIndex_delNurb(ptr noundef %0, ptr noundef nonnull %6) #22
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !459

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_delNurb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !460 {
  %3 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !52
  br i1 %9, label %23, label %12

12:                                               ; preds = %6
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %21, %14 ], [ %8, %12 ]
  %16 = phi i32 [ %17, %14 ], [ %11, %12 ]
  %17 = add nsw i32 %16, -1
  %18 = load ptr, ptr %3, align 8, !tbaa !77
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %20 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %18, ptr noundef nonnull %15, ptr noundef null, ptr noundef %19) #23
  %21 = getelementptr inbounds %struct.BezTriple, ptr %15, i64 1
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %40, label %14, !llvm.loop !461

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !60
  %26 = mul nsw i32 %25, %11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %38, %31 ], [ %30, %28 ]
  %33 = phi i32 [ %34, %31 ], [ %26, %28 ]
  %34 = add nsw i32 %33, -1
  %35 = load ptr, ptr %3, align 8, !tbaa !77
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %37 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %35, ptr noundef %32, ptr noundef null, ptr noundef %36) #23
  %38 = getelementptr inbounds %struct.BPoint, ptr %32, i64 1
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %40, label %31, !llvm.loop !462

40:                                               ; preds = %14, %31, %12, %23, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_nurb_direction_switch(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyData_switchDirectionNurb(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !463 {
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.EditNurb, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  tail call fastcc void @keyIndex_switchDirection(ptr noundef nonnull %4, ptr noundef %1) #22
  %9 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @switch_keys_direction(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %13

13:                                               ; preds = %8, %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_switchDirection(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !464 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = and i32 %8, 1
  %10 = add i32 %9, %8
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %139, label %13

13:                                               ; preds = %6
  %14 = sdiv i32 %10, 2
  %15 = sext i32 %8 to i64
  %16 = getelementptr %struct.BezTriple, ptr %4, i64 %15
  br label %17

17:                                               ; preds = %13, %40
  %18 = phi i32 [ %22, %40 ], [ %14, %13 ]
  %19 = phi ptr [ %21, %40 ], [ %16, %13 ]
  %20 = phi ptr [ %41, %40 ], [ %4, %13 ]
  %21 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 -1
  %22 = add nsw i32 %18, -1
  %23 = tail call fastcc ptr @getCVKeyIndex(ptr noundef %0, ptr noundef nonnull %20) #22
  %24 = tail call fastcc ptr @getCVKeyIndex(ptr noundef %0, ptr noundef nonnull %21) #22
  %25 = icmp eq ptr %23, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.CVKeyIndex, ptr %23, i64 0, i32 5
  %28 = load i8, ptr %27, align 8, !tbaa !88
  %29 = icmp eq i8 %28, 0
  %30 = zext i1 %29 to i8
  store i8 %30, ptr %27, align 8, !tbaa !88
  br label %31

31:                                               ; preds = %26, %17
  %32 = icmp eq ptr %20, %21
  br i1 %32, label %40, label %33

33:                                               ; preds = %31
  tail call fastcc void @keyIndex_swap(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %21) #22
  %34 = icmp eq ptr %24, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.CVKeyIndex, ptr %24, i64 0, i32 5
  %37 = load i8, ptr %36, align 8, !tbaa !88
  %38 = icmp eq i8 %37, 0
  %39 = zext i1 %38 to i8
  store i8 %39, ptr %36, align 8, !tbaa !88
  br label %40

40:                                               ; preds = %33, %35, %31
  %41 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 1
  %42 = icmp eq i32 %22, 0
  br i1 %42, label %139, label %17, !llvm.loop !465

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !60
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %49, label %139

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  %51 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 6
  br label %91

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !52
  %55 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !61
  %57 = sext i32 %54 to i64
  %58 = getelementptr %struct.BPoint, ptr %56, i64 %57
  %59 = getelementptr inbounds %struct.BPoint, ptr %58, i64 -1
  %60 = icmp ne ptr %56, %59
  %61 = icmp sgt i32 %54, 1
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %139

63:                                               ; preds = %52
  %64 = lshr i32 %54, 1
  br label %65

65:                                               ; preds = %63, %84
  %66 = phi ptr [ %87, %84 ], [ %59, %63 ]
  %67 = phi ptr [ %86, %84 ], [ %56, %63 ]
  %68 = phi i32 [ %85, %84 ], [ %64, %63 ]
  %69 = tail call fastcc ptr @getCVKeyIndex(ptr noundef %0, ptr noundef %67) #22
  %70 = tail call fastcc ptr @getCVKeyIndex(ptr noundef %0, ptr noundef nonnull %66) #22
  %71 = icmp eq ptr %69, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.CVKeyIndex, ptr %69, i64 0, i32 5
  %74 = load i8, ptr %73, align 8, !tbaa !88
  %75 = icmp eq i8 %74, 0
  %76 = zext i1 %75 to i8
  store i8 %76, ptr %73, align 8, !tbaa !88
  br label %77

77:                                               ; preds = %65, %72
  %78 = icmp eq ptr %70, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.CVKeyIndex, ptr %70, i64 0, i32 5
  %81 = load i8, ptr %80, align 8, !tbaa !88
  %82 = icmp eq i8 %81, 0
  %83 = zext i1 %82 to i8
  store i8 %83, ptr %80, align 8, !tbaa !88
  br label %84

84:                                               ; preds = %79, %77
  tail call fastcc void @keyIndex_swap(ptr noundef %0, ptr noundef %67, ptr noundef nonnull %66) #22
  %85 = add nsw i32 %68, -1
  %86 = getelementptr inbounds %struct.BPoint, ptr %67, i64 1
  %87 = getelementptr inbounds %struct.BPoint, ptr %66, i64 -1
  %88 = icmp ne ptr %86, %87
  %89 = icmp sgt i32 %68, 1
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %65, label %139, !llvm.loop !466

91:                                               ; preds = %49, %135
  %92 = phi i32 [ %45, %49 ], [ %136, %135 ]
  %93 = phi i32 [ 0, %49 ], [ %137, %135 ]
  %94 = load ptr, ptr %50, align 8, !tbaa !61
  %95 = load i32, ptr %51, align 8, !tbaa !52
  %96 = mul nsw i32 %95, %93
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.BPoint, ptr %94, i64 %97
  %99 = sext i32 %95 to i64
  %100 = getelementptr %struct.BPoint, ptr %98, i64 %99
  %101 = getelementptr inbounds %struct.BPoint, ptr %100, i64 -1
  %102 = icmp ne ptr %98, %101
  %103 = icmp sgt i32 %95, 1
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %91
  %106 = lshr i32 %95, 1
  br label %107

107:                                              ; preds = %105, %126
  %108 = phi ptr [ %129, %126 ], [ %101, %105 ]
  %109 = phi ptr [ %128, %126 ], [ %98, %105 ]
  %110 = phi i32 [ %127, %126 ], [ %106, %105 ]
  %111 = tail call fastcc ptr @getCVKeyIndex(ptr noundef %0, ptr noundef %109) #22
  %112 = tail call fastcc ptr @getCVKeyIndex(ptr noundef %0, ptr noundef nonnull %108) #22
  %113 = icmp eq ptr %111, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.CVKeyIndex, ptr %111, i64 0, i32 5
  %116 = load i8, ptr %115, align 8, !tbaa !88
  %117 = icmp eq i8 %116, 0
  %118 = zext i1 %117 to i8
  store i8 %118, ptr %115, align 8, !tbaa !88
  br label %119

119:                                              ; preds = %107, %114
  %120 = icmp eq ptr %112, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.CVKeyIndex, ptr %112, i64 0, i32 5
  %123 = load i8, ptr %122, align 8, !tbaa !88
  %124 = icmp eq i8 %123, 0
  %125 = zext i1 %124 to i8
  store i8 %125, ptr %122, align 8, !tbaa !88
  br label %126

126:                                              ; preds = %121, %119
  tail call fastcc void @keyIndex_swap(ptr noundef %0, ptr noundef %109, ptr noundef nonnull %108) #22
  %127 = add nsw i32 %110, -1
  %128 = getelementptr inbounds %struct.BPoint, ptr %109, i64 1
  %129 = getelementptr inbounds %struct.BPoint, ptr %108, i64 -1
  %130 = icmp ne ptr %128, %129
  %131 = icmp sgt i32 %110, 1
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %107, label %133, !llvm.loop !467

133:                                              ; preds = %126
  %134 = load i32, ptr %44, align 4, !tbaa !60
  br label %135

135:                                              ; preds = %133, %91
  %136 = phi i32 [ %134, %133 ], [ %92, %91 ]
  %137 = add nuw nsw i32 %93, 1
  %138 = icmp slt i32 %137, %136
  br i1 %138, label %91, label %139, !llvm.loop !468

139:                                              ; preds = %40, %135, %84, %6, %47, %52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @switch_keys_direction(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 !PGOFuncName !469 {
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.Key, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %88, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  br label %15

12:                                               ; preds = %84, %15
  %13 = load ptr, ptr %16, align 8, !tbaa !65
  %14 = icmp eq ptr %13, null
  br i1 %14, label %88, label %15, !llvm.loop !470

15:                                               ; preds = %10, %12
  %16 = phi ptr [ %13, %12 ], [ %8, %10 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !65
  %18 = icmp eq ptr %17, null
  br i1 %18, label %12, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !134
  br label %22

22:                                               ; preds = %19, %84
  %23 = phi ptr [ %86, %84 ], [ %17, %19 ]
  %24 = phi ptr [ %85, %84 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !52
  br i1 %27, label %55, label %30

30:                                               ; preds = %22
  %31 = icmp eq ptr %23, %1
  br i1 %31, label %32, label %51

32:                                               ; preds = %30
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %84, label %34

34:                                               ; preds = %32, %47
  %35 = phi i32 [ %38, %47 ], [ %29, %32 ]
  %36 = phi ptr [ %49, %47 ], [ %26, %32 ]
  %37 = phi ptr [ %48, %47 ], [ %24, %32 ]
  %38 = add nsw i32 %35, -1
  %39 = tail call fastcc ptr @getKeyIndexOrig_bezt(ptr noundef nonnull %4, ptr noundef nonnull %36) #22
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds float, ptr %37, i64 6
  tail call fastcc void @swap_v3_v3(ptr noundef %37, ptr noundef nonnull %42) #22
  %43 = getelementptr inbounds float, ptr %37, i64 9
  %44 = load float, ptr %43, align 4, !tbaa !70
  %45 = fneg float %44
  store float %45, ptr %43, align 4, !tbaa !70
  %46 = getelementptr inbounds float, ptr %37, i64 12
  br label %47

47:                                               ; preds = %41, %34
  %48 = phi ptr [ %46, %41 ], [ %37, %34 ]
  %49 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 1
  %50 = icmp eq i32 %38, 0
  br i1 %50, label %84, label %34, !llvm.loop !471

51:                                               ; preds = %30
  %52 = mul nsw i32 %29, 12
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, ptr %24, i64 %53
  br label %84

55:                                               ; preds = %22
  %56 = getelementptr inbounds %struct.Nurb, ptr %23, i64 0, i32 7
  %57 = load i32, ptr %56, align 4, !tbaa !60
  %58 = mul nsw i32 %57, %29
  %59 = icmp eq ptr %23, %1
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %11, align 8, !tbaa !61
  br label %64

64:                                               ; preds = %62, %76
  %65 = phi i32 [ %68, %76 ], [ %58, %62 ]
  %66 = phi ptr [ %78, %76 ], [ %63, %62 ]
  %67 = phi ptr [ %77, %76 ], [ %24, %62 ]
  %68 = add nsw i32 %65, -1
  %69 = tail call fastcc ptr @getKeyIndexOrig_bp(ptr noundef nonnull %4, ptr noundef %66) #22
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds float, ptr %67, i64 3
  %73 = load float, ptr %72, align 4, !tbaa !70
  %74 = fneg float %73
  store float %74, ptr %72, align 4, !tbaa !70
  %75 = getelementptr inbounds float, ptr %67, i64 4
  br label %76

76:                                               ; preds = %71, %64
  %77 = phi ptr [ %75, %71 ], [ %67, %64 ]
  %78 = getelementptr inbounds %struct.BPoint, ptr %66, i64 1
  %79 = icmp eq i32 %68, 0
  br i1 %79, label %84, label %64, !llvm.loop !472

80:                                               ; preds = %55
  %81 = shl nsw i32 %58, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, ptr %24, i64 %82
  br label %84

84:                                               ; preds = %47, %76, %32, %60, %80, %51
  %85 = phi ptr [ %54, %51 ], [ %83, %80 ], [ %24, %60 ], [ %24, %32 ], [ %77, %76 ], [ %48, %47 ]
  %86 = load ptr, ptr %23, align 8, !tbaa !65
  %87 = icmp eq ptr %86, null
  br i1 %87, label %12, label %22, !llvm.loop !473

88:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_swap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 !PGOFuncName !474 {
  %4 = tail call fastcc ptr @popCVKeyIndex(ptr noundef %0, ptr noundef %1) #22
  %5 = tail call fastcc ptr @popCVKeyIndex(ptr noundef %0, ptr noundef %2) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %9, ptr noundef %1, ptr noundef nonnull %5) #23
  br label %10

10:                                               ; preds = %7, %3
  %11 = icmp eq ptr %4, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %14, ptr noundef %2, ptr noundef nonnull %4) #23
  br label %15

15:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @popCVKeyIndex(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !475 {
  %3 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = tail call ptr @BLI_ghash_popkey(ptr noundef %4, ptr noundef %1, ptr noundef null) #23
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_ghash_popkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !PGOFuncName !476 {
  %3 = load float, ptr %0, align 4, !tbaa !70
  %4 = load float, ptr %1, align 4, !tbaa !70
  store float %4, ptr %0, align 4, !tbaa !70
  store float %3, ptr %1, align 4, !tbaa !70
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  store float %8, ptr %5, align 4, !tbaa !70
  store float %6, ptr %7, align 4, !tbaa !70
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !70
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !70
  store float %12, ptr %9, align 4, !tbaa !70
  store float %10, ptr %11, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mod_i(i32 noundef %0, i32 noundef %1) unnamed_addr #15 !PGOFuncName !477 {
  %3 = srem i32 %0, %1
  %4 = add nsw i32 %3, %1
  %5 = srem i32 %4, %1
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @smooth_single_bezt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #16 !PGOFuncName !478 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %24, %4 ]
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !70
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 %5
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %2, i64 0, i64 1, i64 %5
  %11 = load float, ptr %10, align 4, !tbaa !70
  %12 = fmul float %11, 5.000000e-01
  %13 = tail call float @llvm.fmuladd.f32(float %9, float 5.000000e-01, float %12)
  %14 = fmul float %13, 0x3FC5555560000000
  %15 = tail call float @llvm.fmuladd.f32(float %7, float 0x3FEAAAAAA0000000, float %14)
  %16 = fsub float %15, %7
  %17 = fadd float %7, %16
  store float %17, ptr %6, align 4, !tbaa !70
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %5
  %19 = load float, ptr %18, align 4, !tbaa !70
  %20 = fadd float %19, %16
  store float %20, ptr %18, align 4, !tbaa !70
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2, i64 %5
  %22 = load float, ptr %21, align 4, !tbaa !70
  %23 = fadd float %22, %16
  store float %23, ptr %21, align 4, !tbaa !70
  %24 = add nuw nsw i64 %5, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %4, !llvm.loop !479

26:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @smooth_single_bp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #16 !PGOFuncName !480 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %18, %4 ]
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !70
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 %5
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 %5
  %11 = load float, ptr %10, align 4, !tbaa !70
  %12 = fmul float %11, 5.000000e-01
  %13 = tail call float @llvm.fmuladd.f32(float %9, float 5.000000e-01, float %12)
  %14 = fmul float %13, 0x3FC5555560000000
  %15 = tail call float @llvm.fmuladd.f32(float %7, float 0x3FEAAAAAA0000000, float %14)
  %16 = fsub float %15, %7
  %17 = fadd float %7, %16
  store float %17, ptr %6, align 4, !tbaa !70
  %18 = add nuw nsw i64 %5, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %4, !llvm.loop !481

20:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @curve_smooth_value(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !482 {
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %371, label %6

6:                                                ; preds = %3
  %7 = zext nneg i32 %1 to i64
  %8 = zext nneg i32 %2 to i64
  br label %9

9:                                                ; preds = %6, %368
  %10 = phi ptr [ %4, %6 ], [ %369, %368 ]
  %11 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %186, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %368

18:                                               ; preds = %14
  %19 = getelementptr %struct.BezTriple, ptr %12, i64 -1
  %20 = getelementptr %struct.BezTriple, ptr %12, i64 1
  %21 = getelementptr i8, ptr %12, i64 %7
  %22 = getelementptr i8, ptr %19, i64 %7
  %23 = add nsw i32 %16, -1
  %24 = getelementptr i8, ptr %20, i64 %7
  %25 = sext i32 %23 to i64
  %26 = getelementptr %struct.BezTriple, ptr %21, i64 %25
  %27 = add nsw i32 %16, -2
  br label %28

28:                                               ; preds = %18, %182
  %29 = phi i32 [ 0, %18 ], [ %184, %182 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 %30
  br label %32

32:                                               ; preds = %28, %39
  %33 = phi i32 [ %29, %28 ], [ %40, %39 ]
  %34 = phi ptr [ %31, %28 ], [ %41, %39 ]
  %35 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 0, i32 8
  %36 = load i8, ptr %35, align 4, !tbaa !58
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = add nsw i32 %33, 1
  %41 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 1
  %42 = icmp slt i32 %40, %16
  br i1 %42, label %32, label %43, !llvm.loop !483

43:                                               ; preds = %32, %39
  %44 = phi i32 [ -1, %39 ], [ %33, %32 ]
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 %46
  %48 = icmp slt i32 %45, %16
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 %46, i32 8
  %51 = load i8, ptr %50, align 4, !tbaa !58
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %60

54:                                               ; preds = %60
  %55 = getelementptr inbounds %struct.BezTriple, ptr %61, i64 1
  %56 = getelementptr inbounds %struct.BezTriple, ptr %61, i64 1, i32 8
  %57 = load i8, ptr %56, align 4, !tbaa !58
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60, !llvm.loop !484

60:                                               ; preds = %49, %54
  %61 = phi ptr [ %55, %54 ], [ %47, %49 ]
  %62 = phi i32 [ %63, %54 ], [ %45, %49 ]
  %63 = add nsw i32 %62, 1
  %64 = icmp eq i32 %63, %16
  br i1 %64, label %65, label %54, !llvm.loop !484

65:                                               ; preds = %54, %60, %49, %43
  %66 = phi i32 [ %44, %43 ], [ %44, %49 ], [ %23, %60 ], [ %62, %54 ]
  %67 = icmp eq i32 %44, -1
  br i1 %67, label %182, label %68

68:                                               ; preds = %65
  %69 = icmp eq i32 %44, %66
  br i1 %69, label %70, label %93

70:                                               ; preds = %68
  %71 = icmp sgt i32 %44, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = zext nneg i32 %44 to i64
  %74 = getelementptr %struct.BezTriple, ptr %22, i64 %73
  %75 = load float, ptr %74, align 4, !tbaa !70
  br label %76

76:                                               ; preds = %70, %72
  %77 = phi float [ %75, %72 ], [ 0x47EFFFFFE0000000, %70 ]
  %78 = icmp slt i32 %44, %16
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %47, i64 %7
  %81 = load float, ptr %80, align 4, !tbaa !70
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi float [ %81, %79 ], [ 0x47EFFFFFE0000000, %76 ]
  %84 = fcmp une float %77, 0x47EFFFFFE0000000
  %85 = fcmp oge float %83, 0x47EFFFFFE0000000
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = fadd float %77, %83
  %89 = fmul float %88, 5.000000e-01
  br label %178

90:                                               ; preds = %82
  br i1 %84, label %178, label %91

91:                                               ; preds = %90
  %92 = fcmp une float %83, 0x47EFFFFFE0000000
  br i1 %92, label %178, label %182

93:                                               ; preds = %68
  %94 = tail call i32 @llvm.umax.i32(i32 %44, i32 1)
  %95 = icmp eq i32 %66, %23
  %96 = select i1 %95, i32 %27, i32 %66
  %97 = icmp sgt i32 %94, %96
  br i1 %97, label %182, label %98

98:                                               ; preds = %93
  %99 = sub nsw i32 %96, %94
  %100 = sitofp i32 %99 to float
  %101 = fadd float %100, 2.000000e+00
  %102 = sext i32 %66 to i64
  %103 = getelementptr %struct.BezTriple, ptr %24, i64 %102
  %104 = select i1 %95, ptr %26, ptr %103
  %105 = load float, ptr %104, align 4, !tbaa !70
  %106 = icmp eq i32 %44, 0
  %107 = sext i32 %44 to i64
  %108 = getelementptr %struct.BezTriple, ptr %22, i64 %107
  %109 = select i1 %106, ptr %21, ptr %108
  %110 = load float, ptr %109, align 4, !tbaa !70
  %111 = sext i32 %94 to i64
  %112 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 %111
  %113 = sub i32 %96, %94
  %114 = zext i32 %113 to i64
  %115 = add nuw nsw i64 %114, 4
  %116 = and i64 %115, 8589934588
  %117 = insertelement <4 x i64> poison, i64 %114, i64 0
  %118 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> zeroinitializer
  %119 = insertelement <4 x i32> poison, i32 %94, i64 0
  %120 = shufflevector <4 x i32> %119, <4 x i32> poison, <4 x i32> zeroinitializer
  %121 = add <4 x i32> %120, <i32 0, i32 1, i32 2, i32 3>
  %122 = insertelement <4 x i32> poison, i32 %94, i64 0
  %123 = shufflevector <4 x i32> %122, <4 x i32> poison, <4 x i32> zeroinitializer
  %124 = insertelement <4 x float> poison, float %101, i64 0
  %125 = shufflevector <4 x float> %124, <4 x float> poison, <4 x i32> zeroinitializer
  %126 = insertelement <4 x float> poison, float %105, i64 0
  %127 = shufflevector <4 x float> %126, <4 x float> poison, <4 x i32> zeroinitializer
  %128 = insertelement <4 x float> poison, float %110, i64 0
  %129 = shufflevector <4 x float> %128, <4 x float> poison, <4 x i32> zeroinitializer
  %130 = getelementptr i8, ptr %112, i64 %7
  %131 = getelementptr i8, ptr %112, i64 72
  %132 = getelementptr i8, ptr %131, i64 %7
  %133 = getelementptr i8, ptr %112, i64 144
  %134 = getelementptr i8, ptr %133, i64 %7
  %135 = getelementptr i8, ptr %112, i64 216
  %136 = getelementptr i8, ptr %135, i64 %7
  br label %137

137:                                              ; preds = %174, %98
  %138 = phi i64 [ 0, %98 ], [ %175, %174 ]
  %139 = phi <4 x i32> [ %121, %98 ], [ %176, %174 ]
  %140 = insertelement <4 x i64> poison, i64 %138, i64 0
  %141 = shufflevector <4 x i64> %140, <4 x i64> poison, <4 x i32> zeroinitializer
  %142 = or disjoint <4 x i64> %141, <i64 0, i64 1, i64 2, i64 3>
  %143 = icmp ule <4 x i64> %142, %118
  %144 = add <4 x i32> %139, <i32 1, i32 1, i32 1, i32 1>
  %145 = sub nsw <4 x i32> %144, %123
  %146 = sitofp <4 x i32> %145 to <4 x float>
  %147 = fdiv <4 x float> %146, %125
  %148 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %147
  %149 = fmul <4 x float> %127, %147
  %150 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %129, <4 x float> %148, <4 x float> %149)
  %151 = extractelement <4 x i1> %143, i64 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %137
  %153 = mul i64 %138, 72
  %154 = getelementptr i8, ptr %130, i64 %153
  %155 = extractelement <4 x float> %150, i64 0
  store float %155, ptr %154, align 4, !tbaa !70
  br label %156

156:                                              ; preds = %152, %137
  %157 = extractelement <4 x i1> %143, i64 1
  br i1 %157, label %158, label %162

158:                                              ; preds = %156
  %159 = mul i64 %138, 72
  %160 = getelementptr i8, ptr %132, i64 %159
  %161 = extractelement <4 x float> %150, i64 1
  store float %161, ptr %160, align 4, !tbaa !70
  br label %162

162:                                              ; preds = %158, %156
  %163 = extractelement <4 x i1> %143, i64 2
  br i1 %163, label %164, label %168

164:                                              ; preds = %162
  %165 = mul i64 %138, 72
  %166 = getelementptr i8, ptr %134, i64 %165
  %167 = extractelement <4 x float> %150, i64 2
  store float %167, ptr %166, align 4, !tbaa !70
  br label %168

168:                                              ; preds = %164, %162
  %169 = extractelement <4 x i1> %143, i64 3
  br i1 %169, label %170, label %174

170:                                              ; preds = %168
  %171 = mul i64 %138, 72
  %172 = getelementptr i8, ptr %136, i64 %171
  %173 = extractelement <4 x float> %150, i64 3
  store float %173, ptr %172, align 4, !tbaa !70
  br label %174

174:                                              ; preds = %170, %168
  %175 = add i64 %138, 4
  %176 = add <4 x i32> %139, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %175, %116
  br i1 %177, label %182, label %137, !llvm.loop !485

178:                                              ; preds = %91, %90, %87
  %179 = phi float [ %89, %87 ], [ %77, %90 ], [ %83, %91 ]
  %180 = sext i32 %44 to i64
  %181 = getelementptr %struct.BezTriple, ptr %21, i64 %180
  store float %179, ptr %181, align 4, !tbaa !70
  br label %182

182:                                              ; preds = %174, %178, %93, %65, %91
  %183 = phi i32 [ %44, %91 ], [ %16, %65 ], [ %66, %93 ], [ %44, %178 ], [ %66, %174 ]
  %184 = add nsw i32 %183, 1
  %185 = icmp slt i32 %184, %16
  br i1 %185, label %28, label %368, !llvm.loop !488

186:                                              ; preds = %9
  %187 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 17
  %188 = load ptr, ptr %187, align 8, !tbaa !61
  %189 = icmp eq ptr %188, null
  br i1 %189, label %368, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  %192 = load i32, ptr %191, align 8, !tbaa !52
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %368

194:                                              ; preds = %190
  %195 = getelementptr %struct.BPoint, ptr %188, i64 -1
  %196 = getelementptr %struct.BPoint, ptr %188, i64 1
  %197 = getelementptr i8, ptr %188, i64 %8
  %198 = getelementptr i8, ptr %195, i64 %8
  %199 = add nsw i32 %192, -1
  %200 = getelementptr i8, ptr %196, i64 %8
  %201 = sext i32 %199 to i64
  %202 = getelementptr %struct.BPoint, ptr %197, i64 %201
  %203 = add nsw i32 %192, -2
  br label %204

204:                                              ; preds = %194, %364
  %205 = phi i32 [ 0, %194 ], [ %366, %364 ]
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.BPoint, ptr %188, i64 %206
  br label %208

208:                                              ; preds = %204, %215
  %209 = phi i32 [ %205, %204 ], [ %216, %215 ]
  %210 = phi ptr [ %207, %204 ], [ %217, %215 ]
  %211 = getelementptr inbounds %struct.BPoint, ptr %210, i64 0, i32 3
  %212 = load i16, ptr %211, align 4, !tbaa !63
  %213 = and i16 %212, 1
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %208
  %216 = add nsw i32 %209, 1
  %217 = getelementptr inbounds %struct.BPoint, ptr %210, i64 1
  %218 = icmp slt i32 %216, %192
  br i1 %218, label %208, label %219, !llvm.loop !489

219:                                              ; preds = %208, %215
  %220 = phi i32 [ -1, %215 ], [ %209, %208 ]
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.BPoint, ptr %188, i64 %222
  %224 = icmp slt i32 %221, %192
  br i1 %224, label %225, label %241

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.BPoint, ptr %188, i64 %222, i32 3
  %227 = load i16, ptr %226, align 4, !tbaa !63
  %228 = and i16 %227, 1
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %241, label %236

230:                                              ; preds = %236
  %231 = getelementptr inbounds %struct.BPoint, ptr %237, i64 1
  %232 = getelementptr inbounds %struct.BPoint, ptr %237, i64 1, i32 3
  %233 = load i16, ptr %232, align 4, !tbaa !63
  %234 = and i16 %233, 1
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %241, label %236, !llvm.loop !490

236:                                              ; preds = %225, %230
  %237 = phi ptr [ %231, %230 ], [ %223, %225 ]
  %238 = phi i32 [ %239, %230 ], [ %221, %225 ]
  %239 = add nsw i32 %238, 1
  %240 = icmp eq i32 %239, %192
  br i1 %240, label %241, label %230, !llvm.loop !490

241:                                              ; preds = %230, %236, %225, %219
  %242 = phi i32 [ %220, %219 ], [ %220, %225 ], [ %199, %236 ], [ %238, %230 ]
  %243 = icmp eq i32 %220, -1
  br i1 %243, label %364, label %244

244:                                              ; preds = %241
  %245 = icmp eq i32 %220, %242
  br i1 %245, label %246, label %275

246:                                              ; preds = %244
  %247 = icmp sgt i32 %220, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %246
  %249 = zext nneg i32 %220 to i64
  %250 = getelementptr %struct.BPoint, ptr %198, i64 %249
  %251 = load float, ptr %250, align 4, !tbaa !70
  %252 = icmp slt i32 %220, %192
  br i1 %252, label %261, label %259

253:                                              ; preds = %246
  %254 = icmp slt i32 %220, %192
  br i1 %254, label %255, label %364

255:                                              ; preds = %253
  %256 = getelementptr inbounds i8, ptr %223, i64 %8
  %257 = load float, ptr %256, align 4, !tbaa !70
  %258 = fcmp une float %257, 0x47EFFFFFE0000000
  br i1 %258, label %272, label %364

259:                                              ; preds = %248
  %260 = fcmp une float %251, 0x47EFFFFFE0000000
  br i1 %260, label %360, label %364

261:                                              ; preds = %248
  %262 = getelementptr inbounds i8, ptr %223, i64 %8
  %263 = load float, ptr %262, align 4, !tbaa !70
  %264 = fcmp une float %251, 0x47EFFFFFE0000000
  %265 = fcmp une float %263, 0x47EFFFFFE0000000
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = fadd float %251, %263
  %269 = fmul float %268, 5.000000e-01
  br label %360

270:                                              ; preds = %261
  br i1 %264, label %360, label %271

271:                                              ; preds = %270
  br i1 %265, label %272, label %364

272:                                              ; preds = %255, %271
  %273 = phi float [ %257, %255 ], [ %263, %271 ]
  %274 = sext i32 %220 to i64
  br label %360

275:                                              ; preds = %244
  %276 = tail call i32 @llvm.umax.i32(i32 %220, i32 1)
  %277 = icmp eq i32 %242, %199
  %278 = select i1 %277, i32 %203, i32 %242
  %279 = icmp sgt i32 %276, %278
  br i1 %279, label %364, label %280

280:                                              ; preds = %275
  %281 = sub nsw i32 %278, %276
  %282 = sitofp i32 %281 to float
  %283 = fadd float %282, 2.000000e+00
  %284 = sext i32 %242 to i64
  %285 = getelementptr %struct.BPoint, ptr %200, i64 %284
  %286 = select i1 %277, ptr %202, ptr %285
  %287 = load float, ptr %286, align 4, !tbaa !70
  %288 = icmp eq i32 %220, 0
  %289 = sext i32 %220 to i64
  %290 = getelementptr %struct.BPoint, ptr %198, i64 %289
  %291 = select i1 %288, ptr %197, ptr %290
  %292 = load float, ptr %291, align 4, !tbaa !70
  %293 = sext i32 %276 to i64
  %294 = getelementptr inbounds %struct.BPoint, ptr %188, i64 %293
  %295 = sub i32 %278, %276
  %296 = zext i32 %295 to i64
  %297 = add nuw nsw i64 %296, 4
  %298 = and i64 %297, 8589934588
  %299 = insertelement <4 x i64> poison, i64 %296, i64 0
  %300 = shufflevector <4 x i64> %299, <4 x i64> poison, <4 x i32> zeroinitializer
  %301 = insertelement <4 x i32> poison, i32 %276, i64 0
  %302 = shufflevector <4 x i32> %301, <4 x i32> poison, <4 x i32> zeroinitializer
  %303 = add <4 x i32> %302, <i32 0, i32 1, i32 2, i32 3>
  %304 = insertelement <4 x i32> poison, i32 %276, i64 0
  %305 = shufflevector <4 x i32> %304, <4 x i32> poison, <4 x i32> zeroinitializer
  %306 = insertelement <4 x float> poison, float %283, i64 0
  %307 = shufflevector <4 x float> %306, <4 x float> poison, <4 x i32> zeroinitializer
  %308 = insertelement <4 x float> poison, float %287, i64 0
  %309 = shufflevector <4 x float> %308, <4 x float> poison, <4 x i32> zeroinitializer
  %310 = insertelement <4 x float> poison, float %292, i64 0
  %311 = shufflevector <4 x float> %310, <4 x float> poison, <4 x i32> zeroinitializer
  %312 = getelementptr i8, ptr %294, i64 %8
  %313 = getelementptr i8, ptr %294, i64 36
  %314 = getelementptr i8, ptr %313, i64 %8
  %315 = getelementptr i8, ptr %294, i64 72
  %316 = getelementptr i8, ptr %315, i64 %8
  %317 = getelementptr i8, ptr %294, i64 108
  %318 = getelementptr i8, ptr %317, i64 %8
  br label %319

319:                                              ; preds = %356, %280
  %320 = phi i64 [ 0, %280 ], [ %357, %356 ]
  %321 = phi <4 x i32> [ %303, %280 ], [ %358, %356 ]
  %322 = insertelement <4 x i64> poison, i64 %320, i64 0
  %323 = shufflevector <4 x i64> %322, <4 x i64> poison, <4 x i32> zeroinitializer
  %324 = or disjoint <4 x i64> %323, <i64 0, i64 1, i64 2, i64 3>
  %325 = icmp ule <4 x i64> %324, %300
  %326 = add <4 x i32> %321, <i32 1, i32 1, i32 1, i32 1>
  %327 = sub nsw <4 x i32> %326, %305
  %328 = sitofp <4 x i32> %327 to <4 x float>
  %329 = fdiv <4 x float> %328, %307
  %330 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %329
  %331 = fmul <4 x float> %309, %329
  %332 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %311, <4 x float> %330, <4 x float> %331)
  %333 = extractelement <4 x i1> %325, i64 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %319
  %335 = mul i64 %320, 36
  %336 = getelementptr i8, ptr %312, i64 %335
  %337 = extractelement <4 x float> %332, i64 0
  store float %337, ptr %336, align 4, !tbaa !70
  br label %338

338:                                              ; preds = %334, %319
  %339 = extractelement <4 x i1> %325, i64 1
  br i1 %339, label %340, label %344

340:                                              ; preds = %338
  %341 = mul i64 %320, 36
  %342 = getelementptr i8, ptr %314, i64 %341
  %343 = extractelement <4 x float> %332, i64 1
  store float %343, ptr %342, align 4, !tbaa !70
  br label %344

344:                                              ; preds = %340, %338
  %345 = extractelement <4 x i1> %325, i64 2
  br i1 %345, label %346, label %350

346:                                              ; preds = %344
  %347 = mul i64 %320, 36
  %348 = getelementptr i8, ptr %316, i64 %347
  %349 = extractelement <4 x float> %332, i64 2
  store float %349, ptr %348, align 4, !tbaa !70
  br label %350

350:                                              ; preds = %346, %344
  %351 = extractelement <4 x i1> %325, i64 3
  br i1 %351, label %352, label %356

352:                                              ; preds = %350
  %353 = mul i64 %320, 36
  %354 = getelementptr i8, ptr %318, i64 %353
  %355 = extractelement <4 x float> %332, i64 3
  store float %355, ptr %354, align 4, !tbaa !70
  br label %356

356:                                              ; preds = %352, %350
  %357 = add i64 %320, 4
  %358 = add <4 x i32> %321, <i32 4, i32 4, i32 4, i32 4>
  %359 = icmp eq i64 %357, %298
  br i1 %359, label %364, label %319, !llvm.loop !491

360:                                              ; preds = %270, %259, %272, %267
  %361 = phi i64 [ %249, %267 ], [ %274, %272 ], [ %249, %259 ], [ %249, %270 ]
  %362 = phi float [ %269, %267 ], [ %273, %272 ], [ %251, %259 ], [ %251, %270 ]
  %363 = getelementptr %struct.BPoint, ptr %197, i64 %361
  store float %362, ptr %363, align 4, !tbaa !70
  br label %364

364:                                              ; preds = %356, %360, %275, %253, %255, %259, %241, %271
  %365 = phi i32 [ %220, %271 ], [ %192, %241 ], [ %220, %259 ], [ %220, %255 ], [ %220, %253 ], [ %242, %275 ], [ %220, %360 ], [ %242, %356 ]
  %366 = add nsw i32 %365, 1
  %367 = icmp slt i32 %366, %192
  br i1 %367, label %204, label %368, !llvm.loop !492

368:                                              ; preds = %182, %364, %14, %190, %186
  %369 = load ptr, ptr %10, align 8, !tbaa !65
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %9, !llvm.loop !493

371:                                              ; preds = %368, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_curve_nurb_vert_active_validate(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @nurb_has_selected_cps(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !494 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = icmp eq ptr %2, null
  br i1 %3, label %67, label %4

4:                                                ; preds = %1, %64
  %5 = phi ptr [ %65, %64 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i16 %7, 1
  %9 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !52
  br i1 %8, label %11, label %41

11:                                               ; preds = %4
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %64, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %13, %38
  %17 = phi i32 [ %19, %38 ], [ %10, %13 ]
  %18 = phi ptr [ %39, %38 ], [ %15, %13 ]
  %19 = add nsw i32 %17, -1
  %20 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 10
  %21 = load i8, ptr %20, align 2, !tbaa !157
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !56
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 8
  %30 = load i8, ptr %29, align 4, !tbaa !58
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !59
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %33, %16
  %39 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 1
  %40 = icmp eq i32 %19, 0
  br i1 %40, label %64, label %16, !llvm.loop !495

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 7
  %43 = load i32, ptr %42, align 4, !tbaa !60
  %44 = mul nsw i32 %43, %10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  br label %49

49:                                               ; preds = %46, %61
  %50 = phi i32 [ %52, %61 ], [ %44, %46 ]
  %51 = phi ptr [ %62, %61 ], [ %48, %46 ]
  %52 = add nsw i32 %50, -1
  %53 = getelementptr inbounds %struct.BPoint, ptr %51, i64 0, i32 4
  %54 = load i16, ptr %53, align 2, !tbaa !159
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.BPoint, ptr %51, i64 0, i32 3
  %58 = load i16, ptr %57, align 4, !tbaa !63
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56, %49
  %62 = getelementptr inbounds %struct.BPoint, ptr %51, i64 1
  %63 = icmp eq i32 %52, 0
  br i1 %63, label %64, label %49, !llvm.loop !496

64:                                               ; preds = %61, %38, %41, %11
  %65 = load ptr, ptr %5, align 8, !tbaa !65
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %4, !llvm.loop !497

67:                                               ; preds = %64, %56, %23, %28, %33, %1
  %68 = phi i8 [ 0, %1 ], [ 1, %33 ], [ 1, %28 ], [ 1, %23 ], [ 1, %56 ], [ 0, %64 ]
  ret i8 %68
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @subdividenurb(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !498 {
  %3 = alloca [15 x float], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #24
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %713, label %11

11:                                               ; preds = %2
  %12 = icmp slt i32 %1, 1
  %13 = add nsw i32 %1, 1
  %14 = sitofp i32 %13 to float
  %15 = icmp sgt i32 %1, 0
  %16 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 16
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %19 = getelementptr inbounds float, ptr %3, i64 3
  %20 = getelementptr inbounds float, ptr %3, i64 6
  %21 = getelementptr inbounds float, ptr %3, i64 9
  %22 = getelementptr inbounds float, ptr %3, i64 12
  %23 = add nsw i32 %1, -1
  br label %24

24:                                               ; preds = %11, %710
  %25 = phi ptr [ %9, %11 ], [ %711, %710 ]
  %26 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !50
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %195

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 18
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %710, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %32, align 8, !tbaa !53
  br label %36

36:                                               ; preds = %34, %85
  %37 = phi i32 [ %40, %85 ], [ %31, %34 ]
  %38 = phi ptr [ %87, %85 ], [ %35, %34 ]
  %39 = phi i32 [ %86, %85 ], [ 0, %34 ]
  %40 = add nsw i32 %37, -1
  %41 = call ptr @BKE_nurb_bezt_get_next(ptr noundef nonnull %25, ptr noundef %38) #23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %89, label %43

43:                                               ; preds = %36
  %44 = load i16, ptr %16, align 8, !tbaa !234
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  %47 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 0, i32 8
  %48 = load i8, ptr %47, align 4, !tbaa !58
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %46, label %52, label %51

51:                                               ; preds = %43
  br i1 %50, label %85, label %63

52:                                               ; preds = %43
  br i1 %50, label %53, label %68

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 0, i32 7
  %55 = load i8, ptr %54, align 1, !tbaa !56
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 0, i32 9
  %60 = load i8, ptr %59, align 1, !tbaa !59
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %85, label %68

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %65 = load i8, ptr %64, align 4, !tbaa !58
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %85, label %83

68:                                               ; preds = %58, %53, %52
  %69 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %70 = load i8, ptr %69, align 4, !tbaa !58
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 7
  %75 = load i8, ptr %74, align 1, !tbaa !56
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 9
  %80 = load i8, ptr %79, align 1, !tbaa !59
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78, %73, %68, %63
  %84 = add nsw i32 %39, %1
  br label %85

85:                                               ; preds = %83, %78, %63, %58, %51
  %86 = phi i32 [ %84, %83 ], [ %39, %63 ], [ %39, %78 ], [ %39, %51 ], [ %39, %58 ]
  %87 = getelementptr inbounds %struct.BezTriple, ptr %38, i64 1
  %88 = icmp eq i32 %40, 0
  br i1 %88, label %89, label %36, !llvm.loop !499

89:                                               ; preds = %85, %36
  %90 = phi i32 [ %86, %85 ], [ %39, %36 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %710, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %94 = load i32, ptr %30, align 8, !tbaa !52
  %95 = add nsw i32 %94, %90
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, 72
  %98 = call ptr %93(i64 noundef %97, ptr noundef nonnull @.str.199) #23
  %99 = load i32, ptr %30, align 8, !tbaa !52
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %190, label %101

101:                                              ; preds = %92
  %102 = load ptr, ptr %32, align 8, !tbaa !53
  %103 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 13
  br label %104

104:                                              ; preds = %101, %186
  %105 = phi i32 [ %99, %101 ], [ %108, %186 ]
  %106 = phi ptr [ %102, %101 ], [ %188, %186 ]
  %107 = phi ptr [ %98, %101 ], [ %187, %186 ]
  %108 = add nsw i32 %105, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %107, ptr noundef nonnull align 4 dereferenceable(72) %106, i64 72, i1 false)
  call fastcc void @keyIndex_updateBezt(ptr noundef nonnull %8, ptr noundef %106, ptr noundef %107, i32 noundef 1) #22
  %109 = getelementptr inbounds %struct.BezTriple, ptr %107, i64 1
  %110 = call ptr @BKE_nurb_bezt_get_next(ptr noundef nonnull %25, ptr noundef %106) #23
  %111 = icmp eq ptr %110, null
  br i1 %111, label %190, label %112

112:                                              ; preds = %104
  %113 = load i16, ptr %16, align 8, !tbaa !234
  %114 = and i16 %113, 1
  %115 = icmp eq i16 %114, 0
  %116 = getelementptr inbounds %struct.BezTriple, ptr %106, i64 0, i32 8
  %117 = load i8, ptr %116, align 4, !tbaa !58
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  br i1 %115, label %121, label %120

120:                                              ; preds = %112
  br i1 %119, label %186, label %132

121:                                              ; preds = %112
  br i1 %119, label %122, label %137

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.BezTriple, ptr %106, i64 0, i32 7
  %124 = load i8, ptr %123, align 1, !tbaa !56
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.BezTriple, ptr %106, i64 0, i32 9
  %129 = load i8, ptr %128, align 1, !tbaa !59
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %186, label %137

132:                                              ; preds = %120
  %133 = getelementptr inbounds %struct.BezTriple, ptr %110, i64 0, i32 8
  %134 = load i8, ptr %133, align 4, !tbaa !58
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %186, label %152

137:                                              ; preds = %127, %122, %121
  %138 = getelementptr inbounds %struct.BezTriple, ptr %110, i64 0, i32 8
  %139 = load i8, ptr %138, align 4, !tbaa !58
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.BezTriple, ptr %110, i64 0, i32 7
  %144 = load i8, ptr %143, align 1, !tbaa !56
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.BezTriple, ptr %110, i64 0, i32 9
  %149 = load i8, ptr %148, align 1, !tbaa !59
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %186, label %152

152:                                              ; preds = %147, %142, %137, %132
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %106, i64 36, i1 false)
  br i1 %15, label %153, label %184

153:                                              ; preds = %152
  %154 = getelementptr inbounds [3 x [3 x float]], ptr %110, i64 0, i64 1
  %155 = icmp eq i32 %108, 0
  %156 = getelementptr inbounds %struct.BezTriple, ptr %106, i64 0, i32 2
  %157 = getelementptr inbounds %struct.BezTriple, ptr %110, i64 0, i32 2
  br label %158

158:                                              ; preds = %153, %175
  %159 = phi i32 [ 0, %153 ], [ %182, %175 ]
  %160 = phi ptr [ %109, %153 ], [ %181, %175 ]
  %161 = sub nsw i32 %13, %159
  %162 = sitofp i32 %161 to float
  %163 = fdiv float 1.000000e+00, %162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %160, ptr noundef nonnull align 4 dereferenceable(72) %110, i64 72, i1 false)
  call void @interp_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %17, ptr noundef nonnull %18, float noundef %163) #23
  call void @interp_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %18, ptr noundef nonnull %110, float noundef %163) #23
  call void @interp_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %110, ptr noundef nonnull %154, float noundef %163) #23
  call void @interp_v3_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %3, ptr noundef nonnull %19, float noundef %163) #23
  call void @interp_v3_v3v3(ptr noundef nonnull %22, ptr noundef nonnull %19, ptr noundef nonnull %20, float noundef %163) #23
  %164 = getelementptr %struct.BezTriple, ptr %160, i64 -1, i32 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef %164, ptr noundef nonnull %3) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %160, ptr noundef nonnull %21) #22
  %165 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 1
  call void @interp_v3_v3v3(ptr noundef nonnull %165, ptr noundef nonnull %21, ptr noundef nonnull %22, float noundef %163) #23
  %166 = getelementptr inbounds [3 x [3 x float]], ptr %160, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %166, ptr noundef nonnull %22) #22
  %167 = icmp eq i32 %159, %23
  %168 = select i1 %155, i1 %167, i1 false
  br i1 %168, label %169, label %174

169:                                              ; preds = %158
  %170 = load i16, ptr %103, align 4, !tbaa !69
  %171 = and i16 %170, 1
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %169
  call fastcc void @copy_v3_v3(ptr noundef %98, ptr noundef nonnull %20) #22
  br label %175

174:                                              ; preds = %169, %158
  call fastcc void @copy_v3_v3(ptr noundef nonnull %110, ptr noundef nonnull %20) #22
  br label %175

175:                                              ; preds = %174, %173
  %176 = getelementptr inbounds %struct.BezTriple, ptr %160, i64 0, i32 2
  %177 = load <2 x float>, ptr %156, align 4, !tbaa !70
  %178 = load <2 x float>, ptr %157, align 4, !tbaa !70
  %179 = fadd <2 x float> %177, %178
  %180 = fmul <2 x float> %179, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %180, ptr %176, align 4, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %160, i64 36, i1 false)
  %181 = getelementptr inbounds %struct.BezTriple, ptr %160, i64 1
  %182 = add nuw nsw i32 %159, 1
  %183 = icmp eq i32 %182, %1
  br i1 %183, label %184, label %158, !llvm.loop !500

184:                                              ; preds = %175, %152
  %185 = phi ptr [ %109, %152 ], [ %181, %175 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #24
  br label %186

186:                                              ; preds = %184, %147, %132, %127, %120
  %187 = phi ptr [ %185, %184 ], [ %109, %132 ], [ %109, %147 ], [ %109, %120 ], [ %109, %127 ]
  %188 = getelementptr inbounds %struct.BezTriple, ptr %106, i64 1
  %189 = icmp eq i32 %108, 0
  br i1 %189, label %190, label %104, !llvm.loop !501

190:                                              ; preds = %186, %104, %92
  %191 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %192 = load ptr, ptr %32, align 8, !tbaa !53
  call void %191(ptr noundef %192) #23
  store ptr %98, ptr %32, align 8, !tbaa !53
  %193 = load i32, ptr %30, align 8, !tbaa !52
  %194 = add nsw i32 %193, %90
  store i32 %194, ptr %30, align 8, !tbaa !52
  call void @BKE_nurb_handles_calc(ptr noundef nonnull %25) #23
  br label %710

195:                                              ; preds = %24
  %196 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 7
  %197 = load i32, ptr %196, align 4, !tbaa !60
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %284

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 6
  %201 = load i32, ptr %200, align 8, !tbaa !52
  %202 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 17
  %203 = icmp eq i32 %201, 0
  br i1 %203, label %710, label %204

204:                                              ; preds = %199
  %205 = load ptr, ptr %202, align 8, !tbaa !61
  br label %206

206:                                              ; preds = %204, %225
  %207 = phi i32 [ %210, %225 ], [ %201, %204 ]
  %208 = phi ptr [ %227, %225 ], [ %205, %204 ]
  %209 = phi i32 [ %226, %225 ], [ 0, %204 ]
  %210 = add nsw i32 %207, -1
  %211 = call ptr @BKE_nurb_bpoint_get_next(ptr noundef nonnull %25, ptr noundef %208) #23
  %212 = icmp eq ptr %211, null
  br i1 %212, label %229, label %213

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.BPoint, ptr %208, i64 0, i32 3
  %215 = load i16, ptr %214, align 4, !tbaa !63
  %216 = and i16 %215, 1
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.BPoint, ptr %211, i64 0, i32 3
  %220 = load i16, ptr %219, align 4, !tbaa !63
  %221 = and i16 %220, 1
  %222 = icmp eq i16 %221, 0
  %223 = select i1 %222, i32 0, i32 %1
  %224 = add nsw i32 %223, %209
  br label %225

225:                                              ; preds = %218, %213
  %226 = phi i32 [ %209, %213 ], [ %224, %218 ]
  %227 = getelementptr inbounds %struct.BPoint, ptr %208, i64 1
  %228 = icmp eq i32 %210, 0
  br i1 %228, label %229, label %206, !llvm.loop !502

229:                                              ; preds = %225, %206
  %230 = phi i32 [ %226, %225 ], [ %209, %206 ]
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %710, label %232

232:                                              ; preds = %229
  %233 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %234 = load i32, ptr %200, align 8, !tbaa !52
  %235 = add nsw i32 %234, %230
  %236 = sext i32 %235 to i64
  %237 = mul nsw i64 %236, 36
  %238 = call ptr %233(i64 noundef %237, ptr noundef nonnull @.str.200) #23
  %239 = load i32, ptr %200, align 8, !tbaa !52
  %240 = load ptr, ptr %202, align 8, !tbaa !61
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %275, label %242

242:                                              ; preds = %232, %269
  %243 = phi i32 [ %246, %269 ], [ %239, %232 ]
  %244 = phi ptr [ %271, %269 ], [ %240, %232 ]
  %245 = phi ptr [ %270, %269 ], [ %238, %232 ]
  %246 = add nsw i32 %243, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %245, ptr noundef nonnull align 4 dereferenceable(36) %244, i64 36, i1 false)
  call fastcc void @keyIndex_updateBP(ptr noundef nonnull %8, ptr noundef %244, ptr noundef %245, i32 noundef 1) #22
  %247 = getelementptr inbounds %struct.BPoint, ptr %245, i64 1
  %248 = call ptr @BKE_nurb_bpoint_get_next(ptr noundef nonnull %25, ptr noundef %244) #23
  %249 = icmp eq ptr %248, null
  br i1 %249, label %273, label %250

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.BPoint, ptr %244, i64 0, i32 3
  %252 = load i16, ptr %251, align 4, !tbaa !63
  %253 = and i16 %252, 1
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.BPoint, ptr %248, i64 0, i32 3
  %257 = load i16, ptr %256, align 4, !tbaa !63
  %258 = and i16 %257, 1
  %259 = icmp eq i16 %258, 0
  %260 = or i1 %259, %12
  br i1 %260, label %269, label %261

261:                                              ; preds = %255, %261
  %262 = phi i32 [ %264, %261 ], [ 0, %255 ]
  %263 = phi ptr [ %267, %261 ], [ %247, %255 ]
  %264 = add nuw nsw i32 %262, 1
  %265 = sitofp i32 %264 to float
  %266 = fdiv float %265, %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %263, ptr noundef nonnull align 4 dereferenceable(36) %248, i64 36, i1 false)
  call void @interp_v4_v4v4(ptr noundef nonnull %263, ptr noundef %244, ptr noundef nonnull %248, float noundef %266) #23
  %267 = getelementptr inbounds %struct.BPoint, ptr %263, i64 1
  %268 = icmp eq i32 %264, %1
  br i1 %268, label %269, label %261, !llvm.loop !503

269:                                              ; preds = %261, %255, %250
  %270 = phi ptr [ %247, %255 ], [ %247, %250 ], [ %267, %261 ]
  %271 = getelementptr inbounds %struct.BPoint, ptr %244, i64 1
  %272 = icmp eq i32 %246, 0
  br i1 %272, label %273, label %242, !llvm.loop !504

273:                                              ; preds = %242, %269
  %274 = load ptr, ptr %202, align 8, !tbaa !61
  br label %275

275:                                              ; preds = %273, %232
  %276 = phi ptr [ %274, %273 ], [ %240, %232 ]
  %277 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %277(ptr noundef %276) #23
  store ptr %238, ptr %202, align 8, !tbaa !61
  %278 = load i32, ptr %200, align 8, !tbaa !52
  %279 = add nsw i32 %278, %230
  store i32 %279, ptr %200, align 8, !tbaa !52
  %280 = load i16, ptr %26, align 8, !tbaa !50
  %281 = and i16 %280, 4
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %710, label %283

283:                                              ; preds = %275
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %25) #23
  br label %710

284:                                              ; preds = %195
  %285 = icmp eq i16 %27, 4
  br i1 %285, label %286, label %710

286:                                              ; preds = %284
  %287 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %288 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 6
  %289 = load i32, ptr %288, align 8, !tbaa !52
  %290 = sext i32 %289 to i64
  %291 = shl nsw i64 %290, 2
  %292 = call ptr %287(i64 noundef %291, ptr noundef nonnull @.str.201) #23
  %293 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %294 = load i32, ptr %196, align 4, !tbaa !60
  %295 = sext i32 %294 to i64
  %296 = shl nsw i64 %295, 2
  %297 = call ptr %293(i64 noundef %296, ptr noundef nonnull @.str.201) #23
  %298 = getelementptr inbounds %struct.Nurb, ptr %25, i64 0, i32 17
  %299 = load i32, ptr %196, align 4, !tbaa !60
  %300 = icmp sgt i32 %299, 0
  %301 = load i32, ptr %288, align 8, !tbaa !52
  br i1 %300, label %302, label %349

302:                                              ; preds = %286
  %303 = load ptr, ptr %298, align 8, !tbaa !61
  br label %304

304:                                              ; preds = %302, %340
  %305 = phi i32 [ %299, %302 ], [ %341, %340 ]
  %306 = phi i32 [ %301, %302 ], [ %342, %340 ]
  %307 = phi i32 [ %301, %302 ], [ %343, %340 ]
  %308 = phi i64 [ 0, %302 ], [ %346, %340 ]
  %309 = phi ptr [ %303, %302 ], [ %345, %340 ]
  %310 = phi i32 [ 0, %302 ], [ %344, %340 ]
  %311 = icmp sgt i32 %307, 0
  br i1 %311, label %312, label %340

312:                                              ; preds = %304
  %313 = getelementptr inbounds i32, ptr %297, i64 %308
  br label %314

314:                                              ; preds = %312, %331
  %315 = phi i32 [ %306, %312 ], [ %332, %331 ]
  %316 = phi i64 [ 0, %312 ], [ %335, %331 ]
  %317 = phi ptr [ %309, %312 ], [ %334, %331 ]
  %318 = phi i32 [ %310, %312 ], [ %333, %331 ]
  %319 = getelementptr inbounds %struct.BPoint, ptr %317, i64 0, i32 3
  %320 = load i16, ptr %319, align 4, !tbaa !63
  %321 = and i16 %320, 1
  %322 = icmp eq i16 %321, 0
  br i1 %322, label %331, label %323

323:                                              ; preds = %314
  %324 = getelementptr inbounds i32, ptr %292, i64 %316
  %325 = load i32, ptr %324, align 4, !tbaa !107
  %326 = add nsw i32 %325, 1
  store i32 %326, ptr %324, align 4, !tbaa !107
  %327 = load i32, ptr %313, align 4, !tbaa !107
  %328 = add nsw i32 %327, 1
  store i32 %328, ptr %313, align 4, !tbaa !107
  %329 = add nsw i32 %318, 1
  %330 = load i32, ptr %288, align 8, !tbaa !52
  br label %331

331:                                              ; preds = %323, %314
  %332 = phi i32 [ %330, %323 ], [ %315, %314 ]
  %333 = phi i32 [ %329, %323 ], [ %318, %314 ]
  %334 = getelementptr inbounds %struct.BPoint, ptr %317, i64 1
  %335 = add nuw nsw i64 %316, 1
  %336 = sext i32 %332 to i64
  %337 = icmp slt i64 %335, %336
  br i1 %337, label %314, label %338, !llvm.loop !505

338:                                              ; preds = %331
  %339 = load i32, ptr %196, align 4, !tbaa !60
  br label %340

340:                                              ; preds = %338, %304
  %341 = phi i32 [ %305, %304 ], [ %339, %338 ]
  %342 = phi i32 [ %306, %304 ], [ %332, %338 ]
  %343 = phi i32 [ %307, %304 ], [ %332, %338 ]
  %344 = phi i32 [ %310, %304 ], [ %333, %338 ]
  %345 = phi ptr [ %309, %304 ], [ %334, %338 ]
  %346 = add nuw nsw i64 %308, 1
  %347 = sext i32 %341 to i64
  %348 = icmp slt i64 %346, %347
  br i1 %348, label %304, label %349, !llvm.loop !506

349:                                              ; preds = %340, %286
  %350 = phi i32 [ %301, %286 ], [ %342, %340 ]
  %351 = phi i32 [ 0, %286 ], [ %344, %340 ]
  %352 = phi i32 [ %299, %286 ], [ %341, %340 ]
  %353 = mul nsw i32 %350, %352
  %354 = icmp eq i32 %351, %353
  br i1 %354, label %360, label %355

355:                                              ; preds = %349
  %356 = icmp sgt i32 %352, 1
  br i1 %356, label %357, label %512

357:                                              ; preds = %355
  %358 = add nsw i32 %352, -1
  %359 = zext nneg i32 %358 to i64
  br label %494

360:                                              ; preds = %349
  %361 = add nsw i32 %350, -1
  %362 = mul nsw i32 %361, %1
  %363 = add nsw i32 %362, %350
  %364 = mul nsw i32 %350, %13
  %365 = sub nsw i32 %364, %1
  %366 = mul nsw i32 %352, %13
  %367 = sub nsw i32 %366, %1
  %368 = mul nsw i32 %365, %367
  %369 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %370 = sext i32 %368 to i64
  %371 = mul nsw i64 %370, 36
  %372 = call ptr %369(i64 noundef %371, ptr noundef nonnull @.str.202) #23
  %373 = load i32, ptr %196, align 4, !tbaa !60
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %375, label %485

375:                                              ; preds = %360
  %376 = load ptr, ptr %298, align 8, !tbaa !61
  %377 = mul nsw i32 %363, %1
  %378 = sext i32 %377 to i64
  %379 = load i32, ptr %288, align 8, !tbaa !52
  br label %380

380:                                              ; preds = %375, %414
  %381 = phi i32 [ %373, %375 ], [ %415, %414 ]
  %382 = phi i32 [ %379, %375 ], [ %416, %414 ]
  %383 = phi ptr [ %376, %375 ], [ %418, %414 ]
  %384 = phi i32 [ 0, %375 ], [ %420, %414 ]
  %385 = phi ptr [ %372, %375 ], [ %419, %414 ]
  %386 = icmp sgt i32 %382, 0
  br i1 %386, label %387, label %414

387:                                              ; preds = %380, %407
  %388 = phi ptr [ %392, %407 ], [ %383, %380 ]
  %389 = phi i32 [ %410, %407 ], [ 0, %380 ]
  %390 = phi ptr [ %409, %407 ], [ %385, %380 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %390, ptr noundef nonnull align 4 dereferenceable(36) %388, i64 36, i1 false), !tbaa.struct !190
  call fastcc void @keyIndex_updateBP(ptr noundef nonnull %8, ptr noundef %388, ptr noundef %390, i32 noundef 1) #22
  %391 = getelementptr inbounds %struct.BPoint, ptr %390, i64 1
  %392 = getelementptr inbounds %struct.BPoint, ptr %388, i64 1
  %393 = load i32, ptr %288, align 8, !tbaa !52
  %394 = add nsw i32 %393, -1
  %395 = icmp sge i32 %389, %394
  %396 = or i1 %395, %12
  br i1 %396, label %407, label %397

397:                                              ; preds = %387, %397
  %398 = phi i32 [ %400, %397 ], [ 0, %387 ]
  %399 = phi ptr [ %403, %397 ], [ %391, %387 ]
  %400 = add nuw nsw i32 %398, 1
  %401 = sitofp i32 %400 to float
  %402 = fdiv float %401, %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %399, ptr noundef nonnull align 4 dereferenceable(36) %392, i64 36, i1 false), !tbaa.struct !190
  call void @interp_v4_v4v4(ptr noundef nonnull %399, ptr noundef nonnull %388, ptr noundef nonnull %392, float noundef %402) #23
  %403 = getelementptr inbounds %struct.BPoint, ptr %399, i64 1
  %404 = icmp eq i32 %400, %1
  br i1 %404, label %405, label %397, !llvm.loop !507

405:                                              ; preds = %397
  %406 = load i32, ptr %288, align 8, !tbaa !52
  br label %407

407:                                              ; preds = %405, %387
  %408 = phi i32 [ %393, %387 ], [ %406, %405 ]
  %409 = phi ptr [ %391, %387 ], [ %403, %405 ]
  %410 = add nuw nsw i32 %389, 1
  %411 = icmp slt i32 %410, %408
  br i1 %411, label %387, label %412, !llvm.loop !508

412:                                              ; preds = %407
  %413 = load i32, ptr %196, align 4, !tbaa !60
  br label %414

414:                                              ; preds = %412, %380
  %415 = phi i32 [ %381, %380 ], [ %413, %412 ]
  %416 = phi i32 [ %382, %380 ], [ %408, %412 ]
  %417 = phi ptr [ %385, %380 ], [ %409, %412 ]
  %418 = phi ptr [ %383, %380 ], [ %392, %412 ]
  %419 = getelementptr inbounds %struct.BPoint, ptr %417, i64 %378
  %420 = add nuw nsw i32 %384, 1
  %421 = icmp slt i32 %420, %415
  br i1 %421, label %380, label %422, !llvm.loop !509

422:                                              ; preds = %414
  %423 = icmp sgt i32 %415, 1
  br i1 %423, label %424, label %485

424:                                              ; preds = %422
  %425 = load i32, ptr %288, align 8, !tbaa !52
  %426 = mul nsw i32 %425, %13
  %427 = sub nsw i32 %426, %1
  %428 = mul nsw i32 %427, %13
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.BPoint, ptr %372, i64 %429
  %431 = sext i32 %427 to i64
  %432 = getelementptr inbounds %struct.BPoint, ptr %372, i64 %431
  %433 = sext i32 %363 to i64
  %434 = mul nsw i32 %363, %1
  %435 = sext i32 %434 to i64
  br label %436

436:                                              ; preds = %424, %473
  %437 = phi i32 [ %415, %424 ], [ %474, %473 ]
  %438 = phi i32 [ %425, %424 ], [ %475, %473 ]
  %439 = phi i32 [ %425, %424 ], [ %476, %473 ]
  %440 = phi ptr [ %430, %424 ], [ %480, %473 ]
  %441 = phi i32 [ 1, %424 ], [ %483, %473 ]
  %442 = phi ptr [ %432, %424 ], [ %481, %473 ]
  %443 = phi ptr [ %372, %424 ], [ %482, %473 ]
  %444 = mul nsw i32 %439, %13
  %445 = icmp sgt i32 %444, %1
  br i1 %445, label %446, label %473

446:                                              ; preds = %436, %462
  %447 = phi i32 [ %463, %462 ], [ %438, %436 ]
  %448 = phi ptr [ %464, %462 ], [ %440, %436 ]
  %449 = phi i32 [ %467, %462 ], [ 0, %436 ]
  %450 = phi ptr [ %466, %462 ], [ %442, %436 ]
  %451 = phi ptr [ %465, %462 ], [ %443, %436 ]
  br i1 %15, label %452, label %462

452:                                              ; preds = %446, %452
  %453 = phi ptr [ %458, %452 ], [ %450, %446 ]
  %454 = phi i32 [ %455, %452 ], [ 0, %446 ]
  %455 = add nuw nsw i32 %454, 1
  %456 = sitofp i32 %455 to float
  %457 = fdiv float %456, %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %453, ptr noundef nonnull align 4 dereferenceable(36) %448, i64 36, i1 false), !tbaa.struct !190
  call void @interp_v4_v4v4(ptr noundef %453, ptr noundef %451, ptr noundef %448, float noundef %457) #23
  %458 = getelementptr inbounds %struct.BPoint, ptr %453, i64 %433
  %459 = icmp eq i32 %455, %1
  br i1 %459, label %460, label %452, !llvm.loop !510

460:                                              ; preds = %452
  %461 = load i32, ptr %288, align 8, !tbaa !52
  br label %462

462:                                              ; preds = %460, %446
  %463 = phi i32 [ %461, %460 ], [ %447, %446 ]
  %464 = getelementptr inbounds %struct.BPoint, ptr %448, i64 1
  %465 = getelementptr inbounds %struct.BPoint, ptr %451, i64 1
  %466 = getelementptr inbounds %struct.BPoint, ptr %450, i64 1
  %467 = add nuw nsw i32 %449, 1
  %468 = mul nsw i32 %463, %13
  %469 = sub nsw i32 %468, %1
  %470 = icmp slt i32 %467, %469
  br i1 %470, label %446, label %471, !llvm.loop !511

471:                                              ; preds = %462
  %472 = load i32, ptr %196, align 4, !tbaa !60
  br label %473

473:                                              ; preds = %471, %436
  %474 = phi i32 [ %437, %436 ], [ %472, %471 ]
  %475 = phi i32 [ %438, %436 ], [ %463, %471 ]
  %476 = phi i32 [ %439, %436 ], [ %463, %471 ]
  %477 = phi ptr [ %443, %436 ], [ %465, %471 ]
  %478 = phi ptr [ %442, %436 ], [ %466, %471 ]
  %479 = phi ptr [ %440, %436 ], [ %464, %471 ]
  %480 = getelementptr inbounds %struct.BPoint, ptr %479, i64 %435
  %481 = getelementptr inbounds %struct.BPoint, ptr %478, i64 %435
  %482 = getelementptr inbounds %struct.BPoint, ptr %477, i64 %435
  %483 = add nuw nsw i32 %441, 1
  %484 = icmp slt i32 %483, %474
  br i1 %484, label %436, label %485, !llvm.loop !512

485:                                              ; preds = %473, %360, %422
  %486 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %487 = load ptr, ptr %298, align 8, !tbaa !61
  call void %486(ptr noundef %487) #23
  store ptr %372, ptr %298, align 8, !tbaa !61
  %488 = load i32, ptr %288, align 8, !tbaa !52
  %489 = mul nsw i32 %488, %13
  %490 = sub nsw i32 %489, %1
  store i32 %490, ptr %288, align 8, !tbaa !52
  %491 = load i32, ptr %196, align 4, !tbaa !60
  %492 = mul nsw i32 %491, %13
  %493 = sub nsw i32 %492, %1
  store i32 %493, ptr %196, align 4, !tbaa !60
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %25) #23
  call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %25) #23
  br label %707

494:                                              ; preds = %357, %506
  %495 = phi i64 [ 0, %357 ], [ %508, %506 ]
  %496 = phi i32 [ 0, %357 ], [ %507, %506 ]
  %497 = getelementptr inbounds i32, ptr %297, i64 %495
  %498 = load i32, ptr %497, align 4, !tbaa !107
  %499 = icmp eq i32 %498, %350
  br i1 %499, label %500, label %506

500:                                              ; preds = %494
  %501 = getelementptr i32, ptr %497, i64 1
  %502 = load i32, ptr %501, align 4, !tbaa !107
  %503 = icmp eq i32 %502, %350
  %504 = select i1 %503, i32 %1, i32 0
  %505 = add nsw i32 %504, %496
  br label %506

506:                                              ; preds = %500, %494
  %507 = phi i32 [ %496, %494 ], [ %505, %500 ]
  %508 = add nuw nsw i64 %495, 1
  %509 = icmp eq i64 %508, %359
  br i1 %509, label %510, label %494, !llvm.loop !513

510:                                              ; preds = %506
  %511 = icmp eq i32 %507, 0
  br i1 %511, label %512, label %517

512:                                              ; preds = %355, %510
  %513 = icmp sgt i32 %350, 1
  br i1 %513, label %514, label %707

514:                                              ; preds = %512
  %515 = add nsw i32 %350, -1
  %516 = zext nneg i32 %515 to i64
  br label %618

517:                                              ; preds = %510
  %518 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %519 = add nsw i32 %507, %352
  %520 = mul nsw i32 %519, %350
  %521 = sext i32 %520 to i64
  %522 = mul nsw i64 %521, 36
  %523 = call ptr %518(i64 noundef %522, ptr noundef nonnull @.str.202) #23
  %524 = load ptr, ptr %298, align 8, !tbaa !61
  %525 = load i32, ptr %196, align 4, !tbaa !60
  %526 = icmp sgt i32 %525, 0
  br i1 %526, label %527, label %613

527:                                              ; preds = %517
  %528 = load i32, ptr %288, align 8, !tbaa !52
  br label %529

529:                                              ; preds = %527, %602
  %530 = phi i32 [ %525, %527 ], [ %603, %602 ]
  %531 = phi i32 [ %528, %527 ], [ %604, %602 ]
  %532 = phi i32 [ %528, %527 ], [ %605, %602 ]
  %533 = phi i64 [ 0, %527 ], [ %608, %602 ]
  %534 = phi ptr [ %524, %527 ], [ %607, %602 ]
  %535 = phi ptr [ %523, %527 ], [ %606, %602 ]
  %536 = icmp sgt i32 %532, 0
  br i1 %536, label %537, label %548

537:                                              ; preds = %529, %537
  %538 = phi ptr [ %542, %537 ], [ %534, %529 ]
  %539 = phi i32 [ %543, %537 ], [ 0, %529 ]
  %540 = phi ptr [ %541, %537 ], [ %535, %529 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %540, ptr noundef nonnull align 4 dereferenceable(36) %538, i64 36, i1 false), !tbaa.struct !190
  call fastcc void @keyIndex_updateBP(ptr noundef nonnull %8, ptr noundef %538, ptr noundef %540, i32 noundef 1) #22
  %541 = getelementptr inbounds %struct.BPoint, ptr %540, i64 1
  %542 = getelementptr inbounds %struct.BPoint, ptr %538, i64 1
  %543 = add nuw nsw i32 %539, 1
  %544 = load i32, ptr %288, align 8, !tbaa !52
  %545 = icmp slt i32 %543, %544
  br i1 %545, label %537, label %546, !llvm.loop !514

546:                                              ; preds = %537
  %547 = load i32, ptr %196, align 4, !tbaa !60
  br label %548

548:                                              ; preds = %546, %529
  %549 = phi i32 [ %530, %529 ], [ %547, %546 ]
  %550 = phi i32 [ %531, %529 ], [ %544, %546 ]
  %551 = phi i32 [ %532, %529 ], [ %544, %546 ]
  %552 = phi ptr [ %535, %529 ], [ %541, %546 ]
  %553 = phi ptr [ %534, %529 ], [ %542, %546 ]
  %554 = add nsw i32 %549, -1
  %555 = sext i32 %554 to i64
  %556 = icmp slt i64 %533, %555
  br i1 %556, label %557, label %602

557:                                              ; preds = %548
  %558 = getelementptr inbounds i32, ptr %297, i64 %533
  %559 = load i32, ptr %558, align 4, !tbaa !107
  %560 = icmp eq i32 %559, %551
  br i1 %560, label %561, label %602

561:                                              ; preds = %557
  %562 = getelementptr i32, ptr %558, i64 1
  %563 = load i32, ptr %562, align 4, !tbaa !107
  %564 = icmp ne i32 %563, %551
  %565 = or i1 %564, %12
  br i1 %565, label %602, label %566

566:                                              ; preds = %561, %593
  %567 = phi i32 [ %595, %593 ], [ %550, %561 ]
  %568 = phi i32 [ %571, %593 ], [ 0, %561 ]
  %569 = phi ptr [ %598, %593 ], [ %553, %561 ]
  %570 = phi ptr [ %596, %593 ], [ %552, %561 ]
  %571 = add nuw nsw i32 %568, 1
  %572 = sitofp i32 %571 to float
  %573 = fdiv float %572, %14
  %574 = sext i32 %567 to i64
  %575 = sub nsw i64 0, %574
  %576 = icmp sgt i32 %567, 0
  br i1 %576, label %577, label %593

577:                                              ; preds = %566
  %578 = getelementptr inbounds %struct.BPoint, ptr %569, i64 %575
  br label %579

579:                                              ; preds = %577, %579
  %580 = phi ptr [ %586, %579 ], [ %569, %577 ]
  %581 = phi i32 [ %587, %579 ], [ 0, %577 ]
  %582 = phi ptr [ %584, %579 ], [ %570, %577 ]
  %583 = phi ptr [ %585, %579 ], [ %578, %577 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %582, ptr noundef nonnull align 4 dereferenceable(36) %583, i64 36, i1 false), !tbaa.struct !190
  call void @interp_v4_v4v4(ptr noundef %582, ptr noundef %583, ptr noundef %580, float noundef %573) #23
  %584 = getelementptr inbounds %struct.BPoint, ptr %582, i64 1
  %585 = getelementptr inbounds %struct.BPoint, ptr %583, i64 1
  %586 = getelementptr inbounds %struct.BPoint, ptr %580, i64 1
  %587 = add nuw nsw i32 %581, 1
  %588 = load i32, ptr %288, align 8, !tbaa !52
  %589 = icmp slt i32 %587, %588
  br i1 %589, label %579, label %590, !llvm.loop !515

590:                                              ; preds = %579
  %591 = sext i32 %588 to i64
  %592 = sub nsw i64 0, %591
  br label %593

593:                                              ; preds = %590, %566
  %594 = phi i64 [ %592, %590 ], [ %575, %566 ]
  %595 = phi i32 [ %588, %590 ], [ %567, %566 ]
  %596 = phi ptr [ %584, %590 ], [ %570, %566 ]
  %597 = phi ptr [ %586, %590 ], [ %569, %566 ]
  %598 = getelementptr inbounds %struct.BPoint, ptr %597, i64 %594
  %599 = icmp eq i32 %571, %1
  br i1 %599, label %600, label %566, !llvm.loop !516

600:                                              ; preds = %593
  %601 = load i32, ptr %196, align 4, !tbaa !60
  br label %602

602:                                              ; preds = %600, %561, %548, %557
  %603 = phi i32 [ %549, %561 ], [ %549, %557 ], [ %549, %548 ], [ %601, %600 ]
  %604 = phi i32 [ %550, %561 ], [ %550, %557 ], [ %550, %548 ], [ %595, %600 ]
  %605 = phi i32 [ %551, %561 ], [ %551, %557 ], [ %551, %548 ], [ %595, %600 ]
  %606 = phi ptr [ %552, %561 ], [ %552, %557 ], [ %552, %548 ], [ %596, %600 ]
  %607 = phi ptr [ %553, %561 ], [ %553, %557 ], [ %553, %548 ], [ %598, %600 ]
  %608 = add nuw nsw i64 %533, 1
  %609 = sext i32 %603 to i64
  %610 = icmp slt i64 %608, %609
  br i1 %610, label %529, label %611, !llvm.loop !517

611:                                              ; preds = %602
  %612 = load ptr, ptr %298, align 8, !tbaa !61
  br label %613

613:                                              ; preds = %611, %517
  %614 = phi ptr [ %612, %611 ], [ %524, %517 ]
  %615 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %615(ptr noundef %614) #23
  store ptr %523, ptr %298, align 8, !tbaa !61
  %616 = load i32, ptr %196, align 4, !tbaa !60
  %617 = add nsw i32 %616, %507
  store i32 %617, ptr %196, align 4, !tbaa !60
  call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %25) #23
  br label %707

618:                                              ; preds = %514, %630
  %619 = phi i64 [ 0, %514 ], [ %632, %630 ]
  %620 = phi i32 [ 0, %514 ], [ %631, %630 ]
  %621 = getelementptr inbounds i32, ptr %292, i64 %619
  %622 = load i32, ptr %621, align 4, !tbaa !107
  %623 = icmp eq i32 %622, %352
  br i1 %623, label %624, label %630

624:                                              ; preds = %618
  %625 = getelementptr i32, ptr %621, i64 1
  %626 = load i32, ptr %625, align 4, !tbaa !107
  %627 = icmp eq i32 %626, %352
  %628 = select i1 %627, i32 %1, i32 0
  %629 = add nsw i32 %628, %620
  br label %630

630:                                              ; preds = %624, %618
  %631 = phi i32 [ %620, %618 ], [ %629, %624 ]
  %632 = add nuw nsw i64 %619, 1
  %633 = icmp eq i64 %632, %516
  br i1 %633, label %634, label %618, !llvm.loop !518

634:                                              ; preds = %630
  %635 = icmp eq i32 %631, 0
  br i1 %635, label %707, label %636

636:                                              ; preds = %634
  %637 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %638 = add nsw i32 %631, %350
  %639 = mul nsw i32 %638, %352
  %640 = sext i32 %639 to i64
  %641 = mul nsw i64 %640, 36
  %642 = call ptr %637(i64 noundef %641, ptr noundef nonnull @.str.202) #23
  %643 = load ptr, ptr %298, align 8, !tbaa !61
  %644 = load i32, ptr %196, align 4, !tbaa !60
  %645 = icmp sgt i32 %644, 0
  br i1 %645, label %646, label %702

646:                                              ; preds = %636
  %647 = load i32, ptr %288, align 8, !tbaa !52
  br label %648

648:                                              ; preds = %646, %693
  %649 = phi i32 [ %694, %693 ], [ %644, %646 ]
  %650 = phi i32 [ %695, %693 ], [ %647, %646 ]
  %651 = phi ptr [ %697, %693 ], [ %643, %646 ]
  %652 = phi i32 [ %698, %693 ], [ 0, %646 ]
  %653 = phi ptr [ %696, %693 ], [ %642, %646 ]
  %654 = icmp sgt i32 %650, 0
  br i1 %654, label %655, label %693

655:                                              ; preds = %648, %685
  %656 = phi i64 [ %688, %685 ], [ 0, %648 ]
  %657 = phi ptr [ %660, %685 ], [ %651, %648 ]
  %658 = phi ptr [ %687, %685 ], [ %653, %648 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %658, ptr noundef nonnull align 4 dereferenceable(36) %657, i64 36, i1 false), !tbaa.struct !190
  call fastcc void @keyIndex_updateBP(ptr noundef nonnull %8, ptr noundef %657, ptr noundef %658, i32 noundef 1) #22
  %659 = getelementptr inbounds %struct.BPoint, ptr %658, i64 1
  %660 = getelementptr inbounds %struct.BPoint, ptr %657, i64 1
  %661 = load i32, ptr %288, align 8, !tbaa !52
  %662 = add nsw i32 %661, -1
  %663 = sext i32 %662 to i64
  %664 = icmp slt i64 %656, %663
  br i1 %664, label %665, label %685

665:                                              ; preds = %655
  %666 = getelementptr inbounds i32, ptr %292, i64 %656
  %667 = load i32, ptr %666, align 4, !tbaa !107
  %668 = load i32, ptr %196, align 4, !tbaa !60
  %669 = icmp eq i32 %667, %668
  br i1 %669, label %670, label %685

670:                                              ; preds = %665
  %671 = getelementptr i32, ptr %666, i64 1
  %672 = load i32, ptr %671, align 4, !tbaa !107
  %673 = icmp ne i32 %672, %667
  %674 = or i1 %673, %12
  br i1 %674, label %685, label %675

675:                                              ; preds = %670, %675
  %676 = phi i32 [ %678, %675 ], [ 0, %670 ]
  %677 = phi ptr [ %681, %675 ], [ %659, %670 ]
  %678 = add nuw nsw i32 %676, 1
  %679 = sitofp i32 %678 to float
  %680 = fdiv float %679, %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %677, ptr noundef nonnull align 4 dereferenceable(36) %657, i64 36, i1 false), !tbaa.struct !190
  call void @interp_v4_v4v4(ptr noundef nonnull %677, ptr noundef nonnull %657, ptr noundef nonnull %660, float noundef %680) #23
  %681 = getelementptr inbounds %struct.BPoint, ptr %677, i64 1
  %682 = icmp eq i32 %678, %1
  br i1 %682, label %683, label %675, !llvm.loop !519

683:                                              ; preds = %675
  %684 = load i32, ptr %288, align 8, !tbaa !52
  br label %685

685:                                              ; preds = %683, %670, %655, %665
  %686 = phi i32 [ %661, %670 ], [ %661, %665 ], [ %661, %655 ], [ %684, %683 ]
  %687 = phi ptr [ %659, %670 ], [ %659, %665 ], [ %659, %655 ], [ %681, %683 ]
  %688 = add nuw nsw i64 %656, 1
  %689 = sext i32 %686 to i64
  %690 = icmp slt i64 %688, %689
  br i1 %690, label %655, label %691, !llvm.loop !520

691:                                              ; preds = %685
  %692 = load i32, ptr %196, align 4, !tbaa !60
  br label %693

693:                                              ; preds = %691, %648
  %694 = phi i32 [ %649, %648 ], [ %692, %691 ]
  %695 = phi i32 [ %650, %648 ], [ %686, %691 ]
  %696 = phi ptr [ %653, %648 ], [ %687, %691 ]
  %697 = phi ptr [ %651, %648 ], [ %660, %691 ]
  %698 = add nuw nsw i32 %652, 1
  %699 = icmp slt i32 %698, %694
  br i1 %699, label %648, label %700, !llvm.loop !521

700:                                              ; preds = %693
  %701 = load ptr, ptr %298, align 8, !tbaa !61
  br label %702

702:                                              ; preds = %700, %636
  %703 = phi ptr [ %701, %700 ], [ %643, %636 ]
  %704 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %704(ptr noundef %703) #23
  store ptr %642, ptr %298, align 8, !tbaa !61
  %705 = load i32, ptr %288, align 8, !tbaa !52
  %706 = add nsw i32 %705, %631
  store i32 %706, ptr %288, align 8, !tbaa !52
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %25) #23
  br label %707

707:                                              ; preds = %512, %613, %702, %634, %485
  %708 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %708(ptr noundef %292) #23
  %709 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %709(ptr noundef %297) #23
  br label %710

710:                                              ; preds = %199, %29, %229, %283, %275, %89, %190, %284, %707
  %711 = load ptr, ptr %25, align 8, !tbaa !65
  %712 = icmp eq ptr %711, null
  br i1 %712, label %713, label %24, !llvm.loop !522

713:                                              ; preds = %710, %2
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_nurb_bezt_get_next(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_nurb_bpoint_get_next(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @interp_v4_v4v4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @BKE_nurb_type_convert(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_nurbList_handles_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_nurbList_handles_recalculate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @isNurbsel_count(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !523 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i16 %4, 1
  %6 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !52
  br i1 %5, label %8, label %44

8:                                                ; preds = %2
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 16
  %14 = load i16, ptr %13, align 8, !tbaa !234
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br label %17

17:                                               ; preds = %10, %40
  %18 = phi i32 [ %7, %10 ], [ %21, %40 ]
  %19 = phi i32 [ 0, %10 ], [ %41, %40 ]
  %20 = phi ptr [ %12, %10 ], [ %42, %40 ]
  %21 = add nsw i32 %18, -1
  %22 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 0, i32 8
  %23 = load i8, ptr %22, align 4, !tbaa !58
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %16, label %27, label %26

26:                                               ; preds = %17
  br i1 %25, label %40, label %38

27:                                               ; preds = %17
  br i1 %25, label %28, label %38

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !56
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 0, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !59
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33, %28, %27, %26
  %39 = add nsw i32 %19, 1
  br label %40

40:                                               ; preds = %38, %33, %26
  %41 = phi i32 [ %39, %38 ], [ %19, %26 ], [ %19, %33 ]
  %42 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 1
  %43 = icmp eq i32 %21, 0
  br i1 %43, label %64, label %17, !llvm.loop !524

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !60
  %47 = mul nsw i32 %46, %7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi i32 [ %61, %52 ], [ 0, %49 ]
  %54 = phi i32 [ %56, %52 ], [ %47, %49 ]
  %55 = phi ptr [ %62, %52 ], [ %51, %49 ]
  %56 = add nsw i32 %54, -1
  %57 = getelementptr inbounds %struct.BPoint, ptr %55, i64 0, i32 3
  %58 = load i16, ptr %57, align 4, !tbaa !63
  %59 = and i16 %58, 1
  %60 = zext nneg i16 %59 to i32
  %61 = add i32 %53, %60
  %62 = getelementptr inbounds %struct.BPoint, ptr %55, i64 1
  %63 = icmp eq i32 %56, 0
  br i1 %63, label %64, label %52, !llvm.loop !525

64:                                               ; preds = %52, %40, %44, %8
  %65 = phi i32 [ 0, %8 ], [ 0, %44 ], [ %41, %40 ], [ %61, %52 ]
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @merge_nurb(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !526 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @object_editcurve_get(ptr noundef %3) #22
  tail call fastcc void @make_selection_list_nurb(ptr noundef %6) #22
  %7 = load ptr, ptr @nsortbase, align 8, !tbaa !92
  %8 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @nsortbase, i64 0, i32 1), align 8, !tbaa !413
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  tail call void @BLI_freelistN(ptr noundef nonnull @nsortbase) #23
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.208) #23
  br label %73

13:                                               ; preds = %2
  %14 = load ptr, ptr %7, align 8, !tbaa !527
  %15 = getelementptr inbounds %struct.NurbSort, ptr %7, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !529
  %17 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !60
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.NurbSort, ptr %14, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !529
  %25 = getelementptr inbounds %struct.Nurb, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !52
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %29, %47, %39, %20
  br label %62

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.Nurb, ptr %24, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !60
  %32 = icmp eq i32 %22, %31
  br i1 %32, label %28, label %59

33:                                               ; preds = %13
  %34 = getelementptr inbounds %struct.NurbSort, ptr %14, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !529
  %36 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !60
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !52
  %42 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !52
  %44 = icmp eq i32 %41, %43
  %45 = icmp eq i32 %41, %18
  %46 = or i1 %45, %44
  br i1 %46, label %28, label %59

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !52
  %52 = icmp eq i32 %49, %51
  %53 = icmp eq i32 %18, %37
  %54 = or i1 %53, %52
  %55 = icmp eq i32 %49, %37
  %56 = or i1 %55, %54
  %57 = icmp eq i32 %18, %51
  %58 = or i1 %57, %56
  br i1 %58, label %28, label %59

59:                                               ; preds = %39, %47, %29
  %60 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !177
  tail call void @BKE_report(ptr noundef %61, i32 noundef 32, ptr noundef nonnull @.str.209) #23
  tail call void @BLI_freelistN(ptr noundef nonnull @nsortbase) #23
  br label %73

62:                                               ; preds = %28, %62
  %63 = phi ptr [ %67, %62 ], [ %14, %28 ]
  %64 = load ptr, ptr %15, align 8, !tbaa !529
  %65 = getelementptr inbounds %struct.NurbSort, ptr %63, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !529
  tail call fastcc void @merge_2_nurb(ptr noundef %1, ptr noundef %5, ptr noundef %6, ptr noundef %64, ptr noundef %66) #22
  %67 = load ptr, ptr %63, align 8, !tbaa !527
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %62, !llvm.loop !530

69:                                               ; preds = %62
  tail call void @BLI_freelistN(ptr noundef nonnull @nsortbase) #23
  %70 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_curve_nurb_active_set(ptr noundef %70, ptr noundef null) #23
  %71 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %71) #23
  %72 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %72, i16 noundef signext 0) #23
  br label %73

73:                                               ; preds = %69, %59, %10
  %74 = phi i32 [ 2, %10 ], [ 2, %59 ], [ 4, %69 ]
  ret i32 %74
}

; Function Attrs: optsize
declare void @BKE_nurb_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_selection_list_nurb(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !531 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1, %33
  %6 = phi ptr [ %34, %33 ], [ %3, %1 ]
  %7 = call i32 @isNurbsel(ptr noundef nonnull %6) #22, !range !66
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %11 = call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.210) #23
  call void @BLI_addhead(ptr noundef nonnull %2, ptr noundef %11) #23
  %12 = getelementptr inbounds %struct.NurbSort, ptr %11, i64 0, i32 2
  store ptr %6, ptr %12, align 8, !tbaa !529
  %13 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.NurbSort, ptr %11, i64 0, i32 3
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i32 [ %14, %16 ], [ %23, %20 ]
  %22 = phi ptr [ %18, %16 ], [ %24, %20 ]
  %23 = add nsw i32 %21, -1
  call fastcc void @add_v3_v3(ptr noundef nonnull %19, ptr noundef %22) #22
  %24 = getelementptr inbounds %struct.BPoint, ptr %22, i64 1
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %20, !llvm.loop !532

26:                                               ; preds = %20
  %27 = load i32, ptr %13, align 8, !tbaa !52
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ %27, %26 ], [ 0, %9 ]
  %30 = getelementptr inbounds %struct.NurbSort, ptr %11, i64 0, i32 3
  %31 = sitofp i32 %29 to float
  %32 = fdiv float 1.000000e+00, %31
  call fastcc void @mul_v3_fl(ptr noundef nonnull %30, float noundef %32) #22
  br label %33

33:                                               ; preds = %5, %28
  %34 = load ptr, ptr %6, align 8, !tbaa !65
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %5, !llvm.loop !533

36:                                               ; preds = %33
  %37 = load ptr, ptr %2, align 8, !tbaa !92
  br label %38

38:                                               ; preds = %36, %1
  %39 = phi ptr [ %37, %36 ], [ null, %1 ]
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef %39) #23
  call void @BLI_addtail(ptr noundef nonnull @nsortbase, ptr noundef %39) #23
  %40 = load ptr, ptr %2, align 8, !tbaa !92
  %41 = icmp eq ptr %40, null
  br i1 %41, label %76, label %42

42:                                               ; preds = %38, %63
  %43 = phi float [ %64, %63 ], [ 0x46293E5940000000, %38 ]
  %44 = phi float [ %65, %63 ], [ 0x46293E5940000000, %38 ]
  %45 = phi ptr [ %66, %63 ], [ null, %38 ]
  %46 = phi ptr [ %67, %63 ], [ null, %38 ]
  %47 = phi ptr [ %68, %63 ], [ %40, %38 ]
  %48 = getelementptr inbounds %struct.NurbSort, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr @nsortbase, align 8, !tbaa !92
  %50 = getelementptr inbounds %struct.NurbSort, ptr %49, i64 0, i32 3
  %51 = call fastcc float @len_v3v3(ptr noundef nonnull %48, ptr noundef nonnull %50) #22
  %52 = fcmp olt float %51, %44
  %53 = select i1 %52, ptr %47, ptr %46
  %54 = select i1 %52, float %51, float %44
  %55 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @nsortbase, i64 0, i32 1), align 8, !tbaa !413
  %56 = getelementptr inbounds %struct.NurbSort, ptr %55, i64 0, i32 3
  %57 = call fastcc float @len_v3v3(ptr noundef nonnull %48, ptr noundef nonnull %56) #22
  %58 = fcmp olt float %57, %43
  %59 = select i1 %58, ptr %47, ptr %45
  %60 = select i1 %58, float %57, float %43
  %61 = load ptr, ptr %47, align 8, !tbaa !527
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %42, %73
  %64 = phi float [ %60, %42 ], [ 0x46293E5940000000, %73 ]
  %65 = phi float [ %54, %42 ], [ 0x46293E5940000000, %73 ]
  %66 = phi ptr [ %59, %42 ], [ null, %73 ]
  %67 = phi ptr [ %53, %42 ], [ null, %73 ]
  %68 = phi ptr [ %61, %42 ], [ %74, %73 ]
  br label %42, !llvm.loop !534

69:                                               ; preds = %42
  %70 = fcmp olt float %54, %60
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef %53) #23
  call void @BLI_addhead(ptr noundef nonnull @nsortbase, ptr noundef %53) #23
  br label %73

72:                                               ; preds = %69
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef %59) #23
  call void @BLI_addtail(ptr noundef nonnull @nsortbase, ptr noundef %59) #23
  br label %73

73:                                               ; preds = %72, %71
  %74 = load ptr, ptr %2, align 8, !tbaa !92
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %63

76:                                               ; preds = %73, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_2_nurb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 !PGOFuncName !535 {
  %6 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = add nsw i32 %7, -1
  %9 = tail call fastcc zeroext i8 @is_u_selected(ptr noundef %3, i32 noundef %8) #22, !range !79
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 12
  %13 = load i16, ptr %12, align 2, !tbaa !73
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i16 1, ptr %12, align 2, !tbaa !73
  br label %16

16:                                               ; preds = %15, %11
  tail call fastcc void @rotate_direction_nurb(ptr noundef nonnull %3) #22
  %17 = load i32, ptr %6, align 8, !tbaa !52
  %18 = add nsw i32 %17, -1
  %19 = tail call fastcc zeroext i8 @is_u_selected(ptr noundef nonnull %3, i32 noundef %18) #22, !range !79
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  tail call fastcc void @rotate_direction_nurb(ptr noundef nonnull %3) #22
  %22 = load i32, ptr %6, align 8, !tbaa !52
  %23 = add nsw i32 %22, -1
  %24 = tail call fastcc zeroext i8 @is_u_selected(ptr noundef nonnull %3, i32 noundef %23) #22, !range !79
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  tail call fastcc void @rotate_direction_nurb(ptr noundef nonnull %3) #22
  %27 = load i32, ptr %6, align 8, !tbaa !52
  %28 = add nsw i32 %27, -1
  %29 = tail call fastcc zeroext i8 @is_u_selected(ptr noundef nonnull %3, i32 noundef %28) #22, !range !79
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !60
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %220, label %35

35:                                               ; preds = %31
  tail call fastcc void @rotate_direction_nurb(ptr noundef nonnull %3) #22
  br label %220

36:                                               ; preds = %16, %26, %21, %5
  %37 = tail call fastcc zeroext i8 @is_u_selected(ptr noundef %4, i32 noundef 0) #22, !range !79
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 12
  %41 = load i16, ptr %40, align 2, !tbaa !73
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i16 1, ptr %40, align 2, !tbaa !73
  br label %44

44:                                               ; preds = %43, %39
  tail call fastcc void @rotate_direction_nurb(ptr noundef nonnull %4) #22
  %45 = tail call fastcc zeroext i8 @is_u_selected(ptr noundef nonnull %4, i32 noundef 0) #22, !range !79
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  tail call fastcc void @rotate_direction_nurb(ptr noundef nonnull %4) #22
  %48 = tail call fastcc zeroext i8 @is_u_selected(ptr noundef nonnull %4, i32 noundef 0) #22, !range !79
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  tail call fastcc void @rotate_direction_nurb(ptr noundef nonnull %4) #22
  %51 = tail call fastcc zeroext i8 @is_u_selected(ptr noundef nonnull %4, i32 noundef 0) #22, !range !79
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, ptr %6, align 8, !tbaa !52
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call fastcc void @rotate_direction_nurb(ptr noundef nonnull %3) #22
  br label %57

57:                                               ; preds = %56, %53
  %58 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 7
  %59 = load i32, ptr %58, align 4, !tbaa !60
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %220, label %61

61:                                               ; preds = %57
  tail call fastcc void @rotate_direction_nurb(ptr noundef nonnull %4) #22
  br label %220

62:                                               ; preds = %44, %50, %47, %36
  %63 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 7
  %64 = load i32, ptr %63, align 4, !tbaa !60
  %65 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !60
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !177
  tail call void @BKE_report(ptr noundef %70, i32 noundef 32, ptr noundef nonnull @.str.209) #23
  br label %220

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 17
  %73 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 17
  %74 = icmp sgt i32 %64, 0
  %75 = load i32, ptr %6, align 8, !tbaa !52
  br i1 %74, label %80, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !52
  %79 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 6
  br label %133

80:                                               ; preds = %71
  %81 = load ptr, ptr %73, align 8, !tbaa !61
  %82 = load ptr, ptr %72, align 8, !tbaa !61
  %83 = sext i32 %75 to i64
  %84 = getelementptr %struct.BPoint, ptr %82, i64 %83
  %85 = getelementptr %struct.BPoint, ptr %84, i64 -1
  %86 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 6
  br label %87

87:                                               ; preds = %80, %87
  %88 = phi i32 [ 0, %80 ], [ %94, %87 ]
  %89 = phi float [ 0.000000e+00, %80 ], [ %93, %87 ]
  %90 = phi ptr [ %85, %80 ], [ %97, %87 ]
  %91 = phi ptr [ %81, %80 ], [ %100, %87 ]
  %92 = tail call fastcc float @len_v3v3(ptr noundef %90, ptr noundef %91) #22
  %93 = fadd float %89, %92
  %94 = add nuw nsw i32 %88, 1
  %95 = load i32, ptr %6, align 8, !tbaa !52
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.BPoint, ptr %90, i64 %96
  %98 = load i32, ptr %86, align 8, !tbaa !52
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.BPoint, ptr %91, i64 %99
  %101 = load i32, ptr %63, align 4, !tbaa !60
  %102 = icmp slt i32 %94, %101
  br i1 %102, label %87, label %103, !llvm.loop !536

103:                                              ; preds = %87
  %104 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 6
  %105 = icmp sgt i32 %101, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %103
  %107 = load i32, ptr %65, align 4, !tbaa !60
  %108 = load ptr, ptr %73, align 8, !tbaa !61
  %109 = add nsw i32 %107, -1
  %110 = mul nsw i32 %109, %98
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.BPoint, ptr %108, i64 %111
  %113 = load ptr, ptr %72, align 8, !tbaa !61
  %114 = getelementptr %struct.BPoint, ptr %113, i64 %96
  %115 = getelementptr %struct.BPoint, ptr %114, i64 -1
  br label %116

116:                                              ; preds = %106, %116
  %117 = phi i32 [ %123, %116 ], [ 0, %106 ]
  %118 = phi float [ %122, %116 ], [ 0.000000e+00, %106 ]
  %119 = phi ptr [ %126, %116 ], [ %115, %106 ]
  %120 = phi ptr [ %130, %116 ], [ %112, %106 ]
  %121 = tail call fastcc float @len_v3v3(ptr noundef %119, ptr noundef %120) #22
  %122 = fadd float %118, %121
  %123 = add nuw nsw i32 %117, 1
  %124 = load i32, ptr %6, align 8, !tbaa !52
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.BPoint, ptr %119, i64 %125
  %127 = load i32, ptr %104, align 8, !tbaa !52
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds %struct.BPoint, ptr %120, i64 %129
  %131 = load i32, ptr %63, align 4, !tbaa !60
  %132 = icmp slt i32 %123, %131
  br i1 %132, label %116, label %133, !llvm.loop !537

133:                                              ; preds = %116, %76, %103
  %134 = phi ptr [ %104, %103 ], [ %79, %76 ], [ %104, %116 ]
  %135 = phi float [ %93, %103 ], [ 0.000000e+00, %76 ], [ %93, %116 ]
  %136 = phi i32 [ %98, %103 ], [ %78, %76 ], [ %127, %116 ]
  %137 = phi i32 [ %95, %103 ], [ %75, %76 ], [ %124, %116 ]
  %138 = phi float [ 0.000000e+00, %103 ], [ 0.000000e+00, %76 ], [ %122, %116 ]
  %139 = phi i32 [ %101, %103 ], [ %64, %76 ], [ %131, %116 ]
  %140 = add nsw i32 %136, %137
  store i32 %140, ptr %6, align 8, !tbaa !52
  %141 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 11
  %142 = load i16, ptr %141, align 8, !tbaa !68
  %143 = icmp slt i16 %142, 3
  %144 = sext i16 %142 to i32
  %145 = icmp sgt i32 %140, %144
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %149

147:                                              ; preds = %133
  %148 = add nsw i16 %142, 1
  store i16 %148, ptr %141, align 8, !tbaa !68
  br label %149

149:                                              ; preds = %147, %133
  %150 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 12
  %151 = load i16, ptr %150, align 2, !tbaa !73
  %152 = icmp slt i16 %151, 3
  %153 = sext i16 %151 to i32
  %154 = icmp sgt i32 %139, %153
  %155 = and i1 %152, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = add nsw i16 %151, 1
  store i16 %157, ptr %150, align 2, !tbaa !73
  br label %158

158:                                              ; preds = %156, %149
  %159 = load ptr, ptr %72, align 8, !tbaa !61
  %160 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %161 = mul nsw i32 %140, %139
  %162 = sext i32 %161 to i64
  %163 = mul nsw i64 %162, 36
  %164 = tail call ptr %160(i64 noundef %163, ptr noundef nonnull @.str.211) #23
  store ptr %164, ptr %72, align 8, !tbaa !61
  %165 = load i32, ptr %63, align 4, !tbaa !60
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %213

167:                                              ; preds = %158
  %168 = fcmp olt float %135, %138
  %169 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 4
  br label %170

170:                                              ; preds = %167, %207
  %171 = phi i32 [ %165, %167 ], [ %208, %207 ]
  %172 = phi i32 [ 0, %167 ], [ %211, %207 ]
  %173 = phi ptr [ %164, %167 ], [ %210, %207 ]
  %174 = phi ptr [ %159, %167 ], [ %209, %207 ]
  %175 = load i32, ptr %6, align 8, !tbaa !52
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %207

177:                                              ; preds = %170
  %178 = load ptr, ptr %73, align 8, !tbaa !61
  %179 = load i32, ptr %134, align 8, !tbaa !52
  %180 = xor i32 %172, -1
  %181 = add i32 %171, %180
  %182 = select i1 %168, i32 %172, i32 %181
  %183 = mul nsw i32 %179, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.BPoint, ptr %178, i64 %184
  br label %186

186:                                              ; preds = %177, %198
  %187 = phi i32 [ %201, %198 ], [ 0, %177 ]
  %188 = phi ptr [ %202, %198 ], [ %173, %177 ]
  %189 = phi ptr [ %200, %198 ], [ %174, %177 ]
  %190 = phi ptr [ %199, %198 ], [ %185, %177 ]
  %191 = icmp slt i32 %187, %137
  %192 = load ptr, ptr %169, align 8, !tbaa !47
  br i1 %191, label %193, label %196

193:                                              ; preds = %186
  tail call fastcc void @keyIndex_updateBP(ptr noundef %192, ptr noundef %189, ptr noundef %188, i32 noundef 1) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %188, ptr noundef nonnull align 4 dereferenceable(36) %189, i64 36, i1 false), !tbaa.struct !190
  %194 = getelementptr inbounds %struct.BPoint, ptr %189, i64 1
  %195 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef %188, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 1) #22, !range !79
  br label %198

196:                                              ; preds = %186
  tail call fastcc void @keyIndex_updateBP(ptr noundef %192, ptr noundef %190, ptr noundef %188, i32 noundef 1) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %188, ptr noundef nonnull align 4 dereferenceable(36) %190, i64 36, i1 false), !tbaa.struct !190
  %197 = getelementptr inbounds %struct.BPoint, ptr %190, i64 1
  br label %198

198:                                              ; preds = %193, %196
  %199 = phi ptr [ %190, %193 ], [ %197, %196 ]
  %200 = phi ptr [ %194, %193 ], [ %189, %196 ]
  %201 = add nuw nsw i32 %187, 1
  %202 = getelementptr inbounds %struct.BPoint, ptr %188, i64 1
  %203 = load i32, ptr %6, align 8, !tbaa !52
  %204 = icmp slt i32 %201, %203
  br i1 %204, label %186, label %205, !llvm.loop !538

205:                                              ; preds = %198
  %206 = load i32, ptr %63, align 4, !tbaa !60
  br label %207

207:                                              ; preds = %205, %170
  %208 = phi i32 [ %171, %170 ], [ %206, %205 ]
  %209 = phi ptr [ %174, %170 ], [ %200, %205 ]
  %210 = phi ptr [ %173, %170 ], [ %202, %205 ]
  %211 = add nuw nsw i32 %172, 1
  %212 = icmp slt i32 %211, %208
  br i1 %212, label %170, label %213, !llvm.loop !539

213:                                              ; preds = %207, %158
  %214 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 2
  %215 = load i16, ptr %214, align 8, !tbaa !50
  %216 = icmp eq i16 %215, 4
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %3) #23
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %3) #23
  br label %218

218:                                              ; preds = %217, %213
  %219 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %219(ptr noundef %159) #23
  tail call void @BLI_remlink(ptr noundef %2, ptr noundef %4) #23
  tail call void @BKE_nurb_free(ptr noundef %4) #23
  br label %220

220:                                              ; preds = %57, %61, %31, %35, %218, %68
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !540 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !70
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #18 !PGOFuncName !541 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #22
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #18 !PGOFuncName !542 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #22
  %3 = tail call float @sqrtf(float noundef %2) #23
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !543 {
  %3 = load float, ptr %0, align 4, !tbaa !70
  %4 = load float, ptr %1, align 4, !tbaa !70
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !70
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !70
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @is_u_selected(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !544 {
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.BPoint, ptr %8, i64 %9
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %12 = add nsw i32 %4, -2
  br label %13

13:                                               ; preds = %6, %22
  %14 = phi i32 [ 0, %6 ], [ %23, %22 ]
  %15 = phi ptr [ %10, %6 ], [ %26, %22 ]
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BPoint, ptr %15, i64 0, i32 3
  %19 = load i16, ptr %18, align 4, !tbaa !63
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13, %17
  %23 = add nuw nsw i32 %14, 1
  %24 = load i32, ptr %11, align 8, !tbaa !52
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.BPoint, ptr %15, i64 %25
  %27 = icmp eq i32 %14, %12
  br i1 %27, label %28, label %13, !llvm.loop !545

28:                                               ; preds = %17, %22, %2
  %29 = phi i8 [ 0, %2 ], [ 0, %22 ], [ 1, %17 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rotate_direction_nurb(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !546 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !60
  store i32 %5, ptr %2, align 8, !tbaa !52
  store i32 %3, ptr %4, align 4, !tbaa !60
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 9
  %7 = load <4 x i16>, ptr %6, align 4, !tbaa !192
  %8 = shufflevector <4 x i16> %7, <4 x i16> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i16> %8, ptr %6, align 4, !tbaa !192
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %10 = load i16, ptr %9, align 4, !tbaa !69
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 14
  %12 = load i16, ptr %11, align 2, !tbaa !74
  store i16 %12, ptr %9, align 4, !tbaa !69
  store i16 %10, ptr %11, align 2, !tbaa !74
  %13 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  store ptr %16, ptr %13, align 8, !tbaa !67
  store ptr %14, ptr %15, align 8, !tbaa !72
  %17 = extractelement <4 x i16> %7, i64 2
  %18 = sext i16 %17 to i32
  %19 = add nsw i32 %3, %18
  %20 = and i16 %10, 1
  %21 = icmp eq i16 %20, 0
  %22 = add nsw i32 %18, -1
  %23 = select i1 %21, i32 0, i32 %22
  %24 = add nsw i32 %19, %23
  tail call fastcc void @switchdirection_knots(ptr noundef %14, i32 noundef %24) #22
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = tail call ptr %25(ptr noundef %27) #23
  %29 = load i32, ptr %4, align 4, !tbaa !60
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %1
  %32 = load ptr, ptr %26, align 8, !tbaa !61
  %33 = load i32, ptr %2, align 8, !tbaa !52
  br label %34

34:                                               ; preds = %31, %58
  %35 = phi i32 [ %29, %31 ], [ %59, %58 ]
  %36 = phi i32 [ %33, %31 ], [ %60, %58 ]
  %37 = phi i64 [ 0, %31 ], [ %62, %58 ]
  %38 = phi ptr [ %32, %31 ], [ %61, %58 ]
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = getelementptr %struct.BPoint, ptr %28, i64 %37
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i32 [ %36, %40 ], [ %54, %42 ]
  %44 = phi ptr [ %38, %40 ], [ %53, %42 ]
  %45 = phi i32 [ 0, %40 ], [ %52, %42 ]
  %46 = xor i32 %45, -1
  %47 = add i32 %43, %46
  %48 = load i32, ptr %4, align 4, !tbaa !60
  %49 = mul nsw i32 %48, %47
  %50 = sext i32 %49 to i64
  %51 = getelementptr %struct.BPoint, ptr %41, i64 %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %44, ptr noundef nonnull align 4 dereferenceable(36) %51, i64 36, i1 false), !tbaa.struct !190
  %52 = add nuw nsw i32 %45, 1
  %53 = getelementptr inbounds %struct.BPoint, ptr %44, i64 1
  %54 = load i32, ptr %2, align 8, !tbaa !52
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %42, label %56, !llvm.loop !547

56:                                               ; preds = %42
  %57 = load i32, ptr %4, align 4, !tbaa !60
  br label %58

58:                                               ; preds = %56, %34
  %59 = phi i32 [ %35, %34 ], [ %57, %56 ]
  %60 = phi i32 [ %36, %34 ], [ %54, %56 ]
  %61 = phi ptr [ %38, %34 ], [ %53, %56 ]
  %62 = add nuw nsw i64 %37, 1
  %63 = sext i32 %59 to i64
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %34, label %65, !llvm.loop !548

65:                                               ; preds = %58, %1
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %66(ptr noundef %28) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @switchdirection_knots(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !549 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %57, label %6

6:                                                ; preds = %2
  %7 = add nsw i32 %1, -1
  %8 = icmp sgt i32 %1, 1
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = lshr i32 %1, 1
  %11 = zext nneg i32 %7 to i64
  %12 = getelementptr inbounds float, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %20, %13 ], [ %0, %9 ]
  %15 = phi i32 [ %19, %13 ], [ %10, %9 ]
  %16 = phi ptr [ %21, %13 ], [ %12, %9 ]
  %17 = load float, ptr %14, align 4, !tbaa !70
  %18 = load float, ptr %16, align 4, !tbaa !70
  store float %18, ptr %14, align 4, !tbaa !70
  store float %17, ptr %16, align 4, !tbaa !70
  %19 = add nsw i32 %15, -1
  %20 = getelementptr inbounds float, ptr %14, i64 1
  %21 = getelementptr inbounds float, ptr %16, i64 -1
  %22 = icmp ne ptr %20, %21
  %23 = icmp ugt i32 %15, 1
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %13, label %25, !llvm.loop !550

25:                                               ; preds = %13, %6
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %27 = sext i32 %1 to i64
  %28 = shl nsw i64 %27, 2
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.212) #23
  br label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %35, %30 ], [ %0, %25 ]
  %32 = phi i32 [ %34, %30 ], [ %1, %25 ]
  %33 = phi ptr [ %40, %30 ], [ %29, %25 ]
  %34 = add nsw i32 %32, -1
  %35 = getelementptr inbounds float, ptr %31, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !70
  %37 = load float, ptr %31, align 4, !tbaa !70
  %38 = fsub float %36, %37
  %39 = tail call float @llvm.fabs.f32(float %38)
  store float %39, ptr %33, align 4, !tbaa !70
  %40 = getelementptr inbounds float, ptr %33, i64 1
  %41 = icmp eq i32 %34, 0
  br i1 %41, label %42, label %30, !llvm.loop !551

42:                                               ; preds = %30
  store float 0.000000e+00, ptr %0, align 4, !tbaa !70
  %43 = icmp eq i32 %7, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %42, %44
  %45 = phi float [ %52, %44 ], [ 0.000000e+00, %42 ]
  %46 = phi ptr [ %49, %44 ], [ %0, %42 ]
  %47 = phi i32 [ %50, %44 ], [ %7, %42 ]
  %48 = phi ptr [ %53, %44 ], [ %29, %42 ]
  %49 = getelementptr inbounds float, ptr %46, i64 1
  %50 = add nsw i32 %47, -1
  %51 = load float, ptr %48, align 4, !tbaa !70
  %52 = fadd float %45, %51
  store float %52, ptr %49, align 4, !tbaa !70
  %53 = getelementptr inbounds float, ptr %48, i64 1
  %54 = icmp eq i32 %50, 0
  br i1 %54, label %55, label %44, !llvm.loop !552

55:                                               ; preds = %44, %42
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %56(ptr noundef %29) #23
  br label %57

57:                                               ; preds = %2, %55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: optsize
declare float @ED_view3d_select_dist_px() local_unnamed_addr #6

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @nurbs_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestNurbvert__doClosest(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #10 !PGOFuncName !553 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 4, !tbaa !63
  br label %24

11:                                               ; preds = %6
  switch i32 %4, label %20 [
    i32 0, label %12
    i32 1, label %16
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %14 = load i8, ptr %13, align 1, !tbaa !56
  %15 = zext i8 %14 to i16
  br label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %18 = load i8, ptr %17, align 4, !tbaa !58
  %19 = zext i8 %18 to i16
  br label %24

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %22 = load i8, ptr %21, align 1, !tbaa !59
  %23 = zext i8 %22 to i16
  br label %24

24:                                               ; preds = %12, %20, %16, %8
  %25 = phi i16 [ %10, %8 ], [ %15, %12 ], [ %19, %16 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 6
  %27 = tail call fastcc float @len_manhattan_v2v2(ptr noundef nonnull %26, ptr noundef %5) #22
  %28 = and i16 %25, 1
  %29 = zext nneg i16 %28 to i32
  %30 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !258
  %32 = icmp eq i32 %31, %29
  %33 = fadd float %27, 5.000000e+00
  %34 = select i1 %32, float %33, float %27
  %35 = icmp ne ptr %3, null
  %36 = icmp eq i32 %4, 1
  %37 = and i1 %35, %36
  %38 = fadd float %34, 3.000000e+00
  %39 = select i1 %37, float %38, float %34
  %40 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 3
  %41 = load float, ptr %40, align 8, !tbaa !255
  %42 = fcmp olt float %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  store float %39, ptr %40, align 8, !tbaa !255
  store ptr %2, ptr %0, align 8, !tbaa !264
  %44 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 1
  store ptr %3, ptr %44, align 8, !tbaa !263
  %45 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 2
  store ptr %1, ptr %45, align 8, !tbaa !262
  %46 = select i1 %35, i32 %4, i32 0
  %47 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 4
  store i32 %46, ptr %47, align 4, !tbaa !257
  br label %48

48:                                               ; preds = %43, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !554 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #22
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !555 {
  %4 = load float, ptr %1, align 4, !tbaa !70
  %5 = load float, ptr %2, align 4, !tbaa !70
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !70
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !556 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !70
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !557 {
  %3 = load float, ptr %1, align 4, !tbaa !70
  %4 = load float, ptr %0, align 4, !tbaa !70
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !70
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !70
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !70
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !70
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !70
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !70
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @addvert_Nurb(ptr noundef %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #5 !PGOFuncName !558 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 8
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #23
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #24
  %14 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  %15 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %14) #23
  call fastcc void @findselectedNurbvert(ptr noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %16 = load ptr, ptr %4, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !50
  %21 = icmp eq i16 %20, 1
  %22 = load ptr, ptr %5, align 8
  %23 = icmp eq ptr %22, null
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = icmp ne i16 %20, 1
  %27 = load ptr, ptr %6, align 8
  %28 = icmp eq ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %97

30:                                               ; preds = %25, %18, %3
  %31 = icmp eq i16 %1, 101
  br i1 %31, label %362, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 31
  %34 = load i32, ptr %33, align 4, !tbaa !202
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call ptr @BLI_findlink(ptr noundef %13, i32 noundef %34) #23
  br label %38

38:                                               ; preds = %32, %36
  %39 = phi ptr [ %37, %36 ], [ %16, %32 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 2
  %43 = load i16, ptr %42, align 8, !tbaa !50
  %44 = icmp eq i16 %43, 1
  br i1 %44, label %45, label %78

45:                                               ; preds = %41, %38
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %47 = call ptr %46(i64 noundef 72, ptr noundef nonnull @.str.214) #23
  %48 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 3
  store float 1.000000e+00, ptr %48, align 4, !tbaa !215
  %49 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 1
  store float 0.000000e+00, ptr %49, align 4, !tbaa !128
  %50 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 7
  %51 = load i8, ptr %50, align 1, !tbaa !56
  %52 = or i8 %51, 1
  store i8 %52, ptr %50, align 1, !tbaa !56
  %53 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 8
  %54 = load i8, ptr %53, align 4, !tbaa !58
  %55 = or i8 %54, 1
  store i8 %55, ptr %53, align 4, !tbaa !58
  %56 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 9
  %57 = load i8, ptr %56, align 1, !tbaa !59
  %58 = or i8 %57, 1
  store i8 %58, ptr %56, align 1, !tbaa !59
  %59 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 5
  store i8 1, ptr %59, align 1, !tbaa !559
  %60 = getelementptr inbounds %struct.BezTriple, ptr %47, i64 0, i32 6
  store i8 1, ptr %60, align 2, !tbaa !560
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %62 = call ptr %61(i64 noundef 88, ptr noundef nonnull @.str.215) #23
  br i1 %40, label %63, label %71

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 2
  store i16 1, ptr %64, align 8, !tbaa !50
  %65 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 27
  %66 = load i16, ptr %65, align 4, !tbaa !561
  %67 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 9
  store i16 %66, ptr %67, align 4, !tbaa !562
  %68 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 5
  %69 = load i16, ptr %68, align 2, !tbaa !352
  %70 = or i16 %69, 1
  store i16 %70, ptr %68, align 2, !tbaa !352
  br label %72

71:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %62, ptr noundef nonnull align 8 dereferenceable(88) %39, i64 88, i1 false)
  br label %72

72:                                               ; preds = %71, %63
  call void @BLI_addtail(ptr noundef %13, ptr noundef nonnull %62) #23
  %73 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 18
  store ptr %47, ptr %73, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 6
  store i32 1, ptr %74, align 8, !tbaa !52
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %8, align 8, !tbaa !70
  %75 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %75, align 8, !tbaa !70
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %47, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %76, ptr noundef %2) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %47, ptr noundef nonnull %76, ptr noundef nonnull %8) #22
  %77 = getelementptr inbounds [3 x [3 x float]], ptr %47, i64 0, i64 2
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %77, ptr noundef nonnull %76, ptr noundef nonnull %8) #22
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %47) #23
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %76) #23
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %77) #23
  store ptr %62, ptr %4, align 8, !tbaa !65
  br label %346

78:                                               ; preds = %41
  %79 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 7
  %80 = load i32, ptr %79, align 4, !tbaa !60
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %362

82:                                               ; preds = %78
  %83 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %84 = call ptr %83(i64 noundef 36, ptr noundef nonnull @.str.216) #23
  %85 = getelementptr inbounds %struct.BPoint, ptr %84, i64 0, i32 5
  store float 1.000000e+00, ptr %85, align 4, !tbaa !217
  %86 = getelementptr inbounds %struct.BPoint, ptr %84, i64 0, i32 1
  store float 0.000000e+00, ptr %86, align 4, !tbaa !130
  %87 = getelementptr inbounds %struct.BPoint, ptr %84, i64 0, i32 3
  %88 = load i16, ptr %87, align 4, !tbaa !63
  %89 = or i16 %88, 1
  store i16 %89, ptr %87, align 4, !tbaa !63
  %90 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %91 = call ptr %90(i64 noundef 88, ptr noundef nonnull @.str.215) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %91, ptr noundef nonnull align 8 dereferenceable(88) %39, i64 88, i1 false)
  call void @BLI_addtail(ptr noundef %13, ptr noundef %91) #23
  %92 = getelementptr inbounds %struct.Nurb, ptr %91, i64 0, i32 17
  store ptr %84, ptr %92, align 8, !tbaa !61
  %93 = getelementptr inbounds %struct.Nurb, ptr %91, i64 0, i32 11
  store i16 2, ptr %93, align 8, !tbaa !68
  %94 = getelementptr inbounds %struct.Nurb, ptr %91, i64 0, i32 6
  store i32 1, ptr %94, align 8, !tbaa !52
  call void @mul_v3_m4v3(ptr noundef %84, ptr noundef nonnull %7, ptr noundef %2) #23
  %95 = getelementptr inbounds [4 x float], ptr %84, i64 0, i64 3
  store float 1.000000e+00, ptr %95, align 4, !tbaa !70
  %96 = getelementptr inbounds %struct.Nurb, ptr %91, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %96, i8 0, i64 16, i1 false)
  call void @BKE_nurb_knot_calc_u(ptr noundef %91) #23
  store ptr %91, ptr %4, align 8, !tbaa !65
  br label %346

97:                                               ; preds = %25
  br i1 %21, label %98, label %257

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 18
  %100 = load ptr, ptr %99, align 8, !tbaa !53
  %101 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %102 = load i32, ptr %101, align 8, !tbaa !52
  %103 = sext i32 %102 to i64
  %104 = getelementptr %struct.BezTriple, ptr %100, i64 %103
  %105 = getelementptr %struct.BezTriple, ptr %104, i64 -1
  %106 = icmp eq ptr %22, %105
  br i1 %106, label %147, label %107

107:                                              ; preds = %98
  %108 = icmp eq ptr %22, %100
  br i1 %108, label %109, label %145

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 7
  %111 = load i8, ptr %110, align 1, !tbaa !56
  %112 = and i8 %111, -2
  store i8 %112, ptr %110, align 1, !tbaa !56
  %113 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 8
  %114 = load i8, ptr %113, align 4, !tbaa !58
  %115 = and i8 %114, -2
  store i8 %115, ptr %113, align 4, !tbaa !58
  %116 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 9
  %117 = load i8, ptr %116, align 1, !tbaa !59
  %118 = and i8 %117, -2
  store i8 %118, ptr %116, align 1, !tbaa !59
  %119 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %120 = add nsw i32 %102, 1
  %121 = sext i32 %120 to i64
  %122 = mul nsw i64 %121, 72
  %123 = call ptr %119(i64 noundef %122, ptr noundef nonnull @.str.214) #23
  %124 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 1
  %125 = load i32, ptr %101, align 8, !tbaa !52
  call void @ED_curve_beztcpy(ptr noundef %13, ptr noundef nonnull %124, ptr noundef %22, i32 noundef %125) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %123, ptr noundef nonnull align 4 dereferenceable(72) %22, i64 72, i1 false), !tbaa.struct !563
  %126 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 0, i32 7
  %127 = load i8, ptr %126, align 1, !tbaa !56
  %128 = or i8 %127, 1
  store i8 %128, ptr %126, align 1, !tbaa !56
  %129 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 0, i32 8
  %130 = load i8, ptr %129, align 4, !tbaa !58
  %131 = or i8 %130, 1
  store i8 %131, ptr %129, align 4, !tbaa !58
  %132 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 0, i32 9
  %133 = load i8, ptr %132, align 1, !tbaa !59
  %134 = or i8 %133, 1
  store i8 %134, ptr %132, align 1, !tbaa !59
  %135 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 0, i32 5
  %136 = load i8, ptr %135, align 1, !tbaa !559
  %137 = getelementptr inbounds %struct.BezTriple, ptr %123, i64 0, i32 6
  store i8 %136, ptr %137, align 2, !tbaa !560
  %138 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %138) #22
  %139 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %140 = load ptr, ptr %99, align 8, !tbaa !53
  call void %139(ptr noundef %140) #23
  store ptr %123, ptr %99, align 8, !tbaa !53
  store ptr %124, ptr %5, align 8, !tbaa !65
  %141 = load i32, ptr %101, align 8, !tbaa !52
  %142 = icmp sgt i32 %141, 1
  %143 = select i1 %142, ptr %123, ptr null
  %144 = select i1 %142, ptr %124, ptr null
  br label %219

145:                                              ; preds = %107
  %146 = icmp eq i16 %1, 101
  br i1 %146, label %362, label %190

147:                                              ; preds = %98
  %148 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 7
  %149 = load i8, ptr %148, align 1, !tbaa !56
  %150 = and i8 %149, -2
  store i8 %150, ptr %148, align 1, !tbaa !56
  %151 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 8
  %152 = load i8, ptr %151, align 4, !tbaa !58
  %153 = and i8 %152, -2
  store i8 %153, ptr %151, align 4, !tbaa !58
  %154 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 9
  %155 = load i8, ptr %154, align 1, !tbaa !59
  %156 = and i8 %155, -2
  store i8 %156, ptr %154, align 1, !tbaa !59
  %157 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %158 = add nsw i32 %102, 1
  %159 = sext i32 %158 to i64
  %160 = mul nsw i64 %159, 72
  %161 = call ptr %157(i64 noundef %160, ptr noundef nonnull @.str.214) #23
  %162 = load ptr, ptr %99, align 8, !tbaa !53
  %163 = load i32, ptr %101, align 8, !tbaa !52
  call void @ED_curve_beztcpy(ptr noundef %13, ptr noundef %161, ptr noundef %162, i32 noundef %163) #22
  %164 = load i32, ptr %101, align 8, !tbaa !52
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.BezTriple, ptr %161, i64 %165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %166, ptr noundef nonnull align 4 dereferenceable(72) %22, i64 72, i1 false), !tbaa.struct !563
  %167 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %167) #22
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %169 = load ptr, ptr %99, align 8, !tbaa !53
  call void %168(ptr noundef %169) #23
  store ptr %161, ptr %99, align 8, !tbaa !53
  %170 = load i32, ptr %101, align 8, !tbaa !52
  %171 = sext i32 %170 to i64
  %172 = getelementptr %struct.BezTriple, ptr %161, i64 %171
  %173 = getelementptr inbounds %struct.BezTriple, ptr %161, i64 %171, i32 7
  %174 = load i8, ptr %173, align 1, !tbaa !56
  %175 = or i8 %174, 1
  store i8 %175, ptr %173, align 1, !tbaa !56
  %176 = getelementptr inbounds %struct.BezTriple, ptr %161, i64 %171, i32 8
  %177 = load i8, ptr %176, align 4, !tbaa !58
  %178 = or i8 %177, 1
  store i8 %178, ptr %176, align 4, !tbaa !58
  %179 = getelementptr inbounds %struct.BezTriple, ptr %161, i64 %171, i32 9
  %180 = load i8, ptr %179, align 1, !tbaa !59
  %181 = or i8 %180, 1
  store i8 %181, ptr %179, align 1, !tbaa !59
  %182 = getelementptr inbounds %struct.BezTriple, ptr %161, i64 %171, i32 6
  %183 = load i8, ptr %182, align 2, !tbaa !560
  %184 = getelementptr inbounds %struct.BezTriple, ptr %161, i64 %171, i32 5
  store i8 %183, ptr %184, align 1, !tbaa !559
  %185 = getelementptr %struct.BezTriple, ptr %172, i64 -1
  store ptr %185, ptr %5, align 8, !tbaa !65
  %186 = icmp sgt i32 %170, 1
  %187 = select i1 %186, ptr %185, ptr null
  %188 = select i1 %186, ptr %172, ptr null
  %189 = icmp eq ptr %185, null
  br i1 %189, label %346, label %219

190:                                              ; preds = %145
  %191 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 7
  %192 = load i8, ptr %191, align 1, !tbaa !56
  %193 = and i8 %192, -2
  store i8 %193, ptr %191, align 1, !tbaa !56
  %194 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 8
  %195 = load i8, ptr %194, align 4, !tbaa !58
  %196 = and i8 %195, -2
  store i8 %196, ptr %194, align 4, !tbaa !58
  %197 = getelementptr inbounds %struct.BezTriple, ptr %22, i64 0, i32 9
  %198 = load i8, ptr %197, align 1, !tbaa !59
  %199 = and i8 %198, -2
  store i8 %199, ptr %197, align 1, !tbaa !59
  %200 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %201 = call ptr %200(i64 noundef 72, ptr noundef nonnull @.str.214) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %201, ptr noundef nonnull align 4 dereferenceable(72) %22, i64 72, i1 false), !tbaa.struct !563
  %202 = getelementptr inbounds %struct.BezTriple, ptr %201, i64 0, i32 7
  %203 = load i8, ptr %202, align 1, !tbaa !56
  %204 = or i8 %203, 1
  store i8 %204, ptr %202, align 1, !tbaa !56
  %205 = getelementptr inbounds %struct.BezTriple, ptr %201, i64 0, i32 8
  %206 = load i8, ptr %205, align 4, !tbaa !58
  %207 = or i8 %206, 1
  store i8 %207, ptr %205, align 4, !tbaa !58
  %208 = getelementptr inbounds %struct.BezTriple, ptr %201, i64 0, i32 9
  %209 = load i8, ptr %208, align 1, !tbaa !59
  %210 = or i8 %209, 1
  store i8 %210, ptr %208, align 1, !tbaa !59
  %211 = getelementptr inbounds %struct.BezTriple, ptr %201, i64 0, i32 5
  %212 = load i8, ptr %211, align 1, !tbaa !559
  %213 = getelementptr inbounds %struct.BezTriple, ptr %201, i64 0, i32 6
  store i8 %212, ptr %213, align 2, !tbaa !560
  %214 = getelementptr inbounds [3 x [3 x float]], ptr %22, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %214) #22
  %215 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %216 = call ptr %215(i64 noundef 88, ptr noundef nonnull @.str.215) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %216, ptr noundef nonnull align 8 dereferenceable(88) %16, i64 88, i1 false)
  call void @BLI_addtail(ptr noundef %13, ptr noundef %216) #23
  %217 = getelementptr inbounds %struct.Nurb, ptr %216, i64 0, i32 18
  store ptr %201, ptr %217, align 8, !tbaa !53
  %218 = getelementptr inbounds %struct.Nurb, ptr %216, i64 0, i32 6
  store i32 1, ptr %218, align 8, !tbaa !52
  store ptr %216, ptr %4, align 8, !tbaa !65
  store ptr %201, ptr %5, align 8, !tbaa !65
  br label %234

219:                                              ; preds = %147, %109
  %220 = phi i32 [ %141, %109 ], [ %170, %147 ]
  %221 = phi ptr [ %124, %109 ], [ %185, %147 ]
  %222 = phi ptr [ %123, %109 ], [ %172, %147 ]
  %223 = phi ptr [ null, %109 ], [ %187, %147 ]
  %224 = phi ptr [ %143, %109 ], [ %188, %147 ]
  %225 = phi ptr [ %144, %109 ], [ null, %147 ]
  %226 = add nsw i32 %220, 1
  store i32 %226, ptr %101, align 8, !tbaa !52
  %227 = icmp eq i16 %1, 101
  br i1 %227, label %228, label %234

228:                                              ; preds = %219
  call fastcc void @copy_v3_v3(ptr noundef %222, ptr noundef nonnull %221) #22
  %229 = getelementptr inbounds [3 x [3 x float]], ptr %222, i64 0, i64 1
  %230 = getelementptr inbounds [3 x [3 x float]], ptr %221, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %229, ptr noundef nonnull %230) #22
  %231 = getelementptr inbounds [3 x [3 x float]], ptr %222, i64 0, i64 2
  %232 = load ptr, ptr %5, align 8, !tbaa !65
  %233 = getelementptr inbounds [3 x [3 x float]], ptr %232, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %231, ptr noundef nonnull %233) #22
  br label %346

234:                                              ; preds = %190, %219
  %235 = phi ptr [ %216, %190 ], [ null, %219 ]
  %236 = phi ptr [ null, %190 ], [ %225, %219 ]
  %237 = phi ptr [ null, %190 ], [ %224, %219 ]
  %238 = phi ptr [ null, %190 ], [ %223, %219 ]
  %239 = phi ptr [ %201, %190 ], [ %222, %219 ]
  %240 = phi i1 [ false, %190 ], [ true, %219 ]
  %241 = getelementptr inbounds [3 x [3 x float]], ptr %239, i64 0, i64 1
  call void @mul_v3_m4v3(ptr noundef nonnull %241, ptr noundef nonnull %7, ptr noundef %2) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %241, ptr noundef nonnull %8) #22
  %242 = icmp eq ptr %237, null
  br i1 %242, label %248, label %243

243:                                              ; preds = %234
  %244 = getelementptr inbounds %struct.BezTriple, ptr %237, i64 0, i32 5
  %245 = load i8, ptr %244, align 1, !tbaa !559
  %246 = getelementptr inbounds %struct.BezTriple, ptr %237, i64 0, i32 6
  %247 = load i8, ptr %246, align 2, !tbaa !560
  store i8 1, ptr %246, align 2, !tbaa !560
  store i8 1, ptr %244, align 1, !tbaa !559
  call void @BKE_nurb_handle_calc(ptr noundef nonnull %237, ptr noundef %238, ptr noundef %236, i8 noundef zeroext 0) #23
  store i8 %245, ptr %244, align 1, !tbaa !559
  store i8 %247, ptr %246, align 2, !tbaa !560
  br label %253

248:                                              ; preds = %234
  %249 = load ptr, ptr %5, align 8, !tbaa !65
  call fastcc void @add_v3_v3v3(ptr noundef %239, ptr noundef %249, ptr noundef nonnull %8) #22
  %250 = getelementptr inbounds [3 x [3 x float]], ptr %239, i64 0, i64 2
  %251 = load ptr, ptr %5, align 8, !tbaa !65
  %252 = getelementptr inbounds [3 x [3 x float]], ptr %251, i64 0, i64 2
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %250, ptr noundef nonnull %252, ptr noundef nonnull %8) #22
  br label %253

253:                                              ; preds = %248, %243
  br i1 %240, label %255, label %254

254:                                              ; preds = %253
  call void @BKE_nurb_handles_calc(ptr noundef nonnull %235) #23
  br label %346

255:                                              ; preds = %253
  %256 = load ptr, ptr %4, align 8, !tbaa !65
  call void @BKE_nurb_handles_calc(ptr noundef %256) #23
  br label %346

257:                                              ; preds = %97
  %258 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 7
  %259 = load i32, ptr %258, align 4, !tbaa !60
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %362

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 17
  %263 = load ptr, ptr %262, align 8, !tbaa !61
  %264 = getelementptr inbounds %struct.Nurb, ptr %16, i64 0, i32 6
  %265 = load i32, ptr %264, align 8, !tbaa !52
  %266 = sext i32 %265 to i64
  %267 = getelementptr %struct.BPoint, ptr %263, i64 %266
  %268 = getelementptr %struct.BPoint, ptr %267, i64 -1
  %269 = icmp eq ptr %27, %268
  br i1 %269, label %270, label %291

270:                                              ; preds = %261
  %271 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 3
  store i16 0, ptr %271, align 4, !tbaa !63
  %272 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %273 = add nsw i32 %265, 1
  %274 = sext i32 %273 to i64
  %275 = mul nsw i64 %274, 36
  %276 = call ptr %272(i64 noundef %275, ptr noundef nonnull @.str.217) #23
  %277 = load ptr, ptr %262, align 8, !tbaa !61
  %278 = load i32, ptr %264, align 8, !tbaa !52
  call void @ED_curve_bpcpy(ptr noundef %13, ptr noundef %276, ptr noundef %277, i32 noundef %278) #22
  %279 = load i32, ptr %264, align 8, !tbaa !52
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.BPoint, ptr %276, i64 %280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %281, ptr noundef nonnull align 4 dereferenceable(36) %27, i64 36, i1 false), !tbaa.struct !190
  %282 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %283 = load ptr, ptr %262, align 8, !tbaa !61
  call void %282(ptr noundef %283) #23
  store ptr %276, ptr %262, align 8, !tbaa !61
  %284 = load i32, ptr %264, align 8, !tbaa !52
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.BPoint, ptr %276, i64 %285
  %287 = getelementptr inbounds %struct.BPoint, ptr %276, i64 %285, i32 3
  %288 = load i16, ptr %287, align 4, !tbaa !63
  %289 = or i16 %288, 1
  store i16 %289, ptr %287, align 4, !tbaa !63
  %290 = getelementptr inbounds %struct.BPoint, ptr %286, i64 -1
  br label %309

291:                                              ; preds = %261
  %292 = icmp eq ptr %27, %263
  br i1 %292, label %293, label %307

293:                                              ; preds = %291
  %294 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 3
  store i16 0, ptr %294, align 4, !tbaa !63
  %295 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %296 = add nsw i32 %265, 1
  %297 = sext i32 %296 to i64
  %298 = mul nsw i64 %297, 36
  %299 = call ptr %295(i64 noundef %298, ptr noundef nonnull @.str.218) #23
  %300 = getelementptr inbounds %struct.BPoint, ptr %299, i64 1
  %301 = load i32, ptr %264, align 8, !tbaa !52
  call void @ED_curve_bpcpy(ptr noundef %13, ptr noundef nonnull %300, ptr noundef %27, i32 noundef %301) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %299, ptr noundef nonnull align 4 dereferenceable(36) %27, i64 36, i1 false), !tbaa.struct !190
  %302 = getelementptr inbounds %struct.BPoint, ptr %299, i64 0, i32 3
  %303 = load i16, ptr %302, align 4, !tbaa !63
  %304 = or i16 %303, 1
  store i16 %304, ptr %302, align 4, !tbaa !63
  %305 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %306 = load ptr, ptr %262, align 8, !tbaa !61
  call void %305(ptr noundef %306) #23
  store ptr %299, ptr %262, align 8, !tbaa !61
  br label %309

307:                                              ; preds = %291
  %308 = icmp eq i16 %1, 101
  br i1 %308, label %362, label %332

309:                                              ; preds = %293, %270
  %310 = phi ptr [ %300, %293 ], [ %290, %270 ]
  %311 = phi ptr [ %299, %293 ], [ %286, %270 ]
  store ptr %310, ptr %6, align 8, !tbaa !65
  %312 = icmp eq i16 %1, 101
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  call fastcc void @copy_v3_v3(ptr noundef nonnull %311, ptr noundef nonnull %310) #22
  br label %327

314:                                              ; preds = %309
  call void @mul_v3_m4v3(ptr noundef nonnull %311, ptr noundef nonnull %7, ptr noundef %2) #23
  %315 = getelementptr inbounds [4 x float], ptr %311, i64 0, i64 3
  store float 1.000000e+00, ptr %315, align 4, !tbaa !70
  %316 = load ptr, ptr %4, align 8, !tbaa !65
  %317 = getelementptr inbounds %struct.Nurb, ptr %316, i64 0, i32 11
  %318 = load i16, ptr %317, align 8, !tbaa !68
  %319 = icmp slt i16 %318, 4
  br i1 %319, label %320, label %327

320:                                              ; preds = %314
  %321 = sext i16 %318 to i32
  %322 = getelementptr inbounds %struct.Nurb, ptr %316, i64 0, i32 6
  %323 = load i32, ptr %322, align 8, !tbaa !52
  %324 = icmp slt i32 %323, %321
  br i1 %324, label %327, label %325

325:                                              ; preds = %320
  %326 = add nsw i16 %318, 1
  store i16 %326, ptr %317, align 8, !tbaa !68
  br label %327

327:                                              ; preds = %325, %320, %314, %313
  %328 = phi ptr [ %16, %313 ], [ %316, %314 ], [ %316, %320 ], [ %316, %325 ]
  %329 = getelementptr inbounds %struct.Nurb, ptr %328, i64 0, i32 6
  %330 = load i32, ptr %329, align 8, !tbaa !52
  %331 = add nsw i32 %330, 1
  store i32 %331, ptr %329, align 8, !tbaa !52
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %328) #23
  br label %346

332:                                              ; preds = %307
  %333 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 3
  store i16 0, ptr %333, align 4, !tbaa !63
  %334 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %335 = call ptr %334(i64 noundef 36, ptr noundef nonnull @.str.216) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %335, ptr noundef nonnull align 4 dereferenceable(36) %27, i64 36, i1 false), !tbaa.struct !190
  %336 = getelementptr inbounds %struct.BPoint, ptr %335, i64 0, i32 3
  %337 = load i16, ptr %336, align 4, !tbaa !63
  %338 = or i16 %337, 1
  store i16 %338, ptr %336, align 4, !tbaa !63
  %339 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %340 = call ptr %339(i64 noundef 88, ptr noundef nonnull @.str.215) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %340, ptr noundef nonnull align 8 dereferenceable(88) %16, i64 88, i1 false)
  call void @BLI_addtail(ptr noundef %13, ptr noundef %340) #23
  %341 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 17
  store ptr %335, ptr %341, align 8, !tbaa !61
  %342 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 11
  store i16 2, ptr %342, align 8, !tbaa !68
  %343 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 6
  store i32 1, ptr %343, align 8, !tbaa !52
  %344 = getelementptr inbounds %struct.Nurb, ptr %340, i64 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %344, i8 0, i64 16, i1 false)
  store ptr %340, ptr %4, align 8, !tbaa !65
  store ptr %335, ptr %6, align 8, !tbaa !65
  call void @mul_v3_m4v3(ptr noundef nonnull %335, ptr noundef nonnull %7, ptr noundef %2) #23
  %345 = getelementptr inbounds [4 x float], ptr %335, i64 0, i64 3
  store float 1.000000e+00, ptr %345, align 4, !tbaa !70
  call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %340) #23
  br label %346

346:                                              ; preds = %82, %72, %332, %327, %228, %254, %255, %147
  %347 = phi ptr [ %172, %147 ], [ %239, %255 ], [ %239, %254 ], [ %222, %228 ], [ null, %327 ], [ null, %332 ], [ null, %82 ], [ %47, %72 ]
  %348 = phi ptr [ null, %147 ], [ null, %255 ], [ null, %254 ], [ null, %228 ], [ %311, %327 ], [ %335, %332 ], [ %84, %82 ], [ null, %72 ]
  %349 = load ptr, ptr %4, align 8, !tbaa !65
  %350 = getelementptr inbounds %struct.Nurb, ptr %349, i64 0, i32 18
  %351 = load ptr, ptr %350, align 8, !tbaa !53
  %352 = icmp eq ptr %351, null
  %353 = select i1 %352, ptr %348, ptr %347
  call void @BKE_curve_nurb_vert_active_set(ptr noundef nonnull %11, ptr noundef nonnull %349, ptr noundef %353) #23
  %354 = load ptr, ptr %4, align 8, !tbaa !65
  call void @BKE_nurb_test2D(ptr noundef %354) #23
  %355 = load ptr, ptr %10, align 8, !tbaa !46
  %356 = call i32 @ED_curve_updateAnimPaths(ptr noundef %355) #22, !range !66
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %346
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef nonnull %9) #23
  br label %359

359:                                              ; preds = %358, %346
  %360 = load ptr, ptr %10, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %360) #23
  %361 = load ptr, ptr %10, align 8, !tbaa !46
  call void @DAG_id_tag_update(ptr noundef %361, i16 noundef signext 0) #23
  br label %362

362:                                              ; preds = %307, %145, %30, %78, %257, %359
  %363 = phi i32 [ 4, %359 ], [ 2, %257 ], [ 2, %78 ], [ 2, %30 ], [ 2, %145 ], [ 2, %307 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret i32 %363
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @findselectedNurbvert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #9 !PGOFuncName !564 {
  store ptr null, ptr %1, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  store ptr null, ptr %3, align 8, !tbaa !65
  %5 = load ptr, ptr %0, align 8, !tbaa !65
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
  %24 = load i8, ptr %23, align 1, !tbaa !56
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  %29 = load i8, ptr %28, align 4, !tbaa !58
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 9
  %34 = load i8, ptr %33, align 1, !tbaa !59
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %32, %27, %19
  %38 = load ptr, ptr %1, align 8, !tbaa !65
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %8
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %37
  %43 = load ptr, ptr %2, align 8, !tbaa !65
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr %3, align 8, !tbaa !65
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %42
  store ptr null, ptr %3, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  br label %50

49:                                               ; preds = %45
  store ptr %21, ptr %2, align 8, !tbaa !65
  store ptr %8, ptr %1, align 8, !tbaa !65
  br label %50

50:                                               ; preds = %49, %48, %32
  %51 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %52 = icmp eq i32 %22, 0
  br i1 %52, label %85, label %19, !llvm.loop !565

53:                                               ; preds = %7
  %54 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 7
  %55 = load i32, ptr %54, align 4, !tbaa !60
  %56 = mul nsw i32 %55, %13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !61
  br label %61

61:                                               ; preds = %58, %82
  %62 = phi i32 [ %64, %82 ], [ %56, %58 ]
  %63 = phi ptr [ %83, %82 ], [ %60, %58 ]
  %64 = add nsw i32 %62, -1
  %65 = getelementptr inbounds %struct.BPoint, ptr %63, i64 0, i32 3
  %66 = load i16, ptr %65, align 4, !tbaa !63
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %61
  %70 = load ptr, ptr %1, align 8, !tbaa !65
  %71 = icmp eq ptr %70, null
  %72 = icmp eq ptr %70, %8
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load ptr, ptr %2, align 8, !tbaa !65
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load ptr, ptr %3, align 8, !tbaa !65
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77, %74
  store ptr null, ptr %3, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !65
  br label %82

81:                                               ; preds = %77
  store ptr %63, ptr %3, align 8, !tbaa !65
  store ptr %8, ptr %1, align 8, !tbaa !65
  br label %82

82:                                               ; preds = %81, %80, %61
  %83 = getelementptr inbounds %struct.BPoint, ptr %63, i64 1
  %84 = icmp eq i32 %64, 0
  br i1 %84, label %85, label %61, !llvm.loop !566

85:                                               ; preds = %82, %50, %53, %14
  %86 = load ptr, ptr %8, align 8, !tbaa !65
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %7, !llvm.loop !567

88:                                               ; preds = %69, %37
  %89 = phi ptr [ %1, %37 ], [ %3, %69 ]
  %90 = phi ptr [ %3, %37 ], [ %2, %69 ]
  %91 = phi ptr [ %2, %37 ], [ %1, %69 ]
  store ptr null, ptr %89, align 8, !tbaa !65
  store ptr null, ptr %90, align 8, !tbaa !65
  store ptr null, ptr %91, align 8, !tbaa !65
  br label %92

92:                                               ; preds = %85, %88, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !568 {
  %4 = load float, ptr %1, align 4, !tbaa !70
  %5 = load float, ptr %2, align 4, !tbaa !70
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !70
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !70
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !70
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !70
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !70
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !70
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @snapObjectsContext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @select_adjacent_cp(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #9 !PGOFuncName !569 {
  %3 = sext i16 %1 to i32
  %4 = icmp eq i16 %1, 0
  br i1 %4, label %115, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %115, label %8

8:                                                ; preds = %5
  %9 = icmp slt i16 %1, 0
  %10 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %11 = sext i16 %1 to i64
  br label %12

12:                                               ; preds = %8, %112
  %13 = phi ptr [ %6, %8 ], [ %113, %112 ]
  %14 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !50
  %16 = icmp eq i16 %15, 1
  %17 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !52
  br i1 %16, label %19, label %64

19:                                               ; preds = %12
  %20 = icmp ne i32 %18, 0
  %21 = icmp sgt i32 %18, %10
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %112

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = sext i32 %18 to i64
  %27 = getelementptr %struct.BezTriple, ptr %25, i64 %26
  %28 = getelementptr %struct.BezTriple, ptr %27, i64 -1
  %29 = select i1 %9, ptr %28, ptr %25
  %30 = sdiv i32 %3, %10
  %31 = sub nsw i32 %3, %30
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 0, %32
  br label %34

34:                                               ; preds = %23, %57
  %35 = phi i32 [ %18, %23 ], [ %38, %57 ]
  %36 = phi ptr [ %29, %23 ], [ %60, %57 ]
  %37 = phi i8 [ 0, %23 ], [ %58, %57 ]
  %38 = add nsw i32 %35, -1
  %39 = icmp eq i8 %37, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 10
  %42 = load i8, ptr %41, align 2, !tbaa !157
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !58
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 %11, i32 8
  %51 = load i8, ptr %50, align 4, !tbaa !58
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 %11
  %56 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %55, i8 noundef zeroext 1, i32 noundef 0) #22
  br label %57

57:                                               ; preds = %34, %40, %44, %54, %49
  %58 = phi i8 [ %56, %54 ], [ 0, %49 ], [ 0, %44 ], [ 0, %40 ], [ 0, %34 ]
  %59 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 %11
  %60 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 %33
  %61 = icmp ne i32 %38, 0
  %62 = icmp sgt i32 %38, %10
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %34, label %112, !llvm.loop !570

64:                                               ; preds = %12
  %65 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !60
  %67 = mul nsw i32 %66, %18
  %68 = icmp ne i32 %67, 0
  %69 = icmp sgt i32 %67, %10
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %112

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !61
  %74 = sext i32 %67 to i64
  %75 = getelementptr %struct.BPoint, ptr %73, i64 %74
  %76 = getelementptr %struct.BPoint, ptr %75, i64 -1
  %77 = select i1 %9, ptr %76, ptr %73
  %78 = sdiv i32 %3, %10
  %79 = sub nsw i32 %3, %78
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 0, %80
  br label %82

82:                                               ; preds = %71, %105
  %83 = phi i32 [ %67, %71 ], [ %86, %105 ]
  %84 = phi i8 [ 0, %71 ], [ %106, %105 ]
  %85 = phi ptr [ %77, %71 ], [ %108, %105 ]
  %86 = add nsw i32 %83, -1
  %87 = icmp eq i8 %84, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.BPoint, ptr %85, i64 0, i32 4
  %90 = load i16, ptr %89, align 2, !tbaa !159
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.BPoint, ptr %85, i64 0, i32 3
  %94 = load i16, ptr %93, align 4, !tbaa !63
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.BPoint, ptr %85, i64 %11, i32 3
  %99 = load i16, ptr %98, align 4, !tbaa !63
  %100 = and i16 %99, 1
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.BPoint, ptr %85, i64 %11
  %104 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %103, i8 noundef zeroext 1, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  br label %105

105:                                              ; preds = %82, %88, %92, %102, %97
  %106 = phi i8 [ %104, %102 ], [ 0, %97 ], [ 0, %92 ], [ 0, %88 ], [ 0, %82 ]
  %107 = getelementptr inbounds %struct.BPoint, ptr %85, i64 %11
  %108 = getelementptr inbounds %struct.BPoint, ptr %107, i64 %81
  %109 = icmp ne i32 %86, 0
  %110 = icmp sgt i32 %86, %10
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %82, label %112, !llvm.loop !571

112:                                              ; preds = %105, %57, %64, %19
  %113 = load ptr, ptr %13, align 8, !tbaa !65
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %12, !llvm.loop !572

115:                                              ; preds = %112, %5, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_select_random(ptr nocapture noundef readonly %0, float noundef %1, i8 noundef zeroext %2) unnamed_addr #5 !PGOFuncName !573 {
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %3, %56
  %7 = phi ptr [ %57, %56 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !52
  br i1 %10, label %13, label %33

13:                                               ; preds = %6
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  br label %18

18:                                               ; preds = %15, %30
  %19 = phi i32 [ %21, %30 ], [ %12, %15 ]
  %20 = phi ptr [ %31, %30 ], [ %17, %15 ]
  %21 = add nsw i32 %19, -1
  %22 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 0, i32 10
  %23 = load i8, ptr %22, align 2, !tbaa !157
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = tail call float @BLI_frand() #23
  %27 = fcmp olt float %26, %1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @select_beztriple(ptr noundef nonnull %20, i8 noundef zeroext %2, i32 noundef 0) #22
  br label %30

30:                                               ; preds = %25, %28, %18
  %31 = getelementptr inbounds %struct.BezTriple, ptr %20, i64 1
  %32 = icmp eq i32 %21, 0
  br i1 %32, label %56, label %18, !llvm.loop !574

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !60
  %36 = mul nsw i32 %35, %12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  br label %41

41:                                               ; preds = %38, %53
  %42 = phi i32 [ %44, %53 ], [ %36, %38 ]
  %43 = phi ptr [ %54, %53 ], [ %40, %38 ]
  %44 = add nsw i32 %42, -1
  %45 = getelementptr inbounds %struct.BPoint, ptr %43, i64 0, i32 4
  %46 = load i16, ptr %45, align 2, !tbaa !159
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = tail call float @BLI_frand() #23
  %50 = fcmp olt float %49, %1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc zeroext i8 @select_bpoint(ptr noundef nonnull %43, i8 noundef zeroext %2, i16 noundef signext 1, i8 noundef zeroext 0) #22, !range !79
  br label %53

53:                                               ; preds = %48, %51, %41
  %54 = getelementptr inbounds %struct.BPoint, ptr %43, i64 1
  %55 = icmp eq i32 %44, 0
  br i1 %55, label %56, label %41, !llvm.loop !575

56:                                               ; preds = %53, %30, %33, %13
  %57 = load ptr, ptr %7, align 8, !tbaa !65
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %6, !llvm.loop !576

59:                                               ; preds = %56, %3
  ret void
}

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_delete_vertices(ptr noundef %0) unnamed_addr #5 !PGOFuncName !577 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i16 %3, 3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @ed_surf_delete_selected(ptr noundef nonnull %0) #22
  br label %7

6:                                                ; preds = %1
  tail call fastcc void @ed_curve_delete_selected(ptr noundef nonnull %0) #22
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_surf_delete_selected(ptr noundef %0) unnamed_addr #5 !PGOFuncName !578 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call ptr @object_editcurve_get(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = icmp eq ptr %7, null
  br i1 %8, label %163, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %161
  %12 = phi ptr [ %7, %9 ], [ %13, %161 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !152
  %14 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !60
  %20 = mul nsw i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %25

22:                                               ; preds = %25
  %23 = getelementptr inbounds %struct.BPoint, ptr %27, i64 1
  %24 = icmp eq i32 %28, 0
  br i1 %24, label %35, label %25, !llvm.loop !579

25:                                               ; preds = %11, %22
  %26 = phi i32 [ %28, %22 ], [ %20, %11 ]
  %27 = phi ptr [ %23, %22 ], [ %15, %11 ]
  %28 = add nsw i32 %26, -1
  %29 = getelementptr inbounds %struct.BPoint, ptr %27, i64 0, i32 3
  %30 = load i16, ptr %29, align 4, !tbaa !63
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %22

33:                                               ; preds = %25
  %34 = icmp eq i32 %28, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22, %11, %33
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %12) #23
  %36 = load ptr, ptr %10, align 8, !tbaa !47
  tail call fastcc void @keyIndex_delNurb(ptr noundef %36, ptr noundef nonnull %12) #22
  tail call void @BKE_nurb_free(ptr noundef nonnull %12) #23
  br label %161

37:                                               ; preds = %33
  %38 = call fastcc zeroext i8 @isNurbselU(ptr noundef nonnull %12, ptr noundef nonnull %3) #22
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %86, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %18, align 4, !tbaa !60
  %42 = load i32, ptr %3, align 4, !tbaa !107
  %43 = sub nsw i32 %41, %42
  store i32 %43, ptr %3, align 4, !tbaa !107
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %161, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %47 = load i32, ptr %16, align 8, !tbaa !52
  %48 = mul nsw i32 %47, %43
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, 36
  %51 = tail call ptr %46(i64 noundef %50, ptr noundef nonnull @.str.223) #23
  %52 = load i32, ptr %18, align 4, !tbaa !60
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %45, %75
  %55 = phi i32 [ %79, %75 ], [ 0, %45 ]
  %56 = phi ptr [ %77, %75 ], [ %51, %45 ]
  %57 = phi ptr [ %78, %75 ], [ %15, %45 ]
  %58 = getelementptr inbounds %struct.BPoint, ptr %57, i64 0, i32 3
  %59 = load i16, ptr %58, align 4, !tbaa !63
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load i32, ptr %16, align 8, !tbaa !52
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %56, ptr nonnull align 4 %57, i64 %65, i1 false)
  %66 = load ptr, ptr %10, align 8, !tbaa !47
  %67 = load i32, ptr %16, align 8, !tbaa !52
  tail call fastcc void @keyIndex_updateBP(ptr noundef %66, ptr noundef nonnull %57, ptr noundef %56, i32 noundef %67) #22
  %68 = load i32, ptr %16, align 8, !tbaa !52
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.BPoint, ptr %56, i64 %69
  br label %75

71:                                               ; preds = %54
  %72 = load ptr, ptr %10, align 8, !tbaa !47
  tail call fastcc void @keyIndex_delBP(ptr noundef %72, ptr noundef nonnull %57) #22
  %73 = load i32, ptr %16, align 8, !tbaa !52
  %74 = sext i32 %73 to i64
  br label %75

75:                                               ; preds = %71, %62
  %76 = phi i64 [ %74, %71 ], [ %69, %62 ]
  %77 = phi ptr [ %56, %71 ], [ %70, %62 ]
  %78 = getelementptr inbounds %struct.BPoint, ptr %57, i64 %76
  %79 = add nuw nsw i32 %55, 1
  %80 = load i32, ptr %18, align 4, !tbaa !60
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %54, label %82, !llvm.loop !580

82:                                               ; preds = %75, %45
  store i32 %43, ptr %18, align 4, !tbaa !60
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %84 = load ptr, ptr %14, align 8, !tbaa !61
  tail call void %83(ptr noundef %84) #23
  store ptr %51, ptr %14, align 8, !tbaa !61
  %85 = tail call zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef nonnull %12) #23
  tail call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %12) #23
  br label %161

86:                                               ; preds = %37
  %87 = call fastcc zeroext i8 @isNurbselV(ptr noundef nonnull %12, ptr noundef nonnull %2) #22
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %161, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %16, align 8, !tbaa !52
  %91 = load i32, ptr %2, align 4, !tbaa !107
  %92 = sub nsw i32 %90, %91
  store i32 %92, ptr %2, align 4, !tbaa !107
  %93 = icmp eq i32 %91, 0
  br i1 %93, label %161, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %96 = load i32, ptr %18, align 4, !tbaa !60
  %97 = mul nsw i32 %96, %92
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %98, 36
  %100 = tail call ptr %95(i64 noundef %99, ptr noundef nonnull @.str.223) #23
  %101 = load i32, ptr %18, align 4, !tbaa !60
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %140

103:                                              ; preds = %94
  %104 = load i32, ptr %16, align 8, !tbaa !52
  br label %105

105:                                              ; preds = %103, %133
  %106 = phi i32 [ %134, %133 ], [ %101, %103 ]
  %107 = phi i32 [ %135, %133 ], [ %104, %103 ]
  %108 = phi i32 [ %138, %133 ], [ 0, %103 ]
  %109 = phi ptr [ %137, %133 ], [ %100, %103 ]
  %110 = phi ptr [ %136, %133 ], [ %15, %103 ]
  %111 = icmp sgt i32 %107, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %105, %125
  %113 = phi i32 [ %127, %125 ], [ 0, %105 ]
  %114 = phi ptr [ %126, %125 ], [ %109, %105 ]
  %115 = phi ptr [ %128, %125 ], [ %110, %105 ]
  %116 = getelementptr inbounds %struct.BPoint, ptr %115, i64 0, i32 3
  %117 = load i16, ptr %116, align 4, !tbaa !63
  %118 = and i16 %117, 1
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %114, ptr noundef nonnull align 4 dereferenceable(36) %115, i64 36, i1 false), !tbaa.struct !190
  %121 = load ptr, ptr %10, align 8, !tbaa !47
  tail call fastcc void @keyIndex_updateBP(ptr noundef %121, ptr noundef nonnull %115, ptr noundef %114, i32 noundef 1) #22
  %122 = getelementptr inbounds %struct.BPoint, ptr %114, i64 1
  br label %125

123:                                              ; preds = %112
  %124 = load ptr, ptr %10, align 8, !tbaa !47
  tail call fastcc void @keyIndex_delBP(ptr noundef %124, ptr noundef nonnull %115) #22
  br label %125

125:                                              ; preds = %120, %123
  %126 = phi ptr [ %122, %120 ], [ %114, %123 ]
  %127 = add nuw nsw i32 %113, 1
  %128 = getelementptr inbounds %struct.BPoint, ptr %115, i64 1
  %129 = load i32, ptr %16, align 8, !tbaa !52
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %112, label %131, !llvm.loop !581

131:                                              ; preds = %125
  %132 = load i32, ptr %18, align 4, !tbaa !60
  br label %133

133:                                              ; preds = %131, %105
  %134 = phi i32 [ %106, %105 ], [ %132, %131 ]
  %135 = phi i32 [ %107, %105 ], [ %129, %131 ]
  %136 = phi ptr [ %110, %105 ], [ %128, %131 ]
  %137 = phi ptr [ %109, %105 ], [ %126, %131 ]
  %138 = add nuw nsw i32 %108, 1
  %139 = icmp slt i32 %138, %134
  br i1 %139, label %105, label %140, !llvm.loop !582

140:                                              ; preds = %133, %94
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %142 = load ptr, ptr %14, align 8, !tbaa !61
  tail call void %141(ptr noundef %142) #23
  store ptr %100, ptr %14, align 8, !tbaa !61
  %143 = icmp eq i32 %92, 1
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load i32, ptr %18, align 4, !tbaa !60
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  store i32 %145, ptr %16, align 8, !tbaa !52
  store i32 1, ptr %18, align 4, !tbaa !60
  %148 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 11
  %149 = load <2 x i16>, ptr %148, align 8, !tbaa !192
  %150 = shufflevector <2 x i16> %149, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %150, ptr %148, align 8, !tbaa !192
  %151 = tail call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %12) #23
  %152 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 16
  %153 = load ptr, ptr %152, align 8, !tbaa !72
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %147
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %156(ptr noundef nonnull %153) #23
  br label %157

157:                                              ; preds = %155, %147
  store ptr null, ptr %152, align 8, !tbaa !72
  br label %160

158:                                              ; preds = %144, %140
  store i32 %92, ptr %16, align 8, !tbaa !52
  %159 = tail call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %12) #23
  br label %160

160:                                              ; preds = %158, %157
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %12) #23
  br label %161

161:                                              ; preds = %82, %40, %89, %160, %86, %35
  %162 = icmp eq ptr %13, null
  br i1 %162, label %163, label %11, !llvm.loop !583

163:                                              ; preds = %161, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_curve_delete_selected(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !584 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = icmp eq ptr %6, null
  br i1 %7, label %215, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 31
  %10 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 16
  br label %11

11:                                               ; preds = %8, %78
  %12 = phi i32 [ 0, %8 ], [ %79, %78 ]
  %13 = phi ptr [ %6, %8 ], [ %14, %78 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  %15 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !50
  %17 = icmp eq i16 %16, 1
  %18 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !52
  br i1 %17, label %20, label %54

20:                                               ; preds = %11
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %78, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = load i16, ptr %10, align 8, !tbaa !234
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br label %28

28:                                               ; preds = %22, %47
  %29 = phi i32 [ %19, %22 ], [ %48, %47 ]
  %30 = phi ptr [ %24, %22 ], [ %49, %47 ]
  %31 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 8
  %32 = load i8, ptr %31, align 4, !tbaa !58
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %27, label %36, label %35

35:                                               ; preds = %28
  br i1 %34, label %78, label %47

36:                                               ; preds = %28
  br i1 %34, label %37, label %47

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 7
  %39 = load i8, ptr %38, align 1, !tbaa !56
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 9
  %44 = load i8, ptr %43, align 1, !tbaa !59
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %78, label %47

47:                                               ; preds = %35, %36, %37, %42
  %48 = add nsw i32 %29, -1
  %49 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 1
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %28, !llvm.loop !585

51:                                               ; preds = %47
  %52 = load i32, ptr %9, align 4, !tbaa !202
  %53 = icmp eq i32 %52, %12
  br i1 %53, label %76, label %77

54:                                               ; preds = %11
  %55 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 7
  %56 = load i32, ptr %55, align 4, !tbaa !60
  %57 = mul nsw i32 %56, %19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.Nurb, ptr %13, i64 0, i32 17
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  br label %62

62:                                               ; preds = %59, %69
  %63 = phi i32 [ %70, %69 ], [ %57, %59 ]
  %64 = phi ptr [ %71, %69 ], [ %61, %59 ]
  %65 = getelementptr inbounds %struct.BPoint, ptr %64, i64 0, i32 3
  %66 = load i16, ptr %65, align 4, !tbaa !63
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %62
  %70 = add nsw i32 %63, -1
  %71 = getelementptr inbounds %struct.BPoint, ptr %64, i64 1
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %73, label %62, !llvm.loop !586

73:                                               ; preds = %69
  %74 = load i32, ptr %9, align 4, !tbaa !202
  %75 = icmp eq i32 %74, %12
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %51
  store i32 -1, ptr %9, align 4, !tbaa !202
  br label %77

77:                                               ; preds = %76, %73, %51
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %13) #23
  tail call fastcc void @keyIndex_delNurb(ptr noundef nonnull %5, ptr noundef nonnull %13) #22
  tail call void @BKE_nurb_free(ptr noundef nonnull %13) #23
  br label %78

78:                                               ; preds = %62, %42, %35, %77, %54, %20
  %79 = add nuw nsw i32 %12, 1
  %80 = icmp eq ptr %14, null
  br i1 %80, label %81, label %11, !llvm.loop !587

81:                                               ; preds = %78
  %82 = load ptr, ptr %5, align 8, !tbaa !92
  %83 = icmp eq ptr %82, null
  br i1 %83, label %215, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 16
  br label %86

86:                                               ; preds = %84, %213
  %87 = phi ptr [ %82, %84 ], [ %88, %213 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !152
  %89 = getelementptr inbounds %struct.Nurb, ptr %87, i64 0, i32 2
  %90 = load i16, ptr %89, align 8, !tbaa !50
  %91 = icmp eq i16 %90, 1
  br i1 %91, label %92, label %158

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.Nurb, ptr %87, i64 0, i32 18
  %94 = getelementptr inbounds %struct.Nurb, ptr %87, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !52
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %213

97:                                               ; preds = %92
  %98 = load ptr, ptr %93, align 8, !tbaa !53
  br label %99

99:                                               ; preds = %97, %136
  %100 = phi i32 [ %137, %136 ], [ %95, %97 ]
  %101 = phi i32 [ %140, %136 ], [ 0, %97 ]
  %102 = phi i32 [ %141, %136 ], [ 0, %97 ]
  %103 = phi ptr [ %138, %136 ], [ %98, %97 ]
  %104 = load i16, ptr %85, align 8, !tbaa !234
  %105 = and i16 %104, 1
  %106 = icmp eq i16 %105, 0
  %107 = getelementptr inbounds %struct.BezTriple, ptr %103, i64 0, i32 8
  %108 = load i8, ptr %107, align 4, !tbaa !58
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  br i1 %106, label %112, label %111

111:                                              ; preds = %99
  br i1 %110, label %134, label %123

112:                                              ; preds = %99
  br i1 %110, label %113, label %123

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.BezTriple, ptr %103, i64 0, i32 7
  %115 = load i8, ptr %114, align 1, !tbaa !56
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.BezTriple, ptr %103, i64 0, i32 9
  %120 = load i8, ptr %119, align 1, !tbaa !59
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %118, %113, %112, %111
  %124 = getelementptr inbounds %struct.BezTriple, ptr %103, i64 1
  %125 = xor i32 %102, -1
  %126 = add i32 %100, %125
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %103, ptr nonnull align 4 %124, i64 %128, i1 false)
  tail call fastcc void @keyIndex_delBezt(ptr noundef nonnull %5, ptr noundef nonnull %103) #22
  %129 = load i32, ptr %94, align 8, !tbaa !52
  %130 = add i32 %129, %125
  tail call fastcc void @keyIndex_updateBezt(ptr noundef nonnull %5, ptr noundef nonnull %124, ptr noundef nonnull %103, i32 noundef %130) #22
  %131 = load i32, ptr %94, align 8, !tbaa !52
  %132 = add nsw i32 %131, -1
  store i32 %132, ptr %94, align 8, !tbaa !52
  %133 = add nsw i32 %102, -1
  br label %136

134:                                              ; preds = %118, %111
  %135 = getelementptr inbounds %struct.BezTriple, ptr %103, i64 1
  br label %136

136:                                              ; preds = %123, %134
  %137 = phi i32 [ %132, %123 ], [ %100, %134 ]
  %138 = phi ptr [ %103, %123 ], [ %135, %134 ]
  %139 = phi i32 [ %133, %123 ], [ %102, %134 ]
  %140 = phi i32 [ 1, %123 ], [ %101, %134 ]
  %141 = add nsw i32 %139, 1
  %142 = icmp slt i32 %141, %137
  br i1 %142, label %99, label %143, !llvm.loop !588

143:                                              ; preds = %136
  %144 = icmp eq i32 %140, 0
  br i1 %144, label %213, label %145

145:                                              ; preds = %143
  %146 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %147 = sext i32 %137 to i64
  %148 = mul nsw i64 %147, 72
  %149 = tail call ptr %146(i64 noundef %148, ptr noundef nonnull @.str.224) #23
  %150 = load ptr, ptr %93, align 8, !tbaa !53
  %151 = load i32, ptr %94, align 8, !tbaa !52
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %149, ptr align 4 %150, i64 %153, i1 false)
  %154 = load ptr, ptr %93, align 8, !tbaa !53
  %155 = load i32, ptr %94, align 8, !tbaa !52
  tail call fastcc void @keyIndex_updateBezt(ptr noundef nonnull %5, ptr noundef %154, ptr noundef %149, i32 noundef %155) #22
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %157 = load ptr, ptr %93, align 8, !tbaa !53
  tail call void %156(ptr noundef %157) #23
  store ptr %149, ptr %93, align 8, !tbaa !53
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %87) #23
  br label %213

158:                                              ; preds = %86
  %159 = getelementptr inbounds %struct.Nurb, ptr %87, i64 0, i32 7
  %160 = load i32, ptr %159, align 4, !tbaa !60
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %213

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.Nurb, ptr %87, i64 0, i32 17
  %164 = getelementptr inbounds %struct.Nurb, ptr %87, i64 0, i32 6
  %165 = load i32, ptr %164, align 8, !tbaa !52
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %211

167:                                              ; preds = %162
  %168 = load ptr, ptr %163, align 8, !tbaa !61
  br label %169

169:                                              ; preds = %167, %189
  %170 = phi i32 [ %190, %189 ], [ %165, %167 ]
  %171 = phi i32 [ %193, %189 ], [ 0, %167 ]
  %172 = phi i32 [ %194, %189 ], [ 0, %167 ]
  %173 = phi ptr [ %191, %189 ], [ %168, %167 ]
  %174 = getelementptr inbounds %struct.BPoint, ptr %173, i64 0, i32 3
  %175 = load i16, ptr %174, align 4, !tbaa !63
  %176 = and i16 %175, 1
  %177 = icmp eq i16 %176, 0
  %178 = getelementptr inbounds %struct.BPoint, ptr %173, i64 1
  br i1 %177, label %189, label %179

179:                                              ; preds = %169
  %180 = xor i32 %172, -1
  %181 = add i32 %170, %180
  %182 = sext i32 %181 to i64
  %183 = mul nsw i64 %182, 36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %173, ptr nonnull align 4 %178, i64 %183, i1 false)
  tail call fastcc void @keyIndex_delBP(ptr noundef nonnull %5, ptr noundef nonnull %173) #22
  %184 = load i32, ptr %164, align 8, !tbaa !52
  %185 = add i32 %184, %180
  tail call fastcc void @keyIndex_updateBP(ptr noundef nonnull %5, ptr noundef nonnull %178, ptr noundef nonnull %173, i32 noundef %185) #22
  %186 = load i32, ptr %164, align 8, !tbaa !52
  %187 = add nsw i32 %186, -1
  store i32 %187, ptr %164, align 8, !tbaa !52
  %188 = add nsw i32 %172, -1
  br label %189

189:                                              ; preds = %169, %179
  %190 = phi i32 [ %187, %179 ], [ %170, %169 ]
  %191 = phi ptr [ %173, %179 ], [ %178, %169 ]
  %192 = phi i32 [ %188, %179 ], [ %172, %169 ]
  %193 = phi i32 [ 1, %179 ], [ %171, %169 ]
  %194 = add nsw i32 %192, 1
  %195 = icmp slt i32 %194, %190
  br i1 %195, label %169, label %196, !llvm.loop !589

196:                                              ; preds = %189
  %197 = icmp eq i32 %193, 0
  br i1 %197, label %211, label %198

198:                                              ; preds = %196
  %199 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %200 = sext i32 %190 to i64
  %201 = mul nsw i64 %200, 36
  %202 = tail call ptr %199(i64 noundef %201, ptr noundef nonnull @.str.225) #23
  %203 = load ptr, ptr %163, align 8, !tbaa !61
  %204 = load i32, ptr %164, align 8, !tbaa !52
  %205 = sext i32 %204 to i64
  %206 = mul nsw i64 %205, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %202, ptr align 4 %203, i64 %206, i1 false)
  %207 = load ptr, ptr %163, align 8, !tbaa !61
  %208 = load i32, ptr %164, align 8, !tbaa !52
  tail call fastcc void @keyIndex_updateBP(ptr noundef nonnull %5, ptr noundef %207, ptr noundef %202, i32 noundef %208) #22
  %209 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %210 = load ptr, ptr %163, align 8, !tbaa !61
  tail call void %209(ptr noundef %210) #23
  store ptr %202, ptr %163, align 8, !tbaa !61
  br label %211

211:                                              ; preds = %162, %198, %196
  %212 = tail call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef nonnull %87) #23
  tail call void @BKE_nurb_knot_calc_u(ptr noundef nonnull %87) #23
  br label %213

213:                                              ; preds = %92, %158, %211, %143, %145
  %214 = icmp eq ptr %88, null
  br i1 %214, label %215, label %86, !llvm.loop !590

215:                                              ; preds = %213, %1, %81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_delBP(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !591 {
  tail call fastcc void @keyIndex_delCV(ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_delCV(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !592 {
  %3 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %8 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef nonnull %4, ptr noundef %1, ptr noundef null, ptr noundef %7) #23
  br label %9

9:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_delBezt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !593 {
  tail call fastcc void @keyIndex_delCV(ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: optsize
declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @free_fcurves(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dupli_keyIndexHash(ptr noundef %0) unnamed_addr #5 !PGOFuncName !594 {
  %2 = tail call i32 @BLI_ghash_size(ptr noundef %0) #23
  %3 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.230, i32 noundef %2) #23
  %4 = tail call ptr @BLI_ghashIterator_new(ptr noundef %0) #23
  %5 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %4) #22, !range !79
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1, %7
  %8 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %4) #22
  %9 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %4) #22
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.231) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false)
  tail call void @BLI_ghash_insert(ptr noundef %3, ptr noundef %8, ptr noundef %11) #23
  tail call void @BLI_ghashIterator_step(ptr noundef %4) #23
  %12 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %4) #22, !range !79
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %7, label %14, !llvm.loop !595

14:                                               ; preds = %7, %1
  tail call void @BLI_ghashIterator_free(ptr noundef %4) #23
  ret ptr %3
}

; Function Attrs: optsize
declare void @copy_fcurves(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_updateNurb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !596 {
  %4 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !52
  tail call fastcc void @keyIndex_updateBezt(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %9, i32 noundef %11) #22
  br label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.Nurb, ptr %2, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !60
  %21 = mul nsw i32 %20, %18
  tail call fastcc void @keyIndex_updateBP(ptr noundef %0, ptr noundef %14, ptr noundef %16, i32 noundef %21) #22
  br label %22

22:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !597 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !598
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !600 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !598
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !601
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !603 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !598
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !604
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyIndex_updateCV(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 !PGOFuncName !605 {
  %6 = getelementptr inbounds %struct.EditNurb, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = icmp ne ptr %7, null
  %9 = icmp sgt i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = zext nneg i32 %4 to i64
  br label %13

13:                                               ; preds = %11, %21
  %14 = phi ptr [ %1, %11 ], [ %23, %21 ]
  %15 = phi i32 [ 0, %11 ], [ %24, %21 ]
  %16 = phi ptr [ %2, %11 ], [ %22, %21 ]
  %17 = tail call fastcc ptr @popCVKeyIndex(ptr noundef %0, ptr noundef %14) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %6, align 8, !tbaa !77
  tail call void @BLI_ghash_insert(ptr noundef %20, ptr noundef %16, ptr noundef nonnull %17) #23
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds i8, ptr %16, i64 %12
  %23 = getelementptr inbounds i8, ptr %14, i64 %12
  %24 = add nuw nsw i32 %15, 1
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %26, label %13, !llvm.loop !606

26:                                               ; preds = %21, %5
  ret void
}

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_displist_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !607 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !70
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !70
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #21

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize willreturn memory(read) }

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
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!57, !38, i64 51}
!57 = !{!"BezTriple", !38, i64 0, !44, i64 36, !44, i64 40, !44, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !44, i64 56, !44, i64 60, !44, i64 64, !38, i64 68}
!58 = !{!57, !38, i64 52}
!59 = !{!57, !38, i64 53}
!60 = !{!51, !41, i64 28}
!61 = !{!51, !37, i64 64}
!62 = distinct !{!62, !55}
!63 = !{!64, !40, i64 24}
!64 = !{!"BPoint", !38, i64 0, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !44, i64 28, !44, i64 32}
!65 = !{!37, !37, i64 0}
!66 = !{i32 0, i32 2}
!67 = !{!51, !37, i64 48}
!68 = !{!51, !40, i64 40}
!69 = !{!51, !40, i64 44}
!70 = !{!44, !44, i64 0}
!71 = distinct !{!71, !55}
!72 = !{!51, !37, i64 56}
!73 = !{!51, !40, i64 42}
!74 = !{!51, !40, i64 46}
!75 = distinct !{!75, !55}
!76 = distinct !{!76, !55}
!77 = !{!78, !37, i64 16}
!78 = !{!"EditNurb", !43, i64 0, !37, i64 16, !41, i64 24, !38, i64 28}
!79 = !{i8 0, i8 2}
!80 = !{!81, !37, i64 0}
!81 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !37, i64 40, !43, i64 48, !43, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !44, i64 92}
!82 = !{!"editcurve.c:curve_is_animated"}
!83 = !{!81, !37, i64 48}
!84 = !{!"editcurve.c:curve_rename_fcurves"}
!85 = !{!86, !41, i64 12}
!86 = !{!"", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !37, i64 32}
!87 = !{!86, !41, i64 16}
!88 = !{!86, !38, i64 24}
!89 = distinct !{!89, !55}
!90 = distinct !{!90, !55}
!91 = distinct !{!91, !55}
!92 = !{!43, !37, i64 0}
!93 = !{!94, !37, i64 0}
!94 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !37, i64 48, !37, i64 56, !41, i64 64, !44, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !37, i64 80, !41, i64 88, !38, i64 92, !44, i64 104, !44, i64 108}
!95 = !{!94, !37, i64 80}
!96 = distinct !{!96, !55}
!97 = distinct !{!97, !55}
!98 = distinct !{!98, !55}
!99 = !{i64 0, i64 8, !65, i64 8, i64 8, !65}
!100 = distinct !{!100, !55}
!101 = !{!"editcurve.c:remap_hooks_and_vertex_parents"}
!102 = !{!103, !37, i64 0}
!103 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!104 = !{!35, !37, i64 216}
!105 = !{!35, !40, i64 138}
!106 = !{!35, !41, i64 140}
!107 = !{!41, !41, i64 0}
!108 = !{!35, !41, i64 144}
!109 = !{!35, !41, i64 148}
!110 = !{!111, !41, i64 16}
!111 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!112 = !{!113, !41, i64 272}
!113 = !{!"HookModifierData", !111, i64 0, !37, i64 112, !38, i64 120, !38, i64 184, !38, i64 248, !44, i64 260, !37, i64 264, !41, i64 272, !44, i64 276, !38, i64 280}
!114 = !{!113, !37, i64 264}
!115 = distinct !{!115, !55}
!116 = distinct !{!116, !55}
!117 = distinct !{!117, !55}
!118 = !{!"editcurve.c:calc_shapeKeys"}
!119 = !{!48, !37, i64 192}
!120 = !{!78, !41, i64 24}
!121 = !{!122, !40, i64 208}
!122 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !43, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !41, i64 220}
!123 = !{!124, !40, i64 28}
!124 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !44, i64 176, !44, i64 180}
!125 = distinct !{!125, !55}
!126 = distinct !{!126, !55}
!127 = distinct !{!127, !55}
!128 = !{!57, !44, i64 36}
!129 = distinct !{!129, !55}
!130 = !{!64, !44, i64 16}
!131 = distinct !{!131, !55}
!132 = distinct !{!132, !55}
!133 = !{!122, !41, i64 168}
!134 = !{!124, !37, i64 40}
!135 = !{!122, !37, i64 128}
!136 = distinct !{!136, !55}
!137 = distinct !{!137, !55}
!138 = distinct !{!138, !55}
!139 = distinct !{!139, !55}
!140 = distinct !{!140, !55}
!141 = distinct !{!141, !55}
!142 = distinct !{!142, !55}
!143 = distinct !{!143, !55}
!144 = !{!124, !41, i64 32}
!145 = distinct !{!145, !55}
!146 = distinct !{!146, !55}
!147 = !{!35, !40, i64 1266}
!148 = !{!"editcurve.c:init_editNurb_keyIndex"}
!149 = !{!78, !37, i64 0}
!150 = distinct !{!150, !55}
!151 = distinct !{!151, !55}
!152 = !{!51, !37, i64 0}
!153 = distinct !{!153, !55}
!154 = distinct !{!154, !55}
!155 = distinct !{!155, !55}
!156 = distinct !{!156, !55}
!157 = !{!57, !38, i64 54}
!158 = distinct !{!158, !55}
!159 = !{!64, !40, i64 26}
!160 = distinct !{!160, !55}
!161 = distinct !{!161, !55}
!162 = distinct !{!162, !55}
!163 = distinct !{!163, !55}
!164 = distinct !{!164, !55}
!165 = !{!"editcurve.c:swap_selection_bpoint"}
!166 = !{!167, !37, i64 0}
!167 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !168, i64 152, !40, i64 184}
!168 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!169 = !{!167, !37, i64 8}
!170 = !{!167, !37, i64 24}
!171 = !{!167, !37, i64 32}
!172 = !{!167, !37, i64 72}
!173 = !{!167, !40, i64 184}
!174 = !{!"editcurve.c:separate_exec"}
!175 = !{!176, !37, i64 32}
!176 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!177 = !{!178, !37, i64 120}
!178 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!179 = !{!48, !41, i64 100}
!180 = !{!"editcurve.c:curve_split_exec"}
!181 = distinct !{!181, !55}
!182 = distinct !{!182, !55}
!183 = distinct !{!183, !55}
!184 = !{!"editcurve.c:add_v3_v3"}
!185 = distinct !{!185, !55}
!186 = distinct !{!186, !55}
!187 = !{i16 0, i16 2}
!188 = distinct !{!188, !55}
!189 = distinct !{!189, !55}
!190 = !{i64 0, i64 16, !191, i64 16, i64 4, !70, i64 20, i64 4, !70, i64 24, i64 2, !192, i64 26, i64 2, !192, i64 28, i64 4, !70, i64 32, i64 4, !70}
!191 = !{!38, !38, i64 0}
!192 = !{!40, !40, i64 0}
!193 = distinct !{!193, !55}
!194 = distinct !{!194, !55}
!195 = !{!"editcurve.c:select_bpoint"}
!196 = !{!"editcurve.c:isNurbselUV"}
!197 = distinct !{!197, !55}
!198 = distinct !{!198, !55}
!199 = distinct !{!199, !55}
!200 = distinct !{!200, !55}
!201 = !{!"editcurve.c:switch_direction_exec"}
!202 = !{!48, !41, i64 292}
!203 = !{!48, !41, i64 296}
!204 = distinct !{!204, !55}
!205 = !{!167, !37, i64 48}
!206 = !{!167, !37, i64 88}
!207 = !{!"editcurve.c:set_goal_weight_exec"}
!208 = !{!178, !37, i64 112}
!209 = !{!57, !44, i64 40}
!210 = distinct !{!210, !55}
!211 = !{!64, !44, i64 20}
!212 = distinct !{!212, !55}
!213 = distinct !{!213, !55}
!214 = !{!"editcurve.c:set_radius_exec"}
!215 = !{!57, !44, i64 44}
!216 = distinct !{!216, !55}
!217 = !{!64, !44, i64 28}
!218 = distinct !{!218, !55}
!219 = distinct !{!219, !55}
!220 = !{!"editcurve.c:smooth_exec"}
!221 = distinct !{!221, !55}
!222 = distinct !{!222, !55}
!223 = distinct !{!223, !55}
!224 = !{!"editcurve.c:curve_smooth_weight_exec"}
!225 = !{!"editcurve.c:curve_smooth_radius_exec"}
!226 = !{!"editcurve.c:curve_smooth_tilt_exec"}
!227 = distinct !{!227, !55}
!228 = distinct !{!228, !55}
!229 = !{!"editcurve.c:swap_selection_beztriple"}
!230 = !{!"editcurve.c:select_beztriple"}
!231 = !{!"editcurve.c:de_select_first_exec"}
!232 = !{!"editcurve.c:de_select_last_exec"}
!233 = !{!"editcurve.c:de_select_all_exec"}
!234 = !{!48, !40, i64 248}
!235 = !{!"editcurve.c:hide_exec"}
!236 = distinct !{!236, !55}
!237 = distinct !{!237, !55}
!238 = !{!51, !40, i64 20}
!239 = distinct !{!239, !55}
!240 = !{!"editcurve.c:reveal_exec"}
!241 = distinct !{!241, !55}
!242 = distinct !{!242, !55}
!243 = distinct !{!243, !55}
!244 = !{!"editcurve.c:subdivide_exec"}
!245 = !{!167, !37, i64 104}
!246 = !{!"editcurve.c:set_spline_type_exec"}
!247 = distinct !{!247, !55}
!248 = !{!"editcurve.c:set_handle_type_exec"}
!249 = !{!"editcurve.c:curve_normals_make_consistent_exec"}
!250 = !{!"editcurve.c:make_segment_exec"}
!251 = distinct !{!251, !55}
!252 = !{i32 2, i32 5}
!253 = distinct !{!253, !55}
!254 = !{!"editcurve.c:findnearestNurbvert"}
!255 = !{!256, !44, i64 24}
!256 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !41, i64 28, !41, i64 32, !38, i64 36}
!257 = !{!256, !41, i64 28}
!258 = !{!256, !41, i64 32}
!259 = !{!260, !37, i64 16}
!260 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!261 = !{!260, !37, i64 40}
!262 = !{!256, !37, i64 16}
!263 = !{!256, !37, i64 8}
!264 = !{!256, !37, i64 0}
!265 = distinct !{!265, !55}
!266 = distinct !{!266, !55}
!267 = !{!"editcurve.c:rotateflagNurb"}
!268 = distinct !{!268, !55}
!269 = distinct !{!269, !55}
!270 = !{!"editcurve.c:weightflagNurb"}
!271 = distinct !{!271, !55}
!272 = distinct !{!272, !55}
!273 = !{!"editcurve.c:spin_exec"}
!274 = !{!"editcurve.c:spin_invoke"}
!275 = !{!"editcurve.c:add_vertex_exec"}
!276 = !{!"editcurve.c:add_vertex_invoke"}
!277 = !{!260, !37, i64 0}
!278 = !{!279, !37, i64 264}
!279 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !280, i64 280, !289, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !290, i64 4400, !291, i64 4416, !294, i64 4600, !37, i64 4608, !295, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !282, i64 4664, !283, i64 4824, !296, i64 4888, !37, i64 4952}
!280 = !{!"RenderData", !281, i64 0, !37, i64 248, !37, i64 256, !284, i64 264, !285, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !286, i64 544, !286, i64 560, !287, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !288, i64 2616, !41, i64 3976, !41, i64 3980}
!281 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !282, i64 24, !283, i64 184}
!282 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!283 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!284 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!285 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!286 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!287 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!288 = !{!"BakeData", !281, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!289 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!290 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!291 = !{!"GameData", !290, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !292, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !293, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!292 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!293 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!294 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!295 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!296 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!297 = !{!298, !40, i64 434}
!298 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !299, i64 64, !301, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !302, i64 480, !303, i64 608}
!299 = !{!"ImagePaintSettings", !300, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!300 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!301 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!302 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!303 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!304 = !{!298, !38, i64 431}
!305 = !{!260, !37, i64 32}
!306 = !{!260, !37, i64 24}
!307 = !{!"editcurve.c:extrude_exec"}
!308 = distinct !{!308, !55}
!309 = !{!"editcurve.c:toggle_cyclic_exec"}
!310 = distinct !{!310, !55}
!311 = distinct !{!311, !55}
!312 = distinct !{!312, !55}
!313 = distinct !{!313, !55}
!314 = distinct !{!314, !55}
!315 = !{!"editcurve.c:toggle_cyclic_invoke"}
!316 = !{!178, !37, i64 88}
!317 = distinct !{!317, !55}
!318 = !{!"editcurve.c:select_linked_exec"}
!319 = distinct !{!319, !55}
!320 = distinct !{!320, !55}
!321 = distinct !{!321, !55}
!322 = distinct !{!322, !55}
!323 = distinct !{!323, !55}
!324 = !{!"editcurve.c:select_linked_invoke"}
!325 = !{!"editcurve.c:select_linked_pick_invoke"}
!326 = distinct !{!326, !55}
!327 = distinct !{!327, !55}
!328 = !{!"editcurve.c:select_row_exec"}
!329 = distinct !{!329, !55}
!330 = distinct !{!330, !55}
!331 = !{!"editcurve.c:select_next_exec"}
!332 = !{!"editcurve.c:select_previous_exec"}
!333 = !{!"editcurve.c:select_more_exec"}
!334 = distinct !{!334, !55}
!335 = distinct !{!335, !55}
!336 = !{!"editcurve.c:select_less_exec"}
!337 = distinct !{!337, !55}
!338 = distinct !{!338, !55}
!339 = distinct !{!339, !55}
!340 = distinct !{!340, !55}
!341 = distinct !{!341, !55}
!342 = !{!"editcurve.c:curve_select_random_exec"}
!343 = !{!"editcurve.c:select_nth_bezt"}
!344 = distinct !{!344, !55}
!345 = !{!"editcurve.c:select_nth_bp"}
!346 = distinct !{!346, !55}
!347 = !{!"editcurve.c:select_nth_exec"}
!348 = !{!"editcurve.c:duplicate_exec"}
!349 = !{!"editcurve.c:curve_delete_exec"}
!350 = !{!"editcurve.c:rna_curve_delete_type_itemf"}
!351 = !{!"editcurve.c:shade_smooth_exec"}
!352 = !{!51, !40, i64 22}
!353 = distinct !{!353, !55}
!354 = !{!355, !37, i64 32}
!355 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !356, i64 16}
!356 = !{!"PointerRNA", !357, i64 0, !37, i64 8, !37, i64 16}
!357 = !{!"", !37, i64 0}
!358 = !{!48, !37, i64 136}
!359 = !{!35, !41, i64 456}
!360 = !{!51, !40, i64 18}
!361 = distinct !{!361, !55}
!362 = distinct !{!362, !55}
!363 = distinct !{!363, !55}
!364 = distinct !{!364, !55}
!365 = !{!"editcurve.c:BLI_listbase_clear"}
!366 = !{!"editcurve.c:clear_tilt_exec"}
!367 = distinct !{!367, !55}
!368 = distinct !{!368, !55}
!369 = distinct !{!369, !55}
!370 = !{!"editcurve.c:get_data"}
!371 = !{!"editcurve.c:free_undoCurve"}
!372 = !{!373, !37, i64 24}
!373 = !{!"", !43, i64 0, !41, i64 16, !37, i64 24, !43, i64 32, !43, i64 48, !41, i64 64}
!374 = !{!"editcurve.c:undoCurve_to_editCurve"}
!375 = distinct !{!375, !55}
!376 = !{!373, !41, i64 16}
!377 = !{!373, !41, i64 64}
!378 = !{!"editcurve.c:editCurve_to_undoCurve"}
!379 = distinct !{!379, !55}
!380 = !{!"editcurve.c:keyIndex_updateBezt"}
!381 = !{!"editcurve.c:keyIndex_updateBP"}
!382 = !{!"editcurve.c:copy_v3_v3"}
!383 = !{!"editcurve.c:match_texture_space_exec"}
!384 = !{!35, !37, i64 1280}
!385 = distinct !{!385, !55}
!386 = !{!48, !40, i64 246}
!387 = !{!"editcurve.c:match_texture_space_poll"}
!388 = !{!"editcurve.c:getCVKeyIndex"}
!389 = !{!"editcurve.c:fcurve_path_rename"}
!390 = !{!94, !37, i64 16}
!391 = distinct !{!391, !55}
!392 = !{!"editcurve.c:fcurve_remove"}
!393 = !{!"editcurve.c:initialize_index_map"}
!394 = distinct !{!394, !55}
!395 = !{!86, !41, i64 20}
!396 = distinct !{!396, !55}
!397 = distinct !{!397, !55}
!398 = distinct !{!398, !55}
!399 = !{!"editcurve.c:getKeyIndexOrig_bezt"}
!400 = !{!86, !37, i64 0}
!401 = !{!"editcurve.c:sub_v3_v3v3"}
!402 = !{!"editcurve.c:getKeyIndexOrig_bp"}
!403 = !{!"editcurve.c:getKeyIndexOrig_keyIndex"}
!404 = !{!86, !41, i64 8}
!405 = !{!"editcurve.c:calc_keyHandles"}
!406 = distinct !{!406, !55}
!407 = distinct !{!407, !55}
!408 = !{!"editcurve.c:key_to_bezt"}
!409 = !{!"editcurve.c:bezt_to_key"}
!410 = !{!"editcurve.c:init_cvKeyIndex"}
!411 = !{!86, !37, i64 32}
!412 = !{!"editcurve.c:adduplicateflagNurb"}
!413 = !{!43, !37, i64 8}
!414 = distinct !{!414, !55}
!415 = distinct !{!415, !55}
!416 = distinct !{!416, !55}
!417 = distinct !{!417, !55}
!418 = distinct !{!418, !55}
!419 = distinct !{!419, !55}
!420 = distinct !{!420, !55}
!421 = distinct !{!421, !55}
!422 = distinct !{!422, !55}
!423 = distinct !{!423, !55}
!424 = distinct !{!424, !55}
!425 = !{!103, !41, i64 2100}
!426 = distinct !{!426, !55}
!427 = distinct !{!427, !55}
!428 = distinct !{!428, !55}
!429 = distinct !{!429, !55}
!430 = distinct !{!430, !55}
!431 = distinct !{!431, !55}
!432 = distinct !{!432, !55}
!433 = !{!51, !37, i64 8}
!434 = distinct !{!434, !55}
!435 = distinct !{!435, !55}
!436 = distinct !{!436, !55}
!437 = !{!"editcurve.c:BLI_listbase_is_empty"}
!438 = !{!"editcurve.c:curve_delete_segments"}
!439 = distinct !{!439, !55}
!440 = distinct !{!440, !55}
!441 = distinct !{!441, !55}
!442 = distinct !{!442, !55}
!443 = distinct !{!443, !55}
!444 = distinct !{!444, !55}
!445 = distinct !{!445, !55}
!446 = distinct !{!446, !55}
!447 = distinct !{!447, !55}
!448 = distinct !{!448, !55}
!449 = distinct !{!449, !55}
!450 = distinct !{!450, !55}
!451 = distinct !{!451, !55}
!452 = !{!"editcurve.c:isNurbselU"}
!453 = distinct !{!453, !55}
!454 = distinct !{!454, !55}
!455 = !{!"editcurve.c:isNurbselV"}
!456 = distinct !{!456, !55}
!457 = distinct !{!457, !55}
!458 = !{!"editcurve.c:keyIndex_delNurbList"}
!459 = distinct !{!459, !55}
!460 = !{!"editcurve.c:keyIndex_delNurb"}
!461 = distinct !{!461, !55}
!462 = distinct !{!462, !55}
!463 = !{!"editcurve.c:keyData_switchDirectionNurb"}
!464 = !{!"editcurve.c:keyIndex_switchDirection"}
!465 = distinct !{!465, !55}
!466 = distinct !{!466, !55}
!467 = distinct !{!467, !55}
!468 = distinct !{!468, !55}
!469 = !{!"editcurve.c:switch_keys_direction"}
!470 = distinct !{!470, !55}
!471 = distinct !{!471, !55}
!472 = distinct !{!472, !55}
!473 = distinct !{!473, !55}
!474 = !{!"editcurve.c:keyIndex_swap"}
!475 = !{!"editcurve.c:popCVKeyIndex"}
!476 = !{!"editcurve.c:swap_v3_v3"}
!477 = !{!"editcurve.c:mod_i"}
!478 = !{!"editcurve.c:smooth_single_bezt"}
!479 = distinct !{!479, !55}
!480 = !{!"editcurve.c:smooth_single_bp"}
!481 = distinct !{!481, !55}
!482 = !{!"editcurve.c:curve_smooth_value"}
!483 = distinct !{!483, !55}
!484 = distinct !{!484, !55}
!485 = distinct !{!485, !55, !486, !487}
!486 = !{!"llvm.loop.isvectorized", i32 1}
!487 = !{!"llvm.loop.unroll.runtime.disable"}
!488 = distinct !{!488, !55}
!489 = distinct !{!489, !55}
!490 = distinct !{!490, !55}
!491 = distinct !{!491, !55, !486, !487}
!492 = distinct !{!492, !55}
!493 = distinct !{!493, !55}
!494 = !{!"editcurve.c:nurb_has_selected_cps"}
!495 = distinct !{!495, !55}
!496 = distinct !{!496, !55}
!497 = distinct !{!497, !55}
!498 = !{!"editcurve.c:subdividenurb"}
!499 = distinct !{!499, !55}
!500 = distinct !{!500, !55}
!501 = distinct !{!501, !55}
!502 = distinct !{!502, !55}
!503 = distinct !{!503, !55}
!504 = distinct !{!504, !55}
!505 = distinct !{!505, !55}
!506 = distinct !{!506, !55}
!507 = distinct !{!507, !55}
!508 = distinct !{!508, !55}
!509 = distinct !{!509, !55}
!510 = distinct !{!510, !55}
!511 = distinct !{!511, !55}
!512 = distinct !{!512, !55}
!513 = distinct !{!513, !55}
!514 = distinct !{!514, !55}
!515 = distinct !{!515, !55}
!516 = distinct !{!516, !55}
!517 = distinct !{!517, !55}
!518 = distinct !{!518, !55}
!519 = distinct !{!519, !55}
!520 = distinct !{!520, !55}
!521 = distinct !{!521, !55}
!522 = distinct !{!522, !55}
!523 = !{!"editcurve.c:isNurbsel_count"}
!524 = distinct !{!524, !55}
!525 = distinct !{!525, !55}
!526 = !{!"editcurve.c:merge_nurb"}
!527 = !{!528, !37, i64 0}
!528 = !{!"NurbSort", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24}
!529 = !{!528, !37, i64 16}
!530 = distinct !{!530, !55}
!531 = !{!"editcurve.c:make_selection_list_nurb"}
!532 = distinct !{!532, !55}
!533 = distinct !{!533, !55}
!534 = distinct !{!534, !55}
!535 = !{!"editcurve.c:merge_2_nurb"}
!536 = distinct !{!536, !55}
!537 = distinct !{!537, !55}
!538 = distinct !{!538, !55}
!539 = distinct !{!539, !55}
!540 = !{!"editcurve.c:mul_v3_fl"}
!541 = !{!"editcurve.c:len_v3v3"}
!542 = !{!"editcurve.c:len_v3"}
!543 = !{!"editcurve.c:dot_v3v3"}
!544 = !{!"editcurve.c:is_u_selected"}
!545 = distinct !{!545, !55}
!546 = !{!"editcurve.c:rotate_direction_nurb"}
!547 = distinct !{!547, !55}
!548 = distinct !{!548, !55}
!549 = !{!"editcurve.c:switchdirection_knots"}
!550 = distinct !{!550, !55}
!551 = distinct !{!551, !55}
!552 = distinct !{!552, !55}
!553 = !{!"editcurve.c:findnearestNurbvert__doClosest"}
!554 = !{!"editcurve.c:len_manhattan_v2v2"}
!555 = !{!"editcurve.c:sub_v2_v2v2"}
!556 = !{!"editcurve.c:len_manhattan_v2"}
!557 = !{!"editcurve.c:sub_v3_v3"}
!558 = !{!"editcurve.c:addvert_Nurb"}
!559 = !{!57, !38, i64 49}
!560 = !{!57, !38, i64 50}
!561 = !{!48, !40, i64 284}
!562 = !{!51, !40, i64 36}
!563 = !{i64 0, i64 36, !191, i64 36, i64 4, !70, i64 40, i64 4, !70, i64 44, i64 4, !70, i64 48, i64 1, !191, i64 49, i64 1, !191, i64 50, i64 1, !191, i64 51, i64 1, !191, i64 52, i64 1, !191, i64 53, i64 1, !191, i64 54, i64 1, !191, i64 55, i64 1, !191, i64 56, i64 4, !70, i64 60, i64 4, !70, i64 64, i64 4, !70, i64 68, i64 4, !191}
!564 = !{!"editcurve.c:findselectedNurbvert"}
!565 = distinct !{!565, !55}
!566 = distinct !{!566, !55}
!567 = distinct !{!567, !55}
!568 = !{!"editcurve.c:add_v3_v3v3"}
!569 = !{!"editcurve.c:select_adjacent_cp"}
!570 = distinct !{!570, !55}
!571 = distinct !{!571, !55}
!572 = distinct !{!572, !55}
!573 = !{!"editcurve.c:curve_select_random"}
!574 = distinct !{!574, !55}
!575 = distinct !{!575, !55}
!576 = distinct !{!576, !55}
!577 = !{!"editcurve.c:curve_delete_vertices"}
!578 = !{!"editcurve.c:ed_surf_delete_selected"}
!579 = distinct !{!579, !55}
!580 = distinct !{!580, !55}
!581 = distinct !{!581, !55}
!582 = distinct !{!582, !55}
!583 = distinct !{!583, !55}
!584 = !{!"editcurve.c:ed_curve_delete_selected"}
!585 = distinct !{!585, !55}
!586 = distinct !{!586, !55}
!587 = distinct !{!587, !55}
!588 = distinct !{!588, !55}
!589 = distinct !{!589, !55}
!590 = distinct !{!590, !55}
!591 = !{!"editcurve.c:keyIndex_delBP"}
!592 = !{!"editcurve.c:keyIndex_delCV"}
!593 = !{!"editcurve.c:keyIndex_delBezt"}
!594 = !{!"editcurve.c:dupli_keyIndexHash"}
!595 = distinct !{!595, !55}
!596 = !{!"editcurve.c:keyIndex_updateNurb"}
!597 = !{!"editcurve.c:BLI_ghashIterator_done"}
!598 = !{!599, !37, i64 8}
!599 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !41, i64 16}
!600 = !{!"editcurve.c:BLI_ghashIterator_getKey"}
!601 = !{!602, !37, i64 8}
!602 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
!603 = !{!"editcurve.c:BLI_ghashIterator_getValue"}
!604 = !{!602, !37, i64 16}
!605 = !{!"editcurve.c:keyIndex_updateCV"}
!606 = distinct !{!606, !55}
!607 = !{!"editcurve.c:zero_v3"}
