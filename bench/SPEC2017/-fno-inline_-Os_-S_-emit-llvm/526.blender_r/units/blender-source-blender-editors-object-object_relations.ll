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
%struct.bDampTrackConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bTrackToConstraint = type { ptr, i32, i32, i32, i32, [64 x i8] }
%struct.bLockTrackConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.PropertyPointerRNA = type { %struct.PointerRNA, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.KDTreeNearest = type { i32, float, [3 x float] }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_parent_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_parent_set_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_parent_set_exec, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vertex_parent_set_poll(ptr noundef %0) #2 {
  %2 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_editsurfcurve(ptr noundef %0) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call i32 @ED_operator_editlattice(ptr noundef %0) #12
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 1, %4 ], [ 1, %1 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_parent_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.Object, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !19
  switch i16 %10, label %231 [
    i16 1, label %11
    i16 3, label %48
    i16 2, label %48
    i16 22, label %164
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  tail call void @EDBM_mesh_load(ptr noundef nonnull %8) #12
  %14 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  tail call void @EDBM_mesh_make(ptr noundef %15, ptr noundef nonnull %8) #12
  %16 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  tail call void @EDBM_mesh_normals_update(ptr noundef %17) #12
  tail call void @BKE_editmesh_tessface_calc(ptr noundef %17) #12
  %18 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !49
  %19 = or i64 %18, 128
  tail call void @makeDerivedMesh(ptr noundef %7, ptr noundef nonnull %8, ptr noundef %17, i64 noundef %19, i32 noundef 0) #12
  %20 = load ptr, ptr %17, align 8, !tbaa !50
  %21 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %20) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %231, label %23

23:                                               ; preds = %11, %40
  %24 = phi ptr [ %46, %40 ], [ %21, %11 ]
  %25 = phi i32 [ %45, %40 ], [ 1, %11 ]
  %26 = phi i32 [ %44, %40 ], [ 0, %11 ]
  %27 = phi i32 [ %43, %40 ], [ 0, %11 ]
  %28 = phi i32 [ %42, %40 ], [ 0, %11 ]
  %29 = phi i32 [ %41, %40 ], [ 0, %11 ]
  %30 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %24) #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = icmp eq i32 %28, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = icmp eq i32 %27, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = icmp eq i32 %26, 0
  br i1 %39, label %40, label %231

40:                                               ; preds = %38, %36, %34, %32, %23
  %41 = phi i32 [ %29, %23 ], [ %25, %32 ], [ %29, %34 ], [ %29, %36 ], [ %29, %38 ]
  %42 = phi i32 [ %28, %23 ], [ %28, %32 ], [ %25, %34 ], [ %28, %36 ], [ %28, %38 ]
  %43 = phi i32 [ %27, %23 ], [ %27, %32 ], [ %27, %34 ], [ %25, %36 ], [ %27, %38 ]
  %44 = phi i32 [ %26, %23 ], [ %26, %32 ], [ %26, %34 ], [ %26, %36 ], [ %25, %38 ]
  %45 = add nuw nsw i32 %25, 1
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %214, label %23, !llvm.loop !52

48:                                               ; preds = %2, %2
  %49 = tail call ptr @object_editcurve_get(ptr noundef nonnull %8) #12
  %50 = load ptr, ptr %49, align 8, !tbaa !54
  %51 = icmp eq ptr %50, null
  br i1 %51, label %231, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !26
  %55 = getelementptr inbounds %struct.Curve, ptr %54, i64 0, i32 16
  br label %56

56:                                               ; preds = %52, %156
  %57 = phi ptr [ %50, %52 ], [ %162, %156 ]
  %58 = phi i32 [ 1, %52 ], [ %161, %156 ]
  %59 = phi i32 [ 0, %52 ], [ %160, %156 ]
  %60 = phi i32 [ 0, %52 ], [ %159, %156 ]
  %61 = phi i32 [ 0, %52 ], [ %158, %156 ]
  %62 = phi i32 [ 0, %52 ], [ %157, %156 ]
  %63 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 2
  %64 = load i16, ptr %63, align 8, !tbaa !55
  %65 = icmp eq i16 %64, 1
  %66 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !57
  br i1 %65, label %68, label %118

68:                                               ; preds = %56
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %156, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 18
  %72 = load ptr, ptr %71, align 8, !tbaa !58
  %73 = load i16, ptr %55, align 8, !tbaa !59
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  %76 = add i32 %58, %67
  br label %77

77:                                               ; preds = %70, %110
  %78 = phi i32 [ %67, %70 ], [ %85, %110 ]
  %79 = phi ptr [ %72, %70 ], [ %116, %110 ]
  %80 = phi i32 [ %58, %70 ], [ %115, %110 ]
  %81 = phi i32 [ %59, %70 ], [ %114, %110 ]
  %82 = phi i32 [ %60, %70 ], [ %113, %110 ]
  %83 = phi i32 [ %61, %70 ], [ %112, %110 ]
  %84 = phi i32 [ %62, %70 ], [ %111, %110 ]
  %85 = add nsw i32 %78, -1
  %86 = getelementptr inbounds %struct.BezTriple, ptr %79, i64 0, i32 8
  %87 = load i8, ptr %86, align 4, !tbaa !62
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %75, label %91, label %90

90:                                               ; preds = %77
  br i1 %89, label %110, label %102

91:                                               ; preds = %77
  br i1 %89, label %92, label %102

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.BezTriple, ptr %79, i64 0, i32 7
  %94 = load i8, ptr %93, align 1, !tbaa !64
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.BezTriple, ptr %79, i64 0, i32 9
  %99 = load i8, ptr %98, align 1, !tbaa !65
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97, %92, %91, %90
  %103 = icmp eq i32 %84, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %102
  %105 = icmp eq i32 %83, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %104
  %107 = icmp eq i32 %82, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %106
  %109 = icmp eq i32 %81, 0
  br i1 %109, label %110, label %156

110:                                              ; preds = %108, %106, %104, %102, %97, %90
  %111 = phi i32 [ %84, %90 ], [ %84, %97 ], [ %80, %102 ], [ %84, %104 ], [ %84, %106 ], [ %84, %108 ]
  %112 = phi i32 [ %83, %90 ], [ %83, %97 ], [ %83, %102 ], [ %80, %104 ], [ %83, %106 ], [ %83, %108 ]
  %113 = phi i32 [ %82, %90 ], [ %82, %97 ], [ %82, %102 ], [ %82, %104 ], [ %80, %106 ], [ %82, %108 ]
  %114 = phi i32 [ %81, %90 ], [ %81, %97 ], [ %81, %102 ], [ %81, %104 ], [ %81, %106 ], [ %80, %108 ]
  %115 = add nsw i32 %80, 1
  %116 = getelementptr inbounds %struct.BezTriple, ptr %79, i64 1
  %117 = icmp eq i32 %85, 0
  br i1 %117, label %156, label %77, !llvm.loop !66

118:                                              ; preds = %56
  %119 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 7
  %120 = load i32, ptr %119, align 4, !tbaa !67
  %121 = mul nsw i32 %120, %67
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %156, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.Nurb, ptr %57, i64 0, i32 17
  %125 = load ptr, ptr %124, align 8, !tbaa !68
  %126 = add i32 %58, %121
  br label %127

127:                                              ; preds = %123, %148
  %128 = phi i32 [ %135, %148 ], [ %121, %123 ]
  %129 = phi ptr [ %154, %148 ], [ %125, %123 ]
  %130 = phi i32 [ %153, %148 ], [ %58, %123 ]
  %131 = phi i32 [ %152, %148 ], [ %59, %123 ]
  %132 = phi i32 [ %151, %148 ], [ %60, %123 ]
  %133 = phi i32 [ %150, %148 ], [ %61, %123 ]
  %134 = phi i32 [ %149, %148 ], [ %62, %123 ]
  %135 = add nsw i32 %128, -1
  %136 = getelementptr inbounds %struct.BPoint, ptr %129, i64 0, i32 3
  %137 = load i16, ptr %136, align 4, !tbaa !69
  %138 = and i16 %137, 1
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %127
  %141 = icmp eq i32 %134, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %140
  %143 = icmp eq i32 %133, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %142
  %145 = icmp eq i32 %132, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %144
  %147 = icmp eq i32 %131, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %146, %144, %142, %140, %127
  %149 = phi i32 [ %134, %127 ], [ %130, %140 ], [ %134, %142 ], [ %134, %144 ], [ %134, %146 ]
  %150 = phi i32 [ %133, %127 ], [ %133, %140 ], [ %130, %142 ], [ %133, %144 ], [ %133, %146 ]
  %151 = phi i32 [ %132, %127 ], [ %132, %140 ], [ %132, %142 ], [ %130, %144 ], [ %132, %146 ]
  %152 = phi i32 [ %131, %127 ], [ %131, %140 ], [ %131, %142 ], [ %131, %144 ], [ %130, %146 ]
  %153 = add nsw i32 %130, 1
  %154 = getelementptr inbounds %struct.BPoint, ptr %129, i64 1
  %155 = icmp eq i32 %135, 0
  br i1 %155, label %156, label %127, !llvm.loop !71

156:                                              ; preds = %146, %148, %108, %110, %118, %68
  %157 = phi i32 [ %62, %68 ], [ %62, %118 ], [ %84, %108 ], [ %111, %110 ], [ %134, %146 ], [ %149, %148 ]
  %158 = phi i32 [ %61, %68 ], [ %61, %118 ], [ %83, %108 ], [ %112, %110 ], [ %133, %146 ], [ %150, %148 ]
  %159 = phi i32 [ %60, %68 ], [ %60, %118 ], [ %82, %108 ], [ %113, %110 ], [ %132, %146 ], [ %151, %148 ]
  %160 = phi i32 [ %59, %68 ], [ %59, %118 ], [ %81, %108 ], [ %114, %110 ], [ %131, %146 ], [ %152, %148 ]
  %161 = phi i32 [ %58, %68 ], [ %58, %118 ], [ %80, %108 ], [ %76, %110 ], [ %130, %146 ], [ %126, %148 ]
  %162 = load ptr, ptr %57, align 8, !tbaa !54
  %163 = icmp eq ptr %162, null
  br i1 %163, label %214, label %56, !llvm.loop !72

164:                                              ; preds = %2
  %165 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %166 = load ptr, ptr %165, align 8, !tbaa !26
  %167 = getelementptr inbounds %struct.Lattice, ptr %166, i64 0, i32 26
  %168 = load ptr, ptr %167, align 8, !tbaa !73
  %169 = load ptr, ptr %168, align 8, !tbaa !75
  %170 = getelementptr inbounds %struct.Lattice, ptr %169, i64 0, i32 2
  %171 = load i16, ptr %170, align 8, !tbaa !77
  %172 = sext i16 %171 to i32
  %173 = getelementptr inbounds %struct.Lattice, ptr %169, i64 0, i32 3
  %174 = load i16, ptr %173, align 2, !tbaa !78
  %175 = sext i16 %174 to i32
  %176 = mul nsw i32 %175, %172
  %177 = getelementptr inbounds %struct.Lattice, ptr %169, i64 0, i32 4
  %178 = load i16, ptr %177, align 4, !tbaa !79
  %179 = sext i16 %178 to i32
  %180 = mul nsw i32 %176, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %231, label %182

182:                                              ; preds = %164
  %183 = getelementptr inbounds %struct.Lattice, ptr %169, i64 0, i32 21
  %184 = load ptr, ptr %183, align 8, !tbaa !80
  br label %185

185:                                              ; preds = %182, %206
  %186 = phi i32 [ %193, %206 ], [ %180, %182 ]
  %187 = phi ptr [ %212, %206 ], [ %184, %182 ]
  %188 = phi i32 [ %211, %206 ], [ 1, %182 ]
  %189 = phi i32 [ %210, %206 ], [ 0, %182 ]
  %190 = phi i32 [ %209, %206 ], [ 0, %182 ]
  %191 = phi i32 [ %208, %206 ], [ 0, %182 ]
  %192 = phi i32 [ %207, %206 ], [ 0, %182 ]
  %193 = add nsw i32 %186, -1
  %194 = getelementptr inbounds %struct.BPoint, ptr %187, i64 0, i32 3
  %195 = load i16, ptr %194, align 4, !tbaa !69
  %196 = and i16 %195, 1
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %185
  %199 = icmp eq i32 %192, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %198
  %201 = icmp eq i32 %191, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %200
  %203 = icmp eq i32 %190, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %202
  %205 = icmp eq i32 %189, 0
  br i1 %205, label %206, label %231

206:                                              ; preds = %204, %202, %200, %198, %185
  %207 = phi i32 [ %192, %185 ], [ %188, %198 ], [ %192, %200 ], [ %192, %202 ], [ %192, %204 ]
  %208 = phi i32 [ %191, %185 ], [ %191, %198 ], [ %188, %200 ], [ %191, %202 ], [ %191, %204 ]
  %209 = phi i32 [ %190, %185 ], [ %190, %198 ], [ %190, %200 ], [ %188, %202 ], [ %190, %204 ]
  %210 = phi i32 [ %189, %185 ], [ %189, %198 ], [ %189, %200 ], [ %189, %202 ], [ %188, %204 ]
  %211 = add nuw nsw i32 %188, 1
  %212 = getelementptr inbounds %struct.BPoint, ptr %187, i64 1
  %213 = icmp eq i32 %193, 0
  br i1 %213, label %214, label %185, !llvm.loop !81

214:                                              ; preds = %206, %156, %40
  %215 = phi i32 [ %41, %40 ], [ %157, %156 ], [ %207, %206 ]
  %216 = phi i32 [ %42, %40 ], [ %158, %156 ], [ %208, %206 ]
  %217 = phi i32 [ %43, %40 ], [ %159, %156 ], [ %209, %206 ]
  %218 = phi i32 [ %44, %40 ], [ %160, %156 ], [ %210, %206 ]
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %231

220:                                              ; preds = %214
  %221 = icmp ne i32 %215, 0
  %222 = icmp eq i32 %216, 0
  %223 = select i1 %221, i1 %222, i1 false
  %224 = icmp eq i32 %217, 0
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %234, label %226

226:                                              ; preds = %220
  %227 = icmp ne i32 %216, 0
  %228 = select i1 %221, i1 %227, i1 false
  %229 = icmp ne i32 %217, 0
  %230 = select i1 %228, i1 %229, i1 false
  br i1 %230, label %234, label %231

231:                                              ; preds = %204, %38, %164, %48, %11, %2, %226, %214
  %232 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %233 = load ptr, ptr %232, align 8, !tbaa !82
  call void @BKE_report(ptr noundef %233, i32 noundef 32, ptr noundef nonnull @.str.138) #12
  br label %277

234:                                              ; preds = %226, %220
  %235 = phi i32 [ %216, %226 ], [ 0, %220 ]
  %236 = phi i32 [ %217, %226 ], [ 0, %220 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %237 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #12
  %238 = load ptr, ptr %4, align 8, !tbaa !54
  %239 = icmp eq ptr %238, null
  br i1 %239, label %276, label %240

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 9
  %242 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %243 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %244 = add nsw i32 %215, -1
  %245 = add nsw i32 %235, -1
  %246 = add nsw i32 %236, -1
  %247 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  br label %248

248:                                              ; preds = %240, %273
  %249 = phi ptr [ %238, %240 ], [ %274, %273 ]
  %250 = getelementptr inbounds %struct.CollectionPointerLink, ptr %249, i64 0, i32 2, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !84
  %252 = icmp eq ptr %251, %8
  br i1 %252, label %273, label %253

253:                                              ; preds = %248
  call void @DAG_id_tag_update(ptr noundef %251, i16 noundef signext 7) #12
  %254 = load ptr, ptr %241, align 8, !tbaa !88
  %255 = call zeroext i8 @BKE_object_parent_loop_check(ptr noundef %254, ptr noundef %251) #12
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr %242, align 8, !tbaa !82
  call void @BKE_report(ptr noundef %258, i32 noundef 32, ptr noundef nonnull @.str.51) #12
  br label %273

259:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %5) #13
  %260 = load ptr, ptr %243, align 8, !tbaa !89
  %261 = getelementptr inbounds %struct.Base, ptr %260, i64 0, i32 7
  %262 = load ptr, ptr %261, align 8, !tbaa !90
  %263 = getelementptr inbounds %struct.Object, ptr %251, i64 0, i32 9
  store ptr %262, ptr %263, align 8, !tbaa !88
  %264 = getelementptr inbounds %struct.Object, ptr %251, i64 0, i32 4
  %265 = getelementptr inbounds %struct.Object, ptr %251, i64 0, i32 5
  br i1 %224, label %269, label %266

266:                                              ; preds = %259
  store i16 6, ptr %264, align 2, !tbaa !92
  store i32 %244, ptr %265, align 4, !tbaa !93
  %267 = getelementptr inbounds %struct.Object, ptr %251, i64 0, i32 6
  store i32 %245, ptr %267, align 8, !tbaa !94
  %268 = getelementptr inbounds %struct.Object, ptr %251, i64 0, i32 7
  store i32 %246, ptr %268, align 4, !tbaa !95
  br label %270

269:                                              ; preds = %259
  store i16 5, ptr %264, align 2, !tbaa !92
  store i32 %244, ptr %265, align 4, !tbaa !93
  br label %270

270:                                              ; preds = %269, %266
  call void @BKE_object_workob_calc_parent(ptr noundef nonnull %7, ptr noundef nonnull %251, ptr noundef nonnull %5) #12
  %271 = getelementptr inbounds %struct.Object, ptr %251, i64 0, i32 48
  %272 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %271, ptr noundef nonnull %247) #12
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %5) #13
  br label %273

273:                                              ; preds = %257, %270, %248
  %274 = load ptr, ptr %249, align 8, !tbaa !54
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %248, !llvm.loop !96

276:                                              ; preds = %273, %234
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @DAG_relations_tag_update(ptr noundef %6) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 83886080, ptr noundef null) #12
  br label %277

277:                                              ; preds = %276, %231
  %278 = phi i32 [ 2, %231 ], [ 4, %276 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 %278
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_proxy_make(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @make_proxy_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_proxy_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @proxy_group_object_itemf) #12
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_proxy_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %6 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  %7 = icmp eq ptr %5, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = icmp eq ptr %10, null
  %12 = icmp ne ptr %6, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 112
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %37

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.139, i32 noundef 1) #12
  %30 = tail call ptr @uiPupMenuLayout(ptr noundef %29) #12
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !104
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %30, ptr noundef nonnull %32, ptr noundef %33, i32 noundef 0, ptr noundef null, i32 noundef 7, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %29) #12
  br label %37

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  tail call void @BKE_report(ptr noundef %36, i32 noundef 32, ptr noundef nonnull @.str.140) #12
  br label %37

37:                                               ; preds = %3, %8, %34, %28, %22
  %38 = phi i32 [ 2, %22 ], [ 32, %28 ], [ 2, %34 ], [ 2, %8 ], [ 2, %3 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_proxy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [70 x i8], align 16
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 112
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Group, ptr %8, i64 0, i32 1
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.6) #12
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %11, i32 noundef %14) #12
  %16 = getelementptr inbounds %struct.GroupObject, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %2, %10
  %20 = phi ptr [ %17, %10 ], [ %5, %2 ]
  %21 = phi ptr [ %5, %10 ], [ null, %2 ]
  %22 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %3) #13
  %24 = tail call ptr @BKE_object_add(ptr noundef %4, ptr noundef %6, i32 noundef 0) #12
  %25 = icmp eq ptr %21, null
  %26 = select i1 %25, ptr %20, ptr %21
  %27 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 4, i64 2
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 70, ptr noundef nonnull @.str.141, ptr noundef nonnull %27) #12
  call void @rename_id(ptr noundef %24, ptr noundef nonnull %3) #12
  %29 = load ptr, ptr %22, align 8, !tbaa !89
  %30 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct.Base, ptr %29, i64 0, i32 2
  store i32 %31, ptr %32, align 8, !tbaa !108
  %33 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 52
  store i32 %31, ptr %33, align 8, !tbaa !109
  br i1 %25, label %34, label %36

34:                                               ; preds = %19
  call void @BKE_scene_base_unlink(ptr noundef nonnull %6, ptr noundef nonnull %23) #12
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %35(ptr noundef nonnull %23) #12
  br label %36

36:                                               ; preds = %34, %19
  call void @BKE_object_make_proxy(ptr noundef nonnull %24, ptr noundef nonnull %20, ptr noundef %21) #12
  call void @DAG_relations_tag_update(ptr noundef %4) #12
  call void @DAG_id_tag_update(ptr noundef nonnull %24, i16 noundef signext 7) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %24) #12
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %3) #13
  br label %40

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !82
  tail call void @BKE_report(ptr noundef %39, i32 noundef 32, ptr noundef nonnull @.str.142) #12
  br label %40

40:                                               ; preds = %36, %37
  %41 = phi i32 [ 4, %36 ], [ 2, %37 ]
  ret i32 %41
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @proxy_group_object_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr null, ptr %6, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !110
  %8 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 112
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Group, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
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
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  %26 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4, i64 2
  store ptr %26, ptr %19, align 8, !tbaa !111
  store ptr %26, ptr %20, align 8, !tbaa !113
  %27 = add nuw nsw i32 %23, 1
  store i32 %23, ptr %5, align 8, !tbaa !114
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #12
  %28 = load ptr, ptr %22, align 8, !tbaa !54
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !115

30:                                               ; preds = %21, %14
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  store i8 1, ptr %3, align 1, !tbaa !116
  %31 = load ptr, ptr %6, align 8, !tbaa !54
  br label %32

32:                                               ; preds = %4, %10, %30
  %33 = phi ptr [ %31, %30 ], [ @DummyRNA_DEFAULT_items, %10 ], [ @DummyRNA_DEFAULT_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #13
  ret ptr %33
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_parent_clear(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  switch i32 %1, label %10 [
    i32 0, label %7
    i32 1, label %8
  ]

7:                                                ; preds = %6
  tail call fastcc void @object_remove_parent_deform_modifiers(ptr noundef nonnull %0, ptr noundef nonnull %4) #14
  store ptr null, ptr %3, align 8, !tbaa !88
  br label %10

8:                                                ; preds = %6
  store ptr null, ptr %3, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @BKE_object_apply_mat4(ptr noundef nonnull %0, ptr noundef nonnull %9, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  br label %10

10:                                               ; preds = %6, %8, %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %11) #12
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 7) #12
  br label %12

12:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_remove_parent_deform_modifiers(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !19
  switch i16 %4, label %38 [
    i16 25, label %5
    i16 22, label %5
    i16 2, label %5
  ]

5:                                                ; preds = %2, %2, %2
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5, %36
  %10 = phi ptr [ %11, %36 ], [ %7, %5 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.ModifierData, ptr %10, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !120
  switch i32 %13, label %36 [
    i32 8, label %14
    i32 2, label %21
    i32 3, label %28
  ]

14:                                               ; preds = %9
  %15 = load i16, ptr %3, align 8, !tbaa !19
  %16 = icmp eq i16 %15, 25
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ArmatureModifierData, ptr %10, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !121
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %35, label %36

21:                                               ; preds = %9
  %22 = load i16, ptr %3, align 8, !tbaa !19
  %23 = icmp eq i16 %22, 22
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.LatticeModifierData, ptr %10, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !123
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %35, label %36

28:                                               ; preds = %9
  %29 = load i16, ptr %3, align 8, !tbaa !19
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.CurveModifierData, ptr %10, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !125
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %24, %17
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %10) #12
  tail call void @modifier_free(ptr noundef nonnull %10) #12
  br label %36

36:                                               ; preds = %9, %14, %21, %28, %31, %24, %17, %35
  %37 = icmp eq ptr %11, null
  br i1 %37, label %38, label %9, !llvm.loop !127

38:                                               ; preds = %36, %5, %2
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_parent_clear(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @parent_clear_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_clear_parent_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @parent_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.20) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %8 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #12
  %9 = load ptr, ptr %3, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2, %11
  %12 = phi ptr [ %15, %11 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  call void @ED_object_parent_clear(ptr noundef %14, i32 noundef %7) #14
  %15 = load ptr, ptr %12, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %11, !llvm.loop !128

17:                                               ; preds = %11, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @DAG_relations_tag_update(ptr noundef %4) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85786624, ptr noundef null) #12
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_parent(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %5) #12
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @BKE_object_parent_loop_check(ptr noundef nonnull %1, ptr noundef %0) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %4
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  store ptr null, ptr %11, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  store i16 0, ptr %12, align 2, !tbaa !92
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 8
  store i8 0, ptr %13, align 8, !tbaa !116
  br label %23

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  store ptr %1, ptr %15, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !92
  %18 = and i16 %17, -16
  %19 = trunc i32 %2 to i16
  %20 = or i16 %18, %19
  store i16 %20, ptr %16, align 2, !tbaa !92
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 8
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef %3, i64 noundef 64) #12
  br label %23

23:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_object_parent_loop_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_object_parent_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr nocapture noundef readonly %8) local_unnamed_addr #2 {
  %10 = alloca %struct.Object, align 8
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = add i32 %5, -1
  %14 = icmp ult i32 %13, 4
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 1) #12
  %15 = icmp eq i32 %5, 8
  %16 = and i32 %5, -2
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %50

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !19
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %22, label %180

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct.Curve, ptr %24, i64 0, i32 23
  %26 = load i32, ptr %25, align 4, !tbaa !129
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = or i32 %26, 24
  store i32 %30, ptr %25, align 4, !tbaa !129
  tail call void @BKE_displist_make_curveTypes(ptr noundef %2, ptr noundef nonnull %4, i8 noundef zeroext 0) #12
  br label %33

31:                                               ; preds = %22
  %32 = or i32 %26, 16
  store i32 %32, ptr %25, align 4, !tbaa !129
  br label %33

33:                                               ; preds = %31, %29
  br i1 %15, label %34, label %57

34:                                               ; preds = %33
  %35 = tail call ptr @verify_adt_action(ptr noundef nonnull %24, i16 noundef signext 1) #12
  %36 = tail call ptr @verify_fcurve(ptr noundef %35, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 0, i16 noundef signext 1) #12
  %37 = getelementptr inbounds %struct.FCurve, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !130
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.FCurve, ptr %36, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.FCurve, ptr %36, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !133
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = tail call ptr @add_fmodifier(ptr noundef nonnull %45, i32 noundef 1) #12
  br label %57

50:                                               ; preds = %9
  %51 = add i32 %5, -5
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = tail call ptr @BKE_pose_channel_active(ptr noundef %4) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.50) #12
  br label %180

57:                                               ; preds = %33, %48, %44, %40, %34, %50, %53
  %58 = phi ptr [ %54, %53 ], [ null, %50 ], [ null, %34 ], [ null, %40 ], [ null, %44 ], [ null, %48 ], [ null, %33 ]
  %59 = phi i32 [ %5, %53 ], [ %5, %50 ], [ 0, %34 ], [ 0, %40 ], [ 0, %44 ], [ 0, %48 ], [ 9, %33 ]
  %60 = icmp eq ptr %3, %4
  br i1 %60, label %180, label %61

61:                                               ; preds = %57
  %62 = tail call zeroext i8 @BKE_object_parent_loop_check(ptr noundef %4, ptr noundef %3) #12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.51) #12
  br label %180

65:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %10) #13
  %66 = icmp eq i8 %7, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  tail call void @BKE_object_apply_mat4(ptr noundef %3, ptr noundef nonnull %68, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  br label %69

69:                                               ; preds = %67, %65
  %70 = icmp eq i32 %59, 9
  br i1 %70, label %74, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 9
  store ptr %4, ptr %72, align 8, !tbaa !88
  %73 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %73) #12
  br label %74

74:                                               ; preds = %71, %69
  %75 = icmp eq ptr %58, null
  %76 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 8
  br i1 %75, label %80, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %58, i64 0, i32 4
  %79 = tail call ptr @BLI_strncpy(ptr noundef nonnull %76, ptr noundef nonnull %78, i64 noundef 64) #12
  br label %81

80:                                               ; preds = %74
  store i8 0, ptr %76, align 8, !tbaa !116
  br label %81

81:                                               ; preds = %80, %77
  br i1 %70, label %149, label %82

82:                                               ; preds = %81
  br i1 %14, label %84, label %83

83:                                               ; preds = %82
  switch i32 %59, label %147 [
    i32 10, label %84
    i32 7, label %84
    i32 5, label %122
    i32 6, label %131
    i32 11, label %140
    i32 12, label %144
  ]

84:                                               ; preds = %83, %83, %82
  %85 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 0, ptr %85, align 2, !tbaa !92
  %86 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %87 = load i16, ptr %86, align 8, !tbaa !19
  switch i16 %87, label %159 [
    i16 1, label %88
    i16 2, label %88
    i16 3, label %88
    i16 4, label %88
    i16 22, label %88
  ]

88:                                               ; preds = %84, %84, %84, %84, %84
  switch i32 %59, label %114 [
    i32 7, label %89
    i32 10, label %106
  ]

89:                                               ; preds = %88
  %90 = tail call ptr @modifiers_isDeformedByCurve(ptr noundef nonnull %3) #12
  %91 = icmp eq ptr %90, %4
  br i1 %91, label %159, label %92

92:                                               ; preds = %89
  %93 = tail call ptr @ED_object_modifier_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef null, i32 noundef 3) #12
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.CurveModifierData, ptr %93, i64 0, i32 1
  store ptr %4, ptr %96, align 8, !tbaa !125
  br label %97

97:                                               ; preds = %95, %92
  %98 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 118
  %99 = load ptr, ptr %98, align 8, !tbaa !134
  %100 = icmp eq ptr %99, null
  br i1 %100, label %159, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.CurveCache, ptr %99, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !135
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %159

105:                                              ; preds = %101
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 2) #12
  br label %159

106:                                              ; preds = %88
  %107 = tail call ptr @modifiers_isDeformedByLattice(ptr noundef nonnull %3) #12
  %108 = icmp eq ptr %107, %4
  br i1 %108, label %159, label %109

109:                                              ; preds = %106
  %110 = tail call ptr @ED_object_modifier_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef null, i32 noundef 2) #12
  %111 = icmp eq ptr %110, null
  br i1 %111, label %159, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.LatticeModifierData, ptr %110, i64 0, i32 1
  store ptr %4, ptr %113, align 8, !tbaa !123
  br label %159

114:                                              ; preds = %88
  %115 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %3) #12
  %116 = icmp eq ptr %115, %4
  br i1 %116, label %159, label %117

117:                                              ; preds = %114
  %118 = tail call ptr @ED_object_modifier_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef null, i32 noundef 8) #12
  %119 = icmp eq ptr %118, null
  br i1 %119, label %159, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.ArmatureModifierData, ptr %118, i64 0, i32 4
  store ptr %4, ptr %121, align 8, !tbaa !121
  br label %159

122:                                              ; preds = %83
  %123 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 7, ptr %123, align 2, !tbaa !92
  %124 = getelementptr inbounds %struct.bPoseChannel, ptr %58, i64 0, i32 12
  %125 = load ptr, ptr %124, align 8, !tbaa !137
  %126 = icmp eq ptr %125, null
  br i1 %126, label %175, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.Bone, ptr %125, i64 0, i32 10
  %129 = load i32, ptr %128, align 8, !tbaa !139
  %130 = and i32 %129, -8388609
  store i32 %130, ptr %128, align 8, !tbaa !139
  br label %175

131:                                              ; preds = %83
  %132 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 7, ptr %132, align 2, !tbaa !92
  %133 = getelementptr inbounds %struct.bPoseChannel, ptr %58, i64 0, i32 12
  %134 = load ptr, ptr %133, align 8, !tbaa !137
  %135 = icmp eq ptr %134, null
  br i1 %135, label %175, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.Bone, ptr %134, i64 0, i32 10
  %138 = load i32, ptr %137, align 8, !tbaa !139
  %139 = or i32 %138, 8388608
  store i32 %139, ptr %137, align 8, !tbaa !139
  br label %175

140:                                              ; preds = %83
  %141 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 5, ptr %141, align 2, !tbaa !92
  %142 = load i32, ptr %8, align 4, !tbaa !110
  %143 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 5
  store i32 %142, ptr %143, align 4, !tbaa !93
  br label %175

144:                                              ; preds = %83
  %145 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 6, ptr %145, align 2, !tbaa !92
  %146 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 5
  tail call fastcc void @copy_v3_v3_int(ptr noundef nonnull %146, ptr noundef %8) #14
  br label %175

147:                                              ; preds = %83
  %148 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  store i16 0, ptr %148, align 2, !tbaa !92
  br label %175

149:                                              ; preds = %81
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  %150 = tail call ptr @BKE_constraint_add_for_object(ptr noundef %3, ptr noundef nonnull @.str.52, i16 noundef signext 4) #12
  %151 = getelementptr inbounds %struct.bConstraint, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !141
  store ptr %4, ptr %152, align 8, !tbaa !143
  %153 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %154 = load i32, ptr %153, align 8, !tbaa !145
  %155 = sitofp i32 %154 to float
  call void @BKE_constraint_target_matrix_get(ptr noundef %2, ptr noundef %150, i32 noundef 0, i16 noundef signext 1, ptr noundef null, ptr noundef nonnull %11, float noundef %155) #12
  %156 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47, i64 3
  %157 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %156, ptr noundef nonnull %157) #14
  %158 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %158, ptr noundef nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #13
  br label %179

159:                                              ; preds = %84, %114, %120, %117, %106, %112, %109, %89, %105, %101, %97
  br i1 %14, label %160, label %175

160:                                              ; preds = %159
  %161 = load i16, ptr %86, align 8, !tbaa !19
  %162 = icmp eq i16 %161, 1
  br i1 %162, label %163, label %175

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %165 = load i16, ptr %164, align 8, !tbaa !19
  %166 = icmp eq i16 %165, 25
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  switch i32 %59, label %171 [
    i32 2, label %168
    i32 3, label %169
    i32 4, label %170
  ]

168:                                              ; preds = %167
  tail call void @create_vgroups_from_armature(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1, i8 noundef zeroext 0) #12
  br label %171

169:                                              ; preds = %167
  tail call void @create_vgroups_from_armature(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2, i8 noundef zeroext %6) #12
  br label %171

170:                                              ; preds = %167
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #12
  tail call void @create_vgroups_from_armature(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 3, i8 noundef zeroext %6) #12
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #12
  br label %171

171:                                              ; preds = %167, %169, %170, %168
  store i16 0, ptr %85, align 2, !tbaa !92
  call void @BKE_object_workob_calc_parent(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %10) #12
  %172 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 48
  %173 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  %174 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %172, ptr noundef nonnull %173) #12
  br label %179

175:                                              ; preds = %136, %131, %144, %147, %140, %122, %127, %159, %163, %160
  call void @BKE_object_workob_calc_parent(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %10) #12
  %176 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 48
  %177 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  %178 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %176, ptr noundef nonnull %177) #12
  br label %179

179:                                              ; preds = %171, %175, %149
  call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 3) #12
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %10) #13
  br label %180

180:                                              ; preds = %57, %179, %18, %64, %56
  %181 = phi i8 [ 0, %64 ], [ 0, %56 ], [ 0, %18 ], [ 1, %179 ], [ 1, %57 ]
  ret i8 %181
}

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @verify_adt_action(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @verify_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByCurve(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_object_modifier_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByLattice(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load i32, ptr %1, align 4, !tbaa !110
  store i32 %3, ptr %0, align 4, !tbaa !110
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !110
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !110
  %7 = getelementptr inbounds i32, ptr %1, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !110
  %9 = getelementptr inbounds i32, ptr %0, i64 2
  store i32 %8, ptr %9, align 4, !tbaa !110
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_constraint_add_for_object(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_constraint_target_matrix_get(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !146
  %5 = load float, ptr %2, align 4, !tbaa !146
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !146
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !146
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !146
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !146
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !146
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !146
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !146
  store float %3, ptr %0, align 4, !tbaa !146
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !146
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !146
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !146
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !146
  ret void
}

; Function Attrs: optsize
declare void @create_vgroups_from_armature(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_workob_calc_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_parent_set(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @parent_set_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @parent_set_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @parent_set_ui, ptr %7, align 8, !tbaa !147
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_make_parent_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12
  %12 = load ptr, ptr %9, align 8, !tbaa !97
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #12
  %14 = load ptr, ptr %9, align 8, !tbaa !97
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @parent_set_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #2 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  %7 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 0) #12
  %8 = tail call ptr @uiPupMenuLayout(ptr noundef %7) #12
  %9 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.55, i8 noundef zeroext 1) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %8, ptr noundef %9, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #12
  call void @RNA_enum_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.20, i32 noundef 0) #12
  call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.59, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %8, ptr noundef %9, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !148
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @RNA_enum_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.20, i32 noundef 0) #12
  call void @RNA_boolean_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.59, i32 noundef 1) #12
  %10 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !19
  switch i16 %11, label %20 [
    i16 25, label %12
    i16 2, label %13
    i16 22, label %17
  ]

12:                                               ; preds = %3
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 1) #12
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 2) #12
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 3) #12
  br label %13

13:                                               ; preds = %3, %12
  %14 = phi i32 [ 4, %12 ], [ 7, %3 ]
  %15 = phi i32 [ 5, %12 ], [ 8, %3 ]
  %16 = phi i32 [ 6, %12 ], [ 9, %3 ]
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %14) #12
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %15) #12
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ 10, %3 ], [ %16, %13 ]
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %18) #12
  %19 = load i16, ptr %10, align 8, !tbaa !19
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i16 [ %19, %17 ], [ %11, %3 ]
  switch i16 %21, label %23 [
    i16 1, label %22
    i16 3, label %22
    i16 2, label %22
    i16 22, label %22
  ]

22:                                               ; preds = %20, %20, %20, %20
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 11) #12
  call void @uiItemEnumO_ptr(ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 12) #12
  br label %23

23:                                               ; preds = %20, %22
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %7) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @parent_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %8 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.20) #12
  %12 = load ptr, ptr %9, align 8, !tbaa !105
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.56) #12
  %14 = trunc i32 %13 to i8
  %15 = load ptr, ptr %9, align 8, !tbaa !105
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.59) #12
  %17 = trunc i32 %16 to i8
  %18 = icmp eq i32 %11, 12
  %19 = add i32 %11, -11
  %20 = icmp ult i32 %19, 2
  %21 = zext i1 %18 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %22 = select i1 %20, ptr %4, ptr null
  br i1 %20, label %23, label %31

23:                                               ; preds = %2
  %24 = call ptr @BKE_object_as_kdtree(ptr noundef %8, ptr noundef nonnull %3) #12
  %25 = load i32, ptr %3, align 4, !tbaa !110
  %26 = select i1 %18, i32 3, i32 1
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  call void @BKE_report(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.145) #12
  call void @BLI_kdtree_free(ptr noundef %24) #12
  br label %52

31:                                               ; preds = %23, %2
  %32 = phi ptr [ null, %2 ], [ %24, %23 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %33 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %5) #12
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %35

35:                                               ; preds = %43, %31
  %36 = phi ptr [ %5, %31 ], [ %37, %43 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.CollectionPointerLink, ptr %37, i64 0, i32 2, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !84
  br i1 %20, label %42, label %43

42:                                               ; preds = %39
  call fastcc void @parent_set_vert_find(ptr noundef %32, ptr noundef %41, ptr noundef nonnull %4, i8 noundef zeroext %21) #14
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr %34, align 8, !tbaa !82
  %45 = call zeroext i8 @ED_object_parent_set(ptr noundef %44, ptr noundef %6, ptr noundef %7, ptr noundef %41, ptr noundef %8, i32 noundef %11, i8 noundef zeroext %14, i8 noundef zeroext %17, ptr noundef %22) #14, !range !149
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %35

47:                                               ; preds = %35
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br i1 %20, label %50, label %51

48:                                               ; preds = %43
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br i1 %20, label %49, label %52

49:                                               ; preds = %48
  call void @BLI_kdtree_free(ptr noundef %32) #12
  br label %52

50:                                               ; preds = %47
  call void @BLI_kdtree_free(ptr noundef %32) #12
  br label %51

51:                                               ; preds = %50, %47
  call void @DAG_relations_tag_update(ptr noundef %6) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85786624, ptr noundef null) #12
  br label %52

52:                                               ; preds = %49, %48, %28, %51
  %53 = phi i32 [ 4, %51 ], [ 2, %28 ], [ 2, %48 ], [ 2, %49 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @parent_set_ui(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %3) #12
  %13 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @parent_set_draw_check_prop, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_parent_no_inverse_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.64, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @parent_noinv_set_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @parent_noinv_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 1) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %6 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #12
  %7 = load ptr, ptr %3, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %11

11:                                               ; preds = %9, %26
  %12 = phi ptr [ %7, %9 ], [ %27, %26 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = call zeroext i8 @BKE_object_parent_loop_check(ptr noundef %5, ptr noundef %14) #12
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %10, align 8, !tbaa !82
  call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.51) #12
  br label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 48
  call void @unit_m4(ptr noundef nonnull %22) #12
  %23 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %23, i8 0, i64 12, i1 false)
  call void @DAG_id_tag_update(ptr noundef %14, i16 noundef signext 3) #12
  %24 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 9
  store ptr %5, ptr %24, align 8, !tbaa !88
  %25 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 4
  store i16 0, ptr %25, align 2, !tbaa !92
  br label %26

26:                                               ; preds = %19, %21, %11
  %27 = load ptr, ptr %12, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %11, !llvm.loop !152

29:                                               ; preds = %26, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @DAG_relations_tag_update(ptr noundef %4) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #12
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_slow_parent_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_slow_parent_clear_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_slow_parent_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2, %24
  %9 = phi ptr [ %25, %24 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !92
  %18 = and i16 %17, 16
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = add nsw i16 %17, -16
  store i16 %21, ptr %16, align 2, !tbaa !92
  call void @BKE_object_where_is_calc(ptr noundef %4, ptr noundef nonnull %11) #12
  %22 = load i16, ptr %16, align 2, !tbaa !92
  %23 = or i16 %22, 16
  store i16 %23, ptr %16, align 2, !tbaa !92
  call void @DAG_id_tag_update(ptr noundef nonnull %11, i16 noundef signext 1) #12
  br label %24

24:                                               ; preds = %15, %20, %8
  %25 = load ptr, ptr %9, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !153

27:                                               ; preds = %24, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108864, ptr noundef %4) #12
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_slow_parent_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.69, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_slow_parent_set_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_slow_parent_set_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %19
  %9 = phi ptr [ %20, %19 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !92
  %18 = or i16 %17, 16
  store i16 %18, ptr %16, align 2, !tbaa !92
  br label %19

19:                                               ; preds = %15, %8
  call void @DAG_id_tag_update(ptr noundef nonnull %11, i16 noundef signext 1) #12
  %20 = load ptr, ptr %9, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !154

22:                                               ; preds = %19, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108864, ptr noundef %4) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_track_clear(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.71, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.72, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_track_clear_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_clear_track_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_track_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.20) #12
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.146) #12
  br label %45

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %14 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #12
  %15 = load ptr, ptr %3, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %7, 2
  br label %19

19:                                               ; preds = %17, %41
  %20 = phi ptr [ %15, %17 ], [ %42, %41 ]
  %21 = getelementptr inbounds %struct.CollectionPointerLink, ptr %20, i64 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 10
  store ptr null, ptr %23, align 8, !tbaa !155
  call void @DAG_id_tag_update(ptr noundef %22, i16 noundef signext 7) #12
  %24 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 106
  %25 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 106, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %19, %36
  %29 = phi ptr [ %31, %36 ], [ %26, %19 ]
  %30 = getelementptr inbounds %struct.bConstraint, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !157
  %32 = getelementptr inbounds %struct.bConstraint, ptr %29, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !158
  switch i16 %33, label %36 [
    i16 2, label %34
    i16 13, label %34
    i16 21, label %34
  ]

34:                                               ; preds = %28, %28, %28
  %35 = call zeroext i8 @BKE_constraint_remove(ptr noundef nonnull %24, ptr noundef nonnull %29) #12
  br label %36

36:                                               ; preds = %28, %34
  %37 = icmp eq ptr %31, null
  br i1 %37, label %38, label %28, !llvm.loop !159

38:                                               ; preds = %36, %19
  br i1 %18, label %39, label %41

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 47
  call void @BKE_object_apply_mat4(ptr noundef %22, ptr noundef nonnull %40, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  br label %41

41:                                               ; preds = %39, %38
  %42 = load ptr, ptr %20, align 8, !tbaa !54
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %19, !llvm.loop !160

44:                                               ; preds = %41, %13
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @DAG_relations_tag_update(ptr noundef %4) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #12
  br label %45

45:                                               ; preds = %44, %10
  %46 = phi i32 [ 2, %10 ], [ 4, %44 ]
  ret i32 %46
}

; Function Attrs: optsize
declare i32 @ED_operator_objectmode(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_track_set(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.74, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.75, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.76, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @track_set_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @prop_make_track_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @track_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.20) #12
  switch i32 %10, label %82 [
    i32 1, label %11
    i32 2, label %34
    i32 3, label %58
  ]

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %12 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #12
  %13 = load ptr, ptr %3, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %11, %30
  %16 = phi ptr [ %31, %30 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = call ptr @BKE_constraint_add_for_object(ptr noundef %18, ptr noundef nonnull @.str.148, i16 noundef signext 21) #12
  %22 = getelementptr inbounds %struct.bConstraint, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  store ptr %7, ptr %23, align 8, !tbaa !161
  call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 7) #12
  %24 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !19
  %26 = add i16 %25, -10
  %27 = icmp ult i16 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %23, i64 0, i32 1
  store i32 5, ptr %29, align 8, !tbaa !163
  br label %30

30:                                               ; preds = %20, %28, %15
  %31 = load ptr, ptr %16, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15, !llvm.loop !164

33:                                               ; preds = %30, %11
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %82

34:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %35 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #12
  %36 = load ptr, ptr %4, align 8, !tbaa !54
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %34, %54
  %39 = phi ptr [ %55, %54 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.CollectionPointerLink, ptr %39, i64 0, i32 2, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !84
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = call ptr @BKE_constraint_add_for_object(ptr noundef %41, ptr noundef nonnull @.str.148, i16 noundef signext 2) #12
  %45 = getelementptr inbounds %struct.bConstraint, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !141
  store ptr %7, ptr %46, align 8, !tbaa !165
  call void @DAG_id_tag_update(ptr noundef %41, i16 noundef signext 7) #12
  %47 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 3
  %48 = load i16, ptr %47, align 8, !tbaa !19
  %49 = add i16 %48, -10
  %50 = icmp ult i16 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.bTrackToConstraint, ptr %46, i64 0, i32 1
  store i32 5, ptr %52, align 8, !tbaa !167
  %53 = getelementptr inbounds %struct.bTrackToConstraint, ptr %46, i64 0, i32 2
  store i32 1, ptr %53, align 4, !tbaa !168
  br label %54

54:                                               ; preds = %43, %51, %38
  %55 = load ptr, ptr %39, align 8, !tbaa !54
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %38, !llvm.loop !169

57:                                               ; preds = %54, %34
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %82

58:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %59 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %5) #12
  %60 = load ptr, ptr %5, align 8, !tbaa !54
  %61 = icmp eq ptr %60, null
  br i1 %61, label %81, label %62

62:                                               ; preds = %58, %78
  %63 = phi ptr [ %79, %78 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.CollectionPointerLink, ptr %63, i64 0, i32 2, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !84
  %66 = icmp eq ptr %65, %7
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = call ptr @BKE_constraint_add_for_object(ptr noundef %65, ptr noundef nonnull @.str.148, i16 noundef signext 13) #12
  %69 = getelementptr inbounds %struct.bConstraint, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !141
  store ptr %7, ptr %70, align 8, !tbaa !170
  call void @DAG_id_tag_update(ptr noundef %65, i16 noundef signext 7) #12
  %71 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 3
  %72 = load i16, ptr %71, align 8, !tbaa !19
  %73 = add i16 %72, -10
  %74 = icmp ult i16 %73, 3
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %70, i64 0, i32 1
  store i32 5, ptr %76, align 8, !tbaa !172
  %77 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %70, i64 0, i32 2
  store i32 1, ptr %77, align 4, !tbaa !173
  br label %78

78:                                               ; preds = %67, %75, %62
  %79 = load ptr, ptr %63, align 8, !tbaa !54
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %62, !llvm.loop !174

81:                                               ; preds = %78, %58
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %82

82:                                               ; preds = %2, %81, %57, %33
  call void @DAG_relations_tag_update(ptr noundef %6) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_move_to_layer(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.77, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.78, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.79, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @move_to_layer_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @move_to_layer_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %9, ptr noundef nonnull @.str.80, i32 noundef 20, ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.22) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @move_to_layer_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !175
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @WM_operator_confirm_message(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.155) #12
  br label %15

12:                                               ; preds = %6, %3
  %13 = tail call fastcc i32 @move_to_layer_init(ptr noundef %0, ptr noundef %1) #14
  %14 = tail call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @move_to_layer_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %8 = tail call fastcc i32 @move_to_layer_init(ptr noundef %0, ptr noundef %1) #14
  %9 = and i32 %8, 16777215
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %63, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %7, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !175
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %18 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #12
  %19 = load ptr, ptr %3, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 22
  %23 = load i32, ptr %22, align 8, !tbaa !177
  %24 = xor i32 %23, -1
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %19, %21 ], [ %41, %25 ]
  %27 = getelementptr inbounds %struct.CollectionPointerLink, ptr %26, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !108
  %31 = and i32 %30, %24
  store i32 %31, ptr %29, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !90
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 52
  store i32 %31, ptr %34, align 8, !tbaa !109
  %35 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 53
  %36 = load i16, ptr %35, align 4, !tbaa !178
  %37 = and i16 %36, -2
  store i16 %37, ptr %35, align 4, !tbaa !178
  %38 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !179
  %40 = and i32 %39, -2
  store i32 %40, ptr %38, align 8, !tbaa !179
  %41 = load ptr, ptr %26, align 8, !tbaa !54
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25, !llvm.loop !180

43:                                               ; preds = %25, %17
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %62

44:                                               ; preds = %13, %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %45 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %4) #12
  %46 = load ptr, ptr %4, align 8, !tbaa !54
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %44, %48
  %49 = phi ptr [ %59, %48 ], [ %46, %44 ]
  %50 = getelementptr inbounds %struct.CollectionPointerLink, ptr %49, i64 0, i32 2, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !84
  %52 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !108
  %54 = and i32 %53, -16777216
  %55 = or disjoint i32 %54, %9
  store i32 %55, ptr %52, align 8, !tbaa !108
  %56 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !90
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 52
  store i32 %9, ptr %58, align 8, !tbaa !109
  %59 = load ptr, ptr %49, align 8, !tbaa !54
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %48, !llvm.loop !181

61:                                               ; preds = %48, %44
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %62

62:                                               ; preds = %61, %43
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %6) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73728000, ptr noundef %6) #12
  call void @DAG_relations_tag_update(ptr noundef %5) #12
  br label %63

63:                                               ; preds = %2, %62
  %64 = phi i32 [ 4, %62 ], [ 2, %2 ]
  ret i32 %64
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean_layer_member(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_object_scene_link(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_scene_base_find(ptr noundef %0, ptr noundef %1) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @BKE_scene_base_add(ptr noundef %0, ptr noundef %1) #12
  tail call void @id_us_plus(ptr noundef %1) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_scene_base_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_make_links_scene(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.82, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.83, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.84, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_links_scene_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.85, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.22) #12
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @RNA_scene_local_itemf) #12
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_links_scene_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.85) #12
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.156) #12
  br label %41

14:                                               ; preds = %2
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %16 = icmp eq ptr %9, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  tail call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.157) #12
  br label %41

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  tail call void @BKE_report(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.158) #12
  br label %41

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %28 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #12
  %29 = load ptr, ptr %3, align 8, !tbaa !54
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %38, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.CollectionPointerLink, ptr %32, i64 0, i32 2, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !84
  %35 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  %37 = call ptr @ED_object_scene_link(ptr noundef nonnull %9, ptr noundef %36) #14
  %38 = load ptr, ptr %32, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %31, !llvm.loop !182

40:                                               ; preds = %31, %27
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %24, %17, %11
  %42 = phi i32 [ 2, %11 ], [ 2, %17 ], [ 2, %24 ], [ 4, %40 ]
  ret i32 %42
}

; Function Attrs: optsize
declare ptr @RNA_scene_local_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_make_links_data(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_links_data_exec, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef nonnull @OBJECT_OT_make_links_data.make_links_items, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_links_data_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.20) #12
  %9 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  %10 = icmp eq i32 %8, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_object_groups(ptr noundef %9) #12
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %12, %11 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %15 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #12
  %16 = load ptr, ptr %3, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %147, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %20 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 112
  %21 = icmp eq ptr %14, null
  %22 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 31
  br label %23

23:                                               ; preds = %18, %139
  %24 = phi ptr [ %16, %18 ], [ %142, %139 ]
  %25 = phi i8 [ 0, %18 ], [ %141, %139 ]
  %26 = phi i8 [ 0, %18 ], [ %140, %139 ]
  %27 = getelementptr inbounds %struct.CollectionPointerLink, ptr %24, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = icmp eq ptr %9, %30
  br i1 %31, label %139, label %32

32:                                               ; preds = %23
  %33 = call fastcc zeroext i8 @allow_make_links_data(i32 noundef %8, ptr noundef %9, ptr noundef %30) #14, !range !149
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %139, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !26
  switch i32 %8, label %139 [
    i32 1, label %41
    i32 2, label %38
    i32 3, label %54
    i32 4, label %68
    i32 5, label %84
    i32 6, label %92
    i32 7, label %93
  ]

38:                                               ; preds = %35
  %39 = load i32, ptr %22, align 8, !tbaa !183
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %46, label %53

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !184
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %42, align 4, !tbaa !184
  %45 = load ptr, ptr %19, align 8, !tbaa !26
  call void @id_us_plus(ptr noundef %45) #12
  store ptr %45, ptr %36, align 8, !tbaa !26
  call void @test_object_materials(ptr noundef %4, ptr noundef %45) #12
  call void @DAG_id_tag_update(ptr noundef nonnull %30, i16 noundef signext 2) #12
  br label %139

46:                                               ; preds = %38, %46
  %47 = phi i32 [ %48, %46 ], [ 0, %38 ]
  %48 = add nuw nsw i32 %47, 1
  %49 = trunc i32 %48 to i16
  %50 = call ptr @give_current_material(ptr noundef nonnull %9, i16 noundef signext %49) #12
  call void @assign_material(ptr noundef %30, ptr noundef %50, i16 noundef signext %49, i32 noundef 0) #12
  %51 = load i32, ptr %22, align 8, !tbaa !183
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %46, label %53, !llvm.loop !185

53:                                               ; preds = %46, %38
  call void @DAG_id_tag_update(ptr noundef %30, i16 noundef signext 0) #12
  br label %139

54:                                               ; preds = %35
  %55 = call zeroext i8 @BKE_copy_animdata_id(ptr noundef nonnull %30, ptr noundef %9, i8 noundef zeroext 0) #12
  %56 = load ptr, ptr %36, align 8, !tbaa !26
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %19, align 8, !tbaa !26
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !186
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %139

65:                                               ; preds = %61
  %66 = call zeroext i8 @BKE_copy_animdata_id(ptr noundef nonnull %56, ptr noundef nonnull %59, i8 noundef zeroext 0) #12
  br label %67

67:                                               ; preds = %65, %58, %54
  call void @DAG_id_tag_update(ptr noundef nonnull %30, i16 noundef signext 7) #12
  br label %139

68:                                               ; preds = %35
  call void @BKE_object_groups_clear(ptr noundef %5, ptr noundef nonnull %28, ptr noundef nonnull %30) #12
  br i1 %21, label %139, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 112
  br label %71

71:                                               ; preds = %69, %80
  %72 = phi ptr [ %14, %69 ], [ %82, %80 ]
  %73 = phi i8 [ %25, %69 ], [ %81, %80 ]
  %74 = load ptr, ptr %70, align 8, !tbaa !100
  %75 = getelementptr inbounds %struct.LinkNode, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !187
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  %79 = call zeroext i8 @BKE_group_object_add(ptr noundef %76, ptr noundef nonnull %30, ptr noundef %5, ptr noundef %28) #12
  br label %80

80:                                               ; preds = %71, %78
  %81 = phi i8 [ %73, %78 ], [ 1, %71 ]
  %82 = load ptr, ptr %72, align 8, !tbaa !189
  %83 = icmp eq ptr %82, null
  br i1 %83, label %139, label %71, !llvm.loop !190

84:                                               ; preds = %35
  %85 = load ptr, ptr %20, align 8, !tbaa !100
  %86 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 112
  store ptr %85, ptr %86, align 8, !tbaa !100
  %87 = icmp eq ptr %85, null
  br i1 %87, label %139, label %88

88:                                               ; preds = %84
  call void @id_lib_extern(ptr noundef nonnull %85) #12
  %89 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 55
  %90 = load i16, ptr %89, align 8, !tbaa !191
  %91 = or i16 %90, 256
  store i16 %91, ptr %89, align 8, !tbaa !191
  br label %139

92:                                               ; preds = %35
  call void @BKE_object_link_modifiers(ptr noundef nonnull %30, ptr noundef %9) #12
  call void @DAG_id_tag_update(ptr noundef nonnull %30, i16 noundef signext 7) #12
  br label %139

93:                                               ; preds = %35
  %94 = load ptr, ptr %19, align 8, !tbaa !26
  %95 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !186
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %139

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.Curve, ptr %37, i64 0, i32 55
  %100 = load ptr, ptr %99, align 8, !tbaa !192
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ID, ptr %100, i64 0, i32 6
  %104 = load i32, ptr %103, align 4, !tbaa !193
  %105 = add nsw i32 %104, -1
  store i32 %105, ptr %103, align 4, !tbaa !193
  br label %106

106:                                              ; preds = %102, %98
  %107 = getelementptr inbounds %struct.Curve, ptr %94, i64 0, i32 55
  %108 = load ptr, ptr %107, align 8, !tbaa !192
  store ptr %108, ptr %99, align 8, !tbaa !192
  call void @id_us_plus(ptr noundef %108) #12
  %109 = getelementptr inbounds %struct.Curve, ptr %37, i64 0, i32 56
  %110 = load ptr, ptr %109, align 8, !tbaa !195
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.ID, ptr %110, i64 0, i32 6
  %114 = load i32, ptr %113, align 4, !tbaa !193
  %115 = add nsw i32 %114, -1
  store i32 %115, ptr %113, align 4, !tbaa !193
  br label %116

116:                                              ; preds = %112, %106
  %117 = getelementptr inbounds %struct.Curve, ptr %94, i64 0, i32 56
  %118 = load ptr, ptr %117, align 8, !tbaa !195
  store ptr %118, ptr %109, align 8, !tbaa !195
  call void @id_us_plus(ptr noundef %118) #12
  %119 = getelementptr inbounds %struct.Curve, ptr %37, i64 0, i32 57
  %120 = load ptr, ptr %119, align 8, !tbaa !196
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.ID, ptr %120, i64 0, i32 6
  %124 = load i32, ptr %123, align 4, !tbaa !193
  %125 = add nsw i32 %124, -1
  store i32 %125, ptr %123, align 4, !tbaa !193
  br label %126

126:                                              ; preds = %122, %116
  %127 = getelementptr inbounds %struct.Curve, ptr %94, i64 0, i32 57
  %128 = load ptr, ptr %127, align 8, !tbaa !196
  store ptr %128, ptr %119, align 8, !tbaa !196
  call void @id_us_plus(ptr noundef %128) #12
  %129 = getelementptr inbounds %struct.Curve, ptr %37, i64 0, i32 58
  %130 = load ptr, ptr %129, align 8, !tbaa !197
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.ID, ptr %130, i64 0, i32 6
  %134 = load i32, ptr %133, align 4, !tbaa !193
  %135 = add nsw i32 %134, -1
  store i32 %135, ptr %133, align 4, !tbaa !193
  br label %136

136:                                              ; preds = %132, %126
  %137 = getelementptr inbounds %struct.Curve, ptr %94, i64 0, i32 58
  %138 = load ptr, ptr %137, align 8, !tbaa !197
  store ptr %138, ptr %129, align 8, !tbaa !197
  call void @id_us_plus(ptr noundef %138) #12
  call void @DAG_id_tag_update(ptr noundef nonnull %30, i16 noundef signext 7) #12
  br label %139

139:                                              ; preds = %80, %68, %136, %93, %61, %32, %84, %88, %35, %92, %67, %53, %41, %23
  %140 = phi i8 [ %26, %35 ], [ %26, %92 ], [ %26, %88 ], [ %26, %84 ], [ %26, %67 ], [ %26, %53 ], [ %26, %41 ], [ %26, %32 ], [ %26, %23 ], [ 1, %61 ], [ %26, %136 ], [ 1, %93 ], [ %26, %68 ], [ %26, %80 ]
  %141 = phi i8 [ %25, %35 ], [ %25, %92 ], [ %25, %88 ], [ %25, %84 ], [ %25, %67 ], [ %25, %53 ], [ %25, %41 ], [ %25, %32 ], [ %25, %23 ], [ %25, %61 ], [ %25, %136 ], [ %25, %93 ], [ %25, %68 ], [ %81, %80 ]
  %142 = load ptr, ptr %24, align 8, !tbaa !54
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %23, !llvm.loop !198

144:                                              ; preds = %139
  %145 = icmp eq i8 %141, 0
  %146 = icmp eq i8 %140, 0
  br label %147

147:                                              ; preds = %144, %13
  %148 = phi i1 [ true, %13 ], [ %146, %144 ]
  %149 = phi i1 [ true, %13 ], [ %145, %144 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br i1 %10, label %150, label %157

150:                                              ; preds = %147
  %151 = icmp eq ptr %14, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %150
  call void @BLI_linklist_free(ptr noundef nonnull %14, ptr noundef null) #12
  br label %153

153:                                              ; preds = %152, %150
  br i1 %149, label %157, label %154

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %156 = load ptr, ptr %155, align 8, !tbaa !82
  call void @BKE_report(ptr noundef %156, i32 noundef 16, ptr noundef nonnull @.str.159) #12
  br label %157

157:                                              ; preds = %153, %154, %147
  br i1 %148, label %161, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %160 = load ptr, ptr %159, align 8, !tbaa !82
  call void @BKE_report(ptr noundef %160, i32 noundef 16, ptr noundef nonnull @.str.160) #12
  br label %161

161:                                              ; preds = %158, %157
  call void @DAG_relations_tag_update(ptr noundef %4) #12
  %162 = call ptr @CTX_wm_view3d(ptr noundef %0) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %162) #12
  %163 = call ptr @CTX_wm_view3d(ptr noundef %0) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef %163) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 83886080, ptr noundef null) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_single_user(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %17, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp eq ptr %10, %2
  %12 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !179
  %14 = and i32 %13, -1025
  %15 = select i1 %11, i32 1024, i32 0
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %12, align 8, !tbaa !179
  %17 = load ptr, ptr %8, align 8, !tbaa !54
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !199

19:                                               ; preds = %7, %3
  tail call fastcc void @single_object_users(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 1024, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @single_object_users(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #2 {
  tail call void @clear_sca_new_poins() #12
  %6 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !200
  %12 = load ptr, ptr %10, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !201

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %14
  %19 = icmp eq i8 %4, 0
  br label %20

20:                                               ; preds = %18, %53
  %21 = phi ptr [ %16, %18 ], [ %54, %53 ]
  %22 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !179
  %26 = and i32 %25, %3
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !103
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !202
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = tail call ptr @BKE_object_copy(ptr noundef nonnull %23) #12
  store ptr %37, ptr %22, align 8, !tbaa !90
  br i1 %19, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 53
  %40 = load i16, ptr %39, align 4, !tbaa !178
  %41 = and i16 %40, 4096
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 53
  %45 = load i16, ptr %44, align 4, !tbaa !178
  %46 = or i16 %45, 4096
  store i16 %46, ptr %44, align 4, !tbaa !178
  br label %47

47:                                               ; preds = %36, %38, %43
  %48 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 53
  %49 = load i16, ptr %48, align 4, !tbaa !178
  %50 = sext i16 %49 to i32
  store i32 %50, ptr %24, align 8, !tbaa !179
  %51 = load i32, ptr %33, align 4, !tbaa !202
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %33, align 4, !tbaa !202
  br label %53

53:                                               ; preds = %20, %47, %32, %28
  %54 = load ptr, ptr %21, align 8, !tbaa !54
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %20, !llvm.loop !203

56:                                               ; preds = %53, %14
  %57 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %58 = load ptr, ptr %57, align 8, !tbaa !54
  %59 = icmp eq ptr %58, null
  br i1 %59, label %97, label %60

60:                                               ; preds = %56
  %61 = icmp eq i8 %4, 0
  br label %62

62:                                               ; preds = %60, %94
  %63 = phi ptr [ %58, %60 ], [ %95, %94 ]
  %64 = getelementptr inbounds %struct.ID, ptr %63, i64 0, i32 2
  store ptr null, ptr %64, align 8, !tbaa !204
  br i1 %61, label %94, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.Group, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !205
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %69

69:                                               ; preds = %65, %78
  %70 = phi ptr [ %79, %78 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct.GroupObject, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !106
  %73 = icmp eq ptr %72, null
  br i1 %73, label %94, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.ID, ptr %72, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !200
  %77 = icmp eq ptr %76, null
  br i1 %77, label %94, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %70, align 8, !tbaa !206
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %69, !llvm.loop !207

81:                                               ; preds = %78
  %82 = tail call ptr @BKE_group_copy(ptr noundef nonnull %63) #12
  %83 = getelementptr inbounds %struct.Group, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !54
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %92, %86 ], [ %84, %81 ]
  %88 = getelementptr inbounds %struct.GroupObject, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !106
  %90 = getelementptr inbounds %struct.ID, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !200
  store ptr %91, ptr %88, align 8, !tbaa !106
  %92 = load ptr, ptr %87, align 8, !tbaa !54
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %86, !llvm.loop !208

94:                                               ; preds = %74, %69, %86, %81, %62, %65
  %95 = load ptr, ptr %63, align 8, !tbaa !54
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %62, !llvm.loop !209

97:                                               ; preds = %94, %56
  tail call void @BKE_scene_groups_relink(ptr noundef %1) #12
  %98 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !210
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ID, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !200
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store ptr %103, ptr %98, align 8, !tbaa !210
  br label %106

106:                                              ; preds = %105, %101, %97
  %107 = icmp eq ptr %2, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 15
  %110 = load ptr, ptr %109, align 8, !tbaa !211
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.ID, ptr %110, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !200
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  store ptr %114, ptr %109, align 8, !tbaa !211
  br label %117

117:                                              ; preds = %108, %112, %116, %106
  %118 = load ptr, ptr %15, align 8, !tbaa !54
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %117, %120
  %121 = phi ptr [ %124, %120 ], [ %118, %117 ]
  %122 = getelementptr inbounds %struct.Base, ptr %121, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !90
  tail call void @BKE_object_relink(ptr noundef %123) #12
  %124 = load ptr, ptr %121, align 8, !tbaa !54
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %120, !llvm.loop !212

126:                                              ; preds = %120, %117
  tail call void @set_sca_new_poins() #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_single_users(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  tail call fastcc void @single_object_users(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i8 noundef zeroext %3) #14
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call fastcc void @single_obdata_users(ptr noundef %0, ptr noundef %1, i32 noundef 0) #14
  tail call fastcc void @single_object_action_users(ptr noundef %1, i32 noundef 0) #14
  tail call fastcc void @single_mat_users_expand(ptr noundef %0) #14
  tail call fastcc void @single_tex_users_expand(ptr noundef %0) #14
  br label %7

7:                                                ; preds = %6, %4
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @single_obdata_users(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %121, label %7

7:                                                ; preds = %3, %118
  %8 = phi ptr [ %119, %118 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %118

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !179
  %17 = and i32 %16, %2
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %118

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  %22 = icmp eq ptr %21, null
  br i1 %22, label %118, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !184
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %118

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !186
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %118

31:                                               ; preds = %27
  tail call void @DAG_id_tag_update(ptr noundef nonnull %10, i16 noundef signext 2) #12
  %32 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !19
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
  %35 = load ptr, ptr %20, align 8, !tbaa !26
  %36 = tail call ptr @BKE_lamp_copy(ptr noundef %35) #12
  store ptr %36, ptr %20, align 8, !tbaa !26
  br label %37

37:                                               ; preds = %34, %51
  %38 = phi i64 [ 0, %34 ], [ %52, %51 ]
  %39 = getelementptr inbounds %struct.Lamp, ptr %36, i64 0, i32 69, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.MTex, ptr %40, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !213
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !200
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store ptr %48, ptr %43, align 8, !tbaa !213
  br label %51

51:                                               ; preds = %37, %50, %46, %42
  %52 = add nuw nsw i64 %38, 1
  %53 = icmp eq i64 %52, 18
  br i1 %53, label %112, label %37, !llvm.loop !215

54:                                               ; preds = %31
  %55 = load ptr, ptr %20, align 8, !tbaa !26
  %56 = tail call ptr @BKE_camera_copy(ptr noundef %55) #12
  store ptr %56, ptr %20, align 8, !tbaa !26
  br label %112

57:                                               ; preds = %31
  %58 = load ptr, ptr %20, align 8, !tbaa !26
  %59 = tail call ptr @BKE_mesh_copy(ptr noundef %58) #12
  store ptr %59, ptr %20, align 8, !tbaa !26
  %60 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !216
  %62 = icmp eq ptr %61, null
  br i1 %62, label %112, label %63

63:                                               ; preds = %57
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %61) #12
  br label %112

64:                                               ; preds = %31
  %65 = load ptr, ptr %20, align 8, !tbaa !26
  %66 = tail call ptr @BKE_mball_copy(ptr noundef %65) #12
  store ptr %66, ptr %20, align 8, !tbaa !26
  br label %112

67:                                               ; preds = %31, %31, %31
  %68 = load ptr, ptr %20, align 8, !tbaa !26
  %69 = tail call ptr @BKE_curve_copy(ptr noundef %68) #12
  store ptr %69, ptr %20, align 8, !tbaa !26
  %70 = getelementptr inbounds %struct.Curve, ptr %69, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !217
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ID, ptr %71, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !200
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store ptr %75, ptr %70, align 8, !tbaa !217
  br label %78

78:                                               ; preds = %77, %73, %67
  %79 = getelementptr inbounds %struct.Curve, ptr %69, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !218
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ID, ptr %80, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !200
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store ptr %84, ptr %79, align 8, !tbaa !218
  br label %87

87:                                               ; preds = %86, %82, %78
  %88 = getelementptr inbounds %struct.Curve, ptr %69, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !219
  %90 = icmp eq ptr %89, null
  br i1 %90, label %112, label %91

91:                                               ; preds = %87
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %89) #12
  br label %112

92:                                               ; preds = %31
  %93 = load ptr, ptr %20, align 8, !tbaa !26
  %94 = tail call ptr @BKE_lattice_copy(ptr noundef %93) #12
  store ptr %94, ptr %20, align 8, !tbaa !26
  %95 = getelementptr inbounds %struct.Lattice, ptr %94, i64 0, i32 23
  %96 = load ptr, ptr %95, align 8, !tbaa !220
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %92
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %96) #12
  br label %112

99:                                               ; preds = %31
  tail call void @DAG_id_tag_update(ptr noundef nonnull %10, i16 noundef signext 2) #12
  %100 = load ptr, ptr %20, align 8, !tbaa !26
  %101 = tail call ptr @BKE_armature_copy(ptr noundef %100) #12
  store ptr %101, ptr %20, align 8, !tbaa !26
  tail call void @BKE_pose_rebuild(ptr noundef nonnull %10, ptr noundef %101) #12
  br label %112

102:                                              ; preds = %31
  %103 = load ptr, ptr %20, align 8, !tbaa !26
  %104 = tail call ptr @BKE_speaker_copy(ptr noundef %103) #12
  store ptr %104, ptr %20, align 8, !tbaa !26
  br label %112

105:                                              ; preds = %31
  %106 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !221
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %138, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.161, ptr noundef nonnull @__func__.single_obdata_users, ptr noundef nonnull %110) #14
  br label %138

112:                                              ; preds = %51, %92, %98, %87, %91, %57, %63, %102, %99, %64, %54
  %113 = load ptr, ptr %20, align 8, !tbaa !26
  tail call void @BKE_copy_animdata_id_action(ptr noundef %113) #12
  %114 = load i32, ptr %24, align 4, !tbaa !184
  %115 = add nsw i32 %114, -1
  store i32 %115, ptr %24, align 4, !tbaa !184
  %116 = load ptr, ptr %20, align 8, !tbaa !26
  %117 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !223
  br label %118

118:                                              ; preds = %7, %14, %112, %27, %23, %19
  %119 = load ptr, ptr %8, align 8, !tbaa !54
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %7, !llvm.loop !224

121:                                              ; preds = %118, %3
  %122 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %123 = load ptr, ptr %122, align 8, !tbaa !54
  %124 = icmp eq ptr %123, null
  br i1 %124, label %138, label %125

125:                                              ; preds = %121, %135
  %126 = phi ptr [ %136, %135 ], [ %123, %121 ]
  %127 = getelementptr inbounds %struct.Mesh, ptr %126, i64 0, i32 19
  %128 = load ptr, ptr %127, align 8, !tbaa !225
  %129 = icmp eq ptr %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.ID, ptr %128, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !226
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  store ptr %132, ptr %127, align 8, !tbaa !225
  br label %135

135:                                              ; preds = %134, %130, %125
  %136 = load ptr, ptr %126, align 8, !tbaa !54
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %125, !llvm.loop !227

138:                                              ; preds = %135, %121, %105, %109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @single_object_action_users(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br label %8

8:                                                ; preds = %6, %22
  %9 = phi ptr [ %4, %6 ], [ %23, %22 ]
  %10 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  br i1 %7, label %21, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !179
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %15
  tail call void @DAG_id_tag_update(ptr noundef nonnull %11, i16 noundef signext 2) #12
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %11) #12
  br label %22

22:                                               ; preds = %8, %16, %21
  %23 = load ptr, ptr %9, align 8, !tbaa !54
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !228

25:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @single_mat_users_expand(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !229
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 29
  %13 = load ptr, ptr %12, align 8, !tbaa !230
  %14 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 31
  %15 = load i32, ptr %14, align 8, !tbaa !183
  tail call fastcc void @new_id_matar(ptr noundef %13, i32 noundef %15) #14
  br label %16

16:                                               ; preds = %5, %11
  %17 = load ptr, ptr %6, align 8, !tbaa !54
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !231

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %19, %35
  %24 = phi ptr [ %36, %35 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 5
  %26 = load i16, ptr %25, align 2, !tbaa !232
  %27 = and i16 %26, 256
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Mesh, ptr %24, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !233
  %32 = getelementptr inbounds %struct.Mesh, ptr %24, i64 0, i32 47
  %33 = load i16, ptr %32, align 2, !tbaa !234
  %34 = sext i16 %33 to i32
  tail call fastcc void @new_id_matar(ptr noundef %31, i32 noundef %34) #14
  br label %35

35:                                               ; preds = %23, %29
  %36 = load ptr, ptr %24, align 8, !tbaa !54
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %23, !llvm.loop !235

38:                                               ; preds = %35, %19
  %39 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %38, %54
  %43 = phi ptr [ %55, %54 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 5
  %45 = load i16, ptr %44, align 2, !tbaa !236
  %46 = and i16 %45, 256
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.Curve, ptr %43, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !237
  %51 = getelementptr inbounds %struct.Curve, ptr %43, i64 0, i32 22
  %52 = load i16, ptr %51, align 2, !tbaa !238
  %53 = sext i16 %52 to i32
  tail call fastcc void @new_id_matar(ptr noundef %50, i32 noundef %53) #14
  br label %54

54:                                               ; preds = %42, %48
  %55 = load ptr, ptr %43, align 8, !tbaa !54
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %42, !llvm.loop !239

57:                                               ; preds = %54, %38
  %58 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  %60 = icmp eq ptr %59, null
  br i1 %60, label %76, label %61

61:                                               ; preds = %57, %73
  %62 = phi ptr [ %74, %73 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.ID, ptr %62, i64 0, i32 5
  %64 = load i16, ptr %63, align 2, !tbaa !240
  %65 = and i16 %64, 256
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.MetaBall, ptr %62, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !242
  %70 = getelementptr inbounds %struct.MetaBall, ptr %62, i64 0, i32 9
  %71 = load i16, ptr %70, align 2, !tbaa !243
  %72 = sext i16 %71 to i32
  tail call fastcc void @new_id_matar(ptr noundef %69, i32 noundef %72) #14
  br label %73

73:                                               ; preds = %61, %67
  %74 = load ptr, ptr %62, align 8, !tbaa !54
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %61, !llvm.loop !244

76:                                               ; preds = %73, %57
  %77 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !54
  %79 = icmp eq ptr %78, null
  br i1 %79, label %106, label %80

80:                                               ; preds = %76, %103
  %81 = phi ptr [ %104, %103 ], [ %78, %76 ]
  %82 = getelementptr inbounds %struct.ID, ptr %81, i64 0, i32 5
  %83 = load i16, ptr %82, align 2, !tbaa !245
  %84 = and i16 %83, 256
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %80, %100
  %87 = phi i64 [ %101, %100 ], [ 0, %80 ]
  %88 = getelementptr inbounds %struct.Material, ptr %81, i64 0, i32 102, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !54
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.MTex, ptr %89, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !213
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ID, ptr %93, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !200
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  store ptr %97, ptr %92, align 8, !tbaa !213
  br label %100

100:                                              ; preds = %86, %99, %95, %91
  %101 = add nuw nsw i64 %87, 1
  %102 = icmp eq i64 %101, 18
  br i1 %102, label %103, label %86, !llvm.loop !249

103:                                              ; preds = %100, %80
  %104 = load ptr, ptr %81, align 8, !tbaa !54
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %80, !llvm.loop !250

106:                                              ; preds = %103, %76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @single_tex_users_expand(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1, %24
  %6 = phi ptr [ %25, %24 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !245
  %9 = and i16 %8, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %5, %21
  %12 = phi i64 [ %22, %21 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 102, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MTex, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !251
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call fastcc void @do_single_tex_user(ptr noundef nonnull %17) #14
  br label %21

21:                                               ; preds = %11, %16, %20
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, 18
  br i1 %23, label %24, label %11, !llvm.loop !252

24:                                               ; preds = %21, %5
  %25 = load ptr, ptr %6, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !253

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %27, %50
  %32 = phi ptr [ %51, %50 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 5
  %34 = load i16, ptr %33, align 2, !tbaa !254
  %35 = and i16 %34, 256
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %31, %47
  %38 = phi i64 [ %48, %47 ], [ 0, %31 ]
  %39 = getelementptr inbounds %struct.Lamp, ptr %32, i64 0, i32 69, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.MTex, ptr %40, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !251
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call fastcc void @do_single_tex_user(ptr noundef nonnull %43) #14
  br label %47

47:                                               ; preds = %37, %42, %46
  %48 = add nuw nsw i64 %38, 1
  %49 = icmp eq i64 %48, 18
  br i1 %49, label %50, label %37, !llvm.loop !256

50:                                               ; preds = %47, %31
  %51 = load ptr, ptr %32, align 8, !tbaa !54
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %31, !llvm.loop !257

53:                                               ; preds = %50, %27
  %54 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  %56 = icmp eq ptr %55, null
  br i1 %56, label %79, label %57

57:                                               ; preds = %53, %76
  %58 = phi ptr [ %77, %76 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.ID, ptr %58, i64 0, i32 5
  %60 = load i16, ptr %59, align 2, !tbaa !258
  %61 = and i16 %60, 256
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %57, %73
  %64 = phi i64 [ %74, %73 ], [ 0, %57 ]
  %65 = getelementptr inbounds %struct.World, ptr %58, i64 0, i32 70, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !54
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.MTex, ptr %66, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !251
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call fastcc void @do_single_tex_user(ptr noundef nonnull %69) #14
  br label %73

73:                                               ; preds = %63, %68, %72
  %74 = add nuw nsw i64 %64, 1
  %75 = icmp eq i64 %74, 18
  br i1 %75, label %76, label %63, !llvm.loop !260

76:                                               ; preds = %73, %57
  %77 = load ptr, ptr %58, align 8, !tbaa !54
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %57, !llvm.loop !261

79:                                               ; preds = %76, %53
  ret void
}

; Function Attrs: optsize
declare void @BKE_main_id_clear_newpoins(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_make_local(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.112, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.113, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.114, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_local_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @OBJECT_OT_make_local.type_items, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_local_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.20) #12
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  tail call void @BKE_scene_base_deselect_all(ptr noundef %8) #12
  %14 = tail call fastcc zeroext i8 @make_local_all__instance_indirect_unused(ptr noundef %7, ptr noundef %8) #14, !range !149
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  tail call void @BKE_report(ptr noundef %18, i32 noundef 2, ptr noundef nonnull @.str.162) #12
  br label %19

19:                                               ; preds = %16, %13
  tail call void @BKE_library_make_local(ptr noundef %7, ptr noundef null, i8 noundef zeroext 0) #12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #12
  br label %208

20:                                               ; preds = %2
  tail call fastcc void @tag_localizable_objects(ptr noundef %0, i32 noundef %11) #14
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %21 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #12
  %22 = load ptr, ptr %3, align 8, !tbaa !54
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20, %38
  %25 = phi ptr [ %39, %38 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.CollectionPointerLink, ptr %25, i64 0, i32 2, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 5
  %29 = load i16, ptr %28, align 2, !tbaa !229
  %30 = and i16 %29, 1024
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !103
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call zeroext i8 @id_make_local(ptr noundef nonnull %27, i8 noundef zeroext 0) #12
  br label %38

38:                                               ; preds = %32, %36, %24
  %39 = load ptr, ptr %25, align 8, !tbaa !54
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %24, !llvm.loop !262

41:                                               ; preds = %38, %20
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %42 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %4) #12
  %43 = load ptr, ptr %4, align 8, !tbaa !54
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %41, %61
  %46 = phi ptr [ %62, %61 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.CollectionPointerLink, ptr %46, i64 0, i32 2, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !84
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !103
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !88
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !200
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store ptr %58, ptr %53, align 8, !tbaa !88
  br label %61

61:                                               ; preds = %52, %56, %60, %45
  %62 = load ptr, ptr %46, align 8, !tbaa !54
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %45, !llvm.loop !263

64:                                               ; preds = %61, %41
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %65 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %5) #12
  %66 = load ptr, ptr %5, align 8, !tbaa !54
  %67 = icmp eq ptr %66, null
  br i1 %67, label %128, label %68

68:                                               ; preds = %64
  %69 = and i32 %11, -2
  %70 = icmp eq i32 %69, 2
  br label %71

71:                                               ; preds = %68, %125
  %72 = phi ptr [ %66, %68 ], [ %126, %125 ]
  %73 = getelementptr inbounds %struct.CollectionPointerLink, ptr %72, i64 0, i32 2, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !84
  %75 = getelementptr inbounds %struct.ID, ptr %74, i64 0, i32 5
  %76 = load i16, ptr %75, align 2, !tbaa !229
  %77 = and i16 %76, 1024
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %125, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 19
  %81 = load ptr, ptr %80, align 8, !tbaa !26
  %82 = icmp ne ptr %81, null
  %83 = and i1 %70, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  %85 = call zeroext i8 @id_make_local(ptr noundef nonnull %81, i8 noundef zeroext 0) #12
  %86 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %81) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call void @BKE_animdata_make_local(ptr noundef nonnull %86) #12
  br label %89

89:                                               ; preds = %88, %84
  %90 = call ptr @give_matarar(ptr noundef nonnull %74) #12
  %91 = icmp eq ptr %90, null
  br i1 %91, label %110, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 31
  %94 = load i32, ptr %93, align 8, !tbaa !183
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %92, %105
  %97 = phi i32 [ %106, %105 ], [ %94, %92 ]
  %98 = phi i64 [ %107, %105 ], [ 0, %92 ]
  %99 = load ptr, ptr %90, align 8, !tbaa !54
  %100 = getelementptr inbounds ptr, ptr %99, i64 %98
  %101 = load ptr, ptr %100, align 8, !tbaa !54
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  call void @id_lib_extern(ptr noundef nonnull %101) #12
  %104 = load i32, ptr %93, align 8, !tbaa !183
  br label %105

105:                                              ; preds = %96, %103
  %106 = phi i32 [ %97, %96 ], [ %104, %103 ]
  %107 = add nuw nsw i64 %98, 1
  %108 = sext i32 %106 to i64
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %96, label %110, !llvm.loop !264

110:                                              ; preds = %105, %92, %89, %79
  %111 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 109
  %112 = load ptr, ptr %111, align 8, !tbaa !54
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %110, %114
  %115 = phi ptr [ %119, %114 ], [ %112, %110 ]
  %116 = getelementptr inbounds %struct.ParticleSystem, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !265
  %118 = call zeroext i8 @id_make_local(ptr noundef %117, i8 noundef zeroext 0) #12
  %119 = load ptr, ptr %115, align 8, !tbaa !54
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %114, !llvm.loop !267

121:                                              ; preds = %114, %110
  %122 = call ptr @BKE_animdata_from_id(ptr noundef %74) #12
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  call void @BKE_animdata_make_local(ptr noundef nonnull %122) #12
  br label %125

125:                                              ; preds = %121, %124, %71
  %126 = load ptr, ptr %72, align 8, !tbaa !54
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %71, !llvm.loop !268

128:                                              ; preds = %125, %64
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %129 = icmp eq i32 %11, 3
  br i1 %129, label %130, label %207

130:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %131 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %6) #12
  %132 = load ptr, ptr %6, align 8, !tbaa !54
  %133 = icmp eq ptr %132, null
  br i1 %133, label %206, label %134

134:                                              ; preds = %130, %203
  %135 = phi ptr [ %204, %203 ], [ %132, %130 ]
  %136 = getelementptr inbounds %struct.CollectionPointerLink, ptr %135, i64 0, i32 2, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !84
  %138 = getelementptr inbounds %struct.ID, ptr %137, i64 0, i32 5
  %139 = load i16, ptr %138, align 2, !tbaa !229
  %140 = and i16 %139, 1024
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %203, label %142

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 3
  %144 = load i16, ptr %143, align 8, !tbaa !19
  %145 = icmp eq i16 %144, 10
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 31
  %148 = load i32, ptr %147, align 8, !tbaa !183
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %183

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 29
  br label %169

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 19
  %154 = load ptr, ptr %153, align 8, !tbaa !26
  br label %155

155:                                              ; preds = %152, %166
  %156 = phi i64 [ 0, %152 ], [ %167, %166 ]
  %157 = getelementptr inbounds %struct.Lamp, ptr %154, i64 0, i32 69, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !54
  %159 = icmp eq ptr %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.MTex, ptr %158, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !251
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = call zeroext i8 @id_make_local(ptr noundef nonnull %162, i8 noundef zeroext 0) #12
  br label %166

166:                                              ; preds = %155, %160, %164
  %167 = add nuw nsw i64 %156, 1
  %168 = icmp eq i64 %167, 18
  br i1 %168, label %203, label %155, !llvm.loop !269

169:                                              ; preds = %150, %178
  %170 = phi i32 [ %148, %150 ], [ %179, %178 ]
  %171 = phi i64 [ 0, %150 ], [ %180, %178 ]
  %172 = load ptr, ptr %151, align 8, !tbaa !230
  %173 = getelementptr inbounds ptr, ptr %172, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !54
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %169
  call fastcc void @make_local_makelocalmaterial(ptr noundef nonnull %174) #14
  %177 = load i32, ptr %147, align 8, !tbaa !183
  br label %178

178:                                              ; preds = %169, %176
  %179 = phi i32 [ %170, %169 ], [ %177, %176 ]
  %180 = add nuw nsw i64 %171, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %169, label %183, !llvm.loop !270

183:                                              ; preds = %178, %146
  %184 = call ptr @give_matarar(ptr noundef nonnull %137) #12
  %185 = icmp eq ptr %184, null
  br i1 %185, label %203, label %186

186:                                              ; preds = %183
  %187 = load i32, ptr %147, align 8, !tbaa !183
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %186, %198
  %190 = phi i32 [ %199, %198 ], [ %187, %186 ]
  %191 = phi i64 [ %200, %198 ], [ 0, %186 ]
  %192 = load ptr, ptr %184, align 8, !tbaa !54
  %193 = getelementptr inbounds ptr, ptr %192, i64 %191
  %194 = load ptr, ptr %193, align 8, !tbaa !54
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %189
  call fastcc void @make_local_makelocalmaterial(ptr noundef nonnull %194) #14
  %197 = load i32, ptr %147, align 8, !tbaa !183
  br label %198

198:                                              ; preds = %189, %196
  %199 = phi i32 [ %190, %189 ], [ %197, %196 ]
  %200 = add nuw nsw i64 %191, 1
  %201 = sext i32 %199 to i64
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %189, label %203, !llvm.loop !271

203:                                              ; preds = %198, %166, %186, %183, %134
  %204 = load ptr, ptr %135, align 8, !tbaa !54
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %134, !llvm.loop !272

206:                                              ; preds = %203, %130
  call void @BLI_freelistN(ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %207

207:                                              ; preds = %206, %128
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #12
  br label %208

208:                                              ; preds = %207, %19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_make_single_user(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.116, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.117, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.118, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_single_user_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @OBJECT_OT_make_single_user.type_items, i32 noundef 1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !98
  %12 = load ptr, ptr %8, align 8, !tbaa !97
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.119) #12
  %14 = load ptr, ptr %8, align 8, !tbaa !97
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.120, i32 noundef 0, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.121) #12
  %16 = load ptr, ptr %8, align 8, !tbaa !97
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.122, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.123) #12
  %18 = load ptr, ptr %8, align 8, !tbaa !97
  %19 = tail call ptr @RNA_def_boolean(ptr noundef %18, ptr noundef nonnull @.str.124, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126) #12
  %20 = load ptr, ptr %8, align 8, !tbaa !97
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.127, i32 noundef 0, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_single_user_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.20) #12
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %3) #12
  %9 = load ptr, ptr %6, align 8, !tbaa !105
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.6) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call fastcc void @single_object_users(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %8, i8 noundef zeroext 0) #14
  br label %13

13:                                               ; preds = %12, %2
  %14 = load ptr, ptr %6, align 8, !tbaa !105
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.120) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call fastcc void @single_obdata_users(ptr noundef %3, ptr noundef %4, i32 noundef %8) #14
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %6, align 8, !tbaa !105
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.122) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8, !tbaa !105
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.124) #12
  %25 = trunc i32 %24 to i8
  tail call fastcc void @single_mat_users(ptr noundef %4, i32 noundef %8, i8 noundef zeroext %25) #14
  br label %26

26:                                               ; preds = %22, %18
  %27 = load ptr, ptr %6, align 8, !tbaa !105
  %28 = tail call i32 @RNA_boolean_get(ptr noundef %27, ptr noundef nonnull @.str.127) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @single_object_action_users(ptr noundef %4, i32 noundef %8) #14
  br label %31

31:                                               ; preds = %30, %26
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %3) #12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #12
  br i1 %11, label %33, label %32

32:                                               ; preds = %31
  tail call void @DAG_relations_tag_update(ptr noundef %3) #12
  br label %33

33:                                               ; preds = %32, %31
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_drop_named_material(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.130, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.131, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @drop_named_material_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef 64, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @drop_named_material_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.132, ptr noundef nonnull %4) #12
  %9 = call ptr @BKE_libblock_find_name(i16 noundef signext 16717, ptr noundef nonnull %4) #12
  %10 = icmp eq ptr %6, null
  %11 = icmp eq ptr %9, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  call void @assign_material(ptr noundef %15, ptr noundef nonnull %9, i16 noundef signext 1, i32 noundef 0) #12
  %16 = load ptr, ptr %14, align 8, !tbaa !90
  call void @DAG_id_tag_update(ptr noundef %16, i16 noundef signext 1) #12
  %17 = load ptr, ptr %14, align 8, !tbaa !90
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef %17) #12
  %18 = call ptr @CTX_wm_view3d(ptr noundef %0) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %18) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef nonnull %9) #12
  br label %19

19:                                               ; preds = %3, %13
  %20 = phi i32 [ 4, %13 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_unlink_data(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.136, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.137, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_unlink_data_exec, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_unlink_data_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PropertyPointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %3, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %5 = load ptr, ptr %4, align 8, !tbaa !273
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  call void @BKE_report(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.163) #12
  br label %30

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !275
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !276
  %14 = icmp eq i16 %13, 16975
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !276
  %22 = icmp eq i16 %21, 19785
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  call void @id_us_min(ptr noundef nonnull %17) #12
  store ptr null, ptr %16, align 8, !tbaa !26
  %24 = load ptr, ptr %4, align 8, !tbaa !273
  br label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.164) #12
  br label %30

28:                                               ; preds = %23, %15, %10
  %29 = phi ptr [ %24, %23 ], [ %5, %15 ], [ %5, %10 ]
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %29) #12
  br label %30

30:                                               ; preds = %25, %28, %7
  %31 = phi i32 [ 2, %7 ], [ 4, %28 ], [ 2, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i32 %31
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_editsurfcurve(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_editlattice(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @makeDerivedMesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #14
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !277
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @object_editcurve_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 4, !tbaa !281
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !282
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !279
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !283
  store ptr %7, ptr %0, align 8, !tbaa !116
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

; Function Attrs: optsize
declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_base_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_make_proxy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @modifier_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiItemEnumO_ptr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_as_kdtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @parent_set_vert_find(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i8 noundef zeroext %3) unnamed_addr #2 {
  %5 = alloca [3 x %struct.KDTreeNearest], align 16
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #13
  %9 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %5, i32 noundef 3) #12
  %10 = load i32, ptr %5, align 16, !tbaa !285
  %11 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %5, i64 0, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !285
  %13 = getelementptr inbounds [3 x %struct.KDTreeNearest], ptr %5, i64 0, i64 2
  %14 = load i32, ptr %13, align 8, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #13
  br label %17

15:                                               ; preds = %4
  %16 = tail call i32 @BLI_kdtree_find_nearest(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null) #12
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ %16, %15 ], [ %10, %8 ]
  %19 = phi i32 [ 0, %15 ], [ %12, %8 ]
  %20 = phi i32 [ 0, %15 ], [ %14, %8 ]
  store i32 %18, ptr %2, align 4
  %21 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %19, ptr %21, align 4
  %22 = getelementptr inbounds i32, ptr %2, i64 2
  store i32 %20, ptr %22, align 4
  ret void
}

; Function Attrs: optsize
declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @parent_set_draw_check_prop(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #12
  %4 = tail call i32 @RNA_enum_get(ptr noundef %0, ptr noundef nonnull @.str.20) #12
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(8) @.str.56) #15
  %6 = icmp ne i32 %5, 0
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %7, 2
  %9 = select i1 %6, i1 true, i1 %8
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_constraint_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_operator_confirm_message(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @move_to_layer_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca [20 x i32], align 16
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.80) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %10 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %4) #12
  %11 = load ptr, ptr %4, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %21, %13 ], [ %11, %9 ]
  %15 = phi i32 [ %20, %13 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !108
  %20 = or i32 %19, %15
  %21 = load ptr, ptr %14, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %13, !llvm.loop !287

23:                                               ; preds = %13, %9
  %24 = phi i32 [ 0, %9 ], [ %20, %13 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %31, %25 ]
  %27 = trunc i64 %26 to i32
  %28 = shl nuw nsw i32 1, %27
  %29 = and i32 %28, %24
  %30 = getelementptr inbounds [20 x i32], ptr %3, i64 0, i64 %26
  store i32 %29, ptr %30, align 4, !tbaa !110
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, 20
  br i1 %32, label %33, label %25, !llvm.loop !288

33:                                               ; preds = %25
  %34 = load ptr, ptr %5, align 8, !tbaa !105
  call void @RNA_boolean_set_array(ptr noundef %34, ptr noundef nonnull @.str.80, ptr noundef nonnull %3) #12
  br label %52

35:                                               ; preds = %2
  %36 = load ptr, ptr %5, align 8, !tbaa !105
  call void @RNA_boolean_get_array(ptr noundef %36, ptr noundef nonnull @.str.80, ptr noundef nonnull %3) #12
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i64 [ 0, %35 ], [ %47, %37 ]
  %39 = phi <4 x i32> [ zeroinitializer, %35 ], [ %46, %37 ]
  %40 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %35 ], [ %48, %37 ]
  %41 = getelementptr inbounds [20 x i32], ptr %3, i64 0, i64 %38
  %42 = load <4 x i32>, ptr %41, align 16, !tbaa !110
  %43 = icmp eq <4 x i32> %42, zeroinitializer
  %44 = shl nuw nsw <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %40
  %45 = select <4 x i1> %43, <4 x i32> zeroinitializer, <4 x i32> %44
  %46 = or <4 x i32> %45, %39
  %47 = add nuw i64 %38, 4
  %48 = add <4 x i32> %40, <i32 4, i32 4, i32 4, i32 4>
  %49 = icmp eq i64 %47, 20
  br i1 %49, label %50, label %37, !llvm.loop !289

50:                                               ; preds = %37
  %51 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %46)
  br label %52

52:                                               ; preds = %50, %33
  %53 = phi i32 [ %24, %33 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #13
  ret i32 %53
}

; Function Attrs: optsize
declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_groups(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @allow_make_links_data(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  switch i32 %0, label %44 [
    i32 1, label %4
    i32 2, label %12
    i32 3, label %45
    i32 4, label %45
    i32 5, label %45
    i32 6, label %22
    i32 7, label %30
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !19
  %9 = icmp ne i16 %6, %8
  %10 = icmp eq i16 %6, 0
  %11 = or i1 %10, %9
  br i1 %11, label %44, label %45

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !19
  %15 = add i16 %14, -1
  %16 = icmp ult i16 %15, 5
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !19
  %20 = add i16 %19, -1
  %21 = icmp ult i16 %20, 5
  br i1 %21, label %45, label %44

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !19
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %28 = load i16, ptr %27, align 8, !tbaa !19
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %44, label %45

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !26
  %33 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !26
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %38 = load i16, ptr %37, align 8, !tbaa !19
  %39 = icmp eq i16 %38, 4
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %42 = load i16, ptr %41, align 8, !tbaa !19
  %43 = icmp eq i16 %42, 4
  br i1 %43, label %45, label %44

44:                                               ; preds = %30, %36, %40, %22, %26, %12, %17, %4, %3
  br label %45

45:                                               ; preds = %40, %26, %3, %3, %3, %17, %4, %44
  %46 = phi i8 [ 0, %44 ], [ 1, %4 ], [ 1, %17 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %26 ], [ 1, %40 ]
  ret i8 %46
}

; Function Attrs: optsize
declare void @test_object_materials(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assign_material(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_copy_animdata_id(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_groups_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_link_modifiers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @clear_sca_new_poins() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_group_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_groups_relink(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_relink(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_sca_new_poins() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_lamp_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_camera_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mesh_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_copy_animdata_id_action(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mball_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_curve_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_lattice_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_armature_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_speaker_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @new_id_matar(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %35

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %32
  %7 = phi i64 [ 0, %4 ], [ %33, %32 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !186
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !223
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  store ptr %17, ptr %8, align 8, !tbaa !54
  %20 = load ptr, ptr %16, align 8, !tbaa !223
  tail call void @id_us_plus(ptr noundef %20) #12
  %21 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !184
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4, !tbaa !184
  br label %32

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !184
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = tail call ptr @BKE_material_copy(ptr noundef nonnull %9) #12
  store ptr %29, ptr %8, align 8, !tbaa !54
  %30 = load i32, ptr %25, align 4, !tbaa !184
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %25, align 4, !tbaa !184
  store ptr %29, ptr %16, align 8, !tbaa !223
  br label %32

32:                                               ; preds = %6, %11, %24, %28, %19
  %33 = add nuw nsw i64 %7, 1
  %34 = icmp eq i64 %33, %5
  br i1 %34, label %35, label %6, !llvm.loop !292

35:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_material_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_single_tex_user(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %0, align 8, !tbaa !54
  %9 = load ptr, ptr %5, align 8, !tbaa !293
  tail call void @id_us_plus(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !296
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !296
  br label %21

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !296
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = tail call ptr @BKE_texture_copy(ptr noundef nonnull %2) #12
  tail call void @BKE_copy_animdata_id_action(ptr noundef %18) #12
  store ptr %18, ptr %5, align 8, !tbaa !293
  %19 = load i32, ptr %14, align 4, !tbaa !296
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %14, align 4, !tbaa !296
  store ptr %18, ptr %0, align 8, !tbaa !54
  br label %21

21:                                               ; preds = %8, %17, %13, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_texture_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @make_local_all__instance_indirect_unused(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2, %25
  %7 = phi ptr [ %27, %25 ], [ %4, %2 ]
  %8 = phi i8 [ %26, %25 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !202
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  store i32 1, ptr %13, align 4, !tbaa !202
  tail call void @id_lib_extern(ptr noundef nonnull %7) #12
  %17 = tail call ptr @BKE_scene_base_add(ptr noundef %1, ptr noundef nonnull %7) #12
  %18 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !179
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !179
  %21 = trunc i32 %20 to i16
  %22 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 53
  store i16 %21, ptr %24, align 4, !tbaa !178
  tail call void @DAG_id_tag_update(ptr noundef nonnull %7, i16 noundef signext 7) #12
  br label %25

25:                                               ; preds = %6, %12, %16
  %26 = phi i8 [ 1, %16 ], [ %8, %12 ], [ %8, %6 ]
  %27 = load ptr, ptr %7, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6, !llvm.loop !297

29:                                               ; preds = %25, %2
  %30 = phi i8 [ 0, %2 ], [ %26, %25 ]
  ret i8 %30
}

; Function Attrs: optsize
declare void @BKE_library_make_local(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tag_localizable_objects(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  tail call void @BKE_main_id_tag_all(ptr noundef %4, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %5 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 2
  br label %10

10:                                               ; preds = %8, %25
  %11 = phi ptr [ %6, %8 ], [ %26, %25 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %11, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !229
  %16 = or i16 %15, 1024
  store i16 %16, ptr %14, align 2, !tbaa !229
  br i1 %9, label %17, label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 5
  %23 = load i16, ptr %22, align 2, !tbaa !298
  %24 = or i16 %23, 1024
  store i16 %24, ptr %22, align 2, !tbaa !298
  br label %25

25:                                               ; preds = %21, %17, %10
  %26 = load ptr, ptr %11, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !299

28:                                               ; preds = %25, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %29 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %28, %49
  %33 = phi ptr [ %50, %49 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 5
  %35 = load i16, ptr %34, align 2, !tbaa !229
  %36 = and i16 %35, 1024
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  call void @BKE_library_foreach_ID_link(ptr noundef nonnull %33, ptr noundef nonnull @tag_localizable_looper, ptr noundef null, i32 noundef 1) #12
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 5
  %45 = load i16, ptr %44, align 2, !tbaa !298
  %46 = and i16 %45, 1024
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  call void @BKE_library_foreach_ID_link(ptr noundef nonnull %41, ptr noundef nonnull @tag_localizable_looper, ptr noundef null, i32 noundef 1) #12
  br label %49

49:                                               ; preds = %43, %48, %39
  %50 = load ptr, ptr %33, align 8, !tbaa !54
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %32, !llvm.loop !300

52:                                               ; preds = %49, %28
  ret void
}

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @id_make_local(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_animdata_make_local(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @give_matarar(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_local_makelocalmaterial(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call zeroext i8 @id_make_local(ptr noundef %0, i8 noundef zeroext 0) #12
  br label %3

3:                                                ; preds = %1, %14
  %4 = phi i64 [ 0, %1 ], [ %15, %14 ]
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.MTex, ptr %6, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !251
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @id_make_local(ptr noundef nonnull %10, i8 noundef zeroext 0) #12
  br label %14

14:                                               ; preds = %3, %8, %12
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, 18
  br i1 %16, label %17, label %3, !llvm.loop !301

17:                                               ; preds = %14
  %18 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @BKE_animdata_make_local(ptr noundef nonnull %18) #12
  br label %21

21:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: optsize
declare void @BKE_main_id_tag_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_library_foreach_ID_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @tag_localizable_looper(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 %2) #10 {
  %4 = load ptr, ptr %1, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !298
  %9 = and i16 %8, -1025
  store i16 %9, ptr %7, align 2, !tbaa !298
  br label %10

10:                                               ; preds = %6, %3
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @single_mat_users(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %68, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 0
  %9 = icmp eq i8 %2, 0
  br label %10

10:                                               ; preds = %7, %65
  %11 = phi ptr [ %5, %7 ], [ %66, %65 ]
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %65

17:                                               ; preds = %10
  br i1 %8, label %23, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !179
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %65, label %23

23:                                               ; preds = %18, %17
  %24 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 31
  %25 = load i32, ptr %24, align 8, !tbaa !183
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %65, label %27

27:                                               ; preds = %23, %61
  %28 = phi i32 [ %62, %61 ], [ 1, %23 ]
  %29 = trunc i32 %28 to i16
  %30 = tail call ptr @give_current_material(ptr noundef nonnull %13, i16 noundef signext %29) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %61, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !302
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = tail call ptr @BKE_material_copy(ptr noundef nonnull %30) #12
  tail call void @BKE_copy_animdata_id_action(ptr noundef %37) #12
  %38 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 6
  store i32 0, ptr %38, align 4, !tbaa !302
  tail call void @assign_material(ptr noundef nonnull %13, ptr noundef %37, i16 noundef signext %29, i32 noundef 0) #12
  br i1 %9, label %61, label %39

39:                                               ; preds = %36, %58
  %40 = phi i64 [ %59, %58 ], [ 0, %36 ]
  %41 = getelementptr inbounds %struct.Material, ptr %30, i64 0, i32 102, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.MTex, ptr %42, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !251
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ID, ptr %46, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !296
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = add nsw i32 %50, -1
  store i32 %53, ptr %49, align 4, !tbaa !296
  %54 = tail call ptr @BKE_texture_copy(ptr noundef nonnull %46) #12
  tail call void @BKE_copy_animdata_id_action(ptr noundef %54) #12
  %55 = getelementptr inbounds %struct.Material, ptr %37, i64 0, i32 102, i64 %40
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 5
  store ptr %54, ptr %57, align 8, !tbaa !251
  br label %58

58:                                               ; preds = %39, %44, %52, %48
  %59 = add nuw nsw i64 %40, 1
  %60 = icmp eq i64 %59, 18
  br i1 %60, label %61, label %39, !llvm.loop !303

61:                                               ; preds = %58, %27, %36, %32
  %62 = add nuw nsw i32 %28, 1
  %63 = load i32, ptr %24, align 8, !tbaa !183
  %64 = icmp slt i32 %28, %63
  br i1 %64, label %27, label %65, !llvm.loop !304

65:                                               ; preds = %61, %23, %10, %18
  %66 = load ptr, ptr %11, align 8, !tbaa !54
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %10, !llvm.loop !305

68:                                               ; preds = %65, %3
  ret void
}

; Function Attrs: optsize
declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !7, i64 32}
!18 = !{!6, !12, i64 184}
!19 = !{!20, !12, i64 136}
!20 = !{!"Object", !21, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !22, i64 140, !22, i64 144, !22, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !23, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !22, i64 432, !22, i64 436, !7, i64 440, !7, i64 448, !22, i64 456, !22, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !24, i64 616, !24, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !22, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !22, i64 968, !22, i64 972, !22, i64 976, !22, i64 980, !22, i64 984, !24, i64 988, !24, i64 992, !24, i64 996, !24, i64 1000, !24, i64 1004, !24, i64 1008, !24, i64 1012, !24, i64 1016, !24, i64 1020, !24, i64 1024, !24, i64 1028, !24, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !24, i64 1048, !24, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !24, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !22, i64 1144, !22, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !24, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !25, i64 1304, !25, i64 1312, !22, i64 1320, !22, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!21 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !22, i64 100, !22, i64 104, !22, i64 108, !7, i64 112}
!22 = !{!"int", !8, i64 0}
!23 = !{!"bAnimVizSettings", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44}
!24 = !{!"float", !8, i64 0}
!25 = !{!"long", !8, i64 0}
!26 = !{!20, !7, i64 296}
!27 = !{!28, !7, i64 264}
!28 = !{!"Scene", !21, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !22, i64 232, !22, i64 236, !22, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !29, i64 280, !38, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !22, i64 4380, !10, i64 4384, !39, i64 4400, !40, i64 4416, !43, i64 4600, !7, i64 4608, !44, i64 4616, !7, i64 4640, !25, i64 4648, !25, i64 4656, !31, i64 4664, !32, i64 4824, !45, i64 4888, !7, i64 4952}
!29 = !{!"RenderData", !30, i64 0, !7, i64 248, !7, i64 256, !33, i64 264, !34, i64 328, !22, i64 400, !22, i64 404, !22, i64 408, !24, i64 412, !22, i64 416, !22, i64 420, !22, i64 424, !22, i64 428, !12, i64 432, !12, i64 434, !24, i64 436, !24, i64 440, !24, i64 444, !24, i64 448, !24, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !22, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !22, i64 484, !22, i64 488, !12, i64 492, !12, i64 494, !22, i64 496, !22, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !22, i64 516, !22, i64 520, !22, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !35, i64 544, !35, i64 560, !36, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !24, i64 612, !24, i64 616, !24, i64 620, !24, i64 624, !22, i64 628, !24, i64 632, !24, i64 636, !24, i64 640, !24, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !24, i64 660, !24, i64 664, !12, i64 668, !12, i64 670, !24, i64 672, !24, i64 676, !8, i64 680, !22, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !22, i64 2520, !12, i64 2524, !12, i64 2526, !24, i64 2528, !24, i64 2532, !12, i64 2536, !12, i64 2538, !24, i64 2540, !12, i64 2544, !12, i64 2546, !22, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !24, i64 2560, !24, i64 2564, !7, i64 2568, !22, i64 2576, !24, i64 2580, !8, i64 2584, !37, i64 2616, !22, i64 3976, !22, i64 3980}
!30 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !24, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !31, i64 24, !32, i64 184}
!31 = !{!"ColorManagedViewSettings", !22, i64 0, !22, i64 4, !8, i64 8, !8, i64 72, !24, i64 136, !24, i64 140, !7, i64 144, !7, i64 152}
!32 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!33 = !{!"QuicktimeCodecSettings", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !12, i64 48, !12, i64 50, !22, i64 52, !22, i64 56, !22, i64 60}
!34 = !{!"FFMpegCodecData", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !24, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !7, i64 64}
!35 = !{!"rctf", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!36 = !{!"rcti", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!37 = !{!"BakeData", !30, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !24, i64 1280, !24, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!38 = !{!"AudioData", !22, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !22, i64 16, !12, i64 20, !12, i64 22, !24, i64 24, !24, i64 28}
!39 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!40 = !{!"GameData", !39, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !41, i64 40, !12, i64 64, !12, i64 66, !24, i64 68, !42, i64 72, !24, i64 128, !24, i64 132, !22, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180}
!41 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !24, i64 8, !24, i64 12, !7, i64 16}
!42 = !{!"RecastData", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !22, i64 40, !24, i64 44, !24, i64 48, !12, i64 52, !12, i64 54}
!43 = !{!"UnitSettings", !24, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!44 = !{!"PhysicsSettings", !8, i64 0, !22, i64 12, !22, i64 16, !22, i64 20}
!45 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!46 = !{!47, !7, i64 272}
!47 = !{!"Mesh", !21, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !48, i64 280, !48, i64 480, !48, i64 680, !48, i64 880, !48, i64 1080, !22, i64 1280, !22, i64 1284, !22, i64 1288, !22, i64 1292, !22, i64 1296, !22, i64 1300, !22, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !22, i64 1344, !12, i64 1348, !12, i64 1350, !24, i64 1352, !22, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !12, i64 1366, !7, i64 1368}
!48 = !{!"CustomData", !7, i64 0, !8, i64 8, !22, i64 172, !22, i64 176, !22, i64 180, !7, i64 184, !7, i64 192}
!49 = !{!25, !25, i64 0}
!50 = !{!51, !7, i64 0}
!51 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !22, i64 16, !7, i64 24, !22, i64 32, !7, i64 40, !7, i64 48, !25, i64 56, !7, i64 64, !22, i64 72, !7, i64 80, !22, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !22, i64 104}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!7, !7, i64 0}
!55 = !{!56, !12, i64 16}
!56 = !{!"Nurb", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !22, i64 24, !22, i64 28, !8, i64 32, !12, i64 36, !12, i64 38, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !12, i64 82, !22, i64 84}
!57 = !{!56, !22, i64 24}
!58 = !{!56, !7, i64 72}
!59 = !{!60, !12, i64 248}
!60 = !{!"Curve", !21, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !8, i64 220, !8, i64 232, !12, i64 244, !12, i64 246, !12, i64 248, !12, i64 250, !24, i64 252, !24, i64 256, !22, i64 260, !12, i64 264, !12, i64 266, !22, i64 268, !24, i64 272, !24, i64 276, !24, i64 280, !12, i64 284, !12, i64 286, !12, i64 288, !12, i64 290, !22, i64 292, !22, i64 296, !8, i64 300, !12, i64 304, !8, i64 306, !8, i64 307, !24, i64 308, !24, i64 312, !24, i64 316, !24, i64 320, !24, i64 324, !24, i64 328, !24, i64 332, !24, i64 336, !24, i64 340, !24, i64 344, !22, i64 348, !22, i64 352, !22, i64 356, !22, i64 360, !22, i64 364, !7, i64 368, !7, i64 376, !8, i64 384, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !22, i64 488, !22, i64 492, !7, i64 496, !61, i64 504, !24, i64 512, !24, i64 516, !24, i64 520, !8, i64 524, !8, i64 525, !8, i64 526}
!61 = !{!"CharInfo", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !12, i64 6}
!62 = !{!63, !8, i64 52}
!63 = !{!"BezTriple", !8, i64 0, !24, i64 36, !24, i64 40, !24, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !24, i64 56, !24, i64 60, !24, i64 64, !8, i64 68}
!64 = !{!63, !8, i64 51}
!65 = !{!63, !8, i64 53}
!66 = distinct !{!66, !53}
!67 = !{!56, !22, i64 28}
!68 = !{!56, !7, i64 64}
!69 = !{!70, !12, i64 24}
!70 = !{!"BPoint", !8, i64 0, !24, i64 16, !24, i64 20, !12, i64 24, !12, i64 26, !24, i64 28, !24, i64 32}
!71 = distinct !{!71, !53}
!72 = distinct !{!72, !53}
!73 = !{!74, !7, i64 272}
!74 = !{!"Lattice", !21, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !12, i64 132, !12, i64 134, !12, i64 136, !12, i64 138, !12, i64 140, !12, i64 142, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !22, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !7, i64 272}
!75 = !{!76, !7, i64 0}
!76 = !{!"EditLatt", !7, i64 0, !22, i64 8, !8, i64 12}
!77 = !{!74, !12, i64 128}
!78 = !{!74, !12, i64 130}
!79 = !{!74, !12, i64 132}
!80 = !{!74, !7, i64 176}
!81 = distinct !{!81, !53}
!82 = !{!83, !7, i64 120}
!83 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!84 = !{!85, !7, i64 32}
!85 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !86, i64 16}
!86 = !{!"PointerRNA", !87, i64 0, !7, i64 8, !7, i64 16}
!87 = !{!"", !7, i64 0}
!88 = !{!20, !7, i64 216}
!89 = !{!28, !7, i64 168}
!90 = !{!91, !7, i64 32}
!91 = !{!"Base", !7, i64 0, !7, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !12, i64 28, !12, i64 30, !7, i64 32}
!92 = !{!20, !12, i64 138}
!93 = !{!20, !22, i64 140}
!94 = !{!20, !22, i64 144}
!95 = !{!20, !22, i64 148}
!96 = distinct !{!96, !53}
!97 = !{!6, !7, i64 88}
!98 = !{!6, !7, i64 104}
!99 = !{!28, !7, i64 24}
!100 = !{!20, !7, i64 1256}
!101 = !{!102, !7, i64 24}
!102 = !{!"Group", !21, i64 0, !10, i64 120, !22, i64 136, !8, i64 140}
!103 = !{!20, !7, i64 24}
!104 = !{!83, !7, i64 88}
!105 = !{!83, !7, i64 112}
!106 = !{!107, !7, i64 16}
!107 = !{!"GroupObject", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !8, i64 34}
!108 = !{!91, !22, i64 16}
!109 = !{!20, !22, i64 944}
!110 = !{!22, !22, i64 0}
!111 = !{!112, !7, i64 24}
!112 = !{!"EnumPropertyItem", !22, i64 0, !7, i64 8, !22, i64 16, !7, i64 24, !7, i64 32}
!113 = !{!112, !7, i64 8}
!114 = !{!112, !22, i64 0}
!115 = distinct !{!115, !53}
!116 = !{!8, !8, i64 0}
!117 = !{!20, !7, i64 416}
!118 = !{!119, !7, i64 0}
!119 = !{!"ModifierData", !7, i64 0, !7, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !8, i64 32, !7, i64 96, !7, i64 104}
!120 = !{!119, !22, i64 16}
!121 = !{!122, !7, i64 120}
!122 = !{!"ArmatureModifierData", !119, i64 0, !12, i64 112, !12, i64 114, !22, i64 116, !7, i64 120, !7, i64 128, !8, i64 136}
!123 = !{!124, !7, i64 112}
!124 = !{!"LatticeModifierData", !119, i64 0, !7, i64 112, !8, i64 120, !24, i64 184, !8, i64 188}
!125 = !{!126, !7, i64 112}
!126 = !{!"CurveModifierData", !119, i64 0, !7, i64 112, !8, i64 120, !12, i64 184, !8, i64 186}
!127 = distinct !{!127, !53}
!128 = distinct !{!128, !53}
!129 = !{!60, !22, i64 268}
!130 = !{!131, !7, i64 48}
!131 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 48, !7, i64 56, !22, i64 64, !24, i64 68, !12, i64 72, !12, i64 74, !22, i64 76, !7, i64 80, !22, i64 88, !8, i64 92, !24, i64 104, !24, i64 108}
!132 = !{!131, !7, i64 56}
!133 = !{!131, !7, i64 32}
!134 = !{!20, !7, i64 1280}
!135 = !{!136, !7, i64 48}
!136 = !{!"CurveCache", !10, i64 0, !10, i64 16, !10, i64 32, !7, i64 48}
!137 = !{!138, !7, i64 120}
!138 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !10, i64 144, !10, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !24, i64 264, !12, i64 268, !12, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !24, i64 524, !24, i64 528, !24, i64 532, !7, i64 536}
!139 = !{!140, !22, i64 176}
!140 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 48, !24, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !22, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !24, i64 268, !24, i64 272, !24, i64 276, !24, i64 280, !24, i64 284, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !8, i64 308, !22, i64 320, !12, i64 324, !8, i64 326}
!141 = !{!142, !7, i64 16}
!142 = !{!"bConstraint", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 26, !8, i64 28, !8, i64 29, !8, i64 30, !12, i64 94, !24, i64 96, !24, i64 100, !7, i64 104, !24, i64 112, !24, i64 116}
!143 = !{!144, !7, i64 0}
!144 = !{!"bFollowPathConstraint", !7, i64 0, !24, i64 8, !24, i64 12, !22, i64 16, !12, i64 20, !12, i64 22}
!145 = !{!28, !22, i64 680}
!146 = !{!24, !24, i64 0}
!147 = !{!6, !7, i64 80}
!148 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54}
!149 = !{i8 0, i8 2}
!150 = !{!83, !7, i64 152}
!151 = !{!83, !7, i64 80}
!152 = distinct !{!152, !53}
!153 = distinct !{!153, !53}
!154 = distinct !{!154, !53}
!155 = !{!20, !7, i64 224}
!156 = !{!20, !7, i64 1184}
!157 = !{!142, !7, i64 8}
!158 = !{!142, !12, i64 24}
!159 = distinct !{!159, !53}
!160 = distinct !{!160, !53}
!161 = !{!162, !7, i64 0}
!162 = !{!"bDampTrackConstraint", !7, i64 0, !22, i64 8, !22, i64 12, !8, i64 16}
!163 = !{!162, !22, i64 8}
!164 = distinct !{!164, !53}
!165 = !{!166, !7, i64 0}
!166 = !{!"bTrackToConstraint", !7, i64 0, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !8, i64 24}
!167 = !{!166, !22, i64 8}
!168 = !{!166, !22, i64 12}
!169 = distinct !{!169, !53}
!170 = !{!171, !7, i64 0}
!171 = !{!"bLockTrackConstraint", !7, i64 0, !22, i64 8, !22, i64 12, !8, i64 16}
!172 = !{!171, !22, i64 8}
!173 = !{!171, !22, i64 12}
!174 = distinct !{!174, !53}
!175 = !{!176, !7, i64 152}
!176 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !22, i64 32, !24, i64 36, !8, i64 40, !8, i64 56, !24, i64 72, !24, i64 76, !8, i64 80, !8, i64 81, !22, i64 84, !22, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !35, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !22, i64 224, !22, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !24, i64 244, !24, i64 248, !24, i64 252, !24, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!177 = !{!176, !22, i64 224}
!178 = !{!20, !12, i64 948}
!179 = !{!91, !22, i64 24}
!180 = distinct !{!180, !53}
!181 = distinct !{!181, !53}
!182 = distinct !{!182, !53}
!183 = !{!20, !22, i64 456}
!184 = !{!21, !22, i64 100}
!185 = distinct !{!185, !53}
!186 = !{!21, !7, i64 24}
!187 = !{!188, !7, i64 8}
!188 = !{!"LinkNode", !7, i64 0, !7, i64 8}
!189 = !{!188, !7, i64 0}
!190 = distinct !{!190, !53}
!191 = !{!20, !12, i64 952}
!192 = !{!60, !7, i64 448}
!193 = !{!194, !22, i64 100}
!194 = !{!"VFont", !21, i64 0, !8, i64 120, !7, i64 1144, !7, i64 1152, !7, i64 1160}
!195 = !{!60, !7, i64 456}
!196 = !{!60, !7, i64 464}
!197 = !{!60, !7, i64 472}
!198 = distinct !{!198, !53}
!199 = distinct !{!199, !53}
!200 = !{!20, !7, i64 16}
!201 = distinct !{!201, !53}
!202 = !{!20, !22, i64 100}
!203 = distinct !{!203, !53}
!204 = !{!102, !7, i64 16}
!205 = !{!102, !7, i64 120}
!206 = !{!107, !7, i64 0}
!207 = distinct !{!207, !53}
!208 = distinct !{!208, !53}
!209 = distinct !{!209, !53}
!210 = !{!28, !7, i64 128}
!211 = !{!176, !7, i64 96}
!212 = distinct !{!212, !53}
!213 = !{!214, !7, i64 8}
!214 = !{!"MTex", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !24, i64 116, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !12, i64 128, !12, i64 130, !8, i64 132, !8, i64 133, !24, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192, !24, i64 196, !24, i64 200, !24, i64 204, !24, i64 208, !24, i64 212, !24, i64 216, !24, i64 220, !24, i64 224, !24, i64 228, !24, i64 232, !24, i64 236, !24, i64 240, !24, i64 244, !24, i64 248, !24, i64 252, !24, i64 256, !24, i64 260, !24, i64 264, !24, i64 268, !24, i64 272, !24, i64 276, !24, i64 280, !24, i64 284, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !24, i64 308}
!215 = distinct !{!215, !53}
!216 = !{!47, !7, i64 144}
!217 = !{!60, !7, i64 160}
!218 = !{!60, !7, i64 168}
!219 = !{!60, !7, i64 192}
!220 = !{!74, !7, i64 192}
!221 = !{!222, !22, i64 2100}
!222 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !22, i64 2096, !22, i64 2100, !8, i64 2104, !22, i64 2108, !22, i64 2112, !8, i64 2116}
!223 = !{!21, !7, i64 16}
!224 = distinct !{!224, !53}
!225 = !{!47, !7, i64 264}
!226 = !{!47, !7, i64 16}
!227 = distinct !{!227, !53}
!228 = distinct !{!228, !53}
!229 = !{!20, !12, i64 98}
!230 = !{!20, !7, i64 440}
!231 = distinct !{!231, !53}
!232 = !{!47, !12, i64 98}
!233 = !{!47, !7, i64 152}
!234 = !{!47, !12, i64 1366}
!235 = distinct !{!235, !53}
!236 = !{!60, !12, i64 98}
!237 = !{!60, !7, i64 200}
!238 = !{!60, !12, i64 266}
!239 = distinct !{!239, !53}
!240 = !{!241, !12, i64 98}
!241 = !{!"MetaBall", !21, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 185, !12, i64 186, !12, i64 188, !12, i64 190, !8, i64 192, !8, i64 204, !8, i64 216, !24, i64 228, !24, i64 232, !24, i64 236, !7, i64 240}
!242 = !{!241, !7, i64 176}
!243 = !{!241, !12, i64 186}
!244 = distinct !{!244, !53}
!245 = !{!246, !12, i64 98}
!246 = !{!"Material", !21, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !24, i64 132, !24, i64 136, !24, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192, !24, i64 196, !24, i64 200, !24, i64 204, !24, i64 208, !24, i64 212, !24, i64 216, !24, i64 220, !247, i64 224, !248, i64 312, !24, i64 328, !24, i64 332, !24, i64 336, !24, i64 340, !24, i64 344, !24, i64 348, !24, i64 352, !12, i64 356, !12, i64 358, !12, i64 360, !8, i64 362, !8, i64 363, !24, i64 364, !24, i64 368, !12, i64 372, !12, i64 374, !24, i64 376, !24, i64 380, !24, i64 384, !24, i64 388, !12, i64 392, !12, i64 394, !22, i64 396, !22, i64 400, !22, i64 404, !22, i64 408, !12, i64 412, !12, i64 414, !12, i64 416, !12, i64 418, !24, i64 420, !24, i64 424, !24, i64 428, !24, i64 432, !24, i64 436, !24, i64 440, !24, i64 444, !24, i64 448, !24, i64 452, !24, i64 456, !8, i64 460, !24, i64 524, !24, i64 528, !24, i64 532, !22, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !12, i64 544, !12, i64 546, !12, i64 548, !8, i64 550, !8, i64 551, !12, i64 552, !12, i64 554, !24, i64 556, !24, i64 560, !8, i64 564, !24, i64 580, !24, i64 584, !12, i64 588, !12, i64 590, !7, i64 592, !7, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !12, i64 612, !12, i64 614, !24, i64 616, !24, i64 620, !8, i64 624, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !24, i64 800, !24, i64 804, !24, i64 808, !24, i64 812, !24, i64 816, !12, i64 820, !12, i64 822, !8, i64 824, !8, i64 836, !24, i64 848, !24, i64 852, !24, i64 856, !24, i64 860, !24, i64 864, !24, i64 868, !24, i64 872, !12, i64 876, !12, i64 878, !22, i64 880, !12, i64 884, !12, i64 886, !8, i64 888, !12, i64 904, !12, i64 906, !12, i64 908, !12, i64 910, !12, i64 912, !8, i64 914, !7, i64 920, !10, i64 928}
!247 = !{!"VolumeSettings", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !24, i64 52, !24, i64 56, !24, i64 60, !12, i64 64, !12, i64 66, !12, i64 68, !12, i64 70, !24, i64 72, !24, i64 76, !24, i64 80, !24, i64 84}
!248 = !{!"GameSettings", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!249 = distinct !{!249, !53}
!250 = distinct !{!250, !53}
!251 = !{!214, !7, i64 16}
!252 = distinct !{!252, !53}
!253 = distinct !{!253, !53}
!254 = !{!255, !12, i64 98}
!255 = !{!"Lamp", !21, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !22, i64 132, !12, i64 136, !12, i64 138, !24, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192, !24, i64 196, !7, i64 200, !12, i64 208, !12, i64 210, !24, i64 212, !24, i64 216, !24, i64 220, !24, i64 224, !24, i64 228, !24, i64 232, !24, i64 236, !12, i64 240, !12, i64 242, !12, i64 244, !12, i64 246, !8, i64 248, !8, i64 249, !12, i64 250, !12, i64 252, !12, i64 254, !12, i64 256, !12, i64 258, !24, i64 260, !24, i64 264, !24, i64 268, !24, i64 272, !12, i64 276, !12, i64 278, !12, i64 280, !12, i64 282, !12, i64 284, !12, i64 286, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !24, i64 308, !24, i64 312, !24, i64 316, !24, i64 320, !24, i64 324, !24, i64 328, !24, i64 332, !24, i64 336, !12, i64 340, !8, i64 342, !7, i64 344, !8, i64 352, !12, i64 496, !12, i64 498, !8, i64 500, !7, i64 504, !7, i64 512}
!256 = distinct !{!256, !53}
!257 = distinct !{!257, !53}
!258 = !{!259, !12, i64 98}
!259 = !{!"World", !21, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !12, i64 132, !12, i64 134, !24, i64 136, !24, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192, !24, i64 196, !12, i64 200, !12, i64 202, !12, i64 204, !12, i64 206, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !24, i64 216, !24, i64 220, !24, i64 224, !24, i64 228, !24, i64 232, !24, i64 236, !24, i64 240, !24, i64 244, !24, i64 248, !24, i64 252, !24, i64 256, !24, i64 260, !12, i64 264, !12, i64 266, !12, i64 268, !12, i64 270, !24, i64 272, !24, i64 276, !24, i64 280, !24, i64 284, !12, i64 288, !12, i64 290, !12, i64 292, !12, i64 294, !24, i64 296, !24, i64 300, !24, i64 304, !24, i64 308, !24, i64 312, !24, i64 316, !24, i64 320, !12, i64 324, !12, i64 326, !12, i64 328, !12, i64 330, !12, i64 332, !12, i64 334, !7, i64 336, !7, i64 344, !7, i64 352, !8, i64 360, !12, i64 504, !12, i64 506, !8, i64 508, !7, i64 512, !7, i64 520}
!260 = distinct !{!260, !53}
!261 = distinct !{!261, !53}
!262 = distinct !{!262, !53}
!263 = distinct !{!263, !53}
!264 = distinct !{!264, !53}
!265 = !{!266, !7, i64 16}
!266 = !{!"ParticleSystem", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !10, i64 88, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !8, i64 168, !8, i64 232, !24, i64 296, !24, i64 300, !24, i64 304, !22, i64 308, !22, i64 312, !22, i64 316, !22, i64 320, !22, i64 324, !22, i64 328, !22, i64 332, !22, i64 336, !12, i64 340, !12, i64 342, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 540, !12, i64 564, !12, i64 566, !7, i64 568, !7, i64 576, !10, i64 584, !7, i64 600, !7, i64 608, !22, i64 616, !22, i64 620, !7, i64 624, !7, i64 632, !7, i64 640, !24, i64 648, !24, i64 652}
!267 = distinct !{!267, !53}
!268 = distinct !{!268, !53}
!269 = distinct !{!269, !53}
!270 = distinct !{!270, !53}
!271 = distinct !{!271, !53}
!272 = distinct !{!272, !53}
!273 = !{!274, !7, i64 24}
!274 = !{!"PropertyPointerRNA", !86, i64 0, !7, i64 24}
!275 = !{!274, !7, i64 0}
!276 = !{!12, !12, i64 0}
!277 = !{!278, !8, i64 13}
!278 = !{!"BMHeader", !7, i64 0, !22, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!279 = !{!280, !7, i64 48}
!280 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !22, i64 56, !8, i64 60}
!281 = !{!280, !8, i64 60}
!282 = !{!280, !7, i64 40}
!283 = !{!284, !7, i64 32}
!284 = !{!"BMesh", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !22, i64 88, !22, i64 92, !22, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !22, i64 128, !7, i64 136, !48, i64 144, !48, i64 344, !48, i64 544, !48, i64 744, !12, i64 944, !22, i64 948, !22, i64 952, !22, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!285 = !{!286, !22, i64 0}
!286 = !{!"KDTreeNearest", !22, i64 0, !24, i64 4, !8, i64 8}
!287 = distinct !{!287, !53}
!288 = distinct !{!288, !53}
!289 = distinct !{!289, !53, !290, !291}
!290 = !{!"llvm.loop.isvectorized", i32 1}
!291 = !{!"llvm.loop.unroll.runtime.disable"}
!292 = distinct !{!292, !53}
!293 = !{!294, !7, i64 16}
!294 = !{!"Tex", !21, i64 0, !7, i64 120, !24, i64 128, !24, i64 132, !24, i64 136, !24, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192, !24, i64 196, !24, i64 200, !24, i64 204, !24, i64 208, !24, i64 212, !12, i64 216, !12, i64 218, !12, i64 220, !12, i64 222, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !24, i64 236, !24, i64 240, !24, i64 244, !24, i64 248, !22, i64 252, !22, i64 256, !12, i64 260, !12, i64 262, !12, i64 264, !12, i64 266, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !24, i64 284, !24, i64 288, !24, i64 292, !295, i64 296, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !8, i64 408, !8, i64 409}
!295 = !{!"ImageUser", !7, i64 0, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !22, i64 36}
!296 = !{!294, !22, i64 100}
!297 = distinct !{!297, !53}
!298 = !{!21, !12, i64 98}
!299 = distinct !{!299, !53}
!300 = distinct !{!300, !53}
!301 = distinct !{!301, !53}
!302 = !{!246, !22, i64 100}
!303 = distinct !{!303, !53}
!304 = distinct !{!304, !53}
!305 = distinct !{!305, !53}
