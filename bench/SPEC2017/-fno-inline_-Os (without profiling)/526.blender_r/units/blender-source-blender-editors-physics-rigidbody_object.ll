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
  %7 = load i16, ptr %6, align 8, !tbaa !5
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
  store ptr %13, ptr %17, align 8, !tbaa !17
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %13, %16 ], [ %5, %10 ]
  %20 = getelementptr inbounds %struct.RigidBodyWorld, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !36
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load ptr, ptr @G, align 8, !tbaa !38
  %25 = tail call ptr @BKE_group_add(ptr noundef %24, ptr noundef nonnull @.str.2) #5
  store ptr %25, ptr %20, align 8, !tbaa !36
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %21, %18 ]
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 128
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  %31 = trunc i32 %2 to i16
  br i1 %30, label %32, label %35

32:                                               ; preds = %26
  %33 = tail call ptr @BKE_rigidbody_create_object(ptr noundef %0, ptr noundef nonnull %1, i16 noundef signext %31) #5
  store ptr %33, ptr %28, align 8, !tbaa !40
  %34 = load ptr, ptr %20, align 8, !tbaa !36
  br label %35

35:                                               ; preds = %26, %32
  %36 = phi ptr [ %34, %32 ], [ %27, %26 ]
  %37 = phi ptr [ %33, %32 ], [ %29, %26 ]
  %38 = getelementptr inbounds %struct.RigidBodyOb, ptr %37, i64 0, i32 2
  store i16 %31, ptr %38, align 8, !tbaa !41
  %39 = getelementptr inbounds %struct.RigidBodyOb, ptr %37, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !43
  %41 = or i32 %40, 2
  store i32 %41, ptr %39, align 4, !tbaa !43
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
  %7 = load ptr, ptr %6, align 8, !tbaa !36
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
  store ptr @.str.3, ptr %2, align 8, !tbaa !44
  store ptr @.str.4, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_object_add_exec, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rigidbody_add_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @rigidbody_object_type_items, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_object_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #5
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = tail call zeroext i8 @ED_rigidbody_object_add(ptr noundef %3, ptr noundef %4, i32 noundef %7, ptr noundef %9) #6, !range !57
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
define internal i32 @ED_operator_rigidbody_add_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_object_active_editable(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !5
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
  store ptr @.str.9, ptr %2, align 8, !tbaa !44
  store ptr @.str.10, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_object_remove_exec, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rigidbody_active_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_object_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 128
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @ED_rigidbody_object_remove(ptr noundef %3, ptr noundef nonnull %4) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef null) #5
  br label %14

11:                                               ; preds = %2, %6
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.31) #5
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i32 [ 4, %10 ], [ 2, %11 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ED_operator_rigidbody_active_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_object_active_editable(ptr noundef %0) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 128
  %9 = load ptr, ptr %8, align 8, !tbaa !40
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
  store ptr @.str.12, ptr %2, align 8, !tbaa !44
  store ptr @.str.13, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_objects_add_exec, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rigidbody_add_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @rigidbody_object_type_items, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_objects_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %8 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %9 = load ptr, ptr %3, align 8, !tbaa !58
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
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = load ptr, ptr %13, align 8, !tbaa !56
  %20 = call zeroext i8 @ED_rigidbody_object_add(ptr noundef %4, ptr noundef %18, i32 noundef %7, ptr noundef %19) #6, !range !57
  %21 = or i8 %20, %16
  %22 = load ptr, ptr %15, align 8, !tbaa !58
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !63

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
  store ptr @.str.15, ptr %2, align 8, !tbaa !44
  store ptr @.str.16, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_objects_remove_exec, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_objects_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %5 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %6 = load ptr, ptr %3, align 8, !tbaa !58
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
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 128
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  call void @ED_rigidbody_object_remove(ptr noundef %4, ptr noundef nonnull %13) #6
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i8 [ 1, %17 ], [ %11, %9 ]
  %20 = load ptr, ptr %10, align 8, !tbaa !58
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !65

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
  store ptr @.str.18, ptr %2, align 8, !tbaa !44
  store ptr @.str.19, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_objects_shape_change_exec, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @rigidbody_object_shape_items, i32 noundef 6, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8) #5
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_objects_shape_change_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %8 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %9 = load ptr, ptr %3, align 8, !tbaa !58
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
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 128
  %18 = load ptr, ptr %17, align 8, !tbaa !40
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
  %23 = load ptr, ptr %13, align 8, !tbaa !58
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %12, !llvm.loop !67

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
  store ptr @.str.22, ptr %2, align 8, !tbaa !44
  store ptr @.str.23, ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @rigidbody_objects_calc_mass_exec, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.25, ptr noundef nonnull @DummyRNA_DEFAULT_items, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #5
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !53
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @rigidbody_materials_itemf) #5
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #5
  %12 = load ptr, ptr %8, align 8, !tbaa !52
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.28, float noundef 1.000000e+00, float noundef 0x3810000000000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, float noundef 1.000000e+00, float noundef 2.500000e+03) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rigidbody_objects_calc_mass_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.25) #5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = icmp ugt i32 %8, 45
  %12 = select i1 %11, i32 0, i32 %8
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [46 x %struct.rbMaterialDensityItem], ptr @RB_MATERIAL_DENSITY_TABLE, i64 0, i64 %13, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !68
  %16 = load ptr, ptr %6, align 8, !tbaa !54
  tail call void @RNA_float_set(ptr noundef %16, ptr noundef nonnull @.str.28, float noundef %15) #5
  br label %20

17:                                               ; preds = %2
  %18 = load ptr, ptr %6, align 8, !tbaa !54
  %19 = tail call float @RNA_float_get(ptr noundef %18, ptr noundef nonnull @.str.28) #5
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi float [ %15, %10 ], [ %19, %17 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %22 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  %23 = load ptr, ptr %3, align 8, !tbaa !58
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
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 128
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @BKE_rigidbody_calc_volume(ptr noundef nonnull %30, ptr noundef nonnull %5) #5
  %35 = load float, ptr %5, align 4, !tbaa !70
  %36 = fmul float %21, %35
  %37 = load ptr, ptr %31, align 8, !tbaa !40
  call void @RNA_pointer_create(ptr noundef nonnull %30, ptr noundef nonnull @RNA_RigidBodyObject, ptr noundef %37, ptr noundef nonnull %4) #5
  call void @RNA_float_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.33, float noundef %36) #5
  call void @DAG_id_tag_update(ptr noundef nonnull %30, i16 noundef signext 1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %38

38:                                               ; preds = %34, %26
  %39 = phi i8 [ 1, %34 ], [ %28, %26 ]
  %40 = load ptr, ptr %27, align 8, !tbaa !58
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %26, !llvm.loop !71

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
define internal ptr @rigidbody_materials_itemf(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store ptr null, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !tbaa !72
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 0, %4 ], [ %15, %10 ]
  %12 = getelementptr inbounds [46 x %struct.rbMaterialDensityItem], ptr @RB_MATERIAL_DENSITY_TABLE, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !73
  store ptr %13, ptr %8, align 8, !tbaa !74
  store ptr %13, ptr %9, align 8, !tbaa !76
  %14 = trunc i64 %11 to i32
  store i32 %14, ptr %5, align 8, !tbaa !77
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #5
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, 46
  br i1 %16, label %17, label %10, !llvm.loop !78

17:                                               ; preds = %10
  store ptr @.str.80, ptr %8, align 8, !tbaa !74
  store ptr @.str.80, ptr %9, align 8, !tbaa !76
  store i32 -1, ptr %5, align 8, !tbaa !77
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #5
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  store i8 1, ptr %3, align 1, !tbaa !79
  %18 = load ptr, ptr %6, align 8, !tbaa !58
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 136}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !8, i64 4952}
!18 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !14, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !19, i64 280, !28, i64 4264, !14, i64 4296, !14, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !14, i64 4384, !29, i64 4400, !30, i64 4416, !33, i64 4600, !8, i64 4608, !34, i64 4616, !8, i64 4640, !16, i64 4648, !16, i64 4656, !21, i64 4664, !22, i64 4824, !35, i64 4888, !8, i64 4952}
!19 = !{!"RenderData", !20, i64 0, !8, i64 248, !8, i64 256, !23, i64 264, !24, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !15, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !25, i64 544, !25, i64 560, !26, i64 576, !14, i64 592, !11, i64 608, !11, i64 610, !15, i64 612, !15, i64 616, !15, i64 620, !15, i64 624, !12, i64 628, !15, i64 632, !15, i64 636, !15, i64 640, !15, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !15, i64 660, !15, i64 664, !11, i64 668, !11, i64 670, !15, i64 672, !15, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !15, i64 2528, !15, i64 2532, !11, i64 2536, !11, i64 2538, !15, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !15, i64 2560, !15, i64 2564, !8, i64 2568, !12, i64 2576, !15, i64 2580, !9, i64 2584, !27, i64 2616, !12, i64 3976, !12, i64 3980}
!20 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !15, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !21, i64 24, !22, i64 184}
!21 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !15, i64 136, !15, i64 140, !8, i64 144, !8, i64 152}
!22 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!23 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!24 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!25 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!26 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!27 = !{!"BakeData", !20, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !15, i64 1280, !15, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!28 = !{!"AudioData", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !15, i64 24, !15, i64 28}
!29 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!30 = !{!"GameData", !29, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !31, i64 40, !11, i64 64, !11, i64 66, !15, i64 68, !32, i64 72, !15, i64 128, !15, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180}
!31 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !15, i64 8, !15, i64 12, !8, i64 16}
!32 = !{!"RecastData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !12, i64 40, !15, i64 44, !15, i64 48, !11, i64 52, !11, i64 54}
!33 = !{!"UnitSettings", !15, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!34 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!35 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!36 = !{!37, !8, i64 8}
!37 = !{!"RigidBodyWorld", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !12, i64 32, !15, i64 36, !8, i64 40, !14, i64 48, !12, i64 64, !11, i64 68, !11, i64 70, !12, i64 72, !15, i64 76, !8, i64 80}
!38 = !{!39, !8, i64 0}
!39 = !{!"Global", !8, i64 0, !9, i64 8, !9, i64 1032, !9, i64 2056, !9, i64 2057, !9, i64 2058, !14, i64 2064, !9, i64 2080, !9, i64 2081, !9, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !9, i64 2090, !11, i64 2092, !12, i64 2096, !12, i64 2100, !9, i64 2104, !12, i64 2108, !12, i64 2112, !9, i64 2116}
!40 = !{!6, !8, i64 1368}
!41 = !{!42, !11, i64 16}
!42 = !{!"RigidBodyOb", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 18, !12, i64 20, !12, i64 24, !11, i64 28, !11, i64 30, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !9, i64 64, !9, i64 80, !15, i64 92}
!43 = !{!42, !12, i64 20}
!44 = !{!45, !8, i64 8}
!45 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !14, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !46, i64 152, !11, i64 184}
!46 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!47 = !{!45, !8, i64 0}
!48 = !{!45, !8, i64 24}
!49 = !{!45, !8, i64 32}
!50 = !{!45, !8, i64 72}
!51 = !{!45, !11, i64 184}
!52 = !{!45, !8, i64 88}
!53 = !{!45, !8, i64 104}
!54 = !{!55, !8, i64 112}
!55 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !14, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}
!56 = !{!55, !8, i64 120}
!57 = !{i8 0, i8 2}
!58 = !{!8, !8, i64 0}
!59 = !{!60, !8, i64 32}
!60 = !{!"CollectionPointerLink", !8, i64 0, !8, i64 8, !61, i64 16}
!61 = !{!"PointerRNA", !62, i64 0, !8, i64 8, !8, i64 16}
!62 = !{!"", !8, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{!65, !64}
!66 = !{!45, !8, i64 48}
!67 = distinct !{!67, !64}
!68 = !{!69, !15, i64 8}
!69 = !{!"rbMaterialDensityItem", !8, i64 0, !15, i64 8}
!70 = !{!15, !15, i64 0}
!71 = distinct !{!71, !64}
!72 = !{!12, !12, i64 0}
!73 = !{!69, !8, i64 0}
!74 = !{!75, !8, i64 8}
!75 = !{!"EnumPropertyItem", !12, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !8, i64 32}
!76 = !{!75, !8, i64 24}
!77 = !{!75, !12, i64 0}
!78 = distinct !{!78, !64}
!79 = !{!9, !9, i64 0}
