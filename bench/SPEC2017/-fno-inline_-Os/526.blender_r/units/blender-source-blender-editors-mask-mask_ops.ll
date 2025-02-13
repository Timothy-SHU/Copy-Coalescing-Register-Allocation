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
%struct.SlidePointData = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [2 x float], [2 x float], i8, i8, i8, i8, i8, [3 x [3 x float]], i8, i8, [2 x float], [2 x float], [2 x float], float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
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
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca [2 x float], align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x float], align 8
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca [2 x float], align 4
  %18 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %19 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %20 = fmul float %3, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  call void @ED_mask_get_size(ptr noundef %18, ptr noundef nonnull %12, ptr noundef nonnull %13) #15
  call void @ED_mask_pixelspace_factor(ptr noundef %18, ptr noundef %19, ptr noundef nonnull %10, ptr noundef nonnull %11) #15
  %21 = load float, ptr %10, align 4, !tbaa !34
  %22 = load float, ptr %11, align 4, !tbaa !34
  %23 = load <2 x float>, ptr %2, align 4, !tbaa !34
  %24 = insertelement <2 x float> poison, float %21, i64 0
  %25 = insertelement <2 x float> %24, float %22, i64 1
  %26 = fmul <2 x float> %23, %25
  store <2 x float> %26, ptr %9, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = icmp eq ptr %28, null
  br i1 %29, label %158, label %30

30:                                               ; preds = %8, %150
  %31 = phi ptr [ %156, %150 ], [ %28, %8 ]
  %32 = phi ptr [ %155, %150 ], [ null, %8 ]
  %33 = phi ptr [ %154, %150 ], [ null, %8 ]
  %34 = phi ptr [ %153, %150 ], [ null, %8 ]
  %35 = phi float [ %152, %150 ], [ 0x47EFFFFFE0000000, %8 ]
  %36 = phi i32 [ %151, %150 ], [ 0, %8 ]
  %37 = getelementptr inbounds %struct.MaskLayer, ptr %31, i64 0, i32 13
  %38 = load i8, ptr %37, align 1, !tbaa !40
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %150

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.MaskLayer, ptr %31, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !38
  %44 = icmp eq ptr %43, null
  br i1 %44, label %150, label %53

45:                                               ; preds = %140, %53
  %46 = phi i32 [ %59, %53 ], [ %141, %140 ]
  %47 = phi float [ %58, %53 ], [ %142, %140 ]
  %48 = phi ptr [ %57, %53 ], [ %143, %140 ]
  %49 = phi ptr [ %56, %53 ], [ %144, %140 ]
  %50 = phi ptr [ %55, %53 ], [ %145, %140 ]
  %51 = load ptr, ptr %54, align 8, !tbaa !38
  %52 = icmp eq ptr %51, null
  br i1 %52, label %150, label %53, !llvm.loop !43

53:                                               ; preds = %41, %45
  %54 = phi ptr [ %51, %45 ], [ %43, %41 ]
  %55 = phi ptr [ %50, %45 ], [ %32, %41 ]
  %56 = phi ptr [ %49, %45 ], [ %33, %41 ]
  %57 = phi ptr [ %48, %45 ], [ %34, %41 ]
  %58 = phi float [ %47, %45 ], [ %35, %41 ]
  %59 = phi i32 [ %46, %45 ], [ %36, %41 ]
  %60 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %54) #15
  %61 = getelementptr inbounds %struct.MaskSpline, ptr %54, i64 0, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !45
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %45

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.MaskSpline, ptr %54, i64 0, i32 6
  br label %66

66:                                               ; preds = %64, %140
  %67 = phi i64 [ 0, %64 ], [ %146, %140 ]
  %68 = phi ptr [ %55, %64 ], [ %145, %140 ]
  %69 = phi ptr [ %56, %64 ], [ %144, %140 ]
  %70 = phi ptr [ %57, %64 ], [ %143, %140 ]
  %71 = phi float [ %58, %64 ], [ %142, %140 ]
  %72 = phi i32 [ %59, %64 ], [ %141, %140 ]
  %73 = load ptr, ptr %65, align 8, !tbaa !50
  %74 = getelementptr inbounds %struct.MaskSplinePoint, ptr %73, i64 %67
  %75 = getelementptr inbounds %struct.MaskSplinePoint, ptr %60, i64 %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %75, i64 0, i64 1
  %77 = load float, ptr %10, align 4, !tbaa !34
  %78 = load float, ptr %11, align 4, !tbaa !34
  %79 = load <2 x float>, ptr %76, align 4, !tbaa !34
  %80 = insertelement <2 x float> poison, float %77, i64 0
  %81 = insertelement <2 x float> %80, float %78, i64 1
  %82 = fmul <2 x float> %79, %81
  store <2 x float> %82, ptr %14, align 8, !tbaa !34
  %83 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %14) #17
  %84 = fcmp olt float %83, %71
  br i1 %84, label %85, label %86

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %66
  %87 = phi i32 [ 0, %85 ], [ %72, %66 ]
  %88 = phi float [ %83, %85 ], [ %71, %66 ]
  %89 = phi ptr [ %74, %85 ], [ %70, %66 ]
  %90 = phi ptr [ %54, %85 ], [ %69, %66 ]
  %91 = phi ptr [ %31, %85 ], [ %68, %66 ]
  %92 = call i32 @BKE_mask_point_handles_mode_get(ptr noundef nonnull %75) #15
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  %95 = load float, ptr %10, align 4, !tbaa !34
  %96 = load float, ptr %11, align 4, !tbaa !34
  call fastcc void @mask_point_scaled_handle(ptr noundef nonnull %75, i32 noundef 1, float noundef %95, float noundef %96, ptr noundef nonnull %15) #17
  %97 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  br label %133

98:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  %99 = load float, ptr %10, align 4, !tbaa !34
  %100 = load float, ptr %11, align 4, !tbaa !34
  call fastcc void @mask_point_scaled_handle(ptr noundef nonnull %75, i32 noundef 2, float noundef %99, float noundef %100, ptr noundef nonnull %16) #17
  %101 = load float, ptr %10, align 4, !tbaa !34
  %102 = load float, ptr %11, align 4, !tbaa !34
  call fastcc void @mask_point_scaled_handle(ptr noundef nonnull %75, i32 noundef 3, float noundef %101, float noundef %102, ptr noundef nonnull %17) #17
  %103 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %16) #17
  %104 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %17) #17
  %105 = icmp eq i64 %67, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = fcmp ugt float %103, %104
  br i1 %107, label %113, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.BezTriple, ptr %75, i64 0, i32 5
  %110 = load i8, ptr %109, align 1, !tbaa !51
  %111 = icmp eq i8 %110, 2
  br i1 %111, label %130, label %112

112:                                              ; preds = %108
  br label %130

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.BezTriple, ptr %75, i64 0, i32 6
  %115 = load i8, ptr %114, align 2, !tbaa !53
  %116 = icmp eq i8 %115, 2
  br i1 %116, label %130, label %117

117:                                              ; preds = %113
  br label %130

118:                                              ; preds = %98
  %119 = fcmp ugt float %104, %103
  br i1 %119, label %125, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.BezTriple, ptr %75, i64 0, i32 6
  %122 = load i8, ptr %121, align 2, !tbaa !53
  %123 = icmp eq i8 %122, 2
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  br label %130

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.BezTriple, ptr %75, i64 0, i32 5
  %127 = load i8, ptr %126, align 1, !tbaa !51
  %128 = icmp eq i8 %127, 2
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %124, %120, %129, %125, %112, %108, %117, %113
  %131 = phi i32 [ 2, %112 ], [ 0, %108 ], [ 3, %117 ], [ 0, %113 ], [ 3, %124 ], [ 0, %120 ], [ 2, %129 ], [ 0, %125 ]
  %132 = phi float [ %103, %112 ], [ %83, %108 ], [ %104, %117 ], [ %83, %113 ], [ %104, %124 ], [ %83, %120 ], [ %103, %129 ], [ %83, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  br label %133

133:                                              ; preds = %130, %94
  %134 = phi i32 [ 1, %94 ], [ %131, %130 ]
  %135 = phi float [ %97, %94 ], [ %132, %130 ]
  %136 = fcmp ole float %135, %88
  %137 = icmp ne i32 %134, 0
  %138 = and i1 %137, %136
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %133
  %141 = phi i32 [ %134, %139 ], [ %87, %133 ]
  %142 = phi float [ %135, %139 ], [ %88, %133 ]
  %143 = phi ptr [ %74, %139 ], [ %89, %133 ]
  %144 = phi ptr [ %54, %139 ], [ %90, %133 ]
  %145 = phi ptr [ %31, %139 ], [ %91, %133 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  %146 = add nuw nsw i64 %67, 1
  %147 = load i32, ptr %61, align 4, !tbaa !45
  %148 = sext i32 %147 to i64
  %149 = icmp slt i64 %146, %148
  br i1 %149, label %66, label %45, !llvm.loop !54

150:                                              ; preds = %45, %41, %30
  %151 = phi i32 [ %36, %30 ], [ %36, %41 ], [ %46, %45 ]
  %152 = phi float [ %35, %30 ], [ %35, %41 ], [ %47, %45 ]
  %153 = phi ptr [ %34, %30 ], [ %34, %41 ], [ %48, %45 ]
  %154 = phi ptr [ %33, %30 ], [ %33, %41 ], [ %49, %45 ]
  %155 = phi ptr [ %32, %30 ], [ %32, %41 ], [ %50, %45 ]
  %156 = load ptr, ptr %31, align 8, !tbaa !38
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %30, !llvm.loop !55

158:                                              ; preds = %150, %8
  %159 = phi i32 [ 0, %8 ], [ %151, %150 ]
  %160 = phi float [ 0x47EFFFFFE0000000, %8 ], [ %152, %150 ]
  %161 = phi ptr [ null, %8 ], [ %153, %150 ]
  %162 = phi ptr [ null, %8 ], [ %154, %150 ]
  %163 = phi ptr [ null, %8 ], [ %155, %150 ]
  %164 = fcmp olt float %160, %20
  %165 = icmp eq ptr %4, null
  br i1 %164, label %166, label %178

166:                                              ; preds = %158
  br i1 %165, label %168, label %167

167:                                              ; preds = %166
  store ptr %163, ptr %4, align 8, !tbaa !38
  br label %168

168:                                              ; preds = %167, %166
  %169 = icmp eq ptr %5, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %168
  store ptr %162, ptr %5, align 8, !tbaa !38
  br label %171

171:                                              ; preds = %170, %168
  %172 = icmp eq ptr %6, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %171
  store i32 %159, ptr %6, align 4, !tbaa !56
  br label %174

174:                                              ; preds = %173, %171
  %175 = icmp eq ptr %7, null
  br i1 %175, label %186, label %176

176:                                              ; preds = %174
  %177 = call float @sqrtf(float noundef %160) #15
  store float %177, ptr %7, align 4, !tbaa !34
  br label %186

178:                                              ; preds = %158
  br i1 %165, label %180, label %179

179:                                              ; preds = %178
  store ptr null, ptr %4, align 8, !tbaa !38
  br label %180

180:                                              ; preds = %179, %178
  %181 = icmp eq ptr %5, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %180
  store ptr null, ptr %5, align 8, !tbaa !38
  br label %183

183:                                              ; preds = %182, %180
  %184 = icmp eq ptr %6, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %183
  store i32 0, ptr %6, align 4, !tbaa !56
  br label %186

186:                                              ; preds = %183, %185, %174, %176
  %187 = phi ptr [ %161, %176 ], [ %161, %174 ], [ null, %185 ], [ null, %183 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  ret ptr %187
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_pixelspace_factor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_spline_point_array(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !57 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret float %4
}

; Function Attrs: optsize
declare i32 @BKE_mask_point_handles_mode_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mask_point_scaled_handle(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !58 {
  tail call void @BKE_mask_point_handle(ptr noundef %0, i32 noundef %1, ptr noundef %4) #15
  %6 = load <2 x float>, ptr %4, align 4, !tbaa !34
  %7 = insertelement <2 x float> poison, float %2, i64 0
  %8 = insertelement <2 x float> %7, float %3, i64 1
  %9 = fmul <2 x float> %6, %8
  store <2 x float> %9, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_mask_feather_find_nearest(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca [2 x float], align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x float], align 8
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %18 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %19 = fmul float %3, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  call void @ED_mask_get_size(ptr noundef %17, ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  call void @ED_mask_pixelspace_factor(ptr noundef %17, ptr noundef %18, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %20 = load float, ptr %11, align 4, !tbaa !34
  %21 = load float, ptr %12, align 4, !tbaa !34
  %22 = load <2 x float>, ptr %2, align 4, !tbaa !34
  %23 = insertelement <2 x float> poison, float %20, i64 0
  %24 = insertelement <2 x float> %23, float %21, i64 1
  %25 = fmul <2 x float> %22, %24
  store <2 x float> %25, ptr %10, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = icmp eq ptr %27, null
  br i1 %28, label %141, label %37

29:                                               ; preds = %133, %37
  %30 = phi ptr [ %43, %37 ], [ %134, %133 ]
  %31 = phi ptr [ %42, %37 ], [ %135, %133 ]
  %32 = phi ptr [ %41, %37 ], [ %136, %133 ]
  %33 = phi float [ %40, %37 ], [ %137, %133 ]
  %34 = phi ptr [ %39, %37 ], [ %138, %133 ]
  %35 = load ptr, ptr %38, align 8, !tbaa !38
  %36 = icmp eq ptr %35, null
  br i1 %36, label %141, label %37, !llvm.loop !59

37:                                               ; preds = %9, %29
  %38 = phi ptr [ %35, %29 ], [ %27, %9 ]
  %39 = phi ptr [ %34, %29 ], [ null, %9 ]
  %40 = phi float [ %33, %29 ], [ 0x47EFFFFFE0000000, %9 ]
  %41 = phi ptr [ %32, %29 ], [ null, %9 ]
  %42 = phi ptr [ %31, %29 ], [ null, %9 ]
  %43 = phi ptr [ %30, %29 ], [ null, %9 ]
  %44 = getelementptr inbounds %struct.MaskLayer, ptr %38, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = icmp eq ptr %45, null
  br i1 %46, label %29, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.MaskLayer, ptr %38, i64 0, i32 13
  br label %49

49:                                               ; preds = %47, %133
  %50 = phi ptr [ %45, %47 ], [ %139, %133 ]
  %51 = phi ptr [ %39, %47 ], [ %138, %133 ]
  %52 = phi float [ %40, %47 ], [ %137, %133 ]
  %53 = phi ptr [ %41, %47 ], [ %136, %133 ]
  %54 = phi ptr [ %42, %47 ], [ %135, %133 ]
  %55 = phi ptr [ %43, %47 ], [ %134, %133 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  %56 = load i8, ptr %48, align 1, !tbaa !40
  %57 = and i8 %56, 3
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %133

59:                                               ; preds = %49
  %60 = call ptr @BKE_mask_spline_feather_points(ptr noundef nonnull %50, ptr noundef nonnull %15) #15
  %61 = getelementptr inbounds %struct.MaskSpline, ptr %50, i64 0, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !45
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %126

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.MaskSpline, ptr %50, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !50
  %67 = load float, ptr %11, align 4
  %68 = load float, ptr %12, align 4
  %69 = zext nneg i32 %62 to i64
  %70 = insertelement <2 x float> poison, float %67, i64 0
  %71 = insertelement <2 x float> %70, float %68, i64 1
  br label %72

72:                                               ; preds = %64, %117
  %73 = phi i64 [ 0, %64 ], [ %124, %117 ]
  %74 = phi ptr [ %60, %64 ], [ %123, %117 ]
  %75 = phi ptr [ %51, %64 ], [ %122, %117 ]
  %76 = phi float [ %52, %64 ], [ %121, %117 ]
  %77 = phi ptr [ %53, %64 ], [ %120, %117 ]
  %78 = phi ptr [ %54, %64 ], [ %119, %117 ]
  %79 = phi ptr [ %55, %64 ], [ %118, %117 ]
  %80 = getelementptr inbounds %struct.MaskSplinePoint, ptr %66, i64 %73
  %81 = getelementptr inbounds %struct.MaskSplinePoint, ptr %66, i64 %73, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !60
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %117, label %84

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.MaskSplinePoint, ptr %66, i64 %73, i32 3
  %86 = add nuw i32 %82, 1
  %87 = zext i32 %86 to i64
  br label %88

88:                                               ; preds = %84, %108
  %89 = phi i64 [ 0, %84 ], [ %115, %108 ]
  %90 = phi ptr [ %74, %84 ], [ %114, %108 ]
  %91 = phi ptr [ %75, %84 ], [ %113, %108 ]
  %92 = phi float [ %76, %84 ], [ %112, %108 ]
  %93 = phi ptr [ %77, %84 ], [ %111, %108 ]
  %94 = phi ptr [ %78, %84 ], [ %110, %108 ]
  %95 = phi ptr [ %79, %84 ], [ %109, %108 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  %96 = load <2 x float>, ptr %90, align 4, !tbaa !34
  %97 = fmul <2 x float> %96, %71
  store <2 x float> %97, ptr %16, align 8, !tbaa !34
  %98 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %16, ptr noundef nonnull %10) #17
  %99 = icmp eq ptr %95, null
  %100 = fcmp olt float %98, %92
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %88
  %103 = icmp eq i64 %89, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %102
  %105 = load ptr, ptr %85, align 8, !tbaa !62
  %106 = getelementptr %struct.MaskSplinePointUW, ptr %105, i64 %89
  %107 = getelementptr %struct.MaskSplinePointUW, ptr %106, i64 -1
  br label %108

108:                                              ; preds = %104, %102, %88
  %109 = phi ptr [ %95, %88 ], [ %80, %102 ], [ %80, %104 ]
  %110 = phi ptr [ %94, %88 ], [ null, %102 ], [ %107, %104 ]
  %111 = phi ptr [ %93, %88 ], [ %50, %102 ], [ %50, %104 ]
  %112 = phi float [ %92, %88 ], [ %98, %102 ], [ %98, %104 ]
  %113 = phi ptr [ %91, %88 ], [ %38, %102 ], [ %38, %104 ]
  %114 = getelementptr inbounds [2 x float], ptr %90, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  %115 = add nuw nsw i64 %89, 1
  %116 = icmp eq i64 %115, %87
  br i1 %116, label %117, label %88, !llvm.loop !63

117:                                              ; preds = %108, %72
  %118 = phi ptr [ %79, %72 ], [ %109, %108 ]
  %119 = phi ptr [ %78, %72 ], [ %110, %108 ]
  %120 = phi ptr [ %77, %72 ], [ %111, %108 ]
  %121 = phi float [ %76, %72 ], [ %112, %108 ]
  %122 = phi ptr [ %75, %72 ], [ %113, %108 ]
  %123 = phi ptr [ %74, %72 ], [ %114, %108 ]
  %124 = add nuw nsw i64 %73, 1
  %125 = icmp eq i64 %124, %69
  br i1 %125, label %126, label %72, !llvm.loop !64

126:                                              ; preds = %117, %59
  %127 = phi ptr [ %55, %59 ], [ %118, %117 ]
  %128 = phi ptr [ %54, %59 ], [ %119, %117 ]
  %129 = phi ptr [ %53, %59 ], [ %120, %117 ]
  %130 = phi float [ %52, %59 ], [ %121, %117 ]
  %131 = phi ptr [ %51, %59 ], [ %122, %117 ]
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %132(ptr noundef %60) #15
  br label %133

133:                                              ; preds = %49, %126
  %134 = phi ptr [ %127, %126 ], [ %55, %49 ]
  %135 = phi ptr [ %128, %126 ], [ %54, %49 ]
  %136 = phi ptr [ %129, %126 ], [ %53, %49 ]
  %137 = phi float [ %130, %126 ], [ %52, %49 ]
  %138 = phi ptr [ %131, %126 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  %139 = load ptr, ptr %50, align 8, !tbaa !38
  %140 = icmp eq ptr %139, null
  br i1 %140, label %29, label %49, !llvm.loop !65

141:                                              ; preds = %29, %9
  %142 = phi ptr [ null, %9 ], [ %30, %29 ]
  %143 = phi ptr [ null, %9 ], [ %31, %29 ]
  %144 = phi ptr [ null, %9 ], [ %32, %29 ]
  %145 = phi float [ 0x47EFFFFFE0000000, %9 ], [ %33, %29 ]
  %146 = phi ptr [ null, %9 ], [ %34, %29 ]
  %147 = fcmp olt float %145, %19
  %148 = icmp eq ptr %4, null
  br i1 %147, label %149, label %164

149:                                              ; preds = %141
  br i1 %148, label %151, label %150

150:                                              ; preds = %149
  store ptr %146, ptr %4, align 8, !tbaa !38
  br label %151

151:                                              ; preds = %150, %149
  %152 = icmp eq ptr %5, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %151
  store ptr %144, ptr %5, align 8, !tbaa !38
  br label %154

154:                                              ; preds = %153, %151
  %155 = icmp eq ptr %6, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %154
  store ptr %142, ptr %6, align 8, !tbaa !38
  br label %157

157:                                              ; preds = %156, %154
  %158 = icmp eq ptr %7, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %157
  store ptr %143, ptr %7, align 8, !tbaa !38
  br label %160

160:                                              ; preds = %159, %157
  %161 = icmp eq ptr %8, null
  br i1 %161, label %172, label %162

162:                                              ; preds = %160
  %163 = call float @sqrtf(float noundef %145) #15
  store float %163, ptr %8, align 4, !tbaa !34
  br label %172

164:                                              ; preds = %141
  br i1 %148, label %166, label %165

165:                                              ; preds = %164
  store ptr null, ptr %4, align 8, !tbaa !38
  br label %166

166:                                              ; preds = %165, %164
  %167 = icmp eq ptr %5, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %166
  store ptr null, ptr %5, align 8, !tbaa !38
  br label %169

169:                                              ; preds = %168, %166
  %170 = icmp eq ptr %6, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %169
  store ptr null, ptr %6, align 8, !tbaa !38
  br label %172

172:                                              ; preds = %169, %171, %160, %162
  %173 = phi i8 [ 1, %162 ], [ 1, %160 ], [ 0, %171 ], [ 0, %169 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  ret i8 %173
}

; Function Attrs: optsize
declare ptr @BKE_mask_spline_feather_points(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_mask_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %5 = tail call ptr @BKE_mask_new(ptr noundef %4, ptr noundef %1) #15
  %6 = icmp eq ptr %3, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %13 = load i8, ptr %12, align 8, !tbaa !69
  switch i8 %13, label %16 [
    i8 20, label %14
    i8 6, label %15
  ]

14:                                               ; preds = %11
  tail call void @ED_space_clip_set_mask(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5) #15
  br label %16

15:                                               ; preds = %11
  tail call void @ED_space_image_set_mask(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5) #15
  br label %16

16:                                               ; preds = %14, %15, %11, %7, %2
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_clip_set_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_set_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_mask_layer_ensure(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @ED_mask_new(ptr noundef %0, ptr noundef null) #17
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = tail call ptr @BKE_mask_layer_active(ptr noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call ptr @BKE_mask_layer_new(ptr noundef %7, ptr noundef nonnull @.str) #15
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_layer_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_new(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.3, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_new_exec, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_mask, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !79 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  call void @RNA_string_get(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #15
  %6 = call ptr @ED_mask_new(ptr noundef %0, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_mask(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_layer_new(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.7, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @masklay_new_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @masklay_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !82 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #15
  %7 = call ptr @BKE_mask_layer_new(ptr noundef %4, ptr noundef nonnull %3) #15
  %8 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !83
  %10 = add nsw i32 %9, -1
  %11 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 3
  store i32 %10, ptr %11, align 8, !tbaa !86
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_maskedit_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_layer_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @masklay_remove_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @masklay_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !87 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %4 = tail call ptr @BKE_mask_layer_active(ptr noundef %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BKE_mask_layer_remove(ptr noundef %3, ptr noundef nonnull %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %3) #15
  br label %7

7:                                                ; preds = %6, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_slide_point(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @slide_point_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @slide_point_modal, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_mask, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !78
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #15
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @slide_point_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !90 {
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @slide_point_customdata(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %10, align 8, !tbaa !91
  %11 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  %12 = getelementptr inbounds %struct.SlidePointData, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.SlidePointData, ptr %7, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %15, i64 0, i32 5
  store ptr %13, ptr %16, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.SlidePointData, ptr %7, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.MaskLayer, ptr %15, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !97
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef nonnull %4) #15
  br label %20

20:                                               ; preds = %6, %3, %9
  %21 = phi i32 [ 1, %9 ], [ 2, %3 ], [ 8, %6 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @slide_point_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !98 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !99
  switch i16 %20, label %331 [
    i16 213, label %21
    i16 214, label %21
    i16 217, label %21
    i16 216, label %21
    i16 4, label %45
    i16 1, label %268
    i16 3, label %268
    i16 218, label %326
  ]

21:                                               ; preds = %3, %3, %3, %3
  %22 = add nsw i16 %20, -213
  %23 = icmp ult i16 %22, 2
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !102
  %27 = icmp eq i32 %26, 3
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %29 = load i16, ptr %28, align 2, !tbaa !103
  %30 = icmp eq i16 %29, 1
  %31 = zext i1 %30 to i8
  br i1 %27, label %32, label %34

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 16
  store i8 %31, ptr %33, align 1, !tbaa !104
  br label %45

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 13
  store i8 %31, ptr %35, align 4, !tbaa !105
  br label %45

36:                                               ; preds = %21
  %37 = and i16 %20, -2
  %38 = icmp eq i16 %37, 216
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !103
  %42 = icmp eq i16 %41, 1
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 14
  store i8 %43, ptr %44, align 1, !tbaa !106
  br label %45

45:                                               ; preds = %34, %32, %36, %39, %3
  %46 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %47 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %48 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %46, ptr noundef %47, ptr noundef nonnull %48, ptr noundef nonnull %4) #15
  %49 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 11
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %49) #17
  %50 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 14
  %51 = load i8, ptr %50, align 1, !tbaa !106
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  call fastcc void @mul_v2_fl(ptr noundef nonnull %5) #17
  br label %54

54:                                               ; preds = %53, %45
  call fastcc void @copy_v2_v2(ptr noundef nonnull %49, ptr noundef nonnull %4) #17
  %55 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !102
  switch i32 %56, label %264 [
    i32 2, label %57
    i32 1, label %119
    i32 3, label %122
    i32 4, label %236
  ]

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %58 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 17
  %59 = load i8, ptr %58, align 8, !tbaa !107
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load ptr, ptr %17, align 8, !tbaa !96
  %63 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 8
  %64 = load i32, ptr %63, align 8, !tbaa !108
  br label %93

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 8
  %67 = load i32, ptr %66, align 8, !tbaa !108
  %68 = icmp eq i32 %67, 1
  %69 = load ptr, ptr %17, align 8, !tbaa !96
  br i1 %68, label %70, label %93

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !92
  %73 = getelementptr inbounds %struct.MaskSpline, ptr %72, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load float, ptr %5, align 4, !tbaa !34
  %78 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  store float %79, ptr %5, align 4, !tbaa !34
  %80 = fneg float %77
  store float %80, ptr %78, align 4, !tbaa !34
  br label %93

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.MaskSpline, ptr %72, i64 0, i32 5
  %83 = load i32, ptr %82, align 4, !tbaa !45
  %84 = sext i32 %83 to i64
  %85 = getelementptr %struct.MaskSplinePoint, ptr %74, i64 %84
  %86 = getelementptr %struct.MaskSplinePoint, ptr %85, i64 -1
  %87 = icmp eq ptr %69, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load float, ptr %5, align 4, !tbaa !34
  %90 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !34
  store float %91, ptr %5, align 4, !tbaa !34
  %92 = fneg float %89
  store float %92, ptr %90, align 4, !tbaa !34
  call fastcc void @negate_v2(ptr noundef nonnull %5) #17
  br label %93

93:                                               ; preds = %61, %76, %81, %88, %65
  %94 = phi i32 [ %64, %61 ], [ 1, %76 ], [ 1, %81 ], [ 1, %88 ], [ %67, %65 ]
  %95 = phi ptr [ %62, %61 ], [ %69, %76 ], [ %69, %81 ], [ %69, %88 ], [ %69, %65 ]
  %96 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 22
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %96, ptr noundef nonnull %5) #17
  %97 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 8
  %98 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 13
  %99 = load i8, ptr %98, align 4, !tbaa !105
  %100 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 21
  %101 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 18
  call void @BKE_mask_point_set_handle(ptr noundef %95, i32 noundef %94, ptr noundef nonnull %6, i8 noundef zeroext %99, ptr noundef nonnull %100, ptr noundef nonnull %101) #15
  %102 = load ptr, ptr %17, align 8, !tbaa !96
  %103 = load i32, ptr %97, align 8, !tbaa !108
  call void @BKE_mask_point_handle(ptr noundef %102, i32 noundef %103, ptr noundef nonnull %96) #15
  %104 = load i8, ptr %58, align 8, !tbaa !107
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %93
  %107 = load i32, ptr %97, align 8, !tbaa !108
  %108 = and i32 %107, -2
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load ptr, ptr %17, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %112 = icmp eq i32 %107, 2
  %113 = getelementptr inbounds [3 x [3 x float]], ptr %111, i64 0, i64 1
  %114 = select i1 %112, i64 0, i64 2
  %115 = getelementptr inbounds [3 x [3 x float]], ptr %111, i64 0, i64 %114
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %113, ptr noundef %115) #17
  %116 = select i1 %112, i64 2, i64 0
  %117 = getelementptr inbounds [3 x [3 x float]], ptr %111, i64 0, i64 %116
  call fastcc void @add_v2_v2v2(ptr noundef %117, ptr noundef nonnull %113, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %118

118:                                              ; preds = %106, %110, %93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %264

119:                                              ; preds = %54
  call fastcc void @add_v2_v2(ptr noundef %18, ptr noundef nonnull %5) #17
  %120 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1
  call fastcc void @add_v2_v2(ptr noundef nonnull %120, ptr noundef nonnull %5) #17
  %121 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2
  call fastcc void @add_v2_v2(ptr noundef nonnull %121, ptr noundef nonnull %5) #17
  br label %264

122:                                              ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %123 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 16
  %124 = load i8, ptr %123, align 1, !tbaa !104
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 15
  %128 = load i8, ptr %127, align 2, !tbaa !109
  %129 = icmp eq i8 %128, 0
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ false, %122 ], [ %129, %126 ]
  %132 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 23
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %132, ptr noundef nonnull %5) #17
  %133 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !110
  %135 = icmp eq ptr %134, null
  br i1 %135, label %171, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !92
  %139 = load ptr, ptr %17, align 8, !tbaa !96
  %140 = load float, ptr %134, align 4, !tbaa !111
  %141 = call float @BKE_mask_spline_project_co(ptr noundef %138, ptr noundef %139, float noundef %140, ptr noundef nonnull %12, i32 noundef -1) #15
  %142 = load ptr, ptr %137, align 8, !tbaa !92
  %143 = load ptr, ptr %17, align 8, !tbaa !96
  %144 = load ptr, ptr %133, align 8, !tbaa !110
  %145 = load float, ptr %144, align 4, !tbaa !111
  %146 = call float @BKE_mask_spline_project_co(ptr noundef %142, ptr noundef %143, float noundef %145, ptr noundef nonnull %12, i32 noundef 1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  %147 = fcmp ogt float %141, 0.000000e+00
  %148 = fcmp olt float %141, 1.000000e+00
  %149 = and i1 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %136
  %151 = load ptr, ptr %137, align 8, !tbaa !92
  %152 = load ptr, ptr %17, align 8, !tbaa !96
  call void @BKE_mask_point_segment_co(ptr noundef %151, ptr noundef %152, float noundef %141, ptr noundef nonnull %13) #15
  %153 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  br label %154

154:                                              ; preds = %150, %136
  %155 = phi float [ %153, %150 ], [ 0x47EFFFFFE0000000, %136 ]
  %156 = fcmp ogt float %146, 0.000000e+00
  %157 = fcmp olt float %146, 1.000000e+00
  %158 = and i1 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load ptr, ptr %137, align 8, !tbaa !92
  %161 = load ptr, ptr %17, align 8, !tbaa !96
  call void @BKE_mask_point_segment_co(ptr noundef %160, ptr noundef %161, float noundef %146, ptr noundef nonnull %14) #15
  %162 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %14) #17
  br label %163

163:                                              ; preds = %159, %154
  %164 = phi float [ %162, %159 ], [ 0x47EFFFFFE0000000, %154 ]
  %165 = fcmp olt float %155, %164
  %166 = select i1 %165, float %141, float %146
  %167 = fcmp ogt float %166, 0.000000e+00
  %168 = fcmp olt float %166, 1.000000e+00
  %169 = and i1 %167, %168
  br i1 %169, label %175, label %170

170:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %235

171:                                              ; preds = %130
  %172 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 2
  %173 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 12
  call fastcc void @copy_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %173) #17
  %174 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %174) #17
  br label %194

175:                                              ; preds = %163
  %176 = load ptr, ptr %133, align 8, !tbaa !110
  store float %166, ptr %176, align 4, !tbaa !111
  %177 = load ptr, ptr %17, align 8, !tbaa !96
  %178 = call ptr @BKE_mask_point_sort_uw(ptr noundef %177, ptr noundef nonnull %176) #15
  store ptr %178, ptr %133, align 8, !tbaa !110
  %179 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %137, align 8, !tbaa !92
  %181 = load ptr, ptr %17, align 8, !tbaa !96
  %182 = call float @BKE_mask_point_weight_scalar(ptr noundef %180, ptr noundef %181, float noundef %166) #15
  %183 = fcmp une float %182, 0.000000e+00
  %184 = fdiv float 1.000000e+00, %182
  %185 = select i1 %183, float %184, float %182
  %186 = load ptr, ptr %137, align 8, !tbaa !92
  %187 = load ptr, ptr %17, align 8, !tbaa !96
  %188 = load ptr, ptr %133, align 8, !tbaa !110
  %189 = load float, ptr %188, align 4, !tbaa !111
  call void @BKE_mask_point_normal(ptr noundef %186, ptr noundef %187, float noundef %189, ptr noundef nonnull %9) #15
  %190 = load ptr, ptr %137, align 8, !tbaa !92
  %191 = load ptr, ptr %17, align 8, !tbaa !96
  %192 = load ptr, ptr %133, align 8, !tbaa !110
  %193 = load float, ptr %192, align 4, !tbaa !111
  call void @BKE_mask_point_segment_co(ptr noundef %190, ptr noundef %191, float noundef %193, ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %194

194:                                              ; preds = %175, %171
  %195 = phi ptr [ %172, %171 ], [ %179, %175 ]
  %196 = phi float [ 1.000000e+00, %171 ], [ %185, %175 ]
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %10) #17
  call void @project_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %9) #15
  %197 = call fastcc float @len_v2(ptr noundef nonnull %8) #17
  %198 = call fastcc float @dot_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %8) #17
  %199 = fcmp ugt float %198, 0.000000e+00
  br i1 %131, label %223, label %200

200:                                              ; preds = %194
  %201 = fneg float %197
  %202 = select i1 %199, float %197, float %201
  %203 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 24
  %204 = load float, ptr %203, align 4, !tbaa !113
  %205 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 25
  %206 = load float, ptr %205, align 8, !tbaa !114
  %207 = fneg float %204
  %208 = call float @llvm.fmuladd.f32(float %207, float %206, float %202)
  %209 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 5
  %210 = load ptr, ptr %209, align 8, !tbaa !115
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %200
  store float %204, ptr %195, align 4, !tbaa !34
  %213 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 4
  %214 = load ptr, ptr %213, align 8, !tbaa !92
  %215 = call ptr @BKE_mask_spline_copy(ptr noundef %214) #15
  store ptr %215, ptr %209, align 8, !tbaa !115
  br label %216

216:                                              ; preds = %212, %200
  %217 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 15
  %218 = load i8, ptr %217, align 2, !tbaa !109
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = fmul float %196, %202
  store float %221, ptr %195, align 4, !tbaa !34
  br label %222

222:                                              ; preds = %220, %216
  call fastcc void @slide_point_delta_all_feather(ptr noundef nonnull %16, float noundef %208) #17
  br label %234

223:                                              ; preds = %194
  %224 = select i1 %199, float %197, float 0.000000e+00
  %225 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 5
  %226 = load ptr, ptr %225, align 8, !tbaa !115
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  call fastcc void @slide_point_restore_spline(ptr noundef nonnull %16) #17
  %229 = load ptr, ptr %225, align 8, !tbaa !115
  call void @BKE_mask_spline_free(ptr noundef %229) #15
  store ptr null, ptr %225, align 8, !tbaa !115
  br label %230

230:                                              ; preds = %228, %223
  %231 = fcmp une float %196, 0.000000e+00
  br i1 %231, label %232, label %234

232:                                              ; preds = %230
  %233 = fmul float %196, %224
  store float %233, ptr %195, align 4, !tbaa !34
  br label %234

234:                                              ; preds = %230, %232, %222
  call fastcc void @copy_v2_v2(ptr noundef nonnull %132, ptr noundef nonnull %12) #17
  br label %235

235:                                              ; preds = %170, %234
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %264

236:                                              ; preds = %54
  %237 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 5
  %238 = load ptr, ptr %237, align 8, !tbaa !115
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 4
  %242 = load ptr, ptr %241, align 8, !tbaa !92
  %243 = call ptr @BKE_mask_spline_copy(ptr noundef %242) #15
  store ptr %243, ptr %237, align 8, !tbaa !115
  br label %244

244:                                              ; preds = %240, %236
  %245 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 4
  %246 = load ptr, ptr %245, align 8, !tbaa !92
  %247 = getelementptr inbounds %struct.MaskSpline, ptr %246, i64 0, i32 5
  %248 = load i32, ptr %247, align 4, !tbaa !45
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %244, %250
  %251 = phi i64 [ %258, %250 ], [ 0, %244 ]
  %252 = phi ptr [ %259, %250 ], [ %246, %244 ]
  %253 = getelementptr inbounds %struct.MaskSpline, ptr %252, i64 0, i32 6
  %254 = load ptr, ptr %253, align 8, !tbaa !50
  %255 = getelementptr inbounds %struct.MaskSplinePoint, ptr %254, i64 %251
  call fastcc void @add_v2_v2(ptr noundef %255, ptr noundef nonnull %5) #17
  %256 = getelementptr inbounds [3 x [3 x float]], ptr %255, i64 0, i64 1
  call fastcc void @add_v2_v2(ptr noundef nonnull %256, ptr noundef nonnull %5) #17
  %257 = getelementptr inbounds [3 x [3 x float]], ptr %255, i64 0, i64 2
  call fastcc void @add_v2_v2(ptr noundef nonnull %257, ptr noundef nonnull %5) #17
  %258 = add nuw nsw i64 %251, 1
  %259 = load ptr, ptr %245, align 8, !tbaa !92
  %260 = getelementptr inbounds %struct.MaskSpline, ptr %259, i64 0, i32 5
  %261 = load i32, ptr %260, align 4, !tbaa !45
  %262 = sext i32 %261 to i64
  %263 = icmp slt i64 %258, %262
  br i1 %263, label %250, label %264, !llvm.loop !116

264:                                              ; preds = %250, %244, %54, %119, %235, %118
  %265 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !117
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %266) #15
  %267 = load ptr, ptr %265, align 8, !tbaa !117
  call void @DAG_id_tag_update(ptr noundef %267, i16 noundef signext 0) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %331

268:                                              ; preds = %3, %3
  %269 = load i16, ptr %16, align 8, !tbaa !118
  %270 = icmp eq i16 %20, %269
  %271 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %272 = load i16, ptr %271, align 2, !tbaa !103
  br i1 %270, label %273, label %324

273:                                              ; preds = %268
  %274 = icmp eq i16 %272, 2
  br i1 %274, label %275, label %331

275:                                              ; preds = %273
  %276 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %277 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 1
  %278 = load i32, ptr %277, align 4, !tbaa !102
  %279 = icmp eq i32 %278, 3
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 7
  %282 = load ptr, ptr %281, align 8, !tbaa !110
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %302

284:                                              ; preds = %275, %280
  %285 = icmp eq ptr %276, null
  br i1 %285, label %293, label %286

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.Scene, ptr %276, i64 0, i32 20
  %288 = load ptr, ptr %287, align 8, !tbaa !119
  %289 = getelementptr inbounds %struct.ToolSettings, ptr %288, i64 0, i32 21
  %290 = load i16, ptr %289, align 8, !tbaa !138
  %291 = and i16 %290, 1
  %292 = icmp eq i16 %291, 0
  br i1 %292, label %302, label %297

293:                                              ; preds = %284
  %294 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !145
  %295 = and i16 %294, 1
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %293, %286
  %298 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !94
  %300 = getelementptr inbounds %struct.Scene, ptr %276, i64 0, i32 22, i32 5
  %301 = load i32, ptr %300, align 8, !tbaa !149
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef %299, i32 noundef %301) #15
  br label %302

302:                                              ; preds = %286, %293, %297, %280
  %303 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 17
  %304 = load i8, ptr %303, align 8, !tbaa !107
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %319, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %17, align 8, !tbaa !96
  %308 = getelementptr inbounds [3 x [3 x float]], ptr %307, i64 0, i64 1
  %309 = tail call fastcc float @len_squared_v2v2(ptr noundef %307, ptr noundef nonnull %308) #17
  %310 = fcmp olt float %309, 0x3E80000000000000
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.BezTriple, ptr %307, i64 0, i32 5
  store i8 2, ptr %312, align 1, !tbaa !51
  br label %313

313:                                              ; preds = %311, %306
  %314 = getelementptr inbounds [3 x [3 x float]], ptr %307, i64 0, i64 2
  %315 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %314, ptr noundef nonnull %308) #17
  %316 = fcmp olt float %315, 0x3E80000000000000
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.BezTriple, ptr %307, i64 0, i32 6
  store i8 2, ptr %318, align 2, !tbaa !53
  br label %319

319:                                              ; preds = %313, %317, %302
  %320 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !117
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %321) #15
  %322 = load ptr, ptr %320, align 8, !tbaa !117
  tail call void @DAG_id_tag_update(ptr noundef %322, i16 noundef signext 0) #15
  %323 = load ptr, ptr %15, align 8, !tbaa !91
  tail call fastcc void @free_slide_point_data(ptr noundef %323) #17
  br label %331

324:                                              ; preds = %268
  %325 = icmp eq i16 %272, 1
  br i1 %325, label %326, label %331

326:                                              ; preds = %324, %3
  tail call fastcc void @cancel_slide_point(ptr noundef nonnull %16) #17
  %327 = getelementptr inbounds %struct.SlidePointData, ptr %16, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !117
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %328) #15
  %329 = load ptr, ptr %327, align 8, !tbaa !117
  tail call void @DAG_id_tag_update(ptr noundef %329, i16 noundef signext 0) #15
  %330 = load ptr, ptr %15, align 8, !tbaa !91
  tail call fastcc void @free_slide_point_data(ptr noundef %330) #17
  br label %331

331:                                              ; preds = %273, %264, %3, %324, %326, %319
  %332 = phi i32 [ 2, %326 ], [ 4, %319 ], [ 1, %324 ], [ 1, %3 ], [ 1, %264 ], [ 1, %273 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %332
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_slide_spline_curvature(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @slide_spline_curvature_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @slide_spline_curvature_modal, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_mask, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @slide_spline_curvature_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !150 {
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @slide_spline_curvature_check(ptr noundef %0, ptr noundef %2) #17, !range !151
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @slide_spline_curvature_customdata(ptr noundef %0, ptr noundef %2) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %10, ptr %13, align 8, !tbaa !91
  %14 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef nonnull %4) #15
  br label %15

15:                                               ; preds = %9, %6, %3, %12
  %16 = phi i32 [ 1, %12 ], [ 2, %3 ], [ 8, %6 ], [ 8, %9 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @slide_spline_curvature_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !152 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 5
  %15 = load float, ptr %14, align 8, !tbaa !153
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !99
  switch i16 %17, label %203 [
    i16 217, label %18
    i16 216, label %18
    i16 212, label %18
    i16 215, label %18
    i16 4, label %81
    i16 1, label %169
    i16 3, label %169
    i16 218, label %198
  ]

18:                                               ; preds = %3, %3, %3, %3
  %19 = and i16 %17, -2
  %20 = icmp eq i16 %19, 216
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !103
  %24 = icmp eq i16 %23, 1
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 6
  store i8 %25, ptr %26, align 4, !tbaa !155
  br label %27

27:                                               ; preds = %18, %21
  switch i16 %17, label %81 [
    i16 212, label %28
    i16 215, label %28
  ]

28:                                               ; preds = %27, %27
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %30 = load i16, ptr %29, align 2, !tbaa !103
  switch i16 %30, label %65 [
    i16 1, label %31
    i16 2, label %48
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !156
  %34 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 6
  store i8 0, ptr %34, align 2, !tbaa !53
  %35 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 5
  store i8 0, ptr %35, align 1, !tbaa !51
  %36 = fcmp ogt float %15, 0x3FC99999A0000000
  %37 = fcmp olt float %15, 5.000000e-01
  %38 = and i1 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = fcmp oge float %15, 5.000000e-01
  %41 = fcmp olt float %15, 0x3FE99999A0000000
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39, %31
  %44 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !157
  %46 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 6
  store i8 0, ptr %46, align 2, !tbaa !53
  %47 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 5
  store i8 0, ptr %47, align 1, !tbaa !51
  br label %65

48:                                               ; preds = %28
  %49 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 9, i32 5
  %50 = load i8, ptr %49, align 1, !tbaa !158
  %51 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !156
  %53 = getelementptr inbounds %struct.BezTriple, ptr %52, i64 0, i32 5
  store i8 %50, ptr %53, align 1, !tbaa !51
  %54 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 9, i32 6
  %55 = load i8, ptr %54, align 2, !tbaa !159
  %56 = getelementptr inbounds %struct.BezTriple, ptr %52, i64 0, i32 6
  store i8 %55, ptr %56, align 2, !tbaa !53
  %57 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 10, i32 5
  %58 = load i8, ptr %57, align 1, !tbaa !160
  %59 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !157
  %61 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 0, i32 5
  store i8 %58, ptr %61, align 1, !tbaa !51
  %62 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 10, i32 6
  %63 = load i8, ptr %62, align 2, !tbaa !161
  %64 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 0, i32 6
  store i8 %63, ptr %64, align 2, !tbaa !53
  br label %65

65:                                               ; preds = %28, %48, %39, %43
  %66 = fcmp olt float %15, 5.000000e-01
  %67 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !156
  br i1 %66, label %69, label %75

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 9
  tail call fastcc void @copy_v2_v2(ptr noundef %68, ptr noundef nonnull %70) #17
  %71 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !157
  %73 = getelementptr inbounds [3 x [3 x float]], ptr %72, i64 0, i64 2
  %74 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 10, i32 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %73, ptr noundef nonnull %74) #17
  br label %81

75:                                               ; preds = %65
  %76 = getelementptr inbounds [3 x [3 x float]], ptr %68, i64 0, i64 2
  %77 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 9, i32 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %76, ptr noundef nonnull %77) #17
  %78 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !157
  %80 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 10
  tail call fastcc void @copy_v2_v2(ptr noundef %79, ptr noundef nonnull %80) #17
  br label %81

81:                                               ; preds = %27, %75, %69, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %82 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %83 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %84 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %82, ptr noundef %83, ptr noundef nonnull %84, ptr noundef nonnull %5) #15
  %85 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 11
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %85) #17
  %86 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 6
  %87 = load i8, ptr %86, align 4, !tbaa !155
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  call fastcc void @mul_v2_fl(ptr noundef nonnull %6) #17
  br label %90

90:                                               ; preds = %89, %81
  %91 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 12
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %91, ptr noundef nonnull %6) #17
  call fastcc void @copy_v2_v2(ptr noundef nonnull %91, ptr noundef nonnull %4) #17
  call fastcc void @copy_v2_v2(ptr noundef nonnull %85, ptr noundef nonnull %5) #17
  %92 = fcmp olt float %15, 5.000000e-01
  br i1 %92, label %93, label %129

93:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %94 = fcmp ule float %15, 0x3FC99999A0000000
  br i1 %94, label %95, label %102

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 13
  %97 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 15
  %98 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 16
  %99 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !156
  %101 = getelementptr inbounds [3 x [3 x float]], ptr %100, i64 0, i64 2
  call fastcc void @slide_spline_solve_P1(float noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %96, ptr noundef nonnull %97, ptr noundef nonnull %98, ptr noundef nonnull %101) #17
  br label %128

102:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %103 = fadd float %15, 0xBFC99999A0000000
  %104 = fmul float %103, 5.000000e-01
  %105 = fdiv float %104, 0x3FD3333340000000
  %106 = fmul float %105, 3.000000e+00
  %107 = fmul float %105, -2.000000e+00
  %108 = fmul float %105, %107
  %109 = fmul float %105, %108
  %110 = call float @llvm.fmuladd.f32(float %106, float %105, float %109)
  %111 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 13
  %112 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 14
  %113 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 16
  call fastcc void @slide_spline_solve_P2(float noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %111, ptr noundef nonnull %112, ptr noundef nonnull %113, ptr noundef nonnull %8) #17
  %114 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 15
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %114) #17
  call void @interp_v2_v2v2(ptr noundef nonnull %114, ptr noundef nonnull %114, ptr noundef nonnull %8, float noundef %110) #15
  %115 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 8
  %116 = load ptr, ptr %115, align 8, !tbaa !157
  call fastcc void @copy_v2_v2(ptr noundef %116, ptr noundef nonnull %114) #17
  %117 = fcmp ogt float %110, 0.000000e+00
  br i1 %117, label %118, label %124

118:                                              ; preds = %102
  %119 = load ptr, ptr %115, align 8, !tbaa !157
  %120 = getelementptr inbounds %struct.BezTriple, ptr %119, i64 0, i32 5
  %121 = load i8, ptr %120, align 1, !tbaa !51
  %122 = icmp ult i8 %121, 3
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i8 0, ptr %120, align 1, !tbaa !51
  br label %124

124:                                              ; preds = %118, %123, %102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  %125 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !156
  %127 = getelementptr inbounds [3 x [3 x float]], ptr %126, i64 0, i64 2
  call fastcc void @slide_spline_solve_P1(float noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %111, ptr noundef nonnull %114, ptr noundef nonnull %113, ptr noundef nonnull %127) #17
  call fastcc void @copy_v2_v2(ptr noundef nonnull %114, ptr noundef nonnull %7) #17
  br label %128

128:                                              ; preds = %95, %124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %165

129:                                              ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %130 = fcmp uge float %15, 0x3FE99999A0000000
  br i1 %130, label %131, label %137

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 13
  %133 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 14
  %134 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 16
  %135 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 7
  %136 = load ptr, ptr %135, align 8, !tbaa !156
  call fastcc void @slide_spline_solve_P2(float noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %132, ptr noundef nonnull %133, ptr noundef nonnull %134, ptr noundef %136) #17
  br label %164

137:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %138 = fsub float 1.000000e+00, %15
  %139 = fadd float %138, 0xBFC99999A0000000
  %140 = fmul float %139, 5.000000e-01
  %141 = fdiv float %140, 0x3FD3333340000000
  %142 = fmul float %141, 3.000000e+00
  %143 = fmul float %141, -2.000000e+00
  %144 = fmul float %141, %143
  %145 = fmul float %141, %144
  %146 = call float @llvm.fmuladd.f32(float %142, float %141, float %145)
  %147 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 13
  %148 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 15
  %149 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 16
  call fastcc void @slide_spline_solve_P1(float noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %147, ptr noundef nonnull %148, ptr noundef nonnull %149, ptr noundef nonnull %10) #17
  %150 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 14
  call fastcc void @copy_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %150) #17
  call void @interp_v2_v2v2(ptr noundef nonnull %150, ptr noundef nonnull %150, ptr noundef nonnull %10, float noundef %146) #15
  %151 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 8
  %152 = load ptr, ptr %151, align 8, !tbaa !157
  %153 = getelementptr inbounds [3 x [3 x float]], ptr %152, i64 0, i64 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %153, ptr noundef nonnull %150) #17
  %154 = fcmp ogt float %146, 0.000000e+00
  br i1 %154, label %155, label %161

155:                                              ; preds = %137
  %156 = load ptr, ptr %151, align 8, !tbaa !157
  %157 = getelementptr inbounds %struct.BezTriple, ptr %156, i64 0, i32 6
  %158 = load i8, ptr %157, align 2, !tbaa !53
  %159 = icmp ult i8 %158, 3
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i8 0, ptr %157, align 2, !tbaa !53
  br label %161

161:                                              ; preds = %155, %160, %137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  %162 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 7
  %163 = load ptr, ptr %162, align 8, !tbaa !156
  call fastcc void @slide_spline_solve_P2(float noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %147, ptr noundef nonnull %150, ptr noundef nonnull %149, ptr noundef %163) #17
  call fastcc void @copy_v2_v2(ptr noundef nonnull %150, ptr noundef nonnull %9) #17
  br label %164

164:                                              ; preds = %131, %161
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %165

165:                                              ; preds = %164, %128
  %166 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !162
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %167) #15
  %168 = load ptr, ptr %166, align 8, !tbaa !162
  call void @DAG_id_tag_update(ptr noundef %168, i16 noundef signext 0) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %203

169:                                              ; preds = %3, %3
  %170 = load i16, ptr %13, align 8, !tbaa !163
  %171 = icmp eq i16 %17, %170
  br i1 %171, label %172, label %203

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %174 = load i16, ptr %173, align 2, !tbaa !103
  %175 = icmp eq i16 %174, 2
  br i1 %175, label %176, label %203

176:                                              ; preds = %172
  %177 = icmp eq ptr %11, null
  br i1 %177, label %185, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 20
  %180 = load ptr, ptr %179, align 8, !tbaa !119
  %181 = getelementptr inbounds %struct.ToolSettings, ptr %180, i64 0, i32 21
  %182 = load i16, ptr %181, align 8, !tbaa !138
  %183 = and i16 %182, 1
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %194, label %189

185:                                              ; preds = %176
  %186 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !145
  %187 = and i16 %186, 1
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %185, %178
  %190 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !164
  %192 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 5
  %193 = load i32, ptr %192, align 8, !tbaa !149
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef %191, i32 noundef %193) #15
  br label %194

194:                                              ; preds = %189, %185, %178
  %195 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !162
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %196) #15
  %197 = load ptr, ptr %195, align 8, !tbaa !162
  tail call void @DAG_id_tag_update(ptr noundef %197, i16 noundef signext 0) #15
  tail call fastcc void @free_slide_spline_curvature_data(ptr noundef nonnull %13) #17
  br label %203

198:                                              ; preds = %3
  tail call fastcc void @cancel_slide_spline_curvature(ptr noundef nonnull %13) #17
  %199 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %13, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !162
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %200) #15
  %201 = load ptr, ptr %199, align 8, !tbaa !162
  tail call void @DAG_id_tag_update(ptr noundef %201, i16 noundef signext 0) #15
  %202 = load ptr, ptr %12, align 8, !tbaa !91
  tail call fastcc void @free_slide_spline_curvature_data(ptr noundef %202) #17
  br label %203

203:                                              ; preds = %165, %3, %172, %169, %198, %194
  %204 = phi i32 [ 2, %198 ], [ 4, %194 ], [ 1, %169 ], [ 1, %172 ], [ 1, %3 ], [ 1, %165 ]
  ret i32 %204
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_cyclic_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cyclic_toggle_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cyclic_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !165 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
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
  %19 = tail call zeroext i8 @ED_mask_spline_select_check(ptr noundef nonnull %18) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.MaskSpline, ptr %18, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !166
  %24 = xor i16 %23, 2
  store i16 %24, ptr %22, align 8, !tbaa !166
  br label %25

25:                                               ; preds = %17, %21
  %26 = load ptr, ptr %18, align 8, !tbaa !38
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !167

28:                                               ; preds = %25, %13, %7
  %29 = load ptr, ptr %8, align 8, !tbaa !38
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !168

31:                                               ; preds = %28, %2
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_exec, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !75
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !169 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %124, label %8

8:                                                ; preds = %2, %114
  %9 = phi ptr [ %116, %114 ], [ %6, %2 ]
  %10 = phi i8 [ %115, %114 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 13
  %12 = load i8, ptr %11, align 1, !tbaa !40
  %13 = and i8 %12, 3
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %114

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !170
  %18 = icmp eq ptr %17, null
  br i1 %18, label %109, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 6
  %21 = getelementptr inbounds %struct.MaskLayer, ptr %9, i64 0, i32 5
  br label %22

22:                                               ; preds = %19, %106
  %23 = phi ptr [ %17, %19 ], [ %27, %106 ]
  %24 = phi i32 [ 0, %19 ], [ %107, %106 ]
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %23, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !45
  %27 = load ptr, ptr %23, align 8, !tbaa !171
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.MaskSpline, ptr %23, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = zext nneg i32 %26 to i64
  br label %33

33:                                               ; preds = %29, %33
  %34 = phi i64 [ 0, %29 ], [ %49, %33 ]
  %35 = phi i32 [ 0, %29 ], [ %48, %33 ]
  %36 = getelementptr inbounds %struct.MaskSplinePoint, ptr %31, i64 %34
  %37 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !172
  %39 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 8
  %40 = load i8, ptr %39, align 4, !tbaa !173
  %41 = or i8 %40, %38
  %42 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 9
  %43 = load i8, ptr %42, align 1, !tbaa !174
  %44 = or i8 %41, %43
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = zext nneg i8 %46 to i32
  %48 = add i32 %35, %47
  %49 = add nuw nsw i64 %34, 1
  %50 = icmp eq i64 %49, %32
  br i1 %50, label %51, label %33, !llvm.loop !175

51:                                               ; preds = %33
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %22, %51
  tail call void @BLI_remlink(ptr noundef nonnull %16, ptr noundef nonnull %23) #15
  tail call void @BKE_mask_spline_free(ptr noundef nonnull %23) #15
  %54 = load ptr, ptr %21, align 8, !tbaa !95
  %55 = icmp eq ptr %23, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %57

57:                                               ; preds = %56, %53
  tail call void @BKE_mask_layer_shape_changed_remove(ptr noundef nonnull %9, i32 noundef %24, i32 noundef %26) #15
  br label %106

58:                                               ; preds = %51
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %60 = sext i32 %48 to i64
  %61 = mul nsw i64 %60, 272
  %62 = tail call ptr %59(i64 noundef %61, ptr noundef nonnull @.str.87) #15
  br i1 %28, label %63, label %100

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.MaskSpline, ptr %23, i64 0, i32 6
  %65 = zext nneg i32 %26 to i64
  br label %66

66:                                               ; preds = %63, %96
  %67 = phi i64 [ 0, %63 ], [ %98, %96 ]
  %68 = phi i32 [ 0, %63 ], [ %97, %96 ]
  %69 = load ptr, ptr %64, align 8, !tbaa !50
  %70 = getelementptr inbounds %struct.MaskSplinePoint, ptr %69, i64 %67
  %71 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 7
  %72 = load i8, ptr %71, align 1, !tbaa !172
  %73 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 8
  %74 = load i8, ptr %73, align 4, !tbaa !173
  %75 = or i8 %74, %72
  %76 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 9
  %77 = load i8, ptr %76, align 1, !tbaa !174
  %78 = or i8 %75, %77
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  %81 = load ptr, ptr %20, align 8, !tbaa !97
  %82 = icmp eq ptr %70, %81
  br i1 %80, label %83, label %90

83:                                               ; preds = %66
  %84 = sext i32 %68 to i64
  br i1 %82, label %85, label %87

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %84
  store ptr %86, ptr %20, align 8, !tbaa !97
  br label %87

87:                                               ; preds = %83, %85
  tail call fastcc void @delete_feather_points(ptr noundef nonnull %70) #17
  %88 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %88, ptr noundef nonnull align 8 dereferenceable(272) %70, i64 272, i1 false), !tbaa.struct !176
  %89 = add nsw i32 %68, 1
  br label %96

90:                                               ; preds = %66
  br i1 %82, label %91, label %92

91:                                               ; preds = %90
  store ptr null, ptr %20, align 8, !tbaa !97
  br label %92

92:                                               ; preds = %91, %90
  tail call void @BKE_mask_point_free(ptr noundef nonnull %70) #15
  %93 = load i32, ptr %25, align 4, !tbaa !45
  %94 = add nsw i32 %93, -1
  store i32 %94, ptr %25, align 4, !tbaa !45
  %95 = add nsw i32 %68, %24
  tail call void @BKE_mask_layer_shape_changed_remove(ptr noundef nonnull %9, i32 noundef %95, i32 noundef 1) #15
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi i32 [ %68, %92 ], [ %89, %87 ]
  %98 = add nuw nsw i64 %67, 1
  %99 = icmp eq i64 %98, %65
  br i1 %99, label %100, label %66, !llvm.loop !178

100:                                              ; preds = %96, %58
  %101 = load i32, ptr %25, align 4, !tbaa !45
  %102 = add nsw i32 %101, %24
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %104 = getelementptr inbounds %struct.MaskSpline, ptr %23, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !50
  tail call void %103(ptr noundef %105) #15
  store ptr %62, ptr %104, align 8, !tbaa !50
  tail call void @ED_mask_select_flush_all(ptr noundef %4) #15
  br label %106

106:                                              ; preds = %100, %57
  %107 = phi i32 [ %24, %57 ], [ %102, %100 ]
  %108 = icmp eq ptr %27, null
  br i1 %108, label %109, label %22, !llvm.loop !179

109:                                              ; preds = %106, %15
  %110 = phi i8 [ %10, %15 ], [ 1, %106 ]
  %111 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %16) #17, !range !151
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void @BKE_mask_layer_free_shapes(ptr noundef nonnull %9) #15
  br label %114

114:                                              ; preds = %109, %113, %8
  %115 = phi i8 [ %10, %8 ], [ %110, %113 ], [ %110, %109 ]
  %116 = load ptr, ptr %9, align 8, !tbaa !38
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %8, !llvm.loop !180

118:                                              ; preds = %114
  %119 = icmp eq i8 %115, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %122 = load i32, ptr %121, align 8, !tbaa !149
  %123 = sitofp i32 %122 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %123) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #15
  br label %124

124:                                              ; preds = %2, %118, %120
  %125 = phi i32 [ 4, %120 ], [ 2, %118 ], [ 2, %2 ]
  ret i32 %125
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_switch_direction(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_switch_direction_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_switch_direction_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !181 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %3, null
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  br label %12

12:                                               ; preds = %8, %50
  %13 = phi ptr [ %6, %8 ], [ %52, %50 ]
  %14 = phi i8 [ 0, %8 ], [ %51, %50 ]
  %15 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 13
  %16 = load i8, ptr %15, align 1, !tbaa !40
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %13, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %19, %30
  %24 = phi ptr [ %33, %30 ], [ %21, %19 ]
  %25 = phi i8 [ %32, %30 ], [ 0, %19 ]
  %26 = phi i8 [ %31, %30 ], [ %14, %19 ]
  %27 = tail call zeroext i8 @ED_mask_spline_select_check(ptr noundef nonnull %24) #15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void @BKE_mask_spline_direction_switch(ptr noundef nonnull %13, ptr noundef nonnull %24) #15
  br label %30

30:                                               ; preds = %23, %29
  %31 = phi i8 [ 1, %29 ], [ %26, %23 ]
  %32 = phi i8 [ 1, %29 ], [ %25, %23 ]
  %33 = load ptr, ptr %24, align 8, !tbaa !38
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23, !llvm.loop !182

35:                                               ; preds = %30
  %36 = icmp eq i8 %32, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %35
  br i1 %9, label %44, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %10, align 8, !tbaa !119
  %40 = getelementptr inbounds %struct.ToolSettings, ptr %39, i64 0, i32 21
  %41 = load i16, ptr %40, align 8, !tbaa !138
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %50, label %48

44:                                               ; preds = %37
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !145
  %46 = and i16 %45, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44, %38
  %49 = load i32, ptr %11, align 8, !tbaa !149
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef nonnull %13, i32 noundef %49) #15
  br label %50

50:                                               ; preds = %19, %35, %48, %44, %38, %12
  %51 = phi i8 [ %14, %12 ], [ %31, %38 ], [ %31, %44 ], [ %31, %48 ], [ %31, %35 ], [ %14, %19 ]
  %52 = load ptr, ptr %13, align 8, !tbaa !38
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %12, !llvm.loop !183

54:                                               ; preds = %50
  %55 = icmp eq i8 %51, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !149
  %59 = sitofp i32 %58 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %59) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #15
  br label %60

60:                                               ; preds = %2, %54, %56
  %61 = phi i32 [ 4, %56 ], [ 2, %54 ], [ 2, %2 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_normals_make_consistent(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_normals_make_consistent_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_normals_make_consistent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !184 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
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
  br i1 %22, label %78, label %28

23:                                               ; preds = %56, %28
  %24 = phi i8 [ %31, %28 ], [ %58, %56 ]
  %25 = phi i8 [ %30, %28 ], [ %59, %56 ]
  %26 = load ptr, ptr %29, align 8, !tbaa !38
  %27 = icmp eq ptr %26, null
  br i1 %27, label %63, label %28, !llvm.loop !185

28:                                               ; preds = %19, %23
  %29 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %30 = phi i8 [ %25, %23 ], [ 0, %19 ]
  %31 = phi i8 [ %24, %23 ], [ %14, %19 ]
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !45
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %23

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.MaskSpline, ptr %29, i64 0, i32 6
  br label %37

37:                                               ; preds = %35, %56
  %38 = phi i32 [ %33, %35 ], [ %57, %56 ]
  %39 = phi i64 [ 0, %35 ], [ %60, %56 ]
  %40 = phi i8 [ %30, %35 ], [ %59, %56 ]
  %41 = phi i8 [ %31, %35 ], [ %58, %56 ]
  %42 = load ptr, ptr %36, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct.MaskSplinePoint, ptr %42, i64 %39
  %44 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 7
  %45 = load i8, ptr %44, align 1, !tbaa !172
  %46 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 8
  %47 = load i8, ptr %46, align 4, !tbaa !173
  %48 = or i8 %47, %45
  %49 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 9
  %50 = load i8, ptr %49, align 1, !tbaa !174
  %51 = or i8 %48, %50
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %37
  tail call void @BKE_mask_calc_handle_point_auto(ptr noundef nonnull %29, ptr noundef nonnull %43, i8 noundef zeroext 0) #15
  %55 = load i32, ptr %32, align 4, !tbaa !45
  br label %56

56:                                               ; preds = %54, %37
  %57 = phi i32 [ %55, %54 ], [ %38, %37 ]
  %58 = phi i8 [ 1, %54 ], [ %41, %37 ]
  %59 = phi i8 [ 1, %54 ], [ %40, %37 ]
  %60 = add nuw nsw i64 %39, 1
  %61 = sext i32 %57 to i64
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %37, label %23, !llvm.loop !186

63:                                               ; preds = %23
  %64 = icmp eq i8 %25, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %63
  br i1 %9, label %72, label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr %10, align 8, !tbaa !119
  %68 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 21
  %69 = load i16, ptr %68, align 8, !tbaa !138
  %70 = and i16 %69, 1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %78, label %76

72:                                               ; preds = %65
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !145
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72, %66
  %77 = load i32, ptr %11, align 8, !tbaa !149
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef nonnull %13, i32 noundef %77) #15
  br label %78

78:                                               ; preds = %19, %63, %76, %72, %66, %12
  %79 = phi i8 [ %14, %12 ], [ %24, %66 ], [ %24, %72 ], [ %24, %76 ], [ %24, %63 ], [ %14, %19 ]
  %80 = load ptr, ptr %13, align 8, !tbaa !38
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %12, !llvm.loop !187

82:                                               ; preds = %78
  %83 = icmp eq i8 %79, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !149
  %87 = sitofp i32 %86 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %87) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358219776, ptr noundef %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #15
  br label %88

88:                                               ; preds = %2, %82, %84
  %89 = phi i32 [ 4, %84 ], [ 2, %82 ], [ 2, %2 ]
  ret i32 %89
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_handle_type_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_handle_type_exec, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef nonnull @MASK_OT_handle_type_set.editcurve_handle_type_items, i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #15
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !188
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_handle_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !189 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.51) #15
  %8 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %86, label %11

11:                                               ; preds = %2
  %12 = trunc i32 %7 to i8
  %13 = icmp eq i32 %7, 3
  br label %14

14:                                               ; preds = %11, %79
  %15 = phi ptr [ %9, %11 ], [ %81, %79 ]
  %16 = phi i8 [ 0, %11 ], [ %80, %79 ]
  %17 = getelementptr inbounds %struct.MaskLayer, ptr %15, i64 0, i32 13
  %18 = load i8, ptr %17, align 1, !tbaa !40
  %19 = and i8 %18, 3
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.MaskLayer, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = icmp eq ptr %23, null
  br i1 %24, label %79, label %29

25:                                               ; preds = %73, %29
  %26 = phi i8 [ %31, %29 ], [ %75, %73 ]
  %27 = load ptr, ptr %30, align 8, !tbaa !38
  %28 = icmp eq ptr %27, null
  br i1 %28, label %79, label %29, !llvm.loop !190

29:                                               ; preds = %21, %25
  %30 = phi ptr [ %27, %25 ], [ %23, %21 ]
  %31 = phi i8 [ %26, %25 ], [ %16, %21 ]
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !45
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %25

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.MaskSpline, ptr %30, i64 0, i32 6
  br label %37

37:                                               ; preds = %35, %73
  %38 = phi i32 [ %33, %35 ], [ %74, %73 ]
  %39 = phi i64 [ 0, %35 ], [ %76, %73 ]
  %40 = phi i8 [ %31, %35 ], [ %75, %73 ]
  %41 = load ptr, ptr %36, align 8, !tbaa !50
  %42 = getelementptr inbounds %struct.MaskSplinePoint, ptr %41, i64 %39
  %43 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 7
  %44 = load i8, ptr %43, align 1, !tbaa !191
  %45 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !192
  %47 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 9
  %48 = load i8, ptr %47, align 1, !tbaa !193
  %49 = or i8 %46, %44
  %50 = or i8 %49, %48
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %37
  %54 = and i8 %46, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 5
  store i8 %12, ptr %57, align 1, !tbaa !51
  br label %66

58:                                               ; preds = %53
  %59 = and i8 %44, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 5
  store i8 %12, ptr %62, align 1, !tbaa !51
  br label %63

63:                                               ; preds = %61, %58
  %64 = and i8 %48, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63, %56
  %67 = getelementptr inbounds %struct.BezTriple, ptr %42, i64 0, i32 6
  store i8 %12, ptr %67, align 2, !tbaa !53
  br label %68

68:                                               ; preds = %66, %63
  br i1 %13, label %69, label %73

69:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %42, ptr noundef nonnull %70) #17
  %71 = getelementptr inbounds [3 x [3 x float]], ptr %42, i64 0, i64 2
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %71, ptr noundef nonnull %70, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  %72 = load i32, ptr %32, align 4, !tbaa !45
  br label %73

73:                                               ; preds = %68, %69, %37
  %74 = phi i32 [ %38, %37 ], [ %72, %69 ], [ %38, %68 ]
  %75 = phi i8 [ %40, %37 ], [ 1, %69 ], [ 1, %68 ]
  %76 = add nuw nsw i64 %39, 1
  %77 = sext i32 %74 to i64
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %37, label %25, !llvm.loop !194

79:                                               ; preds = %25, %21, %14
  %80 = phi i8 [ %16, %14 ], [ %16, %21 ], [ %26, %25 ]
  %81 = load ptr, ptr %15, align 8, !tbaa !38
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %14, !llvm.loop !195

83:                                               ; preds = %79
  %84 = icmp eq i8 %80, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %83
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %4) #15
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #15
  br label %86

86:                                               ; preds = %2, %83, %85
  %87 = phi i32 [ 4, %85 ], [ 2, %83 ], [ 2, %2 ]
  ret i32 %87
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_hide_view_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_hide_view_clear_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_hide_view_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !196 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2, %19
  %8 = phi ptr [ %23, %19 ], [ %5, %2 ]
  %9 = phi i1 [ false, %19 ], [ true, %2 ]
  br label %10

10:                                               ; preds = %7, %16
  %11 = phi ptr [ %17, %16 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 13
  %13 = load i8, ptr %12, align 1, !tbaa !40
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !38
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %10, !llvm.loop !197

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 13
  tail call void @ED_mask_layer_select_set(ptr noundef nonnull %11, i8 noundef zeroext 1) #15
  %21 = load i8, ptr %20, align 1, !tbaa !40
  %22 = and i8 %21, -2
  store i8 %22, ptr %20, align 1, !tbaa !40
  %23 = load ptr, ptr %11, align 8, !tbaa !38
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %7, !llvm.loop !197

25:                                               ; preds = %16
  br i1 %9, label %27, label %26

26:                                               ; preds = %19, %25
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 353828864, ptr noundef %3) #15
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #15
  br label %27

27:                                               ; preds = %2, %25, %26
  %28 = phi i32 [ 4, %26 ], [ 2, %25 ], [ 2, %2 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_hide_view_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_hide_view_set_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_hide_view_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !198 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.60) #15
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
  %21 = tail call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %14) #15
  %22 = icmp eq i8 %21, 0
  br i1 %12, label %23, label %29

23:                                               ; preds = %20
  br i1 %22, label %36, label %24

24:                                               ; preds = %23
  tail call void @ED_mask_layer_select_set(ptr noundef nonnull %14, i8 noundef zeroext 0) #15
  %25 = load i8, ptr %16, align 1, !tbaa !40
  %26 = or i8 %25, 1
  store i8 %26, ptr %16, align 1, !tbaa !40
  %27 = tail call ptr @BKE_mask_layer_active(ptr noundef %3) #15
  %28 = icmp eq ptr %14, %27
  br i1 %28, label %35, label %36

29:                                               ; preds = %20
  br i1 %22, label %30, label %36

30:                                               ; preds = %29
  %31 = load i8, ptr %16, align 1, !tbaa !40
  %32 = or i8 %31, 1
  store i8 %32, ptr %16, align 1, !tbaa !40
  %33 = tail call ptr @BKE_mask_layer_active(ptr noundef %3) #15
  %34 = icmp eq ptr %14, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24
  tail call void @BKE_mask_layer_active_set(ptr noundef %3, ptr noundef null) #15
  br label %36

36:                                               ; preds = %35, %24, %23, %30, %29, %13
  %37 = phi i8 [ %15, %13 ], [ %15, %29 ], [ 1, %30 ], [ 1, %24 ], [ %15, %23 ], [ 1, %35 ]
  %38 = load ptr, ptr %14, align 8, !tbaa !38
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %13, !llvm.loop !199

40:                                               ; preds = %36
  %41 = icmp eq i8 %37, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 353828864, ptr noundef %3) #15
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #15
  br label %43

43:                                               ; preds = %2, %40, %42
  %44 = phi i32 [ 4, %42 ], [ 2, %40 ], [ 2, %2 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_feather_weight_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_feather_weight_clear_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_feather_weight_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !200 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
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
  br i1 %22, label %53, label %23, !llvm.loop !201

23:                                               ; preds = %15, %19
  %24 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %25 = phi i8 [ %20, %19 ], [ %10, %15 ]
  %26 = getelementptr inbounds %struct.MaskSpline, ptr %24, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !45
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %19

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.MaskSpline, ptr %24, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = zext nneg i32 %27 to i64
  br label %33

33:                                               ; preds = %29, %49
  %34 = phi i64 [ 0, %29 ], [ %51, %49 ]
  %35 = phi i8 [ %25, %29 ], [ %50, %49 ]
  %36 = getelementptr inbounds %struct.MaskSplinePoint, ptr %31, i64 %34
  %37 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !172
  %39 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 8
  %40 = load i8, ptr %39, align 4, !tbaa !173
  %41 = or i8 %40, %38
  %42 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 9
  %43 = load i8, ptr %42, align 1, !tbaa !174
  %44 = or i8 %41, %43
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 0, i32 2
  store float 0.000000e+00, ptr %48, align 4, !tbaa !202
  br label %49

49:                                               ; preds = %47, %33
  %50 = phi i8 [ 1, %47 ], [ %35, %33 ]
  %51 = add nuw nsw i64 %34, 1
  %52 = icmp eq i64 %51, %32
  br i1 %52, label %19, label %33, !llvm.loop !203

53:                                               ; preds = %19, %15, %8
  %54 = phi i8 [ %10, %8 ], [ %10, %15 ], [ %20, %19 ]
  %55 = load ptr, ptr %9, align 8, !tbaa !38
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %8, !llvm.loop !204

57:                                               ; preds = %53
  %58 = icmp eq i8 %54, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !149
  %62 = sitofp i32 %61 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %62) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 353828864, ptr noundef %4) #15
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #15
  br label %63

63:                                               ; preds = %2, %57, %59
  %64 = phi i32 [ 4, %59 ], [ 2, %57 ], [ 2, %2 ]
  ret i32 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_layer_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.70, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.72, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_layer_move_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @mask_layer_move_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.73, ptr noundef nonnull @MASK_OT_layer_move.direction_items, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_layer_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !205 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !86
  %7 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %6) #15
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.73) #15
  %11 = icmp eq ptr %7, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  switch i32 %10, label %25 [
    i32 -1, label %13
    i32 1, label %18
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #15
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull %7) #15
  br label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 8, !tbaa !207
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #15
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %7) #15
  br label %22

22:                                               ; preds = %17, %21
  %23 = load i32, ptr %5, align 8, !tbaa !86
  %24 = add nsw i32 %23, %10
  store i32 %24, ptr %5, align 8, !tbaa !86
  br label %25

25:                                               ; preds = %22, %12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef nonnull %3) #15
  br label %26

26:                                               ; preds = %18, %13, %2, %25
  %27 = phi i32 [ 4, %25 ], [ 2, %2 ], [ 2, %13 ], [ 2, %18 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mask_layer_move_poll(ptr noundef %0) #0 !PGOFuncName !208 {
  %2 = tail call i32 @ED_maskedit_mask_poll(ptr noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_duplicate(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.76, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.78, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_duplicate_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_duplicate_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !209 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Mask, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %161, label %12

8:                                                ; preds = %156, %12
  %9 = phi i32 [ %14, %12 ], [ %157, %156 ]
  %10 = load ptr, ptr %13, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %161, label %12, !llvm.loop !210

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

21:                                               ; preds = %18, %156
  %22 = phi ptr [ %16, %18 ], [ %159, %156 ]
  %23 = phi i32 [ %14, %18 ], [ %157, %156 ]
  %24 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 6
  %25 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !45
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %156

28:                                               ; preds = %21
  %29 = load ptr, ptr %24, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 2
  %31 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 3
  %32 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 4
  %33 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 7
  br label %34

34:                                               ; preds = %28, %150
  %35 = phi i32 [ %26, %28 ], [ %151, %150 ]
  %36 = phi i32 [ %23, %28 ], [ %152, %150 ]
  %37 = phi ptr [ %29, %28 ], [ %154, %150 ]
  %38 = phi i32 [ 0, %28 ], [ %153, %150 ]
  %39 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 7
  %40 = load i8, ptr %39, align 1, !tbaa !172
  %41 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 8
  %42 = load i8, ptr %41, align 4, !tbaa !173
  %43 = or i8 %42, %40
  %44 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 0, i32 9
  %45 = load i8, ptr %44, align 1, !tbaa !174
  %46 = or i8 %43, %45
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %34, %55
  %50 = phi ptr [ %57, %55 ], [ %37, %34 ]
  %51 = phi i32 [ %56, %55 ], [ %38, %34 ]
  tail call void @BKE_mask_point_select_set(ptr noundef nonnull %50, i8 noundef zeroext 0) #15
  %52 = load i32, ptr %25, align 4, !tbaa !45
  %53 = add nsw i32 %52, -1
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = add nsw i32 %51, 1
  %57 = getelementptr inbounds %struct.MaskSplinePoint, ptr %50, i64 1
  %58 = getelementptr inbounds %struct.MaskSplinePoint, ptr %50, i64 1, i32 0, i32 7
  %59 = load i8, ptr %58, align 1, !tbaa !172
  %60 = getelementptr inbounds %struct.MaskSplinePoint, ptr %50, i64 1, i32 0, i32 8
  %61 = load i8, ptr %60, align 4, !tbaa !173
  %62 = or i8 %61, %59
  %63 = getelementptr inbounds %struct.MaskSplinePoint, ptr %50, i64 1, i32 0, i32 9
  %64 = load i8, ptr %63, align 1, !tbaa !174
  %65 = or i8 %62, %64
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %49, !llvm.loop !211

68:                                               ; preds = %55, %49, %34
  %69 = phi i32 [ %35, %34 ], [ %52, %49 ], [ %52, %55 ]
  %70 = phi i32 [ %38, %34 ], [ %56, %55 ], [ %51, %49 ]
  %71 = phi ptr [ %37, %34 ], [ %57, %55 ], [ %50, %49 ]
  %72 = phi i32 [ -1, %34 ], [ %51, %49 ], [ %51, %55 ]
  %73 = icmp slt i32 %72, %38
  br i1 %73, label %150, label %74

74:                                               ; preds = %68
  %75 = tail call ptr @BKE_mask_spline_add(ptr noundef nonnull %13) #15
  %76 = getelementptr inbounds %struct.MaskSpline, ptr %75, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %80(ptr noundef nonnull %77) #15
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i16, ptr %30, align 8, !tbaa !166
  %83 = getelementptr inbounds %struct.MaskSpline, ptr %75, i64 0, i32 2
  store i16 %82, ptr %83, align 8, !tbaa !166
  %84 = load i8, ptr %31, align 2, !tbaa !212
  %85 = getelementptr inbounds %struct.MaskSpline, ptr %75, i64 0, i32 3
  store i8 %84, ptr %85, align 2, !tbaa !212
  %86 = load i8, ptr %32, align 1, !tbaa !213
  %87 = getelementptr inbounds %struct.MaskSpline, ptr %75, i64 0, i32 4
  store i8 %86, ptr %87, align 1, !tbaa !213
  %88 = getelementptr inbounds %struct.MaskSpline, ptr %75, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %88, ptr noundef nonnull align 8 dereferenceable(184) %33, i64 184, i1 false), !tbaa.struct !214
  %89 = sub nsw i32 %72, %38
  %90 = add nsw i32 %89, 1
  %91 = getelementptr inbounds %struct.MaskSpline, ptr %75, i64 0, i32 5
  store i32 %90, ptr %91, align 4, !tbaa !45
  %92 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %93 = sext i32 %90 to i64
  %94 = mul nsw i64 %93, 272
  %95 = tail call ptr %92(i64 noundef %94, ptr noundef nonnull @.str.89) #15
  store ptr %95, ptr %76, align 8, !tbaa !50
  %96 = load ptr, ptr %24, align 8, !tbaa !50
  %97 = sext i32 %38 to i64
  %98 = getelementptr inbounds %struct.MaskSplinePoint, ptr %96, i64 %97
  %99 = load i32, ptr %91, align 4, !tbaa !45
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %100, 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %95, ptr align 8 %98, i64 %101, i1 false)
  %102 = load i32, ptr %91, align 4, !tbaa !45
  %103 = load ptr, ptr %19, align 8, !tbaa !215
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %81
  store i32 0, ptr %91, align 4, !tbaa !45
  %106 = tail call i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef nonnull %13, ptr noundef nonnull %75) #15
  br label %107

107:                                              ; preds = %105, %81
  %108 = phi i32 [ %106, %105 ], [ %36, %81 ]
  %109 = icmp sgt i32 %102, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  %111 = load ptr, ptr %76, align 8, !tbaa !50
  br label %112

112:                                              ; preds = %110, %128
  %113 = phi i32 [ %129, %128 ], [ 0, %110 ]
  %114 = phi ptr [ %130, %128 ], [ %111, %110 ]
  %115 = getelementptr inbounds %struct.MaskSplinePoint, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !62
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !38
  %120 = tail call ptr %119(ptr noundef nonnull %116) #15
  store ptr %120, ptr %115, align 8, !tbaa !62
  br label %121

121:                                              ; preds = %118, %112
  tail call void @BKE_mask_point_select_set(ptr noundef nonnull %114, i8 noundef zeroext 1) #15
  %122 = load ptr, ptr %19, align 8, !tbaa !215
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr %91, align 4, !tbaa !45
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %91, align 4, !tbaa !45
  %127 = add nsw i32 %113, %108
  tail call void @BKE_mask_layer_shape_changed_add(ptr noundef nonnull %13, i32 noundef %127, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %128

128:                                              ; preds = %121, %124
  %129 = add nuw nsw i32 %113, 1
  %130 = getelementptr inbounds %struct.MaskSplinePoint, ptr %114, i64 1
  %131 = icmp eq i32 %129, %102
  br i1 %131, label %132, label %112, !llvm.loop !216

132:                                              ; preds = %128, %107
  %133 = load i16, ptr %83, align 8, !tbaa !166
  %134 = and i16 %133, 2
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %132
  %137 = icmp eq i32 %38, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  %139 = load i32, ptr %25, align 4, !tbaa !45
  %140 = add nsw i32 %139, -1
  %141 = icmp eq i32 %72, %140
  br i1 %141, label %144, label %142

142:                                              ; preds = %138, %136
  %143 = and i16 %133, -3
  br label %144

144:                                              ; preds = %138, %142, %132
  %145 = phi i16 [ %133, %138 ], [ %143, %142 ], [ %133, %132 ]
  %146 = or i16 %145, 1
  store i16 %146, ptr %83, align 8, !tbaa !166
  %147 = load i16, ptr %30, align 8, !tbaa !166
  %148 = and i16 %147, -2
  store i16 %148, ptr %30, align 8, !tbaa !166
  store ptr %75, ptr %20, align 8, !tbaa !95
  %149 = load i32, ptr %25, align 4, !tbaa !45
  br label %150

150:                                              ; preds = %144, %68
  %151 = phi i32 [ %149, %144 ], [ %69, %68 ]
  %152 = phi i32 [ %108, %144 ], [ %36, %68 ]
  %153 = add nsw i32 %70, 1
  %154 = getelementptr inbounds %struct.MaskSplinePoint, ptr %71, i64 1
  %155 = icmp slt i32 %153, %151
  br i1 %155, label %34, label %156, !llvm.loop !217

156:                                              ; preds = %150, %21
  %157 = phi i32 [ %23, %21 ], [ %152, %150 ]
  %158 = getelementptr inbounds %struct.MaskSpline, ptr %22, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !38
  %160 = icmp eq ptr %159, null
  br i1 %160, label %8, label %21, !llvm.loop !218

161:                                              ; preds = %8, %2
  %162 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %163 = load i32, ptr %162, align 8, !tbaa !149
  %164 = sitofp i32 %163 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %164) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_copy_splines(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.80, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_splines_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_splines_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !219 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %4 = tail call ptr @BKE_mask_layer_active(ptr noundef %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BKE_mask_clipboard_copy_from_layer(ptr noundef nonnull %4) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_paste_splines(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.82, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.83, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.84, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_splines_exec, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paste_splines_poll, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paste_splines_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !220 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %5 = tail call ptr @BKE_mask_layer_active(ptr noundef %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_mask_layer_new(ptr noundef %4, ptr noundef nonnull @.str) #15
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  tail call void @BKE_mask_clipboard_paste_to_layer(ptr noundef %11, ptr noundef %10) #15
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !149
  %14 = sitofp i32 %13 to float
  tail call void @BKE_mask_update_display(ptr noundef %4, float noundef %14) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %4) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @paste_splines_poll(ptr noundef %0) #0 !PGOFuncName !221 {
  %2 = tail call i32 @ED_maskedit_mask_poll(ptr noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @BKE_mask_clipboard_is_empty() #15
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !222 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !223 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @BKE_mask_point_handle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_layer_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @slide_point_customdata(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !224 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x float], align 4
  %19 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %20 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %21 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  store ptr null, ptr %11, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.17) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #16
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %19, ptr noundef %20, ptr noundef nonnull %25, ptr noundef nonnull %14) #15
  call void @ED_mask_get_size(ptr noundef %19, ptr noundef nonnull %12, ptr noundef nonnull %13) #15
  %26 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %14, float noundef 1.900000e+01, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %17, ptr noundef nonnull %15) #17
  %27 = call zeroext i8 @ED_mask_feather_find_nearest(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %14, float noundef 1.900000e+01, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %16) #17, !range !151
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %3
  %30 = and i32 %24, 255
  %31 = icmp eq i32 %30, 0
  %32 = icmp ne ptr %26, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load float, ptr %16, align 4, !tbaa !34
  %36 = load float, ptr %15, align 4, !tbaa !34
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29, %34
  %39 = load ptr, ptr %6, align 8, !tbaa !38
  store ptr %39, ptr %4, align 8, !tbaa !38
  %40 = load ptr, ptr %9, align 8, !tbaa !38
  store ptr %40, ptr %7, align 8, !tbaa !38
  %41 = load ptr, ptr %10, align 8, !tbaa !38
  br label %56

42:                                               ; preds = %3
  %43 = icmp eq ptr %26, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %34, %42
  %45 = load i32, ptr %17, align 4, !tbaa !56
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 1, i32 2
  %48 = load ptr, ptr %5, align 8, !tbaa !38
  store ptr %48, ptr %4, align 8, !tbaa !38
  %49 = load ptr, ptr %8, align 8, !tbaa !38
  store ptr %49, ptr %7, align 8, !tbaa !38
  br label %56

50:                                               ; preds = %42
  %51 = call fastcc zeroext i8 @spline_under_mouse_get(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %7) #17, !range !151
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %139, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %4, align 8, !tbaa !38
  %55 = load ptr, ptr %7, align 8, !tbaa !38
  br label %56

56:                                               ; preds = %53, %38, %44
  %57 = phi ptr [ %55, %53 ], [ %40, %38 ], [ %49, %44 ]
  %58 = phi ptr [ %54, %53 ], [ %39, %38 ], [ %48, %44 ]
  %59 = phi i32 [ 4, %53 ], [ 3, %38 ], [ %47, %44 ]
  %60 = phi ptr [ null, %53 ], [ %41, %38 ], [ %26, %44 ]
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %62 = call ptr %61(i64 noundef 168, ptr noundef nonnull @.str.85) #15
  %63 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %64 = load i16, ptr %63, align 8, !tbaa !99
  store i16 %64, ptr %62, align 8, !tbaa !118
  %65 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 2
  store ptr %21, ptr %65, align 8, !tbaa !117
  %66 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 3
  store ptr %58, ptr %66, align 8, !tbaa !94
  %67 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 4
  store ptr %57, ptr %67, align 8, !tbaa !92
  %68 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 6
  store ptr %60, ptr %68, align 8, !tbaa !96
  %69 = load i32, ptr %12, align 4, !tbaa !56
  %70 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 9
  store i32 %69, ptr %70, align 4, !tbaa !225
  %71 = load i32, ptr %13, align 4, !tbaa !56
  %72 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 10
  store i32 %71, ptr %72, align 8, !tbaa !226
  %73 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 1
  store i32 %59, ptr %73, align 4, !tbaa !102
  %74 = load ptr, ptr %11, align 8, !tbaa !38
  %75 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 7
  store ptr %74, ptr %75, align 8, !tbaa !110
  %76 = load ptr, ptr %22, align 8, !tbaa !80
  %77 = call i32 @RNA_boolean_get(ptr noundef %76, ptr noundef nonnull @.str.20) #15
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 17
  store i8 %78, ptr %79, align 8, !tbaa !107
  %80 = load i32, ptr %73, align 4, !tbaa !102
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %91, label %82

82:                                               ; preds = %56
  %83 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 0, i32 5
  %84 = load i8, ptr %83, align 1, !tbaa !227
  %85 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 19
  store i8 %84, ptr %85, align 8, !tbaa !228
  %86 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 0, i32 6
  %87 = load i8, ptr %86, align 2, !tbaa !229
  %88 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 20
  store i8 %87, ptr %88, align 1, !tbaa !230
  %89 = load i32, ptr %17, align 4, !tbaa !56
  call fastcc void @select_sliding_point(ptr noundef %21, ptr noundef %58, ptr noundef %57, ptr noundef %60, i32 noundef %89) #17
  %90 = load i32, ptr %17, align 4, !tbaa !56
  call fastcc void @check_sliding_handle_type(ptr noundef %60, i32 noundef %90) #17
  br label %91

91:                                               ; preds = %82, %56
  %92 = load ptr, ptr %11, align 8, !tbaa !38
  %93 = icmp eq ptr %92, null
  br i1 %93, label %111, label %94

94:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  %95 = load float, ptr %92, align 4, !tbaa !111
  %96 = call float @BKE_mask_point_weight_scalar(ptr noundef %57, ptr noundef %60, float noundef %95) #15
  %97 = load ptr, ptr %11, align 8, !tbaa !38
  %98 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %97, i64 0, i32 1
  %99 = load float, ptr %98, align 4, !tbaa !231
  %100 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 24
  store float %99, ptr %100, align 4, !tbaa !113
  %101 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 25
  store float %96, ptr %101, align 8, !tbaa !114
  %102 = load float, ptr %97, align 4, !tbaa !111
  call void @BKE_mask_point_segment_co(ptr noundef %57, ptr noundef %60, float noundef %102, ptr noundef nonnull %18) #15
  %103 = load ptr, ptr %11, align 8, !tbaa !38
  %104 = load float, ptr %103, align 4, !tbaa !111
  %105 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 12
  call void @BKE_mask_point_normal(ptr noundef %57, ptr noundef %60, float noundef %104, ptr noundef nonnull %105) #15
  %106 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 23
  %107 = load ptr, ptr %11, align 8, !tbaa !38
  %108 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %107, i64 0, i32 1
  %109 = load float, ptr %108, align 4, !tbaa !231
  %110 = fmul float %96, %109
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %106, ptr noundef nonnull %18, ptr noundef nonnull %105, float noundef %110) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  br label %123

111:                                              ; preds = %91
  %112 = load i32, ptr %73, align 4, !tbaa !102
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %135, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.BezTriple, ptr %60, i64 0, i32 2
  %116 = load float, ptr %115, align 4, !tbaa !202
  %117 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 24
  store float %116, ptr %117, align 4, !tbaa !113
  %118 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 25
  store float 1.000000e+00, ptr %118, align 8, !tbaa !114
  %119 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 12
  call void @BKE_mask_point_normal(ptr noundef %57, ptr noundef %60, float noundef 0.000000e+00, ptr noundef nonnull %119) #15
  %120 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 23
  %121 = getelementptr inbounds [3 x [3 x float]], ptr %60, i64 0, i64 1
  %122 = load float, ptr %115, align 4, !tbaa !202
  call fastcc void @madd_v2_v2v2fl(ptr noundef nonnull %120, ptr noundef nonnull %121, ptr noundef nonnull %119, float noundef %122) #17
  br label %123

123:                                              ; preds = %114, %94
  %124 = load i32, ptr %73, align 4, !tbaa !102
  switch i32 %124, label %128 [
    i32 3, label %125
    i32 4, label %135
  ]

125:                                              ; preds = %123
  %126 = call fastcc zeroext i8 @slide_point_check_initial_feather(ptr noundef %57) #17
  %127 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 15
  store i8 %126, ptr %127, align 2, !tbaa !109
  br label %128

128:                                              ; preds = %123, %125
  %129 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 18
  call void @copy_m3_m3(ptr noundef nonnull %129, ptr noundef %60) #15
  %130 = load i32, ptr %17, align 4, !tbaa !56
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 21
  call void @BKE_mask_point_handle(ptr noundef %60, i32 noundef %130, ptr noundef nonnull %133) #15
  %134 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 22
  call fastcc void @copy_v2_v2(ptr noundef nonnull %134, ptr noundef nonnull %133) #17
  br label %135

135:                                              ; preds = %123, %111, %128, %132
  %136 = load i32, ptr %17, align 4, !tbaa !56
  %137 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 8
  store i32 %136, ptr %137, align 8, !tbaa !108
  %138 = getelementptr inbounds %struct.SlidePointData, ptr %62, i64 0, i32 11
  call void @ED_mask_mouse_pos(ptr noundef %19, ptr noundef %20, ptr noundef nonnull %25, ptr noundef nonnull %138) #15
  br label %139

139:                                              ; preds = %50, %135
  %140 = phi ptr [ %62, %135 ], [ null, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %140
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @spline_under_mouse_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !232 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 8
  %11 = alloca [2 x float], align 8
  %12 = alloca [2 x float], align 4
  %13 = alloca float, align 4
  %14 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %15 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr null, ptr %3, align 8, !tbaa !38
  store ptr null, ptr %4, align 8, !tbaa !38
  call void @ED_mask_get_size(ptr noundef %14, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %16 = load i32, ptr %6, align 4, !tbaa !56
  %17 = load i32, ptr %7, align 4, !tbaa !56
  %18 = load <2 x float>, ptr %2, align 4, !tbaa !34
  %19 = insertelement <2 x i32> poison, i32 %16, i64 0
  %20 = insertelement <2 x i32> %19, i32 %17, i64 1
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = fmul <2 x float> %18, %21
  store <2 x float> %22, ptr %8, align 8, !tbaa !34
  %23 = icmp eq ptr %15, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.SpaceClip, ptr %15, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !233
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.SpaceClip, ptr %15, i64 0, i32 9, i32 2
  %30 = load i16, ptr %29, align 2, !tbaa !239
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br label %33

33:                                               ; preds = %24, %28, %5
  %34 = phi i1 [ true, %5 ], [ true, %24 ], [ %32, %28 ]
  %35 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = icmp eq ptr %36, null
  br i1 %37, label %130, label %38

38:                                               ; preds = %33, %110
  %39 = phi ptr [ %114, %110 ], [ %36, %33 ]
  %40 = phi float [ %113, %110 ], [ undef, %33 ]
  %41 = phi ptr [ %112, %110 ], [ null, %33 ]
  %42 = phi ptr [ %111, %110 ], [ null, %33 ]
  %43 = getelementptr inbounds %struct.MaskLayer, ptr %39, i64 0, i32 13
  %44 = load i8, ptr %43, align 1, !tbaa !40
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %110

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.MaskLayer, ptr %39, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !38
  %50 = icmp eq ptr %49, null
  br i1 %50, label %110, label %51

51:                                               ; preds = %47, %104
  %52 = phi ptr [ %108, %104 ], [ %49, %47 ]
  %53 = phi float [ %107, %104 ], [ %40, %47 ]
  %54 = phi ptr [ %106, %104 ], [ %41, %47 ]
  %55 = phi ptr [ %105, %104 ], [ %42, %47 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %56 = getelementptr inbounds %struct.MaskSpline, ptr %52, i64 0, i32 2
  %57 = load i16, ptr %56, align 8, !tbaa !166
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %104, label %60

60:                                               ; preds = %51
  %61 = call ptr @BKE_mask_spline_point_array(ptr noundef nonnull %52) #15
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %9, align 8, !tbaa !34
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %10, align 8, !tbaa !34
  %62 = getelementptr inbounds %struct.MaskSpline, ptr %52, i64 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !45
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60, %69
  %66 = phi i64 [ %70, %69 ], [ 0, %60 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %67 = getelementptr inbounds %struct.MaskSplinePoint, ptr %61, i64 %66, i32 0, i32 0, i64 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %12, ptr noundef nonnull %67) #17
  br i1 %34, label %69, label %68

68:                                               ; preds = %65
  call fastcc void @mask_point_undistort_pos(ptr noundef %15, ptr noundef nonnull %12, ptr noundef nonnull %12) #17
  br label %69

69:                                               ; preds = %68, %65
  call void @minmax_v2v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  %70 = add nuw nsw i64 %66, 1
  %71 = load i32, ptr %62, align 4, !tbaa !45
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %65, label %74, !llvm.loop !240

74:                                               ; preds = %69
  %75 = load <2 x float>, ptr %9, align 8, !tbaa !34
  %76 = load <2 x float>, ptr %10, align 8, !tbaa !34
  br label %77

77:                                               ; preds = %74, %60
  %78 = phi <2 x float> [ %75, %74 ], [ <float 0x46293E5940000000, float 0x46293E5940000000>, %60 ]
  %79 = phi <2 x float> [ %76, %74 ], [ <float 0xC6293E5940000000, float 0xC6293E5940000000>, %60 ]
  %80 = fadd <2 x float> %78, %79
  %81 = load i32, ptr %6, align 4, !tbaa !56
  %82 = load i32, ptr %7, align 4, !tbaa !56
  %83 = fmul <2 x float> %80, <float 5.000000e-01, float 5.000000e-01>
  %84 = insertelement <2 x i32> poison, i32 %81, i64 0
  %85 = insertelement <2 x i32> %84, i32 %82, i64 1
  %86 = sitofp <2 x i32> %85 to <2 x float>
  %87 = fmul <2 x float> %83, %86
  store <2 x float> %87, ptr %11, align 8, !tbaa !34
  %88 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %11) #17
  %89 = fsub <2 x float> %79, %78
  %90 = fmul <2 x float> %89, %86
  %91 = extractelement <2 x float> %90, i64 0
  %92 = fsub <2 x float> %79, %78
  %93 = fmul <2 x float> %92, %86
  %94 = extractelement <2 x float> %93, i64 1
  %95 = call fastcc float @min_ff(float noundef %91, float noundef %94) #17
  %96 = fmul float %95, %95
  %97 = fmul float %96, 5.000000e-01
  %98 = fcmp ugt float %88, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %77
  %100 = icmp eq ptr %55, null
  %101 = fcmp olt float %88, %53
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %77, %103, %99, %51
  %105 = phi ptr [ %55, %51 ], [ %52, %103 ], [ %55, %77 ], [ %55, %99 ]
  %106 = phi ptr [ %54, %51 ], [ %39, %103 ], [ %54, %77 ], [ %54, %99 ]
  %107 = phi float [ %53, %51 ], [ %88, %103 ], [ %53, %77 ], [ %53, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  %108 = load ptr, ptr %52, align 8, !tbaa !38
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %51, !llvm.loop !241

110:                                              ; preds = %104, %47, %38
  %111 = phi ptr [ %42, %38 ], [ %42, %47 ], [ %105, %104 ]
  %112 = phi ptr [ %41, %38 ], [ %41, %47 ], [ %106, %104 ]
  %113 = phi float [ %40, %38 ], [ %40, %47 ], [ %107, %104 ]
  %114 = load ptr, ptr %39, align 8, !tbaa !38
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %38, !llvm.loop !242

116:                                              ; preds = %110
  %117 = fcmp olt float %113, 3.610000e+02
  %118 = icmp ne ptr %111, null
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  %121 = call zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 19, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %13) #15
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = load float, ptr %13, align 4, !tbaa !34
  %125 = fmul float %124, %124
  %126 = fcmp olt float %125, %113
  br i1 %126, label %128, label %127

127:                                              ; preds = %123, %120
  store ptr %112, ptr %3, align 8, !tbaa !38
  store ptr %111, ptr %4, align 8, !tbaa !38
  br label %128

128:                                              ; preds = %123, %127
  %129 = phi i8 [ 1, %127 ], [ 0, %123 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  br label %130

130:                                              ; preds = %33, %116, %128
  %131 = phi i8 [ %129, %128 ], [ 0, %116 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i8 %131
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_sliding_point(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !243 {
  tail call void @ED_mask_select_toggle_all(ptr noundef %0, i32 noundef 2) #15
  switch i32 %4, label %22 [
    i32 0, label %6
    i32 2, label %7
    i32 3, label %11
    i32 1, label %15
  ]

6:                                                ; preds = %5
  tail call void @BKE_mask_point_select_set(ptr noundef %3, i8 noundef zeroext 1) #15
  br label %22

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !172
  %10 = or i8 %9, 1
  store i8 %10, ptr %8, align 1, !tbaa !172
  br label %22

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %13 = load i8, ptr %12, align 1, !tbaa !174
  %14 = or i8 %13, 1
  store i8 %14, ptr %12, align 1, !tbaa !174
  br label %22

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %17 = load i8, ptr %16, align 1, !tbaa !172
  %18 = or i8 %17, 1
  store i8 %18, ptr %16, align 1, !tbaa !172
  %19 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !174
  %21 = or i8 %20, 1
  store i8 %21, ptr %19, align 1, !tbaa !174
  br label %22

22:                                               ; preds = %5, %15, %11, %7, %6
  %23 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 5
  store ptr %2, ptr %23, align 8, !tbaa !95
  %24 = getelementptr inbounds %struct.MaskLayer, ptr %1, i64 0, i32 6
  store ptr %3, ptr %24, align 8, !tbaa !97
  tail call void @ED_mask_select_flush_all(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @check_sliding_handle_type(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !244 {
  switch i32 %1, label %15 [
    i32 2, label %3
    i32 3, label %9
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !51
  switch i8 %5, label %15 [
    i8 2, label %6
    i8 1, label %7
  ]

6:                                                ; preds = %3
  store i8 0, ptr %4, align 1, !tbaa !51
  br label %15

7:                                                ; preds = %3
  store i8 5, ptr %4, align 1, !tbaa !51
  %8 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  store i8 5, ptr %8, align 2, !tbaa !53
  br label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %11 = load i8, ptr %10, align 2, !tbaa !53
  switch i8 %11, label %15 [
    i8 2, label %12
    i8 1, label %13
  ]

12:                                               ; preds = %9
  store i8 0, ptr %10, align 2, !tbaa !53
  br label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  store i8 5, ptr %14, align 1, !tbaa !51
  store i8 5, ptr %10, align 2, !tbaa !53
  br label %15

15:                                               ; preds = %9, %2, %3, %13, %12, %6, %7
  ret void
}

; Function Attrs: optsize
declare float @BKE_mask_point_weight_scalar(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_point_segment_co(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_point_normal(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #3 !PGOFuncName !245 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @slide_point_check_initial_feather(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !246 {
  %2 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !45
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MaskSpline, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = zext nneg i32 %3 to i64
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %8
  br i1 %11, label %17, label %12, !llvm.loop !247

12:                                               ; preds = %5, %9
  %13 = phi i64 [ 0, %5 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.MaskSplinePoint, ptr %7, i64 %13, i32 0, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !248
  %16 = fcmp oeq float %15, 0.000000e+00
  br i1 %16, label %9, label %17

17:                                               ; preds = %12, %9, %1
  %18 = phi i8 [ 1, %1 ], [ 1, %9 ], [ 0, %12 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !249 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mask_point_undistort_pos(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !250 {
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !233
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 9
  tail call void @BKE_mask_coord_to_movieclip(ptr noundef %5, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #15
  tail call void @ED_clip_point_undistorted_pos(ptr noundef %0, ptr noundef %1, ptr noundef %1) #15
  %7 = load ptr, ptr %4, align 8, !tbaa !233
  tail call void @BKE_mask_coord_from_movieclip(ptr noundef %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !251 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_coord_to_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_clip_point_undistorted_pos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_select_toggle_all(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_point_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_select_flush_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !252 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %3 = fmul <2 x float> %2, <float 0x3FC99999A0000000, float 0x3FC99999A0000000>
  store <2 x float> %3, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v2(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !253 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !254 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_point_set_handle(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !255 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare float @BKE_mask_spline_project_co(ptr noundef, ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_point_sort_uw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @project_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !256 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: optsize
declare ptr @BKE_mask_spline_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @slide_point_delta_all_feather(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #10 !PGOFuncName !257 {
  %3 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !45
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MaskSpline, ptr %4, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = getelementptr inbounds %struct.MaskSpline, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = zext nneg i32 %6 to i64
  br label %16

16:                                               ; preds = %8, %16
  %17 = phi i64 [ 0, %8 ], [ %24, %16 ]
  %18 = getelementptr inbounds %struct.MaskSplinePoint, ptr %14, i64 %17, i32 0, i32 2
  %19 = load float, ptr %18, align 8, !tbaa !248
  %20 = fadd float %19, %1
  %21 = getelementptr inbounds %struct.MaskSplinePoint, ptr %10, i64 %17, i32 0, i32 2
  %22 = fcmp olt float %20, 0.000000e+00
  %23 = select i1 %22, float 0.000000e+00, float %20
  store float %23, ptr %21, align 8, !tbaa !248
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, %15
  br i1 %25, label %26, label %16, !llvm.loop !258

26:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @slide_point_restore_spline(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !259 {
  %2 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct.MaskSpline, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %7, %35
  %10 = phi i64 [ 0, %7 ], [ %36, %35 ]
  %11 = phi ptr [ %3, %7 ], [ %37, %35 ]
  %12 = getelementptr inbounds %struct.MaskSpline, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.MaskSplinePoint, ptr %13, i64 %10
  %15 = load ptr, ptr %8, align 8, !tbaa !115
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.MaskSplinePoint, ptr %17, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %18, i64 72, i1 false), !tbaa.struct !260
  %19 = getelementptr inbounds %struct.MaskSplinePoint, ptr %13, i64 %10, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !60
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.MaskSplinePoint, ptr %13, i64 %10, i32 3
  %24 = getelementptr inbounds %struct.MaskSplinePoint, ptr %17, i64 %10, i32 3
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %31, %25 ]
  %27 = load ptr, ptr %23, align 8, !tbaa !62
  %28 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %27, i64 %26
  %29 = load ptr, ptr %24, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %29, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %28, ptr noundef nonnull align 4 dereferenceable(12) %30, i64 12, i1 false), !tbaa.struct !261
  %31 = add nuw nsw i64 %26, 1
  %32 = load i32, ptr %19, align 4, !tbaa !60
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %25, label %35, !llvm.loop !262

35:                                               ; preds = %25, %9
  %36 = add nuw nsw i64 %10, 1
  %37 = load ptr, ptr %2, align 8, !tbaa !92
  %38 = getelementptr inbounds %struct.MaskSpline, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !45
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %9, label %42, !llvm.loop !263

42:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_spline_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_layer_shape_auto_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_slide_point_data(ptr noundef %0) unnamed_addr #0 !PGOFuncName !264 {
  %2 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_mask_spline_free(ptr noundef nonnull %3) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %7(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cancel_slide_point(ptr noundef %0) unnamed_addr #0 !PGOFuncName !265 {
  %2 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @slide_point_restore_spline(ptr noundef nonnull %0) #17
  br label %32

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !102
  switch i32 %8, label %21 [
    i32 3, label %9
    i32 4, label %32
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 24
  %14 = load float, ptr %13, align 4, !tbaa !113
  br i1 %12, label %17, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %11, i64 0, i32 1
  store float %14, ptr %16, align 4, !tbaa !231
  br label %32

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 2
  store float %14, ptr %20, align 8, !tbaa !248
  br label %32

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 18
  tail call void @copy_m3_m3(ptr noundef %23, ptr noundef nonnull %24) #15
  %25 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 19
  %26 = load i8, ptr %25, align 8, !tbaa !228
  %27 = load ptr, ptr %22, align 8, !tbaa !96
  %28 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 5
  store i8 %26, ptr %28, align 1, !tbaa !227
  %29 = getelementptr inbounds %struct.SlidePointData, ptr %0, i64 0, i32 20
  %30 = load i8, ptr %29, align 1, !tbaa !230
  %31 = getelementptr inbounds %struct.BezTriple, ptr %27, i64 0, i32 6
  store i8 %30, ptr %31, align 2, !tbaa !229
  br label %32

32:                                               ; preds = %6, %17, %15, %21, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @slide_spline_curvature_check(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !266 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %3) #15
  %8 = call ptr @ED_mask_point_find_nearest(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %3, float noundef 1.900000e+01, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call zeroext i8 @ED_mask_feather_find_nearest(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %3, float noundef 1.900000e+01, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #17, !range !151
  %12 = xor i8 %11, 1
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @slide_spline_curvature_customdata(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !267 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  call void @ED_mask_mouse_pos(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull %7) #15
  %12 = call zeroext i8 @ED_mask_find_nearest_diff_point(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %7, i32 noundef 19, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %99, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.MaskSpline, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = load ptr, ptr %5, align 8, !tbaa !38
  %19 = call ptr @BKE_mask_spline_point_next_bezt(ptr noundef %15, ptr noundef %17, ptr noundef %18) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %99, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %23 = call ptr %22(i64 noundef 264, ptr noundef nonnull @.str.86) #15
  %24 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !99
  store i16 %25, ptr %23, align 8, !tbaa !163
  %26 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 1
  store ptr %8, ptr %26, align 8, !tbaa !162
  %27 = load ptr, ptr %3, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !164
  %29 = load ptr, ptr %4, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !268
  %31 = load ptr, ptr %5, align 8, !tbaa !38
  %32 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 4
  store ptr %31, ptr %32, align 8, !tbaa !269
  %33 = load float, ptr %6, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 5
  store float %33, ptr %34, align 8, !tbaa !153
  %35 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 11
  call fastcc void @copy_v2_v2(ptr noundef nonnull %35, ptr noundef nonnull %7) #17
  %36 = load ptr, ptr %4, align 8, !tbaa !38
  %37 = load ptr, ptr %5, align 8, !tbaa !38
  %38 = load float, ptr %6, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 12
  call void @BKE_mask_point_segment_co(ptr noundef %36, ptr noundef %37, float noundef %38, ptr noundef nonnull %39) #15
  %40 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 13
  %41 = load ptr, ptr %5, align 8, !tbaa !38
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %40, ptr noundef nonnull %42) #17
  %43 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 14
  %44 = load ptr, ptr %5, align 8, !tbaa !38
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %44, i64 0, i64 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %43, ptr noundef nonnull %45) #17
  %46 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 15
  call fastcc void @copy_v2_v2(ptr noundef nonnull %46, ptr noundef nonnull %19) #17
  %47 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 16
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %47, ptr noundef nonnull %48) #17
  %49 = load float, ptr %6, align 4, !tbaa !34
  %50 = fcmp ugt float %49, 5.000000e-01
  %51 = load ptr, ptr %5, align 8, !tbaa !38
  %52 = select i1 %50, ptr %19, ptr %51
  %53 = select i1 %50, ptr %51, ptr %19
  %54 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 7
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 8
  store ptr %53, ptr %55, align 8
  %56 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %56, ptr noundef nonnull align 4 dereferenceable(72) %52, i64 72, i1 false), !tbaa.struct !260
  %57 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %23, i64 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %57, ptr noundef nonnull align 4 dereferenceable(72) %53, i64 72, i1 false), !tbaa.struct !260
  %58 = fcmp olt float %49, 5.000000e-01
  br i1 %58, label %59, label %64

59:                                               ; preds = %21
  %60 = getelementptr inbounds %struct.BezTriple, ptr %52, i64 0, i32 6
  %61 = load i8, ptr %60, align 2, !tbaa !53
  %62 = icmp ult i8 %61, 3
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  store i8 0, ptr %60, align 2, !tbaa !53
  br label %69

64:                                               ; preds = %21
  %65 = getelementptr inbounds %struct.BezTriple, ptr %52, i64 0, i32 5
  %66 = load i8, ptr %65, align 1, !tbaa !51
  %67 = icmp ult i8 %66, 3
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8 0, ptr %65, align 1, !tbaa !51
  br label %69

69:                                               ; preds = %64, %68, %59, %63
  call void @ED_mask_select_toggle_all(ptr noundef %8, i32 noundef 2) #15
  %70 = load ptr, ptr %54, align 8, !tbaa !156
  %71 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 8
  %72 = load i8, ptr %71, align 4, !tbaa !192
  %73 = or i8 %72, 1
  store i8 %73, ptr %71, align 4, !tbaa !192
  %74 = load ptr, ptr %55, align 8, !tbaa !157
  %75 = getelementptr inbounds %struct.BezTriple, ptr %74, i64 0, i32 8
  %76 = load i8, ptr %75, align 4, !tbaa !192
  %77 = or i8 %76, 1
  store i8 %77, ptr %75, align 4, !tbaa !192
  %78 = load float, ptr %6, align 4, !tbaa !34
  %79 = fcmp olt float %78, 5.000000e-01
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 9
  %82 = load i8, ptr %81, align 1, !tbaa !193
  %83 = or i8 %82, 1
  store i8 %83, ptr %81, align 1, !tbaa !193
  %84 = getelementptr inbounds %struct.BezTriple, ptr %74, i64 0, i32 7
  br label %90

85:                                               ; preds = %69
  %86 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 0, i32 7
  %87 = load i8, ptr %86, align 1, !tbaa !191
  %88 = or i8 %87, 1
  store i8 %88, ptr %86, align 1, !tbaa !191
  %89 = getelementptr inbounds %struct.BezTriple, ptr %74, i64 0, i32 9
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi ptr [ %89, %85 ], [ %84, %80 ]
  %92 = load i8, ptr %91, align 1, !tbaa !177
  %93 = or i8 %92, 1
  store i8 %93, ptr %91, align 1, !tbaa !177
  %94 = load ptr, ptr %4, align 8, !tbaa !38
  %95 = load ptr, ptr %3, align 8, !tbaa !38
  %96 = getelementptr inbounds %struct.MaskLayer, ptr %95, i64 0, i32 5
  store ptr %94, ptr %96, align 8, !tbaa !95
  %97 = load ptr, ptr %5, align 8, !tbaa !38
  %98 = getelementptr inbounds %struct.MaskLayer, ptr %95, i64 0, i32 6
  store ptr %97, ptr %98, align 8, !tbaa !97
  call void @ED_mask_select_flush_all(ptr noundef %8) #15
  br label %99

99:                                               ; preds = %14, %2, %90
  %100 = phi ptr [ %23, %90 ], [ null, %2 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %100
}

; Function Attrs: optsize
declare ptr @BKE_mask_spline_point_next_bezt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @slide_spline_solve_P2(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #3 !PGOFuncName !270 {
  %7 = fmul float %0, %0
  %8 = fmul float %7, %0
  %9 = fsub float 1.000000e+00, %0
  %10 = fmul float %9, %9
  %11 = fmul float %9, %10
  %12 = fmul float %9, 3.000000e+00
  %13 = fmul float %7, %12
  %14 = fdiv float 1.000000e+00, %13
  %15 = fmul float %10, 3.000000e+00
  %16 = fmul float %15, %0
  %17 = load float, ptr %2, align 4, !tbaa !34
  %18 = load float, ptr %3, align 4, !tbaa !34
  %19 = fmul float %16, %18
  %20 = tail call float @llvm.fmuladd.f32(float %11, float %17, float %19)
  %21 = load float, ptr %4, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %8, float %21, float %20)
  %23 = load float, ptr %1, align 4, !tbaa !34
  %24 = fsub float %22, %23
  %25 = fneg float %24
  %26 = fmul float %14, %25
  store float %26, ptr %5, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fmul float %16, %30
  %32 = tail call float @llvm.fmuladd.f32(float %11, float %28, float %31)
  %33 = getelementptr inbounds float, ptr %4, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = tail call float @llvm.fmuladd.f32(float %8, float %34, float %32)
  %36 = getelementptr inbounds float, ptr %1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fsub float %35, %37
  %39 = fneg float %38
  %40 = fmul float %14, %39
  %41 = getelementptr inbounds float, ptr %5, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @slide_spline_solve_P1(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #3 !PGOFuncName !271 {
  %7 = fmul float %0, %0
  %8 = fmul float %7, %0
  %9 = fsub float 1.000000e+00, %0
  %10 = fmul float %9, %9
  %11 = fmul float %9, %10
  %12 = fmul float %10, 3.000000e+00
  %13 = fmul float %12, %0
  %14 = fdiv float 1.000000e+00, %13
  %15 = fmul float %9, 3.000000e+00
  %16 = fmul float %7, %15
  %17 = load float, ptr %2, align 4, !tbaa !34
  %18 = load float, ptr %3, align 4, !tbaa !34
  %19 = fmul float %16, %18
  %20 = tail call float @llvm.fmuladd.f32(float %11, float %17, float %19)
  %21 = load float, ptr %4, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %8, float %21, float %20)
  %23 = load float, ptr %1, align 4, !tbaa !34
  %24 = fsub float %22, %23
  %25 = fneg float %24
  %26 = fmul float %14, %25
  store float %26, ptr %5, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fmul float %16, %30
  %32 = tail call float @llvm.fmuladd.f32(float %11, float %28, float %31)
  %33 = getelementptr inbounds float, ptr %4, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = tail call float @llvm.fmuladd.f32(float %8, float %34, float %32)
  %36 = getelementptr inbounds float, ptr %1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fsub float %35, %37
  %39 = fneg float %38
  %40 = fmul float %14, %39
  %41 = getelementptr inbounds float, ptr %5, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_slide_spline_curvature_data(ptr noundef %0) unnamed_addr #0 !PGOFuncName !272 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %2(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cancel_slide_spline_curvature(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %0, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !260
  %5 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.SlideSplineCurvatureData, ptr %0, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %7, i64 72, i1 false), !tbaa.struct !260
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_mask_spline_select_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_layer_shape_changed_remove(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_feather_points(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !274 {
  %2 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !60
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %63, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = zext nneg i32 %3 to i64
  br label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %19, %11 ]
  %13 = phi i32 [ 0, %7 ], [ %18, %11 ]
  %14 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %9, i64 %12, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !275
  %16 = and i32 %15, 1
  %17 = xor i32 %16, 1
  %18 = add i32 %17, %13
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %21, label %11, !llvm.loop !276

21:                                               ; preds = %11
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5, %21
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  tail call void %24(ptr noundef %26) #15
  store ptr null, ptr %25, align 8, !tbaa !62
  br label %61

27:                                               ; preds = %21
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %29 = sext i32 %18 to i64
  %30 = mul nsw i64 %29, 12
  %31 = tail call ptr %28(i64 noundef %30, ptr noundef nonnull @.str.88) #15
  %32 = load i32, ptr %2, align 4, !tbaa !60
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  br label %36

36:                                               ; preds = %34, %51
  %37 = phi i32 [ %32, %34 ], [ %52, %51 ]
  %38 = phi i64 [ 0, %34 ], [ %54, %51 ]
  %39 = phi i32 [ 0, %34 ], [ %53, %51 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %40, i64 %38, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !275
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %40, i64 %38
  %47 = add nsw i32 %39, 1
  %48 = sext i32 %39 to i64
  %49 = getelementptr inbounds %struct.MaskSplinePointUW, ptr %31, i64 %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %49, ptr noundef nonnull align 4 dereferenceable(12) %46, i64 12, i1 false), !tbaa.struct !261
  %50 = load i32, ptr %2, align 4, !tbaa !60
  br label %51

51:                                               ; preds = %36, %45
  %52 = phi i32 [ %50, %45 ], [ %37, %36 ]
  %53 = phi i32 [ %47, %45 ], [ %39, %36 ]
  %54 = add nuw nsw i64 %38, 1
  %55 = sext i32 %52 to i64
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %36, label %57, !llvm.loop !277

57:                                               ; preds = %51, %27
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %59 = getelementptr inbounds %struct.MaskSplinePoint, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  tail call void %58(ptr noundef %60) #15
  store ptr %31, ptr %59, align 8, !tbaa !62
  br label %61

61:                                               ; preds = %57, %23
  %62 = phi i32 [ %18, %57 ], [ 0, %23 ]
  store i32 %62, ptr %2, align 4, !tbaa !60
  br label %63

63:                                               ; preds = %1, %61
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_point_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !278 {
  %2 = load ptr, ptr %0, align 8, !tbaa !279
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_mask_layer_free_shapes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_update_display(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_spline_direction_switch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_calc_handle_point_auto(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !280 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !281 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @ED_mask_layer_select_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_mask_layer_select_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_layer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_spline_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_mask_layer_shape_spline_to_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_layer_shape_changed_add(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_clipboard_copy_from_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_clipboard_paste_to_layer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_mask_clipboard_is_empty() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !36, i64 143}
!41 = !{!"MaskLayer", !39, i64 0, !39, i64 8, !36, i64 16, !42, i64 80, !42, i64 96, !39, i64 112, !39, i64 120, !35, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !48, i64 20}
!46 = !{!"MaskSpline", !39, i64 0, !39, i64 8, !47, i64 16, !36, i64 18, !36, i64 19, !48, i64 20, !39, i64 24, !49, i64 32, !39, i64 216}
!47 = !{!"short", !36, i64 0}
!48 = !{!"int", !36, i64 0}
!49 = !{!"MaskParent", !48, i64 0, !48, i64 4, !39, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !36, i64 152}
!50 = !{!46, !39, i64 24}
!51 = !{!52, !36, i64 49}
!52 = !{!"BezTriple", !36, i64 0, !35, i64 36, !35, i64 40, !35, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !35, i64 56, !35, i64 60, !35, i64 64, !36, i64 68}
!53 = !{!52, !36, i64 50}
!54 = distinct !{!54, !44}
!55 = distinct !{!55, !44}
!56 = !{!48, !48, i64 0}
!57 = !{!"mask_ops.c:len_squared_v2v2"}
!58 = !{!"mask_ops.c:mask_point_scaled_handle"}
!59 = distinct !{!59, !44}
!60 = !{!61, !48, i64 76}
!61 = !{!"MaskSplinePoint", !52, i64 0, !48, i64 72, !48, i64 76, !39, i64 80, !49, i64 88}
!62 = !{!61, !39, i64 80}
!63 = distinct !{!63, !44}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !44}
!66 = !{!67, !39, i64 96}
!67 = !{!"ScrArea", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !68, i64 56, !36, i64 72, !36, i64 73, !47, i64 74, !47, i64 76, !47, i64 78, !47, i64 80, !47, i64 82, !47, i64 84, !36, i64 86, !36, i64 87, !39, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!68 = !{!"rcti", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!69 = !{!67, !36, i64 72}
!70 = !{!71, !39, i64 0}
!71 = !{!"wmOperatorType", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !42, i64 112, !39, i64 128, !39, i64 136, !39, i64 144, !72, i64 152, !47, i64 184}
!72 = !{!"ExtensionRNA", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!73 = !{!71, !39, i64 24}
!74 = !{!71, !39, i64 8}
!75 = !{!71, !47, i64 184}
!76 = !{!71, !39, i64 32}
!77 = !{!71, !39, i64 72}
!78 = !{!71, !39, i64 88}
!79 = !{!"mask_ops.c:mask_new_exec"}
!80 = !{!81, !39, i64 112}
!81 = !{!"wmOperator", !39, i64 0, !39, i64 8, !36, i64 16, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !42, i64 128, !39, i64 144, !39, i64 152, !47, i64 160, !36, i64 162}
!82 = !{!"mask_ops.c:masklay_new_exec"}
!83 = !{!84, !48, i64 148}
!84 = !{!"Mask", !85, i64 0, !39, i64 120, !42, i64 128, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164}
!85 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !47, i64 98, !48, i64 100, !48, i64 104, !48, i64 108, !39, i64 112}
!86 = !{!84, !48, i64 144}
!87 = !{!"mask_ops.c:masklay_remove_exec"}
!88 = !{!71, !39, i64 48}
!89 = !{!71, !39, i64 64}
!90 = !{!"mask_ops.c:slide_point_invoke"}
!91 = !{!81, !39, i64 96}
!92 = !{!93, !39, i64 24}
!93 = !{!"SlidePointData", !47, i64 0, !48, i64 4, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !48, i64 56, !48, i64 60, !48, i64 64, !36, i64 68, !36, i64 76, !36, i64 84, !36, i64 85, !36, i64 86, !36, i64 87, !36, i64 88, !36, i64 92, !36, i64 128, !36, i64 129, !36, i64 132, !36, i64 140, !36, i64 148, !35, i64 156, !35, i64 160}
!94 = !{!93, !39, i64 16}
!95 = !{!41, !39, i64 112}
!96 = !{!93, !39, i64 40}
!97 = !{!41, !39, i64 120}
!98 = !{!"mask_ops.c:slide_point_modal"}
!99 = !{!100, !47, i64 16}
!100 = !{!"wmEvent", !39, i64 0, !39, i64 8, !47, i64 16, !47, i64 18, !48, i64 20, !48, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !47, i64 44, !47, i64 46, !48, i64 48, !48, i64 52, !101, i64 56, !48, i64 64, !48, i64 68, !47, i64 72, !47, i64 74, !47, i64 76, !47, i64 78, !47, i64 80, !47, i64 82, !39, i64 88, !39, i64 96, !47, i64 104, !47, i64 106, !48, i64 108, !39, i64 112}
!101 = !{!"double", !36, i64 0}
!102 = !{!93, !48, i64 4}
!103 = !{!100, !47, i64 18}
!104 = !{!93, !36, i64 87}
!105 = !{!93, !36, i64 84}
!106 = !{!93, !36, i64 85}
!107 = !{!93, !36, i64 88}
!108 = !{!93, !48, i64 56}
!109 = !{!93, !36, i64 86}
!110 = !{!93, !39, i64 48}
!111 = !{!112, !35, i64 0}
!112 = !{!"MaskSplinePointUW", !35, i64 0, !35, i64 4, !48, i64 8}
!113 = !{!93, !35, i64 156}
!114 = !{!93, !35, i64 160}
!115 = !{!93, !39, i64 32}
!116 = distinct !{!116, !44}
!117 = !{!93, !39, i64 8}
!118 = !{!93, !47, i64 0}
!119 = !{!120, !39, i64 264}
!120 = !{!"Scene", !85, i64 0, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !42, i64 152, !39, i64 168, !39, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !48, i64 232, !48, i64 236, !48, i64 240, !47, i64 244, !36, i64 246, !36, i64 247, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !121, i64 280, !129, i64 4264, !42, i64 4296, !42, i64 4312, !39, i64 4328, !39, i64 4336, !39, i64 4344, !39, i64 4352, !39, i64 4360, !39, i64 4368, !47, i64 4376, !47, i64 4378, !48, i64 4380, !42, i64 4384, !130, i64 4400, !131, i64 4416, !134, i64 4600, !39, i64 4608, !135, i64 4616, !39, i64 4640, !136, i64 4648, !136, i64 4656, !123, i64 4664, !124, i64 4824, !137, i64 4888, !39, i64 4952}
!121 = !{!"RenderData", !122, i64 0, !39, i64 248, !39, i64 256, !125, i64 264, !126, i64 328, !48, i64 400, !48, i64 404, !48, i64 408, !35, i64 412, !48, i64 416, !48, i64 420, !48, i64 424, !48, i64 428, !47, i64 432, !47, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !47, i64 456, !47, i64 458, !47, i64 460, !47, i64 462, !47, i64 464, !47, i64 466, !48, i64 468, !47, i64 472, !47, i64 474, !47, i64 476, !47, i64 478, !47, i64 480, !47, i64 482, !48, i64 484, !48, i64 488, !47, i64 492, !47, i64 494, !48, i64 496, !48, i64 500, !47, i64 504, !47, i64 506, !47, i64 508, !47, i64 510, !47, i64 512, !36, i64 514, !36, i64 515, !48, i64 516, !48, i64 520, !48, i64 524, !47, i64 528, !47, i64 530, !47, i64 532, !47, i64 534, !47, i64 536, !47, i64 538, !47, i64 540, !47, i64 542, !127, i64 544, !127, i64 560, !68, i64 576, !42, i64 592, !47, i64 608, !47, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !48, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !47, i64 648, !47, i64 650, !47, i64 652, !47, i64 654, !47, i64 656, !47, i64 658, !35, i64 660, !35, i64 664, !47, i64 668, !47, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !48, i64 1704, !47, i64 1708, !47, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !48, i64 2520, !47, i64 2524, !47, i64 2526, !35, i64 2528, !35, i64 2532, !47, i64 2536, !47, i64 2538, !35, i64 2540, !47, i64 2544, !47, i64 2546, !48, i64 2548, !47, i64 2552, !47, i64 2554, !47, i64 2556, !47, i64 2558, !35, i64 2560, !35, i64 2564, !39, i64 2568, !48, i64 2576, !35, i64 2580, !36, i64 2584, !128, i64 2616, !48, i64 3976, !48, i64 3980}
!122 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !47, i64 8, !47, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !123, i64 24, !124, i64 184}
!123 = !{!"ColorManagedViewSettings", !48, i64 0, !48, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !39, i64 144, !39, i64 152}
!124 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!125 = !{!"QuicktimeCodecSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !47, i64 48, !47, i64 50, !48, i64 52, !48, i64 56, !48, i64 60}
!126 = !{!"FFMpegCodecData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !35, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !48, i64 56, !48, i64 60, !39, i64 64}
!127 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!128 = !{!"BakeData", !122, i64 0, !36, i64 248, !47, i64 1272, !47, i64 1274, !47, i64 1276, !47, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!129 = !{!"AudioData", !48, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !48, i64 16, !47, i64 20, !47, i64 22, !35, i64 24, !35, i64 28}
!130 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!131 = !{!"GameData", !130, i64 0, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !47, i64 32, !36, i64 34, !132, i64 40, !47, i64 64, !47, i64 66, !35, i64 68, !133, i64 72, !35, i64 128, !35, i64 132, !48, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !47, i64 160, !47, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!132 = !{!"GameDome", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !35, i64 8, !35, i64 12, !39, i64 16}
!133 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !48, i64 40, !35, i64 44, !35, i64 48, !47, i64 52, !47, i64 54}
!134 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !47, i64 6}
!135 = !{!"PhysicsSettings", !36, i64 0, !48, i64 12, !48, i64 16, !48, i64 20}
!136 = !{!"long", !36, i64 0}
!137 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!138 = !{!139, !47, i64 344}
!139 = !{!"ToolSettings", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !47, i64 44, !47, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !35, i64 52, !47, i64 56, !36, i64 58, !36, i64 59, !140, i64 64, !142, i64 168, !35, i64 336, !35, i64 340, !47, i64 344, !47, i64 346, !36, i64 348, !36, i64 349, !47, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !47, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !39, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !47, i64 434, !47, i64 436, !47, i64 438, !47, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !48, i64 448, !48, i64 452, !48, i64 456, !48, i64 460, !47, i64 464, !47, i64 466, !48, i64 468, !35, i64 472, !35, i64 476, !143, i64 480, !144, i64 608}
!140 = !{!"ImagePaintSettings", !141, i64 0, !47, i64 40, !47, i64 42, !47, i64 44, !47, i64 46, !36, i64 48, !48, i64 52, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !35, i64 100}
!141 = !{!"Paint", !39, i64 0, !39, i64 8, !39, i64 16, !36, i64 24, !48, i64 28, !48, i64 32, !48, i64 36}
!142 = !{!"ParticleEditSettings", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !36, i64 8, !39, i64 120, !35, i64 128, !35, i64 132, !48, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !39, i64 152, !39, i64 160}
!143 = !{!"UnifiedPaintSettings", !48, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !48, i64 40, !36, i64 44, !35, i64 52, !48, i64 56, !48, i64 60, !36, i64 64, !36, i64 65, !35, i64 72, !36, i64 76, !48, i64 84, !35, i64 88, !36, i64 92, !36, i64 100, !48, i64 108, !39, i64 112, !35, i64 120, !48, i64 124}
!144 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!145 = !{!146, !47, i64 8976}
!146 = !{!"UserDef", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !48, i64 8468, !47, i64 8472, !47, i64 8474, !47, i64 8476, !47, i64 8478, !47, i64 8480, !47, i64 8482, !48, i64 8484, !48, i64 8488, !48, i64 8492, !47, i64 8496, !47, i64 8498, !48, i64 8500, !48, i64 8504, !48, i64 8508, !48, i64 8512, !48, i64 8516, !48, i64 8520, !48, i64 8524, !47, i64 8528, !47, i64 8530, !47, i64 8532, !47, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !36, i64 8648, !47, i64 8712, !47, i64 8714, !47, i64 8716, !47, i64 8718, !47, i64 8720, !47, i64 8722, !47, i64 8724, !47, i64 8726, !36, i64 8728, !47, i64 8896, !47, i64 8898, !47, i64 8900, !47, i64 8902, !47, i64 8904, !47, i64 8906, !47, i64 8908, !47, i64 8910, !48, i64 8912, !48, i64 8916, !47, i64 8920, !47, i64 8922, !47, i64 8924, !47, i64 8926, !47, i64 8928, !47, i64 8930, !47, i64 8932, !47, i64 8934, !47, i64 8936, !47, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !47, i64 8944, !47, i64 8946, !47, i64 8948, !47, i64 8950, !47, i64 8952, !47, i64 8954, !35, i64 8956, !35, i64 8960, !48, i64 8964, !47, i64 8968, !47, i64 8970, !35, i64 8972, !47, i64 8976, !47, i64 8978, !47, i64 8980, !47, i64 8982, !147, i64 8984, !36, i64 9760, !36, i64 9772, !47, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !48, i64 10896, !48, i64 10900, !35, i64 10904, !35, i64 10908, !48, i64 10912, !47, i64 10916, !47, i64 10918, !47, i64 10920, !47, i64 10922, !47, i64 10924, !47, i64 10926, !148, i64 10928}
!147 = !{!"ColorBand", !47, i64 0, !47, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!148 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !47, i64 24, !36, i64 26}
!149 = !{!120, !48, i64 680}
!150 = !{!"mask_ops.c:slide_spline_curvature_invoke"}
!151 = !{i8 0, i8 2}
!152 = !{!"mask_ops.c:slide_spline_curvature_modal"}
!153 = !{!154, !35, i64 40}
!154 = !{!"SlideSplineCurvatureData", !47, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !35, i64 40, !36, i64 44, !39, i64 48, !39, i64 56, !52, i64 64, !52, i64 136, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248}
!155 = !{!154, !36, i64 44}
!156 = !{!154, !39, i64 48}
!157 = !{!154, !39, i64 56}
!158 = !{!154, !36, i64 113}
!159 = !{!154, !36, i64 114}
!160 = !{!154, !36, i64 185}
!161 = !{!154, !36, i64 186}
!162 = !{!154, !39, i64 8}
!163 = !{!154, !47, i64 0}
!164 = !{!154, !39, i64 16}
!165 = !{!"mask_ops.c:cyclic_toggle_exec"}
!166 = !{!46, !47, i64 16}
!167 = distinct !{!167, !44}
!168 = distinct !{!168, !44}
!169 = !{!"mask_ops.c:delete_exec"}
!170 = !{!41, !39, i64 80}
!171 = !{!46, !39, i64 0}
!172 = !{!61, !36, i64 51}
!173 = !{!61, !36, i64 52}
!174 = !{!61, !36, i64 53}
!175 = distinct !{!175, !44}
!176 = !{i64 0, i64 36, !177, i64 36, i64 4, !34, i64 40, i64 4, !34, i64 44, i64 4, !34, i64 48, i64 1, !177, i64 49, i64 1, !177, i64 50, i64 1, !177, i64 51, i64 1, !177, i64 52, i64 1, !177, i64 53, i64 1, !177, i64 54, i64 1, !177, i64 55, i64 1, !177, i64 56, i64 4, !34, i64 60, i64 4, !34, i64 64, i64 4, !34, i64 68, i64 4, !177, i64 72, i64 4, !56, i64 76, i64 4, !56, i64 80, i64 8, !38, i64 88, i64 4, !56, i64 92, i64 4, !56, i64 96, i64 8, !38, i64 104, i64 64, !177, i64 168, i64 64, !177, i64 232, i64 8, !177, i64 240, i64 32, !177}
!177 = !{!36, !36, i64 0}
!178 = distinct !{!178, !44}
!179 = distinct !{!179, !44}
!180 = distinct !{!180, !44}
!181 = !{!"mask_ops.c:mask_switch_direction_exec"}
!182 = distinct !{!182, !44}
!183 = distinct !{!183, !44}
!184 = !{!"mask_ops.c:mask_normals_make_consistent_exec"}
!185 = distinct !{!185, !44}
!186 = distinct !{!186, !44}
!187 = distinct !{!187, !44}
!188 = !{!71, !39, i64 104}
!189 = !{!"mask_ops.c:set_handle_type_exec"}
!190 = distinct !{!190, !44}
!191 = !{!52, !36, i64 51}
!192 = !{!52, !36, i64 52}
!193 = !{!52, !36, i64 53}
!194 = distinct !{!194, !44}
!195 = distinct !{!195, !44}
!196 = !{!"mask_ops.c:mask_hide_view_clear_exec"}
!197 = distinct !{!197, !44}
!198 = !{!"mask_ops.c:mask_hide_view_set_exec"}
!199 = distinct !{!199, !44}
!200 = !{!"mask_ops.c:mask_feather_weight_clear_exec"}
!201 = distinct !{!201, !44}
!202 = !{!52, !35, i64 40}
!203 = distinct !{!203, !44}
!204 = distinct !{!204, !44}
!205 = !{!"mask_ops.c:mask_layer_move_exec"}
!206 = !{!41, !39, i64 8}
!207 = !{!41, !39, i64 0}
!208 = !{!"mask_ops.c:mask_layer_move_poll"}
!209 = !{!"mask_ops.c:mask_duplicate_exec"}
!210 = distinct !{!210, !44}
!211 = distinct !{!211, !44}
!212 = !{!46, !36, i64 18}
!213 = !{!46, !36, i64 19}
!214 = !{i64 0, i64 4, !56, i64 4, i64 4, !56, i64 8, i64 8, !38, i64 16, i64 64, !177, i64 80, i64 64, !177, i64 144, i64 8, !177, i64 152, i64 32, !177}
!215 = !{!41, !39, i64 96}
!216 = distinct !{!216, !44}
!217 = distinct !{!217, !44}
!218 = distinct !{!218, !44}
!219 = !{!"mask_ops.c:copy_splines_exec"}
!220 = !{!"mask_ops.c:paste_splines_exec"}
!221 = !{!"mask_ops.c:paste_splines_poll"}
!222 = !{!"mask_ops.c:sub_v2_v2v2"}
!223 = !{!"mask_ops.c:dot_v2v2"}
!224 = !{!"mask_ops.c:slide_point_customdata"}
!225 = !{!93, !48, i64 60}
!226 = !{!93, !48, i64 64}
!227 = !{!61, !36, i64 49}
!228 = !{!93, !36, i64 128}
!229 = !{!61, !36, i64 50}
!230 = !{!93, !36, i64 129}
!231 = !{!112, !35, i64 4}
!232 = !{!"mask_ops.c:spline_under_mouse_get"}
!233 = !{!234, !39, i64 64}
!234 = !{!"SpaceClip", !39, i64 0, !39, i64 8, !42, i64 16, !48, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !235, i64 56, !39, i64 64, !236, i64 72, !48, i64 208, !47, i64 212, !47, i64 214, !48, i64 216, !36, i64 220, !35, i64 228, !35, i64 232, !48, i64 236, !36, i64 240, !36, i64 304, !48, i64 368, !47, i64 372, !47, i64 374, !48, i64 376, !48, i64 380, !36, i64 384, !238, i64 392}
!235 = !{!"MovieClipUser", !48, i64 0, !47, i64 4, !47, i64 6}
!236 = !{!"MovieClipScopes", !47, i64 0, !47, i64 2, !48, i64 4, !48, i64 8, !48, i64 12, !237, i64 16, !39, i64 80, !39, i64 88, !36, i64 96, !47, i64 104, !47, i64 106, !48, i64 108, !39, i64 112, !39, i64 120, !36, i64 128}
!237 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !48, i64 56, !48, i64 60}
!238 = !{!"MaskSpaceInfo", !39, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!239 = !{!234, !47, i64 62}
!240 = distinct !{!240, !44}
!241 = distinct !{!241, !44}
!242 = distinct !{!242, !44}
!243 = !{!"mask_ops.c:select_sliding_point"}
!244 = !{!"mask_ops.c:check_sliding_handle_type"}
!245 = !{!"mask_ops.c:madd_v2_v2v2fl"}
!246 = !{!"mask_ops.c:slide_point_check_initial_feather"}
!247 = distinct !{!247, !44}
!248 = !{!61, !35, i64 40}
!249 = !{!"mask_ops.c:copy_v2_v2"}
!250 = !{!"mask_ops.c:mask_point_undistort_pos"}
!251 = !{!"mask_ops.c:min_ff"}
!252 = !{!"mask_ops.c:mul_v2_fl"}
!253 = !{!"mask_ops.c:negate_v2"}
!254 = !{!"mask_ops.c:add_v2_v2v2"}
!255 = !{!"mask_ops.c:add_v2_v2"}
!256 = !{!"mask_ops.c:len_v2"}
!257 = !{!"mask_ops.c:slide_point_delta_all_feather"}
!258 = distinct !{!258, !44}
!259 = !{!"mask_ops.c:slide_point_restore_spline"}
!260 = !{i64 0, i64 36, !177, i64 36, i64 4, !34, i64 40, i64 4, !34, i64 44, i64 4, !34, i64 48, i64 1, !177, i64 49, i64 1, !177, i64 50, i64 1, !177, i64 51, i64 1, !177, i64 52, i64 1, !177, i64 53, i64 1, !177, i64 54, i64 1, !177, i64 55, i64 1, !177, i64 56, i64 4, !34, i64 60, i64 4, !34, i64 64, i64 4, !34, i64 68, i64 4, !177}
!261 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !56}
!262 = distinct !{!262, !44}
!263 = distinct !{!263, !44}
!264 = !{!"mask_ops.c:free_slide_point_data"}
!265 = !{!"mask_ops.c:cancel_slide_point"}
!266 = !{!"mask_ops.c:slide_spline_curvature_check"}
!267 = !{!"mask_ops.c:slide_spline_curvature_customdata"}
!268 = !{!154, !39, i64 24}
!269 = !{!154, !39, i64 32}
!270 = !{!"mask_ops.c:slide_spline_solve_P2"}
!271 = !{!"mask_ops.c:slide_spline_solve_P1"}
!272 = !{!"mask_ops.c:free_slide_spline_curvature_data"}
!273 = !{!"mask_ops.c:cancel_slide_spline_curvature"}
!274 = !{!"mask_ops.c:delete_feather_points"}
!275 = !{!112, !48, i64 8}
!276 = distinct !{!276, !44}
!277 = distinct !{!277, !44}
!278 = !{!"mask_ops.c:BLI_listbase_is_empty"}
!279 = !{!42, !39, i64 0}
!280 = !{!"mask_ops.c:sub_v3_v3v3"}
!281 = !{!"mask_ops.c:add_v3_v3v3"}
