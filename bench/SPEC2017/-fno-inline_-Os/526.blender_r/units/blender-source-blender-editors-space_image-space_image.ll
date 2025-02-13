; ModuleID = 'blender/source/blender/editors/space_image/space_image.c'
source_filename = "blender/source/blender/editors/space_image/space_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"buttons for image\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"scopes for image\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"edit_image\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"edit_mask\00", align 1
@image_context_dir = dso_local global [3 x ptr] [ptr @.str.2, ptr @.str.3, ptr null], align 16
@.str.4 = private unnamed_addr constant [16 x i8] c"spacetype image\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"spacetype image region\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"initimage\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"header for image\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"main area for image\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"Image Generic\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"IMAGE_OT_new\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"IMAGE_OT_open\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"IMAGE_OT_reload\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"IMAGE_OT_read_renderlayers\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"IMAGE_OT_save\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"IMAGE_OT_save_as\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"IMAGE_OT_properties\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"IMAGE_OT_toolshelf\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"IMAGE_OT_cycle_render_slot\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"IMAGE_OT_view_all\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"fit_view\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"IMAGE_OT_view_selected\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"IMAGE_OT_view_pan\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"IMAGE_OT_view_ndof\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"IMAGE_OT_view_zoom_in\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"IMAGE_OT_view_zoom_out\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"IMAGE_OT_view_zoom\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"IMAGE_OT_view_zoom_ratio\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"IMAGE_OT_change_frame\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"IMAGE_OT_sample\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"IMAGE_OT_curves_point_set\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"OBJECT_OT_mode_set\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"WM_OT_context_set_int\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"space_data.image.render_slots.active_index\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"WM_OT_context_set_enum\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"space_data.pivot_point\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"CENTER\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"MEDIAN\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"IMAGE_OT_render_border\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"IMAGE_OT_clear_render_border\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"Mask Editing\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Image Paint\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"UV Editor\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"UV Sculpt\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Scopes\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Image\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @image_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #8
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #8
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @image_has_tools_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 5) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str.1) #8
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 5, ptr %11, align 2, !tbaa !38
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 3, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !48
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef %0) #9
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @image_scopes_tag_refresh(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !49 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !38
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !48
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %7, %12
  %18 = load ptr, ptr %8, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !52

20:                                               ; preds = %17, %1
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 8
  store i32 0, ptr %21, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %12, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_image() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.4) #8
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 6, ptr %3, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #8
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @image_new, ptr %5, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @image_free, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @image_init, ptr %7, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @image_duplicate, ptr %8, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @image_operatortypes, ptr %9, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @image_keymap, ptr %10, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @image_dropboxes, ptr %11, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @image_refresh, ptr %12, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @image_listener, ptr %13, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @image_context, ptr %14, align 8, !tbaa !71
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.6) #8
  %17 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !72
  %18 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 20
  store i32 48, ptr %18, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 3
  store ptr @image_main_area_init, ptr %19, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 5
  store ptr @image_main_area_draw, ptr %20, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 6
  store ptr @image_main_area_listener, ptr %21, align 8, !tbaa !77
  %22 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %16) #8
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 184, ptr noundef nonnull @.str.6) #8
  %25 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 2
  store i32 4, ptr %25, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 18
  store i32 220, ptr %26, align 8, !tbaa !78
  %27 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 20
  store i32 17, ptr %27, align 8, !tbaa !74
  %28 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 6
  store ptr @image_buttons_area_listener, ptr %28, align 8, !tbaa !77
  %29 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 3
  store ptr @image_buttons_area_init, ptr %29, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 5
  store ptr @image_buttons_area_draw, ptr %30, align 8, !tbaa !76
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %24) #8
  tail call void @ED_uvedit_buttons_register(ptr noundef %24) #8
  tail call void @image_buttons_register(ptr noundef %24) #8
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 184, ptr noundef nonnull @.str.6) #8
  %33 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 2
  store i32 5, ptr %33, align 8, !tbaa !72
  %34 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 18
  store i32 220, ptr %34, align 8, !tbaa !78
  %35 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 20
  store i32 17, ptr %35, align 8, !tbaa !74
  %36 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 6
  store ptr @image_tools_area_listener, ptr %36, align 8, !tbaa !77
  %37 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 3
  store ptr @image_tools_area_init, ptr %37, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 5
  store ptr @image_tools_area_draw, ptr %38, align 8, !tbaa !76
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %32) #8
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %40 = tail call ptr %39(i64 noundef 184, ptr noundef nonnull @.str.6) #8
  %41 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 2
  store i32 1, ptr %41, align 8, !tbaa !72
  %42 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 19
  store i32 26, ptr %42, align 4, !tbaa !79
  %43 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 20
  store i32 83, ptr %43, align 8, !tbaa !74
  %44 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 6
  store ptr @image_header_area_listener, ptr %44, align 8, !tbaa !77
  %45 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 3
  store ptr @image_header_area_init, ptr %45, align 8, !tbaa !75
  %46 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 5
  store ptr @image_header_area_draw, ptr %46, align 8, !tbaa !76
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %40) #8
  tail call void @BKE_spacetype_register(ptr noundef %2) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @image_new(ptr nocapture readnone %0) #0 !PGOFuncName !80 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 10584, ptr noundef nonnull @.str.7) #8
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 3
  store i32 6, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 14
  store float 1.000000e+00, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 21
  store i16 1, ptr %6, align 2, !tbaa !83
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  store i32 4198400, ptr %7, align 4, !tbaa !84
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 6, i32 7
  store i8 1, ptr %8, align 2, !tbaa !85
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 6, i32 5
  store i8 2, ptr %9, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 6, i32 2
  store i32 100, ptr %10, align 4, !tbaa !87
  %11 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 8
  tail call void @scopes_new(ptr noundef nonnull %11) #8
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 9, i32 11
  store i32 100, ptr %12, align 4, !tbaa !88
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 384, ptr noundef nonnull @.str.8) #8
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 8
  store i16 1, ptr %16, align 2, !tbaa !38
  %17 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 9
  store i16 2, ptr %17, align 8, !tbaa !47
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 384, ptr noundef nonnull @.str) #8
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  store i16 4, ptr %20, align 2, !tbaa !38
  %21 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 9
  store i16 4, ptr %21, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 10
  store i16 1, ptr %22, align 2, !tbaa !48
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 384, ptr noundef nonnull @.str) #8
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 8
  store i16 5, ptr %25, align 2, !tbaa !38
  %26 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 9
  store i16 3, ptr %26, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 10
  store i16 1, ptr %27, align 2, !tbaa !48
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 384, ptr noundef nonnull @.str.9) #8
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %29) #8
  %30 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 8
  store i16 0, ptr %30, align 2, !tbaa !38
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_free(ptr noundef %0) #0 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 8
  tail call void @scopes_free(ptr noundef nonnull %2) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !90 {
  %3 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 0) #8
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 21
  %5 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %4, ptr noundef %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @image_duplicate(ptr noundef %0) #0 !PGOFuncName !91 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 8
  tail call void @scopes_new(ptr noundef nonnull %4) #8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_operatortypes() #0 !PGOFuncName !92 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_view_all) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_view_pan) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_view_selected) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_view_zoom) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_view_zoom_in) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_view_zoom_out) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_view_zoom_ratio) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_view_ndof) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_new) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_open) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_match_movie_length) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_replace) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_reload) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_save) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_save_as) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_save_sequence) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_pack) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_unpack) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_invert) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_cycle_render_slot) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_sample) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_sample_line) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_curves_point_set) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_properties) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_toolshelf) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_change_frame) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_read_renderlayers) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_render_border) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @IMAGE_OT_clear_render_border) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_keymap(ptr noundef %0) #0 !PGOFuncName !93 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef 0) #8
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 110, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 111, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 114, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 114, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 302, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 110, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 116, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 106, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 106, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  tail call void @RNA_boolean_set(ptr noundef %14, ptr noundef nonnull @.str.20, i32 noundef 1) #8
  %15 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 0) #8
  %16 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !94
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef 1) #8
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.23, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.24, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.25, i32 noundef 400, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.26, i32 noundef 12, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.27, i32 noundef 13, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.26, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.27, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef 14, i32 noundef 0, i32 noundef 2, i32 noundef 0) #8
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 158, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %35, ptr noundef nonnull @.str.30, float noundef 8.000000e+00) #8
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 154, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %38, ptr noundef nonnull @.str.30, float noundef 4.000000e+00) #8
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 152, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %39, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %41, ptr noundef nonnull @.str.30, float noundef 2.000000e+00) #8
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 158, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %43 = getelementptr inbounds %struct.wmKeyMapItem, ptr %42, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %44, ptr noundef nonnull @.str.30, float noundef 8.000000e+00) #8
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 154, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %45, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %47, ptr noundef nonnull @.str.30, float noundef 4.000000e+00) #8
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 152, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %49 = getelementptr inbounds %struct.wmKeyMapItem, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %50, ptr noundef nonnull @.str.30, float noundef 2.000000e+00) #8
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 151, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %52 = getelementptr inbounds %struct.wmKeyMapItem, ptr %51, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %53, ptr noundef nonnull @.str.30, float noundef 1.000000e+00) #8
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 152, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %55 = getelementptr inbounds %struct.wmKeyMapItem, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %56, ptr noundef nonnull @.str.30, float noundef 5.000000e-01) #8
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 154, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %59, ptr noundef nonnull @.str.30, float noundef 2.500000e-01) #8
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 158, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !94
  tail call void @RNA_float_set(ptr noundef %62, ptr noundef nonnull @.str.30, float noundef 1.250000e-01) #8
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef 5, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %66 = getelementptr inbounds %struct.wmKeyMapItem, ptr %65, i64 0, i32 17
  %67 = load ptr, ptr %66, align 8, !tbaa !94
  tail call void @RNA_enum_set(ptr noundef %67, ptr noundef nonnull @.str.34, i32 noundef 0) #8
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %69 = getelementptr inbounds %struct.wmKeyMapItem, ptr %68, i64 0, i32 17
  %70 = load ptr, ptr %69, align 8, !tbaa !94
  tail call void @RNA_enum_set(ptr noundef %70, ptr noundef nonnull @.str.34, i32 noundef 1) #8
  %71 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %72 = getelementptr inbounds %struct.wmKeyMapItem, ptr %71, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !94
  tail call void @RNA_enum_set(ptr noundef %73, ptr noundef nonnull @.str.36, i32 noundef 1) #8
  %74 = load ptr, ptr %72, align 8, !tbaa !94
  tail call void @RNA_boolean_set(ptr noundef %74, ptr noundef nonnull @.str.37, i32 noundef 1) #8
  br label %75

75:                                               ; preds = %1, %75
  %76 = phi i32 [ 0, %1 ], [ %82, %75 ]
  %77 = add nuw nsw i32 %76, 49
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.38, i32 noundef %77, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !94
  tail call void @RNA_string_set(ptr noundef %80, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #8
  %81 = load ptr, ptr %79, align 8, !tbaa !94
  tail call void @RNA_int_set(ptr noundef %81, ptr noundef nonnull @.str.41, i32 noundef %76) #8
  %82 = add nuw nsw i32 %76, 1
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %75, !llvm.loop !96

84:                                               ; preds = %75
  %85 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.42, i32 noundef 227, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %86 = getelementptr inbounds %struct.wmKeyMapItem, ptr %85, i64 0, i32 17
  %87 = load ptr, ptr %86, align 8, !tbaa !94
  tail call void @RNA_string_set(ptr noundef %87, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43) #8
  %88 = load ptr, ptr %86, align 8, !tbaa !94
  tail call void @RNA_string_set(ptr noundef %88, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.44) #8
  %89 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.42, i32 noundef 227, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %90 = getelementptr inbounds %struct.wmKeyMapItem, ptr %89, i64 0, i32 17
  %91 = load ptr, ptr %90, align 8, !tbaa !94
  tail call void @RNA_string_set(ptr noundef %91, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43) #8
  %92 = load ptr, ptr %90, align 8, !tbaa !94
  tail call void @RNA_string_set(ptr noundef %92, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45) #8
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.42, i32 noundef 226, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !94
  tail call void @RNA_string_set(ptr noundef %95, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43) #8
  %96 = load ptr, ptr %94, align 8, !tbaa !94
  tail call void @RNA_string_set(ptr noundef %96, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.46) #8
  %97 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.47, i32 noundef 98, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %98 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.48, i32 noundef 98, i32 noundef 1, i32 noundef 6, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_dropboxes() #0 !PGOFuncName !97 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 0) #8
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @image_drop_poll, ptr noundef nonnull @image_drop_copy) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_refresh(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !98 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %7 = tail call ptr @ED_space_image(ptr noundef %5) #8
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 6
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !99
  tail call void @BKE_image_user_check_frame_calc(ptr noundef nonnull %8, i32 noundef %10, i32 noundef 0) #8
  %11 = icmp eq ptr %7, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 11
  %14 = load i16, ptr %13, align 8, !tbaa !118
  %15 = icmp eq i16 %14, 5
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 17
  %18 = load i8, ptr %17, align 4, !tbaa !120
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = icmp eq ptr %22, null
  br i1 %23, label %73, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @ED_space_image_get_mask(ptr noundef nonnull %5) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %73, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %21, align 8, !tbaa !121
  tail call void @ED_node_composite_job(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %3) #8
  br label %73

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 18
  %31 = load i8, ptr %30, align 1, !tbaa !122
  %32 = icmp eq i8 %31, 0
  %33 = icmp ne ptr %6, null
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %37, label %73

35:                                               ; preds = %2
  %36 = icmp eq ptr %6, null
  br i1 %36, label %73, label %37

37:                                               ; preds = %29, %35
  %38 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %39 = load i16, ptr %38, align 8, !tbaa !123
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !126
  %44 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !127
  %46 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %47 = load ptr, ptr %46, align 8, !tbaa !130
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 11
  %49 = load i8, ptr %48, align 2, !tbaa !131
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  %52 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %3) #8
  %53 = icmp ne i8 %52, 0
  %54 = icmp eq ptr %45, null
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %73, label %56

56:                                               ; preds = %41
  %57 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef nonnull %45) #8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = tail call ptr @EDBM_mtexpoly_active_get(ptr noundef nonnull %45, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext %51) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %60, align 8, !tbaa !138
  %64 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 5
  store ptr %63, ptr %64, align 8, !tbaa !140
  %65 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !84
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.MTexPoly, ptr %60, i64 0, i32 4
  %71 = load i16, ptr %70, align 4, !tbaa !141
  %72 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 20
  store i16 %71, ptr %72, align 8, !tbaa !142
  br label %73

73:                                               ; preds = %16, %41, %59, %69, %62, %56, %24, %27, %29, %37, %35, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_listener(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !143 {
  %4 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !146
  %10 = add i32 %9, -16777216
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 8)
  switch i32 %11, label %106 [
    i32 1, label %12
    i32 3, label %13
    i32 9, label %30
    i32 14, label %43
    i32 20, label %48
    i32 15, label %62
    i32 4, label %66
    i32 17, label %96
    i32 0, label %101
  ]

12:                                               ; preds = %3
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef nonnull %1) #9
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !148
  %16 = add i32 %15, -196608
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 16)
  switch i32 %17, label %106 [
    i32 0, label %18
    i32 8, label %19
    i32 9, label %25
    i32 1, label %25
    i32 10, label %25
  ]

18:                                               ; preds = %13
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef nonnull %1) #9
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !149
  %22 = icmp eq i32 %21, 512
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  br label %24

24:                                               ; preds = %23, %19
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

25:                                               ; preds = %13, %13, %13
  %26 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef %7) #8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef nonnull %1) #9
  br label %29

29:                                               ; preds = %28, %25
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !150
  %33 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !140
  %35 = icmp eq ptr %32, %34
  %36 = icmp eq ptr %32, null
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %106

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !151
  %41 = icmp eq i32 %40, 7
  br i1 %41, label %106, label %42

42:                                               ; preds = %38
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef nonnull %1) #9
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !148
  %46 = icmp eq i32 %45, 262144
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef nonnull %1) #9
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 17
  %50 = load i8, ptr %49, align 4, !tbaa !120
  %51 = icmp eq i8 %50, 2
  br i1 %51, label %52, label %106

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !148
  switch i32 %54, label %57 [
    i32 5898240, label %55
    i32 5963776, label %56
    i32 1507328, label %56
  ]

55:                                               ; preds = %52
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %57

56:                                               ; preds = %52, %52
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  br label %57

57:                                               ; preds = %52, %56, %55
  %58 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !151
  switch i32 %59, label %106 [
    i32 6, label %60
    i32 1, label %61
  ]

60:                                               ; preds = %57
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

61:                                               ; preds = %57
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  br label %106

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !148
  switch i32 %64, label %106 [
    i32 5963776, label %65
    i32 5898240, label %65
  ]

65:                                               ; preds = %62, %62
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef nonnull %1) #9
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %68 = load i32, ptr %67, align 8, !tbaa !148
  switch i32 %68, label %106 [
    i32 1179648, label %69
    i32 1572864, label %69
  ]

69:                                               ; preds = %66, %66
  %70 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !152
  %72 = icmp eq ptr %71, null
  br i1 %72, label %106, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Base, ptr %71, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !153
  %76 = icmp eq ptr %75, null
  br i1 %76, label %106, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !150
  %80 = icmp eq ptr %75, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.Object, ptr %75, i64 0, i32 27
  %83 = load i32, ptr %82, align 8, !tbaa !155
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 21
  %88 = load i16, ptr %87, align 2, !tbaa !83
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 4
  %92 = load i32, ptr %91, align 4, !tbaa !84
  %93 = and i32 %92, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %90
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

96:                                               ; preds = %3
  %97 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %98 = load i32, ptr %97, align 8, !tbaa !151
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

101:                                              ; preds = %3
  %102 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %103 = load i32, ptr %102, align 8, !tbaa !148
  %104 = icmp eq i32 %103, 393216
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  br label %106

106:                                              ; preds = %69, %73, %77, %81, %95, %90, %86, %30, %101, %105, %96, %100, %66, %65, %62, %48, %57, %61, %60, %43, %47, %42, %38, %18, %24, %29, %13, %3, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !156 {
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #8
  %5 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @image_context_dir) #8
  br label %20

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.2) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @ED_space_image(ptr noundef %4) #8
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef %12) #8
  br label %20

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @ED_space_image_get_mask(ptr noundef %4) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %17) #8
  br label %20

20:                                               ; preds = %7, %13, %16, %19, %11
  %21 = phi i32 [ 1, %11 ], [ 1, %19 ], [ 1, %16 ], [ 0, %13 ], [ 0, %7 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !157 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 0) #8
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %9 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %10 = load ptr, ptr %3, align 8, !tbaa !158
  %11 = tail call ptr @WM_keymap_find(ptr noundef %10, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 0) #8
  %12 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %11, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %13 = load ptr, ptr %3, align 8, !tbaa !158
  %14 = tail call ptr @WM_keymap_find(ptr noundef %13, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef 0) #8
  %15 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %14) #8
  %16 = load ptr, ptr %3, align 8, !tbaa !158
  %17 = tail call ptr @WM_keymap_find(ptr noundef %16, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 0) #8
  %18 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %17, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %19 = load ptr, ptr %3, align 8, !tbaa !158
  %20 = tail call ptr @WM_keymap_find(ptr noundef %19, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 0) #8
  %21 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %20) #8
  %22 = load ptr, ptr %3, align 8, !tbaa !158
  %23 = tail call ptr @WM_keymap_find(ptr noundef %22, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 0) #8
  %24 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %23) #8
  %25 = load ptr, ptr %3, align 8, !tbaa !158
  %26 = tail call ptr @WM_keymap_find(ptr noundef %25, ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef 0) #8
  %27 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %26) #8
  %28 = load ptr, ptr %3, align 8, !tbaa !158
  %29 = tail call ptr @WM_keymap_find(ptr noundef %28, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 0) #8
  %30 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_main_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !161 {
  %3 = alloca [3 x float], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #8
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %13 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 46
  %14 = load i32, ptr %13, align 4, !tbaa !162
  %15 = and i32 %14, -129
  store i32 %15, ptr %13, align 4, !tbaa !162
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %3) #8
  %16 = load float, ptr %3, align 4, !tbaa !163
  %17 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !163
  %19 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !163
  call void @glClearColor(float noundef %16, float noundef %18, float noundef %20, float noundef 0.000000e+00) #8
  call void @glClear(i32 noundef 16384) #8
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 12
  %26 = load i16, ptr %25, align 2, !tbaa !164
  %27 = icmp eq i16 %26, 4
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = call ptr @ED_render_job_get_scene(ptr noundef %0) #8
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 6
  br i1 %30, label %33, label %32

32:                                               ; preds = %28
  store ptr %29, ptr %31, align 8, !tbaa !165
  br label %36

33:                                               ; preds = %28
  store ptr %11, ptr %31, align 8, !tbaa !165
  br label %36

34:                                               ; preds = %24, %2
  %35 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 6
  store ptr %11, ptr %35, align 8, !tbaa !165
  br label %36

36:                                               ; preds = %32, %33, %34
  call fastcc void @image_main_area_set_view2d(ptr noundef nonnull %8, ptr noundef %1) #9
  call void @draw_image_main(ptr noundef %0, ptr noundef %1) #8
  call void @UI_view2d_view_ortho(ptr noundef nonnull %12) #8
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #8
  call void @draw_uvedit_main(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %10, ptr noundef %9) #8
  %37 = call zeroext i8 @ED_space_image_show_uvedit(ptr noundef nonnull %8, ptr noundef %10) #8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 17
  %41 = load i8, ptr %40, align 4, !tbaa !120
  %42 = icmp eq i8 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call ptr @ED_space_image_get_mask(ptr noundef nonnull %8) #8
  br label %48

45:                                               ; preds = %39
  %46 = call zeroext i8 @ED_space_image_paint_curve(ptr noundef %0) #8
  %47 = icmp eq i8 %46, 0
  br label %48

48:                                               ; preds = %45, %43, %36
  %49 = phi i1 [ true, %36 ], [ true, %43 ], [ %47, %45 ]
  %50 = phi ptr [ null, %36 ], [ %44, %43 ], [ null, %45 ]
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 0) #8
  %51 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !84
  %53 = and i32 %52, 4194304
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  call void @draw_image_grease_pencil(ptr noundef %0, i8 noundef zeroext 1) #8
  br label %56

56:                                               ; preds = %55, %48
  call void @draw_image_sample_line(ptr noundef nonnull %8) #8
  call void @UI_view2d_view_restore(ptr noundef %0) #8
  %57 = load i32, ptr %51, align 4, !tbaa !84
  %58 = and i32 %57, 4194304
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  call void @draw_image_grease_pencil(ptr noundef %0, i8 noundef zeroext 0) #8
  br label %61

61:                                               ; preds = %60, %56
  %62 = icmp eq ptr %50, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %61
  %64 = call ptr @ED_space_image(ptr noundef nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.Image, ptr %64, i64 0, i32 11
  %68 = load i16, ptr %67, align 8, !tbaa !118
  %69 = icmp eq i16 %68, 5
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  call void @BLI_lock_thread(i32 noundef 1) #8
  call void @ED_space_image_get_size(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  call void @ED_space_image_get_aspect(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  call void @BLI_unlock_thread(i32 noundef 1) #8
  br label %72

71:                                               ; preds = %63, %66
  call void @ED_space_image_get_size(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  call void @ED_space_image_get_aspect(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  br label %72

72:                                               ; preds = %71, %70
  %73 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 26, i32 1
  %74 = load i8, ptr %73, align 8, !tbaa !166
  %75 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 26, i32 2
  %76 = load i8, ptr %75, align 1, !tbaa !167
  %77 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 26, i32 3
  %78 = load i8, ptr %77, align 2, !tbaa !168
  %79 = load i32, ptr %4, align 4, !tbaa !169
  %80 = load i32, ptr %5, align 4, !tbaa !169
  %81 = load float, ptr %6, align 4, !tbaa !163
  %82 = load float, ptr %7, align 4, !tbaa !163
  call void @ED_mask_draw_region(ptr noundef nonnull %50, ptr noundef %1, i8 noundef zeroext %74, i8 noundef zeroext %76, i8 noundef zeroext %78, i32 noundef %79, i32 noundef %80, float noundef %81, float noundef %82, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef %0) #8
  call void @UI_view2d_view_ortho(ptr noundef nonnull %12) #8
  %83 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 11
  call void @draw_image_cursor(ptr noundef %1, ptr noundef nonnull %83) #8
  call void @UI_view2d_view_restore(ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %87

84:                                               ; preds = %61
  br i1 %49, label %87, label %85

85:                                               ; preds = %84
  call void @UI_view2d_view_ortho(ptr noundef nonnull %12) #8
  %86 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 11
  call void @draw_image_cursor(ptr noundef %1, ptr noundef nonnull %86) #8
  call void @UI_view2d_view_restore(ptr noundef %0) #8
  br label %87

87:                                               ; preds = %84, %85, %72
  call void @draw_image_cache(ptr noundef %0, ptr noundef %1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !170 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !146
  switch i32 %6, label %16 [
    i32 369098752, label %7
    i32 167772160, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !151
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %15, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !151
  %14 = icmp eq i32 %13, 7
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %16

16:                                               ; preds = %15, %11, %7, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_buttons_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !171 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !146
  switch i32 %6, label %15 [
    i32 117440512, label %14
    i32 100663296, label %14
    i32 67108864, label %7
    i32 167772160, label %10
    i32 285212672, label %14
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !148
  switch i32 %9, label %15 [
    i32 720896, label %14
    i32 786432, label %14
    i32 851968, label %14
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !151
  %13 = icmp eq i32 %12, 7
  br i1 %13, label %15, label %14

14:                                               ; preds = %4, %10, %7, %7, %7, %4, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %15

15:                                               ; preds = %14, %10, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !172 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 130, ptr %3, align 8, !tbaa !173
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = tail call ptr @WM_keymap_find(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef 0) #8
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %8 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %7, ptr noundef %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !174 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #8
  ret void
}

; Function Attrs: optsize
declare void @ED_uvedit_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @image_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_tools_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !175 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !146
  switch i32 %6, label %23 [
    i32 369098752, label %7
    i32 184549376, label %11
    i32 67108864, label %15
    i32 167772160, label %18
    i32 285212672, label %22
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !148
  %10 = icmp eq i32 %9, 5963776
  br i1 %10, label %22, label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !151
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %22, label %23

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !148
  switch i32 %17, label %23 [
    i32 720896, label %22
    i32 786432, label %22
    i32 851968, label %22
  ]

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !151
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %23, label %22

22:                                               ; preds = %4, %18, %15, %15, %15, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %23

23:                                               ; preds = %22, %18, %15, %11, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_tools_area_init(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !176 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 130, ptr %3, align 8, !tbaa !173
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = tail call ptr @WM_keymap_find(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef 0) #8
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %8 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %7, ptr noundef %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_tools_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !177 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %6 = call ptr @ED_space_image_acquire_buffer(ptr noundef %4, ptr noundef nonnull %3) #8
  %7 = call ptr @UI_panel_category_active_find(ptr noundef %1, ptr noundef nonnull @.str.56) #8
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %6, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !54
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 9
  %17 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 44
  %18 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 45
  call void @BKE_histogram_update_sample_line(ptr noundef nonnull %16, ptr noundef nonnull %6, ptr noundef nonnull %17, ptr noundef nonnull %18) #8
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %4, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  %22 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 10
  %23 = load i16, ptr %22, align 2, !tbaa !178
  %24 = and i16 %23, 2048
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 44
  %28 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 45
  call void @scopes_update(ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %27, ptr noundef nonnull %28) #8
  br label %31

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 45
  call void @scopes_update(ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %30) #8
  br label %31

31:                                               ; preds = %29, %26, %2
  %32 = load ptr, ptr %3, align 8, !tbaa !34
  call void @ED_space_image_release_buffer(ptr noundef %4, ptr noundef %6, ptr noundef %32) #8
  call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !179 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !146
  switch i32 %6, label %14 [
    i32 67108864, label %7
    i32 268435456, label %10
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !148
  switch i32 %9, label %14 [
    i32 720896, label %13
    i32 983040, label %13
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !148
  switch i32 %12, label %14 [
    i32 5963776, label %13
    i32 5898240, label %13
  ]

13:                                               ; preds = %10, %10, %7, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %14

14:                                               ; preds = %13, %10, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !180 {
  tail call void @ED_region_header_init(ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_header_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !181 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @scopes_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @scopes_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMAGE_OT_view_all(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_view_pan(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_view_selected(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_view_zoom(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_view_zoom_in(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_view_zoom_out(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_view_zoom_ratio(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_view_ndof(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_new(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_open(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_match_movie_length(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_replace(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_reload(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_save(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_save_as(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_save_sequence(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_pack(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_unpack(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_invert(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_cycle_render_slot(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_sample(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_sample_line(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_curves_point_set(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_properties(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_toolshelf(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_change_frame(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_read_renderlayers(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_render_border(ptr noundef) #2

; Function Attrs: optsize
declare void @IMAGE_OT_clear_render_border(ptr noundef) #2

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef i32 @image_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #4 !PGOFuncName !182 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !183
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !186
  switch i32 %9, label %10 [
    i32 0, label %11
    i32 696, label %11
    i32 694, label %11
  ]

10:                                               ; preds = %7, %3
  br label %11

11:                                               ; preds = %7, %7, %7, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !187 {
  %3 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  %5 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  tail call void @RNA_string_set(ptr noundef %4, ptr noundef nonnull @.str.49, ptr noundef nonnull %5) #8
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_user_check_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_space_image_get_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_composite_job(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_mtexpoly_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @EDBM_mtexpoly_active_get(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_render(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_render_job_get_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_main_area_set_view2d(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !190 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_space_image(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %6 = load i32, ptr %3, align 4, !tbaa !169
  %7 = load i32, ptr %4, align 4, !tbaa !169
  %8 = sitofp i32 %7 to float
  %9 = icmp eq ptr %5, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 35
  %12 = load float, ptr %11, align 4, !tbaa !191
  %13 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 34
  %14 = load float, ptr %13, align 8, !tbaa !192
  %15 = fdiv float %12, %14
  %16 = fmul float %15, %8
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi float [ %16, %10 ], [ %8, %2 ]
  %19 = sitofp i32 %6 to float
  %20 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %21 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %20) #9
  %22 = add nsw i32 %21, 1
  %23 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %20) #9
  %24 = add nsw i32 %23, 1
  %25 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %25, align 8, !tbaa !193
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float 0.000000e+00, ptr %26, align 8, !tbaa !194
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 1
  store float %19, ptr %27, align 4, !tbaa !195
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  store float %18, ptr %28, align 4, !tbaa !196
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 2
  store i32 0, ptr %30, align 8, !tbaa !197
  store i32 0, ptr %29, align 8, !tbaa !198
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 1
  store i32 %22, ptr %31, align 4, !tbaa !199
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 3
  store i32 %24, ptr %32, align 4, !tbaa !200
  %33 = load i32, ptr %20, align 8, !tbaa !201
  %34 = sitofp i32 %33 to float
  %35 = sitofp i32 %22 to float
  %36 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 14
  %37 = load float, ptr %36, align 8, !tbaa !82
  %38 = fneg float %37
  %39 = call float @llvm.fmuladd.f32(float %38, float %19, float %35)
  %40 = fmul float %39, 5.000000e-01
  %41 = fadd float %40, %34
  %42 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !202
  %44 = sitofp i32 %43 to float
  %45 = sitofp i32 %24 to float
  %46 = call float @llvm.fmuladd.f32(float %38, float %18, float %45)
  %47 = fmul float %46, 5.000000e-01
  %48 = fadd float %47, %44
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 12
  %50 = load float, ptr %49, align 8, !tbaa !203
  %51 = call float @llvm.fmuladd.f32(float %38, float %50, float %41)
  %52 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 13
  %53 = load float, ptr %52, align 4, !tbaa !204
  %54 = call float @llvm.fmuladd.f32(float %38, float %53, float %48)
  %55 = fsub float %34, %51
  %56 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %57 = fsub float %44, %54
  %58 = insertelement <2 x float> poison, float %35, i64 0
  %59 = insertelement <2 x float> %58, float %55, i64 1
  %60 = insertelement <2 x float> poison, float %37, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fdiv <2 x float> %59, %61
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %64 = fadd <2 x float> %62, %63
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %66 = insertelement <2 x float> poison, float %45, i64 0
  %67 = insertelement <2 x float> %66, float %57, i64 1
  %68 = fdiv <2 x float> %67, %61
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %70 = fadd <2 x float> %68, %69
  %71 = shufflevector <2 x float> %70, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %72 = shufflevector <2 x float> %62, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %73 = shufflevector <4 x float> %72, <4 x float> %65, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %74 = shufflevector <2 x float> %68, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %75 = shufflevector <4 x float> %73, <4 x float> %74, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %76 = shufflevector <4 x float> %75, <4 x float> %71, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %77 = insertelement <4 x float> poison, float %19, i64 0
  %78 = insertelement <4 x float> %77, float %18, i64 1
  %79 = shufflevector <4 x float> %78, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %80 = fdiv <4 x float> %76, %79
  store <4 x float> %80, ptr %56, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @draw_image_main(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_uvedit_main(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_paint_curve(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_image_grease_pencil(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_image_sample_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_draw_region(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, float noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_image_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_image_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !205 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !206
  %4 = load i32, ptr %0, align 4, !tbaa !207
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !208 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !209
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !210
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_space_image_acquire_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_panel_category_active_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_histogram_update_sample_line(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @scopes_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_release_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!49 = !{!"space_image.c:image_scopes_tag_refresh"}
!50 = !{!51, !35, i64 96}
!51 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 72, !36, i64 73, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !46, i64 96, !46, i64 112, !46, i64 128, !46, i64 144}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!55, !44, i64 96}
!55 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !46, i64 16, !44, i64 32, !44, i64 36, !35, i64 40, !56, i64 48, !35, i64 88, !57, i64 96, !58, i64 5360, !35, i64 10520, !36, i64 10528, !42, i64 10536, !42, i64 10540, !42, i64 10544, !42, i64 10548, !42, i64 10552, !36, i64 10556, !36, i64 10557, !45, i64 10558, !45, i64 10560, !45, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !59, i64 10568}
!56 = !{!"ImageUser", !35, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !45, i64 28, !45, i64 30, !45, i64 32, !45, i64 34, !44, i64 36}
!57 = !{!"Scopes", !44, i64 0, !44, i64 4, !44, i64 8, !42, i64 12, !44, i64 16, !42, i64 20, !42, i64 24, !44, i64 28, !42, i64 32, !44, i64 36, !36, i64 40, !58, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !44, i64 5256, !44, i64 5260}
!58 = !{!"Histogram", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !42, i64 5128, !42, i64 5132, !45, i64 5136, !45, i64 5138, !44, i64 5140, !36, i64 5144}
!59 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!60 = !{!61, !44, i64 80}
!61 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !44, i64 80, !44, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !46, i64 176, !46, i64 192, !44, i64 208}
!62 = !{!61, !35, i64 88}
!63 = !{!61, !35, i64 96}
!64 = !{!61, !35, i64 104}
!65 = !{!61, !35, i64 136}
!66 = !{!61, !35, i64 144}
!67 = !{!61, !35, i64 152}
!68 = !{!61, !35, i64 160}
!69 = !{!61, !35, i64 128}
!70 = !{!61, !35, i64 120}
!71 = !{!61, !35, i64 168}
!72 = !{!73, !44, i64 16}
!73 = !{!"ARegionType", !35, i64 0, !35, i64 8, !44, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !46, i64 104, !46, i64 120, !46, i64 136, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !45, i64 172, !45, i64 174, !45, i64 176}
!74 = !{!73, !44, i64 168}
!75 = !{!73, !35, i64 24}
!76 = !{!73, !35, i64 40}
!77 = !{!73, !35, i64 48}
!78 = !{!73, !44, i64 160}
!79 = !{!73, !44, i64 164}
!80 = !{!"space_image.c:image_new"}
!81 = !{!55, !44, i64 32}
!82 = !{!55, !42, i64 10544}
!83 = !{!55, !45, i64 10562}
!84 = !{!55, !44, i64 36}
!85 = !{!55, !36, i64 74}
!86 = !{!55, !36, i64 72}
!87 = !{!55, !44, i64 60}
!88 = !{!55, !44, i64 10500}
!89 = !{!"space_image.c:image_free"}
!90 = !{!"space_image.c:image_init"}
!91 = !{!"space_image.c:image_duplicate"}
!92 = !{!"space_image.c:image_operatortypes"}
!93 = !{!"space_image.c:image_keymap"}
!94 = !{!95, !35, i64 176}
!95 = !{!"wmKeyMapItem", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !36, i64 88, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !45, i64 164, !45, i64 166, !45, i64 168, !45, i64 170, !45, i64 172, !45, i64 174, !35, i64 176}
!96 = distinct !{!96, !53}
!97 = !{!"space_image.c:image_dropboxes"}
!98 = !{!"space_image.c:image_refresh"}
!99 = !{!100, !44, i64 680}
!100 = !{!"Scene", !101, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !46, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !45, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !102, i64 280, !109, i64 4264, !46, i64 4296, !46, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !45, i64 4376, !45, i64 4378, !44, i64 4380, !46, i64 4384, !110, i64 4400, !111, i64 4416, !114, i64 4600, !35, i64 4608, !115, i64 4616, !35, i64 4640, !116, i64 4648, !116, i64 4656, !104, i64 4664, !105, i64 4824, !117, i64 4888, !35, i64 4952}
!101 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !45, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!102 = !{!"RenderData", !103, i64 0, !35, i64 248, !35, i64 256, !106, i64 264, !107, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !42, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !45, i64 432, !45, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !44, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !44, i64 484, !44, i64 488, !45, i64 492, !45, i64 494, !44, i64 496, !44, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !41, i64 544, !41, i64 560, !43, i64 576, !46, i64 592, !45, i64 608, !45, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !44, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !42, i64 660, !42, i64 664, !45, i64 668, !45, i64 670, !42, i64 672, !42, i64 676, !36, i64 680, !44, i64 1704, !45, i64 1708, !45, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !45, i64 2524, !45, i64 2526, !42, i64 2528, !42, i64 2532, !45, i64 2536, !45, i64 2538, !42, i64 2540, !45, i64 2544, !45, i64 2546, !44, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !42, i64 2560, !42, i64 2564, !35, i64 2568, !44, i64 2576, !42, i64 2580, !36, i64 2584, !108, i64 2616, !44, i64 3976, !44, i64 3980}
!103 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !45, i64 8, !45, i64 10, !42, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !104, i64 24, !105, i64 184}
!104 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!105 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!106 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !45, i64 48, !45, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!107 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !42, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!108 = !{!"BakeData", !103, i64 0, !36, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !42, i64 1280, !42, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!109 = !{!"AudioData", !44, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !44, i64 16, !45, i64 20, !45, i64 22, !42, i64 24, !42, i64 28}
!110 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!111 = !{!"GameData", !110, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !36, i64 34, !112, i64 40, !45, i64 64, !45, i64 66, !42, i64 68, !113, i64 72, !42, i64 128, !42, i64 132, !44, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!112 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !42, i64 8, !42, i64 12, !35, i64 16}
!113 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !44, i64 40, !42, i64 44, !42, i64 48, !45, i64 52, !45, i64 54}
!114 = !{!"UnitSettings", !42, i64 0, !36, i64 4, !36, i64 5, !45, i64 6}
!115 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!116 = !{!"long", !36, i64 0}
!117 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!118 = !{!119, !45, i64 1248}
!119 = !{!"Image", !101, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !45, i64 1240, !45, i64 1242, !45, i64 1244, !45, i64 1246, !45, i64 1248, !45, i64 1250, !44, i64 1252, !45, i64 1256, !45, i64 1258, !45, i64 1260, !45, i64 1262, !45, i64 1264, !45, i64 1266, !44, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !42, i64 1296, !44, i64 1300, !45, i64 1304, !45, i64 1306, !44, i64 1308, !44, i64 1312, !36, i64 1316, !36, i64 1317, !45, i64 1318, !36, i64 1320, !42, i64 1336, !42, i64 1340, !117, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!120 = !{!55, !36, i64 10556}
!121 = !{!100, !35, i64 248}
!122 = !{!55, !36, i64 10557}
!123 = !{!124, !45, i64 136}
!124 = !{!"Object", !101, i64 0, !35, i64 120, !35, i64 128, !45, i64 136, !45, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !125, i64 312, !35, i64 360, !46, i64 368, !46, i64 384, !46, i64 400, !46, i64 416, !44, i64 432, !44, i64 436, !35, i64 440, !35, i64 448, !44, i64 456, !44, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !42, i64 616, !42, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !44, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !36, i64 966, !36, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !36, i64 1042, !36, i64 1043, !45, i64 1044, !36, i64 1046, !36, i64 1047, !42, i64 1048, !42, i64 1052, !46, i64 1056, !46, i64 1072, !46, i64 1088, !46, i64 1104, !42, i64 1120, !45, i64 1124, !45, i64 1126, !36, i64 1128, !44, i64 1144, !44, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !45, i64 1162, !36, i64 1164, !46, i64 1176, !46, i64 1192, !46, i64 1208, !46, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !45, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !116, i64 1304, !116, i64 1312, !44, i64 1320, !44, i64 1324, !46, i64 1328, !46, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !46, i64 1400, !35, i64 1416}
!125 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!126 = !{!124, !35, i64 296}
!127 = !{!128, !35, i64 272}
!128 = !{!"Mesh", !101, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !129, i64 280, !129, i64 480, !129, i64 680, !129, i64 880, !129, i64 1080, !44, i64 1280, !44, i64 1284, !44, i64 1288, !44, i64 1292, !44, i64 1296, !44, i64 1300, !44, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !44, i64 1344, !45, i64 1348, !45, i64 1350, !42, i64 1352, !44, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !45, i64 1366, !35, i64 1368}
!129 = !{!"CustomData", !35, i64 0, !36, i64 8, !44, i64 172, !44, i64 176, !44, i64 180, !35, i64 184, !35, i64 192}
!130 = !{!100, !35, i64 264}
!131 = !{!132, !36, i64 50}
!132 = !{!"ToolSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !45, i64 44, !45, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !42, i64 52, !45, i64 56, !36, i64 58, !36, i64 59, !133, i64 64, !135, i64 168, !42, i64 336, !42, i64 340, !45, i64 344, !45, i64 346, !36, i64 348, !36, i64 349, !45, i64 350, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !45, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !35, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !45, i64 434, !45, i64 436, !45, i64 438, !45, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !44, i64 448, !44, i64 452, !44, i64 456, !44, i64 460, !45, i64 464, !45, i64 466, !44, i64 468, !42, i64 472, !42, i64 476, !136, i64 480, !137, i64 608}
!133 = !{!"ImagePaintSettings", !134, i64 0, !45, i64 40, !45, i64 42, !45, i64 44, !45, i64 46, !36, i64 48, !44, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !36, i64 88, !42, i64 100}
!134 = !{!"Paint", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!135 = !{!"ParticleEditSettings", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !36, i64 8, !35, i64 120, !42, i64 128, !42, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !35, i64 152, !35, i64 160}
!136 = !{!"UnifiedPaintSettings", !44, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !36, i64 28, !44, i64 40, !36, i64 44, !42, i64 52, !44, i64 56, !44, i64 60, !36, i64 64, !36, i64 65, !42, i64 72, !36, i64 76, !44, i64 84, !42, i64 88, !36, i64 92, !36, i64 100, !44, i64 108, !35, i64 112, !42, i64 120, !44, i64 124}
!137 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 21, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!138 = !{!139, !35, i64 0}
!139 = !{!"MTexPoly", !35, i64 0, !36, i64 8, !36, i64 9, !45, i64 10, !45, i64 12, !45, i64 14}
!140 = !{!55, !35, i64 40}
!141 = !{!139, !45, i64 12}
!142 = !{!55, !45, i64 10560}
!143 = !{!"space_image.c:image_listener"}
!144 = !{!145, !35, i64 184}
!145 = !{!"bScreen", !101, i64 0, !46, i64 120, !46, i64 136, !46, i64 152, !46, i64 168, !35, i64 184, !35, i64 192, !44, i64 200, !44, i64 204, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !35, i64 232, !35, i64 240}
!146 = !{!147, !44, i64 36}
!147 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !35, i64 56}
!148 = !{!147, !44, i64 40}
!149 = !{!147, !44, i64 44}
!150 = !{!147, !35, i64 56}
!151 = !{!147, !44, i64 48}
!152 = !{!100, !35, i64 168}
!153 = !{!154, !35, i64 32}
!154 = !{!"Base", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !45, i64 28, !45, i64 30, !35, i64 32}
!155 = !{!124, !44, i64 432}
!156 = !{!"space_image.c:image_context"}
!157 = !{!"space_image.c:image_main_area_init"}
!158 = !{!159, !35, i64 296}
!159 = !{!"wmWindowManager", !101, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !44, i64 152, !45, i64 156, !45, i64 158, !46, i64 160, !46, i64 176, !160, i64 192, !46, i64 232, !46, i64 248, !46, i64 264, !46, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !46, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!160 = !{!"ReportList", !46, i64 0, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !35, i64 32}
!161 = !{!"space_image.c:image_main_area_draw"}
!162 = !{!100, !44, i64 796}
!163 = !{!42, !42, i64 0}
!164 = !{!119, !45, i64 1250}
!165 = !{!55, !35, i64 48}
!166 = !{!55, !36, i64 10576}
!167 = !{!55, !36, i64 10577}
!168 = !{!55, !36, i64 10578}
!169 = !{!44, !44, i64 0}
!170 = !{!"space_image.c:image_main_area_listener"}
!171 = !{!"space_image.c:image_buttons_area_listener"}
!172 = !{!"space_image.c:image_buttons_area_init"}
!173 = !{!39, !45, i64 120}
!174 = !{!"space_image.c:image_buttons_area_draw"}
!175 = !{!"space_image.c:image_tools_area_listener"}
!176 = !{!"space_image.c:image_tools_area_init"}
!177 = !{!"space_image.c:image_tools_area_draw"}
!178 = !{!119, !45, i64 1246}
!179 = !{!"space_image.c:image_header_area_listener"}
!180 = !{!"space_image.c:image_header_area_init"}
!181 = !{!"space_image.c:image_header_area_draw"}
!182 = !{!"space_image.c:image_drop_poll"}
!183 = !{!184, !44, i64 20}
!184 = !{!"wmDrag", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !35, i64 24, !36, i64 32, !185, i64 1056, !35, i64 1064, !42, i64 1072, !44, i64 1076, !44, i64 1080, !36, i64 1084, !44, i64 1284}
!185 = !{!"double", !36, i64 0}
!186 = !{!184, !44, i64 16}
!187 = !{!"space_image.c:image_drop_copy"}
!188 = !{!189, !35, i64 48}
!189 = !{!"wmDropBox", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !45, i64 56}
!190 = !{!"space_image.c:image_main_area_set_view2d"}
!191 = !{!119, !42, i64 1340}
!192 = !{!119, !42, i64 1336}
!193 = !{!39, !42, i64 16}
!194 = !{!39, !42, i64 24}
!195 = !{!39, !42, i64 20}
!196 = !{!39, !42, i64 28}
!197 = !{!39, !44, i64 88}
!198 = !{!39, !44, i64 80}
!199 = !{!39, !44, i64 84}
!200 = !{!39, !44, i64 92}
!201 = !{!39, !44, i64 176}
!202 = !{!39, !44, i64 184}
!203 = !{!55, !42, i64 10536}
!204 = !{!55, !42, i64 10540}
!205 = !{!"space_image.c:BLI_rcti_size_x"}
!206 = !{!43, !44, i64 4}
!207 = !{!43, !44, i64 0}
!208 = !{!"space_image.c:BLI_rcti_size_y"}
!209 = !{!43, !44, i64 12}
!210 = !{!43, !44, i64 8}
