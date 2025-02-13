; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_object_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_object_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.LodLevel = type { ptr, ptr, ptr, i32, float }
%struct.EvaluationContext = type { i32 }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
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
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.ParameterDynAlloc = type { i64, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Object Mode\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Edit Mode\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"POSE\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Pose Mode\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SCULPT\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Sculpt Mode\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"VERTEX_PAINT\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Vertex Paint\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"WEIGHT_PAINT\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Weight Paint\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"TEXTURE_PAINT\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Texture Paint\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"PARTICLE_EDIT\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Particle Edit\00", align 1
@object_mode_items = dso_local local_unnamed_addr global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 130, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 64, ptr @.str.5, i32 137, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.7, i32 136, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 133, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.11, i32 135, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.13, i32 134, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 32, ptr @.str.15, i32 138, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [11 x i8] c"PLAIN_AXES\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Plain Axes\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"ARROWS\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Arrows\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"SINGLE_ARROW\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Single Arrow\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"CIRCLE\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"CUBE\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Cube\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"SPHERE\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"CONE\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Cone\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@object_empty_drawtype_items = dso_local local_unnamed_addr global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [5 x i8] c"BALL\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Ball\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"CAPSULE\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Capsule\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"PLANE\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Plane\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ELLIPSOID\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"Ellipsoid\00", align 1
@metaelem_type_items = dso_local local_unnamed_addr global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.33, i32 308, ptr @.str.34, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.35, i32 310, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.37, i32 306, ptr @.str.38, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.39, i32 309, ptr @.str.40, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.25, i32 307, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"MESH\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"SURFACE\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Surface\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"Meta\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"FONT\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"ARMATURE\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"LATTICE\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"CAMERA\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"LAMP\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"SPEAKER\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@object_type_items = dso_local local_unnamed_addr global [14 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.41, i32 0, ptr @.str.42, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 25, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.2 }, %struct.EnumPropertyItem { i32 22, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 11, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.59, i32 0, ptr @.str.60, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.61, i32 0, ptr @.str.62, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@object_type_curve_items = dso_local local_unnamed_addr global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.63 = private unnamed_addr constant [6 x i8] c"POS_X\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"+X\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"POS_Y\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"+Y\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"POS_Z\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"+Z\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"NEG_X\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"NEG_Y\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"-Y\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"NEG_Z\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"-Z\00", align 1
@object_axis_items = dso_local local_unnamed_addr global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.65, i32 0, ptr @.str.66, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.67, i32 0, ptr @.str.68, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.69, i32 0, ptr @.str.70, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.71, i32 0, ptr @.str.72, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.73, i32 0, ptr @.str.74, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@object_axis_unsigned_items = dso_local local_unnamed_addr global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.75, i32 0, ptr @.str.75, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.76, i32 0, ptr @.str.76, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.77, i32 0, ptr @.str.77, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Object = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ObjectModifiers, ptr @RNA_NodeInstanceHash, ptr null, %struct.ListBase { ptr @rna_Object_data, ptr @rna_Object_lod_levels } }, ptr @.str.436, ptr null, ptr null, i32 5, ptr @.str.436, ptr @.str.437, ptr @.str.83, i32 159, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase { ptr @rna_Object_convert_space_func, ptr @rna_Object_update_from_editmode_func } }, align 8
@rna_Object_material_slots = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_active_material, ptr @rna_Object_proxy_group, i32 -1, ptr @.str.126, i32 16384, ptr @.str.127, ptr @.str.128, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_material_slots_begin, ptr @Object_material_slots_next, ptr @Object_material_slots_end, ptr @Object_material_slots_get, ptr @Object_material_slots_length, ptr @Object_material_slots_lookup_int, ptr @Object_material_slots_lookup_string, ptr null, ptr @RNA_MaterialSlot }, align 8
@.str.78 = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.Object_material_slots_lookup_int = private unnamed_addr constant [33 x i8] c"Object_material_slots_lookup_int\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.79 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_Object_modifiers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_constraints, ptr @rna_Object_matrix_parent_inverse, i32 -1, ptr @.str.194, i32 0, ptr @.str.195, ptr @.str.196, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ObjectModifiers, ptr null }, ptr @Object_modifiers_begin, ptr @Object_modifiers_next, ptr @Object_modifiers_end, ptr @Object_modifiers_get, ptr null, ptr @Object_modifiers_lookup_int, ptr @Object_modifiers_lookup_string, ptr null, ptr @RNA_Modifier }, align 8
@rna_Object_constraints = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_game, ptr @rna_Object_modifiers, i32 -1, ptr @.str.197, i32 0, ptr @.str.198, ptr @.str.199, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ObjectConstraints, ptr null }, ptr @Object_constraints_begin, ptr @Object_constraints_next, ptr @Object_constraints_end, ptr @Object_constraints_get, ptr null, ptr @Object_constraints_lookup_int, ptr @Object_constraints_lookup_string, ptr null, ptr @RNA_Constraint }, align 8
@rna_Object_vertex_groups = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_empty_draw_type, ptr @rna_Object_game, i32 -1, ptr @.str.203, i32 0, ptr @.str.204, ptr @.str.205, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_VertexGroups, ptr null }, ptr @Object_vertex_groups_begin, ptr @Object_vertex_groups_next, ptr @Object_vertex_groups_end, ptr @Object_vertex_groups_get, ptr null, ptr @Object_vertex_groups_lookup_int, ptr @Object_vertex_groups_lookup_string, ptr null, ptr @RNA_VertexGroup }, align 8
@RNA_ImageUser = external global %struct.StructRNA, align 8
@RNA_SoftBodySettings = external global %struct.StructRNA, align 8
@rna_Object_particle_systems = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_rigid_body, ptr @rna_Object_soft_body, i32 -1, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.235, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ParticleSystems, ptr null }, ptr @Object_particle_systems_begin, ptr @Object_particle_systems_next, ptr @Object_particle_systems_end, ptr @Object_particle_systems_get, ptr null, ptr @Object_particle_systems_lookup_int, ptr @Object_particle_systems_lookup_string, ptr null, ptr @RNA_ParticleSystem }, align 8
@RNA_RigidBodyObject = external global %struct.StructRNA, align 8
@RNA_RigidBodyConstraint = external global %struct.StructRNA, align 8
@RNA_AnimData = external global %struct.StructRNA, align 8
@RNA_AnimViz = external global %struct.StructRNA, align 8
@RNA_MotionPath = external global %struct.StructRNA, align 8
@RNA_Group = external global %struct.StructRNA, align 8
@rna_Object_dupli_list = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_is_duplicator, ptr @rna_Object_dupli_frames_off, i32 -1, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.303, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_dupli_list_begin, ptr @Object_dupli_list_next, ptr @Object_dupli_list_end, ptr @Object_dupli_list_get, ptr null, ptr @Object_dupli_list_lookup_int, ptr null, ptr null, ptr @RNA_DupliObject }, align 8
@RNA_GreasePencil = external global %struct.StructRNA, align 8
@RNA_Action = external global %struct.StructRNA, align 8
@RNA_Pose = external global %struct.StructRNA, align 8
@rna_Object_lod_levels = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_use_dynamic_topology_sculpting, i32 -1, ptr @.str.358, i32 0, ptr @.str.359, ptr @.str.360, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85852160, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_lod_levels_begin, ptr @Object_lod_levels_next, ptr @Object_lod_levels_end, ptr @Object_lod_levels_get, ptr null, ptr @Object_lod_levels_lookup_int, ptr null, ptr null, ptr @RNA_LodLevel }, align 8
@rna_ObjectModifiers_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectModifiers_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectModifiers_rna_properties_begin, ptr @ObjectModifiers_rna_properties_next, ptr @ObjectModifiers_rna_properties_end, ptr @ObjectModifiers_rna_properties_get, ptr null, ptr null, ptr @ObjectModifiers_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ObjectConstraints_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectConstraints_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectConstraints_rna_properties_begin, ptr @ObjectConstraints_rna_properties_next, ptr @ObjectConstraints_rna_properties_end, ptr @ObjectConstraints_rna_properties_get, ptr null, ptr null, ptr @ObjectConstraints_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_VertexGroups_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroups_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexGroups_rna_properties_begin, ptr @VertexGroups_rna_properties_next, ptr @VertexGroups_rna_properties_end, ptr @VertexGroups_rna_properties_get, ptr null, ptr null, ptr @VertexGroups_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ParticleSystems_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleSystems_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleSystems_rna_properties_begin, ptr @ParticleSystems_rna_properties_next, ptr @ParticleSystems_rna_properties_end, ptr @ParticleSystems_rna_properties_get, ptr null, ptr null, ptr @ParticleSystems_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GameObjectSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_rna_properties_begin, ptr @GameObjectSettings_rna_properties_next, ptr @GameObjectSettings_rna_properties_end, ptr @GameObjectSettings_rna_properties_get, ptr null, ptr null, ptr @GameObjectSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_GameObjectSettings_sensors = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_controllers, ptr @rna_GameObjectSettings_rna_type, i32 -1, ptr @.str.492, i32 0, ptr @.str.493, ptr @.str.494, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_sensors_begin, ptr @GameObjectSettings_sensors_next, ptr @GameObjectSettings_sensors_end, ptr @GameObjectSettings_sensors_get, ptr null, ptr @GameObjectSettings_sensors_lookup_int, ptr @GameObjectSettings_sensors_lookup_string, ptr null, ptr @RNA_Sensor }, align 8
@rna_GameObjectSettings_controllers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_actuators, ptr @rna_GameObjectSettings_sensors, i32 -1, ptr @.str.495, i32 0, ptr @.str.496, ptr @.str.497, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_controllers_begin, ptr @GameObjectSettings_controllers_next, ptr @GameObjectSettings_controllers_end, ptr @GameObjectSettings_controllers_get, ptr null, ptr @GameObjectSettings_controllers_lookup_int, ptr @GameObjectSettings_controllers_lookup_string, ptr null, ptr @RNA_Controller }, align 8
@rna_GameObjectSettings_actuators = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_properties, ptr @rna_GameObjectSettings_controllers, i32 -1, ptr @.str.498, i32 0, ptr @.str.499, ptr @.str.500, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_actuators_begin, ptr @GameObjectSettings_actuators_next, ptr @GameObjectSettings_actuators_end, ptr @GameObjectSettings_actuators_get, ptr null, ptr @GameObjectSettings_actuators_lookup_int, ptr @GameObjectSettings_actuators_lookup_string, ptr null, ptr @RNA_Actuator }, align 8
@rna_GameObjectSettings_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_show_sensors, ptr @rna_GameObjectSettings_actuators, i32 -1, ptr @.str.501, i32 0, ptr @.str.439, ptr @.str.502, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_properties_begin, ptr @GameObjectSettings_properties_next, ptr @GameObjectSettings_properties_end, ptr @GameObjectSettings_properties_get, ptr null, ptr @GameObjectSettings_properties_lookup_int, ptr @GameObjectSettings_properties_lookup_string, ptr null, ptr @RNA_GameProperty }, align 8
@RNA_GameSoftBodySettings = external global %struct.StructRNA, align 8
@rna_ObjectBase_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectBase_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectBase_rna_properties_begin, ptr @ObjectBase_rna_properties_next, ptr @ObjectBase_rna_properties_end, ptr @ObjectBase_rna_properties_get, ptr null, ptr null, ptr @ObjectBase_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_VertexGroup_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroup_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexGroup_rna_properties_begin, ptr @VertexGroup_rna_properties_next, ptr @VertexGroup_rna_properties_end, ptr @VertexGroup_rna_properties_get, ptr null, ptr null, ptr @VertexGroup_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_MaterialSlot_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSlot_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialSlot_rna_properties_begin, ptr @MaterialSlot_rna_properties_next, ptr @MaterialSlot_rna_properties_end, ptr @MaterialSlot_rna_properties_get, ptr null, ptr null, ptr @MaterialSlot_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_DupliObject_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DupliObject_rna_properties_begin, ptr @DupliObject_rna_properties_next, ptr @DupliObject_rna_properties_end, ptr @DupliObject_rna_properties_get, ptr null, ptr null, ptr @DupliObject_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_ParticleSystem = external global %struct.StructRNA, align 8
@rna_LodLevel_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_LodLevel_rna_type, ptr null, i32 -1, ptr @.str.438, i32 128, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.83, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LodLevel_rna_properties_begin, ptr @LodLevel_rna_properties_next, ptr @LodLevel_rna_properties_end, ptr @LodLevel_rna_properties_get, ptr null, ptr null, ptr @LodLevel_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Object_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_mode, ptr @rna_Object_data, i32 -1, ptr @.str.84, i32 2, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_type_items, i32 13, i32 0 }, align 8
@.str.80 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"Object data\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Object_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_type, ptr null, i32 -1, ptr @.str.80, i32 41943105, ptr @.str.81, ptr @.str.82, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_data_get, ptr @Object_data_set, ptr @rna_Object_data_typef, ptr null, ptr @RNA_ID }, align 8
@rna_Object_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_layers, ptr @rna_Object_type, i32 -1, ptr @.str.87, i32 2, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_mode_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_mode_items, i32 8, i32 0 }, align 8
@.str.84 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"Type of Object\00", align 1
@rna_Object_type_items = internal global [14 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.41, i32 0, ptr @.str.42, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 25, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.2 }, %struct.EnumPropertyItem { i32 22, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 11, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.59, i32 0, ptr @.str.60, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.61, i32 0, ptr @.str.62, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_layers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_layers_local_view, ptr @rna_Object_mode, i32 -1, ptr @.str.90, i32 65537, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.83, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 20, i32 0, i32 0], i32 20, ptr @rna_Object_layer_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_layers_get, ptr @Object_layers_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Object_layers_default }, align 8
@.str.87 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"Object interaction mode\00", align 1
@rna_Object_mode_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 130, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 64, ptr @.str.5, i32 137, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.7, i32 136, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 133, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.11, i32 135, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.13, i32 134, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 32, ptr @.str.15, i32 138, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_layers_local_view = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_select, ptr @rna_Object_layers, i32 -1, ptr @.str.93, i32 2, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.83, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 8, i32 0, i32 0], i32 8, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_layers_local_view_get, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Object_layers_local_view_default }, align 8
@.str.90 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"Layers the object is on\00", align 1
@rna_Object_layers_default = internal global [20 x i32] zeroinitializer, align 16
@rna_Object_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_bound_box, ptr @rna_Object_layers_local_view, i32 -1, ptr @.str.96, i32 3, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_select_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_select_get, ptr @Object_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.93 = private unnamed_addr constant [18 x i8] c"layers_local_view\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"Local View Layers\00", align 1
@.str.95 = private unnamed_addr constant [38 x i8] c"3D local view layers the object is on\00", align 1
@rna_Object_layers_local_view_default = internal global [8 x i32] zeroinitializer, align 16
@rna_Object_bound_box = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_parent, ptr @rna_Object_select, i32 -1, ptr @.str.99, i32 2, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 2, [3 x i32] [i32 8, i32 3, i32 0], i32 24, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_bound_box_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_bound_box_default }, align 8
@.str.96 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"Object selection state\00", align 1
@rna_Object_parent = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_parent_type, ptr @rna_Object_bound_box, i32 -1, ptr @.str.102, i32 9437185, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_dependency_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_parent_get, ptr @Object_parent_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.99 = private unnamed_addr constant [10 x i8] c"bound_box\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"Bounding Box\00", align 1
@.str.101 = private unnamed_addr constant [90 x i8] c"Object's bounding box in object-space coordinates, all values are -1.0 when not available\00", align 1
@rna_Object_bound_box_default = internal global [24 x float] zeroinitializer, align 16
@rna_Object_parent_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_parent_vertices, ptr @rna_Object_parent, i32 -1, ptr @.str.105, i32 3, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_dependency_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_parent_type_get, ptr @Object_parent_type_set, ptr @rna_Object_parent_type_itemf, ptr null, ptr null, ptr null, ptr @rna_Object_parent_type_items, i32 8, i32 0 }, align 8
@.str.102 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"Parent Object\00", align 1
@rna_Object_parent_vertices = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_parent_bone, ptr @rna_Object_parent_type, i32 -1, ptr @.str.108, i32 8195, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.83, i32 1, i32 13, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 140, i32 0, ptr null, ptr null }, ptr null, ptr null, ptr @Object_parent_vertices_get, ptr @Object_parent_vertices_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr @rna_Object_parent_vertices_default }, align 8
@.str.105 = private unnamed_addr constant [12 x i8] c"parent_type\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"Parent Type\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"Type of parent relation\00", align 1
@rna_Object_parent_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.436, ptr @.str.728 }, %struct.EnumPropertyItem { i32 1, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.729 }, %struct.EnumPropertyItem { i32 2, ptr @.str.730, i32 0, ptr @.str.401, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.731 }, %struct.EnumPropertyItem { i32 5, ptr @.str.732, i32 0, ptr @.str.733, ptr @.str.734 }, %struct.EnumPropertyItem { i32 6, ptr @.str.735, i32 0, ptr @.str.736, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.737, i32 0, ptr @.str.738, ptr @.str.739 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_parent_bone = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_track_axis, ptr @rna_Object_parent_vertices, i32 -1, ptr @.str.111, i32 262145, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.83, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Object_dependency_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_parent_bone_get, ptr @Object_parent_bone_length, ptr @Object_parent_bone_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.108 = private unnamed_addr constant [16 x i8] c"parent_vertices\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"Parent Vertices\00", align 1
@.str.110 = private unnamed_addr constant [59 x i8] c"Indices of vertices in case of a vertex parenting relation\00", align 1
@rna_Object_parent_vertices_default = internal global [3 x i32] zeroinitializer, align 4
@rna_Object_track_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_up_axis, ptr @rna_Object_parent_bone, i32 -1, ptr @.str.114, i32 3, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_track_axis_get, ptr @Object_track_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_track_axis_items, i32 6, i32 0 }, align 8
@.str.111 = private unnamed_addr constant [12 x i8] c"parent_bone\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"Parent Bone\00", align 1
@.str.113 = private unnamed_addr constant [57 x i8] c"Name of parent bone in case of a bone parenting relation\00", align 1
@rna_Object_up_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_proxy, ptr @rna_Object_track_axis, i32 -1, ptr @.str.117, i32 3, ptr @.str.118, ptr @.str.119, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_up_axis_get, ptr @Object_up_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_up_axis_items, i32 3, i32 0 }, align 8
@.str.114 = private unnamed_addr constant [11 x i8] c"track_axis\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"Track Axis\00", align 1
@.str.116 = private unnamed_addr constant [96 x i8] c"Axis that points in 'forward' direction (applies to DupliFrame when parent 'Follow' is enabled)\00", align 1
@rna_Object_track_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.65, i32 0, ptr @.str.66, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.67, i32 0, ptr @.str.68, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.69, i32 0, ptr @.str.70, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.71, i32 0, ptr @.str.72, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.73, i32 0, ptr @.str.74, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_proxy = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_proxy_group, ptr @rna_Object_up_axis, i32 -1, ptr @.str.120, i32 8388608, ptr @.str.121, ptr @.str.122, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_proxy_get, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.117 = private unnamed_addr constant [8 x i8] c"up_axis\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"Up Axis\00", align 1
@.str.119 = private unnamed_addr constant [97 x i8] c"Axis that points in the upward direction (applies to DupliFrame when parent 'Follow' is enabled)\00", align 1
@rna_Object_up_axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.75, i32 0, ptr @.str.75, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.76, i32 0, ptr @.str.76, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.77, i32 0, ptr @.str.77, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_proxy_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_material_slots, ptr @rna_Object_proxy, i32 -1, ptr @.str.123, i32 8388608, ptr @.str.124, ptr @.str.125, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_proxy_group_get, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.120 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"Proxy\00", align 1
@.str.122 = private unnamed_addr constant [42 x i8] c"Library object this proxy object controls\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"proxy_group\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"Proxy Group\00", align 1
@.str.125 = private unnamed_addr constant [59 x i8] c"Library group duplicator object this proxy object controls\00", align 1
@rna_Object_active_material = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_active_material_index, ptr @rna_Object_material_slots, i32 -1, ptr @.str.129, i32 8388609, ptr @.str.130, ptr @.str.131, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MaterialSlot_update, i32 85393408, ptr @rna_Object_active_material_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_active_material_get, ptr @Object_active_material_set, ptr null, ptr null, ptr @RNA_Material }, align 8
@.str.126 = private unnamed_addr constant [15 x i8] c"material_slots\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"Material Slots\00", align 1
@.str.128 = private unnamed_addr constant [29 x i8] c"Material slots in the object\00", align 1
@RNA_MaterialSlot = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DupliObject, ptr @RNA_VertexGroup, ptr null, %struct.ListBase { ptr @rna_MaterialSlot_rna_properties, ptr @rna_MaterialSlot_name } }, ptr @.str.667, ptr null, ptr null, i32 4, ptr @.str.668, ptr @.str.669, ptr @.str.83, i32 165, ptr @rna_MaterialSlot_name, ptr @rna_MaterialSlot_rna_properties, ptr null, ptr null, ptr null, ptr @rna_MaterialSlot_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Object_active_material_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_location, ptr @rna_Object_active_material, i32 -1, ptr @.str.132, i32 1, ptr @.str.133, ptr @.str.134, i32 0, ptr @.str.83, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 102760448, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_active_material_index_get, ptr @Object_active_material_index_set, ptr null, ptr null, ptr @rna_Object_active_material_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.129 = private unnamed_addr constant [16 x i8] c"active_material\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"Active Material\00", align 1
@.str.131 = private unnamed_addr constant [32 x i8] c"Active material being displayed\00", align 1
@RNA_Material = external global %struct.StructRNA, align 8
@rna_Object_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_rotation_quaternion, ptr @rna_Object_active_material_index, i32 -1, ptr @.str.135, i32 8195, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.83, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr @rna_Object_location_editable, i32 464, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_location_get, ptr @Object_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_Object_location_default }, align 8
@.str.132 = private unnamed_addr constant [22 x i8] c"active_material_index\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"Active Material Index\00", align 1
@.str.134 = private unnamed_addr constant [30 x i8] c"Index of active material slot\00", align 1
@rna_Object_rotation_quaternion = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_rotation_axis_angle, ptr @rna_Object_location, i32 -1, ptr @.str.138, i32 8195, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.83, i32 2, i32 27, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr @rna_Object_rotation_4d_editable, i32 560, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_rotation_quaternion_get, ptr @Object_rotation_quaternion_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_rotation_quaternion_default }, align 8
@.str.135 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"Location of the object\00", align 1
@rna_Object_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_rotation_axis_angle = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_rotation_euler, ptr @rna_Object_rotation_quaternion, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.83, i32 2, i32 28, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr @rna_Object_rotation_4d_editable, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_rotation_axis_angle_get, ptr @Object_rotation_axis_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_rotation_axis_angle_default }, align 8
@.str.138 = private unnamed_addr constant [20 x i8] c"rotation_quaternion\00", align 1
@.str.139 = private unnamed_addr constant [20 x i8] c"Quaternion Rotation\00", align 1
@.str.140 = private unnamed_addr constant [24 x i8] c"Rotation in Quaternions\00", align 1
@rna_Object_rotation_quaternion_default = internal global [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@rna_Object_rotation_euler = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_rotation_mode, ptr @rna_Object_rotation_axis_angle, i32 -1, ptr @.str.144, i32 8195, ptr @.str.145, ptr @.str.146, i32 0, ptr @.str.83, i32 2, i32 327706, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr @rna_Object_rotation_euler_editable, i32 536, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_rotation_euler_get, ptr @Object_rotation_euler_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_rotation_euler_default }, align 8
@.str.141 = private unnamed_addr constant [20 x i8] c"rotation_axis_angle\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"Axis-Angle Rotation\00", align 1
@.str.143 = private unnamed_addr constant [57 x i8] c"Angle of Rotation for Axis-Angle rotation representation\00", align 1
@rna_Object_rotation_axis_angle_default = internal global [4 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 16
@rna_Object_rotation_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_scale, ptr @rna_Object_rotation_euler, i32 -1, ptr @.str.147, i32 3, ptr @.str.148, ptr @.str.2, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_rotation_mode_get, ptr @Object_rotation_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_rotation_mode_items, i32 8, i32 0 }, align 8
@.str.144 = private unnamed_addr constant [15 x i8] c"rotation_euler\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"Euler Rotation\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"Rotation in Eulers\00", align 1
@rna_Object_rotation_euler_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dimensions, ptr @rna_Object_rotation_mode, i32 -1, ptr @.str.149, i32 67117059, ptr @.str.150, ptr @.str.151, i32 0, ptr @.str.83, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr @rna_Object_scale_editable, i32 500, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_scale_get, ptr @Object_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_scale_default }, align 8
@.str.147 = private unnamed_addr constant [14 x i8] c"rotation_mode\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"Rotation Mode\00", align 1
@rna_Object_rotation_mode_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.740, i32 0, ptr @.str.741, ptr @.str.742 }, %struct.EnumPropertyItem { i32 1, ptr @.str.743, i32 0, ptr @.str.744, ptr @.str.745 }, %struct.EnumPropertyItem { i32 2, ptr @.str.746, i32 0, ptr @.str.747, ptr @.str.748 }, %struct.EnumPropertyItem { i32 3, ptr @.str.749, i32 0, ptr @.str.750, ptr @.str.751 }, %struct.EnumPropertyItem { i32 4, ptr @.str.752, i32 0, ptr @.str.753, ptr @.str.754 }, %struct.EnumPropertyItem { i32 5, ptr @.str.755, i32 0, ptr @.str.756, ptr @.str.757 }, %struct.EnumPropertyItem { i32 6, ptr @.str.758, i32 0, ptr @.str.759, ptr @.str.760 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.761, i32 0, ptr @.str.762, ptr @.str.763 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_dimensions = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_delta_location, ptr @rna_Object_scale, i32 -1, ptr @.str.152, i32 3, ptr @.str.153, ptr @.str.154, i32 0, ptr @.str.83, i32 2, i32 65565, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_dimensions_get, ptr @Object_dimensions_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_dimensions_default }, align 8
@.str.149 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"Scaling of the object\00", align 1
@rna_Object_scale_default = internal global [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@rna_Object_delta_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_delta_rotation_euler, ptr @rna_Object_dimensions, i32 -1, ptr @.str.155, i32 8195, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.83, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 476, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_delta_location_get, ptr @Object_delta_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_Object_delta_location_default }, align 8
@.str.152 = private unnamed_addr constant [11 x i8] c"dimensions\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"Dimensions\00", align 1
@.str.154 = private unnamed_addr constant [47 x i8] c"Absolute bounding box dimensions of the object\00", align 1
@rna_Object_dimensions_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_delta_rotation_euler = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_delta_rotation_quaternion, ptr @rna_Object_delta_location, i32 -1, ptr @.str.158, i32 8195, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.83, i32 2, i32 327706, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 548, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_delta_rotation_euler_get, ptr @Object_delta_rotation_euler_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_delta_rotation_euler_default }, align 8
@.str.155 = private unnamed_addr constant [15 x i8] c"delta_location\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"Delta Location\00", align 1
@.str.157 = private unnamed_addr constant [54 x i8] c"Extra translation added to the location of the object\00", align 1
@rna_Object_delta_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_delta_rotation_quaternion = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_delta_scale, ptr @rna_Object_delta_rotation_euler, i32 -1, ptr @.str.161, i32 8195, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.83, i32 2, i32 27, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 576, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_delta_rotation_quaternion_get, ptr @Object_delta_rotation_quaternion_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_delta_rotation_quaternion_default }, align 8
@.str.158 = private unnamed_addr constant [21 x i8] c"delta_rotation_euler\00", align 1
@.str.159 = private unnamed_addr constant [23 x i8] c"Delta Rotation (Euler)\00", align 1
@.str.160 = private unnamed_addr constant [80 x i8] c"Extra rotation added to the rotation of the object (when using Euler rotations)\00", align 1
@rna_Object_delta_rotation_euler_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_delta_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_lock_location, ptr @rna_Object_delta_rotation_quaternion, i32 -1, ptr @.str.164, i32 67117059, ptr @.str.165, ptr @.str.166, i32 0, ptr @.str.83, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 524, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_delta_scale_get, ptr @Object_delta_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_delta_scale_default }, align 8
@.str.161 = private unnamed_addr constant [26 x i8] c"delta_rotation_quaternion\00", align 1
@.str.162 = private unnamed_addr constant [28 x i8] c"Delta Rotation (Quaternion)\00", align 1
@.str.163 = private unnamed_addr constant [85 x i8] c"Extra rotation added to the rotation of the object (when using Quaternion rotations)\00", align 1
@rna_Object_delta_rotation_quaternion_default = internal global [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@rna_Object_lock_location = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_lock_rotation, ptr @rna_Object_delta_scale, i32 -1, ptr @.str.167, i32 4099, ptr @.str.168, ptr @.str.169, i32 40, ptr @.str.83, i32 0, i32 0, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_lock_location_get, ptr @Object_lock_location_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Object_lock_location_default }, align 8
@.str.164 = private unnamed_addr constant [12 x i8] c"delta_scale\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"Delta Scale\00", align 1
@.str.166 = private unnamed_addr constant [47 x i8] c"Extra scaling added to the scale of the object\00", align 1
@rna_Object_delta_scale_default = internal global [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@rna_Object_lock_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_lock_rotation_w, ptr @rna_Object_lock_location, i32 -1, ptr @.str.170, i32 4099, ptr @.str.171, ptr @.str.172, i32 40, ptr @.str.83, i32 0, i32 0, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_lock_rotation_get, ptr @Object_lock_rotation_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Object_lock_rotation_default }, align 8
@.str.167 = private unnamed_addr constant [14 x i8] c"lock_location\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"Lock Location\00", align 1
@.str.169 = private unnamed_addr constant [42 x i8] c"Lock editing of location in the interface\00", align 1
@rna_Object_lock_location_default = internal global [3 x i32] zeroinitializer, align 4
@rna_Object_lock_rotation_w = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_lock_rotations_4d, ptr @rna_Object_lock_rotation, i32 -1, ptr @.str.173, i32 4099, ptr @.str.174, ptr @.str.175, i32 40, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_lock_rotation_w_get, ptr @Object_lock_rotation_w_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.170 = private unnamed_addr constant [14 x i8] c"lock_rotation\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"Lock Rotation\00", align 1
@.str.172 = private unnamed_addr constant [42 x i8] c"Lock editing of rotation in the interface\00", align 1
@rna_Object_lock_rotation_default = internal global [3 x i32] zeroinitializer, align 4
@rna_Object_lock_rotations_4d = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_lock_scale, ptr @rna_Object_lock_rotation_w, i32 -1, ptr @.str.176, i32 3, ptr @.str.177, ptr @.str.178, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_lock_rotations_4d_get, ptr @Object_lock_rotations_4d_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.173 = private unnamed_addr constant [16 x i8] c"lock_rotation_w\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"Lock Rotation (4D Angle)\00", align 1
@.str.175 = private unnamed_addr constant [79 x i8] c"Lock editing of 'angle' component of four-component rotations in the interface\00", align 1
@rna_Object_lock_scale = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_matrix_world, ptr @rna_Object_lock_rotations_4d, i32 -1, ptr @.str.179, i32 4099, ptr @.str.180, ptr @.str.181, i32 40, ptr @.str.83, i32 0, i32 0, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_lock_scale_get, ptr @Object_lock_scale_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Object_lock_scale_default }, align 8
@.str.176 = private unnamed_addr constant [18 x i8] c"lock_rotations_4d\00", align 1
@.str.177 = private unnamed_addr constant [20 x i8] c"Lock Rotations (4D)\00", align 1
@.str.178 = private unnamed_addr constant [78 x i8] c"Lock editing of four component rotations by components (instead of as Eulers)\00", align 1
@rna_Object_matrix_world = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_matrix_local, ptr @rna_Object_lock_scale, i32 -1, ptr @.str.182, i32 8193, ptr @.str.183, ptr @.str.184, i32 0, ptr @.str.83, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr @rna_Object_matrix_world_update, i32 85065728, ptr null, ptr null, i32 624, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_matrix_world_get, ptr @Object_matrix_world_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_matrix_world_default }, align 8
@.str.179 = private unnamed_addr constant [11 x i8] c"lock_scale\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"Lock Scale\00", align 1
@.str.181 = private unnamed_addr constant [39 x i8] c"Lock editing of scale in the interface\00", align 1
@rna_Object_lock_scale_default = internal global [3 x i32] zeroinitializer, align 4
@rna_Object_matrix_local = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_matrix_basis, ptr @rna_Object_matrix_world, i32 -1, ptr @.str.185, i32 1, ptr @.str.186, ptr @.str.187, i32 0, ptr @.str.83, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 85065728, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_matrix_local_get, ptr @Object_matrix_local_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_matrix_local_default }, align 8
@.str.182 = private unnamed_addr constant [13 x i8] c"matrix_world\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"Matrix World\00", align 1
@.str.184 = private unnamed_addr constant [33 x i8] c"Worldspace transformation matrix\00", align 1
@rna_Object_matrix_world_default = internal global [16 x float] zeroinitializer, align 16
@rna_Object_matrix_basis = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_matrix_parent_inverse, ptr @rna_Object_matrix_local, i32 -1, ptr @.str.188, i32 1, ptr @.str.189, ptr @.str.190, i32 0, ptr @.str.83, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Object_matrix_basis_get, ptr @Object_matrix_basis_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_matrix_basis_default }, align 8
@.str.185 = private unnamed_addr constant [13 x i8] c"matrix_local\00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"Local Matrix\00", align 1
@.str.187 = private unnamed_addr constant [38 x i8] c"Parent relative transformation matrix\00", align 1
@rna_Object_matrix_local_default = internal global [16 x float] zeroinitializer, align 16
@rna_Object_matrix_parent_inverse = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_modifiers, ptr @rna_Object_matrix_basis, i32 -1, ptr @.str.191, i32 8195, ptr @.str.192, ptr @.str.193, i32 0, ptr @.str.83, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 688, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_matrix_parent_inverse_get, ptr @Object_matrix_parent_inverse_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_matrix_parent_inverse_default }, align 8
@.str.188 = private unnamed_addr constant [13 x i8] c"matrix_basis\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"Input Matrix\00", align 1
@.str.190 = private unnamed_addr constant [111 x i8] c"Matrix access to location, rotation and scale (including deltas), before constraints and parenting are applied\00", align 1
@rna_Object_matrix_basis_default = internal global [16 x float] zeroinitializer, align 16
@.str.191 = private unnamed_addr constant [22 x i8] c"matrix_parent_inverse\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@.str.193 = private unnamed_addr constant [55 x i8] c"Inverse of object's parent matrix at time of parenting\00", align 1
@rna_Object_matrix_parent_inverse_default = internal global [16 x float] zeroinitializer, align 16
@.str.194 = private unnamed_addr constant [10 x i8] c"modifiers\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.196 = private unnamed_addr constant [53 x i8] c"Modifiers affecting the geometric data of the object\00", align 1
@RNA_ObjectModifiers = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ObjectConstraints, ptr @RNA_Object, ptr null, %struct.ListBase { ptr @rna_ObjectModifiers_rna_properties, ptr @rna_ObjectModifiers_rna_type } }, ptr @.str.456, ptr null, ptr null, i32 4, ptr @.str.457, ptr @.str.458, ptr @.str.83, i32 17, ptr null, ptr @rna_ObjectModifiers_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ObjectModifiers_new_func, ptr @rna_ObjectModifiers_clear_func } }, align 8
@RNA_Modifier = external global %struct.StructRNA, align 8
@rna_Object_game = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_vertex_groups, ptr @rna_Object_constraints, i32 -1, ptr @.str.200, i32 8650752, ptr @.str.201, ptr @.str.202, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_game_get, ptr null, ptr null, ptr null, ptr @RNA_GameObjectSettings }, align 8
@.str.197 = private unnamed_addr constant [12 x i8] c"constraints\00", align 1
@.str.198 = private unnamed_addr constant [12 x i8] c"Constraints\00", align 1
@.str.199 = private unnamed_addr constant [55 x i8] c"Constraints affecting the transformation of the object\00", align 1
@RNA_ObjectConstraints = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_VertexGroups, ptr @RNA_ObjectModifiers, ptr null, %struct.ListBase { ptr @rna_ObjectConstraints_rna_properties, ptr @rna_ObjectConstraints_active } }, ptr @.str.469, ptr null, ptr null, i32 4, ptr @.str.470, ptr @.str.471, ptr @.str.83, i32 17, ptr null, ptr @rna_ObjectConstraints_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ObjectConstraints_new_func, ptr @rna_ObjectConstraints_clear_func } }, align 8
@RNA_Constraint = external global %struct.StructRNA, align 8
@.str.200 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"Game Settings\00", align 1
@.str.202 = private unnamed_addr constant [44 x i8] c"Game engine related settings for the object\00", align 1
@RNA_GameObjectSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ObjectBase, ptr @RNA_ParticleSystems, ptr null, %struct.ListBase { ptr @rna_GameObjectSettings_rna_properties, ptr @rna_GameObjectSettings_show_state_panel } }, ptr @.str.631, ptr null, ptr null, i32 4, ptr @.str.632, ptr @.str.202, ptr @.str.83, i32 85, ptr null, ptr @rna_GameObjectSettings_rna_properties, ptr null, ptr @RNA_Object, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Object_empty_draw_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_empty_draw_size, ptr @rna_Object_vertex_groups, i32 -1, ptr @.str.206, i32 3, ptr @.str.207, ptr @.str.208, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_empty_draw_type_get, ptr @Object_empty_draw_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_empty_draw_type_items, i32 8, i32 2 }, align 8
@.str.203 = private unnamed_addr constant [14 x i8] c"vertex_groups\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"Vertex Groups\00", align 1
@.str.205 = private unnamed_addr constant [28 x i8] c"Vertex groups of the object\00", align 1
@RNA_VertexGroups = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ParticleSystems, ptr @RNA_ObjectConstraints, ptr null, %struct.ListBase { ptr @rna_VertexGroups_rna_properties, ptr @rna_VertexGroups_active_index } }, ptr @.str.484, ptr null, ptr null, i32 4, ptr @.str.204, ptr @.str.485, ptr @.str.83, i32 17, ptr null, ptr @rna_VertexGroups_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_VertexGroups_new_func, ptr @rna_VertexGroups_clear_func } }, align 8
@RNA_VertexGroup = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaterialSlot, ptr @RNA_ObjectBase, ptr null, %struct.ListBase { ptr @rna_VertexGroup_rna_properties, ptr @rna_VertexGroup_index } }, ptr @.str.657, ptr null, ptr null, i32 4, ptr @.str.658, ptr @.str.659, ptr @.str.83, i32 201, ptr @rna_VertexGroup_name, ptr @rna_VertexGroup_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_VertexGroup_add_func, ptr @rna_VertexGroup_weight_func } }, align 8
@rna_Object_empty_draw_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_empty_image_offset, ptr @rna_Object_empty_draw_type, i32 -1, ptr @.str.209, i32 8195, ptr @.str.210, ptr @.str.211, i32 0, ptr @.str.83, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 1048, i32 4, ptr null, ptr null }, ptr @Object_empty_draw_size_get, ptr @Object_empty_draw_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0x3F1A36E2E0000000, float 1.000000e+03, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.206 = private unnamed_addr constant [16 x i8] c"empty_draw_type\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"Empty Display Type\00", align 1
@.str.208 = private unnamed_addr constant [35 x i8] c"Viewport display style for empties\00", align 1
@rna_Object_empty_draw_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_empty_image_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_image_user, ptr @rna_Object_empty_draw_size, i32 -1, ptr @.str.212, i32 8195, ptr @.str.213, ptr @.str.214, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 85393408, ptr null, ptr null, i32 1384, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_empty_image_offset_get, ptr @Object_empty_image_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 2, float 0.000000e+00, ptr @rna_Object_empty_image_offset_default }, align 8
@.str.209 = private unnamed_addr constant [16 x i8] c"empty_draw_size\00", align 1
@.str.210 = private unnamed_addr constant [19 x i8] c"Empty Display Size\00", align 1
@.str.211 = private unnamed_addr constant [44 x i8] c"Size of display for empties in the viewport\00", align 1
@rna_Object_image_user = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_pass_index, ptr @rna_Object_empty_image_offset, i32 -1, ptr @.str.215, i32 8650752, ptr @.str.216, ptr @.str.217, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_image_user_get, ptr null, ptr null, ptr null, ptr @RNA_ImageUser }, align 8
@.str.212 = private unnamed_addr constant [19 x i8] c"empty_image_offset\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"Origin Offset\00", align 1
@.str.214 = private unnamed_addr constant [23 x i8] c"Origin offset distance\00", align 1
@rna_Object_empty_image_offset_default = internal global [2 x float] zeroinitializer, align 4
@rna_Object_pass_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_color, ptr @rna_Object_image_user, i32 -1, ptr @.str.218, i32 8195, ptr @.str.219, ptr @.str.220, i32 0, ptr @.str.83, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 83886080, ptr null, ptr null, i32 1124, i32 1, ptr null, ptr null }, ptr @Object_pass_index_get, ptr @Object_pass_index_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.215 = private unnamed_addr constant [11 x i8] c"image_user\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"Image User\00", align 1
@.str.217 = private unnamed_addr constant [74 x i8] c"Parameters defining which layer, pass and frame of the image is displayed\00", align 1
@rna_Object_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_field, ptr @rna_Object_pass_index, i32 -1, ptr @.str.221, i32 8195, ptr @.str.222, ptr @.str.223, i32 0, ptr @.str.83, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr null, i32 85393408, ptr null, ptr null, i32 1128, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Object_color_get, ptr @Object_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_color_default }, align 8
@.str.218 = private unnamed_addr constant [11 x i8] c"pass_index\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"Pass Index\00", align 1
@.str.220 = private unnamed_addr constant [41 x i8] c"Index number for the IndexOB render pass\00", align 1
@rna_Object_field = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_collision, ptr @rna_Object_color, i32 -1, ptr @.str.224, i32 8388608, ptr @.str.225, ptr @.str.226, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_field_get, ptr null, ptr null, ptr null, ptr @RNA_FieldSettings }, align 8
@.str.221 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.222 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.223 = private unnamed_addr constant [70 x i8] c"Object color and alpha, used when faces have the ObColor mode enabled\00", align 1
@rna_Object_color_default = internal global [4 x float] zeroinitializer, align 16
@rna_Object_collision = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_soft_body, ptr @rna_Object_field, i32 -1, ptr @.str.227, i32 8388608, ptr @.str.228, ptr @.str.229, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_collision_get, ptr null, ptr null, ptr null, ptr @RNA_CollisionSettings }, align 8
@.str.224 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.225 = private unnamed_addr constant [15 x i8] c"Field Settings\00", align 1
@.str.226 = private unnamed_addr constant [63 x i8] c"Settings for using the object as a field in physics simulation\00", align 1
@RNA_FieldSettings = external global %struct.StructRNA, align 8
@rna_Object_soft_body = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_particle_systems, ptr @rna_Object_collision, i32 -1, ptr @.str.230, i32 8388608, ptr @.str.231, ptr @.str.232, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_soft_body_get, ptr null, ptr null, ptr null, ptr @RNA_SoftBodySettings }, align 8
@.str.227 = private unnamed_addr constant [10 x i8] c"collision\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"Collision Settings\00", align 1
@.str.229 = private unnamed_addr constant [66 x i8] c"Settings for using the object as a collider in physics simulation\00", align 1
@RNA_CollisionSettings = external global %struct.StructRNA, align 8
@.str.230 = private unnamed_addr constant [10 x i8] c"soft_body\00", align 1
@.str.231 = private unnamed_addr constant [19 x i8] c"Soft Body Settings\00", align 1
@.str.232 = private unnamed_addr constant [34 x i8] c"Settings for soft body simulation\00", align 1
@rna_Object_rigid_body = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_rigid_body_constraint, ptr @rna_Object_particle_systems, i32 -1, ptr @.str.236, i32 8388608, ptr @.str.237, ptr @.str.238, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_rigid_body_get, ptr null, ptr null, ptr null, ptr @RNA_RigidBodyObject }, align 8
@.str.233 = private unnamed_addr constant [17 x i8] c"particle_systems\00", align 1
@.str.234 = private unnamed_addr constant [17 x i8] c"Particle Systems\00", align 1
@.str.235 = private unnamed_addr constant [41 x i8] c"Particle systems emitted from the object\00", align 1
@RNA_ParticleSystems = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GameObjectSettings, ptr @RNA_VertexGroups, ptr null, %struct.ListBase { ptr @rna_ParticleSystems_rna_properties, ptr @rna_ParticleSystems_active_index } }, ptr @.str.490, ptr null, ptr null, i32 4, ptr @.str.234, ptr @.str.491, ptr @.str.83, i32 17, ptr null, ptr @rna_ParticleSystems_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Object_rigid_body_constraint = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_hide, ptr @rna_Object_rigid_body, i32 -1, ptr @.str.239, i32 8388608, ptr @.str.240, ptr @.str.241, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_rigid_body_constraint_get, ptr null, ptr null, ptr null, ptr @RNA_RigidBodyConstraint }, align 8
@.str.236 = private unnamed_addr constant [11 x i8] c"rigid_body\00", align 1
@.str.237 = private unnamed_addr constant [20 x i8] c"Rigid Body Settings\00", align 1
@.str.238 = private unnamed_addr constant [35 x i8] c"Settings for rigid body simulation\00", align 1
@rna_Object_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_hide_select, ptr @rna_Object_rigid_body_constraint, i32 -1, ptr @.str.242, i32 4099, ptr @.str.243, ptr @.str.244, i32 253, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_hide_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_hide_get, ptr @Object_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.239 = private unnamed_addr constant [22 x i8] c"rigid_body_constraint\00", align 1
@.str.240 = private unnamed_addr constant [22 x i8] c"Rigid Body Constraint\00", align 1
@.str.241 = private unnamed_addr constant [37 x i8] c"Constraint constraining rigid bodies\00", align 1
@rna_Object_hide_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_hide_render, ptr @rna_Object_hide, i32 -1, ptr @.str.245, i32 4099, ptr @.str.246, ptr @.str.247, i32 255, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_hide_select_get, ptr @Object_hide_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.242 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.243 = private unnamed_addr constant [14 x i8] c"Restrict View\00", align 1
@.str.244 = private unnamed_addr constant [36 x i8] c"Restrict visibility in the viewport\00", align 1
@rna_Object_hide_render = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_animation_data, ptr @rna_Object_hide_select, i32 -1, ptr @.str.248, i32 4099, ptr @.str.249, ptr @.str.250, i32 257, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_hide_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_hide_render_get, ptr @Object_hide_render_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.245 = private unnamed_addr constant [12 x i8] c"hide_select\00", align 1
@.str.246 = private unnamed_addr constant [16 x i8] c"Restrict Select\00", align 1
@.str.247 = private unnamed_addr constant [35 x i8] c"Restrict selection in the viewport\00", align 1
@rna_Object_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_animation_visualization, ptr @rna_Object_hide_render, i32 -1, ptr @.str.251, i32 8388608, ptr @.str.252, ptr @.str.253, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.248 = private unnamed_addr constant [12 x i8] c"hide_render\00", align 1
@.str.249 = private unnamed_addr constant [16 x i8] c"Restrict Render\00", align 1
@.str.250 = private unnamed_addr constant [23 x i8] c"Restrict renderability\00", align 1
@rna_Object_animation_visualization = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_motion_path, ptr @rna_Object_animation_data, i32 -1, ptr @.str.254, i32 8650752, ptr @.str.255, ptr @.str.253, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_animation_visualization_get, ptr null, ptr null, ptr null, ptr @RNA_AnimViz }, align 8
@.str.251 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.252 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.253 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@rna_Object_motion_path = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_use_slow_parent, ptr @rna_Object_animation_visualization, i32 -1, ptr @.str.256, i32 8388608, ptr @.str.257, ptr @.str.258, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_motion_path_get, ptr null, ptr null, ptr null, ptr @RNA_MotionPath }, align 8
@.str.254 = private unnamed_addr constant [24 x i8] c"animation_visualization\00", align 1
@.str.255 = private unnamed_addr constant [24 x i8] c"Animation Visualization\00", align 1
@rna_Object_use_slow_parent = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_slow_parent_offset, ptr @rna_Object_motion_path, i32 -1, ptr @.str.259, i32 3, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_use_slow_parent_get, ptr @Object_use_slow_parent_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.256 = private unnamed_addr constant [12 x i8] c"motion_path\00", align 1
@.str.257 = private unnamed_addr constant [12 x i8] c"Motion Path\00", align 1
@.str.258 = private unnamed_addr constant [29 x i8] c"Motion Path for this element\00", align 1
@rna_Object_slow_parent_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_use_extra_recalc_object, ptr @rna_Object_use_slow_parent, i32 -1, ptr @.str.262, i32 8195, ptr @.str.263, ptr @.str.264, i32 0, ptr @.str.83, i32 2, i32 393216, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85065728, ptr null, ptr null, i32 1120, i32 4, ptr null, ptr null }, ptr @Object_slow_parent_offset_get, ptr @Object_slow_parent_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -3.000000e+05, float 3.000000e+05, float -3.000000e+05, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.259 = private unnamed_addr constant [16 x i8] c"use_slow_parent\00", align 1
@.str.260 = private unnamed_addr constant [12 x i8] c"Slow Parent\00", align 1
@.str.261 = private unnamed_addr constant [132 x i8] c"Create a delay in the parent relationship (beware: this isn't renderfarm safe and may be invalid after jumping around the timeline)\00", align 1
@rna_Object_use_extra_recalc_object = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_use_extra_recalc_data, ptr @rna_Object_slow_parent_offset, i32 -1, ptr @.str.265, i32 3, ptr @.str.266, ptr @.str.267, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_use_extra_recalc_object_get, ptr @Object_use_extra_recalc_object_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.262 = private unnamed_addr constant [19 x i8] c"slow_parent_offset\00", align 1
@.str.263 = private unnamed_addr constant [19 x i8] c"Slow Parent Offset\00", align 1
@.str.264 = private unnamed_addr constant [33 x i8] c"Delay in the parent relationship\00", align 1
@rna_Object_use_extra_recalc_data = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dupli_type, ptr @rna_Object_use_extra_recalc_object, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_use_extra_recalc_data_get, ptr @Object_use_extra_recalc_data_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.265 = private unnamed_addr constant [24 x i8] c"use_extra_recalc_object\00", align 1
@.str.266 = private unnamed_addr constant [20 x i8] c"Extra Object Update\00", align 1
@.str.267 = private unnamed_addr constant [66 x i8] c"Refresh this object again on frame changes, dependency graph hack\00", align 1
@rna_Object_dupli_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_use_dupli_frames_speed, ptr @rna_Object_use_extra_recalc_data, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_dependency_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_dupli_type_get, ptr @Object_dupli_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_dupli_type_items, i32 5, i32 0 }, align 8
@.str.268 = private unnamed_addr constant [22 x i8] c"use_extra_recalc_data\00", align 1
@.str.269 = private unnamed_addr constant [18 x i8] c"Extra Data Update\00", align 1
@.str.270 = private unnamed_addr constant [73 x i8] c"Refresh this object's data again on frame changes, dependency graph hack\00", align 1
@rna_Object_use_dupli_frames_speed = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_use_dupli_vertices_rotation, ptr @rna_Object_dupli_type, i32 -1, ptr @.str.274, i32 3, ptr @.str.275, ptr @.str.276, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_use_dupli_frames_speed_get, ptr @Object_use_dupli_frames_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.271 = private unnamed_addr constant [11 x i8] c"dupli_type\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"Dupli Type\00", align 1
@.str.273 = private unnamed_addr constant [46 x i8] c"If not None, object duplication method to use\00", align 1
@rna_Object_dupli_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.764, i32 0, ptr @.str.765, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.766, i32 0, ptr @.str.767, ptr @.str.768 }, %struct.EnumPropertyItem { i32 16, ptr @.str.769, i32 0, ptr @.str.770, ptr @.str.771 }, %struct.EnumPropertyItem { i32 512, ptr @.str.772, i32 0, ptr @.str.773, ptr @.str.774 }, %struct.EnumPropertyItem { i32 256, ptr @.str.775, i32 0, ptr @.str.477, ptr @.str.776 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_use_dupli_vertices_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_use_dupli_faces_scale, ptr @rna_Object_use_dupli_frames_speed, i32 -1, ptr @.str.277, i32 3, ptr @.str.278, ptr @.str.279, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_use_dupli_vertices_rotation_get, ptr @Object_use_dupli_vertices_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.274 = private unnamed_addr constant [23 x i8] c"use_dupli_frames_speed\00", align 1
@.str.275 = private unnamed_addr constant [19 x i8] c"Dupli Frames Speed\00", align 1
@.str.276 = private unnamed_addr constant [83 x i8] c"Set dupliframes to use the current frame instead of parent curve's evaluation time\00", align 1
@rna_Object_use_dupli_faces_scale = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dupli_faces_scale, ptr @rna_Object_use_dupli_vertices_rotation, i32 -1, ptr @.str.280, i32 3, ptr @.str.281, ptr @.str.282, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_use_dupli_faces_scale_get, ptr @Object_use_dupli_faces_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.277 = private unnamed_addr constant [28 x i8] c"use_dupli_vertices_rotation\00", align 1
@.str.278 = private unnamed_addr constant [21 x i8] c"Dupli Verts Rotation\00", align 1
@.str.279 = private unnamed_addr constant [40 x i8] c"Rotate dupli according to vertex normal\00", align 1
@rna_Object_dupli_faces_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dupli_group, ptr @rna_Object_use_dupli_faces_scale, i32 -1, ptr @.str.283, i32 8195, ptr @.str.284, ptr @.str.285, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 1052, i32 4, ptr null, ptr null }, ptr @Object_dupli_faces_scale_get, ptr @Object_dupli_faces_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+04, float 0x3F50624DE0000000, float 1.000000e+04, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.280 = private unnamed_addr constant [22 x i8] c"use_dupli_faces_scale\00", align 1
@.str.281 = private unnamed_addr constant [26 x i8] c"Dupli Faces Inherit Scale\00", align 1
@.str.282 = private unnamed_addr constant [31 x i8] c"Scale dupli based on face size\00", align 1
@rna_Object_dupli_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dupli_frames_start, ptr @rna_Object_dupli_faces_scale, i32 -1, ptr @.str.286, i32 8388609, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_dependency_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_dupli_group_get, ptr @Object_dupli_group_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.283 = private unnamed_addr constant [18 x i8] c"dupli_faces_scale\00", align 1
@.str.284 = private unnamed_addr constant [18 x i8] c"Dupli Faces Scale\00", align 1
@.str.285 = private unnamed_addr constant [28 x i8] c"Scale the DupliFace objects\00", align 1
@rna_Object_dupli_frames_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dupli_frames_end, ptr @rna_Object_dupli_group, i32 -1, ptr @.str.289, i32 8195, ptr @.str.290, ptr @.str.291, i32 0, ptr @.str.83, i32 1, i32 393216, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 976, i32 0, ptr null, ptr null }, ptr @Object_dupli_frames_start_get, ptr @Object_dupli_frames_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.286 = private unnamed_addr constant [12 x i8] c"dupli_group\00", align 1
@.str.287 = private unnamed_addr constant [12 x i8] c"Dupli Group\00", align 1
@.str.288 = private unnamed_addr constant [27 x i8] c"Instance an existing group\00", align 1
@rna_Object_dupli_frames_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dupli_frames_on, ptr @rna_Object_dupli_frames_start, i32 -1, ptr @.str.292, i32 8195, ptr @.str.293, ptr @.str.294, i32 0, ptr @.str.83, i32 1, i32 393216, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 980, i32 0, ptr null, ptr null }, ptr @Object_dupli_frames_end_get, ptr @Object_dupli_frames_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.289 = private unnamed_addr constant [19 x i8] c"dupli_frames_start\00", align 1
@.str.290 = private unnamed_addr constant [19 x i8] c"Dupli Frames Start\00", align 1
@.str.291 = private unnamed_addr constant [28 x i8] c"Start frame for DupliFrames\00", align 1
@rna_Object_dupli_frames_on = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dupli_frames_off, ptr @rna_Object_dupli_frames_end, i32 -1, ptr @.str.295, i32 8195, ptr @.str.296, ptr @.str.297, i32 0, ptr @.str.83, i32 1, i32 393216, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 968, i32 0, ptr null, ptr null }, ptr @Object_dupli_frames_on_get, ptr @Object_dupli_frames_on_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 1500, i32 0, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.292 = private unnamed_addr constant [17 x i8] c"dupli_frames_end\00", align 1
@.str.293 = private unnamed_addr constant [17 x i8] c"Dupli Frames End\00", align 1
@.str.294 = private unnamed_addr constant [26 x i8] c"End frame for DupliFrames\00", align 1
@rna_Object_dupli_frames_off = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dupli_list, ptr @rna_Object_dupli_frames_on, i32 -1, ptr @.str.298, i32 8195, ptr @.str.299, ptr @.str.300, i32 0, ptr @.str.83, i32 1, i32 393216, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 972, i32 0, ptr null, ptr null }, ptr @Object_dupli_frames_off_get, ptr @Object_dupli_frames_off_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1500, i32 0, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.295 = private unnamed_addr constant [16 x i8] c"dupli_frames_on\00", align 1
@.str.296 = private unnamed_addr constant [16 x i8] c"Dupli Frames On\00", align 1
@.str.297 = private unnamed_addr constant [46 x i8] c"Number of frames to use between DupOff frames\00", align 1
@.str.298 = private unnamed_addr constant [17 x i8] c"dupli_frames_off\00", align 1
@.str.299 = private unnamed_addr constant [17 x i8] c"Dupli Frames Off\00", align 1
@.str.300 = private unnamed_addr constant [49 x i8] c"Recurring frames to exclude from the Dupliframes\00", align 1
@rna_Object_is_duplicator = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_draw_type, ptr @rna_Object_dupli_list, i32 -1, ptr @.str.304, i32 2, ptr @.str.304, ptr @.str.2, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_is_duplicator_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.301 = private unnamed_addr constant [11 x i8] c"dupli_list\00", align 1
@.str.302 = private unnamed_addr constant [11 x i8] c"Dupli list\00", align 1
@.str.303 = private unnamed_addr constant [14 x i8] c"Object duplis\00", align 1
@RNA_DupliObject = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LodLevel, ptr @RNA_MaterialSlot, ptr null, %struct.ListBase { ptr @rna_DupliObject_rna_properties, ptr @rna_DupliObject_type } }, ptr @.str.689, ptr null, ptr null, i32 4, ptr @.str.690, ptr @.str.691, ptr @.str.83, i32 17, ptr null, ptr @rna_DupliObject_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Object_draw_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_show_bounds, ptr @rna_Object_is_duplicator, i32 -1, ptr @.str.305, i32 3, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_draw_type_get, ptr @Object_draw_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_draw_type_items, i32 4, i32 1 }, align 8
@.str.304 = private unnamed_addr constant [14 x i8] c"is_duplicator\00", align 1
@rna_Object_show_bounds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_draw_bounds_type, ptr @rna_Object_draw_type, i32 -1, ptr @.str.308, i32 3, ptr @.str.309, ptr @.str.310, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_show_bounds_get, ptr @Object_show_bounds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.305 = private unnamed_addr constant [10 x i8] c"draw_type\00", align 1
@.str.306 = private unnamed_addr constant [18 x i8] c"Maximum Draw Type\00", align 1
@.str.307 = private unnamed_addr constant [53 x i8] c"Maximum draw type to display object with in viewport\00", align 1
@rna_Object_draw_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.777, i32 0, ptr @.str.778, ptr @.str.779 }, %struct.EnumPropertyItem { i32 2, ptr @.str.780, i32 0, ptr @.str.781, ptr @.str.782 }, %struct.EnumPropertyItem { i32 3, ptr @.str.783, i32 0, ptr @.str.784, ptr @.str.785 }, %struct.EnumPropertyItem { i32 5, ptr @.str.786, i32 0, ptr @.str.787, ptr @.str.788 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_draw_bounds_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_show_name, ptr @rna_Object_show_bounds, i32 -1, ptr @.str.311, i32 3, ptr @.str.312, ptr @.str.313, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_draw_bounds_type_get, ptr @Object_draw_bounds_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_draw_bounds_type_items, i32 5, i32 0 }, align 8
@.str.308 = private unnamed_addr constant [12 x i8] c"show_bounds\00", align 1
@.str.309 = private unnamed_addr constant [12 x i8] c"Draw Bounds\00", align 1
@.str.310 = private unnamed_addr constant [28 x i8] c"Display the object's bounds\00", align 1
@rna_Object_show_name = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_show_axis, ptr @rna_Object_draw_bounds_type, i32 -1, ptr @.str.314, i32 3, ptr @.str.315, ptr @.str.316, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_show_name_get, ptr @Object_show_name_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.311 = private unnamed_addr constant [17 x i8] c"draw_bounds_type\00", align 1
@.str.312 = private unnamed_addr constant [17 x i8] c"Draw Bounds Type\00", align 1
@.str.313 = private unnamed_addr constant [29 x i8] c"Object boundary display type\00", align 1
@rna_Object_draw_bounds_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.789, i32 0, ptr @.str.790, ptr @.str.791 }, %struct.EnumPropertyItem { i32 1, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.792 }, %struct.EnumPropertyItem { i32 2, ptr @.str.793, i32 0, ptr @.str.794, ptr @.str.795 }, %struct.EnumPropertyItem { i32 3, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.796 }, %struct.EnumPropertyItem { i32 7, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.797 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_show_axis = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_show_texture_space, ptr @rna_Object_show_name, i32 -1, ptr @.str.317, i32 3, ptr @.str.318, ptr @.str.319, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_show_axis_get, ptr @Object_show_axis_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.314 = private unnamed_addr constant [10 x i8] c"show_name\00", align 1
@.str.315 = private unnamed_addr constant [10 x i8] c"Draw Name\00", align 1
@.str.316 = private unnamed_addr constant [26 x i8] c"Display the object's name\00", align 1
@rna_Object_show_texture_space = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_show_wire, ptr @rna_Object_show_axis, i32 -1, ptr @.str.320, i32 3, ptr @.str.321, ptr @.str.322, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_show_texture_space_get, ptr @Object_show_texture_space_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.317 = private unnamed_addr constant [10 x i8] c"show_axis\00", align 1
@.str.318 = private unnamed_addr constant [10 x i8] c"Draw Axes\00", align 1
@.str.319 = private unnamed_addr constant [37 x i8] c"Display the object's origin and axes\00", align 1
@rna_Object_show_wire = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_show_all_edges, ptr @rna_Object_show_texture_space, i32 -1, ptr @.str.323, i32 3, ptr @.str.324, ptr @.str.325, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_show_wire_get, ptr @Object_show_wire_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.320 = private unnamed_addr constant [19 x i8] c"show_texture_space\00", align 1
@.str.321 = private unnamed_addr constant [19 x i8] c"Draw Texture Space\00", align 1
@.str.322 = private unnamed_addr constant [35 x i8] c"Display the object's texture space\00", align 1
@rna_Object_show_all_edges = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_show_transparent, ptr @rna_Object_show_wire, i32 -1, ptr @.str.326, i32 3, ptr @.str.327, ptr @.str.328, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_show_all_edges_get, ptr @Object_show_all_edges_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.323 = private unnamed_addr constant [10 x i8] c"show_wire\00", align 1
@.str.324 = private unnamed_addr constant [10 x i8] c"Draw Wire\00", align 1
@.str.325 = private unnamed_addr constant [46 x i8] c"Add the object's wireframe over solid drawing\00", align 1
@rna_Object_show_transparent = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_show_x_ray, ptr @rna_Object_show_all_edges, i32 -1, ptr @.str.329, i32 3, ptr @.str.330, ptr @.str.331, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_show_transparent_get, ptr @Object_show_transparent_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.326 = private unnamed_addr constant [15 x i8] c"show_all_edges\00", align 1
@.str.327 = private unnamed_addr constant [15 x i8] c"Draw All Edges\00", align 1
@.str.328 = private unnamed_addr constant [35 x i8] c"Display all edges for mesh objects\00", align 1
@rna_Object_show_x_ray = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_grease_pencil, ptr @rna_Object_show_transparent, i32 -1, ptr @.str.332, i32 3, ptr @.str.333, ptr @.str.334, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_show_x_ray_get, ptr @Object_show_x_ray_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.329 = private unnamed_addr constant [17 x i8] c"show_transparent\00", align 1
@.str.330 = private unnamed_addr constant [17 x i8] c"Draw Transparent\00", align 1
@.str.331 = private unnamed_addr constant [81 x i8] c"Display material transparency in the object (unsupported for duplicator drawing)\00", align 1
@rna_Object_grease_pencil = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_pose_library, ptr @rna_Object_show_x_ray, i32 -1, ptr @.str.335, i32 8388673, ptr @.str.336, ptr @.str.337, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_grease_pencil_get, ptr @Object_grease_pencil_set, ptr null, ptr null, ptr @RNA_GreasePencil }, align 8
@.str.332 = private unnamed_addr constant [11 x i8] c"show_x_ray\00", align 1
@.str.333 = private unnamed_addr constant [6 x i8] c"X-Ray\00", align 1
@.str.334 = private unnamed_addr constant [77 x i8] c"Make the object draw in front of others (unsupported for duplicator drawing)\00", align 1
@rna_Object_pose_library = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_pose, ptr @rna_Object_grease_pencil, i32 -1, ptr @.str.338, i32 8388673, ptr @.str.339, ptr @.str.340, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_pose_library_get, ptr @Object_pose_library_set, ptr null, ptr null, ptr @RNA_Action }, align 8
@.str.335 = private unnamed_addr constant [14 x i8] c"grease_pencil\00", align 1
@.str.336 = private unnamed_addr constant [19 x i8] c"Grease Pencil Data\00", align 1
@.str.337 = private unnamed_addr constant [24 x i8] c"Grease Pencil datablock\00", align 1
@rna_Object_pose = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_show_only_shape_key, ptr @rna_Object_pose_library, i32 -1, ptr @.str.341, i32 8388608, ptr @.str.342, ptr @.str.343, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_pose_get, ptr null, ptr null, ptr null, ptr @RNA_Pose }, align 8
@.str.338 = private unnamed_addr constant [13 x i8] c"pose_library\00", align 1
@.str.339 = private unnamed_addr constant [13 x i8] c"Pose Library\00", align 1
@.str.340 = private unnamed_addr constant [44 x i8] c"Action used as a pose library for armatures\00", align 1
@rna_Object_show_only_shape_key = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_use_shape_key_edit_mode, ptr @rna_Object_pose, i32 -1, ptr @.str.344, i32 4099, ptr @.str.345, ptr @.str.346, i32 42, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_show_only_shape_key_get, ptr @Object_show_only_shape_key_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.341 = private unnamed_addr constant [5 x i8] c"pose\00", align 1
@.str.342 = private unnamed_addr constant [5 x i8] c"Pose\00", align 1
@.str.343 = private unnamed_addr constant [27 x i8] c"Current pose for armatures\00", align 1
@rna_Object_use_shape_key_edit_mode = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_active_shape_key, ptr @rna_Object_show_only_shape_key, i32 -1, ptr @.str.347, i32 3, ptr @.str.348, ptr @.str.349, i32 131, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_use_shape_key_edit_mode_get, ptr @Object_use_shape_key_edit_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.344 = private unnamed_addr constant [20 x i8] c"show_only_shape_key\00", align 1
@.str.345 = private unnamed_addr constant [15 x i8] c"Shape Key Lock\00", align 1
@.str.346 = private unnamed_addr constant [46 x i8] c"Always show the current Shape for this Object\00", align 1
@rna_Object_active_shape_key = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_active_shape_key_index, ptr @rna_Object_use_shape_key_edit_mode, i32 -1, ptr @.str.350, i32 8388608, ptr @.str.351, ptr @.str.352, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_active_shape_key_get, ptr null, ptr null, ptr null, ptr @RNA_ShapeKey }, align 8
@.str.347 = private unnamed_addr constant [24 x i8] c"use_shape_key_edit_mode\00", align 1
@.str.348 = private unnamed_addr constant [20 x i8] c"Shape Key Edit Mode\00", align 1
@.str.349 = private unnamed_addr constant [48 x i8] c"Apply shape keys in edit mode (for Meshes only)\00", align 1
@rna_Object_active_shape_key_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_use_dynamic_topology_sculpting, ptr @rna_Object_active_shape_key, i32 -1, ptr @.str.353, i32 1, ptr @.str.354, ptr @.str.355, i32 0, ptr @.str.83, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_active_shape_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_active_shape_key_index_get, ptr @Object_active_shape_key_index_set, ptr null, ptr null, ptr @rna_Object_active_shape_key_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.350 = private unnamed_addr constant [17 x i8] c"active_shape_key\00", align 1
@.str.351 = private unnamed_addr constant [17 x i8] c"Active Shape Key\00", align 1
@.str.352 = private unnamed_addr constant [18 x i8] c"Current shape key\00", align 1
@RNA_ShapeKey = external global %struct.StructRNA, align 8
@rna_Object_use_dynamic_topology_sculpting = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_lod_levels, ptr @rna_Object_active_shape_key_index, i32 -1, ptr @.str.356, i32 2, ptr @.str.357, ptr null, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Object_use_dynamic_topology_sculpting_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.353 = private unnamed_addr constant [23 x i8] c"active_shape_key_index\00", align 1
@.str.354 = private unnamed_addr constant [23 x i8] c"Active Shape Key Index\00", align 1
@.str.355 = private unnamed_addr constant [24 x i8] c"Current shape key index\00", align 1
@.str.356 = private unnamed_addr constant [31 x i8] c"use_dynamic_topology_sculpting\00", align 1
@.str.357 = private unnamed_addr constant [27 x i8] c"Dynamic Topology Sculpting\00", align 1
@.str.358 = private unnamed_addr constant [11 x i8] c"lod_levels\00", align 1
@.str.359 = private unnamed_addr constant [23 x i8] c"Level of Detail Levels\00", align 1
@.str.360 = private unnamed_addr constant [62 x i8] c"A collection of detail levels to automatically switch between\00", align 1
@RNA_LodLevel = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PointCache, ptr @RNA_DupliObject, ptr null, %struct.ListBase { ptr @rna_LodLevel_rna_properties, ptr @rna_LodLevel_use_material } }, ptr @.str.702, ptr null, ptr null, i32 4, ptr @.str.702, ptr @.str.2, ptr @.str.83, i32 17, ptr null, ptr @rna_LodLevel_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Object_convert_space_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_convert_space_matrix_return, ptr @rna_Object_convert_space_pose_bone, i32 -1, ptr @.str.363, i32 3, ptr @.str.2, ptr @.str.364, i32 0, ptr @.str.83, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_convert_space_matrix_default }, align 8
@.str.361 = private unnamed_addr constant [10 x i8] c"pose_bone\00", align 1
@.str.362 = private unnamed_addr constant [109 x i8] c"Bone to use to define spaces (may be None, in which case only the two 'WORLD' and 'LOCAL' spaces are usable)\00", align 1
@RNA_PoseBone = external global %struct.StructRNA, align 8
@rna_Object_convert_space_pose_bone = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_convert_space_matrix, ptr null, i32 -1, ptr @.str.361, i32 8388608, ptr @.str.2, ptr @.str.362, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_PoseBone }, align 8
@rna_Object_convert_space_matrix_return = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_convert_space_from_space, ptr @rna_Object_convert_space_matrix, i32 -1, ptr @.str.365, i32 11, ptr @.str.2, ptr @.str.366, i32 0, ptr @.str.83, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Object_convert_space_matrix_return_default }, align 8
@.str.363 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.364 = private unnamed_addr constant [24 x i8] c"The matrix to transform\00", align 1
@rna_Object_convert_space_matrix_default = internal global [16 x float] zeroinitializer, align 16
@rna_Object_convert_space_from_space = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_convert_space_to_space, ptr @rna_Object_convert_space_matrix_return, i32 -1, ptr @.str.367, i32 3, ptr @.str.2, ptr @.str.368, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_convert_space_from_space_items, i32 4, i32 0 }, align 8
@.str.365 = private unnamed_addr constant [14 x i8] c"matrix_return\00", align 1
@.str.366 = private unnamed_addr constant [23 x i8] c"The transformed matrix\00", align 1
@rna_Object_convert_space_matrix_return_default = internal global [16 x float] zeroinitializer, align 16
@rna_Object_convert_space_to_space = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_convert_space_from_space, i32 -1, ptr @.str.369, i32 3, ptr @.str.2, ptr @.str.370, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_convert_space_to_space_items, i32 4, i32 0 }, align 8
@.str.367 = private unnamed_addr constant [11 x i8] c"from_space\00", align 1
@.str.368 = private unnamed_addr constant [41 x i8] c"The space in which 'matrix' is currently\00", align 1
@rna_Object_convert_space_from_space_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.706, i32 0, ptr @.str.707, ptr @.str.708 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.709, ptr @.str.710 }, %struct.EnumPropertyItem { i32 3, ptr @.str.711, i32 0, ptr @.str.712, ptr @.str.713 }, %struct.EnumPropertyItem { i32 1, ptr @.str.714, i32 0, ptr @.str.715, ptr @.str.716 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.369 = private unnamed_addr constant [9 x i8] c"to_space\00", align 1
@.str.370 = private unnamed_addr constant [50 x i8] c"The space to which you want to transform 'matrix'\00", align 1
@rna_Object_convert_space_to_space_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.706, i32 0, ptr @.str.707, ptr @.str.708 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.709, ptr @.str.710 }, %struct.EnumPropertyItem { i32 3, ptr @.str.711, i32 0, ptr @.str.712, ptr @.str.713 }, %struct.EnumPropertyItem { i32 1, ptr @.str.714, i32 0, ptr @.str.715, ptr @.str.716 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_to_mesh_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_dupli_list_create_func, ptr @rna_Object_convert_space_func, ptr null, %struct.ListBase { ptr @rna_Object_to_mesh_scene, ptr @rna_Object_to_mesh_mesh } }, ptr @.str.387, i32 16, ptr @.str.388, ptr @Object_to_mesh_call, ptr @rna_Object_to_mesh_mesh }, align 8
@.str.371 = private unnamed_addr constant [14 x i8] c"convert_space\00", align 1
@.str.372 = private unnamed_addr constant [63 x i8] c"Convert (transform) the given matrix from one space to another\00", align 1
@rna_Object_convert_space_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_to_mesh_func, ptr null, ptr null, %struct.ListBase { ptr @rna_Object_convert_space_pose_bone, ptr @rna_Object_convert_space_to_space } }, ptr @.str.371, i32 16, ptr @.str.372, ptr @Object_convert_space_call, ptr null }, align 8
@rna_Object_to_mesh_apply_modifiers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_to_mesh_settings, ptr @rna_Object_to_mesh_scene, i32 -1, ptr @.str.375, i32 7, ptr @.str.2, ptr @.str.376, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.373 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.374 = private unnamed_addr constant [41 x i8] c"Scene within which to evaluate modifiers\00", align 1
@RNA_Scene = external global %struct.StructRNA, align 8
@rna_Object_to_mesh_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_to_mesh_apply_modifiers, ptr null, i32 -1, ptr @.str.373, i32 8650756, ptr @.str.2, ptr @.str.374, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@rna_Object_to_mesh_settings = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_to_mesh_calc_tessface, ptr @rna_Object_to_mesh_apply_modifiers, i32 -1, ptr @.str.377, i32 7, ptr @.str.2, ptr @.str.378, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_to_mesh_settings_items, i32 2, i32 1 }, align 8
@.str.375 = private unnamed_addr constant [16 x i8] c"apply_modifiers\00", align 1
@.str.376 = private unnamed_addr constant [16 x i8] c"Apply modifiers\00", align 1
@rna_Object_to_mesh_calc_tessface = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_to_mesh_calc_undeformed, ptr @rna_Object_to_mesh_settings, i32 -1, ptr @.str.379, i32 3, ptr @.str.380, ptr @.str.381, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null }, align 8
@.str.377 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.378 = private unnamed_addr constant [27 x i8] c"Modifier settings to apply\00", align 1
@rna_Object_to_mesh_settings_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.798, i32 0, ptr @.str.799, ptr @.str.800 }, %struct.EnumPropertyItem { i32 2, ptr @.str.801, i32 0, ptr @.str.802, ptr @.str.803 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_to_mesh_calc_undeformed = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_to_mesh_mesh, ptr @rna_Object_to_mesh_calc_tessface, i32 -1, ptr @.str.382, i32 3, ptr @.str.383, ptr @.str.384, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.379 = private unnamed_addr constant [14 x i8] c"calc_tessface\00", align 1
@.str.380 = private unnamed_addr constant [23 x i8] c"Calculate Tessellation\00", align 1
@.str.381 = private unnamed_addr constant [29 x i8] c"Calculate tessellation faces\00", align 1
@rna_Object_to_mesh_mesh = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_to_mesh_calc_undeformed, i32 -1, ptr @.str.385, i32 8388616, ptr @.str.2, ptr @.str.386, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Mesh }, align 8
@.str.382 = private unnamed_addr constant [16 x i8] c"calc_undeformed\00", align 1
@.str.383 = private unnamed_addr constant [21 x i8] c"Calculate Undeformed\00", align 1
@.str.384 = private unnamed_addr constant [40 x i8] c"Calculate undeformed vertex coordinates\00", align 1
@.str.385 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.386 = private unnamed_addr constant [66 x i8] c"Mesh created from object, remove it if it is only used for export\00", align 1
@RNA_Mesh = external global %struct.StructRNA, align 8
@rna_Object_dupli_list_create_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_dupli_list_clear_func, ptr @rna_Object_to_mesh_func, ptr null, %struct.ListBase { ptr @rna_Object_dupli_list_create_scene, ptr @rna_Object_dupli_list_create_settings } }, ptr @.str.391, i32 16, ptr @.str.392, ptr @Object_dupli_list_create_call, ptr null }, align 8
@.str.387 = private unnamed_addr constant [8 x i8] c"to_mesh\00", align 1
@.str.388 = private unnamed_addr constant [47 x i8] c"Create a Mesh datablock with modifiers applied\00", align 1
@rna_Object_dupli_list_create_settings = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_dupli_list_create_scene, i32 -1, ptr @.str.377, i32 3, ptr @.str.2, ptr @.str.390, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_dupli_list_create_settings_items, i32 3, i32 0 }, align 8
@.str.389 = private unnamed_addr constant [38 x i8] c"Scene within which to evaluate duplis\00", align 1
@rna_Object_dupli_list_create_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_dupli_list_create_settings, ptr null, i32 -1, ptr @.str.373, i32 8650756, ptr @.str.2, ptr @.str.389, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@.str.390 = private unnamed_addr constant [43 x i8] c"Generate texture coordinates for rendering\00", align 1
@rna_Object_dupli_list_create_settings_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.804, i32 0, ptr @.str.805, ptr @.str.806 }, %struct.EnumPropertyItem { i32 1, ptr @.str.798, i32 0, ptr @.str.799, ptr @.str.807 }, %struct.EnumPropertyItem { i32 2, ptr @.str.801, i32 0, ptr @.str.802, ptr @.str.808 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_dupli_list_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_find_armature_func, ptr @rna_Object_dupli_list_create_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.393, i32 0, ptr @.str.394, ptr @Object_dupli_list_clear_call, ptr null }, align 8
@.str.391 = private unnamed_addr constant [18 x i8] c"dupli_list_create\00", align 1
@.str.392 = private unnamed_addr constant [142 x i8] c"Create a list of dupli objects for this object, needs to be freed manually with free_dupli_list to restore the objects real matrix and layers\00", align 1
@rna_Object_find_armature_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_shape_key_add_func, ptr @rna_Object_dupli_list_clear_func, ptr null, %struct.ListBase { ptr @rna_Object_find_armature_ob_arm, ptr @rna_Object_find_armature_ob_arm } }, ptr @.str.397, i32 0, ptr @.str.398, ptr @Object_find_armature_call, ptr @rna_Object_find_armature_ob_arm }, align 8
@.str.393 = private unnamed_addr constant [17 x i8] c"dupli_list_clear\00", align 1
@.str.394 = private unnamed_addr constant [31 x i8] c"Free the list of dupli objects\00", align 1
@.str.395 = private unnamed_addr constant [7 x i8] c"ob_arm\00", align 1
@.str.396 = private unnamed_addr constant [48 x i8] c"Armature object influencing this object or NULL\00", align 1
@rna_Object_find_armature_ob_arm = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.395, i32 8388616, ptr @.str.2, ptr @.str.396, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_Object_shape_key_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_ray_cast_func, ptr @rna_Object_find_armature_func, ptr null, %struct.ListBase { ptr @rna_Object_shape_key_add_name, ptr @rna_Object_shape_key_add_key } }, ptr @.str.406, i32 24, ptr @.str.407, ptr @Object_shape_key_add_call, ptr @rna_Object_shape_key_add_key }, align 8
@.str.397 = private unnamed_addr constant [14 x i8] c"find_armature\00", align 1
@.str.398 = private unnamed_addr constant [68 x i8] c"Find armature influencing this object as a parent or via a modifier\00", align 1
@rna_Object_shape_key_add_from_mix = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_shape_key_add_key, ptr @rna_Object_shape_key_add_name, i32 -1, ptr @.str.402, i32 3, ptr @.str.2, ptr @.str.403, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null }, align 8
@.str.399 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.400 = private unnamed_addr constant [32 x i8] c"Unique name for the new keylock\00", align 1
@.str.401 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@rna_Object_shape_key_add_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_shape_key_add_from_mix, ptr null, i32 -1, ptr @.str.399, i32 262145, ptr @.str.2, ptr @.str.400, i32 0, ptr @.str.83, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.401 }, align 8
@rna_Object_shape_key_add_key = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_shape_key_add_from_mix, i32 -1, ptr @.str.404, i32 8390664, ptr @.str.2, ptr @.str.405, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ShapeKey }, align 8
@.str.402 = private unnamed_addr constant [9 x i8] c"from_mix\00", align 1
@.str.403 = private unnamed_addr constant [45 x i8] c"Create new shape from existing mix of shapes\00", align 1
@.str.404 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.405 = private unnamed_addr constant [19 x i8] c"New shape keyblock\00", align 1
@rna_Object_ray_cast_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_closest_point_on_mesh_func, ptr @rna_Object_shape_key_add_func, ptr null, %struct.ListBase { ptr @rna_Object_ray_cast_start, ptr @rna_Object_ray_cast_index } }, ptr @.str.416, i32 16, ptr @.str.417, ptr @Object_ray_cast_call, ptr null }, align 8
@.str.406 = private unnamed_addr constant [14 x i8] c"shape_key_add\00", align 1
@.str.407 = private unnamed_addr constant [27 x i8] c"Add shape key to an object\00", align 1
@rna_Object_ray_cast_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_ray_cast_location, ptr @rna_Object_ray_cast_start, i32 -1, ptr @.str.409, i32 7, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.83, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_ray_cast_end_default }, align 8
@.str.408 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@rna_Object_ray_cast_start_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_ray_cast_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_ray_cast_end, ptr null, i32 -1, ptr @.str.408, i32 7, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.83, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_ray_cast_start_default }, align 8
@rna_Object_ray_cast_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_ray_cast_normal, ptr @rna_Object_ray_cast_end, i32 -1, ptr @.str.135, i32 8388619, ptr @.str.136, ptr @.str.410, i32 0, ptr @.str.83, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_ray_cast_location_default }, align 8
@.str.409 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@rna_Object_ray_cast_end_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_ray_cast_normal = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_ray_cast_index, ptr @rna_Object_ray_cast_location, i32 -1, ptr @.str.411, i32 8388619, ptr @.str.412, ptr @.str.413, i32 0, ptr @.str.83, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_ray_cast_normal_default }, align 8
@.str.410 = private unnamed_addr constant [34 x i8] c"The hit location of this ray cast\00", align 1
@rna_Object_ray_cast_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_ray_cast_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_ray_cast_normal, i32 -1, ptr @.str.414, i32 11, ptr @.str.2, ptr @.str.415, i32 0, ptr @.str.83, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.411 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.412 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.413 = private unnamed_addr constant [45 x i8] c"The face normal at the ray cast hit location\00", align 1
@rna_Object_ray_cast_normal_default = internal global [3 x float] zeroinitializer, align 4
@.str.414 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.415 = private unnamed_addr constant [49 x i8] c"The face index, -1 when no intersection is found\00", align 1
@rna_Object_closest_point_on_mesh_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_is_visible_func, ptr @rna_Object_ray_cast_func, ptr null, %struct.ListBase { ptr @rna_Object_closest_point_on_mesh_point, ptr @rna_Object_closest_point_on_mesh_index } }, ptr @.str.423, i32 16, ptr @.str.424, ptr @Object_closest_point_on_mesh_call, ptr null }, align 8
@.str.416 = private unnamed_addr constant [9 x i8] c"ray_cast\00", align 1
@.str.417 = private unnamed_addr constant [32 x i8] c"Cast a ray onto in object space\00", align 1
@rna_Object_closest_point_on_mesh_max_dist = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_closest_point_on_mesh_location, ptr @rna_Object_closest_point_on_mesh_point, i32 -1, ptr @.str.419, i32 3, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0x43EFFFFFE0000000, ptr null }, align 8
@.str.418 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@rna_Object_closest_point_on_mesh_point_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_closest_point_on_mesh_point = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_closest_point_on_mesh_max_dist, ptr null, i32 -1, ptr @.str.418, i32 7, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.83, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_closest_point_on_mesh_point_default }, align 8
@rna_Object_closest_point_on_mesh_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_closest_point_on_mesh_normal, ptr @rna_Object_closest_point_on_mesh_max_dist, i32 -1, ptr @.str.135, i32 8388619, ptr @.str.136, ptr @.str.420, i32 0, ptr @.str.83, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_closest_point_on_mesh_location_default }, align 8
@.str.419 = private unnamed_addr constant [9 x i8] c"max_dist\00", align 1
@rna_Object_closest_point_on_mesh_normal = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_closest_point_on_mesh_index, ptr @rna_Object_closest_point_on_mesh_location, i32 -1, ptr @.str.411, i32 8388619, ptr @.str.412, ptr @.str.421, i32 0, ptr @.str.83, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Object_closest_point_on_mesh_normal_default }, align 8
@.str.420 = private unnamed_addr constant [48 x i8] c"The location on the object closest to the point\00", align 1
@rna_Object_closest_point_on_mesh_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_Object_closest_point_on_mesh_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_closest_point_on_mesh_normal, i32 -1, ptr @.str.414, i32 11, ptr @.str.2, ptr @.str.422, i32 0, ptr @.str.83, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.421 = private unnamed_addr constant [37 x i8] c"The face normal at the closest point\00", align 1
@rna_Object_closest_point_on_mesh_normal_default = internal global [3 x float] zeroinitializer, align 4
@.str.422 = private unnamed_addr constant [50 x i8] c"The face index, -1 when no closest point is found\00", align 1
@rna_Object_is_visible_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_is_modified_func, ptr @rna_Object_closest_point_on_mesh_func, ptr null, %struct.ListBase { ptr @rna_Object_is_visible_scene, ptr @rna_Object_is_visible_result } }, ptr @.str.427, i32 0, ptr @.str.428, ptr @Object_is_visible_call, ptr @rna_Object_is_visible_result }, align 8
@.str.423 = private unnamed_addr constant [22 x i8] c"closest_point_on_mesh\00", align 1
@.str.424 = private unnamed_addr constant [37 x i8] c"Find the nearest point on the object\00", align 1
@rna_Object_is_visible_result = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_is_visible_scene, i32 -1, ptr @.str.425, i32 11, ptr @.str.2, ptr @.str.426, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_Object_is_visible_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_is_visible_result, ptr null, i32 -1, ptr @.str.373, i32 8650756, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@.str.425 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.426 = private unnamed_addr constant [18 x i8] c"Object visibility\00", align 1
@rna_Object_is_modified_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_is_deform_modified_func, ptr @rna_Object_is_visible_func, ptr null, %struct.ListBase { ptr @rna_Object_is_modified_scene, ptr @rna_Object_is_modified_result } }, ptr @.str.429, i32 0, ptr @.str.430, ptr @Object_is_modified_call, ptr @rna_Object_is_modified_result }, align 8
@.str.427 = private unnamed_addr constant [11 x i8] c"is_visible\00", align 1
@.str.428 = private unnamed_addr constant [48 x i8] c"Determine if object is visible in a given scene\00", align 1
@rna_Object_is_modified_settings = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_is_modified_result, ptr @rna_Object_is_modified_scene, i32 -1, ptr @.str.377, i32 7, ptr @.str.2, ptr @.str.378, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_is_modified_settings_items, i32 2, i32 1 }, align 8
@rna_Object_is_modified_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_is_modified_settings, ptr null, i32 -1, ptr @.str.373, i32 8650756, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@rna_Object_is_modified_result = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_is_modified_settings, i32 -1, ptr @.str.425, i32 11, ptr @.str.2, ptr @.str.426, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_Object_is_modified_settings_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.798, i32 0, ptr @.str.799, ptr @.str.800 }, %struct.EnumPropertyItem { i32 2, ptr @.str.801, i32 0, ptr @.str.802, ptr @.str.803 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_is_deform_modified_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Object_update_from_editmode_func, ptr @rna_Object_is_modified_func, ptr null, %struct.ListBase { ptr @rna_Object_is_deform_modified_scene, ptr @rna_Object_is_deform_modified_result } }, ptr @.str.431, i32 0, ptr @.str.432, ptr @Object_is_deform_modified_call, ptr @rna_Object_is_deform_modified_result }, align 8
@.str.429 = private unnamed_addr constant [12 x i8] c"is_modified\00", align 1
@.str.430 = private unnamed_addr constant [61 x i8] c"Determine if this object is modified from the base mesh data\00", align 1
@rna_Object_is_deform_modified_settings = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_is_deform_modified_result, ptr @rna_Object_is_deform_modified_scene, i32 -1, ptr @.str.377, i32 7, ptr @.str.2, ptr @.str.378, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Object_is_deform_modified_settings_items, i32 2, i32 1 }, align 8
@rna_Object_is_deform_modified_scene = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Object_is_deform_modified_settings, ptr null, i32 -1, ptr @.str.373, i32 8650756, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Scene }, align 8
@rna_Object_is_deform_modified_result = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Object_is_deform_modified_settings, i32 -1, ptr @.str.425, i32 11, ptr @.str.2, ptr @.str.426, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_Object_is_deform_modified_settings_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.798, i32 0, ptr @.str.799, ptr @.str.800 }, %struct.EnumPropertyItem { i32 2, ptr @.str.801, i32 0, ptr @.str.802, ptr @.str.803 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Object_update_from_editmode_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_Object_is_deform_modified_func, ptr null, %struct.ListBase { ptr @rna_Object_update_from_editmode_result, ptr @rna_Object_update_from_editmode_result } }, ptr @.str.434, i32 0, ptr @.str.435, ptr @Object_update_from_editmode_call, ptr @rna_Object_update_from_editmode_result }, align 8
@.str.431 = private unnamed_addr constant [19 x i8] c"is_deform_modified\00", align 1
@.str.432 = private unnamed_addr constant [78 x i8] c"Determine if this object is modified by a deformation from the base mesh data\00", align 1
@.str.433 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@rna_Object_update_from_editmode_result = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.425, i32 11, ptr @.str.2, ptr @.str.433, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.434 = private unnamed_addr constant [21 x i8] c"update_from_editmode\00", align 1
@.str.435 = private unnamed_addr constant [53 x i8] c"Load the objects edit-mode data intp the object data\00", align 1
@RNA_NodeInstanceHash = external global %struct.StructRNA, align 8
@.str.436 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.437 = private unnamed_addr constant [47 x i8] c"Object datablock defining an object in a scene\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@rna_ObjectModifiers_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ObjectModifiers_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectModifiers_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.438 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.439 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.440 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.441 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.442 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.443 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_ObjectModifiers_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectModifiers_new_modifier, ptr @rna_ObjectModifiers_new_name, i32 -1, ptr @.str.84, i32 7, ptr @.str.2, ptr @.str.446, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_ObjectModifiers_new_type_items, i32 51, i32 1 }, align 8
@.str.444 = private unnamed_addr constant [26 x i8] c"New name for the modifier\00", align 1
@.str.445 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@rna_ObjectModifiers_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectModifiers_new_type, ptr null, i32 -1, ptr @.str.399, i32 262149, ptr @.str.2, ptr @.str.444, i32 0, ptr @.str.83, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.445 }, align 8
@rna_ObjectModifiers_new_modifier = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ObjectModifiers_new_type, i32 -1, ptr @.str.447, i32 8388616, ptr @.str.2, ptr @.str.448, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Modifier }, align 8
@.str.446 = private unnamed_addr constant [21 x i8] c"Modifier type to add\00", align 1
@rna_ObjectModifiers_new_type_items = internal global [52 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.809, ptr @.str.2 }, %struct.EnumPropertyItem { i32 46, ptr @.str.810, i32 463, ptr @.str.811, ptr @.str.2 }, %struct.EnumPropertyItem { i32 15, ptr @.str.812, i32 455, ptr @.str.813, ptr @.str.2 }, %struct.EnumPropertyItem { i32 45, ptr @.str.814, i32 455, ptr @.str.815, ptr @.str.2 }, %struct.EnumPropertyItem { i32 36, ptr @.str.816, i32 475, ptr @.str.817, ptr @.str.2 }, %struct.EnumPropertyItem { i32 37, ptr @.str.818, i32 475, ptr @.str.819, ptr @.str.2 }, %struct.EnumPropertyItem { i32 38, ptr @.str.820, i32 475, ptr @.str.821, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.822, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.823, i32 454, ptr @.str.824, ptr @.str.2 }, %struct.EnumPropertyItem { i32 24, ptr @.str.825, i32 464, ptr @.str.826, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.827, i32 452, ptr @.str.828, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.829, i32 444, ptr @.str.830, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.831, i32 445, ptr @.str.832, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.833, i32 453, ptr @.str.834, ptr @.str.2 }, %struct.EnumPropertyItem { i32 27, ptr @.str.835, i32 467, ptr @.str.836, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.837, i32 446, ptr @.str.838, ptr @.str.2 }, %struct.EnumPropertyItem { i32 29, ptr @.str.839, i32 471, ptr @.str.840, ptr @.str.2 }, %struct.EnumPropertyItem { i32 41, ptr @.str.841, i32 477, ptr @.str.842, ptr @.str.2 }, %struct.EnumPropertyItem { i32 34, ptr @.str.843, i32 474, ptr @.str.844, ptr @.str.2 }, %struct.EnumPropertyItem { i32 42, ptr @.str.845, i32 480, ptr @.str.846, ptr @.str.2 }, %struct.EnumPropertyItem { i32 33, ptr @.str.847, i32 473, ptr @.str.848, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.849, i32 448, ptr @.str.850, ptr @.str.2 }, %struct.EnumPropertyItem { i32 44, ptr @.str.851, i32 481, ptr @.str.852, ptr @.str.2 }, %struct.EnumPropertyItem { i32 48, ptr @.str.853, i32 482, ptr @.str.854, ptr @.str.855 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.856, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.51, i32 460, ptr @.str.52, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17, ptr @.str.857, i32 462, ptr @.str.858, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.43, i32 457, ptr @.str.44, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.859, i32 456, ptr @.str.860, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.861, i32 449, ptr @.str.862, ptr @.str.2 }, %struct.EnumPropertyItem { i32 43, ptr @.str.863, i32 465, ptr @.str.864, ptr @.str.2 }, %struct.EnumPropertyItem { i32 47, ptr @.str.865, i32 463, ptr @.str.866, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.53, i32 458, ptr @.str.54, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18, ptr @.str.867, i32 463, ptr @.str.868, ptr @.str.2 }, %struct.EnumPropertyItem { i32 25, ptr @.str.869, i32 461, ptr @.str.870, ptr @.str.2 }, %struct.EnumPropertyItem { i32 28, ptr @.str.871, i32 466, ptr @.str.872, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.873, i32 465, ptr @.str.874, ptr @.str.2 }, %struct.EnumPropertyItem { i32 35, ptr @.str.875, i32 479, ptr @.str.876, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.877, i32 443, ptr @.str.878, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.879, ptr @.str.2 }, %struct.EnumPropertyItem { i32 22, ptr @.str.880, i32 468, ptr @.str.881, ptr @.str.2 }, %struct.EnumPropertyItem { i32 23, ptr @.str.882, i32 450, ptr @.str.883, ptr @.str.2 }, %struct.EnumPropertyItem { i32 40, ptr @.str.884, i32 476, ptr @.str.885, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21, ptr @.str.886, i32 469, ptr @.str.887, ptr @.str.2 }, %struct.EnumPropertyItem { i32 26, ptr @.str.888, i32 470, ptr @.str.889, ptr @.str.2 }, %struct.EnumPropertyItem { i32 39, ptr @.str.890, i32 478, ptr @.str.891, ptr @.str.2 }, %struct.EnumPropertyItem { i32 20, ptr @.str.892, i32 451, ptr @.str.893, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19, ptr @.str.894, i32 451, ptr @.str.680, ptr @.str.2 }, %struct.EnumPropertyItem { i32 31, ptr @.str.895, i32 472, ptr @.str.896, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.897, i32 447, ptr @.str.898, ptr @.str.2 }, %struct.EnumPropertyItem { i32 30, ptr @.str.45, i32 450, ptr @.str.46, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.447 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.448 = private unnamed_addr constant [23 x i8] c"Newly created modifier\00", align 1
@rna_ObjectModifiers_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ObjectModifiers_clear_func, ptr @rna_ObjectModifiers_new_func, ptr null, %struct.ListBase { ptr @rna_ObjectModifiers_remove_modifier, ptr @rna_ObjectModifiers_remove_modifier } }, ptr @.str.452, i32 24, ptr @.str.453, ptr @ObjectModifiers_remove_call, ptr null }, align 8
@.str.449 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.450 = private unnamed_addr constant [19 x i8] c"Add a new modifier\00", align 1
@rna_ObjectModifiers_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ObjectModifiers_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_ObjectModifiers_new_name, ptr @rna_ObjectModifiers_new_modifier } }, ptr @.str.449, i32 24, ptr @.str.450, ptr @ObjectModifiers_new_call, ptr @rna_ObjectModifiers_new_modifier }, align 8
@.str.451 = private unnamed_addr constant [19 x i8] c"Modifier to remove\00", align 1
@rna_ObjectModifiers_remove_modifier = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.447, i32 264196, ptr @.str.2, ptr @.str.451, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Modifier }, align 8
@rna_ObjectModifiers_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_ObjectModifiers_remove_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.454, i32 8, ptr @.str.455, ptr @ObjectModifiers_clear_call, ptr null }, align 8
@.str.452 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.453 = private unnamed_addr constant [44 x i8] c"Remove an existing modifier from the object\00", align 1
@.str.454 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.455 = private unnamed_addr constant [37 x i8] c"Remove all modifiers from the object\00", align 1
@.str.456 = private unnamed_addr constant [16 x i8] c"ObjectModifiers\00", align 1
@.str.457 = private unnamed_addr constant [17 x i8] c"Object Modifiers\00", align 1
@.str.458 = private unnamed_addr constant [31 x i8] c"Collection of object modifiers\00", align 1
@rna_ObjectConstraints_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectConstraints_active, ptr @rna_ObjectConstraints_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectConstraints_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ObjectConstraints_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ObjectConstraints_rna_type, i32 -1, ptr @.str.459, i32 8388609, ptr @.str.460, ptr @.str.461, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectConstraints_active_get, ptr @ObjectConstraints_active_set, ptr null, ptr null, ptr @RNA_Constraint }, align 8
@.str.459 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.460 = private unnamed_addr constant [18 x i8] c"Active Constraint\00", align 1
@.str.461 = private unnamed_addr constant [25 x i8] c"Active Object constraint\00", align 1
@rna_ObjectConstraints_new_constraint = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ObjectConstraints_new_type, i32 -1, ptr @.str.463, i32 8388616, ptr @.str.2, ptr @.str.464, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Constraint }, align 8
@.str.462 = private unnamed_addr constant [23 x i8] c"Constraint type to add\00", align 1
@rna_ObjectConstraints_new_type_items = internal global [32 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.899, ptr @.str.2 }, %struct.EnumPropertyItem { i32 27, ptr @.str.900, i32 459, ptr @.str.901, ptr @.str.2 }, %struct.EnumPropertyItem { i32 26, ptr @.str.902, i32 459, ptr @.str.903, ptr @.str.2 }, %struct.EnumPropertyItem { i32 28, ptr @.str.904, i32 459, ptr @.str.905, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.906, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.907, i32 459, ptr @.str.908, ptr @.str.909 }, %struct.EnumPropertyItem { i32 8, ptr @.str.910, i32 459, ptr @.str.911, ptr @.str.912 }, %struct.EnumPropertyItem { i32 10, ptr @.str.913, i32 459, ptr @.str.914, ptr @.str.915 }, %struct.EnumPropertyItem { i32 23, ptr @.str.916, i32 459, ptr @.str.917, ptr @.str.918 }, %struct.EnumPropertyItem { i32 14, ptr @.str.919, i32 459, ptr @.str.920, ptr @.str.921 }, %struct.EnumPropertyItem { i32 6, ptr @.str.922, i32 459, ptr @.str.923, ptr @.str.924 }, %struct.EnumPropertyItem { i32 5, ptr @.str.925, i32 459, ptr @.str.926, ptr @.str.927 }, %struct.EnumPropertyItem { i32 7, ptr @.str.928, i32 459, ptr @.str.929, ptr @.str.930 }, %struct.EnumPropertyItem { i32 24, ptr @.str.931, i32 459, ptr @.str.932, ptr @.str.933 }, %struct.EnumPropertyItem { i32 19, ptr @.str.934, i32 459, ptr @.str.935, ptr @.str.936 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.937, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18, ptr @.str.938, i32 459, ptr @.str.939, ptr @.str.940 }, %struct.EnumPropertyItem { i32 21, ptr @.str.941, i32 459, ptr @.str.942, ptr @.str.943 }, %struct.EnumPropertyItem { i32 3, ptr @.str.944, i32 459, ptr @.str.945, ptr @.str.946 }, %struct.EnumPropertyItem { i32 13, ptr @.str.947, i32 459, ptr @.str.948, ptr @.str.949 }, %struct.EnumPropertyItem { i32 22, ptr @.str.950, i32 459, ptr @.str.951, ptr @.str.952 }, %struct.EnumPropertyItem { i32 15, ptr @.str.953, i32 459, ptr @.str.954, ptr @.str.955 }, %struct.EnumPropertyItem { i32 2, ptr @.str.956, i32 459, ptr @.str.957, ptr @.str.958 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.959, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.960, i32 459, ptr @.str.961, ptr @.str.962 }, %struct.EnumPropertyItem { i32 1, ptr @.str.963, i32 459, ptr @.str.964, ptr @.str.965 }, %struct.EnumPropertyItem { i32 16, ptr @.str.966, i32 459, ptr @.str.967, ptr @.str.968 }, %struct.EnumPropertyItem { i32 4, ptr @.str.969, i32 459, ptr @.str.970, ptr @.str.971 }, %struct.EnumPropertyItem { i32 25, ptr @.str.972, i32 459, ptr @.str.973, ptr @.str.974 }, %struct.EnumPropertyItem { i32 17, ptr @.str.975, i32 459, ptr @.str.976, ptr @.str.977 }, %struct.EnumPropertyItem { i32 20, ptr @.str.869, i32 459, ptr @.str.870, ptr @.str.978 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ObjectConstraints_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectConstraints_new_constraint, ptr null, i32 -1, ptr @.str.84, i32 7, ptr @.str.2, ptr @.str.462, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_ObjectConstraints_new_type_items, i32 31, i32 1 }, align 8
@.str.463 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.464 = private unnamed_addr constant [15 x i8] c"New constraint\00", align 1
@rna_ObjectConstraints_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ObjectConstraints_clear_func, ptr @rna_ObjectConstraints_new_func, ptr null, %struct.ListBase { ptr @rna_ObjectConstraints_remove_constraint, ptr @rna_ObjectConstraints_remove_constraint } }, ptr @.str.452, i32 16, ptr @.str.467, ptr @ObjectConstraints_remove_call, ptr null }, align 8
@.str.465 = private unnamed_addr constant [36 x i8] c"Add a new constraint to this object\00", align 1
@rna_ObjectConstraints_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ObjectConstraints_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_ObjectConstraints_new_type, ptr @rna_ObjectConstraints_new_constraint } }, ptr @.str.449, i32 0, ptr @.str.465, ptr @ObjectConstraints_new_call, ptr @rna_ObjectConstraints_new_constraint }, align 8
@.str.466 = private unnamed_addr constant [19 x i8] c"Removed constraint\00", align 1
@rna_ObjectConstraints_remove_constraint = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.463, i32 264196, ptr @.str.2, ptr @.str.466, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Constraint }, align 8
@rna_ObjectConstraints_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_ObjectConstraints_remove_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.454, i32 0, ptr @.str.468, ptr @ObjectConstraints_clear_call, ptr null }, align 8
@.str.467 = private unnamed_addr constant [37 x i8] c"Remove a constraint from this object\00", align 1
@.str.468 = private unnamed_addr constant [39 x i8] c"Remove all constraint from this object\00", align 1
@.str.469 = private unnamed_addr constant [18 x i8] c"ObjectConstraints\00", align 1
@.str.470 = private unnamed_addr constant [19 x i8] c"Object Constraints\00", align 1
@.str.471 = private unnamed_addr constant [33 x i8] c"Collection of object constraints\00", align 1
@rna_VertexGroups_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroups_active, ptr @rna_VertexGroups_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexGroups_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_VertexGroups_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroups_active_index, ptr @rna_VertexGroups_rna_type, i32 -1, ptr @.str.459, i32 8388608, ptr @.str.472, ptr @.str.205, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update_data, i32 274399232, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexGroups_active_get, ptr null, ptr null, ptr null, ptr @RNA_VertexGroup }, align 8
@rna_VertexGroups_active_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VertexGroups_active, i32 -1, ptr @.str.473, i32 1, ptr @.str.474, ptr @.str.475, i32 0, ptr @.str.83, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update_data, i32 274399232, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexGroups_active_index_get, ptr @VertexGroups_active_index_set, ptr null, ptr null, ptr @rna_Object_active_vertex_group_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.472 = private unnamed_addr constant [20 x i8] c"Active Vertex Group\00", align 1
@.str.473 = private unnamed_addr constant [13 x i8] c"active_index\00", align 1
@.str.474 = private unnamed_addr constant [26 x i8] c"Active Vertex Group Index\00", align 1
@.str.475 = private unnamed_addr constant [35 x i8] c"Active index in vertex group array\00", align 1
@rna_VertexGroups_new_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VertexGroups_new_name, i32 -1, ptr @.str.478, i32 8388616, ptr @.str.2, ptr @.str.479, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_VertexGroup }, align 8
@.str.476 = private unnamed_addr constant [18 x i8] c"Vertex group name\00", align 1
@.str.477 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@rna_VertexGroups_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroups_new_group, ptr null, i32 -1, ptr @.str.399, i32 262145, ptr @.str.2, ptr @.str.476, i32 0, ptr @.str.83, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.477 }, align 8
@.str.478 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.479 = private unnamed_addr constant [17 x i8] c"New vertex group\00", align 1
@rna_VertexGroups_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_VertexGroups_clear_func, ptr @rna_VertexGroups_new_func, ptr null, %struct.ListBase { ptr @rna_VertexGroups_remove_group, ptr @rna_VertexGroups_remove_group } }, ptr @.str.452, i32 16, ptr @.str.482, ptr @VertexGroups_remove_call, ptr null }, align 8
@.str.480 = private unnamed_addr constant [27 x i8] c"Add vertex group to object\00", align 1
@rna_VertexGroups_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_VertexGroups_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_VertexGroups_new_name, ptr @rna_VertexGroups_new_group } }, ptr @.str.449, i32 0, ptr @.str.480, ptr @VertexGroups_new_call, ptr @rna_VertexGroups_new_group }, align 8
@.str.481 = private unnamed_addr constant [23 x i8] c"Vertex group to remove\00", align 1
@rna_VertexGroups_remove_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.478, i32 264196, ptr @.str.2, ptr @.str.481, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_VertexGroup }, align 8
@rna_VertexGroups_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_VertexGroups_remove_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.454, i32 0, ptr @.str.483, ptr @VertexGroups_clear_call, ptr null }, align 8
@.str.482 = private unnamed_addr constant [32 x i8] c"Delete vertex group from object\00", align 1
@.str.483 = private unnamed_addr constant [37 x i8] c"Delete all vertex groups from object\00", align 1
@.str.484 = private unnamed_addr constant [13 x i8] c"VertexGroups\00", align 1
@.str.485 = private unnamed_addr constant [28 x i8] c"Collection of vertex groups\00", align 1
@rna_ParticleSystems_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleSystems_active, ptr @rna_ParticleSystems_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleSystems_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ParticleSystems_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleSystems_active_index, ptr @rna_ParticleSystems_rna_type, i32 -1, ptr @.str.459, i32 8388608, ptr @.str.486, ptr @.str.487, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleSystems_active_get, ptr null, ptr null, ptr null, ptr @RNA_ParticleSystem }, align 8
@rna_ParticleSystems_active_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ParticleSystems_active, i32 -1, ptr @.str.473, i32 1, ptr @.str.488, ptr @.str.489, i32 0, ptr @.str.83, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_particle_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleSystems_active_index_get, ptr @ParticleSystems_active_index_set, ptr null, ptr null, ptr @rna_Object_active_particle_system_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.486 = private unnamed_addr constant [23 x i8] c"Active Particle System\00", align 1
@.str.487 = private unnamed_addr constant [39 x i8] c"Active particle system being displayed\00", align 1
@.str.488 = private unnamed_addr constant [29 x i8] c"Active Particle System Index\00", align 1
@.str.489 = private unnamed_addr constant [37 x i8] c"Index of active particle system slot\00", align 1
@.str.490 = private unnamed_addr constant [16 x i8] c"ParticleSystems\00", align 1
@.str.491 = private unnamed_addr constant [31 x i8] c"Collection of particle systems\00", align 1
@rna_GameObjectSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_sensors, ptr @rna_GameObjectSettings_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.492 = private unnamed_addr constant [8 x i8] c"sensors\00", align 1
@.str.493 = private unnamed_addr constant [8 x i8] c"Sensors\00", align 1
@.str.494 = private unnamed_addr constant [36 x i8] c"Game engine sensor to detect events\00", align 1
@RNA_Sensor = external global %struct.StructRNA, align 8
@.str.495 = private unnamed_addr constant [12 x i8] c"controllers\00", align 1
@.str.496 = private unnamed_addr constant [12 x i8] c"Controllers\00", align 1
@.str.497 = private unnamed_addr constant [75 x i8] c"Game engine controllers to process events, connecting sensors to actuators\00", align 1
@RNA_Controller = external global %struct.StructRNA, align 8
@.str.498 = private unnamed_addr constant [10 x i8] c"actuators\00", align 1
@.str.499 = private unnamed_addr constant [10 x i8] c"Actuators\00", align 1
@.str.500 = private unnamed_addr constant [39 x i8] c"Game engine actuators to act on events\00", align 1
@RNA_Actuator = external global %struct.StructRNA, align 8
@rna_GameObjectSettings_show_sensors = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_show_controllers, ptr @rna_GameObjectSettings_properties, i32 -1, ptr @.str.503, i32 1, ptr @.str.504, ptr @.str.505, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_show_sensors_get, ptr @GameObjectSettings_show_sensors_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.501 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.502 = private unnamed_addr constant [23 x i8] c"Game engine properties\00", align 1
@RNA_GameProperty = external global %struct.StructRNA, align 8
@rna_GameObjectSettings_show_controllers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_show_actuators, ptr @rna_GameObjectSettings_show_sensors, i32 -1, ptr @.str.506, i32 1, ptr @.str.507, ptr @.str.508, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_show_controllers_get, ptr @GameObjectSettings_show_controllers_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.503 = private unnamed_addr constant [13 x i8] c"show_sensors\00", align 1
@.str.504 = private unnamed_addr constant [13 x i8] c"Show Sensors\00", align 1
@.str.505 = private unnamed_addr constant [52 x i8] c"Shows sensors for this object in the user interface\00", align 1
@rna_GameObjectSettings_show_actuators = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_physics_type, ptr @rna_GameObjectSettings_show_controllers, i32 -1, ptr @.str.509, i32 1, ptr @.str.510, ptr @.str.511, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_show_actuators_get, ptr @GameObjectSettings_show_actuators_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.506 = private unnamed_addr constant [17 x i8] c"show_controllers\00", align 1
@.str.507 = private unnamed_addr constant [17 x i8] c"Show Controllers\00", align 1
@.str.508 = private unnamed_addr constant [56 x i8] c"Shows controllers for this object in the user interface\00", align 1
@rna_GameObjectSettings_physics_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_record_animation, ptr @rna_GameObjectSettings_show_actuators, i32 -1, ptr @.str.512, i32 1, ptr @.str.513, ptr @.str.514, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 318767104, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_physics_type_get, ptr @GameObjectSettings_physics_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_GameObjectSettings_physics_type_items, i32 9, i32 0 }, align 8
@.str.509 = private unnamed_addr constant [15 x i8] c"show_actuators\00", align 1
@.str.510 = private unnamed_addr constant [15 x i8] c"Show Actuators\00", align 1
@.str.511 = private unnamed_addr constant [54 x i8] c"Shows actuators for this object in the user interface\00", align 1
@rna_GameObjectSettings_use_record_animation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_actor, ptr @rna_GameObjectSettings_physics_type, i32 -1, ptr @.str.515, i32 1, ptr @.str.516, ptr @.str.517, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_record_animation_get, ptr @GameObjectSettings_use_record_animation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.512 = private unnamed_addr constant [13 x i8] c"physics_type\00", align 1
@.str.513 = private unnamed_addr constant [13 x i8] c"Physics Type\00", align 1
@.str.514 = private unnamed_addr constant [43 x i8] c"Select the type of physical representation\00", align 1
@rna_GameObjectSettings_physics_type_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.979, i32 0, ptr @.str.980, ptr @.str.981 }, %struct.EnumPropertyItem { i32 1, ptr @.str.982, i32 0, ptr @.str.983, ptr @.str.984 }, %struct.EnumPropertyItem { i32 2, ptr @.str.985, i32 0, ptr @.str.986, ptr @.str.987 }, %struct.EnumPropertyItem { i32 3, ptr @.str.988, i32 0, ptr @.str.989, ptr @.str.990 }, %struct.EnumPropertyItem { i32 4, ptr @.str.897, i32 0, ptr @.str.898, ptr @.str.991 }, %struct.EnumPropertyItem { i32 5, ptr @.str.992, i32 0, ptr @.str.993, ptr @.str.994 }, %struct.EnumPropertyItem { i32 6, ptr @.str.995, i32 0, ptr @.str.996, ptr @.str.997 }, %struct.EnumPropertyItem { i32 7, ptr @.str.998, i32 0, ptr @.str.999, ptr @.str.1000 }, %struct.EnumPropertyItem { i32 8, ptr @.str.1001, i32 0, ptr @.str.1002, ptr @.str.1003 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_GameObjectSettings_use_actor = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_ghost, ptr @rna_GameObjectSettings_use_record_animation, i32 -1, ptr @.str.518, i32 1, ptr @.str.519, ptr @.str.520, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_actor_get, ptr @GameObjectSettings_use_actor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.515 = private unnamed_addr constant [21 x i8] c"use_record_animation\00", align 1
@.str.516 = private unnamed_addr constant [17 x i8] c"Record Animation\00", align 1
@.str.517 = private unnamed_addr constant [41 x i8] c"Record animation objects without physics\00", align 1
@rna_GameObjectSettings_use_ghost = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_mass, ptr @rna_GameObjectSettings_use_actor, i32 -1, ptr @.str.521, i32 1, ptr @.str.522, ptr @.str.523, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_ghost_get, ptr @GameObjectSettings_use_ghost_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.518 = private unnamed_addr constant [10 x i8] c"use_actor\00", align 1
@.str.519 = private unnamed_addr constant [6 x i8] c"Actor\00", align 1
@.str.520 = private unnamed_addr constant [48 x i8] c"Object is detected by the Near and Radar sensor\00", align 1
@rna_GameObjectSettings_mass = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_radius, ptr @rna_GameObjectSettings_use_ghost, i32 -1, ptr @.str.524, i32 8193, ptr @.str.525, ptr @.str.526, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 988, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_mass_get, ptr @GameObjectSettings_mass_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+04, float 0x3F847AE140000000, float 1.000000e+04, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.521 = private unnamed_addr constant [10 x i8] c"use_ghost\00", align 1
@.str.522 = private unnamed_addr constant [6 x i8] c"Ghost\00", align 1
@.str.523 = private unnamed_addr constant [50 x i8] c"Object does not react to collisions, like a ghost\00", align 1
@rna_GameObjectSettings_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_sleep, ptr @rna_GameObjectSettings_mass, i32 -1, ptr @.str.527, i32 8193, ptr @.str.528, ptr @.str.529, i32 0, ptr @.str.83, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 996, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_radius_get, ptr @GameObjectSettings_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+01, float 0x3F847AE140000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.524 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str.525 = private unnamed_addr constant [5 x i8] c"Mass\00", align 1
@.str.526 = private unnamed_addr constant [19 x i8] c"Mass of the object\00", align 1
@rna_GameObjectSettings_use_sleep = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_damping, ptr @rna_GameObjectSettings_radius, i32 -1, ptr @.str.530, i32 1, ptr @.str.531, ptr @.str.532, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_sleep_get, ptr @GameObjectSettings_use_sleep_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.527 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.528 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.529 = private unnamed_addr constant [47 x i8] c"Radius of bounding sphere and material physics\00", align 1
@rna_GameObjectSettings_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_rotation_damping, ptr @rna_GameObjectSettings_use_sleep, i32 -1, ptr @.str.533, i32 8193, ptr @.str.534, ptr @.str.535, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 992, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_damping_get, ptr @GameObjectSettings_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.530 = private unnamed_addr constant [10 x i8] c"use_sleep\00", align 1
@.str.531 = private unnamed_addr constant [12 x i8] c"No Sleeping\00", align 1
@.str.532 = private unnamed_addr constant [50 x i8] c"Disable auto (de)activation in physics simulation\00", align 1
@rna_GameObjectSettings_rotation_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_velocity_min, ptr @rna_GameObjectSettings_damping, i32 -1, ptr @.str.536, i32 8193, ptr @.str.537, ptr @.str.538, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1004, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_rotation_damping_get, ptr @GameObjectSettings_rotation_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.533 = private unnamed_addr constant [8 x i8] c"damping\00", align 1
@.str.534 = private unnamed_addr constant [8 x i8] c"Damping\00", align 1
@.str.535 = private unnamed_addr constant [25 x i8] c"General movement damping\00", align 1
@rna_GameObjectSettings_velocity_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_velocity_max, ptr @rna_GameObjectSettings_rotation_damping, i32 -1, ptr @.str.539, i32 8193, ptr @.str.540, ptr @.str.541, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1016, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_velocity_min_get, ptr @GameObjectSettings_velocity_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.536 = private unnamed_addr constant [17 x i8] c"rotation_damping\00", align 1
@.str.537 = private unnamed_addr constant [17 x i8] c"Rotation Damping\00", align 1
@.str.538 = private unnamed_addr constant [25 x i8] c"General rotation damping\00", align 1
@rna_GameObjectSettings_velocity_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_step_height, ptr @rna_GameObjectSettings_velocity_min, i32 -1, ptr @.str.542, i32 8193, ptr @.str.543, ptr @.str.544, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1012, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_velocity_max_get, ptr @GameObjectSettings_velocity_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.539 = private unnamed_addr constant [13 x i8] c"velocity_min\00", align 1
@.str.540 = private unnamed_addr constant [13 x i8] c"Velocity Min\00", align 1
@.str.541 = private unnamed_addr constant [65 x i8] c"Clamp velocity to this minimum speed (except when totally still)\00", align 1
@rna_GameObjectSettings_step_height = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_jump_speed, ptr @rna_GameObjectSettings_velocity_max, i32 -1, ptr @.str.545, i32 8193, ptr @.str.546, ptr @.str.547, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1024, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_step_height_get, ptr @GameObjectSettings_step_height_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+00, float 0x3F847AE140000000, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.542 = private unnamed_addr constant [13 x i8] c"velocity_max\00", align 1
@.str.543 = private unnamed_addr constant [13 x i8] c"Velocity Max\00", align 1
@.str.544 = private unnamed_addr constant [37 x i8] c"Clamp velocity to this maximum speed\00", align 1
@rna_GameObjectSettings_jump_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_fall_speed, ptr @rna_GameObjectSettings_step_height, i32 -1, ptr @.str.548, i32 8193, ptr @.str.549, ptr @.str.550, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1028, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_jump_speed_get, ptr @GameObjectSettings_jump_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.545 = private unnamed_addr constant [12 x i8] c"step_height\00", align 1
@.str.546 = private unnamed_addr constant [12 x i8] c"Step Height\00", align 1
@.str.547 = private unnamed_addr constant [51 x i8] c"Maximum height of steps the character can run over\00", align 1
@rna_GameObjectSettings_fall_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_collision_group, ptr @rna_GameObjectSettings_jump_speed, i32 -1, ptr @.str.551, i32 8193, ptr @.str.552, ptr @.str.553, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1032, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_fall_speed_get, ptr @GameObjectSettings_fall_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.548 = private unnamed_addr constant [11 x i8] c"jump_speed\00", align 1
@.str.549 = private unnamed_addr constant [11 x i8] c"Jump Force\00", align 1
@.str.550 = private unnamed_addr constant [54 x i8] c"Upward velocity applied to the character when jumping\00", align 1
@rna_GameObjectSettings_collision_group = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_collision_mask, ptr @rna_GameObjectSettings_fall_speed, i32 -1, ptr @.str.554, i32 1, ptr @.str.555, ptr @.str.556, i32 0, ptr @.str.83, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 8, i32 0, i32 0], i32 8, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @GameObjectSettings_collision_group_get, ptr @GameObjectSettings_collision_group_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_GameObjectSettings_collision_group_default }, align 8
@.str.551 = private unnamed_addr constant [11 x i8] c"fall_speed\00", align 1
@.str.552 = private unnamed_addr constant [15 x i8] c"Fall Speed Max\00", align 1
@.str.553 = private unnamed_addr constant [47 x i8] c"Maximum speed at which the character will fall\00", align 1
@rna_GameObjectSettings_collision_mask = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_lock_location_x, ptr @rna_GameObjectSettings_collision_group, i32 -1, ptr @.str.557, i32 1, ptr @.str.558, ptr @.str.559, i32 0, ptr @.str.83, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 8, i32 0, i32 0], i32 8, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @GameObjectSettings_collision_mask_get, ptr @GameObjectSettings_collision_mask_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_GameObjectSettings_collision_mask_default }, align 8
@.str.554 = private unnamed_addr constant [16 x i8] c"collision_group\00", align 1
@.str.555 = private unnamed_addr constant [16 x i8] c"Collision Group\00", align 1
@.str.556 = private unnamed_addr constant [34 x i8] c"The collision group of the object\00", align 1
@rna_GameObjectSettings_collision_group_default = internal global [8 x i32] zeroinitializer, align 16
@rna_GameObjectSettings_lock_location_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_lock_location_y, ptr @rna_GameObjectSettings_collision_mask, i32 -1, ptr @.str.560, i32 1, ptr @.str.561, ptr @.str.562, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_lock_location_x_get, ptr @GameObjectSettings_lock_location_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.557 = private unnamed_addr constant [15 x i8] c"collision_mask\00", align 1
@.str.558 = private unnamed_addr constant [15 x i8] c"Collision Mask\00", align 1
@.str.559 = private unnamed_addr constant [40 x i8] c"The groups this object can collide with\00", align 1
@rna_GameObjectSettings_collision_mask_default = internal global [8 x i32] zeroinitializer, align 16
@rna_GameObjectSettings_lock_location_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_lock_location_z, ptr @rna_GameObjectSettings_lock_location_x, i32 -1, ptr @.str.563, i32 1, ptr @.str.564, ptr @.str.565, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_lock_location_y_get, ptr @GameObjectSettings_lock_location_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.560 = private unnamed_addr constant [16 x i8] c"lock_location_x\00", align 1
@.str.561 = private unnamed_addr constant [12 x i8] c"Lock X Axis\00", align 1
@.str.562 = private unnamed_addr constant [53 x i8] c"Disable simulation of linear motion along the X axis\00", align 1
@rna_GameObjectSettings_lock_location_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_lock_rotation_x, ptr @rna_GameObjectSettings_lock_location_y, i32 -1, ptr @.str.566, i32 1, ptr @.str.567, ptr @.str.568, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_lock_location_z_get, ptr @GameObjectSettings_lock_location_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.563 = private unnamed_addr constant [16 x i8] c"lock_location_y\00", align 1
@.str.564 = private unnamed_addr constant [12 x i8] c"Lock Y Axis\00", align 1
@.str.565 = private unnamed_addr constant [53 x i8] c"Disable simulation of linear motion along the Y axis\00", align 1
@rna_GameObjectSettings_lock_rotation_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_lock_rotation_y, ptr @rna_GameObjectSettings_lock_location_z, i32 -1, ptr @.str.569, i32 1, ptr @.str.570, ptr @.str.571, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_lock_rotation_x_get, ptr @GameObjectSettings_lock_rotation_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.566 = private unnamed_addr constant [16 x i8] c"lock_location_z\00", align 1
@.str.567 = private unnamed_addr constant [12 x i8] c"Lock Z Axis\00", align 1
@.str.568 = private unnamed_addr constant [53 x i8] c"Disable simulation of linear motion along the Z axis\00", align 1
@rna_GameObjectSettings_lock_rotation_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_lock_rotation_z, ptr @rna_GameObjectSettings_lock_rotation_x, i32 -1, ptr @.str.572, i32 1, ptr @.str.573, ptr @.str.574, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_lock_rotation_y_get, ptr @GameObjectSettings_lock_rotation_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.569 = private unnamed_addr constant [16 x i8] c"lock_rotation_x\00", align 1
@.str.570 = private unnamed_addr constant [21 x i8] c"Lock X Rotation Axis\00", align 1
@.str.571 = private unnamed_addr constant [54 x i8] c"Disable simulation of angular motion along the X axis\00", align 1
@rna_GameObjectSettings_lock_rotation_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_activity_culling, ptr @rna_GameObjectSettings_lock_rotation_y, i32 -1, ptr @.str.575, i32 1, ptr @.str.576, ptr @.str.577, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_lock_rotation_z_get, ptr @GameObjectSettings_lock_rotation_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.572 = private unnamed_addr constant [16 x i8] c"lock_rotation_y\00", align 1
@.str.573 = private unnamed_addr constant [21 x i8] c"Lock Y Rotation Axis\00", align 1
@.str.574 = private unnamed_addr constant [54 x i8] c"Disable simulation of angular motion along the Y axis\00", align 1
@rna_GameObjectSettings_use_activity_culling = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_material_physics_fh, ptr @rna_GameObjectSettings_lock_rotation_z, i32 -1, ptr @.str.578, i32 1, ptr @.str.576, ptr @.str.577, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_activity_culling_get, ptr @GameObjectSettings_use_activity_culling_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.575 = private unnamed_addr constant [16 x i8] c"lock_rotation_z\00", align 1
@.str.576 = private unnamed_addr constant [21 x i8] c"Lock Z Rotation Axis\00", align 1
@.str.577 = private unnamed_addr constant [54 x i8] c"Disable simulation of angular motion along the Z axis\00", align 1
@rna_GameObjectSettings_use_material_physics_fh = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_rotate_from_normal, ptr @rna_GameObjectSettings_use_activity_culling, i32 -1, ptr @.str.579, i32 1, ptr @.str.580, ptr @.str.581, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_material_physics_fh_get, ptr @GameObjectSettings_use_material_physics_fh_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.578 = private unnamed_addr constant [21 x i8] c"use_activity_culling\00", align 1
@rna_GameObjectSettings_use_rotate_from_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_form_factor, ptr @rna_GameObjectSettings_use_material_physics_fh, i32 -1, ptr @.str.582, i32 1, ptr @.str.583, ptr @.str.584, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_rotate_from_normal_get, ptr @GameObjectSettings_use_rotate_from_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.579 = private unnamed_addr constant [24 x i8] c"use_material_physics_fh\00", align 1
@.str.580 = private unnamed_addr constant [25 x i8] c"Use Material Force Field\00", align 1
@.str.581 = private unnamed_addr constant [51 x i8] c"React to force field physics settings in materials\00", align 1
@rna_GameObjectSettings_form_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_anisotropic_friction, ptr @rna_GameObjectSettings_use_rotate_from_normal, i32 -1, ptr @.str.585, i32 8193, ptr @.str.586, ptr @.str.587, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1000, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_form_factor_get, ptr @GameObjectSettings_form_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.582 = private unnamed_addr constant [23 x i8] c"use_rotate_from_normal\00", align 1
@.str.583 = private unnamed_addr constant [19 x i8] c"Rotate From Normal\00", align 1
@.str.584 = private unnamed_addr constant [74 x i8] c"Use face normal to rotate object, so that it points away from the surface\00", align 1
@rna_GameObjectSettings_use_anisotropic_friction = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_friction_coefficients, ptr @rna_GameObjectSettings_form_factor, i32 -1, ptr @.str.588, i32 1, ptr @.str.589, ptr @.str.590, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_anisotropic_friction_get, ptr @GameObjectSettings_use_anisotropic_friction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.585 = private unnamed_addr constant [12 x i8] c"form_factor\00", align 1
@.str.586 = private unnamed_addr constant [12 x i8] c"Form Factor\00", align 1
@.str.587 = private unnamed_addr constant [38 x i8] c"Form factor scales the inertia tensor\00", align 1
@rna_GameObjectSettings_friction_coefficients = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_collision_bounds, ptr @rna_GameObjectSettings_use_anisotropic_friction, i32 -1, ptr @.str.591, i32 8193, ptr @.str.592, ptr @.str.593, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 1164, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @GameObjectSettings_friction_coefficients_get, ptr @GameObjectSettings_friction_coefficients_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_GameObjectSettings_friction_coefficients_default }, align 8
@.str.588 = private unnamed_addr constant [25 x i8] c"use_anisotropic_friction\00", align 1
@.str.589 = private unnamed_addr constant [21 x i8] c"Anisotropic Friction\00", align 1
@.str.590 = private unnamed_addr constant [28 x i8] c"Enable anisotropic friction\00", align 1
@rna_GameObjectSettings_use_collision_bounds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_collision_bounds_type, ptr @rna_GameObjectSettings_friction_coefficients, i32 -1, ptr @.str.594, i32 1, ptr @.str.595, ptr @.str.596, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_collision_bounds_get, ptr @GameObjectSettings_use_collision_bounds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.591 = private unnamed_addr constant [22 x i8] c"friction_coefficients\00", align 1
@.str.592 = private unnamed_addr constant [22 x i8] c"Friction Coefficients\00", align 1
@.str.593 = private unnamed_addr constant [105 x i8] c"Relative friction coefficients in the in the X, Y and Z directions, when anisotropic friction is enabled\00", align 1
@rna_GameObjectSettings_friction_coefficients_default = internal global [3 x float] zeroinitializer, align 4
@rna_GameObjectSettings_collision_bounds_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_collision_compound, ptr @rna_GameObjectSettings_use_collision_bounds, i32 -1, ptr @.str.597, i32 1, ptr @.str.598, ptr @.str.599, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_collision_bounds_type_get, ptr @GameObjectSettings_collision_bounds_type_set, ptr @rna_Object_collision_bounds_itemf, ptr null, ptr null, ptr null, ptr @rna_GameObjectSettings_collision_bounds_type_items, i32 7, i32 0 }, align 8
@.str.594 = private unnamed_addr constant [21 x i8] c"use_collision_bounds\00", align 1
@.str.595 = private unnamed_addr constant [21 x i8] c"Use Collision Bounds\00", align 1
@.str.596 = private unnamed_addr constant [55 x i8] c"Specify a collision bounds type other than the default\00", align 1
@rna_GameObjectSettings_use_collision_compound = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_collision_margin, ptr @rna_GameObjectSettings_collision_bounds_type, i32 -1, ptr @.str.600, i32 1, ptr @.str.601, ptr @.str.602, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_collision_compound_get, ptr @GameObjectSettings_use_collision_compound_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.597 = private unnamed_addr constant [22 x i8] c"collision_bounds_type\00", align 1
@.str.598 = private unnamed_addr constant [17 x i8] c"Collision Bounds\00", align 1
@.str.599 = private unnamed_addr constant [26 x i8] c"Select the collision type\00", align 1
@rna_GameObjectSettings_collision_bounds_type_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.789, i32 0, ptr @.str.790, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.793, i32 0, ptr @.str.794, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1004, i32 0, ptr @.str.1005, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1006, i32 0, ptr @.str.1007, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_GameObjectSettings_collision_margin = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_soft_body, ptr @rna_GameObjectSettings_use_collision_compound, i32 -1, ptr @.str.603, i32 8193, ptr @.str.604, ptr @.str.605, i32 0, ptr @.str.83, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1008, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_collision_margin_get, ptr @GameObjectSettings_collision_margin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.600 = private unnamed_addr constant [23 x i8] c"use_collision_compound\00", align 1
@.str.601 = private unnamed_addr constant [19 x i8] c"Collision Compound\00", align 1
@.str.602 = private unnamed_addr constant [49 x i8] c"Add children to form a compound collision object\00", align 1
@rna_GameObjectSettings_soft_body = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_obstacle_create, ptr @rna_GameObjectSettings_collision_margin, i32 -1, ptr @.str.230, i32 8388608, ptr @.str.231, ptr @.str.606, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_soft_body_get, ptr null, ptr null, ptr null, ptr @RNA_GameSoftBodySettings }, align 8
@.str.603 = private unnamed_addr constant [17 x i8] c"collision_margin\00", align 1
@.str.604 = private unnamed_addr constant [17 x i8] c"Collision Margin\00", align 1
@.str.605 = private unnamed_addr constant [88 x i8] c"Extra margin around object for collision detection, small amount required for stability\00", align 1
@rna_GameObjectSettings_use_obstacle_create = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_obstacle_radius, ptr @rna_GameObjectSettings_soft_body, i32 -1, ptr @.str.607, i32 1, ptr @.str.608, ptr @.str.609, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_obstacle_create_get, ptr @GameObjectSettings_use_obstacle_create_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.606 = private unnamed_addr constant [41 x i8] c"Settings for Bullet soft body simulation\00", align 1
@rna_GameObjectSettings_obstacle_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_states_visible, ptr @rna_GameObjectSettings_use_obstacle_create, i32 -1, ptr @.str.610, i32 8193, ptr @.str.611, ptr @.str.612, i32 0, ptr @.str.83, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1020, i32 4, ptr null, ptr null }, ptr @GameObjectSettings_obstacle_radius_get, ptr @GameObjectSettings_obstacle_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.607 = private unnamed_addr constant [20 x i8] c"use_obstacle_create\00", align 1
@.str.608 = private unnamed_addr constant [16 x i8] c"Create obstacle\00", align 1
@.str.609 = private unnamed_addr constant [46 x i8] c"Create representation for obstacle simulation\00", align 1
@rna_GameObjectSettings_states_visible = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_used_states, ptr @rna_GameObjectSettings_obstacle_radius, i32 -1, ptr @.str.613, i32 1, ptr @.str.614, ptr @.str.615, i32 0, ptr @.str.83, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 30, i32 0, i32 0], i32 30, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @GameObjectSettings_states_visible_get, ptr @GameObjectSettings_states_visible_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_GameObjectSettings_states_visible_default }, align 8
@.str.610 = private unnamed_addr constant [16 x i8] c"obstacle_radius\00", align 1
@.str.611 = private unnamed_addr constant [16 x i8] c"Obstacle Radius\00", align 1
@.str.612 = private unnamed_addr constant [55 x i8] c"Radius of object representation in obstacle simulation\00", align 1
@rna_GameObjectSettings_used_states = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_states_initial, ptr @rna_GameObjectSettings_states_visible, i32 -1, ptr @.str.616, i32 0, ptr @.str.617, ptr @.str.618, i32 0, ptr @.str.83, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 30, i32 0, i32 0], i32 30, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @GameObjectSettings_used_states_get, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_GameObjectSettings_used_states_default }, align 8
@.str.613 = private unnamed_addr constant [15 x i8] c"states_visible\00", align 1
@.str.614 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.615 = private unnamed_addr constant [50 x i8] c"State determining which controllers are displayed\00", align 1
@rna_GameObjectSettings_states_visible_default = internal global [30 x i32] zeroinitializer, align 16
@rna_GameObjectSettings_states_initial = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_show_debug_state, ptr @rna_GameObjectSettings_used_states, i32 -1, ptr @.str.619, i32 1, ptr @.str.620, ptr @.str.621, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 1, [3 x i32] [i32 30, i32 0, i32 0], i32 30, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @GameObjectSettings_states_initial_get, ptr @GameObjectSettings_states_initial_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_GameObjectSettings_states_initial_default }, align 8
@.str.616 = private unnamed_addr constant [12 x i8] c"used_states\00", align 1
@.str.617 = private unnamed_addr constant [11 x i8] c"Used State\00", align 1
@.str.618 = private unnamed_addr constant [43 x i8] c"States which are being used by controllers\00", align 1
@rna_GameObjectSettings_used_states_default = internal global [30 x i32] zeroinitializer, align 16
@rna_GameObjectSettings_show_debug_state = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_use_all_states, ptr @rna_GameObjectSettings_states_initial, i32 -1, ptr @.str.622, i32 1, ptr @.str.623, ptr @.str.624, i32 110, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_show_debug_state_get, ptr @GameObjectSettings_show_debug_state_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.619 = private unnamed_addr constant [15 x i8] c"states_initial\00", align 1
@.str.620 = private unnamed_addr constant [14 x i8] c"Initial State\00", align 1
@.str.621 = private unnamed_addr constant [35 x i8] c"Initial state when the game starts\00", align 1
@rna_GameObjectSettings_states_initial_default = internal global [30 x i32] zeroinitializer, align 16
@rna_GameObjectSettings_use_all_states = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_GameObjectSettings_show_state_panel, ptr @rna_GameObjectSettings_show_debug_state, i32 -1, ptr @.str.625, i32 1, ptr @.str.626, ptr @.str.627, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_use_all_states_get, ptr @GameObjectSettings_use_all_states_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.622 = private unnamed_addr constant [17 x i8] c"show_debug_state\00", align 1
@.str.623 = private unnamed_addr constant [12 x i8] c"Debug State\00", align 1
@.str.624 = private unnamed_addr constant [42 x i8] c"Print state debug info in the game engine\00", align 1
@rna_GameObjectSettings_show_state_panel = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GameObjectSettings_use_all_states, i32 -1, ptr @.str.628, i32 4097, ptr @.str.629, ptr @.str.630, i32 11, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GameObjectSettings_show_state_panel_get, ptr @GameObjectSettings_show_state_panel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.625 = private unnamed_addr constant [15 x i8] c"use_all_states\00", align 1
@.str.626 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.627 = private unnamed_addr constant [19 x i8] c"Set all state bits\00", align 1
@.str.628 = private unnamed_addr constant [17 x i8] c"show_state_panel\00", align 1
@.str.629 = private unnamed_addr constant [7 x i8] c"States\00", align 1
@.str.630 = private unnamed_addr constant [17 x i8] c"Show state panel\00", align 1
@RNA_ObjectBase = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_VertexGroup, ptr @RNA_GameObjectSettings, ptr null, %struct.ListBase { ptr @rna_ObjectBase_rna_properties, ptr @rna_ObjectBase_select } }, ptr @.str.641, ptr null, ptr null, i32 4, ptr @.str.642, ptr @.str.643, ptr @.str.83, i32 159, ptr null, ptr @rna_ObjectBase_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ObjectBase_layers_from_view_func, ptr @rna_ObjectBase_layers_from_view_func } }, align 8
@.str.631 = private unnamed_addr constant [19 x i8] c"GameObjectSettings\00", align 1
@.str.632 = private unnamed_addr constant [21 x i8] c"Game Object Settings\00", align 1
@rna_ObjectBase_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectBase_object, ptr @rna_ObjectBase_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectBase_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ObjectBase_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectBase_layers, ptr @rna_ObjectBase_rna_type, i32 -1, ptr @.str.633, i32 8388608, ptr @.str.436, ptr @.str.634, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectBase_object_get, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_ObjectBase_layers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectBase_layers_local_view, ptr @rna_ObjectBase_object, i32 -1, ptr @.str.90, i32 1, ptr @.str.91, ptr @.str.635, i32 0, ptr @.str.83, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 20, i32 0, i32 0], i32 20, ptr @rna_Base_layer_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @ObjectBase_layers_get, ptr @ObjectBase_layers_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_ObjectBase_layers_default }, align 8
@.str.633 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.634 = private unnamed_addr constant [26 x i8] c"Object this base links to\00", align 1
@rna_ObjectBase_layers_local_view = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectBase_select, ptr @rna_ObjectBase_layers, i32 -1, ptr @.str.93, i32 0, ptr @.str.94, ptr @.str.636, i32 0, ptr @.str.83, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 8, i32 0, i32 0], i32 8, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @ObjectBase_layers_local_view_get, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_ObjectBase_layers_local_view_default }, align 8
@.str.635 = private unnamed_addr constant [29 x i8] c"Layers the object base is on\00", align 1
@rna_ObjectBase_layers_default = internal global [20 x i32] zeroinitializer, align 16
@rna_ObjectBase_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ObjectBase_layers_local_view, i32 -1, ptr @.str.96, i32 1, ptr @.str.97, ptr @.str.637, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Base_select_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectBase_select_get, ptr @ObjectBase_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.636 = private unnamed_addr constant [43 x i8] c"3D local view layers the object base is on\00", align 1
@rna_ObjectBase_layers_local_view_default = internal global [8 x i32] zeroinitializer, align 16
@.str.637 = private unnamed_addr constant [28 x i8] c"Object base selection state\00", align 1
@.str.638 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@RNA_SpaceView3D = external global %struct.StructRNA, align 8
@rna_ObjectBase_layers_from_view_view = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.638, i32 8650756, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_SpaceView3D }, align 8
@.str.639 = private unnamed_addr constant [17 x i8] c"layers_from_view\00", align 1
@.str.640 = private unnamed_addr constant [80 x i8] c"Sets the object layers from a 3D View (use when adding an object in local view)\00", align 1
@rna_ObjectBase_layers_from_view_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ObjectBase_layers_from_view_view, ptr @rna_ObjectBase_layers_from_view_view } }, ptr @.str.639, i32 0, ptr @.str.640, ptr @ObjectBase_layers_from_view_call, ptr null }, align 8
@.str.641 = private unnamed_addr constant [11 x i8] c"ObjectBase\00", align 1
@.str.642 = private unnamed_addr constant [12 x i8] c"Object Base\00", align 1
@.str.643 = private unnamed_addr constant [30 x i8] c"An object instance in a scene\00", align 1
@rna_VertexGroup_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroup_name, ptr @rna_VertexGroup_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexGroup_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_VertexGroup_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroup_lock_weight, ptr @rna_VertexGroup_rna_type, i32 -1, ptr @.str.399, i32 262145, ptr @.str.445, ptr @.str.476, i32 0, ptr @.str.83, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Object_internal_update_data, i32 274399237, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexGroup_name_get, ptr @VertexGroup_name_length, ptr @VertexGroup_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@rna_VertexGroup_lock_weight = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroup_index, ptr @rna_VertexGroup_name, i32 -1, ptr @.str.644, i32 8193, ptr @.str.2, ptr @.str.645, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_internal_update_data, i32 274399237, ptr null, ptr null, i32 80, i32 2, ptr null, ptr null }, ptr @VertexGroup_lock_weight_get, ptr @VertexGroup_lock_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_VertexGroup_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VertexGroup_lock_weight, i32 -1, ptr @.str.414, i32 0, ptr @.str.646, ptr @.str.647, i32 0, ptr @.str.83, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexGroup_index_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.644 = private unnamed_addr constant [12 x i8] c"lock_weight\00", align 1
@.str.645 = private unnamed_addr constant [44 x i8] c"Maintain the relative weights for the group\00", align 1
@.str.646 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.647 = private unnamed_addr constant [33 x i8] c"Index number of the vertex group\00", align 1
@rna_VertexGroup_add_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroup_add_type, ptr @rna_VertexGroup_add_index, i32 -1, ptr @.str.649, i32 5, ptr @.str.2, ptr @.str.650, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.648 = private unnamed_addr constant [11 x i8] c"Index List\00", align 1
@rna_VertexGroup_add_index_default = internal global [1 x i32] zeroinitializer, align 4
@rna_VertexGroup_add_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroup_add_weight, ptr null, i32 -1, ptr @.str.414, i32 131077, ptr @.str.2, ptr @.str.648, i32 0, ptr @.str.83, i32 1, i32 0, ptr null, i32 1, [3 x i32] [i32 1, i32 0, i32 0], i32 1, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr @rna_VertexGroup_add_index_default }, align 8
@rna_VertexGroup_add_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VertexGroup_add_weight, i32 -1, ptr @.str.84, i32 5, ptr @.str.2, ptr @.str.651, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexGroup_add_type_items, i32 3, i32 1 }, align 8
@.str.649 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.650 = private unnamed_addr constant [14 x i8] c"Vertex weight\00", align 1
@.str.651 = private unnamed_addr constant [19 x i8] c"Vertex assign mode\00", align 1
@rna_VertexGroup_add_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1008, i32 0, ptr @.str.1009, ptr @.str.1009 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1010, i32 0, ptr @.str.1011, ptr @.str.1011 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1012, i32 0, ptr @.str.1013, ptr @.str.1013 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexGroup_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_VertexGroup_weight_func, ptr @rna_VertexGroup_add_func, ptr null, %struct.ListBase { ptr @rna_VertexGroup_remove_index, ptr @rna_VertexGroup_remove_index } }, ptr @.str.452, i32 2064, ptr @.str.654, ptr @VertexGroup_remove_call, ptr null }, align 8
@.str.652 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.653 = private unnamed_addr constant [26 x i8] c"Add vertices to the group\00", align 1
@rna_VertexGroup_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_VertexGroup_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_VertexGroup_add_index, ptr @rna_VertexGroup_add_type } }, ptr @.str.652, i32 2064, ptr @.str.653, ptr @VertexGroup_add_call, ptr null }, align 8
@rna_VertexGroup_remove_index_default = internal global [1 x i32] zeroinitializer, align 4
@rna_VertexGroup_remove_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.414, i32 131077, ptr @.str.2, ptr @.str.648, i32 0, ptr @.str.83, i32 1, i32 0, ptr null, i32 1, [3 x i32] [i32 1, i32 0, i32 0], i32 1, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr @rna_VertexGroup_remove_index_default }, align 8
@rna_VertexGroup_weight_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_VertexGroup_remove_func, ptr null, %struct.ListBase { ptr @rna_VertexGroup_weight_index, ptr @rna_VertexGroup_weight_weight } }, ptr @.str.649, i32 2064, ptr @.str.656, ptr @VertexGroup_weight_call, ptr @rna_VertexGroup_weight_weight }, align 8
@.str.654 = private unnamed_addr constant [31 x i8] c"Remove a vertex from the group\00", align 1
@rna_VertexGroup_weight_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VertexGroup_weight_index, i32 -1, ptr @.str.649, i32 9, ptr @.str.2, ptr @.str.650, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.655 = private unnamed_addr constant [24 x i8] c"The index of the vertex\00", align 1
@rna_VertexGroup_weight_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexGroup_weight_weight, ptr null, i32 -1, ptr @.str.414, i32 5, ptr @.str.646, ptr @.str.655, i32 0, ptr @.str.83, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.656 = private unnamed_addr constant [35 x i8] c"Get a vertex weight from the group\00", align 1
@.str.657 = private unnamed_addr constant [12 x i8] c"VertexGroup\00", align 1
@.str.658 = private unnamed_addr constant [13 x i8] c"Vertex Group\00", align 1
@.str.659 = private unnamed_addr constant [63 x i8] c"Group of vertices, used for armature deform and other purposes\00", align 1
@rna_MaterialSlot_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSlot_material, ptr @rna_MaterialSlot_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialSlot_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_MaterialSlot_material = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSlot_link, ptr @rna_MaterialSlot_rna_type, i32 -1, ptr @.str.660, i32 8388609, ptr @.str.661, ptr @.str.662, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MaterialSlot_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialSlot_material_get, ptr @MaterialSlot_material_set, ptr null, ptr null, ptr @RNA_Material }, align 8
@rna_MaterialSlot_link = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaterialSlot_name, ptr @rna_MaterialSlot_material, i32 -1, ptr @.str.663, i32 1, ptr @.str.664, ptr @.str.665, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_MaterialSlot_update, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialSlot_link_get, ptr @MaterialSlot_link_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaterialSlot_link_items, i32 2, i32 0 }, align 8
@.str.660 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.661 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.662 = private unnamed_addr constant [46 x i8] c"Material datablock used by this material slot\00", align 1
@rna_MaterialSlot_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaterialSlot_link, i32 -1, ptr @.str.399, i32 262144, ptr @.str.445, ptr @.str.666, i32 0, ptr @.str.83, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaterialSlot_name_get, ptr @MaterialSlot_name_length, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@.str.663 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.664 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.665 = private unnamed_addr constant [45 x i8] c"Link material to object or the object's data\00", align 1
@rna_MaterialSlot_link_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.436, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1014, i32 0, ptr @.str.81, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.666 = private unnamed_addr constant [19 x i8] c"Material slot name\00", align 1
@.str.667 = private unnamed_addr constant [13 x i8] c"MaterialSlot\00", align 1
@.str.668 = private unnamed_addr constant [14 x i8] c"Material Slot\00", align 1
@.str.669 = private unnamed_addr constant [27 x i8] c"Material slot in an object\00", align 1
@rna_DupliObject_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_object, ptr @rna_DupliObject_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DupliObject_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_DupliObject_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_matrix, ptr @rna_DupliObject_rna_type, i32 -1, ptr @.str.633, i32 8388608, ptr @.str.436, ptr @.str.670, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DupliObject_object_get, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_DupliObject_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_hide, ptr @rna_DupliObject_object, i32 -1, ptr @.str.363, i32 8192, ptr @.str.671, ptr @.str.672, i32 0, ptr @.str.83, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @DupliObject_matrix_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_DupliObject_matrix_default }, align 8
@.str.670 = private unnamed_addr constant [24 x i8] c"Object being duplicated\00", align 1
@rna_DupliObject_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_index, ptr @rna_DupliObject_matrix, i32 -1, ptr @.str.242, i32 8192, ptr @.str.673, ptr @.str.674, i32 0, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 110, i32 2, ptr null, ptr null }, ptr @DupliObject_hide_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.671 = private unnamed_addr constant [24 x i8] c"Object Duplicate Matrix\00", align 1
@.str.672 = private unnamed_addr constant [39 x i8] c"Object duplicate transformation matrix\00", align 1
@rna_DupliObject_matrix_default = internal global [16 x float] zeroinitializer, align 16
@rna_DupliObject_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_persistent_id, ptr @rna_DupliObject_hide, i32 -1, ptr @.str.414, i32 0, ptr @.str.646, ptr @.str.675, i32 0, ptr @.str.83, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DupliObject_index_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.673 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.674 = private unnamed_addr constant [46 x i8] c"Don't show dupli object in viewport or render\00", align 1
@rna_DupliObject_persistent_id = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_particle_system, ptr @rna_DupliObject_index, i32 -1, ptr @.str.676, i32 8192, ptr @.str.677, ptr @.str.678, i32 0, ptr @.str.83, i32 1, i32 0, ptr null, i32 1, [3 x i32] [i32 8, i32 0, i32 0], i32 8, ptr null, i32 0, ptr null, ptr null, i32 112, i32 0, ptr null, ptr null }, ptr null, ptr null, ptr @DupliObject_persistent_id_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr @rna_DupliObject_persistent_id_default }, align 8
@.str.675 = private unnamed_addr constant [37 x i8] c"Index in the lowest-level dupli list\00", align 1
@rna_DupliObject_particle_system = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_orco, ptr @rna_DupliObject_persistent_id, i32 -1, ptr @.str.679, i32 8388608, ptr @.str.680, ptr @.str.681, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DupliObject_particle_system_get, ptr null, ptr null, ptr null, ptr @RNA_ParticleSystem }, align 8
@.str.676 = private unnamed_addr constant [14 x i8] c"persistent_id\00", align 1
@.str.677 = private unnamed_addr constant [14 x i8] c"Persistent ID\00", align 1
@.str.678 = private unnamed_addr constant [75 x i8] c"Persistent identifier for inter-frame matching of objects with motion blur\00", align 1
@rna_DupliObject_persistent_id_default = internal global [8 x i32] zeroinitializer, align 16
@rna_DupliObject_orco = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_uv, ptr @rna_DupliObject_particle_system, i32 -1, ptr @.str.682, i32 8192, ptr @.str.683, ptr @.str.684, i32 0, ptr @.str.83, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 88, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @DupliObject_orco_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_DupliObject_orco_default }, align 8
@.str.679 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@.str.680 = private unnamed_addr constant [16 x i8] c"Particle System\00", align 1
@.str.681 = private unnamed_addr constant [58 x i8] c"Particle system that this dupli object was instanced from\00", align 1
@rna_DupliObject_uv = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DupliObject_type, ptr @rna_DupliObject_orco, i32 -1, ptr @.str.685, i32 8192, ptr @.str.686, ptr @.str.687, i32 0, ptr @.str.83, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 0, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @DupliObject_uv_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_DupliObject_uv_default }, align 8
@.str.682 = private unnamed_addr constant [5 x i8] c"orco\00", align 1
@.str.683 = private unnamed_addr constant [22 x i8] c"Generated Coordinates\00", align 1
@.str.684 = private unnamed_addr constant [45 x i8] c"Generated coordinates in parent object space\00", align 1
@rna_DupliObject_orco_default = internal global [3 x float] zeroinitializer, align 4
@rna_DupliObject_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DupliObject_uv, i32 -1, ptr @.str.84, i32 0, ptr @.str.272, ptr @.str.688, i32 0, ptr @.str.83, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DupliObject_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_DupliObject_type_items, i32 5, i32 0 }, align 8
@.str.685 = private unnamed_addr constant [3 x i8] c"uv\00", align 1
@.str.686 = private unnamed_addr constant [15 x i8] c"UV Coordinates\00", align 1
@.str.687 = private unnamed_addr constant [38 x i8] c"UV coordinates in parent object space\00", align 1
@rna_DupliObject_uv_default = internal global [2 x float] zeroinitializer, align 4
@.str.688 = private unnamed_addr constant [49 x i8] c"Duplicator type that generated this dupli object\00", align 1
@rna_DupliObject_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.764, i32 0, ptr @.str.765, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.766, i32 0, ptr @.str.767, ptr @.str.768 }, %struct.EnumPropertyItem { i32 16, ptr @.str.769, i32 0, ptr @.str.770, ptr @.str.771 }, %struct.EnumPropertyItem { i32 512, ptr @.str.772, i32 0, ptr @.str.773, ptr @.str.774 }, %struct.EnumPropertyItem { i32 256, ptr @.str.775, i32 0, ptr @.str.477, ptr @.str.776 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.689 = private unnamed_addr constant [12 x i8] c"DupliObject\00", align 1
@.str.690 = private unnamed_addr constant [17 x i8] c"Object Duplicate\00", align 1
@.str.691 = private unnamed_addr constant [20 x i8] c"An object duplicate\00", align 1
@rna_LodLevel_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_LodLevel_distance, ptr @rna_LodLevel_rna_properties, i32 -1, ptr @.str.441, i32 8912896, ptr @.str.442, ptr @.str.443, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LodLevel_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_LodLevel_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LodLevel_object, ptr @rna_LodLevel_rna_type, i32 -1, ptr @.str.692, i32 8195, ptr @.str.693, ptr @.str.694, i32 0, ptr @.str.83, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Object_lod_distance_update, i32 85852160, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @LodLevel_distance_get, ptr @LodLevel_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LodLevel_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_LodLevel_use_mesh, ptr @rna_LodLevel_distance, i32 -1, ptr @.str.633, i32 8388609, ptr @.str.436, ptr @.str.695, i32 0, ptr @.str.83, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85852160, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LodLevel_object_get, ptr @LodLevel_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.692 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.693 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.694 = private unnamed_addr constant [45 x i8] c"Distance to begin using this level of detail\00", align 1
@rna_LodLevel_use_mesh = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LodLevel_use_material, ptr @rna_LodLevel_object, i32 -1, ptr @.str.696, i32 3, ptr @.str.697, ptr @.str.698, i32 160, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85852160, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LodLevel_use_mesh_get, ptr @LodLevel_use_mesh_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.695 = private unnamed_addr constant [39 x i8] c"Object to use for this level of detail\00", align 1
@rna_LodLevel_use_material = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LodLevel_use_mesh, i32 -1, ptr @.str.699, i32 3, ptr @.str.700, ptr @.str.701, i32 79, ptr @.str.83, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85852160, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LodLevel_use_material_get, ptr @LodLevel_use_material_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.696 = private unnamed_addr constant [9 x i8] c"use_mesh\00", align 1
@.str.697 = private unnamed_addr constant [9 x i8] c"Use Mesh\00", align 1
@.str.698 = private unnamed_addr constant [54 x i8] c"Use the mesh from this object at this level of detail\00", align 1
@.str.699 = private unnamed_addr constant [13 x i8] c"use_material\00", align 1
@.str.700 = private unnamed_addr constant [13 x i8] c"Use Material\00", align 1
@.str.701 = private unnamed_addr constant [58 x i8] c"Use the material from this object at this level of detail\00", align 1
@RNA_PointCache = external global %struct.StructRNA, align 8
@.str.702 = private unnamed_addr constant [9 x i8] c"LodLevel\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@PointerRNA_NULL = external local_unnamed_addr constant %struct.PointerRNA, align 8
@.str.703 = private unnamed_addr constant [88 x i8] c"Cannot set dupli-group as object belongs in group being instanced, thus causing a cycle\00", align 1
@space_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.706, i32 0, ptr @.str.707, ptr @.str.708 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.709, ptr @.str.710 }, %struct.EnumPropertyItem { i32 3, ptr @.str.711, i32 0, ptr @.str.712, ptr @.str.713 }, %struct.EnumPropertyItem { i32 1, ptr @.str.714, i32 0, ptr @.str.715, ptr @.str.716 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.704 = private unnamed_addr constant [57 x i8] c"'from_space' '%s' is invalid when no pose bone is given!\00", align 1
@.str.705 = private unnamed_addr constant [55 x i8] c"'to_space' '%s' is invalid when no pose bone is given!\00", align 1
@.str.706 = private unnamed_addr constant [6 x i8] c"WORLD\00", align 1
@.str.707 = private unnamed_addr constant [12 x i8] c"World Space\00", align 1
@.str.708 = private unnamed_addr constant [32 x i8] c"The most gobal space in Blender\00", align 1
@.str.709 = private unnamed_addr constant [11 x i8] c"Pose Space\00", align 1
@.str.710 = private unnamed_addr constant [55 x i8] c"The pose space of a bone (its armature's object space)\00", align 1
@.str.711 = private unnamed_addr constant [18 x i8] c"LOCAL_WITH_PARENT\00", align 1
@.str.712 = private unnamed_addr constant [18 x i8] c"Local With Parent\00", align 1
@.str.713 = private unnamed_addr constant [40 x i8] c"The local space of a bone's parent bone\00", align 1
@.str.714 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.715 = private unnamed_addr constant [12 x i8] c"Local Space\00", align 1
@.str.716 = private unnamed_addr constant [34 x i8] c"The local space of an object/bone\00", align 1
@.str.717 = private unnamed_addr constant [28 x i8] c"Object does not have duplis\00", align 1
@.str.718 = private unnamed_addr constant [37 x i8] c"Object.dupli_list has not been freed\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.719 = private unnamed_addr constant [36 x i8] c"Object '%s' does not support shapes\00", align 1
@.str.720 = private unnamed_addr constant [56 x i8] c"Object '%s' has no mesh data to be used for ray casting\00", align 1
@.str.721 = private unnamed_addr constant [66 x i8] c"Object '%s' has no mesh data to be used for finding nearest point\00", align 1
@.str.722 = private unnamed_addr constant [69 x i8] c"Object '%s' could not create internal data for finding nearest point\00", align 1
@.str.723 = private unnamed_addr constant [41 x i8] c"Constraint '%s' not found in object '%s'\00", align 1
@.str.724 = private unnamed_addr constant [36 x i8] c"DeformGroup '%s' not in object '%s'\00", align 1
@.str.725 = private unnamed_addr constant [65 x i8] c"VertexGroup.add(): cannot be called while object is in edit mode\00", align 1
@.str.726 = private unnamed_addr constant [68 x i8] c"VertexGroup.remove(): cannot be called while object is in edit mode\00", align 1
@.str.727 = private unnamed_addr constant [20 x i8] c"Vertex not in group\00", align 1
@RNA_Image = external global %struct.StructRNA, align 8
@RNA_Curve = external global %struct.StructRNA, align 8
@RNA_MetaBall = external global %struct.StructRNA, align 8
@RNA_Lamp = external global %struct.StructRNA, align 8
@RNA_Camera = external global %struct.StructRNA, align 8
@RNA_Lattice = external global %struct.StructRNA, align 8
@RNA_Armature = external global %struct.StructRNA, align 8
@RNA_Speaker = external global %struct.StructRNA, align 8
@parent_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.436, ptr @.str.728 }, %struct.EnumPropertyItem { i32 1, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.729 }, %struct.EnumPropertyItem { i32 2, ptr @.str.730, i32 0, ptr @.str.401, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.731 }, %struct.EnumPropertyItem { i32 5, ptr @.str.732, i32 0, ptr @.str.733, ptr @.str.734 }, %struct.EnumPropertyItem { i32 6, ptr @.str.735, i32 0, ptr @.str.736, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.737, i32 0, ptr @.str.738, ptr @.str.739 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.728 = private unnamed_addr constant [36 x i8] c"The object is parented to an object\00", align 1
@.str.729 = private unnamed_addr constant [34 x i8] c"The object is parented to a curve\00", align 1
@.str.730 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.731 = private unnamed_addr constant [36 x i8] c"The object is parented to a lattice\00", align 1
@.str.732 = private unnamed_addr constant [7 x i8] c"VERTEX\00", align 1
@.str.733 = private unnamed_addr constant [7 x i8] c"Vertex\00", align 1
@.str.734 = private unnamed_addr constant [35 x i8] c"The object is parented to a vertex\00", align 1
@.str.735 = private unnamed_addr constant [9 x i8] c"VERTEX_3\00", align 1
@.str.736 = private unnamed_addr constant [11 x i8] c"3 Vertices\00", align 1
@.str.737 = private unnamed_addr constant [5 x i8] c"BONE\00", align 1
@.str.738 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.739 = private unnamed_addr constant [33 x i8] c"The object is parented to a bone\00", align 1
@.str.740 = private unnamed_addr constant [11 x i8] c"QUATERNION\00", align 1
@.str.741 = private unnamed_addr constant [18 x i8] c"Quaternion (WXYZ)\00", align 1
@.str.742 = private unnamed_addr constant [15 x i8] c"No Gimbal Lock\00", align 1
@.str.743 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@.str.744 = private unnamed_addr constant [10 x i8] c"XYZ Euler\00", align 1
@.str.745 = private unnamed_addr constant [52 x i8] c"XYZ Rotation Order - prone to Gimbal Lock (default)\00", align 1
@.str.746 = private unnamed_addr constant [4 x i8] c"XZY\00", align 1
@.str.747 = private unnamed_addr constant [10 x i8] c"XZY Euler\00", align 1
@.str.748 = private unnamed_addr constant [42 x i8] c"XZY Rotation Order - prone to Gimbal Lock\00", align 1
@.str.749 = private unnamed_addr constant [4 x i8] c"YXZ\00", align 1
@.str.750 = private unnamed_addr constant [10 x i8] c"YXZ Euler\00", align 1
@.str.751 = private unnamed_addr constant [42 x i8] c"YXZ Rotation Order - prone to Gimbal Lock\00", align 1
@.str.752 = private unnamed_addr constant [4 x i8] c"YZX\00", align 1
@.str.753 = private unnamed_addr constant [10 x i8] c"YZX Euler\00", align 1
@.str.754 = private unnamed_addr constant [42 x i8] c"YZX Rotation Order - prone to Gimbal Lock\00", align 1
@.str.755 = private unnamed_addr constant [4 x i8] c"ZXY\00", align 1
@.str.756 = private unnamed_addr constant [10 x i8] c"ZXY Euler\00", align 1
@.str.757 = private unnamed_addr constant [42 x i8] c"ZXY Rotation Order - prone to Gimbal Lock\00", align 1
@.str.758 = private unnamed_addr constant [4 x i8] c"ZYX\00", align 1
@.str.759 = private unnamed_addr constant [10 x i8] c"ZYX Euler\00", align 1
@.str.760 = private unnamed_addr constant [42 x i8] c"ZYX Rotation Order - prone to Gimbal Lock\00", align 1
@.str.761 = private unnamed_addr constant [11 x i8] c"AXIS_ANGLE\00", align 1
@.str.762 = private unnamed_addr constant [11 x i8] c"Axis Angle\00", align 1
@.str.763 = private unnamed_addr constant [77 x i8] c"Axis Angle (W+XYZ), defines a rotation around some axis defined by 3D-Vector\00", align 1
@.str.764 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.765 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.766 = private unnamed_addr constant [7 x i8] c"FRAMES\00", align 1
@.str.767 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.768 = private unnamed_addr constant [36 x i8] c"Make copy of object for every frame\00", align 1
@.str.769 = private unnamed_addr constant [6 x i8] c"VERTS\00", align 1
@.str.770 = private unnamed_addr constant [6 x i8] c"Verts\00", align 1
@.str.771 = private unnamed_addr constant [40 x i8] c"Duplicate child objects on all vertices\00", align 1
@.str.772 = private unnamed_addr constant [6 x i8] c"FACES\00", align 1
@.str.773 = private unnamed_addr constant [6 x i8] c"Faces\00", align 1
@.str.774 = private unnamed_addr constant [37 x i8] c"Duplicate child objects on all faces\00", align 1
@.str.775 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.776 = private unnamed_addr constant [24 x i8] c"Enable group instancing\00", align 1
@.str.777 = private unnamed_addr constant [7 x i8] c"BOUNDS\00", align 1
@.str.778 = private unnamed_addr constant [7 x i8] c"Bounds\00", align 1
@.str.779 = private unnamed_addr constant [30 x i8] c"Draw the bounds of the object\00", align 1
@.str.780 = private unnamed_addr constant [5 x i8] c"WIRE\00", align 1
@.str.781 = private unnamed_addr constant [5 x i8] c"Wire\00", align 1
@.str.782 = private unnamed_addr constant [31 x i8] c"Draw the object as a wireframe\00", align 1
@.str.783 = private unnamed_addr constant [6 x i8] c"SOLID\00", align 1
@.str.784 = private unnamed_addr constant [6 x i8] c"Solid\00", align 1
@.str.785 = private unnamed_addr constant [73 x i8] c"Draw the object as a solid (if solid drawing is enabled in the viewport)\00", align 1
@.str.786 = private unnamed_addr constant [9 x i8] c"TEXTURED\00", align 1
@.str.787 = private unnamed_addr constant [9 x i8] c"Textured\00", align 1
@.str.788 = private unnamed_addr constant [72 x i8] c"Draw the object with textures (if textures are enabled in the viewport)\00", align 1
@.str.789 = private unnamed_addr constant [4 x i8] c"BOX\00", align 1
@.str.790 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.791 = private unnamed_addr constant [19 x i8] c"Draw bounds as box\00", align 1
@.str.792 = private unnamed_addr constant [22 x i8] c"Draw bounds as sphere\00", align 1
@.str.793 = private unnamed_addr constant [9 x i8] c"CYLINDER\00", align 1
@.str.794 = private unnamed_addr constant [9 x i8] c"Cylinder\00", align 1
@.str.795 = private unnamed_addr constant [24 x i8] c"Draw bounds as cylinder\00", align 1
@.str.796 = private unnamed_addr constant [20 x i8] c"Draw bounds as cone\00", align 1
@.str.797 = private unnamed_addr constant [23 x i8] c"Draw bounds as capsule\00", align 1
@.str.798 = private unnamed_addr constant [8 x i8] c"PREVIEW\00", align 1
@.str.799 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.800 = private unnamed_addr constant [32 x i8] c"Apply modifier preview settings\00", align 1
@.str.801 = private unnamed_addr constant [7 x i8] c"RENDER\00", align 1
@.str.802 = private unnamed_addr constant [7 x i8] c"Render\00", align 1
@.str.803 = private unnamed_addr constant [31 x i8] c"Apply modifier render settings\00", align 1
@.str.804 = private unnamed_addr constant [9 x i8] c"VIEWPORT\00", align 1
@.str.805 = private unnamed_addr constant [9 x i8] c"Viewport\00", align 1
@.str.806 = private unnamed_addr constant [40 x i8] c"Generate duplis using viewport settings\00", align 1
@.str.807 = private unnamed_addr constant [39 x i8] c"Generate duplis using preview settings\00", align 1
@.str.808 = private unnamed_addr constant [38 x i8] c"Generate duplis using render settings\00", align 1
@.str.809 = private unnamed_addr constant [7 x i8] c"Modify\00", align 1
@.str.810 = private unnamed_addr constant [11 x i8] c"MESH_CACHE\00", align 1
@.str.811 = private unnamed_addr constant [11 x i8] c"Mesh Cache\00", align 1
@.str.812 = private unnamed_addr constant [11 x i8] c"UV_PROJECT\00", align 1
@.str.813 = private unnamed_addr constant [11 x i8] c"UV Project\00", align 1
@.str.814 = private unnamed_addr constant [8 x i8] c"UV_WARP\00", align 1
@.str.815 = private unnamed_addr constant [8 x i8] c"UV Warp\00", align 1
@.str.816 = private unnamed_addr constant [19 x i8] c"VERTEX_WEIGHT_EDIT\00", align 1
@.str.817 = private unnamed_addr constant [19 x i8] c"Vertex Weight Edit\00", align 1
@.str.818 = private unnamed_addr constant [18 x i8] c"VERTEX_WEIGHT_MIX\00", align 1
@.str.819 = private unnamed_addr constant [18 x i8] c"Vertex Weight Mix\00", align 1
@.str.820 = private unnamed_addr constant [24 x i8] c"VERTEX_WEIGHT_PROXIMITY\00", align 1
@.str.821 = private unnamed_addr constant [24 x i8] c"Vertex Weight Proximity\00", align 1
@.str.822 = private unnamed_addr constant [9 x i8] c"Generate\00", align 1
@.str.823 = private unnamed_addr constant [6 x i8] c"ARRAY\00", align 1
@.str.824 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.825 = private unnamed_addr constant [6 x i8] c"BEVEL\00", align 1
@.str.826 = private unnamed_addr constant [6 x i8] c"Bevel\00", align 1
@.str.827 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.828 = private unnamed_addr constant [8 x i8] c"Boolean\00", align 1
@.str.829 = private unnamed_addr constant [6 x i8] c"BUILD\00", align 1
@.str.830 = private unnamed_addr constant [6 x i8] c"Build\00", align 1
@.str.831 = private unnamed_addr constant [9 x i8] c"DECIMATE\00", align 1
@.str.832 = private unnamed_addr constant [9 x i8] c"Decimate\00", align 1
@.str.833 = private unnamed_addr constant [11 x i8] c"EDGE_SPLIT\00", align 1
@.str.834 = private unnamed_addr constant [11 x i8] c"Edge Split\00", align 1
@.str.835 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.836 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.837 = private unnamed_addr constant [7 x i8] c"MIRROR\00", align 1
@.str.838 = private unnamed_addr constant [7 x i8] c"Mirror\00", align 1
@.str.839 = private unnamed_addr constant [9 x i8] c"MULTIRES\00", align 1
@.str.840 = private unnamed_addr constant [16 x i8] c"Multiresolution\00", align 1
@.str.841 = private unnamed_addr constant [7 x i8] c"REMESH\00", align 1
@.str.842 = private unnamed_addr constant [7 x i8] c"Remesh\00", align 1
@.str.843 = private unnamed_addr constant [6 x i8] c"SCREW\00", align 1
@.str.844 = private unnamed_addr constant [6 x i8] c"Screw\00", align 1
@.str.845 = private unnamed_addr constant [5 x i8] c"SKIN\00", align 1
@.str.846 = private unnamed_addr constant [5 x i8] c"Skin\00", align 1
@.str.847 = private unnamed_addr constant [9 x i8] c"SOLIDIFY\00", align 1
@.str.848 = private unnamed_addr constant [9 x i8] c"Solidify\00", align 1
@.str.849 = private unnamed_addr constant [8 x i8] c"SUBSURF\00", align 1
@.str.850 = private unnamed_addr constant [20 x i8] c"Subdivision Surface\00", align 1
@.str.851 = private unnamed_addr constant [12 x i8] c"TRIANGULATE\00", align 1
@.str.852 = private unnamed_addr constant [12 x i8] c"Triangulate\00", align 1
@.str.853 = private unnamed_addr constant [10 x i8] c"WIREFRAME\00", align 1
@.str.854 = private unnamed_addr constant [10 x i8] c"Wireframe\00", align 1
@.str.855 = private unnamed_addr constant [44 x i8] c"Generate a wireframe on the edges of a mesh\00", align 1
@.str.856 = private unnamed_addr constant [7 x i8] c"Deform\00", align 1
@.str.857 = private unnamed_addr constant [5 x i8] c"CAST\00", align 1
@.str.858 = private unnamed_addr constant [5 x i8] c"Cast\00", align 1
@.str.859 = private unnamed_addr constant [9 x i8] c"DISPLACE\00", align 1
@.str.860 = private unnamed_addr constant [9 x i8] c"Displace\00", align 1
@.str.861 = private unnamed_addr constant [5 x i8] c"HOOK\00", align 1
@.str.862 = private unnamed_addr constant [5 x i8] c"Hook\00", align 1
@.str.863 = private unnamed_addr constant [16 x i8] c"LAPLACIANSMOOTH\00", align 1
@.str.864 = private unnamed_addr constant [17 x i8] c"Laplacian Smooth\00", align 1
@.str.865 = private unnamed_addr constant [16 x i8] c"LAPLACIANDEFORM\00", align 1
@.str.866 = private unnamed_addr constant [17 x i8] c"Laplacian Deform\00", align 1
@.str.867 = private unnamed_addr constant [12 x i8] c"MESH_DEFORM\00", align 1
@.str.868 = private unnamed_addr constant [12 x i8] c"Mesh Deform\00", align 1
@.str.869 = private unnamed_addr constant [11 x i8] c"SHRINKWRAP\00", align 1
@.str.870 = private unnamed_addr constant [11 x i8] c"Shrinkwrap\00", align 1
@.str.871 = private unnamed_addr constant [14 x i8] c"SIMPLE_DEFORM\00", align 1
@.str.872 = private unnamed_addr constant [14 x i8] c"Simple Deform\00", align 1
@.str.873 = private unnamed_addr constant [7 x i8] c"SMOOTH\00", align 1
@.str.874 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.875 = private unnamed_addr constant [5 x i8] c"WARP\00", align 1
@.str.876 = private unnamed_addr constant [5 x i8] c"Warp\00", align 1
@.str.877 = private unnamed_addr constant [5 x i8] c"WAVE\00", align 1
@.str.878 = private unnamed_addr constant [5 x i8] c"Wave\00", align 1
@.str.879 = private unnamed_addr constant [9 x i8] c"Simulate\00", align 1
@.str.880 = private unnamed_addr constant [6 x i8] c"CLOTH\00", align 1
@.str.881 = private unnamed_addr constant [6 x i8] c"Cloth\00", align 1
@.str.882 = private unnamed_addr constant [10 x i8] c"COLLISION\00", align 1
@.str.883 = private unnamed_addr constant [10 x i8] c"Collision\00", align 1
@.str.884 = private unnamed_addr constant [14 x i8] c"DYNAMIC_PAINT\00", align 1
@.str.885 = private unnamed_addr constant [14 x i8] c"Dynamic Paint\00", align 1
@.str.886 = private unnamed_addr constant [8 x i8] c"EXPLODE\00", align 1
@.str.887 = private unnamed_addr constant [8 x i8] c"Explode\00", align 1
@.str.888 = private unnamed_addr constant [17 x i8] c"FLUID_SIMULATION\00", align 1
@.str.889 = private unnamed_addr constant [17 x i8] c"Fluid Simulation\00", align 1
@.str.890 = private unnamed_addr constant [6 x i8] c"OCEAN\00", align 1
@.str.891 = private unnamed_addr constant [6 x i8] c"Ocean\00", align 1
@.str.892 = private unnamed_addr constant [18 x i8] c"PARTICLE_INSTANCE\00", align 1
@.str.893 = private unnamed_addr constant [18 x i8] c"Particle Instance\00", align 1
@.str.894 = private unnamed_addr constant [16 x i8] c"PARTICLE_SYSTEM\00", align 1
@.str.895 = private unnamed_addr constant [6 x i8] c"SMOKE\00", align 1
@.str.896 = private unnamed_addr constant [6 x i8] c"Smoke\00", align 1
@.str.897 = private unnamed_addr constant [10 x i8] c"SOFT_BODY\00", align 1
@.str.898 = private unnamed_addr constant [10 x i8] c"Soft Body\00", align 1
@.str.899 = private unnamed_addr constant [16 x i8] c"Motion Tracking\00", align 1
@.str.900 = private unnamed_addr constant [14 x i8] c"CAMERA_SOLVER\00", align 1
@.str.901 = private unnamed_addr constant [14 x i8] c"Camera Solver\00", align 1
@.str.902 = private unnamed_addr constant [13 x i8] c"FOLLOW_TRACK\00", align 1
@.str.903 = private unnamed_addr constant [13 x i8] c"Follow Track\00", align 1
@.str.904 = private unnamed_addr constant [14 x i8] c"OBJECT_SOLVER\00", align 1
@.str.905 = private unnamed_addr constant [14 x i8] c"Object Solver\00", align 1
@.str.906 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.907 = private unnamed_addr constant [14 x i8] c"COPY_LOCATION\00", align 1
@.str.908 = private unnamed_addr constant [14 x i8] c"Copy Location\00", align 1
@.str.909 = private unnamed_addr constant [84 x i8] c"Copy the location of a target (with an optional offset), so that they move together\00", align 1
@.str.910 = private unnamed_addr constant [14 x i8] c"COPY_ROTATION\00", align 1
@.str.911 = private unnamed_addr constant [14 x i8] c"Copy Rotation\00", align 1
@.str.912 = private unnamed_addr constant [86 x i8] c"Copy the rotation of a target (with an optional offset), so that they rotate together\00", align 1
@.str.913 = private unnamed_addr constant [11 x i8] c"COPY_SCALE\00", align 1
@.str.914 = private unnamed_addr constant [11 x i8] c"Copy Scale\00", align 1
@.str.915 = private unnamed_addr constant [105 x i8] c"Copy the scale factors of a target (with an optional offset), so that they are scaled by the same amount\00", align 1
@.str.916 = private unnamed_addr constant [16 x i8] c"COPY_TRANSFORMS\00", align 1
@.str.917 = private unnamed_addr constant [16 x i8] c"Copy Transforms\00", align 1
@.str.918 = private unnamed_addr constant [69 x i8] c"Copy all the transformations of a target, so that they move together\00", align 1
@.str.919 = private unnamed_addr constant [15 x i8] c"LIMIT_DISTANCE\00", align 1
@.str.920 = private unnamed_addr constant [15 x i8] c"Limit Distance\00", align 1
@.str.921 = private unnamed_addr constant [104 x i8] c"Restrict movements to within a certain distance of a target (at the time of constraint evaluation only)\00", align 1
@.str.922 = private unnamed_addr constant [15 x i8] c"LIMIT_LOCATION\00", align 1
@.str.923 = private unnamed_addr constant [15 x i8] c"Limit Location\00", align 1
@.str.924 = private unnamed_addr constant [54 x i8] c"Restrict movement along each axis within given ranges\00", align 1
@.str.925 = private unnamed_addr constant [15 x i8] c"LIMIT_ROTATION\00", align 1
@.str.926 = private unnamed_addr constant [15 x i8] c"Limit Rotation\00", align 1
@.str.927 = private unnamed_addr constant [54 x i8] c"Restrict rotation along each axis within given ranges\00", align 1
@.str.928 = private unnamed_addr constant [12 x i8] c"LIMIT_SCALE\00", align 1
@.str.929 = private unnamed_addr constant [12 x i8] c"Limit Scale\00", align 1
@.str.930 = private unnamed_addr constant [51 x i8] c"Restrict scaling along each axis with given ranges\00", align 1
@.str.931 = private unnamed_addr constant [16 x i8] c"MAINTAIN_VOLUME\00", align 1
@.str.932 = private unnamed_addr constant [16 x i8] c"Maintain Volume\00", align 1
@.str.933 = private unnamed_addr constant [83 x i8] c"Compensate for scaling one axis by applying suitable scaling to the other two axes\00", align 1
@.str.934 = private unnamed_addr constant [10 x i8] c"TRANSFORM\00", align 1
@.str.935 = private unnamed_addr constant [15 x i8] c"Transformation\00", align 1
@.str.936 = private unnamed_addr constant [86 x i8] c"Use one transform property from target to control another (or same) property on owner\00", align 1
@.str.937 = private unnamed_addr constant [9 x i8] c"Tracking\00", align 1
@.str.938 = private unnamed_addr constant [9 x i8] c"CLAMP_TO\00", align 1
@.str.939 = private unnamed_addr constant [9 x i8] c"Clamp To\00", align 1
@.str.940 = private unnamed_addr constant [89 x i8] c"Restrict movements to lie along a curve by remapping location along curve's longest axis\00", align 1
@.str.941 = private unnamed_addr constant [13 x i8] c"DAMPED_TRACK\00", align 1
@.str.942 = private unnamed_addr constant [13 x i8] c"Damped Track\00", align 1
@.str.943 = private unnamed_addr constant [69 x i8] c"Point towards a target by performing the smallest rotation necessary\00", align 1
@.str.944 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.945 = private unnamed_addr constant [19 x i8] c"Inverse Kinematics\00", align 1
@.str.946 = private unnamed_addr constant [72 x i8] c"Control a chain of bones by specifying the endpoint target (Bones only)\00", align 1
@.str.947 = private unnamed_addr constant [13 x i8] c"LOCKED_TRACK\00", align 1
@.str.948 = private unnamed_addr constant [13 x i8] c"Locked Track\00", align 1
@.str.949 = private unnamed_addr constant [70 x i8] c"Rotate around the specified ('locked') axis to point towards a target\00", align 1
@.str.950 = private unnamed_addr constant [10 x i8] c"SPLINE_IK\00", align 1
@.str.951 = private unnamed_addr constant [10 x i8] c"Spline IK\00", align 1
@.str.952 = private unnamed_addr constant [48 x i8] c"Align chain of bones along a curve (Bones only)\00", align 1
@.str.953 = private unnamed_addr constant [11 x i8] c"STRETCH_TO\00", align 1
@.str.954 = private unnamed_addr constant [11 x i8] c"Stretch To\00", align 1
@.str.955 = private unnamed_addr constant [47 x i8] c"Stretch along Y-Axis to point towards a target\00", align 1
@.str.956 = private unnamed_addr constant [9 x i8] c"TRACK_TO\00", align 1
@.str.957 = private unnamed_addr constant [9 x i8] c"Track To\00", align 1
@.str.958 = private unnamed_addr constant [55 x i8] c"Legacy tracking constraint prone to twisting artifacts\00", align 1
@.str.959 = private unnamed_addr constant [13 x i8] c"Relationship\00", align 1
@.str.960 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.961 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.962 = private unnamed_addr constant [74 x i8] c"Use transform property of target to look up pose for owner from an Action\00", align 1
@.str.963 = private unnamed_addr constant [9 x i8] c"CHILD_OF\00", align 1
@.str.964 = private unnamed_addr constant [9 x i8] c"Child Of\00", align 1
@.str.965 = private unnamed_addr constant [45 x i8] c"Make target the 'detachable' parent of owner\00", align 1
@.str.966 = private unnamed_addr constant [6 x i8] c"FLOOR\00", align 1
@.str.967 = private unnamed_addr constant [6 x i8] c"Floor\00", align 1
@.str.968 = private unnamed_addr constant [108 x i8] c"Use position (and optionally rotation) of target to define a 'wall' or 'floor' that the owner can not cross\00", align 1
@.str.969 = private unnamed_addr constant [12 x i8] c"FOLLOW_PATH\00", align 1
@.str.970 = private unnamed_addr constant [12 x i8] c"Follow Path\00", align 1
@.str.971 = private unnamed_addr constant [47 x i8] c"Use to animate an object/bone following a path\00", align 1
@.str.972 = private unnamed_addr constant [6 x i8] c"PIVOT\00", align 1
@.str.973 = private unnamed_addr constant [6 x i8] c"Pivot\00", align 1
@.str.974 = private unnamed_addr constant [42 x i8] c"Change pivot point for transforms (buggy)\00", align 1
@.str.975 = private unnamed_addr constant [17 x i8] c"RIGID_BODY_JOINT\00", align 1
@.str.976 = private unnamed_addr constant [17 x i8] c"Rigid Body Joint\00", align 1
@.str.977 = private unnamed_addr constant [65 x i8] c"Use to define a Rigid Body Constraint (for Game Engine use only)\00", align 1
@.str.978 = private unnamed_addr constant [45 x i8] c"Restrict movements to surface of target mesh\00", align 1
@.str.979 = private unnamed_addr constant [13 x i8] c"NO_COLLISION\00", align 1
@.str.980 = private unnamed_addr constant [13 x i8] c"No Collision\00", align 1
@.str.981 = private unnamed_addr constant [34 x i8] c"Disable collision for this object\00", align 1
@.str.982 = private unnamed_addr constant [7 x i8] c"STATIC\00", align 1
@.str.983 = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@.str.984 = private unnamed_addr constant [18 x i8] c"Stationary object\00", align 1
@.str.985 = private unnamed_addr constant [8 x i8] c"DYNAMIC\00", align 1
@.str.986 = private unnamed_addr constant [8 x i8] c"Dynamic\00", align 1
@.str.987 = private unnamed_addr constant [15 x i8] c"Linear physics\00", align 1
@.str.988 = private unnamed_addr constant [11 x i8] c"RIGID_BODY\00", align 1
@.str.989 = private unnamed_addr constant [11 x i8] c"Rigid Body\00", align 1
@.str.990 = private unnamed_addr constant [27 x i8] c"Linear and angular physics\00", align 1
@.str.991 = private unnamed_addr constant [10 x i8] c"Soft body\00", align 1
@.str.992 = private unnamed_addr constant [8 x i8] c"OCCLUDE\00", align 1
@.str.993 = private unnamed_addr constant [8 x i8] c"Occlude\00", align 1
@.str.994 = private unnamed_addr constant [40 x i8] c"Occluder for optimizing scene rendering\00", align 1
@.str.995 = private unnamed_addr constant [7 x i8] c"SENSOR\00", align 1
@.str.996 = private unnamed_addr constant [7 x i8] c"Sensor\00", align 1
@.str.997 = private unnamed_addr constant [96 x i8] c"Collision Sensor, detects static and dynamic objects but not the other collision sensor objects\00", align 1
@.str.998 = private unnamed_addr constant [8 x i8] c"NAVMESH\00", align 1
@.str.999 = private unnamed_addr constant [16 x i8] c"Navigation Mesh\00", align 1
@.str.1000 = private unnamed_addr constant [16 x i8] c"Navigation mesh\00", align 1
@.str.1001 = private unnamed_addr constant [10 x i8] c"CHARACTER\00", align 1
@.str.1002 = private unnamed_addr constant [10 x i8] c"Character\00", align 1
@.str.1003 = private unnamed_addr constant [57 x i8] c"Simple kinematic physics appropriate for game characters\00", align 1
@collision_bounds_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.789, i32 0, ptr @.str.790, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.793, i32 0, ptr @.str.794, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1004, i32 0, ptr @.str.1005, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1006, i32 0, ptr @.str.1007, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.1004 = private unnamed_addr constant [12 x i8] c"CONVEX_HULL\00", align 1
@.str.1005 = private unnamed_addr constant [12 x i8] c"Convex Hull\00", align 1
@.str.1006 = private unnamed_addr constant [14 x i8] c"TRIANGLE_MESH\00", align 1
@.str.1007 = private unnamed_addr constant [14 x i8] c"Triangle Mesh\00", align 1
@.str.1008 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@.str.1009 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.1010 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1011 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.1012 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.1013 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.1014 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.1015 = private unnamed_addr constant [19 x i8] c"material_slots[%d]\00", align 1
@switch.table.rna_Object_data_typef = private unnamed_addr constant [26 x ptr] [ptr @RNA_Image, ptr @RNA_Mesh, ptr @RNA_Curve, ptr @RNA_Curve, ptr @RNA_Curve, ptr @RNA_MetaBall, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_Lamp, ptr @RNA_Camera, ptr @RNA_Speaker, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_Lattice, ptr @RNA_ID, ptr @RNA_ID, ptr @RNA_Armature], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_Object_internal_update_data(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #25
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %5) #25
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_object_vgroup_name_index_get(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 25
  %6 = add nsw i32 %2, -1
  %7 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %6) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bDeformGroup, ptr %7, i64 0, i32 2
  %11 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %10, i64 noundef 64) #25
  br label %13

12:                                               ; preds = %3
  store i8 0, ptr %1, align 1, !tbaa !40
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rna_object_vgroup_name_index_length(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %5 = add nsw i32 %1, -1
  %6 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %5) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bDeformGroup, ptr %6, i64 0, i32 2
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #26
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_object_vgroup_name_index_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = tail call i32 @defgroup_name_index(ptr noundef %4, ptr noundef %1) #25
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, 1
  store i16 %7, ptr %2, align 2, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_object_vgroup_name_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = tail call ptr @defgroup_find_name(ptr noundef %5, ptr noundef %1) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = sext i32 %3 to i64
  %10 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %1, i64 noundef %9) #25
  br label %12

11:                                               ; preds = %4
  store i8 0, ptr %2, align 1, !tbaa !40
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: optsize
declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_object_uvlayer_name_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 24, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !52
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = zext nneg i32 %15 to i64
  br label %21

21:                                               ; preds = %17, %33
  %22 = phi i64 [ 0, %17 ], [ %34, %33 ]
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !56
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %22, i32 8
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %1) #26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = sext i32 %3 to i64
  %32 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %1, i64 noundef %31) #25
  br label %37

33:                                               ; preds = %21, %26
  %34 = add nuw nsw i64 %22, 1
  %35 = icmp eq i64 %34, %20
  br i1 %35, label %36, label %21, !llvm.loop !58

36:                                               ; preds = %33, %13, %9, %4
  store i8 0, ptr %2, align 1, !tbaa !40
  br label %37

37:                                               ; preds = %36, %30
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_object_vcollayer_name_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 23, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !60
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = zext nneg i32 %15 to i64
  br label %21

21:                                               ; preds = %17, %33
  %22 = phi i64 [ 0, %17 ], [ %34, %33 ]
  %23 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !56
  %25 = icmp eq i32 %24, 6
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %22, i32 8
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %1) #26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = sext i32 %3 to i64
  %32 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %1, i64 noundef %31) #25
  br label %37

33:                                               ; preds = %21, %26
  %34 = add nuw nsw i64 %22, 1
  %35 = icmp eq i64 %34, %20
  br i1 %35, label %36, label %21, !llvm.loop !62

36:                                               ; preds = %33, %13, %9, %4
  store i8 0, ptr %2, align 1, !tbaa !40
  br label %37

37:                                               ; preds = %36, %30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_Lattice_object_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i16 %5, 22
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_Curve_object_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i16 %5, 2
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_Armature_object_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i16 %5, 25
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_Mesh_object_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i16 %5, 1
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_Camera_object_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i16 %5, 11
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_Lamp_object_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i16 %5, 10
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_DupliObject_index_get(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !64
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_Object_use_dynamic_topology_sculpting_get(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SculptSession, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %6) #25
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_data_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_Object_data_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_data_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !69
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %2
  %12 = icmp eq ptr %6, null
  %13 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !43
  br i1 %12, label %15, label %17

15:                                               ; preds = %11
  %16 = icmp eq i16 %14, 0
  br i1 %16, label %19, label %47

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  switch i16 %14, label %31 [
    i16 0, label %19
    i16 1, label %30
  ]

19:                                               ; preds = %15, %17
  %20 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @id_us_min(ptr noundef nonnull %21) #25
  store ptr null, ptr %20, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %23, %19
  br i1 %12, label %29, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !41
  %28 = icmp eq i16 %27, 19785
  br i1 %28, label %29, label %47

29:                                               ; preds = %25, %24
  tail call void @id_us_plus(ptr noundef %6) #25
  store ptr %6, ptr %20, align 8, !tbaa !51
  br label %47

30:                                               ; preds = %17
  tail call void @BKE_mesh_assign_object(ptr noundef nonnull %4, ptr noundef nonnull %6) #25
  br label %47

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @id_us_min(ptr noundef nonnull %33) #25
  br label %36

36:                                               ; preds = %35, %31
  tail call void @id_us_plus(ptr noundef nonnull %6) #25
  store ptr %6, ptr %32, align 8, !tbaa !51
  %37 = load ptr, ptr @G, align 8, !tbaa !70
  tail call void @test_object_materials(ptr noundef %37, ptr noundef nonnull %6) #25
  %38 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !41
  %40 = icmp eq i16 %39, 21827
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call void @BKE_curve_type_test(ptr noundef nonnull %4) #25
  br label %47

42:                                               ; preds = %36
  %43 = load i16, ptr %18, align 8, !tbaa !43
  %44 = icmp eq i16 %43, 25
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load ptr, ptr %32, align 8, !tbaa !51
  tail call void @BKE_pose_rebuild(ptr noundef nonnull %4, ptr noundef %46) #25
  br label %47

47:                                               ; preds = %29, %25, %41, %45, %42, %30, %15, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_type_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_mode_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !69
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_layers_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 52
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !72
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !64
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 20
  br i1 %14, label %15, label %6, !llvm.loop !73

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_layers_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  tail call fastcc void @rna_Object_layer_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Object_layer_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = tail call fastcc i32 @rna_Object_layer_validate__internal(ptr noundef %1, i32 noundef %6) #27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 %7, ptr %5, align 8, !tbaa !72
  br label %10

10:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_layers_local_view_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 52
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %15, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !72
  %9 = trunc i64 %7 to i32
  %10 = shl nuw i32 16777216, %9
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %13, ptr %14, align 4, !tbaa !64
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %6, !llvm.loop !75

17:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_select_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 53
  %5 = load i16, ptr %4, align 4, !tbaa !76
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 53
  %7 = load i16, ptr %6, align 4, !tbaa !76
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_bound_box_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_boundbox_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_boundbox_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !77 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = tail call ptr @BKE_object_boundbox_get(ptr noundef %3) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(96) %4, i64 96, i1 false)
  br label %8

7:                                                ; preds = %2
  tail call void @fill_vn_fl(ptr noundef %1, i32 noundef 24, float noundef 0.000000e+00) #25
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_parent_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_parent_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_Object_parent_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_parent_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 2, !tbaa !80
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 8
  tail call void @ED_object_parent(ptr noundef %4, ptr noundef %6, i32 noundef %9, ptr noundef nonnull %10) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_parent_type_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !80
  %6 = and i16 %5, 7
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_parent_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Object_parent_type_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_parent_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !81 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 8
  tail call void @ED_object_parent(ptr noundef %4, ptr noundef %6, i32 noundef %1, ptr noundef nonnull %7) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_parent_vertices_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 5
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !82
  %10 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %9, ptr %10, align 4, !tbaa !64
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !83

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_parent_vertices_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 5
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %12, %6 ]
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %11 = getelementptr inbounds i32, ptr %5, i64 %7
  store i32 %10, ptr %11, align 4, !tbaa !82
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %14, label %6, !llvm.loop !84

14:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_parent_bone_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 8
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #25
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_parent_bone_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 8
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #26
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_parent_bone_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_parent_bone_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_parent_bone_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !85 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 2, !tbaa !80
  %9 = sext i16 %8 to i32
  tail call void @ED_object_parent(ptr noundef %4, ptr noundef %6, i32 noundef %9, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_track_axis_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 57
  %5 = load i16, ptr %4, align 4, !tbaa !86
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_track_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 57
  store i16 %5, ptr %6, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_up_axis_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 58
  %5 = load i16, ptr %4, align 2, !tbaa !87
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_up_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 58
  store i16 %5, ptr %6, align 2, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_proxy_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_proxy_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_material_slots_length(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %9 = load i32, ptr %8, align 8, !tbaa !91
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_material_slots_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Object_material_slots, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 29
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 31
  %10 = load i32, ptr %9, align 8, !tbaa !91
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 8, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #25
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @Object_material_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %16

16:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Object_material_slots_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !97 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MaterialSlot, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_material_slots_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @Object_material_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_material_slots_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_material_slots_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @Object_material_slots_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = icmp sgt i32 %1, -1
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %1
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, ptr noundef nonnull @__func__.Object_material_slots_lookup_int, i32 noundef %1) #27
  br label %42

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ %1, %22 ]
  %26 = add nsw i32 %25, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %4) #25
  %27 = icmp ne i32 %26, 0
  %28 = load i32, ptr %6, align 8
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %24, label %38, !llvm.loop !100

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !101
  %34 = mul nsw i32 %33, %1
  %35 = load ptr, ptr %10, align 8, !tbaa !102
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  store ptr %37, ptr %10, align 8, !tbaa !102
  br label %41

38:                                               ; preds = %24
  %39 = icmp eq i32 %26, 0
  %40 = select i1 %39, i1 %29, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %22, %31, %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @Object_material_slots_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %42

42:                                               ; preds = %16, %38, %41, %3
  %43 = phi i32 [ 0, %3 ], [ 1, %41 ], [ 0, %38 ], [ 0, %16 ]
  call void @Object_material_slots_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %43
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_material_slots_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @Object_material_slots_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @MaterialSlot_name_length(ptr noundef nonnull %10) #27
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @MaterialSlot_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #27
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !93
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.79) #25
  call void @MaterialSlot_name_get(ptr noundef nonnull %10, ptr noundef %25) #27
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #26
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %28(ptr noundef %25) #25
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Object_material_slots_next(ptr noundef nonnull %4) #27
  %30 = load i32, ptr %6, align 8, !tbaa !96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !104

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Object_material_slots_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialSlot_name_length(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_MaterialSlot_name_length(ptr noundef %0) #27
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSlot_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_MaterialSlot_name_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_active_material_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_active_material_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_active_material_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !105 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %9 = load i32, ptr %8, align 4, !tbaa !106
  %10 = trunc i32 %9 to i16
  %11 = tail call ptr @give_current_material(ptr noundef nonnull %3, i16 noundef signext %10) #25
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi ptr [ %11, %7 ], [ null, %2 ]
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_Material, ptr noundef %13) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_active_material_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_Object_active_material_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_active_material_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !107 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 0) #25
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = trunc i32 %7 to i16
  tail call void @assign_material(ptr noundef %3, ptr noundef %5, i16 noundef signext %8, i32 noundef 0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_active_material_index_get(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call fastcc i32 @rna_Object_active_material_index_get(ptr noundef %0) #27, !range !108
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Object_active_material_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !109 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 32
  %4 = load i32, ptr %3, align 4, !tbaa !106
  %5 = icmp sgt i32 %4, 1
  %6 = add nsw i32 %4, -1
  %7 = select i1 %5, i32 %6, i32 0
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_active_material_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  tail call fastcc void @rna_Object_active_material_index_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Object_active_material_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !110 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = add nsw i32 %1, 1
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  store i32 %4, ptr %5, align 4, !tbaa !106
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = trunc i32 %1 to i16
  %17 = getelementptr inbounds %struct.BMEditMesh, ptr %13, i64 0, i32 13
  store i16 %16, ptr %17, align 2, !tbaa !112
  br label %18

18:                                               ; preds = %9, %15, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 33
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !115

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 33
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !116

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_rotation_quaternion_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 41
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !117

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_rotation_quaternion_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 41
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !118

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_rotation_axis_angle_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  tail call fastcc void @rna_Object_rotation_axis_angle_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Object_rotation_axis_angle_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 45
  %6 = load float, ptr %5, align 8, !tbaa !120
  store float %6, ptr %1, align 4, !tbaa !114
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 43
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_rotation_axis_angle_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  tail call fastcc void @rna_Object_rotation_axis_angle_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Object_rotation_axis_angle_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !121 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = load float, ptr %1, align 4, !tbaa !114
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 45
  store float %5, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 43
  %8 = getelementptr inbounds float, ptr %1, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_rotation_euler_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 39
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !122

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_rotation_euler_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 39
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !123

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_rotation_mode_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 83
  %5 = load i16, ptr %4, align 8, !tbaa !124
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_rotation_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Object_rotation_mode_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_rotation_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 41
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 39
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 43
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 45
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 83
  %10 = load i16, ptr %9, align 8, !tbaa !124
  %11 = trunc i32 %1 to i16
  tail call void @BKE_rotMode_change_values(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i16 noundef signext %10, i16 noundef signext %11) #25
  store i16 %11, ptr %9, align 8, !tbaa !124
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_scale_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 36
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !126

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_scale_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 36
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !127

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dimensions_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_dimensions_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_dimensions_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !128 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  tail call void @BKE_object_dimensions_get(ptr noundef %4, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dimensions_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_dimensions_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_dimensions_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  tail call void @BKE_object_dimensions_set(ptr noundef %4, ptr noundef %1) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_delta_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 34
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !130

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_delta_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 34
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !131

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_delta_rotation_euler_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 40
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !132

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_delta_rotation_euler_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 40
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !133

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_delta_rotation_quaternion_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 42
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !134

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_delta_rotation_quaternion_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 42
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !135

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_delta_scale_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 38
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !136

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_delta_scale_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 38
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !137

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_lock_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %6 = load i16, ptr %5, align 2, !tbaa !138
  %7 = sext i16 %6 to i32
  %8 = and i32 %7, 1
  store i32 %8, ptr %1, align 4, !tbaa !64
  %9 = lshr i32 %7, 1
  %10 = getelementptr inbounds i32, ptr %1, i64 1
  %11 = and i32 %9, 1
  store i32 %11, ptr %10, align 4, !tbaa !64
  %12 = lshr i32 %7, 2
  %13 = getelementptr inbounds i32, ptr %1, i64 2
  %14 = and i32 %12, 1
  store i32 %14, ptr %13, align 4, !tbaa !64
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_lock_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %6 = load i16, ptr %5, align 2, !tbaa !138
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i16 [ %6, %2 ], [ %19, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %20, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 1, %13
  %15 = trunc i32 %14 to i16
  %16 = or i16 %8, %15
  %17 = xor i16 %15, -1
  %18 = and i16 %8, %17
  %19 = select i1 %12, i16 %18, i16 %16
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %7, !llvm.loop !139

22:                                               ; preds = %7
  store i16 %19, ptr %5, align 2, !tbaa !138
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_lock_rotation_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %6 = load i16, ptr %5, align 2, !tbaa !138
  %7 = sext i16 %6 to i32
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  store i32 %9, ptr %1, align 4, !tbaa !64
  %10 = getelementptr inbounds i32, ptr %1, i64 1
  %11 = lshr i32 %7, 4
  %12 = and i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !64
  %13 = getelementptr inbounds i32, ptr %1, i64 2
  %14 = lshr i32 %7, 5
  %15 = and i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !64
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_lock_rotation_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %6 = load i16, ptr %5, align 2, !tbaa !138
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i16 [ %6, %2 ], [ %19, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %20, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 8, %13
  %15 = trunc i32 %14 to i16
  %16 = or i16 %8, %15
  %17 = xor i16 %15, -1
  %18 = and i16 %8, %17
  %19 = select i1 %12, i16 %18, i16 %16
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %7, !llvm.loop !140

22:                                               ; preds = %7
  store i16 %19, ptr %5, align 2, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_lock_rotation_w_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 56
  %5 = load i16, ptr %4, align 2, !tbaa !138
  %6 = lshr i16 %5, 9
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_lock_rotation_w_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %7 = load i16, ptr %6, align 2, !tbaa !138
  %8 = and i16 %7, -513
  %9 = select i1 %5, i16 0, i16 512
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_lock_rotations_4d_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 56
  %5 = load i16, ptr %4, align 2, !tbaa !138
  %6 = lshr i16 %5, 10
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_lock_rotations_4d_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %7 = load i16, ptr %6, align 2, !tbaa !138
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 0, i16 1024
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !138
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_lock_scale_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %6 = load i16, ptr %5, align 2, !tbaa !138
  %7 = sext i16 %6 to i32
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 1
  store i32 %9, ptr %1, align 4, !tbaa !64
  %10 = getelementptr inbounds i32, ptr %1, i64 1
  %11 = lshr i32 %7, 7
  %12 = and i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !64
  %13 = getelementptr inbounds i32, ptr %1, i64 2
  %14 = lshr i32 %7, 8
  %15 = and i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !64
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_lock_scale_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %6 = load i16, ptr %5, align 2, !tbaa !138
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i16 [ %6, %2 ], [ %19, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %20, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 64, %13
  %15 = trunc i32 %14 to i16
  %16 = or i16 %8, %15
  %17 = xor i16 %15, -1
  %18 = and i16 %8, %17
  %19 = select i1 %12, i16 %18, i16 %16
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %7, !llvm.loop !141

22:                                               ; preds = %7
  store i16 %19, ptr %5, align 2, !tbaa !138
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_matrix_world_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !142

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_matrix_world_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !143

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_matrix_local_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_matrix_local_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_matrix_local_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !144 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BKE_object_matrix_local_get(ptr noundef %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_matrix_local_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_matrix_local_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_matrix_local_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !145 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #28
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 48
  %10 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %9) #25
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #28
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %13, ptr noundef %1) #25
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef nonnull %4, ptr noundef nonnull %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_matrix_basis_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_matrix_basis_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_matrix_basis_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !146 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BKE_object_to_mat4(ptr noundef %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_matrix_basis_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_matrix_basis_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_matrix_basis_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !147 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BKE_object_apply_mat4(ptr noundef %3, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_matrix_parent_inverse_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 48
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !148

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_matrix_parent_inverse_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 48
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !149

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_modifiers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Object_modifiers, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 26
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @Object_modifiers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Object_modifiers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !150 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Modifier, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_modifiers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @Object_modifiers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_modifiers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_modifiers_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @Object_modifiers_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !153

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !157

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @Object_modifiers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Object_modifiers_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_modifiers_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @Object_modifiers_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @Modifier_name_length(ptr noundef nonnull %10) #25
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @Modifier_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #25
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !93
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.79) #25
  call void @Modifier_name_get(ptr noundef nonnull %10, ptr noundef %25) #25
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #26
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %28(ptr noundef %25) #25
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Object_modifiers_next(ptr noundef nonnull %4) #27
  %30 = load i32, ptr %6, align 8, !tbaa !96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !158

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Object_modifiers_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @Modifier_name_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Modifier_name_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_constraints_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Object_constraints, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 106
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @Object_constraints_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Object_constraints_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !159 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Constraint, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_constraints_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @Object_constraints_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_constraints_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_constraints_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @Object_constraints_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !160

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !161

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @Object_constraints_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Object_constraints_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_constraints_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @Object_constraints_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @Constraint_name_length(ptr noundef nonnull %10) #25
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @Constraint_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #25
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !93
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.79) #25
  call void @Constraint_name_get(ptr noundef nonnull %10, ptr noundef %25) #25
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #26
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %28(ptr noundef %25) #25
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Object_constraints_next(ptr noundef nonnull %4) #27
  %30 = load i32, ptr %6, align 8, !tbaa !96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !162

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Object_constraints_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @Constraint_name_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Constraint_name_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_game_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_game_settings_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_game_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !163 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_GameObjectSettings, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_vertex_groups_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Object_vertex_groups, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 25
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @Object_vertex_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Object_vertex_groups_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !164 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_VertexGroup, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_vertex_groups_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @Object_vertex_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_vertex_groups_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_vertex_groups_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @Object_vertex_groups_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !165

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !166

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @Object_vertex_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Object_vertex_groups_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_vertex_groups_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @Object_vertex_groups_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @VertexGroup_name_length(ptr noundef nonnull %10) #27
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @VertexGroup_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #27
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !93
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.79) #25
  call void @VertexGroup_name_get(ptr noundef nonnull %10, ptr noundef %25) #27
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #26
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %28(ptr noundef %25) #25
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Object_vertex_groups_next(ptr noundef nonnull %4) #27
  %30 = load i32, ptr %6, align 8, !tbaa !96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !167

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Object_vertex_groups_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexGroup_name_length(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.bDeformGroup, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #26
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.bDeformGroup, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_empty_draw_type_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 88
  %5 = load i8, ptr %4, align 1, !tbaa !168
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_empty_draw_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Object_empty_draw_type_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_empty_draw_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !169 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  tail call void @BKE_object_empty_draw_type_set(ptr noundef %4, i32 noundef %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Object_empty_draw_size_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 89
  %5 = load float, ptr %4, align 8, !tbaa !170
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_empty_draw_size_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0x3F1A36E2E0000000
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0x3F1A36E2E0000000, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 89
  store float %8, ptr %9, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_empty_image_offset_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #14 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 130
  %6 = load float, ptr %5, align 4, !tbaa !114
  store float %6, ptr %1, align 4, !tbaa !114
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 130, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !114
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_empty_image_offset_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 130
  %6 = load float, ptr %1, align 4, !tbaa !114
  store float %6, ptr %5, align 4, !tbaa !114
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !114
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 130, i64 1
  store float %8, ptr %9, align 4, !tbaa !114
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_image_user_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 131
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ImageUser, ptr noundef %6) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_pass_index_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 96
  %5 = load i16, ptr %4, align 4, !tbaa !172
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_pass_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 96
  store i16 %7, ptr %8, align 4, !tbaa !172
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 98
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !173

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 98
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !114
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %6, !llvm.loop !174

19:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_field_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_field_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_field_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !175 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @object_add_collision_fields(i32 noundef 0) #25
  store ptr %8, ptr %4, align 8, !tbaa !176
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ %5, %2 ]
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_FieldSettings, ptr noundef %10) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_collision_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_collision_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_collision_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !177 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !92
  br label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %10 = load ptr, ptr %9, align 8, !tbaa !176
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @object_add_collision_fields(i32 noundef 0) #25
  store ptr %13, ptr %9, align 8, !tbaa !176
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ %10, %8 ]
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_CollisionSettings, ptr noundef %15) #25
  br label %16

16:                                               ; preds = %14, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_soft_body_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SoftBodySettings, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_particle_systems_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Object_particle_systems, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 109
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @Object_particle_systems_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Object_particle_systems_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !179 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ParticleSystem, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_particle_systems_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @Object_particle_systems_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_particle_systems_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_particle_systems_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @Object_particle_systems_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !180

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !181

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @Object_particle_systems_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Object_particle_systems_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_particle_systems_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @Object_particle_systems_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @ParticleSystem_name_length(ptr noundef nonnull %10) #25
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @ParticleSystem_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #25
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !93
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.79) #25
  call void @ParticleSystem_name_get(ptr noundef nonnull %10, ptr noundef %25) #25
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #26
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %28(ptr noundef %25) #25
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Object_particle_systems_next(ptr noundef nonnull %4) #27
  %30 = load i32, ptr %6, align 8, !tbaa !96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !182

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Object_particle_systems_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @ParticleSystem_name_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ParticleSystem_name_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_rigid_body_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 128
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_RigidBodyObject, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_rigid_body_constraint_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 129
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_RigidBodyConstraint, ptr noundef %6) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_hide_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 102
  %5 = load i8, ptr %4, align 8, !tbaa !185
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 102
  %7 = load i8, ptr %6, align 8, !tbaa !185
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_hide_select_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 102
  %5 = load i8, ptr %4, align 8, !tbaa !185
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_hide_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 102
  %7 = load i8, ptr %6, align 8, !tbaa !185
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_hide_render_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 102
  %5 = load i8, ptr %4, align 8, !tbaa !185
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_hide_render_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 102
  %7 = load i8, ptr %6, align 8, !tbaa !185
  %8 = and i8 %7, -5
  %9 = select i1 %5, i8 0, i8 4
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !185
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_animation_visualization_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 21
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimViz, ptr noundef nonnull %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_motion_path_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !187
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MotionPath, ptr noundef %6) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_use_slow_parent_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !80
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_use_slow_parent_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !80
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Object_slow_parent_offset_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 95
  %5 = load float, ptr %4, align 8, !tbaa !188
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_slow_parent_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, -3.000000e+05
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float -3.000000e+05, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 95
  store float %8, ptr %9, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_use_extra_recalc_object_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 63
  %5 = load i8, ptr %4, align 1, !tbaa !189
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_use_extra_recalc_object_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 63
  %7 = load i8, ptr %6, align 1, !tbaa !189
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_use_extra_recalc_data_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 63
  %5 = load i8, ptr %4, align 1, !tbaa !189
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_use_extra_recalc_data_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 63
  %7 = load i8, ptr %6, align 1, !tbaa !189
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_dupli_type_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %5 = load i16, ptr %4, align 8, !tbaa !190
  %6 = and i16 %5, 792
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_dupli_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 55
  %6 = load i16, ptr %5, align 8, !tbaa !190
  %7 = and i16 %6, -793
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_use_dupli_frames_speed_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %5 = load i16, ptr %4, align 8, !tbaa !190
  %6 = and i16 %5, 64
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_use_dupli_frames_speed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 55
  %7 = load i16, ptr %6, align 8, !tbaa !190
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 64, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_use_dupli_vertices_rotation_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %5 = load i16, ptr %4, align 8, !tbaa !190
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_use_dupli_vertices_rotation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 55
  %7 = load i16, ptr %6, align 8, !tbaa !190
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_use_dupli_faces_scale_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %5 = load i16, ptr %4, align 8, !tbaa !190
  %6 = lshr i16 %5, 10
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_use_dupli_faces_scale_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 55
  %7 = load i16, ptr %6, align 8, !tbaa !190
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 0, i16 1024
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Object_dupli_faces_scale_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 90
  %5 = load float, ptr %4, align 4, !tbaa !191
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_dupli_faces_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 90
  store float %8, ptr %9, align 4, !tbaa !191
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dupli_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 112
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dupli_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_Object_dup_group_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_dup_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !193 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef %6, ptr noundef %4) #25
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 112
  store ptr %6, ptr %10, align 8, !tbaa !192
  br label %12

11:                                               ; preds = %2
  tail call void @BKE_report(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.703) #25
  br label %12

12:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_dupli_frames_start_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 66
  %5 = load i32, ptr %4, align 8, !tbaa !194
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_dupli_frames_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -300000)
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 66
  store i32 %6, ptr %7, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_dupli_frames_end_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 67
  %5 = load i32, ptr %4, align 4, !tbaa !195
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_dupli_frames_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -300000)
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 67
  store i32 %6, ptr %7, align 4, !tbaa !195
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_dupli_frames_on_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 64
  %5 = load i32, ptr %4, align 8, !tbaa !196
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_dupli_frames_on_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 64
  store i32 %6, ptr %7, align 8, !tbaa !196
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_dupli_frames_off_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 65
  %5 = load i32, ptr %4, align 4, !tbaa !197
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_dupli_frames_off_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 65
  store i32 %6, ptr %7, align 4, !tbaa !197
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dupli_list_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Object_dupli_list, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 127
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef %8, ptr noundef null) #25
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @Object_dupli_list_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %14

14:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Object_dupli_list_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !199 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DupliObject, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dupli_list_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @Object_dupli_list_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dupli_list_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_dupli_list_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @Object_dupli_list_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !200

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !201

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @Object_dupli_list_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Object_dupli_list_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_is_duplicator_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %5 = load i16, ptr %4, align 8, !tbaa !190
  %6 = and i16 %5, 2840
  %7 = icmp ne i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_draw_type_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 87
  %5 = load i8, ptr %4, align 2, !tbaa !202
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_draw_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 87
  store i8 %5, ptr %6, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_show_bounds_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 86
  %5 = load i16, ptr %4, align 4, !tbaa !203
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_show_bounds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 86
  %7 = load i16, ptr %6, align 4, !tbaa !203
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_draw_bounds_type_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 84
  %5 = load i8, ptr %4, align 2, !tbaa !204
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_draw_bounds_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 84
  store i8 %5, ptr %6, align 2, !tbaa !204
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_show_name_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 86
  %5 = load i16, ptr %4, align 4, !tbaa !203
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_show_name_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 86
  %7 = load i16, ptr %6, align 4, !tbaa !203
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_show_axis_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 86
  %5 = load i16, ptr %4, align 4, !tbaa !203
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_show_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 86
  %7 = load i16, ptr %6, align 4, !tbaa !203
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_show_texture_space_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 86
  %5 = load i16, ptr %4, align 4, !tbaa !203
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_show_texture_space_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 86
  %7 = load i16, ptr %6, align 4, !tbaa !203
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_show_wire_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 86
  %5 = load i16, ptr %4, align 4, !tbaa !203
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_show_wire_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 86
  %7 = load i16, ptr %6, align 4, !tbaa !203
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_show_all_edges_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 86
  %5 = load i16, ptr %4, align 4, !tbaa !203
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_show_all_edges_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 86
  %7 = load i16, ptr %6, align 4, !tbaa !203
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 0, i16 256
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_show_transparent_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 86
  %5 = load i16, ptr %4, align 4, !tbaa !203
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_show_transparent_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 86
  %7 = load i16, ptr %6, align 4, !tbaa !203
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_show_x_ray_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 86
  %5 = load i16, ptr %4, align 4, !tbaa !203
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_show_x_ray_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 86
  %7 = load i16, ptr %6, align 4, !tbaa !203
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !203
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_grease_pencil_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GreasePencil, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_grease_pencil_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #25
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #25
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !205
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_pose_library_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Action, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_pose_library_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #25
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #25
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !206
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_pose_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Pose, ptr noundef %6) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_show_only_shape_key_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 114
  %5 = load i8, ptr %4, align 1, !tbaa !208
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_show_only_shape_key_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 114
  %7 = load i8, ptr %6, align 1, !tbaa !208
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_use_shape_key_edit_mode_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 114
  %5 = load i8, ptr %4, align 1, !tbaa !208
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_use_shape_key_edit_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 114
  %7 = load i8, ptr %6, align 1, !tbaa !208
  %8 = and i8 %7, -5
  %9 = select i1 %5, i8 0, i8 4
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !208
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_active_shape_key_get(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_Object_active_shape_key_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_active_shape_key_get(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !209 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call ptr @BKE_key_from_object(ptr noundef %4) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !92
  br label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 6
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 115
  %11 = load i16, ptr %10, align 2, !tbaa !210
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %9, i32 noundef %13) #25
  call void @RNA_pointer_create(ptr noundef nonnull %5, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %14, ptr noundef nonnull %3) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  br label %15

15:                                               ; preds = %8, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_active_shape_key_index_get(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call fastcc i32 @rna_Object_active_shape_key_index_get(ptr noundef %0) #27, !range !211
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Object_active_shape_key_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !212 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 115
  %4 = load i16, ptr %3, align 2, !tbaa !210
  %5 = icmp sgt i16 %4, 1
  %6 = sext i16 %4 to i32
  %7 = add nsw i32 %6, -1
  %8 = select i1 %5, i32 %7, i32 0
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_active_shape_key_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  tail call fastcc void @rna_Object_active_shape_key_index_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Object_active_shape_key_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !213 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = trunc i32 %1 to i16
  %5 = add i16 %4, 1
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 115
  store i16 %5, ptr %6, align 2, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Object_use_dynamic_topology_sculpting_get(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call i32 @rna_Object_use_dynamic_topology_sculpting_get(ptr noundef %0) #27, !range !214
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_lod_levels_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Object_lod_levels, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 132
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @Object_lod_levels_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Object_lod_levels_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !215 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_LodLevel, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_lod_levels_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @Object_lod_levels_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_lod_levels_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Object_lod_levels_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @Object_lod_levels_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !216

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !217

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @Object_lod_levels_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Object_lod_levels_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectModifiers_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ObjectModifiers_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @ObjectModifiers_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ObjectModifiers_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !218 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectModifiers_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @ObjectModifiers_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectModifiers_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ObjectModifiers_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectModifiers_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ObjectConstraints_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @ObjectConstraints_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ObjectConstraints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !219 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @ObjectConstraints_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ObjectConstraints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_active_constraint_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_active_constraint_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !220 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 106
  %5 = tail call ptr @BKE_constraints_active_get(ptr noundef nonnull %4) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_Constraint, ptr noundef %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_Object_active_constraint_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_active_constraint_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !221 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 106
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  tail call void @BKE_constraints_active_set(ptr noundef nonnull %4, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_VertexGroups_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @VertexGroups_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VertexGroups_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !222 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @VertexGroups_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @VertexGroups_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_active_vertex_group_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_active_vertex_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !223 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  %6 = load i16, ptr %5, align 2, !tbaa !224
  %7 = zext i16 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %8) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_VertexGroup, ptr noundef %9) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexGroups_active_index_get(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call fastcc i32 @rna_Object_active_vertex_group_index_get(ptr noundef %0) #27, !range !225
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Object_active_vertex_group_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !226 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 97
  %4 = load i16, ptr %3, align 2, !tbaa !224
  %5 = zext i16 %4 to i32
  %6 = add nsw i32 %5, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexGroups_active_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  tail call fastcc void @rna_Object_active_vertex_group_index_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Object_active_vertex_group_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !227 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = trunc i32 %1 to i16
  %5 = add i16 %4, 1
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  store i16 %5, ptr %6, align 2, !tbaa !224
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleSystems_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ParticleSystems_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @ParticleSystems_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ParticleSystems_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !228 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleSystems_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @ParticleSystems_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleSystems_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParticleSystems_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleSystems_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleSystems_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Object_active_particle_system_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_active_particle_system_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !229 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = tail call ptr @psys_get_current(ptr noundef %3) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_ParticleSystem, ptr noundef %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ParticleSystems_active_index_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Object_active_particle_system_index_get(ptr noundef %0) #27, !range !230
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Object_active_particle_system_index_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !231 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = tail call signext i16 @psys_get_current_num(ptr noundef %2) #25
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParticleSystems_active_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Object_active_particle_system_index_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_active_particle_system_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !232 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @psys_set_current_num(ptr noundef %3, i32 noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GameObjectSettings_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @GameObjectSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GameObjectSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !233 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @GameObjectSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GameObjectSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_sensors_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GameObjectSettings_sensors, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 92
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @GameObjectSettings_sensors_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GameObjectSettings_sensors_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !234 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Sensor, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_sensors_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @GameObjectSettings_sensors_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_sensors_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GameObjectSettings_sensors_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @GameObjectSettings_sensors_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !235

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !236

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @GameObjectSettings_sensors_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @GameObjectSettings_sensors_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GameObjectSettings_sensors_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @GameObjectSettings_sensors_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @Sensor_name_length(ptr noundef nonnull %10) #25
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @Sensor_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #25
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !93
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.79) #25
  call void @Sensor_name_get(ptr noundef nonnull %10, ptr noundef %25) #25
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #26
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %28(ptr noundef %25) #25
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @GameObjectSettings_sensors_next(ptr noundef nonnull %4) #27
  %30 = load i32, ptr %6, align 8, !tbaa !96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !237

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @GameObjectSettings_sensors_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @Sensor_name_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Sensor_name_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_controllers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GameObjectSettings_controllers, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 93
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @GameObjectSettings_controllers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GameObjectSettings_controllers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !238 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Controller, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_controllers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @GameObjectSettings_controllers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_controllers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GameObjectSettings_controllers_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @GameObjectSettings_controllers_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !239

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !240

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @GameObjectSettings_controllers_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @GameObjectSettings_controllers_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GameObjectSettings_controllers_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @GameObjectSettings_controllers_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @Controller_name_length(ptr noundef nonnull %10) #25
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @Controller_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #25
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !93
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.79) #25
  call void @Controller_name_get(ptr noundef nonnull %10, ptr noundef %25) #25
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #26
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %28(ptr noundef %25) #25
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @GameObjectSettings_controllers_next(ptr noundef nonnull %4) #27
  %30 = load i32, ptr %6, align 8, !tbaa !96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !241

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @GameObjectSettings_controllers_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @Controller_name_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Controller_name_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_actuators_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GameObjectSettings_actuators, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 94
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @GameObjectSettings_actuators_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GameObjectSettings_actuators_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !242 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Actuator, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_actuators_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @GameObjectSettings_actuators_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_actuators_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GameObjectSettings_actuators_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @GameObjectSettings_actuators_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !243

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !244

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @GameObjectSettings_actuators_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @GameObjectSettings_actuators_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GameObjectSettings_actuators_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @GameObjectSettings_actuators_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @Actuator_name_length(ptr noundef nonnull %10) #25
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @Actuator_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #25
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !93
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.79) #25
  call void @Actuator_name_get(ptr noundef nonnull %10, ptr noundef %25) #25
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #26
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %28(ptr noundef %25) #25
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @GameObjectSettings_actuators_next(ptr noundef nonnull %4) #27
  %30 = load i32, ptr %6, align 8, !tbaa !96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !245

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @GameObjectSettings_actuators_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @Actuator_name_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Actuator_name_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_properties_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GameObjectSettings_properties, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 91
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #25
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @GameObjectSettings_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GameObjectSettings_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !246 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GameProperty, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @GameObjectSettings_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GameObjectSettings_properties_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @GameObjectSettings_properties_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #25
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !247

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %37, ptr %10, align 8, !tbaa !156
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !248

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @GameObjectSettings_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @GameObjectSettings_properties_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GameObjectSettings_properties_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @GameObjectSettings_properties_begin(ptr noundef nonnull %4, ptr noundef %0) #27
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @GameProperty_name_length(ptr noundef nonnull %10) #25
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @GameProperty_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #25
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !93
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.79) #25
  call void @GameProperty_name_get(ptr noundef nonnull %10, ptr noundef %25) #25
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #26
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %28(ptr noundef %25) #25
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @GameObjectSettings_properties_next(ptr noundef nonnull %4) #27
  %30 = load i32, ptr %6, align 8, !tbaa !96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !249

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @GameObjectSettings_properties_end(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #28
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @GameProperty_name_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GameProperty_name_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_show_sensors_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 61
  %5 = load i16, ptr %4, align 4, !tbaa !250
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_show_sensors_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 61
  %7 = load i16, ptr %6, align 4, !tbaa !250
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_show_controllers_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 61
  %5 = load i16, ptr %4, align 4, !tbaa !250
  %6 = lshr i16 %5, 11
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_show_controllers_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 61
  %7 = load i16, ptr %6, align 4, !tbaa !250
  %8 = and i16 %7, -2049
  %9 = select i1 %5, i16 0, i16 2048
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_show_actuators_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 61
  %5 = load i16, ptr %4, align 4, !tbaa !250
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_show_actuators_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 61
  %7 = load i16, ptr %6, align 4, !tbaa !250
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !250
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GameObjectSettings_physics_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_GameObjectSettings_physics_type_get(ptr noundef %0) #27, !range !251
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_GameObjectSettings_physics_type_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !252 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 99
  %4 = load i32, ptr %3, align 8, !tbaa !253
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = and i32 %4, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 113
  store i8 5, ptr %11, align 8, !tbaa !254
  br label %51

12:                                               ; preds = %7
  %13 = and i32 %4, 1048576
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 113
  br i1 %14, label %17, label %16

16:                                               ; preds = %12
  store i8 7, ptr %15, align 8, !tbaa !254
  br label %51

17:                                               ; preds = %12
  store i8 0, ptr %15, align 8, !tbaa !254
  br label %51

18:                                               ; preds = %1
  %19 = and i32 %4, 4194304
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 113
  store i8 8, ptr %22, align 8, !tbaa !254
  br label %51

23:                                               ; preds = %18
  %24 = and i32 %4, 524288
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 113
  store i8 6, ptr %27, align 8, !tbaa !254
  br label %51

28:                                               ; preds = %23
  %29 = and i32 %4, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 113
  store i8 1, ptr %32, align 8, !tbaa !254
  br label %51

33:                                               ; preds = %28
  %34 = and i32 %4, 132096
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 113
  store i8 2, ptr %37, align 8, !tbaa !254
  br label %51

38:                                               ; preds = %33
  %39 = and i32 %4, 1024
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 113
  br i1 %40, label %43, label %42

42:                                               ; preds = %38
  store i8 3, ptr %41, align 8, !tbaa !254
  br label %51

43:                                               ; preds = %38
  store i8 4, ptr %41, align 8, !tbaa !254
  %44 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 101
  %45 = load ptr, ptr %44, align 8, !tbaa !255
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = tail call ptr @bsbNew() #25
  store ptr %48, ptr %44, align 8, !tbaa !255
  %49 = load i8, ptr %41, align 8, !tbaa !254
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %21, %31, %42, %47, %43, %36, %26, %10, %17, %16
  %52 = phi i32 [ 8, %21 ], [ 1, %31 ], [ 3, %42 ], [ %50, %47 ], [ 4, %43 ], [ 2, %36 ], [ 6, %26 ], [ 5, %10 ], [ 0, %17 ], [ 7, %16 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_physics_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_GameObjectSettings_physics_type_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_GameObjectSettings_physics_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !256 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = trunc i32 %1 to i8
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 113
  store i8 %6, ptr %7, align 8, !tbaa !254
  switch i8 %6, label %37 [
    i8 6, label %8
    i8 5, label %11
    i8 7, label %14
    i8 0, label %23
    i8 8, label %25
    i8 1, label %28
    i8 2, label %31
    i8 3, label %34
  ]

8:                                                ; preds = %2
  %9 = and i32 %5, -6231494
  %10 = or disjoint i32 %9, 589824
  store i32 %10, ptr %4, align 8, !tbaa !253
  br label %53

11:                                               ; preds = %2
  %12 = and i32 %5, -6226946
  %13 = or disjoint i32 %12, 262144
  store i32 %13, ptr %4, align 8, !tbaa !253
  br label %53

14:                                               ; preds = %2
  %15 = and i32 %5, -6226946
  %16 = or disjoint i32 %15, 1048576
  store i32 %16, ptr %4, align 8, !tbaa !253
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !43
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  tail call void @BKE_mesh_ensure_navmesh(ptr noundef %22) #25
  br label %53

23:                                               ; preds = %2
  %24 = and i32 %5, -6226946
  store i32 %24, ptr %4, align 8, !tbaa !253
  br label %53

25:                                               ; preds = %2
  %26 = and i32 %5, -6231494
  %27 = or disjoint i32 %26, 4259840
  store i32 %27, ptr %4, align 8, !tbaa !253
  br label %53

28:                                               ; preds = %2
  %29 = and i32 %5, -6226946
  %30 = or disjoint i32 %29, 65536
  store i32 %30, ptr %4, align 8, !tbaa !253
  br label %53

31:                                               ; preds = %2
  %32 = and i32 %5, -6226950
  %33 = or disjoint i32 %32, 65541
  store i32 %33, ptr %4, align 8, !tbaa !253
  br label %53

34:                                               ; preds = %2
  %35 = and i32 %5, -6226950
  %36 = or disjoint i32 %35, 66565
  store i32 %36, ptr %4, align 8, !tbaa !253
  br label %53

37:                                               ; preds = %2
  %38 = and i32 %5, -6226950
  %39 = or disjoint i32 %38, 196613
  store i32 %39, ptr %4, align 8, !tbaa !253
  %40 = and i32 %5, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 84
  %44 = load i8, ptr %43, align 2, !tbaa !204
  %45 = icmp ult i8 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i8 4, ptr %43, align 2, !tbaa !204
  br label %47

47:                                               ; preds = %46, %42, %37
  %48 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 101
  %49 = load ptr, ptr %48, align 8, !tbaa !255
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call ptr @bsbNew() #25
  store ptr %52, ptr %48, align 8, !tbaa !255
  br label %53

53:                                               ; preds = %47, %51, %14, %20, %34, %31, %28, %25, %23, %11, %8
  %54 = load i32, ptr %4, align 8, !tbaa !253
  %55 = xor i32 %54, %5
  %56 = and i32 %55, 1048576
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %60 = load i16, ptr %59, align 8, !tbaa !43
  %61 = icmp eq i16 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %63, i16 noundef signext 2) #25
  br label %64

64:                                               ; preds = %58, %62, %53
  %65 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %65) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_record_animation_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 23
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_record_animation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -8388609
  %9 = select i1 %5, i32 0, i32 8388608
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_actor_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_actor_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_ghost_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_ghost_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_mass_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 69
  %5 = load float, ptr %4, align 4, !tbaa !257
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_mass_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 69
  store float %8, ptr %9, align 4, !tbaa !257
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_radius_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 71
  %5 = load float, ptr %4, align 4, !tbaa !258
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 71
  store float %8, ptr %9, align 4, !tbaa !258
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_sleep_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_sleep_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_damping_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 70
  %5 = load float, ptr %4, align 8, !tbaa !259
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 70
  store float %8, ptr %9, align 8, !tbaa !259
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_rotation_damping_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 73
  %5 = load float, ptr %4, align 4, !tbaa !260
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_rotation_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 73
  store float %8, ptr %9, align 4, !tbaa !260
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_velocity_min_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 76
  %5 = load float, ptr %4, align 8, !tbaa !261
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_velocity_min_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 76
  store float %8, ptr %9, align 8, !tbaa !261
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_velocity_max_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 75
  %5 = load float, ptr %4, align 4, !tbaa !262
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_velocity_max_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 75
  store float %8, ptr %9, align 4, !tbaa !262
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_step_height_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 78
  %5 = load float, ptr %4, align 8, !tbaa !263
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_step_height_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 78
  store float %8, ptr %9, align 8, !tbaa !263
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_jump_speed_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 79
  %5 = load float, ptr %4, align 4, !tbaa !264
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_jump_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 79
  store float %8, ptr %9, align 4, !tbaa !264
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_fall_speed_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 80
  %5 = load float, ptr %4, align 8, !tbaa !265
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_fall_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 80
  store float %8, ptr %9, align 8, !tbaa !265
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_collision_group_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  tail call fastcc void @rna_GameObjectSettings_col_group_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_GameObjectSettings_col_group_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !266 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 81
  %6 = load i16, ptr %5, align 4, !tbaa !267
  %7 = zext i16 %6 to i32
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %14, %8 ]
  %10 = trunc i64 %9 to i32
  %11 = shl nuw nsw i32 1, %10
  %12 = and i32 %11, %7
  %13 = getelementptr inbounds i32, ptr %1, i64 %9
  store i32 %12, ptr %13, align 4, !tbaa !64
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %16, label %8, !llvm.loop !268

16:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_collision_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  tail call fastcc void @rna_GameObjectSettings_col_group_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_GameObjectSettings_col_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !269 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %13, %5 ]
  %7 = phi <4 x i32> [ zeroinitializer, %2 ], [ %12, %5 ]
  %8 = getelementptr inbounds i32, ptr %1, i64 %6
  %9 = load <4 x i32>, ptr %8, align 4, !tbaa !64
  %10 = icmp ne <4 x i32> %9, zeroinitializer
  %11 = zext <4 x i1> %10 to <4 x i32>
  %12 = add <4 x i32> %7, %11
  %13 = add nuw i64 %6, 4
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %15, label %5, !llvm.loop !270

15:                                               ; preds = %5
  %16 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %12)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 81
  %20 = load i16, ptr %19, align 4, !tbaa !267
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i16 [ %20, %18 ], [ %33, %21 ]
  %23 = phi i64 [ 0, %18 ], [ %34, %21 ]
  %24 = getelementptr inbounds i32, ptr %1, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !64
  %26 = icmp eq i32 %25, 0
  %27 = trunc i64 %23 to i32
  %28 = shl nuw nsw i32 1, %27
  %29 = trunc i32 %28 to i16
  %30 = or i16 %22, %29
  %31 = xor i16 %29, -1
  %32 = and i16 %22, %31
  %33 = select i1 %26, i16 %32, i16 %30
  %34 = add nuw nsw i64 %23, 1
  %35 = icmp eq i64 %34, 8
  br i1 %35, label %36, label %21, !llvm.loop !273

36:                                               ; preds = %21
  store i16 %33, ptr %19, align 4, !tbaa !267
  br label %37

37:                                               ; preds = %36, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_collision_mask_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  tail call fastcc void @rna_GameObjectSettings_col_mask_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_GameObjectSettings_col_mask_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !274 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 82
  %6 = load i16, ptr %5, align 2, !tbaa !275
  %7 = zext i16 %6 to i32
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %14, %8 ]
  %10 = trunc i64 %9 to i32
  %11 = shl nuw nsw i32 1, %10
  %12 = and i32 %11, %7
  %13 = getelementptr inbounds i32, ptr %1, i64 %9
  store i32 %12, ptr %13, align 4, !tbaa !64
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %16, label %8, !llvm.loop !276

16:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_collision_mask_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  tail call fastcc void @rna_GameObjectSettings_col_mask_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_GameObjectSettings_col_mask_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !277 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %13, %5 ]
  %7 = phi <4 x i32> [ zeroinitializer, %2 ], [ %12, %5 ]
  %8 = getelementptr inbounds i32, ptr %1, i64 %6
  %9 = load <4 x i32>, ptr %8, align 4, !tbaa !64
  %10 = icmp ne <4 x i32> %9, zeroinitializer
  %11 = zext <4 x i1> %10 to <4 x i32>
  %12 = add <4 x i32> %7, %11
  %13 = add nuw i64 %6, 4
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %15, label %5, !llvm.loop !278

15:                                               ; preds = %5
  %16 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %12)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 82
  %20 = load i16, ptr %19, align 2, !tbaa !275
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i16 [ %20, %18 ], [ %33, %21 ]
  %23 = phi i64 [ 0, %18 ], [ %34, %21 ]
  %24 = getelementptr inbounds i32, ptr %1, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !64
  %26 = icmp eq i32 %25, 0
  %27 = trunc i64 %23 to i32
  %28 = shl nuw nsw i32 1, %27
  %29 = trunc i32 %28 to i16
  %30 = or i16 %22, %29
  %31 = xor i16 %29, -1
  %32 = and i16 %22, %31
  %33 = select i1 %26, i16 %32, i16 %30
  %34 = add nuw nsw i64 %23, 1
  %35 = icmp eq i64 %34, 8
  br i1 %35, label %36, label %21, !llvm.loop !279

36:                                               ; preds = %21
  store i16 %33, ptr %19, align 2, !tbaa !275
  br label %37

37:                                               ; preds = %36, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_lock_location_x_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 100
  %5 = load i32, ptr %4, align 4, !tbaa !280
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_lock_location_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 100
  %7 = load i32, ptr %6, align 4, !tbaa !280
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_lock_location_y_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 100
  %5 = load i32, ptr %4, align 4, !tbaa !280
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_lock_location_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 100
  %7 = load i32, ptr %6, align 4, !tbaa !280
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_lock_location_z_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 100
  %5 = load i32, ptr %4, align 4, !tbaa !280
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_lock_location_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 100
  %7 = load i32, ptr %6, align 4, !tbaa !280
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_lock_rotation_x_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 100
  %5 = load i32, ptr %4, align 4, !tbaa !280
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_lock_rotation_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 100
  %7 = load i32, ptr %6, align 4, !tbaa !280
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_lock_rotation_y_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 100
  %5 = load i32, ptr %4, align 4, !tbaa !280
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_lock_rotation_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 100
  %7 = load i32, ptr %6, align 4, !tbaa !280
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_lock_rotation_z_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 100
  %5 = load i32, ptr %4, align 4, !tbaa !280
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_lock_rotation_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 100
  %7 = load i32, ptr %6, align 4, !tbaa !280
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_activity_culling_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 100
  %5 = load i32, ptr %4, align 4, !tbaa !280
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_activity_culling_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 100
  %7 = load i32, ptr %6, align 4, !tbaa !280
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_material_physics_fh_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_material_physics_fh_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_rotate_from_normal_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_rotate_from_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_form_factor_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 72
  %5 = load float, ptr %4, align 8, !tbaa !281
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_form_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 72
  store float %8, ptr %9, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_anisotropic_friction_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_anisotropic_friction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_friction_coefficients_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 105
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !282

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_friction_coefficients_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 105
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 1.000000e+00
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 1.000000e+00, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !114
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !283

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_collision_bounds_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_collision_bounds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_collision_bounds_type_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 85
  %5 = load i8, ptr %4, align 1, !tbaa !284
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_collision_bounds_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 85
  store i8 %5, ptr %6, align 1, !tbaa !284
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_collision_compound_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_collision_compound_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_collision_margin_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 74
  %5 = load float, ptr %4, align 8, !tbaa !285
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_collision_margin_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 74
  store float %8, ptr %9, align 8, !tbaa !285
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GameObjectSettings_soft_body_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 101
  %6 = load ptr, ptr %5, align 8, !tbaa !255
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_GameSoftBodySettings, ptr noundef %6) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_obstacle_create_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 99
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_obstacle_create_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @GameObjectSettings_obstacle_radius_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 77
  %5 = load float, ptr %4, align 4, !tbaa !286
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_obstacle_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 77
  store float %8, ptr %9, align 4, !tbaa !286
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_states_visible_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  tail call fastcc void @rna_GameObjectSettings_state_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_GameObjectSettings_state_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !287 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 61
  %6 = load i16, ptr %5, align 4, !tbaa !250
  %7 = lshr i16 %6, 12
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %1, i8 0, i64 120, i1 false)
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 123
  br label %11

11:                                               ; preds = %2, %11
  %12 = phi i64 [ 0, %2 ], [ %19, %11 ]
  %13 = load i32, ptr %10, align 8, !tbaa !288
  %14 = trunc i64 %12 to i32
  %15 = shl nuw nsw i32 1, %14
  %16 = and i32 %13, %15
  %17 = or i32 %16, %9
  %18 = getelementptr inbounds i32, ptr %1, i64 %12
  store i32 %17, ptr %18, align 4, !tbaa !64
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, 30
  br i1 %20, label %21, label %11, !llvm.loop !289

21:                                               ; preds = %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_states_visible_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  tail call fastcc void @rna_GameObjectSettings_state_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_GameObjectSettings_state_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !290 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %13, %5 ]
  %7 = phi i32 [ 0, %2 ], [ %12, %5 ]
  %8 = getelementptr inbounds i32, ptr %1, i64 %6
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = add nuw nsw i32 %7, %11
  %13 = add nuw nsw i64 %6, 1
  %14 = icmp eq i64 %13, 30
  br i1 %14, label %15, label %5, !llvm.loop !291

15:                                               ; preds = %5
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 123
  %19 = load i32, ptr %18, align 8, !tbaa !288
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i32 [ %19, %17 ], [ %31, %20 ]
  %22 = phi i64 [ 0, %17 ], [ %32, %20 ]
  %23 = getelementptr inbounds i32, ptr %1, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !64
  %25 = icmp eq i32 %24, 0
  %26 = trunc i64 %22 to i32
  %27 = shl nuw nsw i32 1, %26
  %28 = or i32 %21, %27
  %29 = xor i32 %27, -1
  %30 = and i32 %21, %29
  %31 = select i1 %25, i32 %30, i32 %28
  store i32 %31, ptr %18, align 8, !tbaa !288
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, 30
  br i1 %33, label %34, label %20, !llvm.loop !292

34:                                               ; preds = %20, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_used_states_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  tail call fastcc void @rna_GameObjectSettings_used_state_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_GameObjectSettings_used_state_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !293 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %1, i8 0, i64 120, i1 false)
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 93
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %11

8:                                                ; preds = %23
  %9 = load ptr, ptr %12, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11, !llvm.loop !294

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 17
  br label %14

14:                                               ; preds = %11, %23
  %15 = phi i64 [ 0, %11 ], [ %24, %23 ]
  %16 = load i32, ptr %13, align 4, !tbaa !295
  %17 = trunc i64 %15 to i32
  %18 = shl nuw nsw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds i32, ptr %1, i64 %15
  store i32 1, ptr %22, align 4, !tbaa !64
  br label %23

23:                                               ; preds = %14, %21
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, 30
  br i1 %25, label %8, label %14, !llvm.loop !297

26:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_states_initial_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 124
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 4, !tbaa !298
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !64
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 30
  br i1 %14, label %15, label %6, !llvm.loop !299

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_states_initial_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 124
  %6 = load i32, ptr %5, align 4, !tbaa !298
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %6, %2 ], [ %18, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %19, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 1, %13
  %15 = or i32 %8, %14
  %16 = xor i32 %14, -1
  %17 = and i32 %8, %16
  %18 = select i1 %12, i32 %17, i32 %15
  store i32 %18, ptr %5, align 4, !tbaa !298
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, 30
  br i1 %20, label %21, label %7, !llvm.loop !300

21:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_show_debug_state_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 61
  %5 = load i16, ptr %4, align 4, !tbaa !250
  %6 = lshr i16 %5, 14
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_show_debug_state_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 61
  %7 = load i16, ptr %6, align 4, !tbaa !250
  %8 = and i16 %7, -16385
  %9 = select i1 %5, i16 0, i16 16384
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_use_all_states_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 61
  %5 = load i16, ptr %4, align 4, !tbaa !250
  %6 = lshr i16 %5, 12
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_use_all_states_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 61
  %7 = load i16, ptr %6, align 4, !tbaa !250
  %8 = and i16 %7, -4097
  %9 = select i1 %5, i16 0, i16 4096
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @GameObjectSettings_show_state_panel_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 61
  %5 = load i16, ptr %4, align 4, !tbaa !250
  %6 = lshr i16 %5, 15
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GameObjectSettings_show_state_panel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 61
  %7 = load i16, ptr %6, align 4, !tbaa !250
  %8 = and i16 %7, 32767
  %9 = select i1 %5, i16 0, i16 -32768
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !250
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectBase_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ObjectBase_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @ObjectBase_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ObjectBase_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !301 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectBase_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @ObjectBase_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectBase_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ObjectBase_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectBase_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectBase_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectBase_layers_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !304
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !64
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 20
  br i1 %14, label %15, label %6, !llvm.loop !305

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectBase_layers_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  tail call fastcc void @rna_Base_layer_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Base_layer_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !306 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !304
  %7 = tail call fastcc i32 @rna_Object_layer_validate__internal(ptr noundef %1, i32 noundef %6) #27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 %7, ptr %5, align 8, !tbaa !304
  br label %10

10:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectBase_layers_local_view_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %15, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !304
  %9 = trunc i64 %7 to i32
  %10 = shl nuw i32 16777216, %9
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %13, ptr %14, align 4, !tbaa !64
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %6, !llvm.loop !307

17:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectBase_select_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !308
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectBase_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !308
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !308
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_VertexGroup_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @VertexGroup_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @VertexGroup_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !309 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @VertexGroup_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @VertexGroup_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_VertexGroup_name_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_VertexGroup_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !310 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.bDeformGroup, ptr %5, i64 0, i32 2
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #25
  tail call void @defgroup_unique_name(ptr noundef %5, ptr noundef %3) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexGroup_lock_weight_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.bDeformGroup, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !311
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexGroup_lock_weight_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.bDeformGroup, ptr %4, i64 0, i32 3
  store i8 %5, ptr %6, align 8, !tbaa !311
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @VertexGroup_index_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_VertexGroup_index_get(ptr noundef %0) #27
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_VertexGroup_index_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !313 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %5) #25
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSlot_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_MaterialSlot_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @MaterialSlot_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MaterialSlot_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !314 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSlot_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @MaterialSlot_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSlot_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MaterialSlot_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSlot_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSlot_material_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_MaterialSlot_material_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_MaterialSlot_material_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !315 {
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 3
  %12 = trunc i64 %11 to i16
  %13 = add i16 %12, 1
  %14 = tail call ptr @give_current_material(ptr noundef %3, i16 noundef signext %13) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_Material, ptr noundef %14) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MaterialSlot_material_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_MaterialSlot_material_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_MaterialSlot_material_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !316 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 3
  %12 = trunc i64 %11 to i16
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = add i16 %12, 1
  tail call void @assign_material(ptr noundef %3, ptr noundef %14, i16 noundef signext %15, i32 noundef 0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaterialSlot_link_get(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call fastcc i32 @rna_MaterialSlot_link_get(ptr noundef %0) #27, !range !214
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_MaterialSlot_link_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !317 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !318
  %12 = shl i64 %9, 29
  %13 = ashr i64 %12, 32
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !40
  %16 = icmp ne i8 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaterialSlot_link_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  tail call fastcc void @rna_MaterialSlot_link_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_MaterialSlot_link_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !319 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp ne i32 %1, 0
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !318
  %14 = shl i64 %10, 29
  %15 = ashr i64 %14, 32
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = zext i1 %11 to i8
  store i8 %17, ptr %16, align 1, !tbaa !40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_MaterialSlot_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !320 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 3
  %12 = trunc i64 %11 to i16
  %13 = add i16 %12, 1
  %14 = tail call ptr @give_current_material(ptr noundef %3, i16 noundef signext %13) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %18 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %17) #25
  br label %20

19:                                               ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !40
  br label %20

20:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_MaterialSlot_name_length(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !321 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 3
  %11 = trunc i64 %10 to i16
  %12 = add i16 %11, 1
  %13 = tail call ptr @give_current_material(ptr noundef %2, i16 noundef signext %12) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4, i64 2
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #26
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %1, %15
  %20 = phi i32 [ %18, %15 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DupliObject_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DupliObject_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @DupliObject_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @DupliObject_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !322 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DupliObject_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @DupliObject_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DupliObject_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DupliObject_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DupliObject_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DupliObject_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.DupliObject, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !323
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DupliObject_matrix_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.DupliObject, ptr %4, i64 0, i32 3
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !325

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DupliObject_hide_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 2, !tbaa !326
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DupliObject_index_get(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call i32 @rna_DupliObject_index_get(ptr noundef %0) #27
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DupliObject_persistent_id_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.DupliObject, ptr %4, i64 0, i32 9
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %9, ptr %10, align 4, !tbaa !64
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %13, label %6, !llvm.loop !327

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DupliObject_particle_system_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.DupliObject, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !328
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ParticleSystem, ptr noundef %6) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DupliObject_orco_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.DupliObject, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !114
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !329

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DupliObject_uv_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #14 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.DupliObject, ptr %4, i64 0, i32 5
  %6 = load float, ptr %5, align 4, !tbaa !114
  store float %6, ptr %1, align 4, !tbaa !114
  %7 = getelementptr inbounds %struct.DupliObject, ptr %4, i64 0, i32 5, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !114
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DupliObject_type_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 4, !tbaa !330
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LodLevel_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_LodLevel_rna_properties, ptr %4, align 8, !tbaa !94
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @LodLevel_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @LodLevel_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !331 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LodLevel_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @LodLevel_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LodLevel_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LodLevel_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LodLevel_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LodLevel_distance_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.LodLevel, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !332
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LodLevel_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.LodLevel, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !332
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LodLevel_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.LodLevel, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LodLevel_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #25
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.LodLevel, ptr %4, i64 0, i32 2
  store ptr %6, ptr %10, align 8, !tbaa !334
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LodLevel_use_mesh_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.LodLevel, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !335
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LodLevel_use_mesh_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.LodLevel, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !335
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !335
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LodLevel_use_material_get(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.LodLevel, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !335
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LodLevel_use_material_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.LodLevel, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !335
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !335
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_convert_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @rna_Scene_mat_convert_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Scene_mat_convert_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !336 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  tail call void @copy_m4_m4(ptr noundef %4, ptr noundef %3) #25
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = and i32 %5, -2
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #28
  store ptr null, ptr %8, align 8, !tbaa !93
  %15 = call zeroext i8 @RNA_enum_identifier(ptr noundef nonnull @space_items, i32 noundef %5, ptr noundef nonnull %8) #25
  %16 = load ptr, ptr %8, align 8, !tbaa !93
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.704, ptr noundef %16) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #28
  br label %26

17:                                               ; preds = %11
  %18 = and i32 %6, -2
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #28
  store ptr null, ptr %9, align 8, !tbaa !93
  %21 = call zeroext i8 @RNA_enum_identifier(ptr noundef nonnull @space_items, i32 noundef %6, ptr noundef nonnull %9) #25
  %22 = load ptr, ptr %9, align 8, !tbaa !93
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.705, ptr noundef %22) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #28
  br label %26

23:                                               ; preds = %17, %7
  %24 = trunc i32 %5 to i16
  %25 = trunc i32 %6 to i16
  tail call void @BKE_constraint_mat_convertspace(ptr noundef %0, ptr noundef %2, ptr noundef %4, i16 noundef signext %24, i16 noundef signext %25) #25
  br label %26

26:                                               ; preds = %23, %20, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_convert_space_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = getelementptr inbounds i8, ptr %7, i64 72
  %11 = getelementptr inbounds i8, ptr %7, i64 136
  %12 = load i32, ptr %11, align 4, !tbaa !64
  %13 = getelementptr inbounds i8, ptr %7, i64 140
  %14 = load i32, ptr %13, align 4, !tbaa !64
  tail call fastcc void @rna_Scene_mat_convert_space(ptr noundef %6, ptr noundef %1, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %12, i32 noundef %14) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Object_to_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc ptr @rna_Object_to_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #27
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Object_to_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !339 {
  %8 = load ptr, ptr @G, align 8, !tbaa !70
  %9 = tail call ptr @rna_Main_meshes_new_from_object(ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_to_mesh_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !64
  %13 = getelementptr inbounds i8, ptr %7, i64 16
  %14 = load i32, ptr %13, align 4, !tbaa !64
  %15 = getelementptr inbounds i8, ptr %7, i64 20
  %16 = load i32, ptr %15, align 4, !tbaa !64
  %17 = getelementptr inbounds i8, ptr %7, i64 24
  %18 = tail call fastcc ptr @rna_Object_to_mesh(ptr noundef %6, ptr noundef %1, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #27
  store ptr %18, ptr %17, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dupli_list_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_create_duplilist(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_create_duplilist(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !340 {
  %5 = alloca %struct.EvaluationContext, align 4
  %6 = icmp eq i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store i32 %3, ptr %5, align 4, !tbaa !341
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 55
  %8 = load i16, ptr %7, align 8, !tbaa !190
  %9 = and i16 %8, 2840
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.717) #25
  br label %23

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 127
  %14 = load ptr, ptr %13, align 8, !tbaa !198
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  tail call void @BKE_report(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.718) #25
  %17 = load ptr, ptr %13, align 8, !tbaa !198
  tail call void @free_object_duplilist(ptr noundef %17) #25
  store ptr null, ptr %13, align 8, !tbaa !198
  br label %18

18:                                               ; preds = %16, %12
  br i1 %6, label %19, label %21

19:                                               ; preds = %18
  tail call fastcc void @dupli_render_particle_set(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1) #27
  %20 = call ptr @object_duplilist(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %0) #25
  store ptr %20, ptr %13, align 8, !tbaa !198
  call fastcc void @dupli_render_particle_set(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #27
  br label %23

21:                                               ; preds = %18
  %22 = call ptr @object_duplilist(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %0) #25
  store ptr %22, ptr %13, align 8, !tbaa !198
  br label %23

23:                                               ; preds = %19, %21, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dupli_list_create_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !64
  tail call fastcc void @rna_Object_create_duplilist(ptr noundef %6, ptr noundef %1, ptr noundef %8, i32 noundef %10) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dupli_list_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_free_duplilist(ptr noundef %0) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_free_duplilist(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !343 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 127
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free_object_duplilist(ptr noundef nonnull %3) #25
  store ptr null, ptr %2, align 8, !tbaa !198
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_dupli_list_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  tail call fastcc void @rna_Object_free_duplilist(ptr noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Object_find_armature(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %0) #25
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_find_armature_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %6) #25
  store ptr %8, ptr %7, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_shape_key_add(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_shape_key_add(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_shape_key_add(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !344 {
  %7 = tail call ptr @CTX_data_scene(ptr noundef %2) #25
  %8 = trunc i32 %5 to i8
  %9 = tail call ptr @BKE_object_insert_shape_key(ptr noundef %7, ptr noundef %1, ptr noundef %4, i8 noundef zeroext %8) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  tail call void @RNA_pointer_create(ptr noundef %13, ptr noundef nonnull @RNA_ShapeKey, ptr noundef nonnull %9, ptr noundef %0) #25
  tail call void @WM_event_add_notifier(ptr noundef %2, i32 noundef 85393408, ptr noundef %1) #25
  br label %16

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.719, ptr noundef nonnull %15) #25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !92
  br label %16

16:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_shape_key_add_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = load ptr, ptr %3, align 8, !tbaa !337
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = getelementptr inbounds i8, ptr %8, i64 12
  call fastcc void @rna_Object_shape_key_add(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %7, ptr noundef %0, ptr noundef %1, ptr noundef %9, i32 noundef %11) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_ray_cast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_ray_cast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_ray_cast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !345 {
  %8 = alloca %struct.BVHTreeFromMesh, align 8
  %9 = alloca %struct.BVHTreeRayHit, align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %12 = load ptr, ptr %11, align 8, !tbaa !346
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.720, ptr noundef nonnull %15) #25
  br label %39

16:                                               ; preds = %7
  %17 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %8, ptr noundef nonnull %12, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #25
  %18 = load ptr, ptr %8, align 8, !tbaa !347
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #28
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %3, ptr noundef %2) #27
  %21 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #27
  %22 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %9, i64 0, i32 3
  store float %21, ptr %22, align 4, !tbaa !349
  store i32 -1, ptr %9, align 4, !tbaa !351
  %23 = load ptr, ptr %8, align 8, !tbaa !347
  %24 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %8, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !352
  %26 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %23, ptr noundef %2, ptr noundef nonnull %10, float noundef 0.000000e+00, ptr noundef nonnull %9, ptr noundef %25, ptr noundef nonnull %8) #25
  %27 = icmp eq i32 %26, -1
  %28 = load float, ptr %22, align 4
  %29 = fcmp ugt float %28, %21
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %9, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %32) #27
  %33 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %9, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %33) #27
  %34 = load ptr, ptr %11, align 8, !tbaa !346
  %35 = load i32, ptr %9, align 4, !tbaa !351
  %36 = call fastcc i32 @dm_tessface_to_poly_index(ptr noundef %34, i32 noundef %35) #27
  store i32 %36, ptr %6, align 4, !tbaa !64
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #28
  br label %39

37:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #28
  br label %38

38:                                               ; preds = %37, %16
  call fastcc void @zero_v3(ptr noundef %4) #27
  call fastcc void @zero_v3(ptr noundef %5) #27
  store i32 -1, ptr %6, align 4, !tbaa !64
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %8) #25
  br label %39

39:                                               ; preds = %31, %38, %14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_ray_cast_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = getelementptr inbounds i8, ptr %7, i64 12
  %9 = getelementptr inbounds i8, ptr %7, i64 24
  %10 = getelementptr inbounds i8, ptr %7, i64 36
  %11 = getelementptr inbounds i8, ptr %7, i64 48
  tail call fastcc void @rna_Object_ray_cast(ptr noundef %6, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_closest_point_on_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_closest_point_on_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_closest_point_on_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !353 {
  %8 = alloca %struct.BVHTreeFromMesh, align 8
  %9 = alloca %struct.BVHTreeNearest, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %11 = load ptr, ptr %10, align 8, !tbaa !346
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.721, ptr noundef nonnull %14) #25
  br label %35

15:                                               ; preds = %7
  %16 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %8, ptr noundef nonnull %11, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #25
  %17 = load ptr, ptr %8, align 8, !tbaa !347
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.722, ptr noundef nonnull %20) #25
  br label %35

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #28
  store i32 -1, ptr %9, align 4, !tbaa !354
  %22 = fmul float %3, %3
  %23 = getelementptr inbounds %struct.BVHTreeNearest, ptr %9, i64 0, i32 3
  store float %22, ptr %23, align 4, !tbaa !356
  %24 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %8, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !357
  %26 = call i32 @BLI_bvhtree_find_nearest(ptr noundef nonnull %17, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %25, ptr noundef nonnull %8) #25
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.BVHTreeNearest, ptr %9, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %29) #27
  %30 = getelementptr inbounds %struct.BVHTreeNearest, ptr %9, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef nonnull %30) #27
  %31 = load ptr, ptr %10, align 8, !tbaa !346
  %32 = load i32, ptr %9, align 4, !tbaa !354
  %33 = call fastcc i32 @dm_tessface_to_poly_index(ptr noundef %31, i32 noundef %32) #27
  store i32 %33, ptr %6, align 4, !tbaa !64
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #28
  br label %35

34:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #28
  call fastcc void @zero_v3(ptr noundef %4) #27
  call fastcc void @zero_v3(ptr noundef %5) #27
  store i32 -1, ptr %6, align 4, !tbaa !64
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %8) #25
  br label %35

35:                                               ; preds = %28, %34, %19, %13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_closest_point_on_mesh_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = getelementptr inbounds i8, ptr %7, i64 12
  %9 = load float, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds i8, ptr %7, i64 16
  %11 = getelementptr inbounds i8, ptr %7, i64 28
  %12 = getelementptr inbounds i8, ptr %7, i64 40
  tail call fastcc void @rna_Object_closest_point_on_mesh(ptr noundef %6, ptr noundef %1, ptr noundef %7, float noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @Object_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 {
  %3 = tail call fastcc i32 @rna_Object_is_visible(ptr noundef %0, ptr noundef %1) #27, !range !214
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rna_Object_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !358 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 102
  %4 = load i8, ptr %3, align 8, !tbaa !185
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 52
  %9 = load i32, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !359
  %12 = and i32 %11, %9
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %7 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Object_is_visible_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #7 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc i32 @rna_Object_is_visible(ptr noundef %6, ptr noundef %8) #27, !range !214
  store i32 %10, ptr %9, align 4, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Object_is_modified(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @rna_Object_is_modified(ptr noundef %0, ptr noundef %1, i32 noundef %2) #27
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Object_is_modified(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !378 {
  %4 = tail call i32 @BKE_object_is_modified(ptr noundef %1, ptr noundef %0) #25
  %5 = and i32 %4, %2
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_is_modified_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call fastcc i32 @rna_Object_is_modified(ptr noundef %6, ptr noundef %8, i32 noundef %10) #27
  store i32 %12, ptr %11, align 4, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Object_is_deform_modified(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @rna_Object_is_deform_modified(ptr noundef %0, ptr noundef %1, i32 noundef %2) #27
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Object_is_deform_modified(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !379 {
  %4 = tail call i32 @BKE_object_is_deform_modified(ptr noundef %1, ptr noundef %0) #25
  %5 = and i32 %4, %2
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_is_deform_modified_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call fastcc i32 @rna_Object_is_deform_modified(ptr noundef %6, ptr noundef %8, i32 noundef %10) #27
  store i32 %12, ptr %11, align 4, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Object_update_from_editmode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @rna_Object_update_from_editmode(ptr noundef %0) #27, !range !251
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Object_update_from_editmode(ptr noundef %0) unnamed_addr #0 !PGOFuncName !380 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !69
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @ED_object_editmode_load(ptr noundef nonnull %0) #25
  %8 = zext i8 %7 to i32
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Object_update_from_editmode_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = tail call fastcc i32 @rna_Object_update_from_editmode(ptr noundef %6) #27, !range !251
  store i32 %8, ptr %7, align 4, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ObjectModifiers_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @rna_Object_modifier_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #27
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Object_modifier_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !381 {
  %6 = tail call ptr @CTX_data_main(ptr noundef %1) #25
  %7 = tail call ptr @CTX_data_scene(ptr noundef %1) #25
  %8 = tail call ptr @ED_object_modifier_add(ptr noundef %2, ptr noundef %6, ptr noundef %7, ptr noundef %0, ptr noundef %3, i32 noundef %4) #25
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectModifiers_new_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call fastcc ptr @rna_Object_modifier_new(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %8, i32 noundef %10) #27
  store ptr %12, ptr %11, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectModifiers_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_modifier_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_modifier_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !382 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = tail call ptr @CTX_data_main(ptr noundef %1) #25
  %8 = tail call zeroext i8 @ED_object_modifier_remove(ptr noundef %2, ptr noundef %7, ptr noundef %0, ptr noundef %6) #25
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 85458948, ptr noundef %0) #25
  br label %11

11:                                               ; preds = %4, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectModifiers_remove_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  tail call fastcc void @rna_Object_modifier_remove(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %8) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectModifiers_clear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_modifier_clear(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_modifier_clear(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !383 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %1) #25
  tail call void @ED_object_modifier_clear(ptr noundef %3, ptr noundef %0) #25
  tail call void @WM_main_add_notifier(i32 noundef 85458948, ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectModifiers_clear_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  tail call fastcc void @rna_Object_modifier_clear(ptr noundef %6, ptr noundef %0) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ObjectConstraints_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Object_constraints_new(ptr noundef %0, i32 noundef %1) #27
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Object_constraints_new(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !384 {
  tail call void @WM_main_add_notifier(i32 noundef 85590019, ptr noundef %0) #25
  %3 = trunc i32 %1 to i16
  %4 = tail call ptr @BKE_constraint_add_for_object(ptr noundef %0, ptr noundef null, i16 noundef signext %3) #25
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = tail call fastcc ptr @rna_Object_constraints_new(ptr noundef %6, i32 noundef %8) #27
  store ptr %10, ptr %9, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_constraints_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_constraints_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !385 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %5) #25
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 7
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.723, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  br label %14

12:                                               ; preds = %3
  %13 = tail call zeroext i8 @BKE_constraint_remove(ptr noundef nonnull %6, ptr noundef %5) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @ED_object_constraint_update(ptr noundef %0) #25
  tail call void @ED_object_constraint_set_active(ptr noundef %0, ptr noundef null) #25
  tail call void @WM_main_add_notifier(i32 noundef 85590020, ptr noundef %0) #25
  br label %14

14:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  tail call fastcc void @rna_Object_constraints_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_constraints_clear(ptr noundef %0) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_constraints_clear(ptr noundef %0) unnamed_addr #0 !PGOFuncName !386 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  tail call void @BKE_constraints_free(ptr noundef nonnull %2) #25
  tail call void @ED_object_constraint_update(ptr noundef %0) #25
  tail call void @ED_object_constraint_set_active(ptr noundef %0, ptr noundef null) #25
  tail call void @WM_main_add_notifier(i32 noundef 85590020, ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectConstraints_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  tail call fastcc void @rna_Object_constraints_clear(ptr noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @VertexGroups_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_Object_vgroup_new(ptr noundef %0, ptr noundef %1) #27
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Object_vgroup_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !387 {
  %3 = tail call ptr @ED_vgroup_add_name(ptr noundef %0, ptr noundef %1) #25
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %0) #25
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Object_vgroup_new(ptr noundef %6, ptr noundef %8) #27
  store ptr %10, ptr %9, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_vgroup_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_vgroup_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !388 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %5) #25
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bDeformGroup, ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.724, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  br label %13

12:                                               ; preds = %3
  tail call void @ED_vgroup_delete(ptr noundef %0, ptr noundef %5) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %0) #25
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  tail call fastcc void @rna_Object_vgroup_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @rna_Object_vgroup_clear(ptr noundef %0) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_vgroup_clear(ptr noundef %0) unnamed_addr #0 !PGOFuncName !389 {
  tail call void @ED_vgroup_clear(ptr noundef %0) #25
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroups_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  tail call fastcc void @rna_Object_vgroup_clear(ptr noundef %6) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectBase_layers_from_view(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  tail call fastcc void @rna_ObjectBase_layers_from_view(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ObjectBase_layers_from_view(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !390 {
  %3 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !391
  %5 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 52
  store i32 %4, ptr %7, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 2
  store i32 %4, ptr %8, align 8, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectBase_layers_from_view_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #7 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %3, align 8, !tbaa !337
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  tail call fastcc void @rna_ObjectBase_layers_from_view(ptr noundef %6, ptr noundef %8) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @rna_VertexGroup_vertex_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, i32 noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_VertexGroup_vertex_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, float noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !393 {
  %8 = tail call zeroext i8 @ED_vgroup_object_is_edit_mode(ptr noundef %0) #25
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %20, label %13

12:                                               ; preds = %7
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.725) #25
  br label %23

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %16, %13 ], [ %3, %10 ]
  %15 = phi ptr [ %17, %13 ], [ %4, %10 ]
  %16 = add nsw i32 %14, -1
  %17 = getelementptr inbounds i32, ptr %15, i64 1
  %18 = load i32, ptr %15, align 4, !tbaa !64
  tail call void @ED_vgroup_vert_add(ptr noundef %0, ptr noundef %1, i32 noundef %18, float noundef %5, i32 noundef %6) #25
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %13, !llvm.loop !394

20:                                               ; preds = %13, %10
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %22) #25
  br label %23

23:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_add_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = load ptr, ptr %3, align 8, !tbaa !337
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.ParameterDynAlloc, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds i8, ptr %8, i64 16
  %14 = load float, ptr %13, align 4, !tbaa !114
  %15 = getelementptr inbounds i8, ptr %8, i64 20
  %16 = load i32, ptr %15, align 4, !tbaa !64
  tail call fastcc void @rna_VertexGroup_vertex_add(ptr noundef %5, ptr noundef %7, ptr noundef %1, i32 noundef %10, ptr noundef %12, float noundef %14, i32 noundef %16) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  tail call fastcc void @rna_VertexGroup_vertex_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_VertexGroup_vertex_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !397 {
  %6 = tail call zeroext i8 @ED_vgroup_object_is_edit_mode(ptr noundef %0) #25
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %18, label %11

10:                                               ; preds = %5
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.726) #25
  br label %21

11:                                               ; preds = %8, %11
  %12 = phi i32 [ %14, %11 ], [ %3, %8 ]
  %13 = phi ptr [ %15, %11 ], [ %4, %8 ]
  %14 = add nsw i32 %12, -1
  %15 = getelementptr inbounds i32, ptr %13, i64 1
  %16 = load i32, ptr %13, align 4, !tbaa !64
  tail call void @ED_vgroup_vert_remove(ptr noundef %0, ptr noundef %1, i32 noundef %16) #25
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %11, !llvm.loop !398

18:                                               ; preds = %11, %8
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %20) #25
  br label %21

21:                                               ; preds = %18, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = load ptr, ptr %3, align 8, !tbaa !337
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.ParameterDynAlloc, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  tail call fastcc void @rna_VertexGroup_vertex_remove(ptr noundef %5, ptr noundef %7, ptr noundef %1, i32 noundef %10, ptr noundef %12) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @VertexGroup_weight(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc float @rna_VertexGroup_weight(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #27
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @rna_VertexGroup_weight(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !399 {
  %5 = tail call float @ED_vgroup_vert_weight(ptr noundef %0, ptr noundef %1, i32 noundef %3) #25
  %6 = fcmp olt float %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.727) #25
  br label %8

8:                                                ; preds = %7, %4
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VertexGroup_weight_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = load ptr, ptr %3, align 8, !tbaa !337
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = getelementptr inbounds i8, ptr %8, i64 4
  %11 = tail call fastcc float @rna_VertexGroup_weight(ptr noundef %5, ptr noundef %7, ptr noundef %1, i32 noundef %9) #27
  store float %11, ptr %10, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_Object_data_typef(ptr nocapture noundef readonly %0) #4 !PGOFuncName !400 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = icmp ult i16 %5, 26
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = zext nneg i16 %5 to i64
  %9 = getelementptr inbounds [26 x ptr], ptr @switch.table.rna_Object_data_typef, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ @RNA_ID, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_layer_update(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !401 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = icmp eq ptr %1, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %1, ptr noundef %4) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !304
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 52
  %13 = load i32, ptr %12, align 8, !tbaa !72
  store i32 %13, ptr %10, align 8, !tbaa !304
  store i32 %11, ptr %12, align 8, !tbaa !72
  tail call fastcc void @rna_Object_layer_update__internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %4) #27
  %14 = load i32, ptr %10, align 8, !tbaa !304
  store i32 %14, ptr %12, align 8, !tbaa !72
  tail call void @WM_main_add_notifier(i32 noundef 73728000, ptr noundef nonnull %1) #25
  br label %15

15:                                               ; preds = %3, %6, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_select_update(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !402 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 53
  %8 = load i16, ptr %7, align 4, !tbaa !76
  %9 = and i16 %8, 1
  %10 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %1, ptr noundef %6) #25
  tail call void @ED_base_object_select(ptr noundef %10, i16 noundef signext %9) #25
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_dependency_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !403 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 1) #25
  tail call void @DAG_relations_tag_update(ptr noundef %0) #25
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @WM_main_add_notifier(i32 noundef 85786624, ptr noundef %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_Object_parent_type_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !404 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  store ptr null, ptr %5, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  store i32 0, ptr %6, align 4, !tbaa !64
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @parent_type_items, i32 noundef 0) #25
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !43
  switch i16 %14, label %20 [
    i16 2, label %15
    i16 22, label %16
    i16 25, label %17
  ]

15:                                               ; preds = %12
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @parent_type_items, i32 noundef 1) #25
  br label %18

16:                                               ; preds = %12
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds ([9 x %struct.EnumPropertyItem], ptr @parent_type_items, i64 0, i64 4), i32 noundef 4) #25
  br label %18

17:                                               ; preds = %12
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds ([9 x %struct.EnumPropertyItem], ptr @parent_type_items, i64 0, i64 3), i32 noundef 4) #25
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @parent_type_items, i32 noundef 7) #25
  br label %18

18:                                               ; preds = %15, %17, %16
  %19 = load i16, ptr %13, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i16 [ %19, %18 ], [ %14, %12 ]
  switch i16 %21, label %23 [
    i16 1, label %22
    i16 3, label %22
    i16 2, label %22
    i16 22, label %22
  ]

22:                                               ; preds = %20, %20, %20, %20
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @parent_type_items, i32 noundef 5) #25
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @parent_type_items, i32 noundef 6) #25
  br label %23

23:                                               ; preds = %22, %20, %4
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  store i8 1, ptr %3, align 1, !tbaa !40
  %24 = load ptr, ptr %5, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_internal_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !405 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_MaterialSlot_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !406 {
  tail call void @rna_Object_internal_update(ptr poison, ptr poison, ptr noundef %2) #27
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @WM_main_add_notifier(i32 noundef 85131264, ptr noundef %4) #25
  tail call void @WM_main_add_notifier(i32 noundef 102760448, ptr noundef null) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_Object_active_material_editable(ptr nocapture noundef readonly %0) #4 !PGOFuncName !407 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 32
  %8 = load i32, ptr %7, align 4, !tbaa !106
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr i8, ptr %4, i64 %11
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load i8, ptr %13, align 1, !tbaa !40
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %1, %6, %10
  %21 = phi ptr [ %2, %10 ], [ %2, %6 ], [ %2, %1 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !408
  %24 = icmp eq ptr %23, null
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i32 [ 0, %16 ], [ %25, %20 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_Object_active_material_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #14 !PGOFuncName !409 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  store i32 0, ptr %1, align 4, !tbaa !64
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 31
  %8 = load i32, ptr %7, align 8, !tbaa !91
  %9 = add nsw i32 %8, -1
  %10 = tail call fastcc i32 @max_ii(i32 noundef %9, i32 noundef 0) #27
  store i32 %10, ptr %2, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_Object_location_editable(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !410 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  switch i32 %1, label %20 [
    i32 0, label %5
    i32 1, label %10
    i32 2, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %7 = load i16, ptr %6, align 2, !tbaa !138
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %12 = load i16, ptr %11, align 2, !tbaa !138
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %21

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %17 = load i16, ptr %16, align 2, !tbaa !138
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10, %5, %2, %15
  br label %21

21:                                               ; preds = %15, %10, %5, %20
  %22 = phi i32 [ 1, %20 ], [ 0, %5 ], [ 0, %10 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_Object_rotation_4d_editable(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !411 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %6 = load i16, ptr %5, align 2, !tbaa !138
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = icmp ne i32 %1, 0
  %12 = and i32 %7, 512
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  switch i32 %1, label %25 [
    i32 1, label %16
    i32 2, label %19
    i32 3, label %22
  ]

16:                                               ; preds = %15
  %17 = and i16 %6, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %25, label %26

19:                                               ; preds = %15
  %20 = and i16 %6, 16
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %25, label %26

22:                                               ; preds = %15
  %23 = and i16 %6, 32
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %16, %15, %22, %2
  br label %26

26:                                               ; preds = %22, %19, %16, %10, %25
  %27 = phi i32 [ 1, %25 ], [ 0, %10 ], [ 0, %16 ], [ 0, %19 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_Object_rotation_euler_editable(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !412 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  switch i32 %1, label %20 [
    i32 0, label %5
    i32 1, label %10
    i32 2, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %7 = load i16, ptr %6, align 2, !tbaa !138
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %12 = load i16, ptr %11, align 2, !tbaa !138
  %13 = and i16 %12, 16
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %21

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %17 = load i16, ptr %16, align 2, !tbaa !138
  %18 = and i16 %17, 32
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10, %5, %2, %15
  br label %21

21:                                               ; preds = %15, %10, %5, %20
  %22 = phi i32 [ 1, %20 ], [ 0, %5 ], [ 0, %10 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_Object_scale_editable(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !413 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  switch i32 %1, label %20 [
    i32 0, label %5
    i32 1, label %10
    i32 2, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %7 = load i16, ptr %6, align 2, !tbaa !138
  %8 = and i16 %7, 64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %12 = load i16, ptr %11, align 2, !tbaa !138
  %13 = and i16 %12, 128
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %21

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 56
  %17 = load i16, ptr %16, align 2, !tbaa !138
  %18 = and i16 %17, 256
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10, %5, %2, %15
  br label %21

21:                                               ; preds = %15, %10, %5, %20
  %22 = phi i32 [ 1, %20 ], [ 0, %5 ], [ 0, %10 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_matrix_world_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !414 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  tail call void @BKE_object_apply_mat4(ptr noundef %4, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 1) #25
  tail call void @rna_Object_internal_update(ptr poison, ptr poison, ptr noundef nonnull %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_hide_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !415 {
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 16975) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_active_shape_update(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !416 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !43
  switch i16 %10, label %23 [
    i16 1, label %11
    i16 2, label %21
    i16 3, label %21
    i16 22, label %22
  ]

11:                                               ; preds = %8
  tail call void @EDBM_mesh_load(ptr noundef nonnull %4) #25
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !418
  tail call void @EDBM_mesh_make(ptr noundef %13, ptr noundef nonnull %4) #25
  %14 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !111
  tail call void @EDBM_mesh_normals_update(ptr noundef %17) #25
  %18 = load ptr, ptr %14, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !111
  tail call void @BKE_editmesh_tessface_calc(ptr noundef %20) #25
  br label %23

21:                                               ; preds = %8, %8
  tail call void @load_editNurb(ptr noundef nonnull %4) #25
  tail call void @make_editNurb(ptr noundef nonnull %4) #25
  br label %23

22:                                               ; preds = %8
  tail call void @load_editLatt(ptr noundef nonnull %4) #25
  tail call void @make_editLatt(ptr noundef nonnull %4) #25
  br label %23

23:                                               ; preds = %11, %21, %22, %8, %3
  tail call void @rna_Object_internal_update_data(ptr poison, ptr nonnull poison, ptr noundef nonnull %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_active_shape_key_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !419 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = tail call ptr @BKE_key_from_object(ptr noundef %6) #25
  store i32 0, ptr %1, align 4, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Key, ptr %7, i64 0, i32 6
  %11 = tail call i32 @BLI_countlist(ptr noundef nonnull %10) #25
  %12 = add nsw i32 %11, -1
  %13 = icmp sgt i32 %11, 0
  %14 = select i1 %13, i32 %12, i32 0
  br label %15

15:                                               ; preds = %5, %9
  %16 = phi i32 [ %14, %9 ], [ 0, %5 ]
  store i32 %16, ptr %2, align 4
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #1

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_active_vertex_group_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !420 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  store i32 0, ptr %1, align 4, !tbaa !64
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 25
  %8 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #25
  %9 = add nsw i32 %8, -1
  %10 = tail call fastcc i32 @max_ii(i32 noundef 0, i32 noundef %9) #27
  store i32 %10, ptr %2, align 4, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_particle_update(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !421 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @PE_current_changed(ptr noundef %1, ptr noundef %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Object_active_particle_system_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !422 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  store i32 0, ptr %1, align 4, !tbaa !64
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 109
  %8 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #25
  %9 = add nsw i32 %8, -1
  %10 = tail call fastcc i32 @max_ii(i32 noundef 0, i32 noundef %9) #27
  store i32 %10, ptr %2, align 4, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_Object_collision_bounds_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !423 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  store ptr null, ptr %5, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  store i32 0, ptr %6, align 4, !tbaa !64
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @collision_bounds_items, i32 noundef 4) #25
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @collision_bounds_items, i32 noundef 5) #25
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 113
  %10 = load i8, ptr %9, align 8, !tbaa !254
  %11 = icmp eq i8 %10, 4
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @collision_bounds_items, i32 noundef 3) #25
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @collision_bounds_items, i32 noundef 2) #25
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @collision_bounds_items, i32 noundef 1) #25
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @collision_bounds_items, i32 noundef 0) #25
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @collision_bounds_items, i32 noundef 7) #25
  br label %13

13:                                               ; preds = %12, %4
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  store i8 1, ptr %3, align 1, !tbaa !40
  %14 = load ptr, ptr %5, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Base_layer_update(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !424 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !302
  tail call fastcc void @rna_Object_layer_update__internal(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %7) #27
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !304
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 52
  store i32 %9, ptr %10, align 8, !tbaa !72
  tail call void @WM_main_add_notifier(i32 noundef 73728000, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Base_select_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !425 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !308
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, 1
  tail call void @ED_base_object_select(ptr noundef %5, i16 noundef signext %9) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_MaterialSlot_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !426 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.1015, i32 noundef %11) #25
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @rna_Object_lod_distance_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #16 !PGOFuncName !427 {
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_assign_object(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @test_object_materials(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_curve_type_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @rna_Object_layer_validate__internal(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 !PGOFuncName !428 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %11, %3 ]
  %5 = phi <4 x i32> [ zeroinitializer, %2 ], [ %10, %3 ]
  %6 = getelementptr inbounds i32, ptr %0, i64 %4
  %7 = load <4 x i32>, ptr %6, align 4, !tbaa !64
  %8 = icmp ne <4 x i32> %7, zeroinitializer
  %9 = zext <4 x i1> %8 to <4 x i32>
  %10 = add <4 x i32> %5, %9
  %11 = add nuw i64 %4, 4
  %12 = icmp eq i64 %11, 20
  br i1 %12, label %13, label %3, !llvm.loop !429

13:                                               ; preds = %3
  %14 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ %28, %16 ], [ 0, %13 ]
  %18 = phi i32 [ %27, %16 ], [ %1, %13 ]
  %19 = getelementptr inbounds i32, ptr %0, i64 %17
  %20 = load i32, ptr %19, align 4, !tbaa !64
  %21 = icmp eq i32 %20, 0
  %22 = trunc i64 %17 to i32
  %23 = shl nuw nsw i32 1, %22
  %24 = or i32 %23, %18
  %25 = xor i32 %23, -1
  %26 = and i32 %18, %25
  %27 = select i1 %21, i32 %26, i32 %24
  %28 = add nuw nsw i64 %17, 1
  %29 = icmp eq i64 %28, 20
  br i1 %29, label %30, label %16, !llvm.loop !430

30:                                               ; preds = %16, %13
  %31 = phi i32 [ 0, %13 ], [ %27, %16 ]
  ret i32 %31
}

; Function Attrs: optsize
declare ptr @BKE_object_boundbox_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_object_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assign_material(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #18 !PGOFuncName !431 {
  %3 = load float, ptr %1, align 4, !tbaa !114
  store float %3, ptr %0, align 4, !tbaa !114
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !114
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !114
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !114
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !114
  ret void
}

; Function Attrs: optsize
declare void @BKE_rotMode_change_values(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_dimensions_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_dimensions_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_matrix_local_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_empty_draw_type_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @object_add_collision_fields(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_constraints_active_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_constraints_active_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @psys_get_current_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_set_current_num(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bsbNew() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_mesh_ensure_navmesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @defgroup_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_identifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_constraint_mat_convertspace(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @rna_Main_meshes_new_from_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dupli_render_particle_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !432 {
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #28
  call void @unit_m4(ptr noundef nonnull %5) #25
  %6 = icmp sgt i32 %2, 7
  br i1 %6, label %66, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %9 = load i16, ptr %8, align 8, !tbaa !190
  %10 = and i16 %9, 2048
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %3, 0
  br label %18

18:                                               ; preds = %16, %29
  %19 = phi ptr [ %14, %16 ], [ %30, %29 ]
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !433
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %21, i64 0, i32 21
  %23 = load i16, ptr %22, align 8, !tbaa !435
  %24 = add i16 %23, -7
  %25 = icmp ult i16 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  br i1 %17, label %28, label %27

27:                                               ; preds = %26
  call void @psys_render_set(ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #25
  br label %29

28:                                               ; preds = %26
  call void @psys_render_restore(ptr noundef %1, ptr noundef nonnull %19) #25
  br label %29

29:                                               ; preds = %18, %28, %27
  %30 = load ptr, ptr %19, align 8, !tbaa !93
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18, !llvm.loop !437

32:                                               ; preds = %29, %12
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %32
  %35 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !438
  %36 = or i64 %35, 96
  %37 = call ptr @mesh_create_derived_render(ptr noundef %0, ptr noundef %1, i64 noundef %36) #25
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %37, i64 0, i32 95
  %39 = load ptr, ptr %38, align 8, !tbaa !439
  call void %39(ptr noundef %37) #25
  %40 = load ptr, ptr %13, align 8, !tbaa !93
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %34, %42
  %43 = phi ptr [ %48, %42 ], [ %40, %34 ]
  %44 = call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %43) #25
  %45 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %44, i64 0, i32 6
  %46 = load i16, ptr %45, align 4, !tbaa !441
  %47 = and i16 %46, -3
  store i16 %47, ptr %45, align 4, !tbaa !441
  %48 = load ptr, ptr %43, align 8, !tbaa !93
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %42, !llvm.loop !444

50:                                               ; preds = %42, %34, %32, %7
  %51 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 112
  %52 = load ptr, ptr %51, align 8, !tbaa !192
  %53 = icmp eq ptr %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Group, ptr %52, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !93
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = add nuw nsw i32 %2, 1
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi ptr [ %56, %58 ], [ %64, %60 ]
  %62 = getelementptr inbounds %struct.GroupObject, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !445
  call fastcc void @dupli_render_particle_set(ptr noundef %0, ptr noundef %63, i32 noundef %59, i32 noundef %3) #27
  %64 = load ptr, ptr %61, align 8, !tbaa !93
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %60, !llvm.loop !447

66:                                               ; preds = %60, %54, %50, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #28
  ret void
}

; Function Attrs: optsize
declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_render_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_render_restore(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_insert_shape_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #18 !PGOFuncName !448 {
  %4 = load float, ptr %1, align 4, !tbaa !114
  %5 = load float, ptr %2, align 4, !tbaa !114
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !114
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !114
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !114
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !114
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !114
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !114
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #20 !PGOFuncName !449 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #27
  ret float %2
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @dm_tessface_to_poly_index(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !450 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %6 = load ptr, ptr %5, align 8, !tbaa !451
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef 7) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %11 = load ptr, ptr %10, align 8, !tbaa !452
  %12 = tail call ptr %11(ptr noundef nonnull %0, i32 noundef 7) #25
  %13 = tail call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %7, ptr noundef %12, i32 noundef %1) #27
  br label %14

14:                                               ; preds = %4, %2, %9
  %15 = phi i32 [ %13, %9 ], [ -1, %2 ], [ -1, %4 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #21 !PGOFuncName !453 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !114
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #20 !PGOFuncName !454 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #27
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #25
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #27
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #27
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !455 {
  %3 = load float, ptr %0, align 4, !tbaa !114
  %4 = load float, ptr %1, align 4, !tbaa !114
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !114
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !114
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !114
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !114
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #18 !PGOFuncName !456 {
  %4 = load float, ptr %1, align 4, !tbaa !114
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !114
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !114
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !114
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !114
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #23

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #15 !PGOFuncName !457 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !64
  br label %14

14:                                               ; preds = %8, %3, %10
  %15 = phi i32 [ %13, %10 ], [ -1, %3 ], [ %6, %8 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_object_is_modified(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_object_is_deform_modified(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_object_editmode_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_object_modifier_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_object_modifier_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_object_modifier_clear(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_constraint_add_for_object(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_constraint_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_object_constraint_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_object_constraint_set_active(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_constraints_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_vgroup_add_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_vgroup_delete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_vgroup_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_vgroup_object_is_edit_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_vgroup_vert_add(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_vgroup_vert_remove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @ED_vgroup_vert_weight(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Object_layer_update__internal(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !458 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 52
  %8 = load i32, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !359
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !304
  %15 = and i32 %14, %10
  %16 = icmp eq i32 %15, 0
  br i1 %12, label %18, label %17

17:                                               ; preds = %6
  br i1 %16, label %19, label %20

18:                                               ; preds = %6
  br i1 %16, label %20, label %19

19:                                               ; preds = %17, %18
  tail call void @DAG_relations_tag_update(ptr noundef %0) #25
  br label %20

20:                                               ; preds = %17, %18, %19, %4
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 16975) #25
  ret void
}

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #16 !PGOFuncName !459 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @load_editNurb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_editNurb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @load_editLatt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_editLatt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PE_current_changed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind optsize }
attributes #26 = { nounwind optsize willreturn memory(read) }
attributes #27 = { optsize }
attributes #28 = { nounwind }

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
!34 = !{!35, !37, i64 0}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!38, !38, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !38, i64 0}
!43 = !{!44, !42, i64 136}
!44 = !{!"Object", !45, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !42, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !47, i64 312, !37, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !46, i64 432, !46, i64 436, !37, i64 440, !37, i64 448, !46, i64 456, !46, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !49, i64 616, !49, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !46, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !38, i64 966, !38, i64 967, !46, i64 968, !46, i64 972, !46, i64 976, !46, i64 980, !46, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !38, i64 1042, !38, i64 1043, !42, i64 1044, !38, i64 1046, !38, i64 1047, !49, i64 1048, !49, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !49, i64 1120, !42, i64 1124, !42, i64 1126, !38, i64 1128, !46, i64 1144, !46, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !42, i64 1162, !38, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !42, i64 1266, !49, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !50, i64 1304, !50, i64 1312, !46, i64 1320, !46, i64 1324, !48, i64 1328, !48, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !48, i64 1400, !37, i64 1416}
!45 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !42, i64 98, !46, i64 100, !46, i64 104, !46, i64 108, !37, i64 112}
!46 = !{!"int", !38, i64 0}
!47 = !{!"bAnimVizSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!48 = !{!"ListBase", !37, i64 0, !37, i64 8}
!49 = !{!"float", !38, i64 0}
!50 = !{!"long", !38, i64 0}
!51 = !{!44, !37, i64 296}
!52 = !{!53, !46, i64 1052}
!53 = !{!"Mesh", !45, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !54, i64 280, !54, i64 480, !54, i64 680, !54, i64 880, !54, i64 1080, !46, i64 1280, !46, i64 1284, !46, i64 1288, !46, i64 1292, !46, i64 1296, !46, i64 1300, !46, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !46, i64 1344, !42, i64 1348, !42, i64 1350, !49, i64 1352, !46, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !42, i64 1366, !37, i64 1368}
!54 = !{!"CustomData", !37, i64 0, !38, i64 8, !46, i64 172, !46, i64 176, !46, i64 180, !37, i64 184, !37, i64 192}
!55 = !{!53, !37, i64 880}
!56 = !{!57, !46, i64 0}
!57 = !{!"CustomDataLayer", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !38, i64 32, !37, i64 96}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!53, !46, i64 852}
!61 = !{!53, !37, i64 680}
!62 = distinct !{!62, !59}
!63 = !{!35, !37, i64 16}
!64 = !{!46, !46, i64 0}
!65 = !{!44, !37, i64 128}
!66 = !{!67, !37, i64 72}
!67 = !{!"SculptSession", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !46, i64 32, !46, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !46, i64 80, !46, i64 84, !38, i64 88, !37, i64 96, !37, i64 104, !38, i64 112, !38, i64 113, !37, i64 120, !37, i64 128, !37, i64 136, !38, i64 144, !46, i64 148, !37, i64 152, !46, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 204, !38, i64 216, !46, i64 228}
!68 = !{!"rna_object_gen.c:rna_Object_data_set"}
!69 = !{!44, !46, i64 432}
!70 = !{!71, !37, i64 0}
!71 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !48, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !38, i64 2090, !42, i64 2092, !46, i64 2096, !46, i64 2100, !38, i64 2104, !46, i64 2108, !46, i64 2112, !38, i64 2116}
!72 = !{!44, !46, i64 944}
!73 = distinct !{!73, !59}
!74 = !{!"rna_object_gen.c:rna_Object_layer_set"}
!75 = distinct !{!75, !59}
!76 = !{!44, !42, i64 948}
!77 = !{!"rna_object_gen.c:rna_Object_boundbox_get"}
!78 = !{!44, !37, i64 216}
!79 = !{!"rna_object_gen.c:rna_Object_parent_set"}
!80 = !{!44, !42, i64 138}
!81 = !{!"rna_object_gen.c:rna_Object_parent_type_set"}
!82 = !{!44, !46, i64 140}
!83 = distinct !{!83, !59}
!84 = distinct !{!84, !59}
!85 = !{!"rna_object_gen.c:rna_Object_parent_bone_set"}
!86 = !{!44, !42, i64 956}
!87 = !{!44, !42, i64 958}
!88 = !{!44, !37, i64 232}
!89 = !{!44, !37, i64 240}
!90 = !{!44, !37, i64 440}
!91 = !{!44, !46, i64 456}
!92 = !{i64 0, i64 8, !93, i64 8, i64 8, !93, i64 16, i64 8, !93}
!93 = !{!37, !37, i64 0}
!94 = !{!95, !37, i64 48}
!95 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !46, i64 96, !46, i64 100, !35, i64 104, !46, i64 128}
!96 = !{!95, !46, i64 128}
!97 = !{!"rna_object_gen.c:Object_material_slots_get"}
!98 = !{!99, !37, i64 32}
!99 = !{!"ArrayIterator", !37, i64 0, !37, i64 8, !37, i64 16, !46, i64 24, !46, i64 28, !37, i64 32}
!100 = distinct !{!100, !59}
!101 = !{!99, !46, i64 24}
!102 = !{!99, !37, i64 0}
!103 = !{!95, !37, i64 120}
!104 = distinct !{!104, !59}
!105 = !{!"rna_object_gen.c:rna_Object_active_material_get"}
!106 = !{!44, !46, i64 460}
!107 = !{!"rna_object_gen.c:rna_Object_active_material_set"}
!108 = !{i32 0, i32 -2147483648}
!109 = !{!"rna_object_gen.c:rna_Object_active_material_index_get"}
!110 = !{!"rna_object_gen.c:rna_Object_active_material_index_set"}
!111 = !{!53, !37, i64 272}
!112 = !{!113, !42, i64 94}
!113 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !46, i64 16, !37, i64 24, !46, i64 32, !37, i64 40, !37, i64 48, !50, i64 56, !37, i64 64, !46, i64 72, !37, i64 80, !46, i64 88, !42, i64 92, !42, i64 94, !37, i64 96, !46, i64 104}
!114 = !{!49, !49, i64 0}
!115 = distinct !{!115, !59}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !59}
!118 = distinct !{!118, !59}
!119 = !{!"rna_object_gen.c:rna_Object_rotation_axis_angle_get"}
!120 = !{!44, !49, i64 616}
!121 = !{!"rna_object_gen.c:rna_Object_rotation_axis_angle_set"}
!122 = distinct !{!122, !59}
!123 = distinct !{!123, !59}
!124 = !{!44, !42, i64 1040}
!125 = !{!"rna_object_gen.c:rna_Object_rotation_mode_set"}
!126 = distinct !{!126, !59}
!127 = distinct !{!127, !59}
!128 = !{!"rna_object_gen.c:rna_Object_dimensions_get"}
!129 = !{!"rna_object_gen.c:rna_Object_dimensions_set"}
!130 = distinct !{!130, !59}
!131 = distinct !{!131, !59}
!132 = distinct !{!132, !59}
!133 = distinct !{!133, !59}
!134 = distinct !{!134, !59}
!135 = distinct !{!135, !59}
!136 = distinct !{!136, !59}
!137 = distinct !{!137, !59}
!138 = !{!44, !42, i64 954}
!139 = distinct !{!139, !59}
!140 = distinct !{!140, !59}
!141 = distinct !{!141, !59}
!142 = distinct !{!142, !59}
!143 = distinct !{!143, !59}
!144 = !{!"rna_object_gen.c:rna_Object_matrix_local_get"}
!145 = !{!"rna_object_gen.c:rna_Object_matrix_local_set"}
!146 = !{!"rna_object_gen.c:rna_Object_matrix_basis_get"}
!147 = !{!"rna_object_gen.c:rna_Object_matrix_basis_set"}
!148 = distinct !{!148, !59}
!149 = distinct !{!149, !59}
!150 = !{!"rna_object_gen.c:Object_modifiers_get"}
!151 = !{!152, !37, i64 16}
!152 = !{!"ListBaseIterator", !37, i64 0, !46, i64 8, !37, i64 16}
!153 = distinct !{!153, !59}
!154 = !{!155, !37, i64 0}
!155 = !{!"Link", !37, i64 0, !37, i64 8}
!156 = !{!152, !37, i64 0}
!157 = distinct !{!157, !59}
!158 = distinct !{!158, !59}
!159 = !{!"rna_object_gen.c:Object_constraints_get"}
!160 = distinct !{!160, !59}
!161 = distinct !{!161, !59}
!162 = distinct !{!162, !59}
!163 = !{!"rna_object_gen.c:rna_Object_game_settings_get"}
!164 = !{!"rna_object_gen.c:Object_vertex_groups_get"}
!165 = distinct !{!165, !59}
!166 = distinct !{!166, !59}
!167 = distinct !{!167, !59}
!168 = !{!44, !38, i64 1047}
!169 = !{!"rna_object_gen.c:rna_Object_empty_draw_type_set"}
!170 = !{!44, !49, i64 1048}
!171 = !{!44, !37, i64 1392}
!172 = !{!44, !42, i64 1124}
!173 = distinct !{!173, !59}
!174 = distinct !{!174, !59}
!175 = !{!"rna_object_gen.c:rna_Object_field_get"}
!176 = !{!44, !37, i64 1240}
!177 = !{!"rna_object_gen.c:rna_Object_collision_get"}
!178 = !{!44, !37, i64 1248}
!179 = !{!"rna_object_gen.c:Object_particle_systems_get"}
!180 = distinct !{!180, !59}
!181 = distinct !{!181, !59}
!182 = distinct !{!182, !59}
!183 = !{!44, !37, i64 1368}
!184 = !{!44, !37, i64 1376}
!185 = !{!44, !38, i64 1160}
!186 = !{!44, !37, i64 120}
!187 = !{!44, !37, i64 360}
!188 = !{!44, !49, i64 1120}
!189 = !{!44, !38, i64 967}
!190 = !{!44, !42, i64 952}
!191 = !{!44, !49, i64 1052}
!192 = !{!44, !37, i64 1256}
!193 = !{!"rna_object_gen.c:rna_Object_dup_group_set"}
!194 = !{!44, !46, i64 976}
!195 = !{!44, !46, i64 980}
!196 = !{!44, !46, i64 968}
!197 = !{!44, !46, i64 972}
!198 = !{!44, !37, i64 1360}
!199 = !{!"rna_object_gen.c:Object_dupli_list_get"}
!200 = distinct !{!200, !59}
!201 = distinct !{!201, !59}
!202 = !{!44, !38, i64 1046}
!203 = !{!44, !42, i64 1044}
!204 = !{!44, !38, i64 1042}
!205 = !{!44, !37, i64 304}
!206 = !{!44, !37, i64 280}
!207 = !{!44, !37, i64 288}
!208 = !{!44, !38, i64 1265}
!209 = !{!"rna_object_gen.c:rna_Object_active_shape_key_get"}
!210 = !{!44, !42, i64 1266}
!211 = !{i32 0, i32 32767}
!212 = !{!"rna_object_gen.c:rna_Object_active_shape_key_index_get"}
!213 = !{!"rna_object_gen.c:rna_Object_active_shape_key_index_set"}
!214 = !{i32 0, i32 2}
!215 = !{!"rna_object_gen.c:Object_lod_levels_get"}
!216 = distinct !{!216, !59}
!217 = distinct !{!217, !59}
!218 = !{!"rna_object_gen.c:ObjectModifiers_rna_properties_get"}
!219 = !{!"rna_object_gen.c:ObjectConstraints_rna_properties_get"}
!220 = !{!"rna_object_gen.c:rna_Object_active_constraint_get"}
!221 = !{!"rna_object_gen.c:rna_Object_active_constraint_set"}
!222 = !{!"rna_object_gen.c:VertexGroups_rna_properties_get"}
!223 = !{!"rna_object_gen.c:rna_Object_active_vertex_group_get"}
!224 = !{!44, !42, i64 1126}
!225 = !{i32 -1, i32 65535}
!226 = !{!"rna_object_gen.c:rna_Object_active_vertex_group_index_get"}
!227 = !{!"rna_object_gen.c:rna_Object_active_vertex_group_index_set"}
!228 = !{!"rna_object_gen.c:ParticleSystems_rna_properties_get"}
!229 = !{!"rna_object_gen.c:rna_Object_active_particle_system_get"}
!230 = !{i32 -32768, i32 32768}
!231 = !{!"rna_object_gen.c:rna_Object_active_particle_system_index_get"}
!232 = !{!"rna_object_gen.c:rna_Object_active_particle_system_index_set"}
!233 = !{!"rna_object_gen.c:GameObjectSettings_rna_properties_get"}
!234 = !{!"rna_object_gen.c:GameObjectSettings_sensors_get"}
!235 = distinct !{!235, !59}
!236 = distinct !{!236, !59}
!237 = distinct !{!237, !59}
!238 = !{!"rna_object_gen.c:GameObjectSettings_controllers_get"}
!239 = distinct !{!239, !59}
!240 = distinct !{!240, !59}
!241 = distinct !{!241, !59}
!242 = !{!"rna_object_gen.c:GameObjectSettings_actuators_get"}
!243 = distinct !{!243, !59}
!244 = distinct !{!244, !59}
!245 = distinct !{!245, !59}
!246 = !{!"rna_object_gen.c:GameObjectSettings_properties_get"}
!247 = distinct !{!247, !59}
!248 = distinct !{!248, !59}
!249 = distinct !{!249, !59}
!250 = !{!44, !42, i64 964}
!251 = !{i32 0, i32 256}
!252 = !{!"rna_object_gen.c:rna_GameObjectSettings_physics_type_get"}
!253 = !{!44, !46, i64 1144}
!254 = !{!44, !38, i64 1264}
!255 = !{!44, !37, i64 1152}
!256 = !{!"rna_object_gen.c:rna_GameObjectSettings_physics_type_set"}
!257 = !{!44, !49, i64 988}
!258 = !{!44, !49, i64 996}
!259 = !{!44, !49, i64 992}
!260 = !{!44, !49, i64 1004}
!261 = !{!44, !49, i64 1016}
!262 = !{!44, !49, i64 1012}
!263 = !{!44, !49, i64 1024}
!264 = !{!44, !49, i64 1028}
!265 = !{!44, !49, i64 1032}
!266 = !{!"rna_object_gen.c:rna_GameObjectSettings_col_group_get"}
!267 = !{!44, !42, i64 1036}
!268 = distinct !{!268, !59}
!269 = !{!"rna_object_gen.c:rna_GameObjectSettings_col_group_set"}
!270 = distinct !{!270, !59, !271, !272}
!271 = !{!"llvm.loop.isvectorized", i32 1}
!272 = !{!"llvm.loop.unroll.runtime.disable"}
!273 = distinct !{!273, !59}
!274 = !{!"rna_object_gen.c:rna_GameObjectSettings_col_mask_get"}
!275 = !{!44, !42, i64 1038}
!276 = distinct !{!276, !59}
!277 = !{!"rna_object_gen.c:rna_GameObjectSettings_col_mask_set"}
!278 = distinct !{!278, !59, !271, !272}
!279 = distinct !{!279, !59}
!280 = !{!44, !46, i64 1148}
!281 = !{!44, !49, i64 1000}
!282 = distinct !{!282, !59}
!283 = distinct !{!283, !59}
!284 = !{!44, !38, i64 1043}
!285 = !{!44, !49, i64 1008}
!286 = !{!44, !49, i64 1020}
!287 = !{!"rna_object_gen.c:rna_GameObjectSettings_state_get"}
!288 = !{!44, !46, i64 1320}
!289 = distinct !{!289, !59}
!290 = !{!"rna_object_gen.c:rna_GameObjectSettings_state_set"}
!291 = distinct !{!291, !59}
!292 = distinct !{!292, !59}
!293 = !{!"rna_object_gen.c:rna_GameObjectSettings_used_state_get"}
!294 = distinct !{!294, !59}
!295 = !{!296, !46, i64 132}
!296 = !{!"bController", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !42, i64 36, !42, i64 38, !38, i64 40, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !42, i64 130, !46, i64 132}
!297 = distinct !{!297, !59}
!298 = !{!44, !46, i64 1324}
!299 = distinct !{!299, !59}
!300 = distinct !{!300, !59}
!301 = !{!"rna_object_gen.c:ObjectBase_rna_properties_get"}
!302 = !{!303, !37, i64 32}
!303 = !{!"Base", !37, i64 0, !37, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !42, i64 28, !42, i64 30, !37, i64 32}
!304 = !{!303, !46, i64 16}
!305 = distinct !{!305, !59}
!306 = !{!"rna_object_gen.c:rna_Base_layer_set"}
!307 = distinct !{!307, !59}
!308 = !{!303, !46, i64 24}
!309 = !{!"rna_object_gen.c:VertexGroup_rna_properties_get"}
!310 = !{!"rna_object_gen.c:rna_VertexGroup_name_set"}
!311 = !{!312, !38, i64 80}
!312 = !{!"bDeformGroup", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 80, !38, i64 81}
!313 = !{!"rna_object_gen.c:rna_VertexGroup_index_get"}
!314 = !{!"rna_object_gen.c:MaterialSlot_rna_properties_get"}
!315 = !{!"rna_object_gen.c:rna_MaterialSlot_material_get"}
!316 = !{!"rna_object_gen.c:rna_MaterialSlot_material_set"}
!317 = !{!"rna_object_gen.c:rna_MaterialSlot_link_get"}
!318 = !{!44, !37, i64 448}
!319 = !{!"rna_object_gen.c:rna_MaterialSlot_link_set"}
!320 = !{!"rna_object_gen.c:rna_MaterialSlot_name_get"}
!321 = !{!"rna_object_gen.c:rna_MaterialSlot_name_length"}
!322 = !{!"rna_object_gen.c:DupliObject_rna_properties_get"}
!323 = !{!324, !37, i64 16}
!324 = !{!"DupliObject", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 100, !42, i64 108, !38, i64 110, !38, i64 111, !38, i64 112, !37, i64 144}
!325 = distinct !{!325, !59}
!326 = !{!324, !38, i64 110}
!327 = distinct !{!327, !59}
!328 = !{!324, !37, i64 144}
!329 = distinct !{!329, !59}
!330 = !{!324, !42, i64 108}
!331 = !{!"rna_object_gen.c:LodLevel_rna_properties_get"}
!332 = !{!333, !49, i64 28}
!333 = !{!"LodLevel", !37, i64 0, !37, i64 8, !37, i64 16, !46, i64 24, !49, i64 28}
!334 = !{!333, !37, i64 16}
!335 = !{!333, !46, i64 24}
!336 = !{!"rna_object_gen.c:rna_Scene_mat_convert_space"}
!337 = !{!338, !37, i64 0}
!338 = !{!"ParameterList", !37, i64 0, !37, i64 8, !46, i64 16, !46, i64 20, !46, i64 24}
!339 = !{!"rna_object_gen.c:rna_Object_to_mesh"}
!340 = !{!"rna_object_gen.c:rna_Object_create_duplilist"}
!341 = !{!342, !46, i64 0}
!342 = !{!"EvaluationContext", !46, i64 0}
!343 = !{!"rna_object_gen.c:rna_Object_free_duplilist"}
!344 = !{!"rna_object_gen.c:rna_Object_shape_key_add"}
!345 = !{!"rna_object_gen.c:rna_Object_ray_cast"}
!346 = !{!44, !37, i64 1296}
!347 = !{!348, !37, i64 0}
!348 = !{!"BVHTreeFromMesh", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !38, i64 49, !38, i64 50, !49, i64 52, !37, i64 56, !38, i64 64}
!349 = !{!350, !49, i64 28}
!350 = !{!"BVHTreeRayHit", !46, i64 0, !38, i64 4, !38, i64 16, !49, i64 28, !46, i64 32}
!351 = !{!350, !46, i64 0}
!352 = !{!348, !37, i64 16}
!353 = !{!"rna_object_gen.c:rna_Object_closest_point_on_mesh"}
!354 = !{!355, !46, i64 0}
!355 = !{!"BVHTreeNearest", !46, i64 0, !38, i64 4, !38, i64 16, !49, i64 28, !46, i64 32}
!356 = !{!355, !49, i64 28}
!357 = !{!348, !37, i64 8}
!358 = !{!"rna_object_gen.c:rna_Object_is_visible"}
!359 = !{!360, !46, i64 232}
!360 = !{!"Scene", !45, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !48, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !46, i64 232, !46, i64 236, !46, i64 240, !42, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !361, i64 280, !370, i64 4264, !48, i64 4296, !48, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !42, i64 4376, !42, i64 4378, !46, i64 4380, !48, i64 4384, !371, i64 4400, !372, i64 4416, !375, i64 4600, !37, i64 4608, !376, i64 4616, !37, i64 4640, !50, i64 4648, !50, i64 4656, !363, i64 4664, !364, i64 4824, !377, i64 4888, !37, i64 4952}
!361 = !{!"RenderData", !362, i64 0, !37, i64 248, !37, i64 256, !365, i64 264, !366, i64 328, !46, i64 400, !46, i64 404, !46, i64 408, !49, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !46, i64 428, !42, i64 432, !42, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !46, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !46, i64 484, !46, i64 488, !42, i64 492, !42, i64 494, !46, i64 496, !46, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !38, i64 514, !38, i64 515, !46, i64 516, !46, i64 520, !46, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !367, i64 544, !367, i64 560, !368, i64 576, !48, i64 592, !42, i64 608, !42, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !46, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !49, i64 660, !49, i64 664, !42, i64 668, !42, i64 670, !49, i64 672, !49, i64 676, !38, i64 680, !46, i64 1704, !42, i64 1708, !42, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !46, i64 2520, !42, i64 2524, !42, i64 2526, !49, i64 2528, !49, i64 2532, !42, i64 2536, !42, i64 2538, !49, i64 2540, !42, i64 2544, !42, i64 2546, !46, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !49, i64 2560, !49, i64 2564, !37, i64 2568, !46, i64 2576, !49, i64 2580, !38, i64 2584, !369, i64 2616, !46, i64 3976, !46, i64 3980}
!362 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !42, i64 8, !42, i64 10, !49, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !363, i64 24, !364, i64 184}
!363 = !{!"ColorManagedViewSettings", !46, i64 0, !46, i64 4, !38, i64 8, !38, i64 72, !49, i64 136, !49, i64 140, !37, i64 144, !37, i64 152}
!364 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!365 = !{!"QuicktimeCodecSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !42, i64 48, !42, i64 50, !46, i64 52, !46, i64 56, !46, i64 60}
!366 = !{!"FFMpegCodecData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !49, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !46, i64 48, !46, i64 52, !46, i64 56, !46, i64 60, !37, i64 64}
!367 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!368 = !{!"rcti", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!369 = !{!"BakeData", !362, i64 0, !38, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !49, i64 1280, !49, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!370 = !{!"AudioData", !46, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !46, i64 16, !42, i64 20, !42, i64 22, !49, i64 24, !49, i64 28}
!371 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!372 = !{!"GameData", !371, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !38, i64 34, !373, i64 40, !42, i64 64, !42, i64 66, !49, i64 68, !374, i64 72, !49, i64 128, !49, i64 132, !46, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!373 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !49, i64 8, !49, i64 12, !37, i64 16}
!374 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !46, i64 40, !49, i64 44, !49, i64 48, !42, i64 52, !42, i64 54}
!375 = !{!"UnitSettings", !49, i64 0, !38, i64 4, !38, i64 5, !42, i64 6}
!376 = !{!"PhysicsSettings", !38, i64 0, !46, i64 12, !46, i64 16, !46, i64 20}
!377 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!378 = !{!"rna_object_gen.c:rna_Object_is_modified"}
!379 = !{!"rna_object_gen.c:rna_Object_is_deform_modified"}
!380 = !{!"rna_object_gen.c:rna_Object_update_from_editmode"}
!381 = !{!"rna_object_gen.c:rna_Object_modifier_new"}
!382 = !{!"rna_object_gen.c:rna_Object_modifier_remove"}
!383 = !{!"rna_object_gen.c:rna_Object_modifier_clear"}
!384 = !{!"rna_object_gen.c:rna_Object_constraints_new"}
!385 = !{!"rna_object_gen.c:rna_Object_constraints_remove"}
!386 = !{!"rna_object_gen.c:rna_Object_constraints_clear"}
!387 = !{!"rna_object_gen.c:rna_Object_vgroup_new"}
!388 = !{!"rna_object_gen.c:rna_Object_vgroup_remove"}
!389 = !{!"rna_object_gen.c:rna_Object_vgroup_clear"}
!390 = !{!"rna_object_gen.c:rna_ObjectBase_layers_from_view"}
!391 = !{!392, !46, i64 224}
!392 = !{!"View3D", !37, i64 0, !37, i64 8, !48, i64 16, !46, i64 32, !49, i64 36, !38, i64 40, !38, i64 56, !49, i64 72, !49, i64 76, !38, i64 80, !38, i64 81, !46, i64 84, !46, i64 88, !42, i64 92, !42, i64 94, !37, i64 96, !37, i64 104, !367, i64 112, !48, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !46, i64 224, !46, i64 228, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !42, i64 240, !42, i64 242, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !38, i64 260, !38, i64 272, !42, i64 284, !42, i64 286, !42, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !48, i64 296, !48, i64 312, !48, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!393 = !{!"rna_object_gen.c:rna_VertexGroup_vertex_add"}
!394 = distinct !{!394, !59}
!395 = !{!396, !50, i64 0}
!396 = !{!"ParameterDynAlloc", !50, i64 0, !37, i64 8}
!397 = !{!"rna_object_gen.c:rna_VertexGroup_vertex_remove"}
!398 = distinct !{!398, !59}
!399 = !{!"rna_object_gen.c:rna_VertexGroup_weight"}
!400 = !{!"rna_object_gen.c:rna_Object_data_typef"}
!401 = !{!"rna_object_gen.c:rna_Object_layer_update"}
!402 = !{!"rna_object_gen.c:rna_Object_select_update"}
!403 = !{!"rna_object_gen.c:rna_Object_dependency_update"}
!404 = !{!"rna_object_gen.c:rna_Object_parent_type_itemf"}
!405 = !{!"rna_object_gen.c:rna_Object_internal_update"}
!406 = !{!"rna_object_gen.c:rna_MaterialSlot_update"}
!407 = !{!"rna_object_gen.c:rna_Object_active_material_editable"}
!408 = !{!45, !37, i64 24}
!409 = !{!"rna_object_gen.c:rna_Object_active_material_index_range"}
!410 = !{!"rna_object_gen.c:rna_Object_location_editable"}
!411 = !{!"rna_object_gen.c:rna_Object_rotation_4d_editable"}
!412 = !{!"rna_object_gen.c:rna_Object_rotation_euler_editable"}
!413 = !{!"rna_object_gen.c:rna_Object_scale_editable"}
!414 = !{!"rna_object_gen.c:rna_Object_matrix_world_update"}
!415 = !{!"rna_object_gen.c:rna_Object_hide_update"}
!416 = !{!"rna_object_gen.c:rna_Object_active_shape_update"}
!417 = !{!360, !37, i64 176}
!418 = !{!360, !37, i64 264}
!419 = !{!"rna_object_gen.c:rna_Object_active_shape_key_index_range"}
!420 = !{!"rna_object_gen.c:rna_Object_active_vertex_group_index_range"}
!421 = !{!"rna_object_gen.c:rna_Object_particle_update"}
!422 = !{!"rna_object_gen.c:rna_Object_active_particle_system_index_range"}
!423 = !{!"rna_object_gen.c:rna_Object_collision_bounds_itemf"}
!424 = !{!"rna_object_gen.c:rna_Base_layer_update"}
!425 = !{!"rna_object_gen.c:rna_Base_select_update"}
!426 = !{!"rna_object_gen.c:rna_MaterialSlot_path"}
!427 = !{!"rna_object_gen.c:rna_Object_lod_distance_update"}
!428 = !{!"rna_object_gen.c:rna_Object_layer_validate__internal"}
!429 = distinct !{!429, !59, !271, !272}
!430 = distinct !{!430, !59}
!431 = !{!"rna_object_gen.c:copy_v3_v3"}
!432 = !{!"rna_object_gen.c:dupli_render_particle_set"}
!433 = !{!434, !37, i64 16}
!434 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !48, i64 72, !48, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !48, i64 152, !38, i64 168, !38, i64 232, !49, i64 296, !49, i64 300, !49, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !46, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !38, i64 348, !38, i64 540, !42, i64 564, !42, i64 566, !37, i64 568, !37, i64 576, !48, i64 584, !37, i64 600, !37, i64 608, !46, i64 616, !46, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !49, i64 648, !49, i64 652}
!435 = !{!436, !42, i64 192}
!436 = !{!"ParticleSettings", !45, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !46, i64 152, !46, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !46, i64 176, !46, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !49, i64 232, !49, i64 236, !38, i64 240, !38, i64 248, !49, i64 256, !49, i64 260, !49, i64 264, !42, i64 268, !42, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !38, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !42, i64 340, !38, i64 342, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !38, i64 376, !49, i64 388, !49, i64 392, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !49, i64 412, !38, i64 416, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !46, i64 444, !46, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !49, i64 496, !49, i64 500, !49, i64 504, !49, i64 508, !49, i64 512, !49, i64 516, !49, i64 520, !49, i64 524, !49, i64 528, !49, i64 532, !49, i64 536, !49, i64 540, !49, i64 544, !49, i64 548, !38, i64 552, !49, i64 560, !49, i64 564, !46, i64 568, !46, i64 572, !38, i64 576, !37, i64 720, !48, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !42, i64 792, !38, i64 794}
!437 = distinct !{!437, !59}
!438 = !{!50, !50, i64 0}
!439 = !{!440, !37, i64 1680}
!440 = !{!"DerivedMesh", !54, i64 0, !54, i64 200, !54, i64 400, !54, i64 600, !54, i64 800, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !37, i64 1032, !37, i64 1040, !46, i64 1048, !49, i64 1052, !46, i64 1056, !46, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!441 = !{!442, !42, i64 140}
!442 = !{!"ParticleSystemModifierData", !443, i64 0, !37, i64 112, !37, i64 120, !46, i64 128, !46, i64 132, !46, i64 136, !42, i64 140, !42, i64 142}
!443 = !{!"ModifierData", !37, i64 0, !37, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!444 = distinct !{!444, !59}
!445 = !{!446, !37, i64 16}
!446 = !{!"GroupObject", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 34}
!447 = distinct !{!447, !59}
!448 = !{!"rna_object_gen.c:sub_v3_v3v3"}
!449 = !{!"rna_object_gen.c:normalize_v3"}
!450 = !{!"rna_object_gen.c:dm_tessface_to_poly_index"}
!451 = !{!440, !37, i64 1336}
!452 = !{!440, !37, i64 1352}
!453 = !{!"rna_object_gen.c:zero_v3"}
!454 = !{!"rna_object_gen.c:normalize_v3_v3"}
!455 = !{!"rna_object_gen.c:dot_v3v3"}
!456 = !{!"rna_object_gen.c:mul_v3_v3fl"}
!457 = !{!"rna_object_gen.c:DM_origindex_mface_mpoly"}
!458 = !{!"rna_object_gen.c:rna_Object_layer_update__internal"}
!459 = !{!"rna_object_gen.c:max_ii"}
