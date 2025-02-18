; ModuleID = 'blender/source/blender/editors/mask/mask_ops.c'
source_filename = "blender/source/blender/editors/mask/mask_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MaskSplinePointUW = type { float, float, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.SlidePointData = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [2 x float], [2 x float], i8, i8, i8, i8, i8, [3 x [3 x float]], i8, i8, [2 x float], [2 x float], [2 x float], float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.SlideSplineCurvatureData = type { i16, ptr, ptr, ptr, ptr, float, i8, ptr, ptr, %struct.BezTriple, %struct.BezTriple, [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], [3 x float] }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"New Mask\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Create new mask\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"MASK_OT_new\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Name of new mask\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Add Mask Layer\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Add new mask layer for masking\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"MASK_OT_layer_new\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Name of new mask layer\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Remove Mask Layer\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Remove mask layer\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"MASK_OT_layer_remove\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Slide Point\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Slide control points\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"MASK_OT_slide_point\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"slide_feather\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Slide Feather\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"First try to slide feather instead of vertex\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"is_new_point\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Slide New Point\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Newly created vertex is being slid\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Slide Spline Curvature\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"Slide a point on the spline to define it's curvature\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"MASK_OT_slide_spline_curvature\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Toggle Cyclic\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"Toggle cyclic for selected splines\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"MASK_OT_cyclic_toggle\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Delete selected control points or splines\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"MASK_OT_delete\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Switch Direction\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Switch direction of selected splines\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"MASK_OT_switch_direction\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Recalc Normals\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Re-calculate the direction of selected handles\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"MASK_OT_normals_make_consistent\00", align 1
@MASK_OT_handle_type_set.editcurve_handle_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str }, %struct.EnumPropertyItem { i32 0, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"VECTOR\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Aligned Single\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"ALIGNED_DOUBLESIDE\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"Aligned\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Set Handle Type\00", align 1
@.str.49 = private unnamed_addr constant [48 x i8] c"Set type of handles for selected control points\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"MASK_OT_handle_type_set\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Spline type\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"Clear Restrict View\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"Reveal the layer by setting the hide flag\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"MASK_OT_hide_view_clear\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"Set Restrict View\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"Hide the layer by setting the hide flag\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"MASK_OT_hide_view_set\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"Hide unselected rather than selected layers\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"Clear Feather Weight\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"Reset the feather weight to zero\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"MASK_OT_feather_weight_clear\00", align 1
@MASK_OT_layer_move.direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.66, i32 0, ptr @.str.67, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.68, i32 0, ptr @.str.69, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"Move Layer\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"Move the active layer up/down in the list\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"MASK_OT_layer_move\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"Direction to move the active layer\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"Duplicate Mask\00", align 1
@.str.77 = private unnamed_addr constant [60 x i8] c"Duplicate selected control points and segments between them\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"MASK_OT_duplicate\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"Copy Splines\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"Copy selected splines to clipboard\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"MASK_OT_copy_splines\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"Paste Splines\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"Paste splines from clipboard\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"MASK_OT_paste_splines\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.85 = private unnamed_addr constant [22 x i8] c"mask slide point data\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.86 = private unnamed_addr constant [22 x i8] c"slide curvature slide\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"deleteMaskPoints\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"new mask uw points\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.89 = private unnamed_addr constant [23 x i8] c"duplicated mask points\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %18 = fmul float %3, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @ED_mask_get_size(ptr noundef %16, ptr noundef nonnull %11, ptr noundef nonnull %12) #8
  call void @ED_mask_pixelspace_factor(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %19 = load float, ptr %2, align 4, !tbaa !34
  %20 = load float, ptr %9, align 4, !tbaa !34
  %21 = fmul float %19, %20
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = load float, ptr %10, align 4, !tbaa !34
  %25 = fmul float %23, %24
  %26 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = icmp eq ptr %27, null
  br i1 %28, label %188, label %29

29:                                               ; preds = %8
  %30 = getelementptr inbounds float, ptr %14, i64 1
  %31 = getelementptr inbounds float, ptr %15, i64 1
  %32 = getelementptr inbounds float, ptr %13, i64 1
  br label %33

33:                                               ; preds = %29, %180
  %34 = phi ptr [ %27, %29 ], [ %186, %180 ]
  %35 = phi ptr [ null, %29 ], [ %185, %180 ]
  %36 = phi ptr [ null, %29 ], [ %184, %180 ]
  %37 = phi ptr [ null, %29 ], [ %183, %180 ]
  %38 = phi float [ 0x47EFFFFFE0000000, %29 ], [ %182, %180 ]
  %39 = phi i32 [ 0, %29 ], [ %181, %180 ]
  %40 = getelementptr inbounds %struct.MaskLayer, ptr %34, i64 0, i32 13
  %41 = load i8, ptr %40, align 1, !tbaa !40
  %42 = and i8 %41, 3
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %180

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.MaskLayer, ptr %34, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = icmp eq ptr %46, null
  br i1 %47, label %180, label %56

48:                                               ; preds = %170, %56
  %49 = phi i32 [ %62, %56 ], [ %171, %170 ]
  %50 = phi float [ %61, %56 ], [ %172, %170 ]
  %51 = phi ptr [ %60, %56 ], [ %173, %170 ]
  %52 = phi ptr [ %59, %56 ], [ %174, %170 ]
  %53 = phi ptr [ %58, %56 ], [ %175, %170 ]
  %54 = load ptr, ptr %57, align 8, !tbaa !38
  %55 = icmp eq ptr %54, null
  br i1 %55, label %180, label %56, !llvm.loop !43

56:                                               ; preds = %44, %48
  %57 = phi ptr [ %54, %48 ], [ %46, %44 ]
  %58 = phi ptr [ %53, %48 ], [ %35, %44 ]
  %59 = phi ptr [ %52, %48 ], [ %36, %44 ]
  %60 = phi ptr [ %51, %48 ], [ %37, %44 ]
  %61 = phi float [ %50, %48 ], [ %38, %44 ]
  %62 = phi i32 [ %49, %48 ], [ %39, %44 ]
  %63 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %57) #8
  %64 = getelementptr inbounds %struct.MaskSpline, ptr %57, i64 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !46
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %48

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.MaskSpline, ptr %57, i64 0, i32 6
  br label %69

69:                                               ; preds = %67, %170
  %70 = phi i64 [ 0, %67 ], [ %176, %170 ]
  %71 = phi ptr [ %58, %67 ], [ %175, %170 ]
  %72 = phi ptr [ %59, %67 ], [ %174, %170 ]
  %73 = phi ptr [ %60, %67 ], [ %173, %170 ]
  %74 = phi float [ %61, %67 ], [ %172, %170 ]
  %75 = phi i32 [ %62, %67 ], [ %171, %170 ]
  %76 = load ptr, ptr %68, align 8, !tbaa !51
  %77 = getelementptr inbounds %struct.MaskSplinePoint, ptr %76, i64 %70
  %78 = getelementptr inbounds %struct.MaskSplinePoint, ptr %63, i64 %70
  %79 = getelementptr inbounds [3 x [3 x float]], ptr %78, i64 0, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = load float, ptr %9, align 4, !tbaa !34
  %82 = fmul float %80, %81
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %78, i64 0, i64 1, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = load float, ptr %10, align 4, !tbaa !34
  %86 = fmul float %84, %85
  %87 = fsub float %82, %21
  %88 = fsub float %86, %25
  %89 = fmul float %88, %88
  %90 = call float @llvm.fmuladd.f32(float %87, float %87, float %89)
  %91 = fcmp olt float %90, %74
  br i1 %91, label %92, label %93

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92, %69
  %94 = phi i32 [ 0, %92 ], [ %75, %69 ]
  %95 = phi float [ %90, %92 ], [ %74, %69 ]
  %96 = phi ptr [ %77, %92 ], [ %73, %69 ]
  %97 = phi ptr [ %57, %92 ], [ %72, %69 ]
  %98 = phi ptr [ %34, %92 ], [ %71, %69 ]
  %99 = call i32 @BKE_mask_point_handles_mode_get(ptr noundef %78) #8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %112

101:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  %102 = load float, ptr %9, align 4, !tbaa !34
  %103 = load float, ptr %10, align 4, !tbaa !34
  call void @BKE_mask_point_handle(ptr noundef %78, i32 noundef 1, ptr noundef nonnull %13) #8
  %104 = load float, ptr %13, align 4, !tbaa !34
  %105 = fmul float %102, %104
  store float %105, ptr %13, align 4, !tbaa !34
  %106 = load float, ptr %32, align 4, !tbaa !34
  %107 = fmul float %103, %106
  store float %107, ptr %32, align 4, !tbaa !34
  %108 = fsub float %105, %21
  %109 = fsub float %107, %25
  %110 = fmul float %109, %109
  %111 = call float @llvm.fmuladd.f32(float %108, float %108, float %110)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  br label %163

112:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  %113 = load float, ptr %9, align 4, !tbaa !34
  %114 = load float, ptr %10, align 4, !tbaa !34
  call void @BKE_mask_point_handle(ptr noundef %78, i32 noundef 2, ptr noundef nonnull %14) #8
  %115 = load float, ptr %14, align 4, !tbaa !34
  %116 = fmul float %113, %115
  store float %116, ptr %14, align 4, !tbaa !34
  %117 = load float, ptr %30, align 4, !tbaa !34
  %118 = fmul float %114, %117
  store float %118, ptr %30, align 4, !tbaa !34
  %119 = load float, ptr %9, align 4, !tbaa !34
  %120 = load float, ptr %10, align 4, !tbaa !34
  call void @BKE_mask_point_handle(ptr noundef %78, i32 noundef 3, ptr noundef nonnull %15) #8
  %121 = load float, ptr %15, align 4, !tbaa !34
  %122 = fmul float %119, %121
  store float %122, ptr %15, align 4, !tbaa !34
  %123 = load float, ptr %31, align 4, !tbaa !34
  %124 = fmul float %120, %123
  store float %124, ptr %31, align 4, !tbaa !34
  %125 = load float, ptr %14, align 4, !tbaa !34
  %126 = fsub float %125, %21
  %127 = load float, ptr %30, align 4, !tbaa !34
  %128 = fsub float %127, %25
  %129 = fmul float %128, %128
  %130 = call float @llvm.fmuladd.f32(float %126, float %126, float %129)
  %131 = fsub float %122, %21
  %132 = fsub float %124, %25
  %133 = fmul float %132, %132
  %134 = call float @llvm.fmuladd.f32(float %131, float %131, float %133)
  %135 = icmp eq i64 %70, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %112
  %137 = fcmp ugt float %130, %134
  br i1 %137, label %143, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.BezTriple, ptr %78, i64 0, i32 5
  %140 = load i8, ptr %139, align 1, !tbaa !52
  %141 = icmp eq i8 %140, 2
  br i1 %141, label %160, label %142

142:                                              ; preds = %138
  br label %160

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.BezTriple, ptr %78, i64 0, i32 6
  %145 = load i8, ptr %144, align 2, !tbaa !54
  %146 = icmp eq i8 %145, 2
  br i1 %146, label %160, label %147

147:                                              ; preds = %143
  br label %160

148:                                              ; preds = %112
  %149 = fcmp ugt float %134, %130
  br i1 %149, label %155, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.BezTriple, ptr %78, i64 0, i32 6
  %152 = load i8, ptr %151, align 2, !tbaa !54
  %153 = icmp eq i8 %152, 2
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  br label %160

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.BezTriple, ptr %78, i64 0, i32 5
  %157 = load i8, ptr %156, align 1, !tbaa !52
  %158 = icmp eq i8 %157, 2
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  br label %160

160:                                              ; preds = %154, %150, %159, %155, %142, %138, %147, %143
  %161 = phi i32 [ 2, %142 ], [ 0, %138 ], [ 3, %147 ], [ 0, %143 ], [ 3, %154 ], [ 0, %150 ], [ 2, %159 ], [ 0, %155 ]
  %162 = phi float [ %130, %142 ], [ %90, %138 ], [ %134, %147 ], [ %90, %143 ], [ %134, %154 ], [ %90, %150 ], [ %130, %159 ], [ %90, %155 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  br label %163

163:                                              ; preds = %160, %101
  %164 = phi i32 [ 1, %101 ], [ %161, %160 ]
  %165 = phi float [ %111, %101 ], [ %162, %160 ]
  %166 = fcmp ole float %165, %95
  %167 = icmp ne i32 %164, 0
  %168 = and i1 %167, %166
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %169, %163
  %171 = phi i32 [ %164, %169 ], [ %94, %163 ]
  %172 = phi float [ %165, %169 ], [ %95, %163 ]
  %173 = phi ptr [ %77, %169 ], [ %96, %163 ]
  %174 = phi ptr [ %57, %169 ], [ %97, %163 ]
  %175 = phi ptr [ %34, %169 ], [ %98, %163 ]
  %176 = add nuw nsw i64 %70, 1
  %177 = load i32, ptr %64, align 4, !tbaa !46
  %178 = sext i32 %177 to i64
  %179 = icmp slt i64 %176, %178
  br i1 %179, label %69, label %48, !llvm.loop !55

180:                                              ; preds = %48, %44, %33
  %181 = phi i32 [ %39, %33 ], [ %39, %44 ], [ %49, %48 ]
  %182 = phi float [ %38, %33 ], [ %38, %44 ], [ %50, %48 ]
  %183 = phi ptr [ %37, %33 ], [ %37, %44 ], [ %51, %48 ]
  %184 = phi ptr [ %36, %33 ], [ %36, %44 ], [ %52, %48 ]
  %185 = phi ptr [ %35, %33 ], [ %35, %44 ], [ %53, %48 ]
  %186 = load ptr, ptr %34, align 8, !tbaa !38
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %33, !llvm.loop !56

188:                                              ; preds = %180, %8
  %189 = phi i32 [ 0, %8 ], [ %181, %180 ]
  %190 = phi float [ 0x47EFFFFFE0000000, %8 ], [ %182, %180 ]
  %191 = phi ptr [ null, %8 ], [ %183, %180 ]
  %192 = phi ptr [ null, %8 ], [ %184, %180 ]
  %193 = phi ptr [ null, %8 ], [ %185, %180 ]
  %194 = fcmp olt float %190, %18
  %195 = icmp eq ptr %4, null
  br i1 %194, label %196, label %208

196:                                              ; preds = %188
  br i1 %195, label %198, label %197

197:                                              ; preds = %196
  store ptr %193, ptr %4, align 8, !tbaa !38
  br label %198

198:                                              ; preds = %197, %196
  %199 = icmp eq ptr %5, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %198
  store ptr %192, ptr %5, align 8, !tbaa !38
  br label %201

201:                                              ; preds = %200, %198
  %202 = icmp eq ptr %6, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %201
  store i32 %189, ptr %6, align 4, !tbaa !57
  br label %204

204:                                              ; preds = %203, %201
  %205 = icmp eq ptr %7, null
  br i1 %205, label %216, label %206

206:                                              ; preds = %204
  %207 = call float @sqrtf(float noundef %190) #8
  store float %207, ptr %7, align 4, !tbaa !34
  br label %216

208:                                              ; preds = %188
  br i1 %195, label %210, label %209

209:                                              ; preds = %208
  store ptr null, ptr %4, align 8, !tbaa !38
  br label %210

210:                                              ; preds = %209, %208
  %211 = icmp eq ptr %5, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %210
  store ptr null, ptr %5, align 8, !tbaa !38
  br label %213

213:                                              ; preds = %212, %210
  %214 = icmp eq ptr %6, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %213
  store i32 0, ptr %6, align 4, !tbaa !57
  br label %216

216:                                              ; preds = %213, %215, %204, %206
  %217 = phi ptr [ %191, %206 ], [ %191, %204 ], [ null, %215 ], [ null, %213 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  ret ptr %217
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_mask_pixelspace_factor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_spline_point_array(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_mask_point_handles_mode_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mask_feather_find_nearest(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %17 = fmul float %3, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  call void @ED_mask_get_size(ptr noundef %15, ptr noundef nonnull %12, ptr noundef nonnull %13) #8
  call void @ED_mask_pixelspace_factor(ptr noundef %15, ptr noundef %16, ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  %18 = load float, ptr %2, align 4, !tbaa !34
  %19 = load float, ptr %10, align 4, !tbaa !34
  %20 = fmul float %18, %19
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = load float, ptr %11, align 4, !tbaa !34
  %24 = fmul float %22, %23
  %25 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = icmp eq ptr %26, null
  br i1 %27, label %149, label %36

28:                                               ; preds = %141, %36
  %29 = phi ptr [ %42, %36 ], [ %142, %141 ]
  %30 = phi ptr [ %41, %36 ], [ %143, %141 ]
  %31 = phi ptr [ %40, %36 ], [ %144, %141 ]
  %32 = phi float [ %39, %36 ], [ %145, %141 ]
  %33 = phi ptr [ %38, %36 ], [ %146, %141 ]
  %34 = load ptr, ptr %37, align 8, !tbaa !38
  %35 = icmp eq ptr %34, null
  br i1 %35, label %149, label %36, !llvm.loop !58

36:                                               ; preds = %9, %28
  %37 = phi ptr [ %34, %28 ], [ %26, %9 ]
  %38 = phi ptr [ %33, %28 ], [ null, %9 ]
  %39 = phi float [ %32, %28 ], [ 0x47EFFFFFE0000000, %9 ]
  %40 = phi ptr [ %31, %28 ], [ null, %9 ]
  %41 = phi ptr [ %30, %28 ], [ null, %9 ]
  %42 = phi ptr [ %29, %28 ], [ null, %9 ]
  %43 = getelementptr inbounds %struct.MaskLayer, ptr %37, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = icmp eq ptr %44, null
  br i1 %45, label %28, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.MaskLayer, ptr %37, i64 0, i32 13
  br label %48

48:                                               ; preds = %46, %141
  %49 = phi ptr [ %44, %46 ], [ %147, %141 ]
  %50 = phi ptr [ %38, %46 ], [ %146, %141 ]
  %51 = phi float [ %39, %46 ], [ %145, %141 ]
  %52 = phi ptr [ %40, %46 ], [ %144, %141 ]
  %53 = phi ptr [ %41, %46 ], [ %143, %141 ]
  %54 = phi ptr [ %42, %46 ], [ %142, %141 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  %55 = load i8, ptr %47, align 1, !tbaa !40
  %56 = and i8 %55, 3
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %141

58:                                               ; preds = %48
  %59 = call ptr @BKE_mask_spline_feather_points(ptr noundef nonnull %49, ptr noundef nonnull %14) #8
  %60 = getelementptr inbounds %struct.MaskSpline, ptr %49, i64 0, i32 5
  %61 = load i32, ptr %60, align 4, !tbaa !46
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %134

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.MaskSpline, ptr %49, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !51
  %66 = load float, ptr %10, align 4
  %67 = load float, ptr %11, align 4
  %68 = zext nneg i32 %61 to i64
  br label %69

69:                                               ; preds = %63, %125
  %70 = phi i64 [ 0, %63 ], [ %132, %125 ]
  %71 = phi ptr [ %59, %63 ], [ %131, %125 ]
  %72 = phi ptr [ %50, %63 ], [ %130, %125 ]
  %73 = phi float [ %51, %63 ], [ %129, %125 ]
  %74 = phi ptr [ %52, %63 ], [ %128, %125 ]
  %75 = phi ptr [ %53, %63 ], [ %127, %125 ]
  %76 = phi ptr [ %54, %63 ], [ %126, %125 ]
  %77 = getelementptr inbounds %struct.MaskSplinePoint, ptr %65, i64 %70
  %78 = getelementptr inbounds %struct.MaskSplinePoint, ptr %65, i64 %70, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %125, label %81

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.MaskSplinePoint, ptr %65, i64 %70, i32 3
  %83 = zext nneg i32 %79 to i64
  %84 = shl nuw nsw i64 %83, 3
  %85 = add nuw i32 %79, 1
  %86 = zext i32 %85 to i64
  br label %87

87:                                               ; preds = %81, %113
  %88 = phi i64 [ 0, %81 ], [ %120, %113 ]
  %89 = phi ptr [ %71, %81 ], [ %119, %113 ]
  %90 = phi ptr [ %72, %81 ], [ %118, %113 ]
  %91 = phi float [ %73, %81 ], [ %117, %113 ]
  %92 = phi ptr [ %74, %81 ], [ %116, %113 ]
  %93 = phi ptr [ %75, %81 ], [ %115, %113 ]
  %94 = phi ptr [ %76, %81 ], [ %114, %113 ]
  %95 = load float, ptr %89, align 4, !tbaa !34
  %96 = fmul float %95, %66
  %97 = getelementptr inbounds [2 x float], ptr %89, i64 0, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = fmul float %98, %67
  %100 = fsub float %20, %96
  %101 = fsub float %24, %99
  %102 = fmul float %101, %101
  %103 = call float @llvm.fmuladd.f32(float %100, float %100, float %102)
  %104 = icmp eq ptr %94, null
  %105 = fcmp olt float %103, %91
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %87
  %108 = icmp eq i64 %88, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %107
  %110 = load ptr, ptr %82, align 8, !tbaa !61
  %111 = getelementptr %struct.MaskSplinePointUW, ptr %110, i64 %88
  %112 = getelementptr %struct.MaskSplinePointUW, ptr %111, i64 -1
  br label %113

113:                                              ; preds = %109, %107, %87
  %114 = phi ptr [ %94, %87 ], [ %77, %107 ], [ %77, %109 ]
  %115 = phi ptr [ %93, %87 ], [ null, %107 ], [ %112, %109 ]
  %116 = phi ptr [ %92, %87 ], [ %49, %107 ], [ %49, %109 ]
  %117 = phi float [ %91, %87 ], [ %103, %107 ], [ %103, %109 ]
  %118 = phi ptr [ %90, %87 ], [ %37, %107 ], [ %37, %109 ]
  %119 = getelementptr inbounds [2 x float], ptr %89, i64 1
  %120 = add nuw nsw i64 %88, 1
  %121 = icmp eq i64 %120, %86
  br i1 %121, label %122, label %87, !llvm.loop !62

122:                                              ; preds = %113
  %123 = getelementptr i8, ptr %71, i64 8
  %124 = getelementptr i8, ptr %123, i64 %84
  br label %125

125:                                              ; preds = %122, %69
  %126 = phi ptr [ %76, %69 ], [ %114, %122 ]
  %127 = phi ptr [ %75, %69 ], [ %115, %122 ]
  %128 = phi ptr [ %74, %69 ], [ %116, %122 ]
  %129 = phi float [ %73, %69 ], [ %117, %122 ]
  %130 = phi ptr [ %72, %69 ], [ %118, %122 ]
  %131 = phi ptr [ %71, %69 ], [ %124, %122 ]
  %132 = add nuw nsw i64 %70, 1
  %133 = icmp eq i64 %132, %68
  br i1 %133, label %134, label %69, !llvm.loop !63

134:                                              ; preds = %125, %58
  %135 = phi ptr [ %54, %58 ], [ %126, %125 ]
  %136 = phi ptr [ %53, %58 ], [ %127, %125 ]
  %137 = phi ptr [ %52, %58 ], [ %128, %125 ]
  %138 = phi float [ %51, %58 ], [ %129, %125 ]
  %139 = phi ptr [ %50, %58 ], [ %130, %125 ]
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %140(ptr noundef %59) #8
  br label %141

141:                                              ; preds = %48, %134
  %142 = phi ptr [ %135, %134 ], [ %54, %48 ]
  %143 = phi ptr [ %136, %134 ], [ %53, %48 ]
  %144 = phi ptr [ %137, %134 ], [ %52, %48 ]
  %145 = phi float [ %138, %134 ], [ %51, %48 ]
  %146 = phi ptr [ %139, %134 ], [ %50, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  %147 = load ptr, ptr %49, align 8, !tbaa !38
  %148 = icmp eq ptr %147, null
  br i1 %148, label %28, label %48, !llvm.loop !64

149:                                              ; preds = %28, %9
  %150 = phi ptr [ null, %9 ], [ %29, %28 ]
  %151 = phi ptr [ null, %9 ], [ %30, %28 ]
  %152 = phi ptr [ null, %9 ], [ %31, %28 ]
  %153 = phi float [ 0x47EFFFFFE0000000, %9 ], [ %32, %28 ]
  %154 = phi ptr [ null, %9 ], [ %33, %28 ]
  %155 = fcmp olt float %153, %17
  %156 = icmp eq ptr %4, null
  br i1 %155, label %157, label %172

157:                                              ; preds = %149
  br i1 %156, label %159, label %158

158:                                              ; preds = %157
  store ptr %154, ptr %4, align 8, !tbaa !38
  br label %159

159:                                              ; preds = %158, %157
  %160 = icmp eq ptr %5, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %159
  store ptr %152, ptr %5, align 8, !tbaa !38
  br label %162

162:                                              ; preds = %161, %159
  %163 = icmp eq ptr %6, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %162
  store ptr %150, ptr %6, align 8, !tbaa !38
  br label %165

165:                                              ; preds = %164, %162
  %166 = icmp eq ptr %7, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %165
  store ptr %151, ptr %7, align 8, !tbaa !38
  br label %168

168:                                              ; preds = %167, %165
  %169 = icmp eq ptr %8, null
  br i1 %169, label %180, label %170

170:                                              ; preds = %168
  %171 = call float @sqrtf(float noundef %153) #8
  store float %171, ptr %8, align 4, !tbaa !34
  br label %180

172:                                              ; preds = %149
  br i1 %156, label %174, label %173

173:                                              ; preds = %172
  store ptr null, ptr %4, align 8, !tbaa !38
  br label %174

174:                                              ; preds = %173, %172
  %175 = icmp eq ptr %5, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %174
  store ptr null, ptr %5, align 8, !tbaa !38
  br label %177

177:                                              ; preds = %176, %174
  %178 = icmp eq ptr %6, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %177
  store ptr null, ptr %6, align 8, !tbaa !38
  br label %180

180:                                              ; preds = %177, %179, %168, %170
  %181 = phi i8 [ 1, %170 ], [ 1, %168 ], [ 0, %179 ], [ 0, %177 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  ret i8 %181
}

declare ptr @BKE_mask_spline_feather_points(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_mask_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %5 = tail call ptr @BKE_mask_new(ptr noundef %4, ptr noundef %1) #8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !68
  switch i8 %13, label %16 [
    i8 20, label %14
    i8 6, label %15
  ]

14:                                               ; preds = %11
  tail call void @ED_space_clip_set_mask(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5) #8
  br label %16

15:                                               ; preds = %11
  tail call void @ED_space_image_set_mask(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5) #8
  br label %16

16:                                               ; preds = %14, %15, %11, %7, %2
  ret ptr %5
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_set_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_image_set_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_mask_layer_ensure(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %7 = tail call ptr @BKE_mask_new(ptr noundef %6, ptr noundef null) #8
  %8 = icmp eq ptr %5, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %15 = load i8, ptr %14, align 8, !tbaa !68
  switch i8 %15, label %18 [
    i8 20, label %16
    i8 6, label %17
  ]

16:                                               ; preds = %13
  tail call void @ED_space_clip_set_mask(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %7) #8
  br label %18

17:                                               ; preds = %13
  tail call void @ED_space_image_set_mask(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %7) #8
  br label %18

18:                                               ; preds = %17, %16, %13, %9, %4, %1
  %19 = phi ptr [ %2, %1 ], [ %7, %4 ], [ %7, %9 ], [ %7, %13 ], [ %7, %16 ], [ %7, %17 ]
  %20 = tail call ptr @BKE_mask_layer_active(ptr noundef %19) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call ptr @BKE_mask_layer_new(ptr noundef %19, ptr noundef nonnull @.str) #8
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %20, %18 ]
  ret ptr %25
}

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_layer_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_new(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_new_exec, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_mask, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #8
  %6 = call ptr @CTX_wm_area(ptr noundef %0) #8
  %7 = call ptr @CTX_data_main(ptr noundef %0) #8
  %8 = call ptr @BKE_mask_new(ptr noundef %7, ptr noundef nonnull %3) #8
  %9 = icmp eq ptr %6, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !68
  switch i8 %16, label %19 [
    i8 20, label %17
    i8 6, label %18
  ]

17:                                               ; preds = %14
  call void @ED_space_clip_set_mask(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %8) #8
  br label %19

18:                                               ; preds = %14
  call void @ED_space_image_set_mask(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %8) #8
  br label %19

19:                                               ; preds = %2, %10, %14, %17, %18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret i32 4
}

declare i32 @ED_operator_mask(ptr noundef) #2

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_layer_new(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @masklay_new_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @masklay_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #8
  %7 = call ptr @BKE_mask_layer_new(ptr noundef %4, ptr noundef nonnull %3) #8
  %8 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !80
  %10 = add nsw i32 %9, -1
  %11 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 3
  store i32 %10, ptr %11, align 8, !tbaa !83
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret i32 4
}

declare i32 @ED_maskedit_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_layer_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @masklay_remove_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @masklay_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = tail call ptr @BKE_mask_layer_active(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BKE_mask_layer_remove(ptr noundef %3, ptr noundef nonnull %4) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %3) #8
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_slide_point(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @slide_point_invoke, ptr %4, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @slide_point_modal, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_mask, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !77
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #8
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @slide_point_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca float, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x float], align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x float], align 4
  %23 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %378, label %25

25:                                               ; preds = %3
  %26 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %27 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %28 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store ptr null, ptr %15, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = tail call i32 @RNA_boolean_get(ptr noundef %30, ptr noundef nonnull @.str.17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #8
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %26, ptr noundef %27, ptr noundef nonnull %32, ptr noundef nonnull %18) #8
  call void @ED_mask_get_size(ptr noundef %26, ptr noundef nonnull %16, ptr noundef nonnull %17) #8
  %33 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %18, float noundef 1.900000e+01, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %21, ptr noundef nonnull %19)
  %34 = call zeroext i8 @ED_mask_feather_find_nearest(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %18, float noundef 1.900000e+01, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %20), !range !86
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %25
  %37 = and i32 %31, 255
  %38 = icmp eq i32 %37, 0
  %39 = icmp ne ptr %33, null
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load float, ptr %20, align 4, !tbaa !34
  %43 = load float, ptr %19, align 4, !tbaa !34
  %44 = fcmp olt float %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %36
  %46 = load ptr, ptr %11, align 8, !tbaa !38
  %47 = load ptr, ptr %13, align 8, !tbaa !38
  %48 = load ptr, ptr %14, align 8, !tbaa !38
  br label %49

49:                                               ; preds = %45, %41, %25
  %50 = phi ptr [ undef, %25 ], [ %46, %45 ], [ undef, %41 ]
  %51 = phi ptr [ undef, %25 ], [ %47, %45 ], [ undef, %41 ]
  %52 = phi i1 [ true, %25 ], [ false, %45 ], [ true, %41 ]
  %53 = phi i32 [ 0, %25 ], [ 3, %45 ], [ 0, %41 ]
  %54 = phi ptr [ undef, %25 ], [ %48, %45 ], [ undef, %41 ]
  %55 = icmp ne ptr %33, null
  %56 = and i1 %55, %52
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, ptr %21, align 4, !tbaa !57
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 1, i32 2
  %61 = load ptr, ptr %10, align 8, !tbaa !38
  %62 = load ptr, ptr %12, align 8, !tbaa !38
  br label %63

63:                                               ; preds = %57, %49
  %64 = phi ptr [ %61, %57 ], [ %50, %49 ]
  %65 = phi ptr [ %62, %57 ], [ %51, %49 ]
  %66 = phi i32 [ %60, %57 ], [ %53, %49 ]
  %67 = phi ptr [ %33, %57 ], [ %54, %49 ]
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %69, label %213

69:                                               ; preds = %63
  %70 = call ptr @CTX_wm_area(ptr noundef %0) #8
  %71 = call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @ED_mask_get_size(ptr noundef %70, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %72 = load float, ptr %18, align 4, !tbaa !34
  %73 = load i32, ptr %4, align 4, !tbaa !57
  %74 = sitofp i32 %73 to float
  %75 = fmul float %72, %74
  %76 = getelementptr inbounds float, ptr %18, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = load i32, ptr %5, align 4, !tbaa !57
  %79 = sitofp i32 %78 to float
  %80 = fmul float %77, %79
  %81 = icmp eq ptr %71, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.SpaceClip, ptr %71, i64 0, i32 10
  %84 = load ptr, ptr %83, align 8, !tbaa !87
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.SpaceClip, ptr %71, i64 0, i32 9, i32 2
  %88 = load i16, ptr %87, align 2, !tbaa !93
  %89 = and i16 %88, 1
  %90 = icmp eq i16 %89, 0
  br label %91

91:                                               ; preds = %86, %82, %69
  %92 = phi i1 [ true, %69 ], [ true, %82 ], [ %90, %86 ]
  %93 = getelementptr inbounds %struct.Mask, ptr %28, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !38
  %95 = icmp eq ptr %94, null
  br i1 %95, label %188, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %98 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %99 = getelementptr inbounds float, ptr %8, i64 1
  %100 = getelementptr inbounds %struct.SpaceClip, ptr %71, i64 0, i32 10
  %101 = getelementptr inbounds %struct.SpaceClip, ptr %71, i64 0, i32 9
  br label %102

102:                                              ; preds = %96, %182
  %103 = phi ptr [ %94, %96 ], [ %186, %182 ]
  %104 = phi float [ undef, %96 ], [ %185, %182 ]
  %105 = phi ptr [ null, %96 ], [ %184, %182 ]
  %106 = phi ptr [ null, %96 ], [ %183, %182 ]
  %107 = getelementptr inbounds %struct.MaskLayer, ptr %103, i64 0, i32 13
  %108 = load i8, ptr %107, align 1, !tbaa !40
  %109 = and i8 %108, 2
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %182

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.MaskLayer, ptr %103, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !38
  %114 = icmp eq ptr %113, null
  br i1 %114, label %182, label %115

115:                                              ; preds = %111, %176
  %116 = phi ptr [ %180, %176 ], [ %113, %111 ]
  %117 = phi float [ %179, %176 ], [ %104, %111 ]
  %118 = phi ptr [ %178, %176 ], [ %105, %111 ]
  %119 = phi ptr [ %177, %176 ], [ %106, %111 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %120 = getelementptr inbounds %struct.MaskSpline, ptr %116, i64 0, i32 2
  %121 = load i16, ptr %120, align 8, !tbaa !94
  %122 = and i16 %121, 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %176, label %124

124:                                              ; preds = %115
  %125 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %116) #8
  store float 0x46293E5940000000, ptr %97, align 4, !tbaa !34
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !34
  store float 0xC6293E5940000000, ptr %98, align 4, !tbaa !34
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !34
  %126 = getelementptr inbounds %struct.MaskSpline, ptr %116, i64 0, i32 5
  %127 = load i32, ptr %126, align 4, !tbaa !46
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %124, %138
  %130 = phi i64 [ %139, %138 ], [ 0, %124 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %131 = getelementptr inbounds %struct.MaskSplinePoint, ptr %125, i64 %130, i32 0, i32 0, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !34
  store float %132, ptr %8, align 4, !tbaa !34
  %133 = getelementptr inbounds float, ptr %131, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !34
  store float %134, ptr %99, align 4, !tbaa !34
  br i1 %92, label %138, label %135

135:                                              ; preds = %129
  %136 = load ptr, ptr %100, align 8, !tbaa !87
  call void @BKE_mask_coord_to_movieclip(ptr noundef %136, ptr noundef nonnull %101, ptr noundef nonnull %8, ptr noundef nonnull %8) #8
  call void @ED_clip_point_undistorted_pos(ptr noundef %71, ptr noundef nonnull %8, ptr noundef nonnull %8) #8
  %137 = load ptr, ptr %100, align 8, !tbaa !87
  call void @BKE_mask_coord_from_movieclip(ptr noundef %137, ptr noundef nonnull %101, ptr noundef nonnull %8, ptr noundef nonnull %8) #8
  br label %138

138:                                              ; preds = %135, %129
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  %139 = add nuw nsw i64 %130, 1
  %140 = load i32, ptr %126, align 4, !tbaa !46
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %139, %141
  br i1 %142, label %129, label %143, !llvm.loop !95

143:                                              ; preds = %138, %124
  %144 = load float, ptr %6, align 4, !tbaa !34
  %145 = load float, ptr %7, align 4, !tbaa !34
  %146 = fadd float %144, %145
  %147 = fmul float %146, 5.000000e-01
  %148 = load i32, ptr %4, align 4, !tbaa !57
  %149 = sitofp i32 %148 to float
  %150 = fmul float %147, %149
  %151 = load float, ptr %97, align 4, !tbaa !34
  %152 = load float, ptr %98, align 4, !tbaa !34
  %153 = fadd float %151, %152
  %154 = fmul float %153, 5.000000e-01
  %155 = load i32, ptr %5, align 4, !tbaa !57
  %156 = sitofp i32 %155 to float
  %157 = fmul float %154, %156
  %158 = fsub float %150, %75
  %159 = fsub float %157, %80
  %160 = fmul float %159, %159
  %161 = call float @llvm.fmuladd.f32(float %158, float %158, float %160)
  %162 = fsub float %145, %144
  %163 = fmul float %162, %149
  %164 = fsub float %152, %151
  %165 = fmul float %164, %156
  %166 = fcmp olt float %163, %165
  %167 = select i1 %166, float %163, float %165
  %168 = fmul float %167, %167
  %169 = fmul float %168, 5.000000e-01
  %170 = fcmp ugt float %161, %169
  br i1 %170, label %176, label %171

171:                                              ; preds = %143
  %172 = icmp eq ptr %119, null
  %173 = fcmp olt float %161, %117
  %174 = select i1 %172, i1 true, i1 %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %176

176:                                              ; preds = %175, %171, %143, %115
  %177 = phi ptr [ %119, %115 ], [ %116, %175 ], [ %119, %143 ], [ %119, %171 ]
  %178 = phi ptr [ %118, %115 ], [ %103, %175 ], [ %118, %143 ], [ %118, %171 ]
  %179 = phi float [ %117, %115 ], [ %161, %175 ], [ %117, %143 ], [ %117, %171 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %180 = load ptr, ptr %116, align 8, !tbaa !38
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %115, !llvm.loop !96

182:                                              ; preds = %176, %111, %102
  %183 = phi ptr [ %106, %102 ], [ %106, %111 ], [ %177, %176 ]
  %184 = phi ptr [ %105, %102 ], [ %105, %111 ], [ %178, %176 ]
  %185 = phi float [ %104, %102 ], [ %104, %111 ], [ %179, %176 ]
  %186 = load ptr, ptr %103, align 8, !tbaa !38
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %102, !llvm.loop !97

188:                                              ; preds = %182, %91
  %189 = phi ptr [ null, %91 ], [ %183, %182 ]
  %190 = phi ptr [ null, %91 ], [ %184, %182 ]
  %191 = phi float [ undef, %91 ], [ %185, %182 ]
  %192 = fcmp olt float %191, 3.610000e+02
  %193 = icmp ne ptr %189, null
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %195, label %207

195:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  %196 = call zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %18, i32 noundef 19, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %9) #8
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = load float, ptr %9, align 4, !tbaa !34
  %200 = fmul float %199, %199
  %201 = fcmp olt float %200, %191
  br i1 %201, label %203, label %202

202:                                              ; preds = %198, %195
  br label %203

203:                                              ; preds = %202, %198
  %204 = phi ptr [ %190, %202 ], [ null, %198 ]
  %205 = phi ptr [ %189, %202 ], [ null, %198 ]
  %206 = phi i1 [ false, %202 ], [ true, %198 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  br label %207

207:                                              ; preds = %203, %188
  %208 = phi ptr [ %204, %203 ], [ null, %188 ]
  %209 = phi ptr [ %205, %203 ], [ null, %188 ]
  %210 = phi i1 [ %206, %203 ], [ true, %188 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %211 = select i1 %210, i32 0, i32 4
  %212 = select i1 %210, ptr %67, ptr null
  br label %213

213:                                              ; preds = %207, %63
  %214 = phi ptr [ %208, %207 ], [ %64, %63 ]
  %215 = phi ptr [ %209, %207 ], [ %65, %63 ]
  %216 = phi i32 [ %211, %207 ], [ %66, %63 ]
  %217 = phi ptr [ %212, %207 ], [ %67, %63 ]
  %218 = icmp eq i32 %216, 0
  br i1 %218, label %364, label %219

219:                                              ; preds = %213
  %220 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %221 = call ptr %220(i64 noundef 168, ptr noundef nonnull @.str.85) #8
  %222 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %223 = load i16, ptr %222, align 8, !tbaa !98
  store i16 %223, ptr %221, align 8, !tbaa !101
  %224 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 2
  store ptr %28, ptr %224, align 8, !tbaa !103
  %225 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 3
  store ptr %214, ptr %225, align 8, !tbaa !104
  %226 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 4
  store ptr %215, ptr %226, align 8, !tbaa !105
  %227 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 6
  store ptr %217, ptr %227, align 8, !tbaa !106
  %228 = load i32, ptr %16, align 4, !tbaa !57
  %229 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 9
  store i32 %228, ptr %229, align 4, !tbaa !107
  %230 = load i32, ptr %17, align 4, !tbaa !57
  %231 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 10
  store i32 %230, ptr %231, align 8, !tbaa !108
  %232 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 1
  store i32 %216, ptr %232, align 4, !tbaa !109
  %233 = load ptr, ptr %15, align 8, !tbaa !38
  %234 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 7
  store ptr %233, ptr %234, align 8, !tbaa !110
  %235 = load ptr, ptr %29, align 8, !tbaa !78
  %236 = call i32 @RNA_boolean_get(ptr noundef %235, ptr noundef nonnull @.str.20) #8
  %237 = trunc i32 %236 to i8
  %238 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 17
  store i8 %237, ptr %238, align 8, !tbaa !111
  %239 = load i32, ptr %232, align 4, !tbaa !109
  %240 = icmp eq i32 %239, 4
  br i1 %240, label %277, label %241

241:                                              ; preds = %219
  %242 = getelementptr inbounds %struct.BezTriple, ptr %217, i64 0, i32 5
  %243 = load i8, ptr %242, align 1, !tbaa !112
  %244 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 19
  store i8 %243, ptr %244, align 8, !tbaa !113
  %245 = getelementptr inbounds %struct.BezTriple, ptr %217, i64 0, i32 6
  %246 = load i8, ptr %245, align 2, !tbaa !114
  %247 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 20
  store i8 %246, ptr %247, align 1, !tbaa !115
  %248 = load i32, ptr %21, align 4, !tbaa !57
  call void @ED_mask_select_toggle_all(ptr noundef %28, i32 noundef 2) #8
  switch i32 %248, label %265 [
    i32 0, label %249
    i32 2, label %250
    i32 3, label %254
    i32 1, label %258
  ]

249:                                              ; preds = %241
  call void @BKE_mask_point_select_set(ptr noundef %217, i8 noundef zeroext 1) #8
  br label %265

250:                                              ; preds = %241
  %251 = getelementptr inbounds %struct.BezTriple, ptr %217, i64 0, i32 7
  %252 = load i8, ptr %251, align 1, !tbaa !116
  %253 = or i8 %252, 1
  store i8 %253, ptr %251, align 1, !tbaa !116
  br label %265

254:                                              ; preds = %241
  %255 = getelementptr inbounds %struct.BezTriple, ptr %217, i64 0, i32 9
  %256 = load i8, ptr %255, align 1, !tbaa !117
  %257 = or i8 %256, 1
  store i8 %257, ptr %255, align 1, !tbaa !117
  br label %265

258:                                              ; preds = %241
  %259 = getelementptr inbounds %struct.BezTriple, ptr %217, i64 0, i32 7
  %260 = load i8, ptr %259, align 1, !tbaa !116
  %261 = or i8 %260, 1
  store i8 %261, ptr %259, align 1, !tbaa !116
  %262 = getelementptr inbounds %struct.BezTriple, ptr %217, i64 0, i32 9
  %263 = load i8, ptr %262, align 1, !tbaa !117
  %264 = or i8 %263, 1
  store i8 %264, ptr %262, align 1, !tbaa !117
  br label %265

265:                                              ; preds = %258, %254, %250, %249, %241
  %266 = getelementptr inbounds %struct.MaskLayer, ptr %214, i64 0, i32 5
  store ptr %215, ptr %266, align 8, !tbaa !118
  %267 = getelementptr inbounds %struct.MaskLayer, ptr %214, i64 0, i32 6
  store ptr %217, ptr %267, align 8, !tbaa !119
  call void @ED_mask_select_flush_all(ptr noundef %28) #8
  %268 = load i32, ptr %21, align 4, !tbaa !57
  switch i32 %268, label %277 [
    i32 2, label %269
    i32 3, label %273
  ]

269:                                              ; preds = %265
  %270 = load i8, ptr %242, align 1, !tbaa !52
  switch i8 %270, label %277 [
    i8 2, label %271
    i8 1, label %272
  ]

271:                                              ; preds = %269
  store i8 0, ptr %242, align 1, !tbaa !52
  br label %277

272:                                              ; preds = %269
  store i8 5, ptr %242, align 1, !tbaa !52
  store i8 5, ptr %245, align 2, !tbaa !54
  br label %277

273:                                              ; preds = %265
  %274 = load i8, ptr %245, align 2, !tbaa !54
  switch i8 %274, label %277 [
    i8 2, label %275
    i8 1, label %276
  ]

275:                                              ; preds = %273
  store i8 0, ptr %245, align 2, !tbaa !54
  br label %277

276:                                              ; preds = %273
  store i8 5, ptr %242, align 1, !tbaa !52
  store i8 5, ptr %245, align 2, !tbaa !54
  br label %277

277:                                              ; preds = %276, %275, %273, %272, %271, %269, %265, %219
  %278 = load ptr, ptr %15, align 8, !tbaa !38
  %279 = icmp eq ptr %278, null
  br i1 %279, label %306, label %280

280:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #8
  %281 = load float, ptr %278, align 4, !tbaa !120
  %282 = call float @BKE_mask_point_weight_scalar(ptr noundef %215, ptr noundef %217, float noundef %281) #8
  %283 = load ptr, ptr %15, align 8, !tbaa !38
  %284 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %283, i64 0, i32 1
  %285 = load float, ptr %284, align 4, !tbaa !122
  %286 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 24
  store float %285, ptr %286, align 4, !tbaa !123
  %287 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 25
  store float %282, ptr %287, align 8, !tbaa !124
  %288 = load float, ptr %283, align 4, !tbaa !120
  call void @BKE_mask_point_segment_co(ptr noundef %215, ptr noundef %217, float noundef %288, ptr noundef nonnull %22) #8
  %289 = load ptr, ptr %15, align 8, !tbaa !38
  %290 = load float, ptr %289, align 4, !tbaa !120
  %291 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 12
  call void @BKE_mask_point_normal(ptr noundef %215, ptr noundef %217, float noundef %290, ptr noundef nonnull %291) #8
  %292 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 23
  %293 = load ptr, ptr %15, align 8, !tbaa !38
  %294 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %293, i64 0, i32 1
  %295 = load float, ptr %294, align 4, !tbaa !122
  %296 = fmul float %282, %295
  %297 = load float, ptr %22, align 4, !tbaa !34
  %298 = load float, ptr %291, align 4, !tbaa !34
  %299 = call float @llvm.fmuladd.f32(float %298, float %296, float %297)
  store float %299, ptr %292, align 4, !tbaa !34
  %300 = getelementptr inbounds float, ptr %22, i64 1
  %301 = load float, ptr %300, align 4, !tbaa !34
  %302 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 12, i64 1
  %303 = load float, ptr %302, align 4, !tbaa !34
  %304 = call float @llvm.fmuladd.f32(float %303, float %296, float %301)
  %305 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 23, i64 1
  store float %304, ptr %305, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #8
  br label %327

306:                                              ; preds = %277
  %307 = load i32, ptr %232, align 4, !tbaa !109
  %308 = icmp eq i32 %307, 4
  br i1 %308, label %327, label %309

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.BezTriple, ptr %217, i64 0, i32 2
  %311 = load float, ptr %310, align 4, !tbaa !125
  %312 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 24
  store float %311, ptr %312, align 4, !tbaa !123
  %313 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 25
  store float 1.000000e+00, ptr %313, align 8, !tbaa !124
  %314 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 12
  call void @BKE_mask_point_normal(ptr noundef %215, ptr noundef %217, float noundef 0.000000e+00, ptr noundef nonnull %314) #8
  %315 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 23
  %316 = getelementptr inbounds [3 x [3 x float]], ptr %217, i64 0, i64 1
  %317 = load float, ptr %310, align 4, !tbaa !125
  %318 = load float, ptr %316, align 4, !tbaa !34
  %319 = load float, ptr %314, align 4, !tbaa !34
  %320 = call float @llvm.fmuladd.f32(float %319, float %317, float %318)
  store float %320, ptr %315, align 4, !tbaa !34
  %321 = getelementptr inbounds [3 x [3 x float]], ptr %217, i64 0, i64 1, i64 1
  %322 = load float, ptr %321, align 4, !tbaa !34
  %323 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 12, i64 1
  %324 = load float, ptr %323, align 4, !tbaa !34
  %325 = call float @llvm.fmuladd.f32(float %324, float %317, float %322)
  %326 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 23, i64 1
  store float %325, ptr %326, align 4, !tbaa !34
  br label %327

327:                                              ; preds = %309, %306, %280
  %328 = load i32, ptr %232, align 4, !tbaa !109
  switch i32 %328, label %349 [
    i32 3, label %329
    i32 4, label %360
  ]

329:                                              ; preds = %327
  %330 = getelementptr inbounds %struct.MaskSpline, ptr %215, i64 0, i32 5
  %331 = load i32, ptr %330, align 4, !tbaa !46
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.MaskSpline, ptr %215, i64 0, i32 6
  %335 = load ptr, ptr %334, align 8, !tbaa !51
  %336 = zext nneg i32 %331 to i64
  br label %340

337:                                              ; preds = %340
  %338 = add nuw nsw i64 %341, 1
  %339 = icmp eq i64 %338, %336
  br i1 %339, label %345, label %340, !llvm.loop !126

340:                                              ; preds = %333, %337
  %341 = phi i64 [ 0, %333 ], [ %338, %337 ]
  %342 = getelementptr inbounds %struct.MaskSplinePoint, ptr %335, i64 %341, i32 0, i32 2
  %343 = load float, ptr %342, align 8, !tbaa !127
  %344 = fcmp oeq float %343, 0.000000e+00
  br i1 %344, label %337, label %345

345:                                              ; preds = %337, %340, %329
  %346 = phi i8 [ 1, %329 ], [ 1, %337 ], [ 0, %340 ]
  %347 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 15
  store i8 %346, ptr %347, align 2, !tbaa !128
  %348 = icmp eq i32 %328, 4
  br i1 %348, label %360, label %349

349:                                              ; preds = %327, %345
  %350 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 18
  call void @copy_m3_m3(ptr noundef nonnull %350, ptr noundef %217) #8
  %351 = load i32, ptr %21, align 4, !tbaa !57
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %360, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 21
  call void @BKE_mask_point_handle(ptr noundef %217, i32 noundef %351, ptr noundef nonnull %354) #8
  %355 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 22
  %356 = load float, ptr %354, align 4, !tbaa !34
  store float %356, ptr %355, align 4, !tbaa !34
  %357 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 21, i64 1
  %358 = load float, ptr %357, align 4, !tbaa !34
  %359 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 22, i64 1
  store float %358, ptr %359, align 4, !tbaa !34
  br label %360

360:                                              ; preds = %327, %353, %349, %345
  %361 = load i32, ptr %21, align 4, !tbaa !57
  %362 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 8
  store i32 %361, ptr %362, align 8, !tbaa !129
  %363 = getelementptr inbounds %struct.SlidePointData, ptr %221, i64 0, i32 11
  call void @ED_mask_mouse_pos(ptr noundef %26, ptr noundef %27, ptr noundef nonnull %32, ptr noundef nonnull %363) #8
  br label %364

364:                                              ; preds = %213, %360
  %365 = phi ptr [ %221, %360 ], [ null, %213 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  %366 = icmp eq ptr %365, null
  br i1 %366, label %378, label %367

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %365, ptr %368, align 8, !tbaa !130
  %369 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  %370 = getelementptr inbounds %struct.SlidePointData, ptr %365, i64 0, i32 4
  %371 = load ptr, ptr %370, align 8, !tbaa !105
  %372 = getelementptr inbounds %struct.SlidePointData, ptr %365, i64 0, i32 3
  %373 = load ptr, ptr %372, align 8, !tbaa !104
  %374 = getelementptr inbounds %struct.MaskLayer, ptr %373, i64 0, i32 5
  store ptr %371, ptr %374, align 8, !tbaa !118
  %375 = getelementptr inbounds %struct.SlidePointData, ptr %365, i64 0, i32 6
  %376 = load ptr, ptr %375, align 8, !tbaa !106
  %377 = getelementptr inbounds %struct.MaskLayer, ptr %373, i64 0, i32 6
  store ptr %376, ptr %377, align 8, !tbaa !119
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef nonnull %23) #8
  br label %378

378:                                              ; preds = %364, %3, %367
  %379 = phi i32 [ 1, %367 ], [ 2, %3 ], [ 8, %364 ]
  ret i32 %379
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @slide_point_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !98
  switch i16 %18, label %586 [
    i16 213, label %19
    i16 214, label %19
    i16 217, label %19
    i16 216, label %19
    i16 4, label %43
    i16 1, label %428
    i16 3, label %428
    i16 218, label %510
  ]

19:                                               ; preds = %3, %3, %3, %3
  %20 = add i16 %18, -213
  %21 = icmp ult i16 %20, 2
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !109
  %25 = icmp eq i32 %24, 3
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !131
  %28 = icmp eq i16 %27, 1
  %29 = zext i1 %28 to i8
  br i1 %25, label %30, label %32

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 16
  store i8 %29, ptr %31, align 1, !tbaa !132
  br label %34

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 13
  store i8 %29, ptr %33, align 4, !tbaa !133
  br label %34

34:                                               ; preds = %19, %30, %32
  %35 = and i16 %18, -2
  %36 = icmp eq i16 %35, 216
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %39 = load i16, ptr %38, align 2, !tbaa !131
  %40 = icmp eq i16 %39, 1
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 14
  store i8 %41, ptr %42, align 1, !tbaa !134
  br label %43

43:                                               ; preds = %34, %37, %3
  %44 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %45 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %46 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %44, ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull %4) #8
  %47 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 11
  %48 = load float, ptr %4, align 4, !tbaa !34
  %49 = load float, ptr %47, align 4, !tbaa !34
  %50 = fsub float %48, %49
  %51 = getelementptr inbounds float, ptr %4, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 11, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = fsub float %52, %54
  %56 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 14
  %57 = load i8, ptr %56, align 1, !tbaa !134
  %58 = icmp eq i8 %57, 0
  %59 = fmul float %50, 0x3FC99999A0000000
  %60 = fmul float %55, 0x3FC99999A0000000
  %61 = select i1 %58, float %50, float %59
  %62 = select i1 %58, float %55, float %60
  store float %48, ptr %47, align 4, !tbaa !34
  store float %52, ptr %53, align 4, !tbaa !34
  %63 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !109
  switch i32 %64, label %424 [
    i32 2, label %65
    i32 1, label %136
    i32 3, label %154
    i32 4, label %384
  ]

65:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %66 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 17
  %67 = load i8, ptr %66, align 8, !tbaa !111
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 8
  %71 = load i32, ptr %70, align 8, !tbaa !129
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load ptr, ptr %15, align 8, !tbaa !106
  %75 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !105
  %77 = getelementptr inbounds %struct.MaskSpline, ptr %76, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !51
  %79 = icmp eq ptr %74, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.MaskSpline, ptr %76, i64 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !46
  %83 = sext i32 %82 to i64
  %84 = getelementptr %struct.MaskSplinePoint, ptr %78, i64 %83
  %85 = getelementptr %struct.MaskSplinePoint, ptr %84, i64 -1
  %86 = icmp eq ptr %74, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80, %73
  %88 = fneg float %61
  br i1 %79, label %91, label %89

89:                                               ; preds = %87
  %90 = fneg float %62
  br label %91

91:                                               ; preds = %80, %89, %87, %69, %65
  %92 = phi float [ %61, %65 ], [ %62, %87 ], [ %90, %89 ], [ %61, %80 ], [ %61, %69 ]
  %93 = phi float [ %62, %65 ], [ %88, %87 ], [ %61, %89 ], [ %62, %80 ], [ %62, %69 ]
  %94 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 22
  %95 = load float, ptr %94, align 4, !tbaa !34
  %96 = fadd float %92, %95
  store float %96, ptr %5, align 4, !tbaa !34
  %97 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 22, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = fadd float %93, %98
  %100 = getelementptr inbounds float, ptr %5, i64 1
  store float %99, ptr %100, align 4, !tbaa !34
  %101 = load ptr, ptr %15, align 8, !tbaa !106
  %102 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 8
  %103 = load i32, ptr %102, align 8, !tbaa !129
  %104 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 13
  %105 = load i8, ptr %104, align 4, !tbaa !133
  %106 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 21
  %107 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 18
  call void @BKE_mask_point_set_handle(ptr noundef %101, i32 noundef %103, ptr noundef nonnull %5, i8 noundef zeroext %105, ptr noundef nonnull %106, ptr noundef nonnull %107) #8
  %108 = load ptr, ptr %15, align 8, !tbaa !106
  %109 = load i32, ptr %102, align 8, !tbaa !129
  call void @BKE_mask_point_handle(ptr noundef %108, i32 noundef %109, ptr noundef nonnull %94) #8
  %110 = load i8, ptr %66, align 8, !tbaa !111
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %91
  %113 = load i32, ptr %102, align 8, !tbaa !129
  %114 = and i32 %113, -2
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load ptr, ptr %15, align 8, !tbaa !106
  %118 = icmp eq i32 %113, 2
  %119 = getelementptr inbounds [3 x [3 x float]], ptr %117, i64 0, i64 1
  %120 = select i1 %118, i64 0, i64 2
  %121 = getelementptr inbounds [3 x [3 x float]], ptr %117, i64 0, i64 %120
  %122 = load float, ptr %119, align 4, !tbaa !34
  %123 = load float, ptr %121, align 4, !tbaa !34
  %124 = fsub float %122, %123
  %125 = getelementptr inbounds [3 x [3 x float]], ptr %117, i64 0, i64 1, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = getelementptr inbounds float, ptr %121, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !34
  %129 = fsub float %126, %128
  %130 = select i1 %118, i64 2, i64 0
  %131 = getelementptr inbounds [3 x [3 x float]], ptr %117, i64 0, i64 %130
  %132 = fadd float %122, %124
  store float %132, ptr %131, align 4, !tbaa !34
  %133 = fadd float %126, %129
  %134 = getelementptr inbounds float, ptr %131, i64 1
  store float %133, ptr %134, align 4, !tbaa !34
  br label %135

135:                                              ; preds = %112, %116, %91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %424

136:                                              ; preds = %43
  %137 = load float, ptr %16, align 4, !tbaa !34
  %138 = fadd float %61, %137
  store float %138, ptr %16, align 4, !tbaa !34
  %139 = getelementptr inbounds float, ptr %16, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !34
  %141 = fadd float %62, %140
  store float %141, ptr %139, align 4, !tbaa !34
  %142 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !34
  %144 = fadd float %61, %143
  store float %144, ptr %142, align 4, !tbaa !34
  %145 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !34
  %147 = fadd float %62, %146
  store float %147, ptr %145, align 4, !tbaa !34
  %148 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !34
  %150 = fadd float %61, %149
  store float %150, ptr %148, align 4, !tbaa !34
  %151 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 2, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !34
  %153 = fadd float %62, %152
  store float %153, ptr %151, align 4, !tbaa !34
  br label %424

154:                                              ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %155 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 16
  %156 = load i8, ptr %155, align 1, !tbaa !132
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 15
  %160 = load i8, ptr %159, align 2, !tbaa !128
  %161 = icmp eq i8 %160, 0
  br label %162

162:                                              ; preds = %158, %154
  %163 = phi i1 [ false, %154 ], [ %161, %158 ]
  %164 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 23
  %165 = load float, ptr %164, align 4, !tbaa !34
  %166 = fadd float %61, %165
  store float %166, ptr %10, align 4, !tbaa !34
  %167 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 23, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !34
  %169 = fadd float %62, %168
  %170 = getelementptr inbounds float, ptr %10, i64 1
  store float %169, ptr %170, align 4, !tbaa !34
  %171 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 7
  %172 = load ptr, ptr %171, align 8, !tbaa !110
  %173 = icmp eq ptr %172, null
  br i1 %173, label %246, label %174

174:                                              ; preds = %162
  %175 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 4
  %176 = load ptr, ptr %175, align 8, !tbaa !105
  %177 = load ptr, ptr %15, align 8, !tbaa !106
  %178 = load float, ptr %172, align 4, !tbaa !120
  %179 = call float @BKE_mask_spline_project_co(ptr noundef %176, ptr noundef %177, float noundef %178, ptr noundef nonnull %10, i32 noundef -1) #8
  %180 = load ptr, ptr %175, align 8, !tbaa !105
  %181 = load ptr, ptr %15, align 8, !tbaa !106
  %182 = load ptr, ptr %171, align 8, !tbaa !110
  %183 = load float, ptr %182, align 4, !tbaa !120
  %184 = call float @BKE_mask_spline_project_co(ptr noundef %180, ptr noundef %181, float noundef %183, ptr noundef nonnull %10, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %185 = fcmp ogt float %179, 0.000000e+00
  %186 = fcmp olt float %179, 1.000000e+00
  %187 = and i1 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %174
  %189 = load ptr, ptr %175, align 8, !tbaa !105
  %190 = load ptr, ptr %15, align 8, !tbaa !106
  call void @BKE_mask_point_segment_co(ptr noundef %189, ptr noundef %190, float noundef %179, ptr noundef nonnull %11) #8
  %191 = load float, ptr %11, align 4, !tbaa !34
  %192 = load float, ptr %10, align 4, !tbaa !34
  %193 = fsub float %191, %192
  %194 = getelementptr inbounds float, ptr %11, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !34
  %196 = load float, ptr %170, align 4, !tbaa !34
  %197 = fsub float %195, %196
  %198 = fmul float %197, %197
  %199 = call float @llvm.fmuladd.f32(float %193, float %193, float %198)
  br label %200

200:                                              ; preds = %188, %174
  %201 = phi float [ %199, %188 ], [ 0x47EFFFFFE0000000, %174 ]
  %202 = fcmp ogt float %184, 0.000000e+00
  %203 = fcmp olt float %184, 1.000000e+00
  %204 = and i1 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %200
  %206 = load ptr, ptr %175, align 8, !tbaa !105
  %207 = load ptr, ptr %15, align 8, !tbaa !106
  call void @BKE_mask_point_segment_co(ptr noundef %206, ptr noundef %207, float noundef %184, ptr noundef nonnull %12) #8
  %208 = load float, ptr %12, align 4, !tbaa !34
  %209 = load float, ptr %10, align 4, !tbaa !34
  %210 = fsub float %208, %209
  %211 = getelementptr inbounds float, ptr %12, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !34
  %213 = load float, ptr %170, align 4, !tbaa !34
  %214 = fsub float %212, %213
  %215 = fmul float %214, %214
  %216 = call float @llvm.fmuladd.f32(float %210, float %210, float %215)
  br label %217

217:                                              ; preds = %205, %200
  %218 = phi float [ %216, %205 ], [ 0x47EFFFFFE0000000, %200 ]
  %219 = fcmp olt float %201, %218
  %220 = select i1 %219, float %179, float %184
  %221 = fcmp ogt float %220, 0.000000e+00
  %222 = fcmp olt float %220, 1.000000e+00
  %223 = and i1 %221, %222
  br i1 %223, label %224, label %243

224:                                              ; preds = %217
  %225 = load ptr, ptr %171, align 8, !tbaa !110
  store float %220, ptr %225, align 4, !tbaa !120
  %226 = load ptr, ptr %15, align 8, !tbaa !106
  %227 = call ptr @BKE_mask_point_sort_uw(ptr noundef %226, ptr noundef nonnull %225) #8
  store ptr %227, ptr %171, align 8, !tbaa !110
  %228 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %175, align 8, !tbaa !105
  %230 = load ptr, ptr %15, align 8, !tbaa !106
  %231 = call float @BKE_mask_point_weight_scalar(ptr noundef %229, ptr noundef %230, float noundef %220) #8
  %232 = fcmp une float %231, 0.000000e+00
  %233 = fdiv float 1.000000e+00, %231
  %234 = select i1 %232, float %233, float %231
  %235 = load ptr, ptr %175, align 8, !tbaa !105
  %236 = load ptr, ptr %15, align 8, !tbaa !106
  %237 = load ptr, ptr %171, align 8, !tbaa !110
  %238 = load float, ptr %237, align 4, !tbaa !120
  call void @BKE_mask_point_normal(ptr noundef %235, ptr noundef %236, float noundef %238, ptr noundef nonnull %7) #8
  %239 = load ptr, ptr %175, align 8, !tbaa !105
  %240 = load ptr, ptr %15, align 8, !tbaa !106
  %241 = load ptr, ptr %171, align 8, !tbaa !110
  %242 = load float, ptr %241, align 4, !tbaa !120
  call void @BKE_mask_point_segment_co(ptr noundef %239, ptr noundef %240, float noundef %242, ptr noundef nonnull %8) #8
  br label %243

243:                                              ; preds = %224, %217
  %244 = phi float [ %234, %224 ], [ 1.000000e+00, %217 ]
  %245 = phi ptr [ %228, %224 ], [ null, %217 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %258

246:                                              ; preds = %162
  %247 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 0, i32 2
  %248 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 12
  %249 = load float, ptr %248, align 4, !tbaa !34
  store float %249, ptr %7, align 4, !tbaa !34
  %250 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 12, i64 1
  %251 = load float, ptr %250, align 4, !tbaa !34
  %252 = getelementptr inbounds float, ptr %7, i64 1
  store float %251, ptr %252, align 4, !tbaa !34
  %253 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !34
  store float %254, ptr %8, align 4, !tbaa !34
  %255 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !34
  %257 = getelementptr inbounds float, ptr %8, i64 1
  store float %256, ptr %257, align 4, !tbaa !34
  br label %258

258:                                              ; preds = %246, %243
  %259 = phi float [ %244, %243 ], [ 1.000000e+00, %246 ]
  %260 = phi ptr [ %245, %243 ], [ %247, %246 ]
  %261 = icmp eq ptr %260, null
  br i1 %261, label %383, label %262

262:                                              ; preds = %258
  %263 = load float, ptr %10, align 4, !tbaa !34
  %264 = load float, ptr %8, align 4, !tbaa !34
  %265 = fsub float %263, %264
  store float %265, ptr %9, align 4, !tbaa !34
  %266 = load float, ptr %170, align 4, !tbaa !34
  %267 = getelementptr inbounds float, ptr %8, i64 1
  %268 = load float, ptr %267, align 4, !tbaa !34
  %269 = fsub float %266, %268
  %270 = getelementptr inbounds float, ptr %9, i64 1
  store float %269, ptr %270, align 4, !tbaa !34
  call void @project_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %7) #8
  %271 = load float, ptr %6, align 4, !tbaa !34
  %272 = getelementptr inbounds float, ptr %6, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !34
  %274 = fmul float %273, %273
  %275 = call float @llvm.fmuladd.f32(float %271, float %271, float %274)
  %276 = call float @sqrtf(float noundef %275) #8
  %277 = load float, ptr %7, align 4, !tbaa !34
  %278 = load float, ptr %6, align 4, !tbaa !34
  %279 = getelementptr inbounds float, ptr %7, i64 1
  %280 = load float, ptr %279, align 4, !tbaa !34
  %281 = load float, ptr %272, align 4, !tbaa !34
  %282 = fmul float %280, %281
  %283 = call float @llvm.fmuladd.f32(float %277, float %278, float %282)
  %284 = fcmp ugt float %283, 0.000000e+00
  br i1 %163, label %330, label %285

285:                                              ; preds = %262
  %286 = fneg float %276
  %287 = select i1 %284, float %276, float %286
  %288 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 24
  %289 = load float, ptr %288, align 4, !tbaa !123
  %290 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 25
  %291 = load float, ptr %290, align 8, !tbaa !124
  %292 = fneg float %289
  %293 = call float @llvm.fmuladd.f32(float %292, float %291, float %287)
  %294 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 5
  %295 = load ptr, ptr %294, align 8, !tbaa !135
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %285
  store float %289, ptr %260, align 4, !tbaa !34
  %298 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 4
  %299 = load ptr, ptr %298, align 8, !tbaa !105
  %300 = call ptr @BKE_mask_spline_copy(ptr noundef %299) #8
  store ptr %300, ptr %294, align 8, !tbaa !135
  br label %301

301:                                              ; preds = %297, %285
  %302 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 15
  %303 = load i8, ptr %302, align 2, !tbaa !128
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %301
  %306 = fmul float %259, %287
  store float %306, ptr %260, align 4, !tbaa !34
  br label %307

307:                                              ; preds = %305, %301
  %308 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 4
  %309 = load ptr, ptr %308, align 8, !tbaa !105
  %310 = getelementptr inbounds %struct.MaskSpline, ptr %309, i64 0, i32 5
  %311 = load i32, ptr %310, align 4, !tbaa !46
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %380

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.MaskSpline, ptr %309, i64 0, i32 6
  %315 = load ptr, ptr %314, align 8, !tbaa !51
  %316 = load ptr, ptr %294, align 8, !tbaa !135
  %317 = getelementptr inbounds %struct.MaskSpline, ptr %316, i64 0, i32 6
  %318 = load ptr, ptr %317, align 8, !tbaa !51
  %319 = zext nneg i32 %311 to i64
  br label %320

320:                                              ; preds = %313, %320
  %321 = phi i64 [ 0, %313 ], [ %328, %320 ]
  %322 = getelementptr inbounds %struct.MaskSplinePoint, ptr %318, i64 %321, i32 0, i32 2
  %323 = load float, ptr %322, align 8, !tbaa !127
  %324 = fadd float %293, %323
  %325 = getelementptr inbounds %struct.MaskSplinePoint, ptr %315, i64 %321, i32 0, i32 2
  %326 = fcmp olt float %324, 0.000000e+00
  %327 = select i1 %326, float 0.000000e+00, float %324
  store float %327, ptr %325, align 8, !tbaa !127
  %328 = add nuw nsw i64 %321, 1
  %329 = icmp eq i64 %328, %319
  br i1 %329, label %380, label %320, !llvm.loop !136

330:                                              ; preds = %262
  %331 = select i1 %284, float %276, float 0.000000e+00
  %332 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 5
  %333 = load ptr, ptr %332, align 8, !tbaa !135
  %334 = icmp eq ptr %333, null
  br i1 %334, label %376, label %335

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 4
  %337 = load ptr, ptr %336, align 8, !tbaa !105
  %338 = getelementptr inbounds %struct.MaskSpline, ptr %337, i64 0, i32 5
  %339 = load i32, ptr %338, align 4, !tbaa !46
  %340 = icmp sgt i32 %339, 0
  br i1 %340, label %341, label %374

341:                                              ; preds = %335, %367
  %342 = phi i64 [ %368, %367 ], [ 0, %335 ]
  %343 = phi ptr [ %369, %367 ], [ %337, %335 ]
  %344 = getelementptr inbounds %struct.MaskSpline, ptr %343, i64 0, i32 6
  %345 = load ptr, ptr %344, align 8, !tbaa !51
  %346 = getelementptr inbounds %struct.MaskSplinePoint, ptr %345, i64 %342
  %347 = load ptr, ptr %332, align 8, !tbaa !135
  %348 = getelementptr inbounds %struct.MaskSpline, ptr %347, i64 0, i32 6
  %349 = load ptr, ptr %348, align 8, !tbaa !51
  %350 = getelementptr inbounds %struct.MaskSplinePoint, ptr %349, i64 %342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %346, ptr noundef nonnull align 8 dereferenceable(72) %350, i64 72, i1 false), !tbaa.struct !137
  %351 = getelementptr inbounds %struct.MaskSplinePoint, ptr %345, i64 %342, i32 2
  %352 = load i32, ptr %351, align 4, !tbaa !59
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %367

354:                                              ; preds = %341
  %355 = getelementptr inbounds %struct.MaskSplinePoint, ptr %345, i64 %342, i32 3
  %356 = getelementptr inbounds %struct.MaskSplinePoint, ptr %349, i64 %342, i32 3
  br label %357

357:                                              ; preds = %357, %354
  %358 = phi i64 [ 0, %354 ], [ %363, %357 ]
  %359 = load ptr, ptr %355, align 8, !tbaa !61
  %360 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %359, i64 %358
  %361 = load ptr, ptr %356, align 8, !tbaa !61
  %362 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %361, i64 %358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %360, ptr noundef nonnull align 4 dereferenceable(12) %362, i64 12, i1 false), !tbaa.struct !139
  %363 = add nuw nsw i64 %358, 1
  %364 = load i32, ptr %351, align 4, !tbaa !59
  %365 = sext i32 %364 to i64
  %366 = icmp slt i64 %363, %365
  br i1 %366, label %357, label %367, !llvm.loop !140

367:                                              ; preds = %357, %341
  %368 = add nuw nsw i64 %342, 1
  %369 = load ptr, ptr %336, align 8, !tbaa !105
  %370 = getelementptr inbounds %struct.MaskSpline, ptr %369, i64 0, i32 5
  %371 = load i32, ptr %370, align 4, !tbaa !46
  %372 = sext i32 %371 to i64
  %373 = icmp slt i64 %368, %372
  br i1 %373, label %341, label %374, !llvm.loop !141

374:                                              ; preds = %367, %335
  %375 = load ptr, ptr %332, align 8, !tbaa !135
  call void @BKE_mask_spline_free(ptr noundef %375) #8
  store ptr null, ptr %332, align 8, !tbaa !135
  br label %376

376:                                              ; preds = %374, %330
  %377 = fcmp une float %259, 0.000000e+00
  br i1 %377, label %378, label %380

378:                                              ; preds = %376
  %379 = fmul float %259, %331
  store float %379, ptr %260, align 4, !tbaa !34
  br label %380

380:                                              ; preds = %320, %307, %376, %378
  %381 = load float, ptr %10, align 4, !tbaa !34
  store float %381, ptr %164, align 4, !tbaa !34
  %382 = load float, ptr %170, align 4, !tbaa !34
  store float %382, ptr %167, align 4, !tbaa !34
  br label %383

383:                                              ; preds = %380, %258
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %424

384:                                              ; preds = %43
  %385 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 5
  %386 = load ptr, ptr %385, align 8, !tbaa !135
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %392

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 4
  %390 = load ptr, ptr %389, align 8, !tbaa !105
  %391 = call ptr @BKE_mask_spline_copy(ptr noundef %390) #8
  store ptr %391, ptr %385, align 8, !tbaa !135
  br label %392

392:                                              ; preds = %388, %384
  %393 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 4
  %394 = load ptr, ptr %393, align 8, !tbaa !105
  %395 = getelementptr inbounds %struct.MaskSpline, ptr %394, i64 0, i32 5
  %396 = load i32, ptr %395, align 4, !tbaa !46
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %424

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.MaskSpline, ptr %394, i64 0, i32 6
  %400 = load ptr, ptr %399, align 8, !tbaa !51
  %401 = zext nneg i32 %396 to i64
  br label %402

402:                                              ; preds = %398, %402
  %403 = phi i64 [ 0, %398 ], [ %422, %402 ]
  %404 = getelementptr inbounds %struct.MaskSplinePoint, ptr %400, i64 %403
  %405 = load float, ptr %404, align 4, !tbaa !34
  %406 = fadd float %61, %405
  store float %406, ptr %404, align 4, !tbaa !34
  %407 = getelementptr inbounds float, ptr %404, i64 1
  %408 = load float, ptr %407, align 4, !tbaa !34
  %409 = fadd float %62, %408
  store float %409, ptr %407, align 4, !tbaa !34
  %410 = getelementptr inbounds [3 x [3 x float]], ptr %404, i64 0, i64 1
  %411 = load float, ptr %410, align 4, !tbaa !34
  %412 = fadd float %61, %411
  store float %412, ptr %410, align 4, !tbaa !34
  %413 = getelementptr inbounds [3 x [3 x float]], ptr %404, i64 0, i64 1, i64 1
  %414 = load float, ptr %413, align 4, !tbaa !34
  %415 = fadd float %62, %414
  store float %415, ptr %413, align 4, !tbaa !34
  %416 = getelementptr inbounds [3 x [3 x float]], ptr %404, i64 0, i64 2
  %417 = load float, ptr %416, align 4, !tbaa !34
  %418 = fadd float %61, %417
  store float %418, ptr %416, align 4, !tbaa !34
  %419 = getelementptr inbounds [3 x [3 x float]], ptr %404, i64 0, i64 2, i64 1
  %420 = load float, ptr %419, align 4, !tbaa !34
  %421 = fadd float %62, %420
  store float %421, ptr %419, align 4, !tbaa !34
  %422 = add nuw nsw i64 %403, 1
  %423 = icmp eq i64 %422, %401
  br i1 %423, label %424, label %402, !llvm.loop !142

424:                                              ; preds = %402, %392, %43, %136, %383, %135
  %425 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !103
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %426) #8
  %427 = load ptr, ptr %425, align 8, !tbaa !103
  call void @DAG_id_tag_update(ptr noundef %427, i16 noundef signext 0) #8
  br label %586

428:                                              ; preds = %3, %3
  %429 = load i16, ptr %14, align 8, !tbaa !101
  %430 = icmp eq i16 %18, %429
  br i1 %430, label %431, label %506

431:                                              ; preds = %428
  %432 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %433 = load i16, ptr %432, align 2, !tbaa !131
  %434 = icmp eq i16 %433, 2
  br i1 %434, label %435, label %505

435:                                              ; preds = %431
  %436 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %437 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 1
  %438 = load i32, ptr %437, align 4, !tbaa !109
  %439 = icmp eq i32 %438, 3
  br i1 %439, label %440, label %444

440:                                              ; preds = %435
  %441 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 7
  %442 = load ptr, ptr %441, align 8, !tbaa !110
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %462

444:                                              ; preds = %435, %440
  %445 = icmp eq ptr %436, null
  br i1 %445, label %453, label %446

446:                                              ; preds = %444
  %447 = getelementptr inbounds %struct.Scene, ptr %436, i64 0, i32 20
  %448 = load ptr, ptr %447, align 8, !tbaa !143
  %449 = getelementptr inbounds %struct.ToolSettings, ptr %448, i64 0, i32 21
  %450 = load i16, ptr %449, align 8, !tbaa !162
  %451 = and i16 %450, 1
  %452 = icmp eq i16 %451, 0
  br i1 %452, label %462, label %457

453:                                              ; preds = %444
  %454 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !169
  %455 = and i16 %454, 1
  %456 = icmp eq i16 %455, 0
  br i1 %456, label %462, label %457

457:                                              ; preds = %453, %446
  %458 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 3
  %459 = load ptr, ptr %458, align 8, !tbaa !104
  %460 = getelementptr inbounds %struct.Scene, ptr %436, i64 0, i32 22, i32 5
  %461 = load i32, ptr %460, align 8, !tbaa !173
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef %459, i32 noundef %461) #8
  br label %462

462:                                              ; preds = %446, %453, %457, %440
  %463 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 17
  %464 = load i8, ptr %463, align 8, !tbaa !111
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %494, label %466

466:                                              ; preds = %462
  %467 = load ptr, ptr %15, align 8, !tbaa !106
  %468 = getelementptr inbounds [3 x [3 x float]], ptr %467, i64 0, i64 1
  %469 = load float, ptr %468, align 4, !tbaa !34
  %470 = load float, ptr %467, align 4, !tbaa !34
  %471 = fsub float %469, %470
  %472 = getelementptr inbounds [3 x [3 x float]], ptr %467, i64 0, i64 1, i64 1
  %473 = load float, ptr %472, align 4, !tbaa !34
  %474 = getelementptr inbounds float, ptr %467, i64 1
  %475 = load float, ptr %474, align 4, !tbaa !34
  %476 = fsub float %473, %475
  %477 = fmul float %476, %476
  %478 = tail call float @llvm.fmuladd.f32(float %471, float %471, float %477)
  %479 = fcmp olt float %478, 0x3E80000000000000
  br i1 %479, label %480, label %482

480:                                              ; preds = %466
  %481 = getelementptr inbounds %struct.BezTriple, ptr %467, i64 0, i32 5
  store i8 2, ptr %481, align 1, !tbaa !52
  br label %482

482:                                              ; preds = %480, %466
  %483 = getelementptr inbounds [3 x [3 x float]], ptr %467, i64 0, i64 2
  %484 = load float, ptr %483, align 4, !tbaa !34
  %485 = fsub float %469, %484
  %486 = getelementptr inbounds [3 x [3 x float]], ptr %467, i64 0, i64 2, i64 1
  %487 = load float, ptr %486, align 4, !tbaa !34
  %488 = fsub float %473, %487
  %489 = fmul float %488, %488
  %490 = tail call float @llvm.fmuladd.f32(float %485, float %485, float %489)
  %491 = fcmp olt float %490, 0x3E80000000000000
  br i1 %491, label %492, label %494

492:                                              ; preds = %482
  %493 = getelementptr inbounds %struct.BezTriple, ptr %467, i64 0, i32 6
  store i8 2, ptr %493, align 2, !tbaa !54
  br label %494

494:                                              ; preds = %482, %492, %462
  %495 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 2
  %496 = load ptr, ptr %495, align 8, !tbaa !103
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %496) #8
  %497 = load ptr, ptr %495, align 8, !tbaa !103
  tail call void @DAG_id_tag_update(ptr noundef %497, i16 noundef signext 0) #8
  %498 = load ptr, ptr %13, align 8, !tbaa !130
  %499 = getelementptr inbounds %struct.SlidePointData, ptr %498, i64 0, i32 5
  %500 = load ptr, ptr %499, align 8, !tbaa !135
  %501 = icmp eq ptr %500, null
  br i1 %501, label %503, label %502

502:                                              ; preds = %494
  tail call void @BKE_mask_spline_free(ptr noundef nonnull %500) #8
  br label %503

503:                                              ; preds = %494, %502
  %504 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %504(ptr noundef %498) #8
  br label %586

505:                                              ; preds = %431
  br i1 %430, label %586, label %506

506:                                              ; preds = %428, %505
  %507 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %508 = load i16, ptr %507, align 2, !tbaa !131
  %509 = icmp eq i16 %508, 1
  br i1 %509, label %510, label %586

510:                                              ; preds = %506, %3
  %511 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 5
  %512 = load ptr, ptr %511, align 8, !tbaa !135
  %513 = icmp eq ptr %512, null
  br i1 %513, label %553, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 4
  %516 = load ptr, ptr %515, align 8, !tbaa !105
  %517 = getelementptr inbounds %struct.MaskSpline, ptr %516, i64 0, i32 5
  %518 = load i32, ptr %517, align 4, !tbaa !46
  %519 = icmp sgt i32 %518, 0
  br i1 %519, label %520, label %575

520:                                              ; preds = %514, %546
  %521 = phi i64 [ %547, %546 ], [ 0, %514 ]
  %522 = phi ptr [ %548, %546 ], [ %516, %514 ]
  %523 = getelementptr inbounds %struct.MaskSpline, ptr %522, i64 0, i32 6
  %524 = load ptr, ptr %523, align 8, !tbaa !51
  %525 = getelementptr inbounds %struct.MaskSplinePoint, ptr %524, i64 %521
  %526 = load ptr, ptr %511, align 8, !tbaa !135
  %527 = getelementptr inbounds %struct.MaskSpline, ptr %526, i64 0, i32 6
  %528 = load ptr, ptr %527, align 8, !tbaa !51
  %529 = getelementptr inbounds %struct.MaskSplinePoint, ptr %528, i64 %521
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %525, ptr noundef nonnull align 8 dereferenceable(72) %529, i64 72, i1 false), !tbaa.struct !137
  %530 = getelementptr inbounds %struct.MaskSplinePoint, ptr %524, i64 %521, i32 2
  %531 = load i32, ptr %530, align 4, !tbaa !59
  %532 = icmp sgt i32 %531, 0
  br i1 %532, label %533, label %546

533:                                              ; preds = %520
  %534 = getelementptr inbounds %struct.MaskSplinePoint, ptr %524, i64 %521, i32 3
  %535 = getelementptr inbounds %struct.MaskSplinePoint, ptr %528, i64 %521, i32 3
  br label %536

536:                                              ; preds = %536, %533
  %537 = phi i64 [ 0, %533 ], [ %542, %536 ]
  %538 = load ptr, ptr %534, align 8, !tbaa !61
  %539 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %538, i64 %537
  %540 = load ptr, ptr %535, align 8, !tbaa !61
  %541 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %540, i64 %537
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %539, ptr noundef nonnull align 4 dereferenceable(12) %541, i64 12, i1 false), !tbaa.struct !139
  %542 = add nuw nsw i64 %537, 1
  %543 = load i32, ptr %530, align 4, !tbaa !59
  %544 = sext i32 %543 to i64
  %545 = icmp slt i64 %542, %544
  br i1 %545, label %536, label %546, !llvm.loop !140

546:                                              ; preds = %536, %520
  %547 = add nuw nsw i64 %521, 1
  %548 = load ptr, ptr %515, align 8, !tbaa !105
  %549 = getelementptr inbounds %struct.MaskSpline, ptr %548, i64 0, i32 5
  %550 = load i32, ptr %549, align 4, !tbaa !46
  %551 = sext i32 %550 to i64
  %552 = icmp slt i64 %547, %551
  br i1 %552, label %520, label %575, !llvm.loop !141

553:                                              ; preds = %510
  %554 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 1
  %555 = load i32, ptr %554, align 4, !tbaa !109
  switch i32 %555, label %566 [
    i32 3, label %556
    i32 4, label %575
  ]

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 7
  %558 = load ptr, ptr %557, align 8, !tbaa !110
  %559 = icmp eq ptr %558, null
  %560 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 24
  %561 = load float, ptr %560, align 4, !tbaa !123
  br i1 %559, label %564, label %562

562:                                              ; preds = %556
  %563 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %558, i64 0, i32 1
  store float %561, ptr %563, align 4, !tbaa !122
  br label %575

564:                                              ; preds = %556
  %565 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 0, i32 2
  store float %561, ptr %565, align 8, !tbaa !127
  br label %575

566:                                              ; preds = %553
  %567 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 18
  tail call void @copy_m3_m3(ptr noundef %16, ptr noundef nonnull %567) #8
  %568 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 19
  %569 = load i8, ptr %568, align 8, !tbaa !113
  %570 = load ptr, ptr %15, align 8, !tbaa !106
  %571 = getelementptr inbounds %struct.BezTriple, ptr %570, i64 0, i32 5
  store i8 %569, ptr %571, align 1, !tbaa !112
  %572 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 20
  %573 = load i8, ptr %572, align 1, !tbaa !115
  %574 = getelementptr inbounds %struct.BezTriple, ptr %570, i64 0, i32 6
  store i8 %573, ptr %574, align 2, !tbaa !114
  br label %575

575:                                              ; preds = %546, %514, %553, %562, %564, %566
  %576 = getelementptr inbounds %struct.SlidePointData, ptr %14, i64 0, i32 2
  %577 = load ptr, ptr %576, align 8, !tbaa !103
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %577) #8
  %578 = load ptr, ptr %576, align 8, !tbaa !103
  tail call void @DAG_id_tag_update(ptr noundef %578, i16 noundef signext 0) #8
  %579 = load ptr, ptr %13, align 8, !tbaa !130
  %580 = getelementptr inbounds %struct.SlidePointData, ptr %579, i64 0, i32 5
  %581 = load ptr, ptr %580, align 8, !tbaa !135
  %582 = icmp eq ptr %581, null
  br i1 %582, label %584, label %583

583:                                              ; preds = %575
  tail call void @BKE_mask_spline_free(ptr noundef nonnull %581) #8
  br label %584

584:                                              ; preds = %575, %583
  %585 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %585(ptr noundef %579) #8
  br label %586

586:                                              ; preds = %424, %3, %506, %505, %584, %503
  %587 = phi i32 [ 2, %584 ], [ 4, %503 ], [ 1, %505 ], [ 1, %506 ], [ 1, %3 ], [ 1, %424 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %587
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_slide_spline_curvature(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @slide_spline_curvature_invoke, ptr %4, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @slide_spline_curvature_modal, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_mask, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @slide_spline_curvature_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %137, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %14 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %15 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %9) #8
  %17 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %9, float noundef 1.900000e+01, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %136

19:                                               ; preds = %12
  %20 = call zeroext i8 @ED_mask_feather_find_nearest(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %9, float noundef 1.900000e+01, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null), !range !86
  %21 = icmp eq i8 %20, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br i1 %21, label %22, label %137

22:                                               ; preds = %19
  %23 = call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %24 = call ptr @CTX_wm_area(ptr noundef %0) #8
  %25 = call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @ED_mask_mouse_pos(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %16, ptr noundef nonnull %8) #8
  %26 = call zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %8, i32 noundef 19, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null) #8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %130, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = load ptr, ptr %6, align 8, !tbaa !38
  %33 = call ptr @BKE_mask_spline_point_next_bezt(ptr noundef %29, ptr noundef %31, ptr noundef %32) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %130, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %37 = call ptr %36(i64 noundef 264, ptr noundef nonnull @.str.86) #8
  %38 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !98
  store i16 %39, ptr %37, align 8, !tbaa !174
  %40 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 1
  store ptr %23, ptr %40, align 8, !tbaa !176
  %41 = load ptr, ptr %4, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !177
  %43 = load ptr, ptr %5, align 8, !tbaa !38
  %44 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !178
  %45 = load ptr, ptr %6, align 8, !tbaa !38
  %46 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 4
  store ptr %45, ptr %46, align 8, !tbaa !179
  %47 = load float, ptr %7, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 5
  store float %47, ptr %48, align 8, !tbaa !180
  %49 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 11
  %50 = load float, ptr %8, align 4, !tbaa !34
  store float %50, ptr %49, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %8, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 11, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 12
  call void @BKE_mask_point_segment_co(ptr noundef %43, ptr noundef %45, float noundef %47, ptr noundef nonnull %54) #8
  %55 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 13
  %56 = load ptr, ptr %6, align 8, !tbaa !38
  %57 = getelementptr inbounds [3 x [3 x float]], ptr %56, i64 0, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !34
  store float %58, ptr %55, align 4, !tbaa !34
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %56, i64 0, i64 1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 13, i64 1
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 14
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %56, i64 0, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !34
  store float %64, ptr %62, align 4, !tbaa !34
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %56, i64 0, i64 2, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 14, i64 1
  store float %66, ptr %67, align 4, !tbaa !34
  %68 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 15
  %69 = load float, ptr %33, align 4, !tbaa !34
  store float %69, ptr %68, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %33, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 15, i64 1
  store float %71, ptr %72, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 16
  %74 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !34
  store float %75, ptr %73, align 4, !tbaa !34
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 1, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 16, i64 1
  store float %77, ptr %78, align 4, !tbaa !34
  %79 = load float, ptr %7, align 4, !tbaa !34
  %80 = fcmp ugt float %79, 5.000000e-01
  %81 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 7
  %82 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 8
  %83 = select i1 %80, ptr %33, ptr %56
  %84 = select i1 %80, ptr %56, ptr %33
  store ptr %83, ptr %81, align 8, !tbaa !181
  store ptr %84, ptr %82, align 8, !tbaa !182
  %85 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 9
  %86 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %85, ptr noundef nonnull align 4 dereferenceable(72) %83, i64 72, i1 false), !tbaa.struct !137
  %87 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 10
  %88 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %37, i64 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %87, ptr noundef nonnull align 4 dereferenceable(72) %84, i64 72, i1 false), !tbaa.struct !137
  %89 = fcmp olt float %79, 5.000000e-01
  br i1 %89, label %90, label %95

90:                                               ; preds = %35
  %91 = getelementptr inbounds %struct.BezTriple, ptr %83, i64 0, i32 6
  %92 = load i8, ptr %91, align 2, !tbaa !54
  %93 = icmp ult i8 %92, 3
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  store i8 0, ptr %91, align 2, !tbaa !54
  br label %100

95:                                               ; preds = %35
  %96 = getelementptr inbounds %struct.BezTriple, ptr %83, i64 0, i32 5
  %97 = load i8, ptr %96, align 1, !tbaa !52
  %98 = icmp ult i8 %97, 3
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i8 0, ptr %96, align 1, !tbaa !52
  br label %100

100:                                              ; preds = %99, %95, %94, %90
  call void @ED_mask_select_toggle_all(ptr noundef %23, i32 noundef 2) #8
  %101 = load ptr, ptr %86, align 8, !tbaa !181
  %102 = getelementptr inbounds %struct.BezTriple, ptr %101, i64 0, i32 8
  %103 = load i8, ptr %102, align 4, !tbaa !183
  %104 = or i8 %103, 1
  store i8 %104, ptr %102, align 4, !tbaa !183
  %105 = load ptr, ptr %88, align 8, !tbaa !182
  %106 = getelementptr inbounds %struct.BezTriple, ptr %105, i64 0, i32 8
  %107 = load i8, ptr %106, align 4, !tbaa !183
  %108 = or i8 %107, 1
  store i8 %108, ptr %106, align 4, !tbaa !183
  %109 = load float, ptr %7, align 4, !tbaa !34
  %110 = fcmp olt float %109, 5.000000e-01
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.BezTriple, ptr %101, i64 0, i32 9
  %113 = load i8, ptr %112, align 1, !tbaa !184
  %114 = or i8 %113, 1
  store i8 %114, ptr %112, align 1, !tbaa !184
  %115 = getelementptr inbounds %struct.BezTriple, ptr %105, i64 0, i32 7
  br label %121

116:                                              ; preds = %100
  %117 = getelementptr inbounds %struct.BezTriple, ptr %101, i64 0, i32 7
  %118 = load i8, ptr %117, align 1, !tbaa !185
  %119 = or i8 %118, 1
  store i8 %119, ptr %117, align 1, !tbaa !185
  %120 = getelementptr inbounds %struct.BezTriple, ptr %105, i64 0, i32 9
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi ptr [ %120, %116 ], [ %115, %111 ]
  %123 = load i8, ptr %122, align 1, !tbaa !138
  %124 = or i8 %123, 1
  store i8 %124, ptr %122, align 1, !tbaa !138
  %125 = load ptr, ptr %5, align 8, !tbaa !38
  %126 = load ptr, ptr %4, align 8, !tbaa !38
  %127 = getelementptr inbounds %struct.MaskLayer, ptr %126, i64 0, i32 5
  store ptr %125, ptr %127, align 8, !tbaa !118
  %128 = load ptr, ptr %6, align 8, !tbaa !38
  %129 = getelementptr inbounds %struct.MaskLayer, ptr %126, i64 0, i32 6
  store ptr %128, ptr %129, align 8, !tbaa !119
  call void @ED_mask_select_flush_all(ptr noundef %23) #8
  br label %130

130:                                              ; preds = %22, %28, %121
  %131 = phi ptr [ %37, %121 ], [ null, %22 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %131, ptr %134, align 8, !tbaa !130
  %135 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef nonnull %10) #8
  br label %137

136:                                              ; preds = %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %137

137:                                              ; preds = %136, %130, %19, %3, %133
  %138 = phi i32 [ 1, %133 ], [ 2, %3 ], [ 8, %19 ], [ 8, %130 ], [ 8, %136 ]
  ret i32 %138
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @slide_spline_curvature_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 5
  %11 = load float, ptr %10, align 8, !tbaa !180
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !98
  switch i16 %13, label %374 [
    i16 217, label %14
    i16 216, label %14
    i16 212, label %14
    i16 215, label %14
    i16 4, label %93
    i16 1, label %332
    i16 3, label %332
    i16 218, label %362
  ]

14:                                               ; preds = %3, %3, %3, %3
  %15 = and i16 %13, -2
  %16 = icmp eq i16 %15, 216
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !131
  %20 = icmp eq i16 %19, 1
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 6
  store i8 %21, ptr %22, align 4, !tbaa !186
  br label %23

23:                                               ; preds = %14, %17
  switch i16 %13, label %93 [
    i16 212, label %24
    i16 215, label %24
  ]

24:                                               ; preds = %23, %23
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !131
  switch i16 %26, label %61 [
    i16 1, label %27
    i16 2, label %44
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !181
  %30 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 6
  store i8 0, ptr %30, align 2, !tbaa !54
  %31 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 5
  store i8 0, ptr %31, align 1, !tbaa !52
  %32 = fcmp ogt float %11, 0x3FC99999A0000000
  %33 = fcmp olt float %11, 5.000000e-01
  %34 = and i1 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = fcmp oge float %11, 5.000000e-01
  %37 = fcmp olt float %11, 0x3FE99999A0000000
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35, %27
  %40 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !182
  %42 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 6
  store i8 0, ptr %42, align 2, !tbaa !54
  %43 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 5
  store i8 0, ptr %43, align 1, !tbaa !52
  br label %61

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 9, i32 5
  %46 = load i8, ptr %45, align 1, !tbaa !187
  %47 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !181
  %49 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 5
  store i8 %46, ptr %49, align 1, !tbaa !52
  %50 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 9, i32 6
  %51 = load i8, ptr %50, align 2, !tbaa !188
  %52 = getelementptr inbounds %struct.BezTriple, ptr %48, i64 0, i32 6
  store i8 %51, ptr %52, align 2, !tbaa !54
  %53 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 10, i32 5
  %54 = load i8, ptr %53, align 1, !tbaa !189
  %55 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !182
  %57 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 0, i32 5
  store i8 %54, ptr %57, align 1, !tbaa !52
  %58 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 10, i32 6
  %59 = load i8, ptr %58, align 2, !tbaa !190
  %60 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 0, i32 6
  store i8 %59, ptr %60, align 2, !tbaa !54
  br label %61

61:                                               ; preds = %24, %44, %35, %39
  %62 = fcmp olt float %11, 5.000000e-01
  %63 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !181
  br i1 %62, label %65, label %79

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 9
  %67 = load float, ptr %66, align 4, !tbaa !34
  store float %67, ptr %64, align 4, !tbaa !34
  %68 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 9, i32 0, i64 0, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = getelementptr inbounds float, ptr %64, i64 1
  store float %69, ptr %70, align 4, !tbaa !34
  %71 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !182
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %72, i64 0, i64 2
  %74 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 10, i32 0, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  store float %75, ptr %73, align 4, !tbaa !34
  %76 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 10, i32 0, i64 2, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %72, i64 0, i64 2, i64 1
  store float %77, ptr %78, align 4, !tbaa !34
  br label %93

79:                                               ; preds = %61
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %64, i64 0, i64 2
  %81 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 9, i32 0, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !34
  store float %82, ptr %80, align 4, !tbaa !34
  %83 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 9, i32 0, i64 2, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = getelementptr inbounds [3 x [3 x float]], ptr %64, i64 0, i64 2, i64 1
  store float %84, ptr %85, align 4, !tbaa !34
  %86 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !182
  %88 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 10
  %89 = load float, ptr %88, align 4, !tbaa !34
  store float %89, ptr %87, align 4, !tbaa !34
  %90 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 10, i32 0, i64 0, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !34
  %92 = getelementptr inbounds float, ptr %87, i64 1
  store float %91, ptr %92, align 4, !tbaa !34
  br label %93

93:                                               ; preds = %23, %79, %65, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %94 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %95 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %96 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %94, ptr noundef %95, ptr noundef nonnull %96, ptr noundef nonnull %4) #8
  %97 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 11
  %98 = load float, ptr %4, align 4, !tbaa !34
  %99 = load float, ptr %97, align 4, !tbaa !34
  %100 = fsub float %98, %99
  %101 = getelementptr inbounds float, ptr %4, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !34
  %103 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 11, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = fsub float %102, %104
  %106 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 6
  %107 = load i8, ptr %106, align 4, !tbaa !186
  %108 = icmp eq i8 %107, 0
  %109 = fmul float %100, 0x3FC99999A0000000
  %110 = fmul float %105, 0x3FC99999A0000000
  %111 = select i1 %108, float %105, float %110
  %112 = select i1 %108, float %100, float %109
  %113 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 12
  %114 = load float, ptr %113, align 4, !tbaa !34
  %115 = fadd float %114, %112
  %116 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 12, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !34
  %118 = fadd float %117, %111
  store float %115, ptr %113, align 4, !tbaa !34
  store float %118, ptr %116, align 4, !tbaa !34
  store float %98, ptr %97, align 4, !tbaa !34
  store float %102, ptr %103, align 4, !tbaa !34
  %119 = fcmp olt float %11, 5.000000e-01
  br i1 %119, label %120, label %224

120:                                              ; preds = %93
  %121 = fcmp ule float %11, 0x3FC99999A0000000
  br i1 %121, label %182, label %122

122:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %123 = fadd float %11, 0xBFC99999A0000000
  %124 = fmul float %123, 5.000000e-01
  %125 = fdiv float %124, 0x3FD3333340000000
  %126 = fmul float %125, 3.000000e+00
  %127 = fmul float %125, -2.000000e+00
  %128 = fmul float %125, %127
  %129 = fmul float %125, %128
  %130 = call float @llvm.fmuladd.f32(float %126, float %125, float %129)
  %131 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 13
  %132 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 14
  %133 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 16
  %134 = fmul float %11, %11
  %135 = fmul float %11, %134
  %136 = fsub float 1.000000e+00, %11
  %137 = fmul float %136, %136
  %138 = fmul float %136, %137
  %139 = fmul float %136, 3.000000e+00
  %140 = fmul float %134, %139
  %141 = fdiv float 1.000000e+00, %140
  %142 = fmul float %137, 3.000000e+00
  %143 = fmul float %11, %142
  %144 = load float, ptr %131, align 4, !tbaa !34
  %145 = load float, ptr %132, align 4, !tbaa !34
  %146 = fmul float %143, %145
  %147 = call float @llvm.fmuladd.f32(float %138, float %144, float %146)
  %148 = load float, ptr %133, align 4, !tbaa !34
  %149 = call float @llvm.fmuladd.f32(float %135, float %148, float %147)
  %150 = fsub float %149, %115
  %151 = fneg float %150
  %152 = fmul float %141, %151
  store float %152, ptr %5, align 4, !tbaa !34
  %153 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 13, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !34
  %155 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 14, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !34
  %157 = fmul float %143, %156
  %158 = call float @llvm.fmuladd.f32(float %138, float %154, float %157)
  %159 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 16, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !34
  %161 = call float @llvm.fmuladd.f32(float %135, float %160, float %158)
  %162 = fsub float %161, %118
  %163 = fneg float %162
  %164 = fmul float %141, %163
  %165 = getelementptr inbounds float, ptr %5, i64 1
  store float %164, ptr %165, align 4, !tbaa !34
  %166 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 15
  %167 = load float, ptr %166, align 4, !tbaa !34
  %168 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 15, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !34
  call void @interp_v2_v2v2(ptr noundef nonnull %166, ptr noundef nonnull %166, ptr noundef nonnull %5, float noundef %130) #8
  %170 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 8
  %171 = load ptr, ptr %170, align 8, !tbaa !182
  %172 = load float, ptr %166, align 4, !tbaa !34
  store float %172, ptr %171, align 4, !tbaa !34
  %173 = load float, ptr %168, align 4, !tbaa !34
  %174 = getelementptr inbounds float, ptr %171, i64 1
  store float %173, ptr %174, align 4, !tbaa !34
  %175 = fcmp ogt float %130, 0.000000e+00
  br i1 %175, label %176, label %181

176:                                              ; preds = %122
  %177 = getelementptr inbounds %struct.BezTriple, ptr %171, i64 0, i32 5
  %178 = load i8, ptr %177, align 1, !tbaa !52
  %179 = icmp ult i8 %178, 3
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i8 0, ptr %177, align 1, !tbaa !52
  br label %181

181:                                              ; preds = %176, %180, %122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %182

182:                                              ; preds = %181, %120
  %183 = phi float [ undef, %120 ], [ %169, %181 ]
  %184 = phi float [ undef, %120 ], [ %167, %181 ]
  %185 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 13
  %186 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 15
  %187 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 16
  %188 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 7
  %189 = load ptr, ptr %188, align 8, !tbaa !181
  %190 = getelementptr inbounds [3 x [3 x float]], ptr %189, i64 0, i64 2
  %191 = fmul float %11, %11
  %192 = fmul float %11, %191
  %193 = fsub float 1.000000e+00, %11
  %194 = fmul float %193, %193
  %195 = fmul float %193, %194
  %196 = fmul float %194, 3.000000e+00
  %197 = fmul float %11, %196
  %198 = fdiv float 1.000000e+00, %197
  %199 = fmul float %193, 3.000000e+00
  %200 = fmul float %191, %199
  %201 = load float, ptr %185, align 4, !tbaa !34
  %202 = load float, ptr %186, align 4, !tbaa !34
  %203 = fmul float %200, %202
  %204 = call float @llvm.fmuladd.f32(float %195, float %201, float %203)
  %205 = load float, ptr %187, align 4, !tbaa !34
  %206 = call float @llvm.fmuladd.f32(float %192, float %205, float %204)
  %207 = fsub float %206, %115
  %208 = fneg float %207
  %209 = fmul float %198, %208
  store float %209, ptr %190, align 4, !tbaa !34
  %210 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 13, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !34
  %212 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 15, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !34
  %214 = fmul float %200, %213
  %215 = call float @llvm.fmuladd.f32(float %195, float %211, float %214)
  %216 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 16, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !34
  %218 = call float @llvm.fmuladd.f32(float %192, float %217, float %215)
  %219 = fsub float %218, %118
  %220 = fneg float %219
  %221 = fmul float %198, %220
  %222 = getelementptr inbounds [3 x [3 x float]], ptr %189, i64 0, i64 2, i64 1
  store float %221, ptr %222, align 4, !tbaa !34
  br i1 %121, label %328, label %223

223:                                              ; preds = %182
  store float %184, ptr %186, align 4, !tbaa !34
  store float %183, ptr %212, align 4, !tbaa !34
  br label %328

224:                                              ; preds = %93
  %225 = fcmp uge float %11, 0x3FE99999A0000000
  br i1 %225, label %287, label %226

226:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %227 = fsub float 1.000000e+00, %11
  %228 = fadd float %227, 0xBFC99999A0000000
  %229 = fmul float %228, 5.000000e-01
  %230 = fdiv float %229, 0x3FD3333340000000
  %231 = fmul float %230, 3.000000e+00
  %232 = fmul float %230, -2.000000e+00
  %233 = fmul float %230, %232
  %234 = fmul float %230, %233
  %235 = call float @llvm.fmuladd.f32(float %231, float %230, float %234)
  %236 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 13
  %237 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 15
  %238 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 16
  %239 = fmul float %11, %11
  %240 = fmul float %11, %239
  %241 = fmul float %227, %227
  %242 = fmul float %227, %241
  %243 = fmul float %241, 3.000000e+00
  %244 = fmul float %11, %243
  %245 = fdiv float 1.000000e+00, %244
  %246 = fmul float %227, 3.000000e+00
  %247 = fmul float %239, %246
  %248 = load float, ptr %236, align 4, !tbaa !34
  %249 = load float, ptr %237, align 4, !tbaa !34
  %250 = fmul float %247, %249
  %251 = call float @llvm.fmuladd.f32(float %242, float %248, float %250)
  %252 = load float, ptr %238, align 4, !tbaa !34
  %253 = call float @llvm.fmuladd.f32(float %240, float %252, float %251)
  %254 = fsub float %253, %115
  %255 = fneg float %254
  %256 = fmul float %245, %255
  store float %256, ptr %6, align 4, !tbaa !34
  %257 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 13, i64 1
  %258 = load float, ptr %257, align 4, !tbaa !34
  %259 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 15, i64 1
  %260 = load float, ptr %259, align 4, !tbaa !34
  %261 = fmul float %247, %260
  %262 = call float @llvm.fmuladd.f32(float %242, float %258, float %261)
  %263 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 16, i64 1
  %264 = load float, ptr %263, align 4, !tbaa !34
  %265 = call float @llvm.fmuladd.f32(float %240, float %264, float %262)
  %266 = fsub float %265, %118
  %267 = fneg float %266
  %268 = fmul float %245, %267
  %269 = getelementptr inbounds float, ptr %6, i64 1
  store float %268, ptr %269, align 4, !tbaa !34
  %270 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 14
  %271 = load float, ptr %270, align 4, !tbaa !34
  %272 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 14, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !34
  call void @interp_v2_v2v2(ptr noundef nonnull %270, ptr noundef nonnull %270, ptr noundef nonnull %6, float noundef %235) #8
  %274 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 8
  %275 = load ptr, ptr %274, align 8, !tbaa !182
  %276 = getelementptr inbounds [3 x [3 x float]], ptr %275, i64 0, i64 2
  %277 = load float, ptr %270, align 4, !tbaa !34
  store float %277, ptr %276, align 4, !tbaa !34
  %278 = load float, ptr %272, align 4, !tbaa !34
  %279 = getelementptr inbounds [3 x [3 x float]], ptr %275, i64 0, i64 2, i64 1
  store float %278, ptr %279, align 4, !tbaa !34
  %280 = fcmp ogt float %235, 0.000000e+00
  br i1 %280, label %281, label %286

281:                                              ; preds = %226
  %282 = getelementptr inbounds %struct.BezTriple, ptr %275, i64 0, i32 6
  %283 = load i8, ptr %282, align 2, !tbaa !54
  %284 = icmp ult i8 %283, 3
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  store i8 0, ptr %282, align 2, !tbaa !54
  br label %286

286:                                              ; preds = %281, %285, %226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %287

287:                                              ; preds = %286, %224
  %288 = phi float [ undef, %224 ], [ %273, %286 ]
  %289 = phi float [ undef, %224 ], [ %271, %286 ]
  %290 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 13
  %291 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 14
  %292 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 16
  %293 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 7
  %294 = load ptr, ptr %293, align 8, !tbaa !181
  %295 = fmul float %11, %11
  %296 = fmul float %11, %295
  %297 = fsub float 1.000000e+00, %11
  %298 = fmul float %297, %297
  %299 = fmul float %297, %298
  %300 = fmul float %297, 3.000000e+00
  %301 = fmul float %295, %300
  %302 = fdiv float 1.000000e+00, %301
  %303 = fmul float %298, 3.000000e+00
  %304 = fmul float %11, %303
  %305 = load float, ptr %290, align 4, !tbaa !34
  %306 = load float, ptr %291, align 4, !tbaa !34
  %307 = fmul float %304, %306
  %308 = call float @llvm.fmuladd.f32(float %299, float %305, float %307)
  %309 = load float, ptr %292, align 4, !tbaa !34
  %310 = call float @llvm.fmuladd.f32(float %296, float %309, float %308)
  %311 = fsub float %310, %115
  %312 = fneg float %311
  %313 = fmul float %302, %312
  store float %313, ptr %294, align 4, !tbaa !34
  %314 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 13, i64 1
  %315 = load float, ptr %314, align 4, !tbaa !34
  %316 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 14, i64 1
  %317 = load float, ptr %316, align 4, !tbaa !34
  %318 = fmul float %304, %317
  %319 = call float @llvm.fmuladd.f32(float %299, float %315, float %318)
  %320 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 16, i64 1
  %321 = load float, ptr %320, align 4, !tbaa !34
  %322 = call float @llvm.fmuladd.f32(float %296, float %321, float %319)
  %323 = fsub float %322, %118
  %324 = fneg float %323
  %325 = fmul float %302, %324
  %326 = getelementptr inbounds float, ptr %294, i64 1
  store float %325, ptr %326, align 4, !tbaa !34
  br i1 %225, label %328, label %327

327:                                              ; preds = %287
  store float %289, ptr %291, align 4, !tbaa !34
  store float %288, ptr %316, align 4, !tbaa !34
  br label %328

328:                                              ; preds = %287, %327, %182, %223
  %329 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !176
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %330) #8
  %331 = load ptr, ptr %329, align 8, !tbaa !176
  call void @DAG_id_tag_update(ptr noundef %331, i16 noundef signext 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %374

332:                                              ; preds = %3, %3
  %333 = load i16, ptr %9, align 8, !tbaa !174
  %334 = icmp eq i16 %13, %333
  br i1 %334, label %335, label %374

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %337 = load i16, ptr %336, align 2, !tbaa !131
  %338 = icmp eq i16 %337, 2
  br i1 %338, label %339, label %374

339:                                              ; preds = %335
  %340 = icmp eq ptr %7, null
  br i1 %340, label %348, label %341

341:                                              ; preds = %339
  %342 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %343 = load ptr, ptr %342, align 8, !tbaa !143
  %344 = getelementptr inbounds %struct.ToolSettings, ptr %343, i64 0, i32 21
  %345 = load i16, ptr %344, align 8, !tbaa !162
  %346 = and i16 %345, 1
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %357, label %352

348:                                              ; preds = %339
  %349 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !169
  %350 = and i16 %349, 1
  %351 = icmp eq i16 %350, 0
  br i1 %351, label %357, label %352

352:                                              ; preds = %348, %341
  %353 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !177
  %355 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %356 = load i32, ptr %355, align 8, !tbaa !173
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef %354, i32 noundef %356) #8
  br label %357

357:                                              ; preds = %352, %348, %341
  %358 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !176
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %359) #8
  %360 = load ptr, ptr %358, align 8, !tbaa !176
  tail call void @DAG_id_tag_update(ptr noundef %360, i16 noundef signext 0) #8
  %361 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %361(ptr noundef nonnull %9) #8
  br label %374

362:                                              ; preds = %3
  %363 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 7
  %364 = load ptr, ptr %363, align 8, !tbaa !181
  %365 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %364, ptr noundef nonnull align 8 dereferenceable(72) %365, i64 72, i1 false), !tbaa.struct !137
  %366 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 8
  %367 = load ptr, ptr %366, align 8, !tbaa !182
  %368 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %367, ptr noundef nonnull align 8 dereferenceable(72) %368, i64 72, i1 false), !tbaa.struct !137
  %369 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %9, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !176
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %370) #8
  %371 = load ptr, ptr %369, align 8, !tbaa !176
  tail call void @DAG_id_tag_update(ptr noundef %371, i16 noundef signext 0) #8
  %372 = load ptr, ptr %8, align 8, !tbaa !130
  %373 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %373(ptr noundef %372) #8
  br label %374

374:                                              ; preds = %328, %3, %335, %332, %362, %357
  %375 = phi i32 [ 2, %362 ], [ 4, %357 ], [ 1, %332 ], [ 1, %335 ], [ 1, %3 ], [ 1, %328 ]
  ret i32 %375
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_cyclic_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cyclic_toggle_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cyclic_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2, %28
  %8 = phi ptr [ %29, %28 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 13
  %10 = load i8, ptr %9, align 1, !tbaa !40
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13, %25
  %18 = phi ptr [ %26, %25 ], [ %15, %13 ]
  %19 = tail call zeroext i8 @ED_mask_spline_select_check(ptr noundef nonnull %18) #8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !94
  %24 = xor i16 %23, 2
  store i16 %24, ptr %22, align 8, !tbaa !94
  br label %25

25:                                               ; preds = %17, %21
  %26 = load ptr, ptr %18, align 8, !tbaa !38
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !191

28:                                               ; preds = %25, %13, %7
  %29 = load ptr, ptr %8, align 8, !tbaa !38
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !192

31:                                               ; preds = %28, %2
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %3) #8
  ret i32 4
}

declare i32 @ED_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_exec, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !74
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %191, label %8

8:                                                ; preds = %2, %181
  %9 = phi ptr [ %183, %181 ], [ %6, %2 ]
  %10 = phi i8 [ %182, %181 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 13
  %12 = load i8, ptr %11, align 1, !tbaa !40
  %13 = and i8 %12, 3
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %181

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !193
  %18 = icmp eq ptr %17, null
  br i1 %18, label %176, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 6
  %21 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 6
  %22 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 5
  br label %23

23:                                               ; preds = %19, %173
  %24 = phi ptr [ %17, %19 ], [ %28, %173 ]
  %25 = phi i32 [ 0, %19 ], [ %174, %173 ]
  %26 = getelementptr inbounds %struct.MaskSpline, ptr %24, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = load ptr, ptr %24, align 8, !tbaa !194
  %29 = icmp sgt i32 %27, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.MaskSpline, ptr %24, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  %33 = zext nneg i32 %27 to i64
  br label %34

34:                                               ; preds = %30, %34
  %35 = phi i64 [ 0, %30 ], [ %50, %34 ]
  %36 = phi i32 [ 0, %30 ], [ %49, %34 ]
  %37 = getelementptr inbounds %struct.MaskSplinePoint, ptr %32, i64 %35
  %38 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 7
  %39 = load i8, ptr %38, align 1, !tbaa !116
  %40 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 8
  %41 = load i8, ptr %40, align 4, !tbaa !195
  %42 = or i8 %41, %39
  %43 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 9
  %44 = load i8, ptr %43, align 1, !tbaa !117
  %45 = or i8 %42, %44
  %46 = and i8 %45, 1
  %47 = xor i8 %46, 1
  %48 = zext nneg i8 %47 to i32
  %49 = add i32 %36, %48
  %50 = add nuw nsw i64 %35, 1
  %51 = icmp eq i64 %50, %33
  br i1 %51, label %52, label %34, !llvm.loop !196

52:                                               ; preds = %34, %23
  %53 = phi i32 [ 0, %23 ], [ %49, %34 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  tail call void @BLI_remlink(ptr noundef nonnull %16, ptr noundef nonnull %24) #8
  tail call void @BKE_mask_spline_free(ptr noundef nonnull %24) #8
  %56 = load ptr, ptr %22, align 8, !tbaa !118
  %57 = icmp eq ptr %24, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  br label %59

59:                                               ; preds = %58, %55
  tail call void @BKE_mask_layer_shape_changed_remove(ptr noundef nonnull %9, i32 noundef %25, i32 noundef %27) #8
  br label %173

60:                                               ; preds = %52
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %62 = sext i32 %53 to i64
  %63 = mul nsw i64 %62, 272
  %64 = tail call ptr %61(i64 noundef %63, ptr noundef nonnull @.str.87) #8
  %65 = icmp sgt i32 %27, 0
  br i1 %65, label %66, label %167

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.MaskSpline, ptr %24, i64 0, i32 6
  %68 = zext nneg i32 %27 to i64
  br label %69

69:                                               ; preds = %66, %163
  %70 = phi i64 [ 0, %66 ], [ %165, %163 ]
  %71 = phi i32 [ 0, %66 ], [ %164, %163 ]
  %72 = load ptr, ptr %67, align 8, !tbaa !51
  %73 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %70
  %74 = getelementptr inbounds %struct.BezTriple, ptr %73, i64 0, i32 7
  %75 = load i8, ptr %74, align 1, !tbaa !116
  %76 = getelementptr inbounds %struct.BezTriple, ptr %73, i64 0, i32 8
  %77 = load i8, ptr %76, align 4, !tbaa !195
  %78 = or i8 %77, %75
  %79 = getelementptr inbounds %struct.BezTriple, ptr %73, i64 0, i32 9
  %80 = load i8, ptr %79, align 1, !tbaa !117
  %81 = or i8 %78, %80
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %155

84:                                               ; preds = %69
  %85 = load ptr, ptr %21, align 8, !tbaa !119
  %86 = icmp eq ptr %73, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = sext i32 %71 to i64
  %89 = getelementptr inbounds %struct.MaskSplinePoint, ptr %64, i64 %88
  store ptr %89, ptr %21, align 8, !tbaa !119
  br label %90

90:                                               ; preds = %87, %84
  %91 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %70, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !59
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %151, label %94

94:                                               ; preds = %90
  %95 = icmp sgt i32 %92, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %70, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !61
  %99 = zext nneg i32 %92 to i64
  br label %100

100:                                              ; preds = %96, %100
  %101 = phi i64 [ 0, %96 ], [ %108, %100 ]
  %102 = phi i32 [ 0, %96 ], [ %107, %100 ]
  %103 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %98, i64 %101, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !197
  %105 = and i32 %104, 1
  %106 = xor i32 %105, 1
  %107 = add i32 %106, %102
  %108 = add nuw nsw i64 %101, 1
  %109 = icmp eq i64 %108, %99
  br i1 %109, label %110, label %100, !llvm.loop !198

110:                                              ; preds = %100, %94
  %111 = phi i32 [ 0, %94 ], [ %107, %100 ]
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %115 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %70, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !61
  tail call void %114(ptr noundef %116) #8
  store ptr null, ptr %115, align 8, !tbaa !61
  br label %149

117:                                              ; preds = %110
  %118 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %119 = sext i32 %111 to i64
  %120 = mul nsw i64 %119, 12
  %121 = tail call ptr %118(i64 noundef %120, ptr noundef nonnull @.str.88) #8
  %122 = load i32, ptr %91, align 4, !tbaa !59
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %70, i32 3
  br label %126

126:                                              ; preds = %124, %139
  %127 = phi i64 [ 0, %124 ], [ %141, %139 ]
  %128 = phi i32 [ 0, %124 ], [ %140, %139 ]
  %129 = load ptr, ptr %125, align 8, !tbaa !61
  %130 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %129, i64 %127, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !197
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %129, i64 %127
  %136 = add nsw i32 %128, 1
  %137 = sext i32 %128 to i64
  %138 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %121, i64 %137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %138, ptr noundef nonnull align 4 dereferenceable(12) %135, i64 12, i1 false), !tbaa.struct !139
  br label %139

139:                                              ; preds = %134, %126
  %140 = phi i32 [ %136, %134 ], [ %128, %126 ]
  %141 = add nuw nsw i64 %127, 1
  %142 = load i32, ptr %91, align 4, !tbaa !59
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %141, %143
  br i1 %144, label %126, label %145, !llvm.loop !199

145:                                              ; preds = %139, %117
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %147 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %70, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !61
  tail call void %146(ptr noundef %148) #8
  store ptr %121, ptr %147, align 8, !tbaa !61
  br label %149

149:                                              ; preds = %145, %113
  %150 = phi i32 [ %111, %145 ], [ 0, %113 ]
  store i32 %150, ptr %91, align 4, !tbaa !59
  br label %151

151:                                              ; preds = %90, %149
  %152 = sext i32 %71 to i64
  %153 = getelementptr inbounds %struct.MaskSplinePoint, ptr %64, i64 %152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %153, ptr noundef nonnull align 8 dereferenceable(272) %73, i64 272, i1 false), !tbaa.struct !200
  %154 = add nsw i32 %71, 1
  br label %163

155:                                              ; preds = %69
  %156 = load ptr, ptr %20, align 8, !tbaa !119
  %157 = icmp eq ptr %73, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store ptr null, ptr %20, align 8, !tbaa !119
  br label %159

159:                                              ; preds = %158, %155
  tail call void @BKE_mask_point_free(ptr noundef %73) #8
  %160 = load i32, ptr %26, align 4, !tbaa !46
  %161 = add nsw i32 %160, -1
  store i32 %161, ptr %26, align 4, !tbaa !46
  %162 = add nsw i32 %71, %25
  tail call void @BKE_mask_layer_shape_changed_remove(ptr noundef nonnull %9, i32 noundef %162, i32 noundef 1) #8
  br label %163

163:                                              ; preds = %159, %151
  %164 = phi i32 [ %71, %159 ], [ %154, %151 ]
  %165 = add nuw nsw i64 %70, 1
  %166 = icmp eq i64 %165, %68
  br i1 %166, label %167, label %69, !llvm.loop !201

167:                                              ; preds = %163, %60
  %168 = load i32, ptr %26, align 4, !tbaa !46
  %169 = add nsw i32 %168, %25
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %171 = getelementptr inbounds %struct.MaskSpline, ptr %24, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !51
  tail call void %170(ptr noundef %172) #8
  store ptr %64, ptr %171, align 8, !tbaa !51
  tail call void @ED_mask_select_flush_all(ptr noundef %4) #8
  br label %173

173:                                              ; preds = %167, %59
  %174 = phi i32 [ %25, %59 ], [ %169, %167 ]
  %175 = icmp eq ptr %28, null
  br i1 %175, label %176, label %23, !llvm.loop !202

176:                                              ; preds = %173, %15
  %177 = phi i8 [ %10, %15 ], [ 1, %173 ]
  %178 = load ptr, ptr %16, align 8, !tbaa !203
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  tail call void @BKE_mask_layer_free_shapes(ptr noundef nonnull %9) #8
  br label %181

181:                                              ; preds = %176, %180, %8
  %182 = phi i8 [ %10, %8 ], [ %177, %180 ], [ %177, %176 ]
  %183 = load ptr, ptr %9, align 8, !tbaa !38
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %8, !llvm.loop !204

185:                                              ; preds = %181
  %186 = icmp eq i8 %182, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %189 = load i32, ptr %188, align 8, !tbaa !173
  %190 = sitofp i32 %189 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %190) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #8
  br label %191

191:                                              ; preds = %2, %185, %187
  %192 = phi i32 [ 4, %187 ], [ 2, %185 ], [ 2, %2 ]
  ret i32 %192
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_switch_direction(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_switch_direction_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_switch_direction_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %3, null
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  br label %12

12:                                               ; preds = %8, %52
  %13 = phi ptr [ %6, %8 ], [ %54, %52 ]
  %14 = phi i8 [ 0, %8 ], [ %53, %52 ]
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 13
  %16 = load i8, ptr %15, align 1, !tbaa !40
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19, %30
  %24 = phi ptr [ %33, %30 ], [ %21, %19 ]
  %25 = phi i8 [ %32, %30 ], [ 0, %19 ]
  %26 = phi i8 [ %31, %30 ], [ %14, %19 ]
  %27 = tail call zeroext i8 @ED_mask_spline_select_check(ptr noundef nonnull %24) #8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void @BKE_mask_spline_direction_switch(ptr noundef nonnull %13, ptr noundef nonnull %24) #8
  br label %30

30:                                               ; preds = %23, %29
  %31 = phi i8 [ 1, %29 ], [ %26, %23 ]
  %32 = phi i8 [ 1, %29 ], [ %25, %23 ]
  %33 = load ptr, ptr %24, align 8, !tbaa !38
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23, !llvm.loop !205

35:                                               ; preds = %30, %19
  %36 = phi i8 [ %14, %19 ], [ %31, %30 ]
  %37 = phi i8 [ 0, %19 ], [ %32, %30 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  br i1 %9, label %46, label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %10, align 8, !tbaa !143
  %42 = getelementptr inbounds %struct.ToolSettings, ptr %41, i64 0, i32 21
  %43 = load i16, ptr %42, align 8, !tbaa !162
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %52, label %50

46:                                               ; preds = %39
  %47 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !169
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46, %40
  %51 = load i32, ptr %11, align 8, !tbaa !173
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef nonnull %13, i32 noundef %51) #8
  br label %52

52:                                               ; preds = %35, %50, %46, %40, %12
  %53 = phi i8 [ %14, %12 ], [ %36, %40 ], [ %36, %46 ], [ %36, %50 ], [ %36, %35 ]
  %54 = load ptr, ptr %13, align 8, !tbaa !38
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %12, !llvm.loop !206

56:                                               ; preds = %52
  %57 = icmp eq i8 %53, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !173
  %61 = sitofp i32 %60 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %61) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %4) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #8
  br label %62

62:                                               ; preds = %2, %56, %58
  %63 = phi i32 [ 4, %58 ], [ 2, %56 ], [ 2, %2 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_normals_make_consistent(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_normals_make_consistent_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_normals_make_consistent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %88, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %3, null
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  br label %12

12:                                               ; preds = %8, %78
  %13 = phi ptr [ %6, %8 ], [ %80, %78 ]
  %14 = phi i8 [ 0, %8 ], [ %79, %78 ]
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 13
  %16 = load i8, ptr %15, align 1, !tbaa !40
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %61, label %28

23:                                               ; preds = %54, %28
  %24 = phi i8 [ %31, %28 ], [ %55, %54 ]
  %25 = phi i8 [ %30, %28 ], [ %56, %54 ]
  %26 = load ptr, ptr %29, align 8, !tbaa !38
  %27 = icmp eq ptr %26, null
  br i1 %27, label %61, label %28, !llvm.loop !207

28:                                               ; preds = %19, %23
  %29 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %30 = phi i8 [ %25, %23 ], [ 0, %19 ]
  %31 = phi i8 [ %24, %23 ], [ %14, %19 ]
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !46
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %23

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 6
  br label %37

37:                                               ; preds = %35, %54
  %38 = phi i64 [ 0, %35 ], [ %57, %54 ]
  %39 = phi i8 [ %30, %35 ], [ %56, %54 ]
  %40 = phi i8 [ %31, %35 ], [ %55, %54 ]
  %41 = load ptr, ptr %36, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.MaskSplinePoint, ptr %41, i64 %38
  %43 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 7
  %44 = load i8, ptr %43, align 1, !tbaa !116
  %45 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !195
  %47 = or i8 %46, %44
  %48 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 9
  %49 = load i8, ptr %48, align 1, !tbaa !117
  %50 = or i8 %47, %49
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  tail call void @BKE_mask_calc_handle_point_auto(ptr noundef nonnull %29, ptr noundef %42, i8 noundef zeroext 0) #8
  br label %54

54:                                               ; preds = %53, %37
  %55 = phi i8 [ 1, %53 ], [ %40, %37 ]
  %56 = phi i8 [ 1, %53 ], [ %39, %37 ]
  %57 = add nuw nsw i64 %38, 1
  %58 = load i32, ptr %32, align 4, !tbaa !46
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %37, label %23, !llvm.loop !208

61:                                               ; preds = %23, %19
  %62 = phi i8 [ %14, %19 ], [ %24, %23 ]
  %63 = phi i8 [ 0, %19 ], [ %25, %23 ]
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  br i1 %9, label %72, label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr %10, align 8, !tbaa !143
  %68 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 21
  %69 = load i16, ptr %68, align 8, !tbaa !162
  %70 = and i16 %69, 1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %78, label %76

72:                                               ; preds = %65
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !169
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72, %66
  %77 = load i32, ptr %11, align 8, !tbaa !173
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef nonnull %13, i32 noundef %77) #8
  br label %78

78:                                               ; preds = %61, %76, %72, %66, %12
  %79 = phi i8 [ %14, %12 ], [ %62, %66 ], [ %62, %72 ], [ %62, %76 ], [ %62, %61 ]
  %80 = load ptr, ptr %13, align 8, !tbaa !38
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %12, !llvm.loop !209

82:                                               ; preds = %78
  %83 = icmp eq i8 %79, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !173
  %87 = sitofp i32 %86 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %87) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %4) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #8
  br label %88

88:                                               ; preds = %2, %82, %84
  %89 = phi i32 [ 4, %84 ], [ 2, %82 ], [ 2, %2 ]
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_handle_type_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_handle_type_exec, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef nonnull @MASK_OT_handle_type_set.editcurve_handle_type_items, i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !210
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_handle_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.51) #8
  %7 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %103, label %10

10:                                               ; preds = %2
  %11 = trunc i32 %6 to i8
  %12 = trunc i32 %6 to i8
  %13 = trunc i32 %6 to i8
  %14 = icmp eq i32 %6, 3
  br label %15

15:                                               ; preds = %10, %96
  %16 = phi ptr [ %8, %10 ], [ %98, %96 ]
  %17 = phi i8 [ 0, %10 ], [ %97, %96 ]
  %18 = getelementptr inbounds %struct.MaskLayer, ptr %16, i64 0, i32 13
  %19 = load i8, ptr %18, align 1, !tbaa !40
  %20 = and i8 %19, 3
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %96

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.MaskLayer, ptr %16, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = icmp eq ptr %24, null
  br i1 %25, label %96, label %30

26:                                               ; preds = %92, %30
  %27 = phi i8 [ %32, %30 ], [ %93, %92 ]
  %28 = load ptr, ptr %31, align 8, !tbaa !38
  %29 = icmp eq ptr %28, null
  br i1 %29, label %96, label %30, !llvm.loop !211

30:                                               ; preds = %22, %26
  %31 = phi ptr [ %28, %26 ], [ %24, %22 ]
  %32 = phi i8 [ %27, %26 ], [ %17, %22 ]
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %31, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !46
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %26

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.MaskSpline, ptr %31, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = zext nneg i32 %34 to i64
  br label %40

40:                                               ; preds = %36, %92
  %41 = phi i64 [ 0, %36 ], [ %94, %92 ]
  %42 = phi i8 [ %32, %36 ], [ %93, %92 ]
  %43 = getelementptr inbounds %struct.MaskSplinePoint, ptr %38, i64 %41
  %44 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 7
  %45 = load i8, ptr %44, align 1, !tbaa !185
  %46 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 8
  %47 = load i8, ptr %46, align 4, !tbaa !183
  %48 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 9
  %49 = load i8, ptr %48, align 1, !tbaa !184
  %50 = or i8 %47, %45
  %51 = or i8 %50, %49
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %92, label %54

54:                                               ; preds = %40
  %55 = and i8 %47, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 5
  store i8 %11, ptr %58, align 1, !tbaa !52
  br label %67

59:                                               ; preds = %54
  %60 = and i8 %45, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 5
  store i8 %12, ptr %63, align 1, !tbaa !52
  br label %64

64:                                               ; preds = %62, %59
  %65 = and i8 %49, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %57
  %68 = phi i8 [ %11, %57 ], [ %13, %64 ]
  %69 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 6
  store i8 %68, ptr %69, align 2, !tbaa !54
  br label %70

70:                                               ; preds = %67, %64
  br i1 %14, label %71, label %92

71:                                               ; preds = %70
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 0, i64 1
  %73 = load float, ptr %43, align 4, !tbaa !34
  %74 = load float, ptr %72, align 4, !tbaa !34
  %75 = fsub float %73, %74
  %76 = getelementptr inbounds float, ptr %43, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 0, i64 1, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = fsub float %77, %79
  %81 = getelementptr inbounds float, ptr %43, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 0, i64 1, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = fsub float %82, %84
  %86 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 0, i64 2
  %87 = fadd float %74, %75
  store float %87, ptr %86, align 4, !tbaa !34
  %88 = fadd float %79, %80
  %89 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 0, i64 2, i64 1
  store float %88, ptr %89, align 4, !tbaa !34
  %90 = fadd float %84, %85
  %91 = getelementptr inbounds [3 x [3 x float]], ptr %43, i64 0, i64 2, i64 2
  store float %90, ptr %91, align 4, !tbaa !34
  br label %92

92:                                               ; preds = %70, %71, %40
  %93 = phi i8 [ %42, %40 ], [ 1, %71 ], [ 1, %70 ]
  %94 = add nuw nsw i64 %41, 1
  %95 = icmp eq i64 %94, %39
  br i1 %95, label %26, label %40, !llvm.loop !212

96:                                               ; preds = %26, %22, %15
  %97 = phi i8 [ %17, %15 ], [ %17, %22 ], [ %27, %26 ]
  %98 = load ptr, ptr %16, align 8, !tbaa !38
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %15, !llvm.loop !213

100:                                              ; preds = %96
  %101 = icmp eq i8 %97, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %3) #8
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #8
  br label %103

103:                                              ; preds = %2, %100, %102
  %104 = phi i32 [ 4, %102 ], [ 2, %100 ], [ 2, %2 ]
  ret i32 %104
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_hide_view_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_hide_view_clear_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_hide_view_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %19, %17 ], [ %5, %2 ]
  %9 = phi i8 [ %18, %17 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 13
  %11 = load i8, ptr %10, align 1, !tbaa !40
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  tail call void @ED_mask_layer_select_set(ptr noundef nonnull %8, i8 noundef zeroext 1) #8
  %15 = load i8, ptr %10, align 1, !tbaa !40
  %16 = and i8 %15, -2
  store i8 %16, ptr %10, align 1, !tbaa !40
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i8 [ 1, %14 ], [ %9, %7 ]
  %19 = load ptr, ptr %8, align 8, !tbaa !38
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !214

21:                                               ; preds = %17
  %22 = icmp eq i8 %18, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 353828864, ptr noundef %3) #8
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #8
  br label %24

24:                                               ; preds = %2, %21, %23
  %25 = phi i32 [ 4, %23 ], [ 2, %21 ], [ 2, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_hide_view_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_hide_view_set_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_hide_view_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.60) #8
  %7 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %2
  %11 = and i32 %6, 255
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %10, %36
  %14 = phi ptr [ %8, %10 ], [ %38, %36 ]
  %15 = phi i8 [ 0, %10 ], [ %37, %36 ]
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %14, i64 0, i32 13
  %17 = load i8, ptr %16, align 1, !tbaa !40
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = tail call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %14) #8
  %22 = icmp eq i8 %21, 0
  br i1 %12, label %23, label %29

23:                                               ; preds = %20
  br i1 %22, label %36, label %24

24:                                               ; preds = %23
  tail call void @ED_mask_layer_select_set(ptr noundef nonnull %14, i8 noundef zeroext 0) #8
  %25 = load i8, ptr %16, align 1, !tbaa !40
  %26 = or i8 %25, 1
  store i8 %26, ptr %16, align 1, !tbaa !40
  %27 = tail call ptr @BKE_mask_layer_active(ptr noundef %3) #8
  %28 = icmp eq ptr %14, %27
  br i1 %28, label %35, label %36

29:                                               ; preds = %20
  br i1 %22, label %30, label %36

30:                                               ; preds = %29
  %31 = load i8, ptr %16, align 1, !tbaa !40
  %32 = or i8 %31, 1
  store i8 %32, ptr %16, align 1, !tbaa !40
  %33 = tail call ptr @BKE_mask_layer_active(ptr noundef %3) #8
  %34 = icmp eq ptr %14, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24
  tail call void @BKE_mask_layer_active_set(ptr noundef %3, ptr noundef null) #8
  br label %36

36:                                               ; preds = %35, %24, %23, %30, %29, %13
  %37 = phi i8 [ %15, %13 ], [ %15, %29 ], [ 1, %30 ], [ 1, %24 ], [ %15, %23 ], [ 1, %35 ]
  %38 = load ptr, ptr %14, align 8, !tbaa !38
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %13, !llvm.loop !215

40:                                               ; preds = %36
  %41 = icmp eq i8 %37, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 353828864, ptr noundef %3) #8
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #8
  br label %43

43:                                               ; preds = %2, %40, %42
  %44 = phi i32 [ 4, %42 ], [ 2, %40 ], [ 2, %2 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_feather_weight_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_feather_weight_clear_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_feather_weight_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %2, %53
  %9 = phi ptr [ %55, %53 ], [ %6, %2 ]
  %10 = phi i8 [ %54, %53 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 13
  %12 = load i8, ptr %11, align 1, !tbaa !40
  %13 = and i8 %12, 3
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = icmp eq ptr %17, null
  br i1 %18, label %53, label %23

19:                                               ; preds = %49, %23
  %20 = phi i8 [ %25, %23 ], [ %50, %49 ]
  %21 = load ptr, ptr %24, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23, !llvm.loop !216

23:                                               ; preds = %15, %19
  %24 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %25 = phi i8 [ %20, %19 ], [ %10, %15 ]
  %26 = getelementptr inbounds %struct.MaskSpline, ptr %24, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %19

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.MaskSpline, ptr %24, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  %32 = zext nneg i32 %27 to i64
  br label %33

33:                                               ; preds = %29, %49
  %34 = phi i64 [ 0, %29 ], [ %51, %49 ]
  %35 = phi i8 [ %25, %29 ], [ %50, %49 ]
  %36 = getelementptr inbounds %struct.MaskSplinePoint, ptr %31, i64 %34
  %37 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !116
  %39 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 8
  %40 = load i8, ptr %39, align 4, !tbaa !195
  %41 = or i8 %40, %38
  %42 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 9
  %43 = load i8, ptr %42, align 1, !tbaa !117
  %44 = or i8 %41, %43
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 2
  store float 0.000000e+00, ptr %48, align 4, !tbaa !125
  br label %49

49:                                               ; preds = %47, %33
  %50 = phi i8 [ 1, %47 ], [ %35, %33 ]
  %51 = add nuw nsw i64 %34, 1
  %52 = icmp eq i64 %51, %32
  br i1 %52, label %19, label %33, !llvm.loop !217

53:                                               ; preds = %19, %15, %8
  %54 = phi i8 [ %10, %8 ], [ %10, %15 ], [ %20, %19 ]
  %55 = load ptr, ptr %9, align 8, !tbaa !38
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %8, !llvm.loop !218

57:                                               ; preds = %53
  %58 = icmp eq i8 %54, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !173
  %62 = sitofp i32 %61 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %62) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 353828864, ptr noundef %4) #8
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #8
  br label %63

63:                                               ; preds = %2, %57, %59
  %64 = phi i32 [ 4, %59 ], [ 2, %57 ], [ 2, %2 ]
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_layer_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.70, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.72, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_layer_move_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @mask_layer_move_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.73, ptr noundef nonnull @MASK_OT_layer_move.direction_items, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_layer_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %6) #8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.73) #8
  %11 = icmp eq ptr %7, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  switch i32 %10, label %25 [
    i32 -1, label %13
    i32 1, label %18
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !219
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #8
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull %7) #8
  br label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 8, !tbaa !220
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #8
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %7) #8
  br label %22

22:                                               ; preds = %17, %21
  %23 = load i32, ptr %5, align 8, !tbaa !83
  %24 = add nsw i32 %23, %10
  store i32 %24, ptr %5, align 8, !tbaa !83
  br label %25

25:                                               ; preds = %22, %12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %3) #8
  br label %26

26:                                               ; preds = %18, %13, %2, %25
  %27 = phi i32 [ 4, %25 ], [ 2, %2 ], [ 2, %13 ], [ 2, %18 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @mask_layer_move_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_maskedit_mask_poll(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !80
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_duplicate(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.76, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.78, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_duplicate_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_duplicate_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %158, label %12

8:                                                ; preds = %153, %12
  %9 = phi i32 [ %14, %12 ], [ %154, %153 ]
  %10 = load ptr, ptr %13, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %158, label %12, !llvm.loop !221

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %14 = phi i32 [ %9, %8 ], [ undef, %2 ]
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 3, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = icmp eq ptr %16, null
  br i1 %17, label %8, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 4
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 5
  br label %21

21:                                               ; preds = %18, %153
  %22 = phi ptr [ %16, %18 ], [ %156, %153 ]
  %23 = phi i32 [ %14, %18 ], [ %154, %153 ]
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 6
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %153

28:                                               ; preds = %21
  %29 = load ptr, ptr %24, align 8, !tbaa !51
  %30 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 2
  %31 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 3
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 4
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 7
  br label %34

34:                                               ; preds = %28, %147
  %35 = phi i32 [ %23, %28 ], [ %148, %147 ]
  %36 = phi ptr [ %29, %28 ], [ %150, %147 ]
  %37 = phi i32 [ 0, %28 ], [ %149, %147 ]
  %38 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %39 = load i8, ptr %38, align 1, !tbaa !116
  %40 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 8
  %41 = load i8, ptr %40, align 4, !tbaa !195
  %42 = or i8 %41, %39
  %43 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 9
  %44 = load i8, ptr %43, align 1, !tbaa !117
  %45 = or i8 %42, %44
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %34, %54
  %49 = phi ptr [ %56, %54 ], [ %36, %34 ]
  %50 = phi i32 [ %55, %54 ], [ %37, %34 ]
  tail call void @BKE_mask_point_select_set(ptr noundef %49, i8 noundef zeroext 0) #8
  %51 = load i32, ptr %25, align 4, !tbaa !46
  %52 = add nsw i32 %51, -1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = add nsw i32 %50, 1
  %56 = getelementptr inbounds %struct.MaskSplinePoint, ptr %49, i64 1
  %57 = getelementptr inbounds %struct.MaskSplinePoint, ptr %49, i64 1, i32 0, i32 7
  %58 = load i8, ptr %57, align 1, !tbaa !116
  %59 = getelementptr inbounds %struct.MaskSplinePoint, ptr %49, i64 1, i32 0, i32 8
  %60 = load i8, ptr %59, align 4, !tbaa !195
  %61 = or i8 %60, %58
  %62 = getelementptr inbounds %struct.MaskSplinePoint, ptr %49, i64 1, i32 0, i32 9
  %63 = load i8, ptr %62, align 1, !tbaa !117
  %64 = or i8 %61, %63
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %48, !llvm.loop !222

67:                                               ; preds = %54, %48, %34
  %68 = phi i32 [ %37, %34 ], [ %55, %54 ], [ %50, %48 ]
  %69 = phi ptr [ %36, %34 ], [ %56, %54 ], [ %49, %48 ]
  %70 = phi i32 [ -1, %34 ], [ %50, %48 ], [ %50, %54 ]
  %71 = icmp slt i32 %70, %37
  br i1 %71, label %147, label %72

72:                                               ; preds = %67
  %73 = tail call ptr @BKE_mask_spline_add(ptr noundef nonnull %13) #8
  %74 = getelementptr inbounds %struct.MaskSpline, ptr %73, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !51
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %78(ptr noundef nonnull %75) #8
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i16, ptr %30, align 8, !tbaa !94
  %81 = getelementptr inbounds %struct.MaskSpline, ptr %73, i64 0, i32 2
  store i16 %80, ptr %81, align 8, !tbaa !94
  %82 = load i8, ptr %31, align 2, !tbaa !223
  %83 = getelementptr inbounds %struct.MaskSpline, ptr %73, i64 0, i32 3
  store i8 %82, ptr %83, align 2, !tbaa !223
  %84 = load i8, ptr %32, align 1, !tbaa !224
  %85 = getelementptr inbounds %struct.MaskSpline, ptr %73, i64 0, i32 4
  store i8 %84, ptr %85, align 1, !tbaa !224
  %86 = getelementptr inbounds %struct.MaskSpline, ptr %73, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %86, ptr noundef nonnull align 8 dereferenceable(184) %33, i64 184, i1 false), !tbaa.struct !225
  %87 = sub nsw i32 %70, %37
  %88 = add nsw i32 %87, 1
  %89 = getelementptr inbounds %struct.MaskSpline, ptr %73, i64 0, i32 5
  store i32 %88, ptr %89, align 4, !tbaa !46
  %90 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %91 = sext i32 %88 to i64
  %92 = mul nsw i64 %91, 272
  %93 = tail call ptr %90(i64 noundef %92, ptr noundef nonnull @.str.89) #8
  store ptr %93, ptr %74, align 8, !tbaa !51
  %94 = load ptr, ptr %24, align 8, !tbaa !51
  %95 = sext i32 %37 to i64
  %96 = getelementptr inbounds %struct.MaskSplinePoint, ptr %94, i64 %95
  %97 = load i32, ptr %89, align 4, !tbaa !46
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %98, 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %93, ptr align 8 %96, i64 %99, i1 false)
  %100 = load i32, ptr %89, align 4, !tbaa !46
  %101 = load ptr, ptr %19, align 8, !tbaa !226
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %79
  store i32 0, ptr %89, align 4, !tbaa !46
  %104 = tail call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef nonnull %13, ptr noundef %73) #8
  br label %105

105:                                              ; preds = %103, %79
  %106 = phi i32 [ %104, %103 ], [ %35, %79 ]
  %107 = icmp sgt i32 %100, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  %109 = load ptr, ptr %74, align 8, !tbaa !51
  br label %110

110:                                              ; preds = %108, %126
  %111 = phi i32 [ %127, %126 ], [ 0, %108 ]
  %112 = phi ptr [ %128, %126 ], [ %109, %108 ]
  %113 = getelementptr inbounds %struct.MaskSplinePoint, ptr %112, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !61
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !38
  %118 = tail call ptr %117(ptr noundef nonnull %114) #8
  store ptr %118, ptr %113, align 8, !tbaa !61
  br label %119

119:                                              ; preds = %116, %110
  tail call void @BKE_mask_point_select_set(ptr noundef %112, i8 noundef zeroext 1) #8
  %120 = load ptr, ptr %19, align 8, !tbaa !226
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %89, align 4, !tbaa !46
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %89, align 4, !tbaa !46
  %125 = add nsw i32 %111, %106
  tail call void @BKE_mask_layer_shape_changed_add(ptr noundef nonnull %13, i32 noundef %125, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %126

126:                                              ; preds = %119, %122
  %127 = add nuw nsw i32 %111, 1
  %128 = getelementptr inbounds %struct.MaskSplinePoint, ptr %112, i64 1
  %129 = icmp eq i32 %127, %100
  br i1 %129, label %130, label %110, !llvm.loop !227

130:                                              ; preds = %126, %105
  %131 = load i16, ptr %81, align 8, !tbaa !94
  %132 = and i16 %131, 2
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = icmp eq i32 %37, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  %137 = load i32, ptr %25, align 4, !tbaa !46
  %138 = add nsw i32 %137, -1
  %139 = icmp eq i32 %70, %138
  br i1 %139, label %142, label %140

140:                                              ; preds = %136, %134
  %141 = and i16 %131, -3
  store i16 %141, ptr %81, align 8, !tbaa !94
  br label %142

142:                                              ; preds = %136, %140, %130
  %143 = load i16, ptr %81, align 8, !tbaa !94
  %144 = or i16 %143, 1
  store i16 %144, ptr %81, align 8, !tbaa !94
  %145 = load i16, ptr %30, align 8, !tbaa !94
  %146 = and i16 %145, -2
  store i16 %146, ptr %30, align 8, !tbaa !94
  store ptr %73, ptr %20, align 8, !tbaa !118
  br label %147

147:                                              ; preds = %142, %67
  %148 = phi i32 [ %106, %142 ], [ %35, %67 ]
  %149 = add nsw i32 %68, 1
  %150 = getelementptr inbounds %struct.MaskSplinePoint, ptr %69, i64 1
  %151 = load i32, ptr %25, align 4, !tbaa !46
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %34, label %153, !llvm.loop !228

153:                                              ; preds = %147, %21
  %154 = phi i32 [ %23, %21 ], [ %148, %147 ]
  %155 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !38
  %157 = icmp eq ptr %156, null
  br i1 %157, label %8, label %21, !llvm.loop !229

158:                                              ; preds = %8, %2
  %159 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %160 = load i32, ptr %159, align 8, !tbaa !173
  %161 = sitofp i32 %160 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %161) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_copy_splines(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.80, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_splines_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @copy_splines_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %4 = tail call ptr @BKE_mask_layer_active(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BKE_mask_clipboard_copy_from_layer(ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_paste_splines(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.82, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.83, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.84, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_splines_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paste_splines_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paste_splines_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %5 = tail call ptr @BKE_mask_layer_active(ptr noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_mask_layer_new(ptr noundef %4, ptr noundef nonnull @.str) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @BKE_mask_clipboard_paste_to_layer(ptr noundef %11, ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !173
  %14 = sitofp i32 %13 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %14) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #8
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @paste_splines_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_maskedit_mask_poll(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @BKE_mask_clipboard_is_empty() #8
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @BKE_mask_point_handle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_layer_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_mask_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_mask_point_weight_scalar(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_mask_point_segment_co(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_point_normal(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_to_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_clip_point_undistorted_pos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_mask_select_toggle_all(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mask_point_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_mask_select_flush_all(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_point_set_handle(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BKE_mask_spline_project_co(ptr noundef, ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_mask_point_sort_uw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @project_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_spline_copy(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_spline_free(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @ED_mask_layer_shape_auto_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @BKE_mask_spline_point_next_bezt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @ED_mask_spline_select_check(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_layer_shape_changed_remove(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mask_point_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_layer_free_shapes(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_update_display(ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_mask_spline_direction_switch(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_calc_handle_point_auto(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_mask_layer_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @ED_mask_layer_select_check(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_layer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_spline_add(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_layer_shape_changed_add(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_mask_clipboard_copy_from_layer(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_clipboard_paste_to_layer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_mask_clipboard_is_empty() local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !36, i64 143}
!41 = !{!"MaskLayer", !39, i64 0, !39, i64 8, !36, i64 16, !42, i64 80, !42, i64 96, !39, i64 112, !39, i64 120, !35, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !49, i64 20}
!47 = !{!"MaskSpline", !39, i64 0, !39, i64 8, !48, i64 16, !36, i64 18, !36, i64 19, !49, i64 20, !39, i64 24, !50, i64 32, !39, i64 216}
!48 = !{!"short", !36, i64 0}
!49 = !{!"int", !36, i64 0}
!50 = !{!"MaskParent", !49, i64 0, !49, i64 4, !39, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 152}
!51 = !{!47, !39, i64 24}
!52 = !{!53, !36, i64 49}
!53 = !{!"BezTriple", !36, i64 0, !35, i64 36, !35, i64 40, !35, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !35, i64 56, !35, i64 60, !35, i64 64, !36, i64 68}
!54 = !{!53, !36, i64 50}
!55 = distinct !{!55, !44, !45}
!56 = distinct !{!56, !44, !45}
!57 = !{!49, !49, i64 0}
!58 = distinct !{!58, !44, !45}
!59 = !{!60, !49, i64 76}
!60 = !{!"MaskSplinePoint", !53, i64 0, !49, i64 72, !49, i64 76, !39, i64 80, !50, i64 88}
!61 = !{!60, !39, i64 80}
!62 = distinct !{!62, !44, !45}
!63 = distinct !{!63, !44, !45}
!64 = distinct !{!64, !44, !45}
!65 = !{!66, !39, i64 96}
!66 = !{!"ScrArea", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !67, i64 56, !36, i64 72, !36, i64 73, !48, i64 74, !48, i64 76, !48, i64 78, !48, i64 80, !48, i64 82, !48, i64 84, !36, i64 86, !36, i64 87, !39, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!67 = !{!"rcti", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!68 = !{!66, !36, i64 72}
!69 = !{!70, !39, i64 0}
!70 = !{!"wmOperatorType", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !42, i64 112, !39, i64 128, !39, i64 136, !39, i64 144, !71, i64 152, !48, i64 184}
!71 = !{!"ExtensionRNA", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!72 = !{!70, !39, i64 24}
!73 = !{!70, !39, i64 8}
!74 = !{!70, !48, i64 184}
!75 = !{!70, !39, i64 32}
!76 = !{!70, !39, i64 72}
!77 = !{!70, !39, i64 88}
!78 = !{!79, !39, i64 112}
!79 = !{!"wmOperator", !39, i64 0, !39, i64 8, !36, i64 16, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !42, i64 128, !39, i64 144, !39, i64 152, !48, i64 160, !36, i64 162}
!80 = !{!81, !49, i64 148}
!81 = !{!"Mask", !82, i64 0, !39, i64 120, !42, i64 128, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164}
!82 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !48, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !39, i64 112}
!83 = !{!81, !49, i64 144}
!84 = !{!70, !39, i64 48}
!85 = !{!70, !39, i64 64}
!86 = !{i8 0, i8 2}
!87 = !{!88, !39, i64 64}
!88 = !{!"SpaceClip", !39, i64 0, !39, i64 8, !42, i64 16, !49, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !89, i64 56, !39, i64 64, !90, i64 72, !49, i64 208, !48, i64 212, !48, i64 214, !49, i64 216, !36, i64 220, !35, i64 228, !35, i64 232, !49, i64 236, !36, i64 240, !36, i64 304, !49, i64 368, !48, i64 372, !48, i64 374, !49, i64 376, !49, i64 380, !36, i64 384, !92, i64 392}
!89 = !{!"MovieClipUser", !49, i64 0, !48, i64 4, !48, i64 6}
!90 = !{!"MovieClipScopes", !48, i64 0, !48, i64 2, !49, i64 4, !49, i64 8, !49, i64 12, !91, i64 16, !39, i64 80, !39, i64 88, !36, i64 96, !48, i64 104, !48, i64 106, !49, i64 108, !39, i64 112, !39, i64 120, !36, i64 128}
!91 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !49, i64 56, !49, i64 60}
!92 = !{!"MaskSpaceInfo", !39, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!93 = !{!88, !48, i64 62}
!94 = !{!47, !48, i64 16}
!95 = distinct !{!95, !44, !45}
!96 = distinct !{!96, !44, !45}
!97 = distinct !{!97, !44, !45}
!98 = !{!99, !48, i64 16}
!99 = !{!"wmEvent", !39, i64 0, !39, i64 8, !48, i64 16, !48, i64 18, !49, i64 20, !49, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !48, i64 44, !48, i64 46, !49, i64 48, !49, i64 52, !100, i64 56, !49, i64 64, !49, i64 68, !48, i64 72, !48, i64 74, !48, i64 76, !48, i64 78, !48, i64 80, !48, i64 82, !39, i64 88, !39, i64 96, !48, i64 104, !48, i64 106, !49, i64 108, !39, i64 112}
!100 = !{!"double", !36, i64 0}
!101 = !{!102, !48, i64 0}
!102 = !{!"SlidePointData", !48, i64 0, !49, i64 4, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !49, i64 56, !49, i64 60, !49, i64 64, !36, i64 68, !36, i64 76, !36, i64 84, !36, i64 85, !36, i64 86, !36, i64 87, !36, i64 88, !36, i64 92, !36, i64 128, !36, i64 129, !36, i64 132, !36, i64 140, !36, i64 148, !35, i64 156, !35, i64 160}
!103 = !{!102, !39, i64 8}
!104 = !{!102, !39, i64 16}
!105 = !{!102, !39, i64 24}
!106 = !{!102, !39, i64 40}
!107 = !{!102, !49, i64 60}
!108 = !{!102, !49, i64 64}
!109 = !{!102, !49, i64 4}
!110 = !{!102, !39, i64 48}
!111 = !{!102, !36, i64 88}
!112 = !{!60, !36, i64 49}
!113 = !{!102, !36, i64 128}
!114 = !{!60, !36, i64 50}
!115 = !{!102, !36, i64 129}
!116 = !{!60, !36, i64 51}
!117 = !{!60, !36, i64 53}
!118 = !{!41, !39, i64 112}
!119 = !{!41, !39, i64 120}
!120 = !{!121, !35, i64 0}
!121 = !{!"MaskSplinePointUW", !35, i64 0, !35, i64 4, !49, i64 8}
!122 = !{!121, !35, i64 4}
!123 = !{!102, !35, i64 156}
!124 = !{!102, !35, i64 160}
!125 = !{!53, !35, i64 40}
!126 = distinct !{!126, !44, !45}
!127 = !{!60, !35, i64 40}
!128 = !{!102, !36, i64 86}
!129 = !{!102, !49, i64 56}
!130 = !{!79, !39, i64 96}
!131 = !{!99, !48, i64 18}
!132 = !{!102, !36, i64 87}
!133 = !{!102, !36, i64 84}
!134 = !{!102, !36, i64 85}
!135 = !{!102, !39, i64 32}
!136 = distinct !{!136, !44, !45}
!137 = !{i64 0, i64 36, !138, i64 36, i64 4, !34, i64 40, i64 4, !34, i64 44, i64 4, !34, i64 48, i64 1, !138, i64 49, i64 1, !138, i64 50, i64 1, !138, i64 51, i64 1, !138, i64 52, i64 1, !138, i64 53, i64 1, !138, i64 54, i64 1, !138, i64 55, i64 1, !138, i64 56, i64 4, !34, i64 60, i64 4, !34, i64 64, i64 4, !34, i64 68, i64 4, !138}
!138 = !{!36, !36, i64 0}
!139 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !57}
!140 = distinct !{!140, !44, !45}
!141 = distinct !{!141, !44, !45}
!142 = distinct !{!142, !44, !45}
!143 = !{!144, !39, i64 264}
!144 = !{!"Scene", !82, i64 0, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !42, i64 152, !39, i64 168, !39, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !49, i64 232, !49, i64 236, !49, i64 240, !48, i64 244, !36, i64 246, !36, i64 247, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !145, i64 280, !153, i64 4264, !42, i64 4296, !42, i64 4312, !39, i64 4328, !39, i64 4336, !39, i64 4344, !39, i64 4352, !39, i64 4360, !39, i64 4368, !48, i64 4376, !48, i64 4378, !49, i64 4380, !42, i64 4384, !154, i64 4400, !155, i64 4416, !158, i64 4600, !39, i64 4608, !159, i64 4616, !39, i64 4640, !160, i64 4648, !160, i64 4656, !147, i64 4664, !148, i64 4824, !161, i64 4888, !39, i64 4952}
!145 = !{!"RenderData", !146, i64 0, !39, i64 248, !39, i64 256, !149, i64 264, !150, i64 328, !49, i64 400, !49, i64 404, !49, i64 408, !35, i64 412, !49, i64 416, !49, i64 420, !49, i64 424, !49, i64 428, !48, i64 432, !48, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !48, i64 456, !48, i64 458, !48, i64 460, !48, i64 462, !48, i64 464, !48, i64 466, !49, i64 468, !48, i64 472, !48, i64 474, !48, i64 476, !48, i64 478, !48, i64 480, !48, i64 482, !49, i64 484, !49, i64 488, !48, i64 492, !48, i64 494, !49, i64 496, !49, i64 500, !48, i64 504, !48, i64 506, !48, i64 508, !48, i64 510, !48, i64 512, !36, i64 514, !36, i64 515, !49, i64 516, !49, i64 520, !49, i64 524, !48, i64 528, !48, i64 530, !48, i64 532, !48, i64 534, !48, i64 536, !48, i64 538, !48, i64 540, !48, i64 542, !151, i64 544, !151, i64 560, !67, i64 576, !42, i64 592, !48, i64 608, !48, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !49, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !48, i64 648, !48, i64 650, !48, i64 652, !48, i64 654, !48, i64 656, !48, i64 658, !35, i64 660, !35, i64 664, !48, i64 668, !48, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !49, i64 1704, !48, i64 1708, !48, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !49, i64 2520, !48, i64 2524, !48, i64 2526, !35, i64 2528, !35, i64 2532, !48, i64 2536, !48, i64 2538, !35, i64 2540, !48, i64 2544, !48, i64 2546, !49, i64 2548, !48, i64 2552, !48, i64 2554, !48, i64 2556, !48, i64 2558, !35, i64 2560, !35, i64 2564, !39, i64 2568, !49, i64 2576, !35, i64 2580, !36, i64 2584, !152, i64 2616, !49, i64 3976, !49, i64 3980}
!146 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !48, i64 8, !48, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !147, i64 24, !148, i64 184}
!147 = !{!"ColorManagedViewSettings", !49, i64 0, !49, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !39, i64 144, !39, i64 152}
!148 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!149 = !{!"QuicktimeCodecSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !48, i64 48, !48, i64 50, !49, i64 52, !49, i64 56, !49, i64 60}
!150 = !{!"FFMpegCodecData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !35, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !39, i64 64}
!151 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!152 = !{!"BakeData", !146, i64 0, !36, i64 248, !48, i64 1272, !48, i64 1274, !48, i64 1276, !48, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!153 = !{!"AudioData", !49, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !49, i64 16, !48, i64 20, !48, i64 22, !35, i64 24, !35, i64 28}
!154 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!155 = !{!"GameData", !154, i64 0, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !48, i64 32, !36, i64 34, !156, i64 40, !48, i64 64, !48, i64 66, !35, i64 68, !157, i64 72, !35, i64 128, !35, i64 132, !49, i64 136, !48, i64 140, !48, i64 142, !48, i64 144, !48, i64 146, !48, i64 148, !48, i64 150, !48, i64 152, !48, i64 154, !48, i64 156, !48, i64 158, !48, i64 160, !48, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!156 = !{!"GameDome", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !35, i64 8, !35, i64 12, !39, i64 16}
!157 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !49, i64 40, !35, i64 44, !35, i64 48, !48, i64 52, !48, i64 54}
!158 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !48, i64 6}
!159 = !{!"PhysicsSettings", !36, i64 0, !49, i64 12, !49, i64 16, !49, i64 20}
!160 = !{!"long", !36, i64 0}
!161 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!162 = !{!163, !48, i64 344}
!163 = !{!"ToolSettings", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !48, i64 44, !48, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !35, i64 52, !48, i64 56, !36, i64 58, !36, i64 59, !164, i64 64, !166, i64 168, !35, i64 336, !35, i64 340, !48, i64 344, !48, i64 346, !36, i64 348, !36, i64 349, !48, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !48, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !39, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !48, i64 434, !48, i64 436, !48, i64 438, !48, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !49, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !48, i64 464, !48, i64 466, !49, i64 468, !35, i64 472, !35, i64 476, !167, i64 480, !168, i64 608}
!164 = !{!"ImagePaintSettings", !165, i64 0, !48, i64 40, !48, i64 42, !48, i64 44, !48, i64 46, !36, i64 48, !49, i64 52, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !35, i64 100}
!165 = !{!"Paint", !39, i64 0, !39, i64 8, !39, i64 16, !36, i64 24, !49, i64 28, !49, i64 32, !49, i64 36}
!166 = !{!"ParticleEditSettings", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !36, i64 8, !39, i64 120, !35, i64 128, !35, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !39, i64 152, !39, i64 160}
!167 = !{!"UnifiedPaintSettings", !49, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !49, i64 40, !36, i64 44, !35, i64 52, !49, i64 56, !49, i64 60, !36, i64 64, !36, i64 65, !35, i64 72, !36, i64 76, !49, i64 84, !35, i64 88, !36, i64 92, !36, i64 100, !49, i64 108, !39, i64 112, !35, i64 120, !49, i64 124}
!168 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!169 = !{!170, !48, i64 8976}
!170 = !{!"UserDef", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !49, i64 8468, !48, i64 8472, !48, i64 8474, !48, i64 8476, !48, i64 8478, !48, i64 8480, !48, i64 8482, !49, i64 8484, !49, i64 8488, !49, i64 8492, !48, i64 8496, !48, i64 8498, !49, i64 8500, !49, i64 8504, !49, i64 8508, !49, i64 8512, !49, i64 8516, !49, i64 8520, !49, i64 8524, !48, i64 8528, !48, i64 8530, !48, i64 8532, !48, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !36, i64 8648, !48, i64 8712, !48, i64 8714, !48, i64 8716, !48, i64 8718, !48, i64 8720, !48, i64 8722, !48, i64 8724, !48, i64 8726, !36, i64 8728, !48, i64 8896, !48, i64 8898, !48, i64 8900, !48, i64 8902, !48, i64 8904, !48, i64 8906, !48, i64 8908, !48, i64 8910, !49, i64 8912, !49, i64 8916, !48, i64 8920, !48, i64 8922, !48, i64 8924, !48, i64 8926, !48, i64 8928, !48, i64 8930, !48, i64 8932, !48, i64 8934, !48, i64 8936, !48, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !48, i64 8944, !48, i64 8946, !48, i64 8948, !48, i64 8950, !48, i64 8952, !48, i64 8954, !35, i64 8956, !35, i64 8960, !49, i64 8964, !48, i64 8968, !48, i64 8970, !35, i64 8972, !48, i64 8976, !48, i64 8978, !48, i64 8980, !48, i64 8982, !171, i64 8984, !36, i64 9760, !36, i64 9772, !48, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !49, i64 10896, !49, i64 10900, !35, i64 10904, !35, i64 10908, !49, i64 10912, !48, i64 10916, !48, i64 10918, !48, i64 10920, !48, i64 10922, !48, i64 10924, !48, i64 10926, !172, i64 10928}
!171 = !{!"ColorBand", !48, i64 0, !48, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!172 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !48, i64 24, !36, i64 26}
!173 = !{!144, !49, i64 680}
!174 = !{!175, !48, i64 0}
!175 = !{!"SlideSplineCurvatureData", !48, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !35, i64 40, !36, i64 44, !39, i64 48, !39, i64 56, !53, i64 64, !53, i64 136, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248}
!176 = !{!175, !39, i64 8}
!177 = !{!175, !39, i64 16}
!178 = !{!175, !39, i64 24}
!179 = !{!175, !39, i64 32}
!180 = !{!175, !35, i64 40}
!181 = !{!175, !39, i64 48}
!182 = !{!175, !39, i64 56}
!183 = !{!53, !36, i64 52}
!184 = !{!53, !36, i64 53}
!185 = !{!53, !36, i64 51}
!186 = !{!175, !36, i64 44}
!187 = !{!175, !36, i64 113}
!188 = !{!175, !36, i64 114}
!189 = !{!175, !36, i64 185}
!190 = !{!175, !36, i64 186}
!191 = distinct !{!191, !44, !45}
!192 = distinct !{!192, !44, !45}
!193 = !{!41, !39, i64 80}
!194 = !{!47, !39, i64 0}
!195 = !{!60, !36, i64 52}
!196 = distinct !{!196, !44, !45}
!197 = !{!121, !49, i64 8}
!198 = distinct !{!198, !44, !45}
!199 = distinct !{!199, !44, !45}
!200 = !{i64 0, i64 36, !138, i64 36, i64 4, !34, i64 40, i64 4, !34, i64 44, i64 4, !34, i64 48, i64 1, !138, i64 49, i64 1, !138, i64 50, i64 1, !138, i64 51, i64 1, !138, i64 52, i64 1, !138, i64 53, i64 1, !138, i64 54, i64 1, !138, i64 55, i64 1, !138, i64 56, i64 4, !34, i64 60, i64 4, !34, i64 64, i64 4, !34, i64 68, i64 4, !138, i64 72, i64 4, !57, i64 76, i64 4, !57, i64 80, i64 8, !38, i64 88, i64 4, !57, i64 92, i64 4, !57, i64 96, i64 8, !38, i64 104, i64 64, !138, i64 168, i64 64, !138, i64 232, i64 8, !138, i64 240, i64 32, !138}
!201 = distinct !{!201, !44, !45}
!202 = distinct !{!202, !44, !45}
!203 = !{!42, !39, i64 0}
!204 = distinct !{!204, !44, !45}
!205 = distinct !{!205, !44, !45}
!206 = distinct !{!206, !44, !45}
!207 = distinct !{!207, !44, !45}
!208 = distinct !{!208, !44, !45}
!209 = distinct !{!209, !44, !45}
!210 = !{!70, !39, i64 104}
!211 = distinct !{!211, !44, !45}
!212 = distinct !{!212, !44, !45}
!213 = distinct !{!213, !44, !45}
!214 = distinct !{!214, !44, !45}
!215 = distinct !{!215, !44, !45}
!216 = distinct !{!216, !44, !45}
!217 = distinct !{!217, !44, !45}
!218 = distinct !{!218, !44, !45}
!219 = !{!41, !39, i64 8}
!220 = !{!41, !39, i64 0}
!221 = distinct !{!221, !44, !45}
!222 = distinct !{!222, !44, !45}
!223 = !{!47, !36, i64 18}
!224 = !{!47, !36, i64 19}
!225 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 8, !38, i64 16, i64 64, !138, i64 80, i64 64, !138, i64 144, i64 8, !138, i64 152, i64 32, !138}
!226 = !{!41, !39, i64 96}
!227 = distinct !{!227, !44, !45}
!228 = distinct !{!228, !44, !45}
!229 = distinct !{!229, !44, !45}
