; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_rigidbody_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_rigidbody_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.RigidBodyWorld = type { ptr, ptr, ptr, ptr, i32, float, ptr, %struct.ListBase, i32, i16, i16, i32, float, ptr }
%struct.RigidBodyOb = type { ptr, ptr, i16, i16, i32, i32, i16, i16, float, float, float, float, float, float, float, float, [4 x float], [3 x float], float }
%struct.RigidBodyCon = type { ptr, ptr, i16, i16, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr }
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

@.str = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Object is directly controlled by simulation results\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PASSIVE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Passive\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Object is directly controlled by animation system\00", align 1
@rigidbody_object_type_items = dso_local local_unnamed_addr global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"BOX\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"Box-like shapes (i.e. cubes), including planes (i.e. ground planes)\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SPHERE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CAPSULE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Capsule\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"CYLINDER\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Cylinder\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"CONE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Cone\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"CONVEX_HULL\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Convex Hull\00", align 1
@.str.20 = private unnamed_addr constant [104 x i8] c"A mesh-like surface encompassing (i.e. shrinkwrap over) all vertices (best results with fewer vertices)\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"MESH\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.23 = private unnamed_addr constant [93 x i8] c"Mesh consisting of triangles only, allowing for more detailed interactions than convex hulls\00", align 1
@rigidbody_object_shape_items = dso_local local_unnamed_addr global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.6, i32 287, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 1, ptr @.str.9, i32 289, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 2, ptr @.str.12, i32 238, ptr @.str.13, ptr @.str.11 }, %struct.EnumPropertyItem { i32 3, ptr @.str.14, i32 293, ptr @.str.15, ptr @.str.11 }, %struct.EnumPropertyItem { i32 4, ptr @.str.16, i32 295, ptr @.str.17, ptr @.str.11 }, %struct.EnumPropertyItem { i32 5, ptr @.str.18, i32 290, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 6, ptr @.str.21, i32 292, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [6 x i8] c"FIXED\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Glue rigid bodies together\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"POINT\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"Constrain rigid bodies to move around common pivot point\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"HINGE\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Hinge\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"Restrict rigid body rotation to one axis\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"SLIDER\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Slider\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"Restrict rigid body translation to one axis\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"PISTON\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Piston\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"Restrict rigid body translation and rotation to one axis\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"GENERIC\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"Restrict translation and rotation to specified axes\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"GENERIC_SPRING\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Generic Spring\00", align 1
@.str.44 = private unnamed_addr constant [65 x i8] c"Restrict translation and rotation to specified axes with springs\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"MOTOR\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"Motor\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"Drive rigid body around or along an axis\00", align 1
@rigidbody_constraint_type_items = dso_local local_unnamed_addr global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 8, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 0, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 1, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.32 }, %struct.EnumPropertyItem { i32 3, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem { i32 9, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.38 }, %struct.EnumPropertyItem { i32 5, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 6, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 11, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_RigidBodyWorld_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_rna_type, ptr null, i32 -1, ptr @.str.48, i32 128, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.51, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyWorld_rna_properties_begin, ptr @RigidBodyWorld_rna_properties_next, ptr @RigidBodyWorld_rna_properties_end, ptr @RigidBodyWorld_rna_properties_get, ptr null, ptr null, ptr @RigidBodyWorld_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Group = external global %struct.StructRNA, align 8
@RNA_PointCache = external global %struct.StructRNA, align 8
@RNA_EffectorWeights = external global %struct.StructRNA, align 8
@rna_RigidBodyObject_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_rna_type, ptr null, i32 -1, ptr @.str.48, i32 128, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.51, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_rna_properties_begin, ptr @RigidBodyObject_rna_properties_next, ptr @RigidBodyObject_rna_properties_end, ptr @RigidBodyObject_rna_properties_get, ptr null, ptr null, ptr @RigidBodyObject_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_RigidBodyConstraint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_rna_type, ptr null, i32 -1, ptr @.str.48, i32 128, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.51, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_rna_properties_begin, ptr @RigidBodyConstraint_rna_properties_next, ptr @RigidBodyConstraint_rna_properties_end, ptr @RigidBodyConstraint_rna_properties_get, ptr null, ptr null, ptr @RigidBodyConstraint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@rna_RigidBodyWorld_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_group, ptr @rna_RigidBodyWorld_rna_properties, i32 -1, ptr @.str.52, i32 8912896, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyWorld_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.48 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_RigidBodyWorld_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_constraints, ptr @rna_RigidBodyWorld_rna_type, i32 -1, ptr @.str.55, i32 9437185, ptr @.str.56, ptr @.str.57, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyWorld_reset, i32 67108864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyWorld_group_get, ptr @RigidBodyWorld_group_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.52 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_RigidBodyWorld_constraints = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_enabled, ptr @rna_RigidBodyWorld_group, i32 -1, ptr @.str.58, i32 9437185, ptr @.str.59, ptr @.str.60, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyWorld_reset, i32 67108864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyWorld_constraints_get, ptr @RigidBodyWorld_constraints_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.55 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.57 = private unnamed_addr constant [58 x i8] c"Group containing objects participating in this simulation\00", align 1
@rna_RigidBodyWorld_enabled = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_time_scale, ptr @rna_RigidBodyWorld_constraints, i32 -1, ptr @.str.61, i32 3, ptr @.str.62, ptr @.str.63, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 67108864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyWorld_enabled_get, ptr @RigidBodyWorld_enabled_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.58 = private unnamed_addr constant [12 x i8] c"constraints\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"Constraints\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"Group containing rigid body constraint objects\00", align 1
@rna_RigidBodyWorld_time_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_steps_per_second, ptr @rna_RigidBodyWorld_enabled, i32 -1, ptr @.str.64, i32 8195, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.51, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyWorld_reset, i32 67108864, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @RigidBodyWorld_time_scale_get, ptr @RigidBodyWorld_time_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+02, float 1.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.61 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"Simulation will be evaluated\00", align 1
@rna_RigidBodyWorld_steps_per_second = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_solver_iterations, ptr @rna_RigidBodyWorld_time_scale, i32 -1, ptr @.str.67, i32 8195, ptr @.str.68, ptr @.str.69, i32 0, ptr @.str.51, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyWorld_reset, i32 67108864, ptr null, ptr null, i32 68, i32 1, ptr null, ptr null }, ptr @RigidBodyWorld_steps_per_second_get, ptr @RigidBodyWorld_steps_per_second_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 60, i32 1000, i32 1, i32 32767, i32 1, i32 60, ptr null }, align 8
@.str.64 = private unnamed_addr constant [11 x i8] c"time_scale\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"Time Scale\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"Change the speed of the simulation\00", align 1
@rna_RigidBodyWorld_solver_iterations = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_use_split_impulse, ptr @rna_RigidBodyWorld_steps_per_second, i32 -1, ptr @.str.70, i32 3, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.51, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyWorld_reset, i32 67108864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyWorld_solver_iterations_get, ptr @RigidBodyWorld_solver_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 10, i32 100, i32 1, i32 1000, i32 1, i32 10, ptr null }, align 8
@.str.67 = private unnamed_addr constant [17 x i8] c"steps_per_second\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"Steps Per Second\00", align 1
@.str.69 = private unnamed_addr constant [89 x i8] c"Number of simulation steps taken per second (higher values are more accurate but slower)\00", align 1
@rna_RigidBodyWorld_use_split_impulse = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_point_cache, ptr @rna_RigidBodyWorld_solver_iterations, i32 -1, ptr @.str.73, i32 3, ptr @.str.74, ptr @.str.75, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyWorld_reset, i32 67108864, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyWorld_use_split_impulse_get, ptr @RigidBodyWorld_use_split_impulse_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.70 = private unnamed_addr constant [18 x i8] c"solver_iterations\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Solver Iterations\00", align 1
@.str.72 = private unnamed_addr constant [109 x i8] c"Number of constraint solver iterations made per simulation step (higher values are more accurate but slower)\00", align 1
@rna_RigidBodyWorld_point_cache = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_effector_weights, ptr @rna_RigidBodyWorld_use_split_impulse, i32 -1, ptr @.str.76, i32 8650752, ptr @.str.77, ptr @.str.11, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyWorld_point_cache_get, ptr null, ptr null, ptr null, ptr @RNA_PointCache }, align 8
@.str.73 = private unnamed_addr constant [18 x i8] c"use_split_impulse\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"Split Impulse\00", align 1
@.str.75 = private unnamed_addr constant [127 x i8] c"Reduce extra velocity that can build up when objects collide (lowers simulation stability a little so use only when necessary)\00", align 1
@rna_RigidBodyWorld_effector_weights = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_RigidBodyWorld_point_cache, i32 -1, ptr @.str.78, i32 8388608, ptr @.str.79, ptr @.str.11, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyWorld_effector_weights_get, ptr null, ptr null, ptr null, ptr @RNA_EffectorWeights }, align 8
@.str.76 = private unnamed_addr constant [12 x i8] c"point_cache\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"Point Cache\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"effector_weights\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"Effector Weights\00", align 1
@rna_RigidBodyWorld_convex_sweep_test_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_convex_sweep_test_end, ptr @rna_RigidBodyWorld_convex_sweep_test_object, i32 -1, ptr @.str.82, i32 7, ptr @.str.11, ptr @.str.11, i32 0, ptr @.str.51, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_RigidBodyWorld_convex_sweep_test_start_default }, align 8
@.str.80 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"Rigidbody object with a convex collision shape\00", align 1
@rna_RigidBodyWorld_convex_sweep_test_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_convex_sweep_test_start, ptr null, i32 -1, ptr @.str.80, i32 262148, ptr @.str.11, ptr @.str.81, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_RigidBodyWorld_convex_sweep_test_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_convex_sweep_test_object_location, ptr @rna_RigidBodyWorld_convex_sweep_test_start, i32 -1, ptr @.str.83, i32 7, ptr @.str.11, ptr @.str.11, i32 0, ptr @.str.51, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_RigidBodyWorld_convex_sweep_test_end_default }, align 8
@.str.82 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@rna_RigidBodyWorld_convex_sweep_test_start_default = internal global [3 x float] zeroinitializer, align 4
@rna_RigidBodyWorld_convex_sweep_test_object_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_convex_sweep_test_hitpoint, ptr @rna_RigidBodyWorld_convex_sweep_test_end, i32 -1, ptr @.str.84, i32 8388619, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.51, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_RigidBodyWorld_convex_sweep_test_object_location_default }, align 8
@.str.83 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@rna_RigidBodyWorld_convex_sweep_test_end_default = internal global [3 x float] zeroinitializer, align 4
@rna_RigidBodyWorld_convex_sweep_test_hitpoint = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_convex_sweep_test_normal, ptr @rna_RigidBodyWorld_convex_sweep_test_object_location, i32 -1, ptr @.str.87, i32 8388619, ptr @.str.88, ptr @.str.86, i32 0, ptr @.str.51, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_RigidBodyWorld_convex_sweep_test_hitpoint_default }, align 8
@.str.84 = private unnamed_addr constant [16 x i8] c"object_location\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"The hit location of this sweep test\00", align 1
@rna_RigidBodyWorld_convex_sweep_test_object_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_RigidBodyWorld_convex_sweep_test_normal = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyWorld_convex_sweep_test_has_hit, ptr @rna_RigidBodyWorld_convex_sweep_test_hitpoint, i32 -1, ptr @.str.89, i32 8388619, ptr @.str.90, ptr @.str.91, i32 0, ptr @.str.51, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_RigidBodyWorld_convex_sweep_test_normal_default }, align 8
@.str.87 = private unnamed_addr constant [9 x i8] c"hitpoint\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"Hitpoint\00", align 1
@rna_RigidBodyWorld_convex_sweep_test_hitpoint_default = internal global [3 x float] zeroinitializer, align 4
@rna_RigidBodyWorld_convex_sweep_test_has_hit = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_RigidBodyWorld_convex_sweep_test_normal, i32 -1, ptr @.str.92, i32 11, ptr @.str.11, ptr @.str.93, i32 0, ptr @.str.51, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.89 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"The face normal at the sweep test hit location\00", align 1
@rna_RigidBodyWorld_convex_sweep_test_normal_default = internal global [3 x float] zeroinitializer, align 4
@.str.92 = private unnamed_addr constant [8 x i8] c"has_hit\00", align 1
@.str.93 = private unnamed_addr constant [67 x i8] c"If the function has found collision point, value is 1, otherwise 0\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"convex_sweep_test\00", align 1
@.str.95 = private unnamed_addr constant [64 x i8] c"Sweep test convex rigidbody against the current rigidbody world\00", align 1
@rna_RigidBodyWorld_convex_sweep_test_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_RigidBodyWorld_convex_sweep_test_object, ptr @rna_RigidBodyWorld_convex_sweep_test_has_hit } }, ptr @.str.94, i32 16, ptr @.str.95, ptr @RigidBodyWorld_convex_sweep_test_call, ptr null }, align 8
@RNA_RigidBodyObject = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_RigidBodyConstraint, ptr @RNA_RigidBodyWorld, ptr null, %struct.ListBase { ptr @rna_RigidBodyObject_rna_properties, ptr @rna_RigidBodyObject_collision_groups } }, ptr @.str.150, ptr null, ptr null, i32 4, ptr @.str.151, ptr @.str.152, ptr @.str.51, i32 17, ptr null, ptr @rna_RigidBodyObject_rna_properties, ptr null, ptr null, ptr null, ptr @rna_RigidBodyOb_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_BakePixel = external global %struct.StructRNA, align 8
@.str.96 = private unnamed_addr constant [15 x i8] c"RigidBodyWorld\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"Rigid Body World\00", align 1
@.str.98 = private unnamed_addr constant [62 x i8] c"Self-contained rigid body simulation environment and settings\00", align 1
@RNA_RigidBodyWorld = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_RigidBodyObject, ptr @RNA_BakePixel, ptr null, %struct.ListBase { ptr @rna_RigidBodyWorld_rna_properties, ptr @rna_RigidBodyWorld_effector_weights } }, ptr @.str.96, ptr null, ptr null, i32 4, ptr @.str.97, ptr @.str.98, ptr @.str.51, i32 17, ptr null, ptr @rna_RigidBodyWorld_rna_properties, ptr null, ptr null, ptr null, ptr @rna_RigidBodyWorld_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_RigidBodyWorld_convex_sweep_test_func, ptr @rna_RigidBodyWorld_convex_sweep_test_func } }, align 8
@rna_RigidBodyObject_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_type, ptr @rna_RigidBodyObject_rna_properties, i32 -1, ptr @.str.52, i32 8912896, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_RigidBodyObject_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_mesh_source, ptr @rna_RigidBodyObject_rna_type, i32 -1, ptr @.str.99, i32 1, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.51, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_type_get, ptr @RigidBodyObject_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_RigidBodyObject_type_items, i32 2, i32 0 }, align 8
@rna_RigidBodyObject_mesh_source = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_enabled, ptr @rna_RigidBodyObject_type, i32 -1, ptr @.str.102, i32 1, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.51, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_mesh_source_get, ptr @RigidBodyObject_mesh_source_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_RigidBodyObject_mesh_source_items, i32 3, i32 0 }, align 8
@.str.99 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.101 = private unnamed_addr constant [41 x i8] c"Role of object in Rigid Body Simulations\00", align 1
@rna_RigidBodyObject_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_RigidBodyObject_enabled = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_collision_shape, ptr @rna_RigidBodyObject_mesh_source, i32 -1, ptr @.str.61, i32 3, ptr @.str.62, ptr @.str.105, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_enabled_get, ptr @RigidBodyObject_enabled_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.102 = private unnamed_addr constant [12 x i8] c"mesh_source\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"Mesh Source\00", align 1
@.str.104 = private unnamed_addr constant [50 x i8] c"Source of the mesh used to create collision shape\00", align 1
@rna_RigidBodyObject_mesh_source_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.274, i32 0, ptr @.str.275, ptr @.str.276 }, %struct.EnumPropertyItem { i32 1, ptr @.str.277, i32 0, ptr @.str.278, ptr @.str.279 }, %struct.EnumPropertyItem { i32 2, ptr @.str.280, i32 0, ptr @.str.281, ptr @.str.282 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_RigidBodyObject_collision_shape = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_kinematic, ptr @rna_RigidBodyObject_enabled, i32 -1, ptr @.str.106, i32 1, ptr @.str.107, ptr @.str.108, i32 0, ptr @.str.51, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_shape_update, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_collision_shape_get, ptr @RigidBodyObject_collision_shape_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_RigidBodyObject_collision_shape_items, i32 7, i32 0 }, align 8
@.str.105 = private unnamed_addr constant [51 x i8] c"Rigid Body actively participates to the simulation\00", align 1
@rna_RigidBodyObject_kinematic = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_use_deform, ptr @rna_RigidBodyObject_collision_shape, i32 -1, ptr @.str.109, i32 3, ptr @.str.110, ptr @.str.111, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_kinematic_get, ptr @RigidBodyObject_kinematic_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.106 = private unnamed_addr constant [16 x i8] c"collision_shape\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"Collision Shape\00", align 1
@.str.108 = private unnamed_addr constant [52 x i8] c"Collision Shape of object in Rigid Body Simulations\00", align 1
@rna_RigidBodyObject_collision_shape_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.6, i32 287, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 1, ptr @.str.9, i32 289, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 2, ptr @.str.12, i32 238, ptr @.str.13, ptr @.str.11 }, %struct.EnumPropertyItem { i32 3, ptr @.str.14, i32 293, ptr @.str.15, ptr @.str.11 }, %struct.EnumPropertyItem { i32 4, ptr @.str.16, i32 295, ptr @.str.17, ptr @.str.11 }, %struct.EnumPropertyItem { i32 5, ptr @.str.18, i32 290, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 6, ptr @.str.21, i32 292, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_RigidBodyObject_use_deform = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_mass, ptr @rna_RigidBodyObject_kinematic, i32 -1, ptr @.str.112, i32 3, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_use_deform_get, ptr @RigidBodyObject_use_deform_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.109 = private unnamed_addr constant [10 x i8] c"kinematic\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"Kinematic\00", align 1
@.str.111 = private unnamed_addr constant [58 x i8] c"Allow rigid body to be controlled by the animation system\00", align 1
@rna_RigidBodyObject_mass = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_use_deactivation, ptr @rna_RigidBodyObject_use_deform, i32 -1, ptr @.str.115, i32 3, ptr @.str.116, ptr @.str.117, i32 0, ptr @.str.51, i32 2, i32 262144, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_mass_get, ptr @RigidBodyObject_mass_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 0x47EFFFFFE0000000, float 0x3F50624DE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.112 = private unnamed_addr constant [11 x i8] c"use_deform\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"Deforming\00", align 1
@.str.114 = private unnamed_addr constant [37 x i8] c"Rigid body deforms during simulation\00", align 1
@rna_RigidBodyObject_use_deactivation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_use_start_deactivated, ptr @rna_RigidBodyObject_mass, i32 -1, ptr @.str.118, i32 3, ptr @.str.119, ptr @.str.120, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_use_deactivation_get, ptr @RigidBodyObject_use_deactivation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null }, align 8
@.str.115 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"Mass\00", align 1
@.str.117 = private unnamed_addr constant [53 x i8] c"How much the object 'weighs' irrespective of gravity\00", align 1
@rna_RigidBodyObject_use_start_deactivated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_deactivate_linear_velocity, ptr @rna_RigidBodyObject_use_deactivation, i32 -1, ptr @.str.121, i32 1, ptr @.str.122, ptr @.str.123, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_use_start_deactivated_get, ptr @RigidBodyObject_use_start_deactivated_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.118 = private unnamed_addr constant [17 x i8] c"use_deactivation\00", align 1
@.str.119 = private unnamed_addr constant [20 x i8] c"Enable Deactivation\00", align 1
@.str.120 = private unnamed_addr constant [105 x i8] c"Enable deactivation of resting rigid bodies (increases performance and stability but can cause glitches)\00", align 1
@rna_RigidBodyObject_deactivate_linear_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_deactivate_angular_velocity, ptr @rna_RigidBodyObject_use_start_deactivated, i32 -1, ptr @.str.124, i32 3, ptr @.str.125, ptr @.str.126, i32 0, ptr @.str.51, i32 2, i32 458752, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_deactivate_linear_velocity_get, ptr @RigidBodyObject_deactivate_linear_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0x3FD99999A0000000, ptr null }, align 8
@.str.121 = private unnamed_addr constant [22 x i8] c"use_start_deactivated\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"Start Deactivated\00", align 1
@.str.123 = private unnamed_addr constant [53 x i8] c"Deactivate rigid body at the start of the simulation\00", align 1
@rna_RigidBodyObject_deactivate_angular_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_linear_damping, ptr @rna_RigidBodyObject_deactivate_linear_velocity, i32 -1, ptr @.str.127, i32 3, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.51, i32 2, i32 458752, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_deactivate_angular_velocity_get, ptr @RigidBodyObject_deactivate_angular_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 5.000000e-01, ptr null }, align 8
@.str.124 = private unnamed_addr constant [27 x i8] c"deactivate_linear_velocity\00", align 1
@.str.125 = private unnamed_addr constant [39 x i8] c"Linear Velocity Deactivation Threshold\00", align 1
@.str.126 = private unnamed_addr constant [63 x i8] c"Linear Velocity below which simulation stops simulating object\00", align 1
@rna_RigidBodyObject_linear_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_angular_damping, ptr @rna_RigidBodyObject_deactivate_angular_velocity, i32 -1, ptr @.str.130, i32 3, ptr @.str.131, ptr @.str.132, i32 0, ptr @.str.51, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_linear_damping_get, ptr @RigidBodyObject_linear_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0x3FA47AE140000000, ptr null }, align 8
@.str.127 = private unnamed_addr constant [28 x i8] c"deactivate_angular_velocity\00", align 1
@.str.128 = private unnamed_addr constant [40 x i8] c"Angular Velocity Deactivation Threshold\00", align 1
@.str.129 = private unnamed_addr constant [64 x i8] c"Angular Velocity below which simulation stops simulating object\00", align 1
@rna_RigidBodyObject_angular_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_friction, ptr @rna_RigidBodyObject_linear_damping, i32 -1, ptr @.str.133, i32 3, ptr @.str.134, ptr @.str.135, i32 0, ptr @.str.51, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_angular_damping_get, ptr @RigidBodyObject_angular_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0x3FB99999A0000000, ptr null }, align 8
@.str.130 = private unnamed_addr constant [15 x i8] c"linear_damping\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"Linear Damping\00", align 1
@.str.132 = private unnamed_addr constant [49 x i8] c"Amount of linear velocity that is lost over time\00", align 1
@rna_RigidBodyObject_friction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_restitution, ptr @rna_RigidBodyObject_angular_damping, i32 -1, ptr @.str.136, i32 3, ptr @.str.137, ptr @.str.138, i32 0, ptr @.str.51, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_friction_get, ptr @RigidBodyObject_friction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 5.000000e-01, ptr null }, align 8
@.str.133 = private unnamed_addr constant [16 x i8] c"angular_damping\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"Angular Damping\00", align 1
@.str.135 = private unnamed_addr constant [50 x i8] c"Amount of angular velocity that is lost over time\00", align 1
@rna_RigidBodyObject_restitution = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_use_margin, ptr @rna_RigidBodyObject_friction, i32 -1, ptr @.str.139, i32 3, ptr @.str.140, ptr @.str.141, i32 0, ptr @.str.51, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_restitution_get, ptr @RigidBodyObject_restitution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.136 = private unnamed_addr constant [9 x i8] c"friction\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"Friction\00", align 1
@.str.138 = private unnamed_addr constant [33 x i8] c"Resistance of object to movement\00", align 1
@rna_RigidBodyObject_use_margin = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_collision_margin, ptr @rna_RigidBodyObject_restitution, i32 -1, ptr @.str.142, i32 3, ptr @.str.143, ptr @.str.144, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_shape_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_use_margin_get, ptr @RigidBodyObject_use_margin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.139 = private unnamed_addr constant [12 x i8] c"restitution\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"Restitution\00", align 1
@.str.141 = private unnamed_addr constant [99 x i8] c"Tendency of object to bounce after colliding with another (0 = stays still, 1 = perfectly elastic)\00", align 1
@rna_RigidBodyObject_collision_margin = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyObject_collision_groups, ptr @rna_RigidBodyObject_use_margin, i32 -1, ptr @.str.145, i32 3, ptr @.str.143, ptr @.str.146, i32 0, ptr @.str.51, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_shape_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyObject_collision_margin_get, ptr @RigidBodyObject_collision_margin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3F847AE140000000, i32 3, float 0x3FA47AE140000000, ptr null }, align 8
@.str.142 = private unnamed_addr constant [11 x i8] c"use_margin\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"Collision Margin\00", align 1
@.str.144 = private unnamed_addr constant [78 x i8] c"Use custom collision margin (some shapes will have a visible gap around them)\00", align 1
@rna_RigidBodyObject_collision_groups = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_RigidBodyObject_collision_margin, i32 -1, ptr @.str.147, i32 65539, ptr @.str.148, ptr @.str.149, i32 0, ptr @.str.51, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 20, i32 0, i32 0], i32 20, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @RigidBodyObject_collision_groups_get, ptr @RigidBodyObject_collision_groups_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_RigidBodyObject_collision_groups_default }, align 8
@.str.145 = private unnamed_addr constant [17 x i8] c"collision_margin\00", align 1
@.str.146 = private unnamed_addr constant [102 x i8] c"Threshold of distance near surface where collisions are still considered (best results when non-zero)\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"collision_groups\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"Collision Groups\00", align 1
@.str.149 = private unnamed_addr constant [39 x i8] c"Collision Groups Rigid Body belongs to\00", align 1
@rna_RigidBodyObject_collision_groups_default = internal global [20 x i32] zeroinitializer, align 16
@RNA_RigidBodyConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Scene, ptr @RNA_RigidBodyObject, ptr null, %struct.ListBase { ptr @rna_RigidBodyConstraint_rna_properties, ptr @rna_RigidBodyConstraint_motor_ang_max_impulse } }, ptr @.str.270, ptr null, ptr null, i32 4, ptr @.str.271, ptr @.str.272, ptr @.str.51, i32 17, ptr null, ptr @rna_RigidBodyConstraint_rna_properties, ptr null, ptr null, ptr null, ptr @rna_RigidBodyCon_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.150 = private unnamed_addr constant [16 x i8] c"RigidBodyObject\00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"Rigid Body Object\00", align 1
@.str.152 = private unnamed_addr constant [59 x i8] c"Settings for object participating in Rigid Body Simulation\00", align 1
@rna_RigidBodyConstraint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_type, ptr @rna_RigidBodyConstraint_rna_properties, i32 -1, ptr @.str.52, i32 8912896, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_RigidBodyConstraint_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_enabled, ptr @rna_RigidBodyConstraint_rna_type, i32 -1, ptr @.str.99, i32 1, ptr @.str.100, ptr @.str.153, i32 0, ptr @.str.51, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_type_get, ptr @RigidBodyConstraint_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_RigidBodyConstraint_type_items, i32 8, i32 0 }, align 8
@rna_RigidBodyConstraint_enabled = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_disable_collisions, ptr @rna_RigidBodyConstraint_type, i32 -1, ptr @.str.61, i32 3, ptr @.str.62, ptr @.str.154, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_enabled_get, ptr @RigidBodyConstraint_enabled_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.153 = private unnamed_addr constant [30 x i8] c"Type of Rigid Body Constraint\00", align 1
@rna_RigidBodyConstraint_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 8, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 0, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 1, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.32 }, %struct.EnumPropertyItem { i32 3, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem { i32 9, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.38 }, %struct.EnumPropertyItem { i32 5, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 6, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 11, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_RigidBodyConstraint_disable_collisions = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_object1, ptr @rna_RigidBodyConstraint_enabled, i32 -1, ptr @.str.155, i32 3, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_disable_collisions_get, ptr @RigidBodyConstraint_disable_collisions_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.154 = private unnamed_addr constant [23 x i8] c"Enable this constraint\00", align 1
@rna_RigidBodyConstraint_object1 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_object2, ptr @rna_RigidBodyConstraint_disable_collisions, i32 -1, ptr @.str.158, i32 8388609, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_object1_get, ptr @RigidBodyConstraint_object1_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.155 = private unnamed_addr constant [19 x i8] c"disable_collisions\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"Disable Collisions\00", align 1
@.str.157 = private unnamed_addr constant [52 x i8] c"Disable collisions between constrained rigid bodies\00", align 1
@rna_RigidBodyConstraint_object2 = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_breaking, ptr @rna_RigidBodyConstraint_object1, i32 -1, ptr @.str.161, i32 8388609, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.51, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_object2_get, ptr @RigidBodyConstraint_object2_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.158 = private unnamed_addr constant [8 x i8] c"object1\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"Object 1\00", align 1
@.str.160 = private unnamed_addr constant [42 x i8] c"First Rigid Body Object to be constrained\00", align 1
@rna_RigidBodyConstraint_use_breaking = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_breaking_threshold, ptr @rna_RigidBodyConstraint_object2, i32 -1, ptr @.str.164, i32 3, ptr @.str.165, ptr @.str.166, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_breaking_get, ptr @RigidBodyConstraint_use_breaking_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.161 = private unnamed_addr constant [8 x i8] c"object2\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"Object 2\00", align 1
@.str.163 = private unnamed_addr constant [43 x i8] c"Second Rigid Body Object to be constrained\00", align 1
@rna_RigidBodyConstraint_breaking_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_override_solver_iterations, ptr @rna_RigidBodyConstraint_use_breaking, i32 -1, ptr @.str.167, i32 3, ptr @.str.168, ptr @.str.169, i32 0, ptr @.str.51, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_breaking_threshold_get, ptr @RigidBodyConstraint_breaking_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+02, i32 2, float 1.000000e+01, ptr null }, align 8
@.str.164 = private unnamed_addr constant [13 x i8] c"use_breaking\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"Breakable\00", align 1
@.str.166 = private unnamed_addr constant [71 x i8] c"Constraint can be broken if it receives an impulse above the threshold\00", align 1
@rna_RigidBodyConstraint_use_override_solver_iterations = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_solver_iterations, ptr @rna_RigidBodyConstraint_breaking_threshold, i32 -1, ptr @.str.170, i32 3, ptr @.str.171, ptr @.str.172, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85721088, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_override_solver_iterations_get, ptr @RigidBodyConstraint_use_override_solver_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.167 = private unnamed_addr constant [19 x i8] c"breaking_threshold\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"Breaking Threshold\00", align 1
@.str.169 = private unnamed_addr constant [67 x i8] c"Impulse threshold that must be reached for the constraint to break\00", align 1
@rna_RigidBodyConstraint_solver_iterations = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_limit_lin_x, ptr @rna_RigidBodyConstraint_use_override_solver_iterations, i32 -1, ptr @.str.70, i32 3, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.51, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_solver_iterations_get, ptr @RigidBodyConstraint_solver_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 1000, i32 1, i32 10, ptr null }, align 8
@.str.170 = private unnamed_addr constant [31 x i8] c"use_override_solver_iterations\00", align 1
@.str.171 = private unnamed_addr constant [27 x i8] c"Override Solver Iterations\00", align 1
@.str.172 = private unnamed_addr constant [61 x i8] c"Override the number of solver iterations for this constraint\00", align 1
@rna_RigidBodyConstraint_use_limit_lin_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_limit_lin_y, ptr @rna_RigidBodyConstraint_solver_iterations, i32 -1, ptr @.str.173, i32 3, ptr @.str.174, ptr @.str.175, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_limit_lin_x_get, ptr @RigidBodyConstraint_use_limit_lin_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_RigidBodyConstraint_use_limit_lin_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_limit_lin_z, ptr @rna_RigidBodyConstraint_use_limit_lin_x, i32 -1, ptr @.str.176, i32 3, ptr @.str.177, ptr @.str.178, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_limit_lin_y_get, ptr @RigidBodyConstraint_use_limit_lin_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.173 = private unnamed_addr constant [16 x i8] c"use_limit_lin_x\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"X Axis\00", align 1
@.str.175 = private unnamed_addr constant [28 x i8] c"Limit translation on X axis\00", align 1
@rna_RigidBodyConstraint_use_limit_lin_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_limit_ang_x, ptr @rna_RigidBodyConstraint_use_limit_lin_y, i32 -1, ptr @.str.179, i32 3, ptr @.str.180, ptr @.str.181, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_limit_lin_z_get, ptr @RigidBodyConstraint_use_limit_lin_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.176 = private unnamed_addr constant [16 x i8] c"use_limit_lin_y\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"Y Axis\00", align 1
@.str.178 = private unnamed_addr constant [28 x i8] c"Limit translation on Y axis\00", align 1
@rna_RigidBodyConstraint_use_limit_ang_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_limit_ang_y, ptr @rna_RigidBodyConstraint_use_limit_lin_z, i32 -1, ptr @.str.182, i32 3, ptr @.str.183, ptr @.str.184, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_limit_ang_x_get, ptr @RigidBodyConstraint_use_limit_ang_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.179 = private unnamed_addr constant [16 x i8] c"use_limit_lin_z\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"Z Axis\00", align 1
@.str.181 = private unnamed_addr constant [28 x i8] c"Limit translation on Z axis\00", align 1
@rna_RigidBodyConstraint_use_limit_ang_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_limit_ang_z, ptr @rna_RigidBodyConstraint_use_limit_ang_x, i32 -1, ptr @.str.185, i32 3, ptr @.str.186, ptr @.str.187, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_limit_ang_y_get, ptr @RigidBodyConstraint_use_limit_ang_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.182 = private unnamed_addr constant [16 x i8] c"use_limit_ang_x\00", align 1
@.str.183 = private unnamed_addr constant [8 x i8] c"X Angle\00", align 1
@.str.184 = private unnamed_addr constant [29 x i8] c"Limit rotation around X axis\00", align 1
@rna_RigidBodyConstraint_use_limit_ang_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_spring_x, ptr @rna_RigidBodyConstraint_use_limit_ang_y, i32 -1, ptr @.str.188, i32 3, ptr @.str.189, ptr @.str.190, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_limit_ang_z_get, ptr @RigidBodyConstraint_use_limit_ang_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.185 = private unnamed_addr constant [16 x i8] c"use_limit_ang_y\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"Y Angle\00", align 1
@.str.187 = private unnamed_addr constant [29 x i8] c"Limit rotation around Y axis\00", align 1
@rna_RigidBodyConstraint_use_spring_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_spring_y, ptr @rna_RigidBodyConstraint_use_limit_ang_z, i32 -1, ptr @.str.191, i32 3, ptr @.str.192, ptr @.str.193, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_spring_x_get, ptr @RigidBodyConstraint_use_spring_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.188 = private unnamed_addr constant [16 x i8] c"use_limit_ang_z\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"Z Angle\00", align 1
@.str.190 = private unnamed_addr constant [29 x i8] c"Limit rotation around Z axis\00", align 1
@rna_RigidBodyConstraint_use_spring_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_spring_z, ptr @rna_RigidBodyConstraint_use_spring_x, i32 -1, ptr @.str.194, i32 3, ptr @.str.195, ptr @.str.196, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_spring_y_get, ptr @RigidBodyConstraint_use_spring_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.191 = private unnamed_addr constant [13 x i8] c"use_spring_x\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"X Spring\00", align 1
@.str.193 = private unnamed_addr constant [24 x i8] c"Enable spring on X axis\00", align 1
@rna_RigidBodyConstraint_use_spring_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_motor_lin, ptr @rna_RigidBodyConstraint_use_spring_y, i32 -1, ptr @.str.197, i32 3, ptr @.str.198, ptr @.str.199, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_spring_z_get, ptr @RigidBodyConstraint_use_spring_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.194 = private unnamed_addr constant [13 x i8] c"use_spring_y\00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"Y Spring\00", align 1
@.str.196 = private unnamed_addr constant [24 x i8] c"Enable spring on Y axis\00", align 1
@rna_RigidBodyConstraint_use_motor_lin = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_use_motor_ang, ptr @rna_RigidBodyConstraint_use_spring_z, i32 -1, ptr @.str.200, i32 3, ptr @.str.201, ptr @.str.202, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_motor_lin_get, ptr @RigidBodyConstraint_use_motor_lin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.197 = private unnamed_addr constant [13 x i8] c"use_spring_z\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"Z Spring\00", align 1
@.str.199 = private unnamed_addr constant [24 x i8] c"Enable spring on Z axis\00", align 1
@rna_RigidBodyConstraint_use_motor_ang = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_lin_x_lower, ptr @rna_RigidBodyConstraint_use_motor_lin, i32 -1, ptr @.str.203, i32 3, ptr @.str.204, ptr @.str.205, i32 0, ptr @.str.51, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_use_motor_ang_get, ptr @RigidBodyConstraint_use_motor_ang_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.200 = private unnamed_addr constant [14 x i8] c"use_motor_lin\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"Linear Motor\00", align 1
@.str.202 = private unnamed_addr constant [20 x i8] c"Enable linear motor\00", align 1
@rna_RigidBodyConstraint_limit_lin_x_lower = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_lin_x_upper, ptr @rna_RigidBodyConstraint_use_motor_ang, i32 -1, ptr @.str.206, i32 8195, ptr @.str.207, ptr @.str.208, i32 0, ptr @.str.51, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_lin_x_lower_get, ptr @RigidBodyConstraint_limit_lin_x_lower_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float -1.000000e+00, ptr null }, align 8
@.str.203 = private unnamed_addr constant [14 x i8] c"use_motor_ang\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"Angular Motor\00", align 1
@.str.205 = private unnamed_addr constant [21 x i8] c"Enable angular motor\00", align 1
@rna_RigidBodyConstraint_limit_lin_x_upper = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_lin_y_lower, ptr @rna_RigidBodyConstraint_limit_lin_x_lower, i32 -1, ptr @.str.209, i32 8195, ptr @.str.210, ptr @.str.211, i32 0, ptr @.str.51, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_lin_x_upper_get, ptr @RigidBodyConstraint_limit_lin_x_upper_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.206 = private unnamed_addr constant [18 x i8] c"limit_lin_x_lower\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"Lower X Limit\00", align 1
@.str.208 = private unnamed_addr constant [34 x i8] c"Lower limit of X axis translation\00", align 1
@rna_RigidBodyConstraint_limit_lin_y_lower = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_lin_y_upper, ptr @rna_RigidBodyConstraint_limit_lin_x_upper, i32 -1, ptr @.str.212, i32 8195, ptr @.str.213, ptr @.str.214, i32 0, ptr @.str.51, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_lin_y_lower_get, ptr @RigidBodyConstraint_limit_lin_y_lower_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float -1.000000e+00, ptr null }, align 8
@.str.209 = private unnamed_addr constant [18 x i8] c"limit_lin_x_upper\00", align 1
@.str.210 = private unnamed_addr constant [14 x i8] c"Upper X Limit\00", align 1
@.str.211 = private unnamed_addr constant [34 x i8] c"Upper limit of X axis translation\00", align 1
@rna_RigidBodyConstraint_limit_lin_y_upper = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_lin_z_lower, ptr @rna_RigidBodyConstraint_limit_lin_y_lower, i32 -1, ptr @.str.215, i32 8195, ptr @.str.216, ptr @.str.217, i32 0, ptr @.str.51, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 44, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_lin_y_upper_get, ptr @RigidBodyConstraint_limit_lin_y_upper_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.212 = private unnamed_addr constant [18 x i8] c"limit_lin_y_lower\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"Lower Y Limit\00", align 1
@.str.214 = private unnamed_addr constant [34 x i8] c"Lower limit of Y axis translation\00", align 1
@rna_RigidBodyConstraint_limit_lin_z_lower = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_lin_z_upper, ptr @rna_RigidBodyConstraint_limit_lin_y_upper, i32 -1, ptr @.str.218, i32 8195, ptr @.str.219, ptr @.str.220, i32 0, ptr @.str.51, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 48, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_lin_z_lower_get, ptr @RigidBodyConstraint_limit_lin_z_lower_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float -1.000000e+00, ptr null }, align 8
@.str.215 = private unnamed_addr constant [18 x i8] c"limit_lin_y_upper\00", align 1
@.str.216 = private unnamed_addr constant [14 x i8] c"Upper Y Limit\00", align 1
@.str.217 = private unnamed_addr constant [34 x i8] c"Upper limit of Y axis translation\00", align 1
@rna_RigidBodyConstraint_limit_lin_z_upper = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_ang_x_lower, ptr @rna_RigidBodyConstraint_limit_lin_z_lower, i32 -1, ptr @.str.221, i32 8195, ptr @.str.222, ptr @.str.223, i32 0, ptr @.str.51, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_lin_z_upper_get, ptr @RigidBodyConstraint_limit_lin_z_upper_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.218 = private unnamed_addr constant [18 x i8] c"limit_lin_z_lower\00", align 1
@.str.219 = private unnamed_addr constant [14 x i8] c"Lower Z Limit\00", align 1
@.str.220 = private unnamed_addr constant [34 x i8] c"Lower limit of Z axis translation\00", align 1
@rna_RigidBodyConstraint_limit_ang_x_lower = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_ang_x_upper, ptr @rna_RigidBodyConstraint_limit_lin_z_upper, i32 -1, ptr @.str.224, i32 8195, ptr @.str.225, ptr @.str.226, i32 0, ptr @.str.51, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_ang_x_lower_get, ptr @RigidBodyConstraint_limit_ang_x_lower_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0xBFE921FB60000000, ptr null }, align 8
@.str.221 = private unnamed_addr constant [18 x i8] c"limit_lin_z_upper\00", align 1
@.str.222 = private unnamed_addr constant [14 x i8] c"Upper Z Limit\00", align 1
@.str.223 = private unnamed_addr constant [34 x i8] c"Upper limit of Z axis translation\00", align 1
@rna_RigidBodyConstraint_limit_ang_x_upper = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_ang_y_lower, ptr @rna_RigidBodyConstraint_limit_ang_x_lower, i32 -1, ptr @.str.227, i32 8195, ptr @.str.228, ptr @.str.229, i32 0, ptr @.str.51, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_ang_x_upper_get, ptr @RigidBodyConstraint_limit_ang_x_upper_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0x3FE921FB60000000, ptr null }, align 8
@.str.224 = private unnamed_addr constant [18 x i8] c"limit_ang_x_lower\00", align 1
@.str.225 = private unnamed_addr constant [20 x i8] c"Lower X Angle Limit\00", align 1
@.str.226 = private unnamed_addr constant [31 x i8] c"Lower limit of X axis rotation\00", align 1
@rna_RigidBodyConstraint_limit_ang_y_lower = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_ang_y_upper, ptr @rna_RigidBodyConstraint_limit_ang_x_upper, i32 -1, ptr @.str.230, i32 8195, ptr @.str.231, ptr @.str.232, i32 0, ptr @.str.51, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 64, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_ang_y_lower_get, ptr @RigidBodyConstraint_limit_ang_y_lower_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0xBFE921FB60000000, ptr null }, align 8
@.str.227 = private unnamed_addr constant [18 x i8] c"limit_ang_x_upper\00", align 1
@.str.228 = private unnamed_addr constant [20 x i8] c"Upper X Angle Limit\00", align 1
@.str.229 = private unnamed_addr constant [31 x i8] c"Upper limit of X axis rotation\00", align 1
@rna_RigidBodyConstraint_limit_ang_y_upper = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_ang_z_lower, ptr @rna_RigidBodyConstraint_limit_ang_y_lower, i32 -1, ptr @.str.233, i32 8195, ptr @.str.234, ptr @.str.235, i32 0, ptr @.str.51, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 68, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_ang_y_upper_get, ptr @RigidBodyConstraint_limit_ang_y_upper_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0x3FE921FB60000000, ptr null }, align 8
@.str.230 = private unnamed_addr constant [18 x i8] c"limit_ang_y_lower\00", align 1
@.str.231 = private unnamed_addr constant [20 x i8] c"Lower Y Angle Limit\00", align 1
@.str.232 = private unnamed_addr constant [31 x i8] c"Lower limit of Y axis rotation\00", align 1
@rna_RigidBodyConstraint_limit_ang_z_lower = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_limit_ang_z_upper, ptr @rna_RigidBodyConstraint_limit_ang_y_upper, i32 -1, ptr @.str.236, i32 8195, ptr @.str.237, ptr @.str.238, i32 0, ptr @.str.51, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 72, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_ang_z_lower_get, ptr @RigidBodyConstraint_limit_ang_z_lower_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0xBFE921FB60000000, ptr null }, align 8
@.str.233 = private unnamed_addr constant [18 x i8] c"limit_ang_y_upper\00", align 1
@.str.234 = private unnamed_addr constant [20 x i8] c"Upper Y Angle Limit\00", align 1
@.str.235 = private unnamed_addr constant [31 x i8] c"Upper limit of Y axis rotation\00", align 1
@rna_RigidBodyConstraint_limit_ang_z_upper = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_spring_stiffness_x, ptr @rna_RigidBodyConstraint_limit_ang_z_lower, i32 -1, ptr @.str.239, i32 8195, ptr @.str.240, ptr @.str.241, i32 0, ptr @.str.51, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 85393408, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @RigidBodyConstraint_limit_ang_z_upper_get, ptr @RigidBodyConstraint_limit_ang_z_upper_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0x3FE921FB60000000, ptr null }, align 8
@.str.236 = private unnamed_addr constant [18 x i8] c"limit_ang_z_lower\00", align 1
@.str.237 = private unnamed_addr constant [20 x i8] c"Lower Z Angle Limit\00", align 1
@.str.238 = private unnamed_addr constant [31 x i8] c"Lower limit of Z axis rotation\00", align 1
@rna_RigidBodyConstraint_spring_stiffness_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_spring_stiffness_y, ptr @rna_RigidBodyConstraint_limit_ang_z_upper, i32 -1, ptr @.str.242, i32 3, ptr @.str.243, ptr @.str.244, i32 0, ptr @.str.51, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_spring_stiffness_x_get, ptr @RigidBodyConstraint_spring_stiffness_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 1.000000e+01, ptr null }, align 8
@.str.239 = private unnamed_addr constant [18 x i8] c"limit_ang_z_upper\00", align 1
@.str.240 = private unnamed_addr constant [20 x i8] c"Upper Z Angle Limit\00", align 1
@.str.241 = private unnamed_addr constant [31 x i8] c"Upper limit of Z axis rotation\00", align 1
@rna_RigidBodyConstraint_spring_stiffness_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_spring_stiffness_z, ptr @rna_RigidBodyConstraint_spring_stiffness_x, i32 -1, ptr @.str.245, i32 3, ptr @.str.246, ptr @.str.247, i32 0, ptr @.str.51, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_spring_stiffness_y_get, ptr @RigidBodyConstraint_spring_stiffness_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 1.000000e+01, ptr null }, align 8
@.str.242 = private unnamed_addr constant [19 x i8] c"spring_stiffness_x\00", align 1
@.str.243 = private unnamed_addr constant [17 x i8] c"X Axis Stiffness\00", align 1
@.str.244 = private unnamed_addr constant [24 x i8] c"Stiffness on the X axis\00", align 1
@rna_RigidBodyConstraint_spring_stiffness_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_spring_damping_x, ptr @rna_RigidBodyConstraint_spring_stiffness_y, i32 -1, ptr @.str.248, i32 3, ptr @.str.249, ptr @.str.250, i32 0, ptr @.str.51, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_spring_stiffness_z_get, ptr @RigidBodyConstraint_spring_stiffness_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 1.000000e+01, ptr null }, align 8
@.str.245 = private unnamed_addr constant [19 x i8] c"spring_stiffness_y\00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"Y Axis Stiffness\00", align 1
@.str.247 = private unnamed_addr constant [24 x i8] c"Stiffness on the Y axis\00", align 1
@rna_RigidBodyConstraint_spring_damping_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_spring_damping_y, ptr @rna_RigidBodyConstraint_spring_stiffness_z, i32 -1, ptr @.str.251, i32 3, ptr @.str.252, ptr @.str.253, i32 0, ptr @.str.51, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_spring_damping_x_get, ptr @RigidBodyConstraint_spring_damping_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 5.000000e-01, ptr null }, align 8
@.str.248 = private unnamed_addr constant [19 x i8] c"spring_stiffness_z\00", align 1
@.str.249 = private unnamed_addr constant [17 x i8] c"Z Axis Stiffness\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"Stiffness on the Z axis\00", align 1
@rna_RigidBodyConstraint_spring_damping_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_spring_damping_z, ptr @rna_RigidBodyConstraint_spring_damping_x, i32 -1, ptr @.str.254, i32 3, ptr @.str.255, ptr @.str.256, i32 0, ptr @.str.51, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_spring_damping_y_get, ptr @RigidBodyConstraint_spring_damping_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 5.000000e-01, ptr null }, align 8
@.str.251 = private unnamed_addr constant [17 x i8] c"spring_damping_x\00", align 1
@.str.252 = private unnamed_addr constant [10 x i8] c"Damping X\00", align 1
@.str.253 = private unnamed_addr constant [22 x i8] c"Damping on the X axis\00", align 1
@rna_RigidBodyConstraint_spring_damping_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_motor_lin_target_velocity, ptr @rna_RigidBodyConstraint_spring_damping_y, i32 -1, ptr @.str.257, i32 3, ptr @.str.258, ptr @.str.259, i32 0, ptr @.str.51, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_spring_damping_z_get, ptr @RigidBodyConstraint_spring_damping_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 5.000000e-01, ptr null }, align 8
@.str.254 = private unnamed_addr constant [17 x i8] c"spring_damping_y\00", align 1
@.str.255 = private unnamed_addr constant [10 x i8] c"Damping Y\00", align 1
@.str.256 = private unnamed_addr constant [22 x i8] c"Damping on the Y axis\00", align 1
@rna_RigidBodyConstraint_motor_lin_target_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_motor_lin_max_impulse, ptr @rna_RigidBodyConstraint_spring_damping_z, i32 -1, ptr @.str.260, i32 3, ptr @.str.261, ptr @.str.262, i32 0, ptr @.str.51, i32 2, i32 458752, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_motor_lin_target_velocity_get, ptr @RigidBodyConstraint_motor_lin_target_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.257 = private unnamed_addr constant [17 x i8] c"spring_damping_z\00", align 1
@.str.258 = private unnamed_addr constant [10 x i8] c"Damping Z\00", align 1
@.str.259 = private unnamed_addr constant [22 x i8] c"Damping on the Z axis\00", align 1
@rna_RigidBodyConstraint_motor_lin_max_impulse = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_motor_ang_target_velocity, ptr @rna_RigidBodyConstraint_motor_lin_target_velocity, i32 -1, ptr @.str.263, i32 3, ptr @.str.264, ptr @.str.265, i32 0, ptr @.str.51, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_motor_lin_max_impulse_get, ptr @RigidBodyConstraint_motor_lin_max_impulse_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.260 = private unnamed_addr constant [26 x i8] c"motor_lin_target_velocity\00", align 1
@.str.261 = private unnamed_addr constant [16 x i8] c"Target Velocity\00", align 1
@.str.262 = private unnamed_addr constant [29 x i8] c"Target linear motor velocity\00", align 1
@rna_RigidBodyConstraint_motor_ang_target_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyConstraint_motor_ang_max_impulse, ptr @rna_RigidBodyConstraint_motor_lin_max_impulse, i32 -1, ptr @.str.266, i32 3, ptr @.str.261, ptr @.str.267, i32 0, ptr @.str.51, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_motor_ang_target_velocity_get, ptr @RigidBodyConstraint_motor_ang_target_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.263 = private unnamed_addr constant [22 x i8] c"motor_lin_max_impulse\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"Max Impulse\00", align 1
@.str.265 = private unnamed_addr constant [29 x i8] c"Maximum linear motor impulse\00", align 1
@rna_RigidBodyConstraint_motor_ang_max_impulse = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_RigidBodyConstraint_motor_ang_target_velocity, i32 -1, ptr @.str.268, i32 3, ptr @.str.264, ptr @.str.269, i32 0, ptr @.str.51, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_RigidBodyOb_reset, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyConstraint_motor_ang_max_impulse_get, ptr @RigidBodyConstraint_motor_ang_max_impulse_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.266 = private unnamed_addr constant [26 x i8] c"motor_ang_target_velocity\00", align 1
@.str.267 = private unnamed_addr constant [30 x i8] c"Target angular motor velocity\00", align 1
@.str.268 = private unnamed_addr constant [22 x i8] c"motor_ang_max_impulse\00", align 1
@.str.269 = private unnamed_addr constant [30 x i8] c"Maximum angular motor impulse\00", align 1
@RNA_Scene = external global %struct.StructRNA, align 8
@.str.270 = private unnamed_addr constant [20 x i8] c"RigidBodyConstraint\00", align 1
@.str.271 = private unnamed_addr constant [22 x i8] c"Rigid Body Constraint\00", align 1
@.str.272 = private unnamed_addr constant [60 x i8] c"Constraint influencing Objects inside Rigid Body Simulation\00", align 1
@.str.273 = private unnamed_addr constant [16 x i8] c"rigidbody_world\00", align 1
@.str.274 = private unnamed_addr constant [5 x i8] c"BASE\00", align 1
@.str.275 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@.str.276 = private unnamed_addr constant [10 x i8] c"Base mesh\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"DEFORM\00", align 1
@.str.278 = private unnamed_addr constant [7 x i8] c"Deform\00", align 1
@.str.279 = private unnamed_addr constant [44 x i8] c"Deformations (shape keys, deform modifiers)\00", align 1
@.str.280 = private unnamed_addr constant [6 x i8] c"FINAL\00", align 1
@.str.281 = private unnamed_addr constant [6 x i8] c"Final\00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"All modifiers\00", align 1
@.str.283 = private unnamed_addr constant [11 x i8] c"rigid_body\00", align 1
@.str.284 = private unnamed_addr constant [22 x i8] c"rigid_body_constraint\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_RigidBodyWorld_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @RigidBodyWorld_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @RigidBodyWorld_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !45 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @RigidBodyWorld_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #12
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RigidBodyWorld_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #12
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #12
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 1
  store ptr %7, ptr %13, align 8, !tbaa !47
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_constraints_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_constraints_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #12
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 3
  store ptr %7, ptr %13, align 8, !tbaa !53
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyWorld_enabled_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyWorld, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyWorld_enabled_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyWorld_time_scale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyWorld, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !55
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyWorld_time_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyWorld_steps_per_second_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyWorld, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 4, !tbaa !56
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyWorld_steps_per_second_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 9
  store i16 %7, ptr %8, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyWorld_solver_iterations_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyWorld, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !57
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyWorld_solver_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyWorld_num_solver_iterations_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyWorld_num_solver_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !58 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 2, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyWorld_use_split_impulse_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyWorld, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyWorld_use_split_impulse_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyWorld_split_impulse_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyWorld_split_impulse_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !59 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_point_cache_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyWorld, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PointCache, ptr noundef %6) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyWorld_effector_weights_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_EffectorWeights, ptr noundef %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyObject_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_RigidBodyObject_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @RigidBodyObject_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @RigidBodyObject_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !62 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyObject_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @RigidBodyObject_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyObject_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RigidBodyObject_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyObject_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyObject_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !63
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyOb_type_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !65 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 2
  store i16 %5, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !66
  %9 = or i32 %8, 2
  store i32 %9, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyObject_mesh_source_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 4, !tbaa !67
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_mesh_source_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 6
  store i16 %5, ptr %6, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyObject_enabled_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_enabled_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyOb_disabled_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_disabled_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 32, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyObject_collision_shape_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !69
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_collision_shape_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyOb_shape_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_shape_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 2, !tbaa !69
  %7 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !66
  %9 = or i32 %8, 2
  store i32 %9, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyObject_kinematic_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_kinematic_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyOb_kinematic_state_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_kinematic_state_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyObject_use_deform_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_use_deform_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyObject_mass_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !72
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_mass_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyOb_mass_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_mass_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !73 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 8
  store float %1, ptr %5, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyObject_use_deactivation_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_use_deactivation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyOb_activation_state_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_activation_state_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyObject_use_start_deactivated_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_use_start_deactivated_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyObject_deactivate_linear_velocity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !75
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_deactivate_linear_velocity_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyOb_linear_sleepThresh_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_linear_sleepThresh_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 14
  store float %1, ptr %5, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyObject_deactivate_angular_velocity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !77
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_deactivate_angular_velocity_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyOb_angular_sleepThresh_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_angular_sleepThresh_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 15
  store float %1, ptr %5, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyObject_linear_damping_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !79
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_linear_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyOb_linear_damping_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_linear_damping_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 12
  store float %1, ptr %5, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyObject_angular_damping_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !81
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_angular_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyOb_angular_damping_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_angular_damping_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 13
  store float %1, ptr %5, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyObject_friction_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_friction_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyOb_friction_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_friction_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 9
  store float %1, ptr %5, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyObject_restitution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 8, !tbaa !85
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_restitution_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyOb_restitution_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_restitution_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !86 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 10
  store float %1, ptr %5, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyObject_use_margin_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_use_margin_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyObject_collision_margin_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyOb, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !87
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_collision_margin_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyOb_collision_margin_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_collision_margin_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !88 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 11
  store float %1, ptr %5, align 4, !tbaa !87
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_collision_groups_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 5
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !89
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !90
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 20
  br i1 %14, label %15, label %6, !llvm.loop !91

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyObject_collision_groups_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_RigidBodyOb_collision_groups_set(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyOb_collision_groups_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !93 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !89
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %6, %2 ], [ %18, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %19, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !90
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 1, %13
  %15 = or i32 %8, %14
  %16 = xor i32 %14, -1
  %17 = and i32 %8, %16
  %18 = select i1 %12, i32 %17, i32 %15
  store i32 %18, ptr %5, align 8, !tbaa !89
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, 20
  br i1 %20, label %21, label %7, !llvm.loop !94

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.RigidBodyOb, ptr %4, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !66
  %24 = or i32 %23, 2
  store i32 %24, ptr %22, align 4, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyConstraint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_RigidBodyConstraint_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @RigidBodyConstraint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @RigidBodyConstraint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !95 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyConstraint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @RigidBodyConstraint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyConstraint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RigidBodyConstraint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyConstraint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !96
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyCon_type_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !98 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 2
  store i16 %5, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !99
  %9 = or i32 %8, 2
  store i32 %9, ptr %7, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_enabled_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_enabled_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyCon_enabled_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_enabled_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_disable_collisions_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_disable_collisions_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyCon_disable_collisions_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_disable_collisions_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !101 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -7
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  %11 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %12 = or disjoint i32 %10, 2
  store i32 %12, ptr %11, align 4, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyConstraint_object1_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyConstraint_object1_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #12
  br label %9

9:                                                ; preds = %8, %2
  store ptr %6, ptr %4, align 8, !tbaa !102
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyConstraint_object2_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyConstraint_object2_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #12
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 1
  store ptr %6, ptr %10, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_breaking_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_breaking_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyCon_use_breaking_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_use_breaking_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !104 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_breaking_threshold_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !105
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_breaking_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_breaking_threshold_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_breaking_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !106 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 5
  store float %1, ptr %5, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_override_solver_iterations_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_override_solver_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyCon_override_solver_iterations_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_override_solver_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !107 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_solver_iterations_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !108
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_solver_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_num_solver_iterations_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_num_solver_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 2, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_limit_lin_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_limit_lin_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_limit_lin_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_limit_lin_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_limit_lin_z_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_limit_lin_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_limit_ang_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_limit_ang_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_limit_ang_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_limit_ang_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_limit_ang_z_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_limit_ang_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_spring_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_spring_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_spring_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_spring_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_spring_z_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_spring_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_motor_lin_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_motor_lin_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyCon_use_motor_lin_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_use_motor_lin_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !110 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 0, i32 16384
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyConstraint_use_motor_ang_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_use_motor_ang_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  tail call fastcc void @rna_RigidBodyCon_use_motor_ang_set(ptr noundef %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_use_motor_ang_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !111 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 0, i32 32768
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_lin_x_lower_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !112
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_lin_x_lower_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 7
  store float %1, ptr %5, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_lin_x_upper_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !113
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_lin_x_upper_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 8
  store float %1, ptr %5, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_lin_y_lower_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !114
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_lin_y_lower_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 9
  store float %1, ptr %5, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_lin_y_upper_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !115
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_lin_y_upper_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 10
  store float %1, ptr %5, align 4, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_lin_z_lower_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 8, !tbaa !116
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_lin_z_lower_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 11
  store float %1, ptr %5, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_lin_z_upper_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !117
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_lin_z_upper_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 12
  store float %1, ptr %5, align 4, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_ang_x_lower_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !118
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_ang_x_lower_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0xC01921FB60000000
  %6 = fcmp ogt float %1, 0x401921FB60000000
  %7 = select i1 %6, float 0x401921FB60000000, float %1
  %8 = select i1 %5, float 0xC01921FB60000000, float %7
  %9 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_ang_x_upper_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !119
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_ang_x_upper_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0xC01921FB60000000
  %6 = fcmp ogt float %1, 0x401921FB60000000
  %7 = select i1 %6, float 0x401921FB60000000, float %1
  %8 = select i1 %5, float 0xC01921FB60000000, float %7
  %9 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 4, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_ang_y_lower_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 8, !tbaa !120
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_ang_y_lower_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0xC01921FB60000000
  %6 = fcmp ogt float %1, 0x401921FB60000000
  %7 = select i1 %6, float 0x401921FB60000000, float %1
  %8 = select i1 %5, float 0xC01921FB60000000, float %7
  %9 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_ang_y_upper_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 4, !tbaa !121
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_ang_y_upper_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0xC01921FB60000000
  %6 = fcmp ogt float %1, 0x401921FB60000000
  %7 = select i1 %6, float 0x401921FB60000000, float %1
  %8 = select i1 %5, float 0xC01921FB60000000, float %7
  %9 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_ang_z_lower_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !122
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_ang_z_lower_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0xC01921FB60000000
  %6 = fcmp ogt float %1, 0x401921FB60000000
  %7 = select i1 %6, float 0x401921FB60000000, float %1
  %8 = select i1 %5, float 0xC01921FB60000000, float %7
  %9 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_limit_ang_z_upper_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !123
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_limit_ang_z_upper_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0xC01921FB60000000
  %6 = fcmp ogt float %1, 0x401921FB60000000
  %7 = select i1 %6, float 0x401921FB60000000, float %1
  %8 = select i1 %5, float 0xC01921FB60000000, float %7
  %9 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_spring_stiffness_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 19
  %5 = load float, ptr %4, align 8, !tbaa !124
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_spring_stiffness_x_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_spring_stiffness_x_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_spring_stiffness_x_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 19
  store float %1, ptr %5, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_spring_stiffness_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 20
  %5 = load float, ptr %4, align 4, !tbaa !126
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_spring_stiffness_y_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_spring_stiffness_y_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_spring_stiffness_y_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !127 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 20
  store float %1, ptr %5, align 4, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_spring_stiffness_z_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 21
  %5 = load float, ptr %4, align 8, !tbaa !128
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_spring_stiffness_z_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_spring_stiffness_z_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_spring_stiffness_z_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 21
  store float %1, ptr %5, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_spring_damping_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 22
  %5 = load float, ptr %4, align 4, !tbaa !130
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_spring_damping_x_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_spring_damping_x_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_spring_damping_x_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 22
  store float %1, ptr %5, align 4, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_spring_damping_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 23
  %5 = load float, ptr %4, align 8, !tbaa !132
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_spring_damping_y_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_spring_damping_y_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_spring_damping_y_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !133 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 23
  store float %1, ptr %5, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_spring_damping_z_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 24
  %5 = load float, ptr %4, align 4, !tbaa !134
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_spring_damping_z_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_spring_damping_z_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_spring_damping_z_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !135 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 24
  store float %1, ptr %5, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_motor_lin_target_velocity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 25
  %5 = load float, ptr %4, align 8, !tbaa !136
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_motor_lin_target_velocity_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_motor_lin_target_velocity_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_motor_lin_target_velocity_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 25
  store float %1, ptr %5, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_motor_lin_max_impulse_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 27
  %5 = load float, ptr %4, align 8, !tbaa !138
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_motor_lin_max_impulse_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_motor_lin_max_impulse_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_motor_lin_max_impulse_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !139 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 27
  store float %1, ptr %5, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_motor_ang_target_velocity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 4, !tbaa !140
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_motor_ang_target_velocity_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_motor_ang_target_velocity_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_motor_ang_target_velocity_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !141 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 26
  store float %1, ptr %5, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyConstraint_motor_ang_max_impulse_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.RigidBodyCon, ptr %3, i64 0, i32 28
  %5 = load float, ptr %4, align 4, !tbaa !142
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyConstraint_motor_ang_max_impulse_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  tail call fastcc void @rna_RigidBodyCon_motor_ang_max_impulse_set(ptr noundef %0, float noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_RigidBodyCon_motor_ang_max_impulse_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !143 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.RigidBodyCon, ptr %4, i64 0, i32 28
  store float %1, ptr %5, align 4, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @RigidBodyWorld_convex_sweep_test(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readnone %6, ptr nocapture noundef readnone %7, ptr nocapture noundef readnone %8) local_unnamed_addr #10 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @RigidBodyWorld_convex_sweep_test_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readonly %2, ptr nocapture readonly %3) #10 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_RigidBodyWorld_reset(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !144 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_rigidbody_cache_reset(ptr noundef %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_RigidBodyWorld_path(ptr nocapture readnone %0) #0 !PGOFuncName !145 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.273) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_RigidBodyOb_reset(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !146 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 47
  %5 = load ptr, ptr %4, align 8, !tbaa !147
  tail call void @BKE_rigidbody_cache_reset(ptr noundef %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_RigidBodyOb_shape_update(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !168 {
  %4 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @rna_RigidBodyOb_reset(ptr poison, ptr noundef %1, ptr nonnull poison) #14
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_RigidBodyOb_shape_reset(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !169 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 47
  %5 = load ptr, ptr %4, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  tail call void @BKE_rigidbody_cache_reset(ptr noundef %5) #12
  %8 = getelementptr inbounds %struct.RigidBodyOb, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.RigidBodyOb, ptr %7, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !66
  %14 = or i32 %13, 4
  store i32 %14, ptr %12, align 4, !tbaa !66
  br label %15

15:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_RigidBodyOb_path(ptr nocapture readnone %0) #0 !PGOFuncName !171 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.283) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_RigidBodyCon_path(ptr nocapture readnone %0) #0 !PGOFuncName !172 {
  %2 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.284) #12
  ret ptr %2
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_rigidbody_cache_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { optsize }

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
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 48}
!40 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !36, i64 48, !37, i64 56, !43, i64 96, !43, i64 100, !41, i64 104, !43, i64 128}
!41 = !{!"PointerRNA", !42, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"", !36, i64 0}
!43 = !{!"int", !37, i64 0}
!44 = !{!40, !43, i64 128}
!45 = !{!"rna_rigidbody_gen.c:RigidBodyWorld_rna_properties_get"}
!46 = !{!41, !36, i64 16}
!47 = !{!48, !36, i64 8}
!48 = !{!"RigidBodyWorld", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !43, i64 32, !49, i64 36, !36, i64 40, !50, i64 48, !43, i64 64, !51, i64 68, !51, i64 70, !43, i64 72, !49, i64 76, !36, i64 80}
!49 = !{!"float", !37, i64 0}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!"short", !37, i64 0}
!52 = !{!41, !36, i64 0}
!53 = !{!48, !36, i64 24}
!54 = !{!48, !43, i64 72}
!55 = !{!48, !49, i64 76}
!56 = !{!48, !51, i64 68}
!57 = !{!48, !51, i64 70}
!58 = !{!"rna_rigidbody_gen.c:rna_RigidBodyWorld_num_solver_iterations_set"}
!59 = !{!"rna_rigidbody_gen.c:rna_RigidBodyWorld_split_impulse_set"}
!60 = !{!48, !36, i64 40}
!61 = !{!48, !36, i64 0}
!62 = !{!"rna_rigidbody_gen.c:RigidBodyObject_rna_properties_get"}
!63 = !{!64, !51, i64 16}
!64 = !{!"RigidBodyOb", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 18, !43, i64 20, !43, i64 24, !51, i64 28, !51, i64 30, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !37, i64 64, !37, i64 80, !49, i64 92}
!65 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_type_set"}
!66 = !{!64, !43, i64 20}
!67 = !{!64, !51, i64 28}
!68 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_disabled_set"}
!69 = !{!64, !51, i64 18}
!70 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_shape_set"}
!71 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_kinematic_state_set"}
!72 = !{!64, !49, i64 32}
!73 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_mass_set"}
!74 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_activation_state_set"}
!75 = !{!64, !49, i64 56}
!76 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_linear_sleepThresh_set"}
!77 = !{!64, !49, i64 60}
!78 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_angular_sleepThresh_set"}
!79 = !{!64, !49, i64 48}
!80 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_linear_damping_set"}
!81 = !{!64, !49, i64 52}
!82 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_angular_damping_set"}
!83 = !{!64, !49, i64 36}
!84 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_friction_set"}
!85 = !{!64, !49, i64 40}
!86 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_restitution_set"}
!87 = !{!64, !49, i64 44}
!88 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_collision_margin_set"}
!89 = !{!64, !43, i64 24}
!90 = !{!43, !43, i64 0}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_collision_groups_set"}
!94 = distinct !{!94, !92}
!95 = !{!"rna_rigidbody_gen.c:RigidBodyConstraint_rna_properties_get"}
!96 = !{!97, !51, i64 16}
!97 = !{!"RigidBodyCon", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 18, !43, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !49, i64 64, !49, i64 68, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84, !49, i64 88, !49, i64 92, !49, i64 96, !49, i64 100, !49, i64 104, !49, i64 108, !49, i64 112, !49, i64 116, !36, i64 120}
!98 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_type_set"}
!99 = !{!97, !43, i64 20}
!100 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_enabled_set"}
!101 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_disable_collisions_set"}
!102 = !{!97, !36, i64 0}
!103 = !{!97, !36, i64 8}
!104 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_use_breaking_set"}
!105 = !{!97, !49, i64 24}
!106 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_breaking_threshold_set"}
!107 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_override_solver_iterations_set"}
!108 = !{!97, !51, i64 18}
!109 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_num_solver_iterations_set"}
!110 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_use_motor_lin_set"}
!111 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_use_motor_ang_set"}
!112 = !{!97, !49, i64 32}
!113 = !{!97, !49, i64 36}
!114 = !{!97, !49, i64 40}
!115 = !{!97, !49, i64 44}
!116 = !{!97, !49, i64 48}
!117 = !{!97, !49, i64 52}
!118 = !{!97, !49, i64 56}
!119 = !{!97, !49, i64 60}
!120 = !{!97, !49, i64 64}
!121 = !{!97, !49, i64 68}
!122 = !{!97, !49, i64 72}
!123 = !{!97, !49, i64 76}
!124 = !{!97, !49, i64 80}
!125 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_spring_stiffness_x_set"}
!126 = !{!97, !49, i64 84}
!127 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_spring_stiffness_y_set"}
!128 = !{!97, !49, i64 88}
!129 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_spring_stiffness_z_set"}
!130 = !{!97, !49, i64 92}
!131 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_spring_damping_x_set"}
!132 = !{!97, !49, i64 96}
!133 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_spring_damping_y_set"}
!134 = !{!97, !49, i64 100}
!135 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_spring_damping_z_set"}
!136 = !{!97, !49, i64 104}
!137 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_motor_lin_target_velocity_set"}
!138 = !{!97, !49, i64 112}
!139 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_motor_lin_max_impulse_set"}
!140 = !{!97, !49, i64 108}
!141 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_motor_ang_target_velocity_set"}
!142 = !{!97, !49, i64 116}
!143 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_motor_ang_max_impulse_set"}
!144 = !{!"rna_rigidbody_gen.c:rna_RigidBodyWorld_reset"}
!145 = !{!"rna_rigidbody_gen.c:rna_RigidBodyWorld_path"}
!146 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_reset"}
!147 = !{!148, !36, i64 4952}
!148 = !{!"Scene", !149, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !50, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !51, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !150, i64 280, !159, i64 4264, !50, i64 4296, !50, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !51, i64 4376, !51, i64 4378, !43, i64 4380, !50, i64 4384, !160, i64 4400, !161, i64 4416, !164, i64 4600, !36, i64 4608, !165, i64 4616, !36, i64 4640, !166, i64 4648, !166, i64 4656, !152, i64 4664, !153, i64 4824, !167, i64 4888, !36, i64 4952}
!149 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !51, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!150 = !{!"RenderData", !151, i64 0, !36, i64 248, !36, i64 256, !154, i64 264, !155, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !49, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !51, i64 432, !51, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !51, i64 456, !51, i64 458, !51, i64 460, !51, i64 462, !51, i64 464, !51, i64 466, !43, i64 468, !51, i64 472, !51, i64 474, !51, i64 476, !51, i64 478, !51, i64 480, !51, i64 482, !43, i64 484, !43, i64 488, !51, i64 492, !51, i64 494, !43, i64 496, !43, i64 500, !51, i64 504, !51, i64 506, !51, i64 508, !51, i64 510, !51, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !51, i64 528, !51, i64 530, !51, i64 532, !51, i64 534, !51, i64 536, !51, i64 538, !51, i64 540, !51, i64 542, !156, i64 544, !156, i64 560, !157, i64 576, !50, i64 592, !51, i64 608, !51, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !43, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !51, i64 648, !51, i64 650, !51, i64 652, !51, i64 654, !51, i64 656, !51, i64 658, !49, i64 660, !49, i64 664, !51, i64 668, !51, i64 670, !49, i64 672, !49, i64 676, !37, i64 680, !43, i64 1704, !51, i64 1708, !51, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !51, i64 2524, !51, i64 2526, !49, i64 2528, !49, i64 2532, !51, i64 2536, !51, i64 2538, !49, i64 2540, !51, i64 2544, !51, i64 2546, !43, i64 2548, !51, i64 2552, !51, i64 2554, !51, i64 2556, !51, i64 2558, !49, i64 2560, !49, i64 2564, !36, i64 2568, !43, i64 2576, !49, i64 2580, !37, i64 2584, !158, i64 2616, !43, i64 3976, !43, i64 3980}
!151 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !51, i64 8, !51, i64 10, !49, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !152, i64 24, !153, i64 184}
!152 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !49, i64 136, !49, i64 140, !36, i64 144, !36, i64 152}
!153 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!154 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !51, i64 48, !51, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!155 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !49, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!156 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!157 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!158 = !{!"BakeData", !151, i64 0, !37, i64 248, !51, i64 1272, !51, i64 1274, !51, i64 1276, !51, i64 1278, !49, i64 1280, !49, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!159 = !{!"AudioData", !43, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !43, i64 16, !51, i64 20, !51, i64 22, !49, i64 24, !49, i64 28}
!160 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!161 = !{!"GameData", !160, i64 0, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30, !51, i64 32, !37, i64 34, !162, i64 40, !51, i64 64, !51, i64 66, !49, i64 68, !163, i64 72, !49, i64 128, !49, i64 132, !43, i64 136, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !51, i64 148, !51, i64 150, !51, i64 152, !51, i64 154, !51, i64 156, !51, i64 158, !51, i64 160, !51, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!162 = !{!"GameDome", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !49, i64 8, !49, i64 12, !36, i64 16}
!163 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !43, i64 40, !49, i64 44, !49, i64 48, !51, i64 52, !51, i64 54}
!164 = !{!"UnitSettings", !49, i64 0, !37, i64 4, !37, i64 5, !51, i64 6}
!165 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!166 = !{!"long", !37, i64 0}
!167 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!168 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_shape_update"}
!169 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_shape_reset"}
!170 = !{!64, !36, i64 8}
!171 = !{!"rna_rigidbody_gen.c:rna_RigidBodyOb_path"}
!172 = !{!"rna_rigidbody_gen.c:rna_RigidBodyCon_path"}
