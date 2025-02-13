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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_object_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @RNA_Object) #11
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  ret ptr %4
}

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_object_active_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %3, %6, %1
  %9 = phi ptr [ %4, %3 ], [ %7, %6 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_hide_view_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !50 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %13 = load i32, ptr %12, align 8, !tbaa !56
  br label %14

14:                                               ; preds = %42, %11
  %15 = phi ptr [ %47, %42 ], [ %9, %11 ]
  %16 = phi i1 [ false, %42 ], [ true, %11 ]
  br label %17

17:                                               ; preds = %14, %39
  %18 = phi ptr [ %40, %39 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !60
  %21 = and i32 %13, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 102
  %27 = load i8, ptr %26, align 8, !tbaa !63
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 102
  %33 = and i32 %28, 2
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !68
  br i1 %34, label %37, label %42

37:                                               ; preds = %31
  %38 = or i32 %36, 1
  store i32 %38, ptr %35, align 8, !tbaa !68
  br label %42

39:                                               ; preds = %17, %23
  %40 = load ptr, ptr %18, align 8, !tbaa !55
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %17, !llvm.loop !69

42:                                               ; preds = %31, %37
  %43 = phi i32 [ %38, %37 ], [ %36, %31 ]
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 53
  store i16 %44, ptr %45, align 4, !tbaa !71
  %46 = and i8 %27, -2
  store i8 %46, ptr %32, align 8, !tbaa !63
  %47 = load ptr, ptr %18, align 8, !tbaa !55
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %14, !llvm.loop !69

49:                                               ; preds = %39
  br i1 %16, label %51, label %50

50:                                               ; preds = %42, %49
  tail call void @DAG_id_type_tag(ptr noundef %3, i16 noundef signext 16975) #11
  tail call void @DAG_relations_tag_update(ptr noundef %3) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %7) #11
  br label %51

51:                                               ; preds = %2, %50, %49
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_hide_view_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !73 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %9 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #11
  %10 = load ptr, ptr %3, align 8, !tbaa !55
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %55

13:                                               ; preds = %2
  %14 = and i32 %8, 255
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  br label %17

17:                                               ; preds = %13, %48
  %18 = phi ptr [ %10, %13 ], [ %50, %48 ]
  %19 = phi i8 [ 0, %13 ], [ %49, %48 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !68
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %15, label %26, label %38

26:                                               ; preds = %17
  br i1 %25, label %48, label %27

27:                                               ; preds = %26
  %28 = and i32 %23, -2
  store i32 %28, ptr %22, align 8, !tbaa !68
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 53
  store i16 %29, ptr %32, align 4, !tbaa !71
  %33 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 102
  %34 = load i8, ptr %33, align 8, !tbaa !63
  %35 = or i8 %34, 1
  store i8 %35, ptr %33, align 8, !tbaa !63
  %36 = load ptr, ptr %16, align 8, !tbaa !78
  %37 = icmp eq ptr %21, %36
  br i1 %37, label %47, label %48

38:                                               ; preds = %17
  br i1 %25, label %39, label %48

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 102
  %43 = load i8, ptr %42, align 8, !tbaa !63
  %44 = or i8 %43, 1
  store i8 %44, ptr %42, align 8, !tbaa !63
  %45 = load ptr, ptr %16, align 8, !tbaa !78
  %46 = icmp eq ptr %21, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %27
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef null) #11
  br label %48

48:                                               ; preds = %47, %38, %39, %26, %27
  %49 = phi i8 [ %19, %38 ], [ 1, %39 ], [ 1, %27 ], [ %19, %26 ], [ 1, %47 ]
  %50 = load ptr, ptr %18, align 8, !tbaa !55
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %17, !llvm.loop !95

52:                                               ; preds = %48
  %53 = icmp eq i8 %49, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  call void @DAG_id_type_tag(ptr noundef %4, i16 noundef signext 16975) #11
  call void @DAG_relations_tag_update(ptr noundef %4) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %5) #11
  br label %55

55:                                               ; preds = %12, %54, %52
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_hide_render_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !96 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #11
  %5 = load ptr, ptr %3, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %26

8:                                                ; preds = %2, %19
  %9 = phi ptr [ %21, %19 ], [ %5, %2 ]
  %10 = phi i8 [ %20, %19 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 102
  %14 = load i8, ptr %13, align 8, !tbaa !63
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = and i8 %14, -5
  store i8 %18, ptr %13, align 8, !tbaa !63
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i8 [ 1, %17 ], [ %10, %8 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !55
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !97

23:                                               ; preds = %19
  %24 = icmp eq i8 %20, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252182528, ptr noundef null) #11
  br label %26

26:                                               ; preds = %7, %25, %23
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_hide_render_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !98 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %7 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #11
  %8 = load ptr, ptr %3, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = and i32 %6, 255
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %10, %29
  %14 = phi ptr [ %8, %10 ], [ %30, %29 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %12, label %21, label %22

21:                                               ; preds = %13
  br i1 %20, label %29, label %23

22:                                               ; preds = %13
  br i1 %20, label %23, label %29

23:                                               ; preds = %22, %21
  %24 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 102
  %27 = load i8, ptr %26, align 8, !tbaa !63
  %28 = or i8 %27, 4
  store i8 %28, ptr %26, align 8, !tbaa !63
  br label %29

29:                                               ; preds = %23, %22, %21
  %30 = load ptr, ptr %14, align 8, !tbaa !55
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !99

32:                                               ; preds = %29, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252182528, ptr noundef null) #11
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_object_editmode_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ED_object_editmode_load_ex(ptr noundef %0, i8 noundef zeroext 0) #12, !range !100
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ED_object_editmode_load_ex(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !101 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !102
  switch i16 %6, label %47 [
    i16 1, label %7
    i16 25, label %29
    i16 2, label %35
    i16 3, label %35
    i16 4, label %38
    i16 22, label %41
    i16 5, label %44
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = load i32, ptr %12, align 8, !tbaa !109
  %14 = icmp sgt i32 %13, 2000000000
  br i1 %14, label %50, label %15

15:                                               ; preds = %7
  tail call void @EDBM_mesh_load(ptr noundef nonnull %0) #11
  %16 = icmp eq i8 %1, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %10, align 8, !tbaa !104
  tail call void @EDBM_mesh_free(ptr noundef %18) #11
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  %20 = load ptr, ptr %10, align 8, !tbaa !104
  tail call void %19(ptr noundef %20) #11
  store ptr null, ptr %10, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %17, %15
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 28
  %23 = load i32, ptr %22, align 4, !tbaa !111
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #11
  %28 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #11
  br label %47

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  tail call void @ED_armature_from_edit(ptr noundef %31) #11
  %32 = icmp eq i8 %1, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %30, align 8, !tbaa !103
  tail call void @ED_armature_edit_free(ptr noundef %34) #11
  br label %47

35:                                               ; preds = %4, %4
  tail call void @load_editNurb(ptr noundef nonnull %0) #11
  %36 = icmp eq i8 %1, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %35
  tail call void @free_editNurb(ptr noundef nonnull %0) #11
  br label %47

38:                                               ; preds = %4
  tail call void @load_editText(ptr noundef nonnull %0) #11
  %39 = icmp eq i8 %1, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  tail call void @free_editText(ptr noundef nonnull %0) #11
  br label %47

41:                                               ; preds = %4
  tail call void @load_editLatt(ptr noundef nonnull %0) #11
  %42 = icmp eq i8 %1, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  tail call void @free_editLatt(ptr noundef nonnull %0) #11
  br label %47

44:                                               ; preds = %4
  tail call void @load_editMball(ptr noundef nonnull %0) #11
  %45 = icmp eq i8 %1, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  tail call void @free_editMball(ptr noundef nonnull %0) #11
  br label %47

47:                                               ; preds = %26, %21, %4, %33, %29, %40, %38, %46, %44, %41, %43, %35, %37
  %48 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !103
  tail call void @DAG_id_tag_update(ptr noundef %49, i16 noundef signext 0) #11
  br label %50

50:                                               ; preds = %7, %2, %47
  %51 = phi i8 [ 1, %47 ], [ 0, %2 ], [ 0, %7 ]
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_editmode_exit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %6 = trunc i32 %1 to i8
  %7 = and i8 %6, 1
  %8 = tail call fastcc zeroext i8 @ED_object_editmode_load_ex(ptr noundef %5, i8 noundef zeroext %7) #12, !range !100
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !112
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %14
  %22 = and i32 %18, -2
  store i32 %22, ptr %17, align 8, !tbaa !112
  br label %52

23:                                               ; preds = %2
  %24 = icmp eq i8 %7, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %26 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 7
  store ptr null, ptr %26, align 8, !tbaa !113
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %3, ptr noundef %5, ptr noundef %4, i32 noundef 0) #11
  %27 = load ptr, ptr %3, align 8, !tbaa !55
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25, %40
  %30 = phi ptr [ %41, %40 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !114
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %30, i64 0, i32 25
  %36 = load ptr, ptr %35, align 8, !tbaa !116
  %37 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !117
  %39 = or i32 %38, 2
  store i32 %39, ptr %37, align 8, !tbaa !117
  br label %40

40:                                               ; preds = %29, %34
  %41 = load ptr, ptr %30, align 8, !tbaa !55
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %29, !llvm.loop !119

43:                                               ; preds = %40, %25
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  %44 = call i32 @BKE_ptcache_object_reset(ptr noundef %4, ptr noundef %5, i32 noundef 2) #11
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 3) #11
  %45 = and i32 %1, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.16) #11
  br label %48

48:                                               ; preds = %47, %43
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef %4) #11
  %49 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %50 = load i32, ptr %49, align 8, !tbaa !112
  %51 = and i32 %50, -2
  store i32 %51, ptr %49, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %52

52:                                               ; preds = %23, %48, %10, %14, %21
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_ptcache_object_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_editmode_enter(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %100

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !121
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %14, %10, %8
  %18 = phi ptr [ %16, %14 ], [ null, %10 ], [ null, %8 ]
  %19 = and i32 %1, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = tail call ptr @CTX_data_active_base(ptr noundef %0) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %100, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %18, null
  %26 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !60
  br i1 %25, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 22
  %30 = load i32, ptr %29, align 8, !tbaa !56
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %100, label %42

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  %35 = load i32, ptr %34, align 8, !tbaa !122
  %36 = and i32 %35, %27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %100, label %42

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !78
  %41 = icmp eq ptr %40, null
  br i1 %41, label %100, label %42

42:                                               ; preds = %28, %33, %38
  %43 = phi ptr [ %40, %38 ], [ %22, %33 ], [ %22, %28 ]
  %44 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  %46 = icmp eq ptr %45, null
  br i1 %46, label %100, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !103
  %50 = icmp eq ptr %49, null
  br i1 %50, label %100, label %51

51:                                               ; preds = %47
  %52 = tail call zeroext i8 @BKE_object_is_in_editmode(ptr noundef nonnull %45) #11
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %51
  %55 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef nonnull %45) #11
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 27
  %59 = load i32, ptr %58, align 8, !tbaa !112
  %60 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 28
  store i32 %59, ptr %60, align 4, !tbaa !111
  %61 = and i32 %59, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef %59) #12
  br label %64

64:                                               ; preds = %63, %57
  store i32 1, ptr %58, align 8, !tbaa !112
  %65 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 3
  %66 = load i16, ptr %65, align 8, !tbaa !102
  switch i16 %66, label %94 [
    i16 1, label %67
    i16 25, label %75
    i16 4, label %84
    i16 5, label %86
    i16 22, label %88
    i16 3, label %90
    i16 2, label %90
  ]

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %45, ptr %68, align 8, !tbaa !113
  %69 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %70 = load ptr, ptr %69, align 8, !tbaa !123
  tail call void @EDBM_mesh_make(ptr noundef %70, ptr noundef nonnull %45) #11
  %71 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %45) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %67
  tail call void @EDBM_mesh_normals_update(ptr noundef nonnull %71) #11
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %71) #11
  %74 = load ptr, ptr %71, align 8, !tbaa !107
  tail call void @BM_mesh_select_mode_flush(ptr noundef %74) #11
  br label %92

75:                                               ; preds = %64
  %76 = load ptr, ptr %48, align 8, !tbaa !103
  %77 = icmp eq ptr %76, null
  br i1 %77, label %100, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ID, ptr %76, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !124
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %45, ptr %83, align 8, !tbaa !113
  tail call void @ED_armature_to_edit(ptr noundef nonnull %76) #11
  tail call void @DAG_id_tag_update(ptr noundef nonnull %45, i16 noundef signext 7) #11
  br label %92

84:                                               ; preds = %64
  %85 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %45, ptr %85, align 8, !tbaa !113
  tail call void @make_editText(ptr noundef nonnull %45) #11
  br label %92

86:                                               ; preds = %64
  %87 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %45, ptr %87, align 8, !tbaa !113
  tail call void @make_editMball(ptr noundef nonnull %45) #11
  br label %92

88:                                               ; preds = %64
  %89 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %45, ptr %89, align 8, !tbaa !113
  tail call void @make_editLatt(ptr noundef nonnull %45) #11
  br label %92

90:                                               ; preds = %64, %64
  %91 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr %45, ptr %91, align 8, !tbaa !113
  tail call void @make_editNurb(ptr noundef nonnull %45) #11
  br label %92

92:                                               ; preds = %67, %73, %82, %84, %86, %88, %90
  %93 = phi i32 [ 67831808, %82 ], [ 67831040, %84 ], [ 67831296, %86 ], [ 67831552, %88 ], [ 67830528, %90 ], [ 67830272, %73 ], [ 67830272, %67 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %93, ptr noundef nonnull %3) #11
  tail call void @DAG_id_tag_update(ptr noundef nonnull %45, i16 noundef signext 2) #11
  br label %96

94:                                               ; preds = %64
  %95 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  store ptr null, ptr %95, align 8, !tbaa !113
  store i32 0, ptr %58, align 8, !tbaa !112
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef nonnull %3) #11
  br label %96

96:                                               ; preds = %94, %92
  %97 = and i32 %1, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.17) #11
  br label %100

100:                                              ; preds = %96, %99, %78, %75, %54, %51, %38, %42, %47, %33, %28, %21, %2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_in_editmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_toggle_modes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc ptr @object_mode_op_string(i32 noundef %1) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext 7, ptr noundef null) #11
  br label %9

9:                                                ; preds = %4, %7, %2
  ret void
}

; Function Attrs: optsize
declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_select_mode_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_armature_to_edit(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_editText(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_editMball(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_editLatt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_editNurb(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @editmode_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !126 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = icmp eq ptr %3, null
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  br i1 %4, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef %11, i32 noundef 1, ptr noundef %13) #12, !range !100
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %6
  tail call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 4) #12
  br label %18

17:                                               ; preds = %2
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 7) #12
  br label %18

18:                                               ; preds = %17, %16
  %19 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  tail call void @ED_space_image_uv_sculpt_update(ptr noundef %19, ptr noundef %5) #11
  br label %20

20:                                               ; preds = %6, %18
  %21 = phi i32 [ 4, %18 ], [ 2, %6 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @editmode_toggle_poll(ptr noundef %0) #0 !PGOFuncName !128 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %14 = load i8, ptr %13, align 8, !tbaa !63
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %19 = load i32, ptr %18, align 8, !tbaa !112
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !102
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @posemode_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !130 {
  %3 = tail call ptr @CTX_data_active_base(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !112
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 64, ptr noundef %12) #12, !range !100
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10, %2
  %16 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !102
  %18 = icmp eq i16 %17, 25
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %21 = icmp eq ptr %5, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 9) #12
  tail call void @ED_armature_enter_posemode(ptr noundef %0, ptr noundef nonnull %3) #11
  br label %26

23:                                               ; preds = %19
  br i1 %9, label %25, label %24

24:                                               ; preds = %23
  tail call void @ED_armature_exit_posemode(ptr noundef %0, ptr noundef nonnull %3) #11
  br label %26

25:                                               ; preds = %23
  tail call void @ED_armature_enter_posemode(ptr noundef %0, ptr noundef nonnull %3) #11
  br label %26

26:                                               ; preds = %15, %22, %25, %24, %10
  %27 = phi i32 [ 2, %10 ], [ 4, %24 ], [ 4, %25 ], [ 4, %22 ], [ 8, %15 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_check_force_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 110
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  %6 = tail call ptr @modifiers_findByType(ptr noundef %2, i32 noundef 30) #11
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %5, null
  br i1 %7, label %9, label %26

9:                                                ; preds = %3
  br i1 %8, label %37, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !132
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !134
  %17 = add i16 %16, -7
  %18 = icmp ult i16 %17, -2
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = add i16 %21, -1
  %23 = icmp ult i16 %22, 4
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = tail call ptr @ED_object_modifier_add(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, i32 noundef 30) #11
  br label %37

26:                                               ; preds = %3
  br i1 %8, label %35, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 4
  %29 = load i16, ptr %28, align 2, !tbaa !132
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !134
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %27, %26
  %36 = tail call zeroext i8 @ED_object_modifier_remove(ptr noundef null, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %6) #11
  br label %37

37:                                               ; preds = %19, %31, %35, %9, %10, %14, %24
  ret void
}

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_object_modifier_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_object_modifier_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @forcefield_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !135 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @object_add_collision_fields(i32 noundef 1) #11
  store ptr %8, ptr %4, align 8, !tbaa !131
  br label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PartDeflect, ptr %5, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !134
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i16 1, ptr %10, align 2, !tbaa !134
  br label %15

14:                                               ; preds = %9
  store i16 0, ptr %10, align 2, !tbaa !134
  br label %15

15:                                               ; preds = %13, %14, %7
  %16 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  tail call void @ED_object_check_force_modifiers(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %3) #12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %3) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef nonnull %3) #11
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_objects_recalculate_paths(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #11
  %6 = load ptr, ptr %4, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %15, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 21, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !136
  %14 = or i16 %13, 1
  store i16 %14, ptr %12, align 2, !tbaa !136
  call void @animviz_get_object_motionpaths(ptr noundef %11, ptr noundef nonnull %3) #11
  %15 = load ptr, ptr %9, align 8, !tbaa !55
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !137

17:                                               ; preds = %8, %2
  call void @BLI_freelistN(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @animviz_calc_motionpaths(ptr noundef %1, ptr noundef nonnull %3) #11
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @animviz_get_object_motionpaths(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @animviz_calc_motionpaths(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_paths_calculate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !40
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @object_calculate_paths_invoke, ptr %4, align 8, !tbaa !138
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_calculate_paths_exec, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 150000) #11
  %11 = load ptr, ptr %8, align 8, !tbaa !72
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.33, i32 noundef 250, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 150000) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @object_calculate_paths_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !139 {
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 21, i32 12
  %10 = load i32, ptr %9, align 4, !tbaa !140
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef %10) #11
  %11 = load ptr, ptr %7, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 21, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !141
  tail call void @RNA_int_set(ptr noundef %11, ptr noundef nonnull @.str.33, i32 noundef %13) #11
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !142
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, 10
  %17 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef %16) #11
  br label %18

18:                                               ; preds = %3, %6
  %19 = phi i32 [ %17, %6 ], [ 2, %3 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_calculate_paths_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !146 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.30) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !74
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.33) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %10 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #11
  %11 = load ptr, ptr %3, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %11, %13 ], [ %23, %15 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 21, i32 12
  store i32 %7, ptr %19, align 4, !tbaa !140
  %20 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 21, i32 13
  store i32 %9, ptr %20, align 4, !tbaa !141
  %21 = load ptr, ptr %14, align 8, !tbaa !127
  %22 = call ptr @animviz_verify_motionpaths(ptr noundef %21, ptr noundef %4, ptr noundef %18, ptr noundef null) #11
  %23 = load ptr, ptr %16, align 8, !tbaa !55
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %15, !llvm.loop !147

25:                                               ; preds = %15, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @ED_objects_recalculate_paths(ptr noundef %0, ptr noundef %4) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #11
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_update_paths_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !148 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @ED_objects_recalculate_paths(ptr noundef %0, ptr noundef nonnull %3) #12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #11
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_objects_clear_paths(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %3 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %2) #11
  %4 = load ptr, ptr %2, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.CollectionPointerLink, ptr %7, i64 0, i32 2, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !149
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  call void @animviz_free_motionpath(ptr noundef nonnull %11) #11
  store ptr null, ptr %10, align 8, !tbaa !149
  %14 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 21, i32 11
  %15 = load i16, ptr %14, align 2, !tbaa !150
  %16 = and i16 %15, -5
  store i16 %16, ptr %14, align 2, !tbaa !150
  br label %17

17:                                               ; preds = %13, %6
  %18 = load ptr, ptr %7, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !151

20:                                               ; preds = %17, %1
  call void @BLI_freelistN(ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: optsize
declare void @animviz_free_motionpath(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_clear_paths_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !152 {
  tail call void @ED_objects_clear_paths(ptr noundef %0) #12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shade_poll(ptr noundef %0) #0 !PGOFuncName !153 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shade_smooth_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !154 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(21) @.str.44) #14
  %6 = icmp ne i32 %5, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %7 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #11
  %8 = load ptr, ptr %3, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %56

11:                                               ; preds = %2
  %12 = zext i1 %6 to i32
  %13 = zext i1 %6 to i16
  br label %14

14:                                               ; preds = %11, %44
  %15 = phi ptr [ %8, %11 ], [ %47, %44 ]
  %16 = phi i8 [ 0, %11 ], [ %46, %44 ]
  %17 = phi i8 [ 0, %11 ], [ %45, %44 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %23, %14
  %28 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %29 = load i16, ptr %28, align 8, !tbaa !102
  switch i16 %29, label %44 [
    i16 1, label %30
    i16 3, label %31
    i16 2, label %31
  ]

30:                                               ; preds = %27
  call void @BKE_mesh_smooth_flag_set(ptr noundef nonnull %19, i32 noundef %12) #11
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %19) #11
  br label %44

31:                                               ; preds = %27, %27
  %32 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31, %35
  %36 = phi ptr [ %41, %35 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.Nurb, ptr %36, i64 0, i32 5
  %38 = load i16, ptr %37, align 2, !tbaa !155
  %39 = and i16 %38, -2
  %40 = or disjoint i16 %39, %13
  store i16 %40, ptr %37, align 2, !tbaa !155
  %41 = load ptr, ptr %36, align 8, !tbaa !55
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %35, !llvm.loop !157

43:                                               ; preds = %35, %31
  call void @DAG_id_tag_update(ptr noundef %19, i16 noundef signext 2) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %19) #11
  br label %44

44:                                               ; preds = %30, %43, %27, %23
  %45 = phi i8 [ %17, %23 ], [ 1, %30 ], [ 1, %43 ], [ %17, %27 ]
  %46 = phi i8 [ 1, %23 ], [ %16, %30 ], [ %16, %43 ], [ %16, %27 ]
  %47 = load ptr, ptr %15, align 8, !tbaa !55
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %14, !llvm.loop !158

49:                                               ; preds = %44
  %50 = icmp eq i8 %46, 0
  %51 = icmp eq i8 %45, 0
  %52 = select i1 %51, i32 2, i32 4
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br i1 %50, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !127
  call void @BKE_report(ptr noundef %55, i32 noundef 16, ptr noundef nonnull @.str.90) #11
  br label %56

56:                                               ; preds = %10, %53, %49
  %57 = phi i32 [ 2, %10 ], [ %52, %53 ], [ %52, %49 ]
  ret i32 %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !112
  %7 = icmp eq i32 %6, %2
  %8 = icmp eq i32 %6, 0
  %9 = or i1 %7, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @object_mode_op_string(i32 noundef %6) #12
  %12 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %11, i16 noundef signext 7, ptr noundef null) #11
  %13 = load i32, ptr %5, align 8, !tbaa !112
  %14 = icmp ne i32 %13, %2
  %15 = icmp ne i32 %13, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = tail call ptr @WM_operatortype_find(ptr noundef %11, i8 noundef zeroext 0) #11
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef %19) #11
  br label %20

20:                                               ; preds = %4, %10, %17
  %21 = phi i8 [ 0, %17 ], [ 1, %10 ], [ 1, %4 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef ptr @object_mode_op_string(i32 noundef %0) unnamed_addr #5 !PGOFuncName !159 {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  switch i32 %0, label %10 [
    i32 2, label %11
    i32 4, label %5
    i32 8, label %6
    i32 16, label %7
    i32 32, label %8
    i32 64, label %9
  ]

5:                                                ; preds = %4
  br label %11

6:                                                ; preds = %4
  br label %11

7:                                                ; preds = %4
  br label %11

8:                                                ; preds = %4
  br label %11

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %4, %1, %10, %9, %8, %7, %6, %5
  %12 = phi ptr [ @.str.92, %5 ], [ @.str.93, %6 ], [ @.str.94, %7 ], [ @.str.95, %8 ], [ @.str.22, %9 ], [ null, %10 ], [ @.str.20, %1 ], [ @.str.91, %4 ]
  ret ptr %12
}

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.52, ptr noundef nonnull @object_mode_items, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #11
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !160
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @object_mode_set_itemsf) #11
  %11 = load ptr, ptr %10, align 8, !tbaa !160
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !72
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54) #11
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 268435456) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_mode_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !161 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.52) #11
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !74
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.55) #11
  br label %58

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = load ptr, ptr %4, align 8, !tbaa !74
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.55) #11
  %16 = tail call fastcc zeroext i8 @object_mode_compat_test(ptr noundef nonnull %3, i32 noundef %6) #12, !range !100
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %12, align 8, !tbaa !112
  %20 = icmp eq i32 %19, %6
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !127
  %24 = tail call zeroext i8 @ED_object_mode_compat_set(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %6, ptr noundef %23) #12, !range !100
  br label %25

25:                                               ; preds = %21, %18
  %26 = icmp eq i32 %6, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = and i32 %15, 255
  br label %36

29:                                               ; preds = %25
  %30 = load i32, ptr %12, align 8, !tbaa !112
  %31 = icmp ne i32 %30, %6
  %32 = and i32 %15, 255
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef %6) #12
  br label %36

36:                                               ; preds = %27, %35
  %37 = phi i32 [ %28, %27 ], [ %32, %35 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = icmp eq i32 %13, 0
  %41 = select i1 %26, i1 %40, i1 false
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 28
  %44 = load i32, ptr %43, align 4, !tbaa !111
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef %44) #12
  br label %58

47:                                               ; preds = %42, %39
  %48 = load i32, ptr %12, align 8, !tbaa !112
  %49 = icmp eq i32 %48, %6
  %50 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 28
  br i1 %49, label %51, label %52

51:                                               ; preds = %47
  store i32 %13, ptr %50, align 4, !tbaa !111
  br label %58

52:                                               ; preds = %47
  %53 = load i32, ptr %50, align 4, !tbaa !111
  %54 = icmp eq i32 %53, 0
  %55 = icmp eq i32 %53, %6
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef %53) #12
  br label %58

58:                                               ; preds = %29, %8, %36, %51, %57, %52, %46, %11
  %59 = phi i32 [ 8, %11 ], [ 4, %46 ], [ 4, %52 ], [ 4, %57 ], [ 4, %51 ], [ 4, %36 ], [ 8, %8 ], [ 4, %29 ]
  ret i32 %59
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @object_mode_set_itemsf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !162 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !163
  %7 = icmp eq ptr %0, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 109
  %13 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %12) #12, !range !100
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 111
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call ptr @modifiers_findByType(ptr noundef nonnull %9, i32 noundef 22) #11
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %19, %15, %11
  %23 = phi i1 [ true, %15 ], [ true, %11 ], [ %21, %19 ]
  %24 = load ptr, ptr getelementptr inbounds ([0 x %struct.EnumPropertyItem], ptr @object_mode_items, i64 0, i64 0, i32 1), align 8, !tbaa !165
  %25 = icmp eq ptr %24, null
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  br label %28

28:                                               ; preds = %26, %50
  %29 = phi ptr [ @object_mode_items, %26 ], [ %51, %50 ]
  %30 = load i32, ptr %29, align 8, !tbaa !167
  switch i32 %30, label %36 [
    i32 1, label %31
    i32 64, label %33
  ]

31:                                               ; preds = %28
  %32 = load i16, ptr %27, align 8, !tbaa !102
  switch i16 %32, label %39 [
    i16 1, label %49
    i16 4, label %49
    i16 2, label %49
    i16 3, label %49
    i16 5, label %49
    i16 22, label %49
    i16 25, label %49
  ]

33:                                               ; preds = %28
  %34 = load i16, ptr %27, align 8, !tbaa !102
  %35 = icmp eq i16 %34, 25
  br i1 %35, label %49, label %39

36:                                               ; preds = %28
  %37 = icmp eq i32 %30, 32
  %38 = select i1 %37, i1 %23, i1 false
  br i1 %38, label %49, label %39

39:                                               ; preds = %31, %33, %36
  %40 = add i32 %30, -2
  %41 = call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 31)
  switch i32 %41, label %47 [
    i32 0, label %42
    i32 1, label %42
    i32 3, label %42
    i32 7, label %42
  ]

42:                                               ; preds = %39, %39, %39, %39
  %43 = load i16, ptr %27, align 8, !tbaa !102
  %44 = icmp eq i16 %43, 1
  %45 = icmp eq i32 %30, 0
  %46 = or i1 %45, %44
  br i1 %46, label %49, label %50

47:                                               ; preds = %39
  %48 = icmp eq i32 %30, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %36, %47, %42, %33
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %29) #11
  br label %50

50:                                               ; preds = %42, %49, %47
  %51 = getelementptr inbounds %struct.EnumPropertyItem, ptr %29, i64 1
  %52 = getelementptr inbounds %struct.EnumPropertyItem, ptr %29, i64 1, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !165
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %28, !llvm.loop !168

55:                                               ; preds = %8
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @object_mode_items, i32 noundef 0) #11
  br label %56

56:                                               ; preds = %50, %22, %55
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  store i8 1, ptr %3, align 1, !tbaa !169
  %57 = load ptr, ptr %5, align 8, !tbaa !55
  br label %58

58:                                               ; preds = %4, %56
  %59 = phi ptr [ %57, %56 ], [ @object_mode_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %59
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.60, ptr noundef nonnull @gameproperty_type_items, i32 noundef 2, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @game_property_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !170 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.60) #11
  %8 = tail call ptr @BKE_bproperty_new(i32 noundef %7) #11
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 91
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #11
  %10 = load ptr, ptr %5, align 8, !tbaa !74
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef nonnull %3) #11
  %11 = load i8, ptr %3, align 16, !tbaa !169
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bProperty, ptr %8, i64 0, i32 2
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %3, i64 noundef 64) #11
  br label %16

16:                                               ; preds = %13, %2
  call void @BKE_bproperty_unique(ptr noundef null, ptr noundef %8, i32 noundef 0) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 2147483647) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @game_property_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !171 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.69) #11
  %7 = icmp eq ptr %3, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 91
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %9, i32 noundef %6) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  tail call void @BKE_bproperty_free(ptr noundef nonnull %10) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #11
  br label %13

13:                                               ; preds = %8, %2, %12
  %14 = phi i32 [ 4, %12 ], [ 2, %2 ], [ 2, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.75, ptr noundef nonnull @game_properties_copy_operations, i32 noundef 3, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.54) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.77, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #11
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 805306368) #11
  tail call void @RNA_def_enum_funcs(ptr noundef %11, ptr noundef nonnull @gameprops_itemf) #11
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !160
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @game_property_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !172 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.75) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !74
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.77) #11
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 91
  %14 = add nsw i32 %10, -1
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %13, i32 noundef %14) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %18 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #11
  %19 = load ptr, ptr %3, align 8, !tbaa !55
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17, %27
  %22 = phi ptr [ %28, %27 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.CollectionPointerLink, ptr %22, i64 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = icmp eq ptr %5, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  call void @BKE_bproperty_object_set(ptr noundef %24, ptr noundef nonnull %15) #11
  br label %27

27:                                               ; preds = %26, %21
  %28 = load ptr, ptr %22, align 8, !tbaa !55
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !173

30:                                               ; preds = %27, %17
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %57

31:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %32 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #11
  %33 = load ptr, ptr %4, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = icmp eq i32 %8, 1
  %37 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 91
  br label %38

38:                                               ; preds = %35, %53
  %39 = phi ptr [ %33, %35 ], [ %54, %53 ]
  %40 = getelementptr inbounds %struct.CollectionPointerLink, ptr %39, i64 0, i32 2, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !76
  %42 = icmp eq ptr %5, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  br i1 %36, label %44, label %46

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 91
  call void @BKE_bproperty_copy_list(ptr noundef nonnull %45, ptr noundef nonnull %37) #11
  br label %53

46:                                               ; preds = %43
  %47 = load ptr, ptr %37, align 8, !tbaa !55
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %49
  %50 = phi ptr [ %51, %49 ], [ %47, %46 ]
  call void @BKE_bproperty_object_set(ptr noundef %41, ptr noundef nonnull %50) #11
  %51 = load ptr, ptr %50, align 8, !tbaa !55
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %49, !llvm.loop !174

53:                                               ; preds = %49, %46, %44, %38
  %54 = load ptr, ptr %39, align 8, !tbaa !55
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %38, !llvm.loop !175

56:                                               ; preds = %53, %31
  call void @BLI_freelistN(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %57

57:                                               ; preds = %12, %30, %56
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @gameprops_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !176 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) @__const.gameprops_itemf.tmp, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr null, ptr %6, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !163
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 91
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  %16 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %12, %14 ], [ %22, %17 ]
  %19 = phi i32 [ 1, %14 ], [ %21, %17 ]
  store i32 %19, ptr %5, align 8, !tbaa !167
  %20 = getelementptr inbounds %struct.bProperty, ptr %18, i64 0, i32 2
  store ptr %20, ptr %15, align 8, !tbaa !165
  store ptr %20, ptr %16, align 8, !tbaa !177
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #11
  %21 = add nuw nsw i32 %19, 1
  %22 = load ptr, ptr %18, align 8, !tbaa !55
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !178

24:                                               ; preds = %17, %10
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  store i8 1, ptr %3, align 1, !tbaa !169
  %25 = load ptr, ptr %6, align 8, !tbaa !55
  br label %26

26:                                               ; preds = %4, %24
  %27 = phi ptr [ %25, %24 ], [ @DummyRNA_NULL_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #13
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @game_property_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !179 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #11
  %5 = load ptr, ptr %3, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.CollectionPointerLink, ptr %8, i64 0, i32 2, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 91
  call void @BKE_bproperty_free_list(ptr noundef nonnull %11) #11
  %12 = load ptr, ptr %8, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !180

14:                                               ; preds = %7, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @logicbricks_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !181 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #11
  %6 = load ptr, ptr %3, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 92
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 93
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 94
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 62
  %13 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 61
  %14 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 123
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 31
  %16 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 32
  br label %17

17:                                               ; preds = %8, %39
  %18 = phi ptr [ %6, %8 ], [ %40, %39 ]
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp eq ptr %4, %20
  br i1 %21, label %39, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 92
  call void @free_sensors(ptr noundef nonnull %23) #11
  %24 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 93
  call void @unlink_controllers(ptr noundef nonnull %24) #11
  call void @free_controllers(ptr noundef nonnull %24) #11
  %25 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 94
  call void @unlink_actuators(ptr noundef nonnull %25) #11
  call void @free_actuators(ptr noundef nonnull %25) #11
  call void @clear_sca_new_poins_ob(ptr noundef %4) #11
  call void @copy_sensors(ptr noundef nonnull %23, ptr noundef nonnull %9) #11
  call void @copy_controllers(ptr noundef nonnull %24, ptr noundef nonnull %10) #11
  call void @copy_actuators(ptr noundef nonnull %25, ptr noundef nonnull %11) #11
  call void @set_sca_new_poins_ob(ptr noundef %20) #11
  %26 = load i8, ptr %12, align 2, !tbaa !182
  %27 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 62
  store i8 %26, ptr %27, align 2, !tbaa !182
  %28 = load i16, ptr %13, align 4, !tbaa !183
  %29 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 61
  store i16 %28, ptr %29, align 4, !tbaa !183
  %30 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 123
  %31 = load <2 x i32>, ptr %14, align 8, !tbaa !163
  store <2 x i32> %31, ptr %30, align 8, !tbaa !163
  %32 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 31
  %33 = load i32, ptr %32, align 8, !tbaa !184
  %34 = load i32, ptr %15, align 8, !tbaa !184
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, ptr %16, align 4, !tbaa !185
  %38 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 32
  store i32 %37, ptr %38, align 4, !tbaa !185
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %20) #11
  br label %39

39:                                               ; preds = %22, %36, %17
  %40 = load ptr, ptr %18, align 8, !tbaa !55
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %17, !llvm.loop !186

42:                                               ; preds = %39, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 318767104, ptr noundef null) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @game_physics_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !187 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #11
  %6 = load ptr, ptr %3, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 99
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 73
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 75
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 77
  %13 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 69
  %14 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 105
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 85
  %16 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 74
  %17 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 101
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 102
  %19 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 81
  br label %20

20:                                               ; preds = %8, %52
  %21 = phi ptr [ %6, %8 ], [ %53, %52 ]
  %22 = getelementptr inbounds %struct.CollectionPointerLink, ptr %21, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = icmp eq ptr %4, %23
  br i1 %24, label %52, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 99
  %27 = load <2 x i32>, ptr %9, align 8, !tbaa !163
  store <2 x i32> %27, ptr %26, align 8, !tbaa !163
  %28 = load float, ptr %10, align 4, !tbaa !188
  %29 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 73
  store float %28, ptr %29, align 4, !tbaa !188
  %30 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 75
  %31 = load <2 x float>, ptr %11, align 4, !tbaa !189
  store <2 x float> %31, ptr %30, align 4, !tbaa !189
  %32 = load float, ptr %12, align 4, !tbaa !190
  %33 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 77
  store float %32, ptr %33, align 4, !tbaa !190
  %34 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 69
  %35 = load <4 x float>, ptr %13, align 4, !tbaa !189
  store <4 x float> %35, ptr %34, align 4, !tbaa !189
  %36 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 105
  call fastcc void @copy_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %14) #12
  %37 = load i8, ptr %15, align 1, !tbaa !191
  %38 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 85
  store i8 %37, ptr %38, align 1, !tbaa !191
  %39 = load float, ptr %16, align 8, !tbaa !192
  %40 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 74
  store float %39, ptr %40, align 8, !tbaa !192
  %41 = load ptr, ptr %17, align 8, !tbaa !193
  %42 = call ptr @copy_bulletsoftbody(ptr noundef %41) #11
  %43 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 101
  store ptr %42, ptr %43, align 8, !tbaa !193
  %44 = load i8, ptr %18, align 8, !tbaa !63
  %45 = and i8 %44, 4
  %46 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 102
  %47 = load i8, ptr %46, align 8, !tbaa !63
  %48 = and i8 %47, -5
  %49 = or disjoint i8 %48, %45
  store i8 %49, ptr %46, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 81
  %51 = load <2 x i16>, ptr %19, align 4, !tbaa !194
  store <2 x i16> %51, ptr %50, align 4, !tbaa !194
  br label %52

52:                                               ; preds = %25, %20
  %53 = load ptr, ptr %21, align 8, !tbaa !55
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %20, !llvm.loop !195

55:                                               ; preds = %52, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_data_visible_bases(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_topo_table(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @load_editNurb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_editNurb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @load_editText(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_editText(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @load_editLatt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_editLatt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @load_editMball(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_editMball(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_space_image_uv_sculpt_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_armature_enter_posemode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_armature_exit_posemode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @object_add_collision_fields(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @animviz_verify_motionpaths(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_mesh_smooth_flag_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @object_mode_compat_test(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !196 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !102
  switch i16 %6, label %19 [
    i16 1, label %7
    i16 2, label %10
    i16 3, label %10
    i16 4, label %10
    i16 5, label %10
    i16 22, label %13
    i16 25, label %16
  ]

7:                                                ; preds = %4
  %8 = and i32 %1, 63
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %20

10:                                               ; preds = %4, %4, %4, %4
  %11 = and i32 %1, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %20

13:                                               ; preds = %4
  %14 = and i32 %1, 9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %20

16:                                               ; preds = %4
  %17 = and i32 %1, 65
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4, %7, %10, %13, %16
  br label %20

20:                                               ; preds = %16, %13, %10, %7, %2, %19
  %21 = phi i8 [ 0, %19 ], [ 1, %2 ], [ 1, %7 ], [ 1, %10 ], [ 1, %13 ], [ 1, %16 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !197 {
  %2 = load ptr, ptr %0, align 8, !tbaa !198
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_bproperty_new(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_bproperty_unique(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_bproperty_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_bproperty_object_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_bproperty_copy_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @BKE_bproperty_free_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_sensors(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unlink_controllers(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_controllers(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unlink_actuators(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_actuators(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @clear_sca_new_poins_ob(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_sensors(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_controllers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_actuators(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_sca_new_poins_ob(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !199 {
  %3 = load float, ptr %1, align 4, !tbaa !189
  store float %3, ptr %0, align 4, !tbaa !189
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !189
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !189
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !189
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !189
  ret void
}

; Function Attrs: optsize
declare ptr @copy_bulletsoftbody(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(read) }

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
!50 = !{!"object_edit.c:object_hide_view_clear_exec"}
!51 = !{!52, !37, i64 96}
!52 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !53, i64 56, !38, i64 72, !38, i64 73, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !44, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!53 = !{!"rcti", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!54 = !{!"int", !38, i64 0}
!55 = !{!37, !37, i64 0}
!56 = !{!57, !54, i64 224}
!57 = !{!"View3D", !37, i64 0, !37, i64 8, !42, i64 16, !54, i64 32, !58, i64 36, !38, i64 40, !38, i64 56, !58, i64 72, !58, i64 76, !38, i64 80, !38, i64 81, !54, i64 84, !54, i64 88, !44, i64 92, !44, i64 94, !37, i64 96, !37, i64 104, !59, i64 112, !42, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !54, i64 224, !54, i64 228, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !44, i64 240, !44, i64 242, !58, i64 244, !58, i64 248, !58, i64 252, !58, i64 256, !38, i64 260, !38, i64 272, !44, i64 284, !44, i64 286, !44, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !42, i64 296, !42, i64 312, !42, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!58 = !{!"float", !38, i64 0}
!59 = !{!"rctf", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!60 = !{!61, !54, i64 16}
!61 = !{!"Base", !37, i64 0, !37, i64 8, !54, i64 16, !54, i64 20, !54, i64 24, !44, i64 28, !44, i64 30, !37, i64 32}
!62 = !{!61, !37, i64 32}
!63 = !{!64, !38, i64 1160}
!64 = !{!"Object", !65, i64 0, !37, i64 120, !37, i64 128, !44, i64 136, !44, i64 138, !54, i64 140, !54, i64 144, !54, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !66, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !54, i64 432, !54, i64 436, !37, i64 440, !37, i64 448, !54, i64 456, !54, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !58, i64 616, !58, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !54, i64 944, !44, i64 948, !44, i64 950, !44, i64 952, !44, i64 954, !44, i64 956, !44, i64 958, !44, i64 960, !44, i64 962, !44, i64 964, !38, i64 966, !38, i64 967, !54, i64 968, !54, i64 972, !54, i64 976, !54, i64 980, !54, i64 984, !58, i64 988, !58, i64 992, !58, i64 996, !58, i64 1000, !58, i64 1004, !58, i64 1008, !58, i64 1012, !58, i64 1016, !58, i64 1020, !58, i64 1024, !58, i64 1028, !58, i64 1032, !44, i64 1036, !44, i64 1038, !44, i64 1040, !38, i64 1042, !38, i64 1043, !44, i64 1044, !38, i64 1046, !38, i64 1047, !58, i64 1048, !58, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !58, i64 1120, !44, i64 1124, !44, i64 1126, !38, i64 1128, !54, i64 1144, !54, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !44, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !44, i64 1266, !58, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !67, i64 1304, !67, i64 1312, !54, i64 1320, !54, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!65 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !44, i64 98, !54, i64 100, !54, i64 104, !54, i64 108, !37, i64 112}
!66 = !{!"bAnimVizSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44}
!67 = !{!"long", !38, i64 0}
!68 = !{!61, !54, i64 24}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!64, !44, i64 948}
!72 = !{!41, !37, i64 88}
!73 = !{!"object_edit.c:object_hide_view_set_exec"}
!74 = !{!75, !37, i64 112}
!75 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !44, i64 160, !38, i64 162}
!76 = !{!77, !37, i64 32}
!77 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !35, i64 16}
!78 = !{!79, !37, i64 168}
!79 = !{!"Scene", !65, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !54, i64 232, !54, i64 236, !54, i64 240, !44, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !80, i64 280, !87, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !44, i64 4376, !44, i64 4378, !54, i64 4380, !42, i64 4384, !88, i64 4400, !89, i64 4416, !92, i64 4600, !37, i64 4608, !93, i64 4616, !37, i64 4640, !67, i64 4648, !67, i64 4656, !82, i64 4664, !83, i64 4824, !94, i64 4888, !37, i64 4952}
!80 = !{!"RenderData", !81, i64 0, !37, i64 248, !37, i64 256, !84, i64 264, !85, i64 328, !54, i64 400, !54, i64 404, !54, i64 408, !58, i64 412, !54, i64 416, !54, i64 420, !54, i64 424, !54, i64 428, !44, i64 432, !44, i64 434, !58, i64 436, !58, i64 440, !58, i64 444, !58, i64 448, !58, i64 452, !44, i64 456, !44, i64 458, !44, i64 460, !44, i64 462, !44, i64 464, !44, i64 466, !54, i64 468, !44, i64 472, !44, i64 474, !44, i64 476, !44, i64 478, !44, i64 480, !44, i64 482, !54, i64 484, !54, i64 488, !44, i64 492, !44, i64 494, !54, i64 496, !54, i64 500, !44, i64 504, !44, i64 506, !44, i64 508, !44, i64 510, !44, i64 512, !38, i64 514, !38, i64 515, !54, i64 516, !54, i64 520, !54, i64 524, !44, i64 528, !44, i64 530, !44, i64 532, !44, i64 534, !44, i64 536, !44, i64 538, !44, i64 540, !44, i64 542, !59, i64 544, !59, i64 560, !53, i64 576, !42, i64 592, !44, i64 608, !44, i64 610, !58, i64 612, !58, i64 616, !58, i64 620, !58, i64 624, !54, i64 628, !58, i64 632, !58, i64 636, !58, i64 640, !58, i64 644, !44, i64 648, !44, i64 650, !44, i64 652, !44, i64 654, !44, i64 656, !44, i64 658, !58, i64 660, !58, i64 664, !44, i64 668, !44, i64 670, !58, i64 672, !58, i64 676, !38, i64 680, !54, i64 1704, !44, i64 1708, !44, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !54, i64 2520, !44, i64 2524, !44, i64 2526, !58, i64 2528, !58, i64 2532, !44, i64 2536, !44, i64 2538, !58, i64 2540, !44, i64 2544, !44, i64 2546, !54, i64 2548, !44, i64 2552, !44, i64 2554, !44, i64 2556, !44, i64 2558, !58, i64 2560, !58, i64 2564, !37, i64 2568, !54, i64 2576, !58, i64 2580, !38, i64 2584, !86, i64 2616, !54, i64 3976, !54, i64 3980}
!81 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !44, i64 8, !44, i64 10, !58, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !82, i64 24, !83, i64 184}
!82 = !{!"ColorManagedViewSettings", !54, i64 0, !54, i64 4, !38, i64 8, !38, i64 72, !58, i64 136, !58, i64 140, !37, i64 144, !37, i64 152}
!83 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!84 = !{!"QuicktimeCodecSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !44, i64 48, !44, i64 50, !54, i64 52, !54, i64 56, !54, i64 60}
!85 = !{!"FFMpegCodecData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !58, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !37, i64 64}
!86 = !{!"BakeData", !81, i64 0, !38, i64 248, !44, i64 1272, !44, i64 1274, !44, i64 1276, !44, i64 1278, !58, i64 1280, !58, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!87 = !{!"AudioData", !54, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !54, i64 16, !44, i64 20, !44, i64 22, !58, i64 24, !58, i64 28}
!88 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!89 = !{!"GameData", !88, i64 0, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !38, i64 34, !90, i64 40, !44, i64 64, !44, i64 66, !58, i64 68, !91, i64 72, !58, i64 128, !58, i64 132, !54, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !44, i64 160, !44, i64 162, !58, i64 164, !58, i64 168, !58, i64 172, !58, i64 176, !58, i64 180}
!90 = !{!"GameDome", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !58, i64 8, !58, i64 12, !37, i64 16}
!91 = !{!"RecastData", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !54, i64 40, !58, i64 44, !58, i64 48, !44, i64 52, !44, i64 54}
!92 = !{!"UnitSettings", !58, i64 0, !38, i64 4, !38, i64 5, !44, i64 6}
!93 = !{!"PhysicsSettings", !38, i64 0, !54, i64 12, !54, i64 16, !54, i64 20}
!94 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!95 = distinct !{!95, !70}
!96 = !{!"object_edit.c:object_hide_render_clear_exec"}
!97 = distinct !{!97, !70}
!98 = !{!"object_edit.c:object_hide_render_set_exec"}
!99 = distinct !{!99, !70}
!100 = !{i8 0, i8 2}
!101 = !{!"object_edit.c:ED_object_editmode_load_ex"}
!102 = !{!64, !44, i64 136}
!103 = !{!64, !37, i64 296}
!104 = !{!105, !37, i64 272}
!105 = !{!"Mesh", !65, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !106, i64 280, !106, i64 480, !106, i64 680, !106, i64 880, !106, i64 1080, !54, i64 1280, !54, i64 1284, !54, i64 1288, !54, i64 1292, !54, i64 1296, !54, i64 1300, !54, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !54, i64 1344, !44, i64 1348, !44, i64 1350, !58, i64 1352, !54, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !44, i64 1366, !37, i64 1368}
!106 = !{!"CustomData", !37, i64 0, !38, i64 8, !54, i64 172, !54, i64 176, !54, i64 180, !37, i64 184, !37, i64 192}
!107 = !{!108, !37, i64 0}
!108 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !54, i64 16, !37, i64 24, !54, i64 32, !37, i64 40, !37, i64 48, !67, i64 56, !37, i64 64, !54, i64 72, !37, i64 80, !54, i64 88, !44, i64 92, !44, i64 94, !37, i64 96, !54, i64 104}
!109 = !{!110, !54, i64 0}
!110 = !{!"BMesh", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !54, i64 88, !54, i64 92, !54, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !54, i64 128, !37, i64 136, !106, i64 144, !106, i64 344, !106, i64 544, !106, i64 744, !44, i64 944, !54, i64 948, !54, i64 952, !54, i64 956, !42, i64 960, !37, i64 976, !42, i64 984, !37, i64 1000}
!111 = !{!64, !54, i64 436}
!112 = !{!64, !54, i64 432}
!113 = !{!79, !37, i64 176}
!114 = !{!115, !54, i64 40}
!115 = !{!"PTCacheID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !54, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192}
!116 = !{!115, !37, i64 176}
!117 = !{!118, !54, i64 16}
!118 = !{!"PointCache", !37, i64 0, !37, i64 8, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !44, i64 60, !44, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !42, i64 1288, !37, i64 1304, !37, i64 1312}
!119 = distinct !{!119, !70}
!120 = !{!79, !37, i64 24}
!121 = !{!52, !38, i64 72}
!122 = !{!79, !54, i64 232}
!123 = !{!79, !37, i64 264}
!124 = !{!125, !37, i64 24}
!125 = !{!"bArmature", !65, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !54, i64 192, !54, i64 196, !54, i64 200, !54, i64 204, !44, i64 208, !44, i64 210, !54, i64 212, !54, i64 216, !54, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !54, i64 232, !54, i64 236, !54, i64 240, !54, i64 244, !54, i64 248, !54, i64 252}
!126 = !{!"object_edit.c:editmode_toggle_exec"}
!127 = !{!75, !37, i64 120}
!128 = !{!"object_edit.c:editmode_toggle_poll"}
!129 = !{!65, !37, i64 24}
!130 = !{!"object_edit.c:posemode_exec"}
!131 = !{!64, !37, i64 1240}
!132 = !{!133, !44, i64 10}
!133 = !{!"PartDeflect", !54, i64 0, !44, i64 4, !44, i64 6, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !58, i64 64, !58, i64 68, !58, i64 72, !58, i64 76, !58, i64 80, !58, i64 84, !58, i64 88, !58, i64 92, !58, i64 96, !58, i64 100, !58, i64 104, !58, i64 108, !58, i64 112, !58, i64 116, !58, i64 120, !58, i64 124, !37, i64 128, !37, i64 136, !58, i64 144, !54, i64 148, !37, i64 152}
!134 = !{!133, !44, i64 6}
!135 = !{!"object_edit.c:forcefield_toggle_exec"}
!136 = !{!64, !44, i64 334}
!137 = distinct !{!137, !70}
!138 = !{!41, !37, i64 48}
!139 = !{!"object_edit.c:object_calculate_paths_invoke"}
!140 = !{!66, !54, i64 32}
!141 = !{!66, !54, i64 36}
!142 = !{!143, !44, i64 8948}
!143 = !{!"UserDef", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !54, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !54, i64 8484, !54, i64 8488, !54, i64 8492, !44, i64 8496, !44, i64 8498, !54, i64 8500, !54, i64 8504, !54, i64 8508, !54, i64 8512, !54, i64 8516, !54, i64 8520, !54, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !38, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !54, i64 8912, !54, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !58, i64 8956, !58, i64 8960, !54, i64 8964, !44, i64 8968, !44, i64 8970, !58, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !144, i64 8984, !38, i64 9760, !38, i64 9772, !44, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !54, i64 10896, !54, i64 10900, !58, i64 10904, !58, i64 10908, !54, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !145, i64 10928}
!144 = !{!"ColorBand", !44, i64 0, !44, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!145 = !{!"WalkNavigation", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !44, i64 24, !38, i64 26}
!146 = !{!"object_edit.c:object_calculate_paths_exec"}
!147 = distinct !{!147, !70}
!148 = !{!"object_edit.c:object_update_paths_exec"}
!149 = !{!64, !37, i64 360}
!150 = !{!64, !44, i64 342}
!151 = distinct !{!151, !70}
!152 = !{!"object_edit.c:object_clear_paths_exec"}
!153 = !{!"object_edit.c:shade_poll"}
!154 = !{!"object_edit.c:shade_smooth_exec"}
!155 = !{!156, !44, i64 22}
!156 = !{!"Nurb", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !54, i64 24, !54, i64 28, !38, i64 32, !44, i64 36, !44, i64 38, !44, i64 40, !44, i64 42, !44, i64 44, !44, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !44, i64 80, !44, i64 82, !54, i64 84}
!157 = distinct !{!157, !70}
!158 = distinct !{!158, !70}
!159 = !{!"object_edit.c:object_mode_op_string"}
!160 = !{!41, !37, i64 104}
!161 = !{!"object_edit.c:object_mode_set_exec"}
!162 = !{!"object_edit.c:object_mode_set_itemsf"}
!163 = !{!54, !54, i64 0}
!164 = !{!64, !37, i64 1248}
!165 = !{!166, !37, i64 8}
!166 = !{!"EnumPropertyItem", !54, i64 0, !37, i64 8, !54, i64 16, !37, i64 24, !37, i64 32}
!167 = !{!166, !54, i64 0}
!168 = distinct !{!168, !70}
!169 = !{!38, !38, i64 0}
!170 = !{!"object_edit.c:game_property_new_exec"}
!171 = !{!"object_edit.c:game_property_remove_exec"}
!172 = !{!"object_edit.c:game_property_copy_exec"}
!173 = distinct !{!173, !70}
!174 = distinct !{!174, !70}
!175 = distinct !{!175, !70}
!176 = !{!"object_edit.c:gameprops_itemf"}
!177 = !{!166, !37, i64 24}
!178 = distinct !{!178, !70}
!179 = !{!"object_edit.c:game_property_clear_exec"}
!180 = distinct !{!180, !70}
!181 = !{!"object_edit.c:logicbricks_copy_exec"}
!182 = !{!64, !38, i64 966}
!183 = !{!64, !44, i64 964}
!184 = !{!64, !54, i64 456}
!185 = !{!64, !54, i64 460}
!186 = distinct !{!186, !70}
!187 = !{!"object_edit.c:game_physics_copy_exec"}
!188 = !{!64, !58, i64 1004}
!189 = !{!58, !58, i64 0}
!190 = !{!64, !58, i64 1020}
!191 = !{!64, !38, i64 1043}
!192 = !{!64, !58, i64 1008}
!193 = !{!64, !37, i64 1152}
!194 = !{!44, !44, i64 0}
!195 = distinct !{!195, !70}
!196 = !{!"object_edit.c:object_mode_compat_test"}
!197 = !{!"object_edit.c:BLI_listbase_is_empty"}
!198 = !{!42, !37, i64 0}
!199 = !{!"object_edit.c:copy_v3_v3"}
