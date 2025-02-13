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
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #8
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #8
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
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str.1) #8
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 5, ptr %11, align 2, !tbaa !9
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 3, ptr %12, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !19
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef %0) #9
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @image_scopes_tag_refresh(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !9
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !19
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %7, %12
  %18 = load ptr, ptr %8, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !22

20:                                               ; preds = %17, %1
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 8
  store i32 0, ptr %21, align 8, !tbaa !24
  br label %22

22:                                               ; preds = %12, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_image() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.4) #8
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 6, ptr %3, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #8
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @image_new, ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @image_free, ptr %6, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @image_init, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @image_duplicate, ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @image_operatortypes, ptr %9, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @image_keymap, ptr %10, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @image_dropboxes, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @image_refresh, ptr %12, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @image_listener, ptr %13, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @image_context, ptr %14, align 8, !tbaa !41
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.6) #8
  %17 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 20
  store i32 48, ptr %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 3
  store ptr @image_main_area_init, ptr %19, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 5
  store ptr @image_main_area_draw, ptr %20, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 6
  store ptr @image_main_area_listener, ptr %21, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %16) #8
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %24 = tail call ptr %23(i64 noundef 184, ptr noundef nonnull @.str.6) #8
  %25 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 2
  store i32 4, ptr %25, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 18
  store i32 220, ptr %26, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 20
  store i32 17, ptr %27, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 6
  store ptr @image_buttons_area_listener, ptr %28, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 3
  store ptr @image_buttons_area_init, ptr %29, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 5
  store ptr @image_buttons_area_draw, ptr %30, align 8, !tbaa !46
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %24) #8
  tail call void @ED_uvedit_buttons_register(ptr noundef %24) #8
  tail call void @image_buttons_register(ptr noundef %24) #8
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %32 = tail call ptr %31(i64 noundef 184, ptr noundef nonnull @.str.6) #8
  %33 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 2
  store i32 5, ptr %33, align 8, !tbaa !42
  %34 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 18
  store i32 220, ptr %34, align 8, !tbaa !48
  %35 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 20
  store i32 17, ptr %35, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 6
  store ptr @image_tools_area_listener, ptr %36, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 3
  store ptr @image_tools_area_init, ptr %37, align 8, !tbaa !45
  %38 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 5
  store ptr @image_tools_area_draw, ptr %38, align 8, !tbaa !46
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %32) #8
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %40 = tail call ptr %39(i64 noundef 184, ptr noundef nonnull @.str.6) #8
  %41 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 2
  store i32 1, ptr %41, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 19
  store i32 26, ptr %42, align 4, !tbaa !49
  %43 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 20
  store i32 83, ptr %43, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 6
  store ptr @image_header_area_listener, ptr %44, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 3
  store ptr @image_header_area_init, ptr %45, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 5
  store ptr @image_header_area_draw, ptr %46, align 8, !tbaa !46
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %40) #8
  tail call void @BKE_spacetype_register(ptr noundef %2) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @image_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 10584, ptr noundef nonnull @.str.7) #8
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 3
  store i32 6, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 14
  store float 1.000000e+00, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 21
  store i16 1, ptr %6, align 2, !tbaa !52
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 4
  store i32 4198400, ptr %7, align 4, !tbaa !53
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 6, i32 7
  store i8 1, ptr %8, align 2, !tbaa !54
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 6, i32 5
  store i8 2, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 6, i32 2
  store i32 100, ptr %10, align 4, !tbaa !56
  %11 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 8
  tail call void @scopes_new(ptr noundef nonnull %11) #8
  %12 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 9, i32 11
  store i32 100, ptr %12, align 4, !tbaa !57
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %14 = tail call ptr %13(i64 noundef 384, ptr noundef nonnull @.str.8) #8
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 8
  store i16 1, ptr %16, align 2, !tbaa !9
  %17 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 9
  store i16 2, ptr %17, align 8, !tbaa !18
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %19 = tail call ptr %18(i64 noundef 384, ptr noundef nonnull @.str) #8
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  store i16 4, ptr %20, align 2, !tbaa !9
  %21 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 9
  store i16 4, ptr %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 10
  store i16 1, ptr %22, align 2, !tbaa !19
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %24 = tail call ptr %23(i64 noundef 384, ptr noundef nonnull @.str) #8
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 8
  store i16 5, ptr %25, align 2, !tbaa !9
  %26 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 9
  store i16 3, ptr %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 10
  store i16 1, ptr %27, align 2, !tbaa !19
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %29 = tail call ptr %28(i64 noundef 384, ptr noundef nonnull @.str.9) #8
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %29) #8
  %30 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 8
  store i16 0, ptr %30, align 2, !tbaa !9
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 8
  tail call void @scopes_free(ptr noundef nonnull %2) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 0) #8
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 21
  %5 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %4, ptr noundef %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @image_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 8
  tail call void @scopes_new(ptr noundef nonnull %4) #8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_operatortypes() #0 {
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
define internal void @image_keymap(ptr noundef %0) #0 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  tail call void @RNA_boolean_set(ptr noundef %14, ptr noundef nonnull @.str.20, i32 noundef 1) #8
  %15 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 0) #8
  %16 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !58
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
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %35, ptr noundef nonnull @.str.30, float noundef 8.000000e+00) #8
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 154, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %37 = getelementptr inbounds %struct.wmKeyMapItem, ptr %36, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %38, ptr noundef nonnull @.str.30, float noundef 4.000000e+00) #8
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 152, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %39, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %41, ptr noundef nonnull @.str.30, float noundef 2.000000e+00) #8
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 158, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %43 = getelementptr inbounds %struct.wmKeyMapItem, ptr %42, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %44, ptr noundef nonnull @.str.30, float noundef 8.000000e+00) #8
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 154, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %45, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %47, ptr noundef nonnull @.str.30, float noundef 4.000000e+00) #8
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 152, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %49 = getelementptr inbounds %struct.wmKeyMapItem, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %50, ptr noundef nonnull @.str.30, float noundef 2.000000e+00) #8
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 151, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %52 = getelementptr inbounds %struct.wmKeyMapItem, ptr %51, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %53, ptr noundef nonnull @.str.30, float noundef 1.000000e+00) #8
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 152, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %55 = getelementptr inbounds %struct.wmKeyMapItem, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %56, ptr noundef nonnull @.str.30, float noundef 5.000000e-01) #8
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 154, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %59, ptr noundef nonnull @.str.30, float noundef 2.500000e-01) #8
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef 158, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !58
  tail call void @RNA_float_set(ptr noundef %62, ptr noundef nonnull @.str.30, float noundef 1.250000e-01) #8
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef 5, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %66 = getelementptr inbounds %struct.wmKeyMapItem, ptr %65, i64 0, i32 17
  %67 = load ptr, ptr %66, align 8, !tbaa !58
  tail call void @RNA_enum_set(ptr noundef %67, ptr noundef nonnull @.str.34, i32 noundef 0) #8
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %69 = getelementptr inbounds %struct.wmKeyMapItem, ptr %68, i64 0, i32 17
  %70 = load ptr, ptr %69, align 8, !tbaa !58
  tail call void @RNA_enum_set(ptr noundef %70, ptr noundef nonnull @.str.34, i32 noundef 1) #8
  %71 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %72 = getelementptr inbounds %struct.wmKeyMapItem, ptr %71, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !58
  tail call void @RNA_enum_set(ptr noundef %73, ptr noundef nonnull @.str.36, i32 noundef 1) #8
  %74 = load ptr, ptr %72, align 8, !tbaa !58
  tail call void @RNA_boolean_set(ptr noundef %74, ptr noundef nonnull @.str.37, i32 noundef 1) #8
  br label %75

75:                                               ; preds = %1, %75
  %76 = phi i32 [ 0, %1 ], [ %82, %75 ]
  %77 = add nuw nsw i32 %76, 49
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.38, i32 noundef %77, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  tail call void @RNA_string_set(ptr noundef %80, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #8
  %81 = load ptr, ptr %79, align 8, !tbaa !58
  tail call void @RNA_int_set(ptr noundef %81, ptr noundef nonnull @.str.41, i32 noundef %76) #8
  %82 = add nuw nsw i32 %76, 1
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %75, !llvm.loop !60

84:                                               ; preds = %75
  %85 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.42, i32 noundef 227, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %86 = getelementptr inbounds %struct.wmKeyMapItem, ptr %85, i64 0, i32 17
  %87 = load ptr, ptr %86, align 8, !tbaa !58
  tail call void @RNA_string_set(ptr noundef %87, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43) #8
  %88 = load ptr, ptr %86, align 8, !tbaa !58
  tail call void @RNA_string_set(ptr noundef %88, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.44) #8
  %89 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.42, i32 noundef 227, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %90 = getelementptr inbounds %struct.wmKeyMapItem, ptr %89, i64 0, i32 17
  %91 = load ptr, ptr %90, align 8, !tbaa !58
  tail call void @RNA_string_set(ptr noundef %91, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43) #8
  %92 = load ptr, ptr %90, align 8, !tbaa !58
  tail call void @RNA_string_set(ptr noundef %92, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45) #8
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.42, i32 noundef 226, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !58
  tail call void @RNA_string_set(ptr noundef %95, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.43) #8
  %96 = load ptr, ptr %94, align 8, !tbaa !58
  tail call void @RNA_string_set(ptr noundef %96, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.46) #8
  %97 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.47, i32 noundef 98, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %98 = tail call ptr @WM_keymap_add_item(ptr noundef %15, ptr noundef nonnull @.str.48, i32 noundef 98, i32 noundef 1, i32 noundef 6, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 0) #8
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @image_drop_poll, ptr noundef nonnull @image_drop_copy) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_refresh(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %7 = tail call ptr @ED_space_image(ptr noundef %5) #8
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 6
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !61
  tail call void @BKE_image_user_check_frame_calc(ptr noundef nonnull %8, i32 noundef %10, i32 noundef 0) #8
  %11 = icmp eq ptr %7, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 11
  %14 = load i16, ptr %13, align 8, !tbaa !80
  %15 = icmp eq i16 %14, 5
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 17
  %18 = load i8, ptr %17, align 4, !tbaa !82
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = icmp eq ptr %22, null
  br i1 %23, label %73, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @ED_space_image_get_mask(ptr noundef nonnull %5) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %73, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %21, align 8, !tbaa !83
  tail call void @ED_node_composite_job(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %3) #8
  br label %73

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 18
  %31 = load i8, ptr %30, align 1, !tbaa !84
  %32 = icmp eq i8 %31, 0
  %33 = icmp ne ptr %6, null
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %37, label %73

35:                                               ; preds = %2
  %36 = icmp eq ptr %6, null
  br i1 %36, label %73, label %37

37:                                               ; preds = %29, %35
  %38 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %39 = load i16, ptr %38, align 8, !tbaa !85
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !88
  %44 = getelementptr inbounds %struct.Mesh, ptr %43, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !89
  %46 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %47 = load ptr, ptr %46, align 8, !tbaa !92
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 11
  %49 = load i8, ptr %48, align 2, !tbaa !93
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
  %63 = load ptr, ptr %60, align 8, !tbaa !100
  %64 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 5
  store ptr %63, ptr %64, align 8, !tbaa !102
  %65 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !53
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.MTexPoly, ptr %60, i64 0, i32 4
  %71 = load i16, ptr %70, align 4, !tbaa !103
  %72 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 20
  store i16 %71, ptr %72, align 8, !tbaa !104
  br label %73

73:                                               ; preds = %16, %41, %59, %69, %62, %56, %24, %27, %29, %37, %35, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_listener(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !107
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
  %15 = load i32, ptr %14, align 8, !tbaa !109
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
  %21 = load i32, ptr %20, align 4, !tbaa !110
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
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = icmp eq ptr %32, %34
  %36 = icmp eq ptr %32, null
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %106

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !112
  %41 = icmp eq i32 %40, 7
  br i1 %41, label %106, label %42

42:                                               ; preds = %38
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef nonnull %1) #9
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !109
  %46 = icmp eq i32 %45, 262144
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  tail call fastcc void @image_scopes_tag_refresh(ptr noundef nonnull %1) #9
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 17
  %50 = load i8, ptr %49, align 4, !tbaa !82
  %51 = icmp eq i8 %50, 2
  br i1 %51, label %52, label %106

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !109
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
  %59 = load i32, ptr %58, align 8, !tbaa !112
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
  %64 = load i32, ptr %63, align 8, !tbaa !109
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
  %68 = load i32, ptr %67, align 8, !tbaa !109
  switch i32 %68, label %106 [
    i32 1179648, label %69
    i32 1572864, label %69
  ]

69:                                               ; preds = %66, %66
  %70 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !113
  %72 = icmp eq ptr %71, null
  br i1 %72, label %106, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Base, ptr %71, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !114
  %76 = icmp eq ptr %75, null
  br i1 %76, label %106, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !111
  %80 = icmp eq ptr %75, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.Object, ptr %75, i64 0, i32 27
  %83 = load i32, ptr %82, align 8, !tbaa !116
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 21
  %88 = load i16, ptr %87, align 2, !tbaa !52
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 4
  %92 = load i32, ptr %91, align 4, !tbaa !53
  %93 = and i32 %92, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %90
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #8
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

96:                                               ; preds = %3
  %97 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %98 = load i32, ptr %97, align 8, !tbaa !112
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #8
  br label %106

101:                                              ; preds = %3
  %102 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %103 = load i32, ptr %102, align 8, !tbaa !109
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
define internal noundef i32 @image_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
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
define internal void @image_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 0) #8
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %9 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %10 = load ptr, ptr %3, align 8, !tbaa !117
  %11 = tail call ptr @WM_keymap_find(ptr noundef %10, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 0) #8
  %12 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %11, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %13 = load ptr, ptr %3, align 8, !tbaa !117
  %14 = tail call ptr @WM_keymap_find(ptr noundef %13, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef 0) #8
  %15 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %14) #8
  %16 = load ptr, ptr %3, align 8, !tbaa !117
  %17 = tail call ptr @WM_keymap_find(ptr noundef %16, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 0) #8
  %18 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %17, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %19 = load ptr, ptr %3, align 8, !tbaa !117
  %20 = tail call ptr @WM_keymap_find(ptr noundef %19, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 0) #8
  %21 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %20) #8
  %22 = load ptr, ptr %3, align 8, !tbaa !117
  %23 = tail call ptr @WM_keymap_find(ptr noundef %22, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 0) #8
  %24 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %23) #8
  %25 = load ptr, ptr %3, align 8, !tbaa !117
  %26 = tail call ptr @WM_keymap_find(ptr noundef %25, ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef 0) #8
  %27 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %26) #8
  %28 = load ptr, ptr %3, align 8, !tbaa !117
  %29 = tail call ptr @WM_keymap_find(ptr noundef %28, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 0) #8
  %30 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
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
  %14 = load i32, ptr %13, align 4, !tbaa !120
  %15 = and i32 %14, -129
  store i32 %15, ptr %13, align 4, !tbaa !120
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %3) #8
  %16 = load float, ptr %3, align 4, !tbaa !121
  %17 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !121
  %19 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !121
  call void @glClearColor(float noundef %16, float noundef %18, float noundef %20, float noundef 0.000000e+00) #8
  call void @glClear(i32 noundef 16384) #8
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 12
  %26 = load i16, ptr %25, align 2, !tbaa !122
  %27 = icmp eq i16 %26, 4
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = call ptr @ED_render_job_get_scene(ptr noundef %0) #8
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 6
  br i1 %30, label %33, label %32

32:                                               ; preds = %28
  store ptr %29, ptr %31, align 8, !tbaa !123
  br label %36

33:                                               ; preds = %28
  store ptr %11, ptr %31, align 8, !tbaa !123
  br label %36

34:                                               ; preds = %24, %2
  %35 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 6
  store ptr %11, ptr %35, align 8, !tbaa !123
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
  %41 = load i8, ptr %40, align 4, !tbaa !82
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
  %52 = load i32, ptr %51, align 4, !tbaa !53
  %53 = and i32 %52, 4194304
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  call void @draw_image_grease_pencil(ptr noundef %0, i8 noundef zeroext 1) #8
  br label %56

56:                                               ; preds = %55, %48
  call void @draw_image_sample_line(ptr noundef nonnull %8) #8
  call void @UI_view2d_view_restore(ptr noundef %0) #8
  %57 = load i32, ptr %51, align 4, !tbaa !53
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
  %68 = load i16, ptr %67, align 8, !tbaa !80
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
  %74 = load i8, ptr %73, align 8, !tbaa !124
  %75 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 26, i32 2
  %76 = load i8, ptr %75, align 1, !tbaa !125
  %77 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 26, i32 3
  %78 = load i8, ptr %77, align 2, !tbaa !126
  %79 = load i32, ptr %4, align 4, !tbaa !127
  %80 = load i32, ptr %5, align 4, !tbaa !127
  %81 = load float, ptr %6, align 4, !tbaa !121
  %82 = load float, ptr %7, align 4, !tbaa !121
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
define internal void @image_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !107
  switch i32 %6, label %16 [
    i32 369098752, label %7
    i32 167772160, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !112
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %15, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !112
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
define internal void @image_buttons_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !107
  switch i32 %6, label %15 [
    i32 117440512, label %14
    i32 100663296, label %14
    i32 67108864, label %7
    i32 167772160, label %10
    i32 285212672, label %14
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !109
  switch i32 %9, label %15 [
    i32 720896, label %14
    i32 786432, label %14
    i32 851968, label %14
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !112
  %13 = icmp eq i32 %12, 7
  br i1 %13, label %15, label %14

14:                                               ; preds = %4, %10, %7, %7, %7, %4, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %15

15:                                               ; preds = %14, %10, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 130, ptr %3, align 8, !tbaa !128
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = tail call ptr @WM_keymap_find(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef 0) #8
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %8 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %7, ptr noundef %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #8
  ret void
}

; Function Attrs: optsize
declare void @ED_uvedit_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @image_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_tools_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !107
  switch i32 %6, label %23 [
    i32 369098752, label %7
    i32 184549376, label %11
    i32 67108864, label %15
    i32 167772160, label %18
    i32 285212672, label %22
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !109
  %10 = icmp eq i32 %9, 5963776
  br i1 %10, label %22, label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %22, label %23

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !109
  switch i32 %17, label %23 [
    i32 720896, label %22
    i32 786432, label %22
    i32 851968, label %22
  ]

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !112
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %23, label %22

22:                                               ; preds = %4, %18, %15, %15, %15, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %23

23:                                               ; preds = %22, %18, %15, %11, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_tools_area_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 130, ptr %3, align 8, !tbaa !128
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = tail call ptr @WM_keymap_find(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef 0) #8
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %8 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %7, ptr noundef %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_tools_area_draw(ptr noundef %0, ptr noundef %1) #0 {
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
  %13 = load i32, ptr %12, align 8, !tbaa !24
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
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.Image, ptr %21, i64 0, i32 10
  %23 = load i16, ptr %22, align 2, !tbaa !129
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
  %32 = load ptr, ptr %3, align 8, !tbaa !5
  call void @ED_space_image_release_buffer(ptr noundef %4, ptr noundef %6, ptr noundef %32) #8
  call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !107
  switch i32 %6, label %14 [
    i32 67108864, label %7
    i32 268435456, label %10
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !109
  switch i32 %9, label %14 [
    i32 720896, label %13
    i32 983040, label %13
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !109
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
define internal void @image_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @image_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
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
define internal noundef i32 @image_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #4 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !130
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !133
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
define internal void @image_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !134
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
define internal fastcc void @image_main_area_set_view2d(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_space_image(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %6 = load i32, ptr %3, align 4, !tbaa !127
  %7 = load i32, ptr %4, align 4, !tbaa !127
  %8 = sitofp i32 %7 to float
  %9 = icmp eq ptr %5, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 35
  %12 = load float, ptr %11, align 4, !tbaa !136
  %13 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 34
  %14 = load float, ptr %13, align 8, !tbaa !137
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
  store float 0.000000e+00, ptr %25, align 8, !tbaa !138
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float 0.000000e+00, ptr %26, align 8, !tbaa !139
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 1
  store float %19, ptr %27, align 4, !tbaa !140
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  store float %18, ptr %28, align 4, !tbaa !141
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 2
  store i32 0, ptr %30, align 8, !tbaa !142
  store i32 0, ptr %29, align 8, !tbaa !143
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 1
  store i32 %22, ptr %31, align 4, !tbaa !144
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 3
  store i32 %24, ptr %32, align 4, !tbaa !145
  %33 = load i32, ptr %20, align 8, !tbaa !146
  %34 = sitofp i32 %33 to float
  %35 = sitofp i32 %22 to float
  %36 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 14
  %37 = load float, ptr %36, align 8, !tbaa !51
  %38 = fneg float %37
  %39 = call float @llvm.fmuladd.f32(float %38, float %19, float %35)
  %40 = fmul float %39, 5.000000e-01
  %41 = fadd float %40, %34
  %42 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !147
  %44 = sitofp i32 %43 to float
  %45 = sitofp i32 %24 to float
  %46 = call float @llvm.fmuladd.f32(float %38, float %18, float %45)
  %47 = fmul float %46, 5.000000e-01
  %48 = fadd float %47, %44
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 12
  %50 = load float, ptr %49, align 8, !tbaa !148
  %51 = call float @llvm.fmuladd.f32(float %38, float %50, float %41)
  %52 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 13
  %53 = load float, ptr %52, align 4, !tbaa !149
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
  store <4 x float> %80, ptr %56, align 8, !tbaa !121
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
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !150
  %4 = load i32, ptr %0, align 4, !tbaa !151
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !152
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !153
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
!20 = !{!21, !6, i64 96}
!21 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !14, i64 56, !7, i64 72, !7, i64 73, !16, i64 74, !16, i64 76, !16, i64 78, !16, i64 80, !16, i64 82, !16, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !17, i64 96, !17, i64 112, !17, i64 128, !17, i64 144}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !15, i64 96}
!25 = !{!"SpaceImage", !6, i64 0, !6, i64 8, !17, i64 16, !15, i64 32, !15, i64 36, !6, i64 40, !26, i64 48, !6, i64 88, !27, i64 96, !28, i64 5360, !6, i64 10520, !7, i64 10528, !13, i64 10536, !13, i64 10540, !13, i64 10544, !13, i64 10548, !13, i64 10552, !7, i64 10556, !7, i64 10557, !16, i64 10558, !16, i64 10560, !16, i64 10562, !7, i64 10564, !7, i64 10565, !7, i64 10566, !7, i64 10567, !29, i64 10568}
!26 = !{!"ImageUser", !6, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !16, i64 28, !16, i64 30, !16, i64 32, !16, i64 34, !15, i64 36}
!27 = !{!"Scopes", !15, i64 0, !15, i64 4, !15, i64 8, !13, i64 12, !15, i64 16, !13, i64 20, !13, i64 24, !15, i64 28, !13, i64 32, !15, i64 36, !7, i64 40, !28, i64 64, !6, i64 5224, !6, i64 5232, !6, i64 5240, !6, i64 5248, !15, i64 5256, !15, i64 5260}
!28 = !{!"Histogram", !15, i64 0, !15, i64 4, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 3080, !7, i64 4104, !13, i64 5128, !13, i64 5132, !16, i64 5136, !16, i64 5138, !15, i64 5140, !7, i64 5144}
!29 = !{!"MaskSpaceInfo", !6, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11}
!30 = !{!31, !15, i64 80}
!31 = !{!"SpaceType", !6, i64 0, !6, i64 8, !7, i64 16, !15, i64 80, !15, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !17, i64 176, !17, i64 192, !15, i64 208}
!32 = !{!31, !6, i64 88}
!33 = !{!31, !6, i64 96}
!34 = !{!31, !6, i64 104}
!35 = !{!31, !6, i64 136}
!36 = !{!31, !6, i64 144}
!37 = !{!31, !6, i64 152}
!38 = !{!31, !6, i64 160}
!39 = !{!31, !6, i64 128}
!40 = !{!31, !6, i64 120}
!41 = !{!31, !6, i64 168}
!42 = !{!43, !15, i64 16}
!43 = !{!"ARegionType", !6, i64 0, !6, i64 8, !15, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !17, i64 104, !17, i64 120, !17, i64 136, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !16, i64 172, !16, i64 174, !16, i64 176}
!44 = !{!43, !15, i64 168}
!45 = !{!43, !6, i64 24}
!46 = !{!43, !6, i64 40}
!47 = !{!43, !6, i64 48}
!48 = !{!43, !15, i64 160}
!49 = !{!43, !15, i64 164}
!50 = !{!25, !15, i64 32}
!51 = !{!25, !13, i64 10544}
!52 = !{!25, !16, i64 10562}
!53 = !{!25, !15, i64 36}
!54 = !{!25, !7, i64 74}
!55 = !{!25, !7, i64 72}
!56 = !{!25, !15, i64 60}
!57 = !{!25, !15, i64 10500}
!58 = !{!59, !6, i64 176}
!59 = !{!"wmKeyMapItem", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !7, i64 88, !16, i64 152, !16, i64 154, !16, i64 156, !16, i64 158, !16, i64 160, !16, i64 162, !16, i64 164, !16, i64 166, !16, i64 168, !16, i64 170, !16, i64 172, !16, i64 174, !6, i64 176}
!60 = distinct !{!60, !23}
!61 = !{!62, !15, i64 680}
!62 = !{!"Scene", !63, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !17, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !15, i64 232, !15, i64 236, !15, i64 240, !16, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !64, i64 280, !71, i64 4264, !17, i64 4296, !17, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !16, i64 4376, !16, i64 4378, !15, i64 4380, !17, i64 4384, !72, i64 4400, !73, i64 4416, !76, i64 4600, !6, i64 4608, !77, i64 4616, !6, i64 4640, !78, i64 4648, !78, i64 4656, !66, i64 4664, !67, i64 4824, !79, i64 4888, !6, i64 4952}
!63 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !16, i64 98, !15, i64 100, !15, i64 104, !15, i64 108, !6, i64 112}
!64 = !{!"RenderData", !65, i64 0, !6, i64 248, !6, i64 256, !68, i64 264, !69, i64 328, !15, i64 400, !15, i64 404, !15, i64 408, !13, i64 412, !15, i64 416, !15, i64 420, !15, i64 424, !15, i64 428, !16, i64 432, !16, i64 434, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !16, i64 456, !16, i64 458, !16, i64 460, !16, i64 462, !16, i64 464, !16, i64 466, !15, i64 468, !16, i64 472, !16, i64 474, !16, i64 476, !16, i64 478, !16, i64 480, !16, i64 482, !15, i64 484, !15, i64 488, !16, i64 492, !16, i64 494, !15, i64 496, !15, i64 500, !16, i64 504, !16, i64 506, !16, i64 508, !16, i64 510, !16, i64 512, !7, i64 514, !7, i64 515, !15, i64 516, !15, i64 520, !15, i64 524, !16, i64 528, !16, i64 530, !16, i64 532, !16, i64 534, !16, i64 536, !16, i64 538, !16, i64 540, !16, i64 542, !12, i64 544, !12, i64 560, !14, i64 576, !17, i64 592, !16, i64 608, !16, i64 610, !13, i64 612, !13, i64 616, !13, i64 620, !13, i64 624, !15, i64 628, !13, i64 632, !13, i64 636, !13, i64 640, !13, i64 644, !16, i64 648, !16, i64 650, !16, i64 652, !16, i64 654, !16, i64 656, !16, i64 658, !13, i64 660, !13, i64 664, !16, i64 668, !16, i64 670, !13, i64 672, !13, i64 676, !7, i64 680, !15, i64 1704, !16, i64 1708, !16, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !15, i64 2520, !16, i64 2524, !16, i64 2526, !13, i64 2528, !13, i64 2532, !16, i64 2536, !16, i64 2538, !13, i64 2540, !16, i64 2544, !16, i64 2546, !15, i64 2548, !16, i64 2552, !16, i64 2554, !16, i64 2556, !16, i64 2558, !13, i64 2560, !13, i64 2564, !6, i64 2568, !15, i64 2576, !13, i64 2580, !7, i64 2584, !70, i64 2616, !15, i64 3976, !15, i64 3980}
!65 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !16, i64 8, !16, i64 10, !13, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !66, i64 24, !67, i64 184}
!66 = !{!"ColorManagedViewSettings", !15, i64 0, !15, i64 4, !7, i64 8, !7, i64 72, !13, i64 136, !13, i64 140, !6, i64 144, !6, i64 152}
!67 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!68 = !{!"QuicktimeCodecSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !16, i64 48, !16, i64 50, !15, i64 52, !15, i64 56, !15, i64 60}
!69 = !{!"FFMpegCodecData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !13, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !6, i64 64}
!70 = !{!"BakeData", !65, i64 0, !7, i64 248, !16, i64 1272, !16, i64 1274, !16, i64 1276, !16, i64 1278, !13, i64 1280, !13, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!71 = !{!"AudioData", !15, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !15, i64 16, !16, i64 20, !16, i64 22, !13, i64 24, !13, i64 28}
!72 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!73 = !{!"GameData", !72, i64 0, !16, i64 16, !16, i64 18, !16, i64 20, !16, i64 22, !16, i64 24, !16, i64 26, !16, i64 28, !16, i64 30, !16, i64 32, !7, i64 34, !74, i64 40, !16, i64 64, !16, i64 66, !13, i64 68, !75, i64 72, !13, i64 128, !13, i64 132, !15, i64 136, !16, i64 140, !16, i64 142, !16, i64 144, !16, i64 146, !16, i64 148, !16, i64 150, !16, i64 152, !16, i64 154, !16, i64 156, !16, i64 158, !16, i64 160, !16, i64 162, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180}
!74 = !{!"GameDome", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !13, i64 8, !13, i64 12, !6, i64 16}
!75 = !{!"RecastData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !15, i64 40, !13, i64 44, !13, i64 48, !16, i64 52, !16, i64 54}
!76 = !{!"UnitSettings", !13, i64 0, !7, i64 4, !7, i64 5, !16, i64 6}
!77 = !{!"PhysicsSettings", !7, i64 0, !15, i64 12, !15, i64 16, !15, i64 20}
!78 = !{!"long", !7, i64 0}
!79 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!80 = !{!81, !16, i64 1248}
!81 = !{!"Image", !63, i64 0, !7, i64 120, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !7, i64 1176, !16, i64 1240, !16, i64 1242, !16, i64 1244, !16, i64 1246, !16, i64 1248, !16, i64 1250, !15, i64 1252, !16, i64 1256, !16, i64 1258, !16, i64 1260, !16, i64 1262, !16, i64 1264, !16, i64 1266, !15, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !13, i64 1296, !15, i64 1300, !16, i64 1304, !16, i64 1306, !15, i64 1308, !15, i64 1312, !7, i64 1316, !7, i64 1317, !16, i64 1318, !7, i64 1320, !13, i64 1336, !13, i64 1340, !79, i64 1344, !7, i64 1408, !7, i64 1409, !7, i64 1416}
!82 = !{!25, !7, i64 10556}
!83 = !{!62, !6, i64 248}
!84 = !{!25, !7, i64 10557}
!85 = !{!86, !16, i64 136}
!86 = !{!"Object", !63, i64 0, !6, i64 120, !6, i64 128, !16, i64 136, !16, i64 138, !15, i64 140, !15, i64 144, !15, i64 148, !7, i64 152, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !87, i64 312, !6, i64 360, !17, i64 368, !17, i64 384, !17, i64 400, !17, i64 416, !15, i64 432, !15, i64 436, !6, i64 440, !6, i64 448, !15, i64 456, !15, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !13, i64 616, !13, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !15, i64 944, !16, i64 948, !16, i64 950, !16, i64 952, !16, i64 954, !16, i64 956, !16, i64 958, !16, i64 960, !16, i64 962, !16, i64 964, !7, i64 966, !7, i64 967, !15, i64 968, !15, i64 972, !15, i64 976, !15, i64 980, !15, i64 984, !13, i64 988, !13, i64 992, !13, i64 996, !13, i64 1000, !13, i64 1004, !13, i64 1008, !13, i64 1012, !13, i64 1016, !13, i64 1020, !13, i64 1024, !13, i64 1028, !13, i64 1032, !16, i64 1036, !16, i64 1038, !16, i64 1040, !7, i64 1042, !7, i64 1043, !16, i64 1044, !7, i64 1046, !7, i64 1047, !13, i64 1048, !13, i64 1052, !17, i64 1056, !17, i64 1072, !17, i64 1088, !17, i64 1104, !13, i64 1120, !16, i64 1124, !16, i64 1126, !7, i64 1128, !15, i64 1144, !15, i64 1148, !6, i64 1152, !7, i64 1160, !7, i64 1161, !16, i64 1162, !7, i64 1164, !17, i64 1176, !17, i64 1192, !17, i64 1208, !17, i64 1224, !6, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1265, !16, i64 1266, !13, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !78, i64 1304, !78, i64 1312, !15, i64 1320, !15, i64 1324, !17, i64 1328, !17, i64 1344, !6, i64 1360, !6, i64 1368, !6, i64 1376, !7, i64 1384, !6, i64 1392, !17, i64 1400, !6, i64 1416}
!87 = !{!"bAnimVizSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !16, i64 16, !16, i64 18, !16, i64 20, !16, i64 22, !16, i64 24, !16, i64 26, !16, i64 28, !16, i64 30, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44}
!88 = !{!86, !6, i64 296}
!89 = !{!90, !6, i64 272}
!90 = !{!"Mesh", !63, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !91, i64 280, !91, i64 480, !91, i64 680, !91, i64 880, !91, i64 1080, !15, i64 1280, !15, i64 1284, !15, i64 1288, !15, i64 1292, !15, i64 1296, !15, i64 1300, !15, i64 1304, !7, i64 1308, !7, i64 1320, !7, i64 1332, !15, i64 1344, !16, i64 1348, !16, i64 1350, !13, i64 1352, !15, i64 1356, !7, i64 1360, !7, i64 1361, !7, i64 1362, !7, i64 1363, !7, i64 1364, !7, i64 1365, !16, i64 1366, !6, i64 1368}
!91 = !{!"CustomData", !6, i64 0, !7, i64 8, !15, i64 172, !15, i64 176, !15, i64 180, !6, i64 184, !6, i64 192}
!92 = !{!62, !6, i64 264}
!93 = !{!94, !7, i64 50}
!94 = !{!"ToolSettings", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !16, i64 44, !16, i64 46, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51, !13, i64 52, !16, i64 56, !7, i64 58, !7, i64 59, !95, i64 64, !97, i64 168, !13, i64 336, !13, i64 340, !16, i64 344, !16, i64 346, !7, i64 348, !7, i64 349, !16, i64 350, !13, i64 352, !13, i64 356, !13, i64 360, !13, i64 364, !13, i64 368, !13, i64 372, !13, i64 376, !13, i64 380, !13, i64 384, !13, i64 388, !16, i64 392, !7, i64 394, !7, i64 395, !7, i64 396, !7, i64 399, !6, i64 400, !7, i64 408, !7, i64 409, !7, i64 410, !7, i64 411, !7, i64 412, !7, i64 413, !7, i64 421, !7, i64 429, !7, i64 430, !7, i64 431, !7, i64 432, !7, i64 433, !16, i64 434, !16, i64 436, !16, i64 438, !16, i64 440, !7, i64 442, !7, i64 443, !7, i64 444, !7, i64 445, !7, i64 446, !7, i64 447, !15, i64 448, !15, i64 452, !15, i64 456, !15, i64 460, !16, i64 464, !16, i64 466, !15, i64 468, !13, i64 472, !13, i64 476, !98, i64 480, !99, i64 608}
!95 = !{!"ImagePaintSettings", !96, i64 0, !16, i64 40, !16, i64 42, !16, i64 44, !16, i64 46, !7, i64 48, !15, i64 52, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !13, i64 100}
!96 = !{!"Paint", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!97 = !{!"ParticleEditSettings", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !7, i64 8, !6, i64 120, !13, i64 128, !13, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !6, i64 152, !6, i64 160}
!98 = !{!"UnifiedPaintSettings", !15, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !7, i64 16, !7, i64 28, !15, i64 40, !7, i64 44, !13, i64 52, !15, i64 56, !15, i64 60, !7, i64 64, !7, i64 65, !13, i64 72, !7, i64 76, !15, i64 84, !13, i64 88, !7, i64 92, !7, i64 100, !15, i64 108, !6, i64 112, !13, i64 120, !15, i64 124}
!99 = !{!"MeshStatVis", !7, i64 0, !7, i64 1, !7, i64 3, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !7, i64 20, !7, i64 21, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36}
!100 = !{!101, !6, i64 0}
!101 = !{!"MTexPoly", !6, i64 0, !7, i64 8, !7, i64 9, !16, i64 10, !16, i64 12, !16, i64 14}
!102 = !{!25, !6, i64 40}
!103 = !{!101, !16, i64 12}
!104 = !{!25, !16, i64 10560}
!105 = !{!106, !6, i64 184}
!106 = !{!"bScreen", !63, i64 0, !17, i64 120, !17, i64 136, !17, i64 152, !17, i64 168, !6, i64 184, !6, i64 192, !15, i64 200, !15, i64 204, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !16, i64 216, !16, i64 218, !16, i64 220, !16, i64 222, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !6, i64 232, !6, i64 240}
!107 = !{!108, !15, i64 36}
!108 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !6, i64 56}
!109 = !{!108, !15, i64 40}
!110 = !{!108, !15, i64 44}
!111 = !{!108, !6, i64 56}
!112 = !{!108, !15, i64 48}
!113 = !{!62, !6, i64 168}
!114 = !{!115, !6, i64 32}
!115 = !{!"Base", !6, i64 0, !6, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !16, i64 28, !16, i64 30, !6, i64 32}
!116 = !{!86, !15, i64 432}
!117 = !{!118, !6, i64 296}
!118 = !{!"wmWindowManager", !63, i64 0, !6, i64 120, !6, i64 128, !17, i64 136, !15, i64 152, !16, i64 156, !16, i64 158, !17, i64 160, !17, i64 176, !119, i64 192, !17, i64 232, !17, i64 248, !17, i64 264, !17, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !17, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!119 = !{!"ReportList", !17, i64 0, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !6, i64 32}
!120 = !{!62, !15, i64 796}
!121 = !{!13, !13, i64 0}
!122 = !{!81, !16, i64 1250}
!123 = !{!25, !6, i64 48}
!124 = !{!25, !7, i64 10576}
!125 = !{!25, !7, i64 10577}
!126 = !{!25, !7, i64 10578}
!127 = !{!15, !15, i64 0}
!128 = !{!10, !16, i64 120}
!129 = !{!81, !16, i64 1246}
!130 = !{!131, !15, i64 20}
!131 = !{!"wmDrag", !6, i64 0, !6, i64 8, !15, i64 16, !15, i64 20, !6, i64 24, !7, i64 32, !132, i64 1056, !6, i64 1064, !13, i64 1072, !15, i64 1076, !15, i64 1080, !7, i64 1084, !15, i64 1284}
!132 = !{!"double", !7, i64 0}
!133 = !{!131, !15, i64 16}
!134 = !{!135, !6, i64 48}
!135 = !{!"wmDropBox", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !16, i64 56}
!136 = !{!81, !13, i64 1340}
!137 = !{!81, !13, i64 1336}
!138 = !{!10, !13, i64 16}
!139 = !{!10, !13, i64 24}
!140 = !{!10, !13, i64 20}
!141 = !{!10, !13, i64 28}
!142 = !{!10, !15, i64 88}
!143 = !{!10, !15, i64 80}
!144 = !{!10, !15, i64 84}
!145 = !{!10, !15, i64 92}
!146 = !{!10, !15, i64 176}
!147 = !{!10, !15, i64 184}
!148 = !{!25, !13, i64 10536}
!149 = !{!25, !13, i64 10540}
!150 = !{!14, !15, i64 4}
!151 = !{!14, !15, i64 0}
!152 = !{!14, !15, i64 12}
!153 = !{!14, !15, i64 8}
