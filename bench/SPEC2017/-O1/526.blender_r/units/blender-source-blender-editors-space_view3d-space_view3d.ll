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
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
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

; Function Attrs: nounwind uwtable
define dso_local ptr @view3d_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #7
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 4, ptr %11, align 2, !tbaa !38
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 4, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !48
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @view3d_has_tools_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %15, %5 ], [ %3, %1 ]
  %7 = phi ptr [ %14, %5 ], [ null, %1 ]
  %8 = phi ptr [ %12, %5 ], [ null, %1 ]
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !38
  %11 = icmp eq i16 %10, 5
  %12 = select i1 %11, ptr %6, ptr %8
  %13 = icmp eq i16 %10, 6
  %14 = select i1 %13, ptr %6, ptr %7
  %15 = load ptr, ptr %6, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !49

17:                                               ; preds = %5, %1
  %18 = phi ptr [ null, %1 ], [ %12, %5 ]
  %19 = phi ptr [ null, %1 ], [ %14, %5 ]
  %20 = icmp ne ptr %19, null
  %21 = icmp ne ptr %18, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %47, label %23

23:                                               ; preds = %17
  %24 = icmp eq ptr %18, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %23, %29
  %26 = phi ptr [ %27, %29 ], [ %2, %23 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !38
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %25, !llvm.loop !52

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %35 = tail call ptr %34(i64 noundef 384, ptr noundef nonnull @.str.1) #7
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef nonnull %27, ptr noundef %35) #7
  %36 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 8
  store i16 5, ptr %36, align 2, !tbaa !38
  %37 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 9
  store i16 3, ptr %37, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 10
  store i16 1, ptr %38, align 2, !tbaa !48
  br label %39

39:                                               ; preds = %33, %23
  %40 = phi ptr [ %35, %33 ], [ %18, %23 ]
  %41 = icmp eq ptr %19, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %44 = tail call ptr %43(i64 noundef 384, ptr noundef nonnull @.str.2) #7
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %2, ptr noundef %40, ptr noundef %44) #7
  %45 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 8
  store i16 6, ptr %45, align 2, !tbaa !38
  %46 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 9
  store i16 34, ptr %46, align 8, !tbaa !47
  br label %47

47:                                               ; preds = %25, %39, %42, %17
  %48 = phi ptr [ %18, %17 ], [ %40, %42 ], [ %40, %39 ], [ null, %25 ]
  ret ptr %48
}

; Function Attrs: nounwind uwtable
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
  %9 = load i8, ptr %8, align 8, !tbaa !53
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = tail call ptr @BKE_area_find_region_active_win(ptr noundef nonnull %5) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  br label %17

17:                                               ; preds = %4, %7, %14, %11, %1
  %18 = phi ptr [ %2, %1 ], [ null, %7 ], [ null, %4 ], [ %16, %14 ], [ null, %11 ]
  ret ptr %18
}

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_area_find_region_active_win(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  store ptr null, ptr %1, align 8, !tbaa !34
  store ptr null, ptr %2, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !53
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %60

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = icmp eq ptr %11, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 30
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 27
  %21 = load i8, ptr %20, align 1, !tbaa !57
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %58, label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %24, %48
  %29 = phi ptr [ %50, %48 ], [ %26, %24 ]
  %30 = phi ptr [ %49, %48 ], [ null, %24 ]
  %31 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 30
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 8
  %36 = load i16, ptr %35, align 2, !tbaa !38
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %32, i64 0, i32 27
  %40 = load i8, ptr %39, align 1, !tbaa !57
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %32, i64 0, i32 25
  %45 = load i8, ptr %44, align 1, !tbaa !59
  %46 = add i8 %45, -1
  %47 = icmp ult i8 %46, 2
  br i1 %47, label %52, label %48

48:                                               ; preds = %43, %28, %34, %38
  %49 = phi ptr [ %30, %38 ], [ %30, %34 ], [ %30, %28 ], [ %29, %43 ]
  %50 = load ptr, ptr %29, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %28, !llvm.loop !60

52:                                               ; preds = %48, %43, %24
  %53 = phi ptr [ null, %24 ], [ null, %48 ], [ %29, %43 ]
  %54 = phi ptr [ null, %24 ], [ %49, %48 ], [ %29, %43 ]
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = icmp eq ptr %54, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %56, %52, %19
  %59 = phi ptr [ %11, %19 ], [ %53, %52 ], [ %54, %56 ]
  store ptr %13, ptr %1, align 8, !tbaa !34
  store ptr %59, ptr %2, align 8, !tbaa !34
  br label %60

60:                                               ; preds = %58, %56, %10, %3, %6
  %61 = phi i8 [ 0, %6 ], [ 0, %3 ], [ 0, %10 ], [ 0, %56 ], [ 1, %58 ]
  ret i8 %61
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_clipping_local(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_init_mats_rv3d_gl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 6
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 3
  tail call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #7
  tail call void @ED_view3d_clipping_local(ptr noundef %1, ptr noundef nonnull %5) #7
  tail call void @glMultMatrixf(ptr noundef nonnull %5) #7
  ret void
}

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_shade_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %8 = load i16, ptr %7, align 8, !tbaa !64
  %9 = icmp eq i16 %8, 6
  br i1 %9, label %34, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %10, %31
  %15 = phi ptr [ %32, %31 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 30
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  tail call void @WM_jobs_kill_type(ptr noundef %6, ptr noundef nonnull %15, i32 noundef 3) #7
  %24 = load ptr, ptr %20, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.RenderEngine, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @RE_Database_Free(ptr noundef nonnull %26) #7
  br label %29

29:                                               ; preds = %28, %23
  %30 = load ptr, ptr %20, align 8, !tbaa !66
  tail call void @RE_engine_free(ptr noundef %30) #7
  store ptr null, ptr %20, align 8, !tbaa !66
  br label %31

31:                                               ; preds = %29, %19, %14
  %32 = load ptr, ptr %15, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %14, !llvm.loop !69

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !70
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 3
  %40 = load i16, ptr %39, align 8, !tbaa !88
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !91
  tail call void @DAG_id_tag_update(ptr noundef %44, i16 noundef signext 0) #7
  br label %45

45:                                               ; preds = %31, %10, %34, %38, %42
  ret void
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_spacetype_view3d() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.13) #7
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 1, ptr %3, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #7
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @view3d_new, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @view3d_free, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @view3d_init, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @space_view3d_listener, ptr %8, align 8, !tbaa !97
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @view3d_duplicate, ptr %9, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @view3d_operatortypes, ptr %10, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @view3d_keymap, ptr %11, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @view3d_dropboxes, ptr %12, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @view3d_context, ptr %13, align 8, !tbaa !102
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 184, ptr noundef nonnull @.str.15) #7
  %16 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !103
  %17 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 20
  store i32 32, ptr %17, align 8, !tbaa !105
  %18 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 5
  store ptr @view3d_main_area_draw, ptr %18, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 3
  store ptr @view3d_main_area_init, ptr %19, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 4
  store ptr @view3d_main_area_exit, ptr %20, align 8, !tbaa !108
  %21 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 7
  store ptr @view3d_main_area_free, ptr %21, align 8, !tbaa !109
  %22 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 8
  store ptr @view3d_main_area_duplicate, ptr %22, align 8, !tbaa !110
  %23 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 6
  store ptr @view3d_main_area_listener, ptr %23, align 8, !tbaa !111
  %24 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 11
  store ptr @view3d_main_area_cursor, ptr %24, align 8, !tbaa !112
  %25 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 22
  store i16 1, ptr %25, align 2, !tbaa !113
  %26 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %15) #7
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 184, ptr noundef nonnull @.str.16) #7
  %29 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 2
  store i32 4, ptr %29, align 8, !tbaa !103
  %30 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 18
  store i32 180, ptr %30, align 8, !tbaa !114
  %31 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 20
  store i32 17, ptr %31, align 8, !tbaa !105
  %32 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 6
  store ptr @view3d_buttons_area_listener, ptr %32, align 8, !tbaa !111
  %33 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 3
  store ptr @view3d_buttons_area_init, ptr %33, align 8, !tbaa !107
  %34 = getelementptr inbounds %struct.ARegionType, ptr %28, i64 0, i32 5
  store ptr @view3d_buttons_area_draw, ptr %34, align 8, !tbaa !106
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %28) #7
  tail call void @view3d_buttons_register(ptr noundef %28) #7
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = tail call ptr %35(i64 noundef 184, ptr noundef nonnull @.str.17) #7
  %37 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 2
  store i32 5, ptr %37, align 8, !tbaa !103
  %38 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 18
  store i32 160, ptr %38, align 8, !tbaa !114
  %39 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 19
  store i32 50, ptr %39, align 4, !tbaa !115
  %40 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 20
  store i32 17, ptr %40, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 6
  store ptr @view3d_buttons_area_listener, ptr %41, align 8, !tbaa !111
  %42 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 3
  store ptr @view3d_tools_area_init, ptr %42, align 8, !tbaa !107
  %43 = getelementptr inbounds %struct.ARegionType, ptr %36, i64 0, i32 5
  store ptr @view3d_tools_area_draw, ptr %43, align 8, !tbaa !106
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %36) #7
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %45 = tail call ptr %44(i64 noundef 184, ptr noundef nonnull @.str.18) #7
  %46 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 2
  store i32 6, ptr %46, align 8, !tbaa !103
  %47 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 18
  store i32 0, ptr %47, align 8, !tbaa !114
  %48 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 19
  store i32 120, ptr %48, align 4, !tbaa !115
  %49 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 20
  store i32 17, ptr %49, align 8, !tbaa !105
  %50 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 6
  store ptr @view3d_props_area_listener, ptr %50, align 8, !tbaa !111
  %51 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 3
  store ptr @view3d_tools_area_init, ptr %51, align 8, !tbaa !107
  %52 = getelementptr inbounds %struct.ARegionType, ptr %45, i64 0, i32 5
  store ptr @view3d_tools_area_draw, ptr %52, align 8, !tbaa !106
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %45) #7
  tail call void @view3d_tool_props_register(ptr noundef %45) #7
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %54 = tail call ptr %53(i64 noundef 184, ptr noundef nonnull @.str.19) #7
  %55 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 2
  store i32 1, ptr %55, align 8, !tbaa !103
  %56 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 19
  store i32 26, ptr %56, align 4, !tbaa !115
  %57 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 20
  store i32 83, ptr %57, align 8, !tbaa !105
  %58 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 6
  store ptr @view3d_header_area_listener, ptr %58, align 8, !tbaa !111
  %59 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 3
  store ptr @view3d_header_area_init, ptr %59, align 8, !tbaa !107
  %60 = getelementptr inbounds %struct.ARegionType, ptr %54, i64 0, i32 5
  store ptr @view3d_header_area_draw, ptr %60, align 8, !tbaa !106
  tail call void @BLI_addhead(ptr noundef nonnull %26, ptr noundef %54) #7
  tail call void @BKE_spacetype_register(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @view3d_new(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 376, ptr noundef nonnull @.str.20) #7
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 3
  store i32 1, ptr %5, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 4
  store float 0x3FE6666660000000, ptr %6, align 4, !tbaa !117
  %7 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 23
  store i32 1, ptr %7, align 4, !tbaa !118
  %8 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 22
  store i32 1, ptr %8, align 8, !tbaa !119
  %9 = icmp eq ptr %2, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !120
  store i32 %12, ptr %7, align 4, !tbaa !118
  store i32 %12, ptr %8, align 8, !tbaa !119
  %13 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  store ptr %14, ptr %15, align 8, !tbaa !122
  br label %16

16:                                               ; preds = %10, %1
  %17 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 26
  store i16 1, ptr %17, align 4, !tbaa !123
  %18 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 31
  store float 1.000000e+00, ptr %18, align 8, !tbaa !124
  %19 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 37
  store i16 16, ptr %19, align 2, !tbaa !125
  %20 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 38
  store i16 10, ptr %20, align 8, !tbaa !126
  %21 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 24
  store i16 3, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 39
  store i8 7, ptr %22, align 2, !tbaa !127
  %23 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 28
  store i16 2048, ptr %23, align 8, !tbaa !128
  %24 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  store i16 144, ptr %24, align 2, !tbaa !129
  %25 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 30
  store float 3.500000e+01, ptr %25, align 4, !tbaa !130
  %26 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 32
  store float 0x3F847AE140000000, ptr %26, align 4, !tbaa !131
  %27 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 33
  store float 1.000000e+03, ptr %27, align 8, !tbaa !132
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 56), align 2, !tbaa !133
  %29 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 42
  %30 = load i8, ptr %29, align 1, !tbaa !137
  %31 = trunc i16 %28 to i8
  %32 = and i8 %31, 1
  %33 = or i8 %32, %30
  store i8 %33, ptr %29, align 1, !tbaa !137
  %34 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 40
  store i8 1, ptr %34, align 1, !tbaa !138
  %35 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 27
  store i16 3, ptr %35, align 2, !tbaa !139
  %36 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 8
  store float 0x3FC99999A0000000, ptr %36, align 4, !tbaa !140
  %37 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 9
  store i8 2, ptr %37, align 8, !tbaa !141
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %39 = tail call ptr %38(i64 noundef 384, ptr noundef nonnull @.str.21) #7
  %40 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %40, ptr noundef %39) #7
  %41 = getelementptr inbounds %struct.ARegion, ptr %39, i64 0, i32 8
  store i16 1, ptr %41, align 2, !tbaa !38
  %42 = getelementptr inbounds %struct.ARegion, ptr %39, i64 0, i32 9
  store i16 2, ptr %42, align 8, !tbaa !47
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %44 = tail call ptr %43(i64 noundef 384, ptr noundef nonnull @.str.22) #7
  tail call void @BLI_addtail(ptr noundef nonnull %40, ptr noundef %44) #7
  %45 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 8
  store i16 5, ptr %45, align 2, !tbaa !38
  %46 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 9
  store i16 3, ptr %46, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 10
  store i16 1, ptr %47, align 2, !tbaa !48
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %49 = tail call ptr %48(i64 noundef 384, ptr noundef nonnull @.str.23) #7
  tail call void @BLI_addtail(ptr noundef nonnull %40, ptr noundef %49) #7
  %50 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 8
  store i16 6, ptr %50, align 2, !tbaa !38
  %51 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 9
  store i16 34, ptr %51, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 10
  store i16 1, ptr %52, align 2, !tbaa !48
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %54 = tail call ptr %53(i64 noundef 384, ptr noundef nonnull @.str) #7
  tail call void @BLI_addtail(ptr noundef nonnull %40, ptr noundef %54) #7
  %55 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 8
  store i16 4, ptr %55, align 2, !tbaa !38
  %56 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 9
  store i16 4, ptr %56, align 8, !tbaa !47
  %57 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 10
  store i16 1, ptr %57, align 2, !tbaa !48
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %59 = tail call ptr %58(i64 noundef 384, ptr noundef nonnull @.str.24) #7
  tail call void @BLI_addtail(ptr noundef nonnull %40, ptr noundef %59) #7
  %60 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 8
  store i16 0, ptr %60, align 2, !tbaa !38
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %62 = tail call ptr %61(i64 noundef 880, ptr noundef nonnull @.str.25) #7
  %63 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 30
  store ptr %62, ptr %63, align 8, !tbaa !55
  %64 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 17
  store float 1.000000e+00, ptr %64, align 8, !tbaa !142
  %65 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 25
  store i8 1, ptr %65, align 1, !tbaa !59
  %66 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 26
  store i8 7, ptr %66, align 2, !tbaa !143
  %67 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 18
  store float 1.000000e+01, ptr %67, align 8, !tbaa !144
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal void @view3d_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BGpic, ptr %6, i64 0, i32 12
  %8 = load i16, ptr %7, align 4, !tbaa !145
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
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  tail call void @id_us_min(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %13, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !149

19:                                               ; preds = %16, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #7
  %20 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %21) #7
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 51
  %27 = load ptr, ptr %26, align 8, !tbaa !151
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef nonnull %27) #7
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 52
  %33 = load ptr, ptr %32, align 8, !tbaa !152
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Material, ptr %33, i64 0, i32 136
  %37 = load ptr, ptr %36, align 8, !tbaa !153
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @GPU_material_free(ptr noundef nonnull %33) #7
  br label %40

40:                                               ; preds = %39, %35
  %41 = load ptr, ptr %32, align 8, !tbaa !152
  %42 = getelementptr inbounds %struct.Material, ptr %41, i64 0, i32 106
  tail call void @BKE_previewimg_free(ptr noundef nonnull %42) #7
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %44 = load ptr, ptr %32, align 8, !tbaa !152
  tail call void %43(ptr noundef %44) #7
  br label %45

45:                                               ; preds = %40, %31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @view3d_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @space_view3d_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !157
  switch i32 %7, label %35 [
    i32 67108864, label %8
    i32 218103808, label %17
    i32 100663296, label %26
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !159
  %11 = icmp eq i32 %10, 6029312
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 29
  %14 = load i16, ptr %13, align 2, !tbaa !129
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %35, label %34

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !159
  %20 = icmp eq i32 %19, 2949120
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 29
  %23 = load i16, ptr %22, align 2, !tbaa !129
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %35, label %34

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !159
  %29 = icmp eq i32 %28, 327680
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 24
  %32 = load i16, ptr %31, align 8, !tbaa !64
  %33 = icmp eq i16 %32, 5
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %21, %12
  tail call void @ED_area_tag_redraw_regiontype(ptr noundef %1, i32 noundef 0) #7
  br label %35

35:                                               ; preds = %34, %26, %30, %17, %21, %8, %12, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @view3d_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  store ptr null, ptr %4, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 51
  store ptr null, ptr %8, align 8, !tbaa !151
  %9 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  %11 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 22
  %12 = load i32, ptr %11, align 8, !tbaa !119
  %13 = and i32 %12, 16777215
  %14 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 22
  store i32 %13, ptr %14, align 8, !tbaa !119
  br label %15

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 24
  %17 = load i16, ptr %16, align 8, !tbaa !64
  %18 = icmp eq i16 %17, 6
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i16 3, ptr %16, align 8, !tbaa !64
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 52
  store ptr null, ptr %21, align 8, !tbaa !152
  %22 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 18
  %23 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  tail call void @BLI_duplicatelist(ptr noundef nonnull %22, ptr noundef nonnull %23) #7
  %24 = load ptr, ptr %22, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %20, %37
  %27 = phi ptr [ %38, %37 ], [ %24, %20 ]
  %28 = getelementptr inbounds %struct.BGpic, ptr %27, i64 0, i32 12
  %29 = load i16, ptr %28, align 4, !tbaa !145
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
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  tail call void @id_us_plus(ptr noundef %36) #7
  br label %37

37:                                               ; preds = %34, %26
  %38 = load ptr, ptr %27, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %26, !llvm.loop !160

40:                                               ; preds = %37, %20
  %41 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 51
  store ptr null, ptr %41, align 8, !tbaa !151
  ret ptr %3
}

declare void @view3d_operatortypes() #1

declare void @view3d_keymap(ptr noundef) #1

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
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
  %20 = load i32, ptr %19, align 8, !tbaa !161
  %21 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %22 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %13
  %26 = icmp eq i8 %21, 0
  br label %27

27:                                               ; preds = %25, %48
  %28 = phi ptr [ %23, %25 ], [ %49, %48 ]
  %29 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !162
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !164
  %36 = and i32 %35, %20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.Base, ptr %28, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !165
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 102
  %42 = load i8, ptr %41, align 8, !tbaa !166
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  br i1 %26, label %47, label %46

46:                                               ; preds = %45
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %40) #7
  br label %48

47:                                               ; preds = %45
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %15, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %28) #7
  br label %48

48:                                               ; preds = %27, %33, %46, %47, %38
  %49 = load ptr, ptr %28, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %27, !llvm.loop !167

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
  %65 = load i32, ptr %64, align 8, !tbaa !161
  %66 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  %67 = getelementptr inbounds %struct.Scene, ptr %60, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %100, label %70

70:                                               ; preds = %58
  %71 = icmp eq i8 %66, 0
  br label %72

72:                                               ; preds = %70, %97
  %73 = phi ptr [ %68, %70 ], [ %98, %97 ]
  %74 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !162
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !164
  %81 = and i32 %80, %65
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !165
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 102
  %87 = load i8, ptr %86, align 8, !tbaa !166
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = tail call zeroext i8 @BKE_object_is_libdata(ptr noundef %85) #7
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  br i1 %71, label %96, label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %84, align 8, !tbaa !165
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %95) #7
  br label %97

96:                                               ; preds = %93
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %60, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %73) #7
  br label %97

97:                                               ; preds = %72, %78, %90, %96, %94, %83
  %98 = load ptr, ptr %73, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %72, !llvm.loop !168

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
  %114 = load i32, ptr %113, align 8, !tbaa !161
  %115 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  %116 = getelementptr inbounds %struct.Scene, ptr %109, i64 0, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  %118 = icmp eq ptr %117, null
  br i1 %118, label %140, label %119

119:                                              ; preds = %107
  %120 = icmp eq i8 %115, 0
  br label %121

121:                                              ; preds = %119, %137
  %122 = phi ptr [ %117, %119 ], [ %138, %137 ]
  %123 = getelementptr inbounds %struct.Base, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !164
  %125 = and i32 %124, %114
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.Base, ptr %122, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !165
  %130 = getelementptr inbounds %struct.Object, ptr %129, i64 0, i32 102
  %131 = load i8, ptr %130, align 8, !tbaa !166
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  br i1 %120, label %136, label %135

135:                                              ; preds = %134
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %129) #7
  br label %137

136:                                              ; preds = %134
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %109, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %122) #7
  br label %137

137:                                              ; preds = %121, %135, %136, %127
  %138 = load ptr, ptr %122, align 8, !tbaa !34
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %121, !llvm.loop !169

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
  %154 = load i32, ptr %153, align 8, !tbaa !161
  %155 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.9) #7
  %156 = getelementptr inbounds %struct.Scene, ptr %149, i64 0, i32 5
  %157 = load ptr, ptr %156, align 8, !tbaa !34
  %158 = icmp eq ptr %157, null
  br i1 %158, label %180, label %159

159:                                              ; preds = %147
  %160 = icmp eq i8 %155, 0
  br label %161

161:                                              ; preds = %159, %177
  %162 = phi ptr [ %157, %159 ], [ %178, %177 ]
  %163 = getelementptr inbounds %struct.Base, ptr %162, i64 0, i32 2
  %164 = load i32, ptr %163, align 8, !tbaa !164
  %165 = and i32 %164, %154
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %177, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.Base, ptr %162, i64 0, i32 7
  %169 = load ptr, ptr %168, align 8, !tbaa !165
  %170 = getelementptr inbounds %struct.Object, ptr %169, i64 0, i32 102
  %171 = load i8, ptr %170, align 8, !tbaa !166
  %172 = and i8 %171, 3
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  br i1 %160, label %176, label %175

175:                                              ; preds = %174
  tail call void @CTX_data_id_list_add(ptr noundef %2, ptr noundef %169) #7
  br label %177

176:                                              ; preds = %174
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %149, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %162) #7
  br label %177

177:                                              ; preds = %161, %175, %176, %167
  %178 = load ptr, ptr %162, align 8, !tbaa !34
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %161, !llvm.loop !170

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
  %188 = load ptr, ptr %187, align 8, !tbaa !171
  %189 = icmp eq ptr %188, null
  br i1 %189, label %245, label %190

190:                                              ; preds = %184
  %191 = icmp eq ptr %185, null
  %192 = getelementptr inbounds %struct.Scene, ptr %186, i64 0, i32 12
  %193 = getelementptr inbounds %struct.View3D, ptr %185, i64 0, i32 22
  %194 = select i1 %191, ptr %192, ptr %193
  %195 = load i32, ptr %194, align 8, !tbaa !161
  %196 = getelementptr inbounds %struct.Base, ptr %188, i64 0, i32 2
  %197 = load i32, ptr %196, align 8, !tbaa !164
  %198 = and i32 %197, %195
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %245, label %200

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.Base, ptr %188, i64 0, i32 7
  %202 = load ptr, ptr %201, align 8, !tbaa !165
  %203 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 102
  %204 = load i8, ptr %203, align 8, !tbaa !166
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 27
  %209 = load i32, ptr %208, align 8, !tbaa !172
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %245, label %212

212:                                              ; preds = %207, %200
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %186, ptr noundef nonnull @RNA_ObjectBase, ptr noundef nonnull %188) #7
  br label %245

213:                                              ; preds = %181
  %214 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.12) #7
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %245, label %216

216:                                              ; preds = %213
  %217 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %218 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %219 = getelementptr inbounds %struct.Scene, ptr %218, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !171
  %221 = icmp eq ptr %220, null
  br i1 %221, label %245, label %222

222:                                              ; preds = %216
  %223 = icmp eq ptr %217, null
  %224 = getelementptr inbounds %struct.Scene, ptr %218, i64 0, i32 12
  %225 = getelementptr inbounds %struct.View3D, ptr %217, i64 0, i32 22
  %226 = select i1 %223, ptr %224, ptr %225
  %227 = load i32, ptr %226, align 8, !tbaa !161
  %228 = getelementptr inbounds %struct.Base, ptr %220, i64 0, i32 2
  %229 = load i32, ptr %228, align 8, !tbaa !164
  %230 = and i32 %229, %227
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %245, label %232

232:                                              ; preds = %222
  %233 = getelementptr inbounds %struct.Base, ptr %220, i64 0, i32 7
  %234 = load ptr, ptr %233, align 8, !tbaa !165
  %235 = getelementptr inbounds %struct.Object, ptr %234, i64 0, i32 102
  %236 = load i8, ptr %235, align 8, !tbaa !166
  %237 = and i8 %236, 1
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.Object, ptr %234, i64 0, i32 27
  %241 = load i32, ptr %240, align 8, !tbaa !172
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %239, %232
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef %234) #7
  br label %245

245:                                              ; preds = %213, %216, %222, %244, %239, %184, %190, %212, %207, %6, %180, %140, %100, %51
  %246 = phi i32 [ -1, %6 ], [ 1, %51 ], [ 1, %100 ], [ 1, %140 ], [ 1, %180 ], [ 1, %207 ], [ 1, %212 ], [ 1, %190 ], [ 1, %184 ], [ 1, %239 ], [ 1, %244 ], [ 1, %222 ], [ 1, %216 ], [ 0, %213 ]
  ret i32 %246
}

declare void @view3d_main_area_draw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @view3d_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #7
  %8 = load ptr, ptr %3, align 8, !tbaa !173
  %9 = tail call ptr @WM_keymap_find(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 0) #7
  %10 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %9) #7
  %11 = load ptr, ptr %3, align 8, !tbaa !173
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0) #7
  %13 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %12) #7
  %14 = load ptr, ptr %3, align 8, !tbaa !173
  %15 = tail call ptr @WM_keymap_find(ptr noundef %14, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 0) #7
  %16 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %15) #7
  %17 = load ptr, ptr %3, align 8, !tbaa !173
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 0) #7
  %19 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %18) #7
  %20 = load ptr, ptr %3, align 8, !tbaa !173
  %21 = tail call ptr @WM_keymap_find(ptr noundef %20, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 0) #7
  %22 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %21) #7
  %23 = load ptr, ptr %3, align 8, !tbaa !173
  %24 = tail call ptr @WM_keymap_find(ptr noundef %23, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0) #7
  %25 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %24) #7
  %26 = load ptr, ptr %3, align 8, !tbaa !173
  %27 = tail call ptr @WM_keymap_find(ptr noundef %26, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 0) #7
  %28 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %27) #7
  %29 = load ptr, ptr %3, align 8, !tbaa !173
  %30 = tail call ptr @WM_keymap_find(ptr noundef %29, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 0) #7
  %31 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %30) #7
  %32 = load ptr, ptr %3, align 8, !tbaa !173
  %33 = tail call ptr @WM_keymap_find(ptr noundef %32, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0) #7
  %34 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %33) #7
  %35 = load ptr, ptr %3, align 8, !tbaa !173
  %36 = tail call ptr @WM_keymap_find(ptr noundef %35, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0) #7
  %37 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %36) #7
  %38 = load ptr, ptr %3, align 8, !tbaa !173
  %39 = tail call ptr @WM_keymap_find(ptr noundef %38, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 0) #7
  %40 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %39) #7
  %41 = load ptr, ptr %3, align 8, !tbaa !173
  %42 = tail call ptr @WM_keymap_find(ptr noundef %41, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 0) #7
  %43 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %42) #7
  %44 = load ptr, ptr %3, align 8, !tbaa !173
  %45 = tail call ptr @WM_keymap_find(ptr noundef %44, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0) #7
  %46 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %45) #7
  %47 = load ptr, ptr %3, align 8, !tbaa !173
  %48 = tail call ptr @WM_keymap_find(ptr noundef %47, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0) #7
  %49 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %48) #7
  %50 = load ptr, ptr %3, align 8, !tbaa !173
  %51 = tail call ptr @WM_keymap_find(ptr noundef %50, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 0) #7
  %52 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %51) #7
  %53 = load ptr, ptr %3, align 8, !tbaa !173
  %54 = tail call ptr @WM_keymap_find(ptr noundef %53, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0) #7
  %55 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %54) #7
  %56 = load ptr, ptr %3, align 8, !tbaa !173
  %57 = tail call ptr @WM_keymap_find(ptr noundef %56, ptr noundef nonnull @.str.49, i32 noundef 0, i32 noundef 0) #7
  %58 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %57) #7
  %59 = load ptr, ptr %3, align 8, !tbaa !173
  %60 = tail call ptr @WM_keymap_find(ptr noundef %59, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 0) #7
  %61 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %60) #7
  %62 = load ptr, ptr %3, align 8, !tbaa !173
  %63 = tail call ptr @WM_keymap_find(ptr noundef %62, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 0) #7
  %64 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %63) #7
  %65 = load ptr, ptr %3, align 8, !tbaa !173
  %66 = tail call ptr @WM_keymap_find(ptr noundef %65, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 0) #7
  %67 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %66) #7
  %68 = load ptr, ptr %3, align 8, !tbaa !173
  %69 = tail call ptr @WM_keymap_find(ptr noundef %68, ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef 0) #7
  %70 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %69) #7
  %71 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 0) #7
  %72 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %6, ptr noundef %71) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view3d_main_area_exit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  tail call void @WM_jobs_kill_type(ptr noundef %0, ptr noundef %1, i32 noundef 3) #7
  %9 = load ptr, ptr %5, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.RenderEngine, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @RE_Database_Free(ptr noundef nonnull %11) #7
  br label %14

14:                                               ; preds = %13, %8
  %15 = load ptr, ptr %5, align 8, !tbaa !66
  tail call void @RE_engine_free(ptr noundef %15) #7
  store ptr null, ptr %5, align 8, !tbaa !66
  br label %16

16:                                               ; preds = %2, %14
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !176
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @GPU_offscreen_free(ptr noundef nonnull %18) #7
  store ptr null, ptr %17, align 8, !tbaa !176
  br label %21

21:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view3d_main_area_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !177
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %7) #7
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !178
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %13) #7
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @RE_engine_free(ptr noundef nonnull %19) #7
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !179
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ViewDepths, ptr %24, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !180
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %31(ptr noundef nonnull %28) #7
  br label %32

32:                                               ; preds = %30, %26
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %34 = load ptr, ptr %23, align 8, !tbaa !179
  tail call void %33(ptr noundef %34) #7
  br label %35

35:                                               ; preds = %32, %22
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !182
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %40(ptr noundef nonnull %37) #7
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !176
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @GPU_offscreen_free(ptr noundef nonnull %43) #7
  br label %46

46:                                               ; preds = %45, %41
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %47(ptr noundef nonnull %3) #7
  store ptr null, ptr %2, align 8, !tbaa !55
  br label %48

48:                                               ; preds = %46, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @view3d_main_area_duplicate(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %5 = tail call ptr %4(ptr noundef nonnull %0) #7
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !177
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %11 = tail call ptr %10(ptr noundef nonnull %7) #7
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 10
  store ptr %11, ptr %12, align 8, !tbaa !177
  br label %13

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %19 = tail call ptr %18(ptr noundef nonnull %15) #7
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 9
  store ptr %19, ptr %20, align 8, !tbaa !178
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %22, i8 0, i64 40, i1 false)
  br label %23

23:                                               ; preds = %1, %21
  %24 = phi ptr [ %5, %21 ], [ null, %1 ]
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define internal void @view3d_main_area_listener(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !157
  %11 = add i32 %10, -50331648
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 8)
  switch i32 %12, label %244 [
    i32 11, label %13
    i32 1, label %28
    i32 2, label %83
    i32 13, label %94
    i32 6, label %103
    i32 8, label %104
    i32 3, label %109
    i32 19, label %239
    i32 5, label %141
    i32 7, label %153
    i32 4, label %154
    i32 17, label %155
    i32 12, label %164
    i32 15, label %179
    i32 0, label %184
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !159
  %16 = add i32 %15, -4587520
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 16)
  switch i32 %17, label %244 [
    i32 1, label %18
    i32 4, label %18
    i32 3, label %19
    i32 0, label %19
    i32 2, label %23
  ]

18:                                               ; preds = %13, %13
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

19:                                               ; preds = %13, %13
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !185
  switch i32 %21, label %244 [
    i32 1, label %22
    i32 3, label %22
    i32 4, label %22
  ]

22:                                               ; preds = %19, %19, %19
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !185
  %26 = icmp eq i32 %25, 6
  br i1 %26, label %27, label %244

27:                                               ; preds = %23
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !159
  switch i32 %30, label %78 [
    i32 6619136, label %31
    i32 196608, label %77
    i32 1179648, label %77
    i32 458752, label %77
    i32 524288, label %77
    i32 589824, label %77
    i32 1048576, label %77
    i32 262144, label %77
    i32 131072, label %77
    i32 720896, label %77
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !186
  %34 = icmp eq ptr %33, null
  br i1 %34, label %77, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !187
  %38 = getelementptr inbounds %struct.wmWindowManager, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !188
  %40 = icmp eq ptr %39, null
  br i1 %40, label %77, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 5
  br label %43

43:                                               ; preds = %48, %41
  %44 = phi i32 [ 0, %41 ], [ %52, %48 ]
  %45 = phi ptr [ %42, %41 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.Base, ptr %46, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !164
  %51 = and i32 %50, 1048575
  %52 = or i32 %51, %44
  %53 = icmp eq i32 %52, 1048575
  br i1 %53, label %54, label %43, !llvm.loop !189

54:                                               ; preds = %48, %43
  %55 = phi i32 [ 1048575, %48 ], [ %44, %43 ]
  %56 = getelementptr inbounds %struct.wmWindow, ptr %39, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !190
  %58 = getelementptr inbounds %struct.bScreen, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %54, %74
  %62 = phi ptr [ %75, %74 ], [ %59, %54 ]
  %63 = getelementptr inbounds %struct.ScrArea, ptr %62, i64 0, i32 8
  %64 = load i8, ptr %63, align 8, !tbaa !53
  %65 = icmp eq i8 %64, 1
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ScrArea, ptr %62, i64 0, i32 20
  %68 = tail call i32 @BLI_findindex(ptr noundef nonnull %67, ptr noundef %2) #7
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ScrArea, ptr %62, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !56
  %73 = getelementptr inbounds %struct.View3D, ptr %72, i64 0, i32 12
  store i32 %55, ptr %73, align 8, !tbaa !192
  br label %77

74:                                               ; preds = %66, %61
  %75 = load ptr, ptr %62, align 8, !tbaa !34
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %61, !llvm.loop !193

77:                                               ; preds = %74, %28, %28, %28, %28, %28, %28, %28, %28, %28, %31, %35, %54, %70
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %78

78:                                               ; preds = %77, %28
  %79 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %80 = load i32, ptr %79, align 8, !tbaa !185
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %244

82:                                               ; preds = %78
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

83:                                               ; preds = %4
  %84 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !159
  %86 = add i32 %85, -1179648
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 16)
  switch i32 %87, label %89 [
    i32 3, label %88
    i32 4, label %88
    i32 0, label %88
    i32 2, label %88
    i32 5, label %88
    i32 6, label %88
    i32 8, label %88
    i32 7, label %88
    i32 9, label %88
    i32 12, label %88
  ]

88:                                               ; preds = %83, %83, %83, %83, %83, %83, %83, %83, %83, %83
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %89

89:                                               ; preds = %83, %88
  %90 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %91 = load i32, ptr %90, align 8, !tbaa !185
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %244

93:                                               ; preds = %89
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

94:                                               ; preds = %4
  %95 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !159
  switch i32 %96, label %98 [
    i32 5963776, label %97
    i32 6029312, label %97
    i32 5898240, label %97
  ]

97:                                               ; preds = %94, %94, %94
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %98

98:                                               ; preds = %94, %97
  %99 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %100 = load i32, ptr %99, align 8, !tbaa !185
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %244

102:                                              ; preds = %98
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

103:                                              ; preds = %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

104:                                              ; preds = %4
  %105 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %106 = load i32, ptr %105, align 8, !tbaa !185
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %244

108:                                              ; preds = %104
  tail call void @ED_region_tag_redraw_overlay(ptr noundef %2) #7
  br label %244

109:                                              ; preds = %4
  %110 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !159
  switch i32 %111, label %244 [
    i32 1966080, label %112
    i32 327680, label %112
    i32 2031616, label %140
    i32 2097152, label %140
  ]

112:                                              ; preds = %109, %109
  %113 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !171
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.Base, ptr %114, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !165
  br label %119

119:                                              ; preds = %112, %116
  %120 = phi ptr [ %118, %116 ], [ null, %112 ]
  %121 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %122 = load i16, ptr %121, align 8, !tbaa !64
  %123 = icmp eq i16 %122, 4
  br i1 %123, label %139, label %124

124:                                              ; preds = %119
  %125 = icmp eq ptr %120, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.Object, ptr %120, i64 0, i32 27
  %128 = load i32, ptr %127, align 8, !tbaa !172
  %129 = icmp eq i32 %128, 16
  br i1 %129, label %139, label %130

130:                                              ; preds = %126, %124
  %131 = icmp eq i16 %122, 5
  br i1 %131, label %132, label %244

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 37, i32 20
  %134 = load i16, ptr %133, align 2, !tbaa !194
  %135 = icmp eq i16 %134, 2
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %6) #7
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %244, label %139

139:                                              ; preds = %136, %132, %126, %119
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

140:                                              ; preds = %109, %109
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

141:                                              ; preds = %4
  %142 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %143 = load i32, ptr %142, align 8, !tbaa !159
  switch i32 %143, label %244 [
    i32 2621440, label %144
    i32 2686976, label %152
  ]

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %146 = load i16, ptr %145, align 8, !tbaa !64
  switch i16 %146, label %244 [
    i16 4, label %151
    i16 5, label %147
  ]

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 37, i32 20
  %149 = load i16, ptr %148, align 2, !tbaa !194
  %150 = icmp eq i16 %149, 2
  br i1 %150, label %151, label %244

151:                                              ; preds = %144, %147
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

152:                                              ; preds = %141
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

153:                                              ; preds = %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

154:                                              ; preds = %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

155:                                              ; preds = %4
  %156 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %157 = load i32, ptr %156, align 8, !tbaa !159
  %158 = icmp eq i32 %157, 3342336
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %161 = load i32, ptr %160, align 8, !tbaa !185
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %244

163:                                              ; preds = %159, %155
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

164:                                              ; preds = %4
  %165 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %166 = load i32, ptr %165, align 8, !tbaa !159
  %167 = icmp eq i32 %166, 589824
  br i1 %167, label %168, label %244

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 7
  %170 = load i32, ptr %169, align 4, !tbaa !195
  %171 = icmp eq i32 %170, 4096
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %174 = load ptr, ptr %173, align 8, !tbaa !55
  %175 = getelementptr inbounds %struct.RegionView3D, ptr %174, i64 0, i32 32
  %176 = load i16, ptr %175, align 2, !tbaa !196
  %177 = or i16 %176, 16
  store i16 %177, ptr %175, align 2, !tbaa !196
  br label %178

178:                                              ; preds = %172, %168
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

179:                                              ; preds = %4
  %180 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %181 = load i32, ptr %180, align 8, !tbaa !185
  %182 = icmp eq i32 %181, 5
  br i1 %182, label %183, label %244

183:                                              ; preds = %179
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

184:                                              ; preds = %4
  %185 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %186 = load i32, ptr %185, align 8, !tbaa !159
  %187 = add i32 %186, -65536
  %188 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 16)
  switch i32 %188, label %244 [
    i32 3, label %189
    i32 7, label %189
    i32 0, label %190
    i32 1, label %190
    i32 6, label %190
  ]

189:                                              ; preds = %184, %184
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

190:                                              ; preds = %184, %184, %184
  %191 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 9
  %192 = load ptr, ptr %191, align 8, !tbaa !186
  %193 = icmp eq ptr %192, null
  br i1 %193, label %238, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !187
  %197 = getelementptr inbounds %struct.wmWindowManager, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !188
  %199 = icmp eq ptr %198, null
  br i1 %199, label %238, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.bScreen, ptr %192, i64 0, i32 5
  %202 = load ptr, ptr %201, align 8, !tbaa !183
  %203 = getelementptr inbounds %struct.Scene, ptr %202, i64 0, i32 5
  br label %204

204:                                              ; preds = %209, %200
  %205 = phi i32 [ 0, %200 ], [ %213, %209 ]
  %206 = phi ptr [ %203, %200 ], [ %207, %209 ]
  %207 = load ptr, ptr %206, align 8, !tbaa !34
  %208 = icmp eq ptr %207, null
  br i1 %208, label %215, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.Base, ptr %207, i64 0, i32 2
  %211 = load i32, ptr %210, align 8, !tbaa !164
  %212 = and i32 %211, 1048575
  %213 = or i32 %212, %205
  %214 = icmp eq i32 %213, 1048575
  br i1 %214, label %215, label %204, !llvm.loop !189

215:                                              ; preds = %209, %204
  %216 = phi i32 [ 1048575, %209 ], [ %205, %204 ]
  %217 = getelementptr inbounds %struct.wmWindow, ptr %198, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !190
  %219 = getelementptr inbounds %struct.bScreen, ptr %218, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !34
  %221 = icmp eq ptr %220, null
  br i1 %221, label %238, label %222

222:                                              ; preds = %215, %235
  %223 = phi ptr [ %236, %235 ], [ %220, %215 ]
  %224 = getelementptr inbounds %struct.ScrArea, ptr %223, i64 0, i32 8
  %225 = load i8, ptr %224, align 8, !tbaa !53
  %226 = icmp eq i8 %225, 1
  br i1 %226, label %227, label %235

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.ScrArea, ptr %223, i64 0, i32 20
  %229 = tail call i32 @BLI_findindex(ptr noundef nonnull %228, ptr noundef %2) #7
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.ScrArea, ptr %223, i64 0, i32 19
  %233 = load ptr, ptr %232, align 8, !tbaa !56
  %234 = getelementptr inbounds %struct.View3D, ptr %233, i64 0, i32 12
  store i32 %216, ptr %234, align 8, !tbaa !192
  br label %238

235:                                              ; preds = %227, %222
  %236 = load ptr, ptr %223, align 8, !tbaa !34
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %222, !llvm.loop !193

238:                                              ; preds = %235, %231, %215, %194, %190
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

239:                                              ; preds = %4
  %240 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %241 = load i32, ptr %240, align 8, !tbaa !185
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %244

244:                                              ; preds = %144, %130, %136, %139, %19, %239, %243, %189, %238, %184, %179, %183, %164, %178, %159, %163, %152, %141, %151, %147, %140, %109, %104, %108, %102, %98, %93, %89, %78, %82, %18, %13, %22, %27, %23, %4, %154, %153, %103
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view3d_main_area_cursor(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !183
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i32 1006, i32 1002
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef %11) #7
  ret void
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @view3d_buttons_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !157
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
  %11 = load i32, ptr %10, align 8, !tbaa !159
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
  %16 = load i32, ptr %15, align 8, !tbaa !185
  switch i32 %16, label %63 [
    i32 1, label %62
    i32 3, label %62
    i32 4, label %62
  ]

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !159
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
  %23 = load i32, ptr %22, align 8, !tbaa !185
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %62, label %63

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !159
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
  %32 = load i32, ptr %31, align 8, !tbaa !159
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
  %36 = load i32, ptr %35, align 8, !tbaa !185
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %62, label %63

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !185
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %62, label %63

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !159
  %45 = icmp eq i32 %44, 589824
  br i1 %45, label %62, label %63

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !185
  %49 = icmp eq i32 %48, 5
  br i1 %49, label %62, label %63

50:                                               ; preds = %4
  %51 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !159
  %53 = icmp eq i32 %52, 5963776
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !185
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %62, label %63

58:                                               ; preds = %4
  %59 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !185
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %50, %54, %46, %42, %38, %4, %4, %34, %25, %25, %25, %25, %25, %25, %25, %21, %14, %14, %14, %9, %9
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %63

63:                                               ; preds = %62, %14, %58, %54, %46, %42, %38, %34, %25, %21, %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view3d_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view3d_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #7
  ret void
}

declare void @view3d_buttons_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @view3d_tools_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view3d_tools_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_mode_string(ptr noundef %0) #7
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %3, i32 noundef -1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view3d_props_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !157
  switch i32 %6, label %20 [
    i32 16777216, label %7
    i32 67108864, label %11
    i32 251658240, label %15
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !159
  %10 = icmp eq i32 %9, 262144
  br i1 %10, label %19, label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !159
  %14 = icmp eq i32 %13, 720896
  br i1 %14, label %19, label %20

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !159
  %18 = icmp eq i32 %17, 589824
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %20

20:                                               ; preds = %19, %15, %11, %7, %4
  ret void
}

declare void @view3d_tool_props_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @view3d_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !157
  switch i32 %6, label %15 [
    i32 67108864, label %7
    i32 251658240, label %10
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !159
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
  %12 = load i32, ptr %11, align 8, !tbaa !159
  %13 = icmp eq i32 %12, 589824
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %7, %7, %7, %7, %7, %7, %7, %7, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %15

15:                                               ; preds = %14, %10, %7, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view3d_header_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #7
  tail call void @ED_region_header_init(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @view3d_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #7
  ret void
}

declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #1

declare void @WM_jobs_kill_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RE_Database_Free(ptr noundef) local_unnamed_addr #1

declare void @RE_engine_free(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @id_us_min(ptr noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @GPU_material_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #1

declare void @ED_area_tag_redraw_regiontype(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @view3d_ob_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !197
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !201
  %12 = icmp eq i16 %11, 16975
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi i32 [ 1, %7 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @view3d_ob_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull %7) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @view3d_mat_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !197
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !201
  %12 = icmp eq i16 %11, 16717
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi i32 [ 1, %7 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @view3d_id_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_ima_mesh_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %5 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !165
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !88
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !197
  switch i32 %15, label %29 [
    i32 0, label %16
    i32 2, label %22
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !201
  %21 = icmp eq i16 %20, 19785
  br i1 %21, label %30, label %29

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !204
  %25 = icmp eq i32 %24, 0
  %26 = icmp eq i32 %24, 696
  %27 = or i1 %25, %26
  %28 = zext i1 %27 to i32
  br label %30

29:                                               ; preds = %16, %13
  br label %30

30:                                               ; preds = %29, %22, %16, %3, %7
  %31 = phi i32 [ 0, %7 ], [ 0, %3 ], [ 1, %16 ], [ 0, %29 ], [ %28, %22 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal void @view3d_id_path_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !202
  %9 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %8, ptr noundef nonnull @.str.32, ptr noundef nonnull %9) #7
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !205
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !202
  tail call void @RNA_string_set(ptr noundef %16, ptr noundef nonnull @.str.33, ptr noundef nonnull %11) #7
  br label %17

17:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_ima_empty_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %5 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %9 = load i16, ptr %8, align 2, !tbaa !206
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %34, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !165
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !88
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !197
  switch i32 %19, label %33 [
    i32 0, label %20
    i32 2, label %26
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !200
  %23 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !201
  %25 = icmp eq i16 %24, 19785
  br i1 %25, label %34, label %33

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !204
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i32 %28, 696
  %31 = or i1 %29, %30
  %32 = zext i1 %31 to i32
  br label %34

33:                                               ; preds = %20, %17
  br label %34

34:                                               ; preds = %7, %33, %26, %20, %11
  %35 = phi i32 [ 0, %11 ], [ 1, %20 ], [ 0, %33 ], [ %32, %26 ], [ 0, %7 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_ima_bg_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %5 = load i16, ptr %4, align 2, !tbaa !206
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %8) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !197
  switch i32 %13, label %27 [
    i32 0, label %14
    i32 2, label %20
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !200
  %17 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4
  %18 = load i16, ptr %17, align 8, !tbaa !201
  %19 = icmp eq i16 %18, 19785
  br i1 %19, label %28, label %27

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !204
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq i32 %22, 696
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i32
  br label %28

27:                                               ; preds = %14, %11
  br label %28

28:                                               ; preds = %27, %20, %14, %7, %3
  %29 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 1, %14 ], [ 0, %27 ], [ %26, %20 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @view3d_group_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !197
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !201
  %12 = icmp eq i16 %11, 21063
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi i32 [ 1, %7 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @view3d_group_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 7
  store i16 6, ptr %5, align 8, !tbaa !208
  %6 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef nonnull %8) #7
  ret void
}

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #1

declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #1

declare void @CTX_data_id_list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_data_list_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_data_type_set(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare zeroext i8 @BKE_object_is_libdata(ptr noundef) local_unnamed_addr #1

declare void @CTX_data_pointer_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GPU_offscreen_free(ptr noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw_overlay(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #1

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_data_mode_string(ptr noundef) local_unnamed_addr #1

declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #1

declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !45, i64 214}
!39 = !{!"ARegion", !35, i64 0, !35, i64 8, !40, i64 16, !43, i64 176, !43, i64 192, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !42, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !35, i64 240, !46, i64 248, !46, i64 264, !46, i64 280, !46, i64 296, !46, i64 312, !46, i64 328, !46, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!40 = !{!"View2D", !41, i64 0, !41, i64 16, !43, i64 32, !43, i64 48, !43, i64 64, !36, i64 80, !36, i64 88, !42, i64 96, !42, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !35, i64 128, !44, i64 136, !44, i64 140, !35, i64 144, !35, i64 152}
!41 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!42 = !{!"float", !36, i64 0}
!43 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"int", !36, i64 0}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !35, i64 0, !35, i64 8}
!47 = !{!39, !45, i64 216}
!48 = !{!39, !45, i64 218}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !50, !51}
!53 = !{!54, !36, i64 72}
!54 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 72, !36, i64 73, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !46, i64 96, !46, i64 112, !46, i64 128, !46, i64 144}
!55 = !{!39, !35, i64 376}
!56 = !{!54, !35, i64 96}
!57 = !{!58, !36, i64 811}
!58 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !35, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !36, i64 696, !36, i64 760, !42, i64 776, !42, i64 780, !42, i64 784, !42, i64 788, !36, i64 792, !42, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !45, i64 824, !45, i64 826, !36, i64 828, !45, i64 844, !45, i64 846, !42, i64 848, !36, i64 852, !42, i64 864, !36, i64 868}
!59 = !{!58, !36, i64 809}
!60 = distinct !{!60, !50, !51}
!61 = !{!62, !35, i64 1552}
!62 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !45, i64 1040, !45, i64 1042, !45, i64 1044, !45, i64 1046, !63, i64 1048, !36, i64 1056, !45, i64 1072, !35, i64 1080, !46, i64 1088, !46, i64 1104, !46, i64 1120, !46, i64 1136, !46, i64 1152, !46, i64 1168, !46, i64 1184, !46, i64 1200, !46, i64 1216, !46, i64 1232, !46, i64 1248, !46, i64 1264, !46, i64 1280, !46, i64 1296, !46, i64 1312, !46, i64 1328, !46, i64 1344, !46, i64 1360, !46, i64 1376, !46, i64 1392, !46, i64 1408, !46, i64 1424, !46, i64 1440, !46, i64 1456, !46, i64 1472, !46, i64 1488, !46, i64 1504, !46, i64 1520, !46, i64 1536, !46, i64 1552, !46, i64 1568, !46, i64 1584, !46, i64 1600, !46, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!63 = !{!"long", !36, i64 0}
!64 = !{!65, !45, i64 232}
!65 = !{!"View3D", !35, i64 0, !35, i64 8, !46, i64 16, !44, i64 32, !42, i64 36, !36, i64 40, !36, i64 56, !42, i64 72, !42, i64 76, !36, i64 80, !36, i64 81, !44, i64 84, !44, i64 88, !45, i64 92, !45, i64 94, !35, i64 96, !35, i64 104, !41, i64 112, !46, i64 128, !35, i64 144, !35, i64 152, !36, i64 160, !44, i64 224, !44, i64 228, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !45, i64 240, !45, i64 242, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !36, i64 260, !36, i64 272, !45, i64 284, !45, i64 286, !45, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !46, i64 296, !46, i64 312, !46, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !35, i64 352, !35, i64 360, !35, i64 368}
!66 = !{!58, !35, i64 656}
!67 = !{!68, !35, i64 48}
!68 = !{!"RenderEngine", !35, i64 0, !35, i64 8, !44, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !35, i64 48, !46, i64 56, !36, i64 72, !44, i64 584, !44, i64 588, !35, i64 592, !44, i64 600, !44, i64 604, !41, i64 608, !43, i64 624, !36, i64 640, !44, i64 704, !44, i64 708}
!69 = distinct !{!69, !50, !51}
!70 = !{!71, !35, i64 176}
!71 = !{!"Scene", !72, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !46, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !45, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !73, i64 280, !80, i64 4264, !46, i64 4296, !46, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !45, i64 4376, !45, i64 4378, !44, i64 4380, !46, i64 4384, !81, i64 4400, !82, i64 4416, !85, i64 4600, !35, i64 4608, !86, i64 4616, !35, i64 4640, !63, i64 4648, !63, i64 4656, !75, i64 4664, !76, i64 4824, !87, i64 4888, !35, i64 4952}
!72 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !45, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!73 = !{!"RenderData", !74, i64 0, !35, i64 248, !35, i64 256, !77, i64 264, !78, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !42, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !45, i64 432, !45, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !44, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !44, i64 484, !44, i64 488, !45, i64 492, !45, i64 494, !44, i64 496, !44, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !41, i64 544, !41, i64 560, !43, i64 576, !46, i64 592, !45, i64 608, !45, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !44, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !42, i64 660, !42, i64 664, !45, i64 668, !45, i64 670, !42, i64 672, !42, i64 676, !36, i64 680, !44, i64 1704, !45, i64 1708, !45, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !45, i64 2524, !45, i64 2526, !42, i64 2528, !42, i64 2532, !45, i64 2536, !45, i64 2538, !42, i64 2540, !45, i64 2544, !45, i64 2546, !44, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !42, i64 2560, !42, i64 2564, !35, i64 2568, !44, i64 2576, !42, i64 2580, !36, i64 2584, !79, i64 2616, !44, i64 3976, !44, i64 3980}
!74 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !45, i64 8, !45, i64 10, !42, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !75, i64 24, !76, i64 184}
!75 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!76 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!77 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !45, i64 48, !45, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!78 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !42, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!79 = !{!"BakeData", !74, i64 0, !36, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !42, i64 1280, !42, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!80 = !{!"AudioData", !44, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !44, i64 16, !45, i64 20, !45, i64 22, !42, i64 24, !42, i64 28}
!81 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!82 = !{!"GameData", !81, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !36, i64 34, !83, i64 40, !45, i64 64, !45, i64 66, !42, i64 68, !84, i64 72, !42, i64 128, !42, i64 132, !44, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!83 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !42, i64 8, !42, i64 12, !35, i64 16}
!84 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !44, i64 40, !42, i64 44, !42, i64 48, !45, i64 52, !45, i64 54}
!85 = !{!"UnitSettings", !42, i64 0, !36, i64 4, !36, i64 5, !45, i64 6}
!86 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!87 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!88 = !{!89, !45, i64 136}
!89 = !{!"Object", !72, i64 0, !35, i64 120, !35, i64 128, !45, i64 136, !45, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !90, i64 312, !35, i64 360, !46, i64 368, !46, i64 384, !46, i64 400, !46, i64 416, !44, i64 432, !44, i64 436, !35, i64 440, !35, i64 448, !44, i64 456, !44, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !42, i64 616, !42, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !44, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !36, i64 966, !36, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !36, i64 1042, !36, i64 1043, !45, i64 1044, !36, i64 1046, !36, i64 1047, !42, i64 1048, !42, i64 1052, !46, i64 1056, !46, i64 1072, !46, i64 1088, !46, i64 1104, !42, i64 1120, !45, i64 1124, !45, i64 1126, !36, i64 1128, !44, i64 1144, !44, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !45, i64 1162, !36, i64 1164, !46, i64 1176, !46, i64 1192, !46, i64 1208, !46, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !45, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !63, i64 1304, !63, i64 1312, !44, i64 1320, !44, i64 1324, !46, i64 1328, !46, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !46, i64 1400, !35, i64 1416}
!90 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!91 = !{!89, !35, i64 296}
!92 = !{!93, !44, i64 80}
!93 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !44, i64 80, !44, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !46, i64 176, !46, i64 192, !44, i64 208}
!94 = !{!93, !35, i64 88}
!95 = !{!93, !35, i64 96}
!96 = !{!93, !35, i64 104}
!97 = !{!93, !35, i64 120}
!98 = !{!93, !35, i64 136}
!99 = !{!93, !35, i64 144}
!100 = !{!93, !35, i64 152}
!101 = !{!93, !35, i64 160}
!102 = !{!93, !35, i64 168}
!103 = !{!104, !44, i64 16}
!104 = !{!"ARegionType", !35, i64 0, !35, i64 8, !44, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !46, i64 104, !46, i64 120, !46, i64 136, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !45, i64 172, !45, i64 174, !45, i64 176}
!105 = !{!104, !44, i64 168}
!106 = !{!104, !35, i64 40}
!107 = !{!104, !35, i64 24}
!108 = !{!104, !35, i64 32}
!109 = !{!104, !35, i64 56}
!110 = !{!104, !35, i64 64}
!111 = !{!104, !35, i64 48}
!112 = !{!104, !35, i64 88}
!113 = !{!104, !45, i64 174}
!114 = !{!104, !44, i64 160}
!115 = !{!104, !44, i64 164}
!116 = !{!65, !44, i64 32}
!117 = !{!65, !42, i64 36}
!118 = !{!65, !44, i64 228}
!119 = !{!65, !44, i64 224}
!120 = !{!71, !44, i64 232}
!121 = !{!71, !35, i64 128}
!122 = !{!65, !35, i64 96}
!123 = !{!65, !45, i64 236}
!124 = !{!65, !42, i64 248}
!125 = !{!65, !45, i64 286}
!126 = !{!65, !45, i64 288}
!127 = !{!65, !36, i64 290}
!128 = !{!65, !45, i64 240}
!129 = !{!65, !45, i64 242}
!130 = !{!65, !42, i64 244}
!131 = !{!65, !42, i64 252}
!132 = !{!65, !42, i64 256}
!133 = !{!134, !45, i64 8898}
!134 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !44, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !45, i64 8496, !45, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !46, i64 8536, !46, i64 8552, !46, i64 8568, !46, i64 8584, !46, i64 8600, !46, i64 8616, !46, i64 8632, !36, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !36, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !44, i64 8912, !44, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !42, i64 8956, !42, i64 8960, !44, i64 8964, !45, i64 8968, !45, i64 8970, !42, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !135, i64 8984, !36, i64 9760, !36, i64 9772, !45, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !44, i64 10896, !44, i64 10900, !42, i64 10904, !42, i64 10908, !44, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !136, i64 10928}
!135 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!136 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !45, i64 24, !36, i64 26}
!137 = !{!65, !36, i64 293}
!138 = !{!65, !36, i64 291}
!139 = !{!65, !45, i64 238}
!140 = !{!65, !42, i64 76}
!141 = !{!65, !36, i64 80}
!142 = !{!42, !42, i64 0}
!143 = !{!58, !36, i64 810}
!144 = !{!58, !42, i64 776}
!145 = !{!146, !45, i64 100}
!146 = !{!"BGpic", !35, i64 0, !35, i64 8, !35, i64 16, !147, i64 24, !35, i64 64, !148, i64 72, !42, i64 80, !42, i64 84, !42, i64 88, !42, i64 92, !45, i64 96, !45, i64 98, !45, i64 100, !45, i64 102}
!147 = !{!"ImageUser", !35, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !45, i64 28, !45, i64 30, !45, i64 32, !45, i64 34, !44, i64 36}
!148 = !{!"MovieClipUser", !44, i64 0, !45, i64 4, !45, i64 6}
!149 = distinct !{!149, !50, !51}
!150 = !{!65, !35, i64 152}
!151 = !{!65, !35, i64 352}
!152 = !{!65, !35, i64 360}
!153 = !{!154, !35, i64 928}
!154 = !{!"Material", !72, i64 0, !35, i64 120, !45, i64 128, !45, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !155, i64 224, !156, i64 312, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !42, i64 348, !42, i64 352, !45, i64 356, !45, i64 358, !45, i64 360, !36, i64 362, !36, i64 363, !42, i64 364, !42, i64 368, !45, i64 372, !45, i64 374, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !45, i64 392, !45, i64 394, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !45, i64 412, !45, i64 414, !45, i64 416, !45, i64 418, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !42, i64 456, !36, i64 460, !42, i64 524, !42, i64 528, !42, i64 532, !44, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !45, i64 544, !45, i64 546, !45, i64 548, !36, i64 550, !36, i64 551, !45, i64 552, !45, i64 554, !42, i64 556, !42, i64 560, !36, i64 564, !42, i64 580, !42, i64 584, !45, i64 588, !45, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !45, i64 612, !45, i64 614, !42, i64 616, !42, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !42, i64 800, !42, i64 804, !42, i64 808, !42, i64 812, !42, i64 816, !45, i64 820, !45, i64 822, !36, i64 824, !36, i64 836, !42, i64 848, !42, i64 852, !42, i64 856, !42, i64 860, !42, i64 864, !42, i64 868, !42, i64 872, !45, i64 876, !45, i64 878, !44, i64 880, !45, i64 884, !45, i64 886, !36, i64 888, !45, i64 904, !45, i64 906, !45, i64 908, !45, i64 910, !45, i64 912, !36, i64 914, !35, i64 920, !46, i64 928}
!155 = !{!"VolumeSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !42, i64 52, !42, i64 56, !42, i64 60, !45, i64 64, !45, i64 66, !45, i64 68, !45, i64 70, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84}
!156 = !{!"GameSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!157 = !{!158, !44, i64 36}
!158 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !35, i64 56}
!159 = !{!158, !44, i64 40}
!160 = distinct !{!160, !50, !51}
!161 = !{!44, !44, i64 0}
!162 = !{!163, !44, i64 24}
!163 = !{!"Base", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !45, i64 28, !45, i64 30, !35, i64 32}
!164 = !{!163, !44, i64 16}
!165 = !{!163, !35, i64 32}
!166 = !{!89, !36, i64 1160}
!167 = distinct !{!167, !50, !51}
!168 = distinct !{!168, !50, !51}
!169 = distinct !{!169, !50, !51}
!170 = distinct !{!170, !50, !51}
!171 = !{!71, !35, i64 168}
!172 = !{!89, !44, i64 432}
!173 = !{!174, !35, i64 296}
!174 = !{!"wmWindowManager", !72, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !44, i64 152, !45, i64 156, !45, i64 158, !46, i64 160, !46, i64 176, !175, i64 192, !46, i64 232, !46, i64 248, !46, i64 264, !46, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !46, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!175 = !{!"ReportList", !46, i64 0, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !35, i64 32}
!176 = !{!58, !35, i64 672}
!177 = !{!58, !35, i64 648}
!178 = !{!58, !35, i64 640}
!179 = !{!58, !35, i64 664}
!180 = !{!181, !35, i64 8}
!181 = !{!"ViewDepths", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !35, i64 8, !36, i64 16, !36, i64 32}
!182 = !{!58, !35, i64 680}
!183 = !{!184, !35, i64 184}
!184 = !{!"bScreen", !72, i64 0, !46, i64 120, !46, i64 136, !46, i64 152, !46, i64 168, !35, i64 184, !35, i64 192, !44, i64 200, !44, i64 204, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !35, i64 232, !35, i64 240}
!185 = !{!158, !44, i64 48}
!186 = !{!158, !35, i64 56}
!187 = !{!158, !35, i64 16}
!188 = !{!174, !35, i64 128}
!189 = distinct !{!189, !50, !51}
!190 = !{!191, !35, i64 24}
!191 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !44, i64 128, !45, i64 132, !45, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !44, i64 160, !44, i64 164, !35, i64 168, !46, i64 176, !46, i64 192, !46, i64 208, !46, i64 224, !46, i64 240}
!192 = !{!65, !44, i64 88}
!193 = distinct !{!193, !50, !51}
!194 = !{!71, !45, i64 4558}
!195 = !{!158, !44, i64 44}
!196 = !{!58, !45, i64 826}
!197 = !{!198, !44, i64 20}
!198 = !{!"wmDrag", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !35, i64 24, !36, i64 32, !199, i64 1056, !35, i64 1064, !42, i64 1072, !44, i64 1076, !44, i64 1080, !36, i64 1084, !44, i64 1284}
!199 = !{!"double", !36, i64 0}
!200 = !{!198, !35, i64 24}
!201 = !{!45, !45, i64 0}
!202 = !{!203, !35, i64 48}
!203 = !{!"wmDropBox", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !45, i64 56}
!204 = !{!198, !44, i64 16}
!205 = !{!36, !36, i64 0}
!206 = !{!207, !45, i64 74}
!207 = !{!"wmEvent", !35, i64 0, !35, i64 8, !45, i64 16, !45, i64 18, !44, i64 20, !44, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !45, i64 44, !45, i64 46, !44, i64 48, !44, i64 52, !199, i64 56, !44, i64 64, !44, i64 68, !45, i64 72, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !35, i64 88, !35, i64 96, !45, i64 104, !45, i64 106, !44, i64 108, !35, i64 112}
!208 = !{!203, !45, i64 56}
