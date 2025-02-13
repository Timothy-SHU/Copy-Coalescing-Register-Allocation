; ModuleID = 'blender/source/blender/editors/space_view3d/space_view3d.c'
source_filename = "blender/source/blender/editors/space_view3d/space_view3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.BGpic = type { ptr, ptr, ptr, %struct.ImageUser, ptr, %struct.MovieClipUser, float, float, float, float, i16, i16, i16, i16 }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.ViewDepths = type { i16, i16, i16, i16, ptr, [2 x double], i8 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"buttons for view3d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"tools for view3d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"tool props for view3d\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"selected_objects\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"selected_bases\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"selected_editable_objects\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"selected_editable_bases\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"visible_objects\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"visible_bases\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"selectable_objects\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"selectable_bases\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"active_base\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"active_object\00", align 1
@view3d_context_dir = dso_local global [11 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr null], align 16
@.str.13 = private unnamed_addr constant [17 x i8] c"spacetype view3d\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"View3D\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"spacetype view3d main region\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"spacetype view3d buttons region\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"spacetype view3d tools region\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"spacetype view3d tool properties region\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"spacetype view3d header region\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"initview3d\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"header for view3d\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"toolshelf for view3d\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"tool properties for view3d\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"main area for view3d\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"region view3d\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [20 x i8] c"OBJECT_OT_add_named\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_drop_named_material\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"MESH_OT_drop_named_image\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_drop_named_image\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"VIEW3D_OT_background_image_add\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_group_instance_add\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@RNA_ObjectBase = external global %struct.StructRNA, align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"Face Mask\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Weight Paint Vertex Selection\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Pose\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Object Mode\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Image Paint\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"Vertex Paint\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Weight Paint\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"Sculpt\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Metaball\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"Object Non-modal\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"3D View Generic\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"3D View\00", align 1
@str = private unnamed_addr constant [65 x i8] c"View3D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @view3d_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #7
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 4, ptr %11, align 2, !tbaa !9
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 4, ptr %12, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !19
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @view3d_has_tools_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %15, %5 ], [ %3, %1 ]
  %7 = phi ptr [ %14, %5 ], [ null, %1 ]
  %8 = phi ptr [ %12, %5 ], [ null, %1 ]
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !9
  %11 = icmp eq i16 %10, 5
  %12 = select i1 %11, ptr %6, ptr %8
  %13 = icmp eq i16 %10, 6
  %14 = select i1 %13, ptr %6, ptr %7
  %15 = load ptr, ptr %6, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !20

17:                                               ; preds = %5
  %18 = icmp ne ptr %14, null
  %19 = icmp ne ptr %12, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %48, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %12, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %1, %21
  %24 = phi ptr [ %14, %21 ], [ null, %1 ]
  br label %25

25:                                               ; preds = %23, %29
  %26 = phi ptr [ %27, %29 ], [ %2, %23 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !9
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %25, !llvm.loop !22

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %35 = tail call ptr %34(i64 noundef 384, ptr noundef nonnull @.str.1) #7
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef nonnull %27, ptr noundef %35) #7
  %36 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 8
  store i16 5, ptr %36, align 2, !tbaa !9
  %37 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 9
  store i16 3, ptr %37, align 8, !tbaa !18
  %38 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 10
  store i16 1, ptr %38, align 2, !tbaa !19
  br label %39

39:                                               ; preds = %33, %21
  %40 = phi ptr [ %24, %33 ], [ %14, %21 ]
  %41 = phi ptr [ %35, %33 ], [ %12, %21 ]
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %45 = tail call ptr %44(i64 noundef 384, ptr noundef nonnull @.str.2) #7
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef nonnull %41, ptr noundef %45) #7
  %46 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 8
  store i16 6, ptr %46, align 2, !tbaa !9
  %47 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 9
  store i16 34, ptr %47, align 8, !tbaa !18
  br label %48

48:                                               ; preds = %25, %39, %43, %17
  %49 = phi ptr [ %12, %17 ], [ %41, %43 ], [ %41, %39 ], [ null, %25 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_view3d_context_rv3d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !23
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = tail call ptr @BKE_area_find_region_active_win(ptr noundef nonnull %5) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  br label %17

17:                                               ; preds = %4, %7, %14, %11, %1
  %18 = phi ptr [ %2, %1 ], [ null, %7 ], [ null, %4 ], [ %16, %14 ], [ null, %11 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_area_find_region_active_win(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  store ptr null, ptr %1, align 8, !tbaa !5
  store ptr null, ptr %2, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !23
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %56

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = icmp eq ptr %11, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 30
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 27
  %21 = load i8, ptr %20, align 1, !tbaa !27
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %24, %48
  %29 = phi ptr [ %50, %48 ], [ %26, %24 ]
  %30 = phi ptr [ %49, %48 ], [ null, %24 ]
  %31 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 30
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 8
  %36 = load i16, ptr %35, align 2, !tbaa !9
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %32, i64 0, i32 27
  %40 = load i8, ptr %39, align 1, !tbaa !27
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %32, i64 0, i32 25
  %45 = load i8, ptr %44, align 1, !tbaa !29
  %46 = add i8 %45, -1
  %47 = icmp ult i8 %46, 2
  br i1 %47, label %54, label %48

48:                                               ; preds = %43, %28, %34, %38
  %49 = phi ptr [ %30, %38 ], [ %30, %34 ], [ %30, %28 ], [ %29, %43 ]
  %50 = load ptr, ptr %29, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %28, !llvm.loop !30

52:                                               ; preds = %48
  %53 = icmp eq ptr %49, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %43, %52, %19
  %55 = phi ptr [ %11, %19 ], [ %49, %52 ], [ %29, %43 ]
  store ptr %13, ptr %1, align 8, !tbaa !5
  store ptr %55, ptr %2, align 8, !tbaa !5
  br label %56

56:                                               ; preds = %54, %24, %52, %10, %3, %6
  %57 = phi i8 [ 0, %6 ], [ 0, %3 ], [ 0, %10 ], [ 0, %52 ], [ 0, %24 ], [ 1, %54 ]
  ret i8 %57
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_init_mats_rv3d(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 6
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 3
  tail call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #7
  tail call void @ED_view3d_clipping_local(ptr noundef %1, ptr noundef nonnull %5) #7
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_clipping_local(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_init_mats_rv3d_gl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %0, ptr noundef %1) #8
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_shade_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %8 = load i16, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i16 %8, 6
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10, %20
  %15 = phi ptr [ %21, %20 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 30
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call fastcc void @view3d_stop_render_preview(ptr noundef %6, ptr noundef nonnull %15) #8
  br label %20

20:                                               ; preds = %14, %19
  %21 = load ptr, ptr %15, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %14, !llvm.loop !36

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 3
  %29 = load i16, ptr %28, align 8, !tbaa !55
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  tail call void @DAG_id_tag_update(ptr noundef %33, i16 noundef signext 0) #7
  br label %34

34:                                               ; preds = %20, %10, %23, %27, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_stop_render_preview(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  tail call void @WM_jobs_kill_type(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 3) #7
  %9 = load ptr, ptr %5, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.RenderEngine, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  tail call void @RE_Database_Free(ptr noundef nonnull %11) #7
  %14 = load ptr, ptr %5, align 8, !tbaa !59
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %9, %8 ]
  tail call void @RE_engine_free(ptr noundef %16) #7
  store ptr null, ptr %5, align 8, !tbaa !59
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_view3d() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.13) #7
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 1, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #7
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @view3d_new, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @view3d_free, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @view3d_init, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @space_view3d_listener, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @view3d_duplicate, ptr %9, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @view3d_operatortypes, ptr %10, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @view3d_keymap, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @view3d_dropboxes, ptr %12, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @view3d_context, ptr %13, align 8, !tbaa !72
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %15 = tail call ptr %14(i64 noundef 184, ptr noundef nonnull @.str.15) #7
  %16 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 20
  store i32 32, ptr %17, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 5
  store ptr @view3d_main_area_draw, ptr %18, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 3
  store ptr @view3d_main_area_init, ptr %19, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 4
  store ptr @view3d_main_area_exit, ptr %20, align 8, !tbaa !78
  %21 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 7
  store ptr @view3d_main_area_free, ptr %21, align 8, !tbaa !79
  %22 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 8
  store ptr @view3d_main_area_duplicate, ptr %22, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 6
  store ptr @view3d_main_area_listener, ptr %23, align 8, !tbaa !81
  %24 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 11
  store ptr @view3d_main_area_cursor, ptr %24, align 8, !tbaa !82
  %25 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 22
  store i16 1, ptr %25, align 2, !tbaa !83
  %26 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %15) #7
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %28 = tail call ptr %27(i64 noundef 184, ptr noundef nonnull @.str.16) #7
  %29 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 2
  store i32 4, ptr %29, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 18
  store i32 180, ptr %30, align 8, !tbaa !84
  %31 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 20
  store i32 17, ptr %31, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 6
  store ptr @view3d_buttons_area_listener, ptr %32, align 8, !tbaa !81
  %33 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 3
  store ptr @view3d_buttons_area_init, ptr %33, align 8, !tbaa !77
  %34 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 5
  store ptr @view3d_buttons_area_draw, ptr %34, align 8, !tbaa !76
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %28) #7
  tail call void @view3d_buttons_register(ptr noundef %28) #7
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %36 = tail call ptr %35(i64 noundef 184, ptr noundef nonnull @.str.17) #7
  %37 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 2
  store i32 5, ptr %37, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 18
  store i32 160, ptr %38, align 8, !tbaa !84
  %39 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 19
  store i32 50, ptr %39, align 4, !tbaa !85
  %40 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 20
  store i32 17, ptr %40, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 6
  store ptr @view3d_buttons_area_listener, ptr %41, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 3
  store ptr @view3d_tools_area_init, ptr %42, align 8, !tbaa !77
  %43 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 5
  store ptr @view3d_tools_area_draw, ptr %43, align 8, !tbaa !76
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %36) #7
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %45 = tail call ptr %44(i64 noundef 184, ptr noundef nonnull @.str.18) #7
  %46 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 2
  store i32 6, ptr %46, align 8, !tbaa !73
  %47 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 18
  store i32 0, ptr %47, align 8, !tbaa !84
  %48 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 19
  store i32 120, ptr %48, align 4, !tbaa !85
  %49 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 20
  store i32 17, ptr %49, align 8, !tbaa !75
  %50 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 6
  store ptr @view3d_props_area_listener, ptr %50, align 8, !tbaa !81
  %51 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 3
  store ptr @view3d_tools_area_init, ptr %51, align 8, !tbaa !77
  %52 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 5
  store ptr @view3d_tools_area_draw, ptr %52, align 8, !tbaa !76
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %45) #7
  tail call void @view3d_tool_props_register(ptr noundef %45) #7
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %54 = tail call ptr %53(i64 noundef 184, ptr noundef nonnull @.str.19) #7
  %55 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 2
  store i32 1, ptr %55, align 8, !tbaa !73
  %56 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 19
  store i32 26, ptr %56, align 4, !tbaa !85
  %57 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 20
  store i32 83, ptr %57, align 8, !tbaa !75
  %58 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 6
  store ptr @view3d_header_area_listener, ptr %58, align 8, !tbaa !81
  %59 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 3
  store ptr @view3d_header_area_init, ptr %59, align 8, !tbaa !77
  %60 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 5
  store ptr @view3d_header_area_draw, ptr %60, align 8, !tbaa !76
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %54) #7
  tail call void @BKE_spacetype_register(ptr noundef %2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @view3d_new(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 376, ptr noundef nonnull @.str.20) #7
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 3
  store i32 1, ptr %5, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 4
  store float 0x3FE6666660000000, ptr %6, align 4, !tbaa !87
  %7 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 23
  store i32 1, ptr %7, align 4, !tbaa !88
  %8 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 22
  store i32 1, ptr %8, align 8, !tbaa !89
  %9 = icmp eq ptr %2, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !90
  store i32 %12, ptr %7, align 4, !tbaa !88
  store i32 %12, ptr %8, align 8, !tbaa !89
  %13 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  store ptr %14, ptr %15, align 8, !tbaa !92
  br label %16

16:                                               ; preds = %10, %1
  %17 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 26
  store i16 1, ptr %17, align 4, !tbaa !93
  %18 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 37
  store i16 16, ptr %18, align 2, !tbaa !94
  %19 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 38
  store i16 10, ptr %19, align 8, !tbaa !95
  %20 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 24
  store i16 3, ptr %20, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 39
  store i8 7, ptr %21, align 2, !tbaa !96
  %22 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 28
  store i16 2048, ptr %22, align 8, !tbaa !97
  %23 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  store i16 144, ptr %23, align 2, !tbaa !98
  %24 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 30
  store <4 x float> <float 3.500000e+01, float 1.000000e+00, float 0x3F847AE140000000, float 1.000000e+03>, ptr %24, align 4, !tbaa !99
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 56), align 2, !tbaa !100
  %26 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 42
  %27 = load i8, ptr %26, align 1, !tbaa !104
  %28 = trunc i16 %25 to i8
  %29 = and i8 %28, 1
  %30 = or i8 %29, %27
  store i8 %30, ptr %26, align 1, !tbaa !104
  %31 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 40
  store i8 1, ptr %31, align 1, !tbaa !105
  %32 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 27
  store i16 3, ptr %32, align 2, !tbaa !106
  %33 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 8
  store float 0x3FC99999A0000000, ptr %33, align 4, !tbaa !107
  %34 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 9
  store i8 2, ptr %34, align 8, !tbaa !108
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %36 = tail call ptr %35(i64 noundef 384, ptr noundef nonnull @.str.21) #7
  %37 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef %36) #7
  %38 = getelementptr inbounds %struct.ARegion, ptr %36, i64 0, i32 8
  store i16 1, ptr %38, align 2, !tbaa !9
  %39 = getelementptr inbounds %struct.ARegion, ptr %36, i64 0, i32 9
  store i16 2, ptr %39, align 8, !tbaa !18
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %41 = tail call ptr %40(i64 noundef 384, ptr noundef nonnull @.str.22) #7
  tail call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef %41) #7
  %42 = getelementptr inbounds %struct.ARegion, ptr %41, i64 0, i32 8
  store i16 5, ptr %42, align 2, !tbaa !9
  %43 = getelementptr inbounds %struct.ARegion, ptr %41, i64 0, i32 9
  store i16 3, ptr %43, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.ARegion, ptr %41, i64 0, i32 10
  store i16 1, ptr %44, align 2, !tbaa !19
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %46 = tail call ptr %45(i64 noundef 384, ptr noundef nonnull @.str.23) #7
  tail call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef %46) #7
  %47 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 8
  store i16 6, ptr %47, align 2, !tbaa !9
  %48 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 9
  store i16 34, ptr %48, align 8, !tbaa !18
  %49 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 10
  store i16 1, ptr %49, align 2, !tbaa !19
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %51 = tail call ptr %50(i64 noundef 384, ptr noundef nonnull @.str) #7
  tail call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef %51) #7
  %52 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 8
  store i16 4, ptr %52, align 2, !tbaa !9
  %53 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 9
  store i16 4, ptr %53, align 8, !tbaa !18
  %54 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 10
  store i16 1, ptr %54, align 2, !tbaa !19
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %56 = tail call ptr %55(i64 noundef 384, ptr noundef nonnull @.str.24) #7
  tail call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef %56) #7
  %57 = getelementptr inbounds %struct.ARegion, ptr %56, i64 0, i32 8
  store i16 0, ptr %57, align 2, !tbaa !9
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %59 = tail call ptr %58(i64 noundef 880, ptr noundef nonnull @.str.25) #7
  %60 = getelementptr inbounds %struct.ARegion, ptr %56, i64 0, i32 30
  store ptr %59, ptr %60, align 8, !tbaa !25
  %61 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 17
  store float 1.000000e+00, ptr %61, align 8, !tbaa !99
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 25
  store i8 1, ptr %62, align 1, !tbaa !29
  %63 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 26
  store i8 7, ptr %63, align 2, !tbaa !109
  %64 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 18
  store float 1.000000e+01, ptr %64, align 8, !tbaa !110
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BGpic, ptr %6, i64 0, i32 12
  %8 = load i16, ptr %7, align 4, !tbaa !111
  switch i16 %8, label %16 [
    i16 0, label %9
    i16 1, label %11
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BGpic, ptr %6, i64 0, i32 2
  br label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BGpic, ptr %6, i64 0, i32 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  tail call void @id_us_min(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %13, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !115

19:                                               ; preds = %16, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #7
  %20 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %24(ptr noundef nonnull %21) #7
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 51
  %27 = load ptr, ptr %26, align 8, !tbaa !117
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %30(ptr noundef nonnull %27) #7
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 52
  %33 = load ptr, ptr %32, align 8, !tbaa !118
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Material, ptr %33, i64 0, i32 136
  %37 = load ptr, ptr %36, align 8, !tbaa !119
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  tail call void @GPU_material_free(ptr noundef nonnull %33) #7
  %40 = load ptr, ptr %32, align 8, !tbaa !118
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ %33, %35 ]
  %43 = getelementptr inbounds %struct.Material, ptr %42, i64 0, i32 106
  tail call void @BKE_previewimg_free(ptr noundef nonnull %43) #7
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %45 = load ptr, ptr %32, align 8, !tbaa !118
  tail call void %44(ptr noundef %45) #7
  br label %46

46:                                               ; preds = %41, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @view3d_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @space_view3d_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !123
  switch i32 %7, label %35 [
    i32 67108864, label %8
    i32 218103808, label %17
    i32 100663296, label %26
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !125
  %11 = icmp eq i32 %10, 6029312
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 29
  %14 = load i16, ptr %13, align 2, !tbaa !98
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %35, label %34

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !125
  %20 = icmp eq i32 %19, 2949120
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 29
  %23 = load i16, ptr %22, align 2, !tbaa !98
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %35, label %34

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !125
  %29 = icmp eq i32 %28, 327680
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 24
  %32 = load i16, ptr %31, align 8, !tbaa !34
  %33 = icmp eq i16 %32, 5
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %21, %12
  tail call void @ED_area_tag_redraw_regiontype(ptr noundef nonnull %1, i32 noundef 0) #7
  br label %35

35:                                               ; preds = %34, %26, %30, %17, %21, %8, %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @view3d_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  store ptr null, ptr %4, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 51
  store ptr null, ptr %8, align 8, !tbaa !117
  %9 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 22
  %12 = load i32, ptr %11, align 8, !tbaa !89
  %13 = and i32 %12, 16777215
  %14 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 22
  store i32 %13, ptr %14, align 8, !tbaa !89
  br label %15

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 24
  %17 = load i16, ptr %16, align 8, !tbaa !34
  %18 = icmp eq i16 %17, 6
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i16 3, ptr %16, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 52
  store ptr null, ptr %21, align 8, !tbaa !118
  %22 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 18
  %23 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  tail call void @BLI_duplicatelist(ptr noundef nonnull %22, ptr noundef nonnull %23) #7
  %24 = load ptr, ptr %22, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %20, %37
  %27 = phi ptr [ %38, %37 ], [ %24, %20 ]
  %28 = getelementptr inbounds %struct.BGpic, ptr %27, i64 0, i32 12
  %29 = load i16, ptr %28, align 4, !tbaa !111
  switch i16 %29, label %37 [
    i16 0, label %30
    i16 1, label %32
  ]

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BGpic, ptr %27, i64 0, i32 2
  br label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.BGpic, ptr %27, i64 0, i32 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %31, %30 ], [ %33, %32 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  tail call void @id_us_plus(ptr noundef %36) #7
  br label %37

37:                                               ; preds = %34, %26
  %38 = load ptr, ptr %27, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %26, !llvm.loop !126

40:                                               ; preds = %37, %20
  %41 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 51
  store ptr null, ptr %41, align 8, !tbaa !117
  ret ptr %3
}

; Function Attrs: optsize
declare void @view3d_operatortypes() #1

; Function Attrs: optsize
declare void @view3d_keymap(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 0) #7
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @view3d_ob_drop_poll, ptr noundef nonnull @view3d_ob_drop_copy) #7
  %3 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @view3d_mat_drop_poll, ptr noundef nonnull @view3d_id_drop_copy) #7
  %4 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @view3d_ima_mesh_drop_poll, ptr noundef nonnull @view3d_id_path_drop_copy) #7
  %5 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @view3d_ima_empty_drop_poll, ptr noundef nonnull @view3d_id_path_drop_copy) #7
  %6 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @view3d_ima_bg_drop_poll, ptr noundef nonnull @view3d_id_path_drop_copy) #7
  %7 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @view3d_group_drop_poll, ptr noundef nonnull @view3d_group_drop_copy) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @view3d_context_dir) #7
  br label %245

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %10, %7
  %14 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %16 = icmp eq ptr %14, null
  %17 = getelementptr inbounds %struct.View3D, ptr %14, i64 0, i32 22
  %18 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 12
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = load i32, ptr %19, align 8, !tbaa !127
  %21 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %22 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %13
  %26 = icmp eq i8 %21, 0
  br label %27

27:                                               ; preds = %25, %48
  %28 = phi ptr [ %23, %25 ], [ %49, %48 ]
  %29 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !128
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !130
  %36 = and i32 %35, %20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !131
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 102
  %42 = load i8, ptr %41, align 8, !tbaa !132
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  br i1 %26, label %47, label %46

46:                                               ; preds = %45
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef nonnull %40) #7
  br label %48

47:                                               ; preds = %45
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %15, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %28) #7
  br label %48

48:                                               ; preds = %27, %33, %46, %47, %38
  %49 = load ptr, ptr %28, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %27, !llvm.loop !133

51:                                               ; preds = %48, %13
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #7
  br label %245

52:                                               ; preds = %10
  %53 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.6) #7
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %101, label %58

58:                                               ; preds = %55, %52
  %59 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %60 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %61 = icmp eq ptr %59, null
  %62 = getelementptr inbounds %struct.View3D, ptr %59, i64 0, i32 22
  %63 = getelementptr inbounds %struct.Scene, ptr %60, i64 0, i32 12
  %64 = select i1 %61, ptr %63, ptr %62
  %65 = load i32, ptr %64, align 8, !tbaa !127
  %66 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  %67 = getelementptr inbounds %struct.Scene, ptr %60, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = icmp eq ptr %68, null
  br i1 %69, label %100, label %70

70:                                               ; preds = %58
  %71 = icmp eq i8 %66, 0
  br label %72

72:                                               ; preds = %70, %97
  %73 = phi ptr [ %68, %70 ], [ %98, %97 ]
  %74 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !128
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !130
  %81 = and i32 %80, %65
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !131
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 102
  %87 = load i8, ptr %86, align 8, !tbaa !132
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = tail call zeroext i8 @BKE_object_is_libdata(ptr noundef nonnull %85) #7
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  br i1 %71, label %96, label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %84, align 8, !tbaa !131
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %95) #7
  br label %97

96:                                               ; preds = %93
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %60, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %73) #7
  br label %97

97:                                               ; preds = %72, %78, %90, %96, %94, %83
  %98 = load ptr, ptr %73, align 8, !tbaa !5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %72, !llvm.loop !134

100:                                              ; preds = %97, %58
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #7
  br label %245

101:                                              ; preds = %55
  %102 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.8) #7
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %141, label %107

107:                                              ; preds = %104, %101
  %108 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %109 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %110 = icmp eq ptr %108, null
  %111 = getelementptr inbounds %struct.View3D, ptr %108, i64 0, i32 22
  %112 = getelementptr inbounds %struct.Scene, ptr %109, i64 0, i32 12
  %113 = select i1 %110, ptr %112, ptr %111
  %114 = load i32, ptr %113, align 8, !tbaa !127
  %115 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  %116 = getelementptr inbounds %struct.Scene, ptr %109, i64 0, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %140, label %119

119:                                              ; preds = %107
  %120 = icmp eq i8 %115, 0
  br label %121

121:                                              ; preds = %119, %137
  %122 = phi ptr [ %117, %119 ], [ %138, %137 ]
  %123 = getelementptr inbounds %struct.Base, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !130
  %125 = and i32 %124, %114
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.Base, ptr %122, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !131
  %130 = getelementptr inbounds %struct.Object, ptr %129, i64 0, i32 102
  %131 = load i8, ptr %130, align 8, !tbaa !132
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  br i1 %120, label %136, label %135

135:                                              ; preds = %134
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef nonnull %129) #7
  br label %137

136:                                              ; preds = %134
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %109, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %122) #7
  br label %137

137:                                              ; preds = %121, %135, %136, %127
  %138 = load ptr, ptr %122, align 8, !tbaa !5
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %121, !llvm.loop !135

140:                                              ; preds = %137, %107
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #7
  br label %245

141:                                              ; preds = %104
  %142 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.9) #7
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.10) #7
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %181, label %147

147:                                              ; preds = %144, %141
  %148 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %149 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %150 = icmp eq ptr %148, null
  %151 = getelementptr inbounds %struct.View3D, ptr %148, i64 0, i32 22
  %152 = getelementptr inbounds %struct.Scene, ptr %149, i64 0, i32 12
  %153 = select i1 %150, ptr %152, ptr %151
  %154 = load i32, ptr %153, align 8, !tbaa !127
  %155 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.9) #7
  %156 = getelementptr inbounds %struct.Scene, ptr %149, i64 0, i32 5
  %157 = load ptr, ptr %156, align 8, !tbaa !5
  %158 = icmp eq ptr %157, null
  br i1 %158, label %180, label %159

159:                                              ; preds = %147
  %160 = icmp eq i8 %155, 0
  br label %161

161:                                              ; preds = %159, %177
  %162 = phi ptr [ %157, %159 ], [ %178, %177 ]
  %163 = getelementptr inbounds %struct.Base, ptr %162, i64 0, i32 2
  %164 = load i32, ptr %163, align 8, !tbaa !130
  %165 = and i32 %164, %154
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %177, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.Base, ptr %162, i64 0, i32 7
  %169 = load ptr, ptr %168, align 8, !tbaa !131
  %170 = getelementptr inbounds %struct.Object, ptr %169, i64 0, i32 102
  %171 = load i8, ptr %170, align 8, !tbaa !132
  %172 = and i8 %171, 3
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  br i1 %160, label %176, label %175

175:                                              ; preds = %174
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef nonnull %169) #7
  br label %177

176:                                              ; preds = %174
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %149, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %162) #7
  br label %177

177:                                              ; preds = %161, %175, %176, %167
  %178 = load ptr, ptr %162, align 8, !tbaa !5
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %161, !llvm.loop !136

180:                                              ; preds = %177, %147
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #7
  br label %245

181:                                              ; preds = %144
  %182 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.11) #7
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %213, label %184

184:                                              ; preds = %181
  %185 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %186 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %187 = getelementptr inbounds %struct.Scene, ptr %186, i64 0, i32 6
  %188 = load ptr, ptr %187, align 8, !tbaa !137
  %189 = icmp eq ptr %188, null
  br i1 %189, label %245, label %190

190:                                              ; preds = %184
  %191 = icmp eq ptr %185, null
  %192 = getelementptr inbounds %struct.Scene, ptr %186, i64 0, i32 12
  %193 = getelementptr inbounds %struct.View3D, ptr %185, i64 0, i32 22
  %194 = select i1 %191, ptr %192, ptr %193
  %195 = load i32, ptr %194, align 8, !tbaa !127
  %196 = getelementptr inbounds %struct.Base, ptr %188, i64 0, i32 2
  %197 = load i32, ptr %196, align 8, !tbaa !130
  %198 = and i32 %197, %195
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %245, label %200

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.Base, ptr %188, i64 0, i32 7
  %202 = load ptr, ptr %201, align 8, !tbaa !131
  %203 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 102
  %204 = load i8, ptr %203, align 8, !tbaa !132
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 27
  %209 = load i32, ptr %208, align 8, !tbaa !138
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %245, label %212

212:                                              ; preds = %207, %200
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %186, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %188) #7
  br label %245

213:                                              ; preds = %181
  %214 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.12) #7
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %245, label %216

216:                                              ; preds = %213
  %217 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %218 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %219 = getelementptr inbounds %struct.Scene, ptr %218, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !137
  %221 = icmp eq ptr %220, null
  br i1 %221, label %245, label %222

222:                                              ; preds = %216
  %223 = icmp eq ptr %217, null
  %224 = getelementptr inbounds %struct.Scene, ptr %218, i64 0, i32 12
  %225 = getelementptr inbounds %struct.View3D, ptr %217, i64 0, i32 22
  %226 = select i1 %223, ptr %224, ptr %225
  %227 = load i32, ptr %226, align 8, !tbaa !127
  %228 = getelementptr inbounds %struct.Base, ptr %220, i64 0, i32 2
  %229 = load i32, ptr %228, align 8, !tbaa !130
  %230 = and i32 %229, %227
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %245, label %232

232:                                              ; preds = %222
  %233 = getelementptr inbounds %struct.Base, ptr %220, i64 0, i32 7
  %234 = load ptr, ptr %233, align 8, !tbaa !131
  %235 = getelementptr inbounds %struct.Object, ptr %234, i64 0, i32 102
  %236 = load i8, ptr %235, align 8, !tbaa !132
  %237 = and i8 %236, 1
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.Object, ptr %234, i64 0, i32 27
  %241 = load i32, ptr %240, align 8, !tbaa !138
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %239, %232
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %234) #7
  br label %245

245:                                              ; preds = %213, %216, %222, %244, %239, %184, %190, %212, %207, %6, %180, %140, %100, %51
  %246 = phi i32 [ -1, %6 ], [ 1, %51 ], [ 1, %100 ], [ 1, %140 ], [ 1, %180 ], [ 1, %207 ], [ 1, %212 ], [ 1, %190 ], [ 1, %184 ], [ 1, %239 ], [ 1, %244 ], [ 1, %222 ], [ 1, %216 ], [ 0, %213 ]
  ret i32 %246
}

; Function Attrs: optsize
declare void @view3d_main_area_draw(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #7
  %8 = load ptr, ptr %3, align 8, !tbaa !139
  %9 = tail call ptr @WM_keymap_find(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 0) #7
  %10 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %9) #7
  %11 = load ptr, ptr %3, align 8, !tbaa !139
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0) #7
  %13 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %12) #7
  %14 = load ptr, ptr %3, align 8, !tbaa !139
  %15 = tail call ptr @WM_keymap_find(ptr noundef %14, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 0) #7
  %16 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %15) #7
  %17 = load ptr, ptr %3, align 8, !tbaa !139
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 0) #7
  %19 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %18) #7
  %20 = load ptr, ptr %3, align 8, !tbaa !139
  %21 = tail call ptr @WM_keymap_find(ptr noundef %20, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 0) #7
  %22 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %21) #7
  %23 = load ptr, ptr %3, align 8, !tbaa !139
  %24 = tail call ptr @WM_keymap_find(ptr noundef %23, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0) #7
  %25 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %24) #7
  %26 = load ptr, ptr %3, align 8, !tbaa !139
  %27 = tail call ptr @WM_keymap_find(ptr noundef %26, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 0) #7
  %28 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %27) #7
  %29 = load ptr, ptr %3, align 8, !tbaa !139
  %30 = tail call ptr @WM_keymap_find(ptr noundef %29, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 0) #7
  %31 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %30) #7
  %32 = load ptr, ptr %3, align 8, !tbaa !139
  %33 = tail call ptr @WM_keymap_find(ptr noundef %32, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0) #7
  %34 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %33) #7
  %35 = load ptr, ptr %3, align 8, !tbaa !139
  %36 = tail call ptr @WM_keymap_find(ptr noundef %35, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0) #7
  %37 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %36) #7
  %38 = load ptr, ptr %3, align 8, !tbaa !139
  %39 = tail call ptr @WM_keymap_find(ptr noundef %38, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 0) #7
  %40 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %39) #7
  %41 = load ptr, ptr %3, align 8, !tbaa !139
  %42 = tail call ptr @WM_keymap_find(ptr noundef %41, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 0) #7
  %43 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %42) #7
  %44 = load ptr, ptr %3, align 8, !tbaa !139
  %45 = tail call ptr @WM_keymap_find(ptr noundef %44, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0) #7
  %46 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %45) #7
  %47 = load ptr, ptr %3, align 8, !tbaa !139
  %48 = tail call ptr @WM_keymap_find(ptr noundef %47, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0) #7
  %49 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %48) #7
  %50 = load ptr, ptr %3, align 8, !tbaa !139
  %51 = tail call ptr @WM_keymap_find(ptr noundef %50, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 0) #7
  %52 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %51) #7
  %53 = load ptr, ptr %3, align 8, !tbaa !139
  %54 = tail call ptr @WM_keymap_find(ptr noundef %53, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0) #7
  %55 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %54) #7
  %56 = load ptr, ptr %3, align 8, !tbaa !139
  %57 = tail call ptr @WM_keymap_find(ptr noundef %56, ptr noundef nonnull @.str.49, i32 noundef 0, i32 noundef 0) #7
  %58 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %57) #7
  %59 = load ptr, ptr %3, align 8, !tbaa !139
  %60 = tail call ptr @WM_keymap_find(ptr noundef %59, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 0) #7
  %61 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %60) #7
  %62 = load ptr, ptr %3, align 8, !tbaa !139
  %63 = tail call ptr @WM_keymap_find(ptr noundef %62, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 0) #7
  %64 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %63) #7
  %65 = load ptr, ptr %3, align 8, !tbaa !139
  %66 = tail call ptr @WM_keymap_find(ptr noundef %65, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 0) #7
  %67 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %66) #7
  %68 = load ptr, ptr %3, align 8, !tbaa !139
  %69 = tail call ptr @WM_keymap_find(ptr noundef %68, ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef 0) #7
  %70 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %69) #7
  %71 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 0) #7
  %72 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %6, ptr noundef %71) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_main_area_exit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  tail call fastcc void @view3d_stop_render_preview(ptr noundef %0, ptr noundef %1) #8
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @GPU_offscreen_free(ptr noundef nonnull %6) #7
  store ptr null, ptr %5, align 8, !tbaa !142
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_main_area_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %10(ptr noundef nonnull %7) #7
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !144
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %16(ptr noundef nonnull %13) #7
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @RE_engine_free(ptr noundef nonnull %19) #7
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !145
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ViewDepths, ptr %24, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !146
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %31(ptr noundef nonnull %28) #7
  %32 = load ptr, ptr %23, align 8, !tbaa !145
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %32, %30 ], [ %24, %26 ]
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %35(ptr noundef %34) #7
  br label %36

36:                                               ; preds = %33, %22
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 14
  %38 = load ptr, ptr %37, align 8, !tbaa !148
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %41(ptr noundef nonnull %38) #7
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !142
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @GPU_offscreen_free(ptr noundef nonnull %44) #7
  br label %47

47:                                               ; preds = %46, %42
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %48(ptr noundef nonnull %3) #7
  store ptr null, ptr %2, align 8, !tbaa !25
  br label %49

49:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @view3d_main_area_duplicate(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %5 = tail call ptr %4(ptr noundef nonnull %0) #7
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %11 = tail call ptr %10(ptr noundef nonnull %7) #7
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 10
  store ptr %11, ptr %12, align 8, !tbaa !143
  br label %13

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !144
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %19 = tail call ptr %18(ptr noundef nonnull %15) #7
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 9
  store ptr %19, ptr %20, align 8, !tbaa !144
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %22, i8 0, i64 40, i1 false)
  br label %23

23:                                               ; preds = %1, %21
  %24 = phi ptr [ %5, %21 ], [ null, %1 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_main_area_listener(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !123
  %11 = add i32 %10, -50331648
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 8)
  switch i32 %12, label %165 [
    i32 11, label %13
    i32 1, label %28
    i32 2, label %42
    i32 13, label %53
    i32 6, label %62
    i32 8, label %63
    i32 3, label %68
    i32 19, label %160
    i32 5, label %103
    i32 7, label %115
    i32 4, label %116
    i32 17, label %117
    i32 12, label %126
    i32 15, label %141
    i32 0, label %146
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !125
  %16 = add i32 %15, -4587520
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 16)
  switch i32 %17, label %165 [
    i32 1, label %18
    i32 4, label %18
    i32 3, label %19
    i32 0, label %19
    i32 2, label %23
  ]

18:                                               ; preds = %13, %13
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

19:                                               ; preds = %13, %13
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !151
  switch i32 %21, label %165 [
    i32 1, label %22
    i32 3, label %22
    i32 4, label %22
  ]

22:                                               ; preds = %19, %19, %19
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !151
  %26 = icmp eq i32 %25, 6
  br i1 %26, label %27, label %165

27:                                               ; preds = %23
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !125
  switch i32 %30, label %37 [
    i32 6619136, label %31
    i32 196608, label %36
    i32 1179648, label %36
    i32 458752, label %36
    i32 524288, label %36
    i32 589824, label %36
    i32 1048576, label %36
    i32 262144, label %36
    i32 131072, label %36
    i32 720896, label %36
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !152
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call fastcc void @view3d_recalc_used_layers(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %33) #8
  br label %36

36:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %31, %35
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %37

37:                                               ; preds = %36, %28
  %38 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %39 = load i32, ptr %38, align 8, !tbaa !151
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %165

41:                                               ; preds = %37
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !125
  %45 = add i32 %44, -1179648
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 16)
  switch i32 %46, label %48 [
    i32 3, label %47
    i32 4, label %47
    i32 0, label %47
    i32 2, label %47
    i32 5, label %47
    i32 6, label %47
    i32 8, label %47
    i32 7, label %47
    i32 9, label %47
    i32 12, label %47
  ]

47:                                               ; preds = %42, %42, %42, %42, %42, %42, %42, %42, %42, %42
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %48

48:                                               ; preds = %42, %47
  %49 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %50 = load i32, ptr %49, align 8, !tbaa !151
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %165

52:                                               ; preds = %48
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

53:                                               ; preds = %4
  %54 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !125
  switch i32 %55, label %57 [
    i32 5963776, label %56
    i32 6029312, label %56
    i32 5898240, label %56
  ]

56:                                               ; preds = %53, %53, %53
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %57

57:                                               ; preds = %53, %56
  %58 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !151
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %165

61:                                               ; preds = %57
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

62:                                               ; preds = %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

63:                                               ; preds = %4
  %64 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %65 = load i32, ptr %64, align 8, !tbaa !151
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %165

67:                                               ; preds = %63
  tail call void @ED_region_tag_redraw_overlay(ptr noundef %2) #7
  br label %165

68:                                               ; preds = %4
  %69 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %70 = load i32, ptr %69, align 8, !tbaa !125
  switch i32 %70, label %165 [
    i32 1966080, label %71
    i32 327680, label %71
    i32 2031616, label %102
    i32 2097152, label %102
  ]

71:                                               ; preds = %68, %68
  %72 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !137
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !131
  %78 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %79 = load i16, ptr %78, align 8, !tbaa !34
  %80 = icmp eq i16 %79, 4
  br i1 %80, label %101, label %85

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %83 = load i16, ptr %82, align 8, !tbaa !34
  %84 = icmp eq i16 %83, 4
  br i1 %84, label %101, label %91

85:                                               ; preds = %75
  %86 = icmp eq ptr %77, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.Object, ptr %77, i64 0, i32 27
  %89 = load i32, ptr %88, align 8, !tbaa !138
  %90 = icmp eq i32 %89, 16
  br i1 %90, label %101, label %91

91:                                               ; preds = %81, %87, %85
  %92 = phi i16 [ %79, %87 ], [ %79, %85 ], [ %83, %81 ]
  %93 = icmp eq i16 %92, 5
  br i1 %93, label %94, label %165

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 37, i32 20
  %96 = load i16, ptr %95, align 2, !tbaa !153
  %97 = icmp eq i16 %96, 2
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %6) #7
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %165, label %101

101:                                              ; preds = %81, %98, %94, %87, %75
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

102:                                              ; preds = %68, %68
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

103:                                              ; preds = %4
  %104 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %105 = load i32, ptr %104, align 8, !tbaa !125
  switch i32 %105, label %165 [
    i32 2621440, label %106
    i32 2686976, label %114
  ]

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %108 = load i16, ptr %107, align 8, !tbaa !34
  switch i16 %108, label %165 [
    i16 4, label %113
    i16 5, label %109
  ]

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 37, i32 20
  %111 = load i16, ptr %110, align 2, !tbaa !153
  %112 = icmp eq i16 %111, 2
  br i1 %112, label %113, label %165

113:                                              ; preds = %106, %109
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

114:                                              ; preds = %103
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

115:                                              ; preds = %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

116:                                              ; preds = %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

117:                                              ; preds = %4
  %118 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !125
  %120 = icmp eq i32 %119, 3342336
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %123 = load i32, ptr %122, align 8, !tbaa !151
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %165

125:                                              ; preds = %121, %117
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

126:                                              ; preds = %4
  %127 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %128 = load i32, ptr %127, align 8, !tbaa !125
  %129 = icmp eq i32 %128, 589824
  br i1 %129, label %130, label %165

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 7
  %132 = load i32, ptr %131, align 4, !tbaa !154
  %133 = icmp eq i32 %132, 4096
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %136 = load ptr, ptr %135, align 8, !tbaa !25
  %137 = getelementptr inbounds %struct.RegionView3D, ptr %136, i64 0, i32 32
  %138 = load i16, ptr %137, align 2, !tbaa !155
  %139 = or i16 %138, 16
  store i16 %139, ptr %137, align 2, !tbaa !155
  br label %140

140:                                              ; preds = %134, %130
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

141:                                              ; preds = %4
  %142 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %143 = load i32, ptr %142, align 8, !tbaa !151
  %144 = icmp eq i32 %143, 5
  br i1 %144, label %145, label %165

145:                                              ; preds = %141
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

146:                                              ; preds = %4
  %147 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %148 = load i32, ptr %147, align 8, !tbaa !125
  %149 = add i32 %148, -65536
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 16)
  switch i32 %150, label %165 [
    i32 3, label %151
    i32 7, label %151
    i32 0, label %152
    i32 1, label %152
    i32 6, label %152
  ]

151:                                              ; preds = %146, %146
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

152:                                              ; preds = %146, %146, %146
  %153 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 9
  %154 = load ptr, ptr %153, align 8, !tbaa !152
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.bScreen, ptr %154, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !149
  tail call fastcc void @view3d_recalc_used_layers(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %158) #8
  br label %159

159:                                              ; preds = %156, %152
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

160:                                              ; preds = %4
  %161 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %162 = load i32, ptr %161, align 8, !tbaa !151
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %165

165:                                              ; preds = %106, %91, %98, %101, %19, %160, %164, %151, %159, %146, %141, %145, %126, %140, %121, %125, %114, %103, %113, %109, %102, %68, %63, %67, %61, %57, %52, %48, %37, %41, %18, %13, %22, %27, %23, %4, %116, %115, %62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_main_area_cursor(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i32 1006, i32 1002
  tail call void @WM_cursor_set(ptr noundef nonnull %0, i32 noundef %11) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_buttons_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !123
  %7 = add i32 %6, -67108864
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 8)
  switch i32 %8, label %63 [
    i32 10, label %9
    i32 0, label %17
    i32 1, label %25
    i32 12, label %30
    i32 3, label %62
    i32 2, label %62
    i32 7, label %38
    i32 11, label %42
    i32 14, label %46
    i32 18, label %50
    i32 6, label %58
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !125
  %12 = add i32 %11, -4587520
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 16)
  switch i32 %13, label %63 [
    i32 1, label %62
    i32 4, label %62
    i32 3, label %14
    i32 0, label %14
  ]

14:                                               ; preds = %9, %9
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !151
  switch i32 %16, label %63 [
    i32 1, label %62
    i32 3, label %62
    i32 4, label %62
  ]

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !125
  switch i32 %19, label %21 [
    i32 196608, label %20
    i32 458752, label %20
    i32 524288, label %20
    i32 589824, label %20
    i32 720896, label %20
    i32 1048576, label %20
    i32 6619136, label %20
    i32 983040, label %20
  ]

20:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %21

21:                                               ; preds = %17, %20
  %22 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !151
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %62, label %63

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !125
  %28 = add i32 %27, -1179648
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 16)
  switch i32 %29, label %63 [
    i32 3, label %62
    i32 4, label %62
    i32 0, label %62
    i32 2, label %62
    i32 5, label %62
    i32 7, label %62
    i32 6, label %62
  ]

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !125
  switch i32 %32, label %34 [
    i32 5963776, label %33
    i32 6029312, label %33
    i32 5898240, label %33
  ]

33:                                               ; preds = %30, %30, %30
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %34

34:                                               ; preds = %30, %33
  %35 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !151
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %62, label %63

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !151
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %62, label %63

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !125
  %45 = icmp eq i32 %44, 589824
  br i1 %45, label %62, label %63

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !151
  %49 = icmp eq i32 %48, 5
  br i1 %49, label %62, label %63

50:                                               ; preds = %4
  %51 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !125
  %53 = icmp eq i32 %52, 5963776
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !151
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %62, label %63

58:                                               ; preds = %4
  %59 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !151
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %50, %54, %46, %42, %38, %4, %4, %34, %25, %25, %25, %25, %25, %25, %25, %21, %14, %14, %14, %9, %9
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %63

63:                                               ; preds = %62, %14, %58, %54, %46, %42, %38, %34, %25, %21, %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #7
  ret void
}

; Function Attrs: optsize
declare void @view3d_buttons_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_tools_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_tools_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_mode_string(ptr noundef %0) #7
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %3, i32 noundef -1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_props_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !123
  switch i32 %6, label %20 [
    i32 16777216, label %7
    i32 67108864, label %11
    i32 251658240, label %15
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !125
  %10 = icmp eq i32 %9, 262144
  br i1 %10, label %19, label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !125
  %14 = icmp eq i32 %13, 720896
  br i1 %14, label %19, label %20

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !125
  %18 = icmp eq i32 %17, 589824
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %20

20:                                               ; preds = %19, %15, %11, %7, %4
  ret void
}

; Function Attrs: optsize
declare void @view3d_tool_props_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !123
  switch i32 %6, label %15 [
    i32 67108864, label %7
    i32 251658240, label %10
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !125
  switch i32 %9, label %15 [
    i32 196608, label %14
    i32 458752, label %14
    i32 524288, label %14
    i32 589824, label %14
    i32 720896, label %14
    i32 1048576, label %14
    i32 983040, label %14
    i32 6619136, label %14
    i32 262144, label %14
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !125
  %13 = icmp eq i32 %12, 589824
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %7, %7, %7, %7, %7, %7, %7, %7, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %15

15:                                               ; preds = %14, %10, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_header_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #7
  tail call void @ED_region_header_init(ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_kill_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_Database_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_engine_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_material_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_area_tag_redraw_regiontype(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @view3d_ob_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !158
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !162
  %12 = icmp eq i16 %11, 16975
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi i32 [ 1, %7 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_ob_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull %7) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @view3d_mat_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !158
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !162
  %12 = icmp eq i16 %11, 16717
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi i32 [ 1, %7 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_id_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull %7) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_ima_mesh_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %5 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !55
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @view3d_ima_drop_poll(ptr noundef %1) #8
  br label %15

15:                                               ; preds = %3, %7, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_id_path_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  %9 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %8, ptr noundef nonnull @.str.32, ptr noundef nonnull %9) #7
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !165
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  tail call void @RNA_string_set(ptr noundef %16, ptr noundef nonnull @.str.33, ptr noundef nonnull %11) #7
  br label %17

17:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_ima_empty_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %5 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %9 = load i16, ptr %8, align 2, !tbaa !166
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !55
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %7
  %18 = tail call fastcc i32 @view3d_ima_drop_poll(ptr noundef %1) #8
  br label %19

19:                                               ; preds = %7, %11, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %11 ], [ 0, %7 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_ima_bg_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %5 = load i16, ptr %4, align 2, !tbaa !166
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %8) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @view3d_ima_drop_poll(ptr noundef %1) #8
  br label %13

13:                                               ; preds = %7, %3, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %3 ], [ 0, %7 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @view3d_group_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !158
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !162
  %12 = icmp eq i16 %11, 21063
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi i32 [ 1, %7 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view3d_group_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 7
  store i16 6, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  %8 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef nonnull %8) #7
  ret void
}

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @view3d_ima_drop_poll(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !158
  switch i32 %3, label %17 [
    i32 0, label %4
    i32 2, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !162
  %9 = icmp eq i16 %8, 19785
  br i1 %9, label %18, label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !169
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %12, 696
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i32
  br label %18

17:                                               ; preds = %4, %1
  br label %18

18:                                               ; preds = %10, %4, %17
  %19 = phi i32 [ 1, %4 ], [ 0, %17 ], [ %16, %10 ]
  ret i32 %19
}

; Function Attrs: optsize
declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_id_list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_list_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_type_set(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_libdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_pointer_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_offscreen_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_recalc_used_layers(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !171
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 5
  br label %11

11:                                               ; preds = %16, %9
  %12 = phi i32 [ 0, %9 ], [ %20, %16 ]
  %13 = phi ptr [ %10, %9 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !130
  %19 = and i32 %18, 1048575
  %20 = or i32 %19, %12
  %21 = icmp eq i32 %20, 1048575
  br i1 %21, label %22, label %11, !llvm.loop !172

22:                                               ; preds = %16, %11
  %23 = phi i32 [ 1048575, %16 ], [ %12, %11 ]
  %24 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !156
  %26 = getelementptr inbounds %struct.bScreen, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %22, %42
  %30 = phi ptr [ %43, %42 ], [ %27, %22 ]
  %31 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 8
  %32 = load i8, ptr %31, align 8, !tbaa !23
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 20
  %36 = tail call i32 @BLI_findindex(ptr noundef nonnull %35, ptr noundef %0) #7
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !26
  %41 = getelementptr inbounds %struct.View3D, ptr %40, i64 0, i32 12
  store i32 %23, ptr %41, align 8, !tbaa !173
  br label %45

42:                                               ; preds = %29, %34
  %43 = load ptr, ptr %30, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %29, !llvm.loop !174

45:                                               ; preds = %42, %22, %38, %3
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw_overlay(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_mode_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !16, i64 214}
!10 = !{!"ARegion", !6, i64 0, !6, i64 8, !11, i64 16, !14, i64 176, !14, i64 192, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !16, i64 216, !16, i64 218, !13, i64 220, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !16, i64 232, !16, i64 234, !16, i64 236, !16, i64 238, !6, i64 240, !17, i64 248, !17, i64 264, !17, i64 280, !17, i64 296, !17, i64 312, !17, i64 328, !17, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!11 = !{!"View2D", !12, i64 0, !12, i64 16, !14, i64 32, !14, i64 48, !14, i64 64, !7, i64 80, !7, i64 88, !13, i64 96, !13, i64 100, !16, i64 104, !16, i64 106, !16, i64 108, !16, i64 110, !16, i64 112, !16, i64 114, !16, i64 116, !16, i64 118, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !6, i64 128, !15, i64 136, !15, i64 140, !6, i64 144, !6, i64 152}
!12 = !{!"rctf", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!13 = !{!"float", !7, i64 0}
!14 = !{!"rcti", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!15 = !{!"int", !7, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!"ListBase", !6, i64 0, !6, i64 8}
!18 = !{!10, !16, i64 216}
!19 = !{!10, !16, i64 218}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!24, !7, i64 72}
!24 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !14, i64 56, !7, i64 72, !7, i64 73, !16, i64 74, !16, i64 76, !16, i64 78, !16, i64 80, !16, i64 82, !16, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !17, i64 96, !17, i64 112, !17, i64 128, !17, i64 144}
!25 = !{!10, !6, i64 376}
!26 = !{!24, !6, i64 96}
!27 = !{!28, !7, i64 811}
!28 = !{!"RegionView3D", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 192, !7, i64 256, !7, i64 320, !7, i64 384, !7, i64 448, !7, i64 544, !6, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !6, i64 672, !6, i64 680, !6, i64 688, !7, i64 696, !7, i64 760, !13, i64 776, !13, i64 780, !13, i64 784, !13, i64 788, !7, i64 792, !13, i64 804, !7, i64 808, !7, i64 809, !7, i64 810, !7, i64 811, !7, i64 812, !7, i64 813, !7, i64 816, !16, i64 824, !16, i64 826, !7, i64 828, !16, i64 844, !16, i64 846, !13, i64 848, !7, i64 852, !13, i64 864, !7, i64 868}
!29 = !{!28, !7, i64 809}
!30 = distinct !{!30, !21}
!31 = !{!32, !6, i64 1552}
!32 = !{!"Main", !6, i64 0, !6, i64 8, !7, i64 16, !16, i64 1040, !16, i64 1042, !16, i64 1044, !16, i64 1046, !33, i64 1048, !7, i64 1056, !16, i64 1072, !6, i64 1080, !17, i64 1088, !17, i64 1104, !17, i64 1120, !17, i64 1136, !17, i64 1152, !17, i64 1168, !17, i64 1184, !17, i64 1200, !17, i64 1216, !17, i64 1232, !17, i64 1248, !17, i64 1264, !17, i64 1280, !17, i64 1296, !17, i64 1312, !17, i64 1328, !17, i64 1344, !17, i64 1360, !17, i64 1376, !17, i64 1392, !17, i64 1408, !17, i64 1424, !17, i64 1440, !17, i64 1456, !17, i64 1472, !17, i64 1488, !17, i64 1504, !17, i64 1520, !17, i64 1536, !17, i64 1552, !17, i64 1568, !17, i64 1584, !17, i64 1600, !17, i64 1616, !7, i64 1632, !6, i64 1888, !6, i64 1896}
!33 = !{!"long", !7, i64 0}
!34 = !{!35, !16, i64 232}
!35 = !{!"View3D", !6, i64 0, !6, i64 8, !17, i64 16, !15, i64 32, !13, i64 36, !7, i64 40, !7, i64 56, !13, i64 72, !13, i64 76, !7, i64 80, !7, i64 81, !15, i64 84, !15, i64 88, !16, i64 92, !16, i64 94, !6, i64 96, !6, i64 104, !12, i64 112, !17, i64 128, !6, i64 144, !6, i64 152, !7, i64 160, !15, i64 224, !15, i64 228, !16, i64 232, !16, i64 234, !16, i64 236, !16, i64 238, !16, i64 240, !16, i64 242, !13, i64 244, !13, i64 248, !13, i64 252, !13, i64 256, !7, i64 260, !7, i64 272, !16, i64 284, !16, i64 286, !16, i64 288, !7, i64 290, !7, i64 291, !7, i64 292, !7, i64 293, !7, i64 294, !17, i64 296, !17, i64 312, !17, i64 328, !7, i64 344, !7, i64 345, !7, i64 346, !7, i64 347, !6, i64 352, !6, i64 360, !6, i64 368}
!36 = distinct !{!36, !21}
!37 = !{!38, !6, i64 176}
!38 = !{!"Scene", !39, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !17, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !15, i64 232, !15, i64 236, !15, i64 240, !16, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !40, i64 280, !47, i64 4264, !17, i64 4296, !17, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !16, i64 4376, !16, i64 4378, !15, i64 4380, !17, i64 4384, !48, i64 4400, !49, i64 4416, !52, i64 4600, !6, i64 4608, !53, i64 4616, !6, i64 4640, !33, i64 4648, !33, i64 4656, !42, i64 4664, !43, i64 4824, !54, i64 4888, !6, i64 4952}
!39 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !16, i64 98, !15, i64 100, !15, i64 104, !15, i64 108, !6, i64 112}
!40 = !{!"RenderData", !41, i64 0, !6, i64 248, !6, i64 256, !44, i64 264, !45, i64 328, !15, i64 400, !15, i64 404, !15, i64 408, !13, i64 412, !15, i64 416, !15, i64 420, !15, i64 424, !15, i64 428, !16, i64 432, !16, i64 434, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !16, i64 456, !16, i64 458, !16, i64 460, !16, i64 462, !16, i64 464, !16, i64 466, !15, i64 468, !16, i64 472, !16, i64 474, !16, i64 476, !16, i64 478, !16, i64 480, !16, i64 482, !15, i64 484, !15, i64 488, !16, i64 492, !16, i64 494, !15, i64 496, !15, i64 500, !16, i64 504, !16, i64 506, !16, i64 508, !16, i64 510, !16, i64 512, !7, i64 514, !7, i64 515, !15, i64 516, !15, i64 520, !15, i64 524, !16, i64 528, !16, i64 530, !16, i64 532, !16, i64 534, !16, i64 536, !16, i64 538, !16, i64 540, !16, i64 542, !12, i64 544, !12, i64 560, !14, i64 576, !17, i64 592, !16, i64 608, !16, i64 610, !13, i64 612, !13, i64 616, !13, i64 620, !13, i64 624, !15, i64 628, !13, i64 632, !13, i64 636, !13, i64 640, !13, i64 644, !16, i64 648, !16, i64 650, !16, i64 652, !16, i64 654, !16, i64 656, !16, i64 658, !13, i64 660, !13, i64 664, !16, i64 668, !16, i64 670, !13, i64 672, !13, i64 676, !7, i64 680, !15, i64 1704, !16, i64 1708, !16, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !15, i64 2520, !16, i64 2524, !16, i64 2526, !13, i64 2528, !13, i64 2532, !16, i64 2536, !16, i64 2538, !13, i64 2540, !16, i64 2544, !16, i64 2546, !15, i64 2548, !16, i64 2552, !16, i64 2554, !16, i64 2556, !16, i64 2558, !13, i64 2560, !13, i64 2564, !6, i64 2568, !15, i64 2576, !13, i64 2580, !7, i64 2584, !46, i64 2616, !15, i64 3976, !15, i64 3980}
!41 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !16, i64 8, !16, i64 10, !13, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !42, i64 24, !43, i64 184}
!42 = !{!"ColorManagedViewSettings", !15, i64 0, !15, i64 4, !7, i64 8, !7, i64 72, !13, i64 136, !13, i64 140, !6, i64 144, !6, i64 152}
!43 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!44 = !{!"QuicktimeCodecSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !16, i64 48, !16, i64 50, !15, i64 52, !15, i64 56, !15, i64 60}
!45 = !{!"FFMpegCodecData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !13, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !6, i64 64}
!46 = !{!"BakeData", !41, i64 0, !7, i64 248, !16, i64 1272, !16, i64 1274, !16, i64 1276, !16, i64 1278, !13, i64 1280, !13, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!47 = !{!"AudioData", !15, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !15, i64 16, !16, i64 20, !16, i64 22, !13, i64 24, !13, i64 28}
!48 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!49 = !{!"GameData", !48, i64 0, !16, i64 16, !16, i64 18, !16, i64 20, !16, i64 22, !16, i64 24, !16, i64 26, !16, i64 28, !16, i64 30, !16, i64 32, !7, i64 34, !50, i64 40, !16, i64 64, !16, i64 66, !13, i64 68, !51, i64 72, !13, i64 128, !13, i64 132, !15, i64 136, !16, i64 140, !16, i64 142, !16, i64 144, !16, i64 146, !16, i64 148, !16, i64 150, !16, i64 152, !16, i64 154, !16, i64 156, !16, i64 158, !16, i64 160, !16, i64 162, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180}
!50 = !{!"GameDome", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !13, i64 8, !13, i64 12, !6, i64 16}
!51 = !{!"RecastData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !15, i64 40, !13, i64 44, !13, i64 48, !16, i64 52, !16, i64 54}
!52 = !{!"UnitSettings", !13, i64 0, !7, i64 4, !7, i64 5, !16, i64 6}
!53 = !{!"PhysicsSettings", !7, i64 0, !15, i64 12, !15, i64 16, !15, i64 20}
!54 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!55 = !{!56, !16, i64 136}
!56 = !{!"Object", !39, i64 0, !6, i64 120, !6, i64 128, !16, i64 136, !16, i64 138, !15, i64 140, !15, i64 144, !15, i64 148, !7, i64 152, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !57, i64 312, !6, i64 360, !17, i64 368, !17, i64 384, !17, i64 400, !17, i64 416, !15, i64 432, !15, i64 436, !6, i64 440, !6, i64 448, !15, i64 456, !15, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !13, i64 616, !13, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !15, i64 944, !16, i64 948, !16, i64 950, !16, i64 952, !16, i64 954, !16, i64 956, !16, i64 958, !16, i64 960, !16, i64 962, !16, i64 964, !7, i64 966, !7, i64 967, !15, i64 968, !15, i64 972, !15, i64 976, !15, i64 980, !15, i64 984, !13, i64 988, !13, i64 992, !13, i64 996, !13, i64 1000, !13, i64 1004, !13, i64 1008, !13, i64 1012, !13, i64 1016, !13, i64 1020, !13, i64 1024, !13, i64 1028, !13, i64 1032, !16, i64 1036, !16, i64 1038, !16, i64 1040, !7, i64 1042, !7, i64 1043, !16, i64 1044, !7, i64 1046, !7, i64 1047, !13, i64 1048, !13, i64 1052, !17, i64 1056, !17, i64 1072, !17, i64 1088, !17, i64 1104, !13, i64 1120, !16, i64 1124, !16, i64 1126, !7, i64 1128, !15, i64 1144, !15, i64 1148, !6, i64 1152, !7, i64 1160, !7, i64 1161, !16, i64 1162, !7, i64 1164, !17, i64 1176, !17, i64 1192, !17, i64 1208, !17, i64 1224, !6, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1265, !16, i64 1266, !13, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !33, i64 1304, !33, i64 1312, !15, i64 1320, !15, i64 1324, !17, i64 1328, !17, i64 1344, !6, i64 1360, !6, i64 1368, !6, i64 1376, !7, i64 1384, !6, i64 1392, !17, i64 1400, !6, i64 1416}
!57 = !{!"bAnimVizSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !16, i64 16, !16, i64 18, !16, i64 20, !16, i64 22, !16, i64 24, !16, i64 26, !16, i64 28, !16, i64 30, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44}
!58 = !{!56, !6, i64 296}
!59 = !{!28, !6, i64 656}
!60 = !{!61, !6, i64 48}
!61 = !{!"RenderEngine", !6, i64 0, !6, i64 8, !15, i64 16, !6, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !6, i64 48, !17, i64 56, !7, i64 72, !15, i64 584, !15, i64 588, !6, i64 592, !15, i64 600, !15, i64 604, !12, i64 608, !14, i64 624, !7, i64 640, !15, i64 704, !15, i64 708}
!62 = !{!63, !15, i64 80}
!63 = !{!"SpaceType", !6, i64 0, !6, i64 8, !7, i64 16, !15, i64 80, !15, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !17, i64 176, !17, i64 192, !15, i64 208}
!64 = !{!63, !6, i64 88}
!65 = !{!63, !6, i64 96}
!66 = !{!63, !6, i64 104}
!67 = !{!63, !6, i64 120}
!68 = !{!63, !6, i64 136}
!69 = !{!63, !6, i64 144}
!70 = !{!63, !6, i64 152}
!71 = !{!63, !6, i64 160}
!72 = !{!63, !6, i64 168}
!73 = !{!74, !15, i64 16}
!74 = !{!"ARegionType", !6, i64 0, !6, i64 8, !15, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !17, i64 104, !17, i64 120, !17, i64 136, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !16, i64 172, !16, i64 174, !16, i64 176}
!75 = !{!74, !15, i64 168}
!76 = !{!74, !6, i64 40}
!77 = !{!74, !6, i64 24}
!78 = !{!74, !6, i64 32}
!79 = !{!74, !6, i64 56}
!80 = !{!74, !6, i64 64}
!81 = !{!74, !6, i64 48}
!82 = !{!74, !6, i64 88}
!83 = !{!74, !16, i64 174}
!84 = !{!74, !15, i64 160}
!85 = !{!74, !15, i64 164}
!86 = !{!35, !15, i64 32}
!87 = !{!35, !13, i64 36}
!88 = !{!35, !15, i64 228}
!89 = !{!35, !15, i64 224}
!90 = !{!38, !15, i64 232}
!91 = !{!38, !6, i64 128}
!92 = !{!35, !6, i64 96}
!93 = !{!35, !16, i64 236}
!94 = !{!35, !16, i64 286}
!95 = !{!35, !16, i64 288}
!96 = !{!35, !7, i64 290}
!97 = !{!35, !16, i64 240}
!98 = !{!35, !16, i64 242}
!99 = !{!13, !13, i64 0}
!100 = !{!101, !16, i64 8898}
!101 = !{!"UserDef", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !15, i64 8468, !16, i64 8472, !16, i64 8474, !16, i64 8476, !16, i64 8478, !16, i64 8480, !16, i64 8482, !15, i64 8484, !15, i64 8488, !15, i64 8492, !16, i64 8496, !16, i64 8498, !15, i64 8500, !15, i64 8504, !15, i64 8508, !15, i64 8512, !15, i64 8516, !15, i64 8520, !15, i64 8524, !16, i64 8528, !16, i64 8530, !16, i64 8532, !16, i64 8534, !17, i64 8536, !17, i64 8552, !17, i64 8568, !17, i64 8584, !17, i64 8600, !17, i64 8616, !17, i64 8632, !7, i64 8648, !16, i64 8712, !16, i64 8714, !16, i64 8716, !16, i64 8718, !16, i64 8720, !16, i64 8722, !16, i64 8724, !16, i64 8726, !7, i64 8728, !16, i64 8896, !16, i64 8898, !16, i64 8900, !16, i64 8902, !16, i64 8904, !16, i64 8906, !16, i64 8908, !16, i64 8910, !15, i64 8912, !15, i64 8916, !16, i64 8920, !16, i64 8922, !16, i64 8924, !16, i64 8926, !16, i64 8928, !16, i64 8930, !16, i64 8932, !16, i64 8934, !16, i64 8936, !16, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !16, i64 8944, !16, i64 8946, !16, i64 8948, !16, i64 8950, !16, i64 8952, !16, i64 8954, !13, i64 8956, !13, i64 8960, !15, i64 8964, !16, i64 8968, !16, i64 8970, !13, i64 8972, !16, i64 8976, !16, i64 8978, !16, i64 8980, !16, i64 8982, !102, i64 8984, !7, i64 9760, !7, i64 9772, !16, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !15, i64 10896, !15, i64 10900, !13, i64 10904, !13, i64 10908, !15, i64 10912, !16, i64 10916, !16, i64 10918, !16, i64 10920, !16, i64 10922, !16, i64 10924, !16, i64 10926, !103, i64 10928}
!102 = !{!"ColorBand", !16, i64 0, !16, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!103 = !{!"WalkNavigation", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !16, i64 24, !7, i64 26}
!104 = !{!35, !7, i64 293}
!105 = !{!35, !7, i64 291}
!106 = !{!35, !16, i64 238}
!107 = !{!35, !13, i64 76}
!108 = !{!35, !7, i64 80}
!109 = !{!28, !7, i64 810}
!110 = !{!28, !13, i64 776}
!111 = !{!112, !16, i64 100}
!112 = !{!"BGpic", !6, i64 0, !6, i64 8, !6, i64 16, !113, i64 24, !6, i64 64, !114, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !16, i64 96, !16, i64 98, !16, i64 100, !16, i64 102}
!113 = !{!"ImageUser", !6, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !16, i64 28, !16, i64 30, !16, i64 32, !16, i64 34, !15, i64 36}
!114 = !{!"MovieClipUser", !15, i64 0, !16, i64 4, !16, i64 6}
!115 = distinct !{!115, !21}
!116 = !{!35, !6, i64 152}
!117 = !{!35, !6, i64 352}
!118 = !{!35, !6, i64 360}
!119 = !{!120, !6, i64 928}
!120 = !{!"Material", !39, i64 0, !6, i64 120, !16, i64 128, !16, i64 130, !13, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !13, i64 208, !13, i64 212, !13, i64 216, !13, i64 220, !121, i64 224, !122, i64 312, !13, i64 328, !13, i64 332, !13, i64 336, !13, i64 340, !13, i64 344, !13, i64 348, !13, i64 352, !16, i64 356, !16, i64 358, !16, i64 360, !7, i64 362, !7, i64 363, !13, i64 364, !13, i64 368, !16, i64 372, !16, i64 374, !13, i64 376, !13, i64 380, !13, i64 384, !13, i64 388, !16, i64 392, !16, i64 394, !15, i64 396, !15, i64 400, !15, i64 404, !15, i64 408, !16, i64 412, !16, i64 414, !16, i64 416, !16, i64 418, !13, i64 420, !13, i64 424, !13, i64 428, !13, i64 432, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !13, i64 456, !7, i64 460, !13, i64 524, !13, i64 528, !13, i64 532, !15, i64 536, !7, i64 540, !7, i64 541, !7, i64 542, !7, i64 543, !16, i64 544, !16, i64 546, !16, i64 548, !7, i64 550, !7, i64 551, !16, i64 552, !16, i64 554, !13, i64 556, !13, i64 560, !7, i64 564, !13, i64 580, !13, i64 584, !16, i64 588, !16, i64 590, !6, i64 592, !6, i64 600, !7, i64 608, !7, i64 609, !7, i64 610, !7, i64 611, !16, i64 612, !16, i64 614, !13, i64 616, !13, i64 620, !7, i64 624, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !13, i64 800, !13, i64 804, !13, i64 808, !13, i64 812, !13, i64 816, !16, i64 820, !16, i64 822, !7, i64 824, !7, i64 836, !13, i64 848, !13, i64 852, !13, i64 856, !13, i64 860, !13, i64 864, !13, i64 868, !13, i64 872, !16, i64 876, !16, i64 878, !15, i64 880, !16, i64 884, !16, i64 886, !7, i64 888, !16, i64 904, !16, i64 906, !16, i64 908, !16, i64 910, !16, i64 912, !7, i64 914, !6, i64 920, !17, i64 928}
!121 = !{!"VolumeSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !7, i64 16, !7, i64 28, !7, i64 40, !13, i64 52, !13, i64 56, !13, i64 60, !16, i64 64, !16, i64 66, !16, i64 68, !16, i64 70, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84}
!122 = !{!"GameSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!123 = !{!124, !15, i64 36}
!124 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !6, i64 56}
!125 = !{!124, !15, i64 40}
!126 = distinct !{!126, !21}
!127 = !{!15, !15, i64 0}
!128 = !{!129, !15, i64 24}
!129 = !{!"Base", !6, i64 0, !6, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !16, i64 28, !16, i64 30, !6, i64 32}
!130 = !{!129, !15, i64 16}
!131 = !{!129, !6, i64 32}
!132 = !{!56, !7, i64 1160}
!133 = distinct !{!133, !21}
!134 = distinct !{!134, !21}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = !{!38, !6, i64 168}
!138 = !{!56, !15, i64 432}
!139 = !{!140, !6, i64 296}
!140 = !{!"wmWindowManager", !39, i64 0, !6, i64 120, !6, i64 128, !17, i64 136, !15, i64 152, !16, i64 156, !16, i64 158, !17, i64 160, !17, i64 176, !141, i64 192, !17, i64 232, !17, i64 248, !17, i64 264, !17, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !17, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!141 = !{!"ReportList", !17, i64 0, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !6, i64 32}
!142 = !{!28, !6, i64 672}
!143 = !{!28, !6, i64 648}
!144 = !{!28, !6, i64 640}
!145 = !{!28, !6, i64 664}
!146 = !{!147, !6, i64 8}
!147 = !{!"ViewDepths", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !6, i64 8, !7, i64 16, !7, i64 32}
!148 = !{!28, !6, i64 680}
!149 = !{!150, !6, i64 184}
!150 = !{!"bScreen", !39, i64 0, !17, i64 120, !17, i64 136, !17, i64 152, !17, i64 168, !6, i64 184, !6, i64 192, !15, i64 200, !15, i64 204, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !16, i64 216, !16, i64 218, !16, i64 220, !16, i64 222, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !6, i64 232, !6, i64 240}
!151 = !{!124, !15, i64 48}
!152 = !{!124, !6, i64 56}
!153 = !{!38, !16, i64 4558}
!154 = !{!124, !15, i64 44}
!155 = !{!28, !16, i64 826}
!156 = !{!157, !6, i64 24}
!157 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !16, i64 104, !16, i64 106, !16, i64 108, !16, i64 110, !16, i64 112, !16, i64 114, !16, i64 116, !16, i64 118, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !15, i64 128, !16, i64 132, !16, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !15, i64 160, !15, i64 164, !6, i64 168, !17, i64 176, !17, i64 192, !17, i64 208, !17, i64 224, !17, i64 240}
!158 = !{!159, !15, i64 20}
!159 = !{!"wmDrag", !6, i64 0, !6, i64 8, !15, i64 16, !15, i64 20, !6, i64 24, !7, i64 32, !160, i64 1056, !6, i64 1064, !13, i64 1072, !15, i64 1076, !15, i64 1080, !7, i64 1084, !15, i64 1284}
!160 = !{!"double", !7, i64 0}
!161 = !{!159, !6, i64 24}
!162 = !{!16, !16, i64 0}
!163 = !{!164, !6, i64 48}
!164 = !{!"wmDropBox", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !16, i64 56}
!165 = !{!7, !7, i64 0}
!166 = !{!167, !16, i64 74}
!167 = !{!"wmEvent", !6, i64 0, !6, i64 8, !16, i64 16, !16, i64 18, !15, i64 20, !15, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !16, i64 44, !16, i64 46, !15, i64 48, !15, i64 52, !160, i64 56, !15, i64 64, !15, i64 68, !16, i64 72, !16, i64 74, !16, i64 76, !16, i64 78, !16, i64 80, !16, i64 82, !6, i64 88, !6, i64 96, !16, i64 104, !16, i64 106, !15, i64 108, !6, i64 112}
!168 = !{!164, !16, i64 56}
!169 = !{!159, !15, i64 16}
!170 = !{!124, !6, i64 16}
!171 = !{!140, !6, i64 128}
!172 = distinct !{!172, !21}
!173 = !{!35, !15, i64 88}
!174 = distinct !{!174, !21}
