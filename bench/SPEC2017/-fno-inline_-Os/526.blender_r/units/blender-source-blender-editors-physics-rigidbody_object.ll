; ModuleID = 'blender/source/blender/editors/physics/rigidbody_object.c'
source_filename = "blender/source/blender/editors/physics/rigidbody_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.rbMaterialDensityItem = type { ptr, float }
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
%struct.RigidBodyWorld = type { ptr, ptr, ptr, ptr, i32, float, ptr, %struct.ListBase, i32, i16, i16, i32, float, ptr }
%struct.RigidBodyOb = type { ptr, ptr, i16, i16, i32, i32, i16, i16, float, float, float, float, float, float, float, float, [4 x float], [3 x float], float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@.str = private unnamed_addr constant [40 x i8] c"Can't add Rigid Body to non mesh object\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't create Rigid Body world\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"RigidBodyWorld\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"RIGIDBODY_OT_object_add\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Add Rigid Body\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Add active object as Rigid Body\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@rigidbody_object_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"Rigid Body Type\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"RIGIDBODY_OT_object_remove\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Remove Rigid Body\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Remove Rigid Body settings from Object\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"RIGIDBODY_OT_objects_add\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Add Rigid Bodies\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Add selected objects as Rigid Bodies\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"RIGIDBODY_OT_objects_remove\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Remove Rigid Bodies\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"Remove selected objects from Rigid Body simulation\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"RIGIDBODY_OT_shape_change\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Change Collision Shape\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"Change collision shapes for selected Rigid Body Objects\00", align 1
@rigidbody_object_shape_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"Rigid Body Shape\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"RIGIDBODY_OT_mass_calculate\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Calculate Mass\00", align 1
@.str.24 = private unnamed_addr constant [75 x i8] c"Automatically calculate mass values for Rigid Body Objects based on volume\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@DummyRNA_DEFAULT_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.26 = private unnamed_addr constant [16 x i8] c"Material Preset\00", align 1
@.str.27 = private unnamed_addr constant [72 x i8] c"Type of material that objects are made of (determines material density)\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Density\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"Custom density value (kg/m^3) to use instead of material preset\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"Object has no Rigid Body settings to remove\00", align 1
@RNA_RigidBodyObject = external global %struct.StructRNA, align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"collision_shape\00", align 1
@RB_MATERIAL_DENSITY_TABLE = internal unnamed_addr constant [46 x %struct.rbMaterialDensityItem] [%struct.rbMaterialDensityItem { ptr @.str.34, float 1.000000e+00 }, %struct.rbMaterialDensityItem { ptr @.str.35, float 1.400000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.36, float 7.210000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.37, float 2.400000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.38, float 5.930000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.39, float 7.210000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.40, float 2.400000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.41, float 2.000000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.42, float 1.600000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.43, float 8.216000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.44, float 8.860000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.45, float 2.146000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.46, float 6.890000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.47, float 7.150000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.48, float 2.499000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.49, float 2.320000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.50, float 2.080000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.51, float 2.400000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.52, float 8.933000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.53, float 4.810000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.54, float 1.940000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.55, float 2.190000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.56, float 1.928200e+04 }, %struct.rbMaterialDensityItem { ptr @.str.57, float 1.650000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.58, float 2.691000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.59, float 2.780000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.60, float 5.930000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.61, float 9.190000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.62, float 7.874000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.63, float 1.134200e+04 }, %struct.rbMaterialDensityItem { ptr @.str.64, float 1.554000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.65, float 2.611000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.66, float 1.570000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.67, float 2.563000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.68, float 1.201000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.69, float 6.410000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.70, float 2.720000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.71, float 8.490000e+02 }, %struct.rbMaterialDensityItem { ptr @.str.72, float 1.200000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.73, float 1.050000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.74, float 1.522000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.75, float 1.050100e+04 }, %struct.rbMaterialDensityItem { ptr @.str.76, float 7.860000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.77, float 2.515000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.78, float 1.602000e+03 }, %struct.rbMaterialDensityItem { ptr @.str.79, float 6.100000e+02 }], align 16
@.str.33 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"Air\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Acrylic\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"Asphalt (Crushed)\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Bark\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Beans (Cocoa)\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Beans (Soy)\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"Brick (Pressed)\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"Brick (Common)\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Brick (Soft)\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Brass\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Bronze\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"Carbon (Solid)\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"Cardboard\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Cast Iron\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Chalk (Solid)\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Concrete\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"Charcoal\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"Cork\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Copper\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"Garbage\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"Glass (Broken)\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"Glass (Solid)\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"Gold\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"Granite (Broken)\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"Granite (Solid)\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Gravel\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"Ice (Crushed)\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"Ice (Solid)\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"Iron\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"Lead\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"Limestone (Broken)\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"Limestone (Solid)\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"Marble (Broken)\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"Marble (Solid)\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"Paper\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"Peanuts (Shelled)\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"Peanuts (Not Shelled)\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"Plaster\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"Plastic\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"Polystyrene\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"Rubber\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Silver\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Steel\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"Stone\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"Stone (Crushed)\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Timber\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_rigidbody_object_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BKE_rigidbody_get_world(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str) #5
  br label %43

10:                                               ; preds = %4
  %11 = icmp eq ptr %5, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = tail call ptr @BKE_rigidbody_create_world(ptr noundef %0) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.1) #5
  br label %43

16:                                               ; preds = %12
  tail call void @BKE_rigidbody_validate_sim_world(ptr noundef %0, ptr noundef nonnull %13, i8 noundef zeroext 0) #5
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  store ptr %13, ptr %17, align 8, !tbaa !46
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %13, %16 ], [ %5, %10 ]
  %20 = getelementptr inbounds %struct.RigidBodyWorld, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load ptr, ptr @G, align 8, !tbaa !67
  %25 = tail call ptr @BKE_group_add(ptr noundef %24, ptr noundef nonnull @.str.2) #5
  store ptr %25, ptr %20, align 8, !tbaa !65
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %21, %18 ]
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 128
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = icmp eq ptr %29, null
  %31 = trunc i32 %2 to i16
  br i1 %30, label %32, label %35

32:                                               ; preds = %26
  %33 = tail call ptr @BKE_rigidbody_create_object(ptr noundef %0, ptr noundef nonnull %1, i16 noundef signext %31) #5
  store ptr %33, ptr %28, align 8, !tbaa !69
  %34 = load ptr, ptr %20, align 8, !tbaa !65
  br label %35

35:                                               ; preds = %26, %32
  %36 = phi ptr [ %34, %32 ], [ %27, %26 ]
  %37 = phi ptr [ %33, %32 ], [ %29, %26 ]
  %38 = getelementptr inbounds %struct.RigidBodyOb, ptr %37, i64 0, i32 2
  store i16 %31, ptr %38, align 8, !tbaa !70
  %39 = getelementptr inbounds %struct.RigidBodyOb, ptr %37, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !72
  %41 = or i32 %40, 2
  store i32 %41, ptr %39, align 4, !tbaa !72
  %42 = tail call zeroext i8 @BKE_group_object_add(ptr noundef %36, ptr noundef nonnull %1, ptr noundef %0, ptr noundef null) #5
  tail call void @DAG_id_tag_update(ptr noundef nonnull %1, i16 noundef signext 1) #5
  br label %43

43:                                               ; preds = %35, %15, %9
  %44 = phi i8 [ 0, %9 ], [ 0, %15 ], [ 1, %35 ]
  ret i8 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_rigidbody_get_world(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_rigidbody_create_world(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_rigidbody_validate_sim_world(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_group_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_rigidbody_create_object(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_rigidbody_object_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_rigidbody_get_world(ptr noundef %0) #5
  tail call void @BKE_rigidbody_remove_object(ptr noundef %0, ptr noundef %1) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.RigidBodyWorld, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call zeroext i8 @BKE_group_object_unlink(ptr noundef %7, ptr noundef %1, ptr noundef %0, ptr noundef null) #5
  br label %9

9:                                                ; preds = %5, %2
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 1) #5
  ret void
}

; Function Attrs: optsize
declare void @BKE_rigidbody_remove_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RIGIDBODY_OT_object_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %2, align 8, !tbaa !73
  store ptr @.str.4, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_object_add_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rigidbody_add_poll, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @rigidbody_object_type_items, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_object_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !83 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #5
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call zeroext i8 @ED_rigidbody_object_add(ptr noundef %3, ptr noundef %4, i32 noundef %7, ptr noundef %9) #6, !range !87
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef null) #5
  br label %13

13:                                               ; preds = %2, %12
  %14 = phi i32 [ 4, %12 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ED_operator_rigidbody_add_poll(ptr noundef %0) #0 !PGOFuncName !88 {
  %2 = tail call i32 @ED_operator_object_active_editable(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i16 %9, 1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %4, %7
  %13 = phi i32 [ 0, %4 ], [ %11, %7 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RIGIDBODY_OT_object_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %2, align 8, !tbaa !73
  store ptr @.str.10, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_object_remove_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rigidbody_active_poll, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_object_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !89 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 128
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @ED_rigidbody_object_remove(ptr noundef %3, ptr noundef nonnull %4) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef null) #5
  br label %14

11:                                               ; preds = %2, %6
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.31) #5
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i32 [ 4, %10 ], [ 2, %11 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ED_operator_rigidbody_active_poll(ptr noundef %0) #0 !PGOFuncName !90 {
  %2 = tail call i32 @ED_operator_object_active_editable(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 128
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %4, %7
  %13 = phi i32 [ 0, %4 ], [ %11, %7 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RIGIDBODY_OT_objects_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !73
  store ptr @.str.13, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_objects_add_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rigidbody_add_poll, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @rigidbody_object_type_items, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_objects_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !91 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %8 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %9 = load ptr, ptr %3, align 8, !tbaa !92
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %27

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %9, %12 ], [ %22, %14 ]
  %16 = phi i8 [ 0, %12 ], [ %21, %14 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = load ptr, ptr %13, align 8, !tbaa !86
  %20 = call zeroext i8 @ED_rigidbody_object_add(ptr noundef %4, ptr noundef %18, i32 noundef %7, ptr noundef %19) #6, !range !87
  %21 = or i8 %20, %16
  %22 = load ptr, ptr %15, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !97

24:                                               ; preds = %14
  %25 = icmp eq i8 %21, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef null) #5
  br label %27

27:                                               ; preds = %11, %24, %26
  %28 = phi i32 [ 4, %26 ], [ 2, %24 ], [ 2, %11 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RIGIDBODY_OT_objects_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !73
  store ptr @.str.16, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_objects_remove_exec, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_objects_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !99 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %5 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %6 = load ptr, ptr %3, align 8, !tbaa !92
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %25

9:                                                ; preds = %2, %18
  %10 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %11 = phi i8 [ %19, %18 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 128
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  call void @ED_rigidbody_object_remove(ptr noundef %4, ptr noundef nonnull %13) #6
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i8 [ 1, %17 ], [ %11, %9 ]
  %20 = load ptr, ptr %10, align 8, !tbaa !92
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !100

22:                                               ; preds = %18
  %23 = icmp eq i8 %19, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef null) #5
  br label %25

25:                                               ; preds = %8, %22, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %22 ], [ 2, %8 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RIGIDBODY_OT_shape_change(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %2, align 8, !tbaa !73
  store ptr @.str.19, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_objects_shape_change_exec, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @rigidbody_object_shape_items, i32 noundef 6, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8) #5
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_objects_shape_change_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !102 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %8 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %9 = load ptr, ptr %3, align 8, !tbaa !92
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %28

12:                                               ; preds = %2, %21
  %13 = phi ptr [ %23, %21 ], [ %9, %2 ]
  %14 = phi i8 [ %22, %21 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 128
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @RNA_pointer_create(ptr noundef nonnull %16, ptr noundef nonnull @RNA_RigidBodyObject, ptr noundef nonnull %18, ptr noundef nonnull %4) #5
  call void @RNA_enum_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.32, i32 noundef %7) #5
  call void @DAG_id_tag_update(ptr noundef nonnull %16, i16 noundef signext 1) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %21

21:                                               ; preds = %20, %12
  %22 = phi i8 [ 1, %20 ], [ %14, %12 ]
  %23 = load ptr, ptr %13, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %12, !llvm.loop !103

25:                                               ; preds = %21
  %26 = icmp eq i8 %22, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef null) #5
  br label %28

28:                                               ; preds = %11, %25, %27
  %29 = phi i32 [ 4, %27 ], [ 2, %25 ], [ 2, %11 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RIGIDBODY_OT_mass_calculate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !73
  store ptr @.str.23, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_objects_calc_mass_exec, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.25, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #5
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !82
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rigidbody_materials_itemf) #5
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #5
  %12 = load ptr, ptr %8, align 8, !tbaa !81
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.28, float noundef 1.000000e+00, float noundef 0x3810000000000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, float noundef 1.000000e+00, float noundef 2.500000e+03) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_objects_calc_mass_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !104 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.25) #5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = icmp ugt i32 %8, 45
  %12 = select i1 %11, i32 0, i32 %8
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [46 x %struct.rbMaterialDensityItem], ptr @RB_MATERIAL_DENSITY_TABLE, i64 0, i64 %13, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !105
  %16 = load ptr, ptr %6, align 8, !tbaa !84
  tail call void @RNA_float_set(ptr noundef %16, ptr noundef nonnull @.str.28, float noundef %15) #5
  br label %20

17:                                               ; preds = %2
  %18 = load ptr, ptr %6, align 8, !tbaa !84
  %19 = tail call float @RNA_float_get(ptr noundef %18, ptr noundef nonnull @.str.28) #5
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi float [ %15, %10 ], [ %19, %17 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %22 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %23 = load ptr, ptr %3, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %45

26:                                               ; preds = %20, %38
  %27 = phi ptr [ %40, %38 ], [ %23, %20 ]
  %28 = phi i8 [ %39, %38 ], [ 0, %20 ]
  %29 = getelementptr inbounds %struct.CollectionPointerLink, ptr %27, i64 0, i32 2, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 128
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @BKE_rigidbody_calc_volume(ptr noundef nonnull %30, ptr noundef nonnull %5) #5
  %35 = load float, ptr %5, align 4, !tbaa !107
  %36 = fmul float %21, %35
  %37 = load ptr, ptr %31, align 8, !tbaa !69
  call void @RNA_pointer_create(ptr noundef nonnull %30, ptr noundef nonnull @RNA_RigidBodyObject, ptr noundef %37, ptr noundef nonnull %4) #5
  call void @RNA_float_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.33, float noundef %36) #5
  call void @DAG_id_tag_update(ptr noundef nonnull %30, i16 noundef signext 1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %38

38:                                               ; preds = %34, %26
  %39 = phi i8 [ 1, %34 ], [ %28, %26 ]
  %40 = load ptr, ptr %27, align 8, !tbaa !92
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %26, !llvm.loop !108

42:                                               ; preds = %38
  %43 = icmp eq i8 %39, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef null) #5
  br label %45

45:                                               ; preds = %25, %42, %44
  %46 = phi i32 [ 4, %44 ], [ 2, %42 ], [ 2, %25 ]
  ret i32 %46
}

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rigidbody_materials_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !109 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store ptr null, ptr %6, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !tbaa !110
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 0, %4 ], [ %15, %10 ]
  %12 = getelementptr inbounds [46 x %struct.rbMaterialDensityItem], ptr @RB_MATERIAL_DENSITY_TABLE, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !111
  store ptr %13, ptr %8, align 8, !tbaa !112
  store ptr %13, ptr %9, align 8, !tbaa !114
  %14 = trunc i64 %11 to i32
  store i32 %14, ptr %5, align 8, !tbaa !115
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #5
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, 46
  br i1 %16, label %17, label %10, !llvm.loop !116

17:                                               ; preds = %10
  store ptr @.str.80, ptr %8, align 8, !tbaa !112
  store ptr @.str.80, ptr %9, align 8, !tbaa !114
  store i32 -1, ptr %5, align 8, !tbaa !115
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #5
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  store i8 1, ptr %3, align 1, !tbaa !117
  %18 = load ptr, ptr %6, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  ret ptr %18
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_rigidbody_calc_volume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

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
!46 = !{!47, !37, i64 4952}
!47 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !48, i64 280, !57, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !58, i64 4400, !59, i64 4416, !62, i64 4600, !37, i64 4608, !63, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !50, i64 4664, !51, i64 4824, !64, i64 4888, !37, i64 4952}
!48 = !{!"RenderData", !49, i64 0, !37, i64 248, !37, i64 256, !52, i64 264, !53, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !54, i64 544, !54, i64 560, !55, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !56, i64 2616, !41, i64 3976, !41, i64 3980}
!49 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !50, i64 24, !51, i64 184}
!50 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!51 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!52 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!53 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!54 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!55 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!56 = !{!"BakeData", !49, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!57 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!58 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!59 = !{!"GameData", !58, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !60, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !61, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!60 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!61 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!62 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!63 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!64 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!65 = !{!66, !37, i64 8}
!66 = !{!"RigidBodyWorld", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !44, i64 36, !37, i64 40, !43, i64 48, !41, i64 64, !40, i64 68, !40, i64 70, !41, i64 72, !44, i64 76, !37, i64 80}
!67 = !{!68, !37, i64 0}
!68 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!69 = !{!35, !37, i64 1368}
!70 = !{!71, !40, i64 16}
!71 = !{!"RigidBodyOb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !38, i64 64, !38, i64 80, !44, i64 92}
!72 = !{!71, !41, i64 20}
!73 = !{!74, !37, i64 8}
!74 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !75, i64 152, !40, i64 184}
!75 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!76 = !{!74, !37, i64 0}
!77 = !{!74, !37, i64 24}
!78 = !{!74, !37, i64 32}
!79 = !{!74, !37, i64 72}
!80 = !{!74, !40, i64 184}
!81 = !{!74, !37, i64 88}
!82 = !{!74, !37, i64 104}
!83 = !{!"rigidbody_object.c:rigidbody_object_add_exec"}
!84 = !{!85, !37, i64 112}
!85 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!86 = !{!85, !37, i64 120}
!87 = !{i8 0, i8 2}
!88 = !{!"rigidbody_object.c:ED_operator_rigidbody_add_poll"}
!89 = !{!"rigidbody_object.c:rigidbody_object_remove_exec"}
!90 = !{!"rigidbody_object.c:ED_operator_rigidbody_active_poll"}
!91 = !{!"rigidbody_object.c:rigidbody_objects_add_exec"}
!92 = !{!37, !37, i64 0}
!93 = !{!94, !37, i64 32}
!94 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !95, i64 16}
!95 = !{!"PointerRNA", !96, i64 0, !37, i64 8, !37, i64 16}
!96 = !{!"", !37, i64 0}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"rigidbody_object.c:rigidbody_objects_remove_exec"}
!100 = distinct !{!100, !98}
!101 = !{!74, !37, i64 48}
!102 = !{!"rigidbody_object.c:rigidbody_objects_shape_change_exec"}
!103 = distinct !{!103, !98}
!104 = !{!"rigidbody_object.c:rigidbody_objects_calc_mass_exec"}
!105 = !{!106, !44, i64 8}
!106 = !{!"rbMaterialDensityItem", !37, i64 0, !44, i64 8}
!107 = !{!44, !44, i64 0}
!108 = distinct !{!108, !98}
!109 = !{!"rigidbody_object.c:rigidbody_materials_itemf"}
!110 = !{!41, !41, i64 0}
!111 = !{!106, !37, i64 0}
!112 = !{!113, !37, i64 8}
!113 = !{!"EnumPropertyItem", !41, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 32}
!114 = !{!113, !37, i64 24}
!115 = !{!113, !41, i64 0}
!116 = distinct !{!116, !98}
!117 = !{!38, !38, i64 0}
