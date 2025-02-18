; ModuleID = 'blender/source/blender/editors/object/object_edit.c'
source_filename = "blender/source/blender/editors/object/object_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.bProperty = type { ptr, ptr, [64 x i8], i16, i16, i32, ptr }

@.str = private unnamed_addr constant [7 x i8] c"object\00", align 1
@RNA_Object = external global %struct.StructRNA, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Clear Restrict View\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Reveal the object by setting the hide flag\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_hide_view_clear\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Set Restrict View\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Hide the object by setting the hide flag\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_hide_view_set\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Hide unselected rather than selected objects\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Clear Restrict Render\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Reveal the render object by setting the hide render flag\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_hide_render_clear\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Set Restrict Render\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Hide the render object by setting the hide render flag\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_hide_render_set\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Editmode\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Enter Editmode\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Toggle Editmode\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Toggle object's editmode\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_editmode_toggle\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Toggle Pose Mode\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_posemode_toggle\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Enable or disable posing/selecting bones\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Toggle Force Field\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Toggle object's force field\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_forcefield_toggle\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Calculate Object Paths\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_paths_calculate\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"Calculate motion paths for the selected objects\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"start_frame\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"First frame to calculate object paths on\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"end_frame\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"Last frame to calculate object paths on\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Update Object Paths\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_paths_update\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Recalculate paths for selected objects\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Clear Object Paths\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_paths_clear\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"Clear path caches for selected objects\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Shade Flat\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Render and display faces uniform, using Face Normals\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_shade_flat\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Shade Smooth\00", align 1
@.str.46 = private unnamed_addr constant [67 x i8] c"Render and display faces smooth, using interpolated Vertex Normals\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_shade_smooth\00", align 1
@.str.48 = private unnamed_addr constant [45 x i8] c"Unable to execute '%s', error changing modes\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"Set Object Mode\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"Sets the object interaction mode\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"OBJECT_OT_mode_set\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@object_mode_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.53 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.54 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"New Game Property\00", align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"Create a new property available to the game engine\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_game_property_new\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@gameproperty_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.61 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"Type of game property to add\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"Name of the game property to add\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"Remove Game Property\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"Remove game property\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_game_property_remove\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"Property index to remove \00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"Copy Game Property\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_game_property_copy\00", align 1
@.str.74 = private unnamed_addr constant [78 x i8] c"Copy/merge/replace a game property from active object to all selected objects\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@game_properties_copy_operations = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.54 }, %struct.EnumPropertyItem { i32 2, ptr @.str.98, i32 0, ptr @.str.99, ptr @.str.54 }, %struct.EnumPropertyItem { i32 3, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.54 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.76 = private unnamed_addr constant [10 x i8] c"Operation\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.78 = private unnamed_addr constant [9 x i8] c"Property\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"Properties to copy\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"Clear Game Properties\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_game_property_clear\00", align 1
@.str.82 = private unnamed_addr constant [53 x i8] c"Remove all game properties from all selected objects\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"Copy Logic Bricks to Selected\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c"Copy logic bricks to other selected objects\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_logic_bricks_copy\00", align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"Copy Game Physics Properties to Selected\00", align 1
@.str.87 = private unnamed_addr constant [55 x i8] c"Copy game physics properties to other selected objects\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_game_physics_copy\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.90 = private unnamed_addr constant [37 x i8] c"Can't edit linked mesh or curve data\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"SCULPT_OT_sculptmode_toggle\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"PAINT_OT_vertex_paint_toggle\00", align 1
@.str.93 = private unnamed_addr constant [29 x i8] c"PAINT_OT_weight_paint_toggle\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"PAINT_OT_texture_paint_toggle\00", align 1
@.str.95 = private unnamed_addr constant [33 x i8] c"PARTICLE_OT_particle_edit_toggle\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"Replace Properties\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"MERGE\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"Merge Properties\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"Copy a Property\00", align 1
@__const.gameprops_itemf.tmp = private unnamed_addr constant %struct.EnumPropertyItem { i32 0, ptr @.str.54, i32 0, ptr @.str.54, ptr @.str.54 }, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_object_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @RNA_Object) #8
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  ret ptr %4
}

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_object_active_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2)
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @RNA_Object) #8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call ptr @CTX_data_active_object(ptr noundef nonnull %0) #8
  br label %10

10:                                               ; preds = %4, %8, %1
  %11 = phi ptr [ %6, %4 ], [ %9, %8 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_hide_view_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hide_view_clear_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_hide_view_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %13 = load i32, ptr %12, align 8, !tbaa !55
  br label %14

14:                                               ; preds = %11, %42
  %15 = phi ptr [ %9, %11 ], [ %44, %42 ]
  %16 = phi i8 [ 0, %11 ], [ %43, %42 ]
  %17 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = and i32 %13, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 102
  %25 = load i8, ptr %24, align 8, !tbaa !62
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %21
  %30 = and i32 %26, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !67
  %35 = or i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !67
  br label %36

36:                                               ; preds = %32, %29
  %37 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !67
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 53
  store i16 %39, ptr %40, align 4, !tbaa !68
  %41 = and i8 %25, -2
  store i8 %41, ptr %24, align 8, !tbaa !62
  br label %42

42:                                               ; preds = %14, %21, %36
  %43 = phi i8 [ 1, %36 ], [ %16, %21 ], [ %16, %14 ]
  %44 = load ptr, ptr %15, align 8, !tbaa !54
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %14, !llvm.loop !69

46:                                               ; preds = %42
  %47 = icmp eq i8 %43, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  tail call void @DAG_id_type_tag(ptr noundef %3, i16 noundef signext 16975) #8
  tail call void @DAG_relations_tag_update(ptr noundef %3) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %7) #8
  br label %49

49:                                               ; preds = %2, %48, %46
  ret i32 4
}

declare i32 @ED_operator_view3d_active(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_hide_view_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hide_view_set_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_hide_view_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %9 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #8
  %10 = load ptr, ptr %3, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %2
  %13 = and i32 %8, 255
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %16 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  br label %17

17:                                               ; preds = %12, %48
  %18 = phi ptr [ %10, %12 ], [ %50, %48 ]
  %19 = phi i8 [ 0, %12 ], [ %49, %48 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !67
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %14, label %26, label %38

26:                                               ; preds = %17
  br i1 %25, label %48, label %27

27:                                               ; preds = %26
  %28 = and i32 %23, -2
  store i32 %28, ptr %22, align 8, !tbaa !67
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 53
  store i16 %29, ptr %32, align 4, !tbaa !68
  %33 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 102
  %34 = load i8, ptr %33, align 8, !tbaa !62
  %35 = or i8 %34, 1
  store i8 %35, ptr %33, align 8, !tbaa !62
  %36 = load ptr, ptr %16, align 8, !tbaa !77
  %37 = icmp eq ptr %21, %36
  br i1 %37, label %47, label %48

38:                                               ; preds = %17
  br i1 %25, label %39, label %48

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 102
  %43 = load i8, ptr %42, align 8, !tbaa !62
  %44 = or i8 %43, 1
  store i8 %44, ptr %42, align 8, !tbaa !62
  %45 = load ptr, ptr %15, align 8, !tbaa !77
  %46 = icmp eq ptr %21, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %27
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef null) #8
  br label %48

48:                                               ; preds = %47, %38, %39, %26, %27
  %49 = phi i8 [ %19, %38 ], [ 1, %39 ], [ 1, %27 ], [ %19, %26 ], [ 1, %47 ]
  %50 = load ptr, ptr %18, align 8, !tbaa !54
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %17, !llvm.loop !94

52:                                               ; preds = %48
  %53 = icmp eq i8 %49, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  call void @DAG_id_type_tag(ptr noundef %4, i16 noundef signext 16975) #8
  call void @DAG_relations_tag_update(ptr noundef %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %5) #8
  br label %56

55:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %56

56:                                               ; preds = %55, %54, %52
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_hide_render_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hide_render_clear_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_hide_render_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = load ptr, ptr %3, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2, %18
  %8 = phi ptr [ %20, %18 ], [ %5, %2 ]
  %9 = phi i8 [ %19, %18 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %8, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 102
  %13 = load i8, ptr %12, align 8, !tbaa !62
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = and i8 %13, -5
  store i8 %17, ptr %12, align 8, !tbaa !62
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i8 [ 1, %16 ], [ %9, %7 ]
  %20 = load ptr, ptr %8, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !95

22:                                               ; preds = %18
  %23 = icmp eq i8 %19, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252182528, ptr noundef null) #8
  br label %26

25:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %26

26:                                               ; preds = %25, %24, %22
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_hide_render_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hide_render_set_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_hide_render_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %7 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #8
  %8 = load ptr, ptr %3, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = and i32 %6, 255
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %10, %29
  %14 = phi ptr [ %8, %10 ], [ %30, %29 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !67
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %12, label %21, label %22

21:                                               ; preds = %13
  br i1 %20, label %29, label %23

22:                                               ; preds = %13
  br i1 %20, label %23, label %29

23:                                               ; preds = %22, %21
  %24 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 102
  %27 = load i8, ptr %26, align 8, !tbaa !62
  %28 = or i8 %27, 4
  store i8 %28, ptr %26, align 8, !tbaa !62
  br label %29

29:                                               ; preds = %23, %22, %21
  %30 = load ptr, ptr %14, align 8, !tbaa !54
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !96

32:                                               ; preds = %29, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252182528, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_object_editmode_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ED_object_editmode_load_ex(ptr noundef %0, i8 noundef zeroext 0), !range !97
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @ED_object_editmode_load_ex(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %51, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !98
  switch i16 %6, label %48 [
    i16 1, label %7
    i16 25, label %30
    i16 2, label %36
    i16 3, label %36
    i16 4, label %39
    i16 22, label %42
    i16 5, label %45
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = load i32, ptr %12, align 8, !tbaa !105
  %14 = icmp slt i32 %13, 2000000001
  br i1 %14, label %15, label %51

15:                                               ; preds = %7
  tail call void @EDBM_mesh_load(ptr noundef nonnull %0) #8
  %16 = icmp eq i8 %1, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %10, align 8, !tbaa !100
  tail call void @EDBM_mesh_free(ptr noundef %18) #8
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %20 = load ptr, ptr %10, align 8, !tbaa !100
  tail call void %19(ptr noundef %20) #8
  store ptr null, ptr %10, align 8, !tbaa !100
  br label %21

21:                                               ; preds = %17, %15
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 28
  %23 = load i32, ptr %22, align 4, !tbaa !107
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #8
  %28 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #8
  br label %29

29:                                               ; preds = %21, %26
  br i1 %14, label %48, label %51

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !99
  tail call void @ED_armature_from_edit(ptr noundef %32) #8
  %33 = icmp eq i8 %1, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %31, align 8, !tbaa !99
  tail call void @ED_armature_edit_free(ptr noundef %35) #8
  br label %48

36:                                               ; preds = %4, %4
  tail call void @load_editNurb(ptr noundef nonnull %0) #8
  %37 = icmp eq i8 %1, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %36
  tail call void @free_editNurb(ptr noundef nonnull %0) #8
  br label %48

39:                                               ; preds = %4
  tail call void @load_editText(ptr noundef nonnull %0) #8
  %40 = icmp eq i8 %1, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  tail call void @free_editText(ptr noundef nonnull %0) #8
  br label %48

42:                                               ; preds = %4
  tail call void @load_editLatt(ptr noundef nonnull %0) #8
  %43 = icmp eq i8 %1, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %42
  tail call void @free_editLatt(ptr noundef nonnull %0) #8
  br label %48

45:                                               ; preds = %4
  tail call void @load_editMball(ptr noundef nonnull %0) #8
  %46 = icmp eq i8 %1, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  tail call void @free_editMball(ptr noundef nonnull %0) #8
  br label %48

48:                                               ; preds = %4, %29, %34, %30, %41, %39, %47, %45, %42, %44, %36, %38
  %49 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !99
  tail call void @DAG_id_tag_update(ptr noundef %50, i16 noundef signext 0) #8
  br label %51

51:                                               ; preds = %7, %29, %2, %48
  %52 = phi i8 [ 0, %29 ], [ 1, %48 ], [ 0, %2 ], [ 0, %7 ]
  ret i8 %52
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_editmode_exit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %6 = trunc i32 %1 to i8
  %7 = and i8 %6, 1
  %8 = tail call fastcc zeroext i8 @ED_object_editmode_load_ex(ptr noundef %5, i8 noundef zeroext %7), !range !97
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !108
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %14
  %22 = and i32 %18, -2
  store i32 %22, ptr %17, align 8, !tbaa !108
  br label %52

23:                                               ; preds = %2
  %24 = icmp eq i8 %7, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %26 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 7
  store ptr null, ptr %26, align 8, !tbaa !109
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %3, ptr noundef %5, ptr noundef %4, i32 noundef 0) #8
  %27 = load ptr, ptr %3, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25, %40
  %30 = phi ptr [ %41, %40 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !110
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %36 = load ptr, ptr %35, align 8, !tbaa !112
  %37 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !113
  %39 = or i32 %38, 2
  store i32 %39, ptr %37, align 8, !tbaa !113
  br label %40

40:                                               ; preds = %29, %34
  %41 = load ptr, ptr %30, align 8, !tbaa !54
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %29, !llvm.loop !115

43:                                               ; preds = %40, %25
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  %44 = call i32 @BKE_ptcache_object_reset(ptr noundef %4, ptr noundef %5, i32 noundef 2) #8
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 3) #8
  %45 = and i32 %1, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.16) #8
  br label %48

48:                                               ; preds = %47, %43
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef %4) #8
  %49 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %50 = load i32, ptr %49, align 8, !tbaa !108
  %51 = and i32 %50, -2
  store i32 %51, ptr %49, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %52

52:                                               ; preds = %23, %48, %10, %14, %21
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_ptcache_object_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_editmode_enter(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %121

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !117
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  br label %17

17:                                               ; preds = %14, %10, %8
  %18 = phi ptr [ %16, %14 ], [ null, %10 ], [ null, %8 ]
  %19 = and i32 %1, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = tail call ptr @CTX_data_active_base(ptr noundef %0) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %121, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %18, null
  %26 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !59
  br i1 %25, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 22
  %30 = load i32, ptr %29, align 8, !tbaa !55
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %121, label %41

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  %35 = load i32, ptr %34, align 8, !tbaa !118
  %36 = and i32 %35, %27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %121, label %41

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  br label %41

41:                                               ; preds = %28, %33, %38
  %42 = phi ptr [ %22, %33 ], [ %40, %38 ], [ %22, %28 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %121, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.Base, ptr %42, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  %47 = icmp eq ptr %46, null
  br i1 %47, label %121, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !99
  %51 = icmp eq ptr %50, null
  br i1 %51, label %121, label %52

52:                                               ; preds = %48
  %53 = tail call zeroext i8 @BKE_object_is_in_editmode(ptr noundef %46) #8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %121

55:                                               ; preds = %52
  %56 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef %46) #8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %121

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 27
  %60 = load i32, ptr %59, align 8, !tbaa !108
  %61 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 28
  store i32 %60, ptr %61, align 4, !tbaa !107
  %62 = and i32 %60, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  switch i32 %60, label %70 [
    i32 0, label %76
    i32 2, label %71
    i32 4, label %65
    i32 8, label %66
    i32 16, label %67
    i32 32, label %68
    i32 64, label %69
  ]

65:                                               ; preds = %64
  br label %71

66:                                               ; preds = %64
  br label %71

67:                                               ; preds = %64
  br label %71

68:                                               ; preds = %64
  br label %71

69:                                               ; preds = %64
  br label %71

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %64, %70, %69, %68, %67, %66, %65
  %72 = phi i1 [ false, %65 ], [ false, %66 ], [ false, %67 ], [ false, %68 ], [ false, %69 ], [ true, %70 ], [ false, %64 ]
  %73 = phi ptr [ @.str.92, %65 ], [ @.str.93, %66 ], [ @.str.94, %67 ], [ @.str.95, %68 ], [ @.str.22, %69 ], [ null, %70 ], [ @.str.91, %64 ]
  br i1 %72, label %76, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %73, i16 noundef signext 7, ptr noundef null) #8
  br label %76

76:                                               ; preds = %74, %71, %64, %58
  store i32 1, ptr %59, align 8, !tbaa !108
  %77 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 3
  %78 = load i16, ptr %77, align 8, !tbaa !98
  switch i16 %78, label %109 [
    i16 1, label %79
    i16 25, label %87
    i16 4, label %99
    i16 5, label %101
    i16 22, label %103
    i16 3, label %105
    i16 2, label %105
  ]

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %46, ptr %80, align 8, !tbaa !109
  %81 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %82 = load ptr, ptr %81, align 8, !tbaa !119
  tail call void @EDBM_mesh_make(ptr noundef %82, ptr noundef %46) #8
  %83 = tail call ptr @BKE_editmesh_from_object(ptr noundef %46) #8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %107, label %85

85:                                               ; preds = %79
  tail call void @EDBM_mesh_normals_update(ptr noundef nonnull %83) #8
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %83) #8
  %86 = load ptr, ptr %83, align 8, !tbaa !103
  tail call void @BM_mesh_select_mode_flush(ptr noundef %86) #8
  br label %107

87:                                               ; preds = %76
  %88 = load ptr, ptr %49, align 8, !tbaa !99
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.ID, ptr %88, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !120
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %46, ptr %95, align 8, !tbaa !109
  tail call void @ED_armature_to_edit(ptr noundef nonnull %88) #8
  tail call void @DAG_id_tag_update(ptr noundef %46, i16 noundef signext 7) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67831808, ptr noundef %3) #8
  br label %96

96:                                               ; preds = %90, %87, %94
  %97 = phi i8 [ 1, %94 ], [ 0, %87 ], [ 0, %90 ]
  %98 = phi i1 [ true, %94 ], [ false, %87 ], [ false, %90 ]
  br i1 %98, label %109, label %121

99:                                               ; preds = %76
  %100 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %46, ptr %100, align 8, !tbaa !109
  tail call void @make_editText(ptr noundef %46) #8
  br label %107

101:                                              ; preds = %76
  %102 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %46, ptr %102, align 8, !tbaa !109
  tail call void @make_editMball(ptr noundef %46) #8
  br label %107

103:                                              ; preds = %76
  %104 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %46, ptr %104, align 8, !tbaa !109
  tail call void @make_editLatt(ptr noundef %46) #8
  br label %107

105:                                              ; preds = %76, %76
  %106 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %46, ptr %106, align 8, !tbaa !109
  tail call void @make_editNurb(ptr noundef %46) #8
  br label %107

107:                                              ; preds = %79, %85, %99, %103, %105, %101
  %108 = phi i32 [ 67831296, %101 ], [ 67830528, %105 ], [ 67831552, %103 ], [ 67831040, %99 ], [ 67830272, %85 ], [ 67830272, %79 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %108, ptr noundef %3) #8
  br label %109

109:                                              ; preds = %107, %76, %96
  %110 = phi i8 [ %97, %96 ], [ 0, %76 ], [ 1, %107 ]
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void @DAG_id_tag_update(ptr noundef %46, i16 noundef signext 2) #8
  br label %117

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr null, ptr %114, align 8, !tbaa !109
  %115 = load i32, ptr %59, align 8, !tbaa !108
  %116 = and i32 %115, -2
  store i32 %116, ptr %59, align 8, !tbaa !108
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef %3) #8
  br label %117

117:                                              ; preds = %113, %112
  %118 = and i32 %1, 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.17) #8
  br label %121

121:                                              ; preds = %117, %120, %55, %52, %41, %44, %48, %33, %28, %21, %2, %96
  ret void
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_object_is_in_editmode(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_toggle_modes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  switch i32 %1, label %13 [
    i32 2, label %14
    i32 4, label %8
    i32 8, label %9
    i32 16, label %10
    i32 32, label %11
    i32 64, label %12
  ]

8:                                                ; preds = %7
  br label %14

9:                                                ; preds = %7
  br label %14

10:                                               ; preds = %7
  br label %14

11:                                               ; preds = %7
  br label %14

12:                                               ; preds = %7
  br label %14

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %4, %7, %8, %9, %10, %11, %12, %13
  %15 = phi i1 [ false, %8 ], [ false, %9 ], [ false, %10 ], [ false, %11 ], [ false, %12 ], [ true, %13 ], [ false, %4 ], [ false, %7 ]
  %16 = phi ptr [ @.str.92, %8 ], [ @.str.93, %9 ], [ @.str.94, %10 ], [ @.str.95, %11 ], [ @.str.22, %12 ], [ null, %13 ], [ @.str.20, %4 ], [ @.str.91, %7 ]
  br i1 %15, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %16, i16 noundef signext 7, ptr noundef null) #8
  br label %19

19:                                               ; preds = %14, %17, %2
  ret void
}

declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #1

declare void @BM_mesh_select_mode_flush(ptr noundef) local_unnamed_addr #1

declare void @ED_armature_to_edit(ptr noundef) local_unnamed_addr #1

declare void @make_editText(ptr noundef) local_unnamed_addr #1

declare void @make_editMball(ptr noundef) local_unnamed_addr #1

declare void @make_editLatt(ptr noundef) local_unnamed_addr #1

declare void @make_editNurb(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_editmode_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @editmode_toggle_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @editmode_toggle_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @editmode_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #8
  br i1 %4, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  %14 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef %11, i32 noundef 1, ptr noundef %13), !range !97
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %6
  tail call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 4)
  br label %18

17:                                               ; preds = %2
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 7)
  br label %18

18:                                               ; preds = %17, %16
  %19 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  tail call void @ED_space_image_uv_sculpt_update(ptr noundef %19, ptr noundef %5) #8
  br label %20

20:                                               ; preds = %6, %18
  %21 = phi i32 [ 4, %18 ], [ 2, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @editmode_toggle_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %14 = load i8, ptr %13, align 8, !tbaa !62
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %19 = load i32, ptr %18, align 8, !tbaa !108
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !98
  switch i16 %24, label %25 [
    i16 1, label %28
    i16 4, label %28
    i16 2, label %28
    i16 3, label %28
    i16 5, label %28
    i16 22, label %28
  ]

25:                                               ; preds = %22
  %26 = icmp eq i16 %24, 25
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %25, %22, %22, %22, %22, %22, %22, %17, %1, %4, %8
  %29 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ 0, %17 ], [ 1, %22 ], [ %27, %25 ], [ 1, %22 ], [ 1, %22 ], [ 1, %22 ], [ 1, %22 ], [ 1, %22 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_posemode_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @posemode_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @posemode_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_base(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !108
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef %5, i32 noundef 64, ptr noundef %12), !range !97
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10, %2
  %16 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !98
  %18 = icmp eq i16 %17, 25
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %21 = icmp eq ptr %5, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 9)
  tail call void @ED_armature_enter_posemode(ptr noundef %0, ptr noundef %3) #8
  br label %26

23:                                               ; preds = %19
  br i1 %9, label %25, label %24

24:                                               ; preds = %23
  tail call void @ED_armature_exit_posemode(ptr noundef %0, ptr noundef %3) #8
  br label %26

25:                                               ; preds = %23
  tail call void @ED_armature_enter_posemode(ptr noundef %0, ptr noundef %3) #8
  br label %26

26:                                               ; preds = %15, %22, %25, %24, %10
  %27 = phi i32 [ 2, %10 ], [ 4, %24 ], [ 4, %25 ], [ 4, %22 ], [ 8, %15 ]
  ret i32 %27
}

declare i32 @ED_operator_object_active_editable(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_check_force_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 110
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = tail call ptr @modifiers_findByType(ptr noundef %2, i32 noundef 30) #8
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %5, null
  br i1 %7, label %9, label %26

9:                                                ; preds = %3
  br i1 %8, label %37, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !125
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !127
  %17 = add i16 %16, -7
  %18 = icmp ult i16 %17, -2
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !98
  %22 = add i16 %21, -1
  %23 = icmp ult i16 %22, 4
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = tail call ptr @ED_object_modifier_add(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 30) #8
  br label %37

26:                                               ; preds = %3
  br i1 %8, label %35, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 4
  %29 = load i16, ptr %28, align 2, !tbaa !125
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !127
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %27, %26
  %36 = tail call zeroext i8 @ED_object_modifier_remove(ptr noundef null, ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6) #8
  br label %37

37:                                               ; preds = %19, %31, %35, %9, %10, %14, %24
  ret void
}

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ED_object_modifier_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @ED_object_modifier_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_forcefield_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @forcefield_toggle_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @forcefield_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @object_add_collision_fields(i32 noundef 1) #8
  store ptr %8, ptr %4, align 8, !tbaa !124
  br label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !127
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i16 1, ptr %10, align 2, !tbaa !127
  br label %15

14:                                               ; preds = %9
  store i16 0, ptr %10, align 2, !tbaa !127
  br label %15

15:                                               ; preds = %13, %14, %7
  %16 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  tail call void @ED_object_check_force_modifiers(ptr noundef %16, ptr noundef %17, ptr noundef %3)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #8
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_objects_recalculate_paths(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #8
  %6 = load ptr, ptr %4, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %15, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 21, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !128
  %14 = or i16 %13, 1
  store i16 %14, ptr %12, align 2, !tbaa !128
  call void @animviz_get_object_motionpaths(ptr noundef %11, ptr noundef nonnull %3) #8
  %15 = load ptr, ptr %9, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !129

17:                                               ; preds = %8, %2
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @animviz_calc_motionpaths(ptr noundef %1, ptr noundef nonnull %3) #8
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @animviz_get_object_motionpaths(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @animviz_calc_motionpaths(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_paths_calculate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @object_calculate_paths_invoke, ptr %4, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_calculate_paths_exec, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 150000) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !72
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.33, i32 noundef 250, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 150000) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @object_calculate_paths_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 21, i32 12
  %10 = load i32, ptr %9, align 4, !tbaa !131
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef %10) #8
  %11 = load ptr, ptr %7, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 21, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !132
  tail call void @RNA_int_set(ptr noundef %11, ptr noundef nonnull @.str.33, i32 noundef %13) #8
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !133
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, 10
  %17 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef %16) #8
  br label %18

18:                                               ; preds = %3, %6
  %19 = phi i32 [ %17, %6 ], [ 2, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_calculate_paths_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.30) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !73
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.33) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %12 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %5) #8
  %13 = load ptr, ptr %5, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %13, %15 ], [ %25, %17 ]
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 21, i32 12
  store i32 %9, ptr %21, align 4, !tbaa !131
  %22 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 21, i32 13
  store i32 %11, ptr %22, align 4, !tbaa !132
  %23 = load ptr, ptr %16, align 8, !tbaa !122
  %24 = call ptr @animviz_verify_motionpaths(ptr noundef %23, ptr noundef %6, ptr noundef %20, ptr noundef null) #8
  %25 = load ptr, ptr %18, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17, !llvm.loop !137

27:                                               ; preds = %17, %2
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %28 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #8
  %29 = load ptr, ptr %4, align 8, !tbaa !54
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %38, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.CollectionPointerLink, ptr %32, i64 0, i32 2, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 21, i32 7
  %36 = load i16, ptr %35, align 2, !tbaa !128
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 2, !tbaa !128
  call void @animviz_get_object_motionpaths(ptr noundef %34, ptr noundef nonnull %3) #8
  %38 = load ptr, ptr %32, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %31, !llvm.loop !129

40:                                               ; preds = %31, %27
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @animviz_calc_motionpaths(ptr noundef %6, ptr noundef nonnull %3) #8
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #8
  ret i32 4
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_paths_update(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_update_paths_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_update_paths_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %8 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %18, %11 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 21, i32 7
  %16 = load i16, ptr %15, align 2, !tbaa !128
  %17 = or i16 %16, 1
  store i16 %17, ptr %15, align 2, !tbaa !128
  call void @animviz_get_object_motionpaths(ptr noundef %14, ptr noundef nonnull %3) #8
  %18 = load ptr, ptr %12, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11, !llvm.loop !129

20:                                               ; preds = %11, %7
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @animviz_calc_motionpaths(ptr noundef nonnull %5, ptr noundef nonnull %3) #8
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #8
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_objects_clear_paths(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  %3 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %2) #8
  %4 = load ptr, ptr %2, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.CollectionPointerLink, ptr %7, i64 0, i32 2, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  call void @animviz_free_motionpath(ptr noundef nonnull %11) #8
  store ptr null, ptr %10, align 8, !tbaa !138
  %14 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 21, i32 11
  %15 = load i16, ptr %14, align 2, !tbaa !139
  %16 = and i16 %15, -5
  store i16 %16, ptr %14, align 2, !tbaa !139
  br label %17

17:                                               ; preds = %13, %6
  %18 = load ptr, ptr %7, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !140

20:                                               ; preds = %17, %1
  call void @BLI_freelistN(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret void
}

declare void @animviz_free_motionpath(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_paths_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_clear_paths_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_clear_paths_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = load ptr, ptr %3, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2, %18
  %8 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.CollectionPointerLink, ptr %8, i64 0, i32 2, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  call void @animviz_free_motionpath(ptr noundef nonnull %12) #8
  store ptr null, ptr %11, align 8, !tbaa !138
  %15 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 21, i32 11
  %16 = load i16, ptr %15, align 2, !tbaa !139
  %17 = and i16 %16, -5
  store i16 %17, ptr %15, align 2, !tbaa !139
  br label %18

18:                                               ; preds = %14, %7
  %19 = load ptr, ptr %8, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !140

21:                                               ; preds = %18, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_shade_flat(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @shade_poll, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shade_smooth_exec, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @shade_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @shade_smooth_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(21) @.str.44) #9
  %6 = icmp ne i32 %5, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %7 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #8
  %8 = load ptr, ptr %3, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %2
  %11 = zext i1 %6 to i32
  %12 = zext i1 %6 to i16
  br label %13

13:                                               ; preds = %10, %43
  %14 = phi ptr [ %8, %10 ], [ %46, %43 ]
  %15 = phi i8 [ 0, %10 ], [ %45, %43 ]
  %16 = phi i8 [ 0, %10 ], [ %44, %43 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !123
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %22, %13
  %27 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %28 = load i16, ptr %27, align 8, !tbaa !98
  switch i16 %28, label %43 [
    i16 1, label %29
    i16 3, label %30
    i16 2, label %30
  ]

29:                                               ; preds = %26
  call void @BKE_mesh_smooth_flag_set(ptr noundef %18, i32 noundef %11) #8
  br label %42

30:                                               ; preds = %26, %26
  %31 = getelementptr inbounds %struct.Curve, ptr %20, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %34
  %35 = phi ptr [ %40, %34 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 5
  %37 = load i16, ptr %36, align 2, !tbaa !141
  %38 = and i16 %37, -2
  %39 = or disjoint i16 %38, %12
  store i16 %39, ptr %36, align 2, !tbaa !141
  %40 = load ptr, ptr %35, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34, !llvm.loop !143

42:                                               ; preds = %34, %30, %29
  call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %18) #8
  br label %43

43:                                               ; preds = %42, %26, %22
  %44 = phi i8 [ %16, %22 ], [ %16, %26 ], [ 1, %42 ]
  %45 = phi i8 [ 1, %22 ], [ %15, %26 ], [ %15, %42 ]
  %46 = load ptr, ptr %14, align 8, !tbaa !54
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %13, !llvm.loop !144

48:                                               ; preds = %43
  %49 = icmp eq i8 %45, 0
  %50 = icmp eq i8 %44, 0
  %51 = select i1 %50, i32 2, i32 4
  br label %52

52:                                               ; preds = %48, %2
  %53 = phi i32 [ 2, %2 ], [ %51, %48 ]
  %54 = phi i1 [ true, %2 ], [ %49, %48 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !122
  call void @BKE_report(ptr noundef %57, i32 noundef 16, ptr noundef nonnull @.str.90) #8
  br label %58

58:                                               ; preds = %55, %52
  ret i32 %53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_shade_smooth(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.47, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @shade_poll, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @shade_smooth_exec, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !108
  %7 = icmp eq i32 %6, %2
  %8 = icmp eq i32 %6, 0
  %9 = or i1 %7, %8
  br i1 %9, label %30, label %10

10:                                               ; preds = %4
  %11 = and i32 %6, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  switch i32 %6, label %19 [
    i32 2, label %20
    i32 4, label %14
    i32 8, label %15
    i32 16, label %16
    i32 32, label %17
    i32 64, label %18
  ]

14:                                               ; preds = %13
  br label %20

15:                                               ; preds = %13
  br label %20

16:                                               ; preds = %13
  br label %20

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %10, %13, %14, %15, %16, %17, %18, %19
  %21 = phi ptr [ @.str.92, %14 ], [ @.str.93, %15 ], [ @.str.94, %16 ], [ @.str.95, %17 ], [ @.str.22, %18 ], [ null, %19 ], [ @.str.20, %10 ], [ @.str.91, %13 ]
  %22 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %21, i16 noundef signext 7, ptr noundef null) #8
  %23 = load i32, ptr %5, align 8, !tbaa !108
  %24 = icmp eq i32 %23, %2
  %25 = icmp eq i32 %23, 0
  %26 = or i1 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = tail call ptr @WM_operatortype_find(ptr noundef %21, i8 noundef zeroext 0) #8
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef %29) #8
  br label %30

30:                                               ; preds = %4, %20, %27
  %31 = phi i1 [ false, %27 ], [ %26, %20 ], [ true, %4 ]
  %32 = zext i1 %31 to i8
  ret i8 %32
}

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_mode_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_mode_set_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.52, ptr noundef nonnull @object_mode_items, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !145
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @object_mode_set_itemsf) #8
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !72
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54) #8
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_mode_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.52) #8
  %7 = icmp eq ptr %3, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !108
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %2 ]
  %13 = load ptr, ptr %4, align 8, !tbaa !73
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.55) #8
  br i1 %7, label %112, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %6, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !98
  switch i16 %19, label %112 [
    i16 1, label %20
    i16 2, label %23
    i16 3, label %23
    i16 4, label %23
    i16 5, label %23
    i16 22, label %26
    i16 25, label %29
  ]

20:                                               ; preds = %17
  %21 = and i32 %6, 63
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %112, label %32

23:                                               ; preds = %17, %17, %17, %17
  %24 = and i32 %6, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %112, label %32

26:                                               ; preds = %17
  %27 = and i32 %6, 9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %112, label %32

29:                                               ; preds = %17
  %30 = and i32 %6, 65
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %112, label %32

32:                                               ; preds = %29, %26, %23, %20, %15
  %33 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !108
  %35 = icmp eq i32 %34, %6
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !122
  %39 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %6, ptr noundef %38), !range !97
  br label %40

40:                                               ; preds = %36, %32
  br i1 %16, label %62, label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %33, align 8, !tbaa !108
  %43 = icmp ne i32 %42, %6
  %44 = and i32 %14, 255
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = and i32 %6, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  switch i32 %6, label %56 [
    i32 2, label %57
    i32 4, label %51
    i32 8, label %52
    i32 16, label %53
    i32 32, label %54
    i32 64, label %55
  ]

51:                                               ; preds = %50
  br label %57

52:                                               ; preds = %50
  br label %57

53:                                               ; preds = %50
  br label %57

54:                                               ; preds = %50
  br label %57

55:                                               ; preds = %50
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %55, %54, %53, %52, %51, %50, %47
  %58 = phi i1 [ false, %51 ], [ false, %52 ], [ false, %53 ], [ false, %54 ], [ false, %55 ], [ true, %56 ], [ false, %47 ], [ false, %50 ]
  %59 = phi ptr [ @.str.92, %51 ], [ @.str.93, %52 ], [ @.str.94, %53 ], [ @.str.95, %54 ], [ @.str.22, %55 ], [ null, %56 ], [ @.str.20, %47 ], [ @.str.91, %50 ]
  br i1 %58, label %62, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %59, i16 noundef signext 7, ptr noundef null) #8
  br label %62

62:                                               ; preds = %60, %57, %41, %40
  %63 = and i32 %14, 255
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %112, label %65

65:                                               ; preds = %62
  %66 = icmp eq i32 %12, 0
  %67 = select i1 %16, i1 %66, i1 false
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 28
  %70 = load i32, ptr %69, align 4, !tbaa !107
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %68
  %73 = and i32 %70, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  switch i32 %70, label %81 [
    i32 2, label %82
    i32 4, label %76
    i32 8, label %77
    i32 16, label %78
    i32 32, label %79
    i32 64, label %80
  ]

76:                                               ; preds = %75
  br label %82

77:                                               ; preds = %75
  br label %82

78:                                               ; preds = %75
  br label %82

79:                                               ; preds = %75
  br label %82

80:                                               ; preds = %75
  br label %82

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %80, %79, %78, %77, %76, %75, %72
  %83 = phi i1 [ false, %76 ], [ false, %77 ], [ false, %78 ], [ false, %79 ], [ false, %80 ], [ true, %81 ], [ false, %72 ], [ false, %75 ]
  %84 = phi ptr [ @.str.92, %76 ], [ @.str.93, %77 ], [ @.str.94, %78 ], [ @.str.95, %79 ], [ @.str.22, %80 ], [ null, %81 ], [ @.str.20, %72 ], [ @.str.91, %75 ]
  br i1 %83, label %112, label %85

85:                                               ; preds = %82
  %86 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %84, i16 noundef signext 7, ptr noundef null) #8
  br label %112

87:                                               ; preds = %68, %65
  %88 = load i32, ptr %33, align 8, !tbaa !108
  %89 = icmp eq i32 %88, %6
  %90 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 28
  br i1 %89, label %91, label %92

91:                                               ; preds = %87
  store i32 %12, ptr %90, align 4, !tbaa !107
  br label %112

92:                                               ; preds = %87
  %93 = load i32, ptr %90, align 4, !tbaa !107
  %94 = icmp eq i32 %93, 0
  %95 = icmp eq i32 %93, %6
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %112, label %97

97:                                               ; preds = %92
  %98 = and i32 %93, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  switch i32 %93, label %106 [
    i32 2, label %107
    i32 4, label %101
    i32 8, label %102
    i32 16, label %103
    i32 32, label %104
    i32 64, label %105
  ]

101:                                              ; preds = %100
  br label %107

102:                                              ; preds = %100
  br label %107

103:                                              ; preds = %100
  br label %107

104:                                              ; preds = %100
  br label %107

105:                                              ; preds = %100
  br label %107

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %105, %104, %103, %102, %101, %100, %97
  %108 = phi i1 [ false, %101 ], [ false, %102 ], [ false, %103 ], [ false, %104 ], [ false, %105 ], [ true, %106 ], [ false, %97 ], [ false, %100 ]
  %109 = phi ptr [ @.str.92, %101 ], [ @.str.93, %102 ], [ @.str.94, %103 ], [ @.str.95, %104 ], [ @.str.22, %105 ], [ null, %106 ], [ @.str.20, %97 ], [ @.str.91, %100 ]
  br i1 %108, label %112, label %110

110:                                              ; preds = %107
  %111 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %109, i16 noundef signext 7, ptr noundef null) #8
  br label %112

112:                                              ; preds = %17, %20, %23, %26, %29, %110, %107, %85, %82, %62, %91, %92, %11
  %113 = phi i32 [ 8, %11 ], [ 4, %92 ], [ 4, %91 ], [ 4, %62 ], [ 4, %82 ], [ 4, %85 ], [ 4, %107 ], [ 4, %110 ], [ 8, %29 ], [ 8, %26 ], [ 8, %23 ], [ 8, %20 ], [ 8, %17 ]
  ret i32 %113
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @object_mode_set_itemsf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !146
  %7 = icmp eq ptr %0, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 109
  %13 = load ptr, ptr %12, align 8, !tbaa !147
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 111
  %17 = load ptr, ptr %16, align 8, !tbaa !148
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call ptr @modifiers_findByType(ptr noundef nonnull %9, i32 noundef 22) #8
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %19, %15, %11
  %23 = phi i1 [ true, %15 ], [ true, %11 ], [ %21, %19 ]
  %24 = load ptr, ptr getelementptr inbounds ([0 x %struct.EnumPropertyItem], ptr @object_mode_items, i64 0, i64 0, i32 1), align 8, !tbaa !149
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %28 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  br label %30

30:                                               ; preds = %26, %57
  %31 = phi ptr [ @object_mode_items, %26 ], [ %58, %57 ]
  %32 = load i32, ptr %31, align 8, !tbaa !151
  switch i32 %32, label %43 [
    i32 1, label %33
    i32 64, label %37
  ]

33:                                               ; preds = %30
  %34 = load i16, ptr %27, align 8, !tbaa !98
  switch i16 %34, label %35 [
    i16 1, label %56
    i16 4, label %56
    i16 2, label %56
    i16 3, label %56
    i16 5, label %56
    i16 22, label %56
    i16 25, label %56
  ]

35:                                               ; preds = %33
  %36 = icmp eq i32 %32, 64
  br i1 %36, label %37, label %43

37:                                               ; preds = %30, %35
  %38 = load i16, ptr %28, align 8, !tbaa !98
  %39 = icmp eq i16 %38, 25
  %40 = icmp eq i32 %32, 32
  %41 = select i1 %40, i1 %23, i1 false
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %56, label %46

43:                                               ; preds = %30, %35
  %44 = icmp eq i32 %32, 32
  %45 = select i1 %44, i1 %23, i1 false
  br i1 %45, label %56, label %46

46:                                               ; preds = %37, %43
  %47 = add i32 %32, -2
  %48 = call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 31)
  switch i32 %48, label %54 [
    i32 0, label %49
    i32 1, label %49
    i32 3, label %49
    i32 7, label %49
  ]

49:                                               ; preds = %46, %46, %46, %46
  %50 = load i16, ptr %29, align 8, !tbaa !98
  %51 = icmp eq i16 %50, 1
  %52 = icmp eq i32 %32, 0
  %53 = or i1 %52, %51
  br i1 %53, label %56, label %57

54:                                               ; preds = %46
  %55 = icmp eq i32 %32, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %43, %54, %49, %37
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %31) #8
  br label %57

57:                                               ; preds = %49, %56, %54
  %58 = getelementptr inbounds %struct.EnumPropertyItem, ptr %31, i64 1
  %59 = getelementptr inbounds %struct.EnumPropertyItem, ptr %31, i64 1, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !149
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %30, !llvm.loop !152

62:                                               ; preds = %8
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @object_mode_items, i32 noundef 0) #8
  br label %63

63:                                               ; preds = %57, %22, %62
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  store i8 1, ptr %3, align 1, !tbaa !153
  %64 = load ptr, ptr %5, align 8, !tbaa !54
  br label %65

65:                                               ; preds = %4, %63
  %66 = phi ptr [ %64, %63 ], [ @object_mode_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret ptr %66
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_game_property_new(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @game_property_new_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.60, ptr noundef nonnull @gameproperty_type_items, i32 noundef 2, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @game_property_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.60) #8
  %8 = tail call ptr @BKE_bproperty_new(i32 noundef %7) #8
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 91
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #8
  %10 = load ptr, ptr %5, align 8, !tbaa !73
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef nonnull %3) #8
  %11 = load i8, ptr %3, align 16, !tbaa !153
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bProperty, ptr %8, i64 0, i32 2
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %3, i64 noundef 64) #8
  br label %16

16:                                               ; preds = %13, %2
  call void @BKE_bproperty_unique(ptr noundef null, ptr noundef %8, i32 noundef 0) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret i32 4
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_game_property_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.68, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @game_property_remove_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 2147483647) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @game_property_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.69) #8
  %7 = icmp eq ptr %3, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 91
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %9, i32 noundef %6) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  tail call void @BKE_bproperty_free(ptr noundef nonnull %10) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #8
  br label %13

13:                                               ; preds = %8, %2, %12
  %14 = phi i32 [ 4, %12 ], [ 2, %2 ], [ 2, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_game_property_copy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @game_property_copy_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.75, ptr noundef nonnull @game_properties_copy_operations, i32 noundef 3, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.54) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.77, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #8
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 805306368) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %11, ptr noundef nonnull @gameprops_itemf) #8
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !145
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @game_property_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @RNA_Object) #8
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call ptr @CTX_data_active_object(ptr noundef nonnull %0) #8
  br label %13

13:                                               ; preds = %2, %7, %11
  %14 = phi ptr [ %9, %7 ], [ %12, %11 ], [ null, %2 ]
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = call i32 @RNA_enum_get(ptr noundef %16, ptr noundef nonnull @.str.75) #8
  %18 = load ptr, ptr %15, align 8, !tbaa !73
  %19 = call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.77) #8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 91
  %23 = add nsw i32 %19, -1
  %24 = call ptr @BLI_findlink(ptr noundef nonnull %22, i32 noundef %23) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %27 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #8
  %28 = load ptr, ptr %4, align 8, !tbaa !54
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %36
  %31 = phi ptr [ %37, %36 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.CollectionPointerLink, ptr %31, i64 0, i32 2, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = icmp eq ptr %14, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  call void @BKE_bproperty_object_set(ptr noundef %33, ptr noundef nonnull %24) #8
  br label %36

36:                                               ; preds = %35, %30
  %37 = load ptr, ptr %31, align 8, !tbaa !54
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !154

39:                                               ; preds = %36, %26
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %67

40:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %41 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %5) #8
  %42 = load ptr, ptr %5, align 8, !tbaa !54
  %43 = icmp eq ptr %42, null
  br i1 %43, label %66, label %44

44:                                               ; preds = %40
  %45 = icmp eq i32 %17, 1
  %46 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 91
  %47 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 91
  br label %48

48:                                               ; preds = %44, %63
  %49 = phi ptr [ %42, %44 ], [ %64, %63 ]
  %50 = getelementptr inbounds %struct.CollectionPointerLink, ptr %49, i64 0, i32 2, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  %52 = icmp eq ptr %14, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  br i1 %45, label %54, label %56

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 91
  call void @BKE_bproperty_copy_list(ptr noundef nonnull %55, ptr noundef nonnull %47) #8
  br label %63

56:                                               ; preds = %53
  %57 = load ptr, ptr %46, align 8, !tbaa !54
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56, %59
  %60 = phi ptr [ %61, %59 ], [ %57, %56 ]
  call void @BKE_bproperty_object_set(ptr noundef %51, ptr noundef nonnull %60) #8
  %61 = load ptr, ptr %60, align 8, !tbaa !54
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %59, !llvm.loop !155

63:                                               ; preds = %59, %56, %54, %48
  %64 = load ptr, ptr %49, align 8, !tbaa !54
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %48, !llvm.loop !156

66:                                               ; preds = %63, %40
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  br label %67

67:                                               ; preds = %21, %39, %66
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal ptr @gameprops_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = icmp eq ptr %0, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @RNA_Object) #8
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call ptr @CTX_data_active_object(ptr noundef nonnull %0) #8
  br label %16

16:                                               ; preds = %4, %10, %14
  %17 = phi ptr [ %12, %10 ], [ %15, %14 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) @__const.gameprops_itemf.tmp, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store ptr null, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !tbaa !146
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 91
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  %25 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %21, %23 ], [ %31, %26 ]
  %28 = phi i32 [ 1, %23 ], [ %30, %26 ]
  store i32 %28, ptr %6, align 8, !tbaa !151
  %29 = getelementptr inbounds %struct.bProperty, ptr %27, i64 0, i32 2
  store ptr %29, ptr %24, align 8, !tbaa !149
  store ptr %29, ptr %25, align 8, !tbaa !157
  call void @RNA_enum_item_add(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #8
  %30 = add nuw nsw i32 %28, 1
  %31 = load ptr, ptr %27, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !158

33:                                               ; preds = %26, %19
  call void @RNA_enum_item_end(ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  store i8 1, ptr %3, align 1, !tbaa !153
  %34 = load ptr, ptr %7, align 8, !tbaa !54
  br label %35

35:                                               ; preds = %16, %33
  %36 = phi ptr [ %34, %33 ], [ @DummyRNA_NULL_items, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #8
  ret ptr %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_game_property_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.80, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.82, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @game_property_clear_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @game_property_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #8
  %5 = load ptr, ptr %3, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.CollectionPointerLink, ptr %8, i64 0, i32 2, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 91
  call void @BKE_bproperty_free_list(ptr noundef nonnull %11) #8
  %12 = load ptr, ptr %8, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !159

14:                                               ; preds = %7, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_logic_bricks_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.83, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.84, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.85, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @logicbricks_copy_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @logicbricks_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @RNA_Object) #8
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call ptr @CTX_data_active_object(ptr noundef nonnull %0) #8
  br label %12

12:                                               ; preds = %2, %6, %10
  %13 = phi ptr [ %8, %6 ], [ %11, %10 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %14 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #8
  %15 = load ptr, ptr %4, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 92
  %19 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 93
  %20 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 94
  %21 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 62
  %22 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 61
  %23 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 123
  %24 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 124
  %25 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 31
  %26 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 32
  br label %27

27:                                               ; preds = %17, %51
  %28 = phi ptr [ %15, %17 ], [ %52, %51 ]
  %29 = getelementptr inbounds %struct.CollectionPointerLink, ptr %28, i64 0, i32 2, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = icmp eq ptr %13, %30
  br i1 %31, label %51, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 92
  call void @free_sensors(ptr noundef nonnull %33) #8
  %34 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 93
  call void @unlink_controllers(ptr noundef nonnull %34) #8
  call void @free_controllers(ptr noundef nonnull %34) #8
  %35 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 94
  call void @unlink_actuators(ptr noundef nonnull %35) #8
  call void @free_actuators(ptr noundef nonnull %35) #8
  call void @clear_sca_new_poins_ob(ptr noundef %13) #8
  call void @copy_sensors(ptr noundef nonnull %33, ptr noundef nonnull %18) #8
  call void @copy_controllers(ptr noundef nonnull %34, ptr noundef nonnull %19) #8
  call void @copy_actuators(ptr noundef nonnull %35, ptr noundef nonnull %20) #8
  call void @set_sca_new_poins_ob(ptr noundef %30) #8
  %36 = load i8, ptr %21, align 2, !tbaa !160
  %37 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 62
  store i8 %36, ptr %37, align 2, !tbaa !160
  %38 = load i16, ptr %22, align 4, !tbaa !161
  %39 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 61
  store i16 %38, ptr %39, align 4, !tbaa !161
  %40 = load i32, ptr %23, align 8, !tbaa !162
  %41 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 123
  store i32 %40, ptr %41, align 8, !tbaa !162
  %42 = load i32, ptr %24, align 4, !tbaa !163
  %43 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 124
  store i32 %42, ptr %43, align 4, !tbaa !163
  %44 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 31
  %45 = load i32, ptr %44, align 8, !tbaa !164
  %46 = load i32, ptr %25, align 8, !tbaa !164
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load i32, ptr %26, align 4, !tbaa !165
  %50 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 32
  store i32 %49, ptr %50, align 4, !tbaa !165
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %30) #8
  br label %51

51:                                               ; preds = %32, %48, %27
  %52 = load ptr, ptr %28, align 8, !tbaa !54
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %27, !llvm.loop !166

54:                                               ; preds = %51, %12
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_game_physics_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.86, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.88, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @game_physics_copy_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @game_physics_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @RNA_Object) #8
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call ptr @CTX_data_active_object(ptr noundef nonnull %0) #8
  br label %12

12:                                               ; preds = %2, %6, %10
  %13 = phi ptr [ %8, %6 ], [ %11, %10 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %14 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #8
  %15 = load ptr, ptr %4, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %89, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 99
  %19 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 100
  %20 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 71
  %21 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 72
  %22 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 70
  %23 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 73
  %24 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 76
  %25 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 75
  %26 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 77
  %27 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 69
  %28 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 105
  %29 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 105, i64 1
  %30 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 105, i64 2
  %31 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 85
  %32 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 74
  %33 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 101
  %34 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 102
  %35 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 81
  %36 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 82
  br label %37

37:                                               ; preds = %17, %86
  %38 = phi ptr [ %15, %17 ], [ %87, %86 ]
  %39 = getelementptr inbounds %struct.CollectionPointerLink, ptr %38, i64 0, i32 2, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  %41 = icmp eq ptr %13, %40
  br i1 %41, label %86, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %18, align 8, !tbaa !167
  %44 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 99
  store i32 %43, ptr %44, align 8, !tbaa !167
  %45 = load i32, ptr %19, align 4, !tbaa !168
  %46 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 100
  store i32 %45, ptr %46, align 4, !tbaa !168
  %47 = load float, ptr %20, align 4, !tbaa !169
  %48 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 71
  store float %47, ptr %48, align 4, !tbaa !169
  %49 = load float, ptr %21, align 8, !tbaa !170
  %50 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 72
  store float %49, ptr %50, align 8, !tbaa !170
  %51 = load float, ptr %22, align 8, !tbaa !171
  %52 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 70
  store float %51, ptr %52, align 8, !tbaa !171
  %53 = load float, ptr %23, align 4, !tbaa !172
  %54 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 73
  store float %53, ptr %54, align 4, !tbaa !172
  %55 = load float, ptr %24, align 8, !tbaa !173
  %56 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 76
  store float %55, ptr %56, align 8, !tbaa !173
  %57 = load float, ptr %25, align 4, !tbaa !174
  %58 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 75
  store float %57, ptr %58, align 4, !tbaa !174
  %59 = load float, ptr %26, align 4, !tbaa !175
  %60 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 77
  store float %59, ptr %60, align 4, !tbaa !175
  %61 = load float, ptr %27, align 4, !tbaa !176
  %62 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 69
  store float %61, ptr %62, align 4, !tbaa !176
  %63 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 105
  %64 = load float, ptr %28, align 4, !tbaa !177
  store float %64, ptr %63, align 4, !tbaa !177
  %65 = load float, ptr %29, align 4, !tbaa !177
  %66 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 105, i64 1
  store float %65, ptr %66, align 4, !tbaa !177
  %67 = load float, ptr %30, align 4, !tbaa !177
  %68 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 105, i64 2
  store float %67, ptr %68, align 4, !tbaa !177
  %69 = load i8, ptr %31, align 1, !tbaa !178
  %70 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 85
  store i8 %69, ptr %70, align 1, !tbaa !178
  %71 = load float, ptr %32, align 8, !tbaa !179
  %72 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 74
  store float %71, ptr %72, align 8, !tbaa !179
  %73 = load ptr, ptr %33, align 8, !tbaa !180
  %74 = call ptr @copy_bulletsoftbody(ptr noundef %73) #8
  %75 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 101
  store ptr %74, ptr %75, align 8, !tbaa !180
  %76 = load i8, ptr %34, align 8, !tbaa !62
  %77 = and i8 %76, 4
  %78 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 102
  %79 = load i8, ptr %78, align 8, !tbaa !62
  %80 = and i8 %79, -5
  %81 = or disjoint i8 %80, %77
  store i8 %81, ptr %78, align 8, !tbaa !62
  %82 = load i16, ptr %35, align 4, !tbaa !181
  %83 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 81
  store i16 %82, ptr %83, align 4, !tbaa !181
  %84 = load i16, ptr %36, align 2, !tbaa !182
  %85 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 82
  store i16 %84, ptr %85, align 2, !tbaa !182
  br label %86

86:                                               ; preds = %42, %37
  %87 = load ptr, ptr %38, align 8, !tbaa !54
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %37, !llvm.loop !183

89:                                               ; preds = %86, %12
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 4
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CTX_data_visible_bases(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_free(ptr noundef) local_unnamed_addr #1

declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @ED_mesh_mirror_topo_table(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #1

declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #1

declare void @load_editNurb(ptr noundef) local_unnamed_addr #1

declare void @free_editNurb(ptr noundef) local_unnamed_addr #1

declare void @load_editText(ptr noundef) local_unnamed_addr #1

declare void @free_editText(ptr noundef) local_unnamed_addr #1

declare void @load_editLatt(ptr noundef) local_unnamed_addr #1

declare void @free_editLatt(ptr noundef) local_unnamed_addr #1

declare void @load_editMball(ptr noundef) local_unnamed_addr #1

declare void @free_editMball(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

declare void @ED_space_image_uv_sculpt_update(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare void @ED_armature_enter_posemode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_armature_exit_posemode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_add_collision_fields(i32 noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @animviz_verify_motionpaths(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare void @BKE_mesh_smooth_flag_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_bproperty_new(i32 noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BKE_bproperty_unique(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_bproperty_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_bproperty_object_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_bproperty_copy_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @BKE_bproperty_free_list(ptr noundef) local_unnamed_addr #1

declare void @free_sensors(ptr noundef) local_unnamed_addr #1

declare void @unlink_controllers(ptr noundef) local_unnamed_addr #1

declare void @free_controllers(ptr noundef) local_unnamed_addr #1

declare void @unlink_actuators(ptr noundef) local_unnamed_addr #1

declare void @free_actuators(ptr noundef) local_unnamed_addr #1

declare void @clear_sca_new_poins_ob(ptr noundef) local_unnamed_addr #1

declare void @copy_sensors(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @copy_controllers(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @copy_actuators(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @set_sca_new_poins_ob(ptr noundef) local_unnamed_addr #1

declare ptr @copy_bulletsoftbody(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !37, i64 0}
!41 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !44, i64 184}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!44 = !{!"short", !38, i64 0}
!45 = !{!41, !37, i64 24}
!46 = !{!41, !37, i64 8}
!47 = !{!41, !37, i64 32}
!48 = !{!41, !37, i64 72}
!49 = !{!41, !44, i64 184}
!50 = !{!51, !37, i64 96}
!51 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !52, i64 56, !38, i64 72, !38, i64 73, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !44, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!52 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!53 = !{!"int", !38, i64 0}
!54 = !{!37, !37, i64 0}
!55 = !{!56, !53, i64 224}
!56 = !{!"View3D", !37, i64 0, !37, i64 8, !42, i64 16, !53, i64 32, !57, i64 36, !38, i64 40, !38, i64 56, !57, i64 72, !57, i64 76, !38, i64 80, !38, i64 81, !53, i64 84, !53, i64 88, !44, i64 92, !44, i64 94, !37, i64 96, !37, i64 104, !58, i64 112, !42, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !53, i64 224, !53, i64 228, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !44, i64 240, !44, i64 242, !57, i64 244, !57, i64 248, !57, i64 252, !57, i64 256, !38, i64 260, !38, i64 272, !44, i64 284, !44, i64 286, !44, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !42, i64 296, !42, i64 312, !42, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!57 = !{!"float", !38, i64 0}
!58 = !{!"rctf", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!59 = !{!60, !53, i64 16}
!60 = !{!"Base", !37, i64 0, !37, i64 8, !53, i64 16, !53, i64 20, !53, i64 24, !44, i64 28, !44, i64 30, !37, i64 32}
!61 = !{!60, !37, i64 32}
!62 = !{!63, !38, i64 1160}
!63 = !{!"Object", !64, i64 0, !37, i64 120, !37, i64 128, !44, i64 136, !44, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !65, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !53, i64 432, !53, i64 436, !37, i64 440, !37, i64 448, !53, i64 456, !53, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !57, i64 616, !57, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !53, i64 944, !44, i64 948, !44, i64 950, !44, i64 952, !44, i64 954, !44, i64 956, !44, i64 958, !44, i64 960, !44, i64 962, !44, i64 964, !38, i64 966, !38, i64 967, !53, i64 968, !53, i64 972, !53, i64 976, !53, i64 980, !53, i64 984, !57, i64 988, !57, i64 992, !57, i64 996, !57, i64 1000, !57, i64 1004, !57, i64 1008, !57, i64 1012, !57, i64 1016, !57, i64 1020, !57, i64 1024, !57, i64 1028, !57, i64 1032, !44, i64 1036, !44, i64 1038, !44, i64 1040, !38, i64 1042, !38, i64 1043, !44, i64 1044, !38, i64 1046, !38, i64 1047, !57, i64 1048, !57, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !57, i64 1120, !44, i64 1124, !44, i64 1126, !38, i64 1128, !53, i64 1144, !53, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !44, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !44, i64 1266, !57, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !66, i64 1304, !66, i64 1312, !53, i64 1320, !53, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!64 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !44, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !37, i64 112}
!65 = !{!"bAnimVizSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!66 = !{!"long", !38, i64 0}
!67 = !{!60, !53, i64 24}
!68 = !{!63, !44, i64 948}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!41, !37, i64 88}
!73 = !{!74, !37, i64 112}
!74 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !44, i64 160, !38, i64 162}
!75 = !{!76, !37, i64 32}
!76 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !35, i64 16}
!77 = !{!78, !37, i64 168}
!78 = !{!"Scene", !64, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !44, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !79, i64 280, !86, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !44, i64 4376, !44, i64 4378, !53, i64 4380, !42, i64 4384, !87, i64 4400, !88, i64 4416, !91, i64 4600, !37, i64 4608, !92, i64 4616, !37, i64 4640, !66, i64 4648, !66, i64 4656, !81, i64 4664, !82, i64 4824, !93, i64 4888, !37, i64 4952}
!79 = !{!"RenderData", !80, i64 0, !37, i64 248, !37, i64 256, !83, i64 264, !84, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !57, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !44, i64 432, !44, i64 434, !57, i64 436, !57, i64 440, !57, i64 444, !57, i64 448, !57, i64 452, !44, i64 456, !44, i64 458, !44, i64 460, !44, i64 462, !44, i64 464, !44, i64 466, !53, i64 468, !44, i64 472, !44, i64 474, !44, i64 476, !44, i64 478, !44, i64 480, !44, i64 482, !53, i64 484, !53, i64 488, !44, i64 492, !44, i64 494, !53, i64 496, !53, i64 500, !44, i64 504, !44, i64 506, !44, i64 508, !44, i64 510, !44, i64 512, !38, i64 514, !38, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !44, i64 528, !44, i64 530, !44, i64 532, !44, i64 534, !44, i64 536, !44, i64 538, !44, i64 540, !44, i64 542, !58, i64 544, !58, i64 560, !52, i64 576, !42, i64 592, !44, i64 608, !44, i64 610, !57, i64 612, !57, i64 616, !57, i64 620, !57, i64 624, !53, i64 628, !57, i64 632, !57, i64 636, !57, i64 640, !57, i64 644, !44, i64 648, !44, i64 650, !44, i64 652, !44, i64 654, !44, i64 656, !44, i64 658, !57, i64 660, !57, i64 664, !44, i64 668, !44, i64 670, !57, i64 672, !57, i64 676, !38, i64 680, !53, i64 1704, !44, i64 1708, !44, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !53, i64 2520, !44, i64 2524, !44, i64 2526, !57, i64 2528, !57, i64 2532, !44, i64 2536, !44, i64 2538, !57, i64 2540, !44, i64 2544, !44, i64 2546, !53, i64 2548, !44, i64 2552, !44, i64 2554, !44, i64 2556, !44, i64 2558, !57, i64 2560, !57, i64 2564, !37, i64 2568, !53, i64 2576, !57, i64 2580, !38, i64 2584, !85, i64 2616, !53, i64 3976, !53, i64 3980}
!80 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !44, i64 8, !44, i64 10, !57, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !81, i64 24, !82, i64 184}
!81 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !38, i64 8, !38, i64 72, !57, i64 136, !57, i64 140, !37, i64 144, !37, i64 152}
!82 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!83 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !44, i64 48, !44, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!84 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !57, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !37, i64 64}
!85 = !{!"BakeData", !80, i64 0, !38, i64 248, !44, i64 1272, !44, i64 1274, !44, i64 1276, !44, i64 1278, !57, i64 1280, !57, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!86 = !{!"AudioData", !53, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !53, i64 16, !44, i64 20, !44, i64 22, !57, i64 24, !57, i64 28}
!87 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!88 = !{!"GameData", !87, i64 0, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !38, i64 34, !89, i64 40, !44, i64 64, !44, i64 66, !57, i64 68, !90, i64 72, !57, i64 128, !57, i64 132, !53, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !44, i64 160, !44, i64 162, !57, i64 164, !57, i64 168, !57, i64 172, !57, i64 176, !57, i64 180}
!89 = !{!"GameDome", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !57, i64 8, !57, i64 12, !37, i64 16}
!90 = !{!"RecastData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !53, i64 40, !57, i64 44, !57, i64 48, !44, i64 52, !44, i64 54}
!91 = !{!"UnitSettings", !57, i64 0, !38, i64 4, !38, i64 5, !44, i64 6}
!92 = !{!"PhysicsSettings", !38, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!93 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!94 = distinct !{!94, !70, !71}
!95 = distinct !{!95, !70, !71}
!96 = distinct !{!96, !70, !71}
!97 = !{i8 0, i8 2}
!98 = !{!63, !44, i64 136}
!99 = !{!63, !37, i64 296}
!100 = !{!101, !37, i64 272}
!101 = !{!"Mesh", !64, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !102, i64 280, !102, i64 480, !102, i64 680, !102, i64 880, !102, i64 1080, !53, i64 1280, !53, i64 1284, !53, i64 1288, !53, i64 1292, !53, i64 1296, !53, i64 1300, !53, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !53, i64 1344, !44, i64 1348, !44, i64 1350, !57, i64 1352, !53, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !44, i64 1366, !37, i64 1368}
!102 = !{!"CustomData", !37, i64 0, !38, i64 8, !53, i64 172, !53, i64 176, !53, i64 180, !37, i64 184, !37, i64 192}
!103 = !{!104, !37, i64 0}
!104 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !53, i64 16, !37, i64 24, !53, i64 32, !37, i64 40, !37, i64 48, !66, i64 56, !37, i64 64, !53, i64 72, !37, i64 80, !53, i64 88, !44, i64 92, !44, i64 94, !37, i64 96, !53, i64 104}
!105 = !{!106, !53, i64 0}
!106 = !{!"BMesh", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !53, i64 88, !53, i64 92, !53, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !53, i64 128, !37, i64 136, !102, i64 144, !102, i64 344, !102, i64 544, !102, i64 744, !44, i64 944, !53, i64 948, !53, i64 952, !53, i64 956, !42, i64 960, !37, i64 976, !42, i64 984, !37, i64 1000}
!107 = !{!63, !53, i64 436}
!108 = !{!63, !53, i64 432}
!109 = !{!78, !37, i64 176}
!110 = !{!111, !53, i64 40}
!111 = !{!"PTCacheID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !53, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192}
!112 = !{!111, !37, i64 176}
!113 = !{!114, !53, i64 16}
!114 = !{!"PointCache", !37, i64 0, !37, i64 8, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !44, i64 60, !44, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !42, i64 1288, !37, i64 1304, !37, i64 1312}
!115 = distinct !{!115, !70, !71}
!116 = !{!78, !37, i64 24}
!117 = !{!51, !38, i64 72}
!118 = !{!78, !53, i64 232}
!119 = !{!78, !37, i64 264}
!120 = !{!121, !37, i64 24}
!121 = !{!"bArmature", !64, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !44, i64 208, !44, i64 210, !53, i64 212, !53, i64 216, !53, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !53, i64 232, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252}
!122 = !{!74, !37, i64 120}
!123 = !{!64, !37, i64 24}
!124 = !{!63, !37, i64 1240}
!125 = !{!126, !44, i64 10}
!126 = !{!"PartDeflect", !53, i64 0, !44, i64 4, !44, i64 6, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !57, i64 64, !57, i64 68, !57, i64 72, !57, i64 76, !57, i64 80, !57, i64 84, !57, i64 88, !57, i64 92, !57, i64 96, !57, i64 100, !57, i64 104, !57, i64 108, !57, i64 112, !57, i64 116, !57, i64 120, !57, i64 124, !37, i64 128, !37, i64 136, !57, i64 144, !53, i64 148, !37, i64 152}
!127 = !{!126, !44, i64 6}
!128 = !{!63, !44, i64 334}
!129 = distinct !{!129, !70, !71}
!130 = !{!41, !37, i64 48}
!131 = !{!65, !53, i64 32}
!132 = !{!65, !53, i64 36}
!133 = !{!134, !44, i64 8948}
!134 = !{!"UserDef", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !53, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !53, i64 8484, !53, i64 8488, !53, i64 8492, !44, i64 8496, !44, i64 8498, !53, i64 8500, !53, i64 8504, !53, i64 8508, !53, i64 8512, !53, i64 8516, !53, i64 8520, !53, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !38, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !53, i64 8912, !53, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !57, i64 8956, !57, i64 8960, !53, i64 8964, !44, i64 8968, !44, i64 8970, !57, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !135, i64 8984, !38, i64 9760, !38, i64 9772, !44, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !53, i64 10896, !53, i64 10900, !57, i64 10904, !57, i64 10908, !53, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !136, i64 10928}
!135 = !{!"ColorBand", !44, i64 0, !44, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!136 = !{!"WalkNavigation", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !44, i64 24, !38, i64 26}
!137 = distinct !{!137, !70, !71}
!138 = !{!63, !37, i64 360}
!139 = !{!63, !44, i64 342}
!140 = distinct !{!140, !70, !71}
!141 = !{!142, !44, i64 22}
!142 = !{!"Nurb", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !53, i64 24, !53, i64 28, !38, i64 32, !44, i64 36, !44, i64 38, !44, i64 40, !44, i64 42, !44, i64 44, !44, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !44, i64 80, !44, i64 82, !53, i64 84}
!143 = distinct !{!143, !70, !71}
!144 = distinct !{!144, !70, !71}
!145 = !{!41, !37, i64 104}
!146 = !{!53, !53, i64 0}
!147 = !{!42, !37, i64 0}
!148 = !{!63, !37, i64 1248}
!149 = !{!150, !37, i64 8}
!150 = !{!"EnumPropertyItem", !53, i64 0, !37, i64 8, !53, i64 16, !37, i64 24, !37, i64 32}
!151 = !{!150, !53, i64 0}
!152 = distinct !{!152, !70, !71}
!153 = !{!38, !38, i64 0}
!154 = distinct !{!154, !70, !71}
!155 = distinct !{!155, !70, !71}
!156 = distinct !{!156, !70, !71}
!157 = !{!150, !37, i64 24}
!158 = distinct !{!158, !70, !71}
!159 = distinct !{!159, !70, !71}
!160 = !{!63, !38, i64 966}
!161 = !{!63, !44, i64 964}
!162 = !{!63, !53, i64 1320}
!163 = !{!63, !53, i64 1324}
!164 = !{!63, !53, i64 456}
!165 = !{!63, !53, i64 460}
!166 = distinct !{!166, !70, !71}
!167 = !{!63, !53, i64 1144}
!168 = !{!63, !53, i64 1148}
!169 = !{!63, !57, i64 996}
!170 = !{!63, !57, i64 1000}
!171 = !{!63, !57, i64 992}
!172 = !{!63, !57, i64 1004}
!173 = !{!63, !57, i64 1016}
!174 = !{!63, !57, i64 1012}
!175 = !{!63, !57, i64 1020}
!176 = !{!63, !57, i64 988}
!177 = !{!57, !57, i64 0}
!178 = !{!63, !38, i64 1043}
!179 = !{!63, !57, i64 1008}
!180 = !{!63, !37, i64 1152}
!181 = !{!63, !44, i64 1036}
!182 = !{!63, !44, i64 1038}
!183 = distinct !{!183, !70, !71}
