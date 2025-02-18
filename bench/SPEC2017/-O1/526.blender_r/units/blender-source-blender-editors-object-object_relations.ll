; ModuleID = 'blender/source/blender/editors/object/object_relations.c'
source_filename = "blender/source/blender/editors/object/object_relations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.KDTreeNearest = type { i32, float, [3 x float] }
%struct.bDampTrackConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bTrackToConstraint = type { ptr, i32, i32, i32, i32, [64 x i8] }
%struct.bLockTrackConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.PropertyPointerRNA = type { %struct.PointerRNA, ptr }

@.str = private unnamed_addr constant [19 x i8] c"Make Vertex Parent\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Parent selected objects to the selected vertices\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_vertex_parent_set\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Make Proxy\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_proxy_make\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"Add empty object to become local replacement data of a library-linked object\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@DummyRNA_DEFAULT_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"Proxy Object\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Name of lib-linked/grouped object to make a proxy for\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Clear Parent\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"Completely clear the parenting relationship, including involved modifiers is any\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"CLEAR_KEEP_TRANSFORM\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Clear and Keep Transformation\00", align 1
@.str.14 = private unnamed_addr constant [77 x i8] c"As 'Clear Parent', but keep the current visual transformations of the object\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"CLEAR_INVERSE\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Clear Parent Inverse\00", align 1
@.str.17 = private unnamed_addr constant [104 x i8] c"Reset the transform corrections applied to the parenting relationship, does not remove parenting itself\00", align 1
@prop_clear_parent_types = dso_local global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 1, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 2, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [29 x i8] c"Clear the object's parenting\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_parent_clear\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"ARMATURE\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Armature Deform\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"ARMATURE_NAME\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"   With Empty Groups\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"ARMATURE_AUTO\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"   With Automatic Weights\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"ARMATURE_ENVELOPE\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"   With Envelope Weights\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"BONE\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"BONE_RELATIVE\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Bone Relative\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Curve Deform\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"FOLLOW\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Follow Path\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"PATH_CONST\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Path Constraint\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"LATTICE\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"Lattice Deform\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"VERTEX\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Vertex\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"VERTEX_TRI\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"Vertex (Triangle)\00", align 1
@prop_make_parent_types = dso_local global [14 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.22 }, %struct.EnumPropertyItem { i32 1, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.22 }, %struct.EnumPropertyItem { i32 2, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.22 }, %struct.EnumPropertyItem { i32 4, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.22 }, %struct.EnumPropertyItem { i32 3, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.22 }, %struct.EnumPropertyItem { i32 5, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.22 }, %struct.EnumPropertyItem { i32 6, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.22 }, %struct.EnumPropertyItem { i32 7, ptr @.str.37, i32 0, ptr @.str.38, ptr @.str.22 }, %struct.EnumPropertyItem { i32 8, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.22 }, %struct.EnumPropertyItem { i32 9, ptr @.str.41, i32 0, ptr @.str.42, ptr @.str.22 }, %struct.EnumPropertyItem { i32 10, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.22 }, %struct.EnumPropertyItem { i32 11, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.22 }, %struct.EnumPropertyItem { i32 12, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.22 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"eval_time\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"No active bone\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"Loop in parents\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"AutoPath\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Make Parent\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Set the object's parenting\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_parent_set\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"xmirror\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"X Mirror\00", align 1
@.str.58 = private unnamed_addr constant [88 x i8] c"Apply weights symmetrically along X axis, for Envelope/Automatic vertex groups creation\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"keep_transform\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"Keep Transform\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"Apply transformation before parenting\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"Make Parent without Inverse\00", align 1
@.str.63 = private unnamed_addr constant [73 x i8] c"Set the object's parenting without setting the inverse parent correction\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"OBJECT_OT_parent_no_inverse_set\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"Clear Slow Parent\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"Clear the object's slow parent\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_slow_parent_clear\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"Set Slow Parent\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"Set the object's slow parent\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_slow_parent_set\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"Clear Track\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"Clear tracking constraint or flag from object\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_track_clear\00", align 1
@prop_clear_track_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.9, i32 0, ptr @.str.71, ptr @.str.22 }, %struct.EnumPropertyItem { i32 2, ptr @.str.12, i32 0, ptr @.str.147, ptr @.str.22 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.74 = private unnamed_addr constant [11 x i8] c"Make Track\00", align 1
@.str.75 = private unnamed_addr constant [72 x i8] c"Make the object track another object, using various methods/constraints\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"OBJECT_OT_track_set\00", align 1
@prop_make_track_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.149, i32 0, ptr @.str.150, ptr @.str.22 }, %struct.EnumPropertyItem { i32 2, ptr @.str.151, i32 0, ptr @.str.152, ptr @.str.22 }, %struct.EnumPropertyItem { i32 3, ptr @.str.153, i32 0, ptr @.str.154, ptr @.str.22 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.77 = private unnamed_addr constant [14 x i8] c"Move to Layer\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"Move the object to different layers\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_move_to_layer\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"Link Objects to Scene\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"Link selection to another scene\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_make_links_scene\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.86 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@OBJECT_OT_make_links_data.make_links_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.22 }, %struct.EnumPropertyItem { i32 2, ptr @.str.89, i32 0, ptr @.str.90, ptr @.str.22 }, %struct.EnumPropertyItem { i32 3, ptr @.str.91, i32 0, ptr @.str.92, ptr @.str.22 }, %struct.EnumPropertyItem { i32 4, ptr @.str.93, i32 0, ptr @.str.94, ptr @.str.22 }, %struct.EnumPropertyItem { i32 5, ptr @.str.95, i32 0, ptr @.str.96, ptr @.str.22 }, %struct.EnumPropertyItem { i32 6, ptr @.str.97, i32 0, ptr @.str.98, ptr @.str.22 }, %struct.EnumPropertyItem { i32 7, ptr @.str.99, i32 0, ptr @.str.100, ptr @.str.22 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.87 = private unnamed_addr constant [7 x i8] c"OBDATA\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"Object Data\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"Materials\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"ANIMATION\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"GROUPS\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"DUPLIGROUP\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"DupliGroup\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"MODIFIERS\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"FONTS\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"Fonts\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"Link Data\00", align 1
@.str.102 = private unnamed_addr constant [52 x i8] c"Apply active object links to other selected objects\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_make_links_data\00", align 1
@OBJECT_OT_make_local.type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.22 }, %struct.EnumPropertyItem { i32 2, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.22 }, %struct.EnumPropertyItem { i32 3, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.22 }, %struct.EnumPropertyItem { i32 4, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.22 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.104 = private unnamed_addr constant [14 x i8] c"SELECT_OBJECT\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"Selected Objects\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"SELECT_OBDATA\00", align 1
@.str.107 = private unnamed_addr constant [26 x i8] c"Selected Objects and Data\00", align 1
@.str.108 = private unnamed_addr constant [23 x i8] c"SELECT_OBDATA_MATERIAL\00", align 1
@.str.109 = private unnamed_addr constant [37 x i8] c"Selected Objects, Data and Materials\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"Make Local\00", align 1
@.str.113 = private unnamed_addr constant [50 x i8] c"Make library linked datablocks local to this file\00", align 1
@.str.114 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_make_local\00", align 1
@OBJECT_OT_make_single_user.type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.115, i32 0, ptr @.str.105, ptr @.str.22 }, %struct.EnumPropertyItem { i32 0, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.22 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.115 = private unnamed_addr constant [17 x i8] c"SELECTED_OBJECTS\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"Make Single User\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"Make linked data local to each object\00", align 1
@.str.118 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_make_single_user\00", align 1
@.str.119 = private unnamed_addr constant [25 x i8] c"Make single user objects\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"obdata\00", align 1
@.str.121 = private unnamed_addr constant [29 x i8] c"Make single user object data\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.123 = private unnamed_addr constant [39 x i8] c"Make materials local to each datablock\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"Textures\00", align 1
@.str.126 = private unnamed_addr constant [71 x i8] c"Make textures local to each material (needs 'Materials' to be set too)\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"animation\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"Object Animation\00", align 1
@.str.129 = private unnamed_addr constant [41 x i8] c"Make animation data local to each object\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"Drop Named Material on Object\00", align 1
@.str.131 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_drop_named_material\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.135 = private unnamed_addr constant [24 x i8] c"Material name to assign\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"Unlink\00", align 1
@.str.137 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_unlink_data\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.138 = private unnamed_addr constant [43 x i8] c"Select either 1 or 3 vertices to parent to\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"OK?\00", align 1
@.str.140 = private unnamed_addr constant [53 x i8] c"Can only make proxy for a referenced object or group\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"%s_proxy\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.142 = private unnamed_addr constant [28 x i8] c"No object to make proxy for\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"Set Parent To\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"Object (Keep Transform)\00", align 1
@.str.145 = private unnamed_addr constant [38 x i8] c"Not enough vertices for vertex-parent\00", align 1
@.str.146 = private unnamed_addr constant [43 x i8] c"Operation cannot be performed in edit mode\00", align 1
@.str.147 = private unnamed_addr constant [44 x i8] c"Clear and Keep Transformation (Clear Track)\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"AutoTrack\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"DAMPTRACK\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"Damped Track Constraint\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"TRACKTO\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c"Track To Constraint\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"LOCKTRACK\00", align 1
@.str.154 = private unnamed_addr constant [22 x i8] c"Lock Track Constraint\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"Move from localview\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c"Could not find scene\00", align 1
@.str.157 = private unnamed_addr constant [40 x i8] c"Cannot link objects into the same scene\00", align 1
@.str.158 = private unnamed_addr constant [40 x i8] c"Cannot link objects into a linked scene\00", align 1
@.str.159 = private unnamed_addr constant [46 x i8] c"Skipped some groups because of cycle detected\00", align 1
@.str.160 = private unnamed_addr constant [36 x i8] c"Skipped editing library object data\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.161 = private unnamed_addr constant [25 x i8] c"ERROR %s: can't copy %s\0A\00", align 1
@__func__.single_obdata_users = private unnamed_addr constant [20 x i8] c"single_obdata_users\00", align 1
@.str.162 = private unnamed_addr constant [64 x i8] c"Orphan library objects added to the current scene to avoid loss\00", align 1
@.str.163 = private unnamed_addr constant [49 x i8] c"Incorrect context for running object data unlink\00", align 1
@.str.164 = private unnamed_addr constant [30 x i8] c"Can't unlink this object data\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_parent_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_parent_set_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_parent_set_exec, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @vertex_parent_set_poll(ptr noundef %0) #2 {
  %2 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_editsurfcurve(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call i32 @ED_operator_editlattice(ptr noundef %0) #9
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 1, %4 ], [ 1, %1 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_parent_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.Object, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !48
  switch i16 %10, label %223 [
    i16 1, label %11
    i16 3, label %57
    i16 2, label %57
    i16 22, label %173
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  tail call void @EDBM_mesh_load(ptr noundef %8) #9
  %14 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  tail call void @EDBM_mesh_make(ptr noundef %15, ptr noundef %8) #9
  %16 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  tail call void @EDBM_mesh_normals_update(ptr noundef %17) #9
  tail call void @BKE_editmesh_tessface_calc(ptr noundef %17) #9
  %18 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !78
  %19 = or i64 %18, 128
  tail call void @makeDerivedMesh(ptr noundef %7, ptr noundef %8, ptr noundef %17, i64 noundef %19, i32 noundef 0) #9
  %20 = load ptr, ptr %17, align 8, !tbaa !79
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %21, align 4, !tbaa !81
  %22 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %22, align 8, !tbaa !83
  %23 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %23, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !85
  store ptr %25, ptr %3, align 8, !tbaa !87
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %26 = load ptr, ptr %23, align 8, !tbaa !84
  %27 = call ptr %26(ptr noundef nonnull %3) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %223, label %29

29:                                               ; preds = %11, %48
  %30 = phi ptr [ %55, %48 ], [ %27, %11 ]
  %31 = phi i32 [ %53, %48 ], [ 1, %11 ]
  %32 = phi i32 [ %52, %48 ], [ 0, %11 ]
  %33 = phi i32 [ %51, %48 ], [ 0, %11 ]
  %34 = phi i32 [ %50, %48 ], [ 0, %11 ]
  %35 = phi i32 [ %49, %48 ], [ 0, %11 ]
  %36 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !88
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %29
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %34, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %42
  %45 = icmp eq i32 %33, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = icmp eq i32 %32, 0
  br i1 %47, label %48, label %223

48:                                               ; preds = %46, %44, %42, %40, %29
  %49 = phi i32 [ %35, %29 ], [ %31, %40 ], [ %35, %42 ], [ %35, %44 ], [ %35, %46 ]
  %50 = phi i32 [ %34, %29 ], [ %34, %40 ], [ %31, %42 ], [ %34, %44 ], [ %34, %46 ]
  %51 = phi i32 [ %33, %29 ], [ %33, %40 ], [ %33, %42 ], [ %31, %44 ], [ %33, %46 ]
  %52 = phi i32 [ %32, %29 ], [ %32, %40 ], [ %32, %42 ], [ %32, %44 ], [ %31, %46 ]
  %53 = add nuw nsw i32 %31, 1
  %54 = load ptr, ptr %23, align 8, !tbaa !84
  %55 = call ptr %54(ptr noundef nonnull %3) #9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %223, label %29, !llvm.loop !90

57:                                               ; preds = %2, %2
  %58 = tail call ptr @object_editcurve_get(ptr noundef %8) #9
  %59 = load ptr, ptr %58, align 8, !tbaa !93
  %60 = icmp eq ptr %59, null
  br i1 %60, label %223, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !55
  %64 = getelementptr inbounds %struct.Curve, ptr %63, i64 0, i32 16
  br label %65

65:                                               ; preds = %61, %165
  %66 = phi ptr [ %59, %61 ], [ %171, %165 ]
  %67 = phi i32 [ 1, %61 ], [ %170, %165 ]
  %68 = phi i32 [ 0, %61 ], [ %169, %165 ]
  %69 = phi i32 [ 0, %61 ], [ %168, %165 ]
  %70 = phi i32 [ 0, %61 ], [ %167, %165 ]
  %71 = phi i32 [ 0, %61 ], [ %166, %165 ]
  %72 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 2
  %73 = load i16, ptr %72, align 8, !tbaa !94
  %74 = icmp eq i16 %73, 1
  %75 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 6
  %76 = load i32, ptr %75, align 8, !tbaa !96
  br i1 %74, label %77, label %127

77:                                               ; preds = %65
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %165, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 18
  %81 = load ptr, ptr %80, align 8, !tbaa !97
  %82 = load i16, ptr %64, align 8, !tbaa !98
  %83 = and i16 %82, 1
  %84 = icmp eq i16 %83, 0
  %85 = add i32 %67, %76
  br label %86

86:                                               ; preds = %79, %119
  %87 = phi i32 [ %76, %79 ], [ %94, %119 ]
  %88 = phi ptr [ %81, %79 ], [ %125, %119 ]
  %89 = phi i32 [ %67, %79 ], [ %124, %119 ]
  %90 = phi i32 [ %68, %79 ], [ %123, %119 ]
  %91 = phi i32 [ %69, %79 ], [ %122, %119 ]
  %92 = phi i32 [ %70, %79 ], [ %121, %119 ]
  %93 = phi i32 [ %71, %79 ], [ %120, %119 ]
  %94 = add nsw i32 %87, -1
  %95 = getelementptr inbounds %struct.BezTriple, ptr %88, i64 0, i32 8
  %96 = load i8, ptr %95, align 4, !tbaa !101
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  br i1 %84, label %100, label %99

99:                                               ; preds = %86
  br i1 %98, label %119, label %111

100:                                              ; preds = %86
  br i1 %98, label %101, label %111

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.BezTriple, ptr %88, i64 0, i32 7
  %103 = load i8, ptr %102, align 1, !tbaa !103
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.BezTriple, ptr %88, i64 0, i32 9
  %108 = load i8, ptr %107, align 1, !tbaa !104
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %106, %101, %100, %99
  %112 = icmp eq i32 %93, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %111
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %113
  %116 = icmp eq i32 %91, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %115
  %118 = icmp eq i32 %90, 0
  br i1 %118, label %119, label %165

119:                                              ; preds = %117, %115, %113, %111, %106, %99
  %120 = phi i32 [ %93, %99 ], [ %93, %106 ], [ %89, %111 ], [ %93, %113 ], [ %93, %115 ], [ %93, %117 ]
  %121 = phi i32 [ %92, %99 ], [ %92, %106 ], [ %92, %111 ], [ %89, %113 ], [ %92, %115 ], [ %92, %117 ]
  %122 = phi i32 [ %91, %99 ], [ %91, %106 ], [ %91, %111 ], [ %91, %113 ], [ %89, %115 ], [ %91, %117 ]
  %123 = phi i32 [ %90, %99 ], [ %90, %106 ], [ %90, %111 ], [ %90, %113 ], [ %90, %115 ], [ %89, %117 ]
  %124 = add nsw i32 %89, 1
  %125 = getelementptr inbounds %struct.BezTriple, ptr %88, i64 1
  %126 = icmp eq i32 %94, 0
  br i1 %126, label %165, label %86, !llvm.loop !105

127:                                              ; preds = %65
  %128 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 7
  %129 = load i32, ptr %128, align 4, !tbaa !106
  %130 = mul nsw i32 %129, %76
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %165, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.Nurb, ptr %66, i64 0, i32 17
  %134 = load ptr, ptr %133, align 8, !tbaa !107
  %135 = add i32 %67, %130
  br label %136

136:                                              ; preds = %132, %157
  %137 = phi i32 [ %144, %157 ], [ %130, %132 ]
  %138 = phi ptr [ %163, %157 ], [ %134, %132 ]
  %139 = phi i32 [ %162, %157 ], [ %67, %132 ]
  %140 = phi i32 [ %161, %157 ], [ %68, %132 ]
  %141 = phi i32 [ %160, %157 ], [ %69, %132 ]
  %142 = phi i32 [ %159, %157 ], [ %70, %132 ]
  %143 = phi i32 [ %158, %157 ], [ %71, %132 ]
  %144 = add nsw i32 %137, -1
  %145 = getelementptr inbounds %struct.BPoint, ptr %138, i64 0, i32 3
  %146 = load i16, ptr %145, align 4, !tbaa !108
  %147 = and i16 %146, 1
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %136
  %150 = icmp eq i32 %143, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %149
  %152 = icmp eq i32 %142, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %151
  %154 = icmp eq i32 %141, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %153
  %156 = icmp eq i32 %140, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %155, %153, %151, %149, %136
  %158 = phi i32 [ %143, %136 ], [ %139, %149 ], [ %143, %151 ], [ %143, %153 ], [ %143, %155 ]
  %159 = phi i32 [ %142, %136 ], [ %142, %149 ], [ %139, %151 ], [ %142, %153 ], [ %142, %155 ]
  %160 = phi i32 [ %141, %136 ], [ %141, %149 ], [ %141, %151 ], [ %139, %153 ], [ %141, %155 ]
  %161 = phi i32 [ %140, %136 ], [ %140, %149 ], [ %140, %151 ], [ %140, %153 ], [ %139, %155 ]
  %162 = add nsw i32 %139, 1
  %163 = getelementptr inbounds %struct.BPoint, ptr %138, i64 1
  %164 = icmp eq i32 %144, 0
  br i1 %164, label %165, label %136, !llvm.loop !110

165:                                              ; preds = %155, %157, %117, %119, %127, %77
  %166 = phi i32 [ %71, %77 ], [ %71, %127 ], [ %120, %119 ], [ %93, %117 ], [ %158, %157 ], [ %143, %155 ]
  %167 = phi i32 [ %70, %77 ], [ %70, %127 ], [ %121, %119 ], [ %92, %117 ], [ %159, %157 ], [ %142, %155 ]
  %168 = phi i32 [ %69, %77 ], [ %69, %127 ], [ %122, %119 ], [ %91, %117 ], [ %160, %157 ], [ %141, %155 ]
  %169 = phi i32 [ %68, %77 ], [ %68, %127 ], [ %123, %119 ], [ %90, %117 ], [ %161, %157 ], [ %140, %155 ]
  %170 = phi i32 [ %67, %77 ], [ %67, %127 ], [ %85, %119 ], [ %89, %117 ], [ %135, %157 ], [ %139, %155 ]
  %171 = load ptr, ptr %66, align 8, !tbaa !93
  %172 = icmp eq ptr %171, null
  br i1 %172, label %223, label %65, !llvm.loop !111

173:                                              ; preds = %2
  %174 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %175 = load ptr, ptr %174, align 8, !tbaa !55
  %176 = getelementptr inbounds %struct.Lattice, ptr %175, i64 0, i32 26
  %177 = load ptr, ptr %176, align 8, !tbaa !112
  %178 = load ptr, ptr %177, align 8, !tbaa !114
  %179 = getelementptr inbounds %struct.Lattice, ptr %178, i64 0, i32 2
  %180 = load i16, ptr %179, align 8, !tbaa !116
  %181 = sext i16 %180 to i32
  %182 = getelementptr inbounds %struct.Lattice, ptr %178, i64 0, i32 3
  %183 = load i16, ptr %182, align 2, !tbaa !117
  %184 = sext i16 %183 to i32
  %185 = mul nsw i32 %184, %181
  %186 = getelementptr inbounds %struct.Lattice, ptr %178, i64 0, i32 4
  %187 = load i16, ptr %186, align 4, !tbaa !118
  %188 = sext i16 %187 to i32
  %189 = mul nsw i32 %185, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %223, label %191

191:                                              ; preds = %173
  %192 = getelementptr inbounds %struct.Lattice, ptr %178, i64 0, i32 21
  %193 = load ptr, ptr %192, align 8, !tbaa !119
  br label %194

194:                                              ; preds = %191, %215
  %195 = phi i32 [ %202, %215 ], [ %189, %191 ]
  %196 = phi ptr [ %221, %215 ], [ %193, %191 ]
  %197 = phi i32 [ %220, %215 ], [ 1, %191 ]
  %198 = phi i32 [ %219, %215 ], [ 0, %191 ]
  %199 = phi i32 [ %218, %215 ], [ 0, %191 ]
  %200 = phi i32 [ %217, %215 ], [ 0, %191 ]
  %201 = phi i32 [ %216, %215 ], [ 0, %191 ]
  %202 = add nsw i32 %195, -1
  %203 = getelementptr inbounds %struct.BPoint, ptr %196, i64 0, i32 3
  %204 = load i16, ptr %203, align 4, !tbaa !108
  %205 = and i16 %204, 1
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %194
  %208 = icmp eq i32 %201, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %207
  %210 = icmp eq i32 %200, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %209
  %212 = icmp eq i32 %199, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %211
  %214 = icmp eq i32 %198, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %213, %211, %209, %207, %194
  %216 = phi i32 [ %201, %194 ], [ %197, %207 ], [ %201, %209 ], [ %201, %211 ], [ %201, %213 ]
  %217 = phi i32 [ %200, %194 ], [ %200, %207 ], [ %197, %209 ], [ %200, %211 ], [ %200, %213 ]
  %218 = phi i32 [ %199, %194 ], [ %199, %207 ], [ %199, %209 ], [ %197, %211 ], [ %199, %213 ]
  %219 = phi i32 [ %198, %194 ], [ %198, %207 ], [ %198, %209 ], [ %198, %211 ], [ %197, %213 ]
  %220 = add nuw nsw i32 %197, 1
  %221 = getelementptr inbounds %struct.BPoint, ptr %196, i64 1
  %222 = icmp eq i32 %202, 0
  br i1 %222, label %223, label %194, !llvm.loop !120

223:                                              ; preds = %213, %215, %165, %46, %48, %173, %57, %11, %2
  %224 = phi i32 [ 0, %2 ], [ 0, %11 ], [ 0, %57 ], [ 0, %173 ], [ %49, %48 ], [ %35, %46 ], [ %166, %165 ], [ %216, %215 ], [ %201, %213 ]
  %225 = phi i32 [ 0, %2 ], [ 0, %11 ], [ 0, %57 ], [ 0, %173 ], [ %50, %48 ], [ %34, %46 ], [ %167, %165 ], [ %217, %215 ], [ %200, %213 ]
  %226 = phi i32 [ 0, %2 ], [ 0, %11 ], [ 0, %57 ], [ 0, %173 ], [ %51, %48 ], [ %33, %46 ], [ %168, %165 ], [ %218, %215 ], [ %199, %213 ]
  %227 = phi i32 [ 0, %2 ], [ 0, %11 ], [ 0, %57 ], [ 0, %173 ], [ %52, %48 ], [ %32, %46 ], [ %169, %165 ], [ %219, %215 ], [ %198, %213 ]
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %223
  %230 = icmp ne i32 %224, 0
  %231 = icmp eq i32 %225, 0
  %232 = select i1 %230, i1 %231, i1 false
  %233 = icmp eq i32 %226, 0
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %243, label %235

235:                                              ; preds = %229
  %236 = icmp ne i32 %225, 0
  %237 = select i1 %230, i1 %236, i1 false
  %238 = icmp ne i32 %226, 0
  %239 = select i1 %237, i1 %238, i1 false
  br i1 %239, label %243, label %240

240:                                              ; preds = %235, %223
  %241 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %242 = load ptr, ptr %241, align 8, !tbaa !121
  call void @BKE_report(ptr noundef %242, i32 noundef 32, ptr noundef nonnull @.str.138) #9
  br label %287

243:                                              ; preds = %235, %229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %244 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #9
  %245 = load ptr, ptr %4, align 8, !tbaa !93
  %246 = icmp eq ptr %245, null
  br i1 %246, label %286, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 9
  %249 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %250 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %251 = add nsw i32 %224, -1
  %252 = add nsw i32 %225, -1
  %253 = add nsw i32 %226, -1
  %254 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %255 = add nsw i32 %224, -1
  %256 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  br label %257

257:                                              ; preds = %247, %283
  %258 = phi ptr [ %245, %247 ], [ %284, %283 ]
  %259 = getelementptr inbounds %struct.CollectionPointerLink, ptr %258, i64 0, i32 2, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !123
  %261 = icmp eq ptr %260, %8
  br i1 %261, label %283, label %262

262:                                              ; preds = %257
  call void @DAG_id_tag_update(ptr noundef %260, i16 noundef signext 7) #9
  %263 = load ptr, ptr %248, align 8, !tbaa !127
  %264 = call zeroext i8 @BKE_object_parent_loop_check(ptr noundef %263, ptr noundef %260) #9
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = load ptr, ptr %249, align 8, !tbaa !121
  call void @BKE_report(ptr noundef %267, i32 noundef 32, ptr noundef nonnull @.str.51) #9
  br label %283

268:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %5) #9
  %269 = load ptr, ptr %250, align 8, !tbaa !128
  %270 = getelementptr inbounds %struct.Base, ptr %269, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !129
  %272 = getelementptr inbounds %struct.Object, ptr %260, i64 0, i32 9
  store ptr %271, ptr %272, align 8, !tbaa !127
  %273 = getelementptr inbounds %struct.Object, ptr %260, i64 0, i32 4
  %274 = getelementptr inbounds %struct.Object, ptr %260, i64 0, i32 5
  br i1 %233, label %278, label %275

275:                                              ; preds = %268
  store i16 6, ptr %273, align 2, !tbaa !131
  store i32 %251, ptr %274, align 4, !tbaa !132
  %276 = getelementptr inbounds %struct.Object, ptr %260, i64 0, i32 6
  store i32 %252, ptr %276, align 8, !tbaa !133
  %277 = getelementptr inbounds %struct.Object, ptr %260, i64 0, i32 7
  store i32 %253, ptr %277, align 4, !tbaa !134
  br label %279

278:                                              ; preds = %268
  store i16 5, ptr %273, align 2, !tbaa !131
  store i32 %255, ptr %274, align 4, !tbaa !132
  br label %279

279:                                              ; preds = %278, %275
  %280 = phi ptr [ %256, %278 ], [ %254, %275 ]
  call void @BKE_object_workob_calc_parent(ptr noundef %7, ptr noundef %260, ptr noundef nonnull %5) #9
  %281 = getelementptr inbounds %struct.Object, ptr %260, i64 0, i32 48
  %282 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %281, ptr noundef nonnull %280) #9
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %5) #9
  br label %283

283:                                              ; preds = %266, %279, %257
  %284 = load ptr, ptr %258, align 8, !tbaa !93
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %257, !llvm.loop !135

286:                                              ; preds = %283, %243
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @DAG_relations_tag_update(ptr noundef %6) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 83886080, ptr noundef null) #9
  br label %287

287:                                              ; preds = %286, %240
  %288 = phi i32 [ 2, %240 ], [ 4, %286 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 %288
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_proxy_make(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @make_proxy_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_proxy_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @proxy_group_object_itemf) #9
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_proxy_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = tail call ptr @ED_object_active_context(ptr noundef %0) #9
  %7 = icmp eq ptr %5, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = icmp eq ptr %10, null
  %12 = icmp ne ptr %6, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 112
  %16 = load ptr, ptr %15, align 8, !tbaa !139
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !140
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %37

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !142
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.139, i32 noundef 1) #9
  %30 = tail call ptr @uiPupMenuLayout(ptr noundef %29) #9
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !143
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %30, ptr noundef nonnull %32, ptr noundef %33, i32 noundef 0, ptr noundef null, i32 noundef 7, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %29) #9
  br label %37

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !121
  tail call void @BKE_report(ptr noundef %36, i32 noundef 32, ptr noundef nonnull @.str.140) #9
  br label %37

37:                                               ; preds = %3, %8, %34, %28, %22
  %38 = phi i32 [ 2, %22 ], [ 32, %28 ], [ 2, %34 ], [ 2, %8 ], [ 2, %3 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_proxy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [70 x i8], align 16
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 112
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Group, ptr %8, i64 0, i32 1
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !144
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.6) #9
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %14) #9
  %16 = getelementptr inbounds %struct.GroupObject, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !145
  br label %18

18:                                               ; preds = %2, %10
  %19 = phi ptr [ %5, %10 ], [ null, %2 ]
  %20 = phi ptr [ %17, %10 ], [ %5, %2 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %3) #9
  %25 = tail call ptr @BKE_object_add(ptr noundef %4, ptr noundef %6, i32 noundef 0) #9
  %26 = icmp eq ptr %19, null
  %27 = select i1 %26, ptr %20, ptr %19
  %28 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 4, i64 2
  %29 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 70, ptr noundef nonnull @.str.141, ptr noundef nonnull %28) #9
  call void @rename_id(ptr noundef %25, ptr noundef nonnull %3) #9
  %30 = load ptr, ptr %23, align 8, !tbaa !128
  %31 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !147
  %33 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 2
  store i32 %32, ptr %33, align 8, !tbaa !147
  %34 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 52
  store i32 %32, ptr %34, align 8, !tbaa !148
  br i1 %26, label %35, label %37

35:                                               ; preds = %22
  call void @BKE_scene_base_unlink(ptr noundef %6, ptr noundef %24) #9
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %36(ptr noundef %24) #9
  br label %37

37:                                               ; preds = %35, %22
  call void @BKE_object_make_proxy(ptr noundef %25, ptr noundef nonnull %20, ptr noundef %19) #9
  call void @DAG_relations_tag_update(ptr noundef %4) #9
  call void @DAG_id_tag_update(ptr noundef %25, i16 noundef signext 7) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %25) #9
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %3) #9
  br label %41

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !121
  tail call void @BKE_report(ptr noundef %40, i32 noundef 32, ptr noundef nonnull @.str.142) #9
  br label %41

41:                                               ; preds = %37, %38
  %42 = phi i32 [ 4, %37 ], [ 2, %38 ]
  ret i32 %42
}

declare i32 @ED_operator_object_active(ptr noundef) #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @proxy_group_object_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store ptr null, ptr %6, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !tbaa !149
  %8 = tail call ptr @ED_object_active_context(ptr noundef %0) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 112
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Group, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  %20 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %16, %18 ], [ %28, %21 ]
  %23 = phi i32 [ 0, %18 ], [ %27, %21 ]
  %24 = getelementptr inbounds %struct.GroupObject, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !145
  %26 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4, i64 2
  store ptr %26, ptr %19, align 8, !tbaa !150
  store ptr %26, ptr %20, align 8, !tbaa !152
  %27 = add nuw nsw i32 %23, 1
  store i32 %23, ptr %5, align 8, !tbaa !153
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #9
  %28 = load ptr, ptr %22, align 8, !tbaa !93
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !154

30:                                               ; preds = %21, %14
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  store i8 1, ptr %3, align 1, !tbaa !87
  %31 = load ptr, ptr %6, align 8, !tbaa !93
  br label %32

32:                                               ; preds = %4, %10, %30
  %33 = phi ptr [ %31, %30 ], [ @DummyRNA_DEFAULT_items, %10 ], [ @DummyRNA_DEFAULT_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  ret ptr %33
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_parent_clear(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  switch i32 %1, label %47 [
    i32 0, label %7
    i32 1, label %45
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !48
  switch i16 %9, label %44 [
    i16 25, label %10
    i16 22, label %10
    i16 2, label %10
  ]

10:                                               ; preds = %7, %7, %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !155
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %10, %42
  %15 = phi ptr [ %16, %42 ], [ %12, %10 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !158
  switch i32 %18, label %42 [
    i32 8, label %19
    i32 2, label %25
    i32 3, label %32
  ]

19:                                               ; preds = %14
  %20 = load i16, ptr %8, align 8, !tbaa !48
  %21 = icmp eq i16 %20, 25
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ArmatureModifierData, ptr %15, i64 0, i32 4
  br label %37

24:                                               ; preds = %19
  switch i32 %18, label %42 [
    i32 2, label %25
    i32 3, label %32
  ]

25:                                               ; preds = %14, %24
  %26 = load i16, ptr %8, align 8, !tbaa !48
  %27 = icmp eq i16 %26, 22
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.LatticeModifierData, ptr %15, i64 0, i32 1
  br label %37

30:                                               ; preds = %25
  %31 = icmp eq i32 %18, 3
  br i1 %31, label %32, label %42

32:                                               ; preds = %14, %24, %30
  %33 = load i16, ptr %8, align 8, !tbaa !48
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.CurveModifierData, ptr %15, i64 0, i32 1
  br label %37

37:                                               ; preds = %35, %28, %22
  %38 = phi ptr [ %23, %22 ], [ %29, %28 ], [ %36, %35 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  %40 = icmp eq ptr %39, %4
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef nonnull %15) #9
  tail call void @modifier_free(ptr noundef nonnull %15) #9
  br label %42

42:                                               ; preds = %14, %24, %32, %30, %41, %37
  %43 = icmp eq ptr %16, null
  br i1 %43, label %44, label %14, !llvm.loop !159

44:                                               ; preds = %42, %10, %7
  store ptr null, ptr %3, align 8, !tbaa !127
  br label %47

45:                                               ; preds = %6
  store ptr null, ptr %3, align 8, !tbaa !127
  %46 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @BKE_object_apply_mat4(ptr noundef %0, ptr noundef nonnull %46, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %47

47:                                               ; preds = %6, %45, %44
  %48 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %48) #9
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 7) #9
  br label %49

49:                                               ; preds = %2, %47
  ret void
}

declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @unit_m4(ptr noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_parent_clear(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @parent_clear_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_clear_parent_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !137
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @parent_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.20) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %8 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2, %11
  %12 = phi ptr [ %15, %11 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  call void @ED_object_parent_clear(ptr noundef %14, i32 noundef %7)
  %15 = load ptr, ptr %12, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %11, !llvm.loop !160

17:                                               ; preds = %11, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @DAG_relations_tag_update(ptr noundef %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85786624, ptr noundef null) #9
  ret i32 4
}

declare i32 @ED_operator_object_active_editable(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_parent(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %5) #9
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @BKE_object_parent_loop_check(ptr noundef nonnull %1, ptr noundef %0) #9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %4
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  store ptr null, ptr %11, align 8, !tbaa !127
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  store i16 0, ptr %12, align 2, !tbaa !131
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 8
  store i8 0, ptr %13, align 8, !tbaa !87
  br label %23

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  store ptr %1, ptr %15, align 8, !tbaa !127
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !131
  %18 = and i16 %17, -16
  %19 = trunc i32 %2 to i16
  %20 = or i16 %18, %19
  store i16 %20, ptr %16, align 2, !tbaa !131
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 8
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef %3, i64 noundef 64) #9
  br label %23

23:                                               ; preds = %14, %10
  ret void
}

declare zeroext i8 @BKE_object_parent_loop_check(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_object_parent_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr nocapture noundef readonly %8) local_unnamed_addr #2 {
  %10 = alloca %struct.Object, align 8
  %11 = alloca [4 x [4 x float]], align 16
  %12 = add i32 %5, -1
  %13 = icmp ult i32 %12, 4
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 1) #9
  %14 = icmp eq i32 %5, 8
  %15 = and i32 %5, -2
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %49

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !48
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %21, label %203

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.Curve, ptr %23, i64 0, i32 23
  %25 = load i32, ptr %24, align 4, !tbaa !161
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = or i32 %25, 24
  store i32 %29, ptr %24, align 4, !tbaa !161
  tail call void @BKE_displist_make_curveTypes(ptr noundef %2, ptr noundef %4, i8 noundef zeroext 0) #9
  br label %32

30:                                               ; preds = %21
  %31 = or i32 %25, 16
  store i32 %31, ptr %24, align 4, !tbaa !161
  br label %32

32:                                               ; preds = %30, %28
  br i1 %14, label %33, label %56

33:                                               ; preds = %32
  %34 = tail call ptr @verify_adt_action(ptr noundef %23, i16 noundef signext 1) #9
  %35 = tail call ptr @verify_fcurve(ptr noundef %34, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 0, i16 noundef signext 1) #9
  %36 = getelementptr inbounds %struct.FCurve, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !162
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.FCurve, ptr %35, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !164
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.FCurve, ptr %35, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !165
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = tail call ptr @add_fmodifier(ptr noundef nonnull %44, i32 noundef 1) #9
  br label %56

49:                                               ; preds = %9
  %50 = add i32 %5, -5
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = tail call ptr @BKE_pose_channel_active(ptr noundef %4) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.50) #9
  br label %203

56:                                               ; preds = %32, %47, %43, %39, %33, %49, %52
  %57 = phi ptr [ %53, %52 ], [ null, %49 ], [ null, %33 ], [ null, %39 ], [ null, %43 ], [ null, %47 ], [ null, %32 ]
  %58 = phi i32 [ %5, %52 ], [ %5, %49 ], [ 0, %33 ], [ 0, %39 ], [ 0, %43 ], [ 0, %47 ], [ %5, %32 ]
  %59 = icmp eq ptr %3, %4
  br i1 %59, label %203, label %60

60:                                               ; preds = %56
  %61 = tail call zeroext i8 @BKE_object_parent_loop_check(ptr noundef %4, ptr noundef %3) #9
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.51) #9
  br label %203

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %10) #9
  %65 = icmp eq i8 %7, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  tail call void @BKE_object_apply_mat4(ptr noundef %3, ptr noundef nonnull %67, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %68

68:                                               ; preds = %66, %64
  %69 = icmp eq i32 %58, 9
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 9
  store ptr %4, ptr %71, align 8, !tbaa !127
  %72 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %72) #9
  br label %73

73:                                               ; preds = %70, %68
  %74 = icmp eq ptr %57, null
  %75 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 8
  br i1 %74, label %79, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 4
  %78 = tail call ptr @BLI_strncpy(ptr noundef nonnull %75, ptr noundef nonnull %77, i64 noundef 64) #9
  br label %80

79:                                               ; preds = %73
  store i8 0, ptr %75, align 8, !tbaa !87
  br label %80

80:                                               ; preds = %79, %76
  br i1 %69, label %155, label %81

81:                                               ; preds = %80
  br i1 %13, label %83, label %82

82:                                               ; preds = %81
  switch i32 %58, label %153 [
    i32 10, label %83
    i32 7, label %83
    i32 5, label %121
    i32 6, label %130
    i32 11, label %139
    i32 12, label %143
  ]

83:                                               ; preds = %82, %82, %81
  %84 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 0, ptr %84, align 2, !tbaa !131
  %85 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %86 = load i16, ptr %85, align 8, !tbaa !48
  switch i16 %86, label %180 [
    i16 1, label %87
    i16 2, label %87
    i16 3, label %87
    i16 4, label %87
    i16 22, label %87
  ]

87:                                               ; preds = %83, %83, %83, %83, %83
  switch i32 %58, label %113 [
    i32 7, label %88
    i32 10, label %105
  ]

88:                                               ; preds = %87
  %89 = tail call ptr @modifiers_isDeformedByCurve(ptr noundef %3) #9
  %90 = icmp eq ptr %89, %4
  br i1 %90, label %180, label %91

91:                                               ; preds = %88
  %92 = tail call ptr @ED_object_modifier_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef 3) #9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.CurveModifierData, ptr %92, i64 0, i32 1
  store ptr %4, ptr %95, align 8, !tbaa !166
  br label %96

96:                                               ; preds = %94, %91
  %97 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 118
  %98 = load ptr, ptr %97, align 8, !tbaa !168
  %99 = icmp eq ptr %98, null
  br i1 %99, label %180, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.CurveCache, ptr %98, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !169
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %180

104:                                              ; preds = %100
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #9
  br label %180

105:                                              ; preds = %87
  %106 = tail call ptr @modifiers_isDeformedByLattice(ptr noundef %3) #9
  %107 = icmp eq ptr %106, %4
  br i1 %107, label %180, label %108

108:                                              ; preds = %105
  %109 = tail call ptr @ED_object_modifier_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef 2) #9
  %110 = icmp eq ptr %109, null
  br i1 %110, label %180, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.LatticeModifierData, ptr %109, i64 0, i32 1
  store ptr %4, ptr %112, align 8, !tbaa !171
  br label %180

113:                                              ; preds = %87
  %114 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %3) #9
  %115 = icmp eq ptr %114, %4
  br i1 %115, label %180, label %116

116:                                              ; preds = %113
  %117 = tail call ptr @ED_object_modifier_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef 8) #9
  %118 = icmp eq ptr %117, null
  br i1 %118, label %180, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.ArmatureModifierData, ptr %117, i64 0, i32 4
  store ptr %4, ptr %120, align 8, !tbaa !173
  br label %180

121:                                              ; preds = %82
  %122 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 7, ptr %122, align 2, !tbaa !131
  %123 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 12
  %124 = load ptr, ptr %123, align 8, !tbaa !175
  %125 = icmp eq ptr %124, null
  br i1 %125, label %180, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.Bone, ptr %124, i64 0, i32 10
  %128 = load i32, ptr %127, align 8, !tbaa !177
  %129 = and i32 %128, -8388609
  store i32 %129, ptr %127, align 8, !tbaa !177
  br label %180

130:                                              ; preds = %82
  %131 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 7, ptr %131, align 2, !tbaa !131
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 12
  %133 = load ptr, ptr %132, align 8, !tbaa !175
  %134 = icmp eq ptr %133, null
  br i1 %134, label %180, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.Bone, ptr %133, i64 0, i32 10
  %137 = load i32, ptr %136, align 8, !tbaa !177
  %138 = or i32 %137, 8388608
  store i32 %138, ptr %136, align 8, !tbaa !177
  br label %180

139:                                              ; preds = %82
  %140 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 5, ptr %140, align 2, !tbaa !131
  %141 = load i32, ptr %8, align 4, !tbaa !149
  %142 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 5
  store i32 %141, ptr %142, align 4, !tbaa !132
  br label %180

143:                                              ; preds = %82
  %144 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 6, ptr %144, align 2, !tbaa !131
  %145 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 5
  %146 = load i32, ptr %8, align 4, !tbaa !149
  store i32 %146, ptr %145, align 4, !tbaa !149
  %147 = getelementptr inbounds i32, ptr %8, i64 1
  %148 = load i32, ptr %147, align 4, !tbaa !149
  %149 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 6
  store i32 %148, ptr %149, align 4, !tbaa !149
  %150 = getelementptr inbounds i32, ptr %8, i64 2
  %151 = load i32, ptr %150, align 4, !tbaa !149
  %152 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 7
  store i32 %151, ptr %152, align 4, !tbaa !149
  br label %180

153:                                              ; preds = %82
  %154 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 0, ptr %154, align 2, !tbaa !131
  br label %180

155:                                              ; preds = %80
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #9
  %156 = tail call ptr @BKE_constraint_add_for_object(ptr noundef %3, ptr noundef nonnull @.str.52, i16 noundef signext 4) #9
  %157 = getelementptr inbounds %struct.bConstraint, ptr %156, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !179
  store ptr %4, ptr %158, align 8, !tbaa !181
  %159 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %160 = load i32, ptr %159, align 8, !tbaa !183
  %161 = sitofp i32 %160 to float
  call void @BKE_constraint_target_matrix_get(ptr noundef %2, ptr noundef %156, i32 noundef 0, i16 noundef signext 1, ptr noundef null, ptr noundef nonnull %11, float noundef %161) #9
  %162 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47, i64 3
  %163 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3
  %164 = load float, ptr %162, align 4, !tbaa !184
  %165 = load float, ptr %163, align 16, !tbaa !184
  %166 = fsub float %164, %165
  %167 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47, i64 3, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !184
  %169 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !184
  %171 = fsub float %168, %170
  %172 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47, i64 3, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !184
  %174 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3, i64 2
  %175 = load float, ptr %174, align 8, !tbaa !184
  %176 = fsub float %173, %175
  %177 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 33
  store float %166, ptr %177, align 4, !tbaa !184
  %178 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 33, i64 1
  store float %171, ptr %178, align 4, !tbaa !184
  %179 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 33, i64 2
  store float %176, ptr %179, align 4, !tbaa !184
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #9
  br label %202

180:                                              ; preds = %126, %121, %139, %153, %143, %130, %135, %83, %113, %119, %116, %105, %111, %108, %88, %104, %100, %96
  br i1 %13, label %181, label %198

181:                                              ; preds = %180
  %182 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %183 = load i16, ptr %182, align 8, !tbaa !48
  %184 = icmp eq i16 %183, 1
  br i1 %184, label %185, label %198

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %187 = load i16, ptr %186, align 8, !tbaa !48
  %188 = icmp eq i16 %187, 25
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  switch i32 %58, label %193 [
    i32 2, label %190
    i32 3, label %191
    i32 4, label %192
  ]

190:                                              ; preds = %189
  tail call void @create_vgroups_from_armature(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1, i8 noundef zeroext 0) #9
  br label %193

191:                                              ; preds = %189
  tail call void @create_vgroups_from_armature(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 2, i8 noundef zeroext %6) #9
  br label %193

192:                                              ; preds = %189
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #9
  tail call void @create_vgroups_from_armature(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 3, i8 noundef zeroext %6) #9
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #9
  br label %193

193:                                              ; preds = %189, %191, %192, %190
  %194 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 0, ptr %194, align 2, !tbaa !131
  call void @BKE_object_workob_calc_parent(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10) #9
  %195 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 48
  %196 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  %197 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %195, ptr noundef nonnull %196) #9
  br label %202

198:                                              ; preds = %180, %185, %181
  call void @BKE_object_workob_calc_parent(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10) #9
  %199 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 48
  %200 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  %201 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %199, ptr noundef nonnull %200) #9
  br label %202

202:                                              ; preds = %193, %198, %155
  call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 3) #9
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %10) #9
  br label %203

203:                                              ; preds = %56, %202, %17, %63, %55
  %204 = phi i8 [ 0, %63 ], [ 0, %55 ], [ 0, %17 ], [ 1, %202 ], [ 1, %56 ]
  ret i8 %204
}

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @verify_adt_action(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare ptr @verify_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @modifiers_isDeformedByCurve(ptr noundef) local_unnamed_addr #1

declare ptr @ED_object_modifier_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @modifiers_isDeformedByLattice(ptr noundef) local_unnamed_addr #1

declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_constraint_add_for_object(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BKE_constraint_target_matrix_get(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @create_vgroups_from_armature(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_object_workob_calc_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_parent_set(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @parent_set_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @parent_set_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @parent_set_ui, ptr %7, align 8, !tbaa !185
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_make_parent_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  %12 = load ptr, ptr %9, align 8, !tbaa !136
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #9
  %14 = load ptr, ptr %9, align 8, !tbaa !136
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parent_set_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @ED_object_active_context(ptr noundef %0) #9
  %7 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 0) #9
  %8 = tail call ptr @uiPupMenuLayout(ptr noundef %7) #9
  %9 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.55, i8 noundef zeroext 1) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %8, ptr noundef %9, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #9
  call void @RNA_enum_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.59, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %8, ptr noundef %9, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !186
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @RNA_enum_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.59, i32 noundef 1) #9
  %10 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !48
  switch i16 %11, label %19 [
    i16 25, label %12
    i16 2, label %13
    i16 22, label %17
  ]

12:                                               ; preds = %3
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 1) #9
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 2) #9
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 3) #9
  br label %13

13:                                               ; preds = %3, %12
  %14 = phi i32 [ 4, %12 ], [ 7, %3 ]
  %15 = phi i32 [ 5, %12 ], [ 8, %3 ]
  %16 = phi i32 [ 6, %12 ], [ 9, %3 ]
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %14) #9
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %15) #9
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ 10, %3 ], [ %16, %13 ]
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %18) #9
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i16, ptr %10, align 8, !tbaa !48
  switch i16 %20, label %22 [
    i16 1, label %21
    i16 3, label %21
    i16 2, label %21
    i16 22, label %21
  ]

21:                                               ; preds = %19, %19, %19, %19
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 11) #9
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 12) #9
  br label %22

22:                                               ; preds = %19, %21
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %7) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret i32 32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parent_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [3 x %struct.KDTreeNearest], align 16
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %9 = tail call ptr @ED_object_active_context(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.20) #9
  %13 = load ptr, ptr %10, align 8, !tbaa !144
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.56) #9
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %10, align 8, !tbaa !144
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.59) #9
  %18 = trunc i32 %17 to i8
  %19 = icmp eq i32 %12, 12
  %20 = add i32 %12, -11
  %21 = icmp ult i32 %20, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %22 = select i1 %21, ptr %5, ptr null
  br i1 %21, label %23, label %31

23:                                               ; preds = %2
  %24 = call ptr @BKE_object_as_kdtree(ptr noundef %9, ptr noundef nonnull %4) #9
  %25 = load i32, ptr %4, align 4, !tbaa !149
  %26 = select i1 %19, i32 3, i32 1
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !121
  call void @BKE_report(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.145) #9
  br label %31

31:                                               ; preds = %23, %28, %2
  %32 = phi ptr [ %24, %28 ], [ %24, %23 ], [ null, %2 ]
  %33 = phi i1 [ true, %28 ], [ false, %23 ], [ false, %2 ]
  br i1 %33, label %68, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %35 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %6) #9
  %36 = getelementptr inbounds i32, ptr %5, i64 1
  %37 = getelementptr inbounds i32, ptr %5, i64 2
  %38 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %3, i64 0, i64 1
  %39 = getelementptr inbounds i32, ptr %5, i64 1
  %40 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %3, i64 0, i64 2
  %41 = getelementptr inbounds i32, ptr %5, i64 2
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %43

43:                                               ; preds = %60, %34
  %44 = phi i8 [ 1, %34 ], [ %64, %60 ]
  %45 = phi ptr [ %6, %34 ], [ %46, %60 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !93
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.CollectionPointerLink, ptr %46, i64 0, i32 2, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !123
  br i1 %21, label %51, label %60

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 47, i64 3
  br i1 %19, label %53, label %58

53:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #9
  %54 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef %32, ptr noundef nonnull %52, ptr noundef null, ptr noundef nonnull %3, i32 noundef 3) #9
  %55 = load i32, ptr %3, align 16, !tbaa !187
  store i32 %55, ptr %5, align 4, !tbaa !149
  %56 = load i32, ptr %38, align 4, !tbaa !187
  store i32 %56, ptr %39, align 4, !tbaa !149
  %57 = load i32, ptr %40, align 8, !tbaa !187
  store i32 %57, ptr %41, align 4, !tbaa !149
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #9
  br label %60

58:                                               ; preds = %51
  %59 = call i32 @BLI_kdtree_find_nearest(ptr noundef %32, ptr noundef nonnull %52, ptr noundef null) #9
  store i32 %59, ptr %5, align 4, !tbaa !149
  store i32 0, ptr %36, align 4, !tbaa !149
  store i32 0, ptr %37, align 4, !tbaa !149
  br label %60

60:                                               ; preds = %58, %53, %48
  %61 = load ptr, ptr %42, align 8, !tbaa !121
  %62 = call zeroext i8 @ED_object_parent_set(ptr noundef %61, ptr noundef %7, ptr noundef %8, ptr noundef %50, ptr noundef %9, i32 noundef %12, i8 noundef zeroext %15, i8 noundef zeroext %18, ptr noundef %22), !range !189
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %63, i8 0, i8 %44
  br i1 %63, label %65, label %43

65:                                               ; preds = %60, %43
  %66 = phi i8 [ %64, %60 ], [ %44, %43 ]
  call void @BLI_freelistN(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  %67 = icmp eq i8 %66, 0
  br label %68

68:                                               ; preds = %65, %31
  %69 = phi i1 [ %67, %65 ], [ true, %31 ]
  br i1 %21, label %70, label %71

70:                                               ; preds = %68
  call void @BLI_kdtree_free(ptr noundef %32) #9
  br label %71

71:                                               ; preds = %70, %68
  br i1 %69, label %73, label %72

72:                                               ; preds = %71
  call void @DAG_relations_tag_update(ptr noundef %7) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85786624, ptr noundef null) #9
  br label %73

73:                                               ; preds = %71, %72
  %74 = phi i32 [ 4, %72 ], [ 2, %71 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal void @parent_set_ui(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !191
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %3) #9
  %13 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @parent_set_draw_check_prop, i8 noundef zeroext 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_parent_no_inverse_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.64, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @parent_noinv_set_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parent_noinv_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #9
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 1) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %6 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #9
  %7 = load ptr, ptr %3, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %11

11:                                               ; preds = %9, %26
  %12 = phi ptr [ %7, %9 ], [ %27, %26 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = call zeroext i8 @BKE_object_parent_loop_check(ptr noundef %5, ptr noundef %14) #9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %10, align 8, !tbaa !121
  call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.51) #9
  br label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 48
  call void @unit_m4(ptr noundef nonnull %22) #9
  %23 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %23, i8 0, i64 12, i1 false)
  call void @DAG_id_tag_update(ptr noundef %14, i16 noundef signext 3) #9
  %24 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 9
  store ptr %5, ptr %24, align 8, !tbaa !127
  %25 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 4
  store i16 0, ptr %25, align 2, !tbaa !131
  br label %26

26:                                               ; preds = %19, %21, %11
  %27 = load ptr, ptr %12, align 8, !tbaa !93
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %11, !llvm.loop !192

29:                                               ; preds = %26, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @DAG_relations_tag_update(ptr noundef %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_slow_parent_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_slow_parent_clear_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_slow_parent_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = load ptr, ptr %3, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2, %24
  %9 = phi ptr [ %25, %24 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !131
  %18 = and i16 %17, 16
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = add nsw i16 %17, -16
  store i16 %21, ptr %16, align 2, !tbaa !131
  call void @BKE_object_where_is_calc(ptr noundef %4, ptr noundef %11) #9
  %22 = load i16, ptr %16, align 2, !tbaa !131
  %23 = or i16 %22, 16
  store i16 %23, ptr %16, align 2, !tbaa !131
  call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 1) #9
  br label %24

24:                                               ; preds = %15, %20, %8
  %25 = load ptr, ptr %9, align 8, !tbaa !93
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !193

27:                                               ; preds = %24, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108864, ptr noundef %4) #9
  ret i32 4
}

declare i32 @ED_operator_view3d_active(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_slow_parent_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.69, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_slow_parent_set_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_slow_parent_set_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = load ptr, ptr %3, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %19
  %9 = phi ptr [ %20, %19 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !131
  %18 = or i16 %17, 16
  store i16 %18, ptr %16, align 2, !tbaa !131
  br label %19

19:                                               ; preds = %15, %8
  call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 1) #9
  %20 = load ptr, ptr %9, align 8, !tbaa !93
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !194

22:                                               ; preds = %19, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108864, ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_track_clear(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.71, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.72, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_track_clear_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_clear_track_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !137
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_track_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.20) #9
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.146) #9
  br label %45

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %14 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #9
  %15 = load ptr, ptr %3, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %7, 2
  br label %19

19:                                               ; preds = %17, %41
  %20 = phi ptr [ %15, %17 ], [ %42, %41 ]
  %21 = getelementptr inbounds %struct.CollectionPointerLink, ptr %20, i64 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 10
  store ptr null, ptr %23, align 8, !tbaa !195
  call void @DAG_id_tag_update(ptr noundef %22, i16 noundef signext 7) #9
  %24 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 106
  %25 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 106, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !196
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %19, %36
  %29 = phi ptr [ %31, %36 ], [ %26, %19 ]
  %30 = getelementptr inbounds %struct.bConstraint, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !197
  %32 = getelementptr inbounds %struct.bConstraint, ptr %29, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !198
  switch i16 %33, label %36 [
    i16 2, label %34
    i16 13, label %34
    i16 21, label %34
  ]

34:                                               ; preds = %28, %28, %28
  %35 = call zeroext i8 @BKE_constraint_remove(ptr noundef nonnull %24, ptr noundef nonnull %29) #9
  br label %36

36:                                               ; preds = %28, %34
  %37 = icmp eq ptr %31, null
  br i1 %37, label %38, label %28, !llvm.loop !199

38:                                               ; preds = %36, %19
  br i1 %18, label %39, label %41

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef %22, ptr noundef nonnull %40, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %41

41:                                               ; preds = %39, %38
  %42 = load ptr, ptr %20, align 8, !tbaa !93
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %19, !llvm.loop !200

44:                                               ; preds = %41, %13
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @DAG_relations_tag_update(ptr noundef %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  br label %45

45:                                               ; preds = %44, %10
  %46 = phi i32 [ 2, %10 ], [ 4, %44 ]
  ret i32 %46
}

declare i32 @ED_operator_objectmode(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_track_set(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.74, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.75, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.76, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @track_set_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_make_track_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !137
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @track_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.20) #9
  switch i32 %10, label %82 [
    i32 1, label %11
    i32 2, label %34
    i32 3, label %58
  ]

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %12 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #9
  %13 = load ptr, ptr %3, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %11, %30
  %16 = phi ptr [ %31, %30 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = call ptr @BKE_constraint_add_for_object(ptr noundef %18, ptr noundef nonnull @.str.148, i16 noundef signext 21) #9
  %22 = getelementptr inbounds %struct.bConstraint, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !179
  store ptr %7, ptr %23, align 8, !tbaa !201
  call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 7) #9
  %24 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !48
  %26 = add i16 %25, -10
  %27 = icmp ult i16 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %23, i64 0, i32 1
  store i32 5, ptr %29, align 8, !tbaa !203
  br label %30

30:                                               ; preds = %20, %28, %15
  %31 = load ptr, ptr %16, align 8, !tbaa !93
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15, !llvm.loop !204

33:                                               ; preds = %30, %11
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %82

34:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %35 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #9
  %36 = load ptr, ptr %4, align 8, !tbaa !93
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %34, %54
  %39 = phi ptr [ %55, %54 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.CollectionPointerLink, ptr %39, i64 0, i32 2, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !123
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = call ptr @BKE_constraint_add_for_object(ptr noundef %41, ptr noundef nonnull @.str.148, i16 noundef signext 2) #9
  %45 = getelementptr inbounds %struct.bConstraint, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !179
  store ptr %7, ptr %46, align 8, !tbaa !205
  call void @DAG_id_tag_update(ptr noundef %41, i16 noundef signext 7) #9
  %47 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 3
  %48 = load i16, ptr %47, align 8, !tbaa !48
  %49 = add i16 %48, -10
  %50 = icmp ult i16 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.bTrackToConstraint, ptr %46, i64 0, i32 1
  store i32 5, ptr %52, align 8, !tbaa !207
  %53 = getelementptr inbounds %struct.bTrackToConstraint, ptr %46, i64 0, i32 2
  store i32 1, ptr %53, align 4, !tbaa !208
  br label %54

54:                                               ; preds = %43, %51, %38
  %55 = load ptr, ptr %39, align 8, !tbaa !93
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %38, !llvm.loop !209

57:                                               ; preds = %54, %34
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %82

58:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %59 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %5) #9
  %60 = load ptr, ptr %5, align 8, !tbaa !93
  %61 = icmp eq ptr %60, null
  br i1 %61, label %81, label %62

62:                                               ; preds = %58, %78
  %63 = phi ptr [ %79, %78 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.CollectionPointerLink, ptr %63, i64 0, i32 2, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !123
  %66 = icmp eq ptr %65, %7
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = call ptr @BKE_constraint_add_for_object(ptr noundef %65, ptr noundef nonnull @.str.148, i16 noundef signext 13) #9
  %69 = getelementptr inbounds %struct.bConstraint, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !179
  store ptr %7, ptr %70, align 8, !tbaa !210
  call void @DAG_id_tag_update(ptr noundef %65, i16 noundef signext 7) #9
  %71 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 3
  %72 = load i16, ptr %71, align 8, !tbaa !48
  %73 = add i16 %72, -10
  %74 = icmp ult i16 %73, 3
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %70, i64 0, i32 1
  store i32 5, ptr %76, align 8, !tbaa !212
  %77 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %70, i64 0, i32 2
  store i32 1, ptr %77, align 4, !tbaa !213
  br label %78

78:                                               ; preds = %67, %75, %62
  %79 = load ptr, ptr %63, align 8, !tbaa !93
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %62, !llvm.loop !214

81:                                               ; preds = %78, %58
  call void @BLI_freelistN(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %82

82:                                               ; preds = %2, %81, %57, %33
  call void @DAG_relations_tag_update(ptr noundef %6) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_move_to_layer(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.77, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.78, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.79, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @move_to_layer_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @move_to_layer_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %9, ptr noundef nonnull @.str.80, i32 noundef 20, ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.22) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @move_to_layer_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !215
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @WM_operator_confirm_message(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.155) #9
  br label %15

12:                                               ; preds = %6, %3
  %13 = tail call fastcc i32 @move_to_layer_init(ptr noundef %0, ptr noundef %1)
  %14 = tail call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @move_to_layer_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %8 = tail call fastcc i32 @move_to_layer_init(ptr noundef %0, ptr noundef %1)
  %9 = and i32 %8, 16777215
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %63, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %7, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !215
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %18 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #9
  %19 = load ptr, ptr %3, align 8, !tbaa !93
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 22
  %23 = load i32, ptr %22, align 8, !tbaa !217
  %24 = xor i32 %23, -1
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %19, %21 ], [ %41, %25 ]
  %27 = getelementptr inbounds %struct.CollectionPointerLink, ptr %26, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !147
  %31 = and i32 %30, %24
  store i32 %31, ptr %29, align 8, !tbaa !147
  %32 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !129
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 52
  store i32 %31, ptr %34, align 8, !tbaa !148
  %35 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 53
  %36 = load i16, ptr %35, align 4, !tbaa !218
  %37 = and i16 %36, -2
  store i16 %37, ptr %35, align 4, !tbaa !218
  %38 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !219
  %40 = and i32 %39, -2
  store i32 %40, ptr %38, align 8, !tbaa !219
  %41 = load ptr, ptr %26, align 8, !tbaa !93
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25, !llvm.loop !220

43:                                               ; preds = %25, %17
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %62

44:                                               ; preds = %13, %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %45 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %4) #9
  %46 = load ptr, ptr %4, align 8, !tbaa !93
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %44, %48
  %49 = phi ptr [ %59, %48 ], [ %46, %44 ]
  %50 = getelementptr inbounds %struct.CollectionPointerLink, ptr %49, i64 0, i32 2, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !123
  %52 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !147
  %54 = and i32 %53, -16777216
  %55 = or disjoint i32 %54, %9
  store i32 %55, ptr %52, align 8, !tbaa !147
  %56 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !129
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 52
  store i32 %9, ptr %58, align 8, !tbaa !148
  %59 = load ptr, ptr %49, align 8, !tbaa !93
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %48, !llvm.loop !221

61:                                               ; preds = %48, %44
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %62

62:                                               ; preds = %61, %43
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %6) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73728000, ptr noundef %6) #9
  call void @DAG_relations_tag_update(ptr noundef %5) #9
  br label %63

63:                                               ; preds = %2, %62
  %64 = phi i32 [ 4, %62 ], [ 2, %2 ]
  ret i32 %64
}

declare ptr @RNA_def_boolean_layer_member(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_object_scene_link(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_scene_base_find(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @BKE_scene_base_add(ptr noundef %0, ptr noundef %1) #9
  tail call void @id_us_plus(ptr noundef %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_scene_base_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_make_links_scene(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.82, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.83, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.84, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_links_scene_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.85, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.22) #9
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @RNA_scene_local_itemf) #9
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !137
  ret void
}

declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_links_scene_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.85) #9
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %8) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.156) #9
  br label %45

14:                                               ; preds = %2
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %16 = icmp eq ptr %9, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !121
  tail call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.157) #9
  br label %45

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !138
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !121
  tail call void @BKE_report(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.158) #9
  br label %45

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %28 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #9
  %29 = load ptr, ptr %3, align 8, !tbaa !93
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %27, %41
  %32 = phi ptr [ %42, %41 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.CollectionPointerLink, ptr %32, i64 0, i32 2, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !123
  %35 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !129
  %37 = call ptr @BKE_scene_base_find(ptr noundef nonnull %9, ptr noundef %36) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call ptr @BKE_scene_base_add(ptr noundef nonnull %9, ptr noundef %36) #9
  call void @id_us_plus(ptr noundef %36) #9
  br label %41

41:                                               ; preds = %31, %39
  %42 = load ptr, ptr %32, align 8, !tbaa !93
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31, !llvm.loop !222

44:                                               ; preds = %41, %27
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef null) #9
  br label %45

45:                                               ; preds = %44, %24, %17, %11
  %46 = phi i32 [ 2, %11 ], [ 2, %17 ], [ 2, %24 ], [ 4, %44 ]
  ret i32 %46
}

declare ptr @RNA_scene_local_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_make_links_data(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_links_data_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef nonnull @OBJECT_OT_make_links_data.make_links_items, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !137
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_links_data_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.20) #9
  %9 = tail call ptr @ED_object_active_context(ptr noundef %0) #9
  %10 = icmp eq i32 %8, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_object_groups(ptr noundef %9) #9
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %12, %11 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %15 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #9
  %16 = load ptr, ptr %3, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %187, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %20 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %21 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %22 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %23 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %24 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %25 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 112
  %26 = icmp eq ptr %14, null
  %27 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %28 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 31
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  br label %30

30:                                               ; preds = %18, %179
  %31 = phi ptr [ %16, %18 ], [ %182, %179 ]
  %32 = phi i8 [ 0, %18 ], [ %181, %179 ]
  %33 = phi i8 [ 0, %18 ], [ %180, %179 ]
  %34 = getelementptr inbounds %struct.CollectionPointerLink, ptr %31, i64 0, i32 2, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !123
  %36 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !129
  %38 = icmp eq ptr %9, %37
  br i1 %38, label %179, label %39

39:                                               ; preds = %30
  switch i32 %8, label %179 [
    i32 1, label %40
    i32 2, label %47
    i32 3, label %75
    i32 4, label %75
    i32 5, label %75
    i32 6, label %56
    i32 7, label %63
  ]

40:                                               ; preds = %39
  %41 = load i16, ptr %23, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 3
  %43 = load i16, ptr %42, align 8, !tbaa !48
  %44 = icmp ne i16 %41, %43
  %45 = icmp eq i16 %41, 0
  %46 = or i1 %45, %44
  br i1 %46, label %179, label %75

47:                                               ; preds = %39
  %48 = load i16, ptr %22, align 8, !tbaa !48
  %49 = add i16 %48, -1
  %50 = icmp ult i16 %49, 5
  br i1 %50, label %51, label %179

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !48
  %54 = add i16 %53, -1
  %55 = icmp ult i16 %54, 5
  br i1 %55, label %75, label %179

56:                                               ; preds = %39
  %57 = load i16, ptr %21, align 8, !tbaa !48
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %179, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 3
  %61 = load i16, ptr %60, align 8, !tbaa !48
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %179, label %75

63:                                               ; preds = %39
  %64 = load ptr, ptr %19, align 8, !tbaa !55
  %65 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 19
  %66 = load ptr, ptr %65, align 8, !tbaa !55
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %179, label %68

68:                                               ; preds = %63
  %69 = load i16, ptr %20, align 8, !tbaa !48
  %70 = icmp eq i16 %69, 4
  br i1 %70, label %71, label %179

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 3
  %73 = load i16, ptr %72, align 8, !tbaa !48
  %74 = icmp eq i16 %73, 4
  br i1 %74, label %75, label %179

75:                                               ; preds = %71, %59, %51, %40, %39, %39, %39
  %76 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 19
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  switch i32 %8, label %179 [
    i32 1, label %81
    i32 2, label %78
    i32 3, label %94
    i32 4, label %108
    i32 5, label %124
    i32 6, label %132
    i32 7, label %133
  ]

78:                                               ; preds = %75
  %79 = load i32, ptr %28, align 8, !tbaa !223
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %86, label %93

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.ID, ptr %77, i64 0, i32 6
  %83 = load i32, ptr %82, align 4, !tbaa !224
  %84 = add nsw i32 %83, -1
  store i32 %84, ptr %82, align 4, !tbaa !224
  %85 = load ptr, ptr %29, align 8, !tbaa !55
  call void @id_us_plus(ptr noundef %85) #9
  store ptr %85, ptr %76, align 8, !tbaa !55
  call void @test_object_materials(ptr noundef %4, ptr noundef %85) #9
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 2) #9
  br label %179

86:                                               ; preds = %78, %86
  %87 = phi i32 [ %88, %86 ], [ 0, %78 ]
  %88 = add nuw nsw i32 %87, 1
  %89 = trunc i32 %88 to i16
  %90 = call ptr @give_current_material(ptr noundef %9, i16 noundef signext %89) #9
  call void @assign_material(ptr noundef %37, ptr noundef %90, i16 noundef signext %89, i32 noundef 0) #9
  %91 = load i32, ptr %28, align 8, !tbaa !223
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %86, label %93, !llvm.loop !225

93:                                               ; preds = %86, %78
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 0) #9
  br label %179

94:                                               ; preds = %75
  %95 = call zeroext i8 @BKE_copy_animdata_id(ptr noundef %37, ptr noundef %9, i8 noundef zeroext 0) #9
  %96 = load ptr, ptr %76, align 8, !tbaa !55
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %27, align 8, !tbaa !55
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.ID, ptr %77, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !226
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %179

105:                                              ; preds = %101
  %106 = call zeroext i8 @BKE_copy_animdata_id(ptr noundef nonnull %96, ptr noundef nonnull %99, i8 noundef zeroext 0) #9
  br label %107

107:                                              ; preds = %105, %98, %94
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 7) #9
  br label %179

108:                                              ; preds = %75
  call void @BKE_object_groups_clear(ptr noundef %5, ptr noundef %35, ptr noundef %37) #9
  br i1 %26, label %179, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 112
  br label %111

111:                                              ; preds = %109, %120
  %112 = phi ptr [ %14, %109 ], [ %122, %120 ]
  %113 = phi i8 [ %32, %109 ], [ %121, %120 ]
  %114 = load ptr, ptr %110, align 8, !tbaa !139
  %115 = getelementptr inbounds %struct.LinkNode, ptr %112, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !227
  %117 = icmp eq ptr %114, %116
  br i1 %117, label %120, label %118

118:                                              ; preds = %111
  %119 = call zeroext i8 @BKE_group_object_add(ptr noundef %116, ptr noundef %37, ptr noundef %5, ptr noundef %35) #9
  br label %120

120:                                              ; preds = %111, %118
  %121 = phi i8 [ %113, %118 ], [ 1, %111 ]
  %122 = load ptr, ptr %112, align 8, !tbaa !229
  %123 = icmp eq ptr %122, null
  br i1 %123, label %179, label %111, !llvm.loop !230

124:                                              ; preds = %75
  %125 = load ptr, ptr %25, align 8, !tbaa !139
  %126 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 112
  store ptr %125, ptr %126, align 8, !tbaa !139
  %127 = icmp eq ptr %125, null
  br i1 %127, label %179, label %128

128:                                              ; preds = %124
  call void @id_lib_extern(ptr noundef nonnull %125) #9
  %129 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 55
  %130 = load i16, ptr %129, align 8, !tbaa !231
  %131 = or i16 %130, 256
  store i16 %131, ptr %129, align 8, !tbaa !231
  br label %179

132:                                              ; preds = %75
  call void @BKE_object_link_modifiers(ptr noundef %37, ptr noundef %9) #9
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 7) #9
  br label %179

133:                                              ; preds = %75
  %134 = load ptr, ptr %24, align 8, !tbaa !55
  %135 = getelementptr inbounds %struct.ID, ptr %77, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !226
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %179

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.Curve, ptr %77, i64 0, i32 55
  %140 = load ptr, ptr %139, align 8, !tbaa !232
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ID, ptr %140, i64 0, i32 6
  %144 = load i32, ptr %143, align 4, !tbaa !233
  %145 = add nsw i32 %144, -1
  store i32 %145, ptr %143, align 4, !tbaa !233
  br label %146

146:                                              ; preds = %142, %138
  %147 = getelementptr inbounds %struct.Curve, ptr %134, i64 0, i32 55
  %148 = load ptr, ptr %147, align 8, !tbaa !232
  store ptr %148, ptr %139, align 8, !tbaa !232
  call void @id_us_plus(ptr noundef %148) #9
  %149 = getelementptr inbounds %struct.Curve, ptr %77, i64 0, i32 56
  %150 = load ptr, ptr %149, align 8, !tbaa !235
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.ID, ptr %150, i64 0, i32 6
  %154 = load i32, ptr %153, align 4, !tbaa !233
  %155 = add nsw i32 %154, -1
  store i32 %155, ptr %153, align 4, !tbaa !233
  br label %156

156:                                              ; preds = %152, %146
  %157 = getelementptr inbounds %struct.Curve, ptr %134, i64 0, i32 56
  %158 = load ptr, ptr %157, align 8, !tbaa !235
  store ptr %158, ptr %149, align 8, !tbaa !235
  call void @id_us_plus(ptr noundef %158) #9
  %159 = getelementptr inbounds %struct.Curve, ptr %77, i64 0, i32 57
  %160 = load ptr, ptr %159, align 8, !tbaa !236
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.ID, ptr %160, i64 0, i32 6
  %164 = load i32, ptr %163, align 4, !tbaa !233
  %165 = add nsw i32 %164, -1
  store i32 %165, ptr %163, align 4, !tbaa !233
  br label %166

166:                                              ; preds = %162, %156
  %167 = getelementptr inbounds %struct.Curve, ptr %134, i64 0, i32 57
  %168 = load ptr, ptr %167, align 8, !tbaa !236
  store ptr %168, ptr %159, align 8, !tbaa !236
  call void @id_us_plus(ptr noundef %168) #9
  %169 = getelementptr inbounds %struct.Curve, ptr %77, i64 0, i32 58
  %170 = load ptr, ptr %169, align 8, !tbaa !237
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.ID, ptr %170, i64 0, i32 6
  %174 = load i32, ptr %173, align 4, !tbaa !233
  %175 = add nsw i32 %174, -1
  store i32 %175, ptr %173, align 4, !tbaa !233
  br label %176

176:                                              ; preds = %172, %166
  %177 = getelementptr inbounds %struct.Curve, ptr %134, i64 0, i32 58
  %178 = load ptr, ptr %177, align 8, !tbaa !237
  store ptr %178, ptr %169, align 8, !tbaa !237
  call void @id_us_plus(ptr noundef %178) #9
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 7) #9
  br label %179

179:                                              ; preds = %120, %108, %39, %40, %47, %51, %56, %59, %63, %68, %71, %176, %133, %101, %124, %128, %75, %132, %107, %93, %81, %30
  %180 = phi i8 [ %33, %75 ], [ %33, %132 ], [ %33, %128 ], [ %33, %124 ], [ %33, %107 ], [ %33, %93 ], [ %33, %81 ], [ %33, %30 ], [ 1, %101 ], [ %33, %176 ], [ 1, %133 ], [ %33, %71 ], [ %33, %68 ], [ %33, %63 ], [ %33, %59 ], [ %33, %56 ], [ %33, %51 ], [ %33, %47 ], [ %33, %40 ], [ %33, %39 ], [ %33, %108 ], [ %33, %120 ]
  %181 = phi i8 [ %32, %75 ], [ %32, %132 ], [ %32, %128 ], [ %32, %124 ], [ %32, %107 ], [ %32, %93 ], [ %32, %81 ], [ %32, %30 ], [ %32, %101 ], [ %32, %176 ], [ %32, %133 ], [ %32, %71 ], [ %32, %68 ], [ %32, %63 ], [ %32, %59 ], [ %32, %56 ], [ %32, %51 ], [ %32, %47 ], [ %32, %40 ], [ %32, %39 ], [ %32, %108 ], [ %121, %120 ]
  %182 = load ptr, ptr %31, align 8, !tbaa !93
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %30, !llvm.loop !238

184:                                              ; preds = %179
  %185 = icmp eq i8 %181, 0
  %186 = icmp eq i8 %180, 0
  br label %187

187:                                              ; preds = %184, %13
  %188 = phi i1 [ true, %13 ], [ %186, %184 ]
  %189 = phi i1 [ true, %13 ], [ %185, %184 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br i1 %10, label %190, label %197

190:                                              ; preds = %187
  %191 = icmp eq ptr %14, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %190
  call void @BLI_linklist_free(ptr noundef nonnull %14, ptr noundef null) #9
  br label %193

193:                                              ; preds = %192, %190
  br i1 %189, label %197, label %194

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %196 = load ptr, ptr %195, align 8, !tbaa !121
  call void @BKE_report(ptr noundef %196, i32 noundef 16, ptr noundef nonnull @.str.159) #9
  br label %197

197:                                              ; preds = %193, %194, %187
  br i1 %188, label %201, label %198

198:                                              ; preds = %197
  %199 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %200 = load ptr, ptr %199, align 8, !tbaa !121
  call void @BKE_report(ptr noundef %200, i32 noundef 16, ptr noundef nonnull @.str.160) #9
  br label %201

201:                                              ; preds = %198, %197
  call void @DAG_relations_tag_update(ptr noundef %4) #9
  %202 = call ptr @CTX_wm_view3d(ptr noundef %0) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %202) #9
  %203 = call ptr @CTX_wm_view3d(ptr noundef %0) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef %203) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 83886080, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_single_user(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %17, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = icmp eq ptr %10, %2
  %12 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !219
  %14 = and i32 %13, -1025
  %15 = select i1 %11, i32 1024, i32 0
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %12, align 8, !tbaa !219
  %17 = load ptr, ptr %8, align 8, !tbaa !93
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !239

19:                                               ; preds = %7, %3
  tail call fastcc void @single_object_users(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 1024, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @single_object_users(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #2 {
  tail call void @clear_sca_new_poins() #9
  %6 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !240
  %12 = load ptr, ptr %10, align 8, !tbaa !93
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !241

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %14
  %19 = icmp eq i8 %4, 0
  br label %20

20:                                               ; preds = %18, %53
  %21 = phi ptr [ %16, %18 ], [ %54, %53 ]
  %22 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  %24 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !219
  %26 = and i32 %25, %3
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !142
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !242
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = tail call ptr @BKE_object_copy(ptr noundef %23) #9
  store ptr %37, ptr %22, align 8, !tbaa !129
  br i1 %19, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 53
  %40 = load i16, ptr %39, align 4, !tbaa !218
  %41 = and i16 %40, 4096
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 53
  %45 = load i16, ptr %44, align 4, !tbaa !218
  %46 = or i16 %45, 4096
  store i16 %46, ptr %44, align 4, !tbaa !218
  br label %47

47:                                               ; preds = %36, %38, %43
  %48 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 53
  %49 = load i16, ptr %48, align 4, !tbaa !218
  %50 = sext i16 %49 to i32
  store i32 %50, ptr %24, align 8, !tbaa !219
  %51 = load i32, ptr %33, align 4, !tbaa !242
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %33, align 4, !tbaa !242
  br label %53

53:                                               ; preds = %20, %47, %32, %28
  %54 = load ptr, ptr %21, align 8, !tbaa !93
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %20, !llvm.loop !243

56:                                               ; preds = %53, %14
  %57 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %58 = load ptr, ptr %57, align 8, !tbaa !93
  %59 = icmp eq ptr %58, null
  br i1 %59, label %97, label %60

60:                                               ; preds = %56
  %61 = icmp eq i8 %4, 0
  br label %62

62:                                               ; preds = %60, %94
  %63 = phi ptr [ %58, %60 ], [ %95, %94 ]
  %64 = getelementptr inbounds %struct.ID, ptr %63, i64 0, i32 2
  store ptr null, ptr %64, align 8, !tbaa !244
  br i1 %61, label %94, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.Group, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !245
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %69

69:                                               ; preds = %65, %78
  %70 = phi ptr [ %79, %78 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct.GroupObject, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !145
  %73 = icmp eq ptr %72, null
  br i1 %73, label %94, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.ID, ptr %72, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !240
  %77 = icmp eq ptr %76, null
  br i1 %77, label %94, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %70, align 8, !tbaa !246
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %69, !llvm.loop !247

81:                                               ; preds = %78
  %82 = tail call ptr @BKE_group_copy(ptr noundef nonnull %63) #9
  %83 = getelementptr inbounds %struct.Group, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !93
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %92, %86 ], [ %84, %81 ]
  %88 = getelementptr inbounds %struct.GroupObject, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !145
  %90 = getelementptr inbounds %struct.ID, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !240
  store ptr %91, ptr %88, align 8, !tbaa !145
  %92 = load ptr, ptr %87, align 8, !tbaa !93
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %86, !llvm.loop !248

94:                                               ; preds = %74, %69, %86, %81, %62, %65
  %95 = load ptr, ptr %63, align 8, !tbaa !93
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %62, !llvm.loop !249

97:                                               ; preds = %94, %56
  tail call void @BKE_scene_groups_relink(ptr noundef %1) #9
  %98 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !250
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ID, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !240
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store ptr %103, ptr %98, align 8, !tbaa !250
  br label %106

106:                                              ; preds = %105, %101, %97
  %107 = icmp eq ptr %2, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 15
  %110 = load ptr, ptr %109, align 8, !tbaa !251
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.ID, ptr %110, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !240
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  store ptr %114, ptr %109, align 8, !tbaa !251
  br label %117

117:                                              ; preds = %108, %112, %116, %106
  %118 = load ptr, ptr %15, align 8, !tbaa !93
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %117, %120
  %121 = phi ptr [ %124, %120 ], [ %118, %117 ]
  %122 = getelementptr inbounds %struct.Base, ptr %121, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !129
  tail call void @BKE_object_relink(ptr noundef %123) #9
  %124 = load ptr, ptr %121, align 8, !tbaa !93
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %120, !llvm.loop !252

126:                                              ; preds = %120, %117
  tail call void @set_sca_new_poins() #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_single_users(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  tail call fastcc void @single_object_users(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i8 noundef zeroext %3)
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %376, label %6

6:                                                ; preds = %4
  tail call fastcc void @single_obdata_users(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6, %18
  %11 = phi ptr [ %19, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !142
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @DAG_id_tag_update(ptr noundef %13, i16 noundef signext 2) #9
  tail call void @BKE_copy_animdata_id_action(ptr noundef %13) #9
  br label %18

18:                                               ; preds = %17, %10
  %19 = load ptr, ptr %11, align 8, !tbaa !93
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !253

21:                                               ; preds = %18, %6
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = icmp eq ptr %23, null
  br i1 %24, label %71, label %25

25:                                               ; preds = %21, %68
  %26 = phi ptr [ %69, %68 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 5
  %28 = load i16, ptr %27, align 2, !tbaa !254
  %29 = and i16 %28, 256
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %68, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 29
  %33 = load ptr, ptr %32, align 8, !tbaa !255
  %34 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 31
  %35 = load i32, ptr %34, align 8, !tbaa !223
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = zext nneg i32 %35 to i64
  br label %39

39:                                               ; preds = %65, %37
  %40 = phi i64 [ 0, %37 ], [ %66, %65 ]
  %41 = getelementptr inbounds ptr, ptr %33, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !93
  %43 = icmp eq ptr %42, null
  br i1 %43, label %65, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !226
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !256
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  store ptr %50, ptr %41, align 8, !tbaa !93
  %53 = load ptr, ptr %49, align 8, !tbaa !256
  tail call void @id_us_plus(ptr noundef %53) #9
  %54 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !224
  %56 = add nsw i32 %55, -1
  store i32 %56, ptr %54, align 4, !tbaa !224
  br label %65

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !224
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = tail call ptr @BKE_material_copy(ptr noundef nonnull %42) #9
  store ptr %62, ptr %41, align 8, !tbaa !93
  %63 = load i32, ptr %58, align 4, !tbaa !224
  %64 = add nsw i32 %63, -1
  store i32 %64, ptr %58, align 4, !tbaa !224
  store ptr %62, ptr %49, align 8, !tbaa !256
  br label %65

65:                                               ; preds = %61, %57, %52, %44, %39
  %66 = add nuw nsw i64 %40, 1
  %67 = icmp eq i64 %66, %38
  br i1 %67, label %68, label %39, !llvm.loop !257

68:                                               ; preds = %65, %31, %25
  %69 = load ptr, ptr %26, align 8, !tbaa !93
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !258

71:                                               ; preds = %68, %21
  %72 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %73 = load ptr, ptr %72, align 8, !tbaa !93
  %74 = icmp eq ptr %73, null
  br i1 %74, label %121, label %75

75:                                               ; preds = %71, %118
  %76 = phi ptr [ %119, %118 ], [ %73, %71 ]
  %77 = getelementptr inbounds %struct.ID, ptr %76, i64 0, i32 5
  %78 = load i16, ptr %77, align 2, !tbaa !259
  %79 = and i16 %78, 256
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %118, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.Mesh, ptr %76, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !260
  %84 = getelementptr inbounds %struct.Mesh, ptr %76, i64 0, i32 47
  %85 = load i16, ptr %84, align 2, !tbaa !261
  %86 = icmp sgt i16 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = zext nneg i16 %85 to i64
  br label %89

89:                                               ; preds = %115, %87
  %90 = phi i64 [ 0, %87 ], [ %116, %115 ]
  %91 = getelementptr inbounds ptr, ptr %83, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !93
  %93 = icmp eq ptr %92, null
  br i1 %93, label %115, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ID, ptr %92, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !226
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ID, ptr %92, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !256
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  store ptr %100, ptr %91, align 8, !tbaa !93
  %103 = load ptr, ptr %99, align 8, !tbaa !256
  tail call void @id_us_plus(ptr noundef %103) #9
  %104 = getelementptr inbounds %struct.ID, ptr %92, i64 0, i32 6
  %105 = load i32, ptr %104, align 4, !tbaa !224
  %106 = add nsw i32 %105, -1
  store i32 %106, ptr %104, align 4, !tbaa !224
  br label %115

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.ID, ptr %92, i64 0, i32 6
  %109 = load i32, ptr %108, align 4, !tbaa !224
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = tail call ptr @BKE_material_copy(ptr noundef nonnull %92) #9
  store ptr %112, ptr %91, align 8, !tbaa !93
  %113 = load i32, ptr %108, align 4, !tbaa !224
  %114 = add nsw i32 %113, -1
  store i32 %114, ptr %108, align 4, !tbaa !224
  store ptr %112, ptr %99, align 8, !tbaa !256
  br label %115

115:                                              ; preds = %111, %107, %102, %94, %89
  %116 = add nuw nsw i64 %90, 1
  %117 = icmp eq i64 %116, %88
  br i1 %117, label %118, label %89, !llvm.loop !257

118:                                              ; preds = %115, %81, %75
  %119 = load ptr, ptr %76, align 8, !tbaa !93
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %75, !llvm.loop !262

121:                                              ; preds = %118, %71
  %122 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %123 = load ptr, ptr %122, align 8, !tbaa !93
  %124 = icmp eq ptr %123, null
  br i1 %124, label %171, label %125

125:                                              ; preds = %121, %168
  %126 = phi ptr [ %169, %168 ], [ %123, %121 ]
  %127 = getelementptr inbounds %struct.ID, ptr %126, i64 0, i32 5
  %128 = load i16, ptr %127, align 2, !tbaa !263
  %129 = and i16 %128, 256
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %168, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.Curve, ptr %126, i64 0, i32 10
  %133 = load ptr, ptr %132, align 8, !tbaa !264
  %134 = getelementptr inbounds %struct.Curve, ptr %126, i64 0, i32 22
  %135 = load i16, ptr %134, align 2, !tbaa !265
  %136 = icmp sgt i16 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %131
  %138 = zext nneg i16 %135 to i64
  br label %139

139:                                              ; preds = %165, %137
  %140 = phi i64 [ 0, %137 ], [ %166, %165 ]
  %141 = getelementptr inbounds ptr, ptr %133, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !93
  %143 = icmp eq ptr %142, null
  br i1 %143, label %165, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.ID, ptr %142, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !226
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ID, ptr %142, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !256
  %151 = icmp eq ptr %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  store ptr %150, ptr %141, align 8, !tbaa !93
  %153 = load ptr, ptr %149, align 8, !tbaa !256
  tail call void @id_us_plus(ptr noundef %153) #9
  %154 = getelementptr inbounds %struct.ID, ptr %142, i64 0, i32 6
  %155 = load i32, ptr %154, align 4, !tbaa !224
  %156 = add nsw i32 %155, -1
  store i32 %156, ptr %154, align 4, !tbaa !224
  br label %165

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.ID, ptr %142, i64 0, i32 6
  %159 = load i32, ptr %158, align 4, !tbaa !224
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = tail call ptr @BKE_material_copy(ptr noundef nonnull %142) #9
  store ptr %162, ptr %141, align 8, !tbaa !93
  %163 = load i32, ptr %158, align 4, !tbaa !224
  %164 = add nsw i32 %163, -1
  store i32 %164, ptr %158, align 4, !tbaa !224
  store ptr %162, ptr %149, align 8, !tbaa !256
  br label %165

165:                                              ; preds = %161, %157, %152, %144, %139
  %166 = add nuw nsw i64 %140, 1
  %167 = icmp eq i64 %166, %138
  br i1 %167, label %168, label %139, !llvm.loop !257

168:                                              ; preds = %165, %131, %125
  %169 = load ptr, ptr %126, align 8, !tbaa !93
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %125, !llvm.loop !266

171:                                              ; preds = %168, %121
  %172 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  %173 = load ptr, ptr %172, align 8, !tbaa !93
  %174 = icmp eq ptr %173, null
  br i1 %174, label %221, label %175

175:                                              ; preds = %171, %218
  %176 = phi ptr [ %219, %218 ], [ %173, %171 ]
  %177 = getelementptr inbounds %struct.ID, ptr %176, i64 0, i32 5
  %178 = load i16, ptr %177, align 2, !tbaa !267
  %179 = and i16 %178, 256
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %218, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.MetaBall, ptr %176, i64 0, i32 6
  %183 = load ptr, ptr %182, align 8, !tbaa !269
  %184 = getelementptr inbounds %struct.MetaBall, ptr %176, i64 0, i32 9
  %185 = load i16, ptr %184, align 2, !tbaa !270
  %186 = icmp sgt i16 %185, 0
  br i1 %186, label %187, label %218

187:                                              ; preds = %181
  %188 = zext nneg i16 %185 to i64
  br label %189

189:                                              ; preds = %215, %187
  %190 = phi i64 [ 0, %187 ], [ %216, %215 ]
  %191 = getelementptr inbounds ptr, ptr %183, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !93
  %193 = icmp eq ptr %192, null
  br i1 %193, label %215, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.ID, ptr %192, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !226
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %215

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.ID, ptr %192, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !256
  %201 = icmp eq ptr %200, null
  br i1 %201, label %207, label %202

202:                                              ; preds = %198
  store ptr %200, ptr %191, align 8, !tbaa !93
  %203 = load ptr, ptr %199, align 8, !tbaa !256
  tail call void @id_us_plus(ptr noundef %203) #9
  %204 = getelementptr inbounds %struct.ID, ptr %192, i64 0, i32 6
  %205 = load i32, ptr %204, align 4, !tbaa !224
  %206 = add nsw i32 %205, -1
  store i32 %206, ptr %204, align 4, !tbaa !224
  br label %215

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.ID, ptr %192, i64 0, i32 6
  %209 = load i32, ptr %208, align 4, !tbaa !224
  %210 = icmp sgt i32 %209, 1
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = tail call ptr @BKE_material_copy(ptr noundef nonnull %192) #9
  store ptr %212, ptr %191, align 8, !tbaa !93
  %213 = load i32, ptr %208, align 4, !tbaa !224
  %214 = add nsw i32 %213, -1
  store i32 %214, ptr %208, align 4, !tbaa !224
  store ptr %212, ptr %199, align 8, !tbaa !256
  br label %215

215:                                              ; preds = %211, %207, %202, %194, %189
  %216 = add nuw nsw i64 %190, 1
  %217 = icmp eq i64 %216, %188
  br i1 %217, label %218, label %189, !llvm.loop !257

218:                                              ; preds = %215, %181, %175
  %219 = load ptr, ptr %176, align 8, !tbaa !93
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %175, !llvm.loop !271

221:                                              ; preds = %218, %171
  %222 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %223 = load ptr, ptr %222, align 8, !tbaa !93
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %251, %221
  %226 = load ptr, ptr %222, align 8, !tbaa !93
  %227 = icmp eq ptr %226, null
  br i1 %227, label %292, label %254

228:                                              ; preds = %221, %251
  %229 = phi ptr [ %252, %251 ], [ %223, %221 ]
  %230 = getelementptr inbounds %struct.ID, ptr %229, i64 0, i32 5
  %231 = load i16, ptr %230, align 2, !tbaa !272
  %232 = and i16 %231, 256
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %251, label %234

234:                                              ; preds = %228, %248
  %235 = phi i64 [ %249, %248 ], [ 0, %228 ]
  %236 = getelementptr inbounds %struct.Material, ptr %229, i64 0, i32 102, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !93
  %238 = icmp eq ptr %237, null
  br i1 %238, label %248, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.MTex, ptr %237, i64 0, i32 4
  %241 = load ptr, ptr %240, align 8, !tbaa !276
  %242 = icmp eq ptr %241, null
  br i1 %242, label %248, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.ID, ptr %241, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !240
  %246 = icmp eq ptr %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  store ptr %245, ptr %240, align 8, !tbaa !276
  br label %248

248:                                              ; preds = %247, %243, %239, %234
  %249 = add nuw nsw i64 %235, 1
  %250 = icmp eq i64 %249, 18
  br i1 %250, label %251, label %234, !llvm.loop !278

251:                                              ; preds = %248, %228
  %252 = load ptr, ptr %229, align 8, !tbaa !93
  %253 = icmp eq ptr %252, null
  br i1 %253, label %225, label %228, !llvm.loop !279

254:                                              ; preds = %225, %289
  %255 = phi ptr [ %290, %289 ], [ %226, %225 ]
  %256 = getelementptr inbounds %struct.ID, ptr %255, i64 0, i32 5
  %257 = load i16, ptr %256, align 2, !tbaa !272
  %258 = and i16 %257, 256
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %289, label %260

260:                                              ; preds = %254, %286
  %261 = phi i64 [ %287, %286 ], [ 0, %254 ]
  %262 = getelementptr inbounds %struct.Material, ptr %255, i64 0, i32 102, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !93
  %264 = icmp eq ptr %263, null
  br i1 %264, label %286, label %265

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.MTex, ptr %263, i64 0, i32 5
  %267 = load ptr, ptr %266, align 8, !tbaa !93
  %268 = icmp eq ptr %267, null
  br i1 %268, label %286, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.ID, ptr %267, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !280
  %272 = icmp eq ptr %271, null
  br i1 %272, label %278, label %273

273:                                              ; preds = %269
  store ptr %271, ptr %266, align 8, !tbaa !93
  %274 = load ptr, ptr %270, align 8, !tbaa !280
  tail call void @id_us_plus(ptr noundef %274) #9
  %275 = getelementptr inbounds %struct.ID, ptr %267, i64 0, i32 6
  %276 = load i32, ptr %275, align 4, !tbaa !283
  %277 = add nsw i32 %276, -1
  store i32 %277, ptr %275, align 4, !tbaa !283
  br label %286

278:                                              ; preds = %269
  %279 = getelementptr inbounds %struct.ID, ptr %267, i64 0, i32 6
  %280 = load i32, ptr %279, align 4, !tbaa !283
  %281 = icmp sgt i32 %280, 1
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = tail call ptr @BKE_texture_copy(ptr noundef nonnull %267) #9
  tail call void @BKE_copy_animdata_id_action(ptr noundef %283) #9
  store ptr %283, ptr %270, align 8, !tbaa !280
  %284 = load i32, ptr %279, align 4, !tbaa !283
  %285 = add nsw i32 %284, -1
  store i32 %285, ptr %279, align 4, !tbaa !283
  store ptr %283, ptr %266, align 8, !tbaa !93
  br label %286

286:                                              ; preds = %282, %278, %273, %265, %260
  %287 = add nuw nsw i64 %261, 1
  %288 = icmp eq i64 %287, 18
  br i1 %288, label %289, label %260, !llvm.loop !284

289:                                              ; preds = %286, %254
  %290 = load ptr, ptr %255, align 8, !tbaa !93
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %254, !llvm.loop !285

292:                                              ; preds = %289, %225
  %293 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %294 = load ptr, ptr %293, align 8, !tbaa !93
  %295 = icmp eq ptr %294, null
  br i1 %295, label %334, label %296

296:                                              ; preds = %292, %331
  %297 = phi ptr [ %332, %331 ], [ %294, %292 ]
  %298 = getelementptr inbounds %struct.ID, ptr %297, i64 0, i32 5
  %299 = load i16, ptr %298, align 2, !tbaa !286
  %300 = and i16 %299, 256
  %301 = icmp eq i16 %300, 0
  br i1 %301, label %331, label %302

302:                                              ; preds = %296, %328
  %303 = phi i64 [ %329, %328 ], [ 0, %296 ]
  %304 = getelementptr inbounds %struct.Lamp, ptr %297, i64 0, i32 69, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !93
  %306 = icmp eq ptr %305, null
  br i1 %306, label %328, label %307

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.MTex, ptr %305, i64 0, i32 5
  %309 = load ptr, ptr %308, align 8, !tbaa !93
  %310 = icmp eq ptr %309, null
  br i1 %310, label %328, label %311

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.ID, ptr %309, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !280
  %314 = icmp eq ptr %313, null
  br i1 %314, label %320, label %315

315:                                              ; preds = %311
  store ptr %313, ptr %308, align 8, !tbaa !93
  %316 = load ptr, ptr %312, align 8, !tbaa !280
  tail call void @id_us_plus(ptr noundef %316) #9
  %317 = getelementptr inbounds %struct.ID, ptr %309, i64 0, i32 6
  %318 = load i32, ptr %317, align 4, !tbaa !283
  %319 = add nsw i32 %318, -1
  store i32 %319, ptr %317, align 4, !tbaa !283
  br label %328

320:                                              ; preds = %311
  %321 = getelementptr inbounds %struct.ID, ptr %309, i64 0, i32 6
  %322 = load i32, ptr %321, align 4, !tbaa !283
  %323 = icmp sgt i32 %322, 1
  br i1 %323, label %324, label %328

324:                                              ; preds = %320
  %325 = tail call ptr @BKE_texture_copy(ptr noundef nonnull %309) #9
  tail call void @BKE_copy_animdata_id_action(ptr noundef %325) #9
  store ptr %325, ptr %312, align 8, !tbaa !280
  %326 = load i32, ptr %321, align 4, !tbaa !283
  %327 = add nsw i32 %326, -1
  store i32 %327, ptr %321, align 4, !tbaa !283
  store ptr %325, ptr %308, align 8, !tbaa !93
  br label %328

328:                                              ; preds = %324, %320, %315, %307, %302
  %329 = add nuw nsw i64 %303, 1
  %330 = icmp eq i64 %329, 18
  br i1 %330, label %331, label %302, !llvm.loop !288

331:                                              ; preds = %328, %296
  %332 = load ptr, ptr %297, align 8, !tbaa !93
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %296, !llvm.loop !289

334:                                              ; preds = %331, %292
  %335 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %336 = load ptr, ptr %335, align 8, !tbaa !93
  %337 = icmp eq ptr %336, null
  br i1 %337, label %376, label %338

338:                                              ; preds = %334, %373
  %339 = phi ptr [ %374, %373 ], [ %336, %334 ]
  %340 = getelementptr inbounds %struct.ID, ptr %339, i64 0, i32 5
  %341 = load i16, ptr %340, align 2, !tbaa !290
  %342 = and i16 %341, 256
  %343 = icmp eq i16 %342, 0
  br i1 %343, label %373, label %344

344:                                              ; preds = %338, %370
  %345 = phi i64 [ %371, %370 ], [ 0, %338 ]
  %346 = getelementptr inbounds %struct.World, ptr %339, i64 0, i32 70, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !93
  %348 = icmp eq ptr %347, null
  br i1 %348, label %370, label %349

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.MTex, ptr %347, i64 0, i32 5
  %351 = load ptr, ptr %350, align 8, !tbaa !93
  %352 = icmp eq ptr %351, null
  br i1 %352, label %370, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.ID, ptr %351, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !280
  %356 = icmp eq ptr %355, null
  br i1 %356, label %362, label %357

357:                                              ; preds = %353
  store ptr %355, ptr %350, align 8, !tbaa !93
  %358 = load ptr, ptr %354, align 8, !tbaa !280
  tail call void @id_us_plus(ptr noundef %358) #9
  %359 = getelementptr inbounds %struct.ID, ptr %351, i64 0, i32 6
  %360 = load i32, ptr %359, align 4, !tbaa !283
  %361 = add nsw i32 %360, -1
  store i32 %361, ptr %359, align 4, !tbaa !283
  br label %370

362:                                              ; preds = %353
  %363 = getelementptr inbounds %struct.ID, ptr %351, i64 0, i32 6
  %364 = load i32, ptr %363, align 4, !tbaa !283
  %365 = icmp sgt i32 %364, 1
  br i1 %365, label %366, label %370

366:                                              ; preds = %362
  %367 = tail call ptr @BKE_texture_copy(ptr noundef nonnull %351) #9
  tail call void @BKE_copy_animdata_id_action(ptr noundef %367) #9
  store ptr %367, ptr %354, align 8, !tbaa !280
  %368 = load i32, ptr %363, align 4, !tbaa !283
  %369 = add nsw i32 %368, -1
  store i32 %369, ptr %363, align 4, !tbaa !283
  store ptr %367, ptr %350, align 8, !tbaa !93
  br label %370

370:                                              ; preds = %366, %362, %357, %349, %344
  %371 = add nuw nsw i64 %345, 1
  %372 = icmp eq i64 %371, 18
  br i1 %372, label %373, label %344, !llvm.loop !292

373:                                              ; preds = %370, %338
  %374 = load ptr, ptr %339, align 8, !tbaa !93
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %338, !llvm.loop !293

376:                                              ; preds = %373, %334, %4
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @single_obdata_users(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %121, label %7

7:                                                ; preds = %3, %118
  %8 = phi ptr [ %119, %118 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !142
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %118

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !219
  %17 = and i32 %16, %2
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %118

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = icmp eq ptr %21, null
  br i1 %22, label %118, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !224
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %118

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !226
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %118

31:                                               ; preds = %27
  tail call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #9
  %32 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !48
  switch i16 %33, label %105 [
    i16 10, label %34
    i16 11, label %54
    i16 1, label %57
    i16 5, label %64
    i16 2, label %67
    i16 3, label %67
    i16 4, label %67
    i16 22, label %92
    i16 25, label %99
    i16 12, label %102
  ]

34:                                               ; preds = %31
  %35 = load ptr, ptr %20, align 8, !tbaa !55
  %36 = tail call ptr @BKE_lamp_copy(ptr noundef %35) #9
  store ptr %36, ptr %20, align 8, !tbaa !55
  br label %37

37:                                               ; preds = %34, %51
  %38 = phi i64 [ 0, %34 ], [ %52, %51 ]
  %39 = getelementptr inbounds %struct.Lamp, ptr %36, i64 0, i32 69, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.MTex, ptr %40, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !276
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !240
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store ptr %48, ptr %43, align 8, !tbaa !276
  br label %51

51:                                               ; preds = %37, %50, %46, %42
  %52 = add nuw nsw i64 %38, 1
  %53 = icmp eq i64 %52, 18
  br i1 %53, label %112, label %37, !llvm.loop !294

54:                                               ; preds = %31
  %55 = load ptr, ptr %20, align 8, !tbaa !55
  %56 = tail call ptr @BKE_camera_copy(ptr noundef %55) #9
  store ptr %56, ptr %20, align 8, !tbaa !55
  br label %112

57:                                               ; preds = %31
  %58 = load ptr, ptr %20, align 8, !tbaa !55
  %59 = tail call ptr @BKE_mesh_copy(ptr noundef %58) #9
  store ptr %59, ptr %20, align 8, !tbaa !55
  %60 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !295
  %62 = icmp eq ptr %61, null
  br i1 %62, label %112, label %63

63:                                               ; preds = %57
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %61) #9
  br label %112

64:                                               ; preds = %31
  %65 = load ptr, ptr %20, align 8, !tbaa !55
  %66 = tail call ptr @BKE_mball_copy(ptr noundef %65) #9
  store ptr %66, ptr %20, align 8, !tbaa !55
  br label %112

67:                                               ; preds = %31, %31, %31
  %68 = load ptr, ptr %20, align 8, !tbaa !55
  %69 = tail call ptr @BKE_curve_copy(ptr noundef %68) #9
  store ptr %69, ptr %20, align 8, !tbaa !55
  %70 = getelementptr inbounds %struct.Curve, ptr %69, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !296
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ID, ptr %71, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !240
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store ptr %75, ptr %70, align 8, !tbaa !296
  br label %78

78:                                               ; preds = %77, %73, %67
  %79 = getelementptr inbounds %struct.Curve, ptr %69, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !297
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ID, ptr %80, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !240
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store ptr %84, ptr %79, align 8, !tbaa !297
  br label %87

87:                                               ; preds = %86, %82, %78
  %88 = getelementptr inbounds %struct.Curve, ptr %69, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !298
  %90 = icmp eq ptr %89, null
  br i1 %90, label %112, label %91

91:                                               ; preds = %87
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %89) #9
  br label %112

92:                                               ; preds = %31
  %93 = load ptr, ptr %20, align 8, !tbaa !55
  %94 = tail call ptr @BKE_lattice_copy(ptr noundef %93) #9
  store ptr %94, ptr %20, align 8, !tbaa !55
  %95 = getelementptr inbounds %struct.Lattice, ptr %94, i64 0, i32 23
  %96 = load ptr, ptr %95, align 8, !tbaa !299
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %92
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %96) #9
  br label %112

99:                                               ; preds = %31
  tail call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #9
  %100 = load ptr, ptr %20, align 8, !tbaa !55
  %101 = tail call ptr @BKE_armature_copy(ptr noundef %100) #9
  store ptr %101, ptr %20, align 8, !tbaa !55
  tail call void @BKE_pose_rebuild(ptr noundef %10, ptr noundef %101) #9
  br label %112

102:                                              ; preds = %31
  %103 = load ptr, ptr %20, align 8, !tbaa !55
  %104 = tail call ptr @BKE_speaker_copy(ptr noundef %103) #9
  store ptr %104, ptr %20, align 8, !tbaa !55
  br label %112

105:                                              ; preds = %31
  %106 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !300
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %138, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.161, ptr noundef nonnull @__func__.single_obdata_users, ptr noundef nonnull %110)
  br label %138

112:                                              ; preds = %51, %92, %98, %87, %91, %57, %63, %102, %99, %64, %54
  %113 = load ptr, ptr %20, align 8, !tbaa !55
  tail call void @BKE_copy_animdata_id_action(ptr noundef %113) #9
  %114 = load i32, ptr %24, align 4, !tbaa !224
  %115 = add nsw i32 %114, -1
  store i32 %115, ptr %24, align 4, !tbaa !224
  %116 = load ptr, ptr %20, align 8, !tbaa !55
  %117 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !256
  br label %118

118:                                              ; preds = %7, %14, %112, %27, %23, %19
  %119 = load ptr, ptr %8, align 8, !tbaa !93
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %7, !llvm.loop !302

121:                                              ; preds = %118, %3
  %122 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %123 = load ptr, ptr %122, align 8, !tbaa !93
  %124 = icmp eq ptr %123, null
  br i1 %124, label %138, label %125

125:                                              ; preds = %121, %135
  %126 = phi ptr [ %136, %135 ], [ %123, %121 ]
  %127 = getelementptr inbounds %struct.Mesh, ptr %126, i64 0, i32 19
  %128 = load ptr, ptr %127, align 8, !tbaa !303
  %129 = icmp eq ptr %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.ID, ptr %128, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !304
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  store ptr %132, ptr %127, align 8, !tbaa !303
  br label %135

135:                                              ; preds = %134, %130, %125
  %136 = load ptr, ptr %126, align 8, !tbaa !93
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %125, !llvm.loop !305

138:                                              ; preds = %135, %121, %105, %109
  ret void
}

declare void @BKE_main_id_clear_newpoins(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_make_local(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.112, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.113, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.114, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_local_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @OBJECT_OT_make_local.type_items, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !137
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_local_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.20) #9
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  tail call void @BKE_scene_base_deselect_all(ptr noundef %9) #9
  %15 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %14, %37
  %19 = phi ptr [ %39, %37 ], [ %16, %14 ]
  %20 = phi i8 [ %38, %37 ], [ 0, %14 ]
  %21 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !142
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !242
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  store i32 1, ptr %25, align 4, !tbaa !242
  tail call void @id_lib_extern(ptr noundef nonnull %19) #9
  %29 = tail call ptr @BKE_scene_base_add(ptr noundef %9, ptr noundef nonnull %19) #9
  %30 = getelementptr inbounds %struct.Base, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !219
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !219
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.Base, ptr %29, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !129
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 53
  store i16 %33, ptr %36, align 4, !tbaa !218
  tail call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 7) #9
  br label %37

37:                                               ; preds = %28, %24, %18
  %38 = phi i8 [ 1, %28 ], [ %20, %24 ], [ %20, %18 ]
  %39 = load ptr, ptr %19, align 8, !tbaa !93
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %18, !llvm.loop !306

41:                                               ; preds = %37
  %42 = icmp eq i8 %38, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !121
  tail call void @BKE_report(ptr noundef %45, i32 noundef 2, ptr noundef nonnull @.str.162) #9
  br label %46

46:                                               ; preds = %14, %43, %41
  tail call void @BKE_library_make_local(ptr noundef %8, ptr noundef null, i8 noundef zeroext 0) #9
  br label %316

47:                                               ; preds = %2
  %48 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  tail call void @BKE_main_id_tag_all(ptr noundef %48, i8 noundef zeroext 0) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %49 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #9
  %50 = load ptr, ptr %3, align 8, !tbaa !93
  %51 = icmp eq ptr %50, null
  br i1 %51, label %72, label %52

52:                                               ; preds = %47
  %53 = icmp eq i32 %12, 2
  br label %54

54:                                               ; preds = %52, %69
  %55 = phi ptr [ %50, %52 ], [ %70, %69 ]
  %56 = getelementptr inbounds %struct.CollectionPointerLink, ptr %55, i64 0, i32 2, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !123
  %58 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 5
  %59 = load i16, ptr %58, align 2, !tbaa !254
  %60 = or i16 %59, 1024
  store i16 %60, ptr %58, align 2, !tbaa !254
  br i1 %53, label %61, label %69

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !55
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ID, ptr %63, i64 0, i32 5
  %67 = load i16, ptr %66, align 2, !tbaa !307
  %68 = or i16 %67, 1024
  store i16 %68, ptr %66, align 2, !tbaa !307
  br label %69

69:                                               ; preds = %65, %61, %54
  %70 = load ptr, ptr %55, align 8, !tbaa !93
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %54, !llvm.loop !308

72:                                               ; preds = %69, %47
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  %73 = getelementptr inbounds %struct.Main, ptr %48, i64 0, i32 13
  %74 = load ptr, ptr %73, align 8, !tbaa !93
  %75 = icmp eq ptr %74, null
  br i1 %75, label %96, label %76

76:                                               ; preds = %72, %93
  %77 = phi ptr [ %94, %93 ], [ %74, %72 ]
  %78 = getelementptr inbounds %struct.ID, ptr %77, i64 0, i32 5
  %79 = load i16, ptr %78, align 2, !tbaa !254
  %80 = and i16 %79, 1024
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  call void @BKE_library_foreach_ID_link(ptr noundef nonnull %77, ptr noundef nonnull @tag_localizable_looper, ptr noundef null, i32 noundef 1) #9
  br label %83

83:                                               ; preds = %82, %76
  %84 = getelementptr inbounds %struct.Object, ptr %77, i64 0, i32 19
  %85 = load ptr, ptr %84, align 8, !tbaa !55
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ID, ptr %85, i64 0, i32 5
  %89 = load i16, ptr %88, align 2, !tbaa !307
  %90 = and i16 %89, 1024
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  call void @BKE_library_foreach_ID_link(ptr noundef nonnull %85, ptr noundef nonnull @tag_localizable_looper, ptr noundef null, i32 noundef 1) #9
  br label %93

93:                                               ; preds = %92, %87, %83
  %94 = load ptr, ptr %77, align 8, !tbaa !93
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %76, !llvm.loop !309

96:                                               ; preds = %93, %72
  call void @BKE_main_id_clear_newpoins(ptr noundef %8) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %97 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %4) #9
  %98 = load ptr, ptr %4, align 8, !tbaa !93
  %99 = icmp eq ptr %98, null
  br i1 %99, label %117, label %100

100:                                              ; preds = %96, %114
  %101 = phi ptr [ %115, %114 ], [ %98, %96 ]
  %102 = getelementptr inbounds %struct.CollectionPointerLink, ptr %101, i64 0, i32 2, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !123
  %104 = getelementptr inbounds %struct.ID, ptr %103, i64 0, i32 5
  %105 = load i16, ptr %104, align 2, !tbaa !254
  %106 = and i16 %105, 1024
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.ID, ptr %103, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !142
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = call zeroext i8 @id_make_local(ptr noundef %103, i8 noundef zeroext 0) #9
  br label %114

114:                                              ; preds = %108, %112, %100
  %115 = load ptr, ptr %101, align 8, !tbaa !93
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %100, !llvm.loop !310

117:                                              ; preds = %114, %96
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %118 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %5) #9
  %119 = load ptr, ptr %5, align 8, !tbaa !93
  %120 = icmp eq ptr %119, null
  br i1 %120, label %140, label %121

121:                                              ; preds = %117, %137
  %122 = phi ptr [ %138, %137 ], [ %119, %117 ]
  %123 = getelementptr inbounds %struct.CollectionPointerLink, ptr %122, i64 0, i32 2, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !123
  %125 = getelementptr inbounds %struct.ID, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !142
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.Object, ptr %124, i64 0, i32 9
  %130 = load ptr, ptr %129, align 8, !tbaa !127
  %131 = icmp eq ptr %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ID, ptr %130, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !240
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  store ptr %134, ptr %129, align 8, !tbaa !127
  br label %137

137:                                              ; preds = %128, %132, %136, %121
  %138 = load ptr, ptr %122, align 8, !tbaa !93
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %121, !llvm.loop !311

140:                                              ; preds = %137, %117
  call void @BLI_freelistN(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %141 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %6) #9
  %142 = load ptr, ptr %6, align 8, !tbaa !93
  %143 = icmp eq ptr %142, null
  br i1 %143, label %202, label %144

144:                                              ; preds = %140
  %145 = and i32 %12, -2
  %146 = icmp eq i32 %145, 2
  br label %147

147:                                              ; preds = %144, %199
  %148 = phi ptr [ %142, %144 ], [ %200, %199 ]
  %149 = getelementptr inbounds %struct.CollectionPointerLink, ptr %148, i64 0, i32 2, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !123
  %151 = getelementptr inbounds %struct.ID, ptr %150, i64 0, i32 5
  %152 = load i16, ptr %151, align 2, !tbaa !254
  %153 = and i16 %152, 1024
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %199, label %155

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.Object, ptr %150, i64 0, i32 19
  %157 = load ptr, ptr %156, align 8, !tbaa !55
  %158 = icmp ne ptr %157, null
  %159 = and i1 %146, %158
  br i1 %159, label %160, label %184

160:                                              ; preds = %155
  %161 = call zeroext i8 @id_make_local(ptr noundef nonnull %157, i8 noundef zeroext 0) #9
  %162 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %157) #9
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  call void @BKE_animdata_make_local(ptr noundef nonnull %162) #9
  br label %165

165:                                              ; preds = %164, %160
  %166 = call ptr @give_matarar(ptr noundef %150) #9
  %167 = icmp eq ptr %166, null
  br i1 %167, label %184, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.Object, ptr %150, i64 0, i32 31
  %170 = load i32, ptr %169, align 8, !tbaa !223
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %168, %179
  %173 = phi i64 [ %180, %179 ], [ 0, %168 ]
  %174 = load ptr, ptr %166, align 8, !tbaa !93
  %175 = getelementptr inbounds ptr, ptr %174, i64 %173
  %176 = load ptr, ptr %175, align 8, !tbaa !93
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %172
  call void @id_lib_extern(ptr noundef nonnull %176) #9
  br label %179

179:                                              ; preds = %172, %178
  %180 = add nuw nsw i64 %173, 1
  %181 = load i32, ptr %169, align 8, !tbaa !223
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %180, %182
  br i1 %183, label %172, label %184, !llvm.loop !312

184:                                              ; preds = %179, %168, %165, %155
  %185 = getelementptr inbounds %struct.Object, ptr %150, i64 0, i32 109
  %186 = load ptr, ptr %185, align 8, !tbaa !93
  %187 = icmp eq ptr %186, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %184, %188
  %189 = phi ptr [ %193, %188 ], [ %186, %184 ]
  %190 = getelementptr inbounds %struct.ParticleSystem, ptr %189, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !313
  %192 = call zeroext i8 @id_make_local(ptr noundef %191, i8 noundef zeroext 0) #9
  %193 = load ptr, ptr %189, align 8, !tbaa !93
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %188, !llvm.loop !315

195:                                              ; preds = %188, %184
  %196 = call ptr @BKE_animdata_from_id(ptr noundef %150) #9
  %197 = icmp eq ptr %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  call void @BKE_animdata_make_local(ptr noundef nonnull %196) #9
  br label %199

199:                                              ; preds = %195, %198, %147
  %200 = load ptr, ptr %148, align 8, !tbaa !93
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %147, !llvm.loop !316

202:                                              ; preds = %199, %140
  call void @BLI_freelistN(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  %203 = icmp eq i32 %12, 3
  br i1 %203, label %204, label %316

204:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %205 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %7) #9
  %206 = load ptr, ptr %7, align 8, !tbaa !93
  %207 = icmp eq ptr %206, null
  br i1 %207, label %315, label %208

208:                                              ; preds = %204, %312
  %209 = phi ptr [ %313, %312 ], [ %206, %204 ]
  %210 = getelementptr inbounds %struct.CollectionPointerLink, ptr %209, i64 0, i32 2, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !123
  %212 = getelementptr inbounds %struct.ID, ptr %211, i64 0, i32 5
  %213 = load i16, ptr %212, align 2, !tbaa !254
  %214 = and i16 %213, 1024
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %312, label %216

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.Object, ptr %211, i64 0, i32 3
  %218 = load i16, ptr %217, align 8, !tbaa !48
  %219 = icmp eq i16 %218, 10
  br i1 %219, label %226, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.Object, ptr %211, i64 0, i32 31
  %222 = load i32, ptr %221, align 8, !tbaa !223
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %274

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.Object, ptr %211, i64 0, i32 29
  br label %243

226:                                              ; preds = %216
  %227 = getelementptr inbounds %struct.Object, ptr %211, i64 0, i32 19
  %228 = load ptr, ptr %227, align 8, !tbaa !55
  br label %229

229:                                              ; preds = %226, %240
  %230 = phi i64 [ 0, %226 ], [ %241, %240 ]
  %231 = getelementptr inbounds %struct.Lamp, ptr %228, i64 0, i32 69, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !93
  %233 = icmp eq ptr %232, null
  br i1 %233, label %240, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.MTex, ptr %232, i64 0, i32 5
  %236 = load ptr, ptr %235, align 8, !tbaa !317
  %237 = icmp eq ptr %236, null
  br i1 %237, label %240, label %238

238:                                              ; preds = %234
  %239 = call zeroext i8 @id_make_local(ptr noundef nonnull %236, i8 noundef zeroext 0) #9
  br label %240

240:                                              ; preds = %229, %234, %238
  %241 = add nuw nsw i64 %230, 1
  %242 = icmp eq i64 %241, 18
  br i1 %242, label %312, label %229, !llvm.loop !318

243:                                              ; preds = %224, %269
  %244 = phi i64 [ 0, %224 ], [ %270, %269 ]
  %245 = load ptr, ptr %225, align 8, !tbaa !255
  %246 = getelementptr inbounds ptr, ptr %245, i64 %244
  %247 = load ptr, ptr %246, align 8, !tbaa !93
  %248 = icmp eq ptr %247, null
  br i1 %248, label %269, label %249

249:                                              ; preds = %243
  %250 = call zeroext i8 @id_make_local(ptr noundef nonnull %247, i8 noundef zeroext 0) #9
  br label %251

251:                                              ; preds = %262, %249
  %252 = phi i64 [ 0, %249 ], [ %263, %262 ]
  %253 = getelementptr inbounds %struct.Material, ptr %247, i64 0, i32 102, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !93
  %255 = icmp eq ptr %254, null
  br i1 %255, label %262, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.MTex, ptr %254, i64 0, i32 5
  %258 = load ptr, ptr %257, align 8, !tbaa !317
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = call zeroext i8 @id_make_local(ptr noundef nonnull %258, i8 noundef zeroext 0) #9
  br label %262

262:                                              ; preds = %260, %256, %251
  %263 = add nuw nsw i64 %252, 1
  %264 = icmp eq i64 %263, 18
  br i1 %264, label %265, label %251, !llvm.loop !319

265:                                              ; preds = %262
  %266 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %247) #9
  %267 = icmp eq ptr %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  call void @BKE_animdata_make_local(ptr noundef nonnull %266) #9
  br label %269

269:                                              ; preds = %268, %265, %243
  %270 = add nuw nsw i64 %244, 1
  %271 = load i32, ptr %221, align 8, !tbaa !223
  %272 = sext i32 %271 to i64
  %273 = icmp slt i64 %270, %272
  br i1 %273, label %243, label %274, !llvm.loop !320

274:                                              ; preds = %269, %220
  %275 = getelementptr inbounds %struct.Object, ptr %211, i64 0, i32 31
  %276 = call ptr @give_matarar(ptr noundef %211) #9
  %277 = icmp eq ptr %276, null
  br i1 %277, label %312, label %278

278:                                              ; preds = %274
  %279 = load i32, ptr %275, align 8, !tbaa !223
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %312

281:                                              ; preds = %278, %307
  %282 = phi i64 [ %308, %307 ], [ 0, %278 ]
  %283 = load ptr, ptr %276, align 8, !tbaa !93
  %284 = getelementptr inbounds ptr, ptr %283, i64 %282
  %285 = load ptr, ptr %284, align 8, !tbaa !93
  %286 = icmp eq ptr %285, null
  br i1 %286, label %307, label %287

287:                                              ; preds = %281
  %288 = call zeroext i8 @id_make_local(ptr noundef nonnull %285, i8 noundef zeroext 0) #9
  br label %289

289:                                              ; preds = %300, %287
  %290 = phi i64 [ 0, %287 ], [ %301, %300 ]
  %291 = getelementptr inbounds %struct.Material, ptr %285, i64 0, i32 102, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !93
  %293 = icmp eq ptr %292, null
  br i1 %293, label %300, label %294

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.MTex, ptr %292, i64 0, i32 5
  %296 = load ptr, ptr %295, align 8, !tbaa !317
  %297 = icmp eq ptr %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %294
  %299 = call zeroext i8 @id_make_local(ptr noundef nonnull %296, i8 noundef zeroext 0) #9
  br label %300

300:                                              ; preds = %298, %294, %289
  %301 = add nuw nsw i64 %290, 1
  %302 = icmp eq i64 %301, 18
  br i1 %302, label %303, label %289, !llvm.loop !319

303:                                              ; preds = %300
  %304 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %285) #9
  %305 = icmp eq ptr %304, null
  br i1 %305, label %307, label %306

306:                                              ; preds = %303
  call void @BKE_animdata_make_local(ptr noundef nonnull %304) #9
  br label %307

307:                                              ; preds = %306, %303, %281
  %308 = add nuw nsw i64 %282, 1
  %309 = load i32, ptr %275, align 8, !tbaa !223
  %310 = sext i32 %309 to i64
  %311 = icmp slt i64 %308, %310
  br i1 %311, label %281, label %312, !llvm.loop !321

312:                                              ; preds = %307, %240, %278, %274, %208
  %313 = load ptr, ptr %209, align 8, !tbaa !93
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %208, !llvm.loop !322

315:                                              ; preds = %312, %204
  call void @BLI_freelistN(ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  br label %316

316:                                              ; preds = %202, %315, %46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_make_single_user(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.116, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.117, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.118, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_single_user_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @OBJECT_OT_make_single_user.type_items, i32 noundef 1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !137
  %12 = load ptr, ptr %8, align 8, !tbaa !136
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.119) #9
  %14 = load ptr, ptr %8, align 8, !tbaa !136
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.120, i32 noundef 0, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.121) #9
  %16 = load ptr, ptr %8, align 8, !tbaa !136
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.122, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.123) #9
  %18 = load ptr, ptr %8, align 8, !tbaa !136
  %19 = tail call ptr @RNA_def_boolean(ptr noundef %18, ptr noundef nonnull @.str.124, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126) #9
  %20 = load ptr, ptr %8, align 8, !tbaa !136
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.127, i32 noundef 0, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_single_user_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.20) #9
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %3) #9
  %9 = load ptr, ptr %6, align 8, !tbaa !144
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.6) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call fastcc void @single_object_users(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %8, i8 noundef zeroext 0)
  br label %13

13:                                               ; preds = %12, %2
  %14 = load ptr, ptr %6, align 8, !tbaa !144
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.120) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call fastcc void @single_obdata_users(ptr noundef %3, ptr noundef %4, i32 noundef %8)
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %6, align 8, !tbaa !144
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.122) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %90, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8, !tbaa !144
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.124) #9
  %25 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !93
  %27 = icmp eq ptr %26, null
  br i1 %27, label %90, label %28

28:                                               ; preds = %22
  %29 = icmp eq i32 %8, 0
  %30 = and i32 %24, 255
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %28, %87
  %33 = phi ptr [ %26, %28 ], [ %88, %87 ]
  %34 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !129
  %36 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !142
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %87

39:                                               ; preds = %32
  br i1 %29, label %45, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !219
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %87, label %45

45:                                               ; preds = %40, %39
  %46 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 31
  %47 = load i32, ptr %46, align 8, !tbaa !223
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %87, label %49

49:                                               ; preds = %45, %83
  %50 = phi i32 [ %84, %83 ], [ 1, %45 ]
  %51 = trunc i32 %50 to i16
  %52 = tail call ptr @give_current_material(ptr noundef %35, i16 noundef signext %51) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %83, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ID, ptr %52, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !323
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = tail call ptr @BKE_material_copy(ptr noundef nonnull %52) #9
  tail call void @BKE_copy_animdata_id_action(ptr noundef %59) #9
  %60 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 6
  store i32 0, ptr %60, align 4, !tbaa !323
  tail call void @assign_material(ptr noundef %35, ptr noundef %59, i16 noundef signext %51, i32 noundef 0) #9
  br i1 %31, label %83, label %61

61:                                               ; preds = %58, %80
  %62 = phi i64 [ %81, %80 ], [ 0, %58 ]
  %63 = getelementptr inbounds %struct.Material, ptr %52, i64 0, i32 102, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !93
  %65 = icmp eq ptr %64, null
  br i1 %65, label %80, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.MTex, ptr %64, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !317
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ID, ptr %68, i64 0, i32 6
  %72 = load i32, ptr %71, align 4, !tbaa !283
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = add nsw i32 %72, -1
  store i32 %75, ptr %71, align 4, !tbaa !283
  %76 = tail call ptr @BKE_texture_copy(ptr noundef nonnull %68) #9
  tail call void @BKE_copy_animdata_id_action(ptr noundef %76) #9
  %77 = getelementptr inbounds %struct.Material, ptr %59, i64 0, i32 102, i64 %62
  %78 = load ptr, ptr %77, align 8, !tbaa !93
  %79 = getelementptr inbounds %struct.MTex, ptr %78, i64 0, i32 5
  store ptr %76, ptr %79, align 8, !tbaa !317
  br label %80

80:                                               ; preds = %74, %70, %66, %61
  %81 = add nuw nsw i64 %62, 1
  %82 = icmp eq i64 %81, 18
  br i1 %82, label %83, label %61, !llvm.loop !324

83:                                               ; preds = %80, %58, %54, %49
  %84 = add nuw nsw i32 %50, 1
  %85 = load i32, ptr %46, align 8, !tbaa !223
  %86 = icmp slt i32 %50, %85
  br i1 %86, label %49, label %87, !llvm.loop !325

87:                                               ; preds = %83, %45, %40, %32
  %88 = load ptr, ptr %33, align 8, !tbaa !93
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %32, !llvm.loop !326

90:                                               ; preds = %87, %22, %18
  %91 = load ptr, ptr %6, align 8, !tbaa !144
  %92 = tail call i32 @RNA_boolean_get(ptr noundef %91, ptr noundef nonnull @.str.127) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %117, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 5
  %96 = load ptr, ptr %95, align 8, !tbaa !93
  %97 = icmp eq ptr %96, null
  br i1 %97, label %117, label %98

98:                                               ; preds = %94
  %99 = icmp eq i32 %8, 0
  br label %100

100:                                              ; preds = %98, %114
  %101 = phi ptr [ %96, %98 ], [ %115, %114 ]
  %102 = getelementptr inbounds %struct.Base, ptr %101, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !129
  %104 = getelementptr inbounds %struct.ID, ptr %103, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !142
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  br i1 %99, label %113, label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.Base, ptr %101, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !219
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108, %107
  tail call void @DAG_id_tag_update(ptr noundef %103, i16 noundef signext 2) #9
  tail call void @BKE_copy_animdata_id_action(ptr noundef %103) #9
  br label %114

114:                                              ; preds = %113, %108, %100
  %115 = load ptr, ptr %101, align 8, !tbaa !93
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %100, !llvm.loop !253

117:                                              ; preds = %114, %94, %90
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %3) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #9
  br i1 %11, label %119, label %118

118:                                              ; preds = %117
  tail call void @DAG_relations_tag_update(ptr noundef %3) #9
  br label %119

119:                                              ; preds = %118, %117
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_drop_named_material(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.130, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.131, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @drop_named_material_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef 64, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @drop_named_material_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.132, ptr noundef nonnull %4) #9
  %9 = call ptr @BKE_libblock_find_name(i16 noundef signext 16717, ptr noundef nonnull %4) #9
  %10 = icmp eq ptr %6, null
  %11 = icmp eq ptr %9, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  call void @assign_material(ptr noundef %15, ptr noundef %9, i16 noundef signext 1, i32 noundef 0) #9
  %16 = load ptr, ptr %14, align 8, !tbaa !129
  call void @DAG_id_tag_update(ptr noundef %16, i16 noundef signext 1) #9
  %17 = load ptr, ptr %14, align 8, !tbaa !129
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef %17) #9
  %18 = call ptr @CTX_wm_view3d(ptr noundef %0) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %18) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef %9) #9
  br label %19

19:                                               ; preds = %3, %13
  %20 = phi i32 [ 4, %13 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %20
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_unlink_data(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.136, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.137, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_unlink_data_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_unlink_data_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PropertyPointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %3, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %5 = load ptr, ptr %4, align 8, !tbaa !327
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.163) #9
  br label %30

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !329
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !330
  %14 = icmp eq i16 %13, 16975
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !330
  %22 = icmp eq i16 %21, 19785
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @id_us_min(ptr noundef nonnull %17) #9
  store ptr null, ptr %16, align 8, !tbaa !55
  br label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !121
  call void @BKE_report(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.164) #9
  br label %27

27:                                               ; preds = %23, %24
  br i1 %22, label %28, label %30

28:                                               ; preds = %15, %27, %10
  %29 = load ptr, ptr %4, align 8, !tbaa !327
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %29) #9
  br label %30

30:                                               ; preds = %27, %28, %7
  %31 = phi i32 [ 2, %7 ], [ 4, %28 ], [ 2, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i32 %31
}

declare i32 @ED_operator_editmesh(ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_editsurfcurve(ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_editlattice(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #1

declare void @makeDerivedMesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_editcurve_get(ptr noundef) local_unnamed_addr #1

declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #1

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #1

declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_scene_base_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_object_make_proxy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @modifier_free(ptr noundef) local_unnamed_addr #1

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @uiItemEnumO_ptr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_object_as_kdtree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #1

declare i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @parent_set_draw_check_prop(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #9
  %4 = tail call i32 @RNA_enum_get(ptr noundef %0, ptr noundef nonnull @.str.20) #9
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(8) @.str.56) #10
  %6 = icmp ne i32 %5, 0
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %7, 2
  %9 = select i1 %6, i1 true, i1 %8
  %10 = zext i1 %9 to i8
  ret i8 %10
}

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_constraint_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #1

declare i32 @WM_operator_confirm_message(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @move_to_layer_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca [20 x i32], align 16
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.80) #9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %10 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %4) #9
  %11 = load ptr, ptr %4, align 8, !tbaa !93
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %21, %13 ], [ %11, %9 ]
  %15 = phi i32 [ %20, %13 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !123
  %18 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !147
  %20 = or i32 %19, %15
  %21 = load ptr, ptr %14, align 8, !tbaa !93
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %13, !llvm.loop !331

23:                                               ; preds = %13, %9
  %24 = phi i32 [ 0, %9 ], [ %20, %13 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %31, %25 ]
  %27 = trunc i64 %26 to i32
  %28 = shl nuw nsw i32 1, %27
  %29 = and i32 %28, %24
  %30 = getelementptr inbounds [20 x i32], ptr %3, i64 0, i64 %26
  store i32 %29, ptr %30, align 4, !tbaa !149
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, 20
  br i1 %32, label %33, label %25, !llvm.loop !332

33:                                               ; preds = %25
  %34 = load ptr, ptr %5, align 8, !tbaa !144
  call void @RNA_boolean_set_array(ptr noundef %34, ptr noundef nonnull @.str.80, ptr noundef nonnull %3) #9
  br label %49

35:                                               ; preds = %2
  %36 = load ptr, ptr %5, align 8, !tbaa !144
  call void @RNA_boolean_get_array(ptr noundef %36, ptr noundef nonnull @.str.80, ptr noundef nonnull %3) #9
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %47, %37 ]
  %39 = phi i32 [ 0, %35 ], [ %46, %37 ]
  %40 = getelementptr inbounds [20 x i32], ptr %3, i64 0, i64 %38
  %41 = load i32, ptr %40, align 4, !tbaa !149
  %42 = icmp eq i32 %41, 0
  %43 = trunc i64 %38 to i32
  %44 = shl nuw nsw i32 1, %43
  %45 = select i1 %42, i32 0, i32 %44
  %46 = or i32 %45, %39
  %47 = add nuw nsw i64 %38, 1
  %48 = icmp eq i64 %47, 20
  br i1 %48, label %49, label %37, !llvm.loop !333

49:                                               ; preds = %37, %33
  %50 = phi i32 [ %24, %33 ], [ %46, %37 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #9
  ret i32 %50
}

declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_object_groups(ptr noundef) local_unnamed_addr #1

declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @test_object_materials(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @assign_material(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_copy_animdata_id(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_object_groups_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_group_object_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #1

declare void @BKE_object_link_modifiers(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @clear_sca_new_poins() local_unnamed_addr #1

declare ptr @BKE_object_copy(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_group_copy(ptr noundef) local_unnamed_addr #1

declare void @BKE_scene_groups_relink(ptr noundef) local_unnamed_addr #1

declare void @BKE_object_relink(ptr noundef) local_unnamed_addr #1

declare void @set_sca_new_poins() local_unnamed_addr #1

declare ptr @BKE_lamp_copy(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_camera_copy(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_mesh_copy(ptr noundef) local_unnamed_addr #1

declare void @BKE_copy_animdata_id_action(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_mball_copy(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_curve_copy(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_lattice_copy(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_armature_copy(ptr noundef) local_unnamed_addr #1

declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_speaker_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare ptr @BKE_material_copy(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_texture_copy(ptr noundef) local_unnamed_addr #1

declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #1

declare void @BKE_library_make_local(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @id_make_local(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #1

declare void @BKE_animdata_make_local(ptr noundef) local_unnamed_addr #1

declare ptr @give_matarar(ptr noundef) local_unnamed_addr #1

declare void @BKE_main_id_tag_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_library_foreach_ID_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @tag_localizable_looper(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 %2) #8 {
  %4 = load ptr, ptr %1, align 8, !tbaa !93
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !307
  %9 = and i16 %8, -1025
  store i16 %9, ptr %7, align 2, !tbaa !307
  br label %10

10:                                               ; preds = %6, %3
  ret i8 1
}

declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @id_us_min(ptr noundef) local_unnamed_addr #1

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !36, i64 32}
!47 = !{!35, !41, i64 184}
!48 = !{!49, !41, i64 136}
!49 = !{!"Object", !50, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !51, i64 140, !51, i64 144, !51, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !52, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !51, i64 432, !51, i64 436, !36, i64 440, !36, i64 448, !51, i64 456, !51, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !53, i64 616, !53, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !51, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !51, i64 968, !51, i64 972, !51, i64 976, !51, i64 980, !51, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !53, i64 1048, !53, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !53, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !51, i64 1144, !51, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !53, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !54, i64 1304, !54, i64 1312, !51, i64 1320, !51, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!50 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!51 = !{!"int", !37, i64 0}
!52 = !{!"bAnimVizSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44}
!53 = !{!"float", !37, i64 0}
!54 = !{!"long", !37, i64 0}
!55 = !{!49, !36, i64 296}
!56 = !{!57, !36, i64 264}
!57 = !{!"Scene", !50, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !51, i64 232, !51, i64 236, !51, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !58, i64 280, !67, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !51, i64 4380, !39, i64 4384, !68, i64 4400, !69, i64 4416, !72, i64 4600, !36, i64 4608, !73, i64 4616, !36, i64 4640, !54, i64 4648, !54, i64 4656, !60, i64 4664, !61, i64 4824, !74, i64 4888, !36, i64 4952}
!58 = !{!"RenderData", !59, i64 0, !36, i64 248, !36, i64 256, !62, i64 264, !63, i64 328, !51, i64 400, !51, i64 404, !51, i64 408, !53, i64 412, !51, i64 416, !51, i64 420, !51, i64 424, !51, i64 428, !41, i64 432, !41, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !51, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !51, i64 484, !51, i64 488, !41, i64 492, !41, i64 494, !51, i64 496, !51, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !51, i64 516, !51, i64 520, !51, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !64, i64 544, !64, i64 560, !65, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !51, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !53, i64 660, !53, i64 664, !41, i64 668, !41, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !51, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !51, i64 2520, !41, i64 2524, !41, i64 2526, !53, i64 2528, !53, i64 2532, !41, i64 2536, !41, i64 2538, !53, i64 2540, !41, i64 2544, !41, i64 2546, !51, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !51, i64 2576, !53, i64 2580, !37, i64 2584, !66, i64 2616, !51, i64 3976, !51, i64 3980}
!59 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!62 = !{!"QuicktimeCodecSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !41, i64 48, !41, i64 50, !51, i64 52, !51, i64 56, !51, i64 60}
!63 = !{!"FFMpegCodecData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !53, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !36, i64 64}
!64 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!65 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!66 = !{!"BakeData", !59, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!67 = !{!"AudioData", !51, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !51, i64 16, !41, i64 20, !41, i64 22, !53, i64 24, !53, i64 28}
!68 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!69 = !{!"GameData", !68, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !70, i64 40, !41, i64 64, !41, i64 66, !53, i64 68, !71, i64 72, !53, i64 128, !53, i64 132, !51, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!70 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!71 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !51, i64 40, !53, i64 44, !53, i64 48, !41, i64 52, !41, i64 54}
!72 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!73 = !{!"PhysicsSettings", !37, i64 0, !51, i64 12, !51, i64 16, !51, i64 20}
!74 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!75 = !{!76, !36, i64 272}
!76 = !{!"Mesh", !50, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !77, i64 280, !77, i64 480, !77, i64 680, !77, i64 880, !77, i64 1080, !51, i64 1280, !51, i64 1284, !51, i64 1288, !51, i64 1292, !51, i64 1296, !51, i64 1300, !51, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !51, i64 1344, !41, i64 1348, !41, i64 1350, !53, i64 1352, !51, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!77 = !{!"CustomData", !36, i64 0, !37, i64 8, !51, i64 172, !51, i64 176, !51, i64 180, !36, i64 184, !36, i64 192}
!78 = !{!54, !54, i64 0}
!79 = !{!80, !36, i64 0}
!80 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !51, i64 16, !36, i64 24, !51, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !36, i64 64, !51, i64 72, !36, i64 80, !51, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !51, i64 104}
!81 = !{!82, !37, i64 60}
!82 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !51, i64 56, !37, i64 60}
!83 = !{!82, !36, i64 40}
!84 = !{!82, !36, i64 48}
!85 = !{!86, !36, i64 32}
!86 = !{!"BMesh", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !51, i64 88, !51, i64 92, !51, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !51, i64 128, !36, i64 136, !77, i64 144, !77, i64 344, !77, i64 544, !77, i64 744, !41, i64 944, !51, i64 948, !51, i64 952, !51, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!87 = !{!37, !37, i64 0}
!88 = !{!89, !37, i64 13}
!89 = !{!"BMHeader", !36, i64 0, !51, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!90 = distinct !{!90, !91, !92}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !{!36, !36, i64 0}
!94 = !{!95, !41, i64 16}
!95 = !{!"Nurb", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !51, i64 24, !51, i64 28, !37, i64 32, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 82, !51, i64 84}
!96 = !{!95, !51, i64 24}
!97 = !{!95, !36, i64 72}
!98 = !{!99, !41, i64 248}
!99 = !{!"Curve", !50, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !41, i64 244, !41, i64 246, !41, i64 248, !41, i64 250, !53, i64 252, !53, i64 256, !51, i64 260, !41, i64 264, !41, i64 266, !51, i64 268, !53, i64 272, !53, i64 276, !53, i64 280, !41, i64 284, !41, i64 286, !41, i64 288, !41, i64 290, !51, i64 292, !51, i64 296, !37, i64 300, !41, i64 304, !37, i64 306, !37, i64 307, !53, i64 308, !53, i64 312, !53, i64 316, !53, i64 320, !53, i64 324, !53, i64 328, !53, i64 332, !53, i64 336, !53, i64 340, !53, i64 344, !51, i64 348, !51, i64 352, !51, i64 356, !51, i64 360, !51, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !51, i64 488, !51, i64 492, !36, i64 496, !100, i64 504, !53, i64 512, !53, i64 516, !53, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!100 = !{!"CharInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !41, i64 6}
!101 = !{!102, !37, i64 52}
!102 = !{!"BezTriple", !37, i64 0, !53, i64 36, !53, i64 40, !53, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !53, i64 56, !53, i64 60, !53, i64 64, !37, i64 68}
!103 = !{!102, !37, i64 51}
!104 = !{!102, !37, i64 53}
!105 = distinct !{!105, !91, !92}
!106 = !{!95, !51, i64 28}
!107 = !{!95, !36, i64 64}
!108 = !{!109, !41, i64 24}
!109 = !{!"BPoint", !37, i64 0, !53, i64 16, !53, i64 20, !41, i64 24, !41, i64 26, !53, i64 28, !53, i64 32}
!110 = distinct !{!110, !91, !92}
!111 = distinct !{!111, !91, !92}
!112 = !{!113, !36, i64 272}
!113 = !{!"Lattice", !50, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !41, i64 136, !41, i64 138, !41, i64 140, !41, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !51, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!114 = !{!115, !36, i64 0}
!115 = !{!"EditLatt", !36, i64 0, !51, i64 8, !37, i64 12}
!116 = !{!113, !41, i64 128}
!117 = !{!113, !41, i64 130}
!118 = !{!113, !41, i64 132}
!119 = !{!113, !36, i64 176}
!120 = distinct !{!120, !91, !92}
!121 = !{!122, !36, i64 120}
!122 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!123 = !{!124, !36, i64 32}
!124 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !125, i64 16}
!125 = !{!"PointerRNA", !126, i64 0, !36, i64 8, !36, i64 16}
!126 = !{!"", !36, i64 0}
!127 = !{!49, !36, i64 216}
!128 = !{!57, !36, i64 168}
!129 = !{!130, !36, i64 32}
!130 = !{!"Base", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!131 = !{!49, !41, i64 138}
!132 = !{!49, !51, i64 140}
!133 = !{!49, !51, i64 144}
!134 = !{!49, !51, i64 148}
!135 = distinct !{!135, !91, !92}
!136 = !{!35, !36, i64 88}
!137 = !{!35, !36, i64 104}
!138 = !{!57, !36, i64 24}
!139 = !{!49, !36, i64 1256}
!140 = !{!141, !36, i64 24}
!141 = !{!"Group", !50, i64 0, !39, i64 120, !51, i64 136, !37, i64 140}
!142 = !{!49, !36, i64 24}
!143 = !{!122, !36, i64 88}
!144 = !{!122, !36, i64 112}
!145 = !{!146, !36, i64 16}
!146 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 34}
!147 = !{!130, !51, i64 16}
!148 = !{!49, !51, i64 944}
!149 = !{!51, !51, i64 0}
!150 = !{!151, !36, i64 24}
!151 = !{!"EnumPropertyItem", !51, i64 0, !36, i64 8, !51, i64 16, !36, i64 24, !36, i64 32}
!152 = !{!151, !36, i64 8}
!153 = !{!151, !51, i64 0}
!154 = distinct !{!154, !91, !92}
!155 = !{!49, !36, i64 416}
!156 = !{!157, !36, i64 0}
!157 = !{!"ModifierData", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!158 = !{!157, !51, i64 16}
!159 = distinct !{!159, !91, !92}
!160 = distinct !{!160, !91, !92}
!161 = !{!99, !51, i64 268}
!162 = !{!163, !36, i64 48}
!163 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !51, i64 64, !53, i64 68, !41, i64 72, !41, i64 74, !51, i64 76, !36, i64 80, !51, i64 88, !37, i64 92, !53, i64 104, !53, i64 108}
!164 = !{!163, !36, i64 56}
!165 = !{!163, !36, i64 32}
!166 = !{!167, !36, i64 112}
!167 = !{!"CurveModifierData", !157, i64 0, !36, i64 112, !37, i64 120, !41, i64 184, !37, i64 186}
!168 = !{!49, !36, i64 1280}
!169 = !{!170, !36, i64 48}
!170 = !{!"CurveCache", !39, i64 0, !39, i64 16, !39, i64 32, !36, i64 48}
!171 = !{!172, !36, i64 112}
!172 = !{!"LatticeModifierData", !157, i64 0, !36, i64 112, !37, i64 120, !53, i64 184, !37, i64 188}
!173 = !{!174, !36, i64 120}
!174 = !{!"ArmatureModifierData", !157, i64 0, !41, i64 112, !41, i64 114, !51, i64 116, !36, i64 120, !36, i64 128, !37, i64 136}
!175 = !{!176, !36, i64 120}
!176 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !53, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !53, i64 524, !53, i64 528, !53, i64 532, !36, i64 536}
!177 = !{!178, !51, i64 176}
!178 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !53, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !51, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !53, i64 268, !53, i64 272, !53, i64 276, !53, i64 280, !53, i64 284, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !53, i64 304, !37, i64 308, !51, i64 320, !41, i64 324, !37, i64 326}
!179 = !{!180, !36, i64 16}
!180 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !41, i64 94, !53, i64 96, !53, i64 100, !36, i64 104, !53, i64 112, !53, i64 116}
!181 = !{!182, !36, i64 0}
!182 = !{!"bFollowPathConstraint", !36, i64 0, !53, i64 8, !53, i64 12, !51, i64 16, !41, i64 20, !41, i64 22}
!183 = !{!57, !51, i64 680}
!184 = !{!53, !53, i64 0}
!185 = !{!35, !36, i64 80}
!186 = !{i64 0, i64 8, !93, i64 8, i64 8, !93, i64 16, i64 8, !93}
!187 = !{!188, !51, i64 0}
!188 = !{!"KDTreeNearest", !51, i64 0, !53, i64 4, !37, i64 8}
!189 = !{i8 0, i8 2}
!190 = !{!122, !36, i64 152}
!191 = !{!122, !36, i64 80}
!192 = distinct !{!192, !91, !92}
!193 = distinct !{!193, !91, !92}
!194 = distinct !{!194, !91, !92}
!195 = !{!49, !36, i64 224}
!196 = !{!49, !36, i64 1184}
!197 = !{!180, !36, i64 8}
!198 = !{!180, !41, i64 24}
!199 = distinct !{!199, !91, !92}
!200 = distinct !{!200, !91, !92}
!201 = !{!202, !36, i64 0}
!202 = !{!"bDampTrackConstraint", !36, i64 0, !51, i64 8, !51, i64 12, !37, i64 16}
!203 = !{!202, !51, i64 8}
!204 = distinct !{!204, !91, !92}
!205 = !{!206, !36, i64 0}
!206 = !{!"bTrackToConstraint", !36, i64 0, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !37, i64 24}
!207 = !{!206, !51, i64 8}
!208 = !{!206, !51, i64 12}
!209 = distinct !{!209, !91, !92}
!210 = !{!211, !36, i64 0}
!211 = !{!"bLockTrackConstraint", !36, i64 0, !51, i64 8, !51, i64 12, !37, i64 16}
!212 = !{!211, !51, i64 8}
!213 = !{!211, !51, i64 12}
!214 = distinct !{!214, !91, !92}
!215 = !{!216, !36, i64 152}
!216 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !51, i64 32, !53, i64 36, !37, i64 40, !37, i64 56, !53, i64 72, !53, i64 76, !37, i64 80, !37, i64 81, !51, i64 84, !51, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !64, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !51, i64 224, !51, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !53, i64 244, !53, i64 248, !53, i64 252, !53, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!217 = !{!216, !51, i64 224}
!218 = !{!49, !41, i64 948}
!219 = !{!130, !51, i64 24}
!220 = distinct !{!220, !91, !92}
!221 = distinct !{!221, !91, !92}
!222 = distinct !{!222, !91, !92}
!223 = !{!49, !51, i64 456}
!224 = !{!50, !51, i64 100}
!225 = distinct !{!225, !91, !92}
!226 = !{!50, !36, i64 24}
!227 = !{!228, !36, i64 8}
!228 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!229 = !{!228, !36, i64 0}
!230 = distinct !{!230, !91, !92}
!231 = !{!49, !41, i64 952}
!232 = !{!99, !36, i64 448}
!233 = !{!234, !51, i64 100}
!234 = !{!"VFont", !50, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160}
!235 = !{!99, !36, i64 456}
!236 = !{!99, !36, i64 464}
!237 = !{!99, !36, i64 472}
!238 = distinct !{!238, !91, !92}
!239 = distinct !{!239, !91, !92}
!240 = !{!49, !36, i64 16}
!241 = distinct !{!241, !91, !92}
!242 = !{!49, !51, i64 100}
!243 = distinct !{!243, !91, !92}
!244 = !{!141, !36, i64 16}
!245 = !{!141, !36, i64 120}
!246 = !{!146, !36, i64 0}
!247 = distinct !{!247, !91, !92}
!248 = distinct !{!248, !91, !92}
!249 = distinct !{!249, !91, !92}
!250 = !{!57, !36, i64 128}
!251 = !{!216, !36, i64 96}
!252 = distinct !{!252, !91, !92}
!253 = distinct !{!253, !91, !92}
!254 = !{!49, !41, i64 98}
!255 = !{!49, !36, i64 440}
!256 = !{!50, !36, i64 16}
!257 = distinct !{!257, !91, !92}
!258 = distinct !{!258, !91, !92}
!259 = !{!76, !41, i64 98}
!260 = !{!76, !36, i64 152}
!261 = !{!76, !41, i64 1366}
!262 = distinct !{!262, !91, !92}
!263 = !{!99, !41, i64 98}
!264 = !{!99, !36, i64 200}
!265 = !{!99, !41, i64 266}
!266 = distinct !{!266, !91, !92}
!267 = !{!268, !41, i64 98}
!268 = !{!"MetaBall", !50, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !41, i64 186, !41, i64 188, !41, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !53, i64 228, !53, i64 232, !53, i64 236, !36, i64 240}
!269 = !{!268, !36, i64 176}
!270 = !{!268, !41, i64 186}
!271 = distinct !{!271, !91, !92}
!272 = !{!273, !41, i64 98}
!273 = !{!"Material", !50, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !53, i64 132, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !53, i64 208, !53, i64 212, !53, i64 216, !53, i64 220, !274, i64 224, !275, i64 312, !53, i64 328, !53, i64 332, !53, i64 336, !53, i64 340, !53, i64 344, !53, i64 348, !53, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !37, i64 362, !37, i64 363, !53, i64 364, !53, i64 368, !41, i64 372, !41, i64 374, !53, i64 376, !53, i64 380, !53, i64 384, !53, i64 388, !41, i64 392, !41, i64 394, !51, i64 396, !51, i64 400, !51, i64 404, !51, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !53, i64 420, !53, i64 424, !53, i64 428, !53, i64 432, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !53, i64 456, !37, i64 460, !53, i64 524, !53, i64 528, !53, i64 532, !51, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !37, i64 550, !37, i64 551, !41, i64 552, !41, i64 554, !53, i64 556, !53, i64 560, !37, i64 564, !53, i64 580, !53, i64 584, !41, i64 588, !41, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !41, i64 612, !41, i64 614, !53, i64 616, !53, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !53, i64 800, !53, i64 804, !53, i64 808, !53, i64 812, !53, i64 816, !41, i64 820, !41, i64 822, !37, i64 824, !37, i64 836, !53, i64 848, !53, i64 852, !53, i64 856, !53, i64 860, !53, i64 864, !53, i64 868, !53, i64 872, !41, i64 876, !41, i64 878, !51, i64 880, !41, i64 884, !41, i64 886, !37, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!274 = !{!"VolumeSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !53, i64 52, !53, i64 56, !53, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !53, i64 72, !53, i64 76, !53, i64 80, !53, i64 84}
!275 = !{!"GameSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!276 = !{!277, !36, i64 8}
!277 = !{!"MTex", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !53, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !41, i64 128, !41, i64 130, !37, i64 132, !37, i64 133, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !53, i64 208, !53, i64 212, !53, i64 216, !53, i64 220, !53, i64 224, !53, i64 228, !53, i64 232, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252, !53, i64 256, !53, i64 260, !53, i64 264, !53, i64 268, !53, i64 272, !53, i64 276, !53, i64 280, !53, i64 284, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !53, i64 304, !53, i64 308}
!278 = distinct !{!278, !91, !92}
!279 = distinct !{!279, !91, !92}
!280 = !{!281, !36, i64 16}
!281 = !{!"Tex", !50, i64 0, !36, i64 120, !53, i64 128, !53, i64 132, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !53, i64 208, !53, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !51, i64 252, !51, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !51, i64 268, !51, i64 272, !51, i64 276, !51, i64 280, !53, i64 284, !53, i64 288, !53, i64 292, !282, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!282 = !{!"ImageUser", !36, i64 0, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !51, i64 36}
!283 = !{!281, !51, i64 100}
!284 = distinct !{!284, !91, !92}
!285 = distinct !{!285, !91, !92}
!286 = !{!287, !41, i64 98}
!287 = !{!"Lamp", !50, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !51, i64 132, !41, i64 136, !41, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !36, i64 200, !41, i64 208, !41, i64 210, !53, i64 212, !53, i64 216, !53, i64 220, !53, i64 224, !53, i64 228, !53, i64 232, !53, i64 236, !41, i64 240, !41, i64 242, !41, i64 244, !41, i64 246, !37, i64 248, !37, i64 249, !41, i64 250, !41, i64 252, !41, i64 254, !41, i64 256, !41, i64 258, !53, i64 260, !53, i64 264, !53, i64 268, !53, i64 272, !41, i64 276, !41, i64 278, !41, i64 280, !41, i64 282, !41, i64 284, !41, i64 286, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !53, i64 304, !53, i64 308, !53, i64 312, !53, i64 316, !53, i64 320, !53, i64 324, !53, i64 328, !53, i64 332, !53, i64 336, !41, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !41, i64 496, !41, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!288 = distinct !{!288, !91, !92}
!289 = distinct !{!289, !91, !92}
!290 = !{!291, !41, i64 98}
!291 = !{!"World", !50, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !53, i64 216, !53, i64 220, !53, i64 224, !53, i64 228, !53, i64 232, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252, !53, i64 256, !53, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !53, i64 272, !53, i64 276, !53, i64 280, !53, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !53, i64 296, !53, i64 300, !53, i64 304, !53, i64 308, !53, i64 312, !53, i64 316, !53, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !41, i64 504, !41, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!292 = distinct !{!292, !91, !92}
!293 = distinct !{!293, !91, !92}
!294 = distinct !{!294, !91, !92}
!295 = !{!76, !36, i64 144}
!296 = !{!99, !36, i64 160}
!297 = !{!99, !36, i64 168}
!298 = !{!99, !36, i64 192}
!299 = !{!113, !36, i64 192}
!300 = !{!301, !51, i64 2100}
!301 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !51, i64 2096, !51, i64 2100, !37, i64 2104, !51, i64 2108, !51, i64 2112, !37, i64 2116}
!302 = distinct !{!302, !91, !92}
!303 = !{!76, !36, i64 264}
!304 = !{!76, !36, i64 16}
!305 = distinct !{!305, !91, !92}
!306 = distinct !{!306, !91, !92}
!307 = !{!50, !41, i64 98}
!308 = distinct !{!308, !91, !92}
!309 = distinct !{!309, !91, !92}
!310 = distinct !{!310, !91, !92}
!311 = distinct !{!311, !91, !92}
!312 = distinct !{!312, !91, !92}
!313 = !{!314, !36, i64 16}
!314 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !37, i64 168, !37, i64 232, !53, i64 296, !53, i64 300, !53, i64 304, !51, i64 308, !51, i64 312, !51, i64 316, !51, i64 320, !51, i64 324, !51, i64 328, !51, i64 332, !51, i64 336, !41, i64 340, !41, i64 342, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 540, !41, i64 564, !41, i64 566, !36, i64 568, !36, i64 576, !39, i64 584, !36, i64 600, !36, i64 608, !51, i64 616, !51, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !53, i64 648, !53, i64 652}
!315 = distinct !{!315, !91, !92}
!316 = distinct !{!316, !91, !92}
!317 = !{!277, !36, i64 16}
!318 = distinct !{!318, !91, !92}
!319 = distinct !{!319, !91, !92}
!320 = distinct !{!320, !91, !92}
!321 = distinct !{!321, !91, !92}
!322 = distinct !{!322, !91, !92}
!323 = !{!273, !51, i64 100}
!324 = distinct !{!324, !91, !92}
!325 = distinct !{!325, !91, !92}
!326 = distinct !{!326, !91, !92}
!327 = !{!328, !36, i64 24}
!328 = !{!"PropertyPointerRNA", !125, i64 0, !36, i64 24}
!329 = !{!328, !36, i64 0}
!330 = !{!41, !41, i64 0}
!331 = distinct !{!331, !91, !92}
!332 = distinct !{!332, !91, !92}
!333 = distinct !{!333, !91, !92}
